.class public Lcom/ss/android/medialib/presenter/FifoImpl;
.super Ljava/util/LinkedList;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/LinkedList<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private mMaxSize:I

.field private final synObj:Ljava/lang/Object;


# direct methods
.method public constructor <init>(I)V
    .registers 3

    .line 13
    invoke-direct {p0}, Ljava/util/LinkedList;-><init>()V

    .line 10
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/ss/android/medialib/presenter/FifoImpl;->synObj:Ljava/lang/Object;

    .line 14
    iput p1, p0, Lcom/ss/android/medialib/presenter/FifoImpl;->mMaxSize:I

    return-void
.end method


# virtual methods
.method public addLastSafe(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation

    .line 19
    iget-object v0, p0, Lcom/ss/android/medialib/presenter/FifoImpl;->synObj:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 21
    :goto_4
    :try_start_4
    invoke-virtual {p0}, Ljava/util/AbstractCollection;->size()I

    move-result v2

    iget v3, p0, Lcom/ss/android/medialib/presenter/FifoImpl;->mMaxSize:I

    if-lt v2, v3, :cond_13

    .line 22
    invoke-virtual {p0}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v1

    goto :goto_4

    :catchall_11
    move-exception p0

    goto :goto_18

    .line 24
    :cond_13
    invoke-virtual {p0, p1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 25
    monitor-exit v0

    return-object v1

    .line 26
    :goto_18
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_4 .. :try_end_19} :catchall_11

    throw p0
.end method

.method public getMaxSize()I
    .registers 1

    .line 38
    iget p0, p0, Lcom/ss/android/medialib/presenter/FifoImpl;->mMaxSize:I

    return p0
.end method

.method public pollSafe()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 31
    iget-object v0, p0, Lcom/ss/android/medialib/presenter/FifoImpl;->synObj:Ljava/lang/Object;

    monitor-enter v0

    .line 32
    :try_start_3
    invoke-virtual {p0}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_9
    move-exception p0

    .line 33
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_9

    throw p0
.end method
