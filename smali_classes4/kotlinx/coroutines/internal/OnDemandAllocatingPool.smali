.class public final Lkotlinx/coroutines/internal/OnDemandAllocatingPool;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final synthetic controlState$volatile$FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;


# instance fields
.field private volatile synthetic controlState$volatile:I

.field private final create:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1;"
        }
    .end annotation
.end field

.field private final synthetic elements:Ljava/util/concurrent/atomic/AtomicReferenceArray;

.field private final maxCapacity:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lkotlinx/coroutines/internal/OnDemandAllocatingPool;

    const-string v1, "controlState$volatile"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/internal/OnDemandAllocatingPool;->controlState$volatile$FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    return-void
.end method

.method public constructor <init>(ILkotlin/jvm/functions/Function1;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lkotlin/jvm/functions/Function1;",
            ")V"
        }
    .end annotation

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput p1, p0, Lkotlinx/coroutines/internal/OnDemandAllocatingPool;->maxCapacity:I

    .line 16
    iput-object p2, p0, Lkotlinx/coroutines/internal/OnDemandAllocatingPool;->create:Lkotlin/jvm/functions/Function1;

    new-instance p2, Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 23
    invoke-direct {p2, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;-><init>(I)V

    iput-object p2, p0, Lkotlinx/coroutines/internal/OnDemandAllocatingPool;->elements:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    return-void
.end method

.method private final synthetic getControlState$volatile()I
    .registers 1

    iget p0, p0, Lkotlinx/coroutines/internal/OnDemandAllocatingPool;->controlState$volatile:I

    return p0
.end method

.method private static final synthetic getControlState$volatile$FU()Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;
    .registers 1

    sget-object v0, Lkotlinx/coroutines/internal/OnDemandAllocatingPool;->controlState$volatile$FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    return-object v0
.end method

.method private final synthetic getElements()Ljava/util/concurrent/atomic/AtomicReferenceArray;
    .registers 1

    iget-object p0, p0, Lkotlinx/coroutines/internal/OnDemandAllocatingPool;->elements:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    return-object p0
.end method

.method private final isClosed(I)Z
    .registers 2

    const/high16 p0, -0x80000000

    and-int/2addr p0, p1

    if-eqz p0, :cond_7

    const/4 p0, 0x1

    return p0

    :cond_7
    const/4 p0, 0x0

    return p0
.end method

.method private final synthetic loop$atomicfu(Ljava/lang/Object;Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;Lkotlin/jvm/functions/Function1;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;",
            "Lkotlin/jvm/functions/Function1;",
            ")V"
        }
    .end annotation

    :goto_0
    invoke-virtual {p2, p1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p3, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private final synthetic setControlState$volatile(I)V
    .registers 2

    iput p1, p0, Lkotlinx/coroutines/internal/OnDemandAllocatingPool;->controlState$volatile:I

    return-void
.end method

.method private final tryForbidNewElements()I
    .registers 5

    .line 28
    invoke-static {}, Lkotlinx/coroutines/internal/OnDemandAllocatingPool;->getControlState$volatile$FU()Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    :cond_4
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    move-result v1

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_10

    const/4 p0, 0x0

    return p0

    .line 32
    :cond_10
    invoke-static {}, Lkotlinx/coroutines/internal/OnDemandAllocatingPool;->getControlState$volatile$FU()Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v3

    or-int/2addr v2, v1

    invoke-virtual {v3, p0, v1, v2}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_4

    return v1
.end method


# virtual methods
.method public final allocate()Z
    .registers 6

    .line 48
    invoke-static {}, Lkotlinx/coroutines/internal/OnDemandAllocatingPool;->getControlState$volatile$FU()Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    :cond_4
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    move-result v1

    const/high16 v2, -0x80000000

    and-int/2addr v2, v1

    if-eqz v2, :cond_f

    const/4 p0, 0x0

    return p0

    .line 51
    :cond_f
    iget v2, p0, Lkotlinx/coroutines/internal/OnDemandAllocatingPool;->maxCapacity:I

    const/4 v3, 0x1

    if-lt v1, v2, :cond_15

    return v3

    .line 52
    :cond_15
    invoke-static {}, Lkotlinx/coroutines/internal/OnDemandAllocatingPool;->getControlState$volatile$FU()Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v2

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {v2, p0, v1, v4}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 53
    invoke-direct {p0}, Lkotlinx/coroutines/internal/OnDemandAllocatingPool;->getElements()Ljava/util/concurrent/atomic/AtomicReferenceArray;

    move-result-object v0

    iget-object p0, p0, Lkotlinx/coroutines/internal/OnDemandAllocatingPool;->create:Lkotlin/jvm/functions/Function1;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p0, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    return v3
.end method

.method public final close()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 28
    invoke-static {}, Lkotlinx/coroutines/internal/OnDemandAllocatingPool;->getControlState$volatile$FU()Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    :cond_4
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    move-result v1

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    const/4 v4, 0x0

    if-eqz v3, :cond_11

    move v1, v4

    goto :goto_1c

    .line 32
    :cond_11
    invoke-static {}, Lkotlinx/coroutines/internal/OnDemandAllocatingPool;->getControlState$volatile$FU()Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v3

    or-int/2addr v2, v1

    invoke-virtual {v3, p0, v1, v2}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 73
    :goto_1c
    invoke-static {v4, v1}, Lkotlin/ranges/RangesKt;->until(II)Lkotlin/ranges/IntRange;

    move-result-object v0

    .line 116
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 117
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4b

    move-object v2, v0

    check-cast v2, Lkotlin/collections/IntIterator;

    invoke-virtual {v2}, Lkotlin/collections/IntIterator;->nextInt()I

    move-result v2

    .line 76
    :cond_3c
    invoke-direct {p0}, Lkotlinx/coroutines/internal/OnDemandAllocatingPool;->getElements()Ljava/util/concurrent/atomic/AtomicReferenceArray;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->getAndSet(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_3c

    .line 118
    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2f

    :cond_4b
    return-object v1
.end method

.method public final stateRepresentation$kotlinx_coroutines_core()Ljava/lang/String;
    .registers 6

    invoke-static {}, Lkotlinx/coroutines/internal/OnDemandAllocatingPool;->getControlState$volatile$FU()Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    .line 86
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    move-result v0

    const v1, 0x7fffffff

    and-int/2addr v1, v0

    const/4 v2, 0x0

    .line 87
    invoke-static {v2, v1}, Lkotlin/ranges/RangesKt;->until(II)Lkotlin/ranges/IntRange;

    move-result-object v1

    .line 122
    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v1, v3}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 123
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_20
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_39

    move-object v3, v1

    check-cast v3, Lkotlin/collections/IntIterator;

    invoke-virtual {v3}, Lkotlin/collections/IntIterator;->nextInt()I

    move-result v3

    .line 87
    invoke-direct {p0}, Lkotlinx/coroutines/internal/OnDemandAllocatingPool;->getElements()Ljava/util/concurrent/atomic/AtomicReferenceArray;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 124
    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_20

    .line 87
    :cond_39
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    const/high16 v1, -0x80000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_45

    .line 88
    const-string v0, "[closed]"

    goto :goto_47

    :cond_45
    const-string v0, ""

    .line 89
    :goto_47
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OnDemandAllocatingPool("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lkotlinx/coroutines/internal/OnDemandAllocatingPool;->stateRepresentation$kotlinx_coroutines_core()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
