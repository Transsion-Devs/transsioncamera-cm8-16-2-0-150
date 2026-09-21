.class public Lcom/transsion/camera/feature/setting/makeup/MuStereo;
.super Lcom/transsion/camera/app/common/setting/SettingBase;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/ICameraSetting$IParametersConfigure;


# static fields
.field private static final SETTING_KEY:Ljava/lang/String; = "key_mu_stereo"

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mBWLensCoveredResponder:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

.field private mBackCameraFocalDistance:I

.field private mCustomizedFocalLengthSupport:Z

.field private mDevicePictureStateCallback:Lcom/transsion/camera/app/common/setting/ICameraSetting$DevicePictureStateCallback;

.field private mDualCameraLensCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraDualLensCallback;

.field private mEnableRTDof:Z

.field private mFeatureValue:Ljava/lang/String;

.field private mIsCapturing:Z

.field private mIsModeSupport:Z

.field private mIsStereoLevelSupport:Z

.field private mPMasterZoomLens:[Ljava/lang/String;

.field private mPreviewStateCallback:Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;

.field private mStereoSensorRect:Landroid/graphics/Rect;

.field private mWarningType:I


# direct methods
.method static bridge synthetic -$$Nest$fgetmIsCapturing(Lcom/transsion/camera/feature/setting/makeup/MuStereo;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/makeup/MuStereo;->mIsCapturing:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmIsCapturing(Lcom/transsion/camera/feature/setting/makeup/MuStereo;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/makeup/MuStereo;->mIsCapturing:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateRTDofValue(Lcom/transsion/camera/feature/setting/makeup/MuStereo;Z)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/makeup/MuStereo;->updateRTDofValue(Z)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 44
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "MuStereo"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/setting/makeup/MuStereo;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 43
    invoke-direct {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;-><init>()V

    const/4 v0, 0x1

    .line 47
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/makeup/MuStereo;->mEnableRTDof:Z

    const/4 v0, 0x0

    .line 48
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/makeup/MuStereo;->mIsModeSupport:Z

    .line 50
    iput v0, p0, Lcom/transsion/camera/feature/setting/makeup/MuStereo;->mWarningType:I

    .line 51
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/makeup/MuStereo;->mIsCapturing:Z

    .line 54
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/makeup/MuStereo;->mIsStereoLevelSupport:Z

    .line 250
    new-instance v0, Lcom/transsion/camera/feature/setting/makeup/MuStereo$1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/setting/makeup/MuStereo$1;-><init>(Lcom/transsion/camera/feature/setting/makeup/MuStereo;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/makeup/MuStereo;->mPreviewStateCallback:Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;

    .line 264
    new-instance v0, Lcom/transsion/camera/feature/setting/makeup/MuStereo$2;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/setting/makeup/MuStereo$2;-><init>(Lcom/transsion/camera/feature/setting/makeup/MuStereo;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/makeup/MuStereo;->mDevicePictureStateCallback:Lcom/transsion/camera/app/common/setting/ICameraSetting$DevicePictureStateCallback;

    .line 406
    new-instance v0, Lcom/transsion/camera/feature/setting/makeup/MuStereo$3;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/setting/makeup/MuStereo$3;-><init>(Lcom/transsion/camera/feature/setting/makeup/MuStereo;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/makeup/MuStereo;->mDualCameraLensCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraDualLensCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/transsion/camera/feature/setting/makeup/MuStereo;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;
    .registers 1

    .line 43
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    return-object p0
.end method

.method static synthetic access$100(Lcom/transsion/camera/feature/setting/makeup/MuStereo;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;
    .registers 1

    .line 43
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    return-object p0
.end method

.method static synthetic access$200(Lcom/transsion/camera/feature/setting/makeup/MuStereo;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;
    .registers 1

    .line 43
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    return-object p0
.end method

.method private getInitFocalLength()I
    .registers 10

    .line 100
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/makeup/MuStereo;->mPMasterZoomLens:[Ljava/lang/String;

    array-length v0, v0

    new-array v0, v0, [Ljava/lang/Integer;

    .line 101
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object v1

    .line 103
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/CameraRepository;->getBackBlurCamera()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2b

    .line 104
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/CameraRepository;->getBack2XBlurCamera()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_26

    goto :goto_2b

    .line 106
    :cond_26
    invoke-virtual {v1}, Lcom/transsion/camera/app/common/CameraRepository;->getBackLongFocusCamera()Ljava/lang/String;

    move-result-object v1

    goto :goto_2f

    .line 105
    :cond_2b
    :goto_2b
    invoke-virtual {v1}, Lcom/transsion/camera/app/common/CameraRepository;->getBack2XBlurCamera()Ljava/lang/String;

    move-result-object v1

    :goto_2f
    const/4 v2, 0x0

    if-eqz v1, :cond_3e

    .line 108
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/camera/utils/CustomConfigUtil;->getTeleCamDefaultOpen()Z

    move-result v1

    if-eqz v1, :cond_3e

    const/4 v1, 0x1

    goto :goto_3f

    :cond_3e
    move v1, v2

    :goto_3f
    const/4 v3, 0x0

    move v4, v2

    .line 110
    :goto_41
    iget-object v5, p0, Lcom/transsion/camera/feature/setting/makeup/MuStereo;->mPMasterZoomLens:[Ljava/lang/String;

    array-length v6, v5

    if-ge v4, v6, :cond_71

    .line 111
    aget-object v5, v5, v4

    const-string v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 112
    aget-object v6, v5, v2

    const/4 v7, 0x2

    .line 113
    aget-object v5, v5, v7

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 114
    new-instance v8, Lcom/transsion/camera/app/common/ZoomConfig$LensInfo;

    invoke-direct {v8}, Lcom/transsion/camera/app/common/ZoomConfig$LensInfo;-><init>()V

    .line 115
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v0, v4

    if-eq v7, v5, :cond_69

    if-eqz v1, :cond_69

    if-nez v3, :cond_69

    move-object v3, v6

    :cond_69
    if-nez v1, :cond_6e

    if-nez v4, :cond_6e

    move-object v3, v6

    :cond_6e
    add-int/lit8 v4, v4, 0x1

    goto :goto_41

    .line 123
    :cond_71
    sget-object p0, Lcom/transsion/camera/feature/setting/makeup/MuStereo;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "the default focalLength is:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 124
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method private is2xBlurCamera(Ljava/lang/String;)Z
    .registers 2

    .line 337
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/CameraRepository;->getBack2XBlurCamera()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method private isBlurCamera(Ljava/lang/String;)Z
    .registers 2

    .line 341
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/CameraRepository;->getBackBlurCamera()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method private queryDefaultValue(IZ)Ljava/lang/String;
    .registers 7

    .line 128
    sget p0, Lcom/transsion/camera/utils/AreaUtil;->REGION_CODE:I

    .line 130
    const-string v0, "f5.6"

    const-string v1, "f4.0"

    const/4 v2, 0x3

    if-eqz p2, :cond_34

    const/16 p2, 0x18

    .line 131
    const-string v3, "f2.8"

    if-eq p1, p2, :cond_30

    const/16 p2, 0x23

    if-eq p1, p2, :cond_30

    const/16 p2, 0x32

    if-eq p1, p2, :cond_24

    const/16 p2, 0x46

    if-eq p1, p2, :cond_20

    const/16 p2, 0x55

    if-eq p1, p2, :cond_20

    return-object v3

    :cond_20
    if-ne p0, v2, :cond_23

    return-object v0

    :cond_23
    return-object v1

    :cond_24
    if-ne p0, v2, :cond_27

    return-object v0

    :cond_27
    const/4 p1, 0x1

    if-eq p0, p1, :cond_2f

    const/4 p1, 0x2

    if-ne p0, p1, :cond_2e

    goto :goto_2f

    :cond_2e
    return-object v1

    :cond_2f
    :goto_2f
    return-object v3

    :cond_30
    if-ne p0, v2, :cond_33

    return-object v1

    :cond_33
    return-object v3

    :cond_34
    if-ne p0, v2, :cond_37

    return-object v0

    :cond_37
    return-object v1
.end method

.method private updateBWLensCoveredValue(I)V
    .registers 4

    const/4 v0, 0x1

    .line 312
    const-string v1, "key_bw_camera_lens_covered"

    if-ne p1, v0, :cond_d

    .line 313
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/makeup/MuStereo;->mBWLensCoveredResponder:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    const-string p1, "bw_lens_covered"

    invoke-virtual {p0, v1, p1}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    .line 315
    :cond_d
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/makeup/MuStereo;->mBWLensCoveredResponder:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    const-string p1, "bw_lens_not_covered"

    invoke-virtual {p0, v1, p1}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private updateRTDofValue(I)V
    .registers 3

    .line 305
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/makeup/MuStereo;->mIsCapturing:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x1

    if-eq p1, v0, :cond_9

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    .line 308
    :goto_a
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/makeup/MuStereo;->mEnableRTDof:Z

    return-void
.end method

.method private updateRTDofValue(Z)V
    .registers 4

    .line 294
    iget v0, p0, Lcom/transsion/camera/feature/setting/makeup/MuStereo;->mWarningType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    return-void

    :cond_6
    if-eqz p1, :cond_c

    const/4 p1, 0x0

    .line 298
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/makeup/MuStereo;->mEnableRTDof:Z

    return-void

    .line 300
    :cond_c
    iput-boolean v1, p0, Lcom/transsion/camera/feature/setting/makeup/MuStereo;->mEnableRTDof:Z

    return-void
.end method


# virtual methods
.method public configCommand(Lcom/transsion/camera/adapter/CameraProxy;)V
    .registers 3

    .line 399
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/makeup/MuStereo;->ismIsModeSupport()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 400
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/makeup/MuStereo;->mDualCameraLensCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraDualLensCallback;

    const/16 v0, 0xb

    invoke-virtual {p1, p0, v0}, Lcom/transsion/camera/adapter/CameraProxy;->registerDualLensCallback(Lcom/transsion/camera/adapter/CameraProxy$CameraDualLensCallback;I)V

    return-void

    .line 402
    :cond_e
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/makeup/MuStereo;->mDualCameraLensCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraDualLensCallback;

    invoke-virtual {p1, p0}, Lcom/transsion/camera/adapter/CameraProxy;->unRegisterDualLensCallback(Lcom/transsion/camera/adapter/CameraProxy$CameraDualLensCallback;)V

    return-void
.end method

.method public configParameters(Lcom/transsion/camera/adapter/CameraParameters;)I
    .registers 6

    .line 365
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->screenPocket()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 366
    const-string v0, "key_mu_monomer"

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/setting/SettingBase;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_11

    .line 368
    :cond_d
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 370
    :goto_11
    sget-object v1, Lcom/transsion/camera/feature/setting/makeup/MuStereo;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[configParameters], value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", mIsStereoLevelSupport: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/transsion/camera/feature/setting/makeup/MuStereo;->mIsStereoLevelSupport:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 372
    iget-boolean v1, p0, Lcom/transsion/camera/feature/setting/makeup/MuStereo;->mIsStereoLevelSupport:Z

    if-eqz v1, :cond_91

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/makeup/MuStereo;->ismIsModeSupport()Z

    move-result v1

    if-nez v1, :cond_3c

    goto :goto_91

    .line 375
    :cond_3c
    const-string v1, "f0.0"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_5e

    .line 377
    sget-object v1, Lcom/transsion/camera/utils/SettingInfo;->BLUR_LEVEL_DATA:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 378
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    invoke-interface {v1, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    sub-int/2addr v3, v1

    add-int/lit8 v3, v3, -0x1

    .line 379
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/transsion/camera/adapter/CameraParameters;->setVsdofModeLevel(Ljava/lang/String;)V

    goto :goto_66

    .line 381
    :cond_5e
    const-string v1, "-1"

    invoke-virtual {p1, v1}, Lcom/transsion/camera/adapter/CameraParameters;->setVsdofModeLevel(Ljava/lang/String;)V

    .line 382
    invoke-virtual {p1, v2}, Lcom/transsion/camera/adapter/CameraParameters;->setLimitFpsRange(Landroid/util/Range;)V

    .line 384
    :goto_66
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/makeup/MuStereo;->isRTDofEnable()Z

    move-result v1

    .line 385
    invoke-virtual {p1, v1}, Lcom/transsion/camera/adapter/CameraParameters;->setRTDofEnable(Z)V

    .line 387
    iget-object v1, p0, Lcom/transsion/camera/feature/setting/makeup/MuStereo;->mStereoSensorRect:Landroid/graphics/Rect;

    if-eqz v1, :cond_85

    .line 388
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    if-lez v1, :cond_85

    iget-object v1, p0, Lcom/transsion/camera/feature/setting/makeup/MuStereo;->mStereoSensorRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    if-lez v1, :cond_85

    .line 389
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/makeup/MuStereo;->mStereoSensorRect:Landroid/graphics/Rect;

    invoke-virtual {p1, p0}, Lcom/transsion/camera/adapter/CameraParameters;->overrideSensorRect(Landroid/graphics/Rect;)V

    goto :goto_88

    .line 391
    :cond_85
    invoke-virtual {p1, v2}, Lcom/transsion/camera/adapter/CameraParameters;->overrideSensorRect(Landroid/graphics/Rect;)V

    .line 393
    :goto_88
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setBlurValue(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :cond_91
    :goto_91
    const/4 p0, -0x1

    return p0
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

.method public getDevicePictureStateCallback()Lcom/transsion/camera/app/common/setting/ICameraSetting$DevicePictureStateCallback;
    .registers 2

    .line 287
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/makeup/MuStereo;->mIsModeSupport:Z

    if-eqz v0, :cond_7

    .line 288
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/makeup/MuStereo;->mDevicePictureStateCallback:Lcom/transsion/camera/app/common/setting/ICameraSetting$DevicePictureStateCallback;

    return-object p0

    :cond_7
    const/4 p0, 0x0

    return-object p0
.end method

.method public getKey()Ljava/lang/String;
    .registers 1

    .line 207
    const-string p0, "key_mu_stereo"

    return-object p0
.end method

.method public getParametersConfigure()Lcom/transsion/camera/app/common/setting/ICameraSetting$IParametersConfigure;
    .registers 1

    return-object p0
.end method

.method public getPreviewStateCallback()Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;
    .registers 1

    .line 247
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/makeup/MuStereo;->mPreviewStateCallback:Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;

    return-object p0
.end method

.method public bridge synthetic getSeekBarValue(I)Ljava/lang/String;
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->getSeekBarValue(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSettingType()Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;
    .registers 1

    .line 202
    sget-object p0, Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;->PHOTO:Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;

    return-object p0
.end method

.method public getSupport()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 242
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getEntryValues()Ljava/util/List;

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

.method public goingToChangeValue(Ljava/lang/String;)V
    .registers 7

    .line 227
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    return-void

    .line 234
    :cond_b
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 235
    const-string v1, "f0.0"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1a

    iget-object v1, p0, Lcom/transsion/camera/feature/setting/makeup/MuStereo;->mFeatureValue:Ljava/lang/String;

    goto :goto_1b

    :cond_1a
    move-object v1, v0

    :goto_1b
    iput-object v1, p0, Lcom/transsion/camera/feature/setting/makeup/MuStereo;->mFeatureValue:Ljava/lang/String;

    .line 236
    sget-object v1, Lcom/transsion/camera/feature/setting/makeup/MuStereo;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "goingToChangeValue: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/transsion/camera/feature/setting/makeup/MuStereo;->mFeatureValue:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 237
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "+"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/transsion/camera/feature/setting/makeup/MuStereo;->mFeatureValue:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getGlobalScope()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    const-string v2, "key_mu_stereo_feature"

    invoke-virtual {p1, v2, v0, p0, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public init(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/storage/DataStore;)V
    .registers 4

    .line 63
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/setting/SettingBase;->init(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/storage/DataStore;)V

    .line 64
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string p2, "key_bw_camera_lens_covered"

    invoke-virtual {p1, p2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/setting/makeup/MuStereo;->mBWLensCoveredResponder:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    .line 65
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p1

    iget-boolean p1, p1, Lcom/transsion/camera/utils/CustomConfigUtil;->mCustomizedFocalLengthSupport:Z

    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/makeup/MuStereo;->mCustomizedFocalLengthSupport:Z

    .line 66
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p1

    iget p1, p1, Lcom/transsion/camera/utils/CustomConfigUtil;->mFocalDistance:I

    iput p1, p0, Lcom/transsion/camera/feature/setting/makeup/MuStereo;->mBackCameraFocalDistance:I

    .line 67
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->getPmasterFocalLength()[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/setting/makeup/MuStereo;->mPMasterZoomLens:[Ljava/lang/String;

    return-void
.end method

.method protected initValueAndSupport(Ljava/util/List;Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 72
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setSupportedPlatformValues(Ljava/util/List;)V

    .line 73
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setSupportedEntryValues(Ljava/util/List;)V

    .line 74
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setEntryValues(Ljava/util/List;)V

    .line 77
    iget-boolean p1, p0, Lcom/transsion/camera/feature/setting/makeup/MuStereo;->mCustomizedFocalLengthSupport:Z

    if-eqz p1, :cond_12

    .line 78
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/makeup/MuStereo;->getInitFocalLength()I

    move-result p1

    goto :goto_14

    .line 80
    :cond_12
    iget p1, p0, Lcom/transsion/camera/feature/setting/makeup/MuStereo;->mBackCameraFocalDistance:I

    .line 82
    :goto_14
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->screenFlip()Z

    move-result p2

    if-eqz p2, :cond_23

    .line 83
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/camera/utils/CustomConfigUtil;->getStereoAodDefaultValue()Ljava/lang/String;

    move-result-object p1

    goto :goto_35

    .line 84
    :cond_23
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p2

    invoke-virtual {p2}, Lcom/transsion/camera/utils/CustomConfigUtil;->getStereoDefaultOpen()Z

    move-result p2

    if-eqz p2, :cond_33

    const/4 p2, 0x1

    .line 85
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/setting/makeup/MuStereo;->queryDefaultValue(IZ)Ljava/lang/String;

    move-result-object p1

    goto :goto_35

    .line 87
    :cond_33
    const-string p1, "f0.0"

    .line 89
    :goto_35
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setDefaultValue(Ljava/lang/String;)V

    .line 90
    iget-object p2, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/makeup/MuStereo;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getGlobalScope()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, p1, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 91
    invoke-virtual {p0, p2}, Lcom/transsion/camera/app/common/setting/SettingBase;->setValue(Ljava/lang/String;)V

    .line 92
    sget-object v0, Lcom/transsion/camera/feature/setting/makeup/MuStereo;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initStereoDefaultValue defaultValue: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " value: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 93
    iput p1, p0, Lcom/transsion/camera/feature/setting/makeup/MuStereo;->mWarningType:I

    .line 94
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/makeup/MuStereo;->mIsCapturing:Z

    .line 95
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/makeup/MuStereo;->updateRTDofValue(Z)V

    .line 96
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/makeup/MuStereo;->updateBWLensCoveredValue(I)V

    return-void
.end method

.method public isRTDofEnable()Z
    .registers 1

    .line 329
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/makeup/MuStereo;->mEnableRTDof:Z

    return p0
.end method

.method public ismIsModeSupport()Z
    .registers 1

    .line 333
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/makeup/MuStereo;->mIsModeSupport:Z

    return p0
.end method

.method public onCameraIdChanged(Ljava/lang/String;[Ljava/lang/String;)V
    .registers 3

    .line 190
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/common/setting/SettingBase;->onCameraIdChanged(Ljava/lang/String;[Ljava/lang/String;)V

    .line 191
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/makeup/MuStereo;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/transsion/camera/utils/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/makeup/MuStereo;->mIsModeSupport:Z

    return-void
.end method

.method public declared-synchronized onModeClosed(Ljava/lang/String;)V
    .registers 3

    monitor-enter p0

    .line 183
    :try_start_1
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->onModeClosed(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 184
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/makeup/MuStereo;->mIsModeSupport:Z

    .line 185
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/makeup/MuStereo;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;->requestChangeCommand(Ljava/lang/String;)V
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_12

    .line 186
    monitor-exit p0

    return-void

    :catchall_12
    move-exception p1

    :try_start_13
    monitor-exit p0
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_12

    throw p1
.end method

.method public onModeOpened(Ljava/lang/String;Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;[Ljava/lang/String;)V
    .registers 4

    .line 177
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/setting/SettingBase;->onModeOpened(Ljava/lang/String;Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;[Ljava/lang/String;)V

    .line 178
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/makeup/MuStereo;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Lcom/transsion/camera/utils/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/makeup/MuStereo;->mIsModeSupport:Z

    return-void
.end method

.method public onModeUpdate([Ljava/lang/String;)V
    .registers 3

    .line 196
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->onModeUpdate([Ljava/lang/String;)V

    .line 197
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/makeup/MuStereo;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/makeup/MuStereo;->mIsModeSupport:Z

    return-void
.end method

.method public onValueChanged(Ljava/lang/String;)V
    .registers 6

    .line 217
    sget-object v0, Lcom/transsion/camera/feature/setting/makeup/MuStereo;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onValueChanged], value:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 218
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_34

    .line 219
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/makeup/MuStereo;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getGlobalScope()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 220
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setValue(Ljava/lang/String;)V

    .line 221
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/makeup/MuStereo;->sendSettingChangeRequest()V

    :cond_34
    return-void
.end method

.method public bridge synthetic onZoomUIStateChanged(Z)V
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->onZoomUIStateChanged(Z)V

    return-void
.end method

.method protected refreshToUI(I)V
    .registers 3

    .line 415
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getSettingDataCallback()Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;

    move-result-object p0

    if-eqz p0, :cond_a

    const/4 v0, 0x0

    .line 417
    invoke-interface {p0, v0, p1}, Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;->onDataCallback(Ljava/lang/Object;I)V

    :cond_a
    return-void
.end method

.method public sendSettingChangeRequest()V
    .registers 2

    .line 346
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/makeup/MuStereo;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;->requestChangeSettingValue(Ljava/lang/String;)V

    return-void
.end method

.method public setCameraCapabilities(Lcom/transsion/camera/adapter/ICameraCapabilities;)V
    .registers 5

    .line 351
    invoke-interface {p1}, Lcom/transsion/camera/adapter/ICameraCapabilities;->getSupportedVsdofLevel()Ljava/util/List;

    move-result-object v0

    .line 352
    invoke-interface {p1}, Lcom/transsion/camera/adapter/ICameraCapabilities;->getStereoSensorCropRegion()Landroid/graphics/Rect;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/setting/makeup/MuStereo;->mStereoSensorRect:Landroid/graphics/Rect;

    .line 353
    sget-object p1, Lcom/transsion/camera/feature/setting/makeup/MuStereo;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[setCameraCapabilities] supportedSizes: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", stereoSensorRect: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/setting/makeup/MuStereo;->mStereoSensorRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 355
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/makeup/MuStereo;->mIsStereoLevelSupport:Z

    .line 356
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 357
    const-string v0, "f0.0"

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 358
    sget-object v0, Lcom/transsion/camera/utils/SettingInfo;->BLUR_LEVEL_DATA:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    .line 359
    invoke-virtual {p0, p1, v0}, Lcom/transsion/camera/feature/setting/makeup/MuStereo;->initValueAndSupport(Ljava/util/List;Ljava/lang/String;)V

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

.method protected updateWarningTypeAndSendRequest(I)V
    .registers 3

    .line 320
    iget v0, p0, Lcom/transsion/camera/feature/setting/makeup/MuStereo;->mWarningType:I

    if-eq v0, p1, :cond_19

    .line 321
    iput p1, p0, Lcom/transsion/camera/feature/setting/makeup/MuStereo;->mWarningType:I

    .line 322
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/makeup/MuStereo;->updateRTDofValue(I)V

    .line 323
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/makeup/MuStereo;->updateBWLensCoveredValue(I)V

    .line 324
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/makeup/MuStereo;->getKey()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;->requestChangeSettingValueJustSelf([Ljava/lang/String;)V

    :cond_19
    return-void
.end method
