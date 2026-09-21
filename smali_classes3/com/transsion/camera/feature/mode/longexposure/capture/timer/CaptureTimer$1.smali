.class Lcom/transsion/camera/feature/mode/longexposure/capture/timer/CaptureTimer$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/longexposure/capture/timer/CaptureTimer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/mode/longexposure/capture/timer/CaptureTimer;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/mode/longexposure/capture/timer/CaptureTimer;)V
    .registers 2

    .line 33
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/timer/CaptureTimer$1;->this$0:Lcom/transsion/camera/feature/mode/longexposure/capture/timer/CaptureTimer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 35
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/timer/CaptureTimer$1;->this$0:Lcom/transsion/camera/feature/mode/longexposure/capture/timer/CaptureTimer;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/longexposure/capture/timer/CaptureTimer;->-$$Nest$fgetmHandler(Lcom/transsion/camera/feature/mode/longexposure/capture/timer/CaptureTimer;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 37
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/timer/CaptureTimer$1;->this$0:Lcom/transsion/camera/feature/mode/longexposure/capture/timer/CaptureTimer;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/longexposure/capture/timer/CaptureTimer;->-$$Nest$fgetmStopTicking(Lcom/transsion/camera/feature/mode/longexposure/capture/timer/CaptureTimer;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 38
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/timer/CaptureTimer$1;->this$0:Lcom/transsion/camera/feature/mode/longexposure/capture/timer/CaptureTimer;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/longexposure/capture/timer/CaptureTimer;->-$$Nest$mnotifyTimerEnded(Lcom/transsion/camera/feature/mode/longexposure/capture/timer/CaptureTimer;)V

    return-void

    .line 42
    :cond_17
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/timer/CaptureTimer$1;->this$0:Lcom/transsion/camera/feature/mode/longexposure/capture/timer/CaptureTimer;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/longexposure/capture/timer/CaptureTimer;->-$$Nest$fgetmTimer(Lcom/transsion/camera/feature/mode/longexposure/capture/timer/CaptureTimer;)Lcom/transsion/camera/feature/mode/longexposure/capture/timer/CaptureTimer$BaseTimer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/longexposure/capture/timer/CaptureTimer$BaseTimer;->onTimeChanged()V

    .line 44
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/timer/CaptureTimer$1;->this$0:Lcom/transsion/camera/feature/mode/longexposure/capture/timer/CaptureTimer;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/longexposure/capture/timer/CaptureTimer;->-$$Nest$fgetmTimer(Lcom/transsion/camera/feature/mode/longexposure/capture/timer/CaptureTimer;)Lcom/transsion/camera/feature/mode/longexposure/capture/timer/CaptureTimer$BaseTimer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/longexposure/capture/timer/CaptureTimer$BaseTimer;->timeEnded()Z

    move-result v0

    if-nez v0, :cond_38

    .line 45
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/timer/CaptureTimer$1;->this$0:Lcom/transsion/camera/feature/mode/longexposure/capture/timer/CaptureTimer;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/longexposure/capture/timer/CaptureTimer;->-$$Nest$fgetmHandler(Lcom/transsion/camera/feature/mode/longexposure/capture/timer/CaptureTimer;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    .line 47
    :cond_38
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/timer/CaptureTimer$1;->this$0:Lcom/transsion/camera/feature/mode/longexposure/capture/timer/CaptureTimer;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/longexposure/capture/timer/CaptureTimer;->-$$Nest$mnotifyTimerEnded(Lcom/transsion/camera/feature/mode/longexposure/capture/timer/CaptureTimer;)V

    return-void
.end method
