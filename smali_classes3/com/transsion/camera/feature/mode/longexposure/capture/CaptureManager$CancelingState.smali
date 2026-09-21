.class Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$CancelingState;
.super Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$BaseState;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CancelingState"
.end annotation


# static fields
.field private static final CANCEL_TIME_OUT:J = 0x1f40L

.field private static final CANCEL_TIME_OUT_BACKGROUND:J


# instance fields
.field private final mCancelExecuted:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mHandler:Landroid/os/Handler;

.field private final mPerformCancelRunnable:Ljava/lang/Runnable;

.field final synthetic this$0:Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;


# direct methods
.method public static synthetic $r8$lambda$R8XK-6JdR1vB3ALRFSSQAP6APmY(Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$CancelingState;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$CancelingState;->lambda$new$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$S5bU5C4wS5OfQuPn-rxDkPWNlrs(Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$CancelingState;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$CancelingState;->lambda$new$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$oLaKYgQG7DTtsKeM8IC5tP8kmiM(Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$CancelingState;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$CancelingState;->lambda$triggerCancelCapture$2()V

    return-void
.end method

.method private constructor <init>(Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;)V
    .registers 4

    .line 555
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$CancelingState;->this$0:Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;

    .line 556
    const-string v0, "CancelingState"

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$BaseState;-><init>(Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;Ljava/lang/String;Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager-IA;)V

    .line 539
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$CancelingState;->mCancelExecuted:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 540
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$CancelingState;->mHandler:Landroid/os/Handler;

    .line 542
    new-instance p1, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$CancelingState$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$CancelingState$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$CancelingState;)V

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$CancelingState;->mPerformCancelRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$CancelingState;-><init>(Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;)V

    return-void
.end method

.method private synthetic lambda$new$0()V
    .registers 3

    .line 547
    invoke-static {}, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    const-string v1, "CancelingState triggerCancelCapture"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 548
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$CancelingState;->this$0:Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;->-$$Nest$fgetmCurrentState(Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;)Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$BaseState;

    move-result-object v0

    if-ne v0, p0, :cond_17

    .line 549
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$CancelingState;->mCancelExecuted:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_17
    return-void
.end method

.method private synthetic lambda$new$1()V
    .registers 3

    .line 543
    invoke-static {}, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    const-string v1, "CancelingState performCancelRunnable"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 544
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$CancelingState;->this$0:Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;->-$$Nest$fgetmCurrentState(Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;)Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$BaseState;

    move-result-object v0

    if-ne v0, p0, :cond_26

    .line 545
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$CancelingState;->this$0:Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;

    sget-object v1, Lcom/transsion/camera/feature/mode/longexposure/capture/data/CaptureType;->CANCEL:Lcom/transsion/camera/feature/mode/longexposure/capture/data/CaptureType;

    invoke-static {v0, v1}, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;->-$$Nest$mconfigParam(Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;Lcom/transsion/camera/feature/mode/longexposure/capture/data/CaptureType;)V

    .line 546
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$CancelingState;->this$0:Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;->-$$Nest$fgetmLongExposureCapture(Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;)Lcom/transsion/camera/feature/mode/longexposure/LongExposureCapture;

    move-result-object v0

    new-instance v1, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$CancelingState$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$CancelingState$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$CancelingState;)V

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/mode/longexposure/LongExposureCapture;->triggerCapture(Lcom/transsion/camera/feature/mode/longexposure/LongExposureCapture$ICommandCallback;)V

    :cond_26
    return-void
.end method

.method private synthetic lambda$triggerCancelCapture$2()V
    .registers 3

    .line 572
    invoke-static {}, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    const-string v1, "CancelingState triggerCancelCapture executed"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 573
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$CancelingState;->this$0:Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;->-$$Nest$fgetmCurrentState(Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;)Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$BaseState;

    move-result-object v0

    if-ne v0, p0, :cond_18

    .line 574
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$CancelingState;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$CancelingState;->mPerformCancelRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_18
    return-void
.end method

.method private triggerCancelCapture()V
    .registers 3

    .line 570
    invoke-static {}, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    const-string v1, "CancelingState triggerCancelCapture"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 571
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$CancelingState;->this$0:Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;->-$$Nest$fgetmLongExposureCapture(Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;)Lcom/transsion/camera/feature/mode/longexposure/LongExposureCapture;

    move-result-object v0

    new-instance v1, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$CancelingState$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$CancelingState$$ExternalSyntheticLambda2;-><init>(Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$CancelingState;)V

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/mode/longexposure/LongExposureCapture;->triggerCancelCapture(Lcom/transsion/camera/feature/mode/longexposure/LongExposureCapture$ICommandCallback;)V

    return-void
.end method


# virtual methods
.method public captureComplete()V
    .registers 4

    .line 612
    invoke-super {p0}, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$BaseState;->captureComplete()V

    .line 613
    invoke-static {}, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CancelingState captureComplete mCancelExecuted: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$CancelingState;->mCancelExecuted:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 614
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$CancelingState;->mCancelExecuted:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_33

    .line 615
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$CancelingState;->this$0:Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;->-$$Nest$fgetmPreviewingState(Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;)Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$BaseState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$BaseState;->entry()V

    .line 616
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$CancelingState;->this$0:Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;->-$$Nest$mnotifyCaptureEnd(Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;)V

    :cond_33
    return-void
.end method

.method public captureFail()V
    .registers 3

    .line 602
    invoke-super {p0}, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$BaseState;->captureFail()V

    .line 603
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$CancelingState;->mCancelExecuted:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 604
    invoke-static {}, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    const-string v1, "CancelingState cancelFail"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 605
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$CancelingState;->this$0:Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;->-$$Nest$fgetmPreviewingState(Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;)Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$BaseState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$BaseState;->entry()V

    .line 606
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$CancelingState;->this$0:Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;->-$$Nest$mnotifyCaptureEnd(Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;)V

    :cond_22
    return-void
.end method

.method protected onEntry()V
    .registers 4

    .line 561
    invoke-super {p0}, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$BaseState;->onEntry()V

    .line 562
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$CancelingState;->mCancelExecuted:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 563
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$CancelingState;->this$0:Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;->-$$Nest$mnotifyCaptureCancel(Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;)V

    .line 564
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$CancelingState;->triggerCancelCapture()V

    .line 565
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$CancelingState;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$CancelingState;->this$0:Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;

    invoke-static {v1}, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;->-$$Nest$fgetmResumed(Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;)Z

    move-result v1

    if-eqz v1, :cond_1e

    const-wide/16 v1, 0x1f40

    goto :goto_20

    :cond_1e
    const-wide/16 v1, 0x0

    :goto_20
    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method protected onLeave()V
    .registers 2

    .line 588
    invoke-super {p0}, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$BaseState;->onLeave()V

    .line 589
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$CancelingState;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public pause()V
    .registers 3

    .line 594
    invoke-super {p0}, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$BaseState;->pause()V

    .line 595
    invoke-static {}, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    const-string v1, "CancelingState pause"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 596
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$CancelingState;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 597
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$CancelingState;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public run()V
    .registers 3

    .line 581
    invoke-static {}, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    const-string v1, "CancelingState timeOut"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 582
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$CancelingState;->this$0:Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;->-$$Nest$fgetmPreviewingState(Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;)Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$BaseState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$BaseState;->entry()V

    .line 583
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$CancelingState;->this$0:Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;->-$$Nest$mnotifyCaptureEnd(Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;)V

    return-void
.end method
