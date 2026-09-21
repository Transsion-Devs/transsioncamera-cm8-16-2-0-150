.class public Lcom/transsion/camera/feature/setting/asd/policy/AlgorithmPolicy;
.super Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;
.source "SourceFile"


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mAutoMacroSwitchValue:I

.field private mIsMorHdsScene:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 51
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "AlgorithmPolicy"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/setting/asd/policy/AlgorithmPolicy;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/transsion/camera/feature/setting/asd/Asd;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)V
    .registers 3

    .line 57
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;-><init>(Lcom/transsion/camera/feature/setting/asd/Asd;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)V

    const/4 p1, 0x0

    .line 53
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/asd/policy/AlgorithmPolicy;->mIsMorHdsScene:Z

    return-void
.end method

.method private autoFocusSwitchState(Lcom/transsion/camera/adapter/CameraParameters;I)Z
    .registers 3

    .line 221
    const-string p0, "1"

    invoke-virtual {p1}, Lcom/transsion/camera/adapter/CameraParameters;->getTranssionAutoMacroSwitch()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_10

    const/4 p0, 0x1

    if-ne p2, p0, :cond_10

    return p0

    :cond_10
    const/4 p0, 0x0

    return p0
.end method

.method private isAISuperResolutionScene()Z
    .registers 2

    .line 207
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->mAsd:Lcom/transsion/camera/feature/setting/asd/Asd;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/asd/Asd;->isAISuperResolutionSupport()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->getDeviceZoomRatio()I

    move-result p0

    sget v0, Lcom/transsion/camera/utils/SettingInfo;->VALUE_SUPER_RESOLUTION_LIMIT_ZOOM:I

    if-lt p0, v0, :cond_12

    const/4 p0, 0x1

    return p0

    :cond_12
    const/4 p0, 0x0

    return p0
.end method

.method private isFastSuperNightScene()Z
    .registers 2

    .line 376
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->mAsdHwFeatures:Lcom/transsion/camera/feature/setting/asd/features/HardwareFeatures;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/asd/features/HardwareFeatures;->isHwSupportFastSuperNight()Z

    move-result v0

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->mAsd:Lcom/transsion/camera/feature/setting/asd/Asd;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/asd/Asd;->isLightSuperNightSupport()Z

    move-result v0

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->mAsdSettingFeatures:Lcom/transsion/camera/feature/setting/asd/features/SettingFeatures;

    .line 377
    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/asd/features/SettingFeatures;->isNightShotOpened()Z

    move-result v0

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->mAsdSettingFeatures:Lcom/transsion/camera/feature/setting/asd/features/SettingFeatures;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/asd/features/SettingFeatures;->isNightLiteOpened()Z

    move-result v0

    if-nez v0, :cond_28

    :cond_20
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->mAsd:Lcom/transsion/camera/feature/setting/asd/Asd;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/asd/Asd;->isSuperNightMode()Z

    move-result v0

    if-eqz v0, :cond_36

    .line 378
    :cond_28
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->isNightScene()Z

    move-result v0

    if-eqz v0, :cond_36

    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/asd/policy/AlgorithmPolicy;->isForceEscapeNight()Z

    move-result p0

    if-nez p0, :cond_36

    const/4 p0, 0x1

    return p0

    :cond_36
    const/4 p0, 0x0

    return p0
.end method

