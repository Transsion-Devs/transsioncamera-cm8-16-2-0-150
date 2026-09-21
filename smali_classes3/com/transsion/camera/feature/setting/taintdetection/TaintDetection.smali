.class public Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;
.super Lcom/transsion/camera/app/common/setting/SettingBase;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;
.implements Lcom/transsion/camera/app/common/setting/ICameraSetting$IParametersConfigure;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection$TaintDetectionHandler;,
        Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection$TaintDetectionCallback;
    }
.end annotation


# static fields
.field private static final DEFAULT_VALUE:Ljava/lang/String; = "on"

.field private static final KEY_TAINT_DETECTION_LIMIT_TIMES:Ljava/lang/String; = "key_taint_detection_limit_times"

.field private static final MSG_TAINT_ALG_ENABLE:I = 0x5

.field private static final MSG_TAINT_DETECT:I = 0x4

.field private static final MSG_TAINT_FOCUS_STATE:I = 0x7

.field private static final MSG_TAINT_INIT:I = 0x0

.field private static final MSG_TAINT_PAUSE:I = 0x3

.field private static final MSG_TAINT_REINIT:I = 0x6

.field private static final MSG_TAINT_RESUME:I = 0x2

.field private static final MSG_TAINT_UNINIT:I = 0x1

.field private static final RECHECK_TAINT_TIMELAPSE:I = 0x36b0

.field private static final RELEASE_TAINT_TIMELAPSE:I = 0x4b0

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

.field private static final TAINT_LENS_SCORE_LIMIT_BACK:F = 0.6f

.field private static final TAINT_LENS_SCORE_LIMIT_FRONT:F = 0.4f


# instance fields
.field private mAllowInit:Z

.field private mCameraFacing:Ljava/lang/String;

.field private mCameraInit:Z

.field private mContext:Landroid/content/Context;

.field private mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

.field private final mDevicePictureStateCallback:Lcom/transsion/camera/app/common/setting/ICameraSetting$DevicePictureStateCallback;

.field private mFuture:Ljava/util/concurrent/Future;

.field private mHandler:Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection$TaintDetectionHandler;

.field private mInit:Z

.field private mIsForceTaintDetect:Z

.field private mIsModeSupport:Z

.field private mIsPause:Z

.field private mIsTurnOnSwitch:Z

.field private mLastDetTime:J

.field private final mPreviewStateCallback:Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;

.field private mResumed:Z

.field private mScoreLimit:F

.field private final mSettingPreviewDataCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraSettingPreviewDataCallback;

.field private mStartTime:J

.field private mSwitchScene:Z

.field private mTaintAlgorithm:Lcom/transsion/camera/feature/setting/taintdetection/TaintDetectAlgorithmImpl;

.field private mTask:Lcom/transsion/camera/utils/threads/WorkTask;


