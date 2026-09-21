.class public abstract Lcom/ss/android/ttvecamera/TECameraBase;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/android/ttvecamera/TECameraBase$ExposureCompensationInfo;,
        Lcom/ss/android/ttvecamera/TECameraBase$CameraKitStateCallback;,
        Lcom/ss/android/ttvecamera/TECameraBase$SATZoomCallback;,
        Lcom/ss/android/ttvecamera/TECameraBase$PreviewSizeCallBack;,
        Lcom/ss/android/ttvecamera/TECameraBase$PictureSizeCallBack;,
        Lcom/ss/android/ttvecamera/TECameraBase$CameraFpsConfigCallback;,
        Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;
    }
.end annotation


# static fields
.field public static final CAMERA_FACING_BACK:I = 0x0

.field public static final CAMERA_FACING_FRONT:I = 0x1

.field public static final CAMERA_FACING_WIDE_ANGLE:I = 0x2

.field public static final CAMERA_TYPE_1:I = 0x1

.field public static final CAMERA_TYPE_2:I = 0x2

.field public static final HW_CHECK_LEVEL_3:I = 0x3

.field public static final HW_CHECK_LEVEL_FULL:I = 0x2

.field public static final HW_CHECK_LEVEL_LEGACY:I = 0x0

.field public static final HW_CHECK_LEVEL_LIMITED:I = 0x1

.field private static final TAG:Ljava/lang/String; = "TECameraBase"


# instance fields
.field public mAlgorithmInterface:Lcom/ss/android/ttvecamera/cameraalgorithm/TECameraAlgorithmInterface;

.field protected mAllDevicesFeatures:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field public mCameraCapabilitiesMap:Lorg/json/JSONObject;

.field protected mCameraEvents:Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;

.field protected mCameraRotation:I

.field protected mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

.field protected mCapabilityCollector:Lcom/ss/android/ttvecamera/cameracapabilitycollector/TECameraCapabilityCollector;

.field protected mContext:Landroid/content/Context;

.field protected mDeviceRotation:I

.field protected mFacing:I

.field protected mFeatures:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field protected mFpsConfigCallback:Lcom/ss/android/ttvecamera/TECameraBase$CameraFpsConfigCallback;

.field protected mHandler:Landroid/os/Handler;

.field protected mHaveCollectedCapbilities:Z

.field protected mIsRunning:Z

.field protected mMaxZoom:F

.field protected mNewFacing:I

.field protected mPictureSizeCallback:Lcom/ss/android/ttvecamera/TECameraBase$PictureSizeCallBack;

.field protected mPreviewSizeCallback:Lcom/ss/android/ttvecamera/TECameraBase$PreviewSizeCallBack;

.field protected mProviderMgr:Lcom/ss/android/ttvecamera/provider/TECameraProviderManager;

.field protected mRetryStartPreviewCount:I

.field protected mSATZoomCallback:Lcom/ss/android/ttvecamera/TECameraBase$SATZoomCallback;

.field protected mSurfaceTexture:Landroid/graphics/SurfaceTexture;

.field private mUpdateCameraOrientation:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public mZslSupport:Z

