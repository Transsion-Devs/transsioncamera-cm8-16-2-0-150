.class public Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetection;
.super Lcom/transsion/camera/app/common/setting/SettingBase;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;
.implements Lcom/transsion/camera/app/common/setting/ICameraSetting$IParametersConfigure;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetection$GestureDetectionHandler;,
        Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetection$CvHandTrackCallbackImpl;
    }
.end annotation


# static fields
.field private static final CONTINUOUS_SHOT_INTERVAL_TIME:I = 0x3e8

.field private static final GESTURE_CHECK_INTERVAL_TIME:I = 0x1f4

.field private static final HAND_INFO_DATA:I = 0x6e

.field private static final HAND_INFO_RESUME:I = 0x78

.field private static final HAND_THUMBS_PAPER_SCORE_LIMIT:F = 0.95f

.field private static final HAND_TYPE_THUMBS_PAPER:I = 0x3

.field private static final MSG_ALLOW_GESTURE_CAPTURE:I = 0x6b

.field private static final MSG_DETECT_GESTURE:I = 0x66

.field private static final MSG_INIT_GESTURE:I = 0x64

.field private static final MSG_PAUSE_GESTURE:I = 0x69

.field private static final MSG_RESUME_GESTURE:I = 0x68

.field private static final MSG_TAKE_PICTURE:I = 0x6a

.field private static final MSG_TURN_SWITCH_GESTURE:I = 0x67

.field private static final MSG_UNINIT_GESTURE:I = 0x65

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mAllowedCapture:Z

.field private mCloseByFlashSnapLite:Z

.field private mCvHandTrackCallback:Lcom/transsion/camera/feature/setting/gesturedetection/ICvHandTrackCallback;

.field private mDefaultValue:Ljava/lang/String;

.field private final mDevicePictureStateCallback:Lcom/transsion/camera/app/common/setting/ICameraSetting$DevicePictureStateCallback;

.field private mFocusScanActive:Z

.field private mGestureAlgorithm:Lcom/transsion/camera/feature/setting/gesturedetection/IGestureDetectAlgorithm;

.field private volatile mHandler:Landroid/os/Handler;

.field private mInit:Z

.field private mIsModeSupport:Z

.field private mIsTakePicture:Z

.field private mPreviewStateCallback:Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;

.field private mPreviousCaptureTime:J

.field private mResumed:Z

.field private final mSettingPreviewDataCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraSettingPreviewDataCallback;

.field private mShutterUIProcessing:Z