# direct methods
.method public static synthetic $r8$lambda$k4F60vSjsy6e04x82C5OdhfS7dg(Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;Landroid/media/Image;III)V
    .registers 5

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;->lambda$new$0(Landroid/media/Image;III)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmCameraFacing(Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;)Ljava/lang/String;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;->mCameraFacing:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmHandler(Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;)Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection$TaintDetectionHandler;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;->mHandler:Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection$TaintDetectionHandler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmInit(Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;->mInit:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsForceTaintDetect(Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;->mIsForceTaintDetect:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsModeSupport(Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;->mIsModeSupport:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsTurnOnSwitch(Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;->mIsTurnOnSwitch:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmLastDetTime(Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;)J
    .registers 3

    .line 0
    iget-wide v0, p0, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;->mLastDetTime:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmResumed(Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;->mResumed:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmScoreLimit(Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;)F
    .registers 1

    .line 0
    iget p0, p0, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;->mScoreLimit:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmStartTime(Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;)J
    .registers 3

    .line 0
    iget-wide v0, p0, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;->mStartTime:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmSwitchScene(Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;->mSwitchScene:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmTaintAlgorithm(Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;)Lcom/transsion/camera/feature/setting/taintdetection/TaintDetectAlgorithmImpl;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;->mTaintAlgorithm:Lcom/transsion/camera/feature/setting/taintdetection/TaintDetectAlgorithmImpl;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTask(Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;)Lcom/transsion/camera/utils/threads/WorkTask;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;->mTask:Lcom/transsion/camera/utils/threads/WorkTask;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmAllowInit(Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;->mAllowInit:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmFuture(Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;Ljava/util/concurrent/Future;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;->mFuture:Ljava/util/concurrent/Future;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmInit(Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;->mInit:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIsTurnOnSwitch(Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;->mIsTurnOnSwitch:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmLastDetTime(Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;J)V
    .registers 3

    .line 0
    iput-wide p1, p0, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;->mLastDetTime:J

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmResumed(Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;->mResumed:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmStartTime(Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;J)V
    .registers 3

    .line 0
    iput-wide p1, p0, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;->mStartTime:J

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmSwitchScene(Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;->mSwitchScene:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmTask(Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;Lcom/transsion/camera/utils/threads/WorkTask;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;->mTask:Lcom/transsion/camera/utils/threads/WorkTask;

    return-void
.end method

.method static bridge synthetic -$$Nest$mdoPollingTask(Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;->doPollingTask()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhideTaintHint(Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;->hideTaintHint()V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;
    .registers 1

    .line 0
    sget-object v0, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 50
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 49
    invoke-direct {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;-><init>()V

    const/4 v0, 0x0

    .line 70
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;->mIsPause:Z

    const/4 v0, 0x1

    .line 72
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;->mIsTurnOnSwitch:Z

    const/4 v0, 0x0

    .line 82
    iput-object v0, p0, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;->mCameraFacing:Ljava/lang/String;

    .line 85
    new-instance v0, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;->mSettingPreviewDataCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraSettingPreviewDataCallback;

    .line 504
    new-instance v0, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection$2;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection$2;-><init>(Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;->mPreviewStateCallback:Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;

    .line 524
    new-instance v0, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection$3;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection$3;-><init>(Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;->mDevicePictureStateCallback:Lcom/transsion/camera/app/common/setting/ICameraSetting$DevicePictureStateCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;
    .registers 1

    .line 49
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    return-object p0
.end method

.method static synthetic access$100(Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;)Ljava/lang/String;
    .registers 1

    .line 49
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mModeKey:Ljava/lang/String;

    return-object p0
.end method

.method private detectorImage(Landroid/media/Image;II)V
    .registers 6

    .line 329
    :try_start_0
    invoke-static {p1}, Lcom/transsion/camera/utils/CameraUtil;->getNV21Buffer(Landroid/media/Image;)[B

    move-result-object p1

    .line 330
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;->mHandler:Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection$TaintDetectionHandler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 331
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 332
    iput v1, v0, Landroid/os/Message;->what:I

    .line 333
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 334
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 335
    iput p3, v0, Landroid/os/Message;->arg2:I

    .line 336
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;->mHandler:Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection$TaintDetectionHandler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_1c
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_1c} :catch_1d

    return-void

    .line 338
    :catch_1d
    sget-object p0, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "[detectorImage] getNV21Buffer failed, image is closed"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private doPollingTask()V
    .registers 4

    .line 343
    sget-object v0, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "[doPollingTask]"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 344
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;->mHandler:Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection$TaintDetectionHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 345
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;->mHandler:Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection$TaintDetectionHandler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 346
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 347
    iput v1, v0, Landroid/os/Message;->what:I

    const/4 v2, 0x1

    .line 348
    iput v2, v0, Landroid/os/Message;->arg1:I

    .line 349
    iget-object v2, p0, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;->mHandler:Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection$TaintDetectionHandler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 351
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 352
    iput v1, v0, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    .line 353
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 354
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;->mHandler:Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection$TaintDetectionHandler;

    const-wide/16 v1, 0x36b0

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method private hideTaintHint()V
    .registers 3

    .line 384
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getSettingDataCallback()Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;

    move-result-object p0

    if-eqz p0, :cond_b

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 386
    invoke-interface {p0, v0, v1}, Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;->onDataCallback(Ljava/lang/Object;I)V

    :cond_b
    return-void
.end method

.method private synthetic lambda$new$0(Landroid/media/Image;III)V
    .registers 6

    .line 87
    iget-boolean p4, p0, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;->mIsPause:Z

    if-eqz p4, :cond_5

    goto :goto_3f

    .line 90
    :cond_5
    const-string p4, "off"

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {p4, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p4

    if-nez p4, :cond_3f

    iget-boolean p4, p0, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;->mIsModeSupport:Z

    if-eqz p4, :cond_3f

    if-eqz p1, :cond_3f

    iget-boolean p4, p0, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;->mResumed:Z

    if-eqz p4, :cond_3f

    .line 91
    iget-boolean p4, p0, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;->mInit:Z

    if-nez p4, :cond_34

    iget-boolean p4, p0, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;->mAllowInit:Z

    if-eqz p4, :cond_34

    iget-object p4, p0, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;->mHandler:Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection$TaintDetectionHandler;

    if-eqz p4, :cond_34

    const/4 v0, 0x0

    invoke-virtual {p4, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p4

    if-nez p4, :cond_34

    .line 92
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;->mHandler:Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection$TaintDetectionHandler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void

    .line 94
    :cond_34
    iget-boolean p4, p0, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;->mInit:Z

    if-eqz p4, :cond_3f

    iget-boolean p4, p0, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;->mIsTurnOnSwitch:Z

    if-eqz p4, :cond_3f

    .line 95
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;->detectorImage(Landroid/media/Image;II)V

    :cond_3f
    :goto_3f
    return-void
.end method

.method private setDataValue(Ljava/lang/String;)V
    .registers 5

    .line 380
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    const-string v2, "key_taint_detection_limit_times"

    invoke-virtual {v0, v2, p1, p0, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method private updateAppStartTimes()Z
    .registers 6

    .line 358
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    iget-object v1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    .line 359
    invoke-virtual {v1}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v1

    .line 358
    const-string v2, "key_taint_detection_limit_times"

    const-string v3, "0"

    invoke-virtual {v0, v2, v3, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1f

    .line 362
    sget-object v2, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v3, "[onModeOpened] updateAppStartTimes detNumber: 1"

    invoke-static {v2, v3}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_37

    .line 364
    :cond_1f
    sget-object v2, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[onModeOpened] updateAppStartTimes detNumber: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v0, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :goto_37
    const/4 v2, 0x3

    const/4 v3, 0x1

    if-ge v0, v2, :cond_44

    add-int/2addr v0, v3

    .line 367
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;->setDataValue(Ljava/lang/String;)V

    return v3

    :cond_44
    if-ge v0, v1, :cond_50

    add-int/2addr v0, v3

    .line 370
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;->setDataValue(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    .line 374
    :cond_50
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;->setDataValue(Ljava/lang/String;)V

    return v3
.end method


# virtual methods
.method public configCommand(Lcom/transsion/camera/adapter/CameraProxy;)V
    .registers 4

    .line 412
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;->mIsModeSupport:Z

    if-eqz v0, :cond_16

    const-string v0, "on"

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 413
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;->mSettingPreviewDataCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraSettingPreviewDataCallback;

    invoke-virtual {p1, p0}, Lcom/transsion/camera/adapter/CameraProxy;->registerSettingPreviewDataCallback(Lcom/transsion/camera/adapter/CameraProxy$CameraSettingPreviewDataCallback;)V

    return-void

    .line 415
    :cond_16
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;->mSettingPreviewDataCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraSettingPreviewDataCallback;

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

    .line 317
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;->mDevicePictureStateCallback:Lcom/transsion/camera/app/common/setting/ICameraSetting$DevicePictureStateCallback;

    return-object p0
.end method

.method public getKey()Ljava/lang/String;
    .registers 1

    .line 191
    const-string p0, "key_taint_detection"

    return-object p0
.end method

.method public getParametersConfigure()Lcom/transsion/camera/app/common/setting/ICameraSetting$IParametersConfigure;
    .registers 1

    return-object p0
.end method

.method public getPreviewStateCallback()Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;
    .registers 1

    .line 312
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;->mPreviewStateCallback:Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;

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

    .line 186
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

    .line 287
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

    .line 103
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/setting/SettingBase;->init(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/storage/DataStore;)V

    .line 104
    sget-object p2, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "[init] ++ "

    invoke-static {p2, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 105
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;->mContext:Landroid/content/Context;

    const/4 p2, 0x1

    .line 106
    iput-boolean p2, p0, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;->mCameraInit:Z

    .line 107
    iput-boolean p2, p0, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;->mResumed:Z

    .line 108
    invoke-static {}, Lcom/transsion/camera/utils/FeatureSupport;->isForceTaintDetectSupport()Z

    move-result p2

    iput-boolean p2, p0, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;->mIsForceTaintDetect:Z

    .line 109
    new-instance p2, Landroid/os/HandlerThread;

    const-string v0, "taint_detection"

    invoke-direct {p2, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 110
    invoke-virtual {p2}, Ljava/lang/Thread;->start()V

    .line 111
    new-instance v0, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection$TaintDetectionHandler;

    invoke-virtual {p2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p2

    const/4 v1, 0x0

    invoke-direct {v0, p0, p2, v1}, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection$TaintDetectionHandler;-><init>(Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;Landroid/os/Looper;Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection-IA;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;->mHandler:Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection$TaintDetectionHandler;

    .line 112
    new-instance p2, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetectAlgorithmImpl;

    new-instance v0, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection$TaintDetectionCallback;

    invoke-direct {v0, p0, v1}, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection$TaintDetectionCallback;-><init>(Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection-IA;)V

    invoke-direct {p2, p1, v0, p3}, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetectAlgorithmImpl;-><init>(Landroid/content/Context;Lcom/transsion/camera/feature/setting/taintdetection/ITaintDetectionCallback;Lcom/transsion/camera/app/common/storage/DataStore;)V

    iput-object p2, p0, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;->mTaintAlgorithm:Lcom/transsion/camera/feature/setting/taintdetection/TaintDetectAlgorithmImpl;

    .line 113
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz p1, :cond_42

    .line 114
    const-string p2, "key_taint_state"

    invoke-virtual {p1, p2, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 116
    :cond_42
    iput-object p3, p0, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    return-void
.end method

.method protected initValueAndSupport(Ljava/util/List;Ljava/lang/String;)V
    .registers 7
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

    .line 121
    sget-object v0, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[initValueAndSupport] ++ platformSupportedValues: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", default value:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 122
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setSupportedPlatformValues(Ljava/util/List;)V

    .line 123
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setSupportedEntryValues(Ljava/util/List;)V

    .line 124
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setEntryValues(Ljava/util/List;)V

    .line 125
    invoke-virtual {p0, p2}, Lcom/transsion/camera/app/common/setting/SettingBase;->setDefaultValue(Ljava/lang/String;)V

    .line 126
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;->getKey()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getGlobalScope()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {p1, p2, v1, v0}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 127
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p2

    invoke-virtual {p2}, Lcom/transsion/camera/utils/CustomConfigUtil;->isQcomCaptureFlow()Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_5d

    .line 128
    const-string p2, "off"

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5d

    iget-object v2, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v3, "key_dol_video_hdr"

    .line 129
    invoke-interface {v2, v3}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_5d

    const/4 p2, 0x1

    goto :goto_5e

    :cond_5d
    move p2, v0

    .line 130
    :goto_5e
    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_66

    if-eqz p2, :cond_76

    .line 131
    :cond_66
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;->getKey()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getGlobalScope()Ljava/lang/String;

    move-result-object v1

    const-string v2, "on"

    invoke-virtual {p1, p2, v2, v1, v0}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    move-object p1, v2

    .line 134
    :cond_76
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setValue(Ljava/lang/String;)V

    return-void
.end method

.method public isModeSupport()Z
    .registers 1

    .line 307
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;->mIsModeSupport:Z

    return p0
.end method

.method public declared-synchronized onModeClosed(Ljava/lang/String;)V
    .registers 3

    monitor-enter p0

    const/4 v0, 0x0

    .line 237
    :try_start_2
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;->mIsModeSupport:Z

    .line 238
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->onModeClosed(Ljava/lang/String;)V

    .line 239
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;->requestChangeCommand(Ljava/lang/String;)V

    .line 240
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;->mHandler:Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection$TaintDetectionHandler;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 241
    sget-object p1, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "[onModeClosed]: "

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_1d
    .catchall {:try_start_2 .. :try_end_1d} :catchall_1f

    .line 242
    monitor-exit p0

    return-void

    :catchall_1f
    move-exception p1

    :try_start_20
    monitor-exit p0
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_1f

    throw p1
.end method

.method public onModeOpened(Ljava/lang/String;Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;[Ljava/lang/String;)V
    .registers 9

    .line 201
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/setting/SettingBase;->onModeOpened(Ljava/lang/String;Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;[Ljava/lang/String;)V

    .line 202
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;->getKey()Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p2}, Lcom/transsion/camera/utils/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;->mIsModeSupport:Z

    .line 203
    iget-boolean p3, p0, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;->mCameraInit:Z

    if-eqz p3, :cond_1f

    const/4 p3, 0x0

    .line 204
    iput-boolean p3, p0, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;->mCameraInit:Z

    if-eqz p2, :cond_1f

    .line 207
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;->updateAppStartTimes()Z

    move-result p2

    if-eqz p2, :cond_1f

    .line 208
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;->doPollingTask()V

    .line 212
    :cond_1f
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getCameraFacing()Ljava/lang/String;

    move-result-object p2

    .line 213
    iget-boolean p3, p0, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;->mIsModeSupport:Z

    if-eqz p3, :cond_68

    const-string p3, "on"

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_68

    .line 214
    iget-object p3, p0, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;->mHandler:Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection$TaintDetectionHandler;

    const/4 v0, 0x2

    const-wide/16 v1, 0x0

    invoke-virtual {p3, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 216
    iget-object p3, p0, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;->mHandler:Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection$TaintDetectionHandler;

    const/4 v3, 0x6

    invoke-virtual {p3, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p3

    .line 217
    iget-object v4, p0, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;->mCameraFacing:Ljava/lang/String;

    if-eqz v4, :cond_68

    invoke-static {v4, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_68

    if-eqz p3, :cond_68

    .line 218
    new-instance p3, Landroid/os/Message;

    invoke-direct {p3}, Landroid/os/Message;-><init>()V

    .line 219
    iput v3, p3, Landroid/os/Message;->what:I

    .line 220
    iput v0, p3, Landroid/os/Message;->arg1:I

    .line 221
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;->mHandler:Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection$TaintDetectionHandler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 222
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;->mHandler:Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection$TaintDetectionHandler;

    invoke-virtual {v0, p3, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 223
    sget-object p3, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "facing changed, do taint detection just now."

    invoke-static {p3, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 226
    :cond_68
    iput-object p2, p0, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;->mCameraFacing:Ljava/lang/String;

    .line 227
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    if-nez p2, :cond_76

    const p2, 0x3f19999a    # 0.6f

    .line 228
    iput p2, p0, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;->mScoreLimit:F

    goto :goto_7b

    :cond_76
    const p2, 0x3ecccccd    # 0.4f

    .line 230
    iput p2, p0, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;->mScoreLimit:F

    .line 232
    :goto_7b
    sget-object p2, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[onModeOpened] mIsModeSupport: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;->mIsModeSupport:Z

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", mCameraFacing: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;->mCameraFacing:Ljava/lang/String;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", modeKey: "

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 6

    .line 292
    sget-object v0, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onStatusChanged] key = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " value = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 293
    const-string v0, "key_taint_state"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_5a

    .line 294
    check-cast p2, Ljava/lang/CharSequence;

    const-string p1, "taint_normal_state"

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v0, 0x7

    if-eqz p1, :cond_42

    .line 295
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;->mHandler:Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection$TaintDetectionHandler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 296
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;->mHandler:Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection$TaintDetectionHandler;

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void

    .line 298
    :cond_42
    const-string p1, "taint_invalid_state"

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_5a

    .line 299
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;->mHandler:Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection$TaintDetectionHandler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 300
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;->mHandler:Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection$TaintDetectionHandler;

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_5a
    return-void
.end method

.method public onValueChanged(Ljava/lang/String;)V
    .registers 5

    .line 262
    sget-object v0, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

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

    .line 263
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_6e

    .line 264
    const-string v0, "on"

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 265
    new-instance v0, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection$1;

    const-string v2, "TaintDetection"

    invoke-direct {v0, p0, v2}, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection$1;-><init>(Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;->mTask:Lcom/transsion/camera/utils/threads/WorkTask;

    goto :goto_48

    .line 273
    :cond_3f
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;->mHandler:Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection$TaintDetectionHandler;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 274
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;->hideTaintHint()V

    .line 276
    :goto_48
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setValue(Ljava/lang/String;)V

    .line 277
    invoke-static {}, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetectionRestriction;->getRestriction()Lcom/transsion/camera/app/common/relation/RelationGroup;

    move-result-object v0

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/transsion/camera/app/common/relation/RelationGroup;->getRelation(Ljava/lang/String;Z)Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object v0

    .line 278
    iget-object v2, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v2, v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->postRestriction(Lcom/transsion/camera/app/common/relation/Relation;)V

    .line 279
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;->requestChangeSettingValue(Ljava/lang/String;)V

    .line 280
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;->requestChangeCommand(Ljava/lang/String;)V

    .line 282
    :cond_6e
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getGlobalScope()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v2, p1, p0, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public bridge synthetic onZoomUIStateChanged(Z)V
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->onZoomUIStateChanged(Z)V

    return-void
.end method

.method public pause()V
    .registers 3

    .line 161
    invoke-super {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->pause()V

    .line 162
    sget-object v0, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "[pause]"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 163
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;->mResumed:Z

    const/4 v0, 0x1

    .line 164
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;->mIsPause:Z

    .line 165
    const-string v0, "on"

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 166
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;->mHandler:Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection$TaintDetectionHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 168
    :cond_22
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;->mTaintAlgorithm:Lcom/transsion/camera/feature/setting/taintdetection/TaintDetectAlgorithmImpl;

    if-eqz v0, :cond_29

    .line 169
    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetectAlgorithmImpl;->onPause()V

    .line 171
    :cond_29
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;->hideTaintHint()V

    return-void
.end method

.method public postRestrictionAfterInitialized()V
    .registers 4

    .line 139
    invoke-static {}, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetectionRestriction;->getRestriction()Lcom/transsion/camera/app/common/relation/RelationGroup;

    move-result-object v0

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/relation/RelationGroup;->getRelation(Ljava/lang/String;Z)Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 141
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->postRestriction(Lcom/transsion/camera/app/common/relation/Relation;)V

    :cond_14
    return-void
.end method

.method public restoreToSupportedPlatformValue()V
    .registers 1

    .line 322
    invoke-super {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->restoreToSupportedPlatformValue()V

    .line 323
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;->doPollingTask()V

    return-void
.end method

.method public resume()V
    .registers 5

    .line 147
    invoke-super {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->resume()V

    .line 148
    sget-object v0, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "[resume]"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 149
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;->mResumed:Z

    const/4 v0, 0x0

    .line 150
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;->mIsPause:Z

    .line 151
    const-string v0, "on"

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 152
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;->mHandler:Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection$TaintDetectionHandler;

    const/4 v1, 0x2

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 154
    :cond_24
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;->mTaintAlgorithm:Lcom/transsion/camera/feature/setting/taintdetection/TaintDetectAlgorithmImpl;

    if-eqz p0, :cond_2b

    .line 155
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetectAlgorithmImpl;->onResume()V

    :cond_2b
    return-void
.end method

.method public sendSettingChangeRequest()V
    .registers 1

    return-void
.end method

.method public setCameraCapabilities(Lcom/transsion/camera/adapter/ICameraCapabilities;)V
    .registers 5

    .line 395
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 396
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/utils/CustomConfigUtil;->isQcomCaptureFlow()Z

    move-result v0

    const-string v1, "on"

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mModeKey:Ljava/lang/String;

    const-string v2, "com.transsion.camera.feature.mode.video.VideoModeEntry"

    .line 397
    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v2, "key_dol_video_hdr"

    .line 398
    invoke-interface {v0, v2}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2c

    .line 399
    :cond_29
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 401
    :cond_2c
    const-string v0, "off"

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 402
    invoke-virtual {p0, p1, v1}, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;->initValueAndSupport(Ljava/util/List;Ljava/lang/String;)V

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
    .registers 4

    .line 176
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->turnOnSwitch(Z)V

    .line 177
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/4 v1, 0x5

    .line 178
    iput v1, v0, Landroid/os/Message;->what:I

    .line 179
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 180
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;->mHandler:Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection$TaintDetectionHandler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 181
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;->mHandler:Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection$TaintDetectionHandler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public unInit()V
    .registers 4

    .line 246
    sget-object v0, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "[unInit]"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 247
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;->mHandler:Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection$TaintDetectionHandler;

    const/4 v1, 0x1

    if-eqz v0, :cond_18

    .line 248
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 249
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;->mHandler:Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection$TaintDetectionHandler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quitSafely()V

    .line 251
    :cond_18
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz v0, :cond_21

    .line 252
    const-string v2, "key_taint_state"

    invoke-virtual {v0, v2, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 254
    :cond_21
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;->mFuture:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_2b

    .line 255
    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    const/4 v0, 0x0

    .line 256
    iput-object v0, p0, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;->mFuture:Ljava/util/concurrent/Future;

    :cond_2b
    return-void
.end method

.method public bridge synthetic updateEntryValueList(Z)V
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->updateEntryValueList(Z)V

    return-void
.end method