.field protected openPrivacyCert:Lcom/bytedance/bpea/basics/Cert;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;Landroid/os/Handler;)V
    .registers 7

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 54
    iput-boolean v0, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mZslSupport:Z

    .line 60
    iput-boolean v0, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mIsRunning:Z

    const/4 v1, -0x1

    .line 69
    iput v1, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mCameraRotation:I

    .line 70
    iput v1, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mDeviceRotation:I

    .line 73
    iput v0, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mRetryStartPreviewCount:I

    const/4 v1, 0x0

    .line 76
    iput-object v1, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mPreviewSizeCallback:Lcom/ss/android/ttvecamera/TECameraBase$PreviewSizeCallBack;

    .line 78
    iput-object v1, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mFpsConfigCallback:Lcom/ss/android/ttvecamera/TECameraBase$CameraFpsConfigCallback;

    .line 83
    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v2, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mUpdateCameraOrientation:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 85
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mFeatures:Ljava/util/Map;

    .line 87
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mAllDevicesFeatures:Ljava/util/Map;

    .line 89
    iput-object v1, p0, Lcom/ss/android/ttvecamera/TECameraBase;->openPrivacyCert:Lcom/bytedance/bpea/basics/Cert;

    .line 91
    new-instance v2, Lcom/ss/android/ttvecamera/cameracapabilitycollector/TECameraCapabilityCollector;

    invoke-direct {v2}, Lcom/ss/android/ttvecamera/cameracapabilitycollector/TECameraCapabilityCollector;-><init>()V

    iput-object v2, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mCapabilityCollector:Lcom/ss/android/ttvecamera/cameracapabilitycollector/TECameraCapabilityCollector;

    .line 93
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    iput-object v2, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mCameraCapabilitiesMap:Lorg/json/JSONObject;

    .line 95
    iput-boolean v0, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mHaveCollectedCapbilities:Z

    .line 97
    iput-object v1, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mAlgorithmInterface:Lcom/ss/android/ttvecamera/cameraalgorithm/TECameraAlgorithmInterface;

    .line 100
    iput-object p1, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mContext:Landroid/content/Context;

    .line 101
    iput-object p2, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mCameraEvents:Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;

    .line 102
    iput-object p3, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mHandler:Landroid/os/Handler;

    .line 103
    iget-object p0, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mCapabilityCollector:Lcom/ss/android/ttvecamera/cameracapabilitycollector/TECameraCapabilityCollector;

    new-instance p1, Lcom/ss/android/ttvecamera/cameracapabilitycollector/TECameraCapabilityKBUpload;

    invoke-direct {p1}, Lcom/ss/android/ttvecamera/cameracapabilitycollector/TECameraCapabilityKBUpload;-><init>()V

    invoke-virtual {p0, p1}, Lcom/ss/android/ttvecamera/cameracapabilitycollector/TECameraCapabilityCollector;->init(Lcom/ss/android/ttvecamera/cameracapabilitycollector/TECameraCapabilityCollector$ITECameraCapabilityUploadStrategy;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;Landroid/os/Handler;Lcom/ss/android/ttvecamera/TECameraBase$PictureSizeCallBack;)V
    .registers 8

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 54
    iput-boolean v0, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mZslSupport:Z

    .line 60
    iput-boolean v0, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mIsRunning:Z

    const/4 v1, -0x1

    .line 69
    iput v1, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mCameraRotation:I

    .line 70
    iput v1, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mDeviceRotation:I

    .line 73
    iput v0, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mRetryStartPreviewCount:I

    const/4 v1, 0x0

    .line 76
    iput-object v1, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mPreviewSizeCallback:Lcom/ss/android/ttvecamera/TECameraBase$PreviewSizeCallBack;

    .line 78
    iput-object v1, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mFpsConfigCallback:Lcom/ss/android/ttvecamera/TECameraBase$CameraFpsConfigCallback;

    .line 83
    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v2, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mUpdateCameraOrientation:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 85
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mFeatures:Ljava/util/Map;

    .line 87
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mAllDevicesFeatures:Ljava/util/Map;

    .line 89
    iput-object v1, p0, Lcom/ss/android/ttvecamera/TECameraBase;->openPrivacyCert:Lcom/bytedance/bpea/basics/Cert;

    .line 91
    new-instance v2, Lcom/ss/android/ttvecamera/cameracapabilitycollector/TECameraCapabilityCollector;

    invoke-direct {v2}, Lcom/ss/android/ttvecamera/cameracapabilitycollector/TECameraCapabilityCollector;-><init>()V

    iput-object v2, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mCapabilityCollector:Lcom/ss/android/ttvecamera/cameracapabilitycollector/TECameraCapabilityCollector;

    .line 93
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    iput-object v2, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mCameraCapabilitiesMap:Lorg/json/JSONObject;

    .line 95
    iput-boolean v0, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mHaveCollectedCapbilities:Z

    .line 97
    iput-object v1, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mAlgorithmInterface:Lcom/ss/android/ttvecamera/cameraalgorithm/TECameraAlgorithmInterface;

    .line 108
    iput-object p1, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mContext:Landroid/content/Context;

    .line 109
    iput-object p2, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mCameraEvents:Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;

    .line 110
    iput-object p3, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mHandler:Landroid/os/Handler;

    .line 111
    iput-object p4, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mPictureSizeCallback:Lcom/ss/android/ttvecamera/TECameraBase$PictureSizeCallBack;

    .line 112
    iget-object p0, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mCapabilityCollector:Lcom/ss/android/ttvecamera/cameracapabilitycollector/TECameraCapabilityCollector;

    new-instance p1, Lcom/ss/android/ttvecamera/cameracapabilitycollector/TECameraCapabilityKBUpload;

    invoke-direct {p1}, Lcom/ss/android/ttvecamera/cameracapabilitycollector/TECameraCapabilityKBUpload;-><init>()V

    invoke-virtual {p0, p1}, Lcom/ss/android/ttvecamera/cameracapabilitycollector/TECameraCapabilityCollector;->init(Lcom/ss/android/ttvecamera/cameracapabilitycollector/TECameraCapabilityCollector$ITECameraCapabilityUploadStrategy;)V

    return-void
