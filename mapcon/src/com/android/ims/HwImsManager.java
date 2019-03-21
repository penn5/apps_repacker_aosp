package com.android.ims;

import android.content.Context;
import android.telephony.HwTelephonyManager;
import android.telephony.SubscriptionManager;

public class HwImsManager {
    public static boolean isWfcEnabledByUser(Context context, int subId) {
        return new HwTelephonyManager().isWfcEnabledByUser(context, subId);
    }
    public static boolean isWfcRoamingEnabledByUser(Context context, int subId) {
        return new HwTelephonyManager().isWfcRoamingEnabledByUser(context, subId);
    }
    public static int getWfcMode(Context context, boolean isRoaming, int subId) {
        return ImsManager.getInstance(context, SubscriptionManager.getPhoneId(subId)).getWfcMode(isRoaming);
    }
}
