package android.telephony;

import android.hardware.radio.V1_0.ActivityStatsInfo;
import android.hardware.radio.V1_0.Call;
import android.hardware.radio.V1_0.CallForwardInfo;
import android.hardware.radio.V1_0.CardStatus;
import android.hardware.radio.V1_0.CarrierRestrictions;
import android.hardware.radio.V1_0.CdmaBroadcastSmsConfigInfo;
import android.hardware.radio.V1_0.CellInfo;
import android.hardware.radio.V1_0.DataRegStateResult;
import android.hardware.radio.V1_0.GsmBroadcastSmsConfigInfo;
import android.hardware.radio.V1_0.HardwareConfig;
import android.hardware.radio.V1_0.IccIoResult;
import android.hardware.radio.V1_0.LastCallFailCauseInfo;
import android.hardware.radio.V1_0.LceDataInfo;
import android.hardware.radio.V1_0.LceStatusInfo;
import android.hardware.radio.V1_0.NeighboringCell;
import android.hardware.radio.V1_0.OperatorInfo;
import android.hardware.radio.V1_0.RadioCapability;
import android.hardware.radio.V1_0.RadioResponseInfo;
import android.hardware.radio.V1_0.SendSmsResult;
import android.hardware.radio.V1_0.SetupDataCallResult;
import android.hardware.radio.V1_0.SignalStrength;
import android.hardware.radio.V1_0.VoiceRegStateResult;
import android.os.RemoteException;
import java.util.ArrayList;
import vendor.huawei.hardware.radio.V1_0.CsgNetworkInfo;
import vendor.huawei.hardware.radio.V1_0.IRadioResponse;
import vendor.huawei.hardware.radio.V1_0.RILDeviceVersionResponse;
import vendor.huawei.hardware.radio.V1_0.RILDsFlowInfoResponse;
import vendor.huawei.hardware.radio.V1_0.RILImsCall;
import vendor.huawei.hardware.radio.V1_0.RILPreferredPLMNSelector;
import vendor.huawei.hardware.radio.V1_0.RILRADIOSYSINFO;
import vendor.huawei.hardware.radio.V1_0.RILUICCAUTHRESPONSE;
import vendor.huawei.hardware.radio.V1_0.RspMsgPayload;

public class HwRadioResponse extends IRadioResponse.Stub {
    private int slotId;
    public HwRadioResponse(int slotId) {
        this.slotId = slotId;
    }

    @Override
    public void RspMsg(RadioResponseInfo radioResponseInfo, int i, RspMsgPayload rspMsgPayload) throws RemoteException {

    }

    @Override
    public void deactivateDataCallEmergencyResponse(RadioResponseInfo radioResponseInfo) throws RemoteException {

    }

    @Override
    public void getAvailableCsgIdsResponse(RadioResponseInfo radioResponseInfo, ArrayList<CsgNetworkInfo> arrayList) throws RemoteException {

    }

    @Override
    public void getCellInfoListOtdoaResponse(RadioResponseInfo radioResponseInfo, ArrayList<CellInfo> arrayList) throws RemoteException {

    }

    @Override
    public void getCurrentImsCallsResponse(RadioResponseInfo radioResponseInfo, ArrayList<RILImsCall> arrayList) throws RemoteException {

    }

    @Override
    public void getDeviceVersionResponse(RadioResponseInfo radioResponseInfo, RILDeviceVersionResponse rilDeviceVersionResponse) throws RemoteException {

    }

    @Override
    public void getDsFlowInfoResponse(RadioResponseInfo radioResponseInfo, RILDsFlowInfoResponse rilDsFlowInfoResponse) throws RemoteException {

    }

    @Override
    public void getPolListResponse(RadioResponseInfo radioResponseInfo, RILPreferredPLMNSelector rilPreferredPLMNSelector) throws RemoteException {

    }

    @Override
    public void getSystemInfoExResponse(RadioResponseInfo radioResponseInfo, RILRADIOSYSINFO rilradiosysinfo) throws RemoteException {

    }

    @Override
    public void manualSelectionCsgIdResponse(RadioResponseInfo radioResponseInfo) throws RemoteException {

    }

    @Override
    public void setupDataCallEmergencyResponse(RadioResponseInfo radioResponseInfo, SetupDataCallResult setupDataCallResult) throws RemoteException {

    }

    @Override
    public void uiccAuthResponse(RadioResponseInfo radioResponseInfo, RILUICCAUTHRESPONSE riluiccauthresponse) throws RemoteException {

    }

    @Override
    public void getIccCardStatusResponse(RadioResponseInfo radioResponseInfo, CardStatus cardStatus) throws RemoteException {

    }

