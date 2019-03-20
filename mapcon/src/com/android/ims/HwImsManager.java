package com.android.ims;

import android.content.Context;
import android.telephony.HwTelephonyManager;

public class HwImsManager {
    public static boolean isWfcEnabledByUser(Context context, int subId) {
        return new HwTelephonyManager().isWfcEnabledByUser(context, subId);
    }
}
