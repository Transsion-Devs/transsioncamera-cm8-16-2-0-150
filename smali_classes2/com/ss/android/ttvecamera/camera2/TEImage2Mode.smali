.class public Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;
.super Lcom/ss/android/ttvecamera/framework/TECameraModeBase;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/android/ttvecamera/camera2/TEImage2Mode$HandlerHelper;
    }
.end annotation


# static fields
.field private static final AF_AE_CONVERGE_TIME_OUT_MS_FOR_FLASH_OFF:J = 0x320L

.field private static final AF_AE_CONVERGE_TIME_OUT_MS_FOR_FLASH_ON:J = 0x640L

.field private static final CAPTURE_REQUEST_TAG_FOR_SHOT:Ljava/lang/String; = "CAPTURE_REQUEST_TAG_FOR_SHOT"

.field private static final FPS_MAX_LIMIT_DEFAULT:I = 0x1e

.field private static final FPS_MIN_LIMIT_DEFAULT:I = 0x5

.field private static final MSG_AF_AE_CONVERGE_TIME_OUT:I = 0x3e9

.field private static final MSG_AF_AE_CONVERGE_TIME_OUT_OLD:I = 0x3ef

.field private static final MSG_CANCEL_AF_TRIGGER:I = 0x3ed

.field private static final MSG_CAPTURE:I = 0x3e8

.field private static final MSG_CAPTURE_FAILED:I = 0x3eb

.field private static final MSG_CAPTURE_OLD:I = 0x3ee

.field private static final MSG_RESET_PREVIEW_AFTER_FLASH_CAPTURE:I = 0x3ea

.field private static final MSG_UPDATE_PREVIEW:I = 0x3ec

.field private static final STATE_PREVIEW:I = 0x0

.field private static final STATE_WAITING_AF_AE_CONVERGE_FOR_CAPTURE:I = 0x2

.field private static final STATE_WAITING_CAPTURE:I = 0x1

.field public static final TAG:Ljava/lang/String; = "TEImage2Mode"

.field private static final ZSL_MAX_CACHE_META_DATA:I = 0x5

.field private static final ZSL_MAX_WIDTH_LIMIT:I = 0x1000


# instance fields
.field private isAEPreCaptureTriggerStart:Z

.field private mAvailableSessionKeys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "*>;>;"
        }
    .end annotation
.end field

.field private mCallback:Lcom/ss/android/ttvecamera/TECameraSettings$PictureCallback;

.field private mCameraFacing:I

.field private mCaptureBufferFrameCallback:Lcom/ss/android/ttvecamera/TECameraSettings$CaptureBufferFrameCallback;

.field private mCaptureResultCache:Landroid/hardware/camera2/TotalCaptureResult;

.field private mCaptureStartTimestamp:J

.field private mConditionVariable:Landroid/os/ConditionVariable;

.field private mCountCaptureFrame:I

.field private mCurrentCameraScene:I

.field private mCurrentFlashMode:I

.field private mCurrentZslMetadataCacheIndex:I

.field private mEnableGcForCameraMetadataThreshold:I

.field private mFrameArrivedTimestamp:J

.field private mFrameCountPerSec:I

.field private final mHandHelper:Lcom/ss/android/ttvecamera/camera2/TEImage2Mode$HandlerHelper;

.field protected mImageReader:Landroid/media/ImageReader;

.field private mIsAfConvergeOnPreview:Z

.field private volatile mIsCanUseZslBufferForCapture:Z

.field private mIsShotCanDoOnAfAeConverge:Z

.field private mState:I

.field private mSupportAutoFocus:Z

.field private final mUiHandler:Landroid/os/Handler;

.field private mWaitingAfAeConvergeStartTimestamp:J

