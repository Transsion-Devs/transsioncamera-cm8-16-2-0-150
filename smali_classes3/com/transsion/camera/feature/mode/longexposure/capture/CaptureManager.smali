.class public Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$PreviewingState;,
        Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$BaseState;,
        Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$CapturingState;,
        Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$CancelingState;,
        Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$StoppingState;,
        Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$FailingState;,
        Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$TimerListenerWrapper;,
        Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$CaptureListenerWrapper;,
        Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$StellarTrackListenerWrapper;
    }
.end annotation


# static fields
.field private static final MIN_SHUTTER_CLICK_INTERVAL:J = 0x3e8L

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private final mAppUI:Lcom/transsion/camera/app/common/IAppUI;

.field private final mCancelingState:Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$BaseState;

.field private final mCaptureDuration:Lcom/transsion/camera/feature/mode/longexposure/capture/duration/CaptureDuration;

.field private mCaptureListener:Lcom/transsion/camera/feature/mode/longexposure/capture/ICaptureListener;

.field private final mCapturingState:Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$BaseState;

.field private final mCompleteProgress:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mCurrentState:Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$BaseState;

.field private final mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

.field private final mFailCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final mFailingState:Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$BaseState;

.field private final mIsCaptureStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mLongExposureCapture:Lcom/transsion/camera/feature/mode/longexposure/LongExposureCapture;

.field private final mParamConfigurator:Lcom/transsion/camera/feature/mode/longexposure/capture/param/ParamConfigurator;

.field private final mPreviewingState:Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$BaseState;

.field private final mRequestCancelHelper:Lcom/transsion/camera/feature/mode/longexposure/helper/RequestCancelHelper;

.field private final mResultMonitor:Lcom/transsion/camera/feature/mode/longexposure/monitor/ResultMonitor;

.field private mResumed:Z

.field private mScene:Ljava/lang/String;

.field private mShutterClickTime:J

.field private mStarSearchListener:Lcom/transsion/camera/feature/mode/longexposure/capture/IStellarTrackListener;

.field private final mStateSwitchLock:Ljava/lang/Object;

.field private final mStoppingState:Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$BaseState;

.field private mTimerListener:Lcom/transsion/camera/feature/mode/longexposure/capture/ITimerListener;

