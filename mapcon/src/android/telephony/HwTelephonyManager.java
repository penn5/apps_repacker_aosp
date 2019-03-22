package android.telephony;

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

    static synchronized IRadio prepareIRadio(int slotId) throws RemoteException {
        if (radio != null)
            return radio;
        radio = IRadio.getService(serviceNames[slotId]);
        response = new HwRadioResponse();
        response = new HwRadioResponse();
        return radio;
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
    public boolean unregisterCommonImsaToMapconInfo(IPhoneCallback callback) {
        // TODO depends on phone_huawei
        return false;
    }
    public boolean handleMapconImsaReq(int phoneId, byte[] data) {
        return false;
        //TODO Intergrate with IRadio
    }
    public boolean registerForPhoneEvent(int i1, IPhoneCallback callback, int i2) {
        // TODO store reg value and send IMSA_TO_MAPCON when we get a imsa indication
        return false;
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