    @Override
    public void supplyIccPinForAppResponse(RadioResponseInfo radioResponseInfo, int i) throws RemoteException {

    }

    @Override
    public void supplyIccPukForAppResponse(RadioResponseInfo radioResponseInfo, int i) throws RemoteException {

    }

    @Override
    public void supplyIccPin2ForAppResponse(RadioResponseInfo radioResponseInfo, int i) throws RemoteException {

    }

    @Override
    public void supplyIccPuk2ForAppResponse(RadioResponseInfo radioResponseInfo, int i) throws RemoteException {

    }

    @Override
    public void changeIccPinForAppResponse(RadioResponseInfo radioResponseInfo, int i) throws RemoteException {

    }

    @Override
    public void changeIccPin2ForAppResponse(RadioResponseInfo radioResponseInfo, int i) throws RemoteException {

    }

    @Override
    public void supplyNetworkDepersonalizationResponse(RadioResponseInfo radioResponseInfo, int i) throws RemoteException {

    }

    @Override
    public void getCurrentCallsResponse(RadioResponseInfo radioResponseInfo, ArrayList<Call> arrayList) throws RemoteException {

    }

    @Override
    public void dialResponse(RadioResponseInfo radioResponseInfo) throws RemoteException {

    }

    @Override
    public void getIMSIForAppResponse(RadioResponseInfo radioResponseInfo, String s) throws RemoteException {

    }

    @Override
    public void hangupConnectionResponse(RadioResponseInfo radioResponseInfo) throws RemoteException {

    }

    @Override
    public void hangupWaitingOrBackgroundResponse(RadioResponseInfo radioResponseInfo) throws RemoteException {

    }

    @Override
    public void hangupForegroundResumeBackgroundResponse(RadioResponseInfo radioResponseInfo) throws RemoteException {

    }

    @Override
    public void switchWaitingOrHoldingAndActiveResponse(RadioResponseInfo radioResponseInfo) throws RemoteException {

    }

    @Override
    public void conferenceResponse(RadioResponseInfo radioResponseInfo) throws RemoteException {

    }

    @Override
    public void rejectCallResponse(RadioResponseInfo radioResponseInfo) throws RemoteException {

    }

    @Override
    public void getLastCallFailCauseResponse(RadioResponseInfo radioResponseInfo, LastCallFailCauseInfo lastCallFailCauseInfo) throws RemoteException {

    }

    @Override
    public void getSignalStrengthResponse(RadioResponseInfo radioResponseInfo, SignalStrength signalStrength) throws RemoteException {

    }

    @Override
    public void getVoiceRegistrationStateResponse(RadioResponseInfo radioResponseInfo, VoiceRegStateResult voiceRegStateResult) throws RemoteException {

    }

    @Override
    public void getDataRegistrationStateResponse(RadioResponseInfo radioResponseInfo, DataRegStateResult dataRegStateResult) throws RemoteException {

    }

    @Override
    public void getOperatorResponse(RadioResponseInfo radioResponseInfo, String s, String s1, String s2) throws RemoteException {

    }

    @Override
    public void setRadioPowerResponse(RadioResponseInfo radioResponseInfo) throws RemoteException {

    }

    @Override
    public void sendDtmfResponse(RadioResponseInfo radioResponseInfo) throws RemoteException {

    }

    @Override
    public void sendSmsResponse(RadioResponseInfo radioResponseInfo, SendSmsResult sendSmsResult) throws RemoteException {

    }

    @Override
    public void sendSMSExpectMoreResponse(RadioResponseInfo radioResponseInfo, SendSmsResult sendSmsResult) throws RemoteException {

    }

    @Override
    public void setupDataCallResponse(RadioResponseInfo radioResponseInfo, SetupDataCallResult setupDataCallResult) throws RemoteException {

    }

    @Override
    public void iccIOForAppResponse(RadioResponseInfo radioResponseInfo, IccIoResult iccIoResult) throws RemoteException {

    }

    @Override
    public void sendUssdResponse(RadioResponseInfo radioResponseInfo) throws RemoteException {

    }

    @Override
    public void cancelPendingUssdResponse(RadioResponseInfo radioResponseInfo) throws RemoteException {

    }

    @Override
    public void getClirResponse(RadioResponseInfo radioResponseInfo, int i, int i1) throws RemoteException {

    }

    @Override
    public void setClirResponse(RadioResponseInfo radioResponseInfo) throws RemoteException {

    }

    @Override
    public void getCallForwardStatusResponse(RadioResponseInfo radioResponseInfo, ArrayList<CallForwardInfo> arrayList) throws RemoteException {

    }

