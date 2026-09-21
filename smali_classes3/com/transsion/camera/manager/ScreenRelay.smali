.class public Lcom/transsion/camera/manager/ScreenRelay;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/manager/ScreenRelay$Screen;,
        Lcom/transsion/camera/manager/ScreenRelay$InstanceHolder;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private final mCapturing:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mCurrentScreen:Lcom/transsion/camera/manager/ScreenRelay$Screen;

.field private final mMainHandler:Landroid/os/Handler;

.field private mNotifyRunnable:Ljava/lang/Runnable;

.field private final mResetRunnable:Ljava/lang/Runnable;


# direct methods
.method public static synthetic $r8$lambda$036nXqeMxJDDdPWdKXO05E1kFvY(Lcom/transsion/camera/manager/ScreenRelay;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/manager/ScreenRelay;->lambda$new$0()V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 25
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "ScreenRelay"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/manager/ScreenRelay;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/transsion/camera/manager/ScreenRelay;->mCapturing:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 57
    sget-object v0, Lcom/transsion/camera/manager/ScreenRelay$Screen;->UNKNOWN:Lcom/transsion/camera/manager/ScreenRelay$Screen;

    iput-object v0, p0, Lcom/transsion/camera/manager/ScreenRelay;->mCurrentScreen:Lcom/transsion/camera/manager/ScreenRelay$Screen;

    .line 67
    new-instance v0, Lcom/transsion/camera/manager/ScreenRelay$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/transsion/camera/manager/ScreenRelay$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/manager/ScreenRelay;)V

    iput-object v0, p0, Lcom/transsion/camera/manager/ScreenRelay;->mResetRunnable:Ljava/lang/Runnable;

    .line 73
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/transsion/camera/manager/ScreenRelay;->mMainHandler:Landroid/os/Handler;

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/manager/ScreenRelay-IA;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/manager/ScreenRelay;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/transsion/camera/manager/ScreenRelay;
    .registers 1

    .line 77
    invoke-static {}, Lcom/transsion/camera/manager/ScreenRelay$InstanceHolder;->-$$Nest$sfgetINSTANCE()Lcom/transsion/camera/manager/ScreenRelay;

    move-result-object v0

    return-object v0
.end method

.method private synthetic lambda$new$0()V
    .registers 3

    .line 68
    sget-object v0, Lcom/transsion/camera/manager/ScreenRelay;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "reset capture state"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 69
    invoke-direct {p0, v0}, Lcom/transsion/camera/manager/ScreenRelay;->updateCaptureState(Z)V

    return-void
.end method

.method private notifyState()V
    .registers 4

    .line 140
    monitor-enter p0

    .line 141
    :try_start_1
    sget-object v0, Lcom/transsion/camera/manager/ScreenRelay;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyState mNotifyRunnable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/manager/ScreenRelay;->mNotifyRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 142
    iget-object v0, p0, Lcom/transsion/camera/manager/ScreenRelay;->mNotifyRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_28

    .line 143
    iget-object v1, p0, Lcom/transsion/camera/manager/ScreenRelay;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 v0, 0x0

    .line 144
    iput-object v0, p0, Lcom/transsion/camera/manager/ScreenRelay;->mNotifyRunnable:Ljava/lang/Runnable;

    goto :goto_28

    :catchall_26
    move-exception v0

    goto :goto_2a

    .line 146
    :cond_28
    :goto_28
    monitor-exit p0

    return-void

    :goto_2a
    monitor-exit p0
    :try_end_2b
    .catchall {:try_start_1 .. :try_end_2b} :catchall_26

    throw v0
.end method

.method private screenSwitched()V
    .registers 4

    .line 100
    sget-object v0, Lcom/transsion/camera/manager/ScreenRelay;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "screenSwitched mCapturing: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/manager/ScreenRelay;->mCapturing:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 102
    iget-object v0, p0, Lcom/transsion/camera/manager/ScreenRelay;->mMainHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/transsion/camera/manager/ScreenRelay;->mResetRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 103
    iget-object v0, p0, Lcom/transsion/camera/manager/ScreenRelay;->mMainHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/transsion/camera/manager/ScreenRelay;->mResetRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x1388

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private updateCaptureState(Z)V
    .registers 5

    .line 130
    sget-object v0, Lcom/transsion/camera/manager/ScreenRelay;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateCaptureState capturing: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 131
    iget-object v0, p0, Lcom/transsion/camera/manager/ScreenRelay;->mCapturing:Ljava/util/concurrent/atomic/AtomicBoolean;

    xor-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_26

    if-nez p1, :cond_26

    .line 134
    invoke-direct {p0}, Lcom/transsion/camera/manager/ScreenRelay;->notifyState()V

    :cond_26
    return-void