.field private mZslBufferMetadataCache:[Landroid/hardware/camera2/TotalCaptureResult;

.field protected mZslImageReader:Landroid/media/ImageReader;


# direct methods
.method public constructor <init>(Lcom/ss/android/ttvecamera/TECamera2;Landroid/content/Context;Landroid/hardware/camera2/CameraManager;Landroid/os/Handler;)V
    .registers 8

    .line 180
    invoke-direct {p0, p1, p2, p4}, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;-><init>(Lcom/ss/android/ttvecamera/TECamera2;Landroid/content/Context;Landroid/os/Handler;)V

    const-wide/16 p1, 0x0

    .line 86
    iput-wide p1, p0, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;->mWaitingAfAeConvergeStartTimestamp:J

    .line 108
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;->mUiHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    .line 118
    iput-object v0, p0, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;->mZslImageReader:Landroid/media/ImageReader;

    const/4 v1, -0x1

    .line 123
    iput v1, p0, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;->mCurrentZslMetadataCacheIndex:I

    .line 129
    iput-object v0, p0, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;->mCaptureResultCache:Landroid/hardware/camera2/TotalCaptureResult;

    const/4 v2, 0x0

    .line 134
    iput-boolean v2, p0, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;->mIsCanUseZslBufferForCapture:Z

    .line 139
    iput-object v0, p0, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;->mAvailableSessionKeys:Ljava/util/List;

    .line 146
    iput v2, p0, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;->mState:I

    .line 149
    iput-boolean v2, p0, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;->mSupportAutoFocus:Z

    .line 150
    iput-boolean v2, p0, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;->isAEPreCaptureTriggerStart:Z

    .line 155
    iput-boolean v2, p0, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;->mIsShotCanDoOnAfAeConverge:Z

    .line 157
    iput-boolean v2, p0, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;->mIsAfConvergeOnPreview:Z

    .line 159
    iput v2, p0, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;->mCountCaptureFrame:I

    .line 160
    iput v2, p0, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;->mEnableGcForCameraMetadataThreshold:I

    .line 162
    iput-wide p1, p0, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;->mCaptureStartTimestamp:J

    .line 164
    iput-object v0, p0, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;->mConditionVariable:Landroid/os/ConditionVariable;

    .line 168
    iput v1, p0, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;->mCurrentFlashMode:I

    .line 170
    iput v2, p0, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;->mCurrentCameraScene:I

    .line 174
    iput-object v0, p0, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;->mCaptureBufferFrameCallback:Lcom/ss/android/ttvecamera/TECameraSettings$CaptureBufferFrameCallback;

    .line 176
    iput v2, p0, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;->mFrameCountPerSec:I

    .line 177
    iput-wide p1, p0, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;->mFrameArrivedTimestamp:J

    .line 181
    iput-object p3, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    .line 182
    iget-object p1, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget-boolean p1, p1, Lcom/ss/android/ttvecamera/TECameraSettings;->mEnableRefactorFocusAndMeter:Z

    if-eqz p1, :cond_4b

    .line 183
    new-instance p1, Lcom/ss/android/ttvecamera/focusmanager/TEImageFocusAndMeterStrategy;

    invoke-direct {p1, p0}, Lcom/ss/android/ttvecamera/focusmanager/TEImageFocusAndMeterStrategy;-><init>(Lcom/ss/android/ttvecamera/focusmanager/ITEFocusStrategy$NormalCallbackRequest;)V

    iput-object p1, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mFocusStrategy:Lcom/ss/android/ttvecamera/focusmanager/TEFocusStrategyBase;

    goto :goto_52

    .line 185
    :cond_4b
    new-instance p1, Lcom/ss/android/ttvecamera/focusmanager/TEImageFocus;

    invoke-direct {p1, p0}, Lcom/ss/android/ttvecamera/focusmanager/TEImageFocus;-><init>(Lcom/ss/android/ttvecamera/focusmanager/ITEFocusStrategy$NormalCallbackRequest;)V

    iput-object p1, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mFocusStrategy:Lcom/ss/android/ttvecamera/focusmanager/TEFocusStrategyBase;

    .line 187
    :goto_52
    new-instance p1, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode$HandlerHelper;

    invoke-virtual {p4}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode$HandlerHelper;-><init>(Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;->mHandHelper:Lcom/ss/android/ttvecamera/camera2/TEImage2Mode$HandlerHelper;

    .line 188
    invoke-direct {p0}, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;->initPreviewCaptureCallback()V

    return-void
.end method

.method static synthetic access$000(Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;)Z
    .registers 1

    .line 58
    iget-boolean p0, p0, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;->mIsShotCanDoOnAfAeConverge:Z

    return p0
.end method

.method static synthetic access$002(Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;Z)Z
    .registers 2

    .line 58
    iput-boolean p1, p0, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;->mIsShotCanDoOnAfAeConverge:Z

    return p1
.end method

.method static synthetic access$100(Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;)J
    .registers 3

    .line 58
    iget-wide v0, p0, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;->mWaitingAfAeConvergeStartTimestamp:J

    return-wide v0
.end method

.method static synthetic access$1000(Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;)V
    .registers 1

    .line 58
    invoke-virtual {p0}, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->openCameraLock()V

    return-void
.end method

.method static synthetic access$1102(Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;Z)Z
    .registers 2

    .line 58
    iput-boolean p1, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mIsFirstPreviewFrameArrived:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;)J
    .registers 3

    .line 58
    iget-wide v0, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mFirstRepeatingRequestStartTimestamp:J

    return-wide v0
.end method

.method static synthetic access$1300(Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;)J
    .registers 3

    .line 58
    iget-wide v0, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCreateSessionConsume:J

    return-wide v0
.end method

.method static synthetic access$1400(Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;)I
    .registers 1

    .line 58
    iget p0, p0, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;->mCountCaptureFrame:I

    return p0
.end method

.method static synthetic access$1402(Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;I)I
    .registers 2

    .line 58
    iput p1, p0, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;->mCountCaptureFrame:I

    return p1
.end method

.method static synthetic access$1408(Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;)I
    .registers 3

    .line 58
    iget v0, p0, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;->mCountCaptureFrame:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;->mCountCaptureFrame:I

    return v0
.end method

.method static synthetic access$1500(Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;)I
    .registers 1

    .line 58
    iget p0, p0, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;->mEnableGcForCameraMetadataThreshold:I

    return p0
.end method

.method static synthetic access$1600(Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;)I
    .registers 1

    .line 58
    iget p0, p0, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;->mCurrentZslMetadataCacheIndex:I

    return p0
.end method

.method static synthetic access$1602(Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;I)I
    .registers 2

    .line 58
    iput p1, p0, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;->mCurrentZslMetadataCacheIndex:I

    return p1
.end method

.method static synthetic access$1608(Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;)I
    .registers 3

    .line 58
    iget v0, p0, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;->mCurrentZslMetadataCacheIndex:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;->mCurrentZslMetadataCacheIndex:I

    return v0
.end method

.method static synthetic access$1700(Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;)[Landroid/hardware/camera2/TotalCaptureResult;
    .registers 1

    .line 58
    iget-object p0, p0, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;->mZslBufferMetadataCache:[Landroid/hardware/camera2/TotalCaptureResult;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;)I
    .registers 1

    .line 58
    iget p0, p0, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;->mCameraFacing:I

    return p0
.end method

.method static synthetic access$1900(Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;)Lcom/ss/android/ttvecamera/TECameraSettings$CaptureBufferFrameCallback;
    .registers 1

    .line 58
    iget-object p0, p0, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;->mCaptureBufferFrameCallback:Lcom/ss/android/ttvecamera/TECameraSettings$CaptureBufferFrameCallback;

    return-object p0
.end method

.method static synthetic access$200(Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;)Lcom/ss/android/ttvecamera/camera2/TEImage2Mode$HandlerHelper;
    .registers 1

    .line 58
    iget-object p0, p0, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;->mHandHelper:Lcom/ss/android/ttvecamera/camera2/TEImage2Mode$HandlerHelper;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;)Landroid/hardware/camera2/CaptureRequest$Builder;
    .registers 1

    .line 58
    iget-object p0, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCaptureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    return-object p0
.end method

.method static synthetic access$2100(Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;)Landroid/hardware/camera2/TotalCaptureResult;
    .registers 1

    .line 58
    iget-object p0, p0, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;->mCaptureResultCache:Landroid/hardware/camera2/TotalCaptureResult;

    return-object p0
.end method

.method static synthetic access$2102(Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;Landroid/hardware/camera2/TotalCaptureResult;)Landroid/hardware/camera2/TotalCaptureResult;
    .registers 2

    .line 58
    iput-object p1, p0, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;->mCaptureResultCache:Landroid/hardware/camera2/TotalCaptureResult;

    return-object p1
.end method

.method static synthetic access$2200(Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;)Landroid/hardware/camera2/CaptureRequest$Builder;
    .registers 1

    .line 58
    iget-object p0, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCaptureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    return-object p0
.end method

.method static synthetic access$2300(Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;)Landroid/hardware/camera2/CaptureRequest$Builder;
    .registers 1

    .line 58
    iget-object p0, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCaptureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    return-object p0
.end method

.method static synthetic access$2400(Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;)Landroid/hardware/camera2/CaptureRequest$Builder;
    .registers 1

    .line 58
    iget-object p0, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCaptureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    return-object p0
.end method

.method static synthetic access$2500(Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;)Landroid/hardware/camera2/CaptureRequest$Builder;
    .registers 1

    .line 58
    iget-object p0, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCaptureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    return-object p0
.end method

.method static synthetic access$2600(Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;)Landroid/hardware/camera2/CaptureRequest$Builder;
    .registers 1

    .line 58
    iget-object p0, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCaptureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    return-object p0
.end method

.method static synthetic access$2700(Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)Lcom/ss/android/ttvecamera/framework/TECameraModeBase$Response;
    .registers 4

    .line 58
    invoke-virtual {p0, p1, p2, p3}, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->capture(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)Lcom/ss/android/ttvecamera/framework/TECameraModeBase$Response;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2800(Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;)Landroid/hardware/camera2/CaptureRequest$Builder;
    .registers 1

    .line 58
    iget-object p0, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCaptureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    return-object p0
.end method

.method static synthetic access$2900(Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;)Landroid/hardware/camera2/CaptureRequest$Builder;
    .registers 1

    .line 58
    iget-object p0, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCaptureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    return-object p0
.end method

.method static synthetic access$300(Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;)I
    .registers 1

    .line 58
    iget p0, p0, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;->mState:I

    return p0
.end method

.method static synthetic access$3000(Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;)Landroid/hardware/camera2/CaptureRequest$Builder;
    .registers 1

    .line 58
    iget-object p0, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCaptureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    return-object p0
.end method

.method static synthetic access$302(Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;I)I
    .registers 2

    .line 58
    iput p1, p0, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;->mState:I

    return p1
.end method

.method static synthetic access$3100(Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;Landroid/hardware/camera2/CaptureRequest$Builder;)Lcom/ss/android/ttvecamera/framework/TECameraModeBase$Response;
    .registers 2

    .line 58
    invoke-virtual {p0, p1}, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->updatePreview(Landroid/hardware/camera2/CaptureRequest$Builder;)Lcom/ss/android/ttvecamera/framework/TECameraModeBase$Response;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$3200(Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;)Lcom/ss/android/ttvecamera/TECameraSettings;
    .registers 1

    .line 58
    iget-object p0, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    return-object p0
.end method

.method static synthetic access$3300(Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;)Lcom/ss/android/ttvecamera/TECameraSettings;
    .registers 1

    .line 58
    iget-object p0, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    return-object p0
.end method

.method static synthetic access$3400(Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;)Lcom/ss/android/ttvecamera/TECameraSettings;
    .registers 1

    .line 58
    iget-object p0, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    return-object p0
.end method

.method static synthetic access$3500(Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;)Lcom/ss/android/ttvecamera/TECameraSettings;
    .registers 1

    .line 58
    iget-object p0, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    return-object p0
.end method

.method static synthetic access$3600(Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;)Lcom/ss/android/ttvecamera/TECameraSettings;
    .registers 1

    .line 58
    iget-object p0, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    return-object p0
.end method

.method static synthetic access$3700(Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;)Lcom/ss/android/ttvecamera/TECameraSettings;
    .registers 1

    .line 58
    iget-object p0, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    return-object p0
.end method

.method static synthetic access$3800(Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;)Lcom/ss/android/ttvecamera/TECameraSettings;
    .registers 1

    .line 58
    iget-object p0, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    return-object p0
.end method

.method static synthetic access$3900(Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;)Lcom/ss/android/ttvecamera/TECameraSettings;
    .registers 1

    .line 58
    iget-object p0, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    return-object p0
.end method

.method static synthetic access$4000(Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;)Z
    .registers 1

    .line 58
    iget-boolean p0, p0, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;->mIsCanUseZslBufferForCapture:Z

    return p0
.end method

.method static synthetic access$4002(Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;Z)Z
    .registers 2

    .line 58
    iput-boolean p1, p0, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;->mIsCanUseZslBufferForCapture:Z

    return p1
.end method

.method static synthetic access$402(Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;Z)Z
    .registers 2

    .line 58
    iput-boolean p1, p0, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;->mIsAfConvergeOnPreview:Z

    return p1
.end method

.method static synthetic access$4100(Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;Landroid/media/Image;Landroid/hardware/camera2/TotalCaptureResult;)V
    .registers 3

    .line 58
    invoke-direct {p0, p1, p2}, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;->processCaptureFrame(Landroid/media/Image;Landroid/hardware/camera2/TotalCaptureResult;)V

    return-void
.end method

.method static synthetic access$4200(Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;Ljava/lang/Exception;I)V
    .registers 3

    .line 58
    invoke-direct {p0, p1, p2}, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;->onCaptureFailed(Ljava/lang/Exception;I)V

    return-void
.end method

.method static synthetic access$4300(Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;)Landroid/os/ConditionVariable;
    .registers 1

    .line 58
    iget-object p0, p0, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;->mConditionVariable:Landroid/os/ConditionVariable;

    return-object p0
.end method

.method static synthetic access$4400(Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;)V
    .registers 1

    .line 58
    invoke-direct {p0}, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;->doCaptureOnReady()V

    return-void
.end method

.method static synthetic access$4500(Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;)V
    .registers 1

    .line 58
    invoke-direct {p0}, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;->resetPreviewAfterFlashCapture()V

    return-void
.end method

.method static synthetic access$4600(Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;)Landroid/hardware/camera2/CaptureRequest$Builder;
    .registers 1

    .line 58
    iget-object p0, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCaptureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    return-object p0
.end method

.method static synthetic access$4700(Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;Landroid/hardware/camera2/CaptureRequest$Builder;)Lcom/ss/android/ttvecamera/framework/TECameraModeBase$Response;
    .registers 2

    .line 58
    invoke-virtual {p0, p1}, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->updatePreview(Landroid/hardware/camera2/CaptureRequest$Builder;)Lcom/ss/android/ttvecamera/framework/TECameraModeBase$Response;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$4800(Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;)V
    .registers 1

    .line 58
    invoke-direct {p0}, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;->captureStillPicture()V

    return-void
.end method

.method static synthetic access$500(Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;)Landroid/hardware/camera2/CaptureRequest$Builder;
    .registers 1

    .line 58
    iget-object p0, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCaptureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    return-object p0
.end method

.method static synthetic access$600(Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;)Z
    .registers 1

    .line 58
    iget-boolean p0, p0, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;->isAEPreCaptureTriggerStart:Z

    return p0
.end method

.method static synthetic access$602(Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;Z)Z
    .registers 2

    .line 58
    iput-boolean p1, p0, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;->isAEPreCaptureTriggerStart:Z

    return p1
.end method

.method static synthetic access$700(Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;)J
    .registers 3

    .line 58
    iget-wide v0, p0, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;->mFrameArrivedTimestamp:J

    return-wide v0
.end method

.method static synthetic access$702(Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;J)J
    .registers 3

    .line 58
    iput-wide p1, p0, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;->mFrameArrivedTimestamp:J

    return-wide p1
.end method

.method static synthetic access$800(Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;)I
    .registers 1

    .line 58
    iget p0, p0, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;->mFrameCountPerSec:I

    return p0
.end method

.method static synthetic access$802(Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;I)I
    .registers 2

    .line 58
    iput p1, p0, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;->mFrameCountPerSec:I

    return p1
.end method

.method static synthetic access$808(Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;)I
    .registers 3

    .line 58
    iget v0, p0, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;->mFrameCountPerSec:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;->mFrameCountPerSec:I

    return v0
.end method

.method static synthetic access$900(Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;)Z
    .registers 1

    .line 58
    iget-boolean p0, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mIsFirstPreviewFrameArrived:Z

    return p0
.end method

.method private applyCaptureScene()V
    .registers 4

    .line 250
    iget-object v0, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget-boolean v0, v0, Lcom/ss/android/ttvecamera/TECameraSettings;->mOptCameraSceneFps:Z

    if-eqz v0, :cond_3c

    iget-object v0, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    if-eqz v0, :cond_3c

    .line 251
    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_AVAILABLE_TARGET_FPS_RANGES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/util/Range;

    .line 253
    invoke-direct {p0, v0}, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;->getMaxDistanceFpsRange([Landroid/util/Range;)Landroid/util/Range;

    move-result-object v0

    .line 254
    iget-object v1, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCaptureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    if-eqz v1, :cond_3c

    if-eqz v0, :cond_3c

    .line 255
    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_TARGET_FPS_RANGE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v1, v2, v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 256
    iget-object v1, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCaptureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {p0, v1}, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->updatePreview(Landroid/hardware/camera2/CaptureRequest$Builder;)Lcom/ss/android/ttvecamera/framework/TECameraModeBase$Response;

    .line 257
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "apply capture scene: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TEImage2Mode"

    invoke-static {v1, v0}, Lcom/ss/android/ttvecamera/TELogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    :cond_3c
    invoke-direct {p0}, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;->attachZslBuffer()V

    return-void
.end method

.method private applyRecordScene()V
    .registers 4

    .line 264
    iget-object v0, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget-boolean v0, v0, Lcom/ss/android/ttvecamera/TECameraSettings;->mOptCameraSceneFps:Z

    if-eqz v0, :cond_3c

    iget-object v0, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    if-eqz v0, :cond_3c

    .line 265
    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_AVAILABLE_TARGET_FPS_RANGES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/util/Range;

    .line 267
    invoke-direct {p0, v0}, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;->getMaxFixFpsRange([Landroid/util/Range;)Landroid/util/Range;

    move-result-object v0

    .line 268
    iget-object v1, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCaptureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    if-eqz v1, :cond_3c

    if-eqz v0, :cond_3c

    .line 269
    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_TARGET_FPS_RANGE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v1, v2, v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 270
    iget-object v1, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCaptureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {p0, v1}, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->updatePreview(Landroid/hardware/camera2/CaptureRequest$Builder;)Lcom/ss/android/ttvecamera/framework/TECameraModeBase$Response;

    .line 271
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "apply record scene: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TEImage2Mode"

    invoke-static {v1, v0}, Lcom/ss/android/ttvecamera/TELogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    :cond_3c
    invoke-direct {p0}, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;->detachZslBuffer()V

    return-void
.end method

.method private attachZslBuffer()V
    .registers 3

    .line 278
    iget-object v0, p0, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;->mZslImageReader:Landroid/media/ImageReader;

    if-eqz v0, :cond_26

    .line 279
    invoke-virtual {v0}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v0

    if-eqz v0, :cond_26

    .line 280
    invoke-virtual {v0}, Landroid/view/Surface;->isValid()Z

    move-result v1

    if-eqz v1, :cond_26

    .line 281
    iget-object v1, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCaptureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    if-eqz v1, :cond_21

    .line 283
    :try_start_14
    invoke-virtual {v1, v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->removeTarget(Landroid/view/Surface;)V

    .line 284
    iget-object v1, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCaptureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {v1, v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_1c} :catch_1d

    goto :goto_21

    :catch_1d
    move-exception v0

    .line 286
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 289
    :cond_21
    :goto_21
    iget-object v0, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCaptureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {p0, v0}, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->updatePreview(Landroid/hardware/camera2/CaptureRequest$Builder;)Lcom/ss/android/ttvecamera/framework/TECameraModeBase$Response;

    :cond_26
    return-void
.end method

.method private captureStillPicture()V
    .registers 5

    .line 894
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;->mCaptureStartTimestamp:J

    const/4 v0, 0x0

    .line 895
    iput v0, p0, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;->mState:I

    const/4 v0, 0x2

    .line 896
    invoke-virtual {p0, v0}, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->createCaptureRequestBuilder(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v0

    const/16 v1, -0x3e9

    if-nez v0, :cond_1d

    .line 898
    new-instance v0, Ljava/lang/Exception;

    const-string v2, "capture build is null"

    invoke-direct {v0, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, v1}, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;->onCaptureFailed(Ljava/lang/Exception;I)V

    return-void

    .line 902
    :cond_1d
    iget-object v2, p0, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;->mImageReader:Landroid/media/ImageReader;

    if-nez v2, :cond_2c

    .line 903
    new-instance v0, Ljava/lang/Exception;

    const-string v2, "image reader is null"

    invoke-direct {v0, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, v1}, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;->onCaptureFailed(Ljava/lang/Exception;I)V

    return-void

    .line 907
    :cond_2c
    invoke-virtual {v2}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 908
    invoke-direct {p0, v0}, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;->syncPreviewParam(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 910
    new-instance v2, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode$3;

    invoke-direct {v2, p0}, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode$3;-><init>(Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;)V

    .line 961
    iget-object v3, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0, v2, v3}, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->capture(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)Lcom/ss/android/ttvecamera/framework/TECameraModeBase$Response;

    move-result-object v0

    .line 962
    invoke-virtual {v0}, Lcom/ss/android/ttvecamera/framework/TECameraModeBase$Response;->isSuccess()Z

    move-result v2

    if-nez v2, :cond_4e

    .line 963
    invoke-virtual {v0}, Lcom/ss/android/ttvecamera/framework/TECameraModeBase$Response;->getException()Ljava/lang/Exception;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;->onCaptureFailed(Ljava/lang/Exception;I)V

    :cond_4e
    return-void
.end method

.method private detachZslBuffer()V
    .registers 3

    .line 295
    iget-object v0, p0, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;->mZslImageReader:Landroid/media/ImageReader;

    if-eqz v0, :cond_21

    .line 296
    invoke-virtual {v0}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v0

    if-eqz v0, :cond_21

    .line 297
    invoke-virtual {v0}, Landroid/view/Surface;->isValid()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 298
    iget-object v1, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCaptureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    if-eqz v1, :cond_1c

    .line 300
    :try_start_14
    invoke-virtual {v1, v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->removeTarget(Landroid/view/Surface;)V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_17} :catch_18

    goto :goto_1c

    :catch_18
    move-exception v0

    .line 302
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 305
    :cond_1c
    :goto_1c
    iget-object v0, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCaptureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {p0, v0}, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->updatePreview(Landroid/hardware/camera2/CaptureRequest$Builder;)Lcom/ss/android/ttvecamera/framework/TECameraModeBase$Response;

    :cond_21
    return-void
.end method

.method private doCaptureOnReady()V
    .registers 5

    .line 968
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;->mCaptureStartTimestamp:J

    const/4 v0, 0x0

    .line 969
    iput v0, p0, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;->mState:I

    const/4 v0, 0x2

    .line 970
    invoke-virtual {p0, v0}, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->createCaptureRequestBuilder(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v0

    const/16 v1, -0x3e9

    if-nez v0, :cond_1d

    .line 972
    new-instance v0, Ljava/lang/Exception;

    const-string v2, "capture build is null"

    invoke-direct {v0, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, v1}, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;->onCaptureFailed(Ljava/lang/Exception;I)V

    return-void

    .line 976
    :cond_1d
    iget-object v2, p0, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;->mImageReader:Landroid/media/ImageReader;

    if-nez v2, :cond_2c

    .line 977
    new-instance v0, Ljava/lang/Exception;

    const-string v2, "image reader is null"

    invoke-direct {v0, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, v1}, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;->onCaptureFailed(Ljava/lang/Exception;I)V

    return-void

    .line 981
    :cond_2c
    invoke-virtual {v2}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 982
    invoke-direct {p0, v0}, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;->syncPreviewParam(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 984
    new-instance v2, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode$4;

    invoke-direct {v2, p0}, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode$4;-><init>(Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;)V

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v2, v3}, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->capture(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)Lcom/ss/android/ttvecamera/framework/TECameraModeBase$Response;

    move-result-object v0

    .line 1010
    invoke-virtual {v0}, Lcom/ss/android/ttvecamera/framework/TECameraModeBase$Response;->isSuccess()Z

    move-result v2

    if-nez v2, :cond_4d

    .line 1011
    invoke-virtual {v0}, Lcom/ss/android/ttvecamera/framework/TECameraModeBase$Response;->getException()Ljava/lang/Exception;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;->onCaptureFailed(Ljava/lang/Exception;I)V

    :cond_4d
    return-void
.end method

.method private getMaxDistanceFpsRange([Landroid/util/Range;)Landroid/util/Range;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;)",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_76

    .line 383
    iget-object p0, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    const/16 v1, 0x1e

    if-eqz p0, :cond_d

    .line 384
    iget p0, p0, Lcom/ss/android/ttvecamera/TECameraSettings;->mFpsMaxLimit:I

    if-ge p0, v1, :cond_e

    :cond_d
    move p0, v1

    .line 390
    :cond_e
    array-length v2, p1

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    :goto_12
    if-ge v3, v2, :cond_6e

    aget-object v6, p1, v3

    .line 391
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "fps: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Landroid/util/Range;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "TEImage2Mode"

    invoke-static {v8, v7}, Lcom/ss/android/ttvecamera/TELogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 392
    invoke-virtual {v6}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 393
    invoke-virtual {v6}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    const/4 v10, 0x5

    if-ge v9, v10, :cond_60

    .line 395
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "discard fps: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Landroid/util/Range;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Lcom/ss/android/ttvecamera/TELogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6b

    :cond_60
    if-le v7, v4, :cond_63

    move v4, v7

    :cond_63
    if-le v7, p0, :cond_66

    goto :goto_6b

    :cond_66
    sub-int/2addr v7, v9

    if-le v7, v5, :cond_6b

    move-object v0, v6

    move v5, v7

    :cond_6b
    :goto_6b
    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    :cond_6e
    if-le v4, v1, :cond_76

    .line 414
    const-string p0, "te_record_camera_max_fps"

    int-to-long v1, v4

    invoke-static {p0, v1, v2}, Lcom/ss/android/ttvecamera/TECameraMonitor;->perfLong(Ljava/lang/String;J)V

    :cond_76
    return-object v0
.end method

.method private getMaxFixFpsRange([Landroid/util/Range;)Landroid/util/Range;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;)",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_54

    .line 427
    iget-object p0, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    const/16 v1, 0x1e

    if-eqz p0, :cond_f

    .line 428
    iget p0, p0, Lcom/ss/android/ttvecamera/TECameraSettings;->mFpsMaxLimit:I

    if-ge p0, v1, :cond_e

    goto :goto_f

    :cond_e
    move v1, p0

    .line 434
    :cond_f
    :goto_f
    array-length p0, p1

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_13
    if-ge v2, p0, :cond_54

    aget-object v5, p1, v2

    .line 435
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "fps: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Landroid/util/Range;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "TEImage2Mode"

    invoke-static {v7, v6}, Lcom/ss/android/ttvecamera/TELogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 436
    invoke-virtual {v5}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-le v6, v3, :cond_3e

    move v3, v6

    :cond_3e
    if-gt v6, v1, :cond_51

    .line 441
    invoke-virtual {v5}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-eq v6, v7, :cond_4d

    goto :goto_51

    :cond_4d
    if-le v6, v4, :cond_51

    move-object v0, v5

    move v4, v6

    :cond_51
    :goto_51
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    :cond_54
    return-object v0
.end method

.method private initPreviewCaptureCallback()V
    .registers 2

    .line 459
    new-instance v0, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode$1;

    invoke-direct {v0, p0}, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode$1;-><init>(Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;)V

    iput-object v0, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mPreviewCaptureCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    return-void
.end method

.method private onCaptureFailed(Ljava/lang/Exception;I)V
    .registers 4

    .line 1070
    iget-object v0, p0, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;->mCallback:Lcom/ss/android/ttvecamera/TECameraSettings$PictureCallback;

    if-eqz v0, :cond_11

    .line 1071
    iget-object v0, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraHolder:Lcom/ss/android/ttvecamera/TECamera2;

    if-eqz v0, :cond_c

    .line 1072
    invoke-virtual {v0, p1, p2}, Lcom/ss/android/ttvecamera/TECameraBase;->createException(Ljava/lang/Exception;I)Ljava/lang/Exception;

    move-result-object p1

    .line 1074
    :cond_c
    iget-object v0, p0, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;->mCallback:Lcom/ss/android/ttvecamera/TECameraSettings$PictureCallback;

    invoke-interface {v0, p1}, Lcom/ss/android/ttvecamera/TECameraSettings$PictureCallback;->onTakenFail(Ljava/lang/Exception;)V

    :cond_11
    const/4 v0, 0x0

    .line 1076
    iput v0, p0, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;->mState:I

    .line 1077
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onCaptureFailed, err = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", errCode = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "TEImage2Mode"

    invoke-static {p1, p0}, Lcom/ss/android/ttvecamera/TELogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private processCaptureFrame(Landroid/media/Image;Landroid/hardware/camera2/TotalCaptureResult;)V
    .registers 12

    .line 1618
    invoke-virtual {p1}, Landroid/media/Image;->getWidth()I

    move-result v3

    .line 1619
    invoke-virtual {p1}, Landroid/media/Image;->getHeight()I

    move-result v4

    .line 1620
    iget v0, p0, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;->mCameraFacing:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_11

    const/16 v0, 0x10e

    :goto_f
    move v5, v0

    goto :goto_14

    :cond_11
    const/16 v0, 0x5a

    goto :goto_f

    .line 1621
    :goto_14
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "on image available, consume: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1622
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v6, p0, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;->mCaptureStartTimestamp:J

    sub-long/2addr v1, v6

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", format: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1623
    invoke-virtual {p1}, Landroid/media/Image;->getFormat()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", rotation: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1621
    const-string v6, "TEImage2Mode"

    invoke-static {v6, v0}, Lcom/ss/android/ttvecamera/TELogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1624
    iget-object v0, p0, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;->mCallback:Lcom/ss/android/ttvecamera/TECameraSettings$PictureCallback;

    if-eqz v0, :cond_ae

    .line 1625
    new-instance v0, Lcom/ss/android/ttvecamera/TECameraFrame;

    new-instance v1, Lcom/ss/android/ttvecamera/TEPlane;

    .line 1626
    invoke-virtual {p1}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/ss/android/ttvecamera/TEPlane;-><init>([Landroid/media/Image$Plane;)V

    .line 1627
    invoke-virtual {p1}, Landroid/media/Image;->getFormat()I

    move-result v2

    const/16 v7, 0x100

    if-ne v2, v7, :cond_6f

    sget-object v2, Lcom/ss/android/ttvecamera/TECameraFrame$ETEPixelFormat;->PIXEL_FORMAT_JPEG:Lcom/ss/android/ttvecamera/TECameraFrame$ETEPixelFormat;

    goto :goto_71

    :cond_6f
    sget-object v2, Lcom/ss/android/ttvecamera/TECameraFrame$ETEPixelFormat;->PIXEL_FORMAT_YUV420:Lcom/ss/android/ttvecamera/TECameraFrame$ETEPixelFormat;

    :goto_71
    invoke-direct/range {v0 .. v5}, Lcom/ss/android/ttvecamera/TECameraFrame;-><init>(Lcom/ss/android/ttvecamera/TEPlane;Lcom/ss/android/ttvecamera/TECameraFrame$ETEPixelFormat;III)V

    .line 1631
    invoke-virtual {p1}, Landroid/media/Image;->getFormat()I

    move-result v1

    const/16 v2, 0x23

    if-ne v1, v2, :cond_a7

    .line 1632
    new-instance v1, Lcom/ss/android/ttvecamera/TECameraFrame$Metadata;

    invoke-direct {v1}, Lcom/ss/android/ttvecamera/TECameraFrame$Metadata;-><init>()V

    .line 1633
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    iput-wide v7, v1, Lcom/ss/android/ttvecamera/TECameraFrame$Metadata;->timestamp:J

    .line 1634
    iput-object p2, v1, Lcom/ss/android/ttvecamera/TECameraFrame$Metadata;->captureResult:Landroid/hardware/camera2/TotalCaptureResult;

    .line 1635
    invoke-virtual {v0, v1}, Lcom/ss/android/ttvecamera/TECameraFrame;->setMetadata(Lcom/ss/android/ttvecamera/TECameraFrame$Metadata;)V

    mul-int p2, v3, v4

    mul-int/lit8 p2, p2, 0x3

    .line 1637
    div-int/lit8 p2, p2, 0x2

    new-array v1, p2, [B

    .line 1638
    invoke-static {p1, v1}, Lcom/ss/android/ttvecamera/TECameraUtils;->imageToNV21(Landroid/media/Image;[B)Z

    move-result p2

    if-eqz p2, :cond_a2

    .line 1640
    new-instance v0, Lcom/ss/android/ttvecamera/TECameraFrame;

    sget-object v2, Lcom/ss/android/ttvecamera/TECameraFrame$ETEPixelFormat;->PIXEL_FORMAT_NV21:Lcom/ss/android/ttvecamera/TECameraFrame$ETEPixelFormat;

    invoke-direct/range {v0 .. v5}, Lcom/ss/android/ttvecamera/TECameraFrame;-><init>([BLcom/ss/android/ttvecamera/TECameraFrame$ETEPixelFormat;III)V

    goto :goto_a7

    .line 1644
    :cond_a2
    const-string p2, "convert nv21 failed"

    invoke-static {v6, p2}, Lcom/ss/android/ttvecamera/TELogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1647
    :cond_a7
    :goto_a7
    iget-object p2, p0, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;->mCallback:Lcom/ss/android/ttvecamera/TECameraSettings$PictureCallback;

    iget-object v1, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraHolder:Lcom/ss/android/ttvecamera/TECamera2;

    invoke-interface {p2, v0, v1}, Lcom/ss/android/ttvecamera/TECameraSettings$PictureCallback;->onPictureTaken(Lcom/ss/android/ttvecamera/TECameraFrame;Lcom/ss/android/ttvecamera/TECameraBase;)V

    .line 1650
    :cond_ae
    iget-object p2, p0, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;->mCaptureBufferFrameCallback:Lcom/ss/android/ttvecamera/TECameraSettings$CaptureBufferFrameCallback;

    if-eqz p2, :cond_cc

    mul-int p2, v3, v4

    mul-int/lit8 p2, p2, 0x3

    .line 1651
    div-int/lit8 p2, p2, 0x2

    new-array p2, p2, [B

    .line 1652
    invoke-static {p1, p2}, Lcom/ss/android/ttvecamera/TECameraUtils;->imageToNV21(Landroid/media/Image;[B)Z

    move-result p1

    if-eqz p1, :cond_c6

    .line 1654
    iget-object p0, p0, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;->mCaptureBufferFrameCallback:Lcom/ss/android/ttvecamera/TECameraSettings$CaptureBufferFrameCallback;

    invoke-interface {p0, v3, v4, v5, p2}, Lcom/ss/android/ttvecamera/TECameraSettings$CaptureBufferFrameCallback;->onBufferFrameArrived(III[B)V

    return-void

    .line 1656
    :cond_c6
    iget-object p0, p0, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;->mCaptureBufferFrameCallback:Lcom/ss/android/ttvecamera/TECameraSettings$CaptureBufferFrameCallback;

    const/4 p1, 0x0

    invoke-interface {p0, v3, v4, v5, p1}, Lcom/ss/android/ttvecamera/TECameraSettings$CaptureBufferFrameCallback;->onBufferFrameArrived(III[B)V

    :cond_cc
    return-void
.end method

.method private resetPreviewAfterFlashCapture()V
    .registers 5

    const/4 v0, 0x0

    .line 1103
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 1081
    iget-object v1, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget v2, v1, Lcom/ss/android/ttvecamera/TECameraSettings;->mFacing:I

    if-eqz v2, :cond_c

    return-void

    .line 1085
    :cond_c
    iget-object v2, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCaptureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    if-nez v2, :cond_18

    .line 1086
    const-string p0, "TEImage2Mode"

    const-string v0, "resetPreviewAfterFlashCapture failed, no builder"

    invoke-static {p0, v0}, Lcom/ss/android/ttvecamera/TELogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1090
    :cond_18
    iget v1, v1, Lcom/ss/android/ttvecamera/TECameraSettings;->mCaptureFlashStrategy:I

    const/4 v3, 0x3

    if-ne v1, v3, :cond_37

    .line 1091
    iget-boolean v1, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraLightOn:Z

    if-eqz v1, :cond_4d

    .line 1092
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 1093
    iget-object v1, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCaptureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->FLASH_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_4d

    :cond_37
    const/4 v3, 0x2

    if-ne v1, v3, :cond_4d

    .line 1096
    iget-boolean v1, p0, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;->mSupportAutoFocus:Z

    if-eqz v1, :cond_4d

    .line 1097
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 1098
    iget-object v1, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCaptureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v2}, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->capture(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)Lcom/ss/android/ttvecamera/framework/TECameraModeBase$Response;

    .line 1102
    :cond_4d
    :goto_4d
    iget-boolean v1, p0, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;->mSupportAutoFocus:Z

    if-eqz v1, :cond_58

    .line 1103
    iget-object v1, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCaptureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v1, v2, v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 1105
    :cond_58
    iget-object v1, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCaptureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v3, 0x4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 1106
    iget-object v1, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCaptureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_PRECAPTURE_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v1, v2, v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 1107
    iget-object v0, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCaptureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {p0, v0}, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->updatePreview(Landroid/hardware/camera2/CaptureRequest$Builder;)Lcom/ss/android/ttvecamera/framework/TECameraModeBase$Response;

    return-void
.end method

.method private selectPictureSize(IIII)Lcom/ss/android/ttvecamera/TEFrameSizei;
    .registers 14

    .line 1415
    iget-object v0, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget-boolean v1, v0, Lcom/ss/android/ttvecamera/TECameraSettings;->mForceApplyPictureSize:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_c

    .line 1416
    iput-boolean v2, v0, Lcom/ss/android/ttvecamera/TECameraSettings;->mForceApplyPictureSize:Z

    .line 1417
    iget-object p0, v0, Lcom/ss/android/ttvecamera/TECameraSettings;->mPictureSize:Lcom/ss/android/ttvecamera/TEFrameSizei;

    return-object p0

    .line 1420
    :cond_c
    iget-object v0, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mStreamConfigurationMap:Landroid/hardware/camera2/params/StreamConfigurationMap;

    if-nez v0, :cond_1c

    .line 1421
    iget-object v0, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_STREAM_CONFIGURATION_MAP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/params/StreamConfigurationMap;

    iput-object v0, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mStreamConfigurationMap:Landroid/hardware/camera2/params/StreamConfigurationMap;

    .line 1424
    :cond_1c
    iget-object v0, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mStreamConfigurationMap:Landroid/hardware/camera2/params/StreamConfigurationMap;

    const/4 v1, 0x0

    const-string v3, "TEImage2Mode"

    if-nez v0, :cond_29

    .line 1425
    const-string p0, "no stream configuration map..."

    invoke-static {v3, p0}, Lcom/ss/android/ttvecamera/TELogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 1429
    :cond_29
    invoke-virtual {v0, p1}, Landroid/hardware/camera2/params/StreamConfigurationMap;->isOutputSupportedFor(I)Z

    move-result v0

    if-nez v0, :cond_35

    .line 1430
    const-string p0, "Output format is not supported"

    invoke-static {v3, p0}, Lcom/ss/android/ttvecamera/TELogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 1433
    :cond_35
    iget-object v0, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mStreamConfigurationMap:Landroid/hardware/camera2/params/StreamConfigurationMap;

    invoke-virtual {v0, p1}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputSizes(I)[Landroid/util/Size;

    move-result-object p1

    .line 1434
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1435
    array-length v4, p1

    move v5, v2

    :goto_42
    if-ge v5, v4, :cond_59

    aget-object v6, p1, v5

    .line 1436
    new-instance v7, Lcom/ss/android/ttvecamera/TEFrameSizei;

    invoke-virtual {v6}, Landroid/util/Size;->getWidth()I

    move-result v8

    invoke-virtual {v6}, Landroid/util/Size;->getHeight()I

    move-result v6

    invoke-direct {v7, v8, v6}, Lcom/ss/android/ttvecamera/TEFrameSizei;-><init>(II)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_42

    .line 1440
    :cond_59
    iget-object p1, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget-boolean v4, p1, Lcom/ss/android/ttvecamera/TECameraSettings;->mUseMaxWidthTakePicture:Z

    if-eqz v4, :cond_6c

    .line 1441
    invoke-virtual {p1}, Lcom/ss/android/ttvecamera/TECameraSettings;->getPreviewSize()Lcom/ss/android/ttvecamera/TEFrameSizei;

    move-result-object p1

    iget-object p0, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget p0, p0, Lcom/ss/android/ttvecamera/TECameraSettings;->mMaxWidthTakePictureSizeAccuracy:F

    invoke-static {v0, p1, p4, p0}, Lcom/ss/android/ttvecamera/TECameraUtils;->getClosestSupportedSize(Ljava/util/List;Lcom/ss/android/ttvecamera/TEFrameSizei;IF)Lcom/ss/android/ttvecamera/TEFrameSizei;

    move-result-object p0

    return-object p0

    .line 1446
    :cond_6c
    iget-object p1, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mPictureSizeCallback:Lcom/ss/android/ttvecamera/TECameraBase$PictureSizeCallBack;

    if-eqz p1, :cond_c1

    .line 1447
    const-class p1, Landroid/graphics/SurfaceTexture;

    invoke-static {p1}, Landroid/hardware/camera2/params/StreamConfigurationMap;->isOutputSupportedFor(Ljava/lang/Class;)Z

    move-result p4

    if-nez p4, :cond_7e

    .line 1448
    const-string p0, "Output SurfaceTexture is not supported"

    invoke-static {v3, p0}, Lcom/ss/android/ttvecamera/TELogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 1451
    :cond_7e
    iget-object p4, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mStreamConfigurationMap:Landroid/hardware/camera2/params/StreamConfigurationMap;

    invoke-virtual {p4, p1}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputSizes(Ljava/lang/Class;)[Landroid/util/Size;

    move-result-object p1

    .line 1452
    new-instance p4, Ljava/util/ArrayList;

    invoke-direct {p4}, Ljava/util/ArrayList;-><init>()V

    .line 1453
    array-length v4, p1

    :goto_8a
    if-ge v2, v4, :cond_a1

    aget-object v5, p1, v2

    .line 1454
    new-instance v6, Lcom/ss/android/ttvecamera/TEFrameSizei;

    invoke-virtual {v5}, Landroid/util/Size;->getWidth()I

    move-result v7

    invoke-virtual {v5}, Landroid/util/Size;->getHeight()I

    move-result v5

    invoke-direct {v6, v7, v5}, Lcom/ss/android/ttvecamera/TEFrameSizei;-><init>(II)V

    invoke-interface {p4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_8a

    .line 1457
    :cond_a1
    :try_start_a1
    iget-object p1, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mPictureSizeCallback:Lcom/ss/android/ttvecamera/TECameraBase$PictureSizeCallBack;

    invoke-interface {p1, v0, p4}, Lcom/ss/android/ttvecamera/TECameraBase$PictureSizeCallBack;->getPictureSize(Ljava/util/List;Ljava/util/List;)Lcom/ss/android/ttvecamera/TEFrameSizei;

    move-result-object v1
    :try_end_a7
    .catch Ljava/lang/Exception; {:try_start_a1 .. :try_end_a7} :catch_a8

    goto :goto_c1

    :catch_a8
    move-exception p1

    .line 1459
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "select pic size from client err: "

    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/ss/android/ttvecamera/TELogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_c1
    :goto_c1
    if-nez v1, :cond_e6

    .line 1464
    iget-object p0, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    invoke-virtual {p0}, Lcom/ss/android/ttvecamera/TECameraSettings;->getPreviewSize()Lcom/ss/android/ttvecamera/TEFrameSizei;

    move-result-object p0

    new-instance p1, Lcom/ss/android/ttvecamera/TEFrameSizei;

    invoke-direct {p1, p2, p3}, Lcom/ss/android/ttvecamera/TEFrameSizei;-><init>(II)V

    invoke-static {v0, p0, p1}, Lcom/ss/android/ttvecamera/TECameraUtils;->getClosestSupportedSize(Ljava/util/List;Lcom/ss/android/ttvecamera/TEFrameSizei;Lcom/ss/android/ttvecamera/TEFrameSizei;)Lcom/ss/android/ttvecamera/TEFrameSizei;

    move-result-object v1

    .line 1465
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "select pic size is null, get closest size: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lcom/ss/android/ttvecamera/TELogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_e6
    return-object v1
.end method

.method private syncPreviewParam(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 6

    .line 1016
    const-string v0, "TEImage2Mode"

    if-nez p1, :cond_a

    .line 1017
    const-string p0, "syncPreviewParam failed, no capture builder"

    invoke-static {v0, p0}, Lcom/ss/android/ttvecamera/TELogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1021
    :cond_a
    iget-object v1, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCaptureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    if-nez v1, :cond_14

    .line 1022
    const-string p0, "syncPreviewParam failed, no preview builder"

    invoke-static {v0, p0}, Lcom/ss/android/ttvecamera/TELogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1027
    :cond_14
    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-eqz v1, :cond_35

    .line 1029
    invoke-virtual {p1, v2, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 1030
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sync afMode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ss/android/ttvecamera/TELogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1034
    :cond_35
    iget-object v1, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCaptureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_REGIONS:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/hardware/camera2/params/MeteringRectangle;

    if-eqz v1, :cond_5c

    .line 1036
    invoke-virtual {p1, v2, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 1037
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sync aeRect: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/ss/android/ttvecamera/TELogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1039
    :cond_5c
    iget-object v2, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCaptureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_REGIONS:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v2, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/hardware/camera2/params/MeteringRectangle;

    if-eqz v1, :cond_83

    .line 1041
    invoke-virtual {p1, v3, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 1042
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sync afRect: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ss/android/ttvecamera/TELogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1046
    :cond_83
    iget-object v1, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCaptureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {p0, v1, p1}, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;->setTakingPictureFlashMode(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 1049
    iget-object v1, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCaptureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_TARGET_FPS_RANGE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Range;

    if-eqz v1, :cond_ab

    .line 1051
    invoke-virtual {p1, v2, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 1052
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sync fpsRange: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ss/android/ttvecamera/TELogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1056
    :cond_ab
    iget-object v1, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mZoomSize:Landroid/graphics/Rect;

    if-eqz v1, :cond_ca

    .line 1057
    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->SCALER_CROP_REGION:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p1, v2, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 1058
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sync crop region: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mZoomSize:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ss/android/ttvecamera/TELogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1062
    :cond_ca
    iget-object v0, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mDeviceProxy:Lcom/ss/android/ttvecamera/hardware/TECameraHardware2Proxy;

    if-eqz v0, :cond_d4

    .line 1063
    iget-object v1, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lcom/ss/android/ttvecamera/hardware/TECameraHardware2Proxy;->configStabilization(Landroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/camera2/CaptureRequest$Builder;Z)I

    .line 1066
    :cond_d4
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_EXPOSURE_COMPENSATION:Landroid/hardware/camera2/CaptureRequest$Key;

    iget p0, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mExposureCompensation:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public cancelAFTrigger()V
    .registers 4

    .line 879
    iget-object v0, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCaptureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_39

    .line 880
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_39

    .line 881
    const-string v0, "TEImage2Mode"

    const-string v2, "need cancel af trigger"

    invoke-static {v0, v2}, Lcom/ss/android/ttvecamera/TELogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 884
    iget-object v0, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCaptureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 885
    iget-object v0, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCaptureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, v2}, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->capture(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)Lcom/ss/android/ttvecamera/framework/TECameraModeBase$Response;

    .line 888
    iget-object v0, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCaptureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 889
    iget-object v0, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCaptureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {p0, v0}, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->updatePreview(Landroid/hardware/camera2/CaptureRequest$Builder;)Lcom/ss/android/ttvecamera/framework/TECameraModeBase$Response;

    :cond_39
    return-void
.end method

.method public captureBurst(Lcom/ss/android/ttvecamera/model/BurstRequest;ILcom/ss/android/ttvecamera/TECameraSettings$CaptureBufferFrameCallback;)V
    .registers 11

    .line 674
    iget v0, p1, Lcom/ss/android/ttvecamera/model/BurstRequest;->imageWidth:I

    const/4 v1, 0x1

    if-eqz v0, :cond_d

    iget-object v2, p0, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;->mImageReader:Landroid/media/ImageReader;

    invoke-virtual {v2}, Landroid/media/ImageReader;->getWidth()I

    move-result v2

    if-ne v0, v2, :cond_19

    :cond_d
    iget v0, p1, Lcom/ss/android/ttvecamera/model/BurstRequest;->imageHeight:I

    if-eqz v0, :cond_2b

    iget-object v2, p0, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;->mImageReader:Landroid/media/ImageReader;

    .line 675
    invoke-virtual {v2}, Landroid/media/ImageReader;->getHeight()I

    move-result v2

    if-eq v0, v2, :cond_2b

    .line 676
    :cond_19
    const-string v0, "TEImage2Mode"

    const-string v2, "restart preview for burst capture"

    invoke-static {v0, v2}, Lcom/ss/android/ttvecamera/TELogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 677
    iget-object v0, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iput-boolean v1, v0, Lcom/ss/android/ttvecamera/TECameraSettings;->mUseSyncModeOnCamera2:Z

    .line 678
    iget v0, p1, Lcom/ss/android/ttvecamera/model/BurstRequest;->imageWidth:I

    iget v2, p1, Lcom/ss/android/ttvecamera/model/BurstRequest;->imageHeight:I

    invoke-virtual {p0, v0, v2}, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;->setPictureSize(II)I

    :cond_2b
    const/4 v0, 0x0

    .line 681
    iput-object v0, p0, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;->mCallback:Lcom/ss/android/ttvecamera/TECameraSettings$PictureCallback;

    .line 682
    iput-object p3, p0, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;->mCaptureBufferFrameCallback:Lcom/ss/android/ttvecamera/TECameraSettings$CaptureBufferFrameCallback;

    .line 683
    iput p2, p0, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;->mCameraFacing:I

    .line 684
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    iput-wide p2, p0, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;->mCaptureStartTimestamp:J

    .line 686
    iget-object p2, p0, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;->mImageReader:Landroid/media/ImageReader;

    invoke-virtual {p2}, Landroid/media/ImageReader;->getWidth()I

    move-result p2

    .line 687
    iget-object p3, p0, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;->mImageReader:Landroid/media/ImageReader;

    invoke-virtual {p3}, Landroid/media/ImageReader;->getHeight()I

    move-result p3

    .line 688
    iget-object v2, p1, Lcom/ss/android/ttvecamera/model/BurstRequest;->aeExposureValues:Ljava/util/List;

    .line 690
    new-instance v3, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode$2;

    invoke-direct {v3, p0, p2, p3}, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode$2;-><init>(Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;II)V

    .line 714
    iget p2, p1, Lcom/ss/android/ttvecamera/model/BurstRequest;->burstType:I

    const/4 p3, 0x2

    if-ne p2, v1, :cond_91

    .line 715
    new-instance p1, Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result p2

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    .line 716
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_5d
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8d

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 717
    invoke-virtual {p0, p3}, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->createCaptureRequestBuilder(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v2

    .line 718
    invoke-direct {p0, v2}, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;->syncPreviewParam(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 719
    sget-object v4, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_EXPOSURE_COMPENSATION:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v2, v4, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 720
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_LOCK:Landroid/hardware/camera2/CaptureRequest$Key;

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v2, v1, v4}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 721
    iget-object v1, p0, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;->mImageReader:Landroid/media/ImageReader;

    invoke-virtual {v1}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 722
    invoke-virtual {v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5d

    .line 725
    :cond_8d
    invoke-virtual {p0, p1, v3, v0}, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->captureBurst(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)Lcom/ss/android/ttvecamera/framework/TECameraModeBase$Response;

    return-void

    :cond_91
    if-nez p2, :cond_e9

    .line 727
    iget-boolean p2, p1, Lcom/ss/android/ttvecamera/model/BurstRequest;->canStopRepeating:Z

    if-eqz p2, :cond_9a

    .line 728
    invoke-virtual {p0}, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->stopRepeating()Lcom/ss/android/ttvecamera/framework/TECameraModeBase$Response;

    .line 732
    :cond_9a
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result p2

    const/4 v1, 0x0

    :goto_9f
    if-ge v1, p2, :cond_e0

    .line 734
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 735
    invoke-virtual {p0, p3}, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->createCaptureRequestBuilder(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v5

    .line 736
    invoke-direct {p0, v5}, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;->syncPreviewParam(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 737
    sget-object v6, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_EXPOSURE_COMPENSATION:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v5, v6, v4}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 738
    sget-object v4, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_LOCK:Landroid/hardware/camera2/CaptureRequest$Key;

    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v5, v4, v6}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 739
    iget-object v4, p0, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;->mImageReader:Landroid/media/ImageReader;

    invoke-virtual {v4}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 740
    invoke-virtual {v5}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v4

    invoke-virtual {p0, v4, v3, v0}, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)Lcom/ss/android/ttvecamera/framework/TECameraModeBase$Response;

    if-lez v1, :cond_dd

    add-int/lit8 v4, p2, -0x1

    if-ge v1, v4, :cond_dd

    .line 742
    iget v4, p1, Lcom/ss/android/ttvecamera/model/BurstRequest;->frameInterval:I

    if-lez v4, :cond_dd

    int-to-long v4, v4

    .line 744
    :try_start_d5
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_d8
    .catch Ljava/lang/InterruptedException; {:try_start_d5 .. :try_end_d8} :catch_d9

    goto :goto_dd

    :catch_d9
    move-exception v4

    .line 746
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_dd
    :goto_dd
    add-int/lit8 v1, v1, 0x1

    goto :goto_9f

    .line 751
    :cond_e0
    iget-boolean p1, p1, Lcom/ss/android/ttvecamera/model/BurstRequest;->canStopRepeating:Z

    if-eqz p1, :cond_e9

    .line 752
    iget-object p1, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCaptureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {p0, p1}, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->updatePreview(Landroid/hardware/camera2/CaptureRequest$Builder;)Lcom/ss/android/ttvecamera/framework/TECameraModeBase$Response;

    :cond_e9
    return-void
.end method

.method public closePreviewSession()V
    .registers 6

    const/4 v0, 0x0

    .line 1254
    iput v0, p0, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;->mState:I

    .line 1255
    iget-object v1, p0, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;->mHandHelper:Lcom/ss/android/ttvecamera/camera2/TEImage2Mode$HandlerHelper;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1256
    iget-object v1, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraThreadHandler:Landroid/os/Handler;

    if-eqz v1, :cond_10

    .line 1257
    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_10
    const-wide/16 v3, 0x0

    .line 1259
    iput-wide v3, p0, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;->mWaitingAfAeConvergeStartTimestamp:J

    .line 1260
    iput-boolean v0, p0, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;->mIsShotCanDoOnAfAeConverge:Z

    .line 1261
    iput v0, p0, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;->mCountCaptureFrame:I

    const/4 v1, -0x1

    .line 1262
    iput v1, p0, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;->mCurrentFlashMode:I

    .line 1263
    iput-object v2, p0, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;->mCaptureResultCache:Landroid/hardware/camera2/TotalCaptureResult;

    .line 1264
    iput-boolean v0, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraLightOn:Z

    .line 1266
    iget-object v0, p0, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;->mImageReader:Landroid/media/ImageReader;

    if-eqz v0, :cond_28

    .line 1267
    invoke-virtual {v0}, Landroid/media/ImageReader;->close()V

    .line 1268
    iput-object v2, p0, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;->mImageReader:Landroid/media/ImageReader;

    .line 1271
    :cond_28
    iget-object v0, p0, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;->mZslImageReader:Landroid/media/ImageReader;

    if-eqz v0, :cond_31

    .line 1272
    invoke-virtual {v0}, Landroid/media/ImageReader;->close()V

    .line 1273
    iput-object v2, p0, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;->mZslImageReader:Landroid/media/ImageReader;

    .line 1276
    :cond_31
    iput-object v2, p0, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;->mZslBufferMetadataCache:[Landroid/hardware/camera2/TotalCaptureResult;

    .line 1277
    iput-object v2, p0, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;->mCallback:Lcom/ss/android/ttvecamera/TECameraSettings$PictureCallback;

    .line 1278
    iput-object v2, p0, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;->mCaptureBufferFrameCallback:Lcom/ss/android/ttvecamera/TECameraSettings$CaptureBufferFrameCallback;

    .line 1279
    iput-object v2, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCaptureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 1281
    invoke-super {p0}, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->closePreviewSession()V

    return-void
.end method

.method protected configFps(Landroid/util/Range;)Landroid/util/Range;
    .registers 11
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

    .line 316
    iget-object v0, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    if-eqz v0, :cond_ef

    if-eqz p1, :cond_ef

    iget-object v1, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget-boolean v1, v1, Lcom/ss/android/ttvecamera/TECameraSettings;->mEnableCameraFpsDoubleCheckInImageMode:Z

    if-nez v1, :cond_e

    goto/16 :goto_ef

    .line 321
    :cond_e
    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_AVAILABLE_TARGET_FPS_RANGES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/util/Range;

    if-nez v0, :cond_19

    return-object p1

    .line 328
    :cond_19
    iget-object v1, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mFpsConfigCallback:Lcom/ss/android/ttvecamera/TECameraBase$CameraFpsConfigCallback;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_64

    .line 329
    new-instance v1, Ljava/util/ArrayList;

    array-length v5, v0

    invoke-direct {v1, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 330
    array-length v5, v0

    move v6, v3

    :goto_28
    if-ge v6, v5, :cond_4a

    aget-object v7, v0, v6

    .line 332
    invoke-virtual {v7}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 333
    invoke-virtual {v7}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    filled-new-array {v8, v7}, [I

    move-result-object v7

    .line 334
    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_28

    .line 336
    :cond_4a
    iget-object v5, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mFpsConfigCallback:Lcom/ss/android/ttvecamera/TECameraBase$CameraFpsConfigCallback;

    invoke-interface {v5, v1}, Lcom/ss/android/ttvecamera/TECameraBase$CameraFpsConfigCallback;->config(Ljava/util/List;)[I

    move-result-object v1

    if-eqz v1, :cond_64

    .line 338
    new-instance v5, Landroid/util/Range;

    aget v6, v1, v3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aget v1, v1, v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v5, v6, v1}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    goto :goto_65

    :cond_64
    move-object v5, v2

    .line 341
    :goto_65
    const-string v1, "TEImage2Mode"

    if-eqz v5, :cond_7e

    .line 342
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "select fps from user callback: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/ss/android/ttvecamera/TELogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object v5

    .line 347
    :cond_7e
    iget-object v6, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget v6, v6, Lcom/ss/android/ttvecamera/TECameraSettings;->mCameraFrameRateStrategy:I

    const/4 v7, 0x4

    if-ne v6, v7, :cond_ae

    .line 348
    new-instance v6, Landroid/util/Range;

    iget-object v7, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget-object v7, v7, Lcom/ss/android/ttvecamera/TECameraSettings;->mFPSRange:Lcom/ss/android/ttvecamera/TEFrameRateRange;

    iget v7, v7, Lcom/ss/android/ttvecamera/TEFrameRateRange;->min:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget-object v8, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget-object v8, v8, Lcom/ss/android/ttvecamera/TECameraSettings;->mFPSRange:Lcom/ss/android/ttvecamera/TEFrameRateRange;

    iget v8, v8, Lcom/ss/android/ttvecamera/TEFrameRateRange;->max:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    .line 349
    array-length v7, v0

    :goto_9f
    if-ge v3, v7, :cond_ae

    aget-object v8, v0, v3

    .line 350
    invoke-virtual {v6, v8}, Landroid/util/Range;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_ab

    move-object v5, v6

    goto :goto_ae

    :cond_ab
    add-int/lit8 v3, v3, 0x1

    goto :goto_9f

    :cond_ae
    :goto_ae
    if-eqz v5, :cond_c5

    .line 357
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "select fps from user direct set: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/ss/android/ttvecamera/TELogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object v5

    .line 362
    :cond_c5
    iget v3, p0, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;->mCurrentCameraScene:I

    if-nez v3, :cond_ce

    .line 363
    invoke-direct {p0, v0}, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;->getMaxDistanceFpsRange([Landroid/util/Range;)Landroid/util/Range;

    move-result-object v2

    goto :goto_d4

    :cond_ce
    if-ne v3, v4, :cond_d4

    .line 365
    invoke-direct {p0, v0}, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;->getMaxFixFpsRange([Landroid/util/Range;)Landroid/util/Range;

    move-result-object v2

    :cond_d4
    :goto_d4
    if-eqz v2, :cond_d7

    move-object v5, v2

    :cond_d7
    if-nez v5, :cond_da

    goto :goto_db

    :cond_da
    move-object p1, v5

    .line 373
    :goto_db
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "select fps: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/ss/android/ttvecamera/TELogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_ef
    :goto_ef
    return-object p1
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

    .line 1208
    const-string v0, "TEImage2Mode-createSession"

    invoke-static {v0}, Lcom/ss/android/ttvecamera/TETraceUtils;->beginSection(Ljava/lang/String;)V

    .line 1210
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1211
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_23

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/Surface;

    .line 1212
    new-instance v3, Landroid/hardware/camera2/params/OutputConfiguration;

    invoke-direct {v3, v2}, Landroid/hardware/camera2/params/OutputConfiguration;-><init>(Landroid/view/Surface;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_e

    .line 1214
    :cond_23
    new-instance v1, Landroid/hardware/camera2/params/SessionConfiguration;

    invoke-virtual {p0, p1}, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->getSessionType(Ljava/util/List;)I

    move-result p1

    new-instance v2, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode$5;

    invoke-direct {v2, p0, p3}, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode$5;-><init>(Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;Landroid/os/Handler;)V

    invoke-direct {v1, p1, v0, v2, p2}, Landroid/hardware/camera2/params/SessionConfiguration;-><init>(ILjava/util/List;Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;)V

    .line 1227
    new-instance p1, Landroid/util/Range;

    iget-object p2, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mFpsRange:Lcom/ss/android/ttvecamera/TEFrameRateRange;

    iget p2, p2, Lcom/ss/android/ttvecamera/TEFrameRateRange;->min:I

    iget-object p3, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget-object p3, p3, Lcom/ss/android/ttvecamera/TECameraSettings;->mFPSRange:Lcom/ss/android/ttvecamera/TEFrameRateRange;

    iget p3, p3, Lcom/ss/android/ttvecamera/TEFrameRateRange;->fpsUnitFactor:I

    div-int/2addr p2, p3

    .line 1228
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    iget-object p3, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mFpsRange:Lcom/ss/android/ttvecamera/TEFrameRateRange;

    iget p3, p3, Lcom/ss/android/ttvecamera/TEFrameRateRange;->max:I

    iget-object v0, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget-object v0, v0, Lcom/ss/android/ttvecamera/TECameraSettings;->mFPSRange:Lcom/ss/android/ttvecamera/TEFrameRateRange;

    iget v0, v0, Lcom/ss/android/ttvecamera/TEFrameRateRange;->fpsUnitFactor:I

    div-int/2addr p3, v0

    .line 1229
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-direct {p1, p2, p3}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    .line 1230
    invoke-virtual {p0, p1}, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;->configFps(Landroid/util/Range;)Landroid/util/Range;

    move-result-object p1

    .line 1231
    iget-object p2, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCaptureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object p3, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_TARGET_FPS_RANGE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p2, p3, p1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 1234
    iget p1, p0, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;->mCurrentFlashMode:I

    invoke-virtual {p0, p1}, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;->updateFlashModeParam(I)V

    .line 1236
    iget-object p1, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCaptureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/hardware/camera2/params/SessionConfiguration;->setSessionParameters(Landroid/hardware/camera2/CaptureRequest;)V

    .line 1237
    const-string p1, "TEImage2Mode"

    const-string p2, "createSession by sessionConfiguration"

    invoke-static {p1, p2}, Lcom/ss/android/ttvecamera/TELogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1238
    iget-object p0, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    invoke-virtual {p0, v1}, Landroid/hardware/camera2/CameraDevice;->createCaptureSession(Landroid/hardware/camera2/params/SessionConfiguration;)V

    .line 1243
    invoke-static {}, Lcom/ss/android/ttvecamera/TETraceUtils;->endSection()V

    return-void
.end method

.method public focusAtPoint(Lcom/ss/android/ttvecamera/TEFocusSettings;)I
    .registers 3

    .line 665
    iget v0, p0, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;->mState:I

    if-eqz v0, :cond_1f

    .line 666
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "focus action discard, state = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;->mState:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "TEImage2Mode"

    invoke-static {p1, p0}, Lcom/ss/android/ttvecamera/TELogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, -0x6c

    return p0

    .line 669
    :cond_1f
    invoke-super {p0, p1}, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->focusAtPoint(Lcom/ss/android/ttvecamera/TEFocusSettings;)I

    move-result p0

    return p0
.end method

.method public getCameraCaptureSize()[I
    .registers 4

    .line 193
    iget-object v0, p0, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;->mImageReader:Landroid/media/ImageReader;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return-object v1

    .line 198
    :cond_6
    invoke-virtual {v0}, Landroid/media/ImageReader;->getWidth()I

    move-result v0

    .line 199
    iget-object p0, p0, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;->mImageReader:Landroid/media/ImageReader;

    invoke-virtual {p0}, Landroid/media/ImageReader;->getHeight()I

    move-result p0

    if-lez v0, :cond_1d

    if-lez p0, :cond_1d

    const/4 v1, 0x2

    .line 201
    new-array v1, v1, [I

    const/4 v2, 0x0

    .line 202
    aput v0, v1, v2

    const/4 v0, 0x1

    .line 203
    aput p0, v1, v0

    :cond_1d
    return-object v1
.end method

.method protected getContinuousFocusMode()I
    .registers 1

    const/4 p0, 0x4

    return p0
.end method

.method public getFlashMode()I
    .registers 1

    .line 1472
    iget p0, p0, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;->mCurrentFlashMode:I

    return p0
.end method

.method public getPictureSize()[I
    .registers 2

    .line 226
    iget-object v0, p0, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;->mImageReader:Landroid/media/ImageReader;

    if-nez v0, :cond_6

    const/4 p0, 0x0

    return-object p0

    .line 231
    :cond_6
    invoke-virtual {v0}, Landroid/media/ImageReader;->getWidth()I

    move-result v0

    .line 232
    iget-object p0, p0, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;->mImageReader:Landroid/media/ImageReader;

    invoke-virtual {p0}, Landroid/media/ImageReader;->getHeight()I

    move-result p0

    filled-new-array {v0, p0}, [I

    move-result-object p0

    return-object p0
.end method

.method public openCamera(Ljava/lang/String;I)I
    .registers 6

    const/4 v0, 0x0

    .line 1286
    iput v0, p0, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;->mCurrentCameraScene:I

    const/4 v1, 0x0

    .line 1287
    iput-object v1, p0, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;->mAvailableSessionKeys:Ljava/util/List;

    .line 1288
    iget v1, p0, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;->mCurrentFlashMode:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_d

    .line 1289
    iput v0, p0, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;->mCurrentFlashMode:I

    .line 1291
    :cond_d
    invoke-super {p0, p1, p2}, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->openCamera(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public rollbackMeteringSessionRequest()I
    .registers 5

    .line 1296
    iget-object v0, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCaptureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    if-nez v0, :cond_14

    .line 1297
    iget-object v0, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraEvents:Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;

    iget-object v1, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget v1, v1, Lcom/ss/android/ttvecamera/TECameraSettings;->mCameraType:I

    const-string v2, "rollbackMeteringSessionRequest : param is null."

    iget-object p0, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    const/16 v3, -0x64

    invoke-interface {v0, v1, v3, v2, p0}, Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;->onCameraError(IILjava/lang/String;Ljava/lang/Object;)V

    return v3

    .line 1302
    :cond_14
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_PRECAPTURE_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 1304
    invoke-super {p0}, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->rollbackMeteringSessionRequest()I

    move-result p0

    return p0
.end method

.method public setPictureSize(II)I
    .registers 5

    .line 210
    iget-object v0, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/ss/android/ttvecamera/TECameraSettings;->mForceApplyPictureSize:Z

    .line 211
    iget-object v0, v0, Lcom/ss/android/ttvecamera/TECameraSettings;->mPictureSize:Lcom/ss/android/ttvecamera/TEFrameSizei;

    iput p1, v0, Lcom/ss/android/ttvecamera/TEFrameSizei;->width:I

    .line 212
    iput p2, v0, Lcom/ss/android/ttvecamera/TEFrameSizei;->height:I

    .line 213
    invoke-virtual {p0}, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;->closePreviewSession()V

    .line 216
    :try_start_e
    invoke-virtual {p0}, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;->startPreview()I

    move-result p0
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_12} :catch_13

    return p0

    :catch_13
    move-exception p0

    .line 219
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p0, -0x1

    return p0
.end method

.method public setSceneMode(I)V
    .registers 4

    .line 238
    iput p1, p0, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;->mCurrentCameraScene:I

    .line 239
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setSceneMode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TEImage2Mode"

    invoke-static {v1, v0}, Lcom/ss/android/ttvecamera/TELogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_1e

    .line 241
    invoke-direct {p0}, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;->applyCaptureScene()V

    return-void

    :cond_1e
    const/4 v0, 0x1

    if-ne p1, v0, :cond_25

    .line 243
    invoke-direct {p0}, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;->applyRecordScene()V

    return-void

    .line 245
    :cond_25
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "un support scene"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setTakingPictureFlashMode(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 8

    const/4 p0, 0x1

    .line 1602
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 1599
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p1, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    if-eqz v2, :cond_23

    .line 1600
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_23

    .line 1601
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p2, v1, p0}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 1602
    sget-object p0, Landroid/hardware/camera2/CaptureRequest;->FLASH_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p2, p0, v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    return-void

    :cond_23
    if-eqz v2, :cond_46

    .line 1603
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, p0, :cond_46

    .line 1604
    sget-object p0, Landroid/hardware/camera2/CaptureRequest;->FLASH_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p1, p0}, Landroid/hardware/camera2/CaptureRequest$Builder;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_46

    .line 1605
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v2, 0x2

    if-ne p1, v2, :cond_46

    .line 1606
    invoke-virtual {p2, v1, v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 1607
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p0, p1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :cond_46
    return-void
.end method

.method protected setupImageReader(II)V
    .registers 14

    .line 1317
    iget-object v0, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget-boolean v1, v0, Lcom/ss/android/ttvecamera/TECameraSettings;->mEnableYuvBufferCapture:Z

    const/16 v2, 0x23

    const/16 v3, 0x100

    if-nez v1, :cond_11

    iget-boolean v1, v0, Lcom/ss/android/ttvecamera/TECameraSettings;->mEnableCamera2Zsl:Z

    if-eqz v1, :cond_f

    goto :goto_11

    :cond_f
    move v1, v3

    goto :goto_12

    :cond_11
    :goto_11
    move v1, v2

    .line 1321
    :goto_12
    iget v0, v0, Lcom/ss/android/ttvecamera/TECameraSettings;->mMaxWidth:I

    invoke-direct {p0, v1, p1, p2, v0}, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;->selectPictureSize(IIII)Lcom/ss/android/ttvecamera/TEFrameSizei;

    move-result-object p1

    .line 1322
    const-string p2, "TEImage2Mode"

    if-nez p1, :cond_31

    .line 1323
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "select picture size failed...format: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Lcom/ss/android/ttvecamera/TELogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1327
    :cond_31
    iget-object v0, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iput-object p1, v0, Lcom/ss/android/ttvecamera/TECameraSettings;->mPictureSize:Lcom/ss/android/ttvecamera/TEFrameSizei;

    .line 1328
    iget v4, p1, Lcom/ss/android/ttvecamera/TEFrameSizei;->width:I

    .line 1329
    iget p1, p1, Lcom/ss/android/ttvecamera/TEFrameSizei;->height:I

    .line 1333
    iget-boolean v0, v0, Lcom/ss/android/ttvecamera/TECameraSettings;->mEnableCamera2Zsl:Z

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v0, :cond_5d

    const/16 v0, 0x1000

    if-gt v4, v0, :cond_5d

    if-ne v1, v2, :cond_5d

    const/4 v0, 0x5

    .line 1335
    new-array v0, v0, [Landroid/hardware/camera2/TotalCaptureResult;

    iput-object v0, p0, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;->mZslBufferMetadataCache:[Landroid/hardware/camera2/TotalCaptureResult;

    const/4 v0, 0x3

    .line 1336
    invoke-static {v4, p1, v1, v0}, Landroid/media/ImageReader;->newInstance(IIII)Landroid/media/ImageReader;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;->mZslImageReader:Landroid/media/ImageReader;

    .line 1337
    new-instance v2, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode$6;

    invoke-direct {v2, p0}, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode$6;-><init>(Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;)V

    iget-object v7, p0, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;->mUiHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2, v7}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    move v0, v6

    goto :goto_5e

    :cond_5d
    move v0, v5

    :goto_5e
    if-eqz v0, :cond_99

    .line 1372
    iget-object v2, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mStreamConfigurationMap:Landroid/hardware/camera2/params/StreamConfigurationMap;

    invoke-virtual {v2, v3}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputSizes(I)[Landroid/util/Size;

    move-result-object v2

    const/4 v7, 0x0

    if-eqz v2, :cond_7e

    .line 1375
    array-length v8, v2

    :goto_6a
    if-ge v5, v8, :cond_7e

    aget-object v9, v2, v5

    .line 1376
    invoke-virtual {v9}, Landroid/util/Size;->getWidth()I

    move-result v10

    if-ne v10, v4, :cond_7b

    invoke-virtual {v9}, Landroid/util/Size;->getHeight()I

    move-result v10

    if-ne v10, p1, :cond_7b

    goto :goto_7f

    :cond_7b
    add-int/lit8 v5, v5, 0x1

    goto :goto_6a

    :cond_7e
    move-object v9, v7

    :goto_7f
    if-nez v9, :cond_90

    .line 1384
    iput-object v7, p0, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;->mZslBufferMetadataCache:[Landroid/hardware/camera2/TotalCaptureResult;

    .line 1385
    iget-object v2, p0, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;->mZslImageReader:Landroid/media/ImageReader;

    invoke-virtual {v2, v7, v7}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    .line 1386
    iget-object v2, p0, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;->mZslImageReader:Landroid/media/ImageReader;

    invoke-virtual {v2}, Landroid/media/ImageReader;->close()V

    .line 1387
    iput-object v7, p0, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;->mZslImageReader:Landroid/media/ImageReader;

    goto :goto_99

    .line 1391
    :cond_90
    invoke-virtual {v9}, Landroid/util/Size;->getWidth()I

    move-result v4

    .line 1392
    invoke-virtual {v9}, Landroid/util/Size;->getHeight()I

    move-result p1

    goto :goto_9a

    :cond_99
    :goto_99
    move v3, v1

    .line 1396
    :goto_9a
    invoke-static {v4, p1, v3, v6}, Landroid/media/ImageReader;->newInstance(IIII)Landroid/media/ImageReader;

    move-result-object p1

    iput-object p1, p0, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;->mImageReader:Landroid/media/ImageReader;

    .line 1397
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "image reader width: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;->mImageReader:Landroid/media/ImageReader;

    invoke-virtual {v1}, Landroid/media/ImageReader;->getWidth()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", height = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;->mImageReader:Landroid/media/ImageReader;

    invoke-virtual {v1}, Landroid/media/ImageReader;->getHeight()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", format: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", maxWidth: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget v1, v1, Lcom/ss/android/ttvecamera/TECameraSettings;->mMaxWidth:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", hasZslYuvSurface: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/ss/android/ttvecamera/TELogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1399
    iget-object p1, p0, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;->mImageReader:Landroid/media/ImageReader;

    new-instance p2, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode$7;

    invoke-direct {p2, p0}, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode$7;-><init>(Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;)V

    iget-object p0, p0, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;->mUiHandler:Landroid/os/Handler;

    invoke-virtual {p1, p2, p0}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    return-void
.end method

.method public startPreview()I
    .registers 10

    .line 1112
    const-string v0, "TEImage2Mode-startPreview"

    invoke-static {v0}, Lcom/ss/android/ttvecamera/TETraceUtils;->beginSection(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1113
    iput-boolean v0, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraLightOn:Z

    .line 1114
    iget-object v1, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->LENS_INFO_MINIMUM_FOCUS_DISTANCE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v1, v2}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    if-nez v1, :cond_16

    move v1, v0

    goto :goto_1a

    .line 1115
    :cond_16
    invoke-virtual {v1}, Ljava/lang/Float;->intValue()I

    move-result v1

    .line 1116
    :goto_1a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "lensInfoMinFocusDistance = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "TEImage2Mode"

    invoke-static {v3, v2}, Lcom/ss/android/ttvecamera/TELogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x1

    if-eqz v1, :cond_35

    move v1, v2

    goto :goto_36

    :cond_35
    move v1, v0

    .line 1117
    :goto_36
    iput-boolean v1, p0, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;->mSupportAutoFocus:Z

    .line 1118
    iget-object v1, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraHolder:Lcom/ss/android/ttvecamera/TECamera2;

    invoke-virtual {v1}, Lcom/ss/android/ttvecamera/TECameraBase;->getProviderManager()Lcom/ss/android/ttvecamera/provider/TECameraProviderManager;

    move-result-object v1

    .line 1119
    iget-object v4, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    if-eqz v4, :cond_198

    if-nez v1, :cond_46

    goto/16 :goto_198

    .line 1124
    :cond_46
    iget-object v4, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget-boolean v4, v4, Lcom/ss/android/ttvecamera/TECameraSettings;->mBindSurfaceLifecycleToCamera:Z

    if-eqz v4, :cond_64

    .line 1125
    invoke-virtual {v1}, Lcom/ss/android/ttvecamera/provider/TECameraProviderManager;->getProvider()Lcom/ss/android/ttvecamera/provider/TECameraProvider;

    move-result-object v4

    if-eqz v4, :cond_5f

    .line 1126
    invoke-virtual {v1}, Lcom/ss/android/ttvecamera/provider/TECameraProviderManager;->getProvider()Lcom/ss/android/ttvecamera/provider/TECameraProvider;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ss/android/ttvecamera/provider/TECameraProvider;->reAllocateSurfaceTexture()V

    .line 1127
    const-string v4, "reallocate st..."

    invoke-static {v3, v4}, Lcom/ss/android/ttvecamera/TELogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_64

    .line 1129
    :cond_5f
    const-string v4, "reallocate st...err"

    invoke-static {v3, v4}, Lcom/ss/android/ttvecamera/TELogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1133
    :cond_64
    :goto_64
    invoke-super {p0}, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->prepareProvider()I

    move-result v4

    if-eqz v4, :cond_6b

    return v4

    .line 1138
    :cond_6b
    iget-object v4, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget-object v4, v4, Lcom/ss/android/ttvecamera/TECameraSettings;->mPictureSize:Lcom/ss/android/ttvecamera/TEFrameSizei;

    iget v5, v4, Lcom/ss/android/ttvecamera/TEFrameSizei;->width:I

    iget v4, v4, Lcom/ss/android/ttvecamera/TEFrameSizei;->height:I

    invoke-virtual {p0, v5, v4}, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;->setupImageReader(II)V

    .line 1139
    iget-object v4, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    invoke-virtual {v4, v2}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v4

    iput-object v4, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCaptureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 1140
    iget-object v5, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mZoomSize:Landroid/graphics/Rect;

    if-eqz v5, :cond_87

    .line 1141
    sget-object v6, Landroid/hardware/camera2/CaptureRequest;->SCALER_CROP_REGION:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v4, v6, v5}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 1143
    :cond_87
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1144
    invoke-virtual {v1}, Lcom/ss/android/ttvecamera/provider/TECameraProviderManager;->getProvider()Lcom/ss/android/ttvecamera/provider/TECameraProvider;

    move-result-object v5

    invoke-virtual {v5}, Lcom/ss/android/ttvecamera/provider/TECameraProvider;->getType()I

    move-result v5

    const/16 v6, 0x8

    if-ne v5, v6, :cond_a4

    .line 1145
    invoke-virtual {v1}, Lcom/ss/android/ttvecamera/provider/TECameraProviderManager;->getPreviewSurfaces()[Landroid/view/Surface;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v4, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_ab

    .line 1147
    :cond_a4
    invoke-virtual {v1}, Lcom/ss/android/ttvecamera/provider/TECameraProviderManager;->getPreviewSurface()Landroid/view/Surface;

    move-result-object v1

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1149
    :goto_ab
    iget-object v1, p0, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;->mZslImageReader:Landroid/media/ImageReader;

    if-eqz v1, :cond_b6

    .line 1150
    invoke-virtual {v1}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v1

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1152
    :cond_b6
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    move v5, v0

    :goto_bb
    if-ge v5, v1, :cond_cb

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v5, v5, 0x1

    check-cast v6, Landroid/view/Surface;

    .line 1153
    iget-object v7, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCaptureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {v7, v6}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    goto :goto_bb

    .line 1155
    :cond_cb
    iget-object v1, p0, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;->mImageReader:Landroid/media/ImageReader;

    if-eqz v1, :cond_d6

    .line 1156
    invoke-virtual {v1}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v1

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1158
    :cond_d6
    iget-object v1, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCaptureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v5, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v6, 0x4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 1160
    iget-object v1, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget-boolean v1, v1, Lcom/ss/android/ttvecamera/TECameraSettings;->mOptCameraSceneFps:Z

    if-eqz v1, :cond_145

    .line 1163
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 1164
    iget-object v1, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    if-eqz v1, :cond_fa

    iget-object v7, p0, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;->mAvailableSessionKeys:Ljava/util/List;

    if-nez v7, :cond_fa

    .line 1165
    invoke-virtual {v1}, Landroid/hardware/camera2/CameraCharacteristics;->getAvailableSessionKeys()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;->mAvailableSessionKeys:Ljava/util/List;

    .line 1168
    :cond_fa
    iget-object v1, p0, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;->mAvailableSessionKeys:Ljava/util/List;

    if-eqz v1, :cond_123

    .line 1169
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_102
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_123

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/hardware/camera2/CaptureRequest$Key;

    .line 1170
    sget-object v8, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_TARGET_FPS_RANGE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v8}, Landroid/hardware/camera2/CaptureRequest$Key;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7}, Landroid/hardware/camera2/CaptureRequest$Key;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_102

    .line 1171
    iget-object v1, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iput-boolean v0, v1, Lcom/ss/android/ttvecamera/TECameraSettings;->mOptCameraSceneFps:Z

    goto :goto_124

    :cond_123
    move v2, v0

    .line 1177
    :goto_124
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "check aeTargetFpsRange is session key: "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", consume: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1178
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v5

    invoke-virtual {v1, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1177
    invoke-static {v3, v1}, Lcom/ss/android/ttvecamera/TELogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_145
    const-wide/16 v1, 0x0

    .line 1184
    iput-wide v1, p0, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;->mFrameArrivedTimestamp:J

    .line 1185
    iput v0, p0, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;->mFrameCountPerSec:I

    .line 1186
    iput v0, p0, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;->mCountCaptureFrame:I

    const/4 v1, -0x1

    .line 1187
    iput v1, p0, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;->mCurrentZslMetadataCacheIndex:I

    .line 1188
    iget-object v1, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget v1, v1, Lcom/ss/android/ttvecamera/TECameraSettings;->mEnableGcForCameraMetadataThreshold:I

    iput v1, p0, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;->mEnableGcForCameraMetadataThreshold:I

    if-lez v1, :cond_16e

    .line 1190
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "release camera metadata threshold: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;->mEnableGcForCameraMetadataThreshold:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/ss/android/ttvecamera/TELogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1192
    :cond_16e
    iput-boolean v0, p0, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;->mIsAfConvergeOnPreview:Z

    .line 1193
    iput v0, p0, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;->mState:I

    .line 1194
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCreateSessionStartTimestamp:J

    .line 1195
    iget-object v1, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget-boolean v1, v1, Lcom/ss/android/ttvecamera/TECameraSettings;->mUseSyncModeOnCamera2:Z

    if-eqz v1, :cond_183

    invoke-virtual {p0}, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->getCameraHandler()Landroid/os/Handler;

    move-result-object v1

    goto :goto_185

    :cond_183
    iget-object v1, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mHandler:Landroid/os/Handler;

    :goto_185
    const/4 v2, 0x0

    .line 1196
    iput-object v2, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraSession:Landroid/hardware/camera2/CameraCaptureSession;

    .line 1197
    iget-object v2, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mSessionStateCallback:Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

    invoke-virtual {p0, v4, v2, v1}, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;->createSession(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/os/Handler;)V

    .line 1198
    iget-object v1, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraSession:Landroid/hardware/camera2/CameraCaptureSession;

    if-nez v1, :cond_194

    .line 1199
    invoke-virtual {p0}, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->waitCameraTaskDoneOrTimeout()V

    .line 1202
    :cond_194
    invoke-static {}, Lcom/ss/android/ttvecamera/TETraceUtils;->endSection()V

    return v0

    .line 1120
    :cond_198
    :goto_198
    const-string p0, "CameraDevice or ProviderManager is null!"

    invoke-static {v3, p0}, Lcom/ss/android/ttvecamera/TELogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, -0x64

    return p0
.end method

.method public switchFlashMode(I)V
    .registers 8

    .line 1484
    iget-object v0, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCaptureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    const-string v1, "TEImage2Mode"

    if-nez v0, :cond_1b

    .line 1485
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "switchFlashMode failed, mode: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/ss/android/ttvecamera/TELogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1492
    :cond_1b
    iget v0, p0, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;->mCurrentFlashMode:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_26

    if-eqz v0, :cond_26

    if-nez p1, :cond_26

    const/4 v0, 0x1

    goto :goto_27

    :cond_26
    const/4 v0, 0x0

    .line 1495
    :goto_27
    invoke-virtual {p0, p1}, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;->updateFlashModeParam(I)V

    if-eqz v0, :cond_7b

    .line 1498
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 1499
    iget-object p1, p0, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;->mConditionVariable:Landroid/os/ConditionVariable;

    if-nez p1, :cond_3b

    .line 1500
    new-instance p1, Landroid/os/ConditionVariable;

    invoke-direct {p1}, Landroid/os/ConditionVariable;-><init>()V

    iput-object p1, p0, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;->mConditionVariable:Landroid/os/ConditionVariable;

    .line 1502
    :cond_3b
    iget-object p1, p0, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;->mConditionVariable:Landroid/os/ConditionVariable;

    invoke-virtual {p1}, Landroid/os/ConditionVariable;->close()V

    .line 1503
    iget-object p1, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCaptureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    new-instance v0, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode$8;

    invoke-direct {v0, p0}, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode$8;-><init>(Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;)V

    iget-object v4, p0, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;->mUiHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1, v0, v4}, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->updatePreview(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)Lcom/ss/android/ttvecamera/framework/TECameraModeBase$Response;

    move-result-object p1

    .line 1529
    iget-object v0, p0, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;->mConditionVariable:Landroid/os/ConditionVariable;

    const-wide/16 v4, 0x21

    invoke-virtual {v0, v4, v5}, Landroid/os/ConditionVariable;->block(J)Z

    move-result v0

    if-nez v0, :cond_75

    .line 1531
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "close flash: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "ms"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/ss/android/ttvecamera/TELogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1534
    :cond_75
    iget-object v0, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCaptureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {p0, v0}, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->updatePreview(Landroid/hardware/camera2/CaptureRequest$Builder;)Lcom/ss/android/ttvecamera/framework/TECameraModeBase$Response;

    goto :goto_81

    .line 1536
    :cond_7b
    iget-object p1, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCaptureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {p0, p1}, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->updatePreview(Landroid/hardware/camera2/CaptureRequest$Builder;)Lcom/ss/android/ttvecamera/framework/TECameraModeBase$Response;

    move-result-object p1

    .line 1538
    :goto_81
    invoke-virtual {p1}, Lcom/ss/android/ttvecamera/framework/TECameraModeBase$Response;->isSuccess()Z

    move-result v0

    if-nez v0, :cond_ac

    .line 1539
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[VE_UI_TEST]Failed event: TOGGLE_TORCH. Code: -100. Reason: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/ss/android/ttvecamera/framework/TECameraModeBase$Response;->getErrMsg()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/ss/android/ttvecamera/TELogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1540
    iget-object v0, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraEvents:Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;

    invoke-virtual {p1}, Lcom/ss/android/ttvecamera/framework/TECameraModeBase$Response;->getErrMsg()Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    const/16 v1, -0x64

    invoke-interface {v0, v1, v1, p1, p0}, Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;->onCameraInfo(IILjava/lang/String;Ljava/lang/Object;)V

    :cond_ac
    return-void
.end method

.method public takePicture(IILcom/ss/android/ttvecamera/TECameraSettings$PictureCallback;)V
    .registers 4

    .line 759
    iget-object p1, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget p1, p1, Lcom/ss/android/ttvecamera/TECameraSettings;->mFacing:I

    invoke-virtual {p0, p3, p1}, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;->takePicture(Lcom/ss/android/ttvecamera/TECameraSettings$PictureCallback;I)V

    return-void
.end method

.method public takePicture(Lcom/ss/android/ttvecamera/TECameraSettings$PictureCallback;I)V
    .registers 16

    const/4 v0, 0x2

    .line 789
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    .line 788
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 764
    invoke-super {p0, p1, p2}, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->takePicture(Lcom/ss/android/ttvecamera/TECameraSettings$PictureCallback;I)V

    .line 765
    iput-object p1, p0, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;->mCallback:Lcom/ss/android/ttvecamera/TECameraSettings$PictureCallback;

    const/4 p1, 0x0

    .line 766
    iput-object p1, p0, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;->mCaptureBufferFrameCallback:Lcom/ss/android/ttvecamera/TECameraSettings$CaptureBufferFrameCallback;

    .line 768
    iput p2, p0, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;->mCameraFacing:I

    const/4 p2, 0x0

    .line 801
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 769
    iput-boolean p2, p0, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;->mIsShotCanDoOnAfAeConverge:Z

    .line 770
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;->mCaptureStartTimestamp:J

    .line 771
    iget-object p2, p0, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;->mZslImageReader:Landroid/media/ImageReader;

    const-string v5, "TEImage2Mode"

    if-eqz p2, :cond_35

    iget-boolean p2, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraLightOn:Z

    if-nez p2, :cond_35

    .line 772
    iput v2, p0, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;->mState:I

    .line 773
    iput-boolean v2, p0, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;->mIsCanUseZslBufferForCapture:Z

    .line 774
    const-string p0, "takePicture...use zsl buffer"

    invoke-static {v5, p0}, Lcom/ss/android/ttvecamera/TELogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 778
    :cond_35
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "takePicture...flash strategy: "

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget v6, v6, Lcom/ss/android/ttvecamera/TECameraSettings;->mCaptureFlashStrategy:I

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v5, p2}, Lcom/ss/android/ttvecamera/TELogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 779
    iget-boolean p2, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraLightOn:Z

    if-eqz p2, :cond_54

    const-wide/16 v6, 0x640

    goto :goto_56

    :cond_54
    const-wide/16 v6, 0x320

    .line 780
    :goto_56
    iget-object v8, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget v9, v8, Lcom/ss/android/ttvecamera/TECameraSettings;->mFacing:I

    if-nez v9, :cond_1b1

    .line 781
    iget v8, v8, Lcom/ss/android/ttvecamera/TECameraSettings;->mCaptureFlashStrategy:I

    const/4 v9, 0x3

    const-string v10, "CAPTURE_REQUEST_TAG_FOR_SHOT"

    const/16 v11, 0x3e9

    const/16 v12, 0x3eb

    if-ne v8, v9, :cond_de

    if-eqz p2, :cond_da

    .line 783
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;->mWaitingAfAeConvergeStartTimestamp:J

    .line 784
    iput v0, p0, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;->mState:I

    .line 785
    iget-object p2, p0, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;->mHandHelper:Lcom/ss/android/ttvecamera/camera2/TEImage2Mode$HandlerHelper;

    invoke-virtual {p2, v11, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 788
    iget-object p2, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCaptureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p2, v0, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 789
    iget-object p2, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCaptureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->FLASH_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p2, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 792
    iget-boolean p2, p0, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;->mSupportAutoFocus:Z

    if-eqz p2, :cond_d0

    .line 793
    iget-object p2, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCaptureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p2, v0, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 794
    iget-object p2, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCaptureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p2, v0, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 795
    iget-object p2, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCaptureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {p2, v10}, Landroid/hardware/camera2/CaptureRequest$Builder;->setTag(Ljava/lang/Object;)V

    .line 796
    iget-object p2, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCaptureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {p0, p2}, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->capture(Landroid/hardware/camera2/CaptureRequest$Builder;)Lcom/ss/android/ttvecamera/framework/TECameraModeBase$Response;

    .line 799
    iget-object p2, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCaptureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {p2, p1}, Landroid/hardware/camera2/CaptureRequest$Builder;->setTag(Ljava/lang/Object;)V

    .line 800
    iget-object p1, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCaptureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {p1, v0, v4}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 802
    iget-object p1, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCaptureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object p2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_PRECAPTURE_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p1, p2, v4}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 804
    iget-object p1, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCaptureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {p0, p1}, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->updatePreview(Landroid/hardware/camera2/CaptureRequest$Builder;)Lcom/ss/android/ttvecamera/framework/TECameraModeBase$Response;

    .line 805
    iget-object p1, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCaptureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {p0, p1}, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->updatePreview(Landroid/hardware/camera2/CaptureRequest$Builder;)Lcom/ss/android/ttvecamera/framework/TECameraModeBase$Response;

    move-result-object p1

    .line 806
    invoke-virtual {p1}, Lcom/ss/android/ttvecamera/framework/TECameraModeBase$Response;->isSuccess()Z

    move-result p2

    if-nez p2, :cond_192

    .line 807
    iget-object p0, p0, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;->mHandHelper:Lcom/ss/android/ttvecamera/camera2/TEImage2Mode$HandlerHelper;

    invoke-virtual {p1}, Lcom/ss/android/ttvecamera/framework/TECameraModeBase$Response;->getException()Ljava/lang/Exception;

    move-result-object p1

    invoke-virtual {p0, v12, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    .line 811
    :cond_d0
    iget-object p0, p0, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;->mHandHelper:Lcom/ss/android/ttvecamera/camera2/TEImage2Mode$HandlerHelper;

    const/16 p1, 0x3e8

    const-wide/16 v0, 0x12c

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void

    .line 814
    :cond_da
    invoke-direct {p0}, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;->doCaptureOnReady()V

    return-void

    .line 816
    :cond_de
    const-string v9, "af converge, do capture..."

    if-ne v8, v0, :cond_144

    if-nez p2, :cond_f0

    .line 817
    iget-boolean p2, p0, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;->mIsAfConvergeOnPreview:Z

    if-nez p2, :cond_e9

    goto :goto_f0

    .line 841
    :cond_e9
    invoke-static {v5, v9}, Lcom/ss/android/ttvecamera/TELogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 842
    invoke-direct {p0}, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;->doCaptureOnReady()V

    return-void

    .line 818
    :cond_f0
    :goto_f0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;->mWaitingAfAeConvergeStartTimestamp:J

    .line 819
    iput v0, p0, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;->mState:I

    .line 820
    iget-object p2, p0, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;->mHandHelper:Lcom/ss/android/ttvecamera/camera2/TEImage2Mode$HandlerHelper;

    invoke-virtual {p2, v11, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 821
    iget-boolean p2, p0, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;->mSupportAutoFocus:Z

    if-eqz p2, :cond_108

    .line 822
    iget-object p2, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCaptureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p2, v0, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 825
    :cond_108
    iget-object p2, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCaptureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_PRECAPTURE_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p2, v0, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 827
    iget-object p2, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCaptureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {p2, v10}, Landroid/hardware/camera2/CaptureRequest$Builder;->setTag(Ljava/lang/Object;)V

    .line 828
    iget-object p2, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCaptureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {p0, p2}, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->capture(Landroid/hardware/camera2/CaptureRequest$Builder;)Lcom/ss/android/ttvecamera/framework/TECameraModeBase$Response;

    .line 831
    iget-object p2, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCaptureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {p2, p1}, Landroid/hardware/camera2/CaptureRequest$Builder;->setTag(Ljava/lang/Object;)V

    .line 832
    iget-object p1, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCaptureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object p2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p1, p2, v4}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 834
    iget-object p1, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCaptureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {p1, v0, v4}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 836
    iget-object p1, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCaptureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {p0, p1}, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->updatePreview(Landroid/hardware/camera2/CaptureRequest$Builder;)Lcom/ss/android/ttvecamera/framework/TECameraModeBase$Response;

    move-result-object p1

    .line 837
    invoke-virtual {p1}, Lcom/ss/android/ttvecamera/framework/TECameraModeBase$Response;->isSuccess()Z

    move-result p2

    if-nez p2, :cond_192

    .line 838
    iget-object p0, p0, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;->mHandHelper:Lcom/ss/android/ttvecamera/camera2/TEImage2Mode$HandlerHelper;

    invoke-virtual {p1}, Lcom/ss/android/ttvecamera/framework/TECameraModeBase$Response;->getException()Ljava/lang/Exception;

    move-result-object p1

    invoke-virtual {p0, v12, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :cond_144
    if-nez v8, :cond_193

    if-nez p2, :cond_154

    .line 845
    iget-boolean p1, p0, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;->mIsAfConvergeOnPreview:Z

    if-nez p1, :cond_14d

    goto :goto_154

    .line 858
    :cond_14d
    invoke-static {v5, v9}, Lcom/ss/android/ttvecamera/TELogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 859
    invoke-direct {p0}, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;->captureStillPicture()V

    return-void

    .line 846
    :cond_154
    :goto_154
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;->mWaitingAfAeConvergeStartTimestamp:J

    .line 847
    iput v2, p0, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;->mState:I

    .line 848
    iget-object p1, p0, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;->mHandHelper:Lcom/ss/android/ttvecamera/camera2/TEImage2Mode$HandlerHelper;

    const/16 p2, 0x3ef

    invoke-virtual {p1, p2, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 849
    iget-boolean p1, p0, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;->mSupportAutoFocus:Z

    if-eqz p1, :cond_16e

    .line 850
    iget-object p1, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCaptureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object p2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p1, p2, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 852
    :cond_16e
    iget-object p1, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCaptureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object p2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_PRECAPTURE_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p1, p2, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 853
    iget-object p1, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCaptureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object p2, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mPreviewCaptureCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    iget-object v0, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1, p2, v0}, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->capture(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)Lcom/ss/android/ttvecamera/framework/TECameraModeBase$Response;

    move-result-object p1

    .line 854
    invoke-virtual {p1}, Lcom/ss/android/ttvecamera/framework/TECameraModeBase$Response;->isSuccess()Z

    move-result p2

    if-nez p2, :cond_192

    .line 855
    iget-object p0, p0, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;->mHandHelper:Lcom/ss/android/ttvecamera/camera2/TEImage2Mode$HandlerHelper;

    invoke-virtual {p1}, Lcom/ss/android/ttvecamera/framework/TECameraModeBase$Response;->getException()Ljava/lang/Exception;

    move-result-object p1

    invoke-virtual {p0, v12, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_192
    return-void

    :cond_193
    if-ne v8, v2, :cond_1ab

    .line 862
    iput v2, p0, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;->mState:I

    if-eqz p2, :cond_1a7

    .line 864
    iget-object p1, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCaptureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object p2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p1, p2, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 865
    iget-object p1, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCaptureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object p2, Landroid/hardware/camera2/CaptureRequest;->FLASH_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p1, p2, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 867
    :cond_1a7
    invoke-direct {p0}, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;->captureStillPicture()V

    return-void

    .line 869
    :cond_1ab
    iput v2, p0, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;->mState:I

    .line 870
    invoke-direct {p0}, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;->doCaptureOnReady()V

    return-void

    .line 873
    :cond_1b1
    iput v2, p0, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;->mState:I

    .line 874
    invoke-direct {p0}, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;->doCaptureOnReady()V

    return-void
.end method

.method public toggleTorch(Z)I
    .registers 3

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    const/4 p1, 0x2

    goto :goto_6

    :cond_5
    move p1, v0

    .line 1477
    :goto_6
    invoke-virtual {p0, p1}, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;->switchFlashMode(I)V

    return v0
.end method

.method public updateCapture()I
    .registers 2

    .line 1248
    iget v0, p0, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;->mCurrentFlashMode:I

    invoke-virtual {p0, v0}, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;->updateFlashModeParam(I)V

    .line 1249
    invoke-super {p0}, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->updateCapture()I

    move-result p0

    return p0
.end method

.method public updateFlashModeParam(I)V
    .registers 8

    const/4 v0, 0x1

    .line 1569
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 1549
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateFlashModeParam: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "TEImage2Mode"

    invoke-static {v3, v2}, Lcom/ss/android/ttvecamera/TELogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1550
    iput p1, p0, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;->mCurrentFlashMode:I

    .line 1552
    iget-object v2, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCaptureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    if-nez v2, :cond_36

    .line 1553
    const-string p1, "[VE_UI_TEST]Failed event: TOGGLE_TORCH. Code: -100. Reason: mCaptureRequestBuilder is null"

    invoke-static {v3, p1}, Lcom/ss/android/ttvecamera/TELogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1555
    iget-object p1, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraEvents:Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;

    iget-object v0, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget v0, v0, Lcom/ss/android/ttvecamera/TECameraSettings;->mCameraType:I

    const/16 v1, -0x64

    iget-object p0, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    const-string v2, "switchFlashMode : CaptureRequest.Builder is null"

    invoke-interface {p1, v0, v1, v2, p0}, Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;->onCameraError(IILjava/lang/String;Ljava/lang/Object;)V

    return-void

    .line 1559
    :cond_36
    sget-object v4, Landroid/hardware/camera2/CaptureRequest;->FLASH_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v2, v4}, Landroid/hardware/camera2/CaptureRequest$Builder;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    const/4 v5, 0x0

    if-nez v2, :cond_43

    move v2, v5

    goto :goto_47

    .line 1560
    :cond_43
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    :goto_47
    if-ne p1, v0, :cond_6e

    .line 1563
    iget-object p1, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget p1, p1, Lcom/ss/android/ttvecamera/TECameraSettings;->mFacing:I

    if-ne p1, v0, :cond_5a

    .line 1564
    const-string p0, "[VE_UI_TEST]Failed event: TOGGLE_TORCH. Code: -416. Reason: not support torch"

    invoke-static {v3, p0}, Lcom/ss/android/ttvecamera/TELogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1565
    const-string p0, "flash on is not supported in front camera!"

    invoke-static {v3, p0}, Lcom/ss/android/ttvecamera/TELogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1568
    :cond_5a
    iget-object p1, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCaptureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v3, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 1569
    iget-object p1, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCaptureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {p1, v4, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 1570
    iput-boolean v0, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraLightOn:Z

    return-void

    :cond_6e
    if-nez p1, :cond_8b

    .line 1572
    iput-boolean v5, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraLightOn:Z

    if-nez v2, :cond_7a

    .line 1574
    const-string p0, "switchFlashMode flashStatus == FLASH_MODE_OFF"

    invoke-static {v3, p0}, Lcom/ss/android/ttvecamera/TELogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1577
    :cond_7a
    iget-object p1, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCaptureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p1, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 1578
    iget-object p0, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCaptureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v4, p1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    return-void

    :cond_8b
    const/4 v0, 0x2

    if-ne p1, v0, :cond_a9

    .line 1580
    iput-boolean v5, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraLightOn:Z

    if-ne v2, v0, :cond_98

    .line 1582
    const-string p0, "switchFlashMode flashStatus == FLASH_MODE_TORCH"

    invoke-static {v3, p0}, Lcom/ss/android/ttvecamera/TELogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1585
    :cond_98
    iget-object p1, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCaptureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p1, v2, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 1586
    iget-object p0, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCaptureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v4, p1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    return-void

    .line 1588
    :cond_a9
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[VE_UI_TEST]Failed event: TOGGLE_TORCH. Code: -416. Reason: not support flash mode "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lcom/ss/android/ttvecamera/TELogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1589
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "not support flash mode: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lcom/ss/android/ttvecamera/TELogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