    @Override
    public void setCallForwardResponse(RadioResponseInfo radioResponseInfo) throws RemoteException {

    }

    @Override
    public void getCallWaitingResponse(RadioResponseInfo radioResponseInfo, boolean b, int i) throws RemoteException {

    }

    @Override
    public void setCallWaitingResponse(RadioResponseInfo radioResponseInfo) throws RemoteException {

    }

    @Override
    public void acknowledgeLastIncomingGsmSmsResponse(RadioResponseInfo radioResponseInfo) throws RemoteException {

    }

    @Override
    public void acceptCallResponse(RadioResponseInfo radioResponseInfo) throws RemoteException {

    }

    @Override
    public void deactivateDataCallResponse(RadioResponseInfo radioResponseInfo) throws RemoteException {

    }

    @Override
    public void getFacilityLockForAppResponse(RadioResponseInfo radioResponseInfo, int i) throws RemoteException {

    }

    @Override
    public void setFacilityLockForAppResponse(RadioResponseInfo radioResponseInfo, int i) throws RemoteException {

    }

    @Override
    public void setBarringPasswordResponse(RadioResponseInfo radioResponseInfo) throws RemoteException {

    }

    @Override
    public void getNetworkSelectionModeResponse(RadioResponseInfo radioResponseInfo, boolean b) throws RemoteException {

    }

    @Override
    public void setNetworkSelectionModeAutomaticResponse(RadioResponseInfo radioResponseInfo) throws RemoteException {

    }

    @Override
    public void setNetworkSelectionModeManualResponse(RadioResponseInfo radioResponseInfo) throws RemoteException {

    }

    @Override
    public void getAvailableNetworksResponse(RadioResponseInfo radioResponseInfo, ArrayList<OperatorInfo> arrayList) throws RemoteException {

    }

    @Override
    public void startDtmfResponse(RadioResponseInfo radioResponseInfo) throws RemoteException {

    }

    @Override
    public void stopDtmfResponse(RadioResponseInfo radioResponseInfo) throws RemoteException {

    }

    @Override
    public void getBasebandVersionResponse(RadioResponseInfo radioResponseInfo, String s) throws RemoteException {

    }

    @Override
    public void separateConnectionResponse(RadioResponseInfo radioResponseInfo) throws RemoteException {

    }

    @Override
    public void setMuteResponse(RadioResponseInfo radioResponseInfo) throws RemoteException {

    }

    @Override
    public void getMuteResponse(RadioResponseInfo radioResponseInfo, boolean b) throws RemoteException {

    }

    @Override
    public void getClipResponse(RadioResponseInfo radioResponseInfo, int i) throws RemoteException {

    }

    @Override
    public void getDataCallListResponse(RadioResponseInfo radioResponseInfo, ArrayList<SetupDataCallResult> arrayList) throws RemoteException {

    }

    @Override
    public void setSuppServiceNotificationsResponse(RadioResponseInfo radioResponseInfo) throws RemoteException {

    }

    @Override
    public void writeSmsToSimResponse(RadioResponseInfo radioResponseInfo, int i) throws RemoteException {

    }

    @Override
    public void deleteSmsOnSimResponse(RadioResponseInfo radioResponseInfo) throws RemoteException {

    }

    @Override
    public void setBandModeResponse(RadioResponseInfo radioResponseInfo) throws RemoteException {

    }

    @Override
    public void getAvailableBandModesResponse(RadioResponseInfo radioResponseInfo, ArrayList<Integer> arrayList) throws RemoteException {

    }

    @Override
    public void sendEnvelopeResponse(RadioResponseInfo radioResponseInfo, String s) throws RemoteException {

    }

    @Override
    public void sendTerminalResponseToSimResponse(RadioResponseInfo radioResponseInfo) throws RemoteException {

    }

    @Override
    public void handleStkCallSetupRequestFromSimResponse(RadioResponseInfo radioResponseInfo) throws RemoteException {

    }

    @Override
    public void explicitCallTransferResponse(RadioResponseInfo radioResponseInfo) throws RemoteException {

    }

    @Override
    public void setPreferredNetworkTypeResponse(RadioResponseInfo radioResponseInfo) throws RemoteException {

    }

    @Override
    public void getPreferredNetworkTypeResponse(RadioResponseInfo radioResponseInfo, int i) throws RemoteException {

    }

    @Override
    public void getNeighboringCidsResponse(RadioResponseInfo radioResponseInfo, ArrayList<NeighboringCell> arrayList) throws RemoteException {

    }

