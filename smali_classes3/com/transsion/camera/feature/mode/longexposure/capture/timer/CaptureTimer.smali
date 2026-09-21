.class public Lcom/transsion/camera/feature/mode/longexposure/capture/timer/CaptureTimer;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/mode/longexposure/capture/timer/CaptureTimer$CountUp;,
        Lcom/transsion/camera/feature/mode/longexposure/capture/timer/CaptureTimer$BaseTimer;,
        Lcom/transsion/camera/feature/mode/longexposure/capture/timer/CaptureTimer$CountDown;
    }
.end annotation


# static fields
.field public static final DURATION_END:J = -0x1L

.field private static final ONE_SECOND:J = 0x3e8L

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private mStopTicking:Z

.field private final mTicker:Ljava/lang/Runnable;

.field private mTimer:Lcom/transsion/camera/feature/mode/longexposure/capture/timer/CaptureTimer$BaseTimer;

.field private mTimerListener:Lcom/transsion/camera/feature/mode/longexposure/capture/ITimerListener;


# direct methods
.method static bridge synthetic -$$Nest$fgetmHandler(Lcom/transsion/camera/feature/mode/longexposure/capture/timer/CaptureTimer;)Landroid/os/Handler;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/timer/CaptureTimer;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmStopTicking(Lcom/transsion/camera/feature/mode/longexposure/capture/timer/CaptureTimer;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/timer/CaptureTimer;->mStopTicking:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmTimer(Lcom/transsion/camera/feature/mode/longexposure/capture/timer/CaptureTimer;)Lcom/transsion/camera/feature/mode/longexposure/capture/timer/CaptureTimer$BaseTimer;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/timer/CaptureTimer;->mTimer:Lcom/transsion/camera/feature/mode/longexposure/capture/timer/CaptureTimer$BaseTimer;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mnotifyTimeChanged(Lcom/transsion/camera/feature/mode/longexposure/capture/timer/CaptureTimer;J)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/mode/longexposure/capture/timer/CaptureTimer;->notifyTimeChanged(J)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mnotifyTimerEnded(Lcom/transsion/camera/feature/mode/longexposure/capture/timer/CaptureTimer;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/longexposure/capture/timer/CaptureTimer;->notifyTimerEnded()V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 23
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/feature/mode/longexposure/capture/timer/CaptureTimer;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/mode/longexposure/capture/timer/CaptureTimer;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/timer/CaptureTimer;->mHandler:Landroid/os/Handler;

    .line 33
    new-instance v0, Lcom/transsion/camera/feature/mode/longexposure/capture/timer/CaptureTimer$1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/mode/longexposure/capture/timer/CaptureTimer$1;-><init>(Lcom/transsion/camera/feature/mode/longexposure/capture/timer/CaptureTimer;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/timer/CaptureTimer;->mTicker:Ljava/lang/Runnable;

    return-void
.end method

.method private notifyTimeChanged(J)V
    .registers 3

    .line 80
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/timer/CaptureTimer;->mTimerListener:Lcom/transsion/camera/feature/mode/longexposure/capture/ITimerListener;

    if-eqz p0, :cond_7

    .line 81
    invoke-interface {p0, p1, p2}, Lcom/transsion/camera/feature/mode/longexposure/capture/ITimerListener;->onTimerUpdate(J)V

    :cond_7
    return-void
.end method

.method private notifyTimerEnded()V
    .registers 3

    .line 86
    sget-object v0, Lcom/transsion/camera/feature/mode/longexposure/capture/timer/CaptureTimer;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "notifyTimerEnded"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 87
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/timer/CaptureTimer;->mTimerListener:Lcom/transsion/camera/feature/mode/longexposure/capture/ITimerListener;

    if-eqz p0, :cond_e

    .line 88
    invoke-interface {p0}, Lcom/transsion/camera/feature/mode/longexposure/capture/ITimerListener;->onTimerEnd()V

    :cond_e
    return-void
.end method


# virtual methods
.method public setTimerListener(Lcom/transsion/camera/feature/mode/longexposure/capture/ITimerListener;)V
    .registers 2

    .line 53
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/timer/CaptureTimer;->mTimerListener:Lcom/transsion/camera/feature/mode/longexposure/capture/ITimerListener;

    return-void
.end method

.method public startTimer(Lcom/transsion/camera/feature/mode/longexposure/capture/data/TimerStyle;J)V
    .registers 7

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-gtz v0, :cond_1d

    .line 58
    sget-object p0, Lcom/transsion/camera/feature/mode/longexposure/capture/timer/CaptureTimer;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "startTimer invalid totalDuration: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 61
    :cond_1d
    sget-object v0, Lcom/transsion/camera/feature/mode/longexposure/capture/data/TimerStyle;->COUNT_UP:Lcom/transsion/camera/feature/mode/longexposure/capture/data/TimerStyle;

    if-ne v0, p1, :cond_29

    .line 62
    new-instance v0, Lcom/transsion/camera/feature/mode/longexposure/capture/timer/CaptureTimer$CountUp;

    invoke-direct {v0, p0, p2, p3}, Lcom/transsion/camera/feature/mode/longexposure/capture/timer/CaptureTimer$CountUp;-><init>(Lcom/transsion/camera/feature/mode/longexposure/capture/timer/CaptureTimer;J)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/timer/CaptureTimer;->mTimer:Lcom/transsion/camera/feature/mode/longexposure/capture/timer/CaptureTimer$BaseTimer;

    goto :goto_30

    .line 64
    :cond_29
    new-instance v0, Lcom/transsion/camera/feature/mode/longexposure/capture/timer/CaptureTimer$CountDown;

    invoke-direct {v0, p0, p2, p3}, Lcom/transsion/camera/feature/mode/longexposure/capture/timer/CaptureTimer$CountDown;-><init>(Lcom/transsion/camera/feature/mode/longexposure/capture/timer/CaptureTimer;J)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/timer/CaptureTimer;->mTimer:Lcom/transsion/camera/feature/mode/longexposure/capture/timer/CaptureTimer$BaseTimer;

    :goto_30
    const/4 v0, 0x0

    .line 66
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/timer/CaptureTimer;->mStopTicking:Z

    .line 67
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/timer/CaptureTimer;->mTimer:Lcom/transsion/camera/feature/mode/longexposure/capture/timer/CaptureTimer$BaseTimer;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/longexposure/capture/timer/CaptureTimer$BaseTimer;->updateTimer()V

    .line 68
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/timer/CaptureTimer;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/timer/CaptureTimer;->mTicker:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 69
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/timer/CaptureTimer;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/timer/CaptureTimer;->mTicker:Ljava/lang/Runnable;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 70
    sget-object p0, Lcom/transsion/camera/feature/mode/longexposure/capture/timer/CaptureTimer;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startTimer style: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", totalDuration: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public stopTimer()V
    .registers 3

    .line 74
    sget-object v0, Lcom/transsion/camera/feature/mode/longexposure/capture/timer/CaptureTimer;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "stopTimer"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 75
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/timer/CaptureTimer;->mStopTicking:Z

    .line 76
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/timer/CaptureTimer;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/timer/CaptureTimer;->mTicker:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method
