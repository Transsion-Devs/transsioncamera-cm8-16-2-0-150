.class Lcom/transsion/camera/feature/common/BaseCapture$CaptureStartingState;
.super Lcom/transsion/camera/feature/common/BaseCapture$AbstractState;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/common/BaseCapture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CaptureStartingState"
.end annotation


# static fields
.field private static final AE_LOCK_TIME_OUT:J = 0x12cL


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private mStartLockTime:J

.field final synthetic this$0:Lcom/transsion/camera/feature/common/BaseCapture;


# direct methods
.method public constructor <init>(Lcom/transsion/camera/feature/common/BaseCapture;)V
    .registers 4

    .line 530
    iput-object p1, p0, Lcom/transsion/camera/feature/common/BaseCapture$CaptureStartingState;->this$0:Lcom/transsion/camera/feature/common/BaseCapture;

    .line 531
    const-string v0, "StartingCaptureState"

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/transsion/camera/feature/common/BaseCapture$AbstractState;-><init>(Lcom/transsion/camera/feature/common/BaseCapture;Ljava/lang/String;Lcom/transsion/camera/feature/common/BaseCapture-IA;)V

    .line 532
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/feature/common/BaseCapture$CaptureStartingState;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private cancelCapture()V
    .registers 3

    .line 581
    iget-object v0, p0, Lcom/transsion/camera/feature/common/BaseCapture$CaptureStartingState;->this$0:Lcom/transsion/camera/feature/common/BaseCapture;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/transsion/camera/feature/common/BaseCapture;->-$$Nest$mlock3A(Lcom/transsion/camera/feature/common/BaseCapture;Z)V

    .line 582
    iget-object v0, p0, Lcom/transsion/camera/feature/common/BaseCapture$CaptureStartingState;->this$0:Lcom/transsion/camera/feature/common/BaseCapture;

    invoke-static {v0}, Lcom/transsion/camera/feature/common/BaseCapture;->-$$Nest$fgetmDataStream(Lcom/transsion/camera/feature/common/BaseCapture;)Lcom/transsion/camera/feature/common/IDataStream;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/transsion/camera/feature/common/IDataStream;->updateState(Z)V

    .line 583
    invoke-direct {p0}, Lcom/transsion/camera/feature/common/BaseCapture$CaptureStartingState;->triggerCaptureCanceled()V

    .line 584
    iget-object p0, p0, Lcom/transsion/camera/feature/common/BaseCapture$CaptureStartingState;->this$0:Lcom/transsion/camera/feature/common/BaseCapture;

    invoke-static {p0}, Lcom/transsion/camera/feature/common/BaseCapture;->-$$Nest$fgetmCaptureEnableState(Lcom/transsion/camera/feature/common/BaseCapture;)Lcom/transsion/camera/feature/common/BaseCapture$AbstractState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/feature/common/BaseCapture$AbstractState;->entry()V

    return-void
.end method

.method private triggerCaptureCanceled()V
    .registers 3

    .line 588
    invoke-static {}, Lcom/transsion/camera/feature/common/BaseCapture;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    const-string v1, "capture canceled"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 589
    iget-object p0, p0, Lcom/transsion/camera/feature/common/BaseCapture$CaptureStartingState;->this$0:Lcom/transsion/camera/feature/common/BaseCapture;

    iget-object p0, p0, Lcom/transsion/camera/feature/common/BaseCapture;->mStatusListener:Lcom/transsion/camera/feature/common/ICapture$IStatusListener;

    if-eqz p0, :cond_12

    .line 590
    invoke-interface {p0}, Lcom/transsion/camera/feature/common/ICapture$IStatusListener;->onCaptureFailed()V

    :cond_12
    return-void
.end method


# virtual methods
.method protected destroyStream()V
    .registers 1

    .line 576
    invoke-direct {p0}, Lcom/transsion/camera/feature/common/BaseCapture$CaptureStartingState;->cancelCapture()V

    .line 577
    invoke-super {p0}, Lcom/transsion/camera/feature/common/BaseCapture$AbstractState;->destroyStream()V

    return-void
