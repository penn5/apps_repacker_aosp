package com.android.internal.telephony;

import android.internal.telephony.HwChrServiceManager;
import android.internal.telephony.HwVolteChrManager;

public class HwTelephonyFactory {
    public HwChrServiceManager getHwChrServiceManager() {
        return HwChrServiceManager.getDefault();
    }
    public HwVolteChrManager getHwVolteChrManager() {
        return HwVolteChrManager.getDefault();
    }
}