.end method


# virtual methods
.method public abortSession()V
    .registers 1

    return-void
.end method

.method public addCameraAlgorithm(Lcom/ss/android/ttvecamera/cameraalgorithm/TECameraAlgorithmParam;)V
    .registers 2

    return-void
.end method

.method public abstract cancelFocus()V
.end method

.method public captureBurst(Lcom/ss/android/ttvecamera/model/BurstRequest;Lcom/ss/android/ttvecamera/TECameraSettings$CaptureBufferFrameCallback;)V
    .registers 5

    .line 273
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unsupport capture burst, camera type:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/ss/android/ttvecamera/TECameraBase;->getCameraType()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, p1}, Lcom/ss/android/ttvecamera/TECameraSettings$CaptureBufferFrameCallback;->onError(Ljava/lang/Exception;)V

    return-void
.end method

.method public changeRecorderState(ILcom/ss/android/ttvecamera/TECameraBase$CameraKitStateCallback;)V
    .registers 3

    return-void
.end method

.method public close(Lcom/bytedance/bpea/basics/Cert;)V
    .registers 2

    .line 186
    const-string p0, "TECameraBase"

    const-string p1, "close..."

    invoke-static {p0, p1}, Lcom/ss/android/ttvecamera/TELogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected collectCameraCapabilities()V
    .registers 1

    return-void
.end method

.method public createException(Ljava/lang/Exception;I)Ljava/lang/Exception;
    .registers 4

    .line 575
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_8

    .line 577
    const-string p0, "Exception message"

    .line 580
    :cond_8
    new-instance p1, Ljava/lang/Exception;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", errorCode="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    return-object p1
.end method

.method public destroy()V
    .registers 1

    .line 190
    iget-object p0, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mAlgorithmInterface:Lcom/ss/android/ttvecamera/cameraalgorithm/TECameraAlgorithmInterface;

    if-eqz p0, :cond_7

    .line 191
    invoke-virtual {p0}, Lcom/ss/android/ttvecamera/cameraalgorithm/TECameraAlgorithmInterface;->destroy()I

    :cond_7
    return-void
.end method

.method public abstract enableCaf()V
.end method

.method protected enableMulticamZoom(Z)V
    .registers 2

    return-void
.end method

