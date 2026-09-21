.class Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection$TaintDetectionHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TaintDetectionHandler"
.end annotation


# instance fields
.field private final MAX_INIT_COUNT:I

.field private final maxInitCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field final synthetic this$0:Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;Landroid/os/Looper;)V
    .registers 3

    .line 423
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection$TaintDetectionHandler;->this$0:Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;

    .line 424
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const/16 p1, 0x21

    .line 420
    iput p1, p0, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection$TaintDetectionHandler;->MAX_INIT_COUNT:I

    .line 421
    new-instance p2, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p2, p1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object p2, p0, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection$TaintDetectionHandler;->maxInitCount:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;Landroid/os/Looper;Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection-IA;)V
    .registers 4

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection$TaintDetectionHandler;-><init>(Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 7

    .line 429
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_18a

    goto/16 :goto_189

    .line 485
    :pswitch_9
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz p1, :cond_30

    .line 487
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection$TaintDetectionHandler;->this$0:Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {v0, p1}, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;->-$$Nest$fputmSwitchScene(Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;Z)V

    .line 488
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection$TaintDetectionHandler;->this$0:Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;

    invoke-static {p1}, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;->-$$Nest$fgetmTaintAlgorithm(Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;)Lcom/transsion/camera/feature/setting/taintdetection/TaintDetectAlgorithmImpl;

    move-result-object p1

    if-eqz p1, :cond_189

    .line 489
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection$TaintDetectionHandler;->this$0:Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;

    invoke-static {p1}, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;->-$$Nest$fgetmTaintAlgorithm(Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;)Lcom/transsion/camera/feature/setting/taintdetection/TaintDetectAlgorithmImpl;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection$TaintDetectionHandler;->this$0:Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;

    invoke-static {p0}, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;->-$$Nest$fgetmSwitchScene(Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;)Z

    move-result p0

    invoke-virtual {p1, p0}, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetectAlgorithmImpl;->setSwitchScene(Z)V

    return-void

    .line 493
    :cond_30
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection$TaintDetectionHandler;->this$0:Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;

    invoke-static {p1}, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;->-$$Nest$fgetmTaintAlgorithm(Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;)Lcom/transsion/camera/feature/setting/taintdetection/TaintDetectAlgorithmImpl;

    move-result-object p1

    if-eqz p1, :cond_189

    .line 494
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection$TaintDetectionHandler;->this$0:Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;

    invoke-static {p0}, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;->-$$Nest$fgetmTaintAlgorithm(Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;)Lcom/transsion/camera/feature/setting/taintdetection/TaintDetectAlgorithmImpl;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetectAlgorithmImpl;->setSwitchScene(Z)V

    return-void

    .line 481
    :pswitch_42
    invoke-static {}, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[MSG_TAINT_REINIT] allow alg init at the "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " times. "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 482
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection$TaintDetectionHandler;->this$0:Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;

    invoke-static {p0, v2}, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;->-$$Nest$fputmAllowInit(Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;Z)V

    return-void

    .line 466
    :pswitch_67
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection$TaintDetectionHandler;->this$0:Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {v0, p1}, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;->-$$Nest$fputmIsTurnOnSwitch(Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;Z)V

    .line 467
    invoke-static {}, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[MSG_TAINT_ALG_ENABLE]: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection$TaintDetectionHandler;->this$0:Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;

    invoke-static {v1}, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;->-$$Nest$fgetmIsTurnOnSwitch(Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 468
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection$TaintDetectionHandler;->this$0:Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;

    invoke-static {p1}, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;->-$$Nest$fgetmIsTurnOnSwitch(Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;)Z

    move-result p1

    if-eqz p1, :cond_189

    iget-object p1, p0, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection$TaintDetectionHandler;->this$0:Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;

    invoke-static {p1}, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;->-$$Nest$fgetmTask(Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;)Lcom/transsion/camera/utils/threads/WorkTask;

    move-result-object p1

    if-eqz p1, :cond_189

    .line 469
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection$TaintDetectionHandler;->this$0:Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;

    invoke-static {}, Lcom/transsion/camera/utils/threads/WorkThreadPools;->getInstance()Lcom/transsion/camera/utils/threads/WorkThreadPools;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection$TaintDetectionHandler;->this$0:Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;

    invoke-static {p0}, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;->-$$Nest$fgetmTask(Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;)Lcom/transsion/camera/utils/threads/WorkTask;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/transsion/camera/utils/threads/WorkThreadPools;->submit(Lcom/transsion/camera/utils/threads/WorkTask;)Ljava/util/concurrent/Future;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;->-$$Nest$fputmFuture(Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;Ljava/util/concurrent/Future;)V

    return-void

    .line 456
    :pswitch_b6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [B

    .line 457
    iget v3, p1, Landroid/os/Message;->arg1:I

    .line 458
    iget p1, p1, Landroid/os/Message;->arg2:I

    .line 459
    iget-object v4, p0, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection$TaintDetectionHandler;->this$0:Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;

    invoke-static {v4}, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;->-$$Nest$fgetmSwitchScene(Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;)Z

    move-result v4

    if-eqz v4, :cond_cf

    .line 460
    iget-object v4, p0, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection$TaintDetectionHandler;->this$0:Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;

    invoke-static {v4}, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;->-$$Nest$fgetmTaintAlgorithm(Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;)Lcom/transsion/camera/feature/setting/taintdetection/TaintDetectAlgorithmImpl;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetectAlgorithmImpl;->setSwitchScene(Z)V

    .line 462
    :cond_cf
    iget-object v4, p0, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection$TaintDetectionHandler;->this$0:Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;

    invoke-static {v4}, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;->-$$Nest$fgetmCameraFacing(Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    if-ne v4, v2, :cond_dc

    move v1, v2

    .line 463
    :cond_dc
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection$TaintDetectionHandler;->this$0:Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;

    invoke-static {p0}, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;->-$$Nest$fgetmTaintAlgorithm(Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;)Lcom/transsion/camera/feature/setting/taintdetection/TaintDetectAlgorithmImpl;

    move-result-object p0

    invoke-virtual {p0, v0, v3, p1, v1}, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetectAlgorithmImpl;->detectTaint([BIIZ)Z

    return-void

    .line 478
    :pswitch_e6
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection$TaintDetectionHandler;->this$0:Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;

    invoke-static {p0, v1}, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;->-$$Nest$fputmResumed(Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;Z)V

    return-void

    .line 473
    :pswitch_ec
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection$TaintDetectionHandler;->this$0:Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;

    invoke-static {p1}, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;->-$$Nest$fgetmResumed(Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;)Z

    move-result p1

    if-nez p1, :cond_189

    .line 474
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection$TaintDetectionHandler;->this$0:Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;

    invoke-static {p0, v2}, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;->-$$Nest$fputmResumed(Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;Z)V

    return-void

    .line 449
    :pswitch_fa
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection$TaintDetectionHandler;->this$0:Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;

    invoke-static {p1}, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;->-$$Nest$fgetmInit(Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;)Z

    move-result p1

    if-eqz p1, :cond_189

    .line 450
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection$TaintDetectionHandler;->this$0:Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;

    invoke-static {p1}, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;->-$$Nest$fgetmTaintAlgorithm(Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;)Lcom/transsion/camera/feature/setting/taintdetection/TaintDetectAlgorithmImpl;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetectAlgorithmImpl;->unInitTaint()V

    .line 451
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection$TaintDetectionHandler;->this$0:Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;

    invoke-static {p0, v1}, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;->-$$Nest$fputmInit(Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;Z)V

    .line 452
    invoke-static {}, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string p1, "[MSG_TAINT_UNINIT] taint alg unint"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 431
    :pswitch_11a
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection$TaintDetectionHandler;->this$0:Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;

    invoke-static {p1}, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;->-$$Nest$fgetmTaintAlgorithm(Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;)Lcom/transsion/camera/feature/setting/taintdetection/TaintDetectAlgorithmImpl;

    move-result-object p1

    if-eqz p1, :cond_189

    iget-object p1, p0, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection$TaintDetectionHandler;->this$0:Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;

    invoke-static {p1}, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;->-$$Nest$fgetmInit(Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;)Z

    move-result p1

    if-nez p1, :cond_189

    .line 432
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection$TaintDetectionHandler;->this$0:Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;

    invoke-static {p1}, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;->-$$Nest$fgetmTaintAlgorithm(Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;)Lcom/transsion/camera/feature/setting/taintdetection/TaintDetectAlgorithmImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetectAlgorithmImpl;->initTaint()Z

    move-result v0

    invoke-static {p1, v0}, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;->-$$Nest$fputmInit(Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;Z)V

    .line 433
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection$TaintDetectionHandler;->this$0:Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;

    invoke-static {p1}, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;->-$$Nest$fgetmInit(Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;)Z

    move-result p1

    const/16 v0, 0x21

    if-eqz p1, :cond_153

    .line 434
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection$TaintDetectionHandler;->this$0:Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;

    const-wide/16 v2, 0x0

    invoke-static {p1, v2, v3}, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;->-$$Nest$fputmStartTime(Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;J)V

    .line 435
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection$TaintDetectionHandler;->this$0:Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;

    invoke-static {p1, v1}, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;->-$$Nest$fputmAllowInit(Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;Z)V

    .line 436
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection$TaintDetectionHandler;->maxInitCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    goto :goto_16b

    .line 438
    :cond_153
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection$TaintDetectionHandler;->maxInitCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p1

    if-lez p1, :cond_161

    .line 439
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection$TaintDetectionHandler;->maxInitCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    goto :goto_16b

    .line 441
    :cond_161
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection$TaintDetectionHandler;->this$0:Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;

    invoke-static {p1, v1}, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;->-$$Nest$fputmAllowInit(Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;Z)V

    .line 442
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection$TaintDetectionHandler;->maxInitCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 445
    :goto_16b
    invoke-static {}, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[MSG_TAINT_INIT] taint alg init result:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection$TaintDetectionHandler;->this$0:Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;

    invoke-static {p0}, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;->-$$Nest$fgetmInit(Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;)Z

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :cond_189
    :goto_189
    return-void

    :pswitch_data_18a
    .packed-switch 0x0
        :pswitch_11a
        :pswitch_fa
        :pswitch_ec
        :pswitch_e6
        :pswitch_b6
        :pswitch_67
        :pswitch_42
        :pswitch_9
    .end packed-switch
.end method
