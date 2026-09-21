.class public Lcom/obs/services/internal/task/UploadTaskProgressStatus;
.super Lcom/obs/services/internal/task/DefaultTaskProgressStatus;
.source "SourceFile"

# interfaces
.implements Lcom/obs/services/model/UploadProgressStatus;


# instance fields
.field private endingTaskSize:Ljava/util/concurrent/atomic/AtomicLong;

.field private final progressInterval:J

.field private final startDate:Ljava/util/Date;

.field private taskTable:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/obs/services/model/ProgressStatus;",
            ">;"
        }
    .end annotation
.end field

.field private taskTagSize:Ljava/util/concurrent/atomic/AtomicLong;

.field private totalMilliseconds:Ljava/util/concurrent/atomic/AtomicLong;

.field private totalSize:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method public constructor <init>(JLjava/util/Date;)V
    .registers 5

    .line 36
    invoke-direct {p0}, Lcom/obs/services/internal/task/DefaultTaskProgressStatus;-><init>()V

    .line 30
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/obs/services/internal/task/UploadTaskProgressStatus;->taskTable:Ljava/util/concurrent/ConcurrentHashMap;

    .line 31
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lcom/obs/services/internal/task/UploadTaskProgressStatus;->totalSize:Ljava/util/concurrent/atomic/AtomicLong;

    .line 32
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lcom/obs/services/internal/task/UploadTaskProgressStatus;->totalMilliseconds:Ljava/util/concurrent/atomic/AtomicLong;

    .line 33
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lcom/obs/services/internal/task/UploadTaskProgressStatus;->endingTaskSize:Ljava/util/concurrent/atomic/AtomicLong;

    .line 34
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lcom/obs/services/internal/task/UploadTaskProgressStatus;->taskTagSize:Ljava/util/concurrent/atomic/AtomicLong;

    .line 37
    iput-wide p1, p0, Lcom/obs/services/internal/task/UploadTaskProgressStatus;->progressInterval:J

    .line 38
    invoke-static {p3}, Lcom/obs/services/internal/utils/ServiceUtils;->cloneDateIgnoreNull(Ljava/util/Date;)Ljava/util/Date;

    move-result-object p1

    iput-object p1, p0, Lcom/obs/services/internal/task/UploadTaskProgressStatus;->startDate:Ljava/util/Date;

    return-void
.end method


# virtual methods
.method public addEndingTaskSize(J)V
    .registers 3

    .line 158
    iget-object p0, p0, Lcom/obs/services/internal/task/UploadTaskProgressStatus;->endingTaskSize:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    return-void
.end method

.method public addTotalSize(J)V
    .registers 3

    .line 123
    iget-object p0, p0, Lcom/obs/services/internal/task/UploadTaskProgressStatus;->totalSize:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    return-void
.end method

.method public getAverageSpeed()D
    .registers 5

    .line 100
    iget-object v0, p0, Lcom/obs/services/internal/task/UploadTaskProgressStatus;->totalMilliseconds:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_f

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    return-wide v0

    .line 103
    :cond_f
    invoke-virtual {p0}, Lcom/obs/services/internal/task/UploadTaskProgressStatus;->getTransferredSize()J

    move-result-wide v0

    long-to-double v0, v0

    const-wide v2, 0x408f400000000000L    # 1000.0

    mul-double/2addr v0, v2

    iget-object p0, p0, Lcom/obs/services/internal/task/UploadTaskProgressStatus;->totalMilliseconds:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    long-to-double v2, v2

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public getEndingTaskSize()J
    .registers 3

    .line 150
    iget-object p0, p0, Lcom/obs/services/internal/task/UploadTaskProgressStatus;->endingTaskSize:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    return-wide v0
.end method

.method public getInstantaneousSpeed()D
    .registers 5

    .line 87
    iget-object p0, p0, Lcom/obs/services/internal/task/UploadTaskProgressStatus;->taskTable:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz p0, :cond_2a

    .line 89
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const-wide/16 v0, 0x0

    :goto_e
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_28

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    long-to-double v0, v0

    .line 90
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/obs/services/model/ProgressStatus;

    invoke-interface {v2}, Lcom/obs/services/model/ProgressStatus;->getInstantaneousSpeed()D

    move-result-wide v2

    add-double/2addr v0, v2

    double-to-long v0, v0

    goto :goto_e

    :cond_28
    long-to-double v0, v0

    return-wide v0

    :cond_2a
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    return-wide v0
.end method

.method public getStartDate()Ljava/util/Date;
    .registers 1

    .line 162
    iget-object p0, p0, Lcom/obs/services/internal/task/UploadTaskProgressStatus;->startDate:Ljava/util/Date;

    invoke-static {p0}, Lcom/obs/services/internal/utils/ServiceUtils;->cloneDateIgnoreNull(Ljava/util/Date;)Ljava/util/Date;

    move-result-object p0

    return-object p0
.end method

