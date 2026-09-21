.class final Lcom/transsion/aicore/nexusflow/performance/ObjectPoolManager$ObjectPool;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/aicore/nexusflow/performance/ObjectPoolManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ObjectPool"
.end annotation


# instance fields
.field private final currentSize:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final factory:Lkotlin/jvm/functions/Function0;

.field private final maxSize:I

.field private final pool:Ljava/util/concurrent/ConcurrentLinkedQueue;

.field private final reset:Lkotlin/jvm/functions/Function1;


# direct methods
.method public constructor <init>(ILkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;)V
    .registers 5

    const-string v0, "factory"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/transsion/aicore/nexusflow/performance/ObjectPoolManager$ObjectPool;->maxSize:I

    .line 3
    iput-object p2, p0, Lcom/transsion/aicore/nexusflow/performance/ObjectPoolManager$ObjectPool;->factory:Lkotlin/jvm/functions/Function0;

    .line 4
    iput-object p3, p0, Lcom/transsion/aicore/nexusflow/performance/ObjectPoolManager$ObjectPool;->reset:Lkotlin/jvm/functions/Function1;

    .line 6
    new-instance p1, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object p1, p0, Lcom/transsion/aicore/nexusflow/performance/ObjectPoolManager$ObjectPool;->pool:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 7
    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object p1, p0, Lcom/transsion/aicore/nexusflow/performance/ObjectPoolManager$ObjectPool;->currentSize:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public synthetic constructor <init>(ILkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 6

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_5

    const/4 p3, 0x0

    .line 8
    :cond_5
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/aicore/nexusflow/performance/ObjectPoolManager$ObjectPool;-><init>(ILkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method


# virtual methods
.method public final obtain()Ljava/lang/Object;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/transsion/aicore/nexusflow/performance/ObjectPoolManager$ObjectPool;->pool:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 3
    iget-object p0, p0, Lcom/transsion/aicore/nexusflow/performance/ObjectPoolManager$ObjectPool;->currentSize:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    return-object v0

    .line 6
    :cond_e
    iget-object p0, p0, Lcom/transsion/aicore/nexusflow/performance/ObjectPoolManager$ObjectPool;->factory:Lkotlin/jvm/functions/Function0;

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final recycle(Ljava/lang/Object;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/transsion/aicore/nexusflow/performance/ObjectPoolManager$ObjectPool;->currentSize:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    iget v1, p0, Lcom/transsion/aicore/nexusflow/performance/ObjectPoolManager$ObjectPool;->maxSize:I

    if-ge v0, v1, :cond_1b

    .line 2
    iget-object v0, p0, Lcom/transsion/aicore/nexusflow/performance/ObjectPoolManager$ObjectPool;->reset:Lkotlin/jvm/functions/Function1;

    if-eqz v0, :cond_11

    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    :cond_11
    iget-object v0, p0, Lcom/transsion/aicore/nexusflow/performance/ObjectPoolManager$ObjectPool;->pool:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->offer(Ljava/lang/Object;)Z

    .line 4
    iget-object p0, p0, Lcom/transsion/aicore/nexusflow/performance/ObjectPoolManager$ObjectPool;->currentSize:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    :cond_1b
    return-void
.end method