.method protected fillFeatures()Landroid/os/Bundle;
    .registers 4

    .line 412
    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mFeatures:Ljava/util/Map;

    iget-object v1, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget-object v1, v1, Lcom/ss/android/ttvecamera/TECameraSettings;->mStrCameraID:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 413
    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mFeatures:Ljava/util/Map;

    iget-object v1, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget-object v1, v1, Lcom/ss/android/ttvecamera/TECameraSettings;->mStrCameraID:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    goto :goto_27

    .line 415
    :cond_19
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 416
    iget-object v1, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mFeatures:Ljava/util/Map;

    iget-object v2, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget-object v2, v2, Lcom/ss/android/ttvecamera/TECameraSettings;->mStrCameraID:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_27
    if-eqz v0, :cond_32

    .line 419
    iget-object p0, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget p0, p0, Lcom/ss/android/ttvecamera/TECameraSettings;->mFacing:I

    const-string v1, "facing"

    invoke-virtual {v0, v1, p0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    :cond_32
    return-object v0
.end method

.method public abstract focusAtPoint(Lcom/ss/android/ttvecamera/TEFocusSettings;)V
.end method

.method public forceCloseCamera(Lcom/bytedance/bpea/basics/Cert;)V
    .registers 2

    return-void
.end method

.method public getApertureRange()[F
    .registers 1

    const/4 p0, 0x2

    .line 315
    new-array p0, p0, [F

    fill-array-data p0, :array_8

    return-object p0

    nop

    :array_8
    .array-data 4
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
    .end array-data
.end method

.method public abstract getBestPreviewSize(FLcom/ss/android/ttvecamera/TEFrameSizei;)Lcom/ss/android/ttvecamera/TEFrameSizei;
.end method

.method public getCameraCapbilitiesForBytebench()Lorg/json/JSONObject;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method public getCameraCaptureSize()[I
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method public getCameraECInfo()Lcom/ss/android/ttvecamera/TECameraSettings$ExposureCompensationInfo;
    .registers 1

    .line 345
    iget-object p0, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget-object p0, p0, Lcom/ss/android/ttvecamera/TECameraSettings;->mCameraECInfo:Lcom/ss/android/ttvecamera/TECameraSettings$ExposureCompensationInfo;

    return-object p0
.end method

.method public getCameraEvents()Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;
    .registers 1

    .line 137
    iget-object p0, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mCameraEvents:Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;

    return-object p0
.end method

.method public getCameraSettings()Lcom/ss/android/ttvecamera/TECameraSettings;
    .registers 1

    .line 133
    iget-object p0, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    return-object p0
.end method

.method public abstract getCameraType()I
.end method

.method public getContext()Landroid/content/Context;
    .registers 1

    .line 259
    iget-object p0, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public getExposureCompensation()I
    .registers 1

    .line 349
    iget-object p0, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget-object p0, p0, Lcom/ss/android/ttvecamera/TECameraSettings;->mCameraECInfo:Lcom/ss/android/ttvecamera/TECameraSettings$ExposureCompensationInfo;

    if-eqz p0, :cond_9

    iget p0, p0, Lcom/ss/android/ttvecamera/TECameraSettings$ExposureCompensationInfo;->exposure:I

    return p0

    :cond_9
    const/4 p0, 0x0

    return p0
.end method

.method public abstract getFOV()[F
.end method

.method public getFacing()I
    .registers 1

    .line 251
    iget p0, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mFacing:I

    return p0
.end method

.method public getFeatures(Ljava/lang/String;)Landroid/os/Bundle;
    .registers 2

    .line 403
    iget-object p0, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mFeatures:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Bundle;

    return-object p0
.end method

.method public getFeatures()Ljava/util/Map;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .line 149
    iget-object p0, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mFeatures:Ljava/util/Map;

    return-object p0
.end method

.method public getFlashMode()I
    .registers 1

    const/4 p0, -0x1

    return p0
.end method

.method public abstract getFrameOrientation()I
.end method

.method public getFrameRotation()I
    .registers 3

    .line 202
    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mUpdateCameraOrientation:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 203
    invoke-virtual {p0}, Lcom/ss/android/ttvecamera/TECameraBase;->getFrameOrientation()I

    .line 205
    :cond_c
    iget p0, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mCameraRotation:I

    return p0
.end method

.method public getHandler()Landroid/os/Handler;
    .registers 1

    .line 255
    iget-object p0, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public getISO()I
    .registers 1

    const/4 p0, -0x1

    return p0
.end method

.method public getISORange()[I
    .registers 1

    const/4 p0, -0x1

    .line 293
    filled-new-array {p0, p0}, [I

    move-result-object p0

    return-object p0
.end method

.method public getManualFocusAbility()F
    .registers 1

    const/high16 p0, -0x40800000    # -1.0f

    return p0
.end method

.method public getPictureSize()[I
    .registers 2

    .line 232
    iget-object p0, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget-object p0, p0, Lcom/ss/android/ttvecamera/TECameraSettings;->mPictureSize:Lcom/ss/android/ttvecamera/TEFrameSizei;

    .line 233
    iget v0, p0, Lcom/ss/android/ttvecamera/TEFrameSizei;->width:I

    .line 234
    iget p0, p0, Lcom/ss/android/ttvecamera/TEFrameSizei;->height:I

    filled-new-array {v0, p0}, [I

    move-result-object p0

    return-object p0
.end method

.method public getPreviewFps()[I
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method public getProviderManager()Lcom/ss/android/ttvecamera/provider/TECameraProviderManager;
    .registers 1

    .line 145
    iget-object p0, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mProviderMgr:Lcom/ss/android/ttvecamera/provider/TECameraProviderManager;

    return-object p0
.end method

.method public getRetryStartPreviewCount()I
    .registers 1

    .line 431
    iget p0, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mRetryStartPreviewCount:I

    return p0
.end method

.method public getShutterTimeRange()[J
    .registers 1

    const/4 p0, 0x2

    .line 306
    new-array p0, p0, [J

    fill-array-data p0, :array_8

    return-object p0

    nop

    :array_8
    .array-data 8
        -0x1
        -0x1
    .end array-data
.end method

.method public getSupportedPictureSizes()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/ss/android/ttvecamera/TEFrameSizei;",
            ">;"
        }
    .end annotation

    .line 268
    const-string p0, "TECameraBase"

    const-string v0, "getSupportedPictureSizes error"

    invoke-static {p0, v0}, Lcom/ss/android/ttvecamera/TELogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public getSupportedPreviewSizes()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/ss/android/ttvecamera/TEFrameSizei;",
            ">;"
        }
    .end annotation

    .line 263
    const-string p0, "TECameraBase"

    const-string v0, "getSupportedPreviewSizes error"

    invoke-static {p0, v0}, Lcom/ss/android/ttvecamera/TELogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public getWideAngleID()Ljava/lang/String;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method public abstract isAutoExposureLockSupported()Z
.end method

.method public isAutoFocusLockSupported()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public isNeedCollectCameraCapabilities()Z
    .registers 2

    .line 584
    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget-boolean v0, v0, Lcom/ss/android/ttvecamera/TECameraSettings;->mEnableCollectCapbilities:Z

    if-eqz v0, :cond_c

    iget-boolean p0, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mHaveCollectedCapbilities:Z

    if-nez p0, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method public abstract isSupportWhileBalance()Z
.end method

.method public isSupportedExposureCompensation()Z
    .registers 1

    .line 341
    iget-object p0, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget-object p0, p0, Lcom/ss/android/ttvecamera/TECameraSettings;->mCameraECInfo:Lcom/ss/android/ttvecamera/TECameraSettings$ExposureCompensationInfo;

    if-eqz p0, :cond_e

    invoke-virtual {p0}, Lcom/ss/android/ttvecamera/TECameraSettings$ExposureCompensationInfo;->isSupportExposureCompensation()Z

    move-result p0

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    return p0

    :cond_e
    const/4 p0, 0x0

    return p0
.end method

.method public abstract isTorchSupported()Z
.end method

.method public abstract open(IIIIIZLcom/bytedance/bpea/basics/Cert;)I
.end method

.method public open(Lcom/ss/android/ttvecamera/TECameraSettings;Lcom/bytedance/bpea/basics/Cert;)I
    .registers 3

    .line 127
    iget p1, p1, Lcom/ss/android/ttvecamera/TECameraSettings;->mRetryStartPreviewCnt:I

    iput p1, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mRetryStartPreviewCount:I

    .line 128
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "set start preview retry count: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mRetryStartPreviewCount:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "TECameraBase"

    invoke-static {p1, p0}, Lcom/ss/android/ttvecamera/TELogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public process(Lcom/ss/android/ttvecamera/TECameraSettings$Operation;)V
    .registers 3

    if-eqz p1, :cond_f

    .line 397
    invoke-virtual {p1}, Lcom/ss/android/ttvecamera/TECameraSettings$Operation;->getType()I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_f

    .line 398
    iget-object p0, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mUpdateCameraOrientation:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_f
    return-void
.end method

.method public processAlgorithm(Lcom/ss/android/ttvecamera/TECameraFrame;)Lcom/ss/android/ttvecamera/TECameraFrame;
    .registers 2

    .line 169
    iget-object p0, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mAlgorithmInterface:Lcom/ss/android/ttvecamera/cameraalgorithm/TECameraAlgorithmInterface;

    if-eqz p0, :cond_9

    .line 170
    invoke-virtual {p0, p1}, Lcom/ss/android/ttvecamera/cameraalgorithm/TECameraAlgorithmInterface;->processAlgorithm(Lcom/ss/android/ttvecamera/TECameraFrame;)Lcom/ss/android/ttvecamera/TECameraFrame;

    move-result-object p0

    return-object p0

    :cond_9
    const/4 p0, 0x0

    return-object p0
.end method

.method public abstract queryShaderZoomStep(Lcom/ss/android/ttvecamera/TECameraSettings$ShaderZoomCallback;)V
.end method

.method public abstract queryZoomAbility(Lcom/ss/android/ttvecamera/TECameraSettings$ZoomCallback;Z)V
.end method

.method public registerFpsConfigListener(Lcom/ss/android/ttvecamera/TECameraBase$CameraFpsConfigCallback;)V
    .registers 2

    .line 120
    iput-object p1, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mFpsConfigCallback:Lcom/ss/android/ttvecamera/TECameraBase$CameraFpsConfigCallback;

    return-void
.end method

.method public registerPreviewListener(Lcom/ss/android/ttvecamera/TECameraBase$PreviewSizeCallBack;)V
    .registers 2

    .line 116
    iput-object p1, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mPreviewSizeCallback:Lcom/ss/android/ttvecamera/TECameraBase$PreviewSizeCallBack;

    return-void
.end method

.method public removeCameraAlgorithm(I)V
    .registers 2

    return-void
.end method

.method public resetRetryStartPreviewCount()V
    .registers 2

    .line 427
    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget v0, v0, Lcom/ss/android/ttvecamera/TECameraSettings;->mRetryStartPreviewCnt:I

    iput v0, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mRetryStartPreviewCount:I

    return-void
.end method

.method public retryStartPreviewOnce()V
    .registers 2

    .line 435
    iget v0, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mRetryStartPreviewCount:I

    if-lez v0, :cond_8

    add-int/lit8 v0, v0, -0x1

    .line 436
    iput v0, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mRetryStartPreviewCount:I

    :cond_8
    return-void
.end method

.method public setAperture(F)V
    .registers 2

    return-void
.end method

.method public abstract setAutoExposureLock(Z)V
.end method

.method public setAutoFocusLock(Z)V
    .registers 2

    return-void
.end method

.method public setDeviceRotation(I)V
    .registers 2

    .line 209
    iput p1, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mDeviceRotation:I

    .line 210
    iget-object p0, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mUpdateCameraOrientation:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public abstract setExposureCompensation(I)Z
.end method

.method public setFeatureParameters(Landroid/os/Bundle;)V
    .registers 2

    return-void
.end method

.method public setISO(I)V
    .registers 2

    return-void
.end method

.method public setManualFocusDistance(F)V
    .registers 2

    return-void
.end method

.method public setPictureSize(II)V
    .registers 3

    return-void
.end method

.method public setPreviewFpsRange()V
    .registers 1

    return-void
.end method

.method public setProviderManager(Lcom/ss/android/ttvecamera/provider/TECameraProviderManager;)V
    .registers 2

    .line 141
    iput-object p1, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mProviderMgr:Lcom/ss/android/ttvecamera/provider/TECameraProviderManager;

    return-void
.end method

.method public setSATZoomCallback(Lcom/ss/android/ttvecamera/TECameraBase$SATZoomCallback;)V
    .registers 2

    return-void
.end method

.method public setSceneMode(I)V
    .registers 3

    .line 243
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "scene mode: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "TECameraBase"

    invoke-static {p1, p0}, Lcom/ss/android/ttvecamera/TELogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setShutterTime(J)V
    .registers 3

    return-void
.end method

.method public abstract setWhileBalance(ZLjava/lang/String;)V
.end method

.method public abstract startCapture()V
.end method

.method public startRecording()I
    .registers 1

    const/4 p0, -0x1

    return p0
.end method

.method public abstract startZoom(FLcom/ss/android/ttvecamera/TECameraSettings$ZoomCallback;)V
.end method

.method public stopCameraFaceDetect()V
    .registers 1

    return-void
.end method

.method public abstract stopCapture()V
.end method

.method public stopRecording()I
    .registers 1

    const/4 p0, -0x1

    return p0
.end method

.method public stopRetryStartPreview()V
    .registers 2

    const/4 v0, 0x0

    .line 441
    iput v0, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mRetryStartPreviewCount:I

    return-void
.end method

.method public abstract stopZoom(Lcom/ss/android/ttvecamera/TECameraSettings$ZoomCallback;)V
.end method

.method public abstract switchCameraMode(I)V
.end method

.method public abstract switchFlashMode(I)V
    .param p1    # I
        .annotation build Lcom/ss/android/ttvecamera/TECameraSettings$FlashMode;
        .end annotation
    .end param
.end method

.method public abstract takePicture(IILcom/ss/android/ttvecamera/TECameraSettings$PictureCallback;)V
.end method

.method public abstract takePicture(Lcom/ss/android/ttvecamera/TECameraSettings$PictureCallback;)V
.end method

.method public abstract toggleTorch(Z)V
.end method

.method public updateCameraAlgorithmParam(Lcom/ss/android/ttvecamera/cameraalgorithm/TECameraAlgorithmParam;)V
    .registers 2

    return-void
.end method

.method public useFaceAEStrategy(I)V
    .registers 2

    return-void
.end method

.method public abstract zoomV2(FLcom/ss/android/ttvecamera/TECameraSettings$ZoomCallback;)V
.end method
