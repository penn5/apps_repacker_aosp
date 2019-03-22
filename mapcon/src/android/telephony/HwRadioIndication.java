package android.telephony;

import vendor.huawei.hardware.radio.V1_0.IRadioIndication;


public class HwRadioIndication extends IRadioIndication.Stub {
    @Override
    public void UnsolMsg(int i, int i1, RILUnsolMsgPayload rilUnsolMsgPayload) throws RemoteException {

    }

    @Override
    public void apDsFlowInfoReport(int i, RILAPDsFlowInfoReport rilapDsFlowInfoReport) throws RemoteException {

    }

    @Override
    public void dsFlowInfoReport(int i, RILAPDsFlowInfoReport rilapDsFlowInfoReport) throws RemoteException {

    }

    @Override
    public void imsCallModifyEndCauseInd(int i, RILImsModifyEndCause rilImsModifyEndCause) throws RemoteException {

    }

    @Override
    public void imsCallModifyInd(int i, RILImsCallModify rilImsCallModify) throws RemoteException {

    }

    @Override
    public void imsCallMtStatusInd(int i, RILImsMtStatusReport rilImsMtStatusReport) throws RemoteException {

    }

    @Override
    public void imsHandoverInd(int i, RILImsHandover rilImsHandover) throws RemoteException {

    }

    @Override
    public void imsSrvStatusInd(int i, RILImsSrvstatusList rilImsSrvstatusList) throws RemoteException {

    }

    @Override
    public void imsSuppSrvInd(int i, RILImsSuppSvcNotification rilImsSuppSvcNotification) throws RemoteException {

    }

    @Override
    public void imsaToVowifiMsg(int i, ArrayList<Byte> arrayList) throws RemoteException {

    }

    @Override
    public void vsimOtaSmsReport(int i, RILVsimOtaSmsResponse rilVsimOtaSmsResponse) throws RemoteException {

    }

    @Override
    public void vtFlowInfoReport(int i, RILVtFlowInfoReport rilVtFlowInfoReport) throws RemoteException {

    }

    @Override
    public void radioStateChanged(int i, int i1) throws RemoteException {

    }

    @Override
    public void callStateChanged(int i) throws RemoteException {

    }

    @Override
    public void networkStateChanged(int i) throws RemoteException {

    }

    @Override
    public void newSms(int i, ArrayList<Byte> arrayList) throws RemoteException {

    }

    @Override
    public void newSmsStatusReport(int i, ArrayList<Byte> arrayList) throws RemoteException {

    }

    @Override
    public void newSmsOnSim(int i, int i1) throws RemoteException {

    }

    @Override
    public void onUssd(int i, int i1, String s) throws RemoteException {

    }

    @Override
    public void nitzTimeReceived(int i, String s, long l) throws RemoteException {

    }

    @Override
    public void currentSignalStrength(int i, SignalStrength signalStrength) throws RemoteException {

    }

    @Override
    public void dataCallListChanged(int i, ArrayList<SetupDataCallResult> arrayList) throws RemoteException {

    }

    @Override
    public void suppSvcNotify(int i, SuppSvcNotification suppSvcNotification) throws RemoteException {

    }

    @Override
    public void stkSessionEnd(int i) throws RemoteException {

    }

    @Override
    public void stkProactiveCommand(int i, String s) throws RemoteException {

    }

    @Override
    public void stkEventNotify(int i, String s) throws RemoteException {

    }

    @Override
    public void stkCallSetup(int i, long l) throws RemoteException {

    }

    @Override
    public void simSmsStorageFull(int i) throws RemoteException {

    }

    @Override
    public void simRefresh(int i, SimRefreshResult simRefreshResult) throws RemoteException {

    }

    @Override
    public void callRing(int i, boolean b, CdmaSignalInfoRecord cdmaSignalInfoRecord) throws RemoteException {

    }

    @Override
    public void simStatusChanged(int i) throws RemoteException {

    }

    @Override
    public void cdmaNewSms(int i, CdmaSmsMessage cdmaSmsMessage) throws RemoteException {

    }

    @Override
    public void newBroadcastSms(int i, ArrayList<Byte> arrayList) throws RemoteException {

    }

    @Override
    public void cdmaRuimSmsStorageFull(int i) throws RemoteException {

    }

    @Override
    public void restrictedStateChanged(int i, int i1) throws RemoteException {

    }

    @Override
    public void enterEmergencyCallbackMode(int i) throws RemoteException {

    }

    @Override
    public void cdmaCallWaiting(int i, CdmaCallWaiting cdmaCallWaiting) throws RemoteException {

    }

    @Override
    public void cdmaOtaProvisionStatus(int i, int i1) throws RemoteException {

    }

    @Override
    public void cdmaInfoRec(int i, CdmaInformationRecords cdmaInformationRecords) throws RemoteException {

    }

    @Override
    public void indicateRingbackTone(int i, boolean b) throws RemoteException {

    }

    @Override
    public void resendIncallMute(int i) throws RemoteException {

    }

    @Override
    public void cdmaSubscriptionSourceChanged(int i, int i1) throws RemoteException {

    }

    @Override
    public void cdmaPrlChanged(int i, int i1) throws RemoteException {

    }

    @Override
    public void exitEmergencyCallbackMode(int i) throws RemoteException {

    }

    @Override
    public void rilConnected(int i) throws RemoteException {

    }

    @Override
    public void voiceRadioTechChanged(int i, int i1) throws RemoteException {

    }

    @Override
    public void cellInfoList(int i, ArrayList<CellInfo> arrayList) throws RemoteException {

    }

    @Override
    public void imsNetworkStateChanged(int i) throws RemoteException {

    }

    @Override
    public void subscriptionStatusChanged(int i, boolean b) throws RemoteException {

    }

    @Override
    public void srvccStateNotify(int i, int i1) throws RemoteException {

    }

    @Override
    public void hardwareConfigChanged(int i, ArrayList<HardwareConfig> arrayList) throws RemoteException {

    }

    @Override
    public void radioCapabilityIndication(int i, RadioCapability radioCapability) throws RemoteException {

    }

    @Override
    public void onSupplementaryServiceIndication(int i, StkCcUnsolSsResult stkCcUnsolSsResult) throws RemoteException {

    }

    @Override
    public void stkCallControlAlphaNotify(int i, String s) throws RemoteException {

    }

    @Override
    public void lceData(int i, LceDataInfo lceDataInfo) throws RemoteException {

    }

    @Override
    public void pcoData(int i, PcoDataInfo pcoDataInfo) throws RemoteException {

    }

    @Override
    public void modemReset(int i, String s) throws RemoteException {

    }
}