.end method


# virtual methods
.method public captureComplete()V
    .registers 3

    .line 119
    sget-object v0, Lcom/transsion/camera/manager/ScreenRelay;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "captureComplete"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 120
    iget-object v0, p0, Lcom/transsion/camera/manager/ScreenRelay;->mMainHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/transsion/camera/manager/ScreenRelay;->mResetRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public captureFail()V
    .registers 3

    .line 113
    sget-object v0, Lcom/transsion/camera/manager/ScreenRelay;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "captureFail"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 114
    iget-object v0, p0, Lcom/transsion/camera/manager/ScreenRelay;->mMainHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/transsion/camera/manager/ScreenRelay;->mResetRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    .line 115
    invoke-direct {p0, v0}, Lcom/transsion/camera/manager/ScreenRelay;->updateCaptureState(Z)V

    return-void
.end method

.method public imageAvailable()V
    .registers 3

    .line 124
    sget-object v0, Lcom/transsion/camera/manager/ScreenRelay;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "imageAvailable"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 125
    iget-object v0, p0, Lcom/transsion/camera/manager/ScreenRelay;->mMainHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/transsion/camera/manager/ScreenRelay;->mResetRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    .line 126
    invoke-direct {p0, v0}, Lcom/transsion/camera/manager/ScreenRelay;->updateCaptureState(Z)V

    return-void
.end method

.method public pause()V
    .registers 4

    .line 81
    sget-object v0, Lcom/transsion/camera/manager/ScreenRelay;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "pause"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 82
    iget-object v0, p0, Lcom/transsion/camera/manager/ScreenRelay;->mMainHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/transsion/camera/manager/ScreenRelay;->mResetRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 83
    iget-object v0, p0, Lcom/transsion/camera/manager/ScreenRelay;->mCapturing:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 84
    iget-object v0, p0, Lcom/transsion/camera/manager/ScreenRelay;->mMainHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/transsion/camera/manager/ScreenRelay;->mResetRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x1388

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_20
    const/4 v0, 0x0

    .line 86
    iput-object v0, p0, Lcom/transsion/camera/manager/ScreenRelay;->mNotifyRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method public startCapture()V
    .registers 3

    .line 107
    sget-object v0, Lcom/transsion/camera/manager/ScreenRelay;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "startCapture"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 108
    iget-object v0, p0, Lcom/transsion/camera/manager/ScreenRelay;->mMainHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/transsion/camera/manager/ScreenRelay;->mResetRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x1

    .line 109
    invoke-direct {p0, v0}, Lcom/transsion/camera/manager/ScreenRelay;->updateCaptureState(Z)V

    return-void
.end method

.method public switchScreen(Lcom/transsion/camera/manager/ScreenRelay$Screen;)V
    .registers 5

    .line 91
    sget-object v0, Lcom/transsion/camera/manager/ScreenRelay;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "switchScreen mCurrentScreen: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/manager/ScreenRelay;->mCurrentScreen:Lcom/transsion/camera/manager/ScreenRelay$Screen;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " -> screen: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 93
    iget-object v0, p0, Lcom/transsion/camera/manager/ScreenRelay;->mCurrentScreen:Lcom/transsion/camera/manager/ScreenRelay$Screen;

    if-eq v0, p1, :cond_29

    .line 94
    iput-object p1, p0, Lcom/transsion/camera/manager/ScreenRelay;->mCurrentScreen:Lcom/transsion/camera/manager/ScreenRelay$Screen;

    .line 95
    invoke-direct {p0}, Lcom/transsion/camera/manager/ScreenRelay;->screenSwitched()V

    :cond_29
    return-void
.end method
