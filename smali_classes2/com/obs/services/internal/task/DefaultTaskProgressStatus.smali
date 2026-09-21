.class public Lcom/obs/services/internal/task/DefaultTaskProgressStatus;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/obs/services/model/TaskProgressStatus;


# instance fields
.field private execTaskNum:Ljava/util/concurrent/atomic/AtomicInteger;

.field private failTaskNum:Ljava/util/concurrent/atomic/AtomicInteger;

.field private succeedTaskNum:Ljava/util/concurrent/atomic/AtomicInteger;

.field private totalTaskNum:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/obs/services/internal/task/DefaultTaskProgressStatus;->execTaskNum:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 24
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/obs/services/internal/task/DefaultTaskProgressStatus;->succeedTaskNum:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 25
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/obs/services/internal/task/DefaultTaskProgressStatus;->failTaskNum:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 26
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/obs/services/internal/task/DefaultTaskProgressStatus;->totalTaskNum:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method


# virtual methods
.method public execTaskIncrement()V
    .registers 1

    .line 29
    iget-object p0, p0, Lcom/obs/services/internal/task/DefaultTaskProgressStatus;->execTaskNum:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    return-void
.end method

.method public failTaskIncrement()V
    .registers 1

    .line 37
    iget-object p0, p0, Lcom/obs/services/internal/task/DefaultTaskProgressStatus;->failTaskNum:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    return-void
.end method

.method public getExecPercentage()I
    .registers 2

    .line 46
    iget-object v0, p0, Lcom/obs/services/internal/task/DefaultTaskProgressStatus;->totalTaskNum:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-gtz v0, :cond_a

    const/4 p0, -0x1

    return p0

    .line 49
    :cond_a
    iget-object v0, p0, Lcom/obs/services/internal/task/DefaultTaskProgressStatus;->execTaskNum:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    mul-int/lit8 v0, v0, 0x64

    iget-object p0, p0, Lcom/obs/services/internal/task/DefaultTaskProgressStatus;->totalTaskNum:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p0

    div-int/2addr v0, p0

    return v0
.end method

.method public getExecTaskNum()I
    .registers 1

    .line 60
    iget-object p0, p0, Lcom/obs/services/internal/task/DefaultTaskProgressStatus;->execTaskNum:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p0

    return p0
.end method

.method public getFailTaskNum()I
    .registers 1

    .line 70
    iget-object p0, p0, Lcom/obs/services/internal/task/DefaultTaskProgressStatus;->failTaskNum:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p0

    return p0
.end method

.method public getSucceedTaskNum()I
    .registers 1

    .line 65
    iget-object p0, p0, Lcom/obs/services/internal/task/DefaultTaskProgressStatus;->succeedTaskNum:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p0

    return p0
.end method

.method public getTotalTaskNum()I
    .registers 1

    .line 55
    iget-object p0, p0, Lcom/obs/services/internal/task/DefaultTaskProgressStatus;->totalTaskNum:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p0

    return p0
.end method

.method public setTotalTaskNum(I)V
    .registers 2

    .line 41
    iget-object p0, p0, Lcom/obs/services/internal/task/DefaultTaskProgressStatus;->totalTaskNum:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return-void
.end method

.method public succeedTaskIncrement()V
    .registers 1

    .line 33
    iget-object p0, p0, Lcom/obs/services/internal/task/DefaultTaskProgressStatus;->succeedTaskNum:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    return-void
.end method
