.class public abstract Lcom/ss/android/ttvecamera/framework/TECameraModeBase;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ss/android/ttvecamera/framework/ITECameraMode;
.implements Lcom/ss/android/ttvecamera/focusmanager/ITEFocusStrategy$NormalCallbackRequest;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/android/ttvecamera/framework/TECameraModeBase$Response;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "TECameraModeBase"


# instance fields
.field protected ifFinalize:Z

.field private mActiveArraySize:Landroid/graphics/Rect;

.field public mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

.field protected mCameraDevice:Landroid/hardware/camera2/CameraDevice;

.field protected mCameraDevicesCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mCameraEvents:Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;

.field protected mCameraHolder:Lcom/ss/android/ttvecamera/TECamera2;

.field protected mCameraLightOn:Z

.field protected mCameraManager:Landroid/hardware/camera2/CameraManager;

.field protected volatile mCameraSession:Landroid/hardware/camera2/CameraCaptureSession;

.field protected mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

.field private mCameraThread:Landroid/os/HandlerThread;

.field protected mCameraThreadHandler:Landroid/os/Handler;

.field public mCaptureRequest:Landroid/hardware/camera2/CaptureRequest;

.field protected mCaptureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

.field protected mCreateSessionConsume:J

.field protected mCreateSessionStartTimestamp:J

.field protected mCurrentIso:I

.field protected mDeviceProxy:Lcom/ss/android/ttvecamera/hardware/TECameraHardware2Proxy;

.field private mEnableMulticamZoom:Z

.field protected mExposureCompensation:I

.field protected mFaceDetectSupportMode:[I

.field protected mFaceForce3aModesRequestKey:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "*>;"
        }
    .end annotation
.end field

.field protected mFirstRepeatingRequestStartTimestamp:J

.field private mFocusCancelRunnable:Ljava/lang/Runnable;

.field protected mFocusSettings:Lcom/ss/android/ttvecamera/TEFocusSettings;

.field protected mFocusStrategy:Lcom/ss/android/ttvecamera/focusmanager/TEFocusStrategyBase;

.field protected mFpsConfigCallback:Lcom/ss/android/ttvecamera/TECameraBase$CameraFpsConfigCallback;

.field protected mFpsRange:Lcom/ss/android/ttvecamera/TEFrameRateRange;

.field private final mGyroListener:Lcom/ss/android/ttvecamera/focusmanager/Gyro$GyroListener;

.field protected mHandler:Landroid/os/Handler;

.field protected volatile mIsActiveCameraSession:Z

.field protected volatile mIsFirstPreviewFrameArrived:Z

.field protected mIsSessionFinalized:Z

.field protected mIsSurfaceReady:Z

.field protected mManualFocusEngaged:Ljava/util/concurrent/atomic/AtomicBoolean;

.field protected mMaxZoom:F

.field protected mNowZoom:F

.field protected mOutputConfigurations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/hardware/camera2/params/OutputConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field protected mPictureSizeCallback:Lcom/ss/android/ttvecamera/TECameraBase$PictureSizeCallBack;

.field protected mPreviewCaptureCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

.field protected mPreviewCapturedFailedCount:I

.field protected mPreviewSizeCallback:Lcom/ss/android/ttvecamera/TECameraBase$PreviewSizeCallBack;

.field protected mSATZoomCallback:Lcom/ss/android/ttvecamera/TECameraBase$SATZoomCallback;

.field protected mSessionStateCallback:Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

.field public mStreamConfigurationMap:Landroid/hardware/camera2/params/StreamConfigurationMap;

.field protected mUseFaceAE:I

.field private mWhiteBalanceMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected mZoomRatioRange:Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field protected mZoomSize:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Lcom/ss/android/ttvecamera/TECamera2;Landroid/content/Context;Landroid/os/Handler;)V
    .registers 9

    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 87
    iput-object v0, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mStreamConfigurationMap:Landroid/hardware/camera2/params/StreamConfigurationMap;

    .line 90
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mManualFocusEngaged:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    .line 91
    iput-boolean v1, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->ifFinalize:Z

    const/4 v1, 0x0

    .line 92
    iput v1, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mMaxZoom:F

    const/high16 v1, 0x3f800000    # 1.0f

    .line 93
    iput v1, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mNowZoom:F

    .line 94
    iput-object v0, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mZoomRatioRange:Landroid/util/Range;

    .line 95
    iput v2, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mExposureCompensation:I

    .line 97
    iput-object v0, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mZoomSize:Landroid/graphics/Rect;

    .line 99
    iput-object v0, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mPreviewSizeCallback:Lcom/ss/android/ttvecamera/TECameraBase$PreviewSizeCallBack;

    .line 103
    iput v2, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mUseFaceAE:I

    .line 104
    iput-object v0, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mFaceForce3aModesRequestKey:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 106
    new-instance v1, Lcom/ss/android/ttvecamera/TEFrameRateRange;

    const/4 v3, 0x7

    const/16 v4, 0x1e

    invoke-direct {v1, v3, v4}, Lcom/ss/android/ttvecamera/TEFrameRateRange;-><init>(II)V

    iput-object v1, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mFpsRange:Lcom/ss/android/ttvecamera/TEFrameRateRange;

    .line 109
    iput-object v0, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraThreadHandler:Landroid/os/Handler;

    .line 113
    iput-object v0, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraThread:Landroid/os/HandlerThread;

    .line 125
    iput-boolean v2, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mIsFirstPreviewFrameArrived:Z

    const-wide/16 v0, 0x0

    .line 127
    iput-wide v0, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCreateSessionStartTimestamp:J

    .line 128
    iput-wide v0, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCreateSessionConsume:J

    .line 129
    iput-wide v0, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mFirstRepeatingRequestStartTimestamp:J

    .line 131
    iput v2, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mPreviewCapturedFailedCount:I

    .line 133
    iput-boolean v2, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraLightOn:Z

    .line 134
    iput-boolean v2, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mEnableMulticamZoom:Z

    .line 139
    iput-boolean v2, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mIsActiveCameraSession:Z

    .line 141
    new-instance v0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase$1;

    invoke-direct {v0, p0}, Lcom/ss/android/ttvecamera/framework/TECameraModeBase$1;-><init>(Lcom/ss/android/ttvecamera/framework/TECameraModeBase;)V

    iput-object v0, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mWhiteBalanceMap:Ljava/util/Map;

    .line 154
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraDevicesCache:Ljava/util/HashMap;

    .line 240
    iput-boolean v2, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mIsSessionFinalized:Z

    .line 241
    iput-boolean v2, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mIsSurfaceReady:Z

    .line 242
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mOutputConfigurations:Ljava/util/List;

    .line 677
    new-instance v0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase$3;

    invoke-direct {v0, p0}, Lcom/ss/android/ttvecamera/framework/TECameraModeBase$3;-><init>(Lcom/ss/android/ttvecamera/framework/TECameraModeBase;)V

    iput-object v0, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mFocusCancelRunnable:Ljava/lang/Runnable;

    .line 931
    new-instance v0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase$4;

    invoke-direct {v0, p0}, Lcom/ss/android/ttvecamera/framework/TECameraModeBase$4;-><init>(Lcom/ss/android/ttvecamera/framework/TECameraModeBase;)V

    iput-object v0, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mGyroListener:Lcom/ss/android/ttvecamera/focusmanager/Gyro$GyroListener;

    .line 1564
    new-instance v0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase$5;

    invoke-direct {v0, p0}, Lcom/ss/android/ttvecamera/framework/TECameraModeBase$5;-><init>(Lcom/ss/android/ttvecamera/framework/TECameraModeBase;)V

    iput-object v0, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mSessionStateCallback:Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

    .line 1640
    new-instance v0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase$6;

    invoke-direct {v0, p0}, Lcom/ss/android/ttvecamera/framework/TECameraModeBase$6;-><init>(Lcom/ss/android/ttvecamera/framework/TECameraModeBase;)V

    iput-object v0, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mPreviewCaptureCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    .line 157
    iput-object p1, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraHolder:Lcom/ss/android/ttvecamera/TECamera2;

    .line 158
    invoke-virtual {p1}, Lcom/ss/android/ttvecamera/TECameraBase;->getCameraSettings()Lcom/ss/android/ttvecamera/TECameraSettings;

    move-result-object p1

    iput-object p1, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    .line 159
    iget p1, p1, Lcom/ss/android/ttvecamera/TECameraSettings;->mCameraType:I

    invoke-static {p2, p1}, Lcom/ss/android/ttvecamera/hardware/TECameraHardware2Proxy;->getDeviceProxy(Landroid/content/Context;I)Lcom/ss/android/ttvecamera/hardware/TECameraHardware2Proxy;

    move-result-object p1

    iput-object p1, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mDeviceProxy:Lcom/ss/android/ttvecamera/hardware/TECameraHardware2Proxy;

    .line 160
    iget-object p1, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraHolder:Lcom/ss/android/ttvecamera/TECamera2;

    invoke-virtual {p1}, Lcom/ss/android/ttvecamera/TECameraBase;->getCameraEvents()Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;

    move-result-object p1

    iput-object p1, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraEvents:Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;

    .line 161
    iput-object p3, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mHandler:Landroid/os/Handler;

    .line 163
    iget-object p1, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget-boolean p1, p1, Lcom/ss/android/ttvecamera/TECameraSettings;->mEnableManualReleaseCaptureResult:Z

    iput-boolean p1, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->ifFinalize:Z

    .line 164
    iput-boolean v2, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraLightOn:Z

    return-void
.end method

.method static synthetic access$000(Lcom/ss/android/ttvecamera/framework/TECameraModeBase;)Lcom/ss/android/ttvecamera/focusmanager/Gyro$GyroListener;
    .registers 1

    .line 73
    iget-object p0, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mGyroListener:Lcom/ss/android/ttvecamera/focusmanager/Gyro$GyroListener;

    return-object p0
.end method

.method public static convertSizes([Landroid/util/Size;)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/util/Size;",
            ")",
            "Ljava/util/List<",
            "Lcom/ss/android/ttvecamera/TEFrameSizei;",
            ">;"
        }
    .end annotation

    .line 1555
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1556
    array-length v1, p0

    const/4 v2, 0x0

    :goto_7
    if-ge v2, v1, :cond_1e

    aget-object v3, p0, v2

    .line 1557
    new-instance v4, Lcom/ss/android/ttvecamera/TEFrameSizei;

    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result v5

    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v3

    invoke-direct {v4, v5, v3}, Lcom/ss/android/ttvecamera/TEFrameSizei;-><init>(II)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_1e
    return-object v0
.end method

.method private doFocusOrMeter(Lcom/ss/android/ttvecamera/TEFocusSettings;)I
    .registers 22

    move-object/from16 v1, p0

    move-object/from16 v9, p1

    const/4 v10, 0x1

    .line 774
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/4 v12, 0x0

    .line 777
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    .line 689
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "settings = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v14, "TECameraModeBase"

    invoke-static {v14, v0}, Lcom/ss/android/ttvecamera/TELogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 690
    iput-object v9, v1, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mFocusSettings:Lcom/ss/android/ttvecamera/TEFocusSettings;

    .line 691
    iget-object v0, v1, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mFocusStrategy:Lcom/ss/android/ttvecamera/focusmanager/TEFocusStrategyBase;

    invoke-virtual {v0, v9}, Lcom/ss/android/ttvecamera/focusmanager/TEFocusStrategyBase;->setFocusSettings(Lcom/ss/android/ttvecamera/TEFocusSettings;)V

    .line 692
    iget-object v0, v1, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mFocusStrategy:Lcom/ss/android/ttvecamera/focusmanager/TEFocusStrategyBase;

    iget-object v2, v1, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    invoke-virtual {v0, v2}, Lcom/ss/android/ttvecamera/focusmanager/TEFocusStrategyBase;->setCameraSettings(Lcom/ss/android/ttvecamera/TECameraSettings;)V

    .line 695
    iget-object v0, v1, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mDeviceProxy:Lcom/ss/android/ttvecamera/hardware/TECameraHardware2Proxy;

    const/16 v15, -0x64

    if-eqz v0, :cond_246

    iget-object v0, v1, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraSession:Landroid/hardware/camera2/CameraCaptureSession;

    if-eqz v0, :cond_246

    iget-object v0, v1, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCaptureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    if-eqz v0, :cond_246

    iget-object v0, v1, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mFocusSettings:Lcom/ss/android/ttvecamera/TEFocusSettings;

    if-nez v0, :cond_46

    goto/16 :goto_246

    .line 704
    :cond_46
    iget-object v0, v1, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mDeviceProxy:Lcom/ss/android/ttvecamera/hardware/TECameraHardware2Proxy;

    iget-object v2, v1, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {v0, v2}, Lcom/ss/android/ttvecamera/hardware/TECameraHardware2Proxy;->isMeteringSupported(Landroid/hardware/camera2/CameraCharacteristics;)Z

    move-result v2

    .line 705
    iget-object v0, v1, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mDeviceProxy:Lcom/ss/android/ttvecamera/hardware/TECameraHardware2Proxy;

    iget-object v3, v1, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {v0, v3}, Lcom/ss/android/ttvecamera/hardware/TECameraHardware2Proxy;->isFocusSupported(Landroid/hardware/camera2/CameraCharacteristics;)Z

    move-result v16

    const/16 v3, -0x19c

    if-nez v16, :cond_6f

    if-nez v2, :cond_6f

    .line 708
    const-string v0, "not support focus and meter!"

    invoke-static {v14, v0}, Lcom/ss/android/ttvecamera/TELogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 709
    iget-object v2, v1, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mFocusSettings:Lcom/ss/android/ttvecamera/TEFocusSettings;

    invoke-virtual {v2}, Lcom/ss/android/ttvecamera/TEFocusSettings;->getFocusCallback()Lcom/ss/android/ttvecamera/TEFocusSettings$ITEFocusCallback;

    move-result-object v2

    iget-object v1, v1, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget v1, v1, Lcom/ss/android/ttvecamera/TECameraSettings;->mFacing:I

    invoke-interface {v2, v3, v1, v0}, Lcom/ss/android/ttvecamera/TEFocusSettings$ITEFocusCallback;->onFocus(IILjava/lang/String;)V

    return v3

    .line 714
    :cond_6f
    iget-object v0, v1, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mManualFocusEngaged:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v16, :cond_83

    .line 715
    iget-object v4, v1, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mFocusSettings:Lcom/ss/android/ttvecamera/TEFocusSettings;

    invoke-virtual {v4}, Lcom/ss/android/ttvecamera/TEFocusSettings;->isNeedFocus()Z

    move-result v4

    if-nez v4, :cond_80

    goto :goto_83

    :cond_80
    move/from16 v17, v12

    goto :goto_85

    :cond_83
    :goto_83
    move/from16 v17, v10

    :goto_85
    if-eqz v0, :cond_9d

    if-nez v17, :cond_9d

    .line 718
    iget-object v0, v1, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mFocusCancelRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    const-wide/16 v4, 0x32

    .line 720
    :try_start_90
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_93
    .catch Ljava/lang/InterruptedException; {:try_start_90 .. :try_end_93} :catch_94

    goto :goto_98

    :catch_94
    move-exception v0

    .line 722
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 724
    :goto_98
    const-string v0, "cancel previous touch af.."

    invoke-static {v14, v0}, Lcom/ss/android/ttvecamera/TELogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9d
    if-eqz v2, :cond_a9

    .line 729
    iget-object v0, v1, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mFocusSettings:Lcom/ss/android/ttvecamera/TEFocusSettings;

    invoke-virtual {v0}, Lcom/ss/android/ttvecamera/TEFocusSettings;->isNeedMetering()Z

    move-result v0

    if-eqz v0, :cond_a9

    move v0, v10

    goto :goto_aa

    :cond_a9
    move v0, v12

    :goto_aa
    const/4 v2, 0x0

    if-eqz v0, :cond_131

    .line 732
    iget-object v0, v1, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mFocusSettings:Lcom/ss/android/ttvecamera/TEFocusSettings;

    iget-object v4, v1, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget v5, v4, Lcom/ss/android/ttvecamera/TECameraSettings;->mRotation:I

    iget v4, v4, Lcom/ss/android/ttvecamera/TECameraSettings;->mFacing:I

    if-ne v4, v10, :cond_b9

    move v4, v10

    goto :goto_ba

    :cond_b9
    move v4, v12

    :goto_ba
    invoke-virtual {v0, v5, v4}, Lcom/ss/android/ttvecamera/TEFocusSettings;->calculateMeteringArea(IZ)Landroid/graphics/Rect;

    move-result-object v0

    if-nez v0, :cond_fa

    .line 734
    iget-object v0, v1, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mFocusSettings:Lcom/ss/android/ttvecamera/TEFocusSettings;

    invoke-virtual {v0}, Lcom/ss/android/ttvecamera/TEFocusSettings;->getWidth()I

    move-result v0

    iget-object v4, v1, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mFocusSettings:Lcom/ss/android/ttvecamera/TEFocusSettings;

    invoke-virtual {v4}, Lcom/ss/android/ttvecamera/TEFocusSettings;->getHeight()I

    move-result v4

    iget-object v5, v1, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mFocusSettings:Lcom/ss/android/ttvecamera/TEFocusSettings;

    .line 735
    invoke-virtual {v5}, Lcom/ss/android/ttvecamera/TEFocusSettings;->getX()I

    move-result v5

    int-to-float v5, v5

    iget-object v6, v1, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mFocusSettings:Lcom/ss/android/ttvecamera/TEFocusSettings;

    invoke-virtual {v6}, Lcom/ss/android/ttvecamera/TEFocusSettings;->getY()I

    move-result v6

    int-to-float v6, v6

    iget-object v7, v1, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget v7, v7, Lcom/ss/android/ttvecamera/TECameraSettings;->mRotation:I

    iget-object v8, v1, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mFocusSettings:Lcom/ss/android/ttvecamera/TEFocusSettings;

    .line 736
    invoke-virtual {v8}, Lcom/ss/android/ttvecamera/TEFocusSettings;->getCoordinatesMode()Lcom/ss/android/ttvecamera/TEFocusSettings$CoordinatesMode;

    move-result-object v8

    move/from16 v18, v3

    move v3, v4

    move v4, v5

    move v5, v6

    move v6, v7

    const/4 v7, 0x1

    move-object/from16 v19, v2

    move v2, v0

    move-object/from16 v0, v19

    .line 734
    invoke-virtual/range {v1 .. v8}, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->_calculateFocusRect(IIFFIILcom/ss/android/ttvecamera/TEFocusSettings$CoordinatesMode;)Landroid/graphics/Rect;

    move-result-object v2

    move-object/from16 v19, v2

    move-object v2, v0

    move-object/from16 v0, v19

    goto :goto_fc

    :cond_fa
    move/from16 v18, v3

    .line 738
    :goto_fc
    invoke-static {v0}, Lcom/ss/android/ttvecamera/TECameraUtils;->isValidRect(Landroid/graphics/Rect;)Z

    move-result v3

    if-nez v3, :cond_115

    .line 740
    const-string v0, "meteringRect is not valid!"

    invoke-static {v14, v0}, Lcom/ss/android/ttvecamera/TELogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 741
    iget-object v2, v1, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mFocusSettings:Lcom/ss/android/ttvecamera/TEFocusSettings;

    invoke-virtual {v2}, Lcom/ss/android/ttvecamera/TEFocusSettings;->getFocusCallback()Lcom/ss/android/ttvecamera/TEFocusSettings$ITEFocusCallback;

    move-result-object v2

    iget-object v1, v1, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget v1, v1, Lcom/ss/android/ttvecamera/TECameraSettings;->mFacing:I

    invoke-interface {v2, v15, v1, v0}, Lcom/ss/android/ttvecamera/TEFocusSettings$ITEFocusCallback;->onFocus(IILjava/lang/String;)V

    return v15

    .line 745
    :cond_115
    iget-object v3, v1, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mFocusStrategy:Lcom/ss/android/ttvecamera/focusmanager/TEFocusStrategyBase;

    iget-object v4, v1, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCaptureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {v3, v4, v0}, Lcom/ss/android/ttvecamera/focusmanager/TEFocusStrategyBase;->configMeter(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/graphics/Rect;)V

    if-eqz v17, :cond_134

    .line 747
    iget-object v0, v1, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCaptureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v2, v1, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mFocusStrategy:Lcom/ss/android/ttvecamera/focusmanager/TEFocusStrategyBase;

    invoke-interface {v2, v0, v12}, Lcom/ss/android/ttvecamera/focusmanager/ITEFocusStrategy;->getMeteringCaptureCallback(Landroid/hardware/camera2/CaptureRequest$Builder;Z)Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    move-result-object v2

    iget-object v3, v1, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0, v2, v3}, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->updatePreview(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)Lcom/ss/android/ttvecamera/framework/TECameraModeBase$Response;

    .line 748
    iget-object v0, v1, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mManualFocusEngaged:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v12}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return v12

    :cond_131
    move/from16 v18, v3

    move-object v0, v2

    :cond_134
    if-eqz v16, :cond_245

    .line 754
    iget-object v3, v1, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mFocusSettings:Lcom/ss/android/ttvecamera/TEFocusSettings;

    invoke-virtual {v3}, Lcom/ss/android/ttvecamera/TEFocusSettings;->isNeedFocus()Z

    move-result v3

    if-eqz v3, :cond_245

    .line 756
    iget-object v3, v1, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mFocusSettings:Lcom/ss/android/ttvecamera/TEFocusSettings;

    iget-object v4, v1, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget v5, v4, Lcom/ss/android/ttvecamera/TECameraSettings;->mRotation:I

    iget v4, v4, Lcom/ss/android/ttvecamera/TECameraSettings;->mFacing:I

    if-ne v4, v10, :cond_14a

    move v4, v10

    goto :goto_14b

    :cond_14a
    move v4, v12

    :goto_14b
    invoke-virtual {v3, v5, v4}, Lcom/ss/android/ttvecamera/TEFocusSettings;->calculateFocusArea(IZ)Landroid/graphics/Rect;

    move-result-object v3

    if-nez v3, :cond_181

    .line 758
    iget-object v3, v1, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mFocusSettings:Lcom/ss/android/ttvecamera/TEFocusSettings;

    invoke-virtual {v3}, Lcom/ss/android/ttvecamera/TEFocusSettings;->getWidth()I

    move-result v3

    iget-object v4, v1, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mFocusSettings:Lcom/ss/android/ttvecamera/TEFocusSettings;

    invoke-virtual {v4}, Lcom/ss/android/ttvecamera/TEFocusSettings;->getHeight()I

    move-result v4

    iget-object v5, v1, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mFocusSettings:Lcom/ss/android/ttvecamera/TEFocusSettings;

    .line 759
    invoke-virtual {v5}, Lcom/ss/android/ttvecamera/TEFocusSettings;->getX()I

    move-result v5

    int-to-float v5, v5

    iget-object v6, v1, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mFocusSettings:Lcom/ss/android/ttvecamera/TEFocusSettings;

    invoke-virtual {v6}, Lcom/ss/android/ttvecamera/TEFocusSettings;->getY()I

    move-result v6

    int-to-float v6, v6

    iget-object v7, v1, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget v7, v7, Lcom/ss/android/ttvecamera/TECameraSettings;->mRotation:I

    iget-object v8, v1, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mFocusSettings:Lcom/ss/android/ttvecamera/TEFocusSettings;

    .line 760
    invoke-virtual {v8}, Lcom/ss/android/ttvecamera/TEFocusSettings;->getCoordinatesMode()Lcom/ss/android/ttvecamera/TEFocusSettings$CoordinatesMode;

    move-result-object v8

    move-object/from16 v16, v2

    move v2, v3

    move v3, v4

    move v4, v5

    move v5, v6

    move v6, v7

    const/4 v7, 0x0

    .line 758
    invoke-virtual/range {v1 .. v8}, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->_calculateFocusRect(IIFFIILcom/ss/android/ttvecamera/TEFocusSettings$CoordinatesMode;)Landroid/graphics/Rect;

    move-result-object v3

    .line 762
    :cond_181
    invoke-static {v3}, Lcom/ss/android/ttvecamera/TECameraUtils;->isValidRect(Landroid/graphics/Rect;)Z

    move-result v2

    if-nez v2, :cond_19a

    .line 764
    const-string v0, "focusRect is not valid!"

    invoke-static {v14, v0}, Lcom/ss/android/ttvecamera/TELogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 765
    iget-object v2, v1, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mFocusSettings:Lcom/ss/android/ttvecamera/TEFocusSettings;

    invoke-virtual {v2}, Lcom/ss/android/ttvecamera/TEFocusSettings;->getFocusCallback()Lcom/ss/android/ttvecamera/TEFocusSettings$ITEFocusCallback;

    move-result-object v2

    iget-object v1, v1, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget v1, v1, Lcom/ss/android/ttvecamera/TECameraSettings;->mFacing:I

    invoke-interface {v2, v15, v1, v0}, Lcom/ss/android/ttvecamera/TEFocusSettings$ITEFocusCallback;->onFocus(IILjava/lang/String;)V

    return v15

    .line 770
    :cond_19a
    iget-object v2, v1, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mManualFocusEngaged:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v10}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 771
    iget-boolean v2, v1, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraLightOn:Z

    if-eqz v2, :cond_1cb

    .line 772
    invoke-virtual {v9}, Lcom/ss/android/ttvecamera/TEFocusSettings;->isFromUser()Z

    move-result v2

    if-eqz v2, :cond_1bd

    .line 773
    iget-object v2, v1, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCaptureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v4, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v5, 0x3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 774
    iget-object v2, v1, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCaptureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v4, Landroid/hardware/camera2/CaptureRequest;->FLASH_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v2, v4, v11}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_1cb

    .line 776
    :cond_1bd
    iget-object v2, v1, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCaptureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v4, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v2, v4, v11}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 777
    iget-object v2, v1, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCaptureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v4, Landroid/hardware/camera2/CaptureRequest;->FLASH_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v2, v4, v13}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 780
    :cond_1cb
    :goto_1cb
    iget-object v2, v1, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mFocusStrategy:Lcom/ss/android/ttvecamera/focusmanager/TEFocusStrategyBase;

    iget-object v4, v1, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCaptureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {v2, v4, v3}, Lcom/ss/android/ttvecamera/focusmanager/TEFocusStrategyBase;->configFocus(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/graphics/Rect;)V

    .line 781
    iget-object v2, v1, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCaptureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {v1, v2}, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->capture(Landroid/hardware/camera2/CaptureRequest$Builder;)Lcom/ss/android/ttvecamera/framework/TECameraModeBase$Response;

    .line 784
    iget-object v2, v1, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCaptureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v4, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v2, v4, v13}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 785
    iget-object v2, v1, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCaptureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v4, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_REGIONS:Landroid/hardware/camera2/CaptureRequest$Key;

    new-instance v5, Landroid/hardware/camera2/params/MeteringRectangle;

    const/16 v6, 0x3e7

    invoke-direct {v5, v3, v6}, Landroid/hardware/camera2/params/MeteringRectangle;-><init>(Landroid/graphics/Rect;I)V

    filled-new-array {v5}, [Landroid/hardware/camera2/params/MeteringRectangle;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    if-eqz v0, :cond_202

    .line 788
    iget-object v2, v1, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCaptureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_REGIONS:Landroid/hardware/camera2/CaptureRequest$Key;

    new-instance v4, Landroid/hardware/camera2/params/MeteringRectangle;

    invoke-direct {v4, v0, v6}, Landroid/hardware/camera2/params/MeteringRectangle;-><init>(Landroid/graphics/Rect;I)V

    filled-new-array {v4}, [Landroid/hardware/camera2/params/MeteringRectangle;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 791
    :cond_202
    iget-object v0, v1, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCaptureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_PRECAPTURE_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v0, v2, v13}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 792
    iget-object v0, v1, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCaptureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v2, v1, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mFocusStrategy:Lcom/ss/android/ttvecamera/focusmanager/TEFocusStrategyBase;

    iget-object v3, v1, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mManualFocusEngaged:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 793
    invoke-virtual {v9}, Lcom/ss/android/ttvecamera/TEFocusSettings;->isLock()Z

    move-result v4

    invoke-interface {v2, v0, v3, v4}, Lcom/ss/android/ttvecamera/focusmanager/ITEFocusStrategy;->getFocusCaptureCallback(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/util/concurrent/atomic/AtomicBoolean;Z)Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    move-result-object v2

    iget-object v3, v1, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mHandler:Landroid/os/Handler;

    .line 792
    invoke-virtual {v1, v0, v2, v3}, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->updatePreview(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)Lcom/ss/android/ttvecamera/framework/TECameraModeBase$Response;

    move-result-object v0

    .line 794
    iget-boolean v2, v0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase$Response;->isSuccess:Z

    if-nez v2, :cond_244

    .line 795
    iget-object v2, v1, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mManualFocusEngaged:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v12}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 796
    iget-object v2, v1, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mFocusSettings:Lcom/ss/android/ttvecamera/TEFocusSettings;

    const/16 v3, -0x6c

    if-eqz v2, :cond_239

    .line 797
    invoke-virtual {v2}, Lcom/ss/android/ttvecamera/TEFocusSettings;->getFocusCallback()Lcom/ss/android/ttvecamera/TEFocusSettings$ITEFocusCallback;

    move-result-object v2

    iget-object v4, v1, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget v4, v4, Lcom/ss/android/ttvecamera/TECameraSettings;->mFacing:I

    iget-object v5, v0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase$Response;->errMsg:Ljava/lang/String;

    invoke-interface {v2, v3, v4, v5}, Lcom/ss/android/ttvecamera/TEFocusSettings$ITEFocusCallback;->onFocus(IILjava/lang/String;)V

    .line 799
    :cond_239
    iget-object v1, v1, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraEvents:Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;

    iget-object v0, v0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase$Response;->errMsg:Ljava/lang/String;

    const/16 v2, -0x19b

    const/4 v4, 0x0

    invoke-interface {v1, v2, v2, v0, v4}, Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;->onCameraInfo(IILjava/lang/String;Ljava/lang/Object;)V

    return v3

    :cond_244
    return v12

    :cond_245
    return v18

    .line 697
    :cond_246
    :goto_246
    const-string v0, "Env is null"

    invoke-static {v14, v0}, Lcom/ss/android/ttvecamera/TELogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 698
    iget-object v2, v1, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mFocusSettings:Lcom/ss/android/ttvecamera/TEFocusSettings;

    if-eqz v2, :cond_25a

    .line 699
    invoke-virtual {v2}, Lcom/ss/android/ttvecamera/TEFocusSettings;->getFocusCallback()Lcom/ss/android/ttvecamera/TEFocusSettings$ITEFocusCallback;

    move-result-object v2

    iget-object v1, v1, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget v1, v1, Lcom/ss/android/ttvecamera/TECameraSettings;->mFacing:I

    invoke-interface {v2, v15, v1, v0}, Lcom/ss/android/ttvecamera/TEFocusSettings$ITEFocusCallback;->onFocus(IILjava/lang/String;)V

    :cond_25a
    return v15
