.class public Lcom/obs/services/internal/ConcurrentProgressManager;
.super Lcom/obs/services/internal/ProgressManager;
.source "SourceFile"


# instance fields
.field protected currentSecondBytes:Ljava/util/concurrent/atomic/AtomicLong;

.field protected lastSecondBytes:Ljava/util/concurrent/atomic/AtomicLong;

.field protected lastSwapTimeStamp:Ljava/util/concurrent/atomic/AtomicLong;

.field protected newlyTransferredBytes:Ljava/util/concurrent/atomic/AtomicLong;

.field private startFlag:Ljava/util/concurrent/atomic/AtomicBoolean;

.field protected transferredBytes:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method public constructor <init>(JJLcom/obs/services/model/ProgressListener;J)V
    .registers 14

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p5

    move-wide v4, p6

    .line 34
    invoke-direct/range {v0 .. v5}, Lcom/obs/services/internal/ProgressManager;-><init>(JLcom/obs/services/model/ProgressListener;J)V

    .line 25
    new-instance p0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p0, v0, Lcom/obs/services/internal/ConcurrentProgressManager;->startFlag:Ljava/util/concurrent/atomic/AtomicBoolean;

    const-wide/16 p0, 0x0

    cmp-long p2, p3, p0

    if-gez p2, :cond_1b

    .line 35
    new-instance p2, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {p2, p0, p1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    goto :goto_20

    :cond_1b
    new-instance p2, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {p2, p3, p4}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    :goto_20
    iput-object p2, v0, Lcom/obs/services/internal/ConcurrentProgressManager;->transferredBytes:Ljava/util/concurrent/atomic/AtomicLong;

    .line 36
    new-instance p2, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {p2, p0, p1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object p2, v0, Lcom/obs/services/internal/ConcurrentProgressManager;->newlyTransferredBytes:Ljava/util/concurrent/atomic/AtomicLong;

    .line 37
    new-instance p2, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 p3, -0x1

    invoke-direct {p2, p3, p4}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object p2, v0, Lcom/obs/services/internal/ConcurrentProgressManager;->lastSecondBytes:Ljava/util/concurrent/atomic/AtomicLong;

    .line 38
    new-instance p2, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {p2, p0, p1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object p2, v0, Lcom/obs/services/internal/ConcurrentProgressManager;->currentSecondBytes:Ljava/util/concurrent/atomic/AtomicLong;

    .line 39
    new-instance p0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    invoke-direct {p0, p1, p2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object p0, v0, Lcom/obs/services/internal/ConcurrentProgressManager;->lastSwapTimeStamp:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method


# virtual methods
.method protected doProgressChanged(I)V
    .registers 16

    .line 65
    iget-object v0, p0, Lcom/obs/services/internal/ConcurrentProgressManager;->transferredBytes:Ljava/util/concurrent/atomic/AtomicLong;

    move v1, p1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    move-result-wide v6

    .line 66
    iget-object v0, p0, Lcom/obs/services/internal/ConcurrentProgressManager;->newlyTransferredBytes:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    move-result-wide v4

    .line 68
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 70
    iget-object v0, p0, Lcom/obs/services/internal/ConcurrentProgressManager;->lastSwapTimeStamp:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v10

    sub-long v10, v8, v10

    .line 71
    iget-object v0, p0, Lcom/obs/services/internal/ConcurrentProgressManager;->currentSecondBytes:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    const-wide/16 v0, 0x3e8

    cmp-long v0, v10, v0

    if-lez v0, :cond_46

    .line 74
    iget-object v0, p0, Lcom/obs/services/internal/ConcurrentProgressManager;->lastSecondBytes:Ljava/util/concurrent/atomic/AtomicLong;

    iget-object v1, p0, Lcom/obs/services/internal/ConcurrentProgressManager;->currentSecondBytes:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v1

    long-to-double v1, v1

    long-to-double v10, v10

    const-wide v12, 0x408f400000000000L    # 1000.0

    div-double/2addr v10, v12

    div-double/2addr v1, v10

    double-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 75
    iget-object v0, p0, Lcom/obs/services/internal/ConcurrentProgressManager;->currentSecondBytes:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 76
    iget-object v0, p0, Lcom/obs/services/internal/ConcurrentProgressManager;->lastSwapTimeStamp:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, v8, v9}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 79
    :cond_46
    iget-wide v0, p0, Lcom/obs/services/internal/ProgressManager;->intervalBytes:J

    cmp-long v0, v4, v0

    if-ltz v0, :cond_81

    iget-wide v0, p0, Lcom/obs/services/internal/ProgressManager;->totalBytes:J

    cmp-long v2, v6, v0

    if-ltz v2, :cond_58

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_81

    .line 81
    :cond_58
    iget-object v0, p0, Lcom/obs/services/internal/ConcurrentProgressManager;->newlyTransferredBytes:Ljava/util/concurrent/atomic/AtomicLong;

    neg-long v1, v4

    invoke-virtual {v0, v4, v5, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    move-result v0

    if-eqz v0, :cond_81

    .line 82
    new-instance v3, Lcom/obs/services/internal/DefaultProgressStatus;

    move-wide v0, v8

    iget-wide v8, p0, Lcom/obs/services/internal/ProgressManager;->totalBytes:J

    iget-wide v10, p0, Lcom/obs/services/internal/ProgressManager;->lastCheckpoint:J

    sub-long v10, v0, v10

    iget-wide v12, p0, Lcom/obs/services/internal/ProgressManager;->startCheckpoint:J

    sub-long v12, v0, v12

    invoke-direct/range {v3 .. v13}, Lcom/obs/services/internal/DefaultProgressStatus;-><init>(JJJJJ)V

    .line 84
    iget-object v2, p0, Lcom/obs/services/internal/ConcurrentProgressManager;->lastSecondBytes:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/obs/services/internal/DefaultProgressStatus;->setInstantaneousSpeed(J)V

    .line 85
    iget-object v2, p0, Lcom/obs/services/internal/ProgressManager;->progressListener:Lcom/obs/services/model/ProgressListener;

    invoke-interface {v2, v3}, Lcom/obs/services/model/ProgressListener;->progressChanged(Lcom/obs/services/model/ProgressStatus;)V

    .line 86
    iput-wide v0, p0, Lcom/obs/services/internal/ProgressManager;->lastCheckpoint:J

    :cond_81
    return-void
.end method

.method public progressEnd()V
    .registers 14

    .line 51
    iget-object v0, p0, Lcom/obs/services/internal/ProgressManager;->progressListener:Lcom/obs/services/model/ProgressListener;

    if-nez v0, :cond_5

    return-void

    .line 54
    :cond_5
    monitor-enter p0

    .line 55
    :try_start_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 56
    new-instance v2, Lcom/obs/services/internal/DefaultProgressStatus;

    iget-object v3, p0, Lcom/obs/services/internal/ConcurrentProgressManager;->newlyTransferredBytes:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v3

    iget-object v5, p0, Lcom/obs/services/internal/ConcurrentProgressManager;->transferredBytes:Ljava/util/concurrent/atomic/AtomicLong;

    .line 57
    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v5

    iget-wide v7, p0, Lcom/obs/services/internal/ProgressManager;->totalBytes:J

    iget-wide v9, p0, Lcom/obs/services/internal/ProgressManager;->lastCheckpoint:J

    sub-long v9, v0, v9

    iget-wide v11, p0, Lcom/obs/services/internal/ProgressManager;->startCheckpoint:J

    sub-long v11, v0, v11

    invoke-direct/range {v2 .. v12}, Lcom/obs/services/internal/DefaultProgressStatus;-><init>(JJJJJ)V

    .line 59
    iget-object v0, p0, Lcom/obs/services/internal/ProgressManager;->progressListener:Lcom/obs/services/model/ProgressListener;

    invoke-interface {v0, v2}, Lcom/obs/services/model/ProgressListener;->progressChanged(Lcom/obs/services/model/ProgressStatus;)V

    .line 60
    monitor-exit p0

    return-void

    :catchall_2c
    move-exception v0

    monitor-exit p0
    :try_end_2e
    .catchall {:try_start_6 .. :try_end_2e} :catchall_2c

    throw v0
.end method

.method public progressStart()V
    .registers 4

    .line 44
    iget-object v0, p0, Lcom/obs/services/internal/ConcurrentProgressManager;->startFlag:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 45
    invoke-super {p0}, Lcom/obs/services/internal/ProgressManager;->progressStart()V

    :cond_d
    return-void
.end method
