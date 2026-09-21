.class public Lcom/transsion/camera/utils/PairProducer;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mFirstQueue:Ljava/util/ArrayDeque;

.field private mSecondQueue:Ljava/util/ArrayDeque;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/util/ArrayDeque;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayDeque;-><init>(I)V

    iput-object v0, p0, Lcom/transsion/camera/utils/PairProducer;->mFirstQueue:Ljava/util/ArrayDeque;

    .line 27
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0, v1}, Ljava/util/ArrayDeque;-><init>(I)V

    iput-object v0, p0, Lcom/transsion/camera/utils/PairProducer;->mSecondQueue:Ljava/util/ArrayDeque;

    return-void
.end method


# virtual methods
.method public declared-synchronized addFirst(Ljava/lang/Object;)Landroid/util/Pair;
    .registers 3

    monitor-enter p0

    .line 31
    :try_start_1
    iget-object v0, p0, Lcom/transsion/camera/utils/PairProducer;->mSecondQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 33
    invoke-static {p1, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    monitor-exit p0

    return-object p1

    :catchall_f
    move-exception p1

    goto :goto_19

    .line 35
    :cond_11
    :try_start_11
    iget-object v0, p0, Lcom/transsion/camera/utils/PairProducer;->mFirstQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->offer(Ljava/lang/Object;)Z
    :try_end_16
    .catchall {:try_start_11 .. :try_end_16} :catchall_f

    .line 36
    monitor-exit p0

    const/4 p0, 0x0

    return-object p0

    :goto_19
    :try_start_19
    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_f

    throw p1
.end method

.method public declared-synchronized addSecond(Ljava/lang/Object;)Landroid/util/Pair;
    .registers 3

    monitor-enter p0

    .line 40
    :try_start_1
    iget-object v0, p0, Lcom/transsion/camera/utils/PairProducer;->mFirstQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 42
    invoke-static {v0, p1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    monitor-exit p0

    return-object p1

    :catchall_f
    move-exception p1

    goto :goto_19

    .line 44
    :cond_11
    :try_start_11
    iget-object v0, p0, Lcom/transsion/camera/utils/PairProducer;->mSecondQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->offer(Ljava/lang/Object;)Z
    :try_end_16
    .catchall {:try_start_11 .. :try_end_16} :catchall_f

    .line 45
    monitor-exit p0

    const/4 p0, 0x0

    return-object p0

    :goto_19
    :try_start_19
    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_f

    throw p1
.end method

.method public declared-synchronized clear()V
    .registers 2

    monitor-enter p0

    .line 57
    :try_start_1
    iget-object v0, p0, Lcom/transsion/camera/utils/PairProducer;->mFirstQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    .line 58
    iget-object v0, p0, Lcom/transsion/camera/utils/PairProducer;->mSecondQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    .line 59
    monitor-exit p0

    return-void

    :catchall_d
    move-exception v0

    :try_start_e
    monitor-exit p0
    :try_end_f
    .catchall {:try_start_e .. :try_end_f} :catchall_d

    throw v0
.end method

.method public declared-synchronized pollSecondLast()Ljava/lang/Object;
    .registers 2

    monitor-enter p0

    .line 53
    :try_start_1
    iget-object v0, p0, Lcom/transsion/camera/utils/PairProducer;->mSecondQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pollLast()Ljava/lang/Object;

    move-result-object v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return-object v0

    :catchall_9
    move-exception v0

    :try_start_a
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_a .. :try_end_b} :catchall_9

    throw v0
.end method
