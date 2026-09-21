.class public Lcom/transsion/camera/feature/setting/motiondetectswitch/FlashSnapV2;
.super Lcom/transsion/camera/feature/setting/motiondetectswitch/MotionDetectSwitch;
.source "SourceFile"


# static fields
.field private static final CAPTURE_TYPE_AUTO_SWITCH_ON_WITCH_BANDING:I = 0x5

.field private static final CAPTURE_TYPE_SHUTTER_SWITCH_ON_WITH_BANDING:I = 0x4

.field private static final CAPTURE_TYPE_SWITCH_OFF:I = 0x3

.field private static final SKIP_CAPTURE_MEMORY_LIMIT:I = 0x3e8

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 26
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "FlashSnapV2"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/setting/motiondetectswitch/FlashSnapV2;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 25
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/motiondetectswitch/MotionDetectSwitch;-><init>()V

    return-void
.end method


# virtual methods
.method public configParameters(Lcom/transsion/camera/adapter/CameraParameters;)I
    .registers 15

    .line 34
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/motiondetectswitch/MotionDetectSwitch;->isSupport()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_184

    .line 35
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/utils/CustomConfigUtil;->isFlashSnapV2_G200()Z

    move-result v0

    const-string v2, "[configParameters] mDedeBandingMode: "

    const/4 v3, 0x4

    const/4 v4, 0x3

    const-string v5, "off"

    const/4 v6, 0x2

    const-string v7, "1"

    const/4 v8, 0x1

    if-nez v0, :cond_82

    .line 36
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/utils/CustomConfigUtil;->isSupportFlashSnapV2_G100_ForOSUpToW()Z

    move-result v0

    if-eqz v0, :cond_26

    goto :goto_82

    .line 82
    :cond_26
    invoke-virtual {p1}, Lcom/transsion/camera/adapter/CameraParameters;->getTranssionTurboFusionMode()I

    move-result v0

    .line 83
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_3e

    .line 84
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/motiondetectswitch/MotionDetectSwitch;->isAutoCapture()Z

    move-result v3

    if-eqz v3, :cond_3c

    move v3, v6

    goto :goto_49

    :cond_3c
    move v3, v8

    goto :goto_49

    .line 86
    :cond_3e
    iget-object v6, p0, Lcom/transsion/camera/feature/setting/motiondetectswitch/MotionDetectSwitch;->mDedeBandingMode:Ljava/lang/String;

    invoke-static {v6, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_49

    if-ne v0, v8, :cond_3c

    move v3, v4

    .line 92
    :cond_49
    :goto_49
    sget-object v4, Lcom/transsion/camera/feature/setting/motiondetectswitch/FlashSnapV2;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/setting/motiondetectswitch/MotionDetectSwitch;->mDedeBandingMode:Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", bmRawHDRMode:"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", hdrMode: "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 94
    invoke-virtual {p1, v3}, Lcom/transsion/camera/adapter/CameraParameters;->setBestMomentRawHDRMode(I)V

    .line 95
    invoke-static {}, Lcom/transsion/camera/utils/FeatureSupport;->isSupportSysKOMEnable()Z

    move-result v0

    if-eqz v0, :cond_163

    .line 96
    const-string v0, "19"

    invoke-virtual {p1, v0}, Lcom/transsion/camera/adapter/CameraParameters;->setStreamingCustomTuning(Ljava/lang/String;)V

    .line 97
    invoke-virtual {p1, v0}, Lcom/transsion/camera/adapter/CameraParameters;->setCaptureCustomTuning(Ljava/lang/String;)V

    goto/16 :goto_163

    .line 37
    :cond_82
    :goto_82
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v9, "key_setting_smart_denoise"

    invoke-interface {v0, v9}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 38
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_9f

    .line 39
    invoke-static {}, Lcom/transsion/camera/utils/MemoryUtils;->getAvailableMemory()J

    move-result-wide v9

    const-wide/16 v11, 0x3e8

    cmp-long v5, v9, v11

    if-gez v5, :cond_9b

    goto :goto_9f

    .line 43
    :cond_9b
    invoke-virtual {p1, v1}, Lcom/transsion/camera/adapter/CameraParameters;->setSkipMultCapture(Z)V

    goto :goto_a5

    .line 40
    :cond_9f
    :goto_9f
    invoke-virtual {p1, v8}, Lcom/transsion/camera/adapter/CameraParameters;->setSkipMultCapture(Z)V

    .line 41
    invoke-virtual {p1, v1}, Lcom/transsion/camera/adapter/CameraParameters;->setAisMode(I)V

    .line 45
    :goto_a5
    invoke-virtual {p1, v8}, Lcom/transsion/camera/adapter/CameraParameters;->setBMCustomZSLBufSize(I)V

    .line 46
    invoke-virtual {p1, v8}, Lcom/transsion/camera/adapter/CameraParameters;->setTAPSCaptureNeedYuvSize(I)V

    .line 47
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/motiondetectswitch/MotionDetectSwitch;->isAutoCapture()Z

    move-result v5

    if-eqz v5, :cond_b3

    move v5, v6

    goto :goto_b4

    :cond_b3
    move v5, v8

    :goto_b4
    invoke-virtual {p1, v5}, Lcom/transsion/camera/adapter/CameraParameters;->setBMLowLightMode(I)V

    .line 49
    invoke-virtual {p1, v8}, Lcom/transsion/camera/adapter/CameraParameters;->setBMCustomZSLBufSize(I)V

    .line 50
    invoke-virtual {p1, v8}, Lcom/transsion/camera/adapter/CameraParameters;->setTAPSCaptureNeedYuvSize(I)V

    .line 51
    iget-object v5, p0, Lcom/transsion/camera/feature/setting/motiondetectswitch/MotionDetectSwitch;->mDedeBandingMode:Ljava/lang/String;

    const-string v9, "on"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_dc

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v5

    const-string v10, "0"

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_dc

    .line 52
    invoke-virtual {p1, v8}, Lcom/transsion/camera/adapter/CameraParameters;->setDeBandingMode(I)V

    const/16 v5, 0x138d

    .line 53
    invoke-virtual {p1, v5}, Lcom/transsion/camera/adapter/CameraParameters;->setCaptureISPTunning(I)V

    goto :goto_e2

    .line 55
    :cond_dc
    invoke-virtual {p1, v1}, Lcom/transsion/camera/adapter/CameraParameters;->setDeBandingMode(I)V

    .line 56
    invoke-virtual {p1, v1}, Lcom/transsion/camera/adapter/CameraParameters;->setCaptureISPTunning(I)V

    .line 58
    :goto_e2
    iget-object v5, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/motiondetectswitch/MotionDetectSwitch;->getKey()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v5, v10}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 59
    invoke-static {v5, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_f3

    move v4, v6

    :cond_f3
    if-eqz v5, :cond_114

    .line 62
    iget-object v6, p0, Lcom/transsion/camera/feature/setting/motiondetectswitch/MotionDetectSwitch;->mCaptureType:Ljava/lang/String;

    const-string v10, "motion_capture_type_shutter"

    invoke-static {v6, v10}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_10a

    .line 64
    iget-object v4, p0, Lcom/transsion/camera/feature/setting/motiondetectswitch/MotionDetectSwitch;->mDedeBandingMode:Ljava/lang/String;

    invoke-static {v4, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_108

    goto :goto_115

    :cond_108
    move v3, v8

    goto :goto_115

    .line 68
    :cond_10a
    iget-object v3, p0, Lcom/transsion/camera/feature/setting/motiondetectswitch/MotionDetectSwitch;->mDedeBandingMode:Ljava/lang/String;

    invoke-static {v3, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_114

    const/4 v3, 0x5

    goto :goto_115

    :cond_114
    move v3, v4

    .line 73
    :goto_115
    sget-object v4, Lcom/transsion/camera/feature/setting/motiondetectswitch/FlashSnapV2;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/setting/motiondetectswitch/MotionDetectSwitch;->mDedeBandingMode:Ljava/lang/String;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", mode:"

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", flashSnapOn: "

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mCaptureType: "

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/setting/motiondetectswitch/MotionDetectSwitch;->mCaptureType:Ljava/lang/String;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", denoiseValue: "

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", AvailableMemory :"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    invoke-static {}, Lcom/transsion/camera/utils/MemoryUtils;->getAvailableMemory()J

    move-result-wide v9

    invoke-virtual {v6, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 73
    invoke-static {v4, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 77
    invoke-virtual {p1, v3}, Lcom/transsion/camera/adapter/CameraParameters;->setMotionCaptureMode(I)V

    .line 78
    invoke-static {}, Lcom/transsion/camera/utils/FeatureSupport;->isSupportProcessRaw()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/transsion/camera/adapter/CameraParameters;->setMTKProcessRawEnable(I)V

    .line 101
    :cond_163
    :goto_163
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/transsion/camera/adapter/CameraParameters;->setFlashSnapAutoCaptureMode(I)V

    .line 102
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    invoke-virtual {p1, p0}, Lcom/transsion/camera/adapter/CameraParameters;->setBestMomentDetectMode(I)V

    .line 103
    invoke-virtual {p1, v8}, Lcom/transsion/camera/adapter/CameraParameters;->setCurrentAppModeRequiredOnContinuousShot(Z)V

    .line 104
    sget-object p0, Lcom/transsion/camera/feature/setting/motiondetectswitch/FlashSnapV2;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "configParameters, mMotionDetectSwitch value 1"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_1ac

    .line 106
    :cond_184
    sget-object p0, Lcom/transsion/camera/feature/setting/motiondetectswitch/FlashSnapV2;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "configParameters, mMotionDetectSwitch value 0"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 107
    invoke-virtual {p1, v1}, Lcom/transsion/camera/adapter/CameraParameters;->setBestMomentDetectMode(I)V

    .line 108
    invoke-virtual {p1, v1}, Lcom/transsion/camera/adapter/CameraParameters;->setBMLowLightMode(I)V

    .line 109
    invoke-virtual {p1, v1}, Lcom/transsion/camera/adapter/CameraParameters;->setBMCustomZSLBufSize(I)V

    .line 110
    invoke-virtual {p1, v1}, Lcom/transsion/camera/adapter/CameraParameters;->setTAPSCaptureNeedYuvSize(I)V

    .line 111
    invoke-virtual {p1, v1}, Lcom/transsion/camera/adapter/CameraParameters;->setDeBandingMode(I)V

    .line 112
    invoke-virtual {p1, v1}, Lcom/transsion/camera/adapter/CameraParameters;->setCaptureISPTunning(I)V

    .line 113
    invoke-virtual {p1, v1}, Lcom/transsion/camera/adapter/CameraParameters;->setBestMomentRawHDRMode(I)V

    .line 114
    invoke-virtual {p1, v1}, Lcom/transsion/camera/adapter/CameraParameters;->setCurrentAppModeRequiredOnContinuousShot(Z)V

    .line 115
    invoke-virtual {p1, v1}, Lcom/transsion/camera/adapter/CameraParameters;->setFlashSnapAutoCaptureMode(I)V

    .line 116
    invoke-virtual {p1, v1}, Lcom/transsion/camera/adapter/CameraParameters;->setMotionCaptureMode(I)V

    .line 117
    invoke-virtual {p1, v1}, Lcom/transsion/camera/adapter/CameraParameters;->setMTKProcessRawEnable(I)V

    :goto_1ac
    return v1
.end method

.method public bridge synthetic forceApplyValue(Ljava/lang/String;)V
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->forceApplyValue(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic forceUpdateValue(Ljava/lang/String;)V
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->forceUpdateValue(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic getSeekBarValue(I)Ljava/lang/String;
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->getSeekBarValue(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getTempSettingValue()Ljava/lang/String;
    .registers 1

    .line 0
    invoke-super {p0}, Lcom/transsion/camera/app/common/setting/ISetting;->getTempSettingValue()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public onModeOpened(Ljava/lang/String;Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;[Ljava/lang/String;)V
    .registers 5

    .line 125
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/feature/setting/motiondetectswitch/MotionDetectSwitch;->onModeOpened(Ljava/lang/String;Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;[Ljava/lang/String;)V

    .line 126
    iget-boolean p1, p0, Lcom/transsion/camera/feature/setting/motiondetectswitch/MotionDetectSwitch;->mIsModeSupport:Z

    if-eqz p1, :cond_22

    .line 127
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/motiondetectswitch/MotionDetectSwitch;->getKey()Ljava/lang/String;

    move-result-object p2

    const-string p3, "1"

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getGlobalScope()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, p3, v0}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 128
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getSettingDataCallback()Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;

    move-result-object p0

    if-eqz p0, :cond_22

    const/16 p2, 0xb

    .line 130
    invoke-interface {p0, p1, p2}, Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;->onDataCallback(Ljava/lang/Object;I)V

    :cond_22
    return-void
.end method

.method public bridge synthetic onZoomUIStateChanged(Z)V
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->onZoomUIStateChanged(Z)V

    return-void
.end method

.method public bridge synthetic setRealZoomValue(Ljava/lang/String;)V
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->setRealZoomValue(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic setRestrict3ATouchArea(Landroid/graphics/Rect;)V
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->setRestrict3ATouchArea(Landroid/graphics/Rect;)V

    return-void
.end method

.method public bridge synthetic updateEntryValueList(Z)V
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->updateEntryValueList(Z)V

    return-void
.end method
