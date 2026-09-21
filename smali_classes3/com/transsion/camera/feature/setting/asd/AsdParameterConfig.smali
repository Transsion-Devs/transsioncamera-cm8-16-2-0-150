.class public Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/ICameraSetting$IParametersConfigure;


# static fields
.field protected static final ASD_TYPE_INIT_VALUE:I = -0x1


# instance fields
.field private final mAlgoPolicy:Lcom/transsion/camera/feature/setting/asd/policy/IAlgoPolicy;

.field private final mAsd:Lcom/transsion/camera/feature/setting/asd/Asd;

.field private final mAsdGlobalFeatures:Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;

.field private final mAsdHwFeatures:Lcom/transsion/camera/feature/setting/asd/features/HardwareFeatures;

.field private final mAsdModeFeatures:Lcom/transsion/camera/feature/setting/asd/features/ModeFeatures;

.field private final mAsdSettingFeatures:Lcom/transsion/camera/feature/setting/asd/features/SettingFeatures;

.field private mBrightnessValue:I

.field private final mCameraAsdCallback:Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;

.field private final mCameraDualLensCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraDualLensCallback;

.field private mCelebritySceneValue:Ljava/lang/String;

.field private mCurrentValue:Ljava/lang/String;

.field private mEffect:I

.field private mHalIlluminationType:I

.field private mHuman:I

.field private mIsAsdOpenState:Z

.field private mIsFakeCameraSupport:Z

.field private mIsHwSupportFastSuperNight:Z

.field private mIsNightShotOpenState:Z

.field private mIsPreviewStopped:Z

.field private mIsSTBlueMode:Z

.field private mIsSuperResolutionOpend:Z

.field private mMaxPictureSize:Landroid/util/Size;

.field private final mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

.field private final mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

.field private final mShot2ShotSkipPolicy:Lcom/transsion/camera/feature/setting/asd/AsdShot2ShotSkipPolicy;

.field private mStreamId:I

.field private final mStreamIdCallback:Lcom/transsion/camera/adapter/CameraProxy$StreamIdCallback;

.field private mSupportedValues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSupportedVersionValues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected final mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

.field private mWarningType:I


