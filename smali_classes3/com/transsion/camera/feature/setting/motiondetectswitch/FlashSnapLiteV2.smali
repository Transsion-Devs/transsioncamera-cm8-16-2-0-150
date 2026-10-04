.class public Lcom/transsion/camera/feature/setting/motiondetectswitch/FlashSnapLiteV2;
.super Lcom/transsion/camera/feature/setting/motiondetectswitch/FlashSnapLite;
.source "SourceFile"


# static fields
.field private static final HIDE_ICON_BV_OFFSET_V2:I = 0x5

.field protected static final MAX_ZOOM_SUPPORT_VALUE:I

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 18
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "FlashSnapLiteV2"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/setting/motiondetectswitch/FlashSnapLiteV2;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    .line 20
    sget v0, Lcom/transsion/camera/utils/SettingInfo;->ZOOM_1X:I

    int-to-double v0, v0

    const-wide v2, 0x4000cccccccccccdL    # 2.1

    mul-double/2addr v0, v2

    double-to-int v0, v0

    sput v0, Lcom/transsion/camera/feature/setting/motiondetectswitch/FlashSnapLiteV2;->MAX_ZOOM_SUPPORT_VALUE:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 17
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/motiondetectswitch/FlashSnapLite;-><init>()V

    return-void
.end method


# virtual methods
.method public configParameters(Lcom/transsion/camera/adapter/CameraParameters;)I
    .registers 8

    .line 24
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/motiondetectswitch/MotionDetectSwitch;->isSupport()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8b

    .line 25
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v0

    const-string v2, "1"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 26
    iget-object v2, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v3, "key_setting_smart_denoise"

    invoke-interface {v2, v3}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 27
    sget-object v3, Lcom/transsion/camera/feature/setting/motiondetectswitch/FlashSnapLiteV2;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "configParameters, in AICam, isSwitchValueOn: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", denoiseValue: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", zoomValue "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    invoke-virtual {p1}, Lcom/transsion/camera/adapter/CameraParameters;->getZoomRatio()I

    move-result v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 27
    invoke-static {v3, v2}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v2, 0x1

    .line 29
    invoke-virtual {p1, v2}, Lcom/transsion/camera/adapter/CameraParameters;->setBMCustomZSLBufSize(I)V

    .line 30
    invoke-virtual {p1, v2}, Lcom/transsion/camera/adapter/CameraParameters;->setTAPSCaptureNeedYuvSize(I)V

    const/4 v3, 0x2

    if-eqz v0, :cond_5e

    .line 31
    iget-boolean v4, p0, Lcom/transsion/camera/feature/setting/motiondetectswitch/FlashSnapLite;->mNeedShowIcon:Z

    if-eqz v4, :cond_5e

    .line 32
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/motiondetectswitch/MotionDetectSwitch;->isAutoCapture()Z

    move-result v4

    if-eqz v4, :cond_59

    move v4, v3

    goto :goto_5a

    :cond_59
    move v4, v2

    :goto_5a
    invoke-virtual {p1, v4}, Lcom/transsion/camera/adapter/CameraParameters;->setBestMomentRawHDRMode(I)V

    goto :goto_61

    .line 34
    :cond_5e
    invoke-virtual {p1, v1}, Lcom/transsion/camera/adapter/CameraParameters;->setBestMomentRawHDRMode(I)V

    :goto_61
    if-eqz v0, :cond_81

    .line 36
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/motiondetectswitch/FlashSnapLite;->mNeedShowIcon:Z

    if-eqz v0, :cond_81

    .line 37
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/motiondetectswitch/MotionDetectSwitch;->isAutoCapture()Z

    move-result v0

    if-eqz v0, :cond_6e

    goto :goto_6f

    :cond_6e
    move v3, v2

    :goto_6f
    invoke-virtual {p1, v3}, Lcom/transsion/camera/adapter/CameraParameters;->setBMLowLightMode(I)V

    .line 38
    invoke-virtual {p1, v2}, Lcom/transsion/camera/adapter/CameraParameters;->setBestMomentDetectMode(I)V

    .line 39
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/transsion/camera/adapter/CameraParameters;->setFlashSnapAutoCaptureMode(I)V

    goto :goto_a7

    .line 41
    :cond_81
    invoke-virtual {p1, v1}, Lcom/transsion/camera/adapter/CameraParameters;->setBMLowLightMode(I)V

    .line 42
    invoke-virtual {p1, v1}, Lcom/transsion/camera/adapter/CameraParameters;->setBestMomentDetectMode(I)V

    .line 43
    invoke-virtual {p1, v1}, Lcom/transsion/camera/adapter/CameraParameters;->setFlashSnapAutoCaptureMode(I)V

    goto :goto_a7

    .line 46
    :cond_8b
    sget-object p0, Lcom/transsion/camera/feature/setting/motiondetectswitch/FlashSnapLiteV2;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "configParameters, mMotionDetectSwitch value 0"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 47
    invoke-virtual {p1, v1}, Lcom/transsion/camera/adapter/CameraParameters;->setBestMomentDetectMode(I)V

    .line 48
    invoke-virtual {p1, v1}, Lcom/transsion/camera/adapter/CameraParameters;->setTAPSCaptureNeedYuvSize(I)V

    .line 49
    invoke-virtual {p1, v1}, Lcom/transsion/camera/adapter/CameraParameters;->setBMCustomZSLBufSize(I)V

    .line 50
    invoke-virtual {p1, v1}, Lcom/transsion/camera/adapter/CameraParameters;->setCaptureISPTunning(I)V

    .line 51
    invoke-virtual {p1, v1}, Lcom/transsion/camera/adapter/CameraParameters;->setFlashSnapAutoCaptureMode(I)V

    .line 52
    invoke-virtual {p1, v1}, Lcom/transsion/camera/adapter/CameraParameters;->setBestMomentRawHDRMode(I)V

    .line 53
    invoke-virtual {p1, v1}, Lcom/transsion/camera/adapter/CameraParameters;->setBMLowLightMode(I)V

    :goto_a7
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

