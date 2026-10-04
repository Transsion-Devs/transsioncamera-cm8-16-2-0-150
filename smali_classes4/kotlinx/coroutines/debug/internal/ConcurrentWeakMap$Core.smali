.class final Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$Core;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Core"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$Core$KeyValueIterator;
    }
.end annotation


# static fields
.field private static final synthetic load$volatile$FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;


# instance fields
.field private final allocated:I

.field private final synthetic keys:Ljava/util/concurrent/atomic/AtomicReferenceArray;

.field private volatile synthetic load$volatile:I

.field private final shift:I

.field final synthetic this$0:Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field private final threshold:I

.field private final synthetic values:Ljava/util/concurrent/atomic/AtomicReferenceArray;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$Core;

    const-string v1, "load$volatile"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$Core;->load$volatile$FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    return-void
.end method

.method public constructor <init>(Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 81
    iput-object p1, p0, Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$Core;->this$0:Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap;

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput p2, p0, Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$Core;->allocated:I

    .line 82
    invoke-static {p2}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$Core;->shift:I

    mul-int/lit8 p1, p2, 0x2

    .line 83
    div-int/lit8 p1, p1, 0x3

    iput p1, p0, Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$Core;->threshold:I

    new-instance p1, Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 85
    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;-><init>(I)V

    iput-object p1, p0, Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$Core;->keys:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 86
    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;-><init>(I)V

    iput-object p1, p0, Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$Core;->values:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    return-void
.end method

.method public static final synthetic access$getAllocated$p(Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$Core;)I
    .registers 1

    .line 80
    iget p0, p0, Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$Core;->allocated:I

    return p0
.end method

.method public static final synthetic access$getKeys(Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$Core;)Ljava/util/concurrent/atomic/AtomicReferenceArray;
    .registers 1

    .line 80
    invoke-direct {p0}, Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$Core;->getKeys()Ljava/util/concurrent/atomic/AtomicReferenceArray;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getValues(Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$Core;)Ljava/util/concurrent/atomic/AtomicReferenceArray;
    .registers 1

    .line 80
    invoke-direct {p0}, Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$Core;->getValues()Ljava/util/concurrent/atomic/AtomicReferenceArray;

    move-result-object p0

    return-object p0
.end method

.method private final synthetic getKeys()Ljava/util/concurrent/atomic/AtomicReferenceArray;
    .registers 1

    iget-object p0, p0, Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$Core;->keys:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    return-object p0
.end method

.method private final synthetic getLoad$volatile()I
    .registers 1

    iget p0, p0, Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$Core;->load$volatile:I

    return p0
.end method

.method private static final synthetic getLoad$volatile$FU()Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;
    .registers 1

    sget-object v0, Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$Core;->load$volatile$FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    return-object v0
.end method

.method private final synthetic getValues()Ljava/util/concurrent/atomic/AtomicReferenceArray;
    .registers 1

    iget-object p0, p0, Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$Core;->values:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    return-object p0
.end method

.method private final index(I)I
    .registers 3

    const v0, -0x61c88647

    mul-int/2addr p1, v0

    .line 88
    iget p0, p0, Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$Core;->shift:I

    ushr-int p0, p1, p0

    return p0
.end method

.method public static synthetic putImpl$default(Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$Core;Ljava/lang/Object;Ljava/lang/Object;Lkotlinx/coroutines/debug/internal/HashedWeakRef;ILjava/lang/Object;)Ljava/lang/Object;
    .registers 6

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_5

    const/4 p3, 0x0

    .line 118
    :cond_5
    invoke-virtual {p0, p1, p2, p3}, Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$Core;->putImpl(Ljava/lang/Object;Ljava/lang/Object;Lkotlinx/coroutines/debug/internal/HashedWeakRef;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private final removeCleanedAt(I)V
    .registers 5

    .line 108
    :cond_0
    invoke-direct {p0}, Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$Core;->getValues()Ljava/util/concurrent/atomic/AtomicReferenceArray;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_b

    goto :goto_f

    .line 109
    :cond_b
    instance-of v1, v0, Lkotlinx/coroutines/debug/internal/Marked;

    if-eqz v1, :cond_10

    :goto_f
    return-void

    .line 110
    :cond_10
    invoke-direct {p0}, Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$Core;->getValues()Ljava/util/concurrent/atomic/AtomicReferenceArray;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, p1, v0, v2}, Lkotlinx/coroutines/channels/ChannelSegment$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReferenceArray;ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 111
    iget-object p0, p0, Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$Core;->this$0:Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap;

    # invokes: Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap;->decrementSize()V
    invoke-static {p0}, Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap;->access$decrementSize(Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap;)V

    return-void
.end method

.method private final synthetic setLoad$volatile(I)V
    .registers 2

    iput p1, p0, Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$Core;->load$volatile:I

    return-void
.end method

.method private final synthetic update$atomicfu(Ljava/lang/Object;Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;Lkotlin/jvm/functions/Function1;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;",
            "Lkotlin/jvm/functions/Function1;",
            ")V"
        }
    .end annotation

    :cond_0
    invoke-virtual {p2, p1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p3, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-virtual {p2, p1, p0, v0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result p0

    if-eqz p0, :cond_0

    return-void
.end method


# virtual methods
.method public final cleanWeakRef(Lkotlinx/coroutines/debug/internal/HashedWeakRef;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/debug/internal/HashedWeakRef<",
            "*>;)V"
        }
    .end annotation

    .line 191
    iget v0, p1, Lkotlinx/coroutines/debug/internal/HashedWeakRef;->hash:I

    invoke-direct {p0, v0}, Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$Core;->index(I)I

    move-result v0

    .line 193
    :goto_6
    invoke-direct {p0}, Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$Core;->getKeys()Ljava/util/concurrent/atomic/AtomicReferenceArray;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlinx/coroutines/debug/internal/HashedWeakRef;

    if-nez v1, :cond_13

    return-void

    :cond_13
    if-ne v1, p1, :cond_19

    .line 195
    invoke-direct {p0, v0}, Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$Core;->removeCleanedAt(I)V

    return-void

    :cond_19
    if-nez v0, :cond_1d

    .line 198
    iget v0, p0, Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$Core;->allocated:I

    :cond_1d
    add-int/lit8 v0, v0, -0x1

    goto :goto_6
.end method

.method public final getImpl(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .line 92
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-direct {p0, v0}, Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$Core;->index(I)I

    move-result v0

    .line 94
    :goto_8
    invoke-direct {p0}, Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$Core;->getKeys()Ljava/util/concurrent/atomic/AtomicReferenceArray;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlinx/coroutines/debug/internal/HashedWeakRef;

    if-nez v1, :cond_16

    const/4 p0, 0x0

    return-object p0

    .line 95
    :cond_16
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    .line 96
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_31

    .line 97
    invoke-direct {p0}, Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$Core;->getValues()Ljava/util/concurrent/atomic/AtomicReferenceArray;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    .line 98
    instance-of p1, p0, Lkotlinx/coroutines/debug/internal/Marked;

    if-eqz p1, :cond_30

    check-cast p0, Lkotlinx/coroutines/debug/internal/Marked;

    iget-object p0, p0, Lkotlinx/coroutines/debug/internal/Marked;->ref:Ljava/lang/Object;

    :cond_30
    return-object p0

    :cond_31
    if-nez v1, :cond_36

    .line 100
    invoke-direct {p0, v0}, Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$Core;->removeCleanedAt(I)V

    :cond_36
    if-nez v0, :cond_3a

    .line 101
    iget v0, p0, Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$Core;->allocated:I

    :cond_3a
    add-int/lit8 v0, v0, -0x1

    goto :goto_8
.end method

.method public final keyValueIterator(Lkotlin/jvm/functions/Function2;)Ljava/util/Iterator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/jvm/functions/Function2;",
            ")",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    .line 203
    new-instance v0, Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$Core$KeyValueIterator;

    invoke-direct {v0, p0, p1}, Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$Core$KeyValueIterator;-><init>(Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$Core;Lkotlin/jvm/functions/Function2;)V

    return-object v0
.end method

.method public final putImpl(Ljava/lang/Object;Ljava/lang/Object;Lkotlinx/coroutines/debug/internal/HashedWeakRef;)Ljava/lang/Object;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;",
            "Lkotlinx/coroutines/debug/internal/HashedWeakRef<",
            "TK;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 119
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-direct {p0, v0}, Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$Core;->index(I)I

    move-result v0

    const/4 v1, 0x0

    .line 123
    :goto_9
    invoke-direct {p0}, Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$Core;->getKeys()Ljava/util/concurrent/atomic/AtomicReferenceArray;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlinx/coroutines/debug/internal/HashedWeakRef;

    if-nez v2, :cond_4d

    const/4 v2, 0x0

    if-nez p2, :cond_19

    return-object v2

    :cond_19
    if-nez v1, :cond_35

    .line 118
    invoke-static {}, Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$Core;->getLoad$volatile$FU()Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v3

    :cond_1f
    invoke-virtual {v3, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    move-result v1

    .line 129
    iget v4, p0, Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$Core;->threshold:I

    if-lt v1, v4, :cond_2c

    # getter for: Lkotlinx/coroutines/debug/internal/ConcurrentWeakMapKt;->REHASH:Lkotlinx/coroutines/internal/Symbol;
    invoke-static {}, Lkotlinx/coroutines/debug/internal/ConcurrentWeakMapKt;->access$getREHASH$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object p0

    return-object p0

    :cond_2c
    add-int/lit8 v4, v1, 0x1

    .line 130
    invoke-virtual {v3, p0, v1, v4}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v1

    if-eqz v1, :cond_1f

    const/4 v1, 0x1

    :cond_35
    if-nez p3, :cond_42

    .line 134
    new-instance p3, Lkotlinx/coroutines/debug/internal/HashedWeakRef;

    iget-object v3, p0, Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$Core;->this$0:Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap;

    # getter for: Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap;->weakRefQueue:Ljava/lang/ref/ReferenceQueue;
    invoke-static {v3}, Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap;->access$getWeakRefQueue$p(Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap;)Ljava/lang/ref/ReferenceQueue;

    move-result-object v3

    invoke-direct {p3, p1, v3}, Lkotlinx/coroutines/debug/internal/HashedWeakRef;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    .line 135
    :cond_42
    invoke-direct {p0}, Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$Core;->getKeys()Ljava/util/concurrent/atomic/AtomicReferenceArray;

    move-result-object v3

    invoke-static {v3, v0, v2, p3}, Lkotlinx/coroutines/channels/ChannelSegment$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReferenceArray;ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_60

    goto :goto_9

    .line 138
    :cond_4d
    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    .line 139
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7c

    if-eqz v1, :cond_60

    .line 140
    invoke-static {}, Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$Core;->getLoad$volatile$FU()Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->decrementAndGet(Ljava/lang/Object;)I

    .line 150
    :cond_60
    invoke-direct {p0}, Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$Core;->getValues()Ljava/util/concurrent/atomic/AtomicReferenceArray;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    .line 151
    instance-of p3, p1, Lkotlinx/coroutines/debug/internal/Marked;

    if-eqz p3, :cond_71

    # getter for: Lkotlinx/coroutines/debug/internal/ConcurrentWeakMapKt;->REHASH:Lkotlinx/coroutines/internal/Symbol;
    invoke-static {}, Lkotlinx/coroutines/debug/internal/ConcurrentWeakMapKt;->access$getREHASH$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object p0

    return-object p0

    .line 152
    :cond_71
    invoke-direct {p0}, Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$Core;->getValues()Ljava/util/concurrent/atomic/AtomicReferenceArray;

    move-result-object p3

    invoke-static {p3, v0, p1, p2}, Lkotlinx/coroutines/channels/ChannelSegment$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReferenceArray;ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_60

    return-object p1

    :cond_7c
    if-nez v2, :cond_81

    .line 143
    invoke-direct {p0, v0}, Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$Core;->removeCleanedAt(I)V

    :cond_81
    if-nez v0, :cond_85

    .line 144
    iget v0, p0, Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$Core;->allocated:I

    :cond_85
    add-int/lit8 v0, v0, -0x1

    goto :goto_9
.end method

.method public final rehash()Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$Core;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap<",
            "TK;TV;>.Core;"
        }
    .end annotation

    .line 162
    :cond_0
    iget-object v0, p0, Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$Core;->this$0:Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap;

    invoke-virtual {v0}, Lkotlin/collections/AbstractMutableMap;->size()I

    move-result v0

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v0

    mul-int/2addr v0, v1

    .line 163
    new-instance v1, Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$Core;

    iget-object v2, p0, Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$Core;->this$0:Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap;

    invoke-direct {v1, v2, v0}, Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$Core;-><init>(Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap;I)V

    .line 164
    iget v0, p0, Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$Core;->allocated:I

    const/4 v2, 0x0

    :goto_1a
    if-ge v2, v0, :cond_65

    .line 166
    invoke-direct {p0}, Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$Core;->getKeys()Ljava/util/concurrent/atomic/AtomicReferenceArray;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkotlinx/coroutines/debug/internal/HashedWeakRef;

    if-eqz v3, :cond_2d

    .line 167
    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v4

    goto :goto_2e

    :cond_2d
    const/4 v4, 0x0

    :goto_2e
    if-eqz v3, :cond_35

    if-nez v4, :cond_35

    .line 168
    invoke-direct {p0, v2}, Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$Core;->removeCleanedAt(I)V

    .line 172
    :cond_35
    invoke-direct {p0}, Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$Core;->getValues()Ljava/util/concurrent/atomic/AtomicReferenceArray;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    .line 173
    instance-of v6, v5, Lkotlinx/coroutines/debug/internal/Marked;

    if-eqz v6, :cond_46

    .line 174
    check-cast v5, Lkotlinx/coroutines/debug/internal/Marked;

    iget-object v5, v5, Lkotlinx/coroutines/debug/internal/Marked;->ref:Ljava/lang/Object;

    goto :goto_54

    .line 178
    :cond_46
    invoke-direct {p0}, Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$Core;->getValues()Ljava/util/concurrent/atomic/AtomicReferenceArray;

    move-result-object v6

    # invokes: Lkotlinx/coroutines/debug/internal/ConcurrentWeakMapKt;->mark(Ljava/lang/Object;)Lkotlinx/coroutines/debug/internal/Marked;
    invoke-static {v5}, Lkotlinx/coroutines/debug/internal/ConcurrentWeakMapKt;->access$mark(Ljava/lang/Object;)Lkotlinx/coroutines/debug/internal/Marked;

    move-result-object v7

    invoke-static {v6, v2, v5, v7}, Lkotlinx/coroutines/channels/ChannelSegment$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReferenceArray;ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_35

    :goto_54
    if-eqz v4, :cond_62

    if-eqz v5, :cond_62

    .line 181
    invoke-virtual {v1, v4, v5, v3}, Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$Core;->putImpl(Ljava/lang/Object;Ljava/lang/Object;Lkotlinx/coroutines/debug/internal/HashedWeakRef;)Ljava/lang/Object;

    move-result-object v3

    .line 182
    # getter for: Lkotlinx/coroutines/debug/internal/ConcurrentWeakMapKt;->REHASH:Lkotlinx/coroutines/internal/Symbol;
    invoke-static {}, Lkotlinx/coroutines/debug/internal/ConcurrentWeakMapKt;->access$getREHASH$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v4

    if-eq v3, v4, :cond_0

    :cond_62
    add-int/lit8 v2, v2, 0x1

    goto :goto_1a

    :cond_65
    return-object v1
.end method