.end method

.method protected onAeLocked()V
    .registers 3

    .line 551
    invoke-static {}, Lcom/transsion/camera/feature/common/BaseCapture;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    const-string v1, "onAeLocked"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 552
    iget-object p0, p0, Lcom/transsion/camera/feature/common/BaseCapture$CaptureStartingState;->this$0:Lcom/transsion/camera/feature/common/BaseCapture;

    invoke-static {p0}, Lcom/transsion/camera/feature/common/BaseCapture;->-$$Nest$fgetmCapturingState(Lcom/transsion/camera/feature/common/BaseCapture;)Lcom/transsion/camera/feature/common/BaseCapture$AbstractState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/feature/common/BaseCapture$AbstractState;->entry()V

    return-void
.end method

.method protected onEntry()V
    .registers 4

    .line 537
    iget-object v0, p0, Lcom/transsion/camera/feature/common/BaseCapture$CaptureStartingState;->this$0:Lcom/transsion/camera/feature/common/BaseCapture;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/transsion/camera/feature/common/BaseCapture;->-$$Nest$mlock3A(Lcom/transsion/camera/feature/common/BaseCapture;Z)V

    .line 538
    iget-object v0, p0, Lcom/transsion/camera/feature/common/BaseCapture$CaptureStartingState;->this$0:Lcom/transsion/camera/feature/common/BaseCapture;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/common/BaseCapture;->doPreCapture()V

    .line 539
    iget-object v0, p0, Lcom/transsion/camera/feature/common/BaseCapture$CaptureStartingState;->this$0:Lcom/transsion/camera/feature/common/BaseCapture;

    invoke-static {v0}, Lcom/transsion/camera/feature/common/BaseCapture;->-$$Nest$fgetmDataStream(Lcom/transsion/camera/feature/common/BaseCapture;)Lcom/transsion/camera/feature/common/IDataStream;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/transsion/camera/feature/common/IDataStream;->updateState(Z)V

    .line 540
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsion/camera/feature/common/BaseCapture$CaptureStartingState;->mStartLockTime:J

    .line 541
    iget-object v0, p0, Lcom/transsion/camera/feature/common/BaseCapture$CaptureStartingState;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method protected onLeave()V
    .registers 2

    .line 546
    iget-object v0, p0, Lcom/transsion/camera/feature/common/BaseCapture$CaptureStartingState;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public run()V
    .registers 7

    .line 557
    invoke-static {}, Lcom/transsion/camera/feature/common/BaseCapture;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    const-string v1, "ae lock timeout"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 558
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 559
    invoke-static {}, Lcom/transsion/camera/feature/common/BaseCapture;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ae lock elapse time: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lcom/transsion/camera/feature/common/BaseCapture$CaptureStartingState;->mStartLockTime:J

    sub-long/2addr v0, v4

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 560
    iget-object p0, p0, Lcom/transsion/camera/feature/common/BaseCapture$CaptureStartingState;->this$0:Lcom/transsion/camera/feature/common/BaseCapture;

    invoke-static {p0}, Lcom/transsion/camera/feature/common/BaseCapture;->-$$Nest$fgetmCapturingState(Lcom/transsion/camera/feature/common/BaseCapture;)Lcom/transsion/camera/feature/common/BaseCapture$AbstractState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/feature/common/BaseCapture$AbstractState;->entry()V

    return-void
.end method

.method protected shutterClick()V
    .registers 1

    .line 565
    invoke-direct {p0}, Lcom/transsion/camera/feature/common/BaseCapture$CaptureStartingState;->cancelCapture()V

    return-void
.end method

.method protected stopCapture()Z
    .registers 1

    .line 570
    invoke-direct {p0}, Lcom/transsion/camera/feature/common/BaseCapture$CaptureStartingState;->cancelCapture()V

    const/4 p0, 0x1

    return p0
.end method