.end method

.method private setFPSRange()V
    .registers 7

    .line 1444
    iget-object v0, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mDeviceProxy:Lcom/ss/android/ttvecamera/hardware/TECameraHardware2Proxy;

    iget-object v1, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    iget-object v2, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget-object v3, v2, Lcom/ss/android/ttvecamera/TECameraSettings;->mFPSRange:Lcom/ss/android/ttvecamera/TEFrameRateRange;

    move-object v4, v2

    iget v2, v3, Lcom/ss/android/ttvecamera/TEFrameRateRange;->min:I

    iget v3, v3, Lcom/ss/android/ttvecamera/TEFrameRateRange;->max:I

    move-object v5, v4

    iget v4, v5, Lcom/ss/android/ttvecamera/TECameraSettings;->mCameraFrameRateStrategy:I

    iget v5, v5, Lcom/ss/android/ttvecamera/TECameraSettings;->mFacing:I

    invoke-virtual/range {v0 .. v5}, Lcom/ss/android/ttvecamera/hardware/TECameraHardware2Proxy;->getFPSRange(Landroid/hardware/camera2/CameraCharacteristics;IIII)Lcom/ss/android/ttvecamera/TEFrameRateRange;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mFpsRange:Lcom/ss/android/ttvecamera/TEFrameRateRange;

    .line 1447
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Set Fps Range: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mFpsRange:Lcom/ss/android/ttvecamera/TEFrameRateRange;

    invoke-virtual {v1}, Lcom/ss/android/ttvecamera/TEFrameRateRange;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", strategy: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget p0, p0, Lcom/ss/android/ttvecamera/TECameraSettings;->mCameraFrameRateStrategy:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "TECameraModeBase"

    invoke-static {v0, p0}, Lcom/ss/android/ttvecamera/TELogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private startCameraFaceDetect(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 7

    const/4 v0, 0x1

    .line 548
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 546
    iget-object v2, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mFaceDetectSupportMode:[I

    const-string v3, "FaceDetect is not supported!"

    const-string v4, "TECameraModeBase"

    if-eqz v2, :cond_43

    .line 547
    invoke-static {v2, v0}, Lcom/ss/android/ttvecamera/TECameraUtils;->contains([II)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 548
    sget-object p0, Landroid/hardware/camera2/CaptureRequest;->STATISTICS_FACE_DETECT_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p1, p0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 549
    sget-object p0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_SCENE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p1, p0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    return-void

    .line 550
    :cond_1e
    iget-object v0, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mFaceDetectSupportMode:[I

    const/4 v2, 0x2

    invoke-static {v0, v2}, Lcom/ss/android/ttvecamera/TECameraUtils;->contains([II)Z

    move-result v0

    if-eqz v0, :cond_36

    .line 551
    sget-object p0, Landroid/hardware/camera2/CaptureRequest;->STATISTICS_FACE_DETECT_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 552
    sget-object p0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_SCENE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p1, p0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    return-void

    .line 553
    :cond_36
    iget-object p0, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mFaceDetectSupportMode:[I

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/ss/android/ttvecamera/TECameraUtils;->contains([II)Z

    move-result p0

    if-eqz p0, :cond_42

    .line 554
    invoke-static {v4, v3}, Lcom/ss/android/ttvecamera/TELogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_42
    return-void

    .line 557
    :cond_43
    invoke-static {v4, v3}, Lcom/ss/android/ttvecamera/TELogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected _calculateFocusRect(IIFFIILcom/ss/android/ttvecamera/TEFocusSettings$CoordinatesMode;)Landroid/graphics/Rect;
    .registers 28

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p5

    move-object/from16 v4, p7

    .line 1451
    iget-object v5, v0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCaptureRequest:Landroid/hardware/camera2/CaptureRequest;

    const-string v6, "TECameraModeBase"

    if-nez v5, :cond_17

    .line 1452
    const-string v0, "_calculateFocusRect, capture request is null, return"

    invoke-static {v6, v0}, Lcom/ss/android/ttvecamera/TELogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0

    .line 1455
    :cond_17
    iget-object v5, v0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v7, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_ACTIVE_ARRAY_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v5, v7}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Rect;

    .line 1456
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SENSOR_INFO_ACTIVE_ARRAY_SIZE: [left, top, right, bottom] = ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v5, Landroid/graphics/Rect;->left:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v5, Landroid/graphics/Rect;->top:I

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v5, Landroid/graphics/Rect;->right:I

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v5, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, "]"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/ss/android/ttvecamera/TELogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1459
    iget-object v7, v0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v10, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_PIXEL_ARRAY_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v7, v10}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/util/Size;

    .line 1460
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "mCameraCharacteristics:[width, height]: ["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1461
    invoke-virtual {v7}, Landroid/util/Size;->getWidth()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Landroid/util/Size;->getHeight()I

    move-result v7

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1460
    const-string v9, "onAreaTouchEvent"

    invoke-static {v9, v7}, Lcom/ss/android/ttvecamera/TELogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1463
    iget-object v7, v0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget-object v9, v7, Lcom/ss/android/ttvecamera/TECameraSettings;->mPreviewSize:Lcom/ss/android/ttvecamera/TEFrameSizei;

    iget v10, v9, Lcom/ss/android/ttvecamera/TEFrameSizei;->width:I

    .line 1464
    iget v9, v9, Lcom/ss/android/ttvecamera/TEFrameSizei;->height:I

    .line 1467
    sget-object v11, Lcom/ss/android/ttvecamera/TEFocusSettings$CoordinatesMode;->VIEW:Lcom/ss/android/ttvecamera/TEFocusSettings$CoordinatesMode;

    const/16 v12, 0x10e

    const/16 v13, 0x5a

    if-ne v4, v11, :cond_a0

    iget v7, v7, Lcom/ss/android/ttvecamera/TECameraSettings;->mRotation:I

    if-eq v13, v7, :cond_9d

    if-ne v12, v7, :cond_a0

    :cond_9d
    move v14, v9

    move v7, v10

    goto :goto_a2

    :cond_a0
    move v7, v9

    move v14, v10

    :goto_a2
    mul-int v15, v7, v1

    mul-int v12, v14, v2

    const/high16 v16, 0x40000000    # 2.0f

    const/high16 v17, 0x3f800000    # 1.0f

    const/16 v18, 0x0

    if-lt v15, v12, :cond_bd

    int-to-float v1, v1

    mul-float v1, v1, v17

    int-to-float v12, v14

    div-float/2addr v1, v12

    int-to-float v7, v7

    mul-float/2addr v7, v1

    int-to-float v2, v2

    sub-float/2addr v7, v2

    div-float v7, v7, v16

    move v2, v7

    move/from16 v7, v18

    goto :goto_cb

    :cond_bd
    int-to-float v2, v2

    mul-float v2, v2, v17

    int-to-float v7, v7

    div-float/2addr v2, v7

    int-to-float v7, v14

    mul-float/2addr v7, v2

    int-to-float v1, v1

    sub-float/2addr v7, v1

    div-float v7, v7, v16

    move v1, v2

    move/from16 v2, v18

    :goto_cb
    add-float v7, p3, v7

    div-float/2addr v7, v1

    add-float v2, p4, v2

    div-float/2addr v2, v1

    if-ne v4, v11, :cond_e6

    if-ne v13, v3, :cond_de

    int-to-float v1, v9

    sub-float v7, v1, v7

    move/from16 v19, v7

    move v7, v2

    move/from16 v2, v19

    goto :goto_e6

    :cond_de
    const/16 v1, 0x10e

    if-ne v1, v3, :cond_e6

    int-to-float v1, v10

    sub-float/2addr v1, v2

    move v2, v7

    move v7, v1

    .line 1497
    :cond_e6
    :goto_e6
    iget-object v1, v0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCaptureRequest:Landroid/hardware/camera2/CaptureRequest;

    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->SCALER_CROP_REGION:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v1, v3}, Landroid/hardware/camera2/CaptureRequest;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    if-eqz v1, :cond_fb

    .line 1498
    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_f9

    goto :goto_fb

    :cond_f9
    move-object v5, v1

    goto :goto_100

    .line 1499
    :cond_fb
    :goto_fb
    const-string v1, "can\'t get crop region"

    invoke-static {v6, v1}, Lcom/ss/android/ttvecamera/TELogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1502
    :goto_100
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cropRegion Rect: [left, top, right, bottom] = ["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v5, Landroid/graphics/Rect;->left:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v5, Landroid/graphics/Rect;->top:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v5, Landroid/graphics/Rect;->right:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v5, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Lcom/ss/android/ttvecamera/TELogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1505
    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v3

    .line 1506
    iget-object v0, v0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget-object v9, v0, Lcom/ss/android/ttvecamera/TECameraSettings;->mPreviewSize:Lcom/ss/android/ttvecamera/TEFrameSizei;

    iget v10, v9, Lcom/ss/android/ttvecamera/TEFrameSizei;->height:I

    mul-int v12, v10, v1

    iget v9, v9, Lcom/ss/android/ttvecamera/TEFrameSizei;->width:I

    mul-int v13, v9, v3

    if-le v12, v13, :cond_156

    int-to-float v3, v3

    mul-float v3, v3, v17

    int-to-float v10, v10

    div-float/2addr v3, v10

    int-to-float v1, v1

    int-to-float v9, v9

    mul-float/2addr v9, v3

    sub-float/2addr v1, v9

    div-float v1, v1, v16

    move/from16 v19, v18

    move/from16 v18, v1

    :goto_153
    move/from16 v1, v19

    goto :goto_165

    :cond_156
    int-to-float v1, v1

    mul-float v1, v1, v17

    int-to-float v9, v9

    div-float/2addr v1, v9

    int-to-float v3, v3

    int-to-float v9, v10

    mul-float/2addr v9, v1

    sub-float/2addr v3, v9

    div-float v3, v3, v16

    move/from16 v19, v3

    move v3, v1

    goto :goto_153

    :goto_165
    mul-float/2addr v7, v3

    add-float v7, v7, v18

    .line 1517
    iget v9, v5, Landroid/graphics/Rect;->left:I

    int-to-float v9, v9

    add-float/2addr v7, v9

    mul-float/2addr v2, v3

    add-float/2addr v2, v1

    .line 1518
    iget v1, v5, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    add-float/2addr v2, v1

    if-ne v4, v11, :cond_180

    .line 1520
    iget v0, v0, Lcom/ss/android/ttvecamera/TECameraSettings;->mFacing:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_180

    .line 1521
    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    sub-float v2, v0, v2

    .line 1525
    :cond_180
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    if-nez p6, :cond_1b9

    float-to-double v3, v7

    .line 1527
    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-double v9, v1

    const-wide v11, 0x3fa999999999999aL    # 0.05

    mul-double/2addr v9, v11

    sub-double v9, v3, v9

    double-to-int v1, v9

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 1528
    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-double v9, v1

    mul-double/2addr v9, v11

    add-double/2addr v3, v9

    double-to-int v1, v3

    iput v1, v0, Landroid/graphics/Rect;->right:I

    float-to-double v3, v2

    .line 1529
    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-double v9, v1

    mul-double/2addr v9, v11

    sub-double v9, v3, v9

    double-to-int v1, v9

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 1530
    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-double v9, v1

    mul-double/2addr v11, v9

    add-double/2addr v3, v11

    double-to-int v1, v3

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_1ea

    :cond_1b9
    float-to-double v3, v7

    .line 1532
    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-double v9, v1

    const-wide v11, 0x3fb999999999999aL    # 0.1

    mul-double/2addr v9, v11

    sub-double v9, v3, v9

    double-to-int v1, v9

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 1533
    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-double v9, v1

    mul-double/2addr v9, v11

    add-double/2addr v3, v9

    double-to-int v1, v3

    iput v1, v0, Landroid/graphics/Rect;->right:I

    float-to-double v3, v2

    .line 1534
    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-double v9, v1

    mul-double/2addr v9, v11

    sub-double v9, v3, v9

    double-to-int v1, v9

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 1535
    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-double v9, v1

    mul-double/2addr v9, v11

    add-double/2addr v3, v9

    double-to-int v1, v3

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 1537
    :goto_1ea
    iget v1, v0, Landroid/graphics/Rect;->left:I

    if-ltz v1, :cond_1f2

    iget v3, v5, Landroid/graphics/Rect;->left:I

    if-ge v1, v3, :cond_1f6

    .line 1538
    :cond_1f2
    iget v1, v5, Landroid/graphics/Rect;->left:I

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 1540
    :cond_1f6
    iget v1, v0, Landroid/graphics/Rect;->top:I

    if-ltz v1, :cond_1fe

    iget v3, v5, Landroid/graphics/Rect;->top:I

    if-ge v1, v3, :cond_202

    .line 1541
    :cond_1fe
    iget v1, v5, Landroid/graphics/Rect;->top:I

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 1543
    :cond_202
    iget v1, v0, Landroid/graphics/Rect;->right:I

    if-ltz v1, :cond_20a

    iget v3, v5, Landroid/graphics/Rect;->right:I

    if-le v1, v3, :cond_20e

    .line 1544
    :cond_20a
    iget v1, v5, Landroid/graphics/Rect;->right:I

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 1546
    :cond_20e
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    if-ltz v1, :cond_216

    iget v3, v5, Landroid/graphics/Rect;->bottom:I

    if-le v1, v3, :cond_21a

    .line 1547
    :cond_216
    iget v1, v5, Landroid/graphics/Rect;->bottom:I

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 1549
    :cond_21a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Focus Rect: [left, top, right, bottom] = ["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "] x: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, " y: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Lcom/ss/android/ttvecamera/TELogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public abortSession()V
    .registers 6

    .line 571
    const-string v0, "TECameraModeBase"

    iget-object v1, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraSession:Landroid/hardware/camera2/CameraCaptureSession;

    if-eqz v1, :cond_42

    .line 572
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 574
    :try_start_a
    iget-object p0, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraSession:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {p0}, Landroid/hardware/camera2/CameraCaptureSession;->abortCaptures()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_f} :catch_10

    goto :goto_29

    :catch_10
    move-exception p0

    .line 576
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "abort session failed, e: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/ss/android/ttvecamera/TELogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 578
    :goto_29
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "abort session...consume = "

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v1

    invoke-virtual {p0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/ss/android/ttvecamera/TELogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_42
    return-void
.end method

.method public calculateZoomSize(F)Landroid/graphics/Rect;
    .registers 6

    .line 1059
    iget-object v0, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    if-eqz v0, :cond_55

    iget-object v1, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCaptureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    if-nez v1, :cond_9

    goto :goto_55

    .line 1064
    :cond_9
    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_AVAILABLE_MAX_DIGITAL_ZOOM:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 1065
    iget-object p0, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_ACTIVE_ARRAY_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Rect;

    .line 1066
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v0

    float-to-int v1, v1

    .line 1067
    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v0

    float-to-int v2, v2

    .line 1068
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v3

    sub-int/2addr v3, v1

    .line 1069
    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v1

    sub-int/2addr v1, v2

    int-to-float v2, v3

    div-float/2addr v2, v0

    mul-float/2addr v2, p1

    float-to-int v2, v2

    int-to-float v1, v1

    div-float/2addr v1, v0

    mul-float/2addr v1, p1

    float-to-int p1, v1

    and-int/lit8 v0, v2, 0x3

    sub-int/2addr v2, v0

    and-int/lit8 v0, p1, 0x3

    sub-int/2addr p1, v0

    .line 1074
    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    sub-int/2addr p0, p1

    invoke-direct {v0, v2, p1, v1, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0

    .line 1061
    :cond_55
    :goto_55
    iget-object p1, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraEvents:Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;

    iget-object v0, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget v0, v0, Lcom/ss/android/ttvecamera/TECameraSettings;->mCameraType:I

    const/16 v1, -0x1a4

    iget-object p0, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    const-string v2, "Camera info is null, may be you need reopen camera."

    invoke-interface {p1, v0, v1, v2, p0}, Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;->onCameraError(IILjava/lang/String;Ljava/lang/Object;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public calculateZoomSizeV2(F)Landroid/graphics/Rect;
    .registers 9

    .line 1119
    iget-object p1, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mActiveArraySize:Landroid/graphics/Rect;

    const/4 v0, 0x0

    const/16 v1, -0x1a4

    const-string v2, "TECameraModeBase"

    if-nez p1, :cond_1d

    .line 1120
    const-string p1, "[VE_UI_TEST]Failed event: START_ZOOM. Code: -420. Reason: mActiveArraySize is null"

    invoke-static {v2, p1}, Lcom/ss/android/ttvecamera/TELogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1121
    const-string p1, "ActiveArraySize == null"

    invoke-static {v2, p1}, Lcom/ss/android/ttvecamera/TELogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1123
    iget-object p1, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraEvents:Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;

    iget-object p0, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    const-string v2, "ActiveArraySize == null."

    invoke-interface {p1, v1, v1, v2, p0}, Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;->onCameraInfo(IILjava/lang/String;Ljava/lang/Object;)V

    return-object v0

    .line 1127
    :cond_1d
    iget v3, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mNowZoom:F

    const/4 v4, 0x0

    cmpg-float v4, v3, v4

    if-lez v4, :cond_aa

    iget v4, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mMaxZoom:F

    cmpl-float v4, v3, v4

    if-lez v4, :cond_2c

    goto/16 :goto_aa

    :cond_2c
    const/high16 v0, 0x3f800000    # 1.0f

    div-float/2addr v0, v3

    .line 1136
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    iget-object v1, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mActiveArraySize:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    sub-int/2addr p1, v1

    .line 1137
    iget-object v1, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mActiveArraySize:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    iget-object v3, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mActiveArraySize:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v0

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v0

    sub-int/2addr v1, v0

    .line 1138
    new-instance v0, Landroid/graphics/Rect;

    div-int/lit8 p1, p1, 0x2

    iget-object v3, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mActiveArraySize:Landroid/graphics/Rect;

    iget v4, v3, Landroid/graphics/Rect;->left:I

    iget v3, v3, Landroid/graphics/Rect;->right:I

    .line 1139
    invoke-static {p1, v4, v3}, Lcom/ss/android/ttvecamera/TECameraUtils;->clamp(III)I

    move-result v3

    div-int/lit8 v1, v1, 0x2

    iget-object v4, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mActiveArraySize:Landroid/graphics/Rect;

    iget v5, v4, Landroid/graphics/Rect;->top:I

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    .line 1140
    invoke-static {v1, v5, v4}, Lcom/ss/android/ttvecamera/TECameraUtils;->clamp(III)I

    move-result v4

    iget-object v5, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mActiveArraySize:Landroid/graphics/Rect;

    .line 1141
    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    sub-int/2addr v5, p1

    iget-object p1, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mActiveArraySize:Landroid/graphics/Rect;

    iget v6, p1, Landroid/graphics/Rect;->left:I

    iget p1, p1, Landroid/graphics/Rect;->right:I

    invoke-static {v5, v6, p1}, Lcom/ss/android/ttvecamera/TECameraUtils;->clamp(III)I

    move-result p1

    iget-object v5, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mActiveArraySize:Landroid/graphics/Rect;

    .line 1142
    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    sub-int/2addr v5, v1

    iget-object v1, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mActiveArraySize:Landroid/graphics/Rect;

    iget v6, v1, Landroid/graphics/Rect;->top:I

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    invoke-static {v5, v6, v1}, Lcom/ss/android/ttvecamera/TECameraUtils;->clamp(III)I

    move-result v1

    invoke-direct {v0, v3, v4, p1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1144
    iget-object p0, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCaptureRequest:Landroid/hardware/camera2/CaptureRequest;

    if-eqz p0, :cond_a9

    .line 1145
    sget-object p1, Landroid/hardware/camera2/CaptureRequest;->SCALER_CROP_REGION:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p0, p1}, Landroid/hardware/camera2/CaptureRequest;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Rect;

    .line 1146
    invoke-virtual {v0, p0}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a9

    .line 1147
    const-string p0, "same SCALER_CROP_REGION, no need to set"

    invoke-static {v2, p0}, Lcom/ss/android/ttvecamera/TELogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a9
    return-object v0

    .line 1128
    :cond_aa
    :goto_aa
    const-string p1, "[VE_UI_TEST]Failed event: START_ZOOM. Code: -420. Reason: invalid factor"

    invoke-static {v2, p1}, Lcom/ss/android/ttvecamera/TELogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1129
    const-string p1, "factor invalid"

    invoke-static {v2, p1}, Lcom/ss/android/ttvecamera/TELogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1131
    iget-object p1, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraEvents:Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;

    iget-object p0, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    const-string v2, "factor invalid."

    invoke-interface {p1, v1, v1, v2, p0}, Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;->onCameraInfo(IILjava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public cancelFocus()I
    .registers 4

    .line 998
    iget-object v0, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCaptureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    if-nez v0, :cond_10

    .line 999
    iget-object v0, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraEvents:Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;

    const-string v1, "rollbackNormalSessionRequest : param is null."

    iget-object p0, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    const/16 v2, -0x64

    invoke-interface {v0, v2, v2, v1, p0}, Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;->onCameraInfo(IILjava/lang/String;Ljava/lang/Object;)V

    return v2

    .line 1002
    :cond_10
    iget-object p0, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mFocusStrategy:Lcom/ss/android/ttvecamera/focusmanager/TEFocusStrategyBase;

    invoke-interface {p0}, Lcom/ss/android/ttvecamera/focusmanager/ITEFocusStrategy;->cancelFocus()I

    move-result p0

    return p0
.end method

.method protected capture(Landroid/hardware/camera2/CaptureRequest$Builder;)Lcom/ss/android/ttvecamera/framework/TECameraModeBase$Response;
    .registers 4

    .line 1827
    iget-object v0, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mPreviewCaptureCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    invoke-virtual {p0}, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->getCameraHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->capture(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)Lcom/ss/android/ttvecamera/framework/TECameraModeBase$Response;

    move-result-object p0

    return-object p0
.end method

.method protected capture(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)Lcom/ss/android/ttvecamera/framework/TECameraModeBase$Response;
    .registers 8

    .line 1879
    new-instance v0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase$Response;

    invoke-direct {v0}, Lcom/ss/android/ttvecamera/framework/TECameraModeBase$Response;-><init>()V

    .line 1880
    const-string v1, "capture: "

    const-string v2, "TECameraModeBase"

    if-nez p1, :cond_24

    .line 1881
    const-string p0, "CaptureRequest.Builder is null"

    iput-object p0, v0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase$Response;->errMsg:Ljava/lang/String;

    .line 1882
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, v0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase$Response;->errMsg:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/ss/android/ttvecamera/TELogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 1886
    :cond_24
    iget-object v3, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraSession:Landroid/hardware/camera2/CameraCaptureSession;

    if-nez v3, :cond_41

    .line 1887
    const-string p0, "Capture Session is null"

    iput-object p0, v0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase$Response;->errMsg:Ljava/lang/String;

    .line 1888
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, v0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase$Response;->errMsg:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/ss/android/ttvecamera/TELogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 1893
    :cond_41
    :try_start_41
    iget-object p0, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraSession:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3}, Landroid/hardware/camera2/CameraCaptureSession;->capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I

    const/4 p0, 0x1

    .line 1894
    iput-boolean p0, v0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase$Response;->isSuccess:Z
    :try_end_4d
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_41 .. :try_end_4d} :catch_50
    .catch Ljava/lang/IllegalStateException; {:try_start_41 .. :try_end_4d} :catch_4e

    return-object v0

    :catch_4e
    move-exception p0

    goto :goto_52

    :catch_50
    move-exception p0

    goto :goto_5c

    .line 1899
    :goto_52
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1900
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase$Response;->errMsg:Ljava/lang/String;

    goto :goto_65

    .line 1896
    :goto_5c
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1897
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase$Response;->errMsg:Ljava/lang/String;

    :goto_65
    return-object v0
.end method

.method protected capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)Lcom/ss/android/ttvecamera/framework/TECameraModeBase$Response;
    .registers 8

    .line 1841
    new-instance v0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase$Response;

    invoke-direct {v0}, Lcom/ss/android/ttvecamera/framework/TECameraModeBase$Response;-><init>()V

    .line 1842
    const-string v1, "capture: "

    const-string v2, "TECameraModeBase"

    if-nez p1, :cond_24

    .line 1843
    const-string p0, "CaptureRequest is null"

    iput-object p0, v0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase$Response;->errMsg:Ljava/lang/String;

    .line 1844
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, v0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase$Response;->errMsg:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/ss/android/ttvecamera/TELogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 1848
    :cond_24
    iget-object v3, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraSession:Landroid/hardware/camera2/CameraCaptureSession;

    if-nez v3, :cond_41

    .line 1849
    const-string p0, "Capture Session is null"

    iput-object p0, v0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase$Response;->errMsg:Ljava/lang/String;

    .line 1850
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, v0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase$Response;->errMsg:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/ss/android/ttvecamera/TELogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 1855
    :cond_41
    :try_start_41
    iget-object p0, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraSession:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {p0, p1, p2, p3}, Landroid/hardware/camera2/CameraCaptureSession;->capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I

    const/4 p0, 0x1

    .line 1856
    iput-boolean p0, v0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase$Response;->isSuccess:Z
    :try_end_49
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_41 .. :try_end_49} :catch_4c
    .catch Ljava/lang/IllegalStateException; {:try_start_41 .. :try_end_49} :catch_4a

    return-object v0

    :catch_4a
    move-exception p0

    goto :goto_4e

    :catch_4c
    move-exception p0

    goto :goto_58

    .line 1861
    :goto_4e
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1862
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase$Response;->errMsg:Ljava/lang/String;

    goto :goto_61

    .line 1858
    :goto_58
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1859
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase$Response;->errMsg:Ljava/lang/String;

    :goto_61
    return-object v0
.end method

.method protected captureBurst(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)Lcom/ss/android/ttvecamera/framework/TECameraModeBase$Response;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/CaptureRequest;",
            ">;",
            "Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;",
            "Landroid/os/Handler;",
            ")",
            "Lcom/ss/android/ttvecamera/framework/TECameraModeBase$Response;"
        }
    .end annotation

    .line 1799
    new-instance v0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase$Response;

    invoke-direct {v0}, Lcom/ss/android/ttvecamera/framework/TECameraModeBase$Response;-><init>()V

    .line 1800
    iget-object v1, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraSession:Landroid/hardware/camera2/CameraCaptureSession;

    if-nez v1, :cond_26

    .line 1801
    const-string p0, "Capture Session is null"

    iput-object p0, v0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase$Response;->errMsg:Ljava/lang/String;

    .line 1802
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "capture: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, v0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase$Response;->errMsg:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "TECameraModeBase"

    invoke-static {p1, p0}, Lcom/ss/android/ttvecamera/TELogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 1807
    :cond_26
    :try_start_26
    iget-object p0, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraSession:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {p0, p1, p2, p3}, Landroid/hardware/camera2/CameraCaptureSession;->captureBurst(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I

    const/4 p0, 0x1

    .line 1808
    iput-boolean p0, v0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase$Response;->isSuccess:Z
    :try_end_2e
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_26 .. :try_end_2e} :catch_31
    .catch Ljava/lang/IllegalStateException; {:try_start_26 .. :try_end_2e} :catch_2f

    return-object v0

    :catch_2f
    move-exception p0

    goto :goto_33

    :catch_31
    move-exception p0

    goto :goto_3d

    .line 1813
    :goto_33
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1814
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase$Response;->errMsg:Ljava/lang/String;

    goto :goto_46

    .line 1810
    :goto_3d
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1811
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase$Response;->errMsg:Ljava/lang/String;

    :goto_46
    return-object v0
.end method

.method public captureBurst(Lcom/ss/android/ttvecamera/model/BurstRequest;ILcom/ss/android/ttvecamera/TECameraSettings$CaptureBufferFrameCallback;)V
    .registers 4

    .line 0
    return-void
.end method

.method public close()V
    .registers 3

    .line 403
    iget-object v0, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget-boolean v0, v0, Lcom/ss/android/ttvecamera/TECameraSettings;->mEnableMonitorGyroscope:Z

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraHolder:Lcom/ss/android/ttvecamera/TECamera2;

    invoke-virtual {v0}, Lcom/ss/android/ttvecamera/TECamera2;->getGyro()Lcom/ss/android/ttvecamera/focusmanager/Gyro;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 404
    iget-object v0, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraHolder:Lcom/ss/android/ttvecamera/TECamera2;

    invoke-virtual {v0}, Lcom/ss/android/ttvecamera/TECamera2;->getGyro()Lcom/ss/android/ttvecamera/focusmanager/Gyro;

    move-result-object v0

    iget-object v1, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mGyroListener:Lcom/ss/android/ttvecamera/focusmanager/Gyro$GyroListener;

    invoke-virtual {v0, v1}, Lcom/ss/android/ttvecamera/focusmanager/Gyro;->unregister(Lcom/ss/android/ttvecamera/focusmanager/Gyro$GyroListener;)V

    .line 406
    :cond_19
    invoke-virtual {p0}, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->releaseCameraThread()V

    return-void
.end method

.method public closePreviewSession()V
    .registers 7

    .line 584
    iget-object v0, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraHolder:Lcom/ss/android/ttvecamera/TECamera2;

    const-string v1, "TECameraModeBase"

    if-eqz v0, :cond_36

    iget-object v0, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    if-eqz v0, :cond_36

    iget-boolean v0, v0, Lcom/ss/android/ttvecamera/TECameraSettings;->mUseSyncModeOnCamera2:Z

    if-eqz v0, :cond_36

    .line 585
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "close session process...state = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraHolder:Lcom/ss/android/ttvecamera/TECamera2;

    invoke-virtual {v2}, Lcom/ss/android/ttvecamera/TECamera2;->getSessionState()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/ss/android/ttvecamera/TELogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 586
    iget-object v0, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraHolder:Lcom/ss/android/ttvecamera/TECamera2;

    invoke-virtual {v0}, Lcom/ss/android/ttvecamera/TECamera2;->getSessionState()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_36

    .line 587
    iget-object v0, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraHolder:Lcom/ss/android/ttvecamera/TECamera2;

    invoke-virtual {v0}, Lcom/ss/android/ttvecamera/TECamera2;->waitCameraTaskDoneOrTimeout()V

    :cond_36
    const/4 v0, 0x0

    .line 591
    iput-boolean v0, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mIsActiveCameraSession:Z

    .line 592
    invoke-virtual {p0}, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->getCameraDevice()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_45

    .line 593
    const-string p0, "close session process...device is null"

    invoke-static {v1, p0}, Lcom/ss/android/ttvecamera/TELogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 596
    :cond_45
    iget-object v0, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraSession:Landroid/hardware/camera2/CameraCaptureSession;

    if-nez v0, :cond_4f

    .line 597
    const-string p0, "close session process...session is null"

    invoke-static {v1, p0}, Lcom/ss/android/ttvecamera/TELogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 601
    :cond_4f
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 603
    :try_start_53
    iget-object v0, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraSession:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraCaptureSession;->close()V
    :try_end_58
    .catch Ljava/lang/Exception; {:try_start_53 .. :try_end_58} :catch_59

    goto :goto_5d

    :catch_59
    move-exception v0

    .line 605
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_5d
    const/4 v0, 0x0

    .line 607
    iput-object v0, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraSession:Landroid/hardware/camera2/CameraCaptureSession;

    .line 608
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    .line 609
    const-string p0, "te_record_camera2_close_session_cost"

    invoke-static {p0, v4, v5}, Lcom/ss/android/ttvecamera/TECameraMonitor;->perfLong(Ljava/lang/String;J)V

    .line 612
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/ss/android/ttvecamera/TELogUtils;->logMonitorInfo(Ljava/lang/String;Ljava/lang/Object;)V

    .line 613
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "close session...consume = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/ss/android/ttvecamera/TELogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected configFps(Landroid/util/Range;)Landroid/util/Range;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;)",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    return-object p1
.end method

.method public createCaptureRequestBuilder(I)Landroid/hardware/camera2/CaptureRequest$Builder;
    .registers 4

    const/4 v0, 0x6

    const/4 v1, 0x0

    if-gt p1, v0, :cond_1b

    const/4 v0, 0x1

    if-ge p1, v0, :cond_8

    goto :goto_1b

    .line 1784
    :cond_8
    iget-object p0, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    if-eqz p0, :cond_1a

    .line 1786
    :try_start_c
    invoke-virtual {p0, p1}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object p0
    :try_end_10
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_c .. :try_end_10} :catch_16
    .catch Ljava/lang/IllegalStateException; {:try_start_c .. :try_end_10} :catch_11

    return-object p0

    :catch_11
    move-exception p0

    .line 1790
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1a

    :catch_16
    move-exception p0

    .line 1788
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1a
    :goto_1a
    return-object v1

    .line 1779
    :cond_1b
    :goto_1b
    const-string p0, "TECameraModeBase"

    const-string p1, "createCaptureRequestBuilder, template invalid, must be [1, 6]"

    invoke-static {p0, p1}, Lcom/ss/android/ttvecamera/TELogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method protected createSession(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/os/Handler;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/Surface;",
            ">;",
            "Landroid/hardware/camera2/CameraCaptureSession$StateCallback;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    if-nez p1, :cond_d

    .line 214
    iget-object v0, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget-boolean v0, v0, Lcom/ss/android/ttvecamera/TECameraSettings;->mEnableCamera2DeferredSurface:Z

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mOutputConfigurations:Ljava/util/List;

    if-eqz v0, :cond_d

    goto :goto_2b

    .line 217
    :cond_d
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 218
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_16
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/Surface;

    .line 219
    new-instance v3, Landroid/hardware/camera2/params/OutputConfiguration;

    invoke-direct {v3, v2}, Landroid/hardware/camera2/params/OutputConfiguration;-><init>(Landroid/view/Surface;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_16

    .line 222
    :cond_2b
    :goto_2b
    new-instance v1, Landroid/hardware/camera2/params/SessionConfiguration;

    invoke-virtual {p0, p1}, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->getSessionType(Ljava/util/List;)I

    move-result p1

    new-instance v2, Lcom/ss/android/ttvecamera/framework/TECameraModeBase$2;

    invoke-direct {v2, p0, p3}, Lcom/ss/android/ttvecamera/framework/TECameraModeBase$2;-><init>(Lcom/ss/android/ttvecamera/framework/TECameraModeBase;Landroid/os/Handler;)V

    invoke-direct {v1, p1, v0, v2, p2}, Landroid/hardware/camera2/params/SessionConfiguration;-><init>(ILjava/util/List;Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;)V

    .line 231
    iget-object p1, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCaptureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/hardware/camera2/params/SessionConfiguration;->setSessionParameters(Landroid/hardware/camera2/CaptureRequest;)V

    .line 232
    const-string p1, "TECameraModeBase"

    const-string p2, "createSession by sessionConfiguration"

    invoke-static {p1, p2}, Lcom/ss/android/ttvecamera/TELogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    iget-object p0, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    invoke-virtual {p0, v1}, Landroid/hardware/camera2/CameraDevice;->createCaptureSession(Landroid/hardware/camera2/params/SessionConfiguration;)V

    return-void
.end method

.method public createSessionByDeferredSurface()V
    .registers 6

    .line 244
    iget-object v0, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    if-eqz v0, :cond_a2

    .line 245
    iget-object v0, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mOutputConfigurations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 247
    iget-object v0, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget v1, v0, Lcom/ss/android/ttvecamera/TECameraSettings;->mMode:I

    if-nez v1, :cond_9d

    iget v0, v0, Lcom/ss/android/ttvecamera/TECameraSettings;->mCameraType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_9d

    .line 248
    iget-object v0, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mOutputConfigurations:Ljava/util/List;

    new-instance v1, Landroid/hardware/camera2/params/OutputConfiguration;

    new-instance v2, Landroid/util/Size;

    iget-object v3, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    invoke-virtual {v3}, Lcom/ss/android/ttvecamera/TECameraSettings;->getPreviewSize()Lcom/ss/android/ttvecamera/TEFrameSizei;

    move-result-object v3

    iget v3, v3, Lcom/ss/android/ttvecamera/TEFrameSizei;->width:I

    iget-object v4, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    invoke-virtual {v4}, Lcom/ss/android/ttvecamera/TECameraSettings;->getPreviewSize()Lcom/ss/android/ttvecamera/TEFrameSizei;

    move-result-object v4

    iget v4, v4, Lcom/ss/android/ttvecamera/TEFrameSizei;->height:I

    invoke-direct {v2, v3, v4}, Landroid/util/Size;-><init>(II)V

    const-class v3, Landroid/graphics/SurfaceTexture;

    invoke-direct {v1, v2, v3}, Landroid/hardware/camera2/params/OutputConfiguration;-><init>(Landroid/util/Size;Ljava/lang/Class;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 250
    iget-object v0, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget-boolean v0, v0, Lcom/ss/android/ttvecamera/TECameraSettings;->mUseSyncModeOnCamera2:Z

    if-eqz v0, :cond_40

    invoke-virtual {p0}, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->getCameraHandler()Landroid/os/Handler;

    move-result-object v0

    goto :goto_42

    :cond_40
    iget-object v0, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mHandler:Landroid/os/Handler;

    .line 251
    :goto_42
    iget-object v1, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    if-eqz v1, :cond_9d

    .line 252
    iget-object v1, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCaptureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    if-nez v1, :cond_69

    .line 253
    iget-object v1, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget-object v1, v1, Lcom/ss/android/ttvecamera/TECameraSettings;->mExtParameters:Landroid/os/Bundle;

    const-string v2, "enablePreviewTemplate"

    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_60

    .line 254
    iget-object v1, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v1

    iput-object v1, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCaptureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    goto :goto_69

    .line 256
    :cond_60
    iget-object v1, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v1

    iput-object v1, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCaptureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 259
    :cond_69
    :goto_69
    new-instance v1, Landroid/util/Range;

    iget-object v2, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mFpsRange:Lcom/ss/android/ttvecamera/TEFrameRateRange;

    iget v2, v2, Lcom/ss/android/ttvecamera/TEFrameRateRange;->min:I

    iget-object v3, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget-object v3, v3, Lcom/ss/android/ttvecamera/TECameraSettings;->mFPSRange:Lcom/ss/android/ttvecamera/TEFrameRateRange;

    iget v3, v3, Lcom/ss/android/ttvecamera/TEFrameRateRange;->fpsUnitFactor:I

    div-int/2addr v2, v3

    .line 260
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mFpsRange:Lcom/ss/android/ttvecamera/TEFrameRateRange;

    iget v3, v3, Lcom/ss/android/ttvecamera/TEFrameRateRange;->max:I

    iget-object v4, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget-object v4, v4, Lcom/ss/android/ttvecamera/TECameraSettings;->mFPSRange:Lcom/ss/android/ttvecamera/TEFrameRateRange;

    iget v4, v4, Lcom/ss/android/ttvecamera/TEFrameRateRange;->fpsUnitFactor:I

    div-int/2addr v3, v4

    .line 261
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    .line 262
    invoke-virtual {p0, v1}, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->configFps(Landroid/util/Range;)Landroid/util/Range;

    move-result-object v1

    .line 263
    iget-object v2, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCaptureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_TARGET_FPS_RANGE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v2, v3, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    const/4 v1, 0x0

    .line 264
    iget-object v2, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mSessionStateCallback:Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

    invoke-virtual {p0, v1, v2, v0}, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->createSession(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/os/Handler;)V

    :cond_9d
    const/4 v0, 0x0

    .line 267
    iput-boolean v0, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mIsSessionFinalized:Z

    .line 268
    iput-boolean v0, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mIsSurfaceReady:Z

    :cond_a2
    return-void
.end method

.method public enableCaf()I
    .registers 5

    .line 1007
    iget-object v0, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCaptureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    if-nez v0, :cond_14

    .line 1008
    iget-object v0, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraEvents:Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;

    iget-object v1, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget v1, v1, Lcom/ss/android/ttvecamera/TECameraSettings;->mCameraType:I

    const-string v2, "rollbackNormalSessionRequest : param is null."

    iget-object p0, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    const/16 v3, -0x64

    invoke-interface {v0, v1, v3, v2, p0}, Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;->onCameraError(IILjava/lang/String;Ljava/lang/Object;)V

    return v3

    .line 1012
    :cond_14
    iget-object v1, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mFocusStrategy:Lcom/ss/android/ttvecamera/focusmanager/TEFocusStrategyBase;

    invoke-interface {v1, v0}, Lcom/ss/android/ttvecamera/focusmanager/ITEFocusStrategy;->enableCaf(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 1013
    iget-object v0, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraSession:Landroid/hardware/camera2/CameraCaptureSession;

    iget-object v1, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCaptureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {p0, v0, v1}, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->updateRequestRepeating(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    const/4 p0, 0x0

    return p0
.end method

.method public enableMulticamZoom(Z)V
    .registers 5

    if-nez p1, :cond_6b

    .line 2113
    iget v0, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mNowZoom:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_6b

    .line 2114
    iput v1, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mNowZoom:F

    .line 2117
    iget-object v0, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCaptureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    if-eqz v0, :cond_5b

    iget-object v0, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraSession:Landroid/hardware/camera2/CameraCaptureSession;

    if-nez v0, :cond_15

    goto :goto_5b

    .line 2122
    :cond_15
    iget-object v0, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCaptureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_ZOOM_RATIO:Landroid/hardware/camera2/CaptureRequest$Key;

    iget v2, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mNowZoom:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 2123
    iget-object v0, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCaptureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {p0, v0}, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->updatePreview(Landroid/hardware/camera2/CaptureRequest$Builder;)Lcom/ss/android/ttvecamera/framework/TECameraModeBase$Response;

    move-result-object v0

    .line 2124
    iget-boolean v1, v0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase$Response;->isSuccess:Z

    if-nez v1, :cond_52

    .line 2125
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[VE_UI_TEST]Failed event: START_ZOOM. Code: -420. Reason: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/ss/android/ttvecamera/framework/TECameraModeBase$Response;->getErrMsg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "TECameraModeBase"

    invoke-static {v1, p1}, Lcom/ss/android/ttvecamera/TELogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2126
    iget-object p1, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraEvents:Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;

    iget-object v0, v0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase$Response;->errMsg:Ljava/lang/String;

    iget-object p0, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    const/16 v1, -0x1a4

    invoke-interface {p1, v1, v1, v0, p0}, Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;->onCameraInfo(IILjava/lang/String;Ljava/lang/Object;)V

    return-void

    .line 2130
    :cond_52
    iget v0, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mNowZoom:F

    invoke-virtual {p0, v0}, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->calculateZoomSizeV2(F)Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mZoomSize:Landroid/graphics/Rect;

    goto :goto_6b

    .line 2119
    :cond_5b
    :goto_5b
    iget-object p1, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraEvents:Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;

    iget-object v0, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget v0, v0, Lcom/ss/android/ttvecamera/TECameraSettings;->mCameraType:I

    const/16 v1, -0x64

    iget-object p0, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    const-string v2, "enableMulticamZoom : Capture Session is null"

    invoke-interface {p1, v0, v1, v2, p0}, Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;->onCameraError(IILjava/lang/String;Ljava/lang/Object;)V

    return-void

    .line 2132
    :cond_6b
    :goto_6b
    iput-boolean p1, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mEnableMulticamZoom:Z

    return-void
.end method

.method public fillFeatures()V
    .registers 5

    .line 1690
    const-string v0, "TECameraModeBase-fillFeatures"

    invoke-static {v0}, Lcom/ss/android/ttvecamera/TETraceUtils;->beginSection(Ljava/lang/String;)V

    .line 1692
    iget-object v0, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraHolder:Lcom/ss/android/ttvecamera/TECamera2;

    invoke-virtual {v0}, Lcom/ss/android/ttvecamera/TECameraBase;->getFeatures()Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget-object v1, v1, Lcom/ss/android/ttvecamera/TECameraSettings;->mStrCameraID:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 1693
    iget-object v0, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraHolder:Lcom/ss/android/ttvecamera/TECamera2;

    invoke-virtual {v0}, Lcom/ss/android/ttvecamera/TECameraBase;->getFeatures()Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget-object v1, v1, Lcom/ss/android/ttvecamera/TECameraSettings;->mStrCameraID:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    goto :goto_38

    .line 1695
    :cond_26
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1696
    iget-object v1, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraHolder:Lcom/ss/android/ttvecamera/TECamera2;

    invoke-virtual {v1}, Lcom/ss/android/ttvecamera/TECameraBase;->getFeatures()Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget-object v2, v2, Lcom/ss/android/ttvecamera/TECameraSettings;->mStrCameraID:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1698
    :goto_38
    iget-object v1, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget-object v1, v1, Lcom/ss/android/ttvecamera/TECameraSettings;->mPreviewSize:Lcom/ss/android/ttvecamera/TEFrameSizei;

    const-string v2, "camera_preview_size"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1699
    iget-object v1, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    if-eqz v1, :cond_8b

    iget-object v1, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCaptureRequest:Landroid/hardware/camera2/CaptureRequest;

    if-eqz v1, :cond_8b

    .line 1700
    new-instance v1, Lcom/ss/android/ttvecamera/TEFocusParameters;

    invoke-direct {v1}, Lcom/ss/android/ttvecamera/TEFocusParameters;-><init>()V

    .line 1701
    iget-object v2, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v3, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_ACTIVE_ARRAY_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v2, v3}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    iput-object v2, v1, Lcom/ss/android/ttvecamera/TEFocusParameters;->mActiveSize:Landroid/graphics/Rect;

    .line 1702
    iget-object v2, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCaptureRequest:Landroid/hardware/camera2/CaptureRequest;

    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->SCALER_CROP_REGION:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v2, v3}, Landroid/hardware/camera2/CaptureRequest;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    iput-object v2, v1, Lcom/ss/android/ttvecamera/TEFocusParameters;->mCropSize:Landroid/graphics/Rect;

    .line 1703
    iget-object v2, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v3, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_MAX_REGIONS_AE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v2, v3}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v1, Lcom/ss/android/ttvecamera/TEFocusParameters;->mMaxRegionsAE:I

    .line 1704
    iget-object v2, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v3, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_MAX_REGIONS_AF:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v2, v3}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v1, Lcom/ss/android/ttvecamera/TEFocusParameters;->mMaxRegionsAF:I

    .line 1705
    const-string v2, "camera_focus_parameters"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1707
    :cond_8b
    iget-object p0, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget p0, p0, Lcom/ss/android/ttvecamera/TECameraSettings;->mRotation:I

    const-string v1, "camera_sensor_orientation"

    invoke-virtual {v0, v1, p0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 1708
    invoke-static {}, Lcom/ss/android/ttvecamera/TETraceUtils;->endSection()V

    return-void
.end method

.method public focusAtPoint(IIFII)I
    .registers 12

    .line 810
    new-instance v0, Lcom/ss/android/ttvecamera/TEFocusSettings;

    move v1, p1

    move v2, p2

    move v5, p3

    move v3, p4

    move v4, p5

    invoke-direct/range {v0 .. v5}, Lcom/ss/android/ttvecamera/TEFocusSettings;-><init>(IIIIF)V

    invoke-virtual {p0, v0}, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->focusAtPoint(Lcom/ss/android/ttvecamera/TEFocusSettings;)I

    move-result p0

    return p0
.end method

.method public focusAtPoint(Lcom/ss/android/ttvecamera/TEFocusSettings;)I
    .registers 19

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    .line 815
    iget-object v2, v1, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget-boolean v2, v2, Lcom/ss/android/ttvecamera/TECameraSettings;->mEnableRefactorFocusAndMeter:Z

    if-eqz v2, :cond_f

    .line 816
    invoke-direct/range {p0 .. p1}, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->doFocusOrMeter(Lcom/ss/android/ttvecamera/TEFocusSettings;)I

    move-result v0

    return v0

    .line 820
    :cond_f
    iput-object v0, v1, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mFocusSettings:Lcom/ss/android/ttvecamera/TEFocusSettings;

    .line 821
    iget-object v2, v1, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mFocusStrategy:Lcom/ss/android/ttvecamera/focusmanager/TEFocusStrategyBase;

    invoke-virtual {v2, v0}, Lcom/ss/android/ttvecamera/focusmanager/TEFocusStrategyBase;->setFocusSettings(Lcom/ss/android/ttvecamera/TEFocusSettings;)V

    .line 822
    iget-object v2, v1, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mFocusStrategy:Lcom/ss/android/ttvecamera/focusmanager/TEFocusStrategyBase;

    iget-object v3, v1, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    invoke-virtual {v2, v3}, Lcom/ss/android/ttvecamera/focusmanager/TEFocusStrategyBase;->setCameraSettings(Lcom/ss/android/ttvecamera/TECameraSettings;)V

    .line 824
    iget-object v2, v1, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mDeviceProxy:Lcom/ss/android/ttvecamera/hardware/TECameraHardware2Proxy;

    const/16 v9, -0x64

    const-string v10, "TECameraModeBase"

    if-eqz v2, :cond_203

    iget-object v2, v1, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraSession:Landroid/hardware/camera2/CameraCaptureSession;

    if-eqz v2, :cond_203

    iget-object v2, v1, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCaptureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    if-nez v2, :cond_2f

    goto/16 :goto_203

    .line 831
    :cond_2f
    iget-object v2, v1, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mDeviceProxy:Lcom/ss/android/ttvecamera/hardware/TECameraHardware2Proxy;

    iget-object v3, v1, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {v2, v3}, Lcom/ss/android/ttvecamera/hardware/TECameraHardware2Proxy;->isMeteringSupported(Landroid/hardware/camera2/CameraCharacteristics;)Z

    move-result v11

    .line 832
    iget-object v2, v1, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mDeviceProxy:Lcom/ss/android/ttvecamera/hardware/TECameraHardware2Proxy;

    iget-object v3, v1, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {v2, v3}, Lcom/ss/android/ttvecamera/hardware/TECameraHardware2Proxy;->isFocusSupported(Landroid/hardware/camera2/CameraCharacteristics;)Z

    move-result v2

    const/16 v12, -0x19c

    if-nez v2, :cond_58

    if-nez v11, :cond_58

    .line 835
    const-string v0, "do not support MeteringAreaAF!"

    invoke-static {v10, v0}, Lcom/ss/android/ttvecamera/TELogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 836
    iget-object v2, v1, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mFocusSettings:Lcom/ss/android/ttvecamera/TEFocusSettings;

    invoke-virtual {v2}, Lcom/ss/android/ttvecamera/TEFocusSettings;->getFocusCallback()Lcom/ss/android/ttvecamera/TEFocusSettings$ITEFocusCallback;

    move-result-object v2

    iget-object v1, v1, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget v1, v1, Lcom/ss/android/ttvecamera/TECameraSettings;->mFacing:I

    invoke-interface {v2, v12, v1, v0}, Lcom/ss/android/ttvecamera/TEFocusSettings$ITEFocusCallback;->onFocus(IILjava/lang/String;)V

    return v12

    .line 840
    :cond_58
    invoke-virtual {v0}, Lcom/ss/android/ttvecamera/TEFocusSettings;->isLock()Z

    move-result v13

    .line 841
    iget-object v0, v1, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mManualFocusEngaged:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const/4 v14, 0x1

    const/4 v15, 0x0

    if-eqz v2, :cond_72

    .line 842
    iget-object v2, v1, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mFocusSettings:Lcom/ss/android/ttvecamera/TEFocusSettings;

    invoke-virtual {v2}, Lcom/ss/android/ttvecamera/TEFocusSettings;->isNeedFocus()Z

    move-result v2

    if-nez v2, :cond_6f

    goto :goto_72

    :cond_6f
    move/from16 v16, v15

    goto :goto_74

    :cond_72
    :goto_72
    move/from16 v16, v14

    .line 844
    :goto_74
    const-string v2, "focusAtPoint++"

    invoke-static {v10, v2}, Lcom/ss/android/ttvecamera/TELogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_91

    if-nez v16, :cond_91

    .line 854
    iget-object v0, v1, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mFocusCancelRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    const-wide/16 v2, 0x32

    .line 856
    :try_start_84
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_87
    .catch Ljava/lang/InterruptedException; {:try_start_84 .. :try_end_87} :catch_88

    goto :goto_8c

    :catch_88
    move-exception v0

    .line 858
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 860
    :goto_8c
    const-string v0, "cancel previous touch af.."

    invoke-static {v10, v0}, Lcom/ss/android/ttvecamera/TELogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 868
    :cond_91
    iget-object v0, v1, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mFocusSettings:Lcom/ss/android/ttvecamera/TEFocusSettings;

    iget-object v2, v1, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget v3, v2, Lcom/ss/android/ttvecamera/TECameraSettings;->mRotation:I

    iget v2, v2, Lcom/ss/android/ttvecamera/TECameraSettings;->mFacing:I

    if-ne v2, v14, :cond_9d

    move v2, v14

    goto :goto_9e

    :cond_9d
    move v2, v15

    :goto_9e
    invoke-virtual {v0, v3, v2}, Lcom/ss/android/ttvecamera/TEFocusSettings;->calculateFocusArea(IZ)Landroid/graphics/Rect;

    move-result-object v0

    if-nez v0, :cond_cd

    .line 870
    iget-object v0, v1, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mFocusSettings:Lcom/ss/android/ttvecamera/TEFocusSettings;

    invoke-virtual {v0}, Lcom/ss/android/ttvecamera/TEFocusSettings;->getWidth()I

    move-result v2

    iget-object v0, v1, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mFocusSettings:Lcom/ss/android/ttvecamera/TEFocusSettings;

    invoke-virtual {v0}, Lcom/ss/android/ttvecamera/TEFocusSettings;->getHeight()I

    move-result v3

    iget-object v0, v1, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mFocusSettings:Lcom/ss/android/ttvecamera/TEFocusSettings;

    .line 871
    invoke-virtual {v0}, Lcom/ss/android/ttvecamera/TEFocusSettings;->getX()I

    move-result v0

    int-to-float v4, v0

    iget-object v0, v1, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mFocusSettings:Lcom/ss/android/ttvecamera/TEFocusSettings;

    invoke-virtual {v0}, Lcom/ss/android/ttvecamera/TEFocusSettings;->getY()I

    move-result v0

    int-to-float v5, v0

    iget-object v0, v1, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget v6, v0, Lcom/ss/android/ttvecamera/TECameraSettings;->mRotation:I

    iget-object v0, v1, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mFocusSettings:Lcom/ss/android/ttvecamera/TEFocusSettings;

    .line 872
    invoke-virtual {v0}, Lcom/ss/android/ttvecamera/TEFocusSettings;->getCoordinatesMode()Lcom/ss/android/ttvecamera/TEFocusSettings$CoordinatesMode;

    move-result-object v8

    const/4 v7, 0x0

    .line 870
    invoke-virtual/range {v1 .. v8}, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->_calculateFocusRect(IIFFIILcom/ss/android/ttvecamera/TEFocusSettings$CoordinatesMode;)Landroid/graphics/Rect;

    move-result-object v0

    .line 875
    :cond_cd
    iget-object v2, v1, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mFocusSettings:Lcom/ss/android/ttvecamera/TEFocusSettings;

    iget-object v3, v1, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget v4, v3, Lcom/ss/android/ttvecamera/TECameraSettings;->mRotation:I

    iget v3, v3, Lcom/ss/android/ttvecamera/TECameraSettings;->mFacing:I

    if-ne v3, v14, :cond_d9

    move v3, v14

    goto :goto_da

    :cond_d9
    move v3, v15

    :goto_da
    invoke-virtual {v2, v4, v3}, Lcom/ss/android/ttvecamera/TEFocusSettings;->calculateMeteringArea(IZ)Landroid/graphics/Rect;

    move-result-object v2

    if-nez v2, :cond_109

    .line 877
    iget-object v2, v1, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mFocusSettings:Lcom/ss/android/ttvecamera/TEFocusSettings;

    invoke-virtual {v2}, Lcom/ss/android/ttvecamera/TEFocusSettings;->getWidth()I

    move-result v2

    iget-object v3, v1, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mFocusSettings:Lcom/ss/android/ttvecamera/TEFocusSettings;

    invoke-virtual {v3}, Lcom/ss/android/ttvecamera/TEFocusSettings;->getHeight()I

    move-result v3

    iget-object v4, v1, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mFocusSettings:Lcom/ss/android/ttvecamera/TEFocusSettings;

    .line 878
    invoke-virtual {v4}, Lcom/ss/android/ttvecamera/TEFocusSettings;->getX()I

    move-result v4

    int-to-float v4, v4

    iget-object v5, v1, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mFocusSettings:Lcom/ss/android/ttvecamera/TEFocusSettings;

    invoke-virtual {v5}, Lcom/ss/android/ttvecamera/TEFocusSettings;->getY()I

    move-result v5

    int-to-float v5, v5

    iget-object v6, v1, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget v6, v6, Lcom/ss/android/ttvecamera/TECameraSettings;->mRotation:I

    iget-object v7, v1, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mFocusSettings:Lcom/ss/android/ttvecamera/TEFocusSettings;

    .line 879
    invoke-virtual {v7}, Lcom/ss/android/ttvecamera/TEFocusSettings;->getCoordinatesMode()Lcom/ss/android/ttvecamera/TEFocusSettings$CoordinatesMode;

    move-result-object v8

    const/4 v7, 0x1

    .line 877
    invoke-virtual/range {v1 .. v8}, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->_calculateFocusRect(IIFFIILcom/ss/android/ttvecamera/TEFocusSettings$CoordinatesMode;)Landroid/graphics/Rect;

    move-result-object v2

    .line 882
    :cond_109
    invoke-static {v0}, Lcom/ss/android/ttvecamera/TECameraUtils;->isValidRect(Landroid/graphics/Rect;)Z

    move-result v3

    if-eqz v3, :cond_1f0

    invoke-static {v2}, Lcom/ss/android/ttvecamera/TECameraUtils;->isValidRect(Landroid/graphics/Rect;)Z

    move-result v3

    if-nez v3, :cond_117

    goto/16 :goto_1f0

    .line 889
    :cond_117
    iget-object v3, v1, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mFocusSettings:Lcom/ss/android/ttvecamera/TEFocusSettings;

    invoke-virtual {v3}, Lcom/ss/android/ttvecamera/TEFocusSettings;->isNeedMetering()Z

    move-result v3

    if-eqz v3, :cond_128

    if-eqz v11, :cond_128

    .line 890
    iget-object v3, v1, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mFocusStrategy:Lcom/ss/android/ttvecamera/focusmanager/TEFocusStrategyBase;

    iget-object v4, v1, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCaptureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {v3, v4, v2}, Lcom/ss/android/ttvecamera/focusmanager/TEFocusStrategyBase;->configMeter(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/graphics/Rect;)V

    :cond_128
    if-eqz v16, :cond_15c

    if-eqz v11, :cond_15b

    .line 894
    iget-object v0, v1, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mFocusSettings:Lcom/ss/android/ttvecamera/TEFocusSettings;

    invoke-virtual {v0}, Lcom/ss/android/ttvecamera/TEFocusSettings;->isNeedMetering()Z

    move-result v0

    if-eqz v0, :cond_15b

    .line 895
    iget-object v0, v1, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCaptureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v2, v1, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mFocusStrategy:Lcom/ss/android/ttvecamera/focusmanager/TEFocusStrategyBase;

    xor-int/lit8 v3, v16, 0x1

    invoke-interface {v2, v0, v3}, Lcom/ss/android/ttvecamera/focusmanager/ITEFocusStrategy;->getMeteringCaptureCallback(Landroid/hardware/camera2/CaptureRequest$Builder;Z)Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    move-result-object v2

    iget-object v3, v1, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0, v2, v3}, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->updatePreview(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)Lcom/ss/android/ttvecamera/framework/TECameraModeBase$Response;

    .line 896
    iget-object v0, v1, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mManualFocusEngaged:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v15}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 897
    iget-object v0, v1, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget-boolean v0, v0, Lcom/ss/android/ttvecamera/TECameraSettings;->mEnableMonitorGyroscope:Z

    if-eqz v0, :cond_15b

    .line 898
    iget-object v0, v1, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraHolder:Lcom/ss/android/ttvecamera/TECamera2;

    invoke-virtual {v0}, Lcom/ss/android/ttvecamera/TECamera2;->getGyro()Lcom/ss/android/ttvecamera/focusmanager/Gyro;

    move-result-object v0

    iget-object v2, v1, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mGyroListener:Lcom/ss/android/ttvecamera/focusmanager/Gyro$GyroListener;

    iget-object v1, v1, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2, v1}, Lcom/ss/android/ttvecamera/focusmanager/Gyro;->register(Lcom/ss/android/ttvecamera/focusmanager/Gyro$GyroListener;Landroid/os/Handler;)V

    :cond_15b
    return v12

    .line 904
    :cond_15c
    iget-object v2, v1, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mManualFocusEngaged:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v14}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 905
    iget-object v2, v1, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mFocusStrategy:Lcom/ss/android/ttvecamera/focusmanager/TEFocusStrategyBase;

    iget-object v3, v1, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCaptureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {v2, v3, v0}, Lcom/ss/android/ttvecamera/focusmanager/TEFocusStrategyBase;->configFocus(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/graphics/Rect;)V

    .line 906
    iget-object v0, v1, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget-boolean v0, v0, Lcom/ss/android/ttvecamera/TECameraSettings;->mEnableMonitorGyroscope:Z

    if-eqz v0, :cond_19f

    .line 907
    iget-object v0, v1, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCaptureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v2, v1, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mFocusStrategy:Lcom/ss/android/ttvecamera/focusmanager/TEFocusStrategyBase;

    iget-object v3, v1, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mManualFocusEngaged:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-interface {v2, v0, v3, v13}, Lcom/ss/android/ttvecamera/focusmanager/ITEFocusStrategy;->getFocusCaptureCallback(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/util/concurrent/atomic/AtomicBoolean;Z)Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    move-result-object v2

    iget-object v3, v1, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0, v2, v3}, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->capture(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)Lcom/ss/android/ttvecamera/framework/TECameraModeBase$Response;

    move-result-object v0

    .line 908
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "focusAtPoint, capture to trigger focus, response = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, v0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase$Response;->isSuccess:Z

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Lcom/ss/android/ttvecamera/TELogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 909
    iget-object v0, v1, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCaptureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 911
    :cond_19f
    iget-object v0, v1, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCaptureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v2, v1, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mFocusStrategy:Lcom/ss/android/ttvecamera/focusmanager/TEFocusStrategyBase;

    iget-object v3, v1, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mManualFocusEngaged:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 912
    invoke-interface {v2, v0, v3, v13}, Lcom/ss/android/ttvecamera/focusmanager/ITEFocusStrategy;->getFocusCaptureCallback(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/util/concurrent/atomic/AtomicBoolean;Z)Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    move-result-object v2

    iget-object v3, v1, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mHandler:Landroid/os/Handler;

    .line 911
    invoke-virtual {v1, v0, v2, v3}, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->updatePreview(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)Lcom/ss/android/ttvecamera/framework/TECameraModeBase$Response;

    move-result-object v0

    .line 918
    iget-boolean v2, v0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase$Response;->isSuccess:Z

    if-nez v2, :cond_1d5

    .line 919
    iget-object v2, v1, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mManualFocusEngaged:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v15}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 920
    iget-object v2, v1, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mFocusSettings:Lcom/ss/android/ttvecamera/TEFocusSettings;

    invoke-virtual {v2}, Lcom/ss/android/ttvecamera/TEFocusSettings;->getFocusCallback()Lcom/ss/android/ttvecamera/TEFocusSettings$ITEFocusCallback;

    move-result-object v2

    iget-object v3, v1, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget v3, v3, Lcom/ss/android/ttvecamera/TECameraSettings;->mFacing:I

    iget-object v4, v0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase$Response;->errMsg:Ljava/lang/String;

    const/16 v5, -0x6c

    invoke-interface {v2, v5, v3, v4}, Lcom/ss/android/ttvecamera/TEFocusSettings$ITEFocusCallback;->onFocus(IILjava/lang/String;)V

    .line 921
    iget-object v2, v1, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraEvents:Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;

    iget-object v0, v0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase$Response;->errMsg:Ljava/lang/String;

    iget-object v1, v1, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    const/16 v3, -0x19b

    invoke-interface {v2, v3, v3, v0, v1}, Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;->onCameraInfo(IILjava/lang/String;Ljava/lang/Object;)V

    return v5

    .line 924
    :cond_1d5
    iget-object v0, v1, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget-boolean v0, v0, Lcom/ss/android/ttvecamera/TECameraSettings;->mEnableMonitorGyroscope:Z

    if-eqz v0, :cond_1ea

    if-nez v13, :cond_1ea

    .line 925
    iget-object v0, v1, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraHolder:Lcom/ss/android/ttvecamera/TECamera2;

    invoke-virtual {v0}, Lcom/ss/android/ttvecamera/TECamera2;->getGyro()Lcom/ss/android/ttvecamera/focusmanager/Gyro;

    move-result-object v0

    iget-object v2, v1, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mGyroListener:Lcom/ss/android/ttvecamera/focusmanager/Gyro$GyroListener;

    iget-object v1, v1, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2, v1}, Lcom/ss/android/ttvecamera/focusmanager/Gyro;->register(Lcom/ss/android/ttvecamera/focusmanager/Gyro$GyroListener;Landroid/os/Handler;)V

    .line 927
    :cond_1ea
    const-string v0, "focusAtPoint, done"

    invoke-static {v10, v0}, Lcom/ss/android/ttvecamera/TELogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v15

    .line 884
    :cond_1f0
    :goto_1f0
    const-string v0, "focusRect or meteringRect is not valid!"

    invoke-static {v10, v0}, Lcom/ss/android/ttvecamera/TELogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 885
    iget-object v2, v1, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mFocusSettings:Lcom/ss/android/ttvecamera/TEFocusSettings;

    invoke-virtual {v2}, Lcom/ss/android/ttvecamera/TEFocusSettings;->getFocusCallback()Lcom/ss/android/ttvecamera/TEFocusSettings$ITEFocusCallback;

    move-result-object v2

    iget-object v1, v1, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget v1, v1, Lcom/ss/android/ttvecamera/TECameraSettings;->mFacing:I

    invoke-interface {v2, v9, v1, v0}, Lcom/ss/android/ttvecamera/TEFocusSettings$ITEFocusCallback;->onFocus(IILjava/lang/String;)V

    return v9

    .line 826
    :cond_203
    :goto_203
    const-string v0, "Env is null"

    invoke-static {v10, v0}, Lcom/ss/android/ttvecamera/TELogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 827
    iget-object v2, v1, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mFocusSettings:Lcom/ss/android/ttvecamera/TEFocusSettings;

    invoke-virtual {v2}, Lcom/ss/android/ttvecamera/TEFocusSettings;->getFocusCallback()Lcom/ss/android/ttvecamera/TEFocusSettings$ITEFocusCallback;

    move-result-object v2

    iget-object v1, v1, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget v1, v1, Lcom/ss/android/ttvecamera/TECameraSettings;->mFacing:I

    invoke-interface {v2, v9, v1, v0}, Lcom/ss/android/ttvecamera/TEFocusSettings$ITEFocusCallback;->onFocus(IILjava/lang/String;)V

    return v9
