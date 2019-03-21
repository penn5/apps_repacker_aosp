package android.telephony;

import android.telephony.TelephonyManager;
import com.android.ims.ImsManager;
import android.content.Context;
import com.android.internal.telephony.IPhoneCallback;
import android.util.Log;
import static java.lang.Math.toIntExact;

public class HwTelephonyManager {

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
        //TODO wtf.
    }
    public boolean registerForPhoneEvent(int i1, IPhoneCallback callback, int i2) {
        // TODO depends on phone_huawei
        return false;
    }
    public boolean unregisterForPhoneEvent(IPhoneCallback callback) {
        // TODO depends on phone_huawei
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