# direct methods
.method public static synthetic $r8$lambda$wmNy730auAl2PWQt5_9J4Xzx7fc(Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetection;Landroid/media/Image;III)V
    .registers 5

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetection;->lambda$new$0(Landroid/media/Image;III)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmAllowedCapture(Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetection;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetection;->mAllowedCapture:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmCloseByFlashSnapLite(Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetection;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetection;->mCloseByFlashSnapLite:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmCvHandTrackCallback(Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetection;)Lcom/transsion/camera/feature/setting/gesturedetection/ICvHandTrackCallback;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetection;->mCvHandTrackCallback:Lcom/transsion/camera/feature/setting/gesturedetection/ICvHandTrackCallback;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmFocusScanActive(Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetection;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetection;->mFocusScanActive:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmGestureAlgorithm(Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetection;)Lcom/transsion/camera/feature/setting/gesturedetection/IGestureDetectAlgorithm;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetection;->mGestureAlgorithm:Lcom/transsion/camera/feature/setting/gesturedetection/IGestureDetectAlgorithm;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmHandler(Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetection;)Landroid/os/Handler;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetection;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmInit(Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetection;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetection;->mInit:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsModeSupport(Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetection;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetection;->mIsModeSupport:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsTakePicture(Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetection;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetection;->mIsTakePicture:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmPreviousCaptureTime(Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetection;)J
    .registers 3

    .line 0
    iget-wide v0, p0, Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetection;->mPreviousCaptureTime:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmResumed(Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetection;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetection;->mResumed:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmShutterUIProcessing(Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetection;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetection;->mShutterUIProcessing:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmAllowedCapture(Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetection;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetection;->mAllowedCapture:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmInit(Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetection;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetection;->mInit:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIsTakePicture(Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetection;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetection;->mIsTakePicture:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmPreviousCaptureTime(Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetection;J)V
    .registers 3

    .line 0
    iput-wide p1, p0, Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetection;->mPreviousCaptureTime:J

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmResumed(Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetection;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetection;->mResumed:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmShutterUIProcessing(Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetection;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetection;->mShutterUIProcessing:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mnotifyStatusChanged(Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetection;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetection;->notifyStatusChanged(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;
    .registers 1

    .line 0
    sget-object v0, Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetection;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 59
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetection;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetection;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 58
    invoke-direct {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;-><init>()V

    const/4 v0, 0x0

    .line 85
    iput-object v0, p0, Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetection;->mDefaultValue:Ljava/lang/String;

    const/4 v0, 0x0

    .line 87
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetection;->mCloseByFlashSnapLite:Z

    .line 89
    new-instance v0, Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetection$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetection$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetection;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetection;->mSettingPreviewDataCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraSettingPreviewDataCallback;

    .line 459
    new-instance v0, Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetection$1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetection$1;-><init>(Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetection;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetection;->mPreviewStateCallback:Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;

    .line 476
    new-instance v0, Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetection$2;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetection$2;-><init>(Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetection;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetection;->mDevicePictureStateCallback:Lcom/transsion/camera/app/common/setting/ICameraSetting$DevicePictureStateCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetection;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;
    .registers 1

    .line 58
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    return-object p0
.end method

.method private clearRemoteCaptureGestureState()V
    .registers 5

    .line 362
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getGlobalScope()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    const-string v2, "remote_capture_state_gesture"

    const-string v3, "false"

    invoke-virtual {v0, v2, v3, p0, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method private detectorImage(Landroid/media/Image;II)V
    .registers 6

    .line 343
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetection;->mHandler:Landroid/os/Handler;

    if-eqz p0, :cond_1d

    .line 345
    invoke-static {p1}, Lcom/transsion/camera/utils/CameraUtil;->getNV21Buffer(Landroid/media/Image;)[B

    move-result-object p1

    .line 346
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/16 v1, 0x66

    .line 347
    iput v1, v0, Landroid/os/Message;->what:I

    .line 348
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 349
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 350
    iput p3, v0, Landroid/os/Message;->arg2:I

    .line 351
    invoke-virtual {p0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 352
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_1d
    return-void
.end method

.method private synthetic lambda$new$0(Landroid/media/Image;III)V
    .registers 6

    .line 90
    const-string p4, "off"

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {p4, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p4

    if-nez p4, :cond_2c

    iget-boolean p4, p0, Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetection;->mIsModeSupport:Z

    if-eqz p4, :cond_2c

    if-nez p1, :cond_13

    goto :goto_2c

    .line 93
    :cond_13
    iget-object p4, p0, Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetection;->mHandler:Landroid/os/Handler;

    if-nez p4, :cond_18

    goto :goto_2c

    .line 97
    :cond_18
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetection;->mInit:Z

    if-nez v0, :cond_25

    const/16 p0, 0x64

    .line 98
    invoke-virtual {p4, p0}, Landroid/os/Handler;->removeMessages(I)V

    .line 99
    invoke-virtual {p4, p0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void

    .line 101
    :cond_25
    iget-boolean p4, p0, Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetection;->mAllowedCapture:Z

    if-eqz p4, :cond_2c

    .line 102
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetection;->detectorImage(Landroid/media/Image;II)V

    :cond_2c
    :goto_2c
    return-void
.end method

.method private notifyStatusChanged(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 366
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz p0, :cond_b

    .line 367
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_b
    return-void
.end method

.method private syncRemoteCaptureFragment()V
    .registers 5

    .line 357
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    .line 358
    iget-boolean v1, p0, Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetection;->mIsModeSupport:Z

    if-eqz v1, :cond_a

    const-string/jumbo v1, "true"

    goto :goto_c

    :cond_a
    const-string v1, "false"

    :goto_c
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getGlobalScope()Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x0

    .line 357
    const-string v3, "remote_capture_state_gesture"

    invoke-virtual {v0, v3, v1, p0, v2}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public configCommand(Lcom/transsion/camera/adapter/CameraProxy;)V
    .registers 4

    .line 389
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetection;->mIsModeSupport:Z

    if-eqz v0, :cond_16

    const-string v0, "on"

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 390
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetection;->mSettingPreviewDataCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraSettingPreviewDataCallback;

    invoke-virtual {p1, p0}, Lcom/transsion/camera/adapter/CameraProxy;->registerSettingPreviewDataCallback(Lcom/transsion/camera/adapter/CameraProxy$CameraSettingPreviewDataCallback;)V

    return-void

    .line 392
    :cond_16
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetection;->mSettingPreviewDataCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraSettingPreviewDataCallback;

    invoke-virtual {p1, p0}, Lcom/transsion/camera/adapter/CameraProxy;->unRegisterSettingPreviewDataCallback(Lcom/transsion/camera/adapter/CameraProxy$CameraSettingPreviewDataCallback;)V

    return-void
.end method

.method public configParameters(Lcom/transsion/camera/adapter/CameraParameters;)I
    .registers 2

    const/4 p0, 0x0

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
    .registers 1

    .line 249
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetection;->mDevicePictureStateCallback:Lcom/transsion/camera/app/common/setting/ICameraSetting$DevicePictureStateCallback;

    return-object p0
.end method

.method public getKey()Ljava/lang/String;
    .registers 1

    .line 198
    const-string p0, "key_gesture_detection"

    return-object p0
.end method

.method public getParametersConfigure()Lcom/transsion/camera/app/common/setting/ICameraSetting$IParametersConfigure;
    .registers 1

    return-object p0
.end method

.method public getPreviewStateCallback()Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;
    .registers 1

    .line 286
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetection;->mPreviewStateCallback:Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;

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

    .line 193
    sget-object p0, Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;->PHOTO_AND_VIDEO:Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;

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

    .line 281
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

.method public init(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/storage/DataStore;)V
    .registers 6

    .line 110
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/setting/SettingBase;->init(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/storage/DataStore;)V

    .line 111
    new-instance p3, Landroid/os/HandlerThread;

    const-string v0, "gesture_detection"

    invoke-direct {p3, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 112
    invoke-virtual {p3}, Ljava/lang/Thread;->start()V

    .line 113
    new-instance v0, Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetection$GestureDetectionHandler;

    invoke-virtual {p3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p3

    const/4 v1, 0x0

    invoke-direct {v0, p0, p3, v1}, Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetection$GestureDetectionHandler;-><init>(Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetection;Landroid/os/Looper;Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetection-IA;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetection;->mHandler:Landroid/os/Handler;

    const/4 p3, 0x1

    .line 114
    iput-boolean p3, p0, Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetection;->mResumed:Z

    .line 115
    iput-boolean p3, p0, Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetection;->mAllowedCapture:Z

    .line 117
    new-instance p3, Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetectAlgorithmImpl;

    invoke-direct {p3, p1}, Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetectAlgorithmImpl;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetection;->mGestureAlgorithm:Lcom/transsion/camera/feature/setting/gesturedetection/IGestureDetectAlgorithm;

    .line 118
    invoke-interface {p3, p2}, Lcom/transsion/camera/feature/setting/gesturedetection/IGestureDetectAlgorithm;->setSettingController(Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)V

    .line 119
    new-instance p1, Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetection$CvHandTrackCallbackImpl;

    invoke-direct {p1, p0}, Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetection$CvHandTrackCallbackImpl;-><init>(Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetection;)V

    iput-object p1, p0, Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetection;->mCvHandTrackCallback:Lcom/transsion/camera/feature/setting/gesturedetection/ICvHandTrackCallback;

    .line 120
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz p1, :cond_5b

    .line 121
    const-string p2, "key_focus_state"

    invoke-virtual {p1, p2, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 122
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string p2, "key_gesture_state"

    invoke-virtual {p1, p2, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 123
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string p2, "key_remote_capture"

    invoke-virtual {p1, p2, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 124
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string p2, "key_shutter_guide_layout_action"

    invoke-virtual {p1, p2, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 125
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string p2, "key_ui_state_action"

    invoke-virtual {p1, p2, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 126
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string p2, "key_touch_capture_status"

    invoke-virtual {p1, p2, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    :cond_5b
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

    .line 132
    sget-object v0, Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetection;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[initializeValue] ++ platformSupportedValues: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", default value:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 133
    iput-object p2, p0, Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetection;->mDefaultValue:Ljava/lang/String;

    .line 134
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setSupportedPlatformValues(Ljava/util/List;)V

    .line 135
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setSupportedEntryValues(Ljava/util/List;)V

    .line 136
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setEntryValues(Ljava/util/List;)V

    .line 137
    invoke-virtual {p0, p2}, Lcom/transsion/camera/app/common/setting/SettingBase;->setDefaultValue(Ljava/lang/String;)V

    .line 138
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v1, 0x1

    if-le p1, v1, :cond_43

    .line 139
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetection;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getGlobalScope()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, p2, v2}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetection;->mDefaultValue:Ljava/lang/String;

    .line 141
    :cond_43
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetection;->mDefaultValue:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setValue(Ljava/lang/String;)V

    .line 142
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "[initializeValue] -- mDefaultValue:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetection;->mDefaultValue:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public isModeSupport()Z
    .registers 1

    .line 339
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetection;->mIsModeSupport:Z

    return p0
.end method

.method public declared-synchronized onModeClosed(Ljava/lang/String;)V
    .registers 3

    monitor-enter p0

    const/4 v0, 0x0

    .line 218
    :try_start_2
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetection;->mIsModeSupport:Z

    .line 219
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetection;->mResumed:Z

    .line 220
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->onModeClosed(Ljava/lang/String;)V

    .line 221
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetection;->mHandler:Landroid/os/Handler;

    const/16 v0, 0x69

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 222
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetection;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;->requestChangeCommand(Ljava/lang/String;)V

    .line 223
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetection;->clearRemoteCaptureGestureState()V
    :try_end_1c
    .catchall {:try_start_2 .. :try_end_1c} :catchall_1e

    .line 224
    monitor-exit p0

    return-void

    :catchall_1e
    move-exception p1

    :try_start_1f
    monitor-exit p0
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_1e

    throw p1
.end method

.method public onModeOpened(Ljava/lang/String;Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;[Ljava/lang/String;)V
    .registers 4

    .line 208
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/setting/SettingBase;->onModeOpened(Ljava/lang/String;Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;[Ljava/lang/String;)V

    .line 209
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetection;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Lcom/transsion/camera/utils/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetection;->mIsModeSupport:Z

    .line 210
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetection;->syncRemoteCaptureFragment()V

    .line 211
    iget-boolean p1, p0, Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetection;->mIsModeSupport:Z

    if-eqz p1, :cond_29

    const-string p1, "on"

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_29

    .line 212
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetection;->mHandler:Landroid/os/Handler;

    const/16 p1, 0x68

    const-wide/16 p2, 0x1f4

    invoke-virtual {p0, p1, p2, p3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_29
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 8

    .line 291
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, -0x1

    sparse-switch v0, :sswitch_data_10e

    goto :goto_4e

    :sswitch_d
    const-string v0, "key_remote_capture"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_16

    goto :goto_4e

    :cond_16
    const/4 v2, 0x5

    goto :goto_4e

    :sswitch_18
    const-string v0, "key_shutter_guide_layout_action"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_21

    goto :goto_4e

    :cond_21
    const/4 v2, 0x4

    goto :goto_4e

    :sswitch_23
    const-string v0, "key_gesture_state"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2c

    goto :goto_4e

    :cond_2c
    const/4 v2, 0x3

    goto :goto_4e

    :sswitch_2e
    const-string v0, "key_focus_state"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_37

    goto :goto_4e

    :cond_37
    const/4 v2, 0x2

    goto :goto_4e

    :sswitch_39
    const-string v0, "key_touch_capture_status"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_42

    goto :goto_4e

    :cond_42
    move v2, v1

    goto :goto_4e

    :sswitch_44
    const-string v0, "key_ui_state_action"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4d

    goto :goto_4e

    :cond_4d
    const/4 v2, 0x0

    :goto_4e
    const-wide/16 v3, 0x1f4

    const/16 p1, 0x6a

    packed-switch v2, :pswitch_data_128

    goto/16 :goto_fd

    .line 306
    :pswitch_57
    const-string p1, "remote_capture_state_gesture"

    check-cast p2, Ljava/lang/CharSequence;

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_fd

    .line 307
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetection;->getKey()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetection;->mDefaultValue:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getGlobalScope()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, p2, v0, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 308
    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetection;->onValueChanged(Ljava/lang/String;)V

    return-void

    .line 293
    :pswitch_75
    check-cast p2, Ljava/lang/CharSequence;

    const-string v0, "gesture_normal_state"

    invoke-static {v0, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_95

    .line 294
    new-instance p2, Landroid/os/Message;

    invoke-direct {p2}, Landroid/os/Message;-><init>()V

    .line 295
    iput p1, p2, Landroid/os/Message;->what:I

    .line 296
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 297
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetection;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 298
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetection;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void

    .line 299
    :cond_95
    const-string v0, "gesture_invalid_state"

    invoke-static {v0, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_fd

    .line 300
    iget-object p2, p0, Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetection;->mHandler:Landroid/os/Handler;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 301
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetection;->mHandler:Landroid/os/Handler;

    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, p1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void

    .line 312
    :pswitch_ae
    check-cast p2, Ljava/lang/CharSequence;

    const-string p1, "ACTIVE_SCAN"

    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetection;->mFocusScanActive:Z

    return-void

    .line 327
    :pswitch_b9
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetection;->mIsTakePicture:Z

    if-eqz v0, :cond_fd

    check-cast p2, Ljava/lang/CharSequence;

    const-string/jumbo v0, "touch_capture_cancel"

    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_fd

    .line 328
    iget-object p2, p0, Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetection;->mHandler:Landroid/os/Handler;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 329
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetection;->mHandler:Landroid/os/Handler;

    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, p1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void

    .line 316
    :pswitch_d9
    check-cast p2, Ljava/lang/CharSequence;

    const-string/jumbo p1, "value_state_process"

    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    const/16 v0, 0x6b

    if-nez p1, :cond_fe

    const-string p1, "shutter_guide_layout_show"

    .line 317
    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_ef

    goto :goto_fe

    .line 322
    :cond_ef
    const-string/jumbo p1, "value_state_idle"

    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_fd

    .line 323
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetection;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_fd
    :goto_fd
    return-void

    .line 318
    :cond_fe
    :goto_fe
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetection;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-eqz p1, :cond_10b

    .line 319
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetection;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 321
    :cond_10b
    iput-boolean v1, p0, Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetection;->mShutterUIProcessing:Z

    return-void

    :sswitch_data_10e
    .sparse-switch
        -0x7b365c71 -> :sswitch_44
        -0x5babce15 -> :sswitch_39
        -0x42841f76 -> :sswitch_2e
        0x206a083b -> :sswitch_23
        0x47d8f3b6 -> :sswitch_18
        0x5465262d -> :sswitch_d
    .end sparse-switch

    :pswitch_data_128
    .packed-switch 0x0
        :pswitch_d9
        :pswitch_b9
        :pswitch_ae
        :pswitch_75
        :pswitch_d9
        :pswitch_57
    .end packed-switch
.end method

.method public onValueChanged(Ljava/lang/String;)V
    .registers 6

    .line 254
    sget-object v0, Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetection;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onValueChanged] value = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", oldValue: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 255
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetection;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getGlobalScope()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 256
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_87

    .line 257
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setValue(Ljava/lang/String;)V

    .line 258
    invoke-static {}, Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetectionRestriction;->getRestriction()Lcom/transsion/camera/app/common/relation/RelationGroup;

    move-result-object v0

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Lcom/transsion/camera/app/common/relation/RelationGroup;->getRelation(Ljava/lang/String;Z)Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object v0

    .line 259
    iget-object v1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v1, v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->postRestriction(Lcom/transsion/camera/app/common/relation/Relation;)V

    .line 260
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetection;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;->requestChangeSettingValue(Ljava/lang/String;)V

    .line 262
    const-string v0, "on"

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_70

    .line 263
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetection;->mHandler:Landroid/os/Handler;

    const/16 v0, 0x68

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 264
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetection;->mHandler:Landroid/os/Handler;

    const/16 v0, 0x64

    const-wide/16 v1, 0x1f4

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_7e

    .line 266
    :cond_70
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetection;->mHandler:Landroid/os/Handler;

    const/16 v0, 0x69

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 267
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetection;->mHandler:Landroid/os/Handler;

    const/16 v0, 0x65

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 269
    :goto_7e
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetection;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;->requestChangeCommand(Ljava/lang/String;)V

    :cond_87
    return-void
.end method

.method public bridge synthetic onZoomUIStateChanged(Z)V
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->onZoomUIStateChanged(Z)V

    return-void
.end method

.method public overrideValues(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 534
    const-string p3, "key_best_moment_detect"

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_10

    .line 535
    const-string p1, "off"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetection;->mCloseByFlashSnapLite:Z

    :cond_10
    return-void
.end method

.method public pause()V
    .registers 4

    .line 165
    invoke-super {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->pause()V

    .line 166
    const-string v0, "on"

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_19

    .line 167
    iput-boolean v1, p0, Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetection;->mResumed:Z

    .line 168
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetection;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x69

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 170
    :cond_19
    iput-boolean v1, p0, Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetection;->mShutterUIProcessing:Z

    .line 171
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetection;->clearRemoteCaptureGestureState()V

    return-void
.end method

.method public postRestrictionAfterInitialized()V
    .registers 4

    .line 147
    invoke-static {}, Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetectionRestriction;->getRestriction()Lcom/transsion/camera/app/common/relation/RelationGroup;

    move-result-object v0

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/relation/RelationGroup;->getRelation(Ljava/lang/String;Z)Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 149
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->postRestriction(Lcom/transsion/camera/app/common/relation/Relation;)V

    :cond_14
    return-void
.end method

.method public restoreToSupportedPlatformValue()V
    .registers 1

    .line 275
    invoke-super {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->restoreToSupportedPlatformValue()V

    .line 276
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetection;->syncRemoteCaptureFragment()V

    return-void
.end method

.method public resume()V
    .registers 5

    .line 155
    invoke-super {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->resume()V

    .line 156
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetection;->syncRemoteCaptureFragment()V

    .line 157
    const-string v0, "on"

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 158
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetection;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x68

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 159
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetection;->mHandler:Landroid/os/Handler;

    const/16 v0, 0x6a

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, v0, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_28
    return-void
.end method

.method public sendSettingChangeRequest()V
    .registers 1

    return-void
.end method

.method public setCameraCapabilities(Lcom/transsion/camera/adapter/ICameraCapabilities;)V
    .registers 3

    .line 376
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 377
    const-string v0, "on"

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 378
    const-string v0, "off"

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 379
    invoke-virtual {p0, p1, v0}, Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetection;->initValueAndSupport(Ljava/util/List;Ljava/lang/String;)V

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

.method public turnOnSwitch(Z)V
    .registers 5

    .line 176
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->turnOnSwitch(Z)V

    .line 177
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/16 v1, 0x67

    .line 178
    iput v1, v0, Landroid/os/Message;->what:I

    .line 179
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 180
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetection;->mHandler:Landroid/os/Handler;

    if-eqz p0, :cond_26

    .line 182
    iget v1, v0, Landroid/os/Message;->what:I

    invoke-virtual {p0, v1}, Landroid/os/Handler;->removeMessages(I)V

    if-eqz p1, :cond_23

    const-wide/16 v1, 0x1f4

    .line 184
    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void

    .line 186
    :cond_23
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_26
    return-void
.end method

.method public unInit()V
    .registers 4

    .line 228
    invoke-super {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->unInit()V

    const/4 v0, 0x0

    .line 229
    iput-object v0, p0, Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetection;->mCvHandTrackCallback:Lcom/transsion/camera/feature/setting/gesturedetection/ICvHandTrackCallback;

    .line 230
    iget-object v1, p0, Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetection;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_1c

    .line 231
    iget-object v1, p0, Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetection;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x65

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 232
    iget-object v1, p0, Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetection;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->quitSafely()V

    .line 233
    iput-object v0, p0, Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetection;->mHandler:Landroid/os/Handler;

    .line 235
    :cond_1c
    iget-object v1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz v1, :cond_4a

    .line 236
    const-string v2, "key_focus_state"

    invoke-virtual {v1, v2, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 237
    iget-object v1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v2, "key_gesture_state"

    invoke-virtual {v1, v2, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 238
    iget-object v1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v2, "key_remote_capture"

    invoke-virtual {v1, v2, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 239
    iget-object v1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v2, "key_shutter_guide_layout_action"

    invoke-virtual {v1, v2, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 240
    iget-object v1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v2, "key_ui_state_action"

    invoke-virtual {v1, v2, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 241
    iget-object v1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v2, "key_touch_capture_status"

    invoke-virtual {v1, v2, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 242
    iput-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    .line 244
    :cond_4a
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetection;->clearRemoteCaptureGestureState()V

    return-void
.end method

.method public bridge synthetic updateEntryValueList(Z)V
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->updateEntryValueList(Z)V

    return-void
.end method
