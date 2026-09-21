.class Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$CapturingState;
.super Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$BaseState;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/feature/mode/longexposure/capture/ITimerListener;
.implements Lcom/transsion/camera/feature/mode/longexposure/capture/ICaptureRhythm$INextCaptureReadyListener;
.implements Lcom/transsion/camera/feature/mode/longexposure/monitor/ResultMonitor$IStarSearchListener;
.implements Lcom/transsion/camera/feature/mode/longexposure/capture/IStellarTrackListener$ICancelCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CapturingState"
.end annotation


# instance fields
.field private mCaptureRhythm:Lcom/transsion/camera/feature/mode/longexposure/capture/ICaptureRhythm;

.field private final mCaptureTimer:Lcom/transsion/camera/feature/mode/longexposure/capture/timer/CaptureTimer;

.field private mStarSearchStatus:I

.field final synthetic this$0:Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;)V
    .registers 4

    .line 353
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$CapturingState;->this$0:Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;

    .line 354
    const-string v0, "CapturingState"

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$BaseState;-><init>(Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;Ljava/lang/String;Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager-IA;)V

    const/4 p1, 0x0

    .line 347
    iput p1, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$CapturingState;->mStarSearchStatus:I

    .line 355
    new-instance p1, Lcom/transsion/camera/feature/mode/longexposure/capture/timer/CaptureTimer;

    invoke-direct {p1}, Lcom/transsion/camera/feature/mode/longexposure/capture/timer/CaptureTimer;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$CapturingState;->mCaptureTimer:Lcom/transsion/camera/feature/mode/longexposure/capture/timer/CaptureTimer;

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$CapturingState;-><init>(Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;)V

    return-void
.end method


