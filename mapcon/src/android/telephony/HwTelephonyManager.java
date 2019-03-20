package android.telephony;

import android.telephony.TelephonyManager;
import com.android.ims.ImsManager;
import android.content.Context;
import com.android.internal.telephony.IPhoneCallback;

public class HwTelephonyManager {
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
    public boolean registerForPhoneEvent(int i1, IPhoneCallback callback, int i2) {
        // TODO depends on phone_huawei
        return false;
    }
    public boolean unregisterForPhoneEvent(IPhoneCallback callback) {
        // TODO depends on phone_huawei
        return false;
    }
}
