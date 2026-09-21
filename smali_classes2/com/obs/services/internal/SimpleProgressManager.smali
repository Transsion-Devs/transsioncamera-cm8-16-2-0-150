.class public Lcom/obs/services/internal/SimpleProgressManager;
.super Lcom/obs/services/internal/ProgressManager;
.source "SourceFile"


# instance fields
.field protected currentSecondBytes:J

.field protected lastSecondBytes:J

.field protected lastSwapTimeStamp:J

.field protected newlyTransferredBytes:J

.field protected transferredBytes:J


# direct methods
.method public constructor <init>(JJLcom/obs/services/model/ProgressListener;J)V
    .registers 14

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p5

    move-wide v4, p6

    .line 30
    invoke-direct/range {v0 .. v5}, Lcom/obs/services/internal/ProgressManager;-><init>(JLcom/obs/services/model/ProgressListener;J)V

    const-wide/16 p0, -0x1

    .line 24
    iput-wide p0, v0, Lcom/obs/services/internal/SimpleProgressManager;->lastSecondBytes:J

    .line 26
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p0

    iput-wide p0, v0, Lcom/obs/services/internal/SimpleProgressManager;->lastSwapTimeStamp:J

    const-wide/16 p0, 0x0

    cmp-long p2, p3, p0

    if-gez p2, :cond_18

    move-wide p3, p0

    .line 31
    :cond_18
    iput-wide p3, v0, Lcom/obs/services/internal/SimpleProgressManager;->transferredBytes:J

    return-void
.end method


# virtual methods
.method protected doProgressChanged(I)V
    .registers 24

    move-object/from16 v0, p0

    .line 36
    iget-wide v1, v0, Lcom/obs/services/internal/SimpleProgressManager;->transferredBytes:J

    move/from16 v3, p1

    int-to-long v3, v3

    add-long/2addr v1, v3

    iput-wide v1, v0, Lcom/obs/services/internal/SimpleProgressManager;->transferredBytes:J

    .line 37
    iget-wide v1, v0, Lcom/obs/services/internal/SimpleProgressManager;->newlyTransferredBytes:J

    add-long/2addr v1, v3

    iput-wide v1, v0, Lcom/obs/services/internal/SimpleProgressManager;->newlyTransferredBytes:J

    .line 38
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 39
    iget-wide v5, v0, Lcom/obs/services/internal/SimpleProgressManager;->lastSwapTimeStamp:J

    sub-long v5, v1, v5

    .line 40
    iget-wide v7, v0, Lcom/obs/services/internal/SimpleProgressManager;->currentSecondBytes:J

    add-long/2addr v7, v3

    iput-wide v7, v0, Lcom/obs/services/internal/SimpleProgressManager;->currentSecondBytes:J

    const-wide/16 v3, 0x3e8

    cmp-long v3, v5, v3

    const-wide/16 v9, 0x0

    if-lez v3, :cond_34

    long-to-double v3, v7

    long-to-double v5, v5

    const-wide v7, 0x408f400000000000L    # 1000.0

    div-double/2addr v5, v7

    div-double/2addr v3, v5

    double-to-long v3, v3

    .line 42
    iput-wide v3, v0, Lcom/obs/services/internal/SimpleProgressManager;->lastSecondBytes:J

    .line 43
    iput-wide v9, v0, Lcom/obs/services/internal/SimpleProgressManager;->currentSecondBytes:J

    .line 44
    iput-wide v1, v0, Lcom/obs/services/internal/SimpleProgressManager;->lastSwapTimeStamp:J

    .line 46
    :cond_34
    iget-wide v12, v0, Lcom/obs/services/internal/SimpleProgressManager;->newlyTransferredBytes:J

    iget-wide v3, v0, Lcom/obs/services/internal/ProgressManager;->intervalBytes:J

    cmp-long v3, v12, v3

    if-ltz v3, :cond_67

    iget-wide v14, v0, Lcom/obs/services/internal/SimpleProgressManager;->transferredBytes:J

    iget-wide v3, v0, Lcom/obs/services/internal/ProgressManager;->totalBytes:J

    cmp-long v5, v14, v3

    if-ltz v5, :cond_4a

    const-wide/16 v5, -0x1

    cmp-long v5, v3, v5

    if-nez v5, :cond_67

    .line 48
    :cond_4a
    new-instance v11, Lcom/obs/services/internal/DefaultProgressStatus;

    iget-wide v5, v0, Lcom/obs/services/internal/ProgressManager;->lastCheckpoint:J

    sub-long v18, v1, v5

    iget-wide v5, v0, Lcom/obs/services/internal/ProgressManager;->startCheckpoint:J

    sub-long v20, v1, v5

    move-wide/from16 v16, v3

    invoke-direct/range {v11 .. v21}, Lcom/obs/services/internal/DefaultProgressStatus;-><init>(JJJJJ)V

    .line 50
    iget-wide v3, v0, Lcom/obs/services/internal/SimpleProgressManager;->lastSecondBytes:J

    invoke-virtual {v11, v3, v4}, Lcom/obs/services/internal/DefaultProgressStatus;->setInstantaneousSpeed(J)V

    .line 51
    iget-object v3, v0, Lcom/obs/services/internal/ProgressManager;->progressListener:Lcom/obs/services/model/ProgressListener;

    invoke-interface {v3, v11}, Lcom/obs/services/model/ProgressListener;->progressChanged(Lcom/obs/services/model/ProgressStatus;)V

    .line 52
    iput-wide v9, v0, Lcom/obs/services/internal/SimpleProgressManager;->newlyTransferredBytes:J

    .line 53
    iput-wide v1, v0, Lcom/obs/services/internal/ProgressManager;->lastCheckpoint:J

    :cond_67
    return-void
.end method

.method public progressEnd()V
    .registers 14

    .line 59
    iget-object v0, p0, Lcom/obs/services/internal/ProgressManager;->progressListener:Lcom/obs/services/model/ProgressListener;

    if-nez v0, :cond_5

    return-void

    .line 62
    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 63
    new-instance v2, Lcom/obs/services/internal/DefaultProgressStatus;

    iget-wide v3, p0, Lcom/obs/services/internal/SimpleProgressManager;->newlyTransferredBytes:J

    iget-wide v5, p0, Lcom/obs/services/internal/SimpleProgressManager;->transferredBytes:J

    iget-wide v7, p0, Lcom/obs/services/internal/ProgressManager;->totalBytes:J

    iget-wide v9, p0, Lcom/obs/services/internal/ProgressManager;->lastCheckpoint:J

    sub-long v9, v0, v9

    iget-wide v11, p0, Lcom/obs/services/internal/ProgressManager;->startCheckpoint:J

    sub-long v11, v0, v11

    invoke-direct/range {v2 .. v12}, Lcom/obs/services/internal/DefaultProgressStatus;-><init>(JJJJJ)V

    .line 65
    iget-object p0, p0, Lcom/obs/services/internal/ProgressManager;->progressListener:Lcom/obs/services/model/ProgressListener;

    invoke-interface {p0, v2}, Lcom/obs/services/model/ProgressListener;->progressChanged(Lcom/obs/services/model/ProgressStatus;)V

    return-void
.end method
