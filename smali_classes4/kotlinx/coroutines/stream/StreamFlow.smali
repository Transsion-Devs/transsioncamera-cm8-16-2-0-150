.class final Lkotlinx/coroutines/stream/StreamFlow;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlinx/coroutines/flow/Flow;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lkotlinx/coroutines/flow/Flow<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final synthetic consumed$volatile$FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;


# instance fields
.field private volatile synthetic consumed$volatile:I

.field private final stream:Ljava/util/stream/Stream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/stream/Stream<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lkotlinx/coroutines/stream/StreamFlow;

    const-string v1, "consumed$volatile"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/stream/StreamFlow;->consumed$volatile$FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    return-void
.end method

.method public constructor <init>(Ljava/util/stream/Stream;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/stream/Stream<",
            "TT;>;)V"
        }
    .end annotation

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlinx/coroutines/stream/StreamFlow;->stream:Ljava/util/stream/Stream;

    const/4 p1, 0x0

    .line 16
    iput p1, p0, Lkotlinx/coroutines/stream/StreamFlow;->consumed$volatile:I

    return-void
.end method

.method private final synthetic getConsumed$volatile()I
    .registers 1

    iget p0, p0, Lkotlinx/coroutines/stream/StreamFlow;->consumed$volatile:I

    return p0
.end method

.method private static final synthetic getConsumed$volatile$FU()Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;
    .registers 1

    sget-object v0, Lkotlinx/coroutines/stream/StreamFlow;->consumed$volatile$FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    return-object v0
.end method

.method private final synthetic setConsumed$volatile(I)V
    .registers 2

    iput p1, p0, Lkotlinx/coroutines/stream/StreamFlow;->consumed$volatile:I

    return-void
.end method


# virtual methods
.method public collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/flow/FlowCollector<",
            "-TT;>;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lkotlinx/coroutines/stream/StreamFlow$collect$1;

    if-eqz v0, :cond_13

    move-object v0, p2

    check-cast v0, Lkotlinx/coroutines/stream/StreamFlow$collect$1;

    iget v1, v0, Lkotlinx/coroutines/stream/StreamFlow$collect$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lkotlinx/coroutines/stream/StreamFlow$collect$1;->label:I

    goto :goto_18

    :cond_13
    new-instance v0, Lkotlinx/coroutines/stream/StreamFlow$collect$1;

    invoke-direct {v0, p0, p2}, Lkotlinx/coroutines/stream/StreamFlow$collect$1;-><init>(Lkotlinx/coroutines/stream/StreamFlow;Lkotlin/coroutines/Continuation;)V

    :goto_18
    iget-object p2, v0, Lkotlinx/coroutines/stream/StreamFlow$collect$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 18
    iget v2, v0, Lkotlinx/coroutines/stream/StreamFlow$collect$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_42

    if-ne v2, v3, :cond_3a

    iget-object p0, v0, Lkotlinx/coroutines/stream/StreamFlow$collect$1;->L$2:Ljava/lang/Object;

    check-cast p0, Ljava/util/Iterator;

    iget-object p1, v0, Lkotlinx/coroutines/stream/StreamFlow$collect$1;->L$1:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/flow/FlowCollector;

    iget-object v2, v0, Lkotlinx/coroutines/stream/StreamFlow$collect$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/stream/StreamFlow;

    :try_start_31
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_34
    .catchall {:try_start_31 .. :try_end_34} :catchall_37

    move-object p2, p1

    move-object p1, v2

    goto :goto_5a

    :catchall_37
    move-exception p0

    move-object p1, v2

    goto :goto_81

    :cond_3a
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_42
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 19
    invoke-static {}, Lkotlinx/coroutines/stream/StreamFlow;->getConsumed$volatile$FU()Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object p2

    const/4 v2, 0x0

    invoke-virtual {p2, p0, v2, v3}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result p2

    if-eqz p2, :cond_87

    .line 21
    :try_start_50
    iget-object p2, p0, Lkotlinx/coroutines/stream/StreamFlow;->stream:Ljava/util/stream/Stream;

    invoke-interface {p2}, Ljava/util/stream/BaseStream;->iterator()Ljava/util/Iterator;

    move-result-object p2
    :try_end_56
    .catchall {:try_start_50 .. :try_end_56} :catchall_7d

    move-object v4, p1

    move-object p1, p0

    move-object p0, p2

    move-object p2, v4

    :cond_5a
    :goto_5a
    :try_start_5a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_75

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 22
    iput-object p1, v0, Lkotlinx/coroutines/stream/StreamFlow$collect$1;->L$0:Ljava/lang/Object;

    iput-object p2, v0, Lkotlinx/coroutines/stream/StreamFlow$collect$1;->L$1:Ljava/lang/Object;

    iput-object p0, v0, Lkotlinx/coroutines/stream/StreamFlow$collect$1;->L$2:Ljava/lang/Object;

    iput v3, v0, Lkotlinx/coroutines/stream/StreamFlow$collect$1;->label:I

    invoke-interface {p2, v2, v0}, Lkotlinx/coroutines/flow/FlowCollector;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2
    :try_end_70
    .catchall {:try_start_5a .. :try_end_70} :catchall_73

    if-ne v2, v1, :cond_5a

    return-object v1

    :catchall_73
    move-exception p0

    goto :goto_81

    .line 25
    :cond_75
    iget-object p0, p1, Lkotlinx/coroutines/stream/StreamFlow;->stream:Ljava/util/stream/Stream;

    invoke-interface {p0}, Ljava/util/stream/BaseStream;->close()V

    .line 27
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :catchall_7d
    move-exception p1

    move-object v4, p1

    move-object p1, p0

    move-object p0, v4

    .line 25
    :goto_81
    iget-object p1, p1, Lkotlinx/coroutines/stream/StreamFlow;->stream:Ljava/util/stream/Stream;

    invoke-interface {p1}, Ljava/util/stream/BaseStream;->close()V

    throw p0

    .line 19
    :cond_87
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Stream.consumeAsFlow can be collected only once"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