.method public getTaskStatus(Ljava/lang/String;)Lcom/obs/services/model/ProgressStatus;
    .registers 2

    .line 115
    iget-object p0, p0, Lcom/obs/services/internal/task/UploadTaskProgressStatus;->taskTable:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/obs/services/model/ProgressStatus;

    return-object p0
.end method

.method public getTaskTable()Ljava/util/concurrent/ConcurrentHashMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/obs/services/model/ProgressStatus;",
            ">;"
        }
    .end annotation

    .line 108
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    iget-object p0, p0, Lcom/obs/services/internal/task/UploadTaskProgressStatus;->taskTable:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public getTaskTagSize()J
    .registers 3

    .line 46
    iget-object p0, p0, Lcom/obs/services/internal/task/UploadTaskProgressStatus;->taskTagSize:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    return-wide v0
.end method

.method public getTotalMilliseconds()J
    .registers 3

    .line 142
    iget-object p0, p0, Lcom/obs/services/internal/task/UploadTaskProgressStatus;->totalMilliseconds:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    return-wide v0
.end method

.method public getTotalSize()J
    .registers 3

    .line 67
    invoke-virtual {p0}, Lcom/obs/services/internal/task/DefaultTaskProgressStatus;->getTotalTaskNum()I

    move-result v0

    if-gtz v0, :cond_9

    const-wide/16 v0, -0x1

    return-wide v0

    .line 70
    :cond_9
    iget-object p0, p0, Lcom/obs/services/internal/task/UploadTaskProgressStatus;->totalSize:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    return-wide v0
.end method

.method public getTransferredSize()J
    .registers 5

    .line 76
    iget-object v0, p0, Lcom/obs/services/internal/task/UploadTaskProgressStatus;->endingTaskSize:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    .line 77
    new-instance v2, Ljava/util/concurrent/ConcurrentHashMap;

    iget-object p0, p0, Lcom/obs/services/internal/task/UploadTaskProgressStatus;->taskTable:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v2, p0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(Ljava/util/Map;)V

    .line 79
    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_15
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2d

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 80
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/obs/services/model/ProgressStatus;

    invoke-interface {v2}, Lcom/obs/services/model/ProgressStatus;->getTransferredBytes()J

    move-result-wide v2

    add-long/2addr v0, v2

    goto :goto_15

    :cond_2d
    return-wide v0
.end method

.method public isRefreshprogress()Z
    .registers 9

    .line 50
    iget-wide v0, p0, Lcom/obs/services/internal/task/UploadTaskProgressStatus;->progressInterval:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-gtz v0, :cond_a

    return v1

    .line 54
    :cond_a
    invoke-virtual {p0}, Lcom/obs/services/internal/task/UploadTaskProgressStatus;->getTransferredSize()J

    move-result-wide v2

    .line 55
    invoke-virtual {p0}, Lcom/obs/services/internal/task/UploadTaskProgressStatus;->getTaskTagSize()J

    move-result-wide v4

    sub-long v4, v2, v4

    .line 56
    iget-wide v6, p0, Lcom/obs/services/internal/task/UploadTaskProgressStatus;->progressInterval:J

    cmp-long v0, v4, v6

    if-ltz v0, :cond_1f

    .line 57
    invoke-virtual {p0, v2, v3}, Lcom/obs/services/internal/task/UploadTaskProgressStatus;->setTaskTagSize(J)V

    const/4 p0, 0x1

    return p0

    :cond_1f
    return v1
.end method

.method public putTaskTable(Ljava/lang/String;Lcom/obs/services/model/ProgressStatus;)V
    .registers 3

    .line 131
    iget-object p0, p0, Lcom/obs/services/internal/task/UploadTaskProgressStatus;->taskTable:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public removeTaskTable(Ljava/lang/String;)V
    .registers 2

    .line 135
    iget-object p0, p0, Lcom/obs/services/internal/task/UploadTaskProgressStatus;->taskTable:Ljava/util/concurrent/ConcurrentHashMap;

    if-nez p0, :cond_5

    return-void

    .line 138
    :cond_5
    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setEndingTaskSize(J)V
    .registers 4

    .line 154
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/obs/services/internal/task/UploadTaskProgressStatus;->endingTaskSize:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method

.method public setTaskTable(Ljava/util/concurrent/ConcurrentHashMap;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/obs/services/model/ProgressStatus;",
            ">;)V"
        }
    .end annotation

    .line 127
    iput-object p1, p0, Lcom/obs/services/internal/task/UploadTaskProgressStatus;->taskTable:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public setTaskTagSize(J)V
    .registers 4

    .line 42
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/obs/services/internal/task/UploadTaskProgressStatus;->taskTagSize:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method

.method public setTotalMilliseconds(J)V
    .registers 4

    .line 146
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/obs/services/internal/task/UploadTaskProgressStatus;->totalMilliseconds:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method

.method public setTotalSize(J)V
    .registers 4

    .line 119
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/obs/services/internal/task/UploadTaskProgressStatus;->totalSize:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method