.method private isForceEscapeNight()Z
    .registers 2

    .line 382
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->mAsdGlobalFeatures:Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;->isSuperDefinitionEscapeNight()Z

    move-result v0

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->mAsdSettingFeatures:Lcom/transsion/camera/feature/setting/asd/features/SettingFeatures;

    .line 383
    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/asd/features/SettingFeatures;->isSuperResolutionOpend()Z

    move-result v0

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    .line 384
    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getCameraId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/camera/adapter/CameraInfoUtil;->isCameraFacingBack(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 385
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->getDeviceZoomRatio()I

    move-result p0

    sget v0, Lcom/transsion/camera/utils/SettingInfo;->ZOOM_10X:I

    if-lt p0, v0, :cond_26

    const/4 p0, 0x1

    return p0

    :cond_26
    const/4 p0, 0x0

    return p0
.end method

.method private isPmasterModeISOParaSupported()Z
    .registers 4

    .line 286
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->mAsdGlobalFeatures:Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;->isPmasterModeISOSupport()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return v1

    .line 290
    :cond_a
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->mAsdGlobalFeatures:Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;->getPmasterModeISOSupportType()I

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_25

    if-eq v0, v2, :cond_1a

    const/4 p0, 0x2

    if-eq v0, p0, :cond_19

    return v1

    :cond_19
    return v2

    .line 298
    :cond_1a
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->mAsd:Lcom/transsion/camera/feature/setting/asd/Asd;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getCurrentCameraId()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/transsion/camera/adapter/CameraInfoUtil;->isCameraFacingFront(Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 292
    :cond_25
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->mAsd:Lcom/transsion/camera/feature/setting/asd/Asd;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/camera/adapter/CameraInfoUtil;->isCameraFacingBack(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_32

    return v2

    .line 296
    :cond_32
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->mAsd:Lcom/transsion/camera/feature/setting/asd/Asd;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/asd/Asd;->isPMasterMode()Z

    move-result v0

    if-eqz v0, :cond_43

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->mAsd:Lcom/transsion/camera/feature/setting/asd/Asd;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/asd/Asd;->isSingleBlurOn()Z

    move-result p0

    if-eqz p0, :cond_43

    return v2

    :cond_43
    return v1
.end method

.method private isRawSRScene()Z
    .registers 3

    .line 215
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->mAsdHwFeatures:Lcom/transsion/camera/feature/setting/asd/features/HardwareFeatures;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/asd/features/HardwareFeatures;->isHwSupportRawSR()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 216
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->getDeviceZoomRatio()I

    move-result v0

    sget v1, Lcom/transsion/camera/utils/SettingInfo;->VALUE_SUPER_RESOLUTION_LIMIT_ZOOM:I

    if-lt v0, v1, :cond_18

    .line 217
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/asd/policy/AlgorithmPolicy;->isFastSuperNightScene()Z

    move-result p0

    if-nez p0, :cond_18

    const/4 p0, 0x1

    return p0

    :cond_18
    const/4 p0, 0x0

    return p0
.end method

.method private needSkipMultiFrameSetting()Z
    .registers 9

    .line 410
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->mAsdModeFeatures:Lcom/transsion/camera/feature/setting/asd/features/ModeFeatures;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/asd/features/ModeFeatures;->isModeSupportSmartDenoise()Z

    move-result v0

    .line 411
    iget-object v1, p0, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->mAsdGlobalFeatures:Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;

    invoke-virtual {v1}, Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;->isFilterSupportMfnr()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_38

    .line 413
    iget-object v4, p0, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v5, "key_filter"

    invoke-interface {v4, v5}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 414
    iget-object v5, p0, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->mAsdModeFeatures:Lcom/transsion/camera/feature/setting/asd/features/ModeFeatures;

    invoke-virtual {v5}, Lcom/transsion/camera/feature/setting/asd/features/ModeFeatures;->isModeSupportFilter()Z

    move-result v5

    if-eqz v5, :cond_38

    .line 415
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_38

    const-string v5, "0"

    .line 416
    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_38

    const-string v5, "-1"

    .line 417
    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_38

    move v4, v2

    goto :goto_39

    :cond_38
    move v4, v3

    .line 422
    :goto_39
    sget-object v5, Lcom/transsion/camera/feature/setting/asd/policy/AlgorithmPolicy;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "needSkipMiddleNightSetting, isSmartDenoise "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", isAsdMode: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->mAsd:Lcom/transsion/camera/feature/setting/asd/Asd;

    .line 423
    invoke-virtual {v7}, Lcom/transsion/camera/feature/setting/asd/Asd;->isAsdMode()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", needSkip: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", filterSupportMfnr = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 422
    invoke-static {v5, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-nez v0, :cond_7b

    .line 427
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->mAsd:Lcom/transsion/camera/feature/setting/asd/Asd;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/asd/Asd;->isAsdMode()Z

    move-result p0

    if-eqz p0, :cond_7a

    if-eqz v4, :cond_7a

    goto :goto_7b

    :cond_7a
    return v3

    :cond_7b
    :goto_7b
    return v2
.end method

.method private setP2RawCropResize(Lcom/transsion/camera/adapter/CameraParameters;I)V
    .registers 10

    if-nez p1, :cond_4

    goto/16 :goto_8f

    .line 486
    :cond_4
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->mAsdHwFeatures:Lcom/transsion/camera/feature/setting/asd/features/HardwareFeatures;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/asd/features/HardwareFeatures;->isHwSupportRawSR()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_90

    .line 487
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->getDeviceZoomRatio()I

    move-result v0

    sget v2, Lcom/transsion/camera/utils/SettingInfo;->ZOOM_1X:I

    if-lt v0, v2, :cond_90

    iget v0, p0, Lcom/transsion/camera/feature/setting/asd/policy/AlgorithmPolicy;->mAutoMacroSwitchValue:I

    .line 488
    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/feature/setting/asd/policy/AlgorithmPolicy;->autoFocusSwitchState(Lcom/transsion/camera/adapter/CameraParameters;I)Z

    move-result v0

    if-nez v0, :cond_90

    if-lez p2, :cond_20

    const/4 v1, 0x1

    .line 489
    :cond_20
    invoke-virtual {p1, v1}, Lcom/transsion/camera/adapter/CameraParameters;->setP2RawCropResizeEnable(I)V

    .line 490
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->getDeviceZoomRatio()I

    move-result p2

    int-to-float p2, p2

    .line 492
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->mIsInSensorZoomMode:Z

    if-eqz v0, :cond_3d

    .line 493
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->mAsdGlobalFeatures:Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;->getSecondItemZoomValue()I

    move-result v0

    sget v1, Lcom/transsion/camera/utils/SettingInfo;->ZOOM_3X:I

    if-ne v0, v1, :cond_3a

    const v0, 0x3eaa7efa    # 0.333f

    goto :goto_3c

    :cond_3a
    const/high16 v0, 0x3f000000    # 0.5f

    :goto_3c
    mul-float/2addr p2, v0

    :cond_3d
    int-to-float v0, v2

    div-float/2addr v0, p2

    const/high16 p2, 0x3f800000    # 1.0f

    cmpl-float p2, v0, p2

    if-lez p2, :cond_4d

    int-to-float p2, v2

    .line 498
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->getDeviceZoomRatio()I

    move-result v0

    int-to-float v0, v0

    div-float v0, p2, v0

    .line 501
    :cond_4d
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->mAsdHwFeatures:Lcom/transsion/camera/feature/setting/asd/features/HardwareFeatures;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/asd/features/HardwareFeatures;->getSensorRect()Landroid/graphics/Rect;

    move-result-object p0

    if-eqz p0, :cond_8f

    .line 504
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result p2

    int-to-double v1, p2

    const/high16 p2, 0x40000000    # 2.0f

    div-float p2, v0, p2

    float-to-double v3, p2

    const-wide/high16 v5, 0x3fe0000000000000L    # 0.5

    sub-double/2addr v5, v3

    mul-double/2addr v1, v5

    double-to-int p2, v1

    .line 505
    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-double v1, v1

    mul-double/2addr v1, v5

    double-to-int v1, v1

    .line 506
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v0

    float-to-int v2, v2

    .line 507
    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v0, v3

    float-to-int v0, v0

    filled-new-array {p2, v1, v2, v0}, [I

    move-result-object p2

    .line 508
    invoke-virtual {p1, p2}, Lcom/transsion/camera/adapter/CameraParameters;->setP2CropRegionCustomize([I)V

    .line 509
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result p2

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    filled-new-array {p2, p0}, [I

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/transsion/camera/adapter/CameraParameters;->setP2ResizerSizeCustomize([I)V

    :cond_8f
    :goto_8f
    return-void

    .line 512
    :cond_90
    invoke-virtual {p1, v1}, Lcom/transsion/camera/adapter/CameraParameters;->setP2RawCropResizeEnable(I)V

    return-void
.end method

.method private setTranssionNightMode(Lcom/transsion/camera/adapter/CameraParameters;I)V
    .registers 7

    if-nez p1, :cond_3

    goto :goto_29

    .line 434
    :cond_3
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/asd/policy/AlgorithmPolicy;->needSkipMultiFrameSetting()Z

    move-result v0

    .line 435
    sget-object v1, Lcom/transsion/camera/feature/setting/asd/policy/AlgorithmPolicy;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " setTranssionNightMode, needSkipMultiFrameSetting: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 436
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->applyLivePhotoLowPolicy()Z

    move-result p0

    if-eqz p0, :cond_24

    const/4 p2, 0x0

    :cond_24
    if-nez v0, :cond_29

    .line 440
    invoke-virtual {p1, p2}, Lcom/transsion/camera/adapter/CameraParameters;->setTranssionNightMode(I)V

    :cond_29
    :goto_29
    return-void
.end method

.method private shouldHDRLimit()Z
    .registers 3

    .line 529
    invoke-static {}, Lcom/transsion/camera/utils/CameraUtil;->getRam()I

    move-result v0

    const/16 v1, 0x67

    if-ge v0, v1, :cond_16

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->getDeviceZoomRatio()I

    move-result v0

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->mAsdGlobalFeatures:Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;->getHdrMaxZoomRatio()I

    move-result p0

    if-le v0, p0, :cond_16

    const/4 p0, 0x1

    return p0

    :cond_16
    const/4 p0, 0x0

    return p0
.end method

.method private superDefinitionAlgoSupportAsdMode()Z
    .registers 2

    .line 211
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->mAsd:Lcom/transsion/camera/feature/setting/asd/Asd;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/asd/Asd;->isAISuperDefinitionAlgoSupport()Z

    move-result v0

    if-nez v0, :cond_13

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->getDeviceZoomRatio()I

    move-result p0

    const/16 v0, 0x69

    if-le p0, v0, :cond_11

    goto :goto_13

    :cond_11
    const/4 p0, 0x0

    return p0

    :cond_13
    :goto_13
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method protected setAlgorithmOff(Lcom/transsion/camera/adapter/CameraParameters;I)V
    .registers 3

    return-void
.end method

.method protected setMiddleNightMode(Lcom/transsion/camera/adapter/CameraParameters;I)V
    .registers 7

    if-nez p1, :cond_3

    goto :goto_37

    .line 393
    :cond_3
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/asd/policy/AlgorithmPolicy;->needSkipMultiFrameSetting()Z

    move-result v0

    .line 394
    sget-object v1, Lcom/transsion/camera/feature/setting/asd/policy/AlgorithmPolicy;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setMiddleNightMode, needSkipMultiFrameSetting: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-nez v0, :cond_37

    .line 397
    invoke-static {}, Lcom/transsion/camera/utils/MonkeyUtils;->specialMonkeySupported()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_2c

    .line 398
    const-string p2, "It\'s a project under 4G, force close MFNR in monkey scenarios."

    invoke-static {v1, p2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    move p2, v2

    .line 401
    :cond_2c
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->applyLivePhotoLowPolicy()Z

    move-result p0

    if-eqz p0, :cond_33

    goto :goto_34

    :cond_33
    move v2, p2

    .line 404
    :goto_34
    invoke-virtual {p1, v2}, Lcom/transsion/camera/adapter/CameraParameters;->setMiddleNightMode(I)V

    :cond_37
    :goto_37
    return-void
.end method

.method protected setNightMode(Lcom/transsion/camera/adapter/CameraParameters;I)V
    .registers 7

    .line 323
    sget-object v0, Lcom/transsion/camera/feature/setting/asd/policy/AlgorithmPolicy;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setNightMode, isHwSupportFastSuperNight: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->mAsdHwFeatures:Lcom/transsion/camera/feature/setting/asd/features/HardwareFeatures;

    invoke-virtual {v2}, Lcom/transsion/camera/feature/setting/asd/features/HardwareFeatures;->isHwSupportFastSuperNight()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " isLightSuperNightSupport: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->mAsd:Lcom/transsion/camera/feature/setting/asd/Asd;

    .line 324
    invoke-virtual {v2}, Lcom/transsion/camera/feature/setting/asd/Asd;->isLightSuperNightSupport()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " isNightLiteOpened: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->mAsdSettingFeatures:Lcom/transsion/camera/feature/setting/asd/features/SettingFeatures;

    .line 325
    invoke-virtual {v2}, Lcom/transsion/camera/feature/setting/asd/features/SettingFeatures;->isNightLiteOpened()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mHalIlluminationType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->mHalIlluminationType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " isModeSupportSuperNight: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->mAsdModeFeatures:Lcom/transsion/camera/feature/setting/asd/features/ModeFeatures;

    .line 327
    invoke-virtual {v2}, Lcom/transsion/camera/feature/setting/asd/features/ModeFeatures;->isModeSupportSuperNight()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " isSuperNightAsdSupport: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->mAsdGlobalFeatures:Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;

    .line 328
    invoke-virtual {v2}, Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;->isSuperNightAsdSupport()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 323
    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 330
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->isNightScene()Z

    move-result v0

    .line 332
    iget-object v1, p0, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->mAsdModeFeatures:Lcom/transsion/camera/feature/setting/asd/features/ModeFeatures;

    invoke-virtual {v1}, Lcom/transsion/camera/feature/setting/asd/features/ModeFeatures;->isModeSupportSuperNight()Z

    move-result v1

    const-string v2, "None"

    const/4 v3, 0x0

    if-eqz v1, :cond_97

    .line 333
    iget-object v1, p0, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->mAsdGlobalFeatures:Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;

    invoke-virtual {v1}, Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;->isSuperNightAsdSupport()Z

    move-result v1

    if-eqz v1, :cond_88

    if-eqz v0, :cond_88

    .line 334
    const-string p2, "Night"

    invoke-virtual {p1, p2}, Lcom/transsion/camera/adapter/CameraParameters;->setSuperNightAlgoType(Ljava/lang/String;)V

    .line 335
    invoke-direct {p0, p1, v3}, Lcom/transsion/camera/feature/setting/asd/policy/AlgorithmPolicy;->setTranssionNightMode(Lcom/transsion/camera/adapter/CameraParameters;I)V

    return-void

    .line 337
    :cond_88
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/setting/asd/policy/AlgorithmPolicy;->setTranssionNightMode(Lcom/transsion/camera/adapter/CameraParameters;I)V

    .line 338
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->mAsdGlobalFeatures:Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;->isSuperNightAsdSupport()Z

    move-result p0

    if-eqz p0, :cond_96

    .line 339
    invoke-virtual {p1, v2}, Lcom/transsion/camera/adapter/CameraParameters;->setSuperNightAlgoType(Ljava/lang/String;)V

    :cond_96
    return-void

    .line 347
    :cond_97
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->updateSuperNightLiteValue()V

    const/4 v1, 0x1

    if-eqz v0, :cond_cb

    .line 349
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->mAsdHwFeatures:Lcom/transsion/camera/feature/setting/asd/features/HardwareFeatures;

    .line 350
    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/asd/features/HardwareFeatures;->isHwSupportFastSuperNight()Z

    move-result v0

    if-eqz v0, :cond_cb

    iget-object v0, p0, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->mAsd:Lcom/transsion/camera/feature/setting/asd/Asd;

    .line 351
    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/asd/Asd;->isLightSuperNightSupport()Z

    move-result v0

    if-eqz v0, :cond_cb

    iget-object v0, p0, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->mAsdSettingFeatures:Lcom/transsion/camera/feature/setting/asd/features/SettingFeatures;

    .line 352
    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/asd/features/SettingFeatures;->isNightLiteOpened()Z

    move-result v0

    if-eqz v0, :cond_cb

    if-ne p2, v1, :cond_b9

    .line 356
    const-string v2, "Night_Light"

    .line 355
    :cond_b9
    invoke-virtual {p1, v2}, Lcom/transsion/camera/adapter/CameraParameters;->setSuperNightAlgoType(Ljava/lang/String;)V

    .line 357
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object v0

    if-ne p2, v1, :cond_c3

    goto :goto_c4

    :cond_c3
    move v1, v3

    :goto_c4
    invoke-virtual {v0, v1}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setSuperNightLightValue(I)V

    .line 358
    invoke-direct {p0, p1, v3}, Lcom/transsion/camera/feature/setting/asd/policy/AlgorithmPolicy;->setTranssionNightMode(Lcom/transsion/camera/adapter/CameraParameters;I)V

    return-void

    .line 360
    :cond_cb
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->mAsdGlobalFeatures:Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;->isPlatformMfnrSupport()Z

    move-result v0

    if-nez v0, :cond_d7

    .line 361
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/setting/asd/policy/AlgorithmPolicy;->setTranssionNightMode(Lcom/transsion/camera/adapter/CameraParameters;I)V

    goto :goto_dc

    :cond_d7
    if-ne p2, v1, :cond_dc

    .line 363
    invoke-virtual {p0, p1, v1}, Lcom/transsion/camera/feature/setting/asd/policy/AlgorithmPolicy;->setMiddleNightMode(Lcom/transsion/camera/adapter/CameraParameters;I)V

    .line 366
    :cond_dc
    :goto_dc
    iget-object p2, p0, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->mAsdSettingFeatures:Lcom/transsion/camera/feature/setting/asd/features/SettingFeatures;

    invoke-virtual {p2}, Lcom/transsion/camera/feature/setting/asd/features/SettingFeatures;->isNightLiteOpened()Z

    move-result p2

    if-eqz p2, :cond_ec

    iget-object p2, p0, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->mAsd:Lcom/transsion/camera/feature/setting/asd/Asd;

    .line 367
    invoke-virtual {p2}, Lcom/transsion/camera/feature/setting/asd/Asd;->isLightSuperNightSupport()Z

    move-result p2

    if-nez p2, :cond_f6

    :cond_ec
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->mAsdModeFeatures:Lcom/transsion/camera/feature/setting/asd/features/ModeFeatures;

    .line 368
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/asd/features/ModeFeatures;->isModeSupportAiRawLite()Z

    move-result p0

    if-eqz p0, :cond_f6

    .line 369
    const-string v2, "None_icon_close"

    .line 366
    :cond_f6
    invoke-virtual {p1, v2}, Lcom/transsion/camera/adapter/CameraParameters;->setSuperNightAlgoType(Ljava/lang/String;)V

    .line 371
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p0

    invoke-virtual {p0, v3}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setSuperNightLightValue(I)V

    return-void
.end method

.method protected setSuperResolutionHDRMode(Lcom/transsion/camera/adapter/CameraParameters;I)V
    .registers 3

    return-void
.end method

.method protected setSuperResolutionMode(Lcom/transsion/camera/adapter/CameraParameters;I)V
    .registers 7

    if-nez p1, :cond_3

    return-void

    .line 456
    :cond_3
    sget-object v0, Lcom/transsion/camera/feature/setting/asd/policy/AlgorithmPolicy;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSuperResolutionMode, mSuperResolutionOpend: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->mAsdSettingFeatures:Lcom/transsion/camera/feature/setting/asd/features/SettingFeatures;

    invoke-virtual {v2}, Lcom/transsion/camera/feature/setting/asd/features/SettingFeatures;->isSuperResolutionOpend()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", isHwSupportSuperResolution: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->mAsdHwFeatures:Lcom/transsion/camera/feature/setting/asd/features/HardwareFeatures;

    .line 457
    invoke-virtual {v2}, Lcom/transsion/camera/feature/setting/asd/features/HardwareFeatures;->isHwSupportSuperResolution()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 456
    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p2, v1, :cond_60

    .line 462
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/asd/policy/AlgorithmPolicy;->superDefinitionAlgoSupportAsdMode()Z

    move-result v2

    if-eqz v2, :cond_60

    .line 463
    invoke-virtual {p1}, Lcom/transsion/camera/adapter/CameraParameters;->getAisMode()I

    move-result v2

    if-eq v2, v1, :cond_60

    iget-object v2, p0, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->mAsdHwFeatures:Lcom/transsion/camera/feature/setting/asd/features/HardwareFeatures;

    .line 464
    invoke-virtual {v2}, Lcom/transsion/camera/feature/setting/asd/features/HardwareFeatures;->isHwSupportSuperResolution()Z

    move-result v2

    if-eqz v2, :cond_60

    .line 465
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->getDeviceZoomRatio()I

    move-result v2

    sget v3, Lcom/transsion/camera/utils/SettingInfo;->ZOOM_1X:I

    if-gt v2, v3, :cond_57

    .line 466
    iget-object v2, p0, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->mAsdSettingFeatures:Lcom/transsion/camera/feature/setting/asd/features/SettingFeatures;

    invoke-virtual {v2}, Lcom/transsion/camera/feature/setting/asd/features/SettingFeatures;->isSuperResolutionOpend()Z

    move-result v2

    if-eqz v2, :cond_58

    move v0, v1

    goto :goto_58

    :cond_57
    const/4 v0, 0x2

    .line 469
    :cond_58
    :goto_58
    invoke-static {}, Lcom/transsion/camera/utils/FeatureSupport;->isSprdPlatform()Z

    move-result v1

    if-eqz v1, :cond_60

    .line 470
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/asd/policy/AlgorithmPolicy;->mIsMorHdsScene:Z

    .line 476
    :cond_60
    invoke-virtual {p1, v0}, Lcom/transsion/camera/adapter/CameraParameters;->setSuperResolutionMode(I)V

    .line 478
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/setting/asd/policy/AlgorithmPolicy;->setP2RawCropResize(Lcom/transsion/camera/adapter/CameraParameters;I)V

    return-void
.end method

.method protected setTranssionHDR(Lcom/transsion/camera/adapter/CameraParameters;I)V
    .registers 7

    .line 308
    sget-object v0, Lcom/transsion/camera/feature/setting/asd/policy/AlgorithmPolicy;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setTranssionHDR value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " ,queryValue(KEY_HDR):"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->mAsd:Lcom/transsion/camera/feature/setting/asd/Asd;

    const-string v3, "key_hdr"

    .line 309
    invoke-virtual {v2, v3}, Lcom/transsion/camera/app/common/setting/SettingBase;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ,mSupportTranssionHdr: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->mAsdHwFeatures:Lcom/transsion/camera/feature/setting/asd/features/HardwareFeatures;

    .line 310
    invoke-virtual {v2}, Lcom/transsion/camera/feature/setting/asd/features/HardwareFeatures;->isHwSupportTranssionHdr()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 308
    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 311
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->mAsdHwFeatures:Lcom/transsion/camera/feature/setting/asd/features/HardwareFeatures;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/asd/features/HardwareFeatures;->isHwSupportTranssionHdr()Z

    move-result v0

    if-eqz v0, :cond_5d

    .line 312
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->isHDRSettingOff()Z

    move-result v0

    if-nez v0, :cond_5c

    .line 313
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->isLivePhotoOn()Z

    move-result v0

    if-eqz v0, :cond_4e

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->isLivePhotoSupportHDR()Z

    move-result v0

    if-eqz v0, :cond_5c

    .line 314
    :cond_4e
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->isHDRSettingOn()Z

    move-result v0

    if-eqz v0, :cond_5d

    iget-object v0, p0, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->mAsdGlobalFeatures:Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;->isHdrAsdBothSupport()Z

    move-result v0

    if-nez v0, :cond_5d

    :cond_5c
    return-void

    .line 316
    :cond_5d
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->mAsd:Lcom/transsion/camera/feature/setting/asd/Asd;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/asd/Asd;->isHDRMode()Z

    move-result p0

    if-nez p0, :cond_70

    .line 317
    invoke-virtual {p1}, Lcom/transsion/camera/adapter/CameraParameters;->getAisMode()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_6d

    const/4 p2, 0x0

    :cond_6d
    invoke-virtual {p1, p2}, Lcom/transsion/camera/adapter/CameraParameters;->setTranssionHDR(I)V

    :cond_70
    return-void
.end method

.method protected setTranssionLowLightMode(Lcom/transsion/camera/adapter/CameraParameters;I)V
    .registers 4

    .line 518
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->isHDRSettingOff()Z

    move-result p0

    if-nez p0, :cond_12

    invoke-virtual {p1}, Lcom/transsion/camera/adapter/CameraParameters;->getAisMode()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_e

    goto :goto_12

    .line 521
    :cond_e
    invoke-virtual {p1, p2}, Lcom/transsion/camera/adapter/CameraParameters;->setTranssionLowLightMode(I)V

    return-void

    :cond_12
    :goto_12
    const/4 p0, 0x0

    .line 519
    invoke-virtual {p1, p0}, Lcom/transsion/camera/adapter/CameraParameters;->setTranssionLowLightMode(I)V

    return-void
.end method

.method public updateAsdLogicData(Landroid/hardware/camera2/CaptureResult;Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;)Z
    .registers 9

    .line 226
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->updateAsdLogicData(Landroid/hardware/camera2/CaptureResult;Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;)Z

    move-result v0

    .line 228
    invoke-interface {p2, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->checkMorHdsSceneResult(Landroid/hardware/camera2/CaptureResult;)[I

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_33

    .line 229
    array-length v3, v1

    if-lez v3, :cond_33

    .line 230
    aget v1, v1, v2

    const/4 v3, 0x1

    if-ne v1, v3, :cond_15

    move v1, v3

    goto :goto_16

    :cond_15
    move v1, v2

    .line 231
    :goto_16
    iget-boolean v4, p0, Lcom/transsion/camera/feature/setting/asd/policy/AlgorithmPolicy;->mIsMorHdsScene:Z

    if-eq v4, v1, :cond_33

    .line 232
    sget-object v0, Lcom/transsion/camera/feature/setting/asd/policy/AlgorithmPolicy;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[updateAsdLogicData] MorHdsScene has changed,  isMorHdsScene:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 233
    iput-boolean v1, p0, Lcom/transsion/camera/feature/setting/asd/policy/AlgorithmPolicy;->mIsMorHdsScene:Z

    move v0, v3

    .line 238
    :cond_33
    invoke-interface {p2, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->checkAutoMacroSwitchResult(Landroid/hardware/camera2/CaptureResult;)[I

    move-result-object p1

    if-nez p1, :cond_3b

    const/4 p1, -0x1

    goto :goto_3d

    .line 239
    :cond_3b
    aget p1, p1, v2

    :goto_3d
    iput p1, p0, Lcom/transsion/camera/feature/setting/asd/policy/AlgorithmPolicy;->mAutoMacroSwitchValue:I

    return v0
.end method

.method public updateBrightnessAndISOParameters([II)Z
    .registers 10

    .line 246
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->updateBrightnessAndISOParameters([II)Z

    .line 249
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->mAsdHwFeatures:Lcom/transsion/camera/feature/setting/asd/features/HardwareFeatures;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/asd/features/HardwareFeatures;->isHwSupportSuperResolution()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_5e

    .line 250
    invoke-static {}, Lcom/transsion/camera/utils/FeatureSupport;->isSprdPlatform()Z

    move-result v0

    if-nez v0, :cond_5e

    iget-object v0, p0, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->mAsdSettingFeatures:Lcom/transsion/camera/feature/setting/asd/features/SettingFeatures;

    .line 251
    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/asd/features/SettingFeatures;->isSuperResolutionOpend()Z

    move-result v0

    if-nez v0, :cond_23

    iget-object v0, p0, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->mAsd:Lcom/transsion/camera/feature/setting/asd/Asd;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/asd/Asd;->isAISuperResolutionSupport()Z

    move-result v0

    if-eqz v0, :cond_5e

    .line 253
    :cond_23
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->mAsdGlobalFeatures:Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;->isLimitUseISO()Z

    move-result v0

    if-eqz v0, :cond_41

    .line 254
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->mAsdGlobalFeatures:Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;

    iget-object v3, p0, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->mAsdHwFeatures:Lcom/transsion/camera/feature/setting/asd/features/HardwareFeatures;

    invoke-virtual {v3}, Lcom/transsion/camera/feature/setting/asd/features/HardwareFeatures;->isHwSupportSat()Z

    move-result v3

    iget-object v4, p0, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    iget v5, p0, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->mStreamId:I

    invoke-virtual {v0, v3, v4, v5}, Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;->getLimitISOValue(ZLcom/transsion/camera/app/common/setting/ISettingManager$SettingController;I)I

    move-result v0

    if-ge p2, v0, :cond_3f

    :goto_3d
    move v0, v1

    goto :goto_56

    :cond_3f
    move v0, v2

    goto :goto_56

    .line 256
    :cond_41
    aget v0, p1, v2

    iget-object v3, p0, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->mAsdGlobalFeatures:Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;

    iget-object v4, p0, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->mAsdHwFeatures:Lcom/transsion/camera/feature/setting/asd/features/HardwareFeatures;

    invoke-virtual {v4}, Lcom/transsion/camera/feature/setting/asd/features/HardwareFeatures;->isHwSupportSat()Z

    move-result v4

    iget-object v5, p0, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    iget v6, p0, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->mStreamId:I

    invoke-virtual {v3, v4, v5, v6}, Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;->getLimitBVValue(ZLcom/transsion/camera/app/common/setting/ISettingManager$SettingController;I)I

    move-result v3

    if-le v0, v3, :cond_3f

    goto :goto_3d

    .line 258
    :goto_56
    iget-boolean v3, p0, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->mSuperResolutionEnable:Z

    if-eq v3, v0, :cond_5e

    .line 259
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->mSuperResolutionEnable:Z

    move v0, v1

    goto :goto_5f

    :cond_5e
    move v0, v2

    .line 264
    :goto_5f
    iget-object v3, p0, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->mAsdGlobalFeatures:Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;

    invoke-virtual {v3}, Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;->isPlatformMfnrSupport()Z

    move-result v3

    if-nez v3, :cond_7f

    iget-object v3, p0, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->mAsd:Lcom/transsion/camera/feature/setting/asd/Asd;

    invoke-virtual {v3}, Lcom/transsion/camera/feature/setting/asd/Asd;->isBeautyMode()Z

    move-result v3

    if-eqz v3, :cond_7f

    .line 265
    aget p1, p1, v2

    const/16 v3, 0x14

    if-ge p1, v3, :cond_77

    move p1, v1

    goto :goto_78

    :cond_77
    move p1, v2

    .line 266
    :goto_78
    iget-boolean v3, p0, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->mSoftMFNREnable:Z

    if-eq v3, p1, :cond_7f

    .line 267
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->mSoftMFNREnable:Z

    move v0, v1

    .line 272
    :cond_7f
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/asd/policy/AlgorithmPolicy;->isPmasterModeISOParaSupported()Z

    move-result p1

    if-eqz p1, :cond_a9

    iget-object p1, p0, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->mAsd:Lcom/transsion/camera/feature/setting/asd/Asd;

    .line 273
    invoke-virtual {p1}, Lcom/transsion/camera/feature/setting/asd/Asd;->isPMasterMode()Z

    move-result p1

    if-eqz p1, :cond_a9

    iget-object p1, p0, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->mAsd:Lcom/transsion/camera/feature/setting/asd/Asd;

    .line 274
    invoke-virtual {p1}, Lcom/transsion/camera/feature/setting/asd/Asd;->isFaceBeautyOn()Z

    move-result p1

    if-nez p1, :cond_9d

    iget-object p1, p0, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->mAsd:Lcom/transsion/camera/feature/setting/asd/Asd;

    invoke-virtual {p1}, Lcom/transsion/camera/feature/setting/asd/Asd;->isSingleBlurOn()Z

    move-result p1

    if-eqz p1, :cond_a9

    :cond_9d
    const/16 p1, 0x640

    if-lt p2, p1, :cond_a2

    move v2, v1

    .line 276
    :cond_a2
    iget-boolean p1, p0, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->mLowLightEnable:Z

    if-eq p1, v2, :cond_a9

    .line 277
    iput-boolean v2, p0, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->mLowLightEnable:Z

    return v1

    :cond_a9
    return v0
.end method

.method protected updateIllumination(Lcom/transsion/camera/adapter/CameraParameters;I)I
    .registers 10

    const/16 v0, 0x65

    if-ne p2, v0, :cond_e

    .line 68
    iget-object v1, p0, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->mAsdSettingFeatures:Lcom/transsion/camera/feature/setting/asd/features/SettingFeatures;

    .line 69
    invoke-virtual {v1}, Lcom/transsion/camera/feature/setting/asd/features/SettingFeatures;->isSuperResolutionOpend()Z

    move-result v1

    if-nez v1, :cond_e

    .line 70
    iget p2, p0, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->mHalIlluminationType:I

    .line 73
    :cond_e
    iget-object v1, p0, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->mAsdGlobalFeatures:Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;

    invoke-virtual {v1}, Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;->isPlatformMfnrSupport()Z

    move-result v1

    const/4 v2, 0x6

    if-eqz v1, :cond_31

    iget-object v1, p0, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->mAsd:Lcom/transsion/camera/feature/setting/asd/Asd;

    invoke-virtual {v1}, Lcom/transsion/camera/feature/setting/asd/Asd;->isFullSizeMode()Z

    move-result v1

    if-eqz v1, :cond_31

    iget-object v1, p0, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->mAsd:Lcom/transsion/camera/feature/setting/asd/Asd;

    invoke-virtual {v1}, Lcom/transsion/camera/feature/setting/asd/Asd;->isAsdMode()Z

    move-result v1

    if-nez v1, :cond_31

    if-eqz p2, :cond_2f

    if-eq p2, v2, :cond_2f

    const/16 v1, 0x8

    if-ne p2, v1, :cond_31

    .line 77
    :cond_2f
    iget p2, p0, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->mHalIlluminationType:I

    .line 81
    :cond_31
    invoke-virtual {p0, p2}, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->isHDRScene(I)Z

    move-result v1

    const/4 v3, 0x5

    const/4 v4, 0x1

    if-eqz v1, :cond_5c

    .line 82
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->isHDRSettingOff()Z

    move-result v1

    if-nez v1, :cond_51

    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/asd/policy/AlgorithmPolicy;->shouldHDRLimit()Z

    move-result v1

    if-nez v1, :cond_51

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->isLivePhotoOn()Z

    move-result v1

    if-eqz v1, :cond_5c

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->isLivePhotoSupportHDR()Z

    move-result v1

    if-nez v1, :cond_5c

    .line 83
    :cond_51
    iget-object p2, p0, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->mAsdGlobalFeatures:Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;

    invoke-virtual {p2}, Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;->isPlatformMfnrSupport()Z

    move-result p2

    if-eqz p2, :cond_5b

    move p2, v3

    goto :goto_5c

    :cond_5b
    move p2, v4

    .line 89
    :cond_5c
    :goto_5c
    iget-boolean v1, p0, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->mIsInSensorZoomMode:Z

    if-nez v1, :cond_b7

    iget-object v1, p0, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->mAsdHwFeatures:Lcom/transsion/camera/feature/setting/asd/features/HardwareFeatures;

    .line 90
    invoke-virtual {v1}, Lcom/transsion/camera/feature/setting/asd/features/HardwareFeatures;->isHwSupportSuperResolution()Z

    move-result v1

    if-eqz v1, :cond_b7

    iget-object v1, p0, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->mAsdSettingFeatures:Lcom/transsion/camera/feature/setting/asd/features/SettingFeatures;

    .line 91
    invoke-virtual {v1}, Lcom/transsion/camera/feature/setting/asd/features/SettingFeatures;->isSuperResolutionOpend()Z

    move-result v1

    if-nez v1, :cond_76

    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/asd/policy/AlgorithmPolicy;->isAISuperResolutionScene()Z

    move-result v1

    if-eqz v1, :cond_b7

    .line 92
    :cond_76
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/asd/policy/AlgorithmPolicy;->superDefinitionAlgoSupportAsdMode()Z

    move-result v1

    if-eqz v1, :cond_b7

    iget-object v1, p0, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->mAsdHwFeatures:Lcom/transsion/camera/feature/setting/asd/features/HardwareFeatures;

    .line 93
    invoke-virtual {v1}, Lcom/transsion/camera/feature/setting/asd/features/HardwareFeatures;->isHwSupportRawSR()Z

    move-result v1

    if-nez v1, :cond_88

    iget-boolean v1, p0, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->mSuperResolutionEnable:Z

    if-nez v1, :cond_8e

    :cond_88
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/asd/policy/AlgorithmPolicy;->isRawSRScene()Z

    move-result v1

    if-eqz v1, :cond_b7

    :cond_8e
    iget v1, p0, Lcom/transsion/camera/feature/setting/asd/policy/AlgorithmPolicy;->mAutoMacroSwitchValue:I

    .line 94
    invoke-direct {p0, p1, v1}, Lcom/transsion/camera/feature/setting/asd/policy/AlgorithmPolicy;->autoFocusSwitchState(Lcom/transsion/camera/adapter/CameraParameters;I)Z

    move-result p1

    if-nez p1, :cond_b7

    iget-object p1, p0, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->mAsd:Lcom/transsion/camera/feature/setting/asd/Asd;

    .line 95
    invoke-virtual {p1}, Lcom/transsion/camera/feature/setting/asd/Asd;->isFullSizeMode()Z

    move-result p1

    if-nez p1, :cond_b7

    .line 96
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->getDeviceZoomRatio()I

    move-result p1

    iget-object v1, p0, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->mAsdGlobalFeatures:Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;

    invoke-virtual {v1}, Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;->getSuperResolutionHDRLimitZoom()I

    move-result v1

    if-gt p1, v1, :cond_b6

    .line 97
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/asd/policy/AlgorithmPolicy;->shouldHDRLimit()Z

    move-result p1

    if-nez p1, :cond_b6

    invoke-virtual {p0, p2}, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->isHDRScene(I)Z

    move-result p1

    if-nez p1, :cond_b7

    :cond_b6
    move p2, v0

    .line 102
    :cond_b7
    iget-boolean p1, p0, Lcom/transsion/camera/feature/setting/asd/policy/AlgorithmPolicy;->mIsMorHdsScene:Z

    if-eqz p1, :cond_bc

    move p2, v0

    .line 107
    :cond_bc
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->mAsd:Lcom/transsion/camera/feature/setting/asd/Asd;

    invoke-virtual {p1}, Lcom/transsion/camera/feature/setting/asd/Asd;->isSTBlurMode()Z

    move-result p1

    if-eqz p1, :cond_e3

    iget-object p1, p0, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->mAsdGlobalFeatures:Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;

    invoke-virtual {p1}, Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;->isSTBlurModeHDRSupport()Z

    move-result p1

    if-nez p1, :cond_e3

    invoke-virtual {p0, p2}, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->isHDRScene(I)Z

    move-result p1

    if-nez p1, :cond_e3

    .line 108
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->mAsdGlobalFeatures:Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;

    invoke-virtual {p1}, Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;->isPlatformMfnrSupport()Z

    move-result p1

    if-eqz p1, :cond_dc

    move p2, v3

    goto :goto_e3

    .line 110
    :cond_dc
    invoke-virtual {p0, p2}, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->isRegularScene(I)Z

    move-result p1

    if-eqz p1, :cond_e3

    move p2, v4

    .line 115
    :cond_e3
    :goto_e3
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/asd/policy/AlgorithmPolicy;->isPmasterModeISOParaSupported()Z

    move-result p1

    if-eqz p1, :cond_142

    .line 116
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->mAsd:Lcom/transsion/camera/feature/setting/asd/Asd;

    invoke-virtual {p1}, Lcom/transsion/camera/feature/setting/asd/Asd;->isPMasterMode()Z

    move-result p1

    if-eqz p1, :cond_160

    iget-object p1, p0, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->mAsd:Lcom/transsion/camera/feature/setting/asd/Asd;

    invoke-virtual {p1}, Lcom/transsion/camera/feature/setting/asd/Asd;->isFaceBeautyOn()Z

    move-result p1

    if-nez p1, :cond_101

    iget-object p1, p0, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->mAsd:Lcom/transsion/camera/feature/setting/asd/Asd;

    invoke-virtual {p1}, Lcom/transsion/camera/feature/setting/asd/Asd;->isSingleBlurOn()Z

    move-result p1

    if-eqz p1, :cond_160

    .line 117
    :cond_101
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->mAsdGlobalFeatures:Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;

    invoke-virtual {p1}, Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;->isPlatformMfnrSupport()Z

    move-result p1

    const/16 v1, 0x640

    if-eqz p1, :cond_12f

    .line 118
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->mAsdGlobalFeatures:Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;

    invoke-virtual {p1}, Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;->getPmasterModeISOSupportType()I

    move-result p1

    const/4 v5, 0x2

    if-ne p1, v5, :cond_11b

    if-eq p2, v5, :cond_11b

    const/16 p1, 0x9

    if-eq p2, p1, :cond_11b

    move p2, v3

    .line 124
    :cond_11b
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->mAsdGlobalFeatures:Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;

    invoke-virtual {p1}, Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;->getPmasterModeISOSupportType()I

    move-result p1

    if-ne p1, v4, :cond_160

    .line 125
    invoke-virtual {p0, p2}, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->isHDRScene(I)Z

    move-result p1

    if-eqz p1, :cond_160

    iget p1, p0, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->mISO:I

    if-le p1, v1, :cond_160

    :goto_12d
    move p2, v3

    goto :goto_160

    .line 130
    :cond_12f
    invoke-virtual {p0, p2}, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->isRegularScene(I)Z

    move-result p1

    if-eqz p1, :cond_137

    :goto_135
    move p2, v4

    goto :goto_160

    .line 132
    :cond_137
    invoke-virtual {p0, p2}, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->isHDRScene(I)Z

    move-result p1

    if-eqz p1, :cond_160

    iget p1, p0, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->mISO:I

    if-le p1, v1, :cond_160

    goto :goto_135

    .line 138
    :cond_142
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->mAsd:Lcom/transsion/camera/feature/setting/asd/Asd;

    invoke-virtual {p1}, Lcom/transsion/camera/feature/setting/asd/Asd;->isPMasterModeWithSingleBlur()Z

    move-result p1

    if-eqz p1, :cond_160

    invoke-virtual {p0, p2}, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->isHDRScene(I)Z

    move-result p1

    if-nez p1, :cond_160

    .line 139
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->mAsdGlobalFeatures:Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;

    invoke-virtual {p1}, Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;->isPlatformMfnrSupport()Z

    move-result p1

    if-eqz p1, :cond_159

    goto :goto_12d

    .line 141
    :cond_159
    invoke-virtual {p0, p2}, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->isRegularScene(I)Z

    move-result p1

    if-eqz p1, :cond_160

    goto :goto_135

    .line 147
    :cond_160
    :goto_160
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->mAsdGlobalFeatures:Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;

    invoke-virtual {p1}, Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;->isPlatformMfnrSupport()Z

    move-result p1

    if-nez p1, :cond_17f

    .line 148
    invoke-virtual {p0, p2}, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->isHDRScene(I)Z

    move-result p1

    if-nez p1, :cond_17f

    iget-object p1, p0, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->mAsd:Lcom/transsion/camera/feature/setting/asd/Asd;

    .line 149
    invoke-virtual {p1}, Lcom/transsion/camera/feature/setting/asd/Asd;->isVsdofMode()Z

    move-result p1

    if-nez p1, :cond_17e

    iget-object p1, p0, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->mAsd:Lcom/transsion/camera/feature/setting/asd/Asd;

    invoke-virtual {p1}, Lcom/transsion/camera/feature/setting/asd/Asd;->isPMasterModeWithDualCam()Z

    move-result p1

    if-eqz p1, :cond_17f

    :cond_17e
    move p2, v4

    .line 153
    :cond_17f
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->mAsdGlobalFeatures:Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;

    invoke-virtual {p1}, Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;->isPlatformMfnrSupport()Z

    move-result p1

    if-nez p1, :cond_196

    iget-object p1, p0, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->mAsd:Lcom/transsion/camera/feature/setting/asd/Asd;

    .line 154
    invoke-virtual {p1}, Lcom/transsion/camera/feature/setting/asd/Asd;->isBeautyMode()Z

    move-result p1

    if-eqz p1, :cond_196

    iget-boolean p1, p0, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->mSoftMFNREnable:Z

    if-nez p1, :cond_196

    if-ne p2, v4, :cond_196

    goto :goto_197

    :cond_196
    move v2, p2

    .line 160
    :goto_197
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->mAsd:Lcom/transsion/camera/feature/setting/asd/Asd;

    invoke-virtual {p1}, Lcom/transsion/camera/feature/setting/asd/Asd;->isTimelapsePhotoMode()Z

    move-result p1

    if-eqz p1, :cond_1b3

    .line 161
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->mAsdGlobalFeatures:Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;

    invoke-virtual {p1}, Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;->isPlatformMfnrSupport()Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_1ae

    .line 162
    invoke-virtual {p0, v2}, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->isHDRScene(I)Z

    move-result p1

    if-eqz p1, :cond_1b0

    :cond_1ae
    move v2, p2

    goto :goto_1b3

    :cond_1b0
    if-ne v2, v4, :cond_1b3

    move v2, v3

    .line 173
    :cond_1b3
    :goto_1b3
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/asd/policy/AlgorithmPolicy;->isFastSuperNightScene()Z

    move-result p1

    if-eqz p1, :cond_1ba

    move v2, v4

    .line 177
    :cond_1ba
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->mAsdGlobalFeatures:Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;

    invoke-virtual {p1}, Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;->isHdrLimitedByMemory()Z

    move-result p1

    if-eqz p1, :cond_1e3

    .line 178
    invoke-static {}, Lcom/transsion/camera/utils/MemoryUtils;->getAvailableMemory()J

    move-result-wide p1

    const-wide/16 v5, 0x2bc

    cmp-long p1, p1, v5

    if-gez p1, :cond_1e3

    .line 179
    iget p1, p0, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->mISO:I

    const/16 p2, 0xc80

    if-le p1, p2, :cond_1e3

    invoke-virtual {p0, v2}, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->isHDRScene(I)Z

    move-result p1

    if-eqz p1, :cond_1e3

    .line 180
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->mAsdGlobalFeatures:Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;

    invoke-virtual {p1}, Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;->isPlatformMfnrSupport()Z

    move-result p1

    if-eqz p1, :cond_1e2

    move v2, v3

    goto :goto_1e3

    :cond_1e2
    move v2, v4

    .line 185
    :cond_1e3
    :goto_1e3
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->isLivePhotoOn()Z

    move-result p1

    if-eqz p1, :cond_1fa

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->isLivePhotoSupportHDR()Z

    move-result p1

    if-nez p1, :cond_1fa

    .line 186
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->mAsdGlobalFeatures:Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;

    invoke-virtual {p1}, Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;->isPlatformMfnrSupport()Z

    move-result p1

    if-eqz p1, :cond_1f8

    goto :goto_1f9

    :cond_1f8
    move v3, v4

    :goto_1f9
    move v2, v3

    .line 190
    :cond_1fa
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->mAsdGlobalFeatures:Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;

    invoke-virtual {p1}, Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;->isForceSuperResolutionOn()Z

    move-result p1

    if-eqz p1, :cond_217

    .line 191
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/asd/policy/AlgorithmPolicy;->isFastSuperNightScene()Z

    move-result p1

    if-nez p1, :cond_217

    .line 192
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->isLivePhotoOn()Z

    move-result p1

    if-nez p1, :cond_217

    .line 193
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->getZoomValue()I

    move-result p1

    sget p2, Lcom/transsion/camera/utils/SettingInfo;->ZOOM_10X:I

    if-lt p1, p2, :cond_217

    goto :goto_218

    :cond_217
    move v0, v2

    .line 197
    :goto_218
    sget-object p1, Lcom/transsion/camera/feature/setting/asd/policy/AlgorithmPolicy;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[updateCustomAlgorithm] mHalIlluminationType: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->mHalIlluminationType:I

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " change to illuminationType: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", zoom: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->getDeviceZoomRatio()I

    move-result v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", HDR state: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v2, "key_hdr"

    .line 199
    invoke-interface {v1, v2}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", zoom Value: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->getZoomValue()I

    move-result v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", ISZ mode: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->mIsInSensorZoomMode:Z

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 197
    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v0
.end method

.method public updateParameters(Lcom/transsion/camera/adapter/CameraParameters;Ljava/lang/String;II)V
    .registers 5

    .line 62
    invoke-super {p0, p1, p2, p3, p4}, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->updateParameters(Lcom/transsion/camera/adapter/CameraParameters;Ljava/lang/String;II)V

    return-void
.end method
