package android.telephony;

import java.util.ArrayList;
import java.util.HashMap;
import android.telephony.TelephonyManager;
import com.android.ims.ImsManager;
import android.content.Context;
import com.android.internal.telephony.IPhoneCallback;
import android.util.Log;
import android.os.RemoteException;
import static java.lang.Math.toIntExact;

import vendor.huawei.hardware.radio.V1_0.IRadio;

public class HwTelephonyManager {

    private static IRadio radio;
    private static HwRadioResponse response;
    private static HwRadioIndication indication;
    private static final String[] serviceNames = {"rildi", "rildi2", "rildi3"};

    private static int nextSerial = 0;

    static HashMap<Integer, ArrayList<IPhoneCallback>> imsaToMapconCallbacks = new HashMap<>();
    static HashMap<Integer, ArrayList<IPhoneCallback>> radioAvailableCallbacks = new HashMap<>();
    static HashMap<Integer, ArrayList<IPhoneCallback>> radioUnavailableCallbacks = new HashMap<>();

    static synchronized IRadio prepareIRadio(int slotId) {
        try {
            if (radio != null)
                return radio;
            radio = IRadio.getService(serviceNames[slotId]);
            response = new HwRadioResponse(slotId);
            indication = new HwRadioIndication(slotId);
            radio.setResponseFunctionsHuawei(response, indication);
            return radio;
        } catch (RemoteException e) {
            Log.e("HwTelephonyManager", "Failed to get RIL handle!!!!!!!");
            throw new RuntimeException(e);
        }
    }

    public static final int PHONE_EVENT_IMSA_TO_MAPCON = 4;
    public static final int PHONE_EVENT_RADIO_AVAILABLE = 1;
    public static final int PHONE_EVENT_RADIO_UNAVAILABLE = 2;

    public boolean isRadioAvailable(int slotId) {
        return TelephonyManager.getDefault().isRadioOn();
    }
    public boolean isWfcEnabledByUser(Context context, int subId) {
        return ImsManager.getInstance(context, SubscriptionManager.getPhoneId(subId)).isWfcEnabledByUser();
    }
    public boolean isWfcRoamingEnabledByUser(Context context, int subId) {
        return ImsManager.getInstance(context, SubscriptionManager.getPhoneId(subId)).isWfcRoamingEnabledByUser();
    }
    public boolean handleMapconImsaReq(int phoneId, byte[] data) {
        ArrayList<Byte> arrayList = new ArrayList<>(data.length);
        for (byte b : data) {
            arrayList.add(b);
        }
        try {
            prepareIRadio(phoneId).vowifiToImsaMsg(nextSerial++, arrayList);
            return true;
        } catch (RemoteException e) {
            Log.e("HwTelephonyManager", "Dead IRadio sending Imsa msg!!!", e);
            return false;
        }
        //TODO Intergrate with IRadio
    }

    public boolean registerCommonImsaToMapconInfo(int phoneId, IPhoneCallback callback) {
        prepareIRadio(phoneId);
        Log.d("HwTelephonyManager", "registerCommonImsaToMapconInfo");
        if (imsaToMapconCallbacks.get(phoneId) == null)
            imsaToMapconCallbacks.put(phoneId, new ArrayList<IPhoneCallback>(1));
        imsaToMapconCallbacks.get(phoneId).add(callback);
        return true;
    }
    public boolean registerForRadioAvailable(int phoneId, IPhoneCallback callback) {
        Log.d("HwTelephonyManager", "registerForRadioAvailable");
        prepareIRadio(phoneId);
        if (radioAvailableCallbacks.get(phoneId) == null)
            radioAvailableCallbacks.put(phoneId, new ArrayList<IPhoneCallback>(1));
        radioAvailableCallbacks.get(phoneId).add(callback);
        return true;
    }
    public boolean registerForRadioNotAvailable(int phoneId, IPhoneCallback callback) {
        Log.d("HwTelephonyManager", "registerForRadioNotAvailable");
        prepareIRadio(phoneId);
        if (radioUnavailableCallbacks.get(phoneId) == null)
            radioUnavailableCallbacks.put(phoneId, new ArrayList<IPhoneCallback>(1));
        radioUnavailableCallbacks.get(phoneId).add(callback);
        return true;
    }

    public boolean unregisterCommonImsaToMapconInfo(int phoneId, IPhoneCallback callback) {
        Log.d("HwTelephonyManager", "unregisterCommonImsaToMapconInfo");
        if (imsaToMapconCallbacks.get(phoneId) == null)
            return false;
        imsaToMapconCallbacks.get(phoneId).remove(callback);
        return false;
    }
    public boolean unregisterForRadioAvailable(int phoneId, IPhoneCallback callback) {
        Log.d("HwTelephonyManager", "unregisterForRadioAvailable");
        if (radioAvailableCallbacks.get(phoneId) == null)
            return false;
        radioAvailableCallbacks.get(phoneId).remove(callback);
        return false;
    }
    public boolean unregisterForRadioNotAvailable(int phoneId, IPhoneCallback callback) {
        Log.d("HwTelephonyManager", "unregisterForRadioNotAvailable");
        if (radioUnavailableCallbacks.get(phoneId) == null)
            return false;
        radioUnavailableCallbacks.get(phoneId).remove(callback);
        return false;
    }
    public boolean registerForPhoneEvent(int phoneId, IPhoneCallback callback, int events) {
        Log.d("HwTelephonyManager", "registerForPhoneId("+phoneId+", <callback>, "+events+")");
        if ((events & PHONE_EVENT_IMSA_TO_MAPCON) > 0)
            registerCommonImsaToMapconInfo(phoneId, callback);
        if ((events & PHONE_EVENT_RADIO_AVAILABLE) > 0)
            registerForRadioAvailable(phoneId, callback);
        if ((events & PHONE_EVENT_RADIO_UNAVAILABLE) > 0)
            registerForRadioNotAvailable(phoneId, callback);
        return events > 0;
    }
    public boolean unregisterForPhoneEvent(IPhoneCallback callback) {
        // TODO clear reg value
        return false;
    }
    public int getUiccAppType(int phoneId) {
        return 2;
        // I have no idea what this means but SMVoice checks if its 2, and if its not 2, it takes the same action as if the sim state is not 5, where 5 is documented as STATE_READY. I assume that non-2 sims are unsupported, and until I know what the constants are, I will just return 2. 
        // TODO Implement getUiccAppType(phoneId)
    }
    public int getDefault4GSlotId() {
            int retval = SubscriptionManager.getSlotIndex(SubscriptionManager.getDefaultDataSubscriptionId());
            Log.d("HwTelephonyManager", "def4gslot "+Integer.toString(retval));
            return retval;
    }
    public int getWfcMode(Context context, int slotId) {
        // phoneId is usually slotId https://stackoverflow.com/questions/39580133/android-ril-modem-gprs
        return ImsManager.getInstance(context, slotId).getWfcMode(false); // TelephonyAdapter hardcodes this but never send it... weird.
    }
    public int getSubState(long subId) {
        // 0 means INACTIVE, 1 means ACTIVE.
        // For some reason, Huawei cast the integer subId to a long, pass it to this method, where we turn it back. :/
        return SubscriptionManager.getSimStateForSlotIndex(SubscriptionManager.getPhoneId(toIntExact(subId)));
    }
}
