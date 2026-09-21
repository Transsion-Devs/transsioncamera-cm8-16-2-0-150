.class Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$TimerListenerWrapper;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/feature/mode/longexposure/capture/ITimerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TimerListenerWrapper"
.end annotation


# instance fields
.field private final mDelegate:Lcom/transsion/camera/feature/mode/longexposure/capture/ITimerListener;


# direct methods
.method public static synthetic $r8$lambda$I7g5Gifp_cBPT7rFmxpy2c_ag04(Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$TimerListenerWrapper;Lcom/transsion/camera/feature/mode/longexposure/capture/data/Duration;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$TimerListenerWrapper;->lambda$onTimerStart$1(Lcom/transsion/camera/feature/mode/longexposure/capture/data/Duration;)V

    return-void
.end method

.method public static synthetic $r8$lambda$eYIIGpi2WGR7SlWyjqRtJXbXTDs(Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$TimerListenerWrapper;J)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$TimerListenerWrapper;->lambda$onTimerUpdate$0(J)V

    return-void
.end method

.method public constructor <init>(Lcom/transsion/camera/feature/mode/longexposure/capture/ITimerListener;)V
    .registers 2

    .line 808
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 809
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$TimerListenerWrapper;->mDelegate:Lcom/transsion/camera/feature/mode/longexposure/capture/ITimerListener;

    return-void
.end method

.method private synthetic lambda$onTimerStart$1(Lcom/transsion/camera/feature/mode/longexposure/capture/data/Duration;)V
    .registers 2

    .line 819
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$TimerListenerWrapper;->mDelegate:Lcom/transsion/camera/feature/mode/longexposure/capture/ITimerListener;

    invoke-interface {p0, p1}, Lcom/transsion/camera/feature/mode/longexposure/capture/ITimerListener;->onTimerStart(Lcom/transsion/camera/feature/mode/longexposure/capture/data/Duration;)V

    return-void
.end method

.method private synthetic lambda$onTimerUpdate$0(J)V
    .registers 3

    .line 814
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$TimerListenerWrapper;->mDelegate:Lcom/transsion/camera/feature/mode/longexposure/capture/ITimerListener;

    invoke-interface {p0, p1, p2}, Lcom/transsion/camera/feature/mode/longexposure/capture/ITimerListener;->onTimerUpdate(J)V

    return-void
.end method


# virtual methods
.method public onTimerEnd()V
    .registers 2

    .line 824
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$TimerListenerWrapper;->mDelegate:Lcom/transsion/camera/feature/mode/longexposure/capture/ITimerListener;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$TimerListenerWrapper$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$TimerListenerWrapper$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/feature/mode/longexposure/capture/ITimerListener;)V

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/longexposure/util/MainExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onTimerStart(Lcom/transsion/camera/feature/mode/longexposure/capture/data/Duration;)V
    .registers 3

    .line 819
    new-instance v0, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$TimerListenerWrapper$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$TimerListenerWrapper$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$TimerListenerWrapper;Lcom/transsion/camera/feature/mode/longexposure/capture/data/Duration;)V

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/longexposure/util/MainExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onTimerUpdate(J)V
    .registers 4

    .line 814
    new-instance v0, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$TimerListenerWrapper$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p1, p2}, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$TimerListenerWrapper$$ExternalSyntheticLambda2;-><init>(Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$TimerListenerWrapper;J)V

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/longexposure/util/MainExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
