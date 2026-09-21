.class public Lcom/ss/android/ttvecamera/TECamera2;
.super Lcom/ss/android/ttvecamera/TECameraBase;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/android/ttvecamera/TECamera2$CameraStateCallback;
    }
.end annotation


# static fields
.field public static final SESSION_STATE_ERROR:I = 0x4

.field public static final SESSION_STATE_IDLE:I = 0x0

.field public static final SESSION_STATE_OPENED:I = 0x2

.field public static final SESSION_STATE_OPENING:I = 0x1

.field public static final SESSION_STATE_RUNNING:I = 0x3

.field protected static final TAG:Ljava/lang/String; = "TECamera2"


# instance fields
.field protected mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

.field protected mCameraCondition:Landroid/os/ConditionVariable;

.field protected volatile mCameraDevice:Landroid/hardware/camera2/CameraDevice;

.field protected mCameraManager:Landroid/hardware/camera2/CameraManager;

.field protected mCaptureRequest:Landroid/hardware/camera2/CaptureRequest;

.field protected mDeviceProxy:Lcom/ss/android/ttvecamera/hardware/TECameraHardware2Proxy;

.field protected mDeviceStateCallback:Landroid/hardware/camera2/CameraDevice$StateCallback;

.field private final mGyro:Lcom/ss/android/ttvecamera/focusmanager/Gyro;

.field protected mIsCameraOpenCloseSyncEnable:Z

.field protected mIsFirstOpenCamera:Z

.field protected mIsRequestCloseIntent:Z

.field protected mLastOrientation:I

.field protected mMode:Lcom/ss/android/ttvecamera/framework/TECameraModeBase;

.field protected volatile mSessionState:I

.field private mSupportedPictureSizes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ss/android/ttvecamera/TEFrameSizei;",
            ">;"
        }
    .end annotation
.end field

.field private mSupportedPreviewSizes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ss/android/ttvecamera/TEFrameSizei;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILandroid/content/Context;Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;Landroid/os/Handler;Lcom/ss/android/ttvecamera/TECameraBase$PictureSizeCallBack;)V
    .registers 6

    .line 94
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/ss/android/ttvecamera/TECameraBase;-><init>(Landroid/content/Context;Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;Landroid/os/Handler;Lcom/ss/android/ttvecamera/TECameraBase$PictureSizeCallBack;)V

    const/4 p3, 0x0

    .line 64
    iput p3, p0, Lcom/ss/android/ttvecamera/TECamera2;->mSessionState:I

    const/4 p4, -0x1

    .line 70
    iput p4, p0, Lcom/ss/android/ttvecamera/TECamera2;->mLastOrientation:I

    const/4 p4, 0x1

    .line 72
    iput-boolean p4, p0, Lcom/ss/android/ttvecamera/TECamera2;->mIsFirstOpenCamera:Z

    .line 76
    iput-boolean p3, p0, Lcom/ss/android/ttvecamera/TECamera2;->mIsRequestCloseIntent:Z

    .line 77
    iput-boolean p3, p0, Lcom/ss/android/ttvecamera/TECamera2;->mIsCameraOpenCloseSyncEnable:Z

    const/4 p3, 0x0

    .line 79
    iput-object p3, p0, Lcom/ss/android/ttvecamera/TECamera2;->mSupportedPreviewSizes:Ljava/util/List;

    .line 80
    iput-object p3, p0, Lcom/ss/android/ttvecamera/TECamera2;->mSupportedPictureSizes:Ljava/util/List;

    .line 83
    new-instance p3, Landroid/os/ConditionVariable;

    invoke-direct {p3}, Landroid/os/ConditionVariable;-><init>()V

    iput-object p3, p0, Lcom/ss/android/ttvecamera/TECamera2;->mCameraCondition:Landroid/os/ConditionVariable;

    .line 285
    new-instance p3, Lcom/ss/android/ttvecamera/TECamera2$1;

    invoke-direct {p3, p0}, Lcom/ss/android/ttvecamera/TECamera2$1;-><init>(Lcom/ss/android/ttvecamera/TECamera2;)V

    iput-object p3, p0, Lcom/ss/android/ttvecamera/TECamera2;->mDeviceStateCallback:Landroid/hardware/camera2/CameraDevice$StateCallback;

    .line 95
    new-instance p3, Lcom/ss/android/ttvecamera/TECameraSettings;

    invoke-direct {p3, p2, p1}, Lcom/ss/android/ttvecamera/TECameraSettings;-><init>(Landroid/content/Context;I)V

    iput-object p3, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    .line 96
    new-instance p3, Lcom/ss/android/ttvecamera/focusmanager/Gyro;

    invoke-direct {p3, p2}, Lcom/ss/android/ttvecamera/focusmanager/Gyro;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lcom/ss/android/ttvecamera/TECamera2;->mGyro:Lcom/ss/android/ttvecamera/focusmanager/Gyro;

    .line 97
    invoke-static {p2, p1}, Lcom/ss/android/ttvecamera/hardware/TECameraHardware2Proxy;->getDeviceProxy(Landroid/content/Context;I)Lcom/ss/android/ttvecamera/hardware/TECameraHardware2Proxy;

    move-result-object p1

    iput-object p1, p0, Lcom/ss/android/ttvecamera/TECamera2;->mDeviceProxy:Lcom/ss/android/ttvecamera/hardware/TECameraHardware2Proxy;

    return-void
.end method

.method private convertExeptionToErrCode(Landroid/hardware/camera2/CameraAccessException;)I
    .registers 2

    .line 1774
    invoke-virtual {p1}, Landroid/hardware/camera2/CameraAccessException;->getReason()I

    move-result p0

    const/4 p1, 0x1

    if-eq p0, p1, :cond_1f

    const/4 p1, 0x2

    if-eq p0, p1, :cond_1c

    const/4 p1, 0x3

    if-eq p0, p1, :cond_19

    const/4 p1, 0x4

    if-eq p0, p1, :cond_16

    const/4 p1, 0x5

    if-eq p0, p1, :cond_16

    const/16 p0, -0x191

    return p0

    :cond_16
    const/16 p0, -0x196

    return p0

    :cond_19
    const/16 p0, -0x19a

    return p0

    :cond_1c
    const/16 p0, -0x199

    return p0

    :cond_1f
    const/16 p0, -0x198

    return p0
.end method

.method public static create(ILandroid/content/Context;Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;Landroid/os/Handler;Lcom/ss/android/ttvecamera/TECameraBase$PictureSizeCallBack;)Lcom/ss/android/ttvecamera/TECamera2;
    .registers 11
    .param p0    # I
        .annotation build Lcom/ss/android/ttvecamera/TECameraSettings$CameraType;
        .end annotation
    .end param

    .line 89
    new-instance v0, Lcom/ss/android/ttvecamera/TECamera2;

    move v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/ss/android/ttvecamera/TECamera2;-><init>(ILandroid/content/Context;Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;Landroid/os/Handler;Lcom/ss/android/ttvecamera/TECameraBase$PictureSizeCallBack;)V

    return-object v0
.end method

.method private fillWideCameraID(ILandroid/hardware/camera2/CameraManager;)V
    .registers 3

    .line 457
    const-string p1, "TECamera2-fillWideCameraID"

    invoke-static {p1}, Lcom/ss/android/ttvecamera/TETraceUtils;->beginSection(Ljava/lang/String;)V

    .line 458
    iget-object p1, p0, Lcom/ss/android/ttvecamera/TECamera2;->mDeviceProxy:Lcom/ss/android/ttvecamera/hardware/TECameraHardware2Proxy;

    if-eqz p1, :cond_12

    .line 459
    iget-object p2, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget p2, p2, Lcom/ss/android/ttvecamera/TECameraSettings;->mCameraType:I

    iget-object p0, p0, Lcom/ss/android/ttvecamera/TECamera2;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    invoke-virtual {p1, p2, p0}, Lcom/ss/android/ttvecamera/hardware/TECameraHardware2Proxy;->fillWideCameraID(ILandroid/hardware/camera2/CameraManager;)V

    .line 461
    :cond_12
    invoke-static {}, Lcom/ss/android/ttvecamera/TETraceUtils;->endSection()V

    return-void
.end method

.method private getSupportedFpsRanges()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/ss/android/ttvecamera/TEFrameRateRange;",
            ">;"
        }
    .end annotation

    .line 1527
    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECamera2;->mMode:Lcom/ss/android/ttvecamera/framework/TECameraModeBase;

    if-eqz v0, :cond_16

    iget-object v0, v0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    if-nez v0, :cond_9

    goto :goto_16

    .line 1533
    :cond_9
    sget-object p0, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_AVAILABLE_TARGET_FPS_RANGES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, p0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroid/util/Range;

    .line 1534
    invoke-static {p0}, Lcom/ss/android/ttvecamera/TECameraUtils;->convertRanges([Landroid/util/Range;)Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 1529
    :cond_16
    :goto_16
    const-string v0, "TECamera2"

    const-string v1, "getSupportedFpsRanges: camera is null."

    invoke-static {v0, v1}, Lcom/ss/android/ttvecamera/TELogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1530
    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mCameraEvents:Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;

    iget-object v2, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget v2, v2, Lcom/ss/android/ttvecamera/TECameraSettings;->mCameraType:I

    const/16 v3, -0x1b7

    iget-object p0, p0, Lcom/ss/android/ttvecamera/TECamera2;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    invoke-interface {v0, v2, v3, v1, p0}, Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;->onCameraError(IILjava/lang/String;Ljava/lang/Object;)V

    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method protected _isDeviceReady()Z
    .registers 1

    .line 564
    iget-object p0, p0, Lcom/ss/android/ttvecamera/TECamera2;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method protected _open(Lcom/bytedance/bpea/basics/Cert;)I
    .registers 9
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    .line 368
    const-string v0, "TECamera2-_open"

    invoke-static {v0}, Lcom/ss/android/ttvecamera/TETraceUtils;->beginSection(Ljava/lang/String;)V

    .line 369
    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECamera2;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    if-nez v0, :cond_1a

    .line 370
    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mContext:Landroid/content/Context;

    const-string v1, "camera"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/CameraManager;

    iput-object v0, p0, Lcom/ss/android/ttvecamera/TECamera2;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    if-nez v0, :cond_1a

    const/16 p0, -0x197

    return p0

    .line 374
    :cond_1a
    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget v0, v0, Lcom/ss/android/ttvecamera/TECameraSettings;->mMode:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_26

    .line 375
    invoke-virtual {p0}, Lcom/ss/android/ttvecamera/TECamera2;->createVideoMode()V

    goto :goto_5a

    :cond_26
    if-ne v0, v1, :cond_42

    .line 377
    new-instance v0, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;

    iget-object v3, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/ss/android/ttvecamera/TECamera2;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    iget-object v5, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v3, v4, v5}, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;-><init>(Lcom/ss/android/ttvecamera/TECamera2;Landroid/content/Context;Landroid/hardware/camera2/CameraManager;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/ss/android/ttvecamera/TECamera2;->mMode:Lcom/ss/android/ttvecamera/framework/TECameraModeBase;

    .line 378
    iget-object v3, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mPictureSizeCallback:Lcom/ss/android/ttvecamera/TECameraBase$PictureSizeCallBack;

    invoke-virtual {v0, v3}, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->setPictureSizeCallback(Lcom/ss/android/ttvecamera/TECameraBase$PictureSizeCallBack;)V

    .line 379
    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECamera2;->mMode:Lcom/ss/android/ttvecamera/framework/TECameraModeBase;

    iget-object v3, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mFpsConfigCallback:Lcom/ss/android/ttvecamera/TECameraBase$CameraFpsConfigCallback;

    invoke-virtual {v0, v3}, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->setFpsConfigCallback(Lcom/ss/android/ttvecamera/TECameraBase$CameraFpsConfigCallback;)V

    goto :goto_5a

    .line 381
    :cond_42
    new-instance v0, Lcom/ss/android/ttvecamera/armode/TEARVideoMode;

    iget-object v3, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/ss/android/ttvecamera/TECamera2;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    iget-object v5, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v3, v4, v5}, Lcom/ss/android/ttvecamera/armode/TEARVideoMode;-><init>(Lcom/ss/android/ttvecamera/TECamera2;Landroid/content/Context;Landroid/hardware/camera2/CameraManager;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/ss/android/ttvecamera/TECamera2;->mMode:Lcom/ss/android/ttvecamera/framework/TECameraModeBase;

    .line 382
    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mCameraEvents:Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;

    const-string v3, "enable arcore"

    iget-object v4, p0, Lcom/ss/android/ttvecamera/TECamera2;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    const/16 v5, 0x75

    invoke-interface {v0, v5, v2, v3, v4}, Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;->onCameraInfo(IILjava/lang/String;Ljava/lang/Object;)V

    .line 385
    :goto_5a
    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECamera2;->mMode:Lcom/ss/android/ttvecamera/framework/TECameraModeBase;

    iget-object v3, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mPreviewSizeCallback:Lcom/ss/android/ttvecamera/TECameraBase$PreviewSizeCallBack;

    invoke-virtual {v0, v3}, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->setPreviewSizeCallback(Lcom/ss/android/ttvecamera/TECameraBase$PreviewSizeCallBack;)V

    .line 387
    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget-boolean v0, v0, Lcom/ss/android/ttvecamera/TECameraSettings;->mUseSyncModeOnCamera2:Z

    if-eqz v0, :cond_6e

    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECamera2;->mMode:Lcom/ss/android/ttvecamera/framework/TECameraModeBase;

    invoke-virtual {v0}, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->getCameraHandler()Landroid/os/Handler;

    move-result-object v0

    goto :goto_70

    :cond_6e
    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mHandler:Landroid/os/Handler;

    .line 388
    :goto_70
    iget-object v3, p0, Lcom/ss/android/ttvecamera/TECamera2;->mMode:Lcom/ss/android/ttvecamera/framework/TECameraModeBase;

    instance-of v4, v3, Lcom/ss/android/ttvecamera/armode/TEARVideoMode;

    if-eqz v4, :cond_7d

    .line 389
    check-cast v3, Lcom/ss/android/ttvecamera/armode/TEARVideoMode;

    .line 390
    iget-object v4, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4, v0}, Lcom/ss/android/ttvecamera/armode/TEARVideoMode;->initArCore(Landroid/content/Context;Landroid/os/Handler;)V

    .line 393
    :cond_7d
    iget-object v3, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget v4, v3, Lcom/ss/android/ttvecamera/TECameraSettings;->mFacing:I

    invoke-virtual {p0, v4}, Lcom/ss/android/ttvecamera/TECamera2;->selectCamera(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/ss/android/ttvecamera/TECameraSettings;->mStrCameraID:Ljava/lang/String;

    .line 394
    iget-object v3, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget-object v4, v3, Lcom/ss/android/ttvecamera/TECameraSettings;->mStrCameraID:Ljava/lang/String;

    if-nez v4, :cond_97

    .line 395
    const-string p0, "TECamera2"

    const-string p1, "Invalid CameraID"

    invoke-static {p0, p1}, Lcom/ss/android/ttvecamera/TELogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, -0x195

    return p0

    .line 399
    :cond_97
    iget-object v5, p0, Lcom/ss/android/ttvecamera/TECamera2;->mMode:Lcom/ss/android/ttvecamera/framework/TECameraModeBase;

    iget-boolean v6, p0, Lcom/ss/android/ttvecamera/TECamera2;->mIsFirstOpenCamera:Z

    if-eqz v6, :cond_a0

    .line 400
    iget v3, v3, Lcom/ss/android/ttvecamera/TECameraSettings;->mRequiredCameraLevel:I

    goto :goto_a1

    :cond_a0
    move v3, v2

    .line 399
    :goto_a1
    invoke-virtual {v5, v4, v3}, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->openCamera(Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_a8

    return v3

    .line 406
    :cond_a8
    invoke-virtual {p0}, Lcom/ss/android/ttvecamera/TECamera2;->checkIfEnableDeferredSurface()V

    .line 407
    invoke-virtual {p0}, Lcom/ss/android/ttvecamera/TECamera2;->fillFeatures()Landroid/os/Bundle;

    .line 408
    iget-object v3, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget v3, v3, Lcom/ss/android/ttvecamera/TECameraSettings;->mCameraType:I

    iget-object v4, p0, Lcom/ss/android/ttvecamera/TECamera2;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    invoke-direct {p0, v3, v4}, Lcom/ss/android/ttvecamera/TECamera2;->fillWideCameraID(ILandroid/hardware/camera2/CameraManager;)V

    .line 410
    iget-object v3, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mCameraEvents:Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;

    const-string v4, "TECamera2 features is ready"

    iget-object v5, p0, Lcom/ss/android/ttvecamera/TECamera2;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    invoke-interface {v3, v1, v2, v4, v5}, Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;->onCameraInfo(IILjava/lang/String;Ljava/lang/Object;)V

    .line 414
    iget-object v1, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget-boolean v1, v1, Lcom/ss/android/ttvecamera/TECameraSettings;->mUseSyncModeOnCamera2:Z

    const/4 v3, 0x0

    if-eqz v1, :cond_e8

    .line 416
    :try_start_c7
    iput-object v3, p0, Lcom/ss/android/ttvecamera/TECamera2;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    .line 417
    iget-object v1, p0, Lcom/ss/android/ttvecamera/TECamera2;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    iget-object v3, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget-object v3, v3, Lcom/ss/android/ttvecamera/TECameraSettings;->mStrCameraID:Ljava/lang/String;

    iget-object v4, p0, Lcom/ss/android/ttvecamera/TECamera2;->mDeviceStateCallback:Landroid/hardware/camera2/CameraDevice$StateCallback;

    invoke-static {p1, v1, v3, v4, v0}, Lcom/ss/android/ttvecamera/TECamera2PolicyAdapter;->openCamera(Lcom/bytedance/bpea/basics/Cert;Landroid/hardware/camera2/CameraManager;Ljava/lang/String;Landroid/hardware/camera2/CameraDevice$StateCallback;Landroid/os/Handler;)V
    :try_end_d4
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_c7 .. :try_end_d4} :catch_dc

    .line 426
    iget-object p1, p0, Lcom/ss/android/ttvecamera/TECamera2;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    if-nez p1, :cond_fc

    .line 427
    invoke-virtual {p0}, Lcom/ss/android/ttvecamera/TECamera2;->waitCameraTaskDoneOrTimeout()V

    goto :goto_fc

    :catch_dc
    move-exception p1

    .line 420
    invoke-direct {p0, p1}, Lcom/ss/android/ttvecamera/TECamera2;->convertExeptionToErrCode(Landroid/hardware/camera2/CameraAccessException;)I

    move-result v0

    .line 421
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 422
    invoke-virtual {p0}, Lcom/ss/android/ttvecamera/TECamera2;->openCameraLock()V

    return v0

    .line 432
    :cond_e8
    :try_start_e8
    iget-object v1, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mCameraEvents:Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;

    const-string v4, "will start camera2"

    const/16 v5, 0x6a

    invoke-interface {v1, v5, v2, v4, v3}, Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;->onCameraInfo(IILjava/lang/String;Ljava/lang/Object;)V

    .line 434
    iget-object v1, p0, Lcom/ss/android/ttvecamera/TECamera2;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    iget-object v3, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget-object v3, v3, Lcom/ss/android/ttvecamera/TECameraSettings;->mStrCameraID:Ljava/lang/String;

    iget-object v4, p0, Lcom/ss/android/ttvecamera/TECamera2;->mDeviceStateCallback:Landroid/hardware/camera2/CameraDevice$StateCallback;

    invoke-static {p1, v1, v3, v4, v0}, Lcom/ss/android/ttvecamera/TECamera2PolicyAdapter;->openCamera(Lcom/bytedance/bpea/basics/Cert;Landroid/hardware/camera2/CameraManager;Ljava/lang/String;Landroid/hardware/camera2/CameraDevice$StateCallback;Landroid/os/Handler;)V
    :try_end_fc
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_e8 .. :try_end_fc} :catch_100

    .line 443
    :cond_fc
    :goto_fc
    invoke-static {}, Lcom/ss/android/ttvecamera/TETraceUtils;->endSection()V

    return v2

    :catch_100
    move-exception p1

    .line 437
    invoke-direct {p0, p1}, Lcom/ss/android/ttvecamera/TECamera2;->convertExeptionToErrCode(Landroid/hardware/camera2/CameraAccessException;)I

    move-result p0

    .line 438
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return p0
.end method