.field private final mTriggerProgress:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method static bridge synthetic -$$Nest$fgetmAppUI(Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;)Lcom/transsion/camera/app/common/IAppUI;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCancelingState(Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;)Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$BaseState;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;->mCancelingState:Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$BaseState;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCaptureDuration(Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;)Lcom/transsion/camera/feature/mode/longexposure/capture/duration/CaptureDuration;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;->mCaptureDuration:Lcom/transsion/camera/feature/mode/longexposure/capture/duration/CaptureDuration;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCapturingState(Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;)Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$BaseState;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;->mCapturingState:Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$BaseState;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCompleteProgress(Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;)Ljava/util/concurrent/atomic/AtomicInteger;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;->mCompleteProgress:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCurrentState(Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;)Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$BaseState;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;->mCurrentState:Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$BaseState;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDeviceControl(Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;)Lcom/transsion/camera/app/common/mode/CameraDeviceControl;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;->mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmFailCount(Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;)Ljava/util/concurrent/atomic/AtomicInteger;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;->mFailCount:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmFailingState(Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;)Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$BaseState;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;->mFailingState:Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$BaseState;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsCaptureStarted(Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;->mIsCaptureStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLongExposureCapture(Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;)Lcom/transsion/camera/feature/mode/longexposure/LongExposureCapture;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;->mLongExposureCapture:Lcom/transsion/camera/feature/mode/longexposure/LongExposureCapture;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmParamConfigurator(Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;)Lcom/transsion/camera/feature/mode/longexposure/capture/param/ParamConfigurator;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;->mParamConfigurator:Lcom/transsion/camera/feature/mode/longexposure/capture/param/ParamConfigurator;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPreviewingState(Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;)Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$BaseState;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;->mPreviewingState:Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$BaseState;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmRequestCancelHelper(Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;)Lcom/transsion/camera/feature/mode/longexposure/helper/RequestCancelHelper;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;->mRequestCancelHelper:Lcom/transsion/camera/feature/mode/longexposure/helper/RequestCancelHelper;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmResultMonitor(Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;)Lcom/transsion/camera/feature/mode/longexposure/monitor/ResultMonitor;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;->mResultMonitor:Lcom/transsion/camera/feature/mode/longexposure/monitor/ResultMonitor;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmResumed(Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;->mResumed:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmScene(Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;)Ljava/lang/String;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;->mScene:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmShutterClickTime(Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;)J
    .registers 3

    .line 0
    iget-wide v0, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;->mShutterClickTime:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmStateSwitchLock(Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;)Ljava/lang/Object;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;->mStateSwitchLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmStoppingState(Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;)Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$BaseState;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;->mStoppingState:Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$BaseState;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTriggerProgress(Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;)Ljava/util/concurrent/atomic/AtomicInteger;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;->mTriggerProgress:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmCurrentState(Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$BaseState;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;->mCurrentState:Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$BaseState;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmShutterClickTime(Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;J)V
    .registers 3

    .line 0
    iput-wide p1, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;->mShutterClickTime:J

    return-void
.end method

.method static bridge synthetic -$$Nest$mconfigParam(Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;Lcom/transsion/camera/feature/mode/longexposure/capture/data/CaptureType;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;->configParam(Lcom/transsion/camera/feature/mode/longexposure/capture/data/CaptureType;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mnotifyCaptureCancel(Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;->notifyCaptureCancel()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mnotifyCaptureEnd(Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;->notifyCaptureEnd()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mnotifyCaptureFail(Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;->notifyCaptureFail()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mnotifyCaptureStart(Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;->notifyCaptureStart()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mnotifyCaptureStop(Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;->notifyCaptureStop()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mnotifyStarSearchStatus(Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;I)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;->notifyStarSearchStatus(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mnotifyStellarTrackCancel(Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;Lcom/transsion/camera/feature/mode/longexposure/capture/IStellarTrackListener$ICancelCallBack;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;->notifyStellarTrackCancel(Lcom/transsion/camera/feature/mode/longexposure/capture/IStellarTrackListener$ICancelCallBack;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mnotifyTimerEnd(Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;->notifyTimerEnd()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mnotifyTimerStart(Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;Lcom/transsion/camera/feature/mode/longexposure/capture/data/Duration;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;->notifyTimerStart(Lcom/transsion/camera/feature/mode/longexposure/capture/data/Duration;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mnotifyTimerUpdate(Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;J)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;->notifyTimerUpdate(J)V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;
    .registers 1

    .line 0
    sget-object v0, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 50
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/feature/mode/longexposure/LongExposureCapture;)V
    .registers 9

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;->mTriggerProgress:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 54
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;->mCompleteProgress:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 55
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;->mFailCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 56
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;->mIsCaptureStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 57
    new-instance v0, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$PreviewingState;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$PreviewingState;-><init>(Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager-IA;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;->mPreviewingState:Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$BaseState;

    .line 58
    new-instance v2, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$CapturingState;

    invoke-direct {v2, p0, v1}, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$CapturingState;-><init>(Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager-IA;)V

    iput-object v2, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;->mCapturingState:Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$BaseState;

    .line 59
    new-instance v2, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$CancelingState;

    invoke-direct {v2, p0, v1}, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$CancelingState;-><init>(Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager-IA;)V

    iput-object v2, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;->mCancelingState:Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$BaseState;

    .line 60
    new-instance v2, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$StoppingState;

    invoke-direct {v2, p0, v1}, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$StoppingState;-><init>(Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager-IA;)V

    iput-object v2, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;->mStoppingState:Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$BaseState;

    .line 61
    new-instance v2, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$FailingState;

    invoke-direct {v2, p0, v1}, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$FailingState;-><init>(Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager-IA;)V

    iput-object v2, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;->mFailingState:Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$BaseState;

    .line 62
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;->mStateSwitchLock:Ljava/lang/Object;

    .line 83
    iput-object p2, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    .line 84
    iput-object p3, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;->mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    .line 85
    iput-object p5, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;->mLongExposureCapture:Lcom/transsion/camera/feature/mode/longexposure/LongExposureCapture;

    .line 86
    new-instance p2, Lcom/transsion/camera/feature/mode/longexposure/capture/param/ParamConfigurator;

    invoke-direct {p2, p5, p4, p3}, Lcom/transsion/camera/feature/mode/longexposure/capture/param/ParamConfigurator;-><init>(Lcom/transsion/camera/feature/mode/longexposure/LongExposureCapture;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)V

    iput-object p2, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;->mParamConfigurator:Lcom/transsion/camera/feature/mode/longexposure/capture/param/ParamConfigurator;

    .line 87
    invoke-virtual {p5}, Lcom/transsion/camera/feature/mode/longexposure/LongExposureCapture;->getResultMonitor()Lcom/transsion/camera/feature/mode/longexposure/monitor/ResultMonitor;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;->mResultMonitor:Lcom/transsion/camera/feature/mode/longexposure/monitor/ResultMonitor;

    .line 88
    new-instance p3, Lcom/transsion/camera/feature/mode/longexposure/capture/duration/CaptureDuration;

    .line 89
    invoke-virtual {p5}, Lcom/transsion/camera/feature/mode/longexposure/LongExposureCapture;->getTwilightMonitor()Lcom/transsion/camera/feature/mode/longexposure/monitor/TwilightMonitor;

    move-result-object p5

    invoke-direct {p3, p1, p4, p2, p5}, Lcom/transsion/camera/feature/mode/longexposure/capture/duration/CaptureDuration;-><init>(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/feature/mode/longexposure/monitor/ResultMonitor;Lcom/transsion/camera/feature/mode/longexposure/monitor/TwilightMonitor;)V

    iput-object p3, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;->mCaptureDuration:Lcom/transsion/camera/feature/mode/longexposure/capture/duration/CaptureDuration;

    .line 90
    new-instance p2, Lcom/transsion/camera/feature/mode/longexposure/helper/RequestCancelHelper;

    invoke-direct {p2, p1}, Lcom/transsion/camera/feature/mode/longexposure/helper/RequestCancelHelper;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;->mRequestCancelHelper:Lcom/transsion/camera/feature/mode/longexposure/helper/RequestCancelHelper;

    .line 92
    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$BaseState;->entry()V

    return-void
.end method

.method private configParam(Lcom/transsion/camera/feature/mode/longexposure/capture/data/CaptureType;)V
    .registers 5

    .line 227
    sget-object v0, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "configParam captureType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", mTriggerProgress: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;->mTriggerProgress:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 229
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;->mParamConfigurator:Lcom/transsion/camera/feature/mode/longexposure/capture/param/ParamConfigurator;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;->mScene:Ljava/lang/String;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;->mTriggerProgress:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p0

    invoke-virtual {v0, v1, p1, p0}, Lcom/transsion/camera/feature/mode/longexposure/capture/param/ParamConfigurator;->configParam(Ljava/lang/String;Lcom/transsion/camera/feature/mode/longexposure/capture/data/CaptureType;I)V

    return-void
.end method

.method private notifyCaptureCancel()V
    .registers 1

    .line 179
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;->mCaptureListener:Lcom/transsion/camera/feature/mode/longexposure/capture/ICaptureListener;

    if-eqz p0, :cond_7

    .line 180
    invoke-interface {p0}, Lcom/transsion/camera/feature/mode/longexposure/capture/ICaptureListener;->onCaptureCancel()V

    :cond_7
    return-void
.end method

.method private notifyCaptureEnd()V
    .registers 1

    .line 191
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;->mCaptureListener:Lcom/transsion/camera/feature/mode/longexposure/capture/ICaptureListener;

    if-eqz p0, :cond_7

    .line 192
    invoke-interface {p0}, Lcom/transsion/camera/feature/mode/longexposure/capture/ICaptureListener;->onCaptureEnd()V

    :cond_7
    return-void
.end method

.method private notifyCaptureFail()V
    .registers 1

    .line 173
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;->mCaptureListener:Lcom/transsion/camera/feature/mode/longexposure/capture/ICaptureListener;

    if-eqz p0, :cond_7

    .line 174
    invoke-interface {p0}, Lcom/transsion/camera/feature/mode/longexposure/capture/ICaptureListener;->onCaptureFail()V

    :cond_7
    return-void
.end method

.method private notifyCaptureStart()V
    .registers 1

    .line 167
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;->mCaptureListener:Lcom/transsion/camera/feature/mode/longexposure/capture/ICaptureListener;

    if-eqz p0, :cond_7

    .line 168
    invoke-interface {p0}, Lcom/transsion/camera/feature/mode/longexposure/capture/ICaptureListener;->onCaptureStart()V

    :cond_7
    return-void
.end method

.method private notifyCaptureStop()V
    .registers 1

    .line 185
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;->mCaptureListener:Lcom/transsion/camera/feature/mode/longexposure/capture/ICaptureListener;

    if-eqz p0, :cond_7

    .line 186
    invoke-interface {p0}, Lcom/transsion/camera/feature/mode/longexposure/capture/ICaptureListener;->onCaptureStop()V

    :cond_7
    return-void
.end method

.method private notifyStarSearchStatus(I)V
    .registers 2

    .line 215
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;->mStarSearchListener:Lcom/transsion/camera/feature/mode/longexposure/capture/IStellarTrackListener;

    if-eqz p0, :cond_7

    .line 216
    invoke-interface {p0, p1}, Lcom/transsion/camera/feature/mode/longexposure/capture/IStellarTrackListener;->onStarSearched(I)V

    :cond_7
    return-void
.end method

.method private notifyStellarTrackCancel(Lcom/transsion/camera/feature/mode/longexposure/capture/IStellarTrackListener$ICancelCallBack;)V
    .registers 2

    .line 221
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;->mStarSearchListener:Lcom/transsion/camera/feature/mode/longexposure/capture/IStellarTrackListener;

    if-eqz p0, :cond_7

    .line 222
    invoke-interface {p0, p1}, Lcom/transsion/camera/feature/mode/longexposure/capture/IStellarTrackListener;->onStellarTrackCancel(Lcom/transsion/camera/feature/mode/longexposure/capture/IStellarTrackListener$ICancelCallBack;)V

    :cond_7
    return-void
.end method

.method private notifyTimerEnd()V
    .registers 1

    .line 209
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;->mTimerListener:Lcom/transsion/camera/feature/mode/longexposure/capture/ITimerListener;

    if-eqz p0, :cond_7

    .line 210
    invoke-interface {p0}, Lcom/transsion/camera/feature/mode/longexposure/capture/ITimerListener;->onTimerEnd()V

    :cond_7
    return-void
.end method

.method private notifyTimerStart(Lcom/transsion/camera/feature/mode/longexposure/capture/data/Duration;)V
    .registers 2

    .line 197
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;->mTimerListener:Lcom/transsion/camera/feature/mode/longexposure/capture/ITimerListener;

    if-eqz p0, :cond_7

    .line 198
    invoke-interface {p0, p1}, Lcom/transsion/camera/feature/mode/longexposure/capture/ITimerListener;->onTimerStart(Lcom/transsion/camera/feature/mode/longexposure/capture/data/Duration;)V

    :cond_7
    return-void
.end method

.method private notifyTimerUpdate(J)V
    .registers 3

    .line 203
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;->mTimerListener:Lcom/transsion/camera/feature/mode/longexposure/capture/ITimerListener;

    if-eqz p0, :cond_7

    .line 204
    invoke-interface {p0, p1, p2}, Lcom/transsion/camera/feature/mode/longexposure/capture/ITimerListener;->onTimerUpdate(J)V

    :cond_7
    return-void
.end method


# virtual methods
.method public backPressed()Z
    .registers 1

    .line 143
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;->mCurrentState:Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$BaseState;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$BaseState;->backPressed()Z

    move-result p0

    return p0
.end method

.method public captureComplete()V
    .registers 1

    .line 159
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;->mCurrentState:Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$BaseState;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$BaseState;->captureComplete()V

    return-void
.end method

.method public captureFail()V
    .registers 1

    .line 155
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;->mCurrentState:Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$BaseState;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$BaseState;->captureFail()V

    return-void
.end method

.method public captureStart()V
    .registers 1

    .line 147
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;->mCurrentState:Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$BaseState;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$BaseState;->captureStart()V

    return-void
.end method

.method public pause()V
    .registers 3

    .line 129
    sget-object v0, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "pause"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 130
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;->mResumed:Z

    .line 131
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;->mCurrentState:Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$BaseState;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$BaseState;->pause()V

    return-void
.end method

.method public pictureTaken()Z
    .registers 1

    .line 163
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;->mCurrentState:Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$BaseState;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$BaseState;->pictureTaken()Z

    move-result p0

    return p0
.end method

.method public resume()V
    .registers 3

    .line 124
    sget-object v0, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "resume"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 125
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;->mResumed:Z

    return-void
.end method

.method public setCaptureListener(Lcom/transsion/camera/feature/mode/longexposure/capture/ICaptureListener;)V
    .registers 3

    if-nez p1, :cond_6

    const/4 p1, 0x0

    .line 105
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;->mCaptureListener:Lcom/transsion/camera/feature/mode/longexposure/capture/ICaptureListener;

    return-void

    .line 107
    :cond_6
    new-instance v0, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$CaptureListenerWrapper;

    invoke-direct {v0, p1}, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$CaptureListenerWrapper;-><init>(Lcom/transsion/camera/feature/mode/longexposure/capture/ICaptureListener;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;->mCaptureListener:Lcom/transsion/camera/feature/mode/longexposure/capture/ICaptureListener;

    return-void
.end method

.method public setStarSearchListener(Lcom/transsion/camera/feature/mode/longexposure/capture/IStellarTrackListener;)V
    .registers 3

    if-nez p1, :cond_6

    const/4 p1, 0x0

    .line 113
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;->mStarSearchListener:Lcom/transsion/camera/feature/mode/longexposure/capture/IStellarTrackListener;

    return-void

    .line 115
    :cond_6
    new-instance v0, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$StellarTrackListenerWrapper;

    invoke-direct {v0, p1}, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$StellarTrackListenerWrapper;-><init>(Lcom/transsion/camera/feature/mode/longexposure/capture/IStellarTrackListener;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;->mStarSearchListener:Lcom/transsion/camera/feature/mode/longexposure/capture/IStellarTrackListener;

    return-void
.end method

.method public setTimerListener(Lcom/transsion/camera/feature/mode/longexposure/capture/ITimerListener;)V
    .registers 3

    if-nez p1, :cond_6

    const/4 p1, 0x0

    .line 97
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;->mTimerListener:Lcom/transsion/camera/feature/mode/longexposure/capture/ITimerListener;

    return-void

    .line 99
    :cond_6
    new-instance v0, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$TimerListenerWrapper;

    invoke-direct {v0, p1}, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$TimerListenerWrapper;-><init>(Lcom/transsion/camera/feature/mode/longexposure/capture/ITimerListener;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;->mTimerListener:Lcom/transsion/camera/feature/mode/longexposure/capture/ITimerListener;

    return-void
.end method

.method public shutterClick()Z
    .registers 1

    .line 139
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;->mCurrentState:Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$BaseState;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$BaseState;->shutterClick()Z

    move-result p0

    return p0
.end method

.method public shutterDown()V
    .registers 1

    .line 135
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;->mCurrentState:Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$BaseState;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$BaseState;->shutterDown()V

    return-void
.end method

.method public stopCapture()V
    .registers 1

    .line 151
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;->mCurrentState:Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$BaseState;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$BaseState;->stopCapture()V

    return-void
.end method

.method public updateScene(Ljava/lang/String;)V
    .registers 2

    .line 120
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;->mScene:Ljava/lang/String;

    return-void
.end method