    @Override
    public void setLocationUpdatesResponse(RadioResponseInfo radioResponseInfo) throws RemoteException {

    }

    @Override
    public void setCdmaSubscriptionSourceResponse(RadioResponseInfo radioResponseInfo) throws RemoteException {

    }

    @Override
    public void setCdmaRoamingPreferenceResponse(RadioResponseInfo radioResponseInfo) throws RemoteException {

    }

    @Override
    public void getCdmaRoamingPreferenceResponse(RadioResponseInfo radioResponseInfo, int i) throws RemoteException {

    }

    @Override
    public void setTTYModeResponse(RadioResponseInfo radioResponseInfo) throws RemoteException {

    }

    @Override
    public void getTTYModeResponse(RadioResponseInfo radioResponseInfo, int i) throws RemoteException {

    }

    @Override
    public void setPreferredVoicePrivacyResponse(RadioResponseInfo radioResponseInfo) throws RemoteException {

    }

    @Override
    public void getPreferredVoicePrivacyResponse(RadioResponseInfo radioResponseInfo, boolean b) throws RemoteException {

    }

    @Override
    public void sendCDMAFeatureCodeResponse(RadioResponseInfo radioResponseInfo) throws RemoteException {

    }

    @Override
    public void sendBurstDtmfResponse(RadioResponseInfo radioResponseInfo) throws RemoteException {

    }

    @Override
    public void sendCdmaSmsResponse(RadioResponseInfo radioResponseInfo, SendSmsResult sendSmsResult) throws RemoteException {

    }

    @Override
    public void acknowledgeLastIncomingCdmaSmsResponse(RadioResponseInfo radioResponseInfo) throws RemoteException {

    }

    @Override
    public void getGsmBroadcastConfigResponse(RadioResponseInfo radioResponseInfo, ArrayList<GsmBroadcastSmsConfigInfo> arrayList) throws RemoteException {

    }

    @Override
    public void setGsmBroadcastConfigResponse(RadioResponseInfo radioResponseInfo) throws RemoteException {

    }

    @Override
    public void setGsmBroadcastActivationResponse(RadioResponseInfo radioResponseInfo) throws RemoteException {

    }

    @Override
    public void getCdmaBroadcastConfigResponse(RadioResponseInfo radioResponseInfo, ArrayList<CdmaBroadcastSmsConfigInfo> arrayList) throws RemoteException {

    }

    @Override
    public void setCdmaBroadcastConfigResponse(RadioResponseInfo radioResponseInfo) throws RemoteException {

    }

    @Override
    public void setCdmaBroadcastActivationResponse(RadioResponseInfo radioResponseInfo) throws RemoteException {

    }

    @Override
    public void getCDMASubscriptionResponse(RadioResponseInfo radioResponseInfo, String s, String s1, String s2, String s3, String s4) throws RemoteException {

    }

    @Override
    public void writeSmsToRuimResponse(RadioResponseInfo radioResponseInfo, int i) throws RemoteException {

    }

    @Override
    public void deleteSmsOnRuimResponse(RadioResponseInfo radioResponseInfo) throws RemoteException {

    }

    @Override
    public void getDeviceIdentityResponse(RadioResponseInfo radioResponseInfo, String s, String s1, String s2, String s3) throws RemoteException {

    }

    @Override
    public void exitEmergencyCallbackModeResponse(RadioResponseInfo radioResponseInfo) throws RemoteException {

    }

    @Override
    public void getSmscAddressResponse(RadioResponseInfo radioResponseInfo, String s) throws RemoteException {

    }

    @Override
    public void setSmscAddressResponse(RadioResponseInfo radioResponseInfo) throws RemoteException {

    }

    @Override
    public void reportSmsMemoryStatusResponse(RadioResponseInfo radioResponseInfo) throws RemoteException {

    }

    @Override
    public void reportStkServiceIsRunningResponse(RadioResponseInfo radioResponseInfo) throws RemoteException {

    }

    @Override
    public void getCdmaSubscriptionSourceResponse(RadioResponseInfo radioResponseInfo, int i) throws RemoteException {

    }

    @Override
    public void requestIsimAuthenticationResponse(RadioResponseInfo radioResponseInfo, String s) throws RemoteException {

    }

    @Override
    public void acknowledgeIncomingGsmSmsWithPduResponse(RadioResponseInfo radioResponseInfo) throws RemoteException {

    }

    @Override
    public void sendEnvelopeWithStatusResponse(RadioResponseInfo radioResponseInfo, IccIoResult iccIoResult) throws RemoteException {

    }