.method protected getHideIconBvThreshold()I
    .registers 1

    .line 70
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/utils/CustomConfigUtil;->getFlashSnapLiteV2ShowIconBvThreshold()I

    move-result p0

    add-int/lit8 p0, p0, -0x5

    return p0
.end method

.method protected getRelationWhenEnableStatueChange(Z)Lcom/transsion/camera/app/common/relation/Relation;
    .registers 2

    .line 91
    invoke-static {p1}, Lcom/transsion/camera/feature/setting/motiondetectswitch/FlashSnapLiteV2Restriction;->getRelationWhenVisibleChange(Z)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object p0

    .line 92
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->build()Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object p0

    return-object p0
.end method

.method protected getRelationWhenValueChange(ZLcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)Lcom/transsion/camera/app/common/relation/Relation;
    .registers 8

    .line 75
    invoke-interface {p2}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getDataStore()Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v3}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getCameraId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/transsion/camera/adapter/CameraInfoUtil;->getFacing(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "PHOTO"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/transsion/camera/app/common/storage/DataStore;->getCameraScope(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "key_flash_facade"

    const-string v3, "off"

    invoke-virtual {v0, v2, v3, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 76
    invoke-interface {p2}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getDataStore()Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object p2

    const-string v1, "auto"

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getGlobalScope()Ljava/lang/String;

    move-result-object p0

    const-string v4, "key_hdr"

    invoke-virtual {p2, v4, v1, p0}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 78
    sget-object p2, Lcom/transsion/camera/feature/setting/motiondetectswitch/FlashSnapLiteV2;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getRelationWhenValueChange: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", hdr: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 79
    invoke-static {p1}, Lcom/transsion/camera/feature/setting/motiondetectswitch/FlashSnapLiteV2Restriction;->getModeRelationInAI(Z)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object p0

    .line 80
    const-string p2, "off, on, auto, torch"

    if-eqz p1, :cond_80

    const-string v1, "on"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7c

    const-string/jumbo v1, "torch"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_80

    .line 81
    :cond_7c
    invoke-virtual {p0, v2, v3, p2}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    goto :goto_85

    :cond_80
    if-nez p1, :cond_85

    .line 84
    invoke-virtual {p0, v2, v0, p2}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    .line 87
    :cond_85
    :goto_85
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->build()Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getSeekBarValue(I)Ljava/lang/String;
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->getSeekBarValue(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected getShowIconBvThreshold()I
    .registers 1

    .line 65
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/utils/CustomConfigUtil;->getFlashSnapLiteV2ShowIconBvThreshold()I

    move-result p0

    return p0
.end method

.method public bridge synthetic getTempSettingValue()Ljava/lang/String;
    .registers 1

    .line 0
    invoke-super {p0}, Lcom/transsion/camera/app/common/setting/ISetting;->getTempSettingValue()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected isZoomSupport(I)Z
    .registers 2

    .line 60
    sget p0, Lcom/transsion/camera/feature/setting/motiondetectswitch/FlashSnapLiteV2;->MAX_ZOOM_SUPPORT_VALUE:I

    if-ge p1, p0, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    const/4 p0, 0x0

    return p0
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
