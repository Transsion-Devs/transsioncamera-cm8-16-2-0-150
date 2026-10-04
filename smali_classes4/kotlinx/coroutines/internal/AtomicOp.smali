.class public abstract Lkotlinx/coroutines/internal/AtomicOp;
.super Lkotlinx/coroutines/internal/OpDescriptor;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lkotlinx/coroutines/internal/OpDescriptor;"
    }
.end annotation

.annotation build Lkotlinx/coroutines/InternalCoroutinesApi;
.end annotation


# static fields
.field private static final synthetic _consensus$volatile$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;


# instance fields
.field private volatile synthetic _consensus$volatile:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-class v0, Ljava/lang/Object;

    const-string v1, "_consensus$volatile"

    const-class v2, Lkotlinx/coroutines/internal/AtomicOp;

    invoke-static {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/internal/AtomicOp;->_consensus$volatile$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 46
    invoke-direct {p0}, Lkotlinx/coroutines/internal/OpDescriptor;-><init>()V

    .line 47
    sget-object v0, Lkotlinx/coroutines/internal/AtomicKt;->NO_DECISION:Ljava/lang/Object;

    iput-object v0, p0, Lkotlinx/coroutines/internal/AtomicOp;->_consensus$volatile:Ljava/lang/Object;

    return-void
.end method

.method private final decide(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 52
    invoke-static {}, Lkotlinx/coroutines/internal/AtomicOp;->get_consensus$volatile$FU()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    .line 53
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 54
    sget-object v1, Lkotlinx/coroutines/internal/AtomicKt;->NO_DECISION:Ljava/lang/Object;

    if-eq v0, v1, :cond_d

    return-object v0

    .line 55
    :cond_d
    invoke-static {}, Lkotlinx/coroutines/internal/AtomicOp;->get_consensus$volatile$FU()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    invoke-static {v0, p0, v1, p1}, Lkotlin/SafePublicationLazyImpl$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    return-object p1

    :cond_18
    invoke-static {}, Lkotlinx/coroutines/internal/AtomicOp;->get_consensus$volatile$FU()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object p1

    .line 56
    invoke-virtual {p1, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private final synthetic get_consensus$volatile()Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lkotlinx/coroutines/internal/AtomicOp;->_consensus$volatile:Ljava/lang/Object;

    return-object p0
.end method

.method private static final synthetic get_consensus$volatile$FU()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .registers 1

    sget-object v0, Lkotlinx/coroutines/internal/AtomicOp;->_consensus$volatile$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-object v0
.end method

.method private final synthetic set_consensus$volatile(Ljava/lang/Object;)V
    .registers 2

    iput-object p1, p0, Lkotlinx/coroutines/internal/AtomicOp;->_consensus$volatile:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public abstract complete(Ljava/lang/Object;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation
.end method

.method public getAtomicOp()Lkotlinx/coroutines/internal/AtomicOp;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/internal/AtomicOp<",
            "*>;"
        }
    .end annotation

    return-object p0
.end method

.method public final perform(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    invoke-static {}, Lkotlinx/coroutines/internal/AtomicOp;->get_consensus$volatile$FU()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    .line 67
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 68
    sget-object v1, Lkotlinx/coroutines/internal/AtomicKt;->NO_DECISION:Ljava/lang/Object;

    if-ne v0, v1, :cond_14

    .line 69
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/internal/AtomicOp;->prepare(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Lkotlinx/coroutines/internal/AtomicOp;->decide(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 72
    :cond_14
    invoke-virtual {p0, p1, v0}, Lkotlinx/coroutines/internal/AtomicOp;->complete(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public abstract prepare(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/lang/Object;"
        }
    .end annotation
.end method
