.class public Lkotlinx/coroutines/internal/LockFreeLinkedListNode;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlinx/coroutines/internal/LockFreeLinkedListNode$CondAddOp;
    }
.end annotation

.annotation build Lkotlinx/coroutines/InternalCoroutinesApi;
.end annotation


# static fields
.field private static final synthetic _next$volatile$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

.field private static final synthetic _prev$volatile$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

.field private static final synthetic _removedRef$volatile$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;


# instance fields
.field private volatile synthetic _next$volatile:Ljava/lang/Object;

.field private volatile synthetic _prev$volatile:Ljava/lang/Object;

.field private volatile synthetic _removedRef$volatile:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-string v0, "_next$volatile"

    const-class v1, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    const-class v2, Ljava/lang/Object;

    invoke-static {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->_next$volatile$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const-string v0, "_prev$volatile"

    invoke-static {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->_prev$volatile$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const-string v0, "_removedRef$volatile"

    invoke-static {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->_removedRef$volatile$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p0, p0, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->_next$volatile:Ljava/lang/Object;

    .line 46
    iput-object p0, p0, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->_prev$volatile:Ljava/lang/Object;

    return-void
.end method

.method public static final synthetic access$finishAdd(Lkotlinx/coroutines/internal/LockFreeLinkedListNode;Lkotlinx/coroutines/internal/LockFreeLinkedListNode;)V
    .registers 2

    .line 42
    invoke-direct {p0, p1}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->finishAdd(Lkotlinx/coroutines/internal/LockFreeLinkedListNode;)V

    return-void
.end method

.method public static final synthetic access$get_next$volatile$FU()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .registers 1

    .line 42
    invoke-static {}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->get_next$volatile$FU()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    return-object v0
.end method

.method private final correctPrev(Lkotlinx/coroutines/internal/OpDescriptor;)Lkotlinx/coroutines/internal/LockFreeLinkedListNode;
    .registers 9

    :goto_0
    invoke-static {}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->get_prev$volatile$FU()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    .line 269
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    const/4 v1, 0x0

    move-object v2, v0

    :goto_c
    move-object v3, v1

    .line 272
    :goto_d
    invoke-static {}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->get_next$volatile$FU()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v4

    .line 273
    invoke-virtual {v4, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, p0, :cond_25

    if-ne v0, v2, :cond_1a

    goto :goto_2e

    .line 279
    :cond_1a
    invoke-static {}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->get_prev$volatile$FU()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v1

    invoke-static {v1, p0, v0, v2}, Lkotlin/SafePublicationLazyImpl$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2e

    goto :goto_0

    .line 286
    :cond_25
    invoke-virtual {p0}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->isRemoved()Z

    move-result v5

    if-eqz v5, :cond_2c

    return-object v1

    :cond_2c
    if-ne v4, p1, :cond_2f

    :cond_2e
    :goto_2e
    return-object v2

    .line 288
    :cond_2f
    instance-of v5, v4, Lkotlinx/coroutines/internal/OpDescriptor;

    if-eqz v5, :cond_39

    .line 289
    check-cast v4, Lkotlinx/coroutines/internal/OpDescriptor;

    invoke-virtual {v4, v2}, Lkotlinx/coroutines/internal/OpDescriptor;->perform(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 292
    :cond_39
    instance-of v5, v4, Lkotlinx/coroutines/internal/Removed;

    if-eqz v5, :cond_5b

    if-eqz v3, :cond_50

    .line 295
    invoke-static {}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->get_next$volatile$FU()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v5

    check-cast v4, Lkotlinx/coroutines/internal/Removed;

    iget-object v4, v4, Lkotlinx/coroutines/internal/Removed;->ref:Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    invoke-static {v5, v3, v2, v4}, Lkotlin/SafePublicationLazyImpl$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4e

    goto :goto_0

    :cond_4e
    move-object v2, v3

    goto :goto_c

    .line 299
    :cond_50
    invoke-static {}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->get_prev$volatile$FU()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v4

    .line 301
    invoke-virtual {v4, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    goto :goto_d

    .line 306
    :cond_5b
    const-string v3, "null cannot be cast to non-null type kotlinx.coroutines.internal.LockFreeLinkedListNode{ kotlinx.coroutines.internal.LockFreeLinkedListKt.Node }"

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v3, v4

    check-cast v3, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    move-object v6, v3

    move-object v3, v2

    move-object v2, v6

    goto :goto_d
.end method

.method private final findPrevNonRemoved(Lkotlinx/coroutines/internal/LockFreeLinkedListNode;)Lkotlinx/coroutines/internal/LockFreeLinkedListNode;
    .registers 2

    .line 97
    :goto_0
    invoke-virtual {p1}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->isRemoved()Z

    move-result p0

    if-nez p0, :cond_7

    return-object p1

    .line 98
    :cond_7
    invoke-static {}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->get_prev$volatile$FU()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object p1, p0

    check-cast p1, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    goto :goto_0
.end method

.method private final finishAdd(Lkotlinx/coroutines/internal/LockFreeLinkedListNode;)V
    .registers 5

    .line 244
    invoke-static {}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->get_prev$volatile$FU()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    :cond_4
    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    .line 246
    invoke-virtual {p0}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->getNext()Ljava/lang/Object;

    move-result-object v2

    if-eq v2, p1, :cond_11

    goto :goto_25

    .line 247
    :cond_11
    invoke-static {}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->get_prev$volatile$FU()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v2

    invoke-static {v2, p1, v1, p0}, Lkotlin/SafePublicationLazyImpl$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 250
    invoke-virtual {p0}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->isRemoved()Z

    move-result p0

    if-eqz p0, :cond_25

    const/4 p0, 0x0

    invoke-direct {p1, p0}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->correctPrev(Lkotlinx/coroutines/internal/OpDescriptor;)Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    :cond_25
    :goto_25
    return-void
.end method

.method private final synthetic get_next$volatile()Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->_next$volatile:Ljava/lang/Object;

    return-object p0
.end method

.method private static final synthetic get_next$volatile$FU()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .registers 1

    sget-object v0, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->_next$volatile$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-object v0
.end method

.method private final synthetic get_prev$volatile()Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->_prev$volatile:Ljava/lang/Object;

    return-object p0
.end method

.method private static final synthetic get_prev$volatile$FU()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .registers 1

    sget-object v0, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->_prev$volatile$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-object v0
.end method

.method private final synthetic get_removedRef$volatile()Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->_removedRef$volatile:Ljava/lang/Object;

    return-object p0
.end method

.method private static final synthetic get_removedRef$volatile$FU()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .registers 1

    sget-object v0, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->_removedRef$volatile$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-object v0
.end method

.method private final synthetic loop$atomicfu(Ljava/lang/Object;Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Lkotlin/jvm/functions/Function1;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;",
            "Lkotlin/jvm/functions/Function1;",
            ")V"
        }
    .end annotation

    :goto_0
    invoke-virtual {p2, p1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-interface {p3, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private final removed()Lkotlinx/coroutines/internal/Removed;
    .registers 3

    .line 50
    invoke-static {}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->get_removedRef$volatile$FU()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/internal/Removed;

    if-nez v0, :cond_18

    new-instance v0, Lkotlinx/coroutines/internal/Removed;

    invoke-direct {v0, p0}, Lkotlinx/coroutines/internal/Removed;-><init>(Lkotlinx/coroutines/internal/LockFreeLinkedListNode;)V

    .line 352
    invoke-static {}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->get_removedRef$volatile$FU()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v1

    .line 50
    invoke-virtual {v1, p0, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_18
    return-object v0
.end method

.method private final synthetic set_next$volatile(Ljava/lang/Object;)V
    .registers 2

    iput-object p1, p0, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->_next$volatile:Ljava/lang/Object;

    return-void
.end method

.method private final synthetic set_prev$volatile(Ljava/lang/Object;)V
    .registers 2

    iput-object p1, p0, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->_prev$volatile:Ljava/lang/Object;

    return-void
.end method

.method private final synthetic set_removedRef$volatile(Ljava/lang/Object;)V
    .registers 2

    iput-object p1, p0, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->_removedRef$volatile:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final addLast(Lkotlinx/coroutines/internal/LockFreeLinkedListNode;)V
    .registers 3

    .line 124
    :cond_0
    invoke-virtual {p0}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->getPrevNode()Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    move-result-object v0

    invoke-virtual {v0, p1, p0}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->addNext(Lkotlinx/coroutines/internal/LockFreeLinkedListNode;Lkotlinx/coroutines/internal/LockFreeLinkedListNode;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void
.end method

.method public final addLastIf(Lkotlinx/coroutines/internal/LockFreeLinkedListNode;Lkotlin/jvm/functions/Function0;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/internal/LockFreeLinkedListNode;",
            "Lkotlin/jvm/functions/Function0;",
            ")Z"
        }
    .end annotation

    .line 70
    new-instance v0, Lkotlinx/coroutines/internal/LockFreeLinkedListNode$makeCondAddOp$1;

    invoke-direct {v0, p1, p2}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode$makeCondAddOp$1;-><init>(Lkotlinx/coroutines/internal/LockFreeLinkedListNode;Lkotlin/jvm/functions/Function0;)V

    .line 134
    :goto_5
    invoke-virtual {p0}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->getPrevNode()Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    move-result-object p2

    .line 135
    invoke-virtual {p2, p1, p0, v0}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->tryCondAddNext(Lkotlinx/coroutines/internal/LockFreeLinkedListNode;Lkotlinx/coroutines/internal/LockFreeLinkedListNode;Lkotlinx/coroutines/internal/LockFreeLinkedListNode$CondAddOp;)I

    move-result p2

    const/4 v1, 0x1

    if-eq p2, v1, :cond_16

    const/4 v1, 0x2

    if-eq p2, v1, :cond_14

    goto :goto_5

    :cond_14
    const/4 p0, 0x0

    return p0

    :cond_16
    return v1
.end method

.method public final addNext(Lkotlinx/coroutines/internal/LockFreeLinkedListNode;Lkotlinx/coroutines/internal/LockFreeLinkedListNode;)Z
    .registers 4

    invoke-static {}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->get_prev$volatile$FU()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    .line 169
    invoke-virtual {v0, p1, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->get_next$volatile$FU()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    .line 170
    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 171
    invoke-static {}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->get_next$volatile$FU()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    invoke-static {v0, p0, p2, p1}, Lkotlin/SafePublicationLazyImpl$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1a

    const/4 p0, 0x0

    return p0

    .line 173
    :cond_1a
    invoke-direct {p1, p2}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->finishAdd(Lkotlinx/coroutines/internal/LockFreeLinkedListNode;)V

    const/4 p0, 0x1

    return p0
.end method

.method public final addOneIfEmpty(Lkotlinx/coroutines/internal/LockFreeLinkedListNode;)Z
    .registers 3

    invoke-static {}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->get_prev$volatile$FU()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    .line 104
    invoke-virtual {v0, p1, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->get_next$volatile$FU()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    .line 105
    invoke-virtual {v0, p1, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 107
    :cond_e
    invoke-virtual {p0}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->getNext()Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p0, :cond_16

    const/4 p0, 0x0

    return p0

    .line 109
    :cond_16
    invoke-static {}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->get_next$volatile$FU()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    invoke-static {v0, p0, p0, p1}, Lkotlin/SafePublicationLazyImpl$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 111
    invoke-direct {p1, p0}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->finishAdd(Lkotlinx/coroutines/internal/LockFreeLinkedListNode;)V

    const/4 p0, 0x1

    return p0
.end method

.method public final getNext()Ljava/lang/Object;
    .registers 4

    .line 77
    invoke-static {}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->get_next$volatile$FU()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    :goto_4
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 79
    instance-of v2, v1, Lkotlinx/coroutines/internal/OpDescriptor;

    if-nez v2, :cond_d

    return-object v1

    .line 80
    :cond_d
    check-cast v1, Lkotlinx/coroutines/internal/OpDescriptor;

    invoke-virtual {v1, p0}, Lkotlinx/coroutines/internal/OpDescriptor;->perform(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4
.end method

.method public final getNextNode()Lkotlinx/coroutines/internal/LockFreeLinkedListNode;
    .registers 2

    .line 86
    invoke-virtual {p0}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->getNext()Ljava/lang/Object;

    move-result-object p0

    instance-of v0, p0, Lkotlinx/coroutines/internal/Removed;

    if-eqz v0, :cond_c

    move-object v0, p0

    check-cast v0, Lkotlinx/coroutines/internal/Removed;

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    if-eqz v0, :cond_15

    iget-object v0, v0, Lkotlinx/coroutines/internal/Removed;->ref:Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    if-nez v0, :cond_14

    goto :goto_15

    :cond_14
    return-object v0

    :cond_15
    :goto_15
    const-string v0, "null cannot be cast to non-null type kotlinx.coroutines.internal.LockFreeLinkedListNode{ kotlinx.coroutines.internal.LockFreeLinkedListKt.Node }"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    return-object p0
.end method

.method public final getPrevNode()Lkotlinx/coroutines/internal/LockFreeLinkedListNode;
    .registers 2

    const/4 v0, 0x0

    .line 94
    invoke-direct {p0, v0}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->correctPrev(Lkotlinx/coroutines/internal/OpDescriptor;)Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    move-result-object v0

    if-nez v0, :cond_16

    invoke-static {}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->get_prev$volatile$FU()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    invoke-direct {p0, v0}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->findPrevNonRemoved(Lkotlinx/coroutines/internal/LockFreeLinkedListNode;)Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    move-result-object p0

    return-object p0

    :cond_16
    return-object v0
.end method

.method public isRemoved()Z
    .registers 1

    .line 74
    invoke-virtual {p0}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->getNext()Ljava/lang/Object;

    move-result-object p0

    instance-of p0, p0, Lkotlinx/coroutines/internal/Removed;

    return p0
.end method

.method public final makeCondAddOp(Lkotlinx/coroutines/internal/LockFreeLinkedListNode;Lkotlin/jvm/functions/Function0;)Lkotlinx/coroutines/internal/LockFreeLinkedListNode$CondAddOp;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/internal/LockFreeLinkedListNode;",
            "Lkotlin/jvm/functions/Function0;",
            ")",
            "Lkotlinx/coroutines/internal/LockFreeLinkedListNode$CondAddOp;"
        }
    .end annotation

    .line 70
    new-instance p0, Lkotlinx/coroutines/internal/LockFreeLinkedListNode$makeCondAddOp$1;

    invoke-direct {p0, p1, p2}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode$makeCondAddOp$1;-><init>(Lkotlinx/coroutines/internal/LockFreeLinkedListNode;Lkotlin/jvm/functions/Function0;)V

    return-object p0
.end method

.method protected nextIfRemoved()Lkotlinx/coroutines/internal/LockFreeLinkedListNode;
    .registers 3

    .line 256
    invoke-virtual {p0}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->getNext()Ljava/lang/Object;

    move-result-object p0

    instance-of v0, p0, Lkotlinx/coroutines/internal/Removed;

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    check-cast p0, Lkotlinx/coroutines/internal/Removed;

    goto :goto_d

    :cond_c
    move-object p0, v1

    :goto_d
    if-eqz p0, :cond_12

    iget-object p0, p0, Lkotlinx/coroutines/internal/Removed;->ref:Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    return-object p0

    :cond_12
    return-object v1
.end method

.method public remove()Z
    .registers 1

    .line 198
    invoke-virtual {p0}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->removeOrNext()Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    move-result-object p0

    if-nez p0, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method public final removeOrNext()Lkotlinx/coroutines/internal/LockFreeLinkedListNode;
    .registers 5

    .line 204
    :cond_0
    invoke-virtual {p0}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->getNext()Ljava/lang/Object;

    move-result-object v0

    .line 205
    instance-of v1, v0, Lkotlinx/coroutines/internal/Removed;

    if-eqz v1, :cond_d

    check-cast v0, Lkotlinx/coroutines/internal/Removed;

    iget-object p0, v0, Lkotlinx/coroutines/internal/Removed;->ref:Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    return-object p0

    :cond_d
    if-ne v0, p0, :cond_12

    .line 206
    check-cast v0, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    return-object v0

    .line 207
    :cond_12
    const-string v1, "null cannot be cast to non-null type kotlinx.coroutines.internal.LockFreeLinkedListNode{ kotlinx.coroutines.internal.LockFreeLinkedListKt.Node }"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    invoke-direct {v1}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->removed()Lkotlinx/coroutines/internal/Removed;

    move-result-object v2

    .line 208
    invoke-static {}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->get_next$volatile$FU()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v3

    invoke-static {v3, p0, v0, v2}, Lkotlin/SafePublicationLazyImpl$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    .line 210
    invoke-direct {v1, p0}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->correctPrev(Lkotlinx/coroutines/internal/OpDescriptor;)Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 317
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Lkotlinx/coroutines/internal/LockFreeLinkedListNode$toString$1;

    invoke-direct {v1, p0}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode$toString$1;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lkotlinx/coroutines/DebugStringsKt;->getHexAddress(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final tryCondAddNext(Lkotlinx/coroutines/internal/LockFreeLinkedListNode;Lkotlinx/coroutines/internal/LockFreeLinkedListNode;Lkotlinx/coroutines/internal/LockFreeLinkedListNode$CondAddOp;)I
    .registers 5

    invoke-static {}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->get_prev$volatile$FU()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    .line 180
    invoke-virtual {v0, p1, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->get_next$volatile$FU()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    .line 181
    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 182
    iput-object p2, p3, Lkotlinx/coroutines/internal/LockFreeLinkedListNode$CondAddOp;->oldNext:Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    .line 183
    invoke-static {}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->get_next$volatile$FU()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object p1

    invoke-static {p1, p0, p2, p3}, Lkotlin/SafePublicationLazyImpl$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1c

    const/4 p0, 0x0

    return p0

    .line 185
    :cond_1c
    invoke-virtual {p3, p0}, Lkotlinx/coroutines/internal/AtomicOp;->perform(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_24

    const/4 p0, 0x1

    return p0

    :cond_24
    const/4 p0, 0x2

    return p0
.end method

.method public final validateNode$kotlinx_coroutines_core(Lkotlinx/coroutines/internal/LockFreeLinkedListNode;Lkotlinx/coroutines/internal/LockFreeLinkedListNode;)V
    .registers 3

    return-void
.end method