    @Override
    public void getVoiceRadioTechnologyResponse(RadioResponseInfo radioResponseInfo, int i) throws RemoteException {

    }

    @Override
    public void getCellInfoListResponse(RadioResponseInfo radioResponseInfo, ArrayList<CellInfo> arrayList) throws RemoteException {

    }

    @Override
    public void setCellInfoListRateResponse(RadioResponseInfo radioResponseInfo) throws RemoteException {

    }

    @Override
    public void setInitialAttachApnResponse(RadioResponseInfo radioResponseInfo) throws RemoteException {

    }

    @Override
    public void getImsRegistrationStateResponse(RadioResponseInfo radioResponseInfo, boolean b, int i) throws RemoteException {

    }

    @Override
    public void sendImsSmsResponse(RadioResponseInfo radioResponseInfo, SendSmsResult sendSmsResult) throws RemoteException {

    }

    @Override
    public void iccTransmitApduBasicChannelResponse(RadioResponseInfo radioResponseInfo, IccIoResult iccIoResult) throws RemoteException {

    }

    @Override
    public void iccOpenLogicalChannelResponse(RadioResponseInfo radioResponseInfo, int i, ArrayList<Byte> arrayList) throws RemoteException {

    }

    @Override
    public void iccCloseLogicalChannelResponse(RadioResponseInfo radioResponseInfo) throws RemoteException {

    }

    @Override
    public void iccTransmitApduLogicalChannelResponse(RadioResponseInfo radioResponseInfo, IccIoResult iccIoResult) throws RemoteException {

    }

    @Override
    public void nvReadItemResponse(RadioResponseInfo radioResponseInfo, String s) throws RemoteException {

    }

    @Override
    public void nvWriteItemResponse(RadioResponseInfo radioResponseInfo) throws RemoteException {

    }

    @Override
    public void nvWriteCdmaPrlResponse(RadioResponseInfo radioResponseInfo) throws RemoteException {

    }

    @Override
    public void nvResetConfigResponse(RadioResponseInfo radioResponseInfo) throws RemoteException {

    }

    @Override
    public void setUiccSubscriptionResponse(RadioResponseInfo radioResponseInfo) throws RemoteException {

    }

    @Override
    public void setDataAllowedResponse(RadioResponseInfo radioResponseInfo) throws RemoteException {

    }

    @Override
    public void getHardwareConfigResponse(RadioResponseInfo radioResponseInfo, ArrayList<HardwareConfig> arrayList) throws RemoteException {

    }

    @Override
    public void requestIccSimAuthenticationResponse(RadioResponseInfo radioResponseInfo, IccIoResult iccIoResult) throws RemoteException {

    }

    @Override
    public void setDataProfileResponse(RadioResponseInfo radioResponseInfo) throws RemoteException {

    }

    @Override
    public void requestShutdownResponse(RadioResponseInfo radioResponseInfo) throws RemoteException {

    }

    @Override
    public void getRadioCapabilityResponse(RadioResponseInfo radioResponseInfo, RadioCapability radioCapability) throws RemoteException {

    }

    @Override
    public void setRadioCapabilityResponse(RadioResponseInfo radioResponseInfo, RadioCapability radioCapability) throws RemoteException {

    }

    @Override
    public void startLceServiceResponse(RadioResponseInfo radioResponseInfo, LceStatusInfo lceStatusInfo) throws RemoteException {

    }

    @Override
    public void stopLceServiceResponse(RadioResponseInfo radioResponseInfo, LceStatusInfo lceStatusInfo) throws RemoteException {

    }

    @Override
    public void pullLceDataResponse(RadioResponseInfo radioResponseInfo, LceDataInfo lceDataInfo) throws RemoteException {

    }

    @Override
    public void getModemActivityInfoResponse(RadioResponseInfo radioResponseInfo, ActivityStatsInfo activityStatsInfo) throws RemoteException {

    }

    @Override
    public void setAllowedCarriersResponse(RadioResponseInfo radioResponseInfo, int i) throws RemoteException {

    }

    @Override
    public void getAllowedCarriersResponse(RadioResponseInfo radioResponseInfo, boolean b, CarrierRestrictions carrierRestrictions) throws RemoteException {

    }

    @Override
    public void sendDeviceStateResponse(RadioResponseInfo radioResponseInfo) throws RemoteException {

    }

    @Override
    public void setIndicationFilterResponse(RadioResponseInfo radioResponseInfo) throws RemoteException {

    }

    @Override
    public void setSimCardPowerResponse(RadioResponseInfo radioResponseInfo) throws RemoteException {

    }

    @Override
    public void acknowledgeRequest(int i) throws RemoteException {

    }
}

