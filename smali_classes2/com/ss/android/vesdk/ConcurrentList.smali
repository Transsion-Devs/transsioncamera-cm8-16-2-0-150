.class public Lcom/ss/android/vesdk/ConcurrentList;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private mImmutableLis:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TE;>;"
        }
    .end annotation
.end field

.field private mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TE;>;"
        }
    .end annotation
.end field

.field private mListChanged:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ss/android/vesdk/ConcurrentList;->mList:Ljava/util/List;

    const/4 v0, 0x0

    .line 11
    iput-boolean v0, p0, Lcom/ss/android/vesdk/ConcurrentList;->mListChanged:Z

    .line 12
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ss/android/vesdk/ConcurrentList;->mImmutableLis:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public declared-synchronized add(Ljava/lang/Object;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    monitor-enter p0

    .line 15
    :try_start_1
    iget-object v0, p0, Lcom/ss/android/vesdk/ConcurrentList;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_17

    if-eqz v0, :cond_c

    monitor-exit p0

    const/4 p0, 0x0

    return p0

    :cond_c
    const/4 v0, 0x1

    .line 16
    :try_start_d
    iput-boolean v0, p0, Lcom/ss/android/vesdk/ConcurrentList;->mListChanged:Z

    .line 17
    iget-object v0, p0, Lcom/ss/android/vesdk/ConcurrentList;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result p1
    :try_end_15
    .catchall {:try_start_d .. :try_end_15} :catchall_17

    monitor-exit p0

    return p1

    :catchall_17
    move-exception p1

    :try_start_18
    monitor-exit p0
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_17

    throw p1
.end method

.method public declared-synchronized clear()V
    .registers 2

    monitor-enter p0

    const/4 v0, 0x1

    .line 26
    :try_start_2
    iput-boolean v0, p0, Lcom/ss/android/vesdk/ConcurrentList;->mListChanged:Z

    .line 27
    iget-object v0, p0, Lcom/ss/android/vesdk/ConcurrentList;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V
    :try_end_9
    .catchall {:try_start_2 .. :try_end_9} :catchall_b

    .line 28
    monitor-exit p0

    return-void

    :catchall_b
    move-exception v0

    :try_start_c
    monitor-exit p0
    :try_end_d
    .catchall {:try_start_c .. :try_end_d} :catchall_b

    throw v0
.end method

.method public declared-synchronized getImmutableList()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TE;>;"
        }
    .end annotation

    monitor-enter p0

    .line 40
    :try_start_1
    iget-boolean v0, p0, Lcom/ss/android/vesdk/ConcurrentList;->mListChanged:Z

    if-eqz v0, :cond_2d

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/ss/android/vesdk/ConcurrentList;->mList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/ss/android/vesdk/ConcurrentList;->mImmutableLis:Ljava/util/List;

    .line 42
    iget-object v0, p0, Lcom/ss/android/vesdk/ConcurrentList;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_18
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 43
    iget-object v2, p0, Lcom/ss/android/vesdk/ConcurrentList;->mImmutableLis:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_18

    :catchall_28
    move-exception v0

    goto :goto_31

    :cond_2a
    const/4 v0, 0x0

    .line 45
    iput-boolean v0, p0, Lcom/ss/android/vesdk/ConcurrentList;->mListChanged:Z

    .line 47
    :cond_2d
    iget-object v0, p0, Lcom/ss/android/vesdk/ConcurrentList;->mImmutableLis:Ljava/util/List;
    :try_end_2f
    .catchall {:try_start_1 .. :try_end_2f} :catchall_28

    monitor-exit p0

    return-object v0

    :goto_31
    :try_start_31
    monitor-exit p0
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_28

    throw v0
.end method

.method public declared-synchronized isEmpty()Z
    .registers 2

    monitor-enter p0

    .line 31
    :try_start_1
    iget-object v0, p0, Lcom/ss/android/vesdk/ConcurrentList;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return v0

    :catchall_9
    move-exception v0

    :try_start_a
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_a .. :try_end_b} :catchall_9

    throw v0
.end method

.method public declared-synchronized remove(Ljava/lang/Object;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x1

    .line 21
    :try_start_2
    iput-boolean v0, p0, Lcom/ss/android/vesdk/ConcurrentList;->mListChanged:Z

    .line 22
    iget-object v0, p0, Lcom/ss/android/vesdk/ConcurrentList;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result p1
    :try_end_a
    .catchall {:try_start_2 .. :try_end_a} :catchall_c

    monitor-exit p0

    return p1

    :catchall_c
    move-exception p1

    :try_start_d
    monitor-exit p0
    :try_end_e
    .catchall {:try_start_d .. :try_end_e} :catchall_c

    throw p1
.end method
