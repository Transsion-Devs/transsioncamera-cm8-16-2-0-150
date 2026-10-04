.class Lcom/singleblur/blur/STBlurPreview$ProcessThread;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/singleblur/blur/STBlurPreview;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ProcessThread"
.end annotation


# instance fields
.field callback:Lcom/singleblur/blur/STBlurPreview$Callback;

.field copyBuffer:[B

.field frontCamera:Z

.field height:I

.field private isRunning:Z

.field final syncObject:Ljava/lang/Object;

.field final synthetic this$0:Lcom/singleblur/blur/STBlurPreview;

.field width:I


# direct methods
.method constructor <init>(Lcom/singleblur/blur/STBlurPreview;)V
    .registers 2

    .line 419
    iput-object p1, p0, Lcom/singleblur/blur/STBlurPreview$ProcessThread;->this$0:Lcom/singleblur/blur/STBlurPreview;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 420
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/singleblur/blur/STBlurPreview$ProcessThread;->syncObject:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public declared-synchronized release()V
    .registers 2

    monitor-enter p0

    const/4 v0, 0x0

    .line 467
    :try_start_2
    iput-boolean v0, p0, Lcom/singleblur/blur/STBlurPreview$ProcessThread;->isRunning:Z

    .line 468
    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V
    :try_end_7
    .catchall {:try_start_2 .. :try_end_7} :catchall_9

    .line 469
    monitor-exit p0

    return-void

    :catchall_9
    move-exception v0

    :try_start_a
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_a .. :try_end_b} :catchall_9

    throw v0
.end method