# direct methods
.method public static synthetic $r8$lambda$zqOz57a7hhjq4eyvcGZgRMdayBY(Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;Landroid/hardware/camera2/CaptureResult;Landroid/util/Size;Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;)V
    .registers 4

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->lambda$new$0(Landroid/hardware/camera2/CaptureResult;Landroid/util/Size;Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmAlgoPolicy(Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;)Lcom/transsion/camera/feature/setting/asd/policy/IAlgoPolicy;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mAlgoPolicy:Lcom/transsion/camera/feature/setting/asd/policy/IAlgoPolicy;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmAsd(Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;)Lcom/transsion/camera/feature/setting/asd/Asd;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mAsd:Lcom/transsion/camera/feature/setting/asd/Asd;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmAsdHwFeatures(Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;)Lcom/transsion/camera/feature/setting/asd/features/HardwareFeatures;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mAsdHwFeatures:Lcom/transsion/camera/feature/setting/asd/features/HardwareFeatures;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmAsdModeFeatures(Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;)Lcom/transsion/camera/feature/setting/asd/features/ModeFeatures;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mAsdModeFeatures:Lcom/transsion/camera/feature/setting/asd/features/ModeFeatures;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmStreamId(Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mStreamId:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmWarningType(Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mWarningType:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmStreamId(Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;I)V
    .registers 2

    .line 0
    iput p1, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mStreamId:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmWarningType(Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;I)V
    .registers 2

    .line 0
    iput p1, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mWarningType:I

    return-void
.end method

.method public constructor <init>(Lcom/transsion/camera/feature/setting/asd/Asd;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)V
    .registers 7

    .line 175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    const-string v0, ""

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mCurrentValue:Ljava/lang/String;

    .line 80
    const-string/jumbo v0, "val_celebrity_scene_none"

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mCelebritySceneValue:Ljava/lang/String;

    .line 81
    new-instance v0, Landroid/util/Size;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Landroid/util/Size;-><init>(II)V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mMaxPictureSize:Landroid/util/Size;

    const/4 v0, -0x1

    .line 83
    iput v0, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mHalIlluminationType:I

    .line 84
    iput v0, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mStreamId:I

    .line 85
    iput v0, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mEffect:I

    .line 86
    iput v0, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mHuman:I

    .line 87
    iput v1, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mWarningType:I

    .line 90
    iput-boolean v1, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mIsSTBlueMode:Z

    .line 91
    iput-boolean v1, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mIsAsdOpenState:Z

    .line 92
    iput-boolean v1, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mIsNightShotOpenState:Z

    .line 93
    iput-boolean v1, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mIsFakeCameraSupport:Z

    .line 94
    iput-boolean v1, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mIsSuperResolutionOpend:Z

    .line 95
    iput-boolean v1, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mIsHwSupportFastSuperNight:Z

    .line 96
    iput-boolean v1, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mIsPreviewStopped:Z

    .line 147
    new-instance v0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mCameraAsdCallback:Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;

    .line 156
    new-instance v0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig$1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig$1;-><init>(Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mStreamIdCallback:Lcom/transsion/camera/adapter/CameraProxy$StreamIdCallback;

    .line 383
    new-instance v0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig$2;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig$2;-><init>(Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mCameraDualLensCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraDualLensCallback;

    .line 176
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    .line 177
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mAsd:Lcom/transsion/camera/feature/setting/asd/Asd;

    .line 178
    invoke-virtual {p1}, Lcom/transsion/camera/feature/setting/asd/Asd;->getGlobalFeatures()Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mAsdGlobalFeatures:Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;

    .line 179
    invoke-virtual {p1}, Lcom/transsion/camera/feature/setting/asd/Asd;->getModeFeatures()Lcom/transsion/camera/feature/setting/asd/features/ModeFeatures;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mAsdModeFeatures:Lcom/transsion/camera/feature/setting/asd/features/ModeFeatures;

    .line 180
    invoke-virtual {p1}, Lcom/transsion/camera/feature/setting/asd/Asd;->getSettingFeatures()Lcom/transsion/camera/feature/setting/asd/features/SettingFeatures;

    move-result-object v2

    iput-object v2, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mAsdSettingFeatures:Lcom/transsion/camera/feature/setting/asd/features/SettingFeatures;

    .line 181
    new-instance v2, Lcom/transsion/camera/feature/setting/asd/features/HardwareFeatures;

    invoke-direct {v2}, Lcom/transsion/camera/feature/setting/asd/features/HardwareFeatures;-><init>()V

    iput-object v2, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mAsdHwFeatures:Lcom/transsion/camera/feature/setting/asd/features/HardwareFeatures;

    .line 182
    iput-object p2, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    .line 183
    iput-object p3, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    .line 185
    invoke-virtual {p0, v0, v1}, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->createShot2ShotSkipPolicy(Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;Lcom/transsion/camera/feature/setting/asd/features/ModeFeatures;)Lcom/transsion/camera/feature/setting/asd/AsdShot2ShotSkipPolicy;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mShot2ShotSkipPolicy:Lcom/transsion/camera/feature/setting/asd/AsdShot2ShotSkipPolicy;

    .line 187
    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;->isTurboFusionSupport()Z

    move-result p2

    if-eqz p2, :cond_84

    .line 188
    new-instance p2, Lcom/transsion/camera/feature/setting/asd/policy/TurboFusionPolicy;

    invoke-direct {p2, p1, p3}, Lcom/transsion/camera/feature/setting/asd/policy/TurboFusionPolicy;-><init>(Lcom/transsion/camera/feature/setting/asd/Asd;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)V

    iput-object p2, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mAlgoPolicy:Lcom/transsion/camera/feature/setting/asd/policy/IAlgoPolicy;

    return-void

    .line 189
    :cond_84
    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;->isSuperAiRawSupport()Z

    move-result p2

    if-eqz p2, :cond_92

    .line 190
    new-instance p2, Lcom/transsion/camera/feature/setting/asd/policy/SuperAiRawPolicy;

    invoke-direct {p2, p1, p3}, Lcom/transsion/camera/feature/setting/asd/policy/SuperAiRawPolicy;-><init>(Lcom/transsion/camera/feature/setting/asd/Asd;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)V

    iput-object p2, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mAlgoPolicy:Lcom/transsion/camera/feature/setting/asd/policy/IAlgoPolicy;

    return-void

    .line 192
    :cond_92
    new-instance p2, Lcom/transsion/camera/feature/setting/asd/policy/AlgorithmPolicy;

    invoke-direct {p2, p1, p3}, Lcom/transsion/camera/feature/setting/asd/policy/AlgorithmPolicy;-><init>(Lcom/transsion/camera/feature/setting/asd/Asd;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)V

    iput-object p2, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mAlgoPolicy:Lcom/transsion/camera/feature/setting/asd/policy/IAlgoPolicy;

    return-void
.end method

.method private getTranssionAsdMode()I
    .registers 5

    .line 349
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mSupportedVersionValues:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_18

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_18

    .line 350
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mSupportedVersionValues:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_19

    :cond_18
    move v0, v1

    .line 353
    :goto_19
    iget-object v2, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mAsd:Lcom/transsion/camera/feature/setting/asd/Asd;

    invoke-virtual {v2}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v2

    const-string v3, "1"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_36

    iget-object v2, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mAsd:Lcom/transsion/camera/feature/setting/asd/Asd;

    .line 354
    invoke-virtual {v2}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v2

    const-string v3, "auto"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_36

    return v1

    .line 357
    :cond_36
    iget-object v1, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mAsd:Lcom/transsion/camera/feature/setting/asd/Asd;

    invoke-virtual {v1}, Lcom/transsion/camera/feature/setting/asd/Asd;->isSTBlurMode()Z

    move-result v1

    const/4 v2, 0x2

    if-nez v1, :cond_83

    iget-object v1, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mAsd:Lcom/transsion/camera/feature/setting/asd/Asd;

    .line 358
    invoke-virtual {v1}, Lcom/transsion/camera/feature/setting/asd/Asd;->isVsdofMode()Z

    move-result v1

    if-nez v1, :cond_83

    iget-object v1, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mAsd:Lcom/transsion/camera/feature/setting/asd/Asd;

    .line 359
    invoke-virtual {v1}, Lcom/transsion/camera/feature/setting/asd/Asd;->isPMasterMode()Z

    move-result v1

    if-nez v1, :cond_83

    iget-object v1, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mAsd:Lcom/transsion/camera/feature/setting/asd/Asd;

    .line 360
    invoke-virtual {v1}, Lcom/transsion/camera/feature/setting/asd/Asd;->isSuperNightMode()Z

    move-result v1

    if-eqz v1, :cond_5f

    iget-object v1, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mAsdGlobalFeatures:Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;

    invoke-virtual {v1}, Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;->isSuperNightAsdSupport()Z

    move-result v1

    if-nez v1, :cond_83

    :cond_5f
    iget-object v1, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mAsd:Lcom/transsion/camera/feature/setting/asd/Asd;

    .line 361
    invoke-virtual {v1}, Lcom/transsion/camera/feature/setting/asd/Asd;->isMotionCaptureMode()Z

    move-result v1

    if-nez v1, :cond_83

    iget-object v1, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mAsd:Lcom/transsion/camera/feature/setting/asd/Asd;

    .line 362
    invoke-virtual {v1}, Lcom/transsion/camera/feature/setting/asd/Asd;->isStreetPhotoMode()Z

    move-result v1

    if-eqz v1, :cond_70

    goto :goto_83

    .line 365
    :cond_70
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mAsd:Lcom/transsion/camera/feature/setting/asd/Asd;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getCurrentCameraId()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/transsion/camera/adapter/CameraInfoUtil;->isCameraFacingBack(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_81

    const/4 p0, 0x5

    if-ne v0, p0, :cond_80

    goto :goto_81

    :cond_80
    return v2

    :cond_81
    :goto_81
    const/4 p0, 0x1

    return p0

    :cond_83
    :goto_83
    return v2
.end method

.method private initHwFeatures(Lcom/transsion/camera/adapter/ICameraCapabilities;)V
    .registers 7

    .line 276
    invoke-interface {p1}, Lcom/transsion/camera/adapter/ICameraCapabilities;->isSupportedRawSR()Z

    move-result v0

    .line 278
    invoke-interface {p1}, Lcom/transsion/camera/adapter/ICameraCapabilities;->isSupportedSuperResolution()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_11

    if-eqz v0, :cond_f

    goto :goto_11

    :cond_f
    move v1, v3

    goto :goto_12

    :cond_11
    :goto_11
    move v1, v2

    .line 280
    :goto_12
    invoke-interface {p1}, Lcom/transsion/camera/adapter/ICameraCapabilities;->getSupportedAsdVersion()Ljava/util/List;

    move-result-object v4

    iput-object v4, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mSupportedVersionValues:Ljava/util/List;

    .line 281
    invoke-interface {p1}, Lcom/transsion/camera/adapter/ICameraCapabilities;->isSupportedFastSuperNightMode()Z

    move-result v4

    if-nez v4, :cond_2f

    .line 282
    invoke-interface {p1}, Lcom/transsion/camera/adapter/ICameraCapabilities;->isSupportedAIRawLite()Z

    move-result v4

    if-nez v4, :cond_2f

    iget-object v4, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mAsdGlobalFeatures:Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;

    .line 283
    invoke-virtual {v4}, Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;->isAiRawSprdSupport()Z

    move-result v4

    if-eqz v4, :cond_2d

    goto :goto_2f

    :cond_2d
    move v4, v3

    goto :goto_30

    :cond_2f
    :goto_2f
    move v4, v2

    :goto_30
    iput-boolean v4, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mIsHwSupportFastSuperNight:Z

    .line 284
    invoke-interface {p1}, Lcom/transsion/camera/adapter/ICameraCapabilities;->getSupportedTranssionHDR()Ljava/util/List;

    move-result-object v4

    .line 285
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-le v4, v2, :cond_3d

    goto :goto_3e

    :cond_3d
    move v2, v3

    .line 289
    :goto_3e
    iget-object v3, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mAsdHwFeatures:Lcom/transsion/camera/feature/setting/asd/features/HardwareFeatures;

    invoke-virtual {v3, v0}, Lcom/transsion/camera/feature/setting/asd/features/HardwareFeatures;->setHwSupportRawSR(Z)V

    .line 290
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mAsdHwFeatures:Lcom/transsion/camera/feature/setting/asd/features/HardwareFeatures;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/setting/asd/features/HardwareFeatures;->setHwSupportSuperResolution(Z)V

    .line 291
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mAsdHwFeatures:Lcom/transsion/camera/feature/setting/asd/features/HardwareFeatures;

    iget-boolean v1, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mIsHwSupportFastSuperNight:Z

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/setting/asd/features/HardwareFeatures;->setHwSupportFastSuperNight(Z)V

    .line 292
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mAsdHwFeatures:Lcom/transsion/camera/feature/setting/asd/features/HardwareFeatures;

    invoke-interface {p1}, Lcom/transsion/camera/adapter/ICameraCapabilities;->isSatModeSupport()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/setting/asd/features/HardwareFeatures;->setHwSupportSat(Z)V

    .line 293
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mAsdHwFeatures:Lcom/transsion/camera/feature/setting/asd/features/HardwareFeatures;

    invoke-interface {p1}, Lcom/transsion/camera/adapter/ICameraCapabilities;->isSupported4Cell()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/setting/asd/features/HardwareFeatures;->setHwSupport4Cell(Z)V

    .line 294
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mAsdHwFeatures:Lcom/transsion/camera/feature/setting/asd/features/HardwareFeatures;

    invoke-interface {p1}, Lcom/transsion/camera/adapter/ICameraCapabilities;->isSupportedSuperDefinition()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/setting/asd/features/HardwareFeatures;->setHwSupportSuperDefinition(Z)V

    .line 295
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mAsdHwFeatures:Lcom/transsion/camera/feature/setting/asd/features/HardwareFeatures;

    invoke-virtual {v0, v2}, Lcom/transsion/camera/feature/setting/asd/features/HardwareFeatures;->setHwSupportTranssionHdr(Z)V

    .line 297
    iget v0, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mStreamId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_79

    .line 298
    invoke-interface {p1}, Lcom/transsion/camera/adapter/ICameraCapabilities;->getSensorRect()Landroid/graphics/Rect;

    move-result-object p1

    goto :goto_8b

    .line 300
    :cond_79
    invoke-static {}, Lcom/transsion/camera/adapter/CameraAgentFactory;->getCameraAgent()Lcom/transsion/camera/adapter/CameraAgent;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/camera/adapter/CameraAgent;->getCameraDeviceInfo()Lcom/transsion/camera/adapter/ICameraDeviceInfo;

    move-result-object p1

    iget v0, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mStreamId:I

    .line 301
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->getSensorRect(Ljava/lang/String;)Landroid/graphics/Rect;

    move-result-object p1

    .line 303
    :goto_8b
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mAsdHwFeatures:Lcom/transsion/camera/feature/setting/asd/features/HardwareFeatures;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/feature/setting/asd/features/HardwareFeatures;->setSensorRect(Landroid/graphics/Rect;)V

    .line 304
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mAlgoPolicy:Lcom/transsion/camera/feature/setting/asd/policy/IAlgoPolicy;

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mAsdHwFeatures:Lcom/transsion/camera/feature/setting/asd/features/HardwareFeatures;

    invoke-interface {p1, p0}, Lcom/transsion/camera/feature/setting/asd/policy/IAlgoPolicy;->setHwFeatures(Lcom/transsion/camera/feature/setting/asd/features/HardwareFeatures;)V

    return-void
.end method

.method private isSupportForceSkipToNone()Z
    .registers 2

    .line 633
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mShot2ShotPolicyExtCount:I

    if-lez v0, :cond_1c

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mAsdModeFeatures:Lcom/transsion/camera/feature/setting/asd/features/ModeFeatures;

    .line 634
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/asd/features/ModeFeatures;->isPMaterMode()Z

    move-result p0

    if-eqz p0, :cond_1c

    .line 635
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/utils/CustomConfigUtil;->isQcomCaptureFlow()Z

    move-result p0

    if-eqz p0, :cond_1c

    const/4 p0, 0x1

    return p0

    :cond_1c
    const/4 p0, 0x0

    return p0
.end method

.method private synthetic lambda$new$0(Landroid/hardware/camera2/CaptureResult;Landroid/util/Size;Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;)V
    .registers 5

    .line 148
    invoke-direct {p0, p1, p3}, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->onAsdDataCallback(Landroid/hardware/camera2/CaptureResult;Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;)Z

    move-result p2

    .line 149
    invoke-direct {p0, p1, p3}, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->onBrightnessDataCallback(Landroid/hardware/camera2/CaptureResult;Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;)Z

    move-result v0

    or-int/2addr p2, v0

    .line 150
    invoke-direct {p0, p1, p3}, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->onLogicDataCallback(Landroid/hardware/camera2/CaptureResult;Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;)Z

    move-result p1

    or-int/2addr p1, p2

    if-eqz p1, :cond_13

    .line 152
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->sendSettingChangeRequest()V

    :cond_13
    return-void
.end method

.method private needShowTips()Z
    .registers 6

    .line 518
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mSupportedValues:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_9b

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x1

    if-le v0, v2, :cond_9b

    .line 520
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mIsAsdOpenState:Z

    if-eqz v0, :cond_9b

    .line 521
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mAsd:Lcom/transsion/camera/feature/setting/asd/Asd;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 522
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/4 v4, -0x1

    sparse-switch v3, :sswitch_data_9c

    :goto_21
    move v2, v4

    goto :goto_41

    :sswitch_23
    const-string v2, "auto"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2c

    goto :goto_21

    :cond_2c
    const/4 v2, 0x2

    goto :goto_41

    :sswitch_2e
    const-string v3, "1"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_41

    goto :goto_21

    :sswitch_37
    const-string v2, "0"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_40

    goto :goto_21

    :cond_40
    move v2, v1

    .line 540
    :cond_41
    :goto_41
    const-string/jumbo v0, "val_celebrity_scene_none"

    packed-switch v2, :pswitch_data_aa

    iget-object v0, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v2, "needShowTips, asd value is abnormal."

    invoke-static {v0, v2}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_85

    .line 527
    :pswitch_4f
    iget-object v2, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mAsd:Lcom/transsion/camera/feature/setting/asd/Asd;

    invoke-virtual {v2}, Lcom/transsion/camera/feature/setting/asd/Asd;->isSTBlurMode()Z

    move-result v2

    if-nez v2, :cond_85

    iget-object v2, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mAsd:Lcom/transsion/camera/feature/setting/asd/Asd;

    .line 528
    invoke-virtual {v2}, Lcom/transsion/camera/feature/setting/asd/Asd;->isVsdofMode()Z

    move-result v2

    if-nez v2, :cond_85

    iget-object v2, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mAsd:Lcom/transsion/camera/feature/setting/asd/Asd;

    .line 529
    invoke-virtual {v2}, Lcom/transsion/camera/feature/setting/asd/Asd;->isPMasterModeWithDualCam()Z

    move-result v2

    if-nez v2, :cond_85

    iget-object v2, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mAsd:Lcom/transsion/camera/feature/setting/asd/Asd;

    .line 530
    invoke-virtual {v2}, Lcom/transsion/camera/feature/setting/asd/Asd;->isPMasterModeWithSingleBlur()Z

    move-result v2

    if-eqz v2, :cond_78

    iget-object v2, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mAsd:Lcom/transsion/camera/feature/setting/asd/Asd;

    invoke-virtual {v2}, Lcom/transsion/camera/feature/setting/asd/Asd;->isFrontCamera()Z

    move-result v2

    if-nez v2, :cond_78

    goto :goto_85

    .line 533
    :cond_78
    iget-object v1, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mCelebritySceneValue:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    goto :goto_85

    .line 537
    :pswitch_7f
    iget-object v1, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mCelebritySceneValue:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    .line 544
    :cond_85
    :goto_85
    :pswitch_85
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "needShowTips, needShow: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :cond_9b
    return v1

    :sswitch_data_9c
    .sparse-switch
        0x30 -> :sswitch_37
        0x31 -> :sswitch_2e
        0x2dddaf -> :sswitch_23
    .end sparse-switch

    :pswitch_data_aa
    .packed-switch 0x0
        :pswitch_85
        :pswitch_7f
        :pswitch_4f
    .end packed-switch
.end method

.method private onAsdDataCallback(Landroid/hardware/camera2/CaptureResult;Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;)Z
    .registers 8

    .line 122
    invoke-interface {p2, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->checkAsdResult(Landroid/hardware/camera2/CaptureResult;)[I

    move-result-object p1

    const/4 p2, 0x0

    if-eqz p1, :cond_40

    .line 124
    array-length v0, p1

    const/4 v1, 0x2

    if-ge v0, v1, :cond_c

    goto :goto_40

    .line 128
    :cond_c
    array-length v0, p1

    const/4 v2, -0x1

    if-le v0, v1, :cond_13

    aget v0, p1, v1

    goto :goto_14

    :cond_13
    move v0, v2

    .line 129
    :goto_14
    aget v1, p1, p2

    const/4 v3, 0x1

    .line 130
    aget p1, p1, v3

    .line 131
    iget v4, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mHalIlluminationType:I

    if-ne v1, v4, :cond_26

    iget v4, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mEffect:I

    if-ne p1, v4, :cond_26

    iget v4, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mHuman:I

    if-ne v0, v4, :cond_26

    return p2

    :cond_26
    if-ne v1, v2, :cond_2a

    if-eq p1, v2, :cond_2f

    .line 135
    :cond_2a
    iget-boolean v4, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mIsAsdOpenState:Z

    if-nez v4, :cond_2f

    return p2

    .line 139
    :cond_2f
    const-string/jumbo p2, "val_celebrity_scene_none"

    iget-object v4, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mCelebritySceneValue:Ljava/lang/String;

    invoke-static {p2, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_3b

    goto :goto_3c

    :cond_3b
    move v2, p1

    .line 143
    :goto_3c
    invoke-direct {p0, v1, v2, v0}, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->refreshTypeValue(III)V

    return v3

    :cond_40
    :goto_40
    return p2
.end method

.method private onBrightnessDataCallback(Landroid/hardware/camera2/CaptureResult;Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;)Z
    .registers 5

    .line 99
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mAlgoPolicy:Lcom/transsion/camera/feature/setting/asd/policy/IAlgoPolicy;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 103
    :cond_6
    invoke-interface {p2, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->checkBrightnessResult(Landroid/hardware/camera2/CaptureResult;)[I

    move-result-object p2

    if-eqz p2, :cond_35

    .line 104
    array-length v0, p2

    if-nez v0, :cond_10

    goto :goto_35

    .line 108
    :cond_10
    sget-object v0, Landroid/hardware/camera2/CaptureResult;->SENSOR_SENSITIVITY:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-static {p1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 109
    aget v0, p2, v1

    iput v0, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mBrightnessValue:I

    .line 110
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mAlgoPolicy:Lcom/transsion/camera/feature/setting/asd/policy/IAlgoPolicy;

    invoke-interface {p0, p2, p1}, Lcom/transsion/camera/feature/setting/asd/policy/IAlgoPolicy;->updateBrightnessAndISOParameters([II)Z

    move-result p0

    return p0

    :cond_35
    :goto_35
    return v1
.end method

.method private onLogicDataCallback(Landroid/hardware/camera2/CaptureResult;Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;)Z
    .registers 4

    .line 114
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mShot2ShotSkipPolicy:Lcom/transsion/camera/feature/setting/asd/AsdShot2ShotSkipPolicy;

    if-eqz v0, :cond_7

    .line 115
    invoke-virtual {v0, p1}, Lcom/transsion/camera/feature/setting/asd/AsdShot2ShotSkipPolicy;->updateAsdResult(Landroid/hardware/camera2/CaptureResult;)V

    .line 118
    :cond_7
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mAlgoPolicy:Lcom/transsion/camera/feature/setting/asd/policy/IAlgoPolicy;

    if-eqz p0, :cond_13

    invoke-interface {p0, p1, p2}, Lcom/transsion/camera/feature/setting/asd/policy/IAlgoPolicy;->updateAsdLogicData(Landroid/hardware/camera2/CaptureResult;Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;)Z

    move-result p0

    if-eqz p0, :cond_13

    const/4 p0, 0x1

    return p0

    :cond_13
    const/4 p0, 0x0

    return p0
.end method

.method private refreshTypeValue()V
    .registers 2

    const/4 v0, -0x1

    .line 426
    invoke-direct {p0, v0, v0, v0}, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->refreshTypeValue(III)V

    return-void
.end method

.method private refreshTypeValue(III)V
    .registers 4

    .line 430
    iput p1, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mHalIlluminationType:I

    .line 431
    iput p2, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mEffect:I

    .line 432
    iput p3, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mHuman:I

    const/4 p1, 0x0

    .line 433
    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->refreshToUI(Z)V

    return-void
.end method

.method private setASDCallback(Lcom/transsion/camera/adapter/CameraProxy;)V
    .registers 4

    .line 437
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mSupportedValues:Ljava/util/List;

    if-eqz v0, :cond_1d

    .line 438
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1d

    iget-object v0, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mAsd:Lcom/transsion/camera/feature/setting/asd/Asd;

    .line 439
    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/asd/Asd;->isModeSupport()Z

    move-result v0

    if-eqz v0, :cond_1d

    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mIsPreviewStopped:Z

    if-nez v0, :cond_1d

    .line 441
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mCameraAsdCallback:Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;

    invoke-virtual {p1, p0}, Lcom/transsion/camera/adapter/CameraProxy;->registerFrameResultCallback(Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;)V

    return-void

    .line 443
    :cond_1d
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mCameraAsdCallback:Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;

    invoke-virtual {p1, p0}, Lcom/transsion/camera/adapter/CameraProxy;->unRegisterFrameResultCallback(Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;)V

    return-void
.end method

.method private setDualLensCallback(Lcom/transsion/camera/adapter/CameraProxy;)V
    .registers 3

    .line 458
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mIsFakeCameraSupport:Z

    if-eqz v0, :cond_10

    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mIsPreviewStopped:Z

    if-nez v0, :cond_10

    .line 459
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mCameraDualLensCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraDualLensCallback;

    const/16 v0, 0x9

    invoke-virtual {p1, p0, v0}, Lcom/transsion/camera/adapter/CameraProxy;->registerDualLensCallback(Lcom/transsion/camera/adapter/CameraProxy$CameraDualLensCallback;I)V

    return-void

    .line 461
    :cond_10
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mCameraDualLensCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraDualLensCallback;

    invoke-virtual {p1, p0}, Lcom/transsion/camera/adapter/CameraProxy;->unRegisterDualLensCallback(Lcom/transsion/camera/adapter/CameraProxy$CameraDualLensCallback;)V

    return-void
.end method

.method private setStreamIdCallback(Lcom/transsion/camera/adapter/CameraProxy;)V
    .registers 4

    .line 448
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mAsdHwFeatures:Lcom/transsion/camera/feature/setting/asd/features/HardwareFeatures;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/asd/features/HardwareFeatures;->isHwSupportSat()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mIsPreviewStopped:Z

    if-nez v0, :cond_12

    .line 449
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mStreamIdCallback:Lcom/transsion/camera/adapter/CameraProxy$StreamIdCallback;

    invoke-virtual {p1, p0}, Lcom/transsion/camera/adapter/CameraProxy;->registerStreamIdCallback(Lcom/transsion/camera/adapter/CameraProxy$StreamIdCallback;)V

    return-void

    :cond_12
    const/4 v0, -0x1

    .line 451
    iput v0, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mStreamId:I

    .line 452
    iget-object v1, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mAlgoPolicy:Lcom/transsion/camera/feature/setting/asd/policy/IAlgoPolicy;

    invoke-interface {v1, v0}, Lcom/transsion/camera/feature/setting/asd/policy/IAlgoPolicy;->setStreamId(I)V

    .line 453
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mStreamIdCallback:Lcom/transsion/camera/adapter/CameraProxy$StreamIdCallback;

    invoke-virtual {p1, p0}, Lcom/transsion/camera/adapter/CameraProxy;->unRegisterStreamIdCallback(Lcom/transsion/camera/adapter/CameraProxy$StreamIdCallback;)V

    return-void
.end method

.method private setTranssionAsdMode(Lcom/transsion/camera/adapter/CameraParameters;I)V
    .registers 6

    .line 333
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setTranssionAsdMode, value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 334
    invoke-virtual {p1, p2}, Lcom/transsion/camera/adapter/CameraParameters;->setTranssionAsdMode(I)V

    .line 336
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {p1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getStatusMonitor()Lcom/transsion/camera/app/common/setting/StatusMonitor;

    move-result-object p1

    if-eqz p1, :cond_4b

    .line 337
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mSupportedVersionValues:Ljava/util/List;

    if-eqz v0, :cond_4b

    .line 339
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4b

    .line 340
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mSupportedVersionValues:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    const/4 v0, 0x4

    if-eq p0, v0, :cond_3e

    const/4 v0, 0x5

    if-ne p0, v0, :cond_4b

    .line 342
    :cond_3e
    const-string p0, "key_transsion_asd_mode"

    invoke-virtual {p1, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p0, p2}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_4b
    return-void
.end method

.method private setupPostParameters(Lcom/transsion/camera/adapter/CameraParameters;)V
    .registers 2

    .line 329
    iget p0, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mEffect:I

    invoke-virtual {p1, p0}, Lcom/transsion/camera/adapter/CameraParameters;->setAsdEffect(I)V

    return-void
.end method

.method private setupPreParameters(Lcom/transsion/camera/adapter/CameraParameters;)V
    .registers 4

    .line 308
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mAsd:Lcom/transsion/camera/feature/setting/asd/Asd;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/asd/Asd;->isAsdMode()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mIsFakeCameraSupport:Z

    if-eqz v0, :cond_10

    const/4 v0, 0x2

    .line 309
    invoke-virtual {p1, v0}, Lcom/transsion/camera/adapter/CameraParameters;->setFakeDualLensMode(I)V

    .line 312
    :cond_10
    iget v0, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mBrightnessValue:I

    invoke-virtual {p1, v0}, Lcom/transsion/camera/adapter/CameraParameters;->setBrightnessValue(I)V

    .line 314
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mSupportedVersionValues:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_2f

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2f

    .line 315
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mSupportedVersionValues:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/transsion/camera/adapter/CameraParameters;->setTranssionAsdVersion(I)V

    .line 318
    :cond_2f
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mAsdHwFeatures:Lcom/transsion/camera/feature/setting/asd/features/HardwareFeatures;

    invoke-virtual {p1}, Lcom/transsion/camera/feature/setting/asd/features/HardwareFeatures;->isHwSupportSat()Z

    move-result p1

    if-eqz p1, :cond_5f

    .line 319
    invoke-static {}, Lcom/transsion/camera/adapter/CameraAgentFactory;->getCameraAgent()Lcom/transsion/camera/adapter/CameraAgent;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/camera/adapter/CameraAgent;->getCameraDeviceInfo()Lcom/transsion/camera/adapter/ICameraDeviceInfo;

    move-result-object p1

    .line 320
    iget v0, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mStreamId:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->isSupportedFastSuperNightMode(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_57

    iget v0, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mStreamId:I

    .line 321
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->isSupportedAIRawLite(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_58

    :cond_57
    const/4 v1, 0x1

    :cond_58
    iput-boolean v1, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mIsHwSupportFastSuperNight:Z

    .line 322
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mAsdHwFeatures:Lcom/transsion/camera/feature/setting/asd/features/HardwareFeatures;

    invoke-virtual {p1, v1}, Lcom/transsion/camera/feature/setting/asd/features/HardwareFeatures;->setHwSupportFastSuperNight(Z)V

    .line 325
    :cond_5f
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setupPreParameters, mFastSuperNightEnable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mIsHwSupportFastSuperNight:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public configCommand(Lcom/transsion/camera/adapter/CameraProxy;)V
    .registers 2

    .line 378
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->setASDCallback(Lcom/transsion/camera/adapter/CameraProxy;)V

    .line 379
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->setStreamIdCallback(Lcom/transsion/camera/adapter/CameraProxy;)V

    .line 380
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->setDualLensCallback(Lcom/transsion/camera/adapter/CameraProxy;)V

    return-void
.end method

.method public configParameters(Lcom/transsion/camera/adapter/CameraParameters;)I
    .registers 7

    .line 239
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mAsd:Lcom/transsion/camera/feature/setting/asd/Asd;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 240
    iget-object v1, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "configParameters, ASD newValue: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", currentValue: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mCurrentValue:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", mIsSTBlueMode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mIsSTBlueMode:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", mAsdOpenState: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mIsAsdOpenState:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 245
    iget-object v1, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mAsd:Lcom/transsion/camera/feature/setting/asd/Asd;

    invoke-virtual {v1}, Lcom/transsion/camera/feature/setting/asd/Asd;->getModeType()Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;

    move-result-object v1

    sget-object v2, Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;->VIDEO:Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;

    const/4 v3, -0x1

    if-eq v1, v2, :cond_b5

    iget-boolean v1, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mIsPreviewStopped:Z

    if-eqz v1, :cond_4a

    goto :goto_b5

    .line 249
    :cond_4a
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->setupPreParameters(Lcom/transsion/camera/adapter/CameraParameters;)V

    .line 251
    iget-boolean v1, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mIsAsdOpenState:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_9b

    iget-object v1, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mSupportedValues:Ljava/util/List;

    if-eqz v1, :cond_9b

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v4, 0x1

    if-gt v1, v4, :cond_5e

    goto :goto_9b

    .line 260
    :cond_5e
    iget-object v1, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mCurrentValue:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_75

    iget-boolean v1, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mIsSTBlueMode:Z

    iget-object v3, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mAsd:Lcom/transsion/camera/feature/setting/asd/Asd;

    invoke-virtual {v3}, Lcom/transsion/camera/feature/setting/asd/Asd;->isSTBlurMode()Z

    move-result v3

    if-eq v1, v3, :cond_71

    goto :goto_75

    .line 266
    :cond_71
    invoke-virtual {p0, v2}, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->refreshToUI(Z)V

    goto :goto_89

    .line 261
    :cond_75
    :goto_75
    iput-object v0, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mCurrentValue:Ljava/lang/String;

    .line 262
    iget-object v1, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mAsd:Lcom/transsion/camera/feature/setting/asd/Asd;

    invoke-virtual {v1}, Lcom/transsion/camera/feature/setting/asd/Asd;->isSTBlurMode()Z

    move-result v1

    iput-boolean v1, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mIsSTBlueMode:Z

    .line 263
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->getTranssionAsdMode()I

    move-result v1

    invoke-direct {p0, p1, v1}, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->setTranssionAsdMode(Lcom/transsion/camera/adapter/CameraParameters;I)V

    .line 264
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->refreshTypeValue()V

    .line 269
    :goto_89
    iget-object v1, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mAlgoPolicy:Lcom/transsion/camera/feature/setting/asd/policy/IAlgoPolicy;

    iget v3, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mHalIlluminationType:I

    iget v4, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mEffect:I

    invoke-interface {v1, p1, v0, v3, v4}, Lcom/transsion/camera/feature/setting/asd/policy/IAlgoPolicy;->updateParameters(Lcom/transsion/camera/adapter/CameraParameters;Ljava/lang/String;II)V

    .line 270
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->setupPostParameters(Lcom/transsion/camera/adapter/CameraParameters;)V

    .line 271
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mShot2ShotSkipPolicy:Lcom/transsion/camera/feature/setting/asd/AsdShot2ShotSkipPolicy;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/setting/asd/AsdShot2ShotSkipPolicy;->updateAsdAlgoType(Lcom/transsion/camera/adapter/CameraParameters;)V

    return v2

    .line 252
    :cond_9b
    :goto_9b
    const-string v0, ""

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mCurrentValue:Ljava/lang/String;

    .line 253
    invoke-direct {p0, p1, v2}, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->setTranssionAsdMode(Lcom/transsion/camera/adapter/CameraParameters;I)V

    .line 254
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mAlgoPolicy:Lcom/transsion/camera/feature/setting/asd/policy/IAlgoPolicy;

    iget v1, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mHalIlluminationType:I

    iget v2, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mEffect:I

    const-string v4, "0"

    invoke-interface {v0, p1, v4, v1, v2}, Lcom/transsion/camera/feature/setting/asd/policy/IAlgoPolicy;->updateParameters(Lcom/transsion/camera/adapter/CameraParameters;Ljava/lang/String;II)V

    .line 255
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mShot2ShotSkipPolicy:Lcom/transsion/camera/feature/setting/asd/AsdShot2ShotSkipPolicy;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/feature/setting/asd/AsdShot2ShotSkipPolicy;->updateAsdAlgoType(Lcom/transsion/camera/adapter/CameraParameters;)V

    .line 256
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->refreshTypeValue()V

    :cond_b5
    :goto_b5
    return v3
.end method

.method protected createShot2ShotSkipPolicy(Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;Lcom/transsion/camera/feature/setting/asd/features/ModeFeatures;)Lcom/transsion/camera/feature/setting/asd/AsdShot2ShotSkipPolicy;
    .registers 3

    .line 198
    new-instance p0, Lcom/transsion/camera/feature/setting/asd/AsdShot2ShotSkipPolicy;

    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/setting/asd/AsdShot2ShotSkipPolicy;-><init>(Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;Lcom/transsion/camera/feature/setting/asd/features/ModeFeatures;)V

    return-object p0
.end method

.method protected onAllCaptureEnd()V
    .registers 4

    .line 615
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[Shot2ShotPolicy] onAllCaptureEnd."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mShot2ShotSkipPolicy:Lcom/transsion/camera/feature/setting/asd/AsdShot2ShotSkipPolicy;

    .line 616
    invoke-virtual {v2}, Lcom/transsion/camera/feature/setting/asd/AsdShot2ShotSkipPolicy;->getCurrentPreviewAlgoType()I

    move-result v2

    invoke-static {v2}, Lcom/transsion/camera/feature/setting/asd/AsdAlgoType;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 615
    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 618
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mAlgoPolicy:Lcom/transsion/camera/feature/setting/asd/policy/IAlgoPolicy;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/transsion/camera/feature/setting/asd/policy/IAlgoPolicy;->setCaptureEndFlag(Z)V

    .line 619
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mShot2ShotSkipPolicy:Lcom/transsion/camera/feature/setting/asd/AsdShot2ShotSkipPolicy;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/asd/AsdShot2ShotSkipPolicy;->resetCount()V

    .line 621
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mAsd:Lcom/transsion/camera/feature/setting/asd/Asd;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getSettingDataCallback()Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;

    move-result-object v0

    if-eqz v0, :cond_3a

    .line 623
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/16 v2, 0x64

    invoke-interface {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;->onDataCallback(Ljava/lang/Object;I)V

    .line 625
    :cond_3a
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->sendSettingChangeRequest()V

    return-void
.end method

.method protected onCaptureJpegEnd()V
    .registers 4

    .line 605
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mShot2ShotPolicyUseDecrease:Z

    if-eqz v0, :cond_31

    .line 607
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[Shot2ShotPolicy] onCaptureJpegEnd: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mShot2ShotSkipPolicy:Lcom/transsion/camera/feature/setting/asd/AsdShot2ShotSkipPolicy;

    .line 608
    invoke-virtual {v2}, Lcom/transsion/camera/feature/setting/asd/AsdShot2ShotSkipPolicy;->getCurrentPreviewAlgoType()I

    move-result v2

    invoke-static {v2}, Lcom/transsion/camera/feature/setting/asd/AsdAlgoType;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 607
    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 610
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mShot2ShotSkipPolicy:Lcom/transsion/camera/feature/setting/asd/AsdShot2ShotSkipPolicy;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/asd/AsdShot2ShotSkipPolicy;->getCurrentPreviewAlgoType()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/setting/asd/AsdShot2ShotSkipPolicy;->decreaseCount(I)V

    :cond_31
    return-void
.end method

.method onCaptureStarted()V
    .registers 4

    .line 583
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[Shot2ShotPolicy] onCaptureStarted: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mShot2ShotSkipPolicy:Lcom/transsion/camera/feature/setting/asd/AsdShot2ShotSkipPolicy;

    .line 584
    invoke-virtual {v2}, Lcom/transsion/camera/feature/setting/asd/AsdShot2ShotSkipPolicy;->getCurrentPreviewAlgoType()I

    move-result v2

    invoke-static {v2}, Lcom/transsion/camera/feature/setting/asd/AsdAlgoType;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 583
    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 586
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mShot2ShotSkipPolicy:Lcom/transsion/camera/feature/setting/asd/AsdShot2ShotSkipPolicy;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/asd/AsdShot2ShotSkipPolicy;->getCurrentPreviewAlgoType()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/setting/asd/AsdShot2ShotSkipPolicy;->increaseCount(I)V

    .line 588
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mAsd:Lcom/transsion/camera/feature/setting/asd/Asd;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getSettingDataCallback()Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;

    move-result-object p0

    if-eqz p0, :cond_38

    .line 590
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/16 v1, 0x64

    invoke-interface {p0, v0, v1}, Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;->onDataCallback(Ljava/lang/Object;I)V

    :cond_38
    return-void
.end method

.method onShot2ShotEnd()V
    .registers 4

    .line 595
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[Shot2ShotPolicy] onShot2ShotEnd: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mShot2ShotSkipPolicy:Lcom/transsion/camera/feature/setting/asd/AsdShot2ShotSkipPolicy;

    .line 596
    invoke-virtual {v2}, Lcom/transsion/camera/feature/setting/asd/AsdShot2ShotSkipPolicy;->getCurrentPreviewAlgoType()I

    move-result v2

    invoke-static {v2}, Lcom/transsion/camera/feature/setting/asd/AsdAlgoType;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 595
    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 598
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mShot2ShotSkipPolicy:Lcom/transsion/camera/feature/setting/asd/AsdShot2ShotSkipPolicy;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/asd/AsdShot2ShotSkipPolicy;->getCurrentPreviewAlgoType()I

    move-result v1

    iget-object v2, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mAsdModeFeatures:Lcom/transsion/camera/feature/setting/asd/features/ModeFeatures;

    .line 599
    invoke-virtual {v2}, Lcom/transsion/camera/feature/setting/asd/features/ModeFeatures;->isModeSupportAiRawLite()Z

    move-result v2

    .line 598
    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/feature/setting/asd/AsdShot2ShotSkipPolicy;->algoIsReplaced(IZ)Z

    move-result v0

    if-nez v0, :cond_3a

    .line 599
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->isSupportForceSkipToNone()Z

    move-result v0

    if-eqz v0, :cond_39

    goto :goto_3a

    :cond_39
    return-void

    .line 600
    :cond_3a
    :goto_3a
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->sendSettingChangeRequest()V

    return-void
.end method

.method public refreshAsdStateImmediately(I)V
    .registers 5

    .line 401
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "refreshAsdStateImmediately type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x1

    if-eqz p1, :cond_3a

    const/4 v1, 0x0

    if-eq p1, v0, :cond_30

    const/4 v2, 0x2

    if-eq p1, v2, :cond_2d

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2a

    const/4 v0, 0x4

    if-eq p1, v0, :cond_26

    return-void

    .line 418
    :cond_26
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->refreshTypeValue()V

    return-void

    .line 415
    :cond_2a
    iput-boolean v1, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mIsNightShotOpenState:Z

    return-void

    .line 412
    :cond_2d
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mIsNightShotOpenState:Z

    return-void

    .line 407
    :cond_30
    iput-boolean v1, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mIsAsdOpenState:Z

    .line 408
    const-string p1, ""

    iput-object p1, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mCurrentValue:Ljava/lang/String;

    .line 409
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->refreshTypeValue()V

    return-void

    .line 404
    :cond_3a
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mIsAsdOpenState:Z

    return-void
.end method

.method public refreshToUI(Z)V
    .registers 10

    .line 466
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mAsd:Lcom/transsion/camera/feature/setting/asd/Asd;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/asd/Asd;->isSTBlurMode()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mAsdGlobalFeatures:Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;->isSTBlurModeHDRSupport()Z

    move-result v0

    if-eqz v0, :cond_21

    :cond_10
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mAsd:Lcom/transsion/camera/feature/setting/asd/Asd;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/asd/Asd;->isModeSupport()Z

    move-result v0

    if-nez v0, :cond_19

    goto :goto_21

    .line 470
    :cond_19
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mAsd:Lcom/transsion/camera/feature/setting/asd/Asd;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getSettingDataCallback()Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;

    move-result-object v0

    if-nez v0, :cond_22

    :cond_21
    :goto_21
    return-void

    .line 475
    :cond_22
    iget v1, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mHalIlluminationType:I

    .line 476
    iget-object v2, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mAlgoPolicy:Lcom/transsion/camera/feature/setting/asd/policy/IAlgoPolicy;

    invoke-interface {v2, v1}, Lcom/transsion/camera/feature/setting/asd/policy/IAlgoPolicy;->getReplacedIlluminationType(I)I

    move-result v2

    .line 477
    iget v3, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mHalIlluminationType:I

    const/16 v4, 0x9

    const/4 v5, 0x7

    if-eq v3, v2, :cond_36

    if-eq v3, v5, :cond_35

    if-ne v3, v4, :cond_36

    :cond_35
    move v1, v2

    .line 482
    :cond_36
    iget-object v2, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mAsd:Lcom/transsion/camera/feature/setting/asd/Asd;

    const-string v3, "key_hdr"

    invoke-virtual {v2, v3}, Lcom/transsion/camera/app/common/setting/SettingBase;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "off"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4e

    const/4 v2, 0x2

    if-eq v1, v2, :cond_4d

    if-eq v1, v5, :cond_4d

    if-ne v1, v4, :cond_4e

    :cond_4d
    const/4 v1, -0x1

    .line 490
    :cond_4e
    iget-boolean v2, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mIsHwSupportFastSuperNight:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_66

    iget-object v2, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mAsd:Lcom/transsion/camera/feature/setting/asd/Asd;

    invoke-virtual {v2}, Lcom/transsion/camera/feature/setting/asd/Asd;->isLightSuperNightSupport()Z

    move-result v2

    if-eqz v2, :cond_66

    iget-boolean v2, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mIsNightShotOpenState:Z

    if-eqz v2, :cond_66

    if-eq v1, v3, :cond_65

    if-eq v1, v5, :cond_65

    if-ne v1, v4, :cond_66

    :cond_65
    move v1, v3

    .line 498
    :cond_66
    iget v2, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mEffect:I

    const/16 v4, 0xe

    const/4 v5, 0x0

    if-ne v2, v4, :cond_77

    iget-object v2, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mAsd:Lcom/transsion/camera/feature/setting/asd/Asd;

    invoke-virtual {v2}, Lcom/transsion/camera/feature/setting/asd/Asd;->isPMasterMode()Z

    move-result v2

    if-eqz v2, :cond_77

    .line 499
    iput v5, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mEffect:I

    .line 502
    :cond_77
    iget-object v2, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mSupportedVersionValues:Ljava/util/List;

    if-eqz v2, :cond_97

    .line 503
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_97

    iget-object v2, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mSupportedVersionValues:Ljava/util/List;

    .line 504
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/4 v4, 0x3

    if-ne v2, v4, :cond_97

    iget v2, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mEffect:I

    const/4 v4, 0x5

    if-ne v2, v4, :cond_97

    .line 506
    iput v5, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mEffect:I

    .line 509
    :cond_97
    iget-object v2, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mSupportedVersionValues:Ljava/util/List;

    if-eqz v2, :cond_ae

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_ae

    .line 510
    iget-object v2, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mSupportedVersionValues:Ljava/util/List;

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    goto :goto_af

    :cond_ae
    const/4 v2, 0x4

    .line 512
    :goto_af
    new-instance v4, Lcom/transsion/camera/feature/setting/asd/AsdResult;

    iget v6, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mEffect:I

    iget v7, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mHuman:I

    invoke-direct {v4, v1, v6, v7, v2}, Lcom/transsion/camera/feature/setting/asd/AsdResult;-><init>(IIII)V

    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->needShowTips()Z

    move-result p0

    if-nez p0, :cond_c2

    if-eqz p1, :cond_c1

    goto :goto_c2

    :cond_c1
    move v3, v5

    :cond_c2
    :goto_c2
    invoke-interface {v0, v4, v3}, Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;->onDataCallback(Ljava/lang/Object;I)V

    return-void
.end method

.method public sendSettingChangeRequest()V
    .registers 3

    .line 203
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mAsd:Lcom/transsion/camera/feature/setting/asd/Asd;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/asd/Asd;->getKey()Ljava/lang/String;

    move-result-object p0

    const-string v1, "key_setting_skin_optimization"

    filled-new-array {p0, v1}, [Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;->requestChangeSettingValueJustSelf([Ljava/lang/String;)V

    return-void
.end method

.method public setCameraCapabilities(Lcom/transsion/camera/adapter/ICameraCapabilities;)V
    .registers 7

    .line 209
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mAsdHwFeatures:Lcom/transsion/camera/feature/setting/asd/features/HardwareFeatures;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/asd/features/HardwareFeatures;->reset()V

    .line 211
    invoke-interface {p1}, Lcom/transsion/camera/adapter/ICameraCapabilities;->getSupportedAsdModes()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mSupportedValues:Ljava/util/List;

    .line 212
    invoke-interface {p1}, Lcom/transsion/camera/adapter/ICameraCapabilities;->getSupportedPictureSizes()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_20

    .line 213
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_20

    .line 214
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Size;

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mMaxPictureSize:Landroid/util/Size;

    .line 217
    :cond_20
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mAsdGlobalFeatures:Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;->getAsdDefaultValue()Ljava/lang/String;

    move-result-object v0

    .line 219
    iget-object v2, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mSupportedValues:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-gt v2, v3, :cond_3d

    .line 220
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mSupportedValues:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 221
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mSupportedValues:Ljava/util/List;

    const-string v2, "0"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v0, v2

    goto :goto_4a

    .line 223
    :cond_3d
    const-string v2, "auto"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4a

    .line 224
    iget-object v4, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mSupportedValues:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 227
    :cond_4a
    :goto_4a
    iget-object v2, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mSupportedValues:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-le v2, v3, :cond_67

    iget-object v2, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mAsdModeFeatures:Lcom/transsion/camera/feature/setting/asd/features/ModeFeatures;

    .line 228
    invoke-virtual {v2}, Lcom/transsion/camera/feature/setting/asd/features/ModeFeatures;->isModeSupportFakeCamera()Z

    move-result v2

    if-eqz v2, :cond_67

    .line 229
    invoke-interface {p1}, Lcom/transsion/camera/adapter/ICameraCapabilities;->getSupportFakeDualCamera()Ljava/util/List;

    move-result-object v2

    const-string v4, "raw_yuv"

    invoke-interface {v2, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_67

    goto :goto_68

    :cond_67
    move v3, v1

    :goto_68
    iput-boolean v3, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mIsFakeCameraSupport:Z

    .line 231
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->initHwFeatures(Lcom/transsion/camera/adapter/ICameraCapabilities;)V

    .line 232
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mAsd:Lcom/transsion/camera/feature/setting/asd/Asd;

    iget-object v2, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mSupportedValues:Ljava/util/List;

    invoke-virtual {p1, v2, v0}, Lcom/transsion/camera/feature/setting/asd/Asd;->initValueAndSupport(Ljava/util/List;Ljava/lang/String;)V

    .line 234
    iput v1, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mWarningType:I

    return-void
.end method

.method setCelebrityScene(Ljava/lang/String;)V
    .registers 2

    .line 629
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mCelebritySceneValue:Ljava/lang/String;

    return-void
.end method

.method public setSuperResolutionOpened(Z)V
    .registers 2

    .line 551
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mIsSuperResolutionOpend:Z

    .line 552
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mAsdSettingFeatures:Lcom/transsion/camera/feature/setting/asd/features/SettingFeatures;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/setting/asd/features/SettingFeatures;->setSuperResolutionOpend(Z)V

    return-void
.end method

.method public updatePreviewState(Z)V
    .registers 3

    .line 556
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mIsPreviewStopped:Z

    if-eqz p1, :cond_d

    .line 558
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mAlgoPolicy:Lcom/transsion/camera/feature/setting/asd/policy/IAlgoPolicy;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/transsion/camera/feature/setting/asd/policy/IAlgoPolicy;->setCaptureEndFlag(Z)V

    .line 559
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->onAllCaptureEnd()V

    :cond_d
    return-void
.end method

.method public updateState()V
    .registers 6

    .line 564
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mAsdHwFeatures:Lcom/transsion/camera/feature/setting/asd/features/HardwareFeatures;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/asd/features/HardwareFeatures;->isHwSupportSuperDefinition()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_32

    iget-object v0, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mAsdGlobalFeatures:Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;

    .line 565
    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;->isHighDefinitionModeSupport()Z

    move-result v0

    if-nez v0, :cond_32

    iget-object v0, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    .line 566
    const-string v3, "key_super_definition"

    invoke-interface {v0, v3}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "on"

    invoke-static {v0, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_30

    iget-object v0, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    .line 567
    invoke-interface {v0, v3}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "billion"

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_32

    :cond_30
    move v0, v2

    goto :goto_33

    :cond_32
    move v0, v1

    .line 569
    :goto_33
    iget-object v3, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v3}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getCameraId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/transsion/camera/adapter/CameraInfoUtil;->isCameraFacingFront(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5b

    iget-object v3, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mAsdHwFeatures:Lcom/transsion/camera/feature/setting/asd/features/HardwareFeatures;

    .line 570
    invoke-virtual {v3}, Lcom/transsion/camera/feature/setting/asd/features/HardwareFeatures;->isHwSupport4Cell()Z

    move-result v3

    if-eqz v3, :cond_5b

    iget-object v3, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mMaxPictureSize:Landroid/util/Size;

    .line 571
    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v3

    iget-object v4, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mMaxPictureSize:Landroid/util/Size;

    invoke-virtual {v4}, Landroid/util/Size;->getWidth()I

    move-result v4

    mul-int/2addr v3, v4

    const v4, 0x1312d00

    if-gt v3, v4, :cond_5b

    move v3, v2

    goto :goto_5c

    :cond_5b
    move v3, v1

    .line 573
    :goto_5c
    iget-object v4, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mAsdModeFeatures:Lcom/transsion/camera/feature/setting/asd/features/ModeFeatures;

    invoke-virtual {v4}, Lcom/transsion/camera/feature/setting/asd/features/ModeFeatures;->isModeSupportSuperResolution()Z

    move-result v4

    if-eqz v4, :cond_71

    if-nez v3, :cond_70

    if-nez v0, :cond_70

    iget-object v4, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mAsd:Lcom/transsion/camera/feature/setting/asd/Asd;

    .line 574
    invoke-virtual {v4}, Lcom/transsion/camera/feature/setting/asd/Asd;->isFullSizeMode()Z

    move-result v4

    if-eqz v4, :cond_71

    :cond_70
    move v1, v2

    :cond_71
    iput-boolean v1, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mIsSuperResolutionOpend:Z

    .line 575
    iget-object v2, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mAsdSettingFeatures:Lcom/transsion/camera/feature/setting/asd/features/SettingFeatures;

    invoke-virtual {v2, v1}, Lcom/transsion/camera/feature/setting/asd/features/SettingFeatures;->setSuperResolutionOpend(Z)V

    .line 577
    iget-object v1, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateState, mSuperResolutionOpend: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mIsSuperResolutionOpend:Z

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, ", isSuperDefinitionOpenedBySetting: "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, ", isSuperDefinitionOpenedBySize: "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method