.method protected _reset(Lcom/bytedance/bpea/basics/Cert;)V
    .registers 8

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 707
    :try_start_3
    iget-object v3, p0, Lcom/ss/android/ttvecamera/TECamera2;->mMode:Lcom/ss/android/ttvecamera/framework/TECameraModeBase;

    invoke-virtual {v3}, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->reset()V

    .line 708
    iget-object v3, p0, Lcom/ss/android/ttvecamera/TECamera2;->mMode:Lcom/ss/android/ttvecamera/framework/TECameraModeBase;

    invoke-virtual {v3}, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->closePreviewSession()V

    .line 710
    iget-object v3, p0, Lcom/ss/android/ttvecamera/TECamera2;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    if-eqz v3, :cond_3c

    .line 711
    iget-object v3, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mCameraEvents:Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;

    const-string v4, "will close camera2"

    const/16 v5, 0x6c

    invoke-interface {v3, v5, v1, v4, v2}, Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;->onCameraInfo(IILjava/lang/String;Ljava/lang/Object;)V

    .line 712
    iget-object v3, p0, Lcom/ss/android/ttvecamera/TECamera2;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    invoke-static {p1, v3}, Lcom/ss/android/ttvecamera/TECamera2PolicyAdapter;->closeCamera(Lcom/bytedance/bpea/basics/Cert;Landroid/hardware/camera2/CameraDevice;)V

    .line 713
    iget-object p1, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mCameraEvents:Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;

    const-string v3, "did close camera2"

    const/16 v4, 0x6d

    invoke-interface {p1, v4, v1, v3, v2}, Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;->onCameraInfo(IILjava/lang/String;Ljava/lang/Object;)V

    .line 714
    iput-object v2, p0, Lcom/ss/android/ttvecamera/TECamera2;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    .line 715
    iget-object p1, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mCameraEvents:Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;

    iget-object v3, p0, Lcom/ss/android/ttvecamera/TECamera2;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    invoke-interface {p1, v0, p0, v3}, Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;->onCameraClosed(ILcom/ss/android/ttvecamera/TECameraBase;Ljava/lang/Object;)V
    :try_end_31
    .catchall {:try_start_3 .. :try_end_31} :catchall_32

    goto :goto_3c

    :catchall_32
    move-exception p1

    .line 719
    const-string v3, "TECamera2"

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/ss/android/ttvecamera/TELogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 721
    :cond_3c
    :goto_3c
    invoke-virtual {p0, v1}, Lcom/ss/android/ttvecamera/TECamera2;->updateSessionState(I)V

    .line 722
    iput-object v2, p0, Lcom/ss/android/ttvecamera/TECamera2;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    .line 723
    iput-object v2, p0, Lcom/ss/android/ttvecamera/TECamera2;->mCaptureRequest:Landroid/hardware/camera2/CaptureRequest;

    .line 724
    iput-object v2, p0, Lcom/ss/android/ttvecamera/TECameraBase;->openPrivacyCert:Lcom/bytedance/bpea/basics/Cert;

    .line 725
    iget-object p1, p0, Lcom/ss/android/ttvecamera/TECamera2;->mMode:Lcom/ss/android/ttvecamera/framework/TECameraModeBase;

    if-eqz p1, :cond_54

    iget-object p0, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget p0, p0, Lcom/ss/android/ttvecamera/TECameraSettings;->mMode:I

    if-ne p0, v0, :cond_54

    .line 726
    check-cast p1, Lcom/ss/android/ttvecamera/armode/TEARVideoMode;

    invoke-virtual {p1}, Lcom/ss/android/ttvecamera/armode/TEARVideoMode;->closeARSession()V

    :cond_54
    return-void
.end method

.method protected _startCapture()I
    .registers 6

    .line 507
    const-string v0, "TECamera2-_startCapture"

    invoke-static {v0}, Lcom/ss/android/ttvecamera/TETraceUtils;->beginSection(Ljava/lang/String;)V

    .line 508
    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECamera2;->mMode:Lcom/ss/android/ttvecamera/framework/TECameraModeBase;

    if-nez v0, :cond_1d

    .line 510
    invoke-virtual {p0}, Lcom/ss/android/ttvecamera/TECameraBase;->stopRetryStartPreview()V

    .line 511
    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mCameraEvents:Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;

    iget-object v1, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget v1, v1, Lcom/ss/android/ttvecamera/TECameraSettings;->mCameraType:I

    const/16 v2, -0x1b7

    iget-object p0, p0, Lcom/ss/android/ttvecamera/TECamera2;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    const-string v3, "_startCapture : mode is null"

    invoke-interface {v0, v1, v2, v3, p0}, Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;->onPreviewError(IILjava/lang/String;Ljava/lang/Object;)V

    const/4 p0, -0x1

    return p0

    .line 517
    :cond_1d
    :try_start_1d
    invoke-virtual {v0}, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->startPreview()I

    move-result v0

    if-eqz v0, :cond_36

    .line 519
    invoke-virtual {p0}, Lcom/ss/android/ttvecamera/TECamera2;->openCameraLock()V

    .line 520
    const-string v1, "_startCapture : something wrong"

    .line 521
    iget-object v2, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mCameraEvents:Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;

    iget-object v3, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget v3, v3, Lcom/ss/android/ttvecamera/TECameraSettings;->mCameraType:I

    iget-object v4, p0, Lcom/ss/android/ttvecamera/TECamera2;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    invoke-interface {v2, v3, v0, v1, v4}, Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;->onPreviewError(IILjava/lang/String;Ljava/lang/Object;)V
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_33} :catch_34

    goto :goto_36

    :catch_34
    move-exception v0

    goto :goto_3a

    .line 540
    :cond_36
    :goto_36
    invoke-static {}, Lcom/ss/android/ttvecamera/TETraceUtils;->endSection()V

    return v0

    .line 525
    :goto_3a
    instance-of v1, v0, Landroid/hardware/camera2/CameraAccessException;

    if-eqz v1, :cond_41

    const/16 v1, -0x19a

    goto :goto_51

    .line 527
    :cond_41
    instance-of v1, v0, Ljava/lang/IllegalArgumentException;

    if-eqz v1, :cond_48

    const/16 v1, -0x192

    goto :goto_51

    .line 529
    :cond_48
    instance-of v1, v0, Ljava/lang/IllegalStateException;

    if-eqz v1, :cond_4f

    const/16 v1, -0x199

    goto :goto_51

    :cond_4f
    const/16 v1, -0x1a9

    .line 532
    :goto_51
    invoke-virtual {p0}, Lcom/ss/android/ttvecamera/TECamera2;->openCameraLock()V

    .line 533
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 534
    invoke-static {v0}, Lcom/ss/android/ttvecamera/TECameraExceptionMonitor;->monitorException(Ljava/lang/Throwable;)V

    .line 535
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_startCapture : mode is null, err msg: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 536
    iget-object v2, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mCameraEvents:Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;

    iget-object v3, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget v3, v3, Lcom/ss/android/ttvecamera/TECameraSettings;->mCameraType:I

    iget-object p0, p0, Lcom/ss/android/ttvecamera/TECamera2;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    invoke-interface {v2, v3, v1, v0, p0}, Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;->onPreviewError(IILjava/lang/String;Ljava/lang/Object;)V

    return v1
.end method

.method protected _stopCapture()I
    .registers 12

    .line 545
    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECamera2;->mMode:Lcom/ss/android/ttvecamera/framework/TECameraModeBase;

    const/4 v1, -0x1

    if-nez v0, :cond_15

    .line 547
    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mCameraEvents:Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;

    iget-object v2, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget v2, v2, Lcom/ss/android/ttvecamera/TECameraSettings;->mCameraType:I

    const/16 v3, -0x1b7

    iget-object p0, p0, Lcom/ss/android/ttvecamera/TECamera2;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    const-string v4, "_stopCapture : mode is null"

    invoke-interface {v0, v2, v3, v4, p0}, Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;->onCameraError(IILjava/lang/String;Ljava/lang/Object;)V

    return v1

    .line 552
    :cond_15
    :try_start_15
    invoke-virtual {v0}, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->closePreviewSession()V

    .line 553
    iget-object v5, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mCameraEvents:Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;

    const-string v9, "TECamera2 preview stoped"

    iget-object v10, p0, Lcom/ss/android/ttvecamera/TECamera2;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    const/4 v6, 0x2

    const/4 v7, 0x4

    const/4 v8, 0x0

    invoke-interface/range {v5 .. v10}, Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;->onPreviewStopped(IIILjava/lang/String;Ljava/lang/Object;)V
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_24} :catch_26

    const/4 p0, 0x0

    return p0

    :catch_26
    move-exception v0

    .line 555
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 557
    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mCameraEvents:Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;

    iget-object v2, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget v2, v2, Lcom/ss/android/ttvecamera/TECameraSettings;->mCameraType:I

    const/16 v3, -0x1a9

    iget-object p0, p0, Lcom/ss/android/ttvecamera/TECamera2;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    const-string v4, "Error:_stopCapture : mode is null"

    invoke-interface {v0, v2, v3, v4, p0}, Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;->onCameraError(IILjava/lang/String;Ljava/lang/Object;)V

    return v1
.end method