.method public run()V
    .registers 9

    :goto_0
    const/4 v1, 0x0

    .line 438
    :try_start_1
    iget-boolean v0, p0, Lcom/singleblur/blur/STBlurPreview$ProcessThread;->isRunning:Z

    if-eqz v0, :cond_32

    invoke-virtual {p0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_32

    .line 439
    iget-object v2, p0, Lcom/singleblur/blur/STBlurPreview$ProcessThread;->syncObject:Ljava/lang/Object;

    monitor-enter v2
    :try_end_e
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_e} :catch_2d
    .catchall {:try_start_1 .. :try_end_e} :catchall_2b

    .line 440
    :try_start_e
    iget-object v0, p0, Lcom/singleblur/blur/STBlurPreview$ProcessThread;->syncObject:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V

    .line 441
    monitor-exit v2
    :try_end_14
    .catchall {:try_start_e .. :try_end_14} :catchall_2f

    .line 442
    :try_start_14
    iget-boolean v0, p0, Lcom/singleblur/blur/STBlurPreview$ProcessThread;->isRunning:Z
    :try_end_16
    .catch Ljava/lang/InterruptedException; {:try_start_14 .. :try_end_16} :catch_2d
    .catchall {:try_start_14 .. :try_end_16} :catchall_2b

    if-nez v0, :cond_1b

    .line 448
    iput-boolean v1, p0, Lcom/singleblur/blur/STBlurPreview$ProcessThread;->isRunning:Z

    return-void

    .line 443
    :cond_1b
    :try_start_1b
    iget-object v2, p0, Lcom/singleblur/blur/STBlurPreview$ProcessThread;->this$0:Lcom/singleblur/blur/STBlurPreview;

    iget-object v3, p0, Lcom/singleblur/blur/STBlurPreview$ProcessThread;->copyBuffer:[B

    iget v4, p0, Lcom/singleblur/blur/STBlurPreview$ProcessThread;->width:I

    iget v5, p0, Lcom/singleblur/blur/STBlurPreview$ProcessThread;->height:I

    iget-boolean v6, p0, Lcom/singleblur/blur/STBlurPreview$ProcessThread;->frontCamera:Z

    iget-object v7, p0, Lcom/singleblur/blur/STBlurPreview$ProcessThread;->callback:Lcom/singleblur/blur/STBlurPreview$Callback;

    invoke-static/range {v2 .. v7}, Lcom/singleblur/blur/STBlurPreview;->-$$Nest$mdoOnPreviewCallback(Lcom/singleblur/blur/STBlurPreview;[BIIZLcom/singleblur/blur/STBlurPreview$Callback;)V
    :try_end_2a
    .catch Ljava/lang/InterruptedException; {:try_start_1b .. :try_end_2a} :catch_2d
    .catchall {:try_start_1b .. :try_end_2a} :catchall_2b

    goto :goto_0

    :catchall_2b
    move-exception v0

    goto :goto_3b

    :catch_2d
    move-exception v0

    goto :goto_35

    :catchall_2f
    move-exception v0

    .line 441
    :try_start_30
    monitor-exit v2
    :try_end_31
    .catchall {:try_start_30 .. :try_end_31} :catchall_2f

    :try_start_31
    throw v0
    :try_end_32
    .catch Ljava/lang/InterruptedException; {:try_start_31 .. :try_end_32} :catch_2d
    .catchall {:try_start_31 .. :try_end_32} :catchall_2b

    .line 448
    :cond_32
    iput-boolean v1, p0, Lcom/singleblur/blur/STBlurPreview$ProcessThread;->isRunning:Z

    return-void

    .line 446
    :goto_35
    :try_start_35
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_38
    .catchall {:try_start_35 .. :try_end_38} :catchall_2b

    .line 448
    iput-boolean v1, p0, Lcom/singleblur/blur/STBlurPreview$ProcessThread;->isRunning:Z

    return-void

    :goto_3b
    iput-boolean v1, p0, Lcom/singleblur/blur/STBlurPreview$ProcessThread;->isRunning:Z

    .line 449
    throw v0
.end method

.method public declared-synchronized start()V
    .registers 2

    monitor-enter p0

    const/4 v0, 0x1

    .line 431
    :try_start_2
    iput-boolean v0, p0, Lcom/singleblur/blur/STBlurPreview$ProcessThread;->isRunning:Z

    .line 432
    invoke-super {p0}, Ljava/lang/Thread;->start()V
    :try_end_7
    .catchall {:try_start_2 .. :try_end_7} :catchall_9

    .line 433
    monitor-exit p0

    return-void

    :catchall_9
    move-exception v0

    :try_start_a
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_a .. :try_end_b} :catchall_9

    throw v0
.end method

.method public updateBuffer([BIIZLcom/singleblur/blur/STBlurPreview$Callback;)V
    .registers 6

    .line 453
    iput p2, p0, Lcom/singleblur/blur/STBlurPreview$ProcessThread;->width:I

    .line 454
    iput p3, p0, Lcom/singleblur/blur/STBlurPreview$ProcessThread;->height:I

    .line 455
    iput-boolean p4, p0, Lcom/singleblur/blur/STBlurPreview$ProcessThread;->frontCamera:Z

    .line 456
    iput-object p5, p0, Lcom/singleblur/blur/STBlurPreview$ProcessThread;->callback:Lcom/singleblur/blur/STBlurPreview$Callback;

    .line 457
    iget-object p2, p0, Lcom/singleblur/blur/STBlurPreview$ProcessThread;->copyBuffer:[B

    if-eqz p2, :cond_10

    array-length p3, p1

    array-length p2, p2

    if-eq p3, p2, :cond_15

    .line 458
    :cond_10
    array-length p2, p1

    new-array p2, p2, [B

    iput-object p2, p0, Lcom/singleblur/blur/STBlurPreview$ProcessThread;->copyBuffer:[B

    .line 460
    :cond_15
    iget-object p2, p0, Lcom/singleblur/blur/STBlurPreview$ProcessThread;->syncObject:Ljava/lang/Object;

    monitor-enter p2

    .line 461
    :try_start_18
    iget-object p3, p0, Lcom/singleblur/blur/STBlurPreview$ProcessThread;->copyBuffer:[B

    array-length p4, p1

    const/4 p5, 0x0

    invoke-static {p1, p5, p3, p5, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 462
    iget-object p0, p0, Lcom/singleblur/blur/STBlurPreview$ProcessThread;->syncObject:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 463
    monitor-exit p2

    return-void

    :catchall_26
    move-exception p0

    monitor-exit p2
    :try_end_28
    .catchall {:try_start_18 .. :try_end_28} :catchall_26

    throw p0
.end method
