.class Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$StoppingState;
.super Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$BaseState;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StoppingState"
.end annotation


# static fields
.field private static final CANCEL_TIME_OUT:J = 0x5dcL


# instance fields
.field private final mCancelExecutedRunnable:Ljava/lang/Runnable;

.field private final mHandler:Landroid/os/Handler;

.field private final mStopExecuted:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final synthetic this$0:Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;


# direct methods
.method public static synthetic $r8$lambda$Tf_o45uEF3FQd5wGiDuWQy4crik(Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$StoppingState;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$StoppingState;->lambda$triggerCancelCapture$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$XclJWeEAvrIvrXxOmzy3U7FYbCw(Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$StoppingState;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$StoppingState;->lambda$new$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$e7lAhSRWRAam62y5_vw0_ZbGfAE(Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$StoppingState;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$StoppingState;->lambda$triggerEndCapture$2()V

    return-void
.end method

.method private constructor <init>(Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;)V
    .registers 4

    .line 633
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$StoppingState;->this$0:Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;

    .line 634
    const-string v0, "StoppingState"

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$BaseState;-><init>(Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;Ljava/lang/String;Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager-IA;)V

    .line 625
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$StoppingState;->mStopExecuted:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 626
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$StoppingState;->mHandler:Landroid/os/Handler;

    .line 628
    new-instance p1, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$StoppingState$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$StoppingState$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$StoppingState;)V

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$StoppingState;->mCancelExecutedRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$StoppingState;-><init>(Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;)V

    return-void
.end method

.method private synthetic lambda$new$0()V
    .registers 2

    .line 629
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$StoppingState;->this$0:Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;->-$$Nest$fgetmPreviewingState(Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;)Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$BaseState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$BaseState;->entry()V

    .line 630
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$StoppingState;->this$0:Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;->-$$Nest$mnotifyCaptureEnd(Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;)V

    return-void
.end method

.method private synthetic lambda$triggerCancelCapture$1()V
    .registers 3

    .line 673
    invoke-static {}, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    const-string v1, "StoppingState triggerCancelCapture executed"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 674
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$StoppingState;->this$0:Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;->-$$Nest$fgetmCurrentState(Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;)Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$BaseState;

    move-result-object v0

    if-ne v0, p0, :cond_1f

    .line 675
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$StoppingState;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$StoppingState;->mCancelExecutedRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 676
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$StoppingState;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$StoppingState;->mCancelExecutedRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1f
    return-void
.end method

.method private synthetic lambda$triggerEndCapture$2()V
    .registers 3

    .line 686
    invoke-static {}, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    const-string v1, "StoppingState triggerEndCapture executed"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 687
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$StoppingState;->mStopExecuted:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method private triggerAbortCapture()V
    .registers 4

    .line 646
    invoke-static {}, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "StoppingState triggerAbortCapture mIsCaptureStarted: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$StoppingState;->this$0:Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;

    invoke-static {v2}, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;->-$$Nest$fgetmIsCaptureStarted(Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " mCompleteProgress: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$StoppingState;->this$0:Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;

    invoke-static {v2}, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;->-$$Nest$fgetmCompleteProgress(Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " mTriggerProgress: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$StoppingState;->this$0:Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;

    invoke-static {v2}, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;->-$$Nest$fgetmTriggerProgress(Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 648
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$StoppingState;->this$0:Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;->-$$Nest$fgetmScene(Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/longexposure/capture/SceneManager;->picTraceMode(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6c

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$StoppingState;->this$0:Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;->-$$Nest$fgetmIsCaptureStarted(Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_6c

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$StoppingState;->this$0:Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;->-$$Nest$fgetmCompleteProgress(Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    .line 649
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$StoppingState;->this$0:Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;

    invoke-static {v1}, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;->-$$Nest$fgetmTriggerProgress(Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    if-eq v0, v1, :cond_6c

    .line 650
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$BaseState;->abortCapture()V

    return-void

    .line 652
    :cond_6c
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$StoppingState;->triggerEndCapture()V

    return-void
.end method

.method private triggerCancelCapture()V
    .registers 3

    .line 671
    invoke-static {}, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    const-string v1, "StoppingState triggerCancelCapture"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 672
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$StoppingState;->this$0:Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;->-$$Nest$fgetmLongExposureCapture(Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;)Lcom/transsion/camera/feature/mode/longexposure/LongExposureCapture;

    move-result-object v0

    new-instance v1, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$StoppingState$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$StoppingState$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$StoppingState;)V

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/mode/longexposure/LongExposureCapture;->triggerCancelCapture(Lcom/transsion/camera/feature/mode/longexposure/LongExposureCapture$ICommandCallback;)V

    return-void
.end method

.method private triggerEndCapture()V
    .registers 3

    .line 682
    invoke-static {}, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    const-string v1, "StoppingState triggerEndCapture"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 683
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$StoppingState;->this$0:Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;

    sget-object v1, Lcom/transsion/camera/feature/mode/longexposure/capture/data/CaptureType;->STOP:Lcom/transsion/camera/feature/mode/longexposure/capture/data/CaptureType;

    invoke-static {v0, v1}, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;->-$$Nest$mconfigParam(Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;Lcom/transsion/camera/feature/mode/longexposure/capture/data/CaptureType;)V

    .line 684
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$StoppingState;->this$0:Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;->-$$Nest$fgetmTriggerProgress(Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 685
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$StoppingState;->this$0:Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;->-$$Nest$fgetmLongExposureCapture(Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;)Lcom/transsion/camera/feature/mode/longexposure/LongExposureCapture;

    move-result-object v0

    new-instance v1, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$StoppingState$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$StoppingState$$ExternalSyntheticLambda2;-><init>(Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$StoppingState;)V

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/mode/longexposure/LongExposureCapture;->triggerCapture(Lcom/transsion/camera/feature/mode/longexposure/LongExposureCapture$ICommandCallback;)V

    return-void
.end method


# virtual methods
.method public captureComplete()V
    .registers 4

    .line 705
    invoke-super {p0}, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$BaseState;->captureComplete()V

    .line 706
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$StoppingState;->this$0:Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;->-$$Nest$fgetmCompleteProgress(Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 707
    invoke-static {}, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "StoppingState captureComplete mStopExecuted: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$StoppingState;->mStopExecuted:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", mPictureTaken: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$StoppingState;->this$0:Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;

    invoke-static {v2}, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;->-$$Nest$fgetmCompleteProgress(Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", mTriggerProgress: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$StoppingState;->this$0:Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;

    invoke-static {v2}, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;->-$$Nest$fgetmTriggerProgress(Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 709
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$StoppingState;->this$0:Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;->-$$Nest$fgetmCompleteProgress(Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$StoppingState;->this$0:Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;

    invoke-static {v1}, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;->-$$Nest$fgetmTriggerProgress(Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    if-ne v0, v1, :cond_6f

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$StoppingState;->this$0:Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;->-$$Nest$fgetmScene(Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;)Ljava/lang/String;

    move-result-object v0

    .line 710
    invoke-static {v0}, Lcom/transsion/camera/feature/mode/longexposure/capture/SceneManager;->picTraceMode(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6f

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$StoppingState;->mStopExecuted:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 711
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_6f

    .line 712
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$StoppingState;->triggerEndCapture()V

    :cond_6f
    return-void
.end method

.method public captureFail()V
    .registers 4

    .line 718
    invoke-super {p0}, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$BaseState;->captureFail()V

    .line 719
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$StoppingState;->this$0:Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;->-$$Nest$fgetmFailCount(Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 720
    invoke-static {}, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "StoppingState captureFail mFailCount = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$StoppingState;->this$0:Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;

    invoke-static {v2}, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;->-$$Nest$fgetmFailCount(Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mPictureTaken: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$StoppingState;->this$0:Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;

    invoke-static {v2}, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;->-$$Nest$fgetmCompleteProgress(Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", mTriggerProgress: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$StoppingState;->this$0:Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;

    invoke-static {v2}, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;->-$$Nest$fgetmTriggerProgress(Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 722
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$StoppingState;->this$0:Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;->-$$Nest$fgetmScene(Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/longexposure/capture/SceneManager;->picTraceMode(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8d

    .line 723
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$StoppingState;->this$0:Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;->-$$Nest$fgetmFailCount(Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$StoppingState;->this$0:Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;

    invoke-static {v1}, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;->-$$Nest$fgetmCompleteProgress(Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$StoppingState;->this$0:Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;

    invoke-static {v1}, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;->-$$Nest$fgetmTriggerProgress(Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    if-eq v0, v1, :cond_89

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$StoppingState;->mStopExecuted:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_89

    .line 724
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$StoppingState;->this$0:Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;->-$$Nest$fgetmFailingState(Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;)Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$BaseState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$BaseState;->entry()V

    return-void

    .line 726
    :cond_89
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$StoppingState;->triggerEndCapture()V

    return-void

    .line 729
    :cond_8d
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$StoppingState;->this$0:Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;->-$$Nest$fgetmFailingState(Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;)Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$BaseState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$BaseState;->entry()V

    return-void
.end method

.method protected onEntry()V
    .registers 3

    .line 639
    invoke-super {p0}, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$BaseState;->onEntry()V

    .line 640
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$StoppingState;->mStopExecuted:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 641
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$StoppingState;->this$0:Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;->-$$Nest$mnotifyCaptureStop(Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;)V

    .line 642
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$StoppingState;->triggerAbortCapture()V

    return-void
.end method

.method protected onLeave()V
    .registers 2

    .line 658
    invoke-super {p0}, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$BaseState;->onLeave()V

    .line 659
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$StoppingState;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public pause()V
    .registers 4

    .line 664
    invoke-super {p0}, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$BaseState;->pause()V

    .line 665
    invoke-static {}, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    const-string v1, "Stopping state pause"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 666
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$StoppingState;->triggerCancelCapture()V

    .line 667
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$StoppingState;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$StoppingState;->mCancelExecutedRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x5dc

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public pictureTaken()Z
    .registers 4

    .line 693
    invoke-static {}, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "StoppingState pictureTaken mStopExecuted: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$StoppingState;->mStopExecuted:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", mPictureTaken: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$StoppingState;->this$0:Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;

    invoke-static {v2}, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;->-$$Nest$fgetmCompleteProgress(Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", mTriggerProgress: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$StoppingState;->this$0:Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;

    invoke-static {v2}, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;->-$$Nest$fgetmTriggerProgress(Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 695
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$StoppingState;->mStopExecuted:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_4f

    .line 696
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$BaseState;->reConfigSession()V

    .line 697
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$StoppingState;->this$0:Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;->-$$Nest$fgetmPreviewingState(Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;)Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$BaseState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$BaseState;->entry()V

    .line 698
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$StoppingState;->this$0:Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;->-$$Nest$mnotifyCaptureEnd(Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;)V

    .line 700
    :cond_4f
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$StoppingState;->mStopExecuted:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    return p0
.end method