.method protected _switchCameraMode(I)V
    .registers 5

    .line 465
    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECamera2;->mMode:Lcom/ss/android/ttvecamera/framework/TECameraModeBase;

    if-nez v0, :cond_6

    goto/16 :goto_77

    .line 468
    :cond_6
    invoke-virtual {p0}, Lcom/ss/android/ttvecamera/TECamera2;->_stopCapture()I

    if-nez p1, :cond_f

    .line 471
    invoke-virtual {p0}, Lcom/ss/android/ttvecamera/TECamera2;->createVideoMode()V

    goto :goto_40

    :cond_f
    const/4 v0, 0x1

    if-ne p1, v0, :cond_33

    .line 473
    new-instance p1, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;

    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/ss/android/ttvecamera/TECamera2;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    iget-object v2, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mHandler:Landroid/os/Handler;

    invoke-direct {p1, p0, v0, v1, v2}, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;-><init>(Lcom/ss/android/ttvecamera/TECamera2;Landroid/content/Context;Landroid/hardware/camera2/CameraManager;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/ss/android/ttvecamera/TECamera2;->mMode:Lcom/ss/android/ttvecamera/framework/TECameraModeBase;

    .line 474
    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mPictureSizeCallback:Lcom/ss/android/ttvecamera/TECameraBase$PictureSizeCallBack;

    invoke-virtual {p1, v0}, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->setPictureSizeCallback(Lcom/ss/android/ttvecamera/TECameraBase$PictureSizeCallBack;)V

    .line 475
    iget-object p1, p0, Lcom/ss/android/ttvecamera/TECamera2;->mMode:Lcom/ss/android/ttvecamera/framework/TECameraModeBase;

    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mPreviewSizeCallback:Lcom/ss/android/ttvecamera/TECameraBase$PreviewSizeCallBack;

    invoke-virtual {p1, v0}, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->setPreviewSizeCallback(Lcom/ss/android/ttvecamera/TECameraBase$PreviewSizeCallBack;)V

    .line 476
    iget-object p1, p0, Lcom/ss/android/ttvecamera/TECamera2;->mMode:Lcom/ss/android/ttvecamera/framework/TECameraModeBase;

    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mFpsConfigCallback:Lcom/ss/android/ttvecamera/TECameraBase$CameraFpsConfigCallback;

    invoke-virtual {p1, v0}, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->setFpsConfigCallback(Lcom/ss/android/ttvecamera/TECameraBase$CameraFpsConfigCallback;)V

    goto :goto_40

    .line 478
    :cond_33
    new-instance p1, Lcom/ss/android/ttvecamera/armode/TEARVideoMode;

    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/ss/android/ttvecamera/TECamera2;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    iget-object v2, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mHandler:Landroid/os/Handler;

    invoke-direct {p1, p0, v0, v1, v2}, Lcom/ss/android/ttvecamera/armode/TEARVideoMode;-><init>(Lcom/ss/android/ttvecamera/TECamera2;Landroid/content/Context;Landroid/hardware/camera2/CameraManager;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/ss/android/ttvecamera/TECamera2;->mMode:Lcom/ss/android/ttvecamera/framework/TECameraModeBase;

    .line 481
    :goto_40
    iget-object p1, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget-boolean p1, p1, Lcom/ss/android/ttvecamera/TECameraSettings;->mUseSyncModeOnCamera2:Z

    if-eqz p1, :cond_4d

    iget-object p1, p0, Lcom/ss/android/ttvecamera/TECamera2;->mMode:Lcom/ss/android/ttvecamera/framework/TECameraModeBase;

    invoke-virtual {p1}, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->getCameraHandler()Landroid/os/Handler;

    move-result-object p1

    goto :goto_4f

    :cond_4d
    iget-object p1, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mHandler:Landroid/os/Handler;

    .line 482
    :goto_4f
    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECamera2;->mMode:Lcom/ss/android/ttvecamera/framework/TECameraModeBase;

    instance-of v1, v0, Lcom/ss/android/ttvecamera/armode/TEARVideoMode;

    if-eqz v1, :cond_5c

    .line 483
    check-cast v0, Lcom/ss/android/ttvecamera/armode/TEARVideoMode;

    .line 484
    iget-object v1, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lcom/ss/android/ttvecamera/armode/TEARVideoMode;->initArCore(Landroid/content/Context;Landroid/os/Handler;)V

    .line 488
    :cond_5c
    :try_start_5c
    iget-object p1, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget v0, p1, Lcom/ss/android/ttvecamera/TECameraSettings;->mFacing:I

    invoke-virtual {p0, v0}, Lcom/ss/android/ttvecamera/TECamera2;->selectCamera(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/ss/android/ttvecamera/TECameraSettings;->mStrCameraID:Ljava/lang/String;

    .line 489
    iget-object p1, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget-object v0, p1, Lcom/ss/android/ttvecamera/TECameraSettings;->mStrCameraID:Ljava/lang/String;

    if-nez v0, :cond_6d

    goto :goto_77

    .line 492
    :cond_6d
    iget-object v1, p0, Lcom/ss/android/ttvecamera/TECamera2;->mMode:Lcom/ss/android/ttvecamera/framework/TECameraModeBase;

    iget p1, p1, Lcom/ss/android/ttvecamera/TECameraSettings;->mRequiredCameraLevel:I

    invoke-virtual {v1, v0, p1}, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->openCamera(Ljava/lang/String;I)I

    move-result p1
    :try_end_75
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_5c .. :try_end_75} :catch_78

    if-eqz p1, :cond_7c

    :goto_77
    return-void

    :catch_78
    move-exception p1

    .line 498
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 501
    :cond_7c
    iget-object p1, p0, Lcom/ss/android/ttvecamera/TECamera2;->mMode:Lcom/ss/android/ttvecamera/framework/TECameraModeBase;

    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECamera2;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    invoke-virtual {p1, v0}, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->setCameraDevice(Ljava/lang/Object;)V

    .line 503
    invoke-virtual {p0}, Lcom/ss/android/ttvecamera/TECamera2;->_startCapture()I

    return-void
.end method

.method public abortSession()V
    .registers 2

    .line 661
    invoke-virtual {p0}, Lcom/ss/android/ttvecamera/TECamera2;->_isDeviceReady()Z

    move-result v0

    if-nez v0, :cond_e

    .line 662
    const-string p0, "TECamera2"

    const-string v0, "Device is not ready."

    invoke-static {p0, v0}, Lcom/ss/android/ttvecamera/TELogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 666
    :cond_e
    iget-object p0, p0, Lcom/ss/android/ttvecamera/TECamera2;->mMode:Lcom/ss/android/ttvecamera/framework/TECameraModeBase;

    if-eqz p0, :cond_15

    .line 667
    invoke-virtual {p0}, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->abortSession()V

    :cond_15
    return-void
.end method

.method public cancelFocus()V
    .registers 5

    .line 922
    iget v0, p0, Lcom/ss/android/ttvecamera/TECamera2;->mSessionState:I

    const/4 v1, 0x1

    const-string v2, "TECamera2"

    if-ne v0, v1, :cond_d

    .line 923
    const-string p0, "Camera is opening, ignore cancelAutoFocus operation."

    invoke-static {v2, p0}, Lcom/ss/android/ttvecamera/TELogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 926
    :cond_d
    invoke-virtual {p0}, Lcom/ss/android/ttvecamera/TECamera2;->_isDeviceReady()Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECamera2;->mMode:Lcom/ss/android/ttvecamera/framework/TECameraModeBase;

    if-nez v0, :cond_18

    goto :goto_1c

    .line 933
    :cond_18
    invoke-virtual {v0}, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->cancelFocus()I

    return-void

    .line 928
    :cond_1c
    :goto_1c
    const-string v0, "cancelFocus : camera is null."

    invoke-static {v2, v0}, Lcom/ss/android/ttvecamera/TELogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 929
    iget-object v1, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mCameraEvents:Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;

    iget-object v2, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget v2, v2, Lcom/ss/android/ttvecamera/TECameraSettings;->mCameraType:I

    const/16 v3, -0x1b7

    iget-object p0, p0, Lcom/ss/android/ttvecamera/TECamera2;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    invoke-interface {v1, v2, v3, v0, p0}, Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;->onCameraError(IILjava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public captureBurst(Lcom/ss/android/ttvecamera/model/BurstRequest;Lcom/ss/android/ttvecamera/TECameraSettings$CaptureBufferFrameCallback;)V
    .registers 4

    .line 816
    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECamera2;->mMode:Lcom/ss/android/ttvecamera/framework/TECameraModeBase;

    iget p0, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mNewFacing:I

    invoke-virtual {v0, p1, p0, p2}, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->captureBurst(Lcom/ss/android/ttvecamera/model/BurstRequest;ILcom/ss/android/ttvecamera/TECameraSettings$CaptureBufferFrameCallback;)V

    return-void
.end method

.method protected checkIfEnableDeferredSurface()V
    .registers 4

    .line 1793
    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget-boolean v1, v0, Lcom/ss/android/ttvecamera/TECameraSettings;->mEnableCamera2DeferredSurface:Z

    if-eqz v1, :cond_1d

    iget v1, v0, Lcom/ss/android/ttvecamera/TECameraSettings;->mCameraType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1d

    iget v1, v0, Lcom/ss/android/ttvecamera/TECameraSettings;->mMode:I

    if-nez v1, :cond_1d

    iget-object v1, p0, Lcom/ss/android/ttvecamera/TECamera2;->mDeviceProxy:Lcom/ss/android/ttvecamera/hardware/TECameraHardware2Proxy;

    iget-object p0, p0, Lcom/ss/android/ttvecamera/TECamera2;->mMode:Lcom/ss/android/ttvecamera/framework/TECameraModeBase;

    iget-object p0, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    const/4 v2, 0x1

    .line 1795
    invoke-virtual {v1, p0, v2}, Lcom/ss/android/ttvecamera/hardware/TECameraHardware2Proxy;->isHardwareLevelSupported(Landroid/hardware/camera2/CameraCharacteristics;I)Z

    move-result p0

    if-eqz p0, :cond_1d

    goto :goto_1e

    :cond_1d
    const/4 v2, 0x0

    :goto_1e
    iput-boolean v2, v0, Lcom/ss/android/ttvecamera/TECameraSettings;->mEnableCamera2DeferredSurface:Z

    return-void
.end method

.method public close(Lcom/bytedance/bpea/basics/Cert;)V
    .registers 4

    .line 690
    const-string v0, "TECamera2"

    const-string v1, "close..."

    invoke-static {v0, v1}, Lcom/ss/android/ttvecamera/TELogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 692
    iget v0, p0, Lcom/ss/android/ttvecamera/TECamera2;->mSessionState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_13

    .line 693
    iget-boolean p1, p0, Lcom/ss/android/ttvecamera/TECamera2;->mIsCameraOpenCloseSyncEnable:Z

    if-eqz p1, :cond_1d

    .line 694
    iput-boolean v1, p0, Lcom/ss/android/ttvecamera/TECamera2;->mIsRequestCloseIntent:Z

    return-void

    .line 699
    :cond_13
    invoke-virtual {p0, p1}, Lcom/ss/android/ttvecamera/TECamera2;->_reset(Lcom/bytedance/bpea/basics/Cert;)V

    .line 700
    iget-object p0, p0, Lcom/ss/android/ttvecamera/TECamera2;->mMode:Lcom/ss/android/ttvecamera/framework/TECameraModeBase;

    if-eqz p0, :cond_1d

    .line 701
    invoke-virtual {p0}, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->close()V

    :cond_1d
    return-void
.end method

.method protected collectCameraCapabilities()V
    .registers 23

    move-object/from16 v1, p0

    .line 1544
    const-string v0, "camera_id"

    const-string v2, "TECamera2-collectCameraCapabilities"

    invoke-static {v2}, Lcom/ss/android/ttvecamera/TETraceUtils;->beginSection(Ljava/lang/String;)V

    .line 1545
    invoke-virtual {v1}, Lcom/ss/android/ttvecamera/TECameraBase;->isNeedCollectCameraCapabilities()Z

    move-result v2

    if-nez v2, :cond_13

    .line 1546
    invoke-static {}, Lcom/ss/android/ttvecamera/TETraceUtils;->endSection()V

    return-void

    .line 1549
    :cond_13
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 1550
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 1551
    iget-object v5, v1, Lcom/ss/android/ttvecamera/TECamera2;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    const-string v6, "TECamera2"

    const/4 v7, 0x1

    if-eqz v5, :cond_3cd

    .line 1553
    :try_start_23
    iget-object v5, v1, Lcom/ss/android/ttvecamera/TECameraBase;->mCameraCapabilitiesMap:Lorg/json/JSONObject;

    iget-object v8, v1, Lcom/ss/android/ttvecamera/TECameraBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget-object v8, v8, Lcom/ss/android/ttvecamera/TECameraSettings;->mStrCameraID:Ljava/lang/String;

    invoke-virtual {v5, v0, v8}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1554
    iget-object v5, v1, Lcom/ss/android/ttvecamera/TECamera2;->mDeviceProxy:Lcom/ss/android/ttvecamera/hardware/TECameraHardware2Proxy;

    if-eqz v5, :cond_54

    .line 1555
    iget-object v8, v1, Lcom/ss/android/ttvecamera/TECamera2;->mMode:Lcom/ss/android/ttvecamera/framework/TECameraModeBase;

    iget-object v8, v8, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    iget-object v9, v1, Lcom/ss/android/ttvecamera/TECameraBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget v10, v9, Lcom/ss/android/ttvecamera/TECameraSettings;->mCameraType:I

    iget v9, v9, Lcom/ss/android/ttvecamera/TECameraSettings;->mCameraZoomLimitFactor:F

    invoke-virtual {v5, v8, v10, v9}, Lcom/ss/android/ttvecamera/hardware/TECameraHardware2Proxy;->getMaxZoomValue(Landroid/hardware/camera2/CameraCharacteristics;IF)F

    move-result v5

    .line 1556
    iget-object v8, v1, Lcom/ss/android/ttvecamera/TECameraBase;->mCameraCapabilitiesMap:Lorg/json/JSONObject;

    const-string v9, "camera_zoom_max_ability"

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v8, v9, v5}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_54

    :catch_4a
    move-exception v0

    move-wide/from16 v19, v2

    goto/16 :goto_3c0

    :catch_4f
    move-exception v0

    move-wide/from16 v19, v2

    goto/16 :goto_3c4

    .line 1558
    :cond_54
    :goto_54
    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    .line 1559
    iget-object v8, v1, Lcom/ss/android/ttvecamera/TECamera2;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    invoke-virtual {v8}, Landroid/hardware/camera2/CameraManager;->getCameraIdList()[Ljava/lang/String;

    move-result-object v8

    array-length v9, v8

    const/4 v11, 0x0

    :goto_61
    if-ge v11, v9, :cond_31e

    aget-object v12, v8, v11

    .line 1560
    new-instance v13, Lorg/json/JSONObject;

    invoke-direct {v13}, Lorg/json/JSONObject;-><init>()V

    .line 1561
    iget-object v14, v1, Lcom/ss/android/ttvecamera/TECamera2;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    invoke-virtual {v14, v12}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v14

    if-nez v14, :cond_7a

    move-object/from16 v16, v0

    move-wide/from16 v19, v2

    move-object/from16 v21, v8

    goto/16 :goto_313

    .line 1565
    :cond_7a
    invoke-virtual {v13, v0, v12}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1566
    const-string v15, "camera_facing"

    sget-object v10, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v14, v10}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-ne v10, v7, :cond_8f

    const/4 v10, 0x0

    goto :goto_90

    :cond_8f
    move v10, v7

    :goto_90
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v13, v15, v10}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1569
    sget-object v10, Landroid/hardware/camera2/CameraCharacteristics;->REQUEST_AVAILABLE_CAPABILITIES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v14, v10}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [I

    if-eqz v10, :cond_14c

    .line 1571
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 1572
    array-length v7, v10

    move-object/from16 v16, v0

    const/4 v0, 0x0

    :goto_aa
    if-ge v0, v7, :cond_ba

    aget v17, v10, v0

    move/from16 v18, v0

    .line 1573
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v18, 0x1

    goto :goto_aa

    .line 1575
    :cond_ba
    sget-object v0, Lcom/ss/android/ttvecamera/cameracapabilitycollector/TECameraCapabilityCollector;->sCapabilityMetadataMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_c4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_149

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    .line 1576
    sget-object v10, Lcom/ss/android/ttvecamera/cameracapabilitycollector/TECameraCapabilityCollector;->sCapabilityMetadataMap:Ljava/util/Map;

    invoke-interface {v10, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/ss/android/ttvecamera/cameracapabilitycollector/TECameraCapabilityCollector$Capability;

    if-eqz v10, :cond_13f

    .line 1578
    invoke-interface {v4, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    if-nez v17, :cond_eb

    move-object/from16 v17, v0

    .line 1579
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1580
    invoke-interface {v4, v10, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_ed

    :cond_eb
    move-object/from16 v17, v0

    .line 1582
    :goto_ed
    invoke-interface {v4, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v15, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v18
    :try_end_f7
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_23 .. :try_end_f7} :catch_4f
    .catch Lorg/json/JSONException; {:try_start_23 .. :try_end_f7} :catch_4a

    move-wide/from16 v19, v2

    :try_start_f9
    invoke-static/range {v18 .. v18}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v12, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1583
    sget-object v0, Lcom/ss/android/ttvecamera/cameracapabilitycollector/TECameraCapabilityCollector$Capability;->DEPTH_OUTPUT:Lcom/ss/android/ttvecamera/cameracapabilitycollector/TECameraCapabilityCollector$Capability;

    invoke-virtual {v10, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11c

    .line 1584
    const-string v0, "depth_out_put"

    invoke-interface {v15, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v13, v0, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_11c

    :catch_116
    move-exception v0

    goto/16 :goto_3c0

    :catch_119
    move-exception v0

    goto/16 :goto_3c4

    .line 1586
    :cond_11c
    :goto_11c
    sget-object v0, Lcom/ss/android/ttvecamera/cameracapabilitycollector/TECameraCapabilityCollector$Capability;->MANUAL_3A:Lcom/ss/android/ttvecamera/cameracapabilitycollector/TECameraCapabilityCollector$Capability;

    invoke-virtual {v10, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12d

    .line 1587
    const-string v0, "manual_3A"

    invoke-interface {v15, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v13, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 1589
    :cond_12d
    sget-object v0, Lcom/ss/android/ttvecamera/cameracapabilitycollector/TECameraCapabilityCollector$Capability;->LOGICAL_MULTI_CAMERA:Lcom/ss/android/ttvecamera/cameracapabilitycollector/TECameraCapabilityCollector$Capability;

    invoke-virtual {v10, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_143

    .line 1590
    const-string v0, "logical_multi_Camera"

    invoke-interface {v15, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v13, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    goto :goto_143

    :cond_13f
    move-object/from16 v17, v0

    move-wide/from16 v19, v2

    :cond_143
    :goto_143
    move-object/from16 v0, v17

    move-wide/from16 v2, v19

    goto/16 :goto_c4

    :cond_149
    :goto_149
    move-wide/from16 v19, v2

    goto :goto_14f

    :cond_14c
    move-object/from16 v16, v0

    goto :goto_149

    .line 1596
    :goto_14f
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_STREAM_CONFIGURATION_MAP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v14, v0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/params/StreamConfigurationMap;

    if-eqz v0, :cond_21f

    .line 1598
    invoke-virtual {v0}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getHighSpeedVideoFpsRanges()[Landroid/util/Range;

    move-result-object v2

    if-eqz v2, :cond_1bb

    .line 1599
    array-length v3, v2

    if-eqz v3, :cond_1bb

    .line 1600
    sget-object v3, Lcom/ss/android/ttvecamera/cameracapabilitycollector/TECameraCapabilityCollector$Capability;->HIGH_SPEED_VIDEO_FPS_RANGE:Lcom/ss/android/ttvecamera/cameracapabilitycollector/TECameraCapabilityCollector$Capability;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_172

    .line 1601
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 1602
    invoke-interface {v4, v3, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1604
    :cond_172
    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v12, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1605
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 1606
    array-length v7, v2

    const/4 v10, 0x0

    :goto_186
    if-ge v10, v7, :cond_1b3

    aget-object v15, v2, v10

    move-object/from16 v17, v2

    .line 1607
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    move/from16 v18, v7

    .line 1608
    const-string v7, "high_fps_min"

    move-object/from16 v21, v8

    invoke-virtual {v15}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1609
    const-string v7, "high_fps_max"

    invoke-virtual {v15}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1610
    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v10, v10, 0x1

    move-object/from16 v2, v17

    move/from16 v7, v18

    move-object/from16 v8, v21

    goto :goto_186

    :cond_1b3
    move-object/from16 v21, v8

    .line 1612
    const-string v2, "high_speed_fps_range"

    invoke-virtual {v13, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1bd

    :cond_1bb
    move-object/from16 v21, v8

    .line 1615
    :goto_1bd
    const-class v2, Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, v2}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputSizes(Ljava/lang/Class;)[Landroid/util/Size;

    move-result-object v0

    .line 1616
    sget-object v2, Lcom/ss/android/ttvecamera/cameracapabilitycollector/TECameraCapabilityCollector$Capability;->PREVIEW_SIZE:Lcom/ss/android/ttvecamera/cameracapabilitycollector/TECameraCapabilityCollector$Capability;

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_1d3

    .line 1617
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 1618
    invoke-interface {v4, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1620
    :cond_1d3
    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v12, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1621
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    if-eqz v0, :cond_221

    .line 1622
    array-length v3, v0

    if-lez v3, :cond_221

    .line 1623
    array-length v3, v0

    const/4 v7, 0x0

    :goto_1ec
    if-ge v7, v3, :cond_219

    aget-object v8, v0, v7

    .line 1624
    new-instance v10, Lorg/json/JSONObject;

    invoke-direct {v10}, Lorg/json/JSONObject;-><init>()V

    .line 1625
    const-string v15, "width"

    invoke-virtual {v8}, Landroid/util/Size;->getWidth()I

    move-result v17

    move-object/from16 v18, v0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v10, v15, v0}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1626
    const-string v0, "height"

    invoke-virtual {v8}, Landroid/util/Size;->getHeight()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v10, v0, v8}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1627
    invoke-virtual {v2, v10}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v7, v7, 0x1

    move-object/from16 v0, v18

    goto :goto_1ec

    .line 1629
    :cond_219
    const-string v0, "preview_size_list"

    invoke-virtual {v13, v0, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_221

    :cond_21f
    move-object/from16 v21, v8

    .line 1633
    :cond_221
    :goto_221
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_AVAILABLE_TARGET_FPS_RANGES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v14, v0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/util/Range;

    .line 1634
    sget-object v2, Lcom/ss/android/ttvecamera/cameracapabilitycollector/TECameraCapabilityCollector$Capability;->FPS_RANGE:Lcom/ss/android/ttvecamera/cameracapabilitycollector/TECameraCapabilityCollector$Capability;

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_239

    .line 1635
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 1636
    invoke-interface {v4, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1638
    :cond_239
    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v12, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1639
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    if-eqz v0, :cond_27c

    .line 1640
    array-length v3, v0

    if-lez v3, :cond_27c

    .line 1641
    array-length v3, v0

    const/4 v7, 0x0

    :goto_252
    if-ge v7, v3, :cond_277

    aget-object v8, v0, v7

    .line 1642
    new-instance v10, Lorg/json/JSONObject;

    invoke-direct {v10}, Lorg/json/JSONObject;-><init>()V

    .line 1643
    const-string v15, "fps_min"

    move-object/from16 v17, v0

    invoke-virtual {v8}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v0

    invoke-virtual {v10, v15, v0}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1644
    const-string v0, "fps_high"

    invoke-virtual {v8}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v8

    invoke-virtual {v10, v0, v8}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1645
    invoke-virtual {v2, v10}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v7, v7, 0x1

    move-object/from16 v0, v17

    goto :goto_252

    .line 1647
    :cond_277
    const-string v0, "fps_range_List"

    invoke-virtual {v13, v0, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1651
    :cond_27c
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->LENS_INFO_AVAILABLE_APERTURES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v14, v0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    .line 1652
    sget-object v2, Lcom/ss/android/ttvecamera/cameracapabilitycollector/TECameraCapabilityCollector$Capability;->SUPPORT_APERTURES:Lcom/ss/android/ttvecamera/cameracapabilitycollector/TECameraCapabilityCollector$Capability;

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_294

    .line 1653
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 1654
    invoke-interface {v4, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1656
    :cond_294
    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v12, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1657
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    if-eqz v0, :cond_2bd

    .line 1658
    array-length v3, v0

    if-lez v3, :cond_2bd

    .line 1659
    array-length v3, v0

    const/4 v7, 0x0

    :goto_2ad
    if-ge v7, v3, :cond_2b8

    aget v8, v0, v7

    float-to-double v14, v8

    .line 1660
    invoke-virtual {v2, v14, v15}, Lorg/json/JSONArray;->put(D)Lorg/json/JSONArray;

    add-int/lit8 v7, v7, 0x1

    goto :goto_2ad

    .line 1662
    :cond_2b8
    const-string v0, "support_apertures"

    invoke-virtual {v13, v0, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1667
    :cond_2bd
    iget-object v0, v1, Lcom/ss/android/ttvecamera/TECamera2;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    invoke-virtual {v0, v12}, Landroid/hardware/camera2/CameraManager;->getCameraExtensionCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraExtensionCharacteristics;

    move-result-object v0

    if-eqz v0, :cond_310

    .line 1669
    invoke-virtual {v0}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->getSupportedExtensions()Ljava/util/List;

    move-result-object v0

    .line 1670
    sget-object v2, Lcom/ss/android/ttvecamera/cameracapabilitycollector/TECameraCapabilityCollector$Capability;->SUPPORT_EXTENSIONS:Lcom/ss/android/ttvecamera/cameracapabilitycollector/TECameraCapabilityCollector$Capability;

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_2d9

    .line 1671
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 1672
    invoke-interface {v4, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2d9
    if-eqz v0, :cond_310

    .line 1675
    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v12, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1676
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 1677
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_310

    .line 1678
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2f7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_30b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 1679
    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    goto :goto_2f7

    .line 1681
    :cond_30b
    const-string v0, "support_extensions"

    invoke-virtual {v13, v0, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1686
    :cond_310
    invoke-virtual {v5, v13}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :goto_313
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v0, v16

    move-wide/from16 v2, v19

    move-object/from16 v8, v21

    const/4 v7, 0x1

    goto/16 :goto_61

    :cond_31e
    move-wide/from16 v19, v2

    .line 1688
    iget-object v0, v1, Lcom/ss/android/ttvecamera/TECameraBase;->mCameraCapabilitiesMap:Lorg/json/JSONObject;

    const-string v2, "camera_feature"

    invoke-virtual {v0, v2, v5}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1691
    iget-object v0, v1, Lcom/ss/android/ttvecamera/TECamera2;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraManager;->getConcurrentCameraIds()Ljava/util/Set;

    move-result-object v0

    .line 1692
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    if-eqz v0, :cond_3cf

    .line 1694
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_338
    :goto_338
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_386

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    .line 1697
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const/4 v7, 0x0

    const/4 v8, 0x0

    :cond_34a
    :goto_34a
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_37e

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 1698
    iget-object v10, v1, Lcom/ss/android/ttvecamera/TECamera2;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    invoke-virtual {v10, v9}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v9

    if-nez v9, :cond_35f

    goto :goto_34a

    .line 1702
    :cond_35f
    sget-object v10, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v9, v10}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_370

    const/4 v8, 0x1

    goto :goto_34a

    .line 1704
    :cond_370
    invoke-virtual {v9, v10}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-nez v9, :cond_34a

    const/4 v7, 0x1

    goto :goto_34a

    :cond_37e
    if-eqz v7, :cond_338

    if-eqz v8, :cond_338

    .line 1709
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_338

    .line 1712
    :cond_386
    sget-object v0, Lcom/ss/android/ttvecamera/cameracapabilitycollector/TECameraCapabilityCollector$Capability;->FRONT_BACK_MULTICAM_COMBOS:Lcom/ss/android/ttvecamera/cameracapabilitycollector/TECameraCapabilityCollector$Capability;

    .line 1713
    iget-object v3, v1, Lcom/ss/android/ttvecamera/TECameraBase;->mCapabilityCollector:Lcom/ss/android/ttvecamera/cameracapabilitycollector/TECameraCapabilityCollector;

    new-instance v5, Lcom/ss/android/ttvecamera/cameracapabilitycollector/TECameraCapabilityCollector$CapabilityDescription;

    .line 1714
    invoke-virtual {v3, v0}, Lcom/ss/android/ttvecamera/cameracapabilitycollector/TECameraCapabilityCollector;->getDataType(Lcom/ss/android/ttvecamera/cameracapabilitycollector/TECameraCapabilityCollector$Capability;)Lcom/ss/android/ttvecamera/cameracapabilitycollector/TECameraCapabilityCollector$DataType;

    move-result-object v7

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v0, v7, v8}, Lcom/ss/android/ttvecamera/cameracapabilitycollector/TECameraCapabilityCollector$CapabilityDescription;-><init>(Lcom/ss/android/ttvecamera/cameracapabilitycollector/TECameraCapabilityCollector$Capability;Lcom/ss/android/ttvecamera/cameracapabilitycollector/TECameraCapabilityCollector$DataType;Ljava/lang/Object;)V

    .line 1713
    invoke-virtual {v3, v5}, Lcom/ss/android/ttvecamera/cameracapabilitycollector/TECameraCapabilityCollector;->addCapability(Lcom/ss/android/ttvecamera/cameracapabilitycollector/TECameraCapabilityCollector$CapabilityDescription;)V

    .line 1715
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 1716
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_3cf

    .line 1717
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v10, 0x0

    :goto_3aa
    if-ge v10, v3, :cond_3b8

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v10, v10, 0x1

    check-cast v5, Ljava/util/Set;

    .line 1718
    invoke-virtual {v0, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_3aa

    .line 1720
    :cond_3b8
    iget-object v2, v1, Lcom/ss/android/ttvecamera/TECameraBase;->mCameraCapabilitiesMap:Lorg/json/JSONObject;

    const-string v3, "camera_front_back_multicam_combos"

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3bf
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_f9 .. :try_end_3bf} :catch_119
    .catch Lorg/json/JSONException; {:try_start_f9 .. :try_end_3bf} :catch_116

    goto :goto_3cf

    .line 1728
    :goto_3c0
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_3cf

    .line 1725
    :goto_3c4
    const-string v2, "Get Camera Capbilities failed!"

    invoke-static {v6, v2}, Lcom/ss/android/ttvecamera/TELogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1726
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_3cf

    :cond_3cd
    move-wide/from16 v19, v2

    .line 1732
    :cond_3cf
    :goto_3cf
    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3d7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_400

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1733
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ss/android/ttvecamera/cameracapabilitycollector/TECameraCapabilityCollector$Capability;

    .line 1734
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    .line 1735
    iget-object v4, v1, Lcom/ss/android/ttvecamera/TECameraBase;->mCapabilityCollector:Lcom/ss/android/ttvecamera/cameracapabilitycollector/TECameraCapabilityCollector;

    new-instance v5, Lcom/ss/android/ttvecamera/cameracapabilitycollector/TECameraCapabilityCollector$CapabilityDescription;

    invoke-virtual {v4, v3}, Lcom/ss/android/ttvecamera/cameracapabilitycollector/TECameraCapabilityCollector;->getDataType(Lcom/ss/android/ttvecamera/cameracapabilitycollector/TECameraCapabilityCollector$Capability;)Lcom/ss/android/ttvecamera/cameracapabilitycollector/TECameraCapabilityCollector$DataType;

    move-result-object v7

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v5, v3, v7, v2}, Lcom/ss/android/ttvecamera/cameracapabilitycollector/TECameraCapabilityCollector$CapabilityDescription;-><init>(Lcom/ss/android/ttvecamera/cameracapabilitycollector/TECameraCapabilityCollector$Capability;Lcom/ss/android/ttvecamera/cameracapabilitycollector/TECameraCapabilityCollector$DataType;Ljava/lang/Object;)V

    invoke-virtual {v4, v5}, Lcom/ss/android/ttvecamera/cameracapabilitycollector/TECameraCapabilityCollector;->addCapability(Lcom/ss/android/ttvecamera/cameracapabilitycollector/TECameraCapabilityCollector$CapabilityDescription;)V

    goto :goto_3d7

    .line 1738
    :cond_400
    iget-object v0, v1, Lcom/ss/android/ttvecamera/TECameraBase;->mCapabilityCollector:Lcom/ss/android/ttvecamera/cameracapabilitycollector/TECameraCapabilityCollector;

    invoke-virtual {v0}, Lcom/ss/android/ttvecamera/cameracapabilitycollector/TECameraCapabilityCollector;->upload()V

    .line 1739
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v2, v2, v19

    .line 1740
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "collectCameraCapabilities consume: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/ss/android/ttvecamera/TELogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1741
    const-string v0, "te_record_camera_collect_capbilities_cost"

    invoke-static {v0, v2, v3}, Lcom/ss/android/ttvecamera/TECameraMonitor;->perfLong(Ljava/lang/String;J)V

    const/4 v12, 0x1

    .line 1742
    iput-boolean v12, v1, Lcom/ss/android/ttvecamera/TECameraBase;->mHaveCollectedCapbilities:Z

    .line 1744
    invoke-static {}, Lcom/ss/android/ttvecamera/TETraceUtils;->endSection()V

    return-void
.end method

.method protected createVideoMode()V
    .registers 5

    .line 452
    const-string v0, "TECamera2"

    const-string v1, "create TEVideo2Mode"

    invoke-static {v0, v1}, Lcom/ss/android/ttvecamera/TELogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 453
    new-instance v0, Lcom/ss/android/ttvecamera/camera2/TEVideo2Mode;

    iget-object v1, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/ss/android/ttvecamera/TECamera2;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    iget-object v3, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/ss/android/ttvecamera/camera2/TEVideo2Mode;-><init>(Lcom/ss/android/ttvecamera/TECamera2;Landroid/content/Context;Landroid/hardware/camera2/CameraManager;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/ss/android/ttvecamera/TECamera2;->mMode:Lcom/ss/android/ttvecamera/framework/TECameraModeBase;

    return-void
.end method

.method public destroy()V
    .registers 1

    .line 683
    invoke-super {p0}, Lcom/ss/android/ttvecamera/TECameraBase;->destroy()V

    .line 684
    invoke-virtual {p0}, Lcom/ss/android/ttvecamera/TECamera2;->removeFocusSettings()V

    .line 685
    iget-object p0, p0, Lcom/ss/android/ttvecamera/TECamera2;->mGyro:Lcom/ss/android/ttvecamera/focusmanager/Gyro;

    invoke-virtual {p0}, Lcom/ss/android/ttvecamera/focusmanager/Gyro;->destroy()V

    return-void
.end method

.method public enableCaf()V
    .registers 5

    .line 938
    iget v0, p0, Lcom/ss/android/ttvecamera/TECamera2;->mSessionState:I

    const/4 v1, 0x1

    const-string v2, "TECamera2"

    if-ne v0, v1, :cond_d

    .line 939
    const-string p0, "Camera is opening, ignore cancelAutoFocus operation."

    invoke-static {v2, p0}, Lcom/ss/android/ttvecamera/TELogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 942
    :cond_d
    invoke-virtual {p0}, Lcom/ss/android/ttvecamera/TECamera2;->_isDeviceReady()Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECamera2;->mMode:Lcom/ss/android/ttvecamera/framework/TECameraModeBase;

    if-nez v0, :cond_18

    goto :goto_1c

    .line 949
    :cond_18
    invoke-virtual {v0}, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->enableCaf()I

    return-void

    .line 944
    :cond_1c
    :goto_1c
    const-string v0, "enableCaf : camera is null."

    invoke-static {v2, v0}, Lcom/ss/android/ttvecamera/TELogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 945
    iget-object v1, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mCameraEvents:Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;

    iget-object v2, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget v2, v2, Lcom/ss/android/ttvecamera/TECameraSettings;->mCameraType:I

    const/16 v3, -0x1b7

    iget-object p0, p0, Lcom/ss/android/ttvecamera/TECamera2;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    invoke-interface {v1, v2, v3, v0, p0}, Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;->onCameraError(IILjava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method protected enableMulticamZoom(Z)V
    .registers 2

    .line 1765
    iget-object p0, p0, Lcom/ss/android/ttvecamera/TECamera2;->mMode:Lcom/ss/android/ttvecamera/framework/TECameraModeBase;

    if-nez p0, :cond_c

    .line 1766
    const-string p0, "TECamera2"

    const-string p1, "enableMulticamZoom failed, mode is null..."

    invoke-static {p0, p1}, Lcom/ss/android/ttvecamera/TELogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1769
    :cond_c
    invoke-virtual {p0, p1}, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->enableMulticamZoom(Z)V

    return-void
.end method

.method protected fillFeatures()Landroid/os/Bundle;
    .registers 5

    .line 569
    const-string v0, "TECamera2-fillFeatures"

    invoke-static {v0}, Lcom/ss/android/ttvecamera/TETraceUtils;->beginSection(Ljava/lang/String;)V

    .line 570
    invoke-super {p0}, Lcom/ss/android/ttvecamera/TECameraBase;->fillFeatures()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_59

    .line 572
    invoke-virtual {p0}, Lcom/ss/android/ttvecamera/TECamera2;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    const-string v2, "support_preview_sizes"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 573
    invoke-virtual {p0}, Lcom/ss/android/ttvecamera/TECamera2;->getSupportedPictureSizes()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    const-string v2, "support_picture_sizes"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 574
    invoke-direct {p0}, Lcom/ss/android/ttvecamera/TECamera2;->getSupportedFpsRanges()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    const-string v2, "camera_support_fps_range"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 575
    iget-object v1, p0, Lcom/ss/android/ttvecamera/TECamera2;->mMode:Lcom/ss/android/ttvecamera/framework/TECameraModeBase;

    if-eqz v1, :cond_50

    iget-object v1, v1, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    if-eqz v1, :cond_50

    iget-object v2, p0, Lcom/ss/android/ttvecamera/TECamera2;->mDeviceProxy:Lcom/ss/android/ttvecamera/hardware/TECameraHardware2Proxy;

    if-eqz v2, :cond_50

    .line 576
    const-string v3, "device_support_multicamera_zoom"

    .line 577
    invoke-virtual {v2, v1}, Lcom/ss/android/ttvecamera/hardware/TECameraHardware2Proxy;->isLogicalMultiCamSupported(Landroid/hardware/camera2/CameraCharacteristics;)Z

    move-result v1

    .line 576
    invoke-virtual {v0, v3, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 578
    iget-object v1, p0, Lcom/ss/android/ttvecamera/TECamera2;->mDeviceProxy:Lcom/ss/android/ttvecamera/hardware/TECameraHardware2Proxy;

    iget-object v2, p0, Lcom/ss/android/ttvecamera/TECamera2;->mMode:Lcom/ss/android/ttvecamera/framework/TECameraModeBase;

    iget-object v2, v2, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {v1, v2}, Lcom/ss/android/ttvecamera/hardware/TECameraHardware2Proxy;->isTorchSupported(Landroid/hardware/camera2/CameraCharacteristics;)Z

    move-result v1

    const-string v2, "camera_torch_supported"

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 580
    :cond_50
    const-string v1, "device_support_wide_angle_mode"

    invoke-virtual {p0}, Lcom/ss/android/ttvecamera/TECamera2;->isSupportWideAngle()Z

    move-result p0

    invoke-virtual {v0, v1, p0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 582
    :cond_59
    invoke-static {}, Lcom/ss/android/ttvecamera/TETraceUtils;->endSection()V

    return-object v0
.end method

.method public focusAtPoint(Lcom/ss/android/ttvecamera/TEFocusSettings;)V
    .registers 5

    .line 888
    const-string v0, "setFocusAreas..."

    const-string v1, "TECamera2"

    invoke-static {v1, v0}, Lcom/ss/android/ttvecamera/TELogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 890
    iget v0, p0, Lcom/ss/android/ttvecamera/TECamera2;->mSessionState:I

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1e

    .line 892
    const-string v0, "Camera is not previewing, ignore setFocusAreas operation."

    invoke-static {v1, v0}, Lcom/ss/android/ttvecamera/TELogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 893
    invoke-virtual {p1}, Lcom/ss/android/ttvecamera/TEFocusSettings;->getFocusCallback()Lcom/ss/android/ttvecamera/TEFocusSettings$ITEFocusCallback;

    move-result-object p1

    iget-object p0, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget p0, p0, Lcom/ss/android/ttvecamera/TECameraSettings;->mFacing:I

    const/4 v1, 0x0

    invoke-interface {p1, v1, p0, v0}, Lcom/ss/android/ttvecamera/TEFocusSettings$ITEFocusCallback;->onFocus(IILjava/lang/String;)V

    return-void

    .line 897
    :cond_1e
    invoke-virtual {p0}, Lcom/ss/android/ttvecamera/TECamera2;->_isDeviceReady()Z

    move-result v0

    if-eqz v0, :cond_3e

    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECamera2;->mMode:Lcom/ss/android/ttvecamera/framework/TECameraModeBase;

    if-nez v0, :cond_29

    goto :goto_3e

    .line 905
    :cond_29
    invoke-virtual {v0, p1}, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->focusAtPoint(Lcom/ss/android/ttvecamera/TEFocusSettings;)I

    move-result p1

    if-eqz p1, :cond_3d

    .line 908
    const-string v0, "focusAtPoint : something wrong."

    invoke-static {v1, v0}, Lcom/ss/android/ttvecamera/TELogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 909
    iget-object v1, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mCameraEvents:Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;

    const/16 v2, -0x19b

    iget-object p0, p0, Lcom/ss/android/ttvecamera/TECamera2;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    invoke-interface {v1, v2, p1, v0, p0}, Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;->onCameraInfo(IILjava/lang/String;Ljava/lang/Object;)V

    :cond_3d
    return-void

    .line 899
    :cond_3e
    :goto_3e
    const-string v0, "focusAtPoint : camera is null."

    invoke-static {v1, v0}, Lcom/ss/android/ttvecamera/TELogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 900
    invoke-virtual {p1}, Lcom/ss/android/ttvecamera/TEFocusSettings;->getFocusCallback()Lcom/ss/android/ttvecamera/TEFocusSettings$ITEFocusCallback;

    move-result-object p1

    iget-object v1, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget v1, v1, Lcom/ss/android/ttvecamera/TECameraSettings;->mFacing:I

    const/16 v2, -0x1b7

    invoke-interface {p1, v2, v1, v0}, Lcom/ss/android/ttvecamera/TEFocusSettings$ITEFocusCallback;->onFocus(IILjava/lang/String;)V

    .line 901
    iget-object p1, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mCameraEvents:Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;

    iget-object v1, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget v1, v1, Lcom/ss/android/ttvecamera/TECameraSettings;->mCameraType:I

    iget-object p0, p0, Lcom/ss/android/ttvecamera/TECamera2;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    invoke-interface {p1, v1, v2, v0, p0}, Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;->onCameraError(IILjava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public forceCloseCamera(Lcom/bytedance/bpea/basics/Cert;)V
    .registers 4

    .line 673
    invoke-super {p0, p1}, Lcom/ss/android/ttvecamera/TECameraBase;->forceCloseCamera(Lcom/bytedance/bpea/basics/Cert;)V

    .line 674
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "force close camera: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ss/android/ttvecamera/TECamera2;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TECamera2"

    invoke-static {v1, v0}, Lcom/ss/android/ttvecamera/TELogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 675
    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECamera2;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    if-eqz v0, :cond_27

    .line 676
    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECamera2;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    invoke-static {p1, v0}, Lcom/ss/android/ttvecamera/TECamera2PolicyAdapter;->closeCamera(Lcom/bytedance/bpea/basics/Cert;Landroid/hardware/camera2/CameraDevice;)V

    const/4 p1, 0x0

    .line 677
    iput-object p1, p0, Lcom/ss/android/ttvecamera/TECamera2;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    :cond_27
    return-void
.end method

.method public getApertureRange()[F
    .registers 6

    .line 1230
    const-string v0, "getApertureRange..."

    const-string v1, "TECamera2"

    invoke-static {v1, v0}, Lcom/ss/android/ttvecamera/TELogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1231
    iget v0, p0, Lcom/ss/android/ttvecamera/TECamera2;->mSessionState:I

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-ne v0, v2, :cond_18

    .line 1232
    const-string p0, "Camera is opening, ignore getApertureRange operation."

    invoke-static {v1, p0}, Lcom/ss/android/ttvecamera/TELogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1233
    new-array p0, v3, [F

    fill-array-data p0, :array_40

    return-object p0

    .line 1236
    :cond_18
    invoke-virtual {p0}, Lcom/ss/android/ttvecamera/TECamera2;->_isDeviceReady()Z

    move-result v0

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECamera2;->mMode:Lcom/ss/android/ttvecamera/framework/TECameraModeBase;

    if-nez v0, :cond_23

    goto :goto_28

    .line 1243
    :cond_23
    invoke-virtual {v0}, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->getApertureRange()[F

    move-result-object p0

    return-object p0

    .line 1238
    :cond_28
    :goto_28
    const-string v0, "getApertureRange : camera is null."

    invoke-static {v1, v0}, Lcom/ss/android/ttvecamera/TELogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1239
    iget-object v1, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mCameraEvents:Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;

    iget-object v2, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget v2, v2, Lcom/ss/android/ttvecamera/TECameraSettings;->mCameraType:I

    const/16 v4, -0x1b7

    iget-object p0, p0, Lcom/ss/android/ttvecamera/TECamera2;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    invoke-interface {v1, v2, v4, v0, p0}, Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;->onCameraError(IILjava/lang/String;Ljava/lang/Object;)V

    .line 1240
    new-array p0, v3, [F

    fill-array-data p0, :array_48

    return-object p0

    :array_40
    .array-data 4
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
    .end array-data

    :array_48
    .array-data 4
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
    .end array-data
.end method

.method public getBestPreviewSize(FLcom/ss/android/ttvecamera/TEFrameSizei;)Lcom/ss/android/ttvecamera/TEFrameSizei;
    .registers 11

    .line 1448
    iget v0, p0, Lcom/ss/android/ttvecamera/TECamera2;->mSessionState:I

    const-string v1, "TECamera2"

    const/4 v2, 0x0

    if-eqz v0, :cond_6a

    iget v0, p0, Lcom/ss/android/ttvecamera/TECamera2;->mSessionState:I

    const/4 v3, 0x1

    if-ne v0, v3, :cond_d

    goto :goto_6a

    .line 1453
    :cond_d
    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECamera2;->mMode:Lcom/ss/android/ttvecamera/framework/TECameraModeBase;

    iget-object v3, v0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mStreamConfigurationMap:Landroid/hardware/camera2/params/StreamConfigurationMap;

    if-nez v3, :cond_1f

    .line 1454
    iget-object v3, v0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v4, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_STREAM_CONFIGURATION_MAP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v3, v4}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/camera2/params/StreamConfigurationMap;

    iput-object v3, v0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mStreamConfigurationMap:Landroid/hardware/camera2/params/StreamConfigurationMap;

    .line 1457
    :cond_1f
    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECamera2;->mMode:Lcom/ss/android/ttvecamera/framework/TECameraModeBase;

    iget-object v0, v0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mStreamConfigurationMap:Landroid/hardware/camera2/params/StreamConfigurationMap;

    .line 1459
    const-class v3, Landroid/graphics/SurfaceTexture;

    invoke-static {v3}, Landroid/hardware/camera2/params/StreamConfigurationMap;->isOutputSupportedFor(Ljava/lang/Class;)Z

    move-result v4

    if-nez v4, :cond_31

    .line 1460
    const-string p0, "Output is not supported, ignore getBestPreviewSize operation."

    invoke-static {v1, p0}, Lcom/ss/android/ttvecamera/TELogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    .line 1463
    :cond_31
    invoke-virtual {v0, v3}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputSizes(Ljava/lang/Class;)[Landroid/util/Size;

    move-result-object v0

    .line 1464
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1465
    array-length v3, v0

    const/4 v4, 0x0

    :goto_3c
    if-ge v4, v3, :cond_53

    aget-object v5, v0, v4

    .line 1466
    new-instance v6, Lcom/ss/android/ttvecamera/TEFrameSizei;

    invoke-virtual {v5}, Landroid/util/Size;->getWidth()I

    move-result v7

    invoke-virtual {v5}, Landroid/util/Size;->getHeight()I

    move-result v5

    invoke-direct {v6, v7, v5}, Lcom/ss/android/ttvecamera/TEFrameSizei;-><init>(II)V

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_3c

    .line 1470
    :cond_53
    iget-object p0, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mPreviewSizeCallback:Lcom/ss/android/ttvecamera/TECameraBase$PreviewSizeCallBack;

    if-eqz p0, :cond_5b

    .line 1471
    invoke-interface {p0, v1}, Lcom/ss/android/ttvecamera/TECameraBase$PreviewSizeCallBack;->getPreviewSize(Ljava/util/List;)Lcom/ss/android/ttvecamera/TEFrameSizei;

    move-result-object v2

    :cond_5b
    if-nez v2, :cond_69

    if-eqz p2, :cond_64

    .line 1476
    invoke-static {v1, p2}, Lcom/ss/android/ttvecamera/TECameraUtils;->calcPreviewSize(Ljava/util/List;Lcom/ss/android/ttvecamera/TEFrameSizei;)Lcom/ss/android/ttvecamera/TEFrameSizei;

    move-result-object p0

    return-object p0

    .line 1478
    :cond_64
    invoke-static {v1, p1}, Lcom/ss/android/ttvecamera/TECameraUtils;->calcPreviewSizeByRadio(Ljava/util/List;F)Lcom/ss/android/ttvecamera/TEFrameSizei;

    move-result-object p0

    return-object p0

    :cond_69
    return-object v2

    .line 1449
    :cond_6a
    :goto_6a
    const-string p0, "Camera is not opened, ignore getBestPreviewSize operation."

    invoke-static {v1, p0}, Lcom/ss/android/ttvecamera/TELogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2
.end method

.method public getCameraCapbilitiesForBytebench()Lorg/json/JSONObject;
    .registers 1

    .line 1539
    iget-object p0, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mCameraCapabilitiesMap:Lorg/json/JSONObject;

    return-object p0
.end method

.method public getCameraCaptureSize()[I
    .registers 1

    .line 744
    iget-object p0, p0, Lcom/ss/android/ttvecamera/TECamera2;->mMode:Lcom/ss/android/ttvecamera/framework/TECameraModeBase;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return-object p0

    .line 748
    :cond_6
    invoke-virtual {p0}, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->getCameraCaptureSize()[I

    move-result-object p0

    return-object p0
.end method

.method public getCameraType()I
    .registers 1

    const/4 p0, 0x2

    return p0
.end method

.method public getFOV()[F
    .registers 6

    .line 848
    const-string v0, "getVFOV..."

    const-string v1, "TECamera2"

    invoke-static {v1, v0}, Lcom/ss/android/ttvecamera/TELogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 849
    iget v0, p0, Lcom/ss/android/ttvecamera/TECamera2;->mSessionState:I

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-ne v0, v2, :cond_18

    .line 850
    const-string p0, "Camera is opening, ignore getVFOV operation."

    invoke-static {v1, p0}, Lcom/ss/android/ttvecamera/TELogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 851
    new-array p0, v3, [F

    fill-array-data p0, :array_40

    return-object p0

    .line 854
    :cond_18
    invoke-virtual {p0}, Lcom/ss/android/ttvecamera/TECamera2;->_isDeviceReady()Z

    move-result v0

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECamera2;->mMode:Lcom/ss/android/ttvecamera/framework/TECameraModeBase;

    if-nez v0, :cond_23

    goto :goto_28

    .line 861
    :cond_23
    invoke-virtual {v0}, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->getFOV()[F

    move-result-object p0

    return-object p0

    .line 856
    :cond_28
    :goto_28
    const-string v0, "getFOV : camera is null."

    invoke-static {v1, v0}, Lcom/ss/android/ttvecamera/TELogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 857
    iget-object v1, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mCameraEvents:Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;

    iget-object v2, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget v2, v2, Lcom/ss/android/ttvecamera/TECameraSettings;->mCameraType:I

    const/16 v4, -0x1b7

    iget-object p0, p0, Lcom/ss/android/ttvecamera/TECamera2;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    invoke-interface {v1, v2, v4, v0, p0}, Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;->onCameraError(IILjava/lang/String;Ljava/lang/Object;)V

    .line 858
    new-array p0, v3, [F

    fill-array-data p0, :array_48

    return-object p0

    :array_40
    .array-data 4
        -0x40000000    # -2.0f
        -0x40000000    # -2.0f
    .end array-data

    :array_48
    .array-data 4
        -0x40000000    # -2.0f
        -0x40000000    # -2.0f
    .end array-data
.end method

.method public getFlashMode()I
    .registers 1

    .line 784
    iget-object p0, p0, Lcom/ss/android/ttvecamera/TECamera2;->mMode:Lcom/ss/android/ttvecamera/framework/TECameraModeBase;

    if-nez p0, :cond_6

    const/4 p0, -0x1

    return p0

    .line 788
    :cond_6
    invoke-virtual {p0}, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->getFlashMode()I

    move-result p0

    return p0
.end method

.method public getFrameOrientation()I
    .registers 5

    .line 793
    iget v0, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mDeviceRotation:I

    if-gez v0, :cond_a

    .line 795
    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/ss/android/ttvecamera/TECameraUtils;->getDeviceOrientation(Landroid/content/Context;)I

    move-result v0

    .line 798
    :cond_a
    iget v1, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mNewFacing:I

    iput v1, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mFacing:I

    .line 799
    iget-object v1, p0, Lcom/ss/android/ttvecamera/TECamera2;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    if-eqz v1, :cond_1f

    .line 800
    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_ORIENTATION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v1, v2}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_23

    .line 802
    :cond_1f
    iget-object v1, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget v1, v1, Lcom/ss/android/ttvecamera/TECameraSettings;->mRotation:I

    .line 804
    :goto_23
    iget v2, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mFacing:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_32

    add-int/2addr v1, v0

    .line 805
    rem-int/lit16 v1, v1, 0x168

    rsub-int v0, v1, 0x21c

    .line 806
    rem-int/lit16 v0, v0, 0x168

    iput v0, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mCameraRotation:I

    goto :goto_39

    :cond_32
    sub-int/2addr v1, v0

    add-int/lit16 v1, v1, 0x168

    .line 808
    rem-int/lit16 v1, v1, 0x168

    iput v1, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mCameraRotation:I

    .line 811
    :goto_39
    iget p0, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mCameraRotation:I

    return p0
.end method

.method public getGyro()Lcom/ss/android/ttvecamera/focusmanager/Gyro;
    .registers 1

    .line 1799
    iget-object p0, p0, Lcom/ss/android/ttvecamera/TECamera2;->mGyro:Lcom/ss/android/ttvecamera/focusmanager/Gyro;

    return-object p0
.end method

.method public getISO()I
    .registers 6

    .line 1176
    const-string v0, "getISO..."

    const-string v1, "TECamera2"

    invoke-static {v1, v0}, Lcom/ss/android/ttvecamera/TELogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1177
    iget v0, p0, Lcom/ss/android/ttvecamera/TECamera2;->mSessionState:I

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-ne v0, v2, :cond_13

    .line 1178
    const-string p0, "Camera is opening, ignore setISO operation."

    invoke-static {v1, p0}, Lcom/ss/android/ttvecamera/TELogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    .line 1182
    :cond_13
    invoke-virtual {p0}, Lcom/ss/android/ttvecamera/TECamera2;->_isDeviceReady()Z

    move-result v0

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECamera2;->mMode:Lcom/ss/android/ttvecamera/framework/TECameraModeBase;

    if-nez v0, :cond_1e

    goto :goto_23

    .line 1189
    :cond_1e
    invoke-virtual {v0}, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->getISO()I

    move-result p0

    return p0

    .line 1184
    :cond_23
    :goto_23
    const-string v0, "getISO : camera is null."

    invoke-static {v1, v0}, Lcom/ss/android/ttvecamera/TELogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1185
    iget-object v1, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mCameraEvents:Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;

    iget-object v2, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget v2, v2, Lcom/ss/android/ttvecamera/TECameraSettings;->mCameraType:I

    const/16 v4, -0x1b7

    iget-object p0, p0, Lcom/ss/android/ttvecamera/TECamera2;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    invoke-interface {v1, v2, v4, v0, p0}, Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;->onCameraError(IILjava/lang/String;Ljava/lang/Object;)V

    return v3
.end method

.method public getISORange()[I
    .registers 6

    .line 1140
    const-string v0, "getISORange..."

    const-string v1, "TECamera2"

    invoke-static {v1, v0}, Lcom/ss/android/ttvecamera/TELogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1141
    iget v0, p0, Lcom/ss/android/ttvecamera/TECamera2;->mSessionState:I

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-ne v0, v2, :cond_17

    .line 1142
    const-string p0, "Camera is opening, ignore setWhileBalance operation."

    invoke-static {v1, p0}, Lcom/ss/android/ttvecamera/TELogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1143
    filled-new-array {v3, v3}, [I

    move-result-object p0

    return-object p0

    .line 1146
    :cond_17
    invoke-virtual {p0}, Lcom/ss/android/ttvecamera/TECamera2;->_isDeviceReady()Z

    move-result v0

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECamera2;->mMode:Lcom/ss/android/ttvecamera/framework/TECameraModeBase;

    if-nez v0, :cond_22

    goto :goto_27

    .line 1153
    :cond_22
    invoke-virtual {v0}, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->getISORange()[I

    move-result-object p0

    return-object p0

    .line 1148
    :cond_27
    :goto_27
    const-string v0, "setWhileBalance : camera is null."

    invoke-static {v1, v0}, Lcom/ss/android/ttvecamera/TELogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1149
    iget-object v1, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mCameraEvents:Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;

    iget-object v2, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget v2, v2, Lcom/ss/android/ttvecamera/TECameraSettings;->mCameraType:I

    const/16 v4, -0x1b7

    iget-object p0, p0, Lcom/ss/android/ttvecamera/TECamera2;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    invoke-interface {v1, v2, v4, v0, p0}, Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;->onCameraError(IILjava/lang/String;Ljava/lang/Object;)V

    .line 1150
    filled-new-array {v3, v3}, [I

    move-result-object p0

    return-object p0
.end method

.method public getManualFocusAbility()F
    .registers 6

    .line 954
    iget v0, p0, Lcom/ss/android/ttvecamera/TECamera2;->mSessionState:I

    const/4 v1, 0x1

    const/high16 v2, -0x40800000    # -1.0f

    const-string v3, "TECamera2"

    if-ne v0, v1, :cond_f

    .line 955
    const-string p0, "Camera is opening, ignore getManualFocusAbility operation."

    invoke-static {v3, p0}, Lcom/ss/android/ttvecamera/TELogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 958
    :cond_f
    invoke-virtual {p0}, Lcom/ss/android/ttvecamera/TECamera2;->_isDeviceReady()Z

    move-result v0

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECamera2;->mMode:Lcom/ss/android/ttvecamera/framework/TECameraModeBase;

    if-nez v0, :cond_1a

    goto :goto_1f

    .line 965
    :cond_1a
    invoke-virtual {v0}, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->getManualFocusAbility()F

    move-result p0

    return p0

    .line 960
    :cond_1f
    :goto_1f
    const-string v0, "getManualFocusAbility : camera is null."

    invoke-static {v3, v0}, Lcom/ss/android/ttvecamera/TELogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 961
    iget-object v1, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mCameraEvents:Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;

    iget-object v3, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget v3, v3, Lcom/ss/android/ttvecamera/TECameraSettings;->mCameraType:I

    const/16 v4, -0x1b7

    iget-object p0, p0, Lcom/ss/android/ttvecamera/TECamera2;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    invoke-interface {v1, v3, v4, v0, p0}, Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;->onCameraError(IILjava/lang/String;Ljava/lang/Object;)V

    return v2
.end method

.method public getPictureSize()[I
    .registers 2

    .line 763
    iget-object p0, p0, Lcom/ss/android/ttvecamera/TECamera2;->mMode:Lcom/ss/android/ttvecamera/framework/TECameraModeBase;

    if-nez p0, :cond_d

    .line 764
    const-string p0, "TECamera2"

    const-string v0, "get picture size failed, no mode..."

    invoke-static {p0, v0}, Lcom/ss/android/ttvecamera/TELogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    .line 768
    :cond_d
    invoke-virtual {p0}, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->getPictureSize()[I

    move-result-object p0

    return-object p0
.end method

.method public getPreviewFps()[I
    .registers 1

    .line 736
    iget-object p0, p0, Lcom/ss/android/ttvecamera/TECamera2;->mMode:Lcom/ss/android/ttvecamera/framework/TECameraModeBase;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return-object p0

    .line 739
    :cond_6
    invoke-virtual {p0}, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->getPreviewFps()[I

    move-result-object p0

    return-object p0
.end method

.method public getSessionState()I
    .registers 1

    .line 1443
    iget p0, p0, Lcom/ss/android/ttvecamera/TECamera2;->mSessionState:I

    return p0
.end method

.method public getShutterTimeRange()[J
    .registers 6

    .line 1194
    const-string v0, "getShutterTimeRange..."

    const-string v1, "TECamera2"

    invoke-static {v1, v0}, Lcom/ss/android/ttvecamera/TELogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1195
    iget v0, p0, Lcom/ss/android/ttvecamera/TECamera2;->mSessionState:I

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-ne v0, v2, :cond_18

    .line 1196
    const-string p0, "Camera is opening, ignore getShutterTimeRange operation."

    invoke-static {v1, p0}, Lcom/ss/android/ttvecamera/TELogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1197
    new-array p0, v3, [J

    fill-array-data p0, :array_40

    return-object p0

    .line 1200
    :cond_18
    invoke-virtual {p0}, Lcom/ss/android/ttvecamera/TECamera2;->_isDeviceReady()Z

    move-result v0

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECamera2;->mMode:Lcom/ss/android/ttvecamera/framework/TECameraModeBase;

    if-nez v0, :cond_23

    goto :goto_28

    .line 1207
    :cond_23
    invoke-virtual {v0}, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->getShutterTimeRange()[J

    move-result-object p0

    return-object p0

    .line 1202
    :cond_28
    :goto_28
    const-string v0, "getShutterTimeRange : camera is null."

    invoke-static {v1, v0}, Lcom/ss/android/ttvecamera/TELogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1203
    iget-object v1, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mCameraEvents:Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;

    iget-object v2, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget v2, v2, Lcom/ss/android/ttvecamera/TECameraSettings;->mCameraType:I

    const/16 v4, -0x1b7

    iget-object p0, p0, Lcom/ss/android/ttvecamera/TECamera2;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    invoke-interface {v1, v2, v4, v0, p0}, Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;->onCameraError(IILjava/lang/String;Ljava/lang/Object;)V

    .line 1204
    new-array p0, v3, [J

    fill-array-data p0, :array_4c

    return-object p0

    :array_40
    .array-data 8
        -0x1
        -0x1
    .end array-data

    :array_4c
    .array-data 8
        -0x1
        -0x1
    .end array-data
.end method

.method public getSupportedPictureSizes()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/ss/android/ttvecamera/TEFrameSizei;",
            ">;"
        }
    .end annotation

    .line 1506
    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECamera2;->mMode:Lcom/ss/android/ttvecamera/framework/TECameraModeBase;

    if-eqz v0, :cond_2e

    iget-object v1, v0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    if-nez v1, :cond_9

    goto :goto_2e

    .line 1513
    :cond_9
    iget-object v2, p0, Lcom/ss/android/ttvecamera/TECamera2;->mSupportedPictureSizes:Ljava/util/List;

    if-nez v2, :cond_2b

    .line 1514
    iget-object v2, v0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mStreamConfigurationMap:Landroid/hardware/camera2/params/StreamConfigurationMap;

    if-nez v2, :cond_1b

    .line 1515
    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_STREAM_CONFIGURATION_MAP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v1, v2}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/camera2/params/StreamConfigurationMap;

    iput-object v1, v0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mStreamConfigurationMap:Landroid/hardware/camera2/params/StreamConfigurationMap;

    .line 1518
    :cond_1b
    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECamera2;->mMode:Lcom/ss/android/ttvecamera/framework/TECameraModeBase;

    iget-object v0, v0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mStreamConfigurationMap:Landroid/hardware/camera2/params/StreamConfigurationMap;

    const/16 v1, 0x100

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputSizes(I)[Landroid/util/Size;

    move-result-object v0

    .line 1519
    invoke-static {v0}, Lcom/ss/android/ttvecamera/TECameraUtils;->convertSizes([Landroid/util/Size;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/ttvecamera/TECamera2;->mSupportedPictureSizes:Ljava/util/List;

    .line 1522
    :cond_2b
    iget-object p0, p0, Lcom/ss/android/ttvecamera/TECamera2;->mSupportedPictureSizes:Ljava/util/List;

    return-object p0

    .line 1508
    :cond_2e
    :goto_2e
    const-string v0, "TECamera2"

    const-string v1, "getSupportedPictureSizes: camera is null."

    invoke-static {v0, v1}, Lcom/ss/android/ttvecamera/TELogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1509
    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mCameraEvents:Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;

    iget-object v2, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget v2, v2, Lcom/ss/android/ttvecamera/TECameraSettings;->mCameraType:I

    const/16 v3, -0x1b7

    iget-object p0, p0, Lcom/ss/android/ttvecamera/TECamera2;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    invoke-interface {v0, v2, v3, v1, p0}, Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;->onCameraError(IILjava/lang/String;Ljava/lang/Object;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public getSupportedPreviewSizes()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/ss/android/ttvecamera/TEFrameSizei;",
            ">;"
        }
    .end annotation

    .line 1486
    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECamera2;->mMode:Lcom/ss/android/ttvecamera/framework/TECameraModeBase;

    if-eqz v0, :cond_2e

    iget-object v1, v0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    if-nez v1, :cond_9

    goto :goto_2e

    .line 1493
    :cond_9
    iget-object v2, p0, Lcom/ss/android/ttvecamera/TECamera2;->mSupportedPreviewSizes:Ljava/util/List;

    if-nez v2, :cond_2b

    .line 1494
    iget-object v2, v0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mStreamConfigurationMap:Landroid/hardware/camera2/params/StreamConfigurationMap;

    if-nez v2, :cond_1b

    .line 1495
    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_STREAM_CONFIGURATION_MAP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v1, v2}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/camera2/params/StreamConfigurationMap;

    iput-object v1, v0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mStreamConfigurationMap:Landroid/hardware/camera2/params/StreamConfigurationMap;

    .line 1498
    :cond_1b
    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECamera2;->mMode:Lcom/ss/android/ttvecamera/framework/TECameraModeBase;

    iget-object v0, v0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mStreamConfigurationMap:Landroid/hardware/camera2/params/StreamConfigurationMap;

    const-class v1, Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputSizes(Ljava/lang/Class;)[Landroid/util/Size;

    move-result-object v0

    .line 1499
    invoke-static {v0}, Lcom/ss/android/ttvecamera/TECameraUtils;->convertSizes([Landroid/util/Size;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/ttvecamera/TECamera2;->mSupportedPreviewSizes:Ljava/util/List;

    .line 1502
    :cond_2b
    iget-object p0, p0, Lcom/ss/android/ttvecamera/TECamera2;->mSupportedPreviewSizes:Ljava/util/List;

    return-object p0

    .line 1488
    :cond_2e
    :goto_2e
    const-string v0, "TECamera2"

    const-string v1, "getSupportedPreviewSizes: camera is null."

    invoke-static {v0, v1}, Lcom/ss/android/ttvecamera/TELogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1489
    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mCameraEvents:Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;

    iget-object v2, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget v2, v2, Lcom/ss/android/ttvecamera/TECameraSettings;->mCameraType:I

    const/16 v3, -0x1b7

    iget-object p0, p0, Lcom/ss/android/ttvecamera/TECamera2;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    invoke-interface {v0, v2, v3, v1, p0}, Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;->onCameraError(IILjava/lang/String;Ljava/lang/Object;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public isAutoExposureLockSupported()Z
    .registers 6

    .line 1061
    const-string v0, "isAutoExposureLockSupported..."

    const-string v1, "TECamera2"

    invoke-static {v1, v0}, Lcom/ss/android/ttvecamera/TELogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1062
    iget v0, p0, Lcom/ss/android/ttvecamera/TECamera2;->mSessionState:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v2, :cond_13

    .line 1063
    const-string p0, "Camera is opening, ignore isAutoExposureLockSupported operation."

    invoke-static {v1, p0}, Lcom/ss/android/ttvecamera/TELogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    .line 1067
    :cond_13
    invoke-virtual {p0}, Lcom/ss/android/ttvecamera/TECamera2;->_isDeviceReady()Z

    move-result v0

    if-eqz v0, :cond_32

    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECamera2;->mMode:Lcom/ss/android/ttvecamera/framework/TECameraModeBase;

    if-eqz v0, :cond_32

    iget-object v0, v0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    if-nez v0, :cond_22

    goto :goto_32

    .line 1078
    :cond_22
    sget-object p0, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_LOCK_AVAILABLE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, p0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    if-nez p0, :cond_2d

    return v3

    .line 1083
    :cond_2d
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    .line 1069
    :cond_32
    :goto_32
    const-string v0, "isAutoExposureLockSupported : camera is null."

    invoke-static {v1, v0}, Lcom/ss/android/ttvecamera/TELogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1070
    iget-object v1, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mCameraEvents:Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;

    iget-object v2, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget v2, v2, Lcom/ss/android/ttvecamera/TECameraSettings;->mCameraType:I

    const/16 v4, -0x1b7

    iget-object p0, p0, Lcom/ss/android/ttvecamera/TECamera2;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    invoke-interface {v1, v2, v4, v0, p0}, Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;->onCameraError(IILjava/lang/String;Ljava/lang/Object;)V

    return v3
.end method

.method public isAutoFocusLockSupported()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public isSupportWhileBalance()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method protected isSupportWideAngle()Z
    .registers 1

    .line 587
    iget-object p0, p0, Lcom/ss/android/ttvecamera/TECamera2;->mDeviceProxy:Lcom/ss/android/ttvecamera/hardware/TECameraHardware2Proxy;

    if-eqz p0, :cond_c

    invoke-virtual {p0}, Lcom/ss/android/ttvecamera/hardware/TECameraHardware2Proxy;->isSupportWideAngle()Z

    move-result p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method public isSupportedExposureCompensation()Z
    .registers 6

    .line 986
    const-string v0, "isSupportedExposureCompensation..."

    const-string v1, "TECamera2"

    invoke-static {v1, v0}, Lcom/ss/android/ttvecamera/TELogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 987
    iget v0, p0, Lcom/ss/android/ttvecamera/TECamera2;->mSessionState:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v2, :cond_13

    .line 988
    const-string p0, "Camera is opening, ignore setExposureCompensation operation."

    invoke-static {v1, p0}, Lcom/ss/android/ttvecamera/TELogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    .line 991
    :cond_13
    invoke-virtual {p0}, Lcom/ss/android/ttvecamera/TECamera2;->_isDeviceReady()Z

    move-result v0

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECamera2;->mMode:Lcom/ss/android/ttvecamera/framework/TECameraModeBase;

    if-eqz v0, :cond_2b

    iget-object v0, v0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    if-nez v0, :cond_22

    goto :goto_2b

    .line 997
    :cond_22
    iget-object p0, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget-object p0, p0, Lcom/ss/android/ttvecamera/TECameraSettings;->mCameraECInfo:Lcom/ss/android/ttvecamera/TECameraSettings$ExposureCompensationInfo;

    invoke-virtual {p0}, Lcom/ss/android/ttvecamera/TECameraSettings$ExposureCompensationInfo;->isSupportExposureCompensation()Z

    move-result p0

    return p0

    .line 993
    :cond_2b
    :goto_2b
    const-string v0, "isSupportedExposureCompensation : camera is null."

    invoke-static {v1, v0}, Lcom/ss/android/ttvecamera/TELogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 994
    iget-object v1, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mCameraEvents:Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;

    iget-object v2, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget v2, v2, Lcom/ss/android/ttvecamera/TECameraSettings;->mCameraType:I

    const/16 v4, -0x1b7

    iget-object p0, p0, Lcom/ss/android/ttvecamera/TECamera2;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    invoke-interface {v1, v2, v4, v0, p0}, Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;->onCameraError(IILjava/lang/String;Ljava/lang/Object;)V

    return v3
.end method

.method public isTorchSupported()Z
    .registers 6

    .line 1267
    invoke-virtual {p0}, Lcom/ss/android/ttvecamera/TECamera2;->_isDeviceReady()Z

    move-result v0

    const-string v1, "TECamera2"

    const/4 v2, 0x0

    if-eqz v0, :cond_43

    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECamera2;->mMode:Lcom/ss/android/ttvecamera/framework/TECameraModeBase;

    if-eqz v0, :cond_43

    iget-object v0, v0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    if-nez v0, :cond_12

    goto :goto_43

    .line 1274
    :cond_12
    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECamera2;->mDeviceProxy:Lcom/ss/android/ttvecamera/hardware/TECameraHardware2Proxy;

    if-nez v0, :cond_2b

    .line 1275
    const-string v0, "DeviceProxy is null!"

    invoke-static {v1, v0}, Lcom/ss/android/ttvecamera/TELogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1276
    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mCameraEvents:Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;

    iget-object v1, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget v1, v1, Lcom/ss/android/ttvecamera/TECameraSettings;->mCameraType:I

    const/16 v3, -0x1a1

    iget-object p0, p0, Lcom/ss/android/ttvecamera/TECamera2;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    const-string v4, ""

    invoke-interface {v0, v1, v3, v4, p0}, Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;->onCameraError(IILjava/lang/String;Ljava/lang/Object;)V

    return v2

    .line 1279
    :cond_2b
    invoke-virtual {p0}, Lcom/ss/android/ttvecamera/TECameraBase;->getFeatures()Ljava/util/Map;

    move-result-object v0

    iget-object p0, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget-object p0, p0, Lcom/ss/android/ttvecamera/TECameraSettings;->mStrCameraID:Ljava/lang/String;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Bundle;

    if-nez p0, :cond_3c

    return v2

    .line 1283
    :cond_3c
    const-string v0, "camera_torch_supported"

    invoke-virtual {p0, v0, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0

    .line 1269
    :cond_43
    :goto_43
    const-string v0, "Query torch info failed, you must open camera first."

    invoke-static {v1, v0}, Lcom/ss/android/ttvecamera/TELogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1270
    iget-object v1, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mCameraEvents:Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;

    iget-object v3, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget v3, v3, Lcom/ss/android/ttvecamera/TECameraSettings;->mCameraType:I

    const/16 v4, -0x1b7

    iget-object p0, p0, Lcom/ss/android/ttvecamera/TECamera2;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    invoke-interface {v1, v3, v4, v0, p0}, Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;->onCameraError(IILjava/lang/String;Ljava/lang/Object;)V

    return v2
.end method

.method public open(IIIIIZLcom/bytedance/bpea/basics/Cert;)I
    .registers 9

    .line 210
    const-string p6, "TECamera2"

    const-string v0, "open..."

    invoke-static {p6, v0}, Lcom/ss/android/ttvecamera/TELogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    iget-object p6, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iput p1, p6, Lcom/ss/android/ttvecamera/TECameraSettings;->mFacing:I

    .line 212
    iget-object p1, p6, Lcom/ss/android/ttvecamera/TECameraSettings;->mPreviewSize:Lcom/ss/android/ttvecamera/TEFrameSizei;

    iput p2, p1, Lcom/ss/android/ttvecamera/TEFrameSizei;->width:I

    .line 213
    iput p3, p1, Lcom/ss/android/ttvecamera/TEFrameSizei;->height:I

    .line 214
    iget-object p1, p6, Lcom/ss/android/ttvecamera/TECameraSettings;->mFPSRange:Lcom/ss/android/ttvecamera/TEFrameRateRange;

    iput p4, p1, Lcom/ss/android/ttvecamera/TEFrameRateRange;->max:I

    .line 215
    iput p5, p6, Lcom/ss/android/ttvecamera/TECameraSettings;->mRequiredCameraLevel:I

    .line 218
    invoke-virtual {p0, p6, p7}, Lcom/ss/android/ttvecamera/TECamera2;->open(Lcom/ss/android/ttvecamera/TECameraSettings;Lcom/bytedance/bpea/basics/Cert;)I

    move-result p0

    return p0
.end method

.method public open(Lcom/ss/android/ttvecamera/TECameraSettings;Lcom/bytedance/bpea/basics/Cert;)I
    .registers 11

    .line 223
    const-string v0, "open: camera face = "

    const-string v1, "TECamera2"

    const-string v2, "TECamera2-open"

    invoke-static {v2}, Lcom/ss/android/ttvecamera/TETraceUtils;->beginSection(Ljava/lang/String;)V

    .line 224
    invoke-super {p0, p1, p2}, Lcom/ss/android/ttvecamera/TECameraBase;->open(Lcom/ss/android/ttvecamera/TECameraSettings;Lcom/bytedance/bpea/basics/Cert;)I

    .line 225
    iput-object p2, p0, Lcom/ss/android/ttvecamera/TECameraBase;->openPrivacyCert:Lcom/bytedance/bpea/basics/Cert;

    .line 226
    iput-object p1, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    .line 227
    iget v2, p0, Lcom/ss/android/ttvecamera/TECamera2;->mSessionState:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_18

    .line 228
    invoke-virtual {p0, p2}, Lcom/ss/android/ttvecamera/TECamera2;->_reset(Lcom/bytedance/bpea/basics/Cert;)V

    :cond_18
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 232
    :try_start_1a
    invoke-virtual {p0, v2}, Lcom/ss/android/ttvecamera/TECamera2;->updateSessionState(I)V

    .line 233
    invoke-virtual {p0, p2}, Lcom/ss/android/ttvecamera/TECamera2;->_open(Lcom/bytedance/bpea/basics/Cert;)I

    move-result v2

    .line 235
    iget v5, p1, Lcom/ss/android/ttvecamera/TECameraSettings;->mFacing:I

    iput v5, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mNewFacing:I

    .line 236
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mNewFacing:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", ret: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/ss/android/ttvecamera/TELogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x0

    if-eqz v2, :cond_5a

    .line 238
    invoke-virtual {p0, v5}, Lcom/ss/android/ttvecamera/TECamera2;->updateSessionState(I)V

    .line 239
    invoke-virtual {p0, p2}, Lcom/ss/android/ttvecamera/TECamera2;->_reset(Lcom/bytedance/bpea/basics/Cert;)V

    .line 240
    iget-object v5, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mCameraEvents:Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;

    if-eqz v5, :cond_58

    .line 241
    iget v6, p1, Lcom/ss/android/ttvecamera/TECameraSettings;->mCameraType:I

    iget-object v7, p0, Lcom/ss/android/ttvecamera/TECamera2;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    invoke-interface {v5, v6, v2, v4, v7}, Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;->onCameraOpened(IILcom/ss/android/ttvecamera/TECameraBase;Ljava/lang/Object;)V

    goto :goto_58

    :catchall_56
    move-exception v2

    goto :goto_62

    :cond_58
    :goto_58
    const/4 p0, -0x1

    return p0

    .line 245
    :cond_5a
    iget-boolean v2, p1, Lcom/ss/android/ttvecamera/TECameraSettings;->mIsCameraOpenCloseSync:Z

    iput-boolean v2, p0, Lcom/ss/android/ttvecamera/TECamera2;->mIsCameraOpenCloseSyncEnable:Z
    :try_end_5e
    .catchall {:try_start_1a .. :try_end_5e} :catchall_56

    .line 264
    invoke-static {}, Lcom/ss/android/ttvecamera/TETraceUtils;->endSection()V

    return v5

    .line 247
    :goto_62
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mNewFacing:I

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " failed: "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/ss/android/ttvecamera/TELogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    instance-of v0, v2, Landroid/hardware/camera2/CameraAccessException;

    if-eqz v0, :cond_8d

    .line 250
    check-cast v2, Landroid/hardware/camera2/CameraAccessException;

    invoke-direct {p0, v2}, Lcom/ss/android/ttvecamera/TECamera2;->convertExeptionToErrCode(Landroid/hardware/camera2/CameraAccessException;)I

    move-result v0

    goto :goto_9d

    .line 251
    :cond_8d
    instance-of v0, v2, Ljava/lang/IllegalArgumentException;

    if-eqz v0, :cond_94

    const/16 v0, -0x195

    goto :goto_9d

    .line 253
    :cond_94
    instance-of v0, v2, Ljava/lang/SecurityException;

    if-eqz v0, :cond_9b

    const/16 v0, -0x198

    goto :goto_9d

    :cond_9b
    const/16 v0, -0x191

    .line 256
    :goto_9d
    invoke-virtual {p0, v3}, Lcom/ss/android/ttvecamera/TECamera2;->updateSessionState(I)V

    .line 257
    invoke-virtual {p0, p2}, Lcom/ss/android/ttvecamera/TECamera2;->_reset(Lcom/bytedance/bpea/basics/Cert;)V

    .line 258
    iget-object p2, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mCameraEvents:Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;

    if-eqz p2, :cond_ae

    .line 259
    iget p1, p1, Lcom/ss/android/ttvecamera/TECameraSettings;->mCameraType:I

    iget-object p0, p0, Lcom/ss/android/ttvecamera/TECamera2;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    invoke-interface {p2, p1, v0, v4, p0}, Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;->onCameraOpened(IILcom/ss/android/ttvecamera/TECameraBase;Ljava/lang/Object;)V

    :cond_ae
    return v0
.end method

.method public openCameraLock()V
    .registers 2

    .line 1757
    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget-boolean v0, v0, Lcom/ss/android/ttvecamera/TECameraSettings;->mUseSyncModeOnCamera2:Z

    if-eqz v0, :cond_12

    .line 1758
    iget-object p0, p0, Lcom/ss/android/ttvecamera/TECamera2;->mCameraCondition:Landroid/os/ConditionVariable;

    invoke-virtual {p0}, Landroid/os/ConditionVariable;->open()V

    .line 1759
    const-string p0, "TECamera2"

    const-string v0, "open camera-operation lock"

    invoke-static {p0, v0}, Lcom/ss/android/ttvecamera/TELogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_12
    return-void
.end method

.method public queryShaderZoomStep(Lcom/ss/android/ttvecamera/TECameraSettings$ShaderZoomCallback;)V
    .registers 5

    .line 1368
    invoke-virtual {p0}, Lcom/ss/android/ttvecamera/TECamera2;->_isDeviceReady()Z

    move-result v0

    const-string v1, "TECamera2"

    if-eqz v0, :cond_34

    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECamera2;->mMode:Lcom/ss/android/ttvecamera/framework/TECameraModeBase;

    if-eqz v0, :cond_34

    iget-object v0, v0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    if-nez v0, :cond_11

    goto :goto_34

    .line 1375
    :cond_11
    iget-object v2, p0, Lcom/ss/android/ttvecamera/TECamera2;->mDeviceProxy:Lcom/ss/android/ttvecamera/hardware/TECameraHardware2Proxy;

    if-nez v2, :cond_2a

    .line 1376
    const-string p1, "DeviceProxy is null!"

    invoke-static {v1, p1}, Lcom/ss/android/ttvecamera/TELogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1377
    iget-object p1, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mCameraEvents:Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;

    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget v0, v0, Lcom/ss/android/ttvecamera/TECameraSettings;->mCameraType:I

    const/16 v1, -0x1a4

    iget-object p0, p0, Lcom/ss/android/ttvecamera/TECamera2;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    const-string v2, ""

    invoke-interface {p1, v0, v1, v2, p0}, Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;->onCameraError(IILjava/lang/String;Ljava/lang/Object;)V

    return-void

    .line 1381
    :cond_2a
    invoke-virtual {v2, v0}, Lcom/ss/android/ttvecamera/hardware/TECameraHardware2Proxy;->getShaderZoomStep(Landroid/hardware/camera2/CameraCharacteristics;)F

    move-result p0

    if-eqz p1, :cond_33

    .line 1383
    invoke-interface {p1, p0}, Lcom/ss/android/ttvecamera/TECameraSettings$ShaderZoomCallback;->getShaderStep(F)V

    :cond_33
    return-void

    .line 1370
    :cond_34
    :goto_34
    const-string p1, "queryShaderZoomStep: camera is null."

    invoke-static {v1, p1}, Lcom/ss/android/ttvecamera/TELogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1371
    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mCameraEvents:Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;

    iget-object v1, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget v1, v1, Lcom/ss/android/ttvecamera/TECameraSettings;->mCameraType:I

    const/16 v2, -0x1b7

    iget-object p0, p0, Lcom/ss/android/ttvecamera/TECamera2;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    invoke-interface {v0, v1, v2, p1, p0}, Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;->onCameraError(IILjava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public queryZoomAbility(Lcom/ss/android/ttvecamera/TECameraSettings$ZoomCallback;Z)V
    .registers 13

    .line 1341
    invoke-virtual {p0}, Lcom/ss/android/ttvecamera/TECamera2;->_isDeviceReady()Z

    move-result p2

    const-string v0, "TECamera2"

    if-eqz p2, :cond_7c

    iget-object p2, p0, Lcom/ss/android/ttvecamera/TECamera2;->mMode:Lcom/ss/android/ttvecamera/framework/TECameraModeBase;

    if-eqz p2, :cond_7c

    iget-object p2, p2, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    if-nez p2, :cond_11

    goto :goto_7c

    .line 1348
    :cond_11
    iget-object v1, p0, Lcom/ss/android/ttvecamera/TECamera2;->mDeviceProxy:Lcom/ss/android/ttvecamera/hardware/TECameraHardware2Proxy;

    if-nez v1, :cond_2a

    .line 1349
    const-string p1, "DeviceProxy is null!"

    invoke-static {v0, p1}, Lcom/ss/android/ttvecamera/TELogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1350
    iget-object p1, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mCameraEvents:Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;

    iget-object p2, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget p2, p2, Lcom/ss/android/ttvecamera/TECameraSettings;->mCameraType:I

    const/16 v0, -0x1a4

    iget-object p0, p0, Lcom/ss/android/ttvecamera/TECamera2;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    const-string v1, ""

    invoke-interface {p1, p2, v0, v1, p0}, Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;->onCameraError(IILjava/lang/String;Ljava/lang/Object;)V

    return-void

    .line 1354
    :cond_2a
    iget-object v2, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget v3, v2, Lcom/ss/android/ttvecamera/TECameraSettings;->mCameraType:I

    iget v2, v2, Lcom/ss/android/ttvecamera/TECameraSettings;->mCameraZoomLimitFactor:F

    invoke-virtual {v1, p2, v3, v2}, Lcom/ss/android/ttvecamera/hardware/TECameraHardware2Proxy;->getMaxZoomValue(Landroid/hardware/camera2/CameraCharacteristics;IF)F

    move-result v8

    .line 1355
    iput v8, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mMaxZoom:F

    .line 1356
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "zoom: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", factor = "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget v1, v1, Lcom/ss/android/ttvecamera/TECameraSettings;->mCameraZoomLimitFactor:F

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/ss/android/ttvecamera/TELogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_7b

    .line 1359
    new-instance v9, Ljava/util/ArrayList;

    const/4 p2, 0x1

    invoke-direct {v9, p2}, Ljava/util/ArrayList;-><init>(I)V

    const/high16 v0, 0x42c80000    # 100.0f

    mul-float/2addr v0, v8

    float-to-int v0, v0

    .line 1360
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1361
    iget-object p0, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget v5, p0, Lcom/ss/android/ttvecamera/TECameraSettings;->mCameraType:I

    const/4 p0, 0x0

    cmpl-float p0, v8, p0

    if-lez p0, :cond_74

    :goto_72
    move v6, p2

    goto :goto_76

    :cond_74
    const/4 p2, 0x0

    goto :goto_72

    :goto_76
    const/4 v7, 0x0

    move-object v4, p1

    invoke-interface/range {v4 .. v9}, Lcom/ss/android/ttvecamera/TECameraSettings$ZoomCallback;->onZoomSupport(IZZFLjava/util/List;)V

    :cond_7b
    return-void

    .line 1343
    :cond_7c
    :goto_7c
    const-string p1, "queryZoomAbility: camera is null."

    invoke-static {v0, p1}, Lcom/ss/android/ttvecamera/TELogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1344
    iget-object p2, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mCameraEvents:Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;

    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget v0, v0, Lcom/ss/android/ttvecamera/TECameraSettings;->mCameraType:I

    const/16 v1, -0x1b7

    iget-object p0, p0, Lcom/ss/android/ttvecamera/TECamera2;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    invoke-interface {p2, v0, v1, p1, p0}, Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;->onCameraError(IILjava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public removeFocusSettings()V
    .registers 1

    .line 915
    iget-object p0, p0, Lcom/ss/android/ttvecamera/TECamera2;->mMode:Lcom/ss/android/ttvecamera/framework/TECameraModeBase;

    if-eqz p0, :cond_7

    .line 916
    invoke-virtual {p0}, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->removeFocusSettings()V

    :cond_7
    return-void
.end method

.method protected selectCamera(I)Ljava/lang/String;
    .registers 2
    .param p1    # I
        .annotation build Lcom/ss/android/ttvecamera/TECameraSettings$CameraFacing;
        .end annotation
    .end param

    .line 448
    iget-object p1, p0, Lcom/ss/android/ttvecamera/TECamera2;->mMode:Lcom/ss/android/ttvecamera/framework/TECameraModeBase;

    iget-object p0, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget p0, p0, Lcom/ss/android/ttvecamera/TECameraSettings;->mFacing:I

    invoke-virtual {p1, p0}, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->selectCamera(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public setAperture(F)V
    .registers 5

    .line 1248
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setAperture : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TECamera2"

    invoke-static {v1, v0}, Lcom/ss/android/ttvecamera/TELogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1249
    iget v0, p0, Lcom/ss/android/ttvecamera/TECamera2;->mSessionState:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_21

    .line 1250
    const-string p0, "Camera is opening, ignore setAperture operation."

    invoke-static {v1, p0}, Lcom/ss/android/ttvecamera/TELogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1254
    :cond_21
    invoke-virtual {p0}, Lcom/ss/android/ttvecamera/TECamera2;->_isDeviceReady()Z

    move-result v0

    if-eqz v0, :cond_30

    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECamera2;->mMode:Lcom/ss/android/ttvecamera/framework/TECameraModeBase;

    if-nez v0, :cond_2c

    goto :goto_30

    .line 1261
    :cond_2c
    invoke-virtual {v0, p1}, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->setAperture(F)V

    return-void

    .line 1256
    :cond_30
    :goto_30
    const-string p1, "setAperture : camera is null."

    invoke-static {v1, p1}, Lcom/ss/android/ttvecamera/TELogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1257
    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mCameraEvents:Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;

    iget-object v1, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget v1, v1, Lcom/ss/android/ttvecamera/TECameraSettings;->mCameraType:I

    const/16 v2, -0x1b7

    iget-object p0, p0, Lcom/ss/android/ttvecamera/TECamera2;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    invoke-interface {v0, v1, v2, p1, p0}, Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;->onCameraError(IILjava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setAutoExposureLock(Z)V
    .registers 5

    .line 1032
    const-string v0, "setAutoExposureLock..."

    const-string v1, "TECamera2"

    invoke-static {v1, v0}, Lcom/ss/android/ttvecamera/TELogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1033
    iget v0, p0, Lcom/ss/android/ttvecamera/TECamera2;->mSessionState:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_12

    .line 1034
    const-string p0, "Camera is opening, ignore setAutoExposureLock operation."

    invoke-static {v1, p0}, Lcom/ss/android/ttvecamera/TELogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1038
    :cond_12
    invoke-virtual {p0}, Lcom/ss/android/ttvecamera/TECamera2;->_isDeviceReady()Z

    move-result v0

    if-eqz v0, :cond_47

    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECamera2;->mMode:Lcom/ss/android/ttvecamera/framework/TECameraModeBase;

    if-eqz v0, :cond_47

    iget-object v0, v0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    if-nez v0, :cond_21

    goto :goto_47

    .line 1050
    :cond_21
    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_LOCK_AVAILABLE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v2}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_38

    .line 1051
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_32

    goto :goto_38

    .line 1056
    :cond_32
    iget-object p0, p0, Lcom/ss/android/ttvecamera/TECamera2;->mMode:Lcom/ss/android/ttvecamera/framework/TECameraModeBase;

    invoke-virtual {p0, p1}, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->setAutoExposureLock(Z)V

    return-void

    .line 1052
    :cond_38
    :goto_38
    const-string p1, "Current camera doesn\'t support auto exposure lock."

    invoke-static {v1, p1}, Lcom/ss/android/ttvecamera/TELogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1053
    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mCameraEvents:Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;

    iget-object p0, p0, Lcom/ss/android/ttvecamera/TECamera2;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    const/16 v1, -0x1aa

    invoke-interface {v0, v1, v1, p1, p0}, Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;->onCameraInfo(IILjava/lang/String;Ljava/lang/Object;)V

    return-void

    .line 1040
    :cond_47
    :goto_47
    const-string p1, "setAutoExposureLock : camera is null."

    invoke-static {v1, p1}, Lcom/ss/android/ttvecamera/TELogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1041
    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mCameraEvents:Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;

    iget-object v1, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget v1, v1, Lcom/ss/android/ttvecamera/TECameraSettings;->mCameraType:I

    const/16 v2, -0x1b7

    iget-object p0, p0, Lcom/ss/android/ttvecamera/TECamera2;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    invoke-interface {v0, v1, v2, p1, p0}, Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;->onCameraError(IILjava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setAutoFocusLock(Z)V
    .registers 5

    .line 1093
    const-string v0, "setAutoFocusLock..."

    const-string v1, "TECamera2"

    invoke-static {v1, v0}, Lcom/ss/android/ttvecamera/TELogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1094
    iget v0, p0, Lcom/ss/android/ttvecamera/TECamera2;->mSessionState:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_12

    .line 1095
    const-string p0, "Camera is opening, ignore setAutoFocusLock operation."

    invoke-static {v1, p0}, Lcom/ss/android/ttvecamera/TELogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1099
    :cond_12
    invoke-virtual {p0}, Lcom/ss/android/ttvecamera/TECamera2;->_isDeviceReady()Z

    move-result v0

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECamera2;->mMode:Lcom/ss/android/ttvecamera/framework/TECameraModeBase;

    if-eqz v0, :cond_25

    iget-object v2, v0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    if-nez v2, :cond_21

    goto :goto_25

    .line 1111
    :cond_21
    invoke-virtual {v0, p1}, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->setAutoFocusLock(Z)V

    return-void

    .line 1101
    :cond_25
    :goto_25
    const-string p1, "setAutoFocusLock : camera is null."

    invoke-static {v1, p1}, Lcom/ss/android/ttvecamera/TELogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1102
    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mCameraEvents:Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;

    iget-object v1, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget v1, v1, Lcom/ss/android/ttvecamera/TECameraSettings;->mCameraType:I

    const/16 v2, -0x1b7

    iget-object p0, p0, Lcom/ss/android/ttvecamera/TECamera2;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    invoke-interface {v0, v1, v2, p1, p0}, Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;->onCameraError(IILjava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setExposureCompensation(I)Z
    .registers 6

    .line 1002
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setExposureCompensation... value: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TECamera2"

    invoke-static {v1, v0}, Lcom/ss/android/ttvecamera/TELogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1003
    iget v0, p0, Lcom/ss/android/ttvecamera/TECamera2;->mSessionState:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v2, :cond_22

    .line 1004
    const-string p0, "Camera is opening, ignore setExposureCompensation operation."

    invoke-static {v1, p0}, Lcom/ss/android/ttvecamera/TELogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    .line 1008
    :cond_22
    invoke-virtual {p0}, Lcom/ss/android/ttvecamera/TECamera2;->_isDeviceReady()Z

    move-result v0

    if-eqz v0, :cond_9d

    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECamera2;->mMode:Lcom/ss/android/ttvecamera/framework/TECameraModeBase;

    if-eqz v0, :cond_9d

    iget-object v0, v0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    if-nez v0, :cond_31

    goto :goto_9d

    .line 1015
    :cond_31
    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget-object v0, v0, Lcom/ss/android/ttvecamera/TECameraSettings;->mCameraECInfo:Lcom/ss/android/ttvecamera/TECameraSettings$ExposureCompensationInfo;

    invoke-virtual {v0}, Lcom/ss/android/ttvecamera/TECameraSettings$ExposureCompensationInfo;->isSupportExposureCompensation()Z

    move-result v0

    if-nez v0, :cond_4a

    .line 1016
    const-string p1, "Current camera doesn\'t support setting exposure compensation."

    invoke-static {v1, p1}, Lcom/ss/android/ttvecamera/TELogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1017
    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mCameraEvents:Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;

    iget-object p0, p0, Lcom/ss/android/ttvecamera/TECamera2;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    const/16 v1, -0x19e

    invoke-interface {v0, v1, v1, p1, p0}, Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;->onCameraInfo(IILjava/lang/String;Ljava/lang/Object;)V

    return v3

    .line 1020
    :cond_4a
    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget-object v0, v0, Lcom/ss/android/ttvecamera/TECameraSettings;->mCameraECInfo:Lcom/ss/android/ttvecamera/TECameraSettings$ExposureCompensationInfo;

    iget v2, v0, Lcom/ss/android/ttvecamera/TECameraSettings$ExposureCompensationInfo;->max:I

    if-gt p1, v2, :cond_5e

    iget v0, v0, Lcom/ss/android/ttvecamera/TECameraSettings$ExposureCompensationInfo;->min:I

    if-ge p1, v0, :cond_57

    goto :goto_5e

    .line 1027
    :cond_57
    iget-object p0, p0, Lcom/ss/android/ttvecamera/TECamera2;->mMode:Lcom/ss/android/ttvecamera/framework/TECameraModeBase;

    invoke-virtual {p0, p1}, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->setExposureCompensation(I)Z

    move-result p0

    return p0

    .line 1021
    :cond_5e
    :goto_5e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid exposure compensation value: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", it must between ["

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget-object p1, p1, Lcom/ss/android/ttvecamera/TECameraSettings;->mCameraECInfo:Lcom/ss/android/ttvecamera/TECameraSettings$ExposureCompensationInfo;

    iget p1, p1, Lcom/ss/android/ttvecamera/TECameraSettings$ExposureCompensationInfo;->min:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget-object p1, p1, Lcom/ss/android/ttvecamera/TECameraSettings;->mCameraECInfo:Lcom/ss/android/ttvecamera/TECameraSettings$ExposureCompensationInfo;

    iget p1, p1, Lcom/ss/android/ttvecamera/TECameraSettings$ExposureCompensationInfo;->max:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "]."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1022
    invoke-static {v1, p1}, Lcom/ss/android/ttvecamera/TELogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1023
    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mCameraEvents:Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;

    iget-object p0, p0, Lcom/ss/android/ttvecamera/TECamera2;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    const/16 v1, -0x19f

    invoke-interface {v0, v1, v1, p1, p0}, Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;->onCameraInfo(IILjava/lang/String;Ljava/lang/Object;)V

    return v3

    .line 1010
    :cond_9d
    :goto_9d
    const-string p1, "setExposureCompensation : camera is null."

    invoke-static {v1, p1}, Lcom/ss/android/ttvecamera/TELogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1011
    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mCameraEvents:Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;

    iget-object v1, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget v1, v1, Lcom/ss/android/ttvecamera/TECameraSettings;->mCameraType:I

    const/16 v2, -0x191

    iget-object p0, p0, Lcom/ss/android/ttvecamera/TECamera2;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    invoke-interface {v0, v1, v2, p1, p0}, Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;->onCameraError(IILjava/lang/String;Ljava/lang/Object;)V

    return v3
.end method

.method public setFeatureParameters(Landroid/os/Bundle;)V
    .registers 5

    .line 592
    invoke-super {p0, p1}, Lcom/ss/android/ttvecamera/TECameraBase;->setFeatureParameters(Landroid/os/Bundle;)V

    if-nez p1, :cond_6

    goto :goto_41

    .line 594
    :cond_6
    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mFeatures:Ljava/util/Map;

    iget-object p0, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget-object p0, p0, Lcom/ss/android/ttvecamera/TECameraSettings;->mStrCameraID:Ljava/lang/String;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Bundle;

    .line 595
    invoke-virtual {p1}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1a
    :goto_1a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_41

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 596
    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ss/android/ttvecamera/TECameraSettings$Parameters;->isValid(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_31

    goto :goto_1a

    .line 599
    :cond_31
    const-string v2, "support_light_soft"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 600
    invoke-virtual {p1, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {p0, v2, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_1a

    :cond_41
    :goto_41
    return-void
.end method

.method public setISO(I)V
    .registers 5

    .line 1158
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setISO : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TECamera2"

    invoke-static {v1, v0}, Lcom/ss/android/ttvecamera/TELogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1159
    iget v0, p0, Lcom/ss/android/ttvecamera/TECamera2;->mSessionState:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_21

    .line 1160
    const-string p0, "Camera is opening, ignore setISO operation."

    invoke-static {v1, p0}, Lcom/ss/android/ttvecamera/TELogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1164
    :cond_21
    invoke-virtual {p0}, Lcom/ss/android/ttvecamera/TECamera2;->_isDeviceReady()Z

    move-result v0

    if-eqz v0, :cond_30

    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECamera2;->mMode:Lcom/ss/android/ttvecamera/framework/TECameraModeBase;

    if-nez v0, :cond_2c

    goto :goto_30

    .line 1171
    :cond_2c
    invoke-virtual {v0, p1}, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->setISO(I)V

    return-void

    .line 1166
    :cond_30
    :goto_30
    const-string p1, "setISO : camera is null."

    invoke-static {v1, p1}, Lcom/ss/android/ttvecamera/TELogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1167
    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mCameraEvents:Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;

    iget-object v1, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget v1, v1, Lcom/ss/android/ttvecamera/TECameraSettings;->mCameraType:I

    const/16 v2, -0x1b7

    iget-object p0, p0, Lcom/ss/android/ttvecamera/TECamera2;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    invoke-interface {v0, v1, v2, p1, p0}, Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;->onCameraError(IILjava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setManualFocusDistance(F)V
    .registers 5

    .line 970
    iget v0, p0, Lcom/ss/android/ttvecamera/TECamera2;->mSessionState:I

    const/4 v1, 0x1

    const-string v2, "TECamera2"

    if-ne v0, v1, :cond_d

    .line 971
    const-string p0, "Camera is opening, ignore setManualFocusDistance operation."

    invoke-static {v2, p0}, Lcom/ss/android/ttvecamera/TELogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 974
    :cond_d
    invoke-virtual {p0}, Lcom/ss/android/ttvecamera/TECamera2;->_isDeviceReady()Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECamera2;->mMode:Lcom/ss/android/ttvecamera/framework/TECameraModeBase;

    if-nez v0, :cond_18

    goto :goto_1c

    .line 981
    :cond_18
    invoke-virtual {v0, p1}, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->setManualFocusDistance(F)V

    return-void

    .line 976
    :cond_1c
    :goto_1c
    const-string p1, "setManualFocusDistance : camera is null."

    invoke-static {v2, p1}, Lcom/ss/android/ttvecamera/TELogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 977
    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mCameraEvents:Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;

    iget-object v1, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget v1, v1, Lcom/ss/android/ttvecamera/TECameraSettings;->mCameraType:I

    const/16 v2, -0x1b7

    iget-object p0, p0, Lcom/ss/android/ttvecamera/TECamera2;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    invoke-interface {v0, v1, v2, p1, p0}, Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;->onCameraError(IILjava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setPictureSize(II)V
    .registers 3

    .line 753
    iget-object p0, p0, Lcom/ss/android/ttvecamera/TECamera2;->mMode:Lcom/ss/android/ttvecamera/framework/TECameraModeBase;

    if-nez p0, :cond_c

    .line 754
    const-string p0, "TECamera2"

    const-string p1, "set picture size failed, no mode..."

    invoke-static {p0, p1}, Lcom/ss/android/ttvecamera/TELogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 758
    :cond_c
    invoke-virtual {p0, p1, p2}, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->setPictureSize(II)I

    return-void
.end method

.method public setSceneMode(I)V
    .registers 2

    .line 773
    invoke-super {p0, p1}, Lcom/ss/android/ttvecamera/TECameraBase;->setSceneMode(I)V

    .line 774
    iget-object p0, p0, Lcom/ss/android/ttvecamera/TECamera2;->mMode:Lcom/ss/android/ttvecamera/framework/TECameraModeBase;

    if-nez p0, :cond_f

    .line 775
    const-string p0, "TECamera2"

    const-string p1, "set scene failed, no mode..."

    invoke-static {p0, p1}, Lcom/ss/android/ttvecamera/TELogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 779
    :cond_f
    invoke-virtual {p0, p1}, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->setSceneMode(I)V

    return-void
.end method

.method public setShutterTime(J)V
    .registers 6

    .line 1212
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setShutterTime : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TECamera2"

    invoke-static {v1, v0}, Lcom/ss/android/ttvecamera/TELogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1213
    iget v0, p0, Lcom/ss/android/ttvecamera/TECamera2;->mSessionState:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_21

    .line 1214
    const-string p0, "Camera is opening, ignore setShutterTime operation."

    invoke-static {v1, p0}, Lcom/ss/android/ttvecamera/TELogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1218
    :cond_21
    invoke-virtual {p0}, Lcom/ss/android/ttvecamera/TECamera2;->_isDeviceReady()Z

    move-result v0

    if-eqz v0, :cond_30

    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECamera2;->mMode:Lcom/ss/android/ttvecamera/framework/TECameraModeBase;

    if-nez v0, :cond_2c

    goto :goto_30

    .line 1225
    :cond_2c
    invoke-virtual {v0, p1, p2}, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->setShutterTime(J)V

    return-void

    .line 1220
    :cond_30
    :goto_30
    const-string p1, "setISO : camera is null."

    invoke-static {v1, p1}, Lcom/ss/android/ttvecamera/TELogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1221
    iget-object p2, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mCameraEvents:Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;

    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget v0, v0, Lcom/ss/android/ttvecamera/TECameraSettings;->mCameraType:I

    const/16 v1, -0x1b7

    iget-object p0, p0, Lcom/ss/android/ttvecamera/TECamera2;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    invoke-interface {p2, v0, v1, p1, p0}, Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;->onCameraError(IILjava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setWhileBalance(ZLjava/lang/String;)V
    .registers 6

    .line 1122
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setWhileBalance: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TECamera2"

    invoke-static {v1, v0}, Lcom/ss/android/ttvecamera/TELogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1123
    iget v0, p0, Lcom/ss/android/ttvecamera/TECamera2;->mSessionState:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_21

    .line 1124
    const-string p0, "Camera is opening, ignore setWhileBalance operation."

    invoke-static {v1, p0}, Lcom/ss/android/ttvecamera/TELogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1128
    :cond_21
    invoke-virtual {p0}, Lcom/ss/android/ttvecamera/TECamera2;->_isDeviceReady()Z

    move-result v0

    if-eqz v0, :cond_30

    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECamera2;->mMode:Lcom/ss/android/ttvecamera/framework/TECameraModeBase;

    if-nez v0, :cond_2c

    goto :goto_30

    .line 1135
    :cond_2c
    invoke-virtual {v0, p1, p2}, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->setWhileBalance(ZLjava/lang/String;)V

    return-void

    .line 1130
    :cond_30
    :goto_30
    const-string p1, "setWhileBalance : camera is null."

    invoke-static {v1, p1}, Lcom/ss/android/ttvecamera/TELogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1131
    iget-object p2, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mCameraEvents:Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;

    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget v0, v0, Lcom/ss/android/ttvecamera/TECameraSettings;->mCameraType:I

    const/16 v1, -0x1b7

    iget-object p0, p0, Lcom/ss/android/ttvecamera/TECamera2;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    invoke-interface {p2, v0, v1, p1, p0}, Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;->onCameraError(IILjava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public startCapture()V
    .registers 6

    .line 614
    const-string v0, "TECamera2-startCapture"

    invoke-static {v0}, Lcom/ss/android/ttvecamera/TETraceUtils;->beginSection(Ljava/lang/String;)V

    .line 615
    const-string v0, "startCapture..."

    const-string v1, "TECamera2"

    invoke-static {v1, v0}, Lcom/ss/android/ttvecamera/TELogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 616
    invoke-virtual {p0}, Lcom/ss/android/ttvecamera/TECamera2;->_isDeviceReady()Z

    move-result v0

    if-eqz v0, :cond_79

    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mProviderMgr:Lcom/ss/android/ttvecamera/provider/TECameraProviderManager;

    if-nez v0, :cond_17

    goto :goto_79

    .line 622
    :cond_17
    iget v0, p0, Lcom/ss/android/ttvecamera/TECamera2;->mSessionState:I

    const/4 v2, 0x2

    if-eq v0, v2, :cond_38

    iget v0, p0, Lcom/ss/android/ttvecamera/TECamera2;->mSessionState:I

    const/4 v2, 0x3

    if-eq v0, v2, :cond_38

    .line 623
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startCapture, Invalid state: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/ss/android/ttvecamera/TECamera2;->mSessionState:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/ss/android/ttvecamera/TELogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 630
    :cond_38
    :try_start_38
    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    invoke-virtual {p0}, Lcom/ss/android/ttvecamera/TECamera2;->getFrameOrientation()I

    move-result v2

    iput v2, v0, Lcom/ss/android/ttvecamera/TECameraSettings;->mRotation:I

    .line 631
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Camera rotation = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget v2, v2, Lcom/ss/android/ttvecamera/TECameraSettings;->mRotation:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/ss/android/ttvecamera/TELogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_58
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_58} :catch_59

    goto :goto_72

    :catch_59
    move-exception v0

    .line 633
    invoke-static {v0}, Lcom/ss/android/ttvecamera/TECameraExceptionMonitor;->monitorException(Ljava/lang/Throwable;)V

    .line 635
    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECameraBase;->openPrivacyCert:Lcom/bytedance/bpea/basics/Cert;

    invoke-virtual {p0, v0}, Lcom/ss/android/ttvecamera/TECamera2;->_reset(Lcom/bytedance/bpea/basics/Cert;)V

    .line 636
    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mCameraEvents:Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;

    if-eqz v0, :cond_72

    .line 637
    iget-object v1, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget v1, v1, Lcom/ss/android/ttvecamera/TECameraSettings;->mCameraType:I

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/ss/android/ttvecamera/TECamera2;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    const/16 v4, -0x1a9

    invoke-interface {v0, v1, v4, v2, v3}, Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;->onCameraOpened(IILcom/ss/android/ttvecamera/TECameraBase;Ljava/lang/Object;)V

    .line 641
    :cond_72
    :goto_72
    invoke-virtual {p0}, Lcom/ss/android/ttvecamera/TECamera2;->_startCapture()I

    .line 642
    invoke-static {}, Lcom/ss/android/ttvecamera/TETraceUtils;->endSection()V

    return-void

    .line 617
    :cond_79
    :goto_79
    const-string p0, "startCapture, Device is not ready."

    invoke-static {v1, p0}, Lcom/ss/android/ttvecamera/TELogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public startRecording()I
    .registers 1

    .line 278
    iget-object p0, p0, Lcom/ss/android/ttvecamera/TECamera2;->mMode:Lcom/ss/android/ttvecamera/framework/TECameraModeBase;

    invoke-virtual {p0}, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->startRecording()I

    move-result p0

    return p0
.end method

.method public startZoom(FLcom/ss/android/ttvecamera/TECameraSettings$ZoomCallback;)V
    .registers 6

    .line 1390
    iget v0, p0, Lcom/ss/android/ttvecamera/TECamera2;->mSessionState:I

    const/4 v1, 0x3

    const-string v2, "TECamera2"

    if-eq v0, v1, :cond_29

    .line 1391
    const-string p1, "[VE_UI_TEST]Failed event: START_ZOOM. Code: -420. Reason: session is not running"

    invoke-static {v2, p1}, Lcom/ss/android/ttvecamera/TELogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1392
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Invalid state, state = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/ss/android/ttvecamera/TECamera2;->mSessionState:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1393
    iget-object p2, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mCameraEvents:Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;

    iget-object p0, p0, Lcom/ss/android/ttvecamera/TECamera2;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    const/16 v0, -0x1a4

    invoke-interface {p2, v0, v0, p1, p0}, Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;->onCameraInfo(IILjava/lang/String;Ljava/lang/Object;)V

    return-void

    .line 1397
    :cond_29
    invoke-virtual {p0}, Lcom/ss/android/ttvecamera/TECamera2;->_isDeviceReady()Z

    move-result v0

    if-eqz v0, :cond_38

    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECamera2;->mMode:Lcom/ss/android/ttvecamera/framework/TECameraModeBase;

    if-nez v0, :cond_34

    goto :goto_38

    .line 1404
    :cond_34
    invoke-virtual {v0, p1, p2}, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->startZoom(FLcom/ss/android/ttvecamera/TECameraSettings$ZoomCallback;)I

    return-void

    .line 1398
    :cond_38
    :goto_38
    const-string p1, "[VE_UI_TEST]Failed event: START_ZOOM. Code: -439. Reason: camera is null"

    invoke-static {v2, p1}, Lcom/ss/android/ttvecamera/TELogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1400
    iget-object p1, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mCameraEvents:Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;

    iget-object p2, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget p2, p2, Lcom/ss/android/ttvecamera/TECameraSettings;->mCameraType:I

    const/16 v0, -0x1b7

    iget-object p0, p0, Lcom/ss/android/ttvecamera/TECamera2;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    const-string v1, "startZoom : Camera is null."

    invoke-interface {p1, p2, v0, v1, p0}, Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;->onCameraError(IILjava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public stopCapture()V
    .registers 4

    .line 647
    const-string v0, "stopCapture..."

    const-string v1, "TECamera2"

    invoke-static {v1, v0}, Lcom/ss/android/ttvecamera/TELogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 648
    invoke-virtual {p0}, Lcom/ss/android/ttvecamera/TECamera2;->_isDeviceReady()Z

    move-result v0

    if-nez v0, :cond_13

    .line 649
    const-string p0, "Device is not ready."

    invoke-static {v1, p0}, Lcom/ss/android/ttvecamera/TELogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 652
    :cond_13
    iget v0, p0, Lcom/ss/android/ttvecamera/TECamera2;->mSessionState:I

    const/4 v2, 0x3

    if-eq v0, v2, :cond_2e

    .line 653
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid state: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/ss/android/ttvecamera/TECamera2;->mSessionState:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/ss/android/ttvecamera/TELogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 656
    :cond_2e
    invoke-virtual {p0}, Lcom/ss/android/ttvecamera/TECamera2;->_stopCapture()I

    return-void
.end method

.method public stopRecording()I
    .registers 1

    .line 282
    iget-object p0, p0, Lcom/ss/android/ttvecamera/TECamera2;->mMode:Lcom/ss/android/ttvecamera/framework/TECameraModeBase;

    invoke-virtual {p0}, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->stopRecording()I

    move-result p0

    return p0
.end method

.method public stopZoom(Lcom/ss/android/ttvecamera/TECameraSettings$ZoomCallback;)V
    .registers 2

    return-void
.end method

.method public switchCameraMode(I)V
    .registers 4

    .line 270
    iget v0, p0, Lcom/ss/android/ttvecamera/TECamera2;->mSessionState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1e

    .line 271
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid state: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/ss/android/ttvecamera/TECamera2;->mSessionState:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "TECamera2"

    invoke-static {p1, p0}, Lcom/ss/android/ttvecamera/TELogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 274
    :cond_1e
    invoke-virtual {p0, p1}, Lcom/ss/android/ttvecamera/TECamera2;->_switchCameraMode(I)V

    return-void
.end method

.method public switchFlashMode(I)V
    .registers 12

    .line 1312
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "switchFlashMode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TECamera2"

    invoke-static {v1, v0}, Lcom/ss/android/ttvecamera/TELogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1313
    iget v0, p0, Lcom/ss/android/ttvecamera/TECamera2;->mSessionState:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_47

    .line 1314
    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECamera2;->mMode:Lcom/ss/android/ttvecamera/framework/TECameraModeBase;

    if-eqz v0, :cond_2a

    instance-of v4, v0, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;

    if-eqz v4, :cond_2a

    .line 1315
    check-cast v0, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;

    invoke-virtual {v0, p1}, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;->updateFlashModeParam(I)V

    return-void

    .line 1317
    :cond_2a
    const-string v0, "[VE_UI_TEST]Failed event: TOGGLE_TORCH. Code: -439. Reason: camera is opening, ignore toggleTorch operation"

    invoke-static {v1, v0}, Lcom/ss/android/ttvecamera/TELogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1319
    const-string v8, "Camera is opening, ignore toggleTorch operation."

    invoke-static {v1, v8}, Lcom/ss/android/ttvecamera/TELogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1320
    iget-object v4, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mCameraEvents:Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;

    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget v5, v0, Lcom/ss/android/ttvecamera/TECameraSettings;->mCameraType:I

    if-nez p1, :cond_3e

    move v7, v2

    goto :goto_3f

    :cond_3e
    move v7, v3

    :goto_3f
    iget-object v9, p0, Lcom/ss/android/ttvecamera/TECamera2;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    const/16 v6, -0x1b7

    invoke-interface/range {v4 .. v9}, Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;->onTorchError(IIILjava/lang/String;Ljava/lang/Object;)V

    return-void

    .line 1325
    :cond_47
    invoke-virtual {p0}, Lcom/ss/android/ttvecamera/TECamera2;->_isDeviceReady()Z

    move-result v0

    if-eqz v0, :cond_56

    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECamera2;->mMode:Lcom/ss/android/ttvecamera/framework/TECameraModeBase;

    if-nez v0, :cond_52

    goto :goto_56

    .line 1334
    :cond_52
    invoke-interface {v0, p1}, Lcom/ss/android/ttvecamera/framework/ITECameraMode;->switchFlashMode(I)V

    return-void

    .line 1326
    :cond_56
    :goto_56
    const-string v0, "[VE_UI_TEST]Failed event: TOGGLE_TORCH. Code: -439. Reason: camera is null"

    invoke-static {v1, v0}, Lcom/ss/android/ttvecamera/TELogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1328
    const-string v8, "switch flash mode  failed, you must open camera first."

    invoke-static {v1, v8}, Lcom/ss/android/ttvecamera/TELogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1329
    iget-object v4, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mCameraEvents:Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;

    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget v5, v0, Lcom/ss/android/ttvecamera/TECameraSettings;->mCameraType:I

    if-nez p1, :cond_6a

    move v7, v2

    goto :goto_6b

    :cond_6a
    move v7, v3

    :goto_6b
    iget-object v9, p0, Lcom/ss/android/ttvecamera/TECamera2;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    const/16 v6, -0x1b7

    invoke-interface/range {v4 .. v9}, Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;->onTorchError(IIILjava/lang/String;Ljava/lang/Object;)V

    .line 1330
    iget-object p1, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mCameraEvents:Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;

    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget v0, v0, Lcom/ss/android/ttvecamera/TECameraSettings;->mCameraType:I

    const/16 v1, -0x1b7

    iget-object p0, p0, Lcom/ss/android/ttvecamera/TECamera2;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    invoke-interface {p1, v0, v1, v8, p0}, Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;->onCameraError(IILjava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public takePicture(IILcom/ss/android/ttvecamera/TECameraSettings$PictureCallback;)V
    .registers 7

    .line 821
    iget v0, p0, Lcom/ss/android/ttvecamera/TECamera2;->mSessionState:I

    const/4 v1, 0x1

    const-string v2, "TECamera2"

    if-ne v0, v1, :cond_d

    .line 822
    const-string p0, "Camera is opening, ignore takePicture operation."

    invoke-static {v2, p0}, Lcom/ss/android/ttvecamera/TELogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 826
    :cond_d
    iget v0, p0, Lcom/ss/android/ttvecamera/TECamera2;->mSessionState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_18

    .line 827
    const-string p0, "Camera is opened, ignore takePicture operation."

    invoke-static {v2, p0}, Lcom/ss/android/ttvecamera/TELogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 831
    :cond_18
    invoke-virtual {p0}, Lcom/ss/android/ttvecamera/TECamera2;->_isDeviceReady()Z

    move-result v0

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECamera2;->mMode:Lcom/ss/android/ttvecamera/framework/TECameraModeBase;

    if-nez v0, :cond_23

    goto :goto_27

    .line 838
    :cond_23
    invoke-virtual {v0, p1, p2, p3}, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->takePicture(IILcom/ss/android/ttvecamera/TECameraSettings$PictureCallback;)V

    return-void

    .line 833
    :cond_27
    :goto_27
    const-string p1, "takePicture : camera is null."

    invoke-static {v2, p1}, Lcom/ss/android/ttvecamera/TELogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 834
    iget-object p2, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mCameraEvents:Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;

    iget-object p3, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget p3, p3, Lcom/ss/android/ttvecamera/TECameraSettings;->mCameraType:I

    const/16 v0, -0x1b7

    iget-object p0, p0, Lcom/ss/android/ttvecamera/TECamera2;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    invoke-interface {p2, p3, v0, p1, p0}, Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;->onCameraError(IILjava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public takePicture(Lcom/ss/android/ttvecamera/TECameraSettings$PictureCallback;)V
    .registers 5

    .line 866
    iget v0, p0, Lcom/ss/android/ttvecamera/TECamera2;->mSessionState:I

    const/4 v1, 0x1

    const-string v2, "TECamera2"

    if-ne v0, v1, :cond_d

    .line 867
    const-string p0, "Camera is opening, ignore takePicture operation."

    invoke-static {v2, p0}, Lcom/ss/android/ttvecamera/TELogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 871
    :cond_d
    iget v0, p0, Lcom/ss/android/ttvecamera/TECamera2;->mSessionState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_18

    .line 872
    const-string p0, "Camera is opened, ignore takePicture operation."

    invoke-static {v2, p0}, Lcom/ss/android/ttvecamera/TELogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 876
    :cond_18
    invoke-virtual {p0}, Lcom/ss/android/ttvecamera/TECamera2;->_isDeviceReady()Z

    move-result v0

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECamera2;->mMode:Lcom/ss/android/ttvecamera/framework/TECameraModeBase;

    if-nez v0, :cond_23

    goto :goto_29

    .line 883
    :cond_23
    iget p0, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mNewFacing:I

    invoke-virtual {v0, p1, p0}, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->takePicture(Lcom/ss/android/ttvecamera/TECameraSettings$PictureCallback;I)V

    return-void

    .line 878
    :cond_29
    :goto_29
    const-string p1, "takePicture : camera is null."

    invoke-static {v2, p1}, Lcom/ss/android/ttvecamera/TELogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 879
    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mCameraEvents:Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;

    iget-object v1, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget v1, v1, Lcom/ss/android/ttvecamera/TECameraSettings;->mCameraType:I

    const/16 v2, -0x1b7

    iget-object p0, p0, Lcom/ss/android/ttvecamera/TECamera2;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    invoke-interface {v0, v1, v2, p1, p0}, Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;->onCameraError(IILjava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public toggleTorch(Z)V
    .registers 16

    .line 1289
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "toggleTorch: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TECamera2"

    invoke-static {v1, v0}, Lcom/ss/android/ttvecamera/TELogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1290
    iget v0, p0, Lcom/ss/android/ttvecamera/TECamera2;->mSessionState:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_36

    .line 1291
    const-string v0, "[VE_UI_TEST]Failed event: TOGGLE_TORCH. Code: -439. Reason: camera is opening, ignore toggleTorch operation"

    invoke-static {v1, v0}, Lcom/ss/android/ttvecamera/TELogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1293
    const-string v0, "Camera is opening, ignore toggleTorch operation."

    invoke-static {v1, v0}, Lcom/ss/android/ttvecamera/TELogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1294
    iget-object v2, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mCameraEvents:Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;

    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget v3, v0, Lcom/ss/android/ttvecamera/TECameraSettings;->mCameraType:I

    const/16 v4, -0x1b7

    iget-object v7, p0, Lcom/ss/android/ttvecamera/TECamera2;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    const-string v6, "Camera is opening, ignore toggleTorch operation."

    move v5, p1

    invoke-interface/range {v2 .. v7}, Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;->onTorchError(IIILjava/lang/String;Ljava/lang/Object;)V

    return-void

    :cond_36
    move v5, p1

    .line 1298
    invoke-virtual {p0}, Lcom/ss/android/ttvecamera/TECamera2;->_isDeviceReady()Z

    move-result p1

    if-eqz p1, :cond_46

    iget-object p1, p0, Lcom/ss/android/ttvecamera/TECamera2;->mMode:Lcom/ss/android/ttvecamera/framework/TECameraModeBase;

    if-nez p1, :cond_42

    goto :goto_46

    .line 1307
    :cond_42
    invoke-virtual {p1, v5}, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->toggleTorch(Z)I

    return-void

    .line 1299
    :cond_46
    :goto_46
    const-string p1, "[VE_UI_TEST]Failed event: TOGGLE_TORCH. Code: -439. Reason: camera is null"

    invoke-static {v1, p1}, Lcom/ss/android/ttvecamera/TELogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1301
    const-string v12, "Toggle torch failed, you must open camera first."

    invoke-static {v1, v12}, Lcom/ss/android/ttvecamera/TELogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1302
    iget-object p1, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mCameraEvents:Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;

    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget v0, v0, Lcom/ss/android/ttvecamera/TECameraSettings;->mCameraType:I

    const/16 v1, -0x1b7

    iget-object v2, p0, Lcom/ss/android/ttvecamera/TECamera2;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    invoke-interface {p1, v0, v1, v12, v2}, Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;->onCameraError(IILjava/lang/String;Ljava/lang/Object;)V

    .line 1303
    iget-object v8, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mCameraEvents:Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;

    iget-object p1, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget v9, p1, Lcom/ss/android/ttvecamera/TECameraSettings;->mCameraType:I

    const/16 v10, -0x1b7

    iget-object v13, p0, Lcom/ss/android/ttvecamera/TECamera2;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    move v11, v5

    invoke-interface/range {v8 .. v13}, Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;->onTorchError(IIILjava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public updateSessionState(I)V
    .registers 5

    .line 1433
    iget v0, p0, Lcom/ss/android/ttvecamera/TECamera2;->mSessionState:I

    const-string v1, "TECamera2"

    if-ne v0, p1, :cond_1b

    .line 1434
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "No need update state: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/ss/android/ttvecamera/TELogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1438
    :cond_1b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[updateSessionState]: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/ss/android/ttvecamera/TECamera2;->mSessionState:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " -> "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/ss/android/ttvecamera/TELogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1439
    iput p1, p0, Lcom/ss/android/ttvecamera/TECamera2;->mSessionState:I

    return-void
.end method

.method public waitCameraTaskDoneOrTimeout()V
    .registers 5

    .line 1748
    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget-boolean v0, v0, Lcom/ss/android/ttvecamera/TECameraSettings;->mUseSyncModeOnCamera2:Z

    if-eqz v0, :cond_2e

    .line 1749
    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECamera2;->mCameraCondition:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->close()V

    .line 1750
    const-string v0, "block camera-operation start..."

    const-string v1, "TECamera2"

    invoke-static {v1, v0}, Lcom/ss/android/ttvecamera/TELogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1751
    iget-object p0, p0, Lcom/ss/android/ttvecamera/TECamera2;->mCameraCondition:Landroid/os/ConditionVariable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {p0, v2, v3}, Landroid/os/ConditionVariable;->block(J)Z

    move-result p0

    .line 1752
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "block camera-operation end...result = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/ss/android/ttvecamera/TELogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2e
    return-void
.end method

.method public zoomV2(FLcom/ss/android/ttvecamera/TECameraSettings$ZoomCallback;)V
    .registers 6

    .line 1415
    iget v0, p0, Lcom/ss/android/ttvecamera/TECamera2;->mSessionState:I

    const/4 v1, 0x3

    const-string v2, "TECamera2"

    if-eq v0, v1, :cond_2d

    .line 1416
    const-string p1, "[VE_UI_TEST]Failed event: START_ZOOM. Code: -420. Reason: session is not running"

    invoke-static {v2, p1}, Lcom/ss/android/ttvecamera/TELogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1417
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Invalid state, state = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/ss/android/ttvecamera/TECamera2;->mSessionState:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1418
    iget-object p2, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mCameraEvents:Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;

    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget v0, v0, Lcom/ss/android/ttvecamera/TECameraSettings;->mCameraType:I

    const/16 v1, -0x1a4

    iget-object p0, p0, Lcom/ss/android/ttvecamera/TECamera2;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    invoke-interface {p2, v0, v1, p1, p0}, Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;->onCameraError(IILjava/lang/String;Ljava/lang/Object;)V

    return-void

    .line 1422
    :cond_2d
    invoke-virtual {p0}, Lcom/ss/android/ttvecamera/TECamera2;->_isDeviceReady()Z

    move-result v0

    if-eqz v0, :cond_3c

    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECamera2;->mMode:Lcom/ss/android/ttvecamera/framework/TECameraModeBase;

    if-nez v0, :cond_38

    goto :goto_3c

    .line 1429
    :cond_38
    invoke-virtual {v0, p1, p2}, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->zoomV2(FLcom/ss/android/ttvecamera/TECameraSettings$ZoomCallback;)V

    return-void

    .line 1423
    :cond_3c
    :goto_3c
    const-string p1, "[VE_UI_TEST]Failed event: START_ZOOM. Code: -439. Reason: camera is null"

    invoke-static {v2, p1}, Lcom/ss/android/ttvecamera/TELogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1425
    iget-object p1, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mCameraEvents:Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;

    iget-object p2, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget p2, p2, Lcom/ss/android/ttvecamera/TECameraSettings;->mCameraType:I

    const/16 v0, -0x1b7

    iget-object p0, p0, Lcom/ss/android/ttvecamera/TECamera2;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    const-string v1, "zoomV2 : Camera is null."

    invoke-interface {p1, p2, v0, v1, p0}, Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;->onCameraError(IILjava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