# virtual methods
.method public backPressed()Z
    .registers 7

    .line 368
    invoke-static {}, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "backPressed mScene: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$CapturingState;->this$0:Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;

    invoke-static {v2}, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;->-$$Nest$fgetmScene(Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", mTriggerProgress: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$CapturingState;->this$0:Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;

    invoke-static {v2}, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;->-$$Nest$fgetmTriggerProgress(Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", mStarSearchStatus: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$CapturingState;->mStarSearchStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 371
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$CapturingState;->this$0:Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;->-$$Nest$fgetmScene(Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "stellartrack"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_73

    const/4 v0, 0x4

    iget v2, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$CapturingState;->mStarSearchStatus:I

    if-ne v0, v2, :cond_73

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$CapturingState;->this$0:Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;->-$$Nest$fgetmScene(Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$CapturingState;->this$0:Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;

    invoke-static {v2}, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;->-$$Nest$fgetmTriggerProgress(Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v2

    .line 373
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    invoke-static {v0, v2}, Lcom/transsion/camera/feature/mode/longexposure/capture/SceneManager;->stopCapture(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, -0x1

    if-ne v2, v0, :cond_73

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$CapturingState;->this$0:Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;->-$$Nest$fgetmRequestCancelHelper(Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;)Lcom/transsion/camera/feature/mode/longexposure/helper/RequestCancelHelper;

    move-result-object v0

    .line 374
    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/longexposure/helper/RequestCancelHelper;->shouldConfirmCancel()Z

    move-result v0

    if-eqz v0, :cond_73

    .line 375
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$CapturingState;->this$0:Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;

    invoke-static {v0, p0}, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;->-$$Nest$mnotifyStellarTrackCancel(Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;Lcom/transsion/camera/feature/mode/longexposure/capture/IStellarTrackListener$ICancelCallBack;)V

    return v1

    .line 378
    :cond_73
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object v0

    const-string v2, "-1"

    invoke-virtual {v0, v2}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setTriggerType(Ljava/lang/String;)V

    .line 379
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$CapturingState;->this$0:Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;->-$$Nest$fgetmShutterClickTime(Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x3e8

    cmp-long v0, v2, v4

    if-gtz v0, :cond_97

    .line 380
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$CapturingState;->this$0:Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;->-$$Nest$fgetmCancelingState(Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;)Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$BaseState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$BaseState;->entry()V

    goto :goto_9a

    .line 382
    :cond_97
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$CapturingState;->stopCapture()V

    :goto_9a
    return v1
.end method

.method public captureComplete()V
    .registers 4

    .line 519
    invoke-super {p0}, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$BaseState;->captureComplete()V

    .line 520
    invoke-static {}, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CapturingState captureComplete mCompleteProgress: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$CapturingState;->this$0:Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;

    invoke-static {v2}, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;->-$$Nest$fgetmCompleteProgress(Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 521
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$CapturingState;->this$0:Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;->-$$Nest$fgetmCompleteProgress(Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 522
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$CapturingState;->mCaptureRhythm:Lcom/transsion/camera/feature/mode/longexposure/capture/ICaptureRhythm;

    invoke-interface {v0}, Lcom/transsion/camera/feature/mode/longexposure/capture/ICaptureRhythm;->captureComplete()V

    .line 523
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$CapturingState;->this$0:Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;->-$$Nest$fgetmIsCaptureStarted(Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public captureFail()V
    .registers 2

    .line 528
    invoke-super {p0}, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$BaseState;->captureFail()V

    .line 529
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$CapturingState;->this$0:Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;->-$$Nest$fgetmFailCount(Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 530
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$CapturingState;->this$0:Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;->-$$Nest$fgetmFailingState(Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;)Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$BaseState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$BaseState;->entry()V

    .line 531
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$CapturingState;->this$0:Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;->-$$Nest$fgetmIsCaptureStarted(Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public captureStart()V
    .registers 2

    .line 513
    invoke-super {p0}, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$BaseState;->captureStart()V

    .line 514
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$CapturingState;->this$0:Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;->-$$Nest$fgetmIsCaptureStarted(Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public nextCaptureReady()V
    .registers 3

    .line 484
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$CapturingState;->this$0:Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;

    sget-object v1, Lcom/transsion/camera/feature/mode/longexposure/capture/data/CaptureType;->NORMAL:Lcom/transsion/camera/feature/mode/longexposure/capture/data/CaptureType;

    invoke-static {v0, v1}, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;->-$$Nest$mconfigParam(Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;Lcom/transsion/camera/feature/mode/longexposure/capture/data/CaptureType;)V

    .line 485
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$BaseState;->triggerCapture()V

    return-void
.end method

.method public onCancel()V
    .registers 2

    .line 396
    invoke-static {}, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string v0, "onCancel"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public onConfirm()V
    .registers 3

    .line 390
    invoke-static {}, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    const-string v1, "onConfirm"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 391
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$CapturingState;->stopCapture()V

    return-void
.end method

.method protected onEntry()V
    .registers 6

    .line 430
    invoke-super {p0}, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$BaseState;->onEntry()V

    .line 432
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->reportShutterTriggerTypeData(Z)V

    .line 434
    iput v1, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$CapturingState;->mStarSearchStatus:I

    .line 436
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$CapturingState;->this$0:Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;->-$$Nest$fgetmFailCount(Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 437
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$CapturingState;->this$0:Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;->-$$Nest$fgetmTriggerProgress(Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 438
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$CapturingState;->this$0:Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;->-$$Nest$fgetmCompleteProgress(Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 439
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$CapturingState;->this$0:Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;->-$$Nest$fgetmIsCaptureStarted(Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 441
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$CapturingState;->this$0:Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;->-$$Nest$fgetmCaptureDuration(Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;)Lcom/transsion/camera/feature/mode/longexposure/capture/duration/CaptureDuration;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$CapturingState;->this$0:Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;

    invoke-static {v1}, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;->-$$Nest$fgetmScene(Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/mode/longexposure/capture/duration/CaptureDuration;->getCaptureDuration(Ljava/lang/String;)Lcom/transsion/camera/feature/mode/longexposure/capture/data/Duration;

    move-result-object v0

    if-eqz v0, :cond_cc

    .line 442
    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/longexposure/capture/data/Duration;->getDuration()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-gtz v1, :cond_4f

    goto/16 :goto_cc

    .line 448
    :cond_4f
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$CapturingState;->mCaptureTimer:Lcom/transsion/camera/feature/mode/longexposure/capture/timer/CaptureTimer;

    invoke-virtual {v1, p0}, Lcom/transsion/camera/feature/mode/longexposure/capture/timer/CaptureTimer;->setTimerListener(Lcom/transsion/camera/feature/mode/longexposure/capture/ITimerListener;)V

    .line 449
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$CapturingState;->mCaptureTimer:Lcom/transsion/camera/feature/mode/longexposure/capture/timer/CaptureTimer;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/longexposure/capture/data/Duration;->getTimerStyle()Lcom/transsion/camera/feature/mode/longexposure/capture/data/TimerStyle;

    move-result-object v2

    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/longexposure/capture/data/Duration;->getDuration()J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Lcom/transsion/camera/feature/mode/longexposure/capture/timer/CaptureTimer;->startTimer(Lcom/transsion/camera/feature/mode/longexposure/capture/data/TimerStyle;J)V

    .line 451
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$CapturingState;->this$0:Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;

    invoke-static {v1}, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;->-$$Nest$fgetmScene(Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/transsion/camera/feature/mode/longexposure/capture/rhythm/RhythmFactory;->get(Ljava/lang/String;)Lcom/transsion/camera/feature/mode/longexposure/capture/ICaptureRhythm;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$CapturingState;->mCaptureRhythm:Lcom/transsion/camera/feature/mode/longexposure/capture/ICaptureRhythm;

    .line 452
    invoke-interface {v1, p0}, Lcom/transsion/camera/feature/mode/longexposure/capture/ICaptureRhythm;->setNextCaptureReadyListener(Lcom/transsion/camera/feature/mode/longexposure/capture/ICaptureRhythm$INextCaptureReadyListener;)V

    .line 453
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$CapturingState;->mCaptureRhythm:Lcom/transsion/camera/feature/mode/longexposure/capture/ICaptureRhythm;

    invoke-interface {v1}, Lcom/transsion/camera/feature/mode/longexposure/capture/ICaptureRhythm;->startCapture()V

    .line 455
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$CapturingState;->this$0:Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;

    invoke-static {v1}, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;->-$$Nest$fgetmAppUI(Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;)Lcom/transsion/camera/app/common/IAppUI;

    move-result-object v1

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-interface {v1, v4, v2, v3}, Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;->updateUIState(IILjava/lang/String;)V

    .line 456
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$CapturingState;->this$0:Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;

    invoke-static {v1}, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;->-$$Nest$fgetmAppUI(Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;)Lcom/transsion/camera/app/common/IAppUI;

    move-result-object v1

    const/16 v2, 0x111

    invoke-interface {v1, v2}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 458
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$CapturingState;->this$0:Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;

    invoke-static {v1}, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;->-$$Nest$fgetmScene(Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "stellartrack"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a3

    .line 459
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$CapturingState;->this$0:Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;

    invoke-static {v1}, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;->-$$Nest$fgetmResultMonitor(Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;)Lcom/transsion/camera/feature/mode/longexposure/monitor/ResultMonitor;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/transsion/camera/feature/mode/longexposure/monitor/ResultMonitor;->setStarSearchListener(Lcom/transsion/camera/feature/mode/longexposure/monitor/ResultMonitor$IStarSearchListener;)V

    .line 462
    :cond_a3
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$CapturingState;->this$0:Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;

    sget-object v2, Lcom/transsion/camera/feature/mode/longexposure/capture/data/CaptureType;->NORMAL:Lcom/transsion/camera/feature/mode/longexposure/capture/data/CaptureType;

    invoke-static {v1, v2}, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;->-$$Nest$mconfigParam(Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;Lcom/transsion/camera/feature/mode/longexposure/capture/data/CaptureType;)V

    .line 463
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$CapturingState;->this$0:Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;

    invoke-static {v1}, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;->-$$Nest$mnotifyCaptureStart(Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;)V

    .line 464
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$CapturingState;->this$0:Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;

    invoke-static {v1, v0}, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;->-$$Nest$mnotifyTimerStart(Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;Lcom/transsion/camera/feature/mode/longexposure/capture/data/Duration;)V

    .line 465
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$CapturingState;->this$0:Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;->-$$Nest$fgetmDeviceControl(Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;)Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    move-result-object v0

    const-string v1, "camera_click.ogg"

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->shutterSoundPlay(Ljava/lang/String;)V

    .line 466
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$CapturingState;->this$0:Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;->-$$Nest$fgetmDeviceControl(Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;)Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->stopRepeatingRequest()V

    .line 467
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$BaseState;->triggerCapture()V

    return-void

    .line 443
    :cond_cc
    :goto_cc
    invoke-static {}, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    const-string v1, "this should not happen!!!"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 444
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$CapturingState;->this$0:Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;->-$$Nest$fgetmPreviewingState(Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;)Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$BaseState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$BaseState;->entry()V

    return-void
.end method

.method protected onLeave()V
    .registers 4

    .line 472
    invoke-super {p0}, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$BaseState;->onLeave()V

    .line 473
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$CapturingState;->mCaptureTimer:Lcom/transsion/camera/feature/mode/longexposure/capture/timer/CaptureTimer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/mode/longexposure/capture/timer/CaptureTimer;->setTimerListener(Lcom/transsion/camera/feature/mode/longexposure/capture/ITimerListener;)V

    .line 474
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$CapturingState;->mCaptureTimer:Lcom/transsion/camera/feature/mode/longexposure/capture/timer/CaptureTimer;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/longexposure/capture/timer/CaptureTimer;->stopTimer()V

    .line 475
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$CapturingState;->this$0:Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;->-$$Nest$mnotifyTimerEnd(Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;)V

    .line 476
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$CapturingState;->mCaptureRhythm:Lcom/transsion/camera/feature/mode/longexposure/capture/ICaptureRhythm;

    invoke-interface {v0}, Lcom/transsion/camera/feature/mode/longexposure/capture/ICaptureRhythm;->stopCapture()V

    .line 477
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$CapturingState;->this$0:Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;->-$$Nest$fgetmScene(Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "stellartrack"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 478
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$CapturingState;->this$0:Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;->-$$Nest$fgetmResultMonitor(Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;)Lcom/transsion/camera/feature/mode/longexposure/monitor/ResultMonitor;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/transsion/camera/feature/mode/longexposure/monitor/ResultMonitor;->setStarSearchListener(Lcom/transsion/camera/feature/mode/longexposure/monitor/ResultMonitor$IStarSearchListener;)V

    :cond_2f
    return-void
.end method

.method public onStarSearched(I)V
    .registers 5

    .line 506
    invoke-static {}, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStarSearched status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 507
    iput p1, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$CapturingState;->mStarSearchStatus:I

    .line 508
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$CapturingState;->this$0:Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;

    invoke-static {p0, p1}, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;->-$$Nest$mnotifyStarSearchStatus(Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;I)V

    return-void
.end method

.method public onTimerEnd()V
    .registers 4

    .line 495
    invoke-static {}, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTimerEnd CompleteProgress: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$CapturingState;->this$0:Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;

    invoke-static {v2}, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;->-$$Nest$fgetmCompleteProgress(Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 496
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$CapturingState;->this$0:Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;->-$$Nest$fgetmScene(Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$CapturingState;->this$0:Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;

    invoke-static {v1}, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;->-$$Nest$fgetmCompleteProgress(Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    invoke-static {v0, v1}, Lcom/transsion/camera/feature/mode/longexposure/capture/SceneManager;->stopCapture(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v1, v0, :cond_43

    .line 498
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$CapturingState;->this$0:Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;->-$$Nest$fgetmCancelingState(Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;)Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$BaseState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$BaseState;->entry()V

    return-void

    :cond_43
    if-nez v0, :cond_4e

    .line 500
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$CapturingState;->this$0:Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;->-$$Nest$fgetmStoppingState(Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;)Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$BaseState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$BaseState;->entry()V

    :cond_4e
    return-void
.end method

.method public onTimerUpdate(J)V
    .registers 3

    .line 490
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$CapturingState;->this$0:Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;

    invoke-static {p0, p1, p2}, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;->-$$Nest$mnotifyTimerUpdate(Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;J)V

    return-void
.end method

.method public pause()V
    .registers 1

    .line 417
    invoke-super {p0}, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$BaseState;->pause()V

    .line 418
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$CapturingState;->this$0:Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;->-$$Nest$fgetmCancelingState(Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;)Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$BaseState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$BaseState;->entry()V

    return-void
.end method

.method public shutterClick()Z
    .registers 5

    .line 360
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$CapturingState;->this$0:Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;

    invoke-static {v2}, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;->-$$Nest$fgetmShutterClickTime(Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    cmp-long v0, v0, v2

    if-gtz v0, :cond_13

    const/4 p0, 0x0

    return p0

    .line 363
    :cond_13
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$CapturingState;->backPressed()Z

    move-result p0

    return p0
.end method

.method public shutterDown()V
    .registers 2

    .line 423
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$CapturingState;->this$0:Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;->-$$Nest$fgetmAppUI(Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;)Lcom/transsion/camera/app/common/IAppUI;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 424
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$CapturingState;->this$0:Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;->-$$Nest$fgetmAppUI(Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;)Lcom/transsion/camera/app/common/IAppUI;

    move-result-object p0

    const/16 v0, 0x179

    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    :cond_13
    return-void
.end method

.method public stopCapture()V
    .registers 4

    .line 401
    invoke-super {p0}, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$BaseState;->stopCapture()V

    .line 403
    invoke-static {}, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stopCapture mScene: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$CapturingState;->this$0:Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;

    invoke-static {v2}, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;->-$$Nest$fgetmScene(Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", mTriggerProgress: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$CapturingState;->this$0:Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;

    invoke-static {v2}, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;->-$$Nest$fgetmTriggerProgress(Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", mCompleteProgress: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$CapturingState;->this$0:Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;

    invoke-static {v2}, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;->-$$Nest$fgetmCompleteProgress(Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 406
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$CapturingState;->this$0:Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;->-$$Nest$fgetmScene(Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$CapturingState;->this$0:Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;

    invoke-static {v1}, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;->-$$Nest$fgetmCompleteProgress(Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    invoke-static {v0, v1}, Lcom/transsion/camera/feature/mode/longexposure/capture/SceneManager;->stopCapture(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v1, v0, :cond_5e

    .line 409
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$CapturingState;->this$0:Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;->-$$Nest$fgetmCancelingState(Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;)Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$BaseState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$BaseState;->entry()V

    return-void

    :cond_5e
    if-nez v0, :cond_69

    .line 411
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$CapturingState;->this$0:Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;->-$$Nest$fgetmStoppingState(Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;)Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$BaseState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$BaseState;->entry()V

    :cond_69
    return-void
.end method