.end method

.method public getApertureRange()[F
    .registers 5

    .line 1371
    iget-object v0, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCaptureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraSession:Landroid/hardware/camera2/CameraCaptureSession;

    if-nez v0, :cond_13

    .line 1373
    :cond_8
    iget-object v0, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraEvents:Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;

    iget-object v1, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    const/16 v2, -0x1b0

    const-string v3, "Capture Session is null"

    invoke-interface {v0, v2, v2, v3, v1}, Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;->onCameraInfo(IILjava/lang/String;Ljava/lang/Object;)V

    .line 1376
    :cond_13
    iget-object p0, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->LENS_INFO_AVAILABLE_APERTURES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p0, v0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [F

    if-nez p0, :cond_25

    const/4 p0, 0x2

    .line 1378
    new-array p0, p0, [F

    fill-array-data p0, :array_26

    :cond_25
    return-object p0

    :array_26
    .array-data 4
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
    .end array-data
.end method

.method public getCameraCaptureSize()[I
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method protected getCameraDevice()Ljava/lang/Object;
    .registers 1

    .line 382
    iget-object p0, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    return-object p0
.end method

.method public getCameraHandler()Landroid/os/Handler;
    .registers 3

    .line 1983
    iget-object v0, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraThread:Landroid/os/HandlerThread;

    if-nez v0, :cond_17

    .line 1984
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "camera thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraThread:Landroid/os/HandlerThread;

    .line 1985
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1986
    const-string v0, "TECameraModeBase"

    const-string v1, "getCameraHandler, init camera thread"

    invoke-static {v0, v1}, Lcom/ss/android/ttvecamera/TELogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1989
    :cond_17
    iget-object v0, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraThreadHandler:Landroid/os/Handler;

    if-nez v0, :cond_28

    .line 1990
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraThreadHandler:Landroid/os/Handler;

    .line 1993
    :cond_28
    iget-object p0, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraThreadHandler:Landroid/os/Handler;

    return-object p0
.end method

.method protected getContinuousFocusMode()I
    .registers 1

    const/4 p0, 0x3

    return p0
.end method

.method public getFOV()[F
    .registers 18

    move-object/from16 v0, p0

    .line 1411
    iget-object v1, v0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mDeviceProxy:Lcom/ss/android/ttvecamera/hardware/TECameraHardware2Proxy;

    const/4 v2, 0x2

    const-string v3, "TECameraModeBase"

    if-eqz v1, :cond_118

    iget-object v1, v0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCaptureRequest:Landroid/hardware/camera2/CaptureRequest;

    if-eqz v1, :cond_118

    iget-object v1, v0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraSession:Landroid/hardware/camera2/CameraCaptureSession;

    if-eqz v1, :cond_118

    iget-object v1, v0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCaptureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    if-nez v1, :cond_17

    goto/16 :goto_118

    .line 1416
    :cond_17
    new-array v1, v2, [D

    .line 1417
    iget-object v4, v0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v5, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_PHYSICAL_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v4, v5}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/SizeF;

    .line 1418
    iget-object v5, v0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v6, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_ACTIVE_ARRAY_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v5, v6}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Rect;

    .line 1419
    iget-object v6, v0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v7, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_PIXEL_ARRAY_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v6, v7}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/Size;

    .line 1420
    iget-object v7, v0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCaptureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v8, Landroid/hardware/camera2/CaptureRequest;->LENS_FOCAL_LENGTH:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v7, v8}, Landroid/hardware/camera2/CaptureRequest$Builder;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Float;

    .line 1421
    iget v8, v5, Landroid/graphics/Rect;->right:I

    iget v9, v5, Landroid/graphics/Rect;->left:I

    sub-int/2addr v8, v9

    invoke-static {v8}, Ljava/lang/StrictMath;->abs(I)I

    move-result v8

    .line 1422
    iget v9, v5, Landroid/graphics/Rect;->top:I

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v9, v5

    invoke-static {v9}, Ljava/lang/StrictMath;->abs(I)I

    move-result v5

    .line 1423
    iget-object v0, v0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget-object v0, v0, Lcom/ss/android/ttvecamera/TECameraSettings;->mPreviewSize:Lcom/ss/android/ttvecamera/TEFrameSizei;

    iget v9, v0, Lcom/ss/android/ttvecamera/TEFrameSizei;->width:I

    .line 1424
    iget v0, v0, Lcom/ss/android/ttvecamera/TEFrameSizei;->height:I

    mul-int v10, v8, v0

    .line 1425
    div-int v11, v9, v5

    const/4 v12, 0x1

    const/high16 v13, 0x40000000    # 2.0f

    const-wide/high16 v14, 0x4000000000000000L    # 2.0

    const/16 v16, 0x0

    if-lt v10, v11, :cond_a3

    .line 1426
    invoke-virtual {v4}, Landroid/util/SizeF;->getWidth()F

    move-result v10

    int-to-float v11, v8

    mul-float/2addr v10, v11

    invoke-virtual {v6}, Landroid/util/Size;->getWidth()I

    move-result v11

    int-to-float v11, v11

    div-float/2addr v10, v11

    .line 1427
    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v11

    mul-float/2addr v11, v13

    div-float/2addr v10, v11

    float-to-double v10, v10

    invoke-static {v10, v11}, Ljava/lang/StrictMath;->atan(D)D

    move-result-wide v10

    mul-double/2addr v10, v14

    aput-wide v10, v1, v16

    .line 1428
    invoke-virtual {v4}, Landroid/util/SizeF;->getHeight()F

    move-result v4

    int-to-float v10, v5

    mul-float/2addr v4, v10

    invoke-virtual {v6}, Landroid/util/Size;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v4, v6

    div-int/2addr v9, v0

    int-to-float v0, v9

    mul-float/2addr v4, v0

    div-int/2addr v8, v5

    int-to-float v0, v8

    div-float/2addr v4, v0

    .line 1429
    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v0

    mul-float/2addr v0, v13

    div-float/2addr v4, v0

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/StrictMath;->atan(D)D

    move-result-wide v4

    mul-double/2addr v4, v14

    aput-wide v4, v1, v12

    goto :goto_dd

    .line 1431
    :cond_a3
    invoke-virtual {v4}, Landroid/util/SizeF;->getHeight()F

    move-result v10

    int-to-float v11, v5

    mul-float/2addr v10, v11

    invoke-virtual {v6}, Landroid/util/Size;->getHeight()I

    move-result v11

    int-to-float v11, v11

    div-float/2addr v10, v11

    .line 1432
    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v11

    mul-float/2addr v11, v13

    div-float/2addr v10, v11

    float-to-double v10, v10

    invoke-static {v10, v11}, Ljava/lang/StrictMath;->atan(D)D

    move-result-wide v10

    mul-double/2addr v10, v14

    aput-wide v10, v1, v12

    .line 1433
    invoke-virtual {v4}, Landroid/util/SizeF;->getWidth()F

    move-result v4

    int-to-float v10, v8

    mul-float/2addr v4, v10

    invoke-virtual {v6}, Landroid/util/Size;->getWidth()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v4, v6

    div-int/2addr v0, v9

    int-to-float v0, v0

    mul-float/2addr v4, v0

    div-int/2addr v5, v8

    int-to-float v0, v5

    div-float/2addr v4, v0

    .line 1434
    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v0

    mul-float/2addr v0, v13

    div-float/2addr v4, v0

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/StrictMath;->atan(D)D

    move-result-wide v4

    mul-double/2addr v4, v14

    aput-wide v4, v1, v16

    .line 1437
    :goto_dd
    aget-wide v4, v1, v12

    const-wide v6, 0x4066800000000000L    # 180.0

    mul-double/2addr v4, v6

    const-wide v8, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v4, v8

    double-to-float v0, v4

    .line 1438
    aget-wide v4, v1, v16

    mul-double/2addr v4, v6

    div-double/2addr v4, v8

    double-to-float v1, v4

    new-array v2, v2, [F

    aput v0, v2, v16

    aput v1, v2, v12

    .line 1439
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Camera2:verticalFOV = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v1, v2, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ",horizontalFOV = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v1, v2, v12

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/ss/android/ttvecamera/TELogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    .line 1412
    :cond_118
    :goto_118
    const-string v0, "Env is null"

    invoke-static {v3, v0}, Lcom/ss/android/ttvecamera/TELogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1413
    new-array v0, v2, [F

    fill-array-data v0, :array_124

    return-object v0

    nop

    :array_124
    .array-data 4
        -0x40000000    # -2.0f
        -0x40000000    # -2.0f
    .end array-data
.end method

.method public getFlashMode()I
    .registers 1

    const/4 p0, -0x1

    return p0
.end method

.method public getISO()I
    .registers 5

    .line 1320
    iget-object v0, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCaptureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraSession:Landroid/hardware/camera2/CameraCaptureSession;

    if-nez v0, :cond_13

    .line 1322
    :cond_8
    iget-object v0, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraEvents:Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;

    iget-object v1, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    const/16 v2, -0x1ae

    const-string v3, "Capture Session is null"

    invoke-interface {v0, v2, v2, v3, v1}, Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;->onCameraInfo(IILjava/lang/String;Ljava/lang/Object;)V

    .line 1324
    :cond_13
    iget p0, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCurrentIso:I

    return p0
.end method

.method public getISORange()[I
    .registers 5

    .line 1279
    iget-object v0, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCaptureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraSession:Landroid/hardware/camera2/CameraCaptureSession;

    if-nez v0, :cond_13

    .line 1281
    :cond_8
    iget-object v0, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraEvents:Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;

    iget-object v1, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    const/16 v2, -0x1ae

    const-string v3, "Capture Session is null"

    invoke-interface {v0, v2, v2, v3, v1}, Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;->onCameraInfo(IILjava/lang/String;Ljava/lang/Object;)V

    .line 1284
    :cond_13
    iget-object p0, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_SENSITIVITY_RANGE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p0, v0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/Range;

    if-eqz p0, :cond_55

    .line 1285
    invoke-virtual {p0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x320

    if-lt v0, v1, :cond_55

    invoke-virtual {p0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x64

    if-le v0, v1, :cond_3c

    goto :goto_55

    .line 1288
    :cond_3c
    invoke-virtual {p0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    filled-new-array {v0, p0}, [I

    move-result-object p0

    return-object p0

    :cond_55
    :goto_55
    const/4 p0, -0x1

    .line 1286
    filled-new-array {p0, p0}, [I

    move-result-object p0

    return-object p0
.end method

.method public getManualFocusAbility()F
    .registers 5

    .line 1020
    iget-object v0, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCaptureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    const/16 v1, -0x1b3

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraSession:Landroid/hardware/camera2/CameraCaptureSession;

    if-nez v0, :cond_13

    .line 1022
    :cond_a
    iget-object v0, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraEvents:Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;

    iget-object v2, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    const-string v3, "Capture Session is null"

    invoke-interface {v0, v1, v1, v3, v2}, Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;->onCameraInfo(IILjava/lang/String;Ljava/lang/Object;)V

    .line 1025
    :cond_13
    iget-object v0, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->LENS_INFO_MINIMUM_FOCUS_DISTANCE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v2}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    const/high16 v3, -0x40800000    # -1.0f

    if-nez v0, :cond_21

    move v0, v3

    goto :goto_2d

    .line 1026
    :cond_21
    iget-object v0, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {v0, v2}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    :goto_2d
    const/4 v2, 0x0

    cmpg-float v2, v0, v2

    if-gez v2, :cond_3c

    .line 1029
    iget-object v0, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraEvents:Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;

    iget-object p0, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    const-string v2, "can not get manual focus ability"

    invoke-interface {v0, v1, v1, v2, p0}, Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;->onCameraInfo(IILjava/lang/String;Ljava/lang/Object;)V

    return v3

    :cond_3c
    return v0
.end method

.method public getPictureSize()[I
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method public getPreviewFps()[I
    .registers 3

    .line 618
    iget-object p0, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCaptureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    const/4 v0, 0x0

    if-nez p0, :cond_6

    return-object v0

    .line 622
    :cond_6
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_TARGET_FPS_RANGE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/Range;

    if-nez p0, :cond_11

    return-object v0

    .line 628
    :cond_11
    invoke-virtual {p0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 629
    invoke-virtual {p0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    filled-new-array {v0, p0}, [I

    move-result-object p0

    return-object p0
.end method

.method protected getSessionType(Ljava/util/List;)I
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/Surface;",
            ">;)I"
        }
    .end annotation

    const/4 p0, 0x0

    return p0
.end method

.method public getShutterTimeRange()[J
    .registers 6

    .line 1330
    iget-object v0, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCaptureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraSession:Landroid/hardware/camera2/CameraCaptureSession;

    if-nez v0, :cond_13

    .line 1332
    :cond_8
    iget-object v0, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraEvents:Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;

    iget-object v1, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    const/16 v2, -0x1af

    const-string v3, "Capture Session is null"

    invoke-interface {v0, v2, v2, v3, v1}, Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;->onCameraInfo(IILjava/lang/String;Ljava/lang/Object;)V

    .line 1335
    :cond_13
    iget-object p0, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_EXPOSURE_TIME_RANGE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p0, v0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/Range;

    const/4 v0, 0x2

    if-nez p0, :cond_26

    .line 1337
    new-array p0, v0, [J

    fill-array-data p0, :array_44

    return-object p0

    .line 1339
    :cond_26
    invoke-virtual {p0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    new-array p0, v0, [J

    const/4 v0, 0x0

    aput-wide v1, p0, v0

    const/4 v0, 0x1

    aput-wide v3, p0, v0

    return-object p0

    nop

    :array_44
    .array-data 8
        -0x1
        -0x1
    .end array-data
.end method

.method protected needSetStabilizationParam()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public openCamera(Ljava/lang/String;I)I
    .registers 5

    .line 169
    const-string p1, "TECameraModeBase-openCamera"

    invoke-static {p1}, Lcom/ss/android/ttvecamera/TETraceUtils;->beginSection(Ljava/lang/String;)V

    .line 170
    iget-object p1, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    const/16 v0, -0x1b7

    if-nez p1, :cond_13

    .line 171
    const-string p0, "TECameraModeBase"

    const-string p1, "open failed, mCameraCharacteristics = null"

    invoke-static {p0, p1}, Lcom/ss/android/ttvecamera/TELogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    .line 175
    :cond_13
    iget-object v1, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mDeviceProxy:Lcom/ss/android/ttvecamera/hardware/TECameraHardware2Proxy;

    invoke-virtual {v1, p1, p2}, Lcom/ss/android/ttvecamera/hardware/TECameraHardware2Proxy;->isHardwareLevelSupported(Landroid/hardware/camera2/CameraCharacteristics;I)Z

    move-result p1

    if-nez p1, :cond_1e

    const/16 p0, -0x193

    return p0

    .line 181
    :cond_1e
    iget-object p1, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget-object p2, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_ORIENTATION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p2, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iput p2, p1, Lcom/ss/android/ttvecamera/TECameraSettings;->mRotation:I

    .line 183
    iget-object p1, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object p2, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_STREAM_CONFIGURATION_MAP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p1, p2}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/camera2/params/StreamConfigurationMap;

    iput-object p1, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mStreamConfigurationMap:Landroid/hardware/camera2/params/StreamConfigurationMap;

    if-nez p1, :cond_3f

    return v0

    .line 189
    :cond_3f
    iget-object p1, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mDeviceProxy:Lcom/ss/android/ttvecamera/hardware/TECameraHardware2Proxy;

    iget-object p2, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    iget-object v0, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget v1, v0, Lcom/ss/android/ttvecamera/TECameraSettings;->mCameraType:I

    iget v0, v0, Lcom/ss/android/ttvecamera/TECameraSettings;->mCameraZoomLimitFactor:F

    invoke-virtual {p1, p2, v1, v0}, Lcom/ss/android/ttvecamera/hardware/TECameraHardware2Proxy;->getMaxZoomValue(Landroid/hardware/camera2/CameraCharacteristics;IF)F

    move-result p1

    iput p1, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mMaxZoom:F

    .line 191
    iget-object p1, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget p2, p1, Lcom/ss/android/ttvecamera/TECameraSettings;->mMaxZoomRatio:F

    const/high16 v0, -0x40800000    # -1.0f

    cmpl-float p2, p2, v0

    if-eqz p2, :cond_78

    iget p1, p1, Lcom/ss/android/ttvecamera/TECameraSettings;->mMinZoomRatio:F

    cmpl-float p1, p1, v0

    if-nez p1, :cond_60

    goto :goto_78

    .line 194
    :cond_60
    new-instance p1, Landroid/util/Range;

    iget-object p2, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget p2, p2, Lcom/ss/android/ttvecamera/TECameraSettings;->mMinZoomRatio:F

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    iget-object v0, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget v0, v0, Lcom/ss/android/ttvecamera/TECameraSettings;->mMaxZoomRatio:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-direct {p1, p2, v0}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    iput-object p1, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mZoomRatioRange:Landroid/util/Range;

    goto :goto_82

    .line 192
    :cond_78
    :goto_78
    iget-object p1, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mDeviceProxy:Lcom/ss/android/ttvecamera/hardware/TECameraHardware2Proxy;

    iget-object p2, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {p1, p2}, Lcom/ss/android/ttvecamera/hardware/TECameraHardware2Proxy;->getZoomValueRange(Landroid/hardware/camera2/CameraCharacteristics;)Landroid/util/Range;

    move-result-object p1

    iput-object p1, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mZoomRatioRange:Landroid/util/Range;

    :goto_82
    const/high16 p1, 0x3f800000    # 1.0f

    .line 197
    iput p1, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mNowZoom:F

    .line 198
    iget-object p1, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object p2, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_ACTIVE_ARRAY_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p1, p2}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Rect;

    iput-object p1, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mActiveArraySize:Landroid/graphics/Rect;

    .line 200
    invoke-direct {p0}, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->setFPSRange()V

    .line 202
    iget-object p1, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget-object p1, p1, Lcom/ss/android/ttvecamera/TECameraSettings;->mExtParameters:Landroid/os/Bundle;

    const-string p2, "useCameraFaceDetect"

    invoke-virtual {p1, p2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mUseFaceAE:I

    .line 203
    iget-object p1, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object p2, Landroid/hardware/camera2/CameraCharacteristics;->STATISTICS_INFO_AVAILABLE_FACE_DETECT_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p1, p2}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I

    iput-object p1, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mFaceDetectSupportMode:[I

    const/4 p1, 0x0

    .line 204
    iput p1, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mExposureCompensation:I

    .line 206
    invoke-static {}, Lcom/ss/android/ttvecamera/TETraceUtils;->endSection()V

    return p1
.end method

.method protected openCameraLock()V
    .registers 2

    .line 2097
    iget-object p0, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraHolder:Lcom/ss/android/ttvecamera/TECamera2;

    if-eqz p0, :cond_8

    .line 2098
    invoke-virtual {p0}, Lcom/ss/android/ttvecamera/TECamera2;->openCameraLock()V

    return-void

    .line 2100
    :cond_8
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "openCameraLock failed, "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/ss/android/ttvecamera/TELogUtils;->getStackTraceString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "TECameraModeBase"

    invoke-static {v0, p0}, Lcom/ss/android/ttvecamera/TELogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public prepareProvider()I
    .registers 9

    .line 424
    const-string v0, "TECameraModeBase-prepareProvider"

    invoke-static {v0}, Lcom/ss/android/ttvecamera/TETraceUtils;->beginSection(Ljava/lang/String;)V

    .line 425
    iget-object v0, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraHolder:Lcom/ss/android/ttvecamera/TECamera2;

    invoke-virtual {v0}, Lcom/ss/android/ttvecamera/TECameraBase;->getProviderManager()Lcom/ss/android/ttvecamera/provider/TECameraProviderManager;

    move-result-object v0

    .line 426
    invoke-virtual {p0}, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->getCameraDevice()Ljava/lang/Object;

    move-result-object v1

    const/16 v2, -0x64

    const-string v3, "TECameraModeBase"

    if-eqz v1, :cond_ee

    if-nez v0, :cond_19

    goto/16 :goto_ee

    .line 431
    :cond_19
    iget-object v1, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mStreamConfigurationMap:Landroid/hardware/camera2/params/StreamConfigurationMap;

    if-nez v1, :cond_29

    .line 432
    iget-object v1, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v4, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_STREAM_CONFIGURATION_MAP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v1, v4}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/camera2/params/StreamConfigurationMap;

    iput-object v1, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mStreamConfigurationMap:Landroid/hardware/camera2/params/StreamConfigurationMap;

    .line 435
    :cond_29
    invoke-virtual {v0}, Lcom/ss/android/ttvecamera/provider/TECameraProviderManager;->getProvider()Lcom/ss/android/ttvecamera/provider/TECameraProvider;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ss/android/ttvecamera/provider/TECameraProvider;->isPreview()Z

    move-result v1

    const/4 v4, 0x0

    if-eqz v1, :cond_5b

    .line 436
    iget-object v1, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mPreviewSizeCallback:Lcom/ss/android/ttvecamera/TECameraBase$PreviewSizeCallBack;

    invoke-virtual {v0, v1}, Lcom/ss/android/ttvecamera/provider/TECameraProviderManager;->setPreviewSizeCallback(Lcom/ss/android/ttvecamera/TECameraBase$PreviewSizeCallBack;)V

    .line 437
    iget-object v1, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mStreamConfigurationMap:Landroid/hardware/camera2/params/StreamConfigurationMap;

    const/4 v5, 0x0

    invoke-virtual {v0, v1, v5}, Lcom/ss/android/ttvecamera/provider/TECameraProviderManager;->initProvider(Landroid/hardware/camera2/params/StreamConfigurationMap;Lcom/ss/android/ttvecamera/TEFrameSizei;)I

    .line 438
    iget-object v1, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    invoke-virtual {v0}, Lcom/ss/android/ttvecamera/provider/TECameraProviderManager;->getPreviewSize()Lcom/ss/android/ttvecamera/TEFrameSizei;

    move-result-object v5

    iput-object v5, v1, Lcom/ss/android/ttvecamera/TECameraSettings;->mPreviewSize:Lcom/ss/android/ttvecamera/TEFrameSizei;

    .line 439
    iget-object v1, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget-object v1, v1, Lcom/ss/android/ttvecamera/TECameraSettings;->mPreviewSize:Lcom/ss/android/ttvecamera/TEFrameSizei;

    if-eqz v1, :cond_6c

    .line 440
    iget-object v5, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraEvents:Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;

    invoke-virtual {v1}, Lcom/ss/android/ttvecamera/TEFrameSizei;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v6, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    const/16 v7, 0x32

    invoke-interface {v5, v7, v4, v1, v6}, Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;->onCameraInfo(IILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_6c

    .line 442
    :cond_5b
    iget-object v1, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mStreamConfigurationMap:Landroid/hardware/camera2/params/StreamConfigurationMap;

    iget-object v5, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget-object v5, v5, Lcom/ss/android/ttvecamera/TECameraSettings;->mPreviewSize:Lcom/ss/android/ttvecamera/TEFrameSizei;

    invoke-virtual {v0, v1, v5}, Lcom/ss/android/ttvecamera/provider/TECameraProviderManager;->initProvider(Landroid/hardware/camera2/params/StreamConfigurationMap;Lcom/ss/android/ttvecamera/TEFrameSizei;)I

    .line 443
    iget-object v1, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    invoke-virtual {v0}, Lcom/ss/android/ttvecamera/provider/TECameraProviderManager;->getPictureSize()Lcom/ss/android/ttvecamera/TEFrameSizei;

    move-result-object v5

    iput-object v5, v1, Lcom/ss/android/ttvecamera/TECameraSettings;->mPictureSize:Lcom/ss/android/ttvecamera/TEFrameSizei;

    .line 446
    :cond_6c
    :goto_6c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Camera provider type: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/ss/android/ttvecamera/provider/TECameraProviderManager;->getProviderType()I

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/ss/android/ttvecamera/TELogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 448
    invoke-virtual {v0}, Lcom/ss/android/ttvecamera/provider/TECameraProviderManager;->getProviderType()I

    move-result v1

    const/4 v5, 0x1

    if-eq v1, v5, :cond_cf

    .line 449
    invoke-virtual {v0}, Lcom/ss/android/ttvecamera/provider/TECameraProviderManager;->getProviderType()I

    move-result v1

    const/16 v5, 0x10

    if-ne v1, v5, :cond_94

    goto :goto_cf

    .line 455
    :cond_94
    invoke-virtual {v0}, Lcom/ss/android/ttvecamera/provider/TECameraProviderManager;->getProviderType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_9c

    goto :goto_ea

    .line 457
    :cond_9c
    invoke-virtual {v0}, Lcom/ss/android/ttvecamera/provider/TECameraProviderManager;->getProviderType()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_b4

    .line 458
    invoke-virtual {v0}, Lcom/ss/android/ttvecamera/provider/TECameraProviderManager;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    iget-object p0, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget-object p0, p0, Lcom/ss/android/ttvecamera/TECameraSettings;->mPreviewSize:Lcom/ss/android/ttvecamera/TEFrameSizei;

    iget v1, p0, Lcom/ss/android/ttvecamera/TEFrameSizei;->width:I

    iget p0, p0, Lcom/ss/android/ttvecamera/TEFrameSizei;->height:I

    invoke-virtual {v0, v1, p0}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    goto :goto_ea

    .line 460
    :cond_b4
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unsupported camera provider type : "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/ss/android/ttvecamera/provider/TECameraProviderManager;->getProviderType()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lcom/ss/android/ttvecamera/TELogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, -0xc8

    return p0

    .line 450
    :cond_cf
    :goto_cf
    invoke-virtual {v0}, Lcom/ss/android/ttvecamera/provider/TECameraProviderManager;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v1

    if-nez v1, :cond_db

    .line 451
    const-string p0, "SurfaceTexture is null."

    invoke-static {v3, p0}, Lcom/ss/android/ttvecamera/TELogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 454
    :cond_db
    invoke-virtual {v0}, Lcom/ss/android/ttvecamera/provider/TECameraProviderManager;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    iget-object p0, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget-object p0, p0, Lcom/ss/android/ttvecamera/TECameraSettings;->mPreviewSize:Lcom/ss/android/ttvecamera/TEFrameSizei;

    iget v1, p0, Lcom/ss/android/ttvecamera/TEFrameSizei;->width:I

    iget p0, p0, Lcom/ss/android/ttvecamera/TEFrameSizei;->height:I

    invoke-virtual {v0, v1, p0}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    .line 464
    :goto_ea
    invoke-static {}, Lcom/ss/android/ttvecamera/TETraceUtils;->endSection()V

    return v4

    .line 427
    :cond_ee
    :goto_ee
    const-string p0, "CameraDevice or ProviderManager is null!"

    invoke-static {v3, p0}, Lcom/ss/android/ttvecamera/TELogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v2
.end method

.method public process(Lcom/ss/android/ttvecamera/TECameraSettings$Operation;)V
    .registers 2

    return-void
.end method

.method public releaseCameraThread()V
    .registers 2

    .line 1997
    iget-object v0, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_13

    .line 1999
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    const/4 v0, 0x0

    .line 2003
    iput-object v0, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraThread:Landroid/os/HandlerThread;

    .line 2004
    iput-object v0, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraThreadHandler:Landroid/os/Handler;

    .line 2005
    const-string p0, "TECameraModeBase"

    const-string v0, "releaseCameraThread"

    invoke-static {p0, v0}, Lcom/ss/android/ttvecamera/TELogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_13
    return-void
.end method

.method public removeFocusSettings()V
    .registers 3

    .line 988
    const-string v0, "TECameraModeBase"

    const-string v1, "removeFocusSettings"

    invoke-static {v0, v1}, Lcom/ss/android/ttvecamera/TELogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 989
    iget-object v0, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mFocusStrategy:Lcom/ss/android/ttvecamera/focusmanager/TEFocusStrategyBase;

    if-eqz v0, :cond_11

    const/4 v1, 0x0

    .line 990
    invoke-virtual {v0, v1}, Lcom/ss/android/ttvecamera/focusmanager/TEFocusStrategyBase;->setFocusSettings(Lcom/ss/android/ttvecamera/TEFocusSettings;)V

    .line 991
    iput-object v1, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mFocusSettings:Lcom/ss/android/ttvecamera/TEFocusSettings;

    :cond_11
    return-void
.end method

.method public reset()V
    .registers 2

    const/4 v0, 0x0

    .line 397
    iput-object v0, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mZoomSize:Landroid/graphics/Rect;

    const/4 v0, 0x0

    .line 398
    iput v0, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mPreviewCapturedFailedCount:I

    return-void
.end method

.method public rollbackMeteringSessionRequest()I
    .registers 5

    .line 967
    iget-object v0, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCaptureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    if-nez v0, :cond_14

    .line 968
    iget-object v0, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraEvents:Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;

    iget-object v1, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget v1, v1, Lcom/ss/android/ttvecamera/TECameraSettings;->mCameraType:I

    const-string v2, "rollbackMeteringSessionRequest : param is null."

    iget-object p0, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    const/16 v3, -0x64

    invoke-interface {v0, v1, v3, v2, p0}, Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;->onCameraError(IILjava/lang/String;Ljava/lang/Object;)V

    return v3

    .line 972
    :cond_14
    iget v0, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mUseFaceAE:I

    invoke-virtual {p0, v0}, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->useFaceAEStrategy(I)V

    .line 973
    iget-object v0, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCaptureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 974
    iget-object v0, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget-boolean v0, v0, Lcom/ss/android/ttvecamera/TECameraSettings;->mEnableMonitorGyroscope:Z

    if-eqz v0, :cond_34

    .line 975
    iget-object v0, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCaptureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_REGIONS:Landroid/hardware/camera2/CaptureRequest$Key;

    sget-object v2, Lcom/ss/android/ttvecamera/focusmanager/ITEFocusStrategy;->ZERO_WEIGHT_3A_REGION:[Landroid/hardware/camera2/params/MeteringRectangle;

    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 977
    :cond_34
    iget-object v0, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCaptureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {p0, v0}, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->updatePreview(Landroid/hardware/camera2/CaptureRequest$Builder;)Lcom/ss/android/ttvecamera/framework/TECameraModeBase$Response;

    .line 978
    const-string p0, "TECameraModeBase"

    const-string v0, "rollbackMeteringSessionRequest"

    invoke-static {p0, v0}, Lcom/ss/android/ttvecamera/TELogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public rollbackNormalSessionRequest()I
    .registers 5

    .line 948
    iget-object v0, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCaptureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    if-nez v0, :cond_14

    .line 949
    iget-object v0, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraEvents:Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;

    iget-object v1, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget v1, v1, Lcom/ss/android/ttvecamera/TECameraSettings;->mCameraType:I

    const-string v2, "rollbackNormalSessionRequest : param is null."

    iget-object p0, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    const/16 v3, -0x64

    invoke-interface {v0, v1, v3, v2, p0}, Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;->onCameraError(IILjava/lang/String;Ljava/lang/Object;)V

    return v3

    .line 953
    :cond_14
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 954
    iget-object v0, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCaptureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p0}, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->getContinuousFocusMode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 955
    iget-object v0, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCaptureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 956
    iget-object v0, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget-boolean v0, v0, Lcom/ss/android/ttvecamera/TECameraSettings;->mEnableMonitorGyroscope:Z

    if-eqz v0, :cond_4f

    .line 957
    iget-object v0, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCaptureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_REGIONS:Landroid/hardware/camera2/CaptureRequest$Key;

    sget-object v2, Lcom/ss/android/ttvecamera/focusmanager/ITEFocusStrategy;->ZERO_WEIGHT_3A_REGION:[Landroid/hardware/camera2/params/MeteringRectangle;

    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 958
    iget-object v0, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCaptureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_REGIONS:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 960
    :cond_4f
    iget-object v0, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCaptureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {p0, v0}, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->updatePreview(Landroid/hardware/camera2/CaptureRequest$Builder;)Lcom/ss/android/ttvecamera/framework/TECameraModeBase$Response;

    .line 961
    const-string p0, "TECameraModeBase"

    const-string v0, "rollbackNormalSessionRequest"

    invoke-static {p0, v0}, Lcom/ss/android/ttvecamera/TELogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public selectCamera(I)Ljava/lang/String;
    .registers 13
    .param p1    # I
        .annotation build Lcom/ss/android/ttvecamera/TECameraSettings$CameraFacing;
        .end annotation
    .end param

    .line 282
    const-string v0, "TECameraModeBase-selectCamera"

    invoke-static {v0}, Lcom/ss/android/ttvecamera/TETraceUtils;->beginSection(Ljava/lang/String;)V

    .line 283
    iget-object v0, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraManager;->getCameraIdList()[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 284
    const-string v2, "TECameraModeBase"

    if-nez v0, :cond_16

    .line 285
    const-string p0, "cameraList is null"

    invoke-static {v2, p0}, Lcom/ss/android/ttvecamera/TELogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 289
    :cond_16
    array-length v3, v0

    int-to-long v3, v3

    const-string v5, "te_record_camera_size"

    invoke-static {v5, v3, v4}, Lcom/ss/android/ttvecamera/TECameraMonitor;->perfLong(Ljava/lang/String;J)V

    .line 292
    iget-object v3, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget-object v3, v3, Lcom/ss/android/ttvecamera/TECameraSettings;->mExtParameters:Landroid/os/Bundle;

    const-string v4, "ve_enable_camera_devices_cache"

    invoke-virtual {v3, v4}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3a

    .line 293
    const-string v1, "Enable CameraDeviceCache"

    invoke-static {v2, v1}, Lcom/ss/android/ttvecamera/TELogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    iget-object v1, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraDevicesCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    :cond_3a
    const/4 v3, 0x0

    if-eqz v1, :cond_41

    .line 296
    const-string v4, ""

    if-ne v1, v4, :cond_13d

    :cond_41
    const/4 v4, 0x2

    if-ne p1, v4, :cond_be

    .line 299
    iget-object v4, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget-object v4, v4, Lcom/ss/android/ttvecamera/TECameraSettings;->mStrCustomizedCameraID:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_9a

    iget-object v4, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget-object v4, v4, Lcom/ss/android/ttvecamera/TECameraSettings;->mStrCustomizedCameraID:Ljava/lang/String;

    const-string v5, "-1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_9a

    .line 300
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Wide-angle camera id: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget-object v5, v5, Lcom/ss/android/ttvecamera/TECameraSettings;->mStrCustomizedCameraID:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/ss/android/ttvecamera/TELogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    iget-object v4, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget-object v4, v4, Lcom/ss/android/ttvecamera/TECameraSettings;->mStrCustomizedCameraID:Ljava/lang/String;

    invoke-static {v0, v4}, Lcom/ss/android/ttvecamera/TECameraUtils;->contains([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_81

    .line 302
    iget-object v1, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget-object v1, v1, Lcom/ss/android/ttvecamera/TECameraSettings;->mStrCustomizedCameraID:Ljava/lang/String;

    goto :goto_b1

    .line 304
    :cond_81
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Maybe this is not validate camera id: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget-object v5, v5, Lcom/ss/android/ttvecamera/TECameraSettings;->mStrCustomizedCameraID:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/ss/android/ttvecamera/TELogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b1

    .line 307
    :cond_9a
    iget-object v1, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget v1, v1, Lcom/ss/android/ttvecamera/TECameraSettings;->mCameraType:I

    const/16 v4, 0x8

    if-ne v1, v4, :cond_a9

    .line 308
    iget-object v1, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraHolder:Lcom/ss/android/ttvecamera/TECamera2;

    invoke-virtual {v1}, Lcom/ss/android/ttvecamera/TECameraBase;->getWideAngleID()Ljava/lang/String;

    move-result-object v1

    goto :goto_b1

    .line 310
    :cond_a9
    iget-object v1, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mDeviceProxy:Lcom/ss/android/ttvecamera/hardware/TECameraHardware2Proxy;

    iget-object v4, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    invoke-virtual {v1, v0, v4}, Lcom/ss/android/ttvecamera/hardware/TECameraHardware2Proxy;->getWideAngleID([Ljava/lang/String;Landroid/hardware/camera2/CameraManager;)Ljava/lang/String;

    move-result-object v1

    .line 312
    :goto_b1
    iget-object v4, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraEvents:Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;

    const-string v5, "enable wide angle"

    iget-object v6, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    const/16 v7, 0x70

    invoke-interface {v4, v7, v3, v5, v6}, Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;->onCameraInfo(IILjava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_132

    :cond_be
    const/4 v5, 0x3

    if-ne p1, v5, :cond_d1

    .line 314
    iget-object v5, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget v5, v5, Lcom/ss/android/ttvecamera/TECameraSettings;->mCameraType:I

    if-ne v5, v4, :cond_132

    .line 315
    iget-object v1, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mDeviceProxy:Lcom/ss/android/ttvecamera/hardware/TECameraHardware2Proxy;

    iget-object v4, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    invoke-virtual {v1, v0, v4}, Lcom/ss/android/ttvecamera/hardware/TECameraHardware2Proxy;->getTelephotoID([Ljava/lang/String;Landroid/hardware/camera2/CameraManager;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_132

    .line 318
    :cond_d1
    array-length v4, v0

    const/4 v5, 0x1

    if-ge p1, v4, :cond_d7

    if-gez p1, :cond_d8

    :cond_d7
    move p1, v5

    .line 321
    :cond_d8
    iget-object v4, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iput p1, v4, Lcom/ss/android/ttvecamera/TECameraSettings;->mFacing:I

    .line 322
    iget-boolean v6, v4, Lcom/ss/android/ttvecamera/TECameraSettings;->mPreferOpenCameraByCameraId:Z

    if-eqz v6, :cond_ed

    iget-object v4, v4, Lcom/ss/android/ttvecamera/TECameraSettings;->mStrCustomizedCameraID:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_ed

    .line 323
    iget-object v1, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget-object v1, v1, Lcom/ss/android/ttvecamera/TECameraSettings;->mStrCustomizedCameraID:Ljava/lang/String;

    goto :goto_103

    .line 324
    :cond_ed
    iget-object v4, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget-boolean v4, v4, Lcom/ss/android/ttvecamera/TECameraSettings;->mEnableWideFOV:Z

    if-eqz v4, :cond_103

    invoke-static {}, Lcom/ss/android/ttvecamera/hardware/TECameraHardware2;->isSSPlatform()Z

    move-result v4

    if-eqz v4, :cond_103

    .line 325
    iget-object v1, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mDeviceProxy:Lcom/ss/android/ttvecamera/hardware/TECameraHardware2Proxy;

    check-cast v1, Lcom/ss/android/ttvecamera/hardware/TECameraSSProxy;

    iget-object v4, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    invoke-virtual {v1, v4, p1, v0}, Lcom/ss/android/ttvecamera/hardware/TECameraSSProxy;->selectCamera(Landroid/hardware/camera2/CameraManager;I[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_103
    :goto_103
    if-nez v1, :cond_132

    .line 328
    array-length v4, v0

    move v6, v3

    :goto_107
    if-ge v6, v4, :cond_132

    aget-object v7, v0, v6

    .line 329
    iget-object v8, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    invoke-virtual {v8, v7}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v8

    .line 330
    sget-object v9, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v8, v9}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-ne v8, v5, :cond_121

    move v8, v3

    goto :goto_122

    :cond_121
    move v8, v5

    .line 332
    :goto_122
    iget-object v9, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraDevicesCache:Ljava/util/HashMap;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-ne v8, p1, :cond_12f

    move-object v1, v7

    goto :goto_132

    :cond_12f
    add-int/lit8 v6, v6, 0x1

    goto :goto_107

    :cond_132
    :goto_132
    if-eqz v1, :cond_13d

    .line 342
    iget-object v4, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraDevicesCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v4, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_13d
    if-nez v1, :cond_146

    .line 347
    const-string p1, "selectCamera: camera tag is null, set 0 for default"

    invoke-static {v2, p1}, Lcom/ss/android/ttvecamera/TELogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    const-string v1, "0"

    .line 352
    :cond_146
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "selectCamera size: "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v0, v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", mFacing: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget v0, v0, Lcom/ss/android/ttvecamera/TECameraSettings;->mFacing:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", cameraTag: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/ss/android/ttvecamera/TELogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    iget-object p1, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    invoke-virtual {p1, v1}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object p1

    iput-object p1, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    .line 356
    invoke-virtual {p1}, Landroid/hardware/camera2/CameraCharacteristics;->getAvailableSessionKeys()Ljava/util/List;

    move-result-object p1

    .line 357
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "selectCamera sessionKeys: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/ss/android/ttvecamera/TELogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    iget-object p1, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_COMPENSATION_RANGE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/Range;

    .line 360
    iget-object v0, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_COMPENSATION_STEP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v2}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Rational;

    if-eqz p1, :cond_1e1

    if-eqz v0, :cond_1e1

    .line 362
    iget-object v2, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget-object v2, v2, Lcom/ss/android/ttvecamera/TECameraSettings;->mCameraECInfo:Lcom/ss/android/ttvecamera/TECameraSettings$ExposureCompensationInfo;

    invoke-virtual {p1}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iput v4, v2, Lcom/ss/android/ttvecamera/TECameraSettings$ExposureCompensationInfo;->min:I

    .line 363
    iget-object v2, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget-object v2, v2, Lcom/ss/android/ttvecamera/TECameraSettings;->mCameraECInfo:Lcom/ss/android/ttvecamera/TECameraSettings$ExposureCompensationInfo;

    invoke-virtual {p1}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, v2, Lcom/ss/android/ttvecamera/TECameraSettings$ExposureCompensationInfo;->max:I

    .line 364
    iget-object p1, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget-object p1, p1, Lcom/ss/android/ttvecamera/TECameraSettings;->mCameraECInfo:Lcom/ss/android/ttvecamera/TECameraSettings$ExposureCompensationInfo;

    invoke-virtual {v0}, Landroid/util/Rational;->getNumerator()I

    move-result v2

    int-to-float v2, v2

    const/high16 v4, 0x3f800000    # 1.0f

    mul-float/2addr v2, v4

    invoke-virtual {v0}, Landroid/util/Rational;->getDenominator()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v2, v0

    iput v2, p1, Lcom/ss/android/ttvecamera/TECameraSettings$ExposureCompensationInfo;->step:F

    .line 365
    iget-object p0, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget-object p0, p0, Lcom/ss/android/ttvecamera/TECameraSettings;->mCameraECInfo:Lcom/ss/android/ttvecamera/TECameraSettings$ExposureCompensationInfo;

    iput v3, p0, Lcom/ss/android/ttvecamera/TECameraSettings$ExposureCompensationInfo;->exposure:I

    .line 368
    :cond_1e1
    invoke-static {}, Lcom/ss/android/ttvecamera/TETraceUtils;->endSection()V

    return-object v1
.end method

.method public setAperture(F)V
    .registers 7

    const/4 v0, 0x0

    .line 1395
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 1386
    iget-object v1, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCaptureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    const/16 v2, -0x1b0

    if-eqz v1, :cond_f

    iget-object v1, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraSession:Landroid/hardware/camera2/CameraCaptureSession;

    if-nez v1, :cond_18

    .line 1388
    :cond_f
    iget-object v1, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraEvents:Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;

    iget-object v3, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    const-string v4, "Capture Session is null"

    invoke-interface {v1, v2, v2, v4, v3}, Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;->onCameraInfo(IILjava/lang/String;Ljava/lang/Object;)V

    .line 1390
    :cond_18
    invoke-virtual {p0}, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->getApertureRange()[F

    move-result-object v1

    array-length v1, v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_40

    invoke-virtual {p0}, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->getApertureRange()[F

    move-result-object v1

    filled-new-array {v1}, [[F

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_40

    .line 1392
    iget-object p1, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraEvents:Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;

    iget-object p0, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    const-string v0, "invalid aperture"

    invoke-interface {p1, v2, v2, v0, p0}, Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;->onCameraInfo(IILjava/lang/String;Ljava/lang/Object;)V

    return-void

    .line 1395
    :cond_40
    iget-object v1, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCaptureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v1, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1, v0}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_55

    .line 1396
    iget-object v1, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCaptureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {v1, v3, v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 1398
    :cond_55
    iget-object v1, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCaptureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->CONTROL_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v1, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1, v0}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6a

    .line 1399
    iget-object v1, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCaptureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {v1, v3, v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 1401
    :cond_6a
    iget-object v0, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCaptureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->LENS_APERTURE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 1402
    iget-object p1, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCaptureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {p0, p1}, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->updatePreview(Landroid/hardware/camera2/CaptureRequest$Builder;)Lcom/ss/android/ttvecamera/framework/TECameraModeBase$Response;

    move-result-object p1

    .line 1403
    iget-boolean v0, p1, Lcom/ss/android/ttvecamera/framework/TECameraModeBase$Response;->isSuccess:Z

    if-nez v0, :cond_a0

    .line 1404
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setAperture exception: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/ss/android/ttvecamera/framework/TECameraModeBase$Response;->errMsg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TECameraModeBase"

    invoke-static {v1, v0}, Lcom/ss/android/ttvecamera/TELogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1405
    iget-object v0, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraEvents:Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;

    iget-object p1, p1, Lcom/ss/android/ttvecamera/framework/TECameraModeBase$Response;->errMsg:Ljava/lang/String;

    iget-object p0, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    invoke-interface {v0, v2, v2, p1, p0}, Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;->onCameraInfo(IILjava/lang/String;Ljava/lang/Object;)V

    :cond_a0
    return-void
.end method

.method public setAutoExposureLock(Z)V
    .registers 5

    .line 2065
    iget-object v0, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCaptureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    if-eqz v0, :cond_2c

    iget-object v0, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraSession:Landroid/hardware/camera2/CameraCaptureSession;

    if-nez v0, :cond_9

    goto :goto_2c

    .line 2071
    :cond_9
    :try_start_9
    iget-object v0, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCaptureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_LOCK:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 2072
    iget-object p1, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCaptureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {p0, p1}, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->updatePreview(Landroid/hardware/camera2/CaptureRequest$Builder;)Lcom/ss/android/ttvecamera/framework/TECameraModeBase$Response;
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_19} :catch_1a

    return-void

    :catch_1a
    move-exception p1

    .line 2074
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 2075
    iget-object v0, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraEvents:Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    const/16 v1, -0x1ab

    invoke-interface {v0, v1, v1, p1, p0}, Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;->onCameraInfo(IILjava/lang/String;Ljava/lang/Object;)V

    return-void

    .line 2067
    :cond_2c
    :goto_2c
    iget-object p1, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraEvents:Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;

    iget-object v0, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget v0, v0, Lcom/ss/android/ttvecamera/TECameraSettings;->mCameraType:I

    const/16 v1, -0x64

    iget-object p0, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    const-string v2, "setExposureCompensation : Capture Session is null"

    invoke-interface {p1, v0, v1, v2, p0}, Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;->onCameraError(IILjava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setAutoFocusLock(Z)V
    .registers 5

    .line 2082
    iget-object p1, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCaptureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    if-eqz p1, :cond_2d

    iget-object p1, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraSession:Landroid/hardware/camera2/CameraCaptureSession;

    if-nez p1, :cond_9

    goto :goto_2d

    .line 2088
    :cond_9
    :try_start_9
    iget-object p1, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCaptureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 2089
    iget-object p1, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCaptureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {p0, p1}, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->updatePreview(Landroid/hardware/camera2/CaptureRequest$Builder;)Lcom/ss/android/ttvecamera/framework/TECameraModeBase$Response;
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_1a} :catch_1b

    return-void

    :catch_1b
    move-exception p1

    .line 2091
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 2092
    iget-object v0, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraEvents:Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    const/16 v1, -0x1b2

    invoke-interface {v0, v1, v1, p1, p0}, Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;->onCameraInfo(IILjava/lang/String;Ljava/lang/Object;)V

    return-void

    .line 2084
    :cond_2d
    :goto_2d
    iget-object p1, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraEvents:Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;

    iget-object v0, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget v0, v0, Lcom/ss/android/ttvecamera/TECameraSettings;->mCameraType:I

    const/16 v1, -0x64

    iget-object p0, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    const-string v2, "setAutoFocusLock : Capture Session is null"

    invoke-interface {p1, v0, v1, v2, p0}, Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;->onCameraError(IILjava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setCameraCharacteristics(Landroid/hardware/camera2/CameraCharacteristics;)V
    .registers 2

    .line 373
    iput-object p1, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    return-void
.end method

.method public setCameraDevice(Ljava/lang/Object;)V
    .registers 2

    .line 378
    check-cast p1, Landroid/hardware/camera2/CameraDevice;

    iput-object p1, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    return-void
.end method

.method public setExposureCompensation(I)Z
    .registers 6

    .line 2036
    iput p1, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mExposureCompensation:I

    .line 2037
    iget-object v0, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCaptureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    const/4 v1, 0x0

    if-eqz v0, :cond_73

    iget-object v0, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraSession:Landroid/hardware/camera2/CameraCaptureSession;

    if-nez v0, :cond_c

    goto :goto_73

    .line 2043
    :cond_c
    iget-object v0, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCaptureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v0, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 2044
    const-string v2, "TECameraModeBase"

    if-eqz v0, :cond_26

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_26

    .line 2045
    const-string p0, "Can\'t set exposure compensation when ae mode is off."

    invoke-static {v2, p0}, Lcom/ss/android/ttvecamera/TELogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 2048
    :cond_26
    iget-object v0, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget-object v0, v0, Lcom/ss/android/ttvecamera/TECameraSettings;->mCameraECInfo:Lcom/ss/android/ttvecamera/TECameraSettings$ExposureCompensationInfo;

    iget v0, v0, Lcom/ss/android/ttvecamera/TECameraSettings$ExposureCompensationInfo;->exposure:I

    if-ne v0, p1, :cond_34

    .line 2049
    const-string p0, "setExposureCompensation return, no need to set"

    invoke-static {v2, p0}, Lcom/ss/android/ttvecamera/TELogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 2052
    :cond_34
    iget-object v0, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCaptureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_EXPOSURE_COMPENSATION:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 2053
    iget-object v0, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget-object v0, v0, Lcom/ss/android/ttvecamera/TECameraSettings;->mCameraECInfo:Lcom/ss/android/ttvecamera/TECameraSettings$ExposureCompensationInfo;

    iput p1, v0, Lcom/ss/android/ttvecamera/TECameraSettings$ExposureCompensationInfo;->exposure:I

    .line 2054
    iget-object p1, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCaptureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {p0, p1}, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->updatePreview(Landroid/hardware/camera2/CaptureRequest$Builder;)Lcom/ss/android/ttvecamera/framework/TECameraModeBase$Response;

    move-result-object p1

    .line 2055
    iget-boolean v0, p1, Lcom/ss/android/ttvecamera/framework/TECameraModeBase$Response;->isSuccess:Z

    if-nez v0, :cond_70

    .line 2056
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setExposureCompensation failed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/ss/android/ttvecamera/framework/TECameraModeBase$Response;->errMsg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/ss/android/ttvecamera/TELogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2057
    iget-object v0, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraEvents:Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;

    iget-object v1, p1, Lcom/ss/android/ttvecamera/framework/TECameraModeBase$Response;->errMsg:Ljava/lang/String;

    iget-object p0, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    const/16 v2, -0x19d

    invoke-interface {v0, v2, v2, v1, p0}, Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;->onCameraInfo(IILjava/lang/String;Ljava/lang/Object;)V

    .line 2059
    :cond_70
    iget-boolean p0, p1, Lcom/ss/android/ttvecamera/framework/TECameraModeBase$Response;->isSuccess:Z

    return p0

    .line 2039
    :cond_73
    :goto_73
    iget-object p1, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraEvents:Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;

    iget-object v0, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget v0, v0, Lcom/ss/android/ttvecamera/TECameraSettings;->mCameraType:I

    const/16 v2, -0x64

    iget-object p0, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    const-string v3, "setExposureCompensation : Capture Session is null"

    invoke-interface {p1, v0, v2, v3, p0}, Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;->onCameraError(IILjava/lang/String;Ljava/lang/Object;)V

    return v1
.end method

.method public setFeatureParameter(Landroid/os/Bundle;)V
    .registers 2

    return-void
.end method

.method public setFpsConfigCallback(Lcom/ss/android/ttvecamera/TECameraBase$CameraFpsConfigCallback;)V
    .registers 2

    .line 1723
    iput-object p1, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mFpsConfigCallback:Lcom/ss/android/ttvecamera/TECameraBase$CameraFpsConfigCallback;

    return-void
.end method

.method public setISO(I)V
    .registers 8

    const/4 v0, 0x0

    .line 1303
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 1294
    iget-object v2, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCaptureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    const/16 v3, -0x1ae

    if-eqz v2, :cond_f

    iget-object v2, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraSession:Landroid/hardware/camera2/CameraCaptureSession;

    if-nez v2, :cond_18

    .line 1296
    :cond_f
    iget-object v2, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraEvents:Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;

    iget-object v4, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    const-string v5, "Capture Session is null"

    invoke-interface {v2, v3, v3, v5, v4}, Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;->onCameraInfo(IILjava/lang/String;Ljava/lang/Object;)V

    .line 1298
    :cond_18
    invoke-virtual {p0}, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->getISORange()[I

    move-result-object v2

    const/4 v4, 0x1

    aget v2, v2, v4

    if-gt p1, v2, :cond_8b

    invoke-virtual {p0}, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->getISORange()[I

    move-result-object v2

    aget v0, v2, v0

    if-ge p1, v0, :cond_2a

    goto :goto_8b

    .line 1303
    :cond_2a
    iget-object v0, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCaptureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v0, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3f

    .line 1304
    iget-object v0, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCaptureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {v0, v2, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 1306
    :cond_3f
    iget-object v0, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCaptureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v0, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_54

    .line 1307
    iget-object v0, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCaptureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {v0, v2, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 1309
    :cond_54
    iget-object v0, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCaptureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->SENSOR_SENSITIVITY:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 1310
    iget-object p1, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCaptureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {p0, p1}, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->updatePreview(Landroid/hardware/camera2/CaptureRequest$Builder;)Lcom/ss/android/ttvecamera/framework/TECameraModeBase$Response;

    move-result-object p1

    .line 1311
    iget-boolean v0, p1, Lcom/ss/android/ttvecamera/framework/TECameraModeBase$Response;->isSuccess:Z

    if-nez v0, :cond_8a

    .line 1312
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setISO exception: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/ss/android/ttvecamera/framework/TECameraModeBase$Response;->errMsg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TECameraModeBase"

    invoke-static {v1, v0}, Lcom/ss/android/ttvecamera/TELogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1313
    iget-object v0, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraEvents:Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;

    iget-object p1, p1, Lcom/ss/android/ttvecamera/framework/TECameraModeBase$Response;->errMsg:Ljava/lang/String;

    iget-object p0, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    invoke-interface {v0, v3, v3, p1, p0}, Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;->onCameraInfo(IILjava/lang/String;Ljava/lang/Object;)V

    :cond_8a
    return-void

    .line 1300
    :cond_8b
    :goto_8b
    iget-object p1, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraEvents:Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;

    iget-object p0, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    const-string v0, "invalid iso"

    invoke-interface {p1, v3, v3, v0, p0}, Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;->onCameraInfo(IILjava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setManualFocusDistance(F)V
    .registers 6

    .line 1038
    iget-object v0, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCaptureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    const/16 v1, -0x1b4

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraSession:Landroid/hardware/camera2/CameraCaptureSession;

    if-nez v0, :cond_13

    .line 1040
    :cond_a
    iget-object v0, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraEvents:Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;

    iget-object v2, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    const-string v3, "Capture Session is null"

    invoke-interface {v0, v1, v1, v3, v2}, Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;->onCameraInfo(IILjava/lang/String;Ljava/lang/Object;)V

    :cond_13
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_22

    .line 1044
    iget-object p1, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraEvents:Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;

    iget-object p0, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    const-string v0, "invalid distance"

    invoke-interface {p1, v1, v1, v0, p0}, Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;->onCameraInfo(IILjava/lang/String;Ljava/lang/Object;)V

    return-void

    .line 1048
    :cond_22
    iget-object v0, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCaptureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->LENS_FOCUS_DISTANCE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 1049
    iget-object p1, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCaptureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {p0, p1}, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->updatePreview(Landroid/hardware/camera2/CaptureRequest$Builder;)Lcom/ss/android/ttvecamera/framework/TECameraModeBase$Response;

    move-result-object p1

    .line 1050
    iget-boolean v0, p1, Lcom/ss/android/ttvecamera/framework/TECameraModeBase$Response;->isSuccess:Z

    if-nez v0, :cond_5a

    .line 1051
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setManualFocusDistance exception: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/ss/android/ttvecamera/framework/TECameraModeBase$Response;->errMsg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TECameraModeBase"

    invoke-static {v1, v0}, Lcom/ss/android/ttvecamera/TELogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1052
    iget-object v0, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraEvents:Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;

    iget-object p1, p1, Lcom/ss/android/ttvecamera/framework/TECameraModeBase$Response;->errMsg:Ljava/lang/String;

    iget-object p0, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    const/16 v1, -0x1ae

    invoke-interface {v0, v1, v1, p1, p0}, Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;->onCameraInfo(IILjava/lang/String;Ljava/lang/Object;)V

    :cond_5a
    return-void
.end method

.method public setPictureSize(II)I
    .registers 3

    const/4 p0, 0x0

    return p0
.end method

.method public setPictureSizeCallback(Lcom/ss/android/ttvecamera/TECameraBase$PictureSizeCallBack;)V
    .registers 2

    .line 1713
    iput-object p1, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mPictureSizeCallback:Lcom/ss/android/ttvecamera/TECameraBase$PictureSizeCallBack;

    return-void
.end method

.method public setPreviewSizeCallback(Lcom/ss/android/ttvecamera/TECameraBase$PreviewSizeCallBack;)V
    .registers 2

    .line 1718
    iput-object p1, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mPreviewSizeCallback:Lcom/ss/android/ttvecamera/TECameraBase$PreviewSizeCallBack;

    return-void
.end method

.method public setSATZoomCallback(Lcom/ss/android/ttvecamera/TECameraBase$SATZoomCallback;)V
    .registers 2

    .line 1727
    iput-object p1, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mSATZoomCallback:Lcom/ss/android/ttvecamera/TECameraBase$SATZoomCallback;

    return-void
.end method

.method public setSceneMode(I)V
    .registers 2

    return-void
.end method

.method public setShutterTime(J)V
    .registers 9

    const/4 v0, 0x0

    .line 1354
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 1345
    iget-object v2, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCaptureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    const/16 v3, -0x1af

    if-eqz v2, :cond_f

    iget-object v2, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraSession:Landroid/hardware/camera2/CameraCaptureSession;

    if-nez v2, :cond_18

    .line 1347
    :cond_f
    iget-object v2, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraEvents:Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;

    iget-object v4, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    const-string v5, "Capture Session is null"

    invoke-interface {v2, v3, v3, v5, v4}, Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;->onCameraInfo(IILjava/lang/String;Ljava/lang/Object;)V

    .line 1349
    :cond_18
    invoke-virtual {p0}, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->getShutterTimeRange()[J

    move-result-object v2

    const/4 v4, 0x1

    aget-wide v4, v2, v4

    cmp-long v2, p1, v4

    if-gtz v2, :cond_8f

    invoke-virtual {p0}, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->getShutterTimeRange()[J

    move-result-object v2

    aget-wide v4, v2, v0

    cmp-long v0, p1, v4

    if-gez v0, :cond_2e

    goto :goto_8f

    .line 1354
    :cond_2e
    iget-object v0, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCaptureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v0, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_43

    .line 1355
    iget-object v0, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCaptureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {v0, v2, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 1357
    :cond_43
    iget-object v0, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCaptureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v0, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_58

    .line 1358
    iget-object v0, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCaptureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {v0, v2, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 1360
    :cond_58
    iget-object v0, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCaptureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->SENSOR_EXPOSURE_TIME:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 1361
    iget-object p1, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCaptureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {p0, p1}, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->updatePreview(Landroid/hardware/camera2/CaptureRequest$Builder;)Lcom/ss/android/ttvecamera/framework/TECameraModeBase$Response;

    move-result-object p1

    .line 1362
    iget-boolean p2, p1, Lcom/ss/android/ttvecamera/framework/TECameraModeBase$Response;->isSuccess:Z

    if-nez p2, :cond_8e

    .line 1363
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setShutterTime exception: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p1, Lcom/ss/android/ttvecamera/framework/TECameraModeBase$Response;->errMsg:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "TECameraModeBase"

    invoke-static {v0, p2}, Lcom/ss/android/ttvecamera/TELogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1364
    iget-object p2, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraEvents:Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;

    iget-object p1, p1, Lcom/ss/android/ttvecamera/framework/TECameraModeBase$Response;->errMsg:Ljava/lang/String;

    iget-object p0, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    invoke-interface {p2, v3, v3, p1, p0}, Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;->onCameraInfo(IILjava/lang/String;Ljava/lang/Object;)V

    :cond_8e
    return-void

    .line 1351
    :cond_8f
    :goto_8f
    iget-object p1, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraEvents:Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;

    iget-object p0, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    const-string p2, "invalid shutter time"

    invoke-interface {p1, v3, v3, p2, p0}, Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;->onCameraInfo(IILjava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setWhileBalance(ZLjava/lang/String;)V
    .registers 6

    .line 1248
    iget-object p1, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCaptureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    const/16 v0, -0x1a8

    if-eqz p1, :cond_a

    iget-object p1, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraSession:Landroid/hardware/camera2/CameraCaptureSession;

    if-nez p1, :cond_13

    .line 1250
    :cond_a
    iget-object p1, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraEvents:Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;

    iget-object v1, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    const-string v2, "Capture Session is null"

    invoke-interface {p1, v0, v0, v2, v1}, Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;->onCameraInfo(IILjava/lang/String;Ljava/lang/Object;)V

    .line 1253
    :cond_13
    iget-object p1, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mWhiteBalanceMap:Ljava/util/Map;

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_1d

    const/4 p1, 0x1

    goto :goto_29

    .line 1255
    :cond_1d
    iget-object p1, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mWhiteBalanceMap:Ljava/util/Map;

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 1256
    :goto_29
    iget-object p2, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AWB_AVAILABLE_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p2, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [I

    .line 1264
    filled-new-array {p2}, [[I

    move-result-object p2

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4f

    .line 1266
    iget-object p1, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraEvents:Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;

    iget-object p0, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    const-string p2, "invalid white balance"

    invoke-interface {p1, v0, v0, p2, p0}, Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;->onCameraInfo(IILjava/lang/String;Ljava/lang/Object;)V

    return-void

    .line 1269
    :cond_4f
    iget-object p1, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCaptureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {p0, p1}, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->updatePreview(Landroid/hardware/camera2/CaptureRequest$Builder;)Lcom/ss/android/ttvecamera/framework/TECameraModeBase$Response;

    move-result-object p1

    .line 1270
    iget-boolean p2, p1, Lcom/ss/android/ttvecamera/framework/TECameraModeBase$Response;->isSuccess:Z

    if-nez p2, :cond_7a

    .line 1271
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setWhiteBalance exception: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/ss/android/ttvecamera/framework/TECameraModeBase$Response;->errMsg:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v1, "TECameraModeBase"

    invoke-static {v1, p2}, Lcom/ss/android/ttvecamera/TELogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1272
    iget-object p2, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraEvents:Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;

    iget-object p1, p1, Lcom/ss/android/ttvecamera/framework/TECameraModeBase$Response;->errMsg:Ljava/lang/String;

    iget-object p0, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    invoke-interface {p2, v0, v0, p1, p0}, Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;->onCameraInfo(IILjava/lang/String;Ljava/lang/Object;)V

    :cond_7a
    return-void
.end method

.method public abstract startPreview()I
.end method

.method public startRecording()I
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public startZoom(FLcom/ss/android/ttvecamera/TECameraSettings$ZoomCallback;)I
    .registers 8

    .line 1081
    invoke-virtual {p0, p1}, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->calculateZoomSize(F)Landroid/graphics/Rect;

    move-result-object v0

    .line 1082
    iget-object v1, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mDeviceProxy:Lcom/ss/android/ttvecamera/hardware/TECameraHardware2Proxy;

    const-string v2, "TECameraModeBase"

    const/16 v3, -0x1a4

    if-eqz v1, :cond_6a

    iget-object v1, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCaptureRequest:Landroid/hardware/camera2/CaptureRequest;

    if-eqz v1, :cond_6a

    iget-object v1, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraSession:Landroid/hardware/camera2/CameraCaptureSession;

    if-eqz v1, :cond_6a

    iget-object v1, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCaptureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    if-nez v1, :cond_19

    goto :goto_6a

    :cond_19
    if-nez v0, :cond_2a

    .line 1089
    const-string p1, "[VE_UI_TEST]Failed event: START_ZOOM. Code: -420. Reason: zoomRect is null"

    invoke-static {v2, p1}, Lcom/ss/android/ttvecamera/TELogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1090
    iget-object p1, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraEvents:Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;

    const-string p2, "zoom rect is null."

    iget-object p0, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    invoke-interface {p1, v3, v3, p2, p0}, Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;->onCameraInfo(IILjava/lang/String;Ljava/lang/Object;)V

    return v3

    .line 1093
    :cond_2a
    sget-object v4, Landroid/hardware/camera2/CaptureRequest;->SCALER_CROP_REGION:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v1, v4, v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 1095
    iget-object v0, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCaptureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {p0, v0}, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->updatePreview(Landroid/hardware/camera2/CaptureRequest$Builder;)Lcom/ss/android/ttvecamera/framework/TECameraModeBase$Response;

    move-result-object v0

    .line 1096
    iget-boolean v1, v0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase$Response;->isSuccess:Z

    if-nez v1, :cond_5b

    .line 1097
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "[VE_UI_TEST]Failed event: START_ZOOM. Code: -420. Reason: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/ss/android/ttvecamera/framework/TECameraModeBase$Response;->getErrMsg()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/ss/android/ttvecamera/TELogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1098
    iget-object p1, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraEvents:Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;

    iget-object p2, v0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase$Response;->errMsg:Ljava/lang/String;

    iget-object p0, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    invoke-interface {p1, v3, v3, p2, p0}, Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;->onCameraInfo(IILjava/lang/String;Ljava/lang/Object;)V

    return v3

    :cond_5b
    if-eqz p2, :cond_65

    .line 1103
    iget-object v0, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget v0, v0, Lcom/ss/android/ttvecamera/TECameraSettings;->mCameraType:I

    const/4 v1, 0x1

    invoke-interface {p2, v0, p1, v1}, Lcom/ss/android/ttvecamera/TECameraSettings$ZoomCallback;->onChange(IFZ)V

    .line 1105
    :cond_65
    invoke-virtual {p0}, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->fillFeatures()V

    const/4 p0, 0x0

    return p0

    .line 1083
    :cond_6a
    :goto_6a
    const-string p1, "[VE_UI_TEST]Failed event: START_ZOOM. Code: -420. Reason: camera is null"

    invoke-static {v2, p1}, Lcom/ss/android/ttvecamera/TELogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1085
    iget-object p1, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraEvents:Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;

    iget-object p0, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    const-string p2, "startZoom : Env is null"

    invoke-interface {p1, v3, v3, p2, p0}, Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;->onCameraInfo(IILjava/lang/String;Ljava/lang/Object;)V

    const/16 p0, -0x64

    return p0
.end method

.method protected stopCameraFaceDetect(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 3

    .line 562
    iget-object p0, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mFaceDetectSupportMode:[I

    if-eqz p0, :cond_f

    .line 563
    sget-object p0, Landroid/hardware/camera2/CaptureRequest;->STATISTICS_FACE_DETECT_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    return-void

    .line 565
    :cond_f
    const-string p0, "TECameraModeBase"

    const-string p1, "FaceDetect is not supported!"

    invoke-static {p0, p1}, Lcom/ss/android/ttvecamera/TELogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public stopRecording()I
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public stopRepeating()Lcom/ss/android/ttvecamera/framework/TECameraModeBase$Response;
    .registers 3

    .line 1749
    new-instance v0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase$Response;

    invoke-direct {v0}, Lcom/ss/android/ttvecamera/framework/TECameraModeBase$Response;-><init>()V

    .line 1750
    iget-object v1, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraSession:Landroid/hardware/camera2/CameraCaptureSession;

    if-nez v1, :cond_26

    .line 1751
    const-string p0, "Capture Session is null"

    iput-object p0, v0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase$Response;->errMsg:Ljava/lang/String;

    .line 1752
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "stopRepeating: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase$Response;->errMsg:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "TECameraModeBase"

    invoke-static {v1, p0}, Lcom/ss/android/ttvecamera/TELogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 1757
    :cond_26
    :try_start_26
    iget-object p0, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraSession:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {p0}, Landroid/hardware/camera2/CameraCaptureSession;->stopRepeating()V

    const/4 p0, 0x1

    .line 1758
    iput-boolean p0, v0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase$Response;->isSuccess:Z
    :try_end_2e
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_26 .. :try_end_2e} :catch_31
    .catch Ljava/lang/IllegalStateException; {:try_start_26 .. :try_end_2e} :catch_2f

    return-object v0

    :catch_2f
    move-exception p0

    goto :goto_33

    :catch_31
    move-exception p0

    goto :goto_3d

    .line 1763
    :goto_33
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1764
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase$Response;->errMsg:Ljava/lang/String;

    goto :goto_46

    .line 1760
    :goto_3d
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1761
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase$Response;->errMsg:Ljava/lang/String;

    :goto_46
    return-object v0
.end method

.method public stopZoom()V
    .registers 1

    return-void
.end method

.method public takePicture(IILcom/ss/android/ttvecamera/TECameraSettings$PictureCallback;)V
    .registers 4

    .line 0
    return-void
.end method

.method public takePicture(Lcom/ss/android/ttvecamera/TECameraSettings$PictureCallback;I)V
    .registers 4

    .line 671
    iget-boolean p1, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraLightOn:Z

    if-eqz p1, :cond_1c

    .line 672
    iget-object p1, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCaptureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object p2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 673
    iget-object p0, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCaptureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object p1, Landroid/hardware/camera2/CaptureRequest;->FLASH_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 p2, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :cond_1c
    return-void
.end method

.method public toggleTorch(Z)I
    .registers 11

    .line 1220
    iget-object v1, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCaptureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    const-string v2, "TECameraModeBase"

    if-nez v1, :cond_2c

    .line 1221
    const-string v1, "[VE_UI_TEST]Failed event: TOGGLE. Code: -100. Reason: mCaptureRequestBuilder is null"

    invoke-static {v2, v1}, Lcom/ss/android/ttvecamera/TELogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1223
    iget-object v1, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraEvents:Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;

    iget-object v2, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget v2, v2, Lcom/ss/android/ttvecamera/TECameraSettings;->mCameraType:I

    iget-object v3, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    const/16 v6, -0x64

    const-string v4, "toggleTorch : CaptureRequest.Builder is null"

    invoke-interface {v1, v2, v6, v4, v3}, Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;->onCameraError(IILjava/lang/String;Ljava/lang/Object;)V

    .line 1224
    iget-object v1, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraEvents:Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;

    iget-object v2, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget v2, v2, Lcom/ss/android/ttvecamera/TECameraSettings;->mCameraType:I

    move-object v3, v1

    move v1, v2

    const/16 v2, -0x64

    iget-object v5, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    move-object v0, v3

    move v3, p1

    invoke-interface/range {v0 .. v5}, Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;->onTorchError(IIILjava/lang/String;Ljava/lang/Object;)V

    return v6

    .line 1228
    :cond_2c
    sget-object v4, Landroid/hardware/camera2/CaptureRequest;->FLASH_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v6, 0x0

    if-eqz p1, :cond_33

    const/4 v5, 0x2

    goto :goto_34

    :cond_33
    move v5, v6

    .line 1229
    :goto_34
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 1228
    invoke-virtual {v1, v4, v5}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 1230
    iget-object v1, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraEvents:Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "camera2 will change flash mode "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x68

    const/4 v7, 0x0

    invoke-interface {v1, v5, v6, v4, v7}, Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;->onCameraInfo(IILjava/lang/String;Ljava/lang/Object;)V

    .line 1231
    iget-object v1, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCaptureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {p0, v1}, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->updatePreview(Landroid/hardware/camera2/CaptureRequest$Builder;)Lcom/ss/android/ttvecamera/framework/TECameraModeBase$Response;

    move-result-object v1

    .line 1232
    iget-object v4, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraEvents:Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "camera2 did change flash mode "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/16 v8, 0x69

    invoke-interface {v4, v8, v6, v5, v7}, Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;->onCameraInfo(IILjava/lang/String;Ljava/lang/Object;)V

    .line 1233
    iget-boolean v4, v1, Lcom/ss/android/ttvecamera/framework/TECameraModeBase$Response;->isSuccess:Z

    if-nez v4, :cond_ae

    .line 1234
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[VE_UI_TEST]Failed event: TOGGLE. Code: -417. Reason: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/ss/android/ttvecamera/framework/TECameraModeBase$Response;->getErrMsg()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/ss/android/ttvecamera/TELogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1235
    iget-object v2, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraEvents:Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;

    iget-object v4, v1, Lcom/ss/android/ttvecamera/framework/TECameraModeBase$Response;->errMsg:Ljava/lang/String;

    iget-object v5, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    const/16 v6, -0x1a1

    invoke-interface {v2, v6, v6, v4, v5}, Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;->onCameraInfo(IILjava/lang/String;Ljava/lang/Object;)V

    .line 1236
    iget-object v2, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraEvents:Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;

    iget-object v4, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget v4, v4, Lcom/ss/android/ttvecamera/TECameraSettings;->mCameraType:I

    iget-object v1, v1, Lcom/ss/android/ttvecamera/framework/TECameraModeBase$Response;->errMsg:Ljava/lang/String;

    iget-object v5, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    move-object v0, v2

    const/16 v2, -0x1a1

    move v3, v4

    move-object v4, v1

    move v1, v3

    move v3, p1

    invoke-interface/range {v0 .. v5}, Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;->onTorchError(IIILjava/lang/String;Ljava/lang/Object;)V

    return v6

    .line 1239
    :cond_ae
    iget-object v1, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraEvents:Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;

    iget-object v2, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget v2, v2, Lcom/ss/android/ttvecamera/TECameraSettings;->mCameraType:I

    const-string v4, "camera torch success"

    iget-object v5, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    move-object v0, v1

    move v1, v2

    const/4 v2, 0x0

    move v3, p1

    invoke-interface/range {v0 .. v5}, Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;->onTorchSuccess(IIILjava/lang/String;Ljava/lang/Object;)V

    return v6
.end method

.method public updateCapture()I
    .registers 13

    .line 471
    const-string v0, "TECameraModeBase-updateCapture"

    invoke-static {v0}, Lcom/ss/android/ttvecamera/TETraceUtils;->beginSection(Ljava/lang/String;)V

    .line 472
    iget-object v0, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraHolder:Lcom/ss/android/ttvecamera/TECamera2;

    invoke-virtual {v0}, Lcom/ss/android/ttvecamera/TECameraBase;->getProviderManager()Lcom/ss/android/ttvecamera/provider/TECameraProviderManager;

    move-result-object v0

    const-string v1, "TECameraModeBase"

    if-eqz v0, :cond_146

    iget-object v0, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCaptureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    if-nez v0, :cond_15

    goto/16 :goto_146

    .line 477
    :cond_15
    iget-object v0, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mDeviceProxy:Lcom/ss/android/ttvecamera/hardware/TECameraHardware2Proxy;

    iget-object v2, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {v0, v2}, Lcom/ss/android/ttvecamera/hardware/TECameraHardware2Proxy;->isStabilizationSupported(Landroid/hardware/camera2/CameraCharacteristics;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_5f

    invoke-virtual {p0}, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->needSetStabilizationParam()Z

    move-result v0

    if-eqz v0, :cond_5f

    .line 478
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Stabilization Supported, toggle = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget-boolean v3, v3, Lcom/ss/android/ttvecamera/TECameraSettings;->mEnableStabilization:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/ss/android/ttvecamera/TELogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 479
    iget-object v0, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mDeviceProxy:Lcom/ss/android/ttvecamera/hardware/TECameraHardware2Proxy;

    iget-object v3, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    iget-object v4, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCaptureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v5, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget-boolean v5, v5, Lcom/ss/android/ttvecamera/TECameraSettings;->mEnableStabilization:Z

    invoke-virtual {v0, v3, v4, v5}, Lcom/ss/android/ttvecamera/hardware/TECameraHardware2Proxy;->configStabilization(Landroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/camera2/CaptureRequest$Builder;Z)I

    move-result v0

    if-nez v0, :cond_5f

    .line 482
    iget-object v0, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget-boolean v0, v0, Lcom/ss/android/ttvecamera/TECameraSettings;->mEnableStabilization:Z

    if-eqz v0, :cond_5f

    .line 483
    iget-object v0, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraEvents:Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;

    const-string v3, "enable stablization"

    iget-object v4, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    const/16 v5, 0x71

    invoke-interface {v0, v5, v2, v3, v4}, Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;->onCameraInfo(IILjava/lang/String;Ljava/lang/Object;)V

    .line 486
    :cond_5f
    iget-object v0, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCaptureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->CONTROL_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 487
    invoke-direct {p0}, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->setFPSRange()V

    .line 488
    new-instance v0, Landroid/util/Range;

    iget-object v2, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mFpsRange:Lcom/ss/android/ttvecamera/TEFrameRateRange;

    iget v2, v2, Lcom/ss/android/ttvecamera/TEFrameRateRange;->min:I

    iget-object v3, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget-object v3, v3, Lcom/ss/android/ttvecamera/TECameraSettings;->mFPSRange:Lcom/ss/android/ttvecamera/TEFrameRateRange;

    iget v3, v3, Lcom/ss/android/ttvecamera/TEFrameRateRange;->fpsUnitFactor:I

    div-int/2addr v2, v3

    .line 489
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mFpsRange:Lcom/ss/android/ttvecamera/TEFrameRateRange;

    iget v3, v3, Lcom/ss/android/ttvecamera/TEFrameRateRange;->max:I

    iget-object v4, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget-object v4, v4, Lcom/ss/android/ttvecamera/TECameraSettings;->mFPSRange:Lcom/ss/android/ttvecamera/TEFrameRateRange;

    iget v4, v4, Lcom/ss/android/ttvecamera/TEFrameRateRange;->fpsUnitFactor:I

    div-int/2addr v3, v4

    .line 490
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    .line 491
    invoke-virtual {p0, v0}, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->configFps(Landroid/util/Range;)Landroid/util/Range;

    move-result-object v0

    .line 492
    iget-object v2, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCaptureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_TARGET_FPS_RANGE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v2, v3, v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 493
    iget-object v2, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraEvents:Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;

    invoke-virtual {v0}, Landroid/util/Range;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    const/16 v4, 0x79

    const/4 v5, 0x0

    invoke-interface {v2, v4, v5, v0, v3}, Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;->onCameraInfo(IILjava/lang/String;Ljava/lang/Object;)V

    .line 494
    iget-object v0, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCaptureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_EXPOSURE_COMPENSATION:Landroid/hardware/camera2/CaptureRequest$Key;

    iget v3, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mExposureCompensation:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 496
    iget v0, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mUseFaceAE:I

    invoke-virtual {p0, v0}, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->useFaceAEStrategy(I)V

    .line 497
    iget-object v0, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget v0, v0, Lcom/ss/android/ttvecamera/TECameraSettings;->mDefaultZoomRatio:F

    iget v2, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mNowZoom:F

    invoke-static {v0, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-eqz v0, :cond_e5

    .line 498
    iget-object v0, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget v0, v0, Lcom/ss/android/ttvecamera/TECameraSettings;->mDefaultZoomRatio:F

    iget v2, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mMaxZoom:F

    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mNowZoom:F

    .line 499
    invoke-virtual {p0, v0}, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->calculateZoomSizeV2(F)Landroid/graphics/Rect;

    move-result-object v0

    if-nez v0, :cond_de

    .line 501
    const-string v0, "calculate default crop_region fail!"

    invoke-static {v1, v0}, Lcom/ss/android/ttvecamera/TELogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_e5

    .line 503
    :cond_de
    iget-object v2, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCaptureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->SCALER_CROP_REGION:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v2, v3, v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 507
    :cond_e5
    :goto_e5
    iget-object v0, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCaptureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {p0, v0}, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->updatePreview(Landroid/hardware/camera2/CaptureRequest$Builder;)Lcom/ss/android/ttvecamera/framework/TECameraModeBase$Response;

    move-result-object v0

    .line 508
    iget-boolean v2, v0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase$Response;->isSuccess:Z

    if-nez v2, :cond_105

    .line 509
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "first request failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase$Response;->errMsg:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/ss/android/ttvecamera/TELogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 511
    :cond_105
    iget-object v0, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget-object v2, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v3, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_ORIENTATION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v2, v3}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v0, Lcom/ss/android/ttvecamera/TECameraSettings;->mRotation:I

    .line 512
    iget-object v0, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraHolder:Lcom/ss/android/ttvecamera/TECamera2;

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Lcom/ss/android/ttvecamera/TECamera2;->updateSessionState(I)V

    .line 513
    invoke-virtual {p0}, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->fillFeatures()V

    .line 514
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "send capture request..."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraSession:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/ss/android/ttvecamera/TELogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 515
    iget-object v6, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraEvents:Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;

    const-string v10, "TECamera2 preview"

    iget-object v11, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    const/4 v7, 0x2

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-interface/range {v6 .. v11}, Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;->onPreviewSuccess(IIILjava/lang/String;Ljava/lang/Object;)V

    .line 516
    invoke-static {}, Lcom/ss/android/ttvecamera/TETraceUtils;->endSection()V

    return v5

    .line 473
    :cond_146
    :goto_146
    const-string p0, "update capture failed"

    invoke-static {v1, p0}, Lcom/ss/android/ttvecamera/TELogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, -0x64

    return p0
.end method

.method protected updatePreview(Landroid/hardware/camera2/CaptureRequest$Builder;)Lcom/ss/android/ttvecamera/framework/TECameraModeBase$Response;
    .registers 3

    .line 1914
    iget-object v0, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mPreviewCaptureCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    invoke-virtual {p0, p1, v0}, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->updatePreview(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;)Lcom/ss/android/ttvecamera/framework/TECameraModeBase$Response;

    move-result-object p0

    return-object p0
.end method

.method protected updatePreview(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;)Lcom/ss/android/ttvecamera/framework/TECameraModeBase$Response;
    .registers 4

    .line 1926
    invoke-virtual {p0}, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->getCameraHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->updatePreview(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)Lcom/ss/android/ttvecamera/framework/TECameraModeBase$Response;

    move-result-object p0

    return-object p0
.end method

.method protected updatePreview(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)Lcom/ss/android/ttvecamera/framework/TECameraModeBase$Response;
    .registers 8

    .line 1942
    const-string v0, "TECameraModeBase-updatePreview"

    invoke-static {v0}, Lcom/ss/android/ttvecamera/TETraceUtils;->beginSection(Ljava/lang/String;)V

    .line 1943
    new-instance v0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase$Response;

    invoke-direct {v0}, Lcom/ss/android/ttvecamera/framework/TECameraModeBase$Response;-><init>()V

    .line 1944
    const-string v1, "updatePreview: "

    const-string v2, "TECameraModeBase"

    if-nez p1, :cond_29

    .line 1945
    const-string p0, "CaptureRequest.Builder is null"

    iput-object p0, v0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase$Response;->errMsg:Ljava/lang/String;

    .line 1946
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, v0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase$Response;->errMsg:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/ss/android/ttvecamera/TELogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 1950
    :cond_29
    iget-object v3, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraSession:Landroid/hardware/camera2/CameraCaptureSession;

    if-nez v3, :cond_46

    .line 1951
    const-string p0, "Capture Session is null"

    iput-object p0, v0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase$Response;->errMsg:Ljava/lang/String;

    .line 1952
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, v0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase$Response;->errMsg:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/ss/android/ttvecamera/TELogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 1956
    :cond_46
    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object p1

    .line 1957
    iput-object p1, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCaptureRequest:Landroid/hardware/camera2/CaptureRequest;

    .line 1960
    :try_start_4c
    iget-object v1, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraSession:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {v1, p1, p2, p3}, Landroid/hardware/camera2/CameraCaptureSession;->setRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I

    const/4 p1, 0x1

    .line 1961
    iput-boolean p1, v0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase$Response;->isSuccess:Z

    .line 1962
    iput-boolean p1, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mIsActiveCameraSession:Z
    :try_end_56
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_4c .. :try_end_56} :catch_5d
    .catch Ljava/lang/IllegalStateException; {:try_start_4c .. :try_end_56} :catch_5b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4c .. :try_end_56} :catch_59
    .catch Ljava/lang/SecurityException; {:try_start_4c .. :try_end_56} :catch_57

    goto :goto_89

    :catch_57
    move-exception p0

    goto :goto_5f

    :catch_59
    move-exception p0

    goto :goto_69

    :catch_5b
    move-exception p1

    goto :goto_73

    :catch_5d
    move-exception p0

    goto :goto_80

    .line 1974
    :goto_5f
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1975
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase$Response;->errMsg:Ljava/lang/String;

    goto :goto_89

    .line 1971
    :goto_69
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1972
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase$Response;->errMsg:Ljava/lang/String;

    goto :goto_89

    .line 1967
    :goto_73
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1968
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase$Response;->errMsg:Ljava/lang/String;

    const/4 p1, 0x0

    .line 1969
    iput-boolean p1, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mIsActiveCameraSession:Z

    goto :goto_89

    .line 1964
    :goto_80
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1965
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase$Response;->errMsg:Ljava/lang/String;

    .line 1978
    :goto_89
    invoke-static {}, Lcom/ss/android/ttvecamera/TETraceUtils;->endSection()V

    return-object v0
.end method

.method public updateRequestRepeating(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 5

    .line 1732
    iget-object v0, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraSession:Landroid/hardware/camera2/CameraCaptureSession;

    const-string v1, "TECameraModeBase"

    if-ne p1, v0, :cond_2a

    iget-object p1, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCaptureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    if-eq p2, p1, :cond_b

    goto :goto_2a

    .line 1737
    :cond_b
    invoke-virtual {p0, p2}, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->updatePreview(Landroid/hardware/camera2/CaptureRequest$Builder;)Lcom/ss/android/ttvecamera/framework/TECameraModeBase$Response;

    move-result-object p0

    .line 1738
    iget-boolean p1, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase$Response;->isSuccess:Z

    if-nez p1, :cond_29

    .line 1739
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "updateRequestRepeating failed: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase$Response;->errMsg:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/ss/android/ttvecamera/TELogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_29
    return-void

    .line 1733
    :cond_2a
    :goto_2a
    const-string p0, "updateRequestRepeating failed, session changed..."

    invoke-static {v1, p0}, Lcom/ss/android/ttvecamera/TELogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public useFaceAEStrategy(I)V
    .registers 4

    .line 529
    const-string v0, "TECameraModeBase"

    const/4 v1, 0x1

    if-ne p1, v1, :cond_16

    .line 530
    iget-object p1, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget p1, p1, Lcom/ss/android/ttvecamera/TECameraSettings;->mFacing:I

    if-ne p1, v1, :cond_37

    .line 531
    iget-object p1, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCaptureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-direct {p0, p1}, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->startCameraFaceDetect(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 532
    const-string p0, "use faceae for front"

    invoke-static {v0, p0}, Lcom/ss/android/ttvecamera/TELogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_16
    const/4 v1, 0x2

    if-ne p1, v1, :cond_2a

    .line 535
    iget-object p1, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget p1, p1, Lcom/ss/android/ttvecamera/TECameraSettings;->mFacing:I

    if-nez p1, :cond_37

    .line 536
    iget-object p1, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCaptureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-direct {p0, p1}, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->startCameraFaceDetect(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 537
    const-string p0, "use faceae for rear"

    invoke-static {v0, p0}, Lcom/ss/android/ttvecamera/TELogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2a
    const/4 v1, 0x3

    if-ne p1, v1, :cond_37

    .line 540
    iget-object p1, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCaptureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-direct {p0, p1}, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->startCameraFaceDetect(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 541
    const-string p0, "use faceae for all"

    invoke-static {v0, p0}, Lcom/ss/android/ttvecamera/TELogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_37
    return-void
.end method

.method protected waitCameraTaskDoneOrTimeout()V
    .registers 2

    .line 2105
    iget-object p0, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraHolder:Lcom/ss/android/ttvecamera/TECamera2;

    if-eqz p0, :cond_8

    .line 2106
    invoke-virtual {p0}, Lcom/ss/android/ttvecamera/TECamera2;->waitCameraTaskDoneOrTimeout()V

    return-void

    .line 2108
    :cond_8
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "waitCameraTaskDoneOrTimeout failed, "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/ss/android/ttvecamera/TELogUtils;->getStackTraceString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "TECameraModeBase"

    invoke-static {v0, p0}, Lcom/ss/android/ttvecamera/TELogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public zoomV2(FLcom/ss/android/ttvecamera/TECameraSettings$ZoomCallback;)V
    .registers 11

    .line 1157
    iget-object v0, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraSession:Landroid/hardware/camera2/CameraCaptureSession;

    const/16 v1, -0x1a4

    const-string v2, "TECameraModeBase"

    if-eqz v0, :cond_18d

    iget-object v0, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCaptureRequest:Landroid/hardware/camera2/CaptureRequest;

    if-eqz v0, :cond_18d

    iget-object v0, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCaptureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    if-nez v0, :cond_12

    goto/16 :goto_18d

    .line 1164
    :cond_12
    iget-boolean v0, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mEnableMulticamZoom:Z

    const-string v3, "[VE_UI_TEST]Failed event: START_ZOOM. Code: -420. Reason: "

    const/high16 v4, 0x3f800000    # 1.0f

    if-eqz v0, :cond_b6

    iget-object v0, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mDeviceProxy:Lcom/ss/android/ttvecamera/hardware/TECameraHardware2Proxy;

    iget-object v5, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {v0, v5}, Lcom/ss/android/ttvecamera/hardware/TECameraHardware2Proxy;->isLogicalMultiCamSupported(Landroid/hardware/camera2/CameraCharacteristics;)Z

    move-result v0

    if-nez v0, :cond_26

    goto/16 :goto_b6

    .line 1189
    :cond_26
    iget-object v0, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mZoomRatioRange:Landroid/util/Range;

    if-eqz v0, :cond_7f

    .line 1190
    invoke-virtual {v0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    .line 1191
    iget-object v5, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mZoomRatioRange:Landroid/util/Range;

    invoke-virtual {v5}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    .line 1193
    iget v6, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mNowZoom:F

    mul-float/2addr v6, p1

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v7

    cmpl-float v6, v6, v7

    if-ltz v6, :cond_4e

    cmpl-float v6, p1, v4

    if-lez v6, :cond_4e

    .line 1194
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mNowZoom:F

    goto :goto_7f

    .line 1195
    :cond_4e
    iget v0, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mNowZoom:F

    mul-float/2addr v0, p1

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v6

    cmpg-float v0, v0, v6

    if-gtz v0, :cond_64

    cmpg-float v0, p1, v4

    if-gtz v0, :cond_64

    .line 1196
    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mNowZoom:F

    goto :goto_7f

    .line 1198
    :cond_64
    iget v0, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mNowZoom:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mNowZoom:F

    .line 1199
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "zoom ratio = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mNowZoom:F

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/ss/android/ttvecamera/TELogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1202
    :cond_7f
    :goto_7f
    iget-object p1, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCaptureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_ZOOM_RATIO:Landroid/hardware/camera2/CaptureRequest$Key;

    iget v4, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mNowZoom:F

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {p1, v0, v4}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 1203
    iget-object p1, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCaptureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {p0, p1}, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->updatePreview(Landroid/hardware/camera2/CaptureRequest$Builder;)Lcom/ss/android/ttvecamera/framework/TECameraModeBase$Response;

    move-result-object p1

    .line 1204
    iget-boolean v0, p1, Lcom/ss/android/ttvecamera/framework/TECameraModeBase$Response;->isSuccess:Z

    if-nez v0, :cond_17d

    .line 1205
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/ss/android/ttvecamera/framework/TECameraModeBase$Response;->getErrMsg()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Lcom/ss/android/ttvecamera/TELogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1206
    iget-object p2, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraEvents:Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;

    iget-object p1, p1, Lcom/ss/android/ttvecamera/framework/TECameraModeBase$Response;->errMsg:Ljava/lang/String;

    iget-object p0, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    invoke-interface {p2, v1, v1, p1, p0}, Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;->onCameraInfo(IILjava/lang/String;Ljava/lang/Object;)V

    return-void

    .line 1165
    :cond_b6
    :goto_b6
    iget v0, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mNowZoom:F

    iget v5, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mMaxZoom:F

    cmpl-float v0, v0, v5

    const-string v5, ";factor = "

    const-string v6, "mNowZoom = "

    if-ltz v0, :cond_ef

    cmpl-float v0, p1, v4

    if-lez v0, :cond_ef

    .line 1166
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mNowZoom:F

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, ";mMaxZoom = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mMaxZoom:F

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/ss/android/ttvecamera/TELogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1167
    iget p1, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mMaxZoom:F

    iput p1, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mNowZoom:F

    goto :goto_141

    .line 1168
    :cond_ef
    iget-object v0, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mZoomSize:Landroid/graphics/Rect;

    if-eqz v0, :cond_128

    iget-object v7, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mActiveArraySize:Landroid/graphics/Rect;

    invoke-virtual {v0, v7}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_128

    cmpg-float v0, p1, v4

    if-gtz v0, :cond_128

    .line 1169
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mZoomSize = "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mZoomSize:Landroid/graphics/Rect;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ";mActiveArraySize = "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mActiveArraySize:Landroid/graphics/Rect;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/ss/android/ttvecamera/TELogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1170
    iput v4, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mNowZoom:F

    goto :goto_141

    .line 1172
    :cond_128
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mNowZoom:F

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/ss/android/ttvecamera/TELogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1173
    iget v0, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mNowZoom:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mNowZoom:F

    .line 1176
    :goto_141
    iget p1, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mNowZoom:F

    invoke-virtual {p0, p1}, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->calculateZoomSizeV2(F)Landroid/graphics/Rect;

    move-result-object p1

    if-nez p1, :cond_14a

    return-void

    .line 1180
    :cond_14a
    iget-object v0, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCaptureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v4, Landroid/hardware/camera2/CaptureRequest;->SCALER_CROP_REGION:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v0, v4, p1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 1181
    iget-object v0, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCaptureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {p0, v0}, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->updatePreview(Landroid/hardware/camera2/CaptureRequest$Builder;)Lcom/ss/android/ttvecamera/framework/TECameraModeBase$Response;

    move-result-object v0

    .line 1182
    iget-boolean v4, v0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase$Response;->isSuccess:Z

    if-nez v4, :cond_17b

    .line 1183
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/ss/android/ttvecamera/framework/TECameraModeBase$Response;->getErrMsg()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/ss/android/ttvecamera/TELogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1184
    iget-object p1, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraEvents:Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;

    iget-object p2, v0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase$Response;->errMsg:Ljava/lang/String;

    iget-object p0, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    invoke-interface {p1, v1, v1, p2, p0}, Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;->onCameraInfo(IILjava/lang/String;Ljava/lang/Object;)V

    return-void

    .line 1187
    :cond_17b
    iput-object p1, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mZoomSize:Landroid/graphics/Rect;

    :cond_17d
    if-eqz p2, :cond_189

    .line 1212
    iget-object p1, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget p1, p1, Lcom/ss/android/ttvecamera/TECameraSettings;->mCameraType:I

    iget v0, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mNowZoom:F

    const/4 v1, 0x1

    invoke-interface {p2, p1, v0, v1}, Lcom/ss/android/ttvecamera/TECameraSettings$ZoomCallback;->onChange(IFZ)V

    .line 1214
    :cond_189
    invoke-virtual {p0}, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->fillFeatures()V

    return-void

    .line 1158
    :cond_18d
    :goto_18d
    const-string p1, "[VE_UI_TEST]Failed event: START_ZOOM. Code: -420. Reason: camera is null"

    invoke-static {v2, p1}, Lcom/ss/android/ttvecamera/TELogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1160
    iget-object p1, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraEvents:Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;

    iget-object p2, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget p2, p2, Lcom/ss/android/ttvecamera/TECameraSettings;->mCameraType:I

    iget-object p0, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    const-string v0, "Camera info is null, may be you need reopen camera."

    invoke-interface {p1, p2, v1, v0, p0}, Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;->onCameraError(IILjava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
