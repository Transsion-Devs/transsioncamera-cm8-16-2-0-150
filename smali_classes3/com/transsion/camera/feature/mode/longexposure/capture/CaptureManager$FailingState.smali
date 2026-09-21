.class Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$FailingState;
.super Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$BaseState;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FailingState"
.end annotation


# static fields
.field private static final FAIL_TIME_OUT:J = 0x1388L

.field private static final FAIL_TIME_OUT_BACKGROUND:J = 0x5dcL


# instance fields
.field private final mFailExecutedRunnable:Ljava/lang/Runnable;

.field private final mHandler:Landroid/os/Handler;

.field final synthetic this$0:Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;


# direct methods
.method public static synthetic $r8$lambda$IgGlkhXVB42H14x9L37tNGm8Crs(Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$FailingState;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$FailingState;->lambda$new$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$dI1u1LVWY6AN1F-n2w587vuYLvU(Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$FailingState;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$FailingState;->lambda$triggerCancelCapture$1()V

    return-void
.end method

.method private constructor <init>(Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;)V
    .registers 4

    .line 746
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$FailingState;->this$0:Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;

    .line 747
    const-string v0, "FailingState"

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$BaseState;-><init>(Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;Ljava/lang/String;Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager-IA;)V

    .line 739
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$FailingState;->mHandler:Landroid/os/Handler;

    .line 741
    new-instance p1, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$FailingState$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$FailingState$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$FailingState;)V

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$FailingState;->mFailExecutedRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$FailingState;-><init>(Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;)V

    return-void
.end method

.method private checkSequenceComplete()V
    .registers 4

    .line 768
    invoke-static {}, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkSequenceComplete mTriggerProgress: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$FailingState;->this$0:Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;

    invoke-static {v2}, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;->-$$Nest$fgetmTriggerProgress(Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", mFailCount: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$FailingState;->this$0:Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;

    invoke-static {v2}, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;->-$$Nest$fgetmFailCount(Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", mPictureTaken: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$FailingState;->this$0:Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;

    invoke-static {v2}, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;->-$$Nest$fgetmCompleteProgress(Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 770
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$FailingState;->this$0:Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;->-$$Nest$fgetmTriggerProgress(Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$FailingState;->this$0:Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;

    invoke-static {v1}, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;->-$$Nest$fgetmFailCount(Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$FailingState;->this$0:Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;

    invoke-static {v2}, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;->-$$Nest$fgetmCompleteProgress(Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    add-int/2addr v1, v2

    if-ne v0, v1, :cond_69

    .line 771
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$FailingState;->this$0:Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;->-$$Nest$fgetmPreviewingState(Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;)Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$BaseState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$BaseState;->entry()V

    .line 772
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$FailingState;->this$0:Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;->-$$Nest$mnotifyCaptureEnd(Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;)V

    :cond_69
    return-void
.end method

.method private synthetic lambda$new$0()V
    .registers 2

    .line 742
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$FailingState;->this$0:Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;->-$$Nest$fgetmPreviewingState(Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;)Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$BaseState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$BaseState;->entry()V

    .line 743
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$FailingState;->this$0:Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;->-$$Nest$mnotifyCaptureEnd(Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;)V

    return-void
.end method

.method private synthetic lambda$triggerCancelCapture$1()V
    .registers 5

    .line 760
    invoke-static {}, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FailingState triggerCancelCapture executed mResumed:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$FailingState;->this$0:Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;

    invoke-static {v2}, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;->-$$Nest$fgetmResumed(Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 761
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$FailingState;->this$0:Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;->-$$Nest$fgetmCurrentState(Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;)Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$BaseState;

    move-result-object v0

    if-ne v0, p0, :cond_3a

    .line 762
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$FailingState;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$FailingState;->mFailExecutedRunnable:Ljava/lang/Runnable;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$FailingState;->this$0:Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;->-$$Nest$fgetmResumed(Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;)Z

    move-result p0

    if-eqz p0, :cond_35

    const-wide/16 v2, 0x1388

    goto :goto_37

    :cond_35
    const-wide/16 v2, 0x0

    :goto_37
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_3a
    return-void
.end method

.method private triggerCancelCapture()V
    .registers 3

    .line 759
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$FailingState;->this$0:Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;->-$$Nest$fgetmLongExposureCapture(Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;)Lcom/transsion/camera/feature/mode/longexposure/LongExposureCapture;

    move-result-object v0

    new-instance v1, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$FailingState$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$FailingState$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$FailingState;)V

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/mode/longexposure/LongExposureCapture;->triggerCancelCapture(Lcom/transsion/camera/feature/mode/longexposure/LongExposureCapture$ICommandCallback;)V

    return-void
.end method


# virtual methods
.method public captureComplete()V
    .registers 2

    .line 797
    invoke-super {p0}, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$BaseState;->captureComplete()V

    .line 798
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$FailingState;->this$0:Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;->-$$Nest$fgetmCompleteProgress(Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 799
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$FailingState;->checkSequenceComplete()V

    return-void
.end method

.method public captureFail()V
    .registers 2

    .line 790
    invoke-super {p0}, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$BaseState;->captureFail()V

    .line 791
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$FailingState;->this$0:Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;->-$$Nest$fgetmFailCount(Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 792
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$FailingState;->checkSequenceComplete()V

    return-void
.end method

.method protected onEntry()V
    .registers 2

    .line 752
    invoke-super {p0}, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$BaseState;->onEntry()V

    .line 753
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$FailingState;->this$0:Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;->-$$Nest$mnotifyCaptureFail(Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;)V

    .line 754
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$FailingState;->triggerCancelCapture()V

    .line 755
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$FailingState;->checkSequenceComplete()V

    return-void
.end method

.method protected onLeave()V
    .registers 2

    .line 778
    invoke-super {p0}, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$BaseState;->onLeave()V

    .line 779
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$FailingState;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public pause()V
    .registers 4

    .line 784
    invoke-super {p0}, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$BaseState;->pause()V

    .line 785
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$FailingState;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$FailingState;->mFailExecutedRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x5dc

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
