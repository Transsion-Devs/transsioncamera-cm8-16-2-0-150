.class public Lkotlinx/coroutines/flow/SharedFlowImpl;
.super Lkotlinx/coroutines/flow/internal/AbstractSharedFlow;
.source "SourceFile"

# interfaces
.implements Lkotlinx/coroutines/flow/MutableSharedFlow;
.implements Lkotlinx/coroutines/flow/CancellableFlow;
.implements Lkotlinx/coroutines/flow/internal/FusibleFlow;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlinx/coroutines/flow/SharedFlowImpl$Emitter;,
        Lkotlinx/coroutines/flow/SharedFlowImpl$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lkotlinx/coroutines/flow/internal/AbstractSharedFlow<",
        "Lkotlinx/coroutines/flow/SharedFlowSlot;",
        ">;",
        "Lkotlinx/coroutines/flow/MutableSharedFlow<",
        "TT;>;",
        "Lkotlinx/coroutines/flow/CancellableFlow<",
        "TT;>;",
        "Lkotlinx/coroutines/flow/internal/FusibleFlow<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private buffer:[Ljava/lang/Object;

.field private final bufferCapacity:I

.field private bufferSize:I

.field private minCollectorIndex:J

.field private final onBufferOverflow:Lkotlinx/coroutines/channels/BufferOverflow;

.field private queueSize:I

.field private final replay:I

.field private replayIndex:J


# direct methods
.method public constructor <init>(IILkotlinx/coroutines/channels/BufferOverflow;)V
    .registers 4

    .line 316
    invoke-direct {p0}, Lkotlinx/coroutines/flow/internal/AbstractSharedFlow;-><init>()V

    .line 313
    iput p1, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->replay:I

    .line 314
    iput p2, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->bufferCapacity:I

    .line 315
    iput-object p3, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->onBufferOverflow:Lkotlinx/coroutines/channels/BufferOverflow;

    return-void
.end method

.method public static final synthetic access$awaitValue(Lkotlinx/coroutines/flow/SharedFlowImpl;Lkotlinx/coroutines/flow/SharedFlowSlot;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 3

    .line 312
    invoke-direct {p0, p1, p2}, Lkotlinx/coroutines/flow/SharedFlowImpl;->awaitValue(Lkotlinx/coroutines/flow/SharedFlowSlot;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$cancelEmitter(Lkotlinx/coroutines/flow/SharedFlowImpl;Lkotlinx/coroutines/flow/SharedFlowImpl$Emitter;)V
    .registers 2

    .line 312
    invoke-direct {p0, p1}, Lkotlinx/coroutines/flow/SharedFlowImpl;->cancelEmitter(Lkotlinx/coroutines/flow/SharedFlowImpl$Emitter;)V

    return-void
.end method

.method public static final synthetic access$emitSuspend(Lkotlinx/coroutines/flow/SharedFlowImpl;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 3

    .line 312
    invoke-direct {p0, p1, p2}, Lkotlinx/coroutines/flow/SharedFlowImpl;->emitSuspend(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$enqueueLocked(Lkotlinx/coroutines/flow/SharedFlowImpl;Ljava/lang/Object;)V
    .registers 2

    .line 312
    invoke-direct {p0, p1}, Lkotlinx/coroutines/flow/SharedFlowImpl;->enqueueLocked(Ljava/lang/Object;)V

    return-void
.end method

.method public static final synthetic access$findSlotsToResumeLocked(Lkotlinx/coroutines/flow/SharedFlowImpl;[Lkotlin/coroutines/Continuation;)[Lkotlin/coroutines/Continuation;
    .registers 2

    .line 312
    invoke-direct {p0, p1}, Lkotlinx/coroutines/flow/SharedFlowImpl;->findSlotsToResumeLocked([Lkotlin/coroutines/Continuation;)[Lkotlin/coroutines/Continuation;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getBufferCapacity$p(Lkotlinx/coroutines/flow/SharedFlowImpl;)I
    .registers 1

    .line 312
    iget p0, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->bufferCapacity:I

    return p0
.end method

.method public static final synthetic access$getHead(Lkotlinx/coroutines/flow/SharedFlowImpl;)J
    .registers 3

    .line 312
    invoke-direct {p0}, Lkotlinx/coroutines/flow/SharedFlowImpl;->getHead()J

    move-result-wide v0

    return-wide v0
.end method

.method public static final synthetic access$getQueueSize$p(Lkotlinx/coroutines/flow/SharedFlowImpl;)I
    .registers 1

    .line 312
    iget p0, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->queueSize:I

    return p0
.end method

.method public static final synthetic access$getTotalSize(Lkotlinx/coroutines/flow/SharedFlowImpl;)I
    .registers 1

    .line 312
    invoke-direct {p0}, Lkotlinx/coroutines/flow/SharedFlowImpl;->getTotalSize()I

    move-result p0

    return p0
.end method

.method public static final synthetic access$setQueueSize$p(Lkotlinx/coroutines/flow/SharedFlowImpl;I)V
    .registers 2

    .line 312
    iput p1, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->queueSize:I

    return-void
.end method

.method public static final synthetic access$tryEmitLocked(Lkotlinx/coroutines/flow/SharedFlowImpl;Ljava/lang/Object;)Z
    .registers 2

    .line 312
    invoke-direct {p0, p1}, Lkotlinx/coroutines/flow/SharedFlowImpl;->tryEmitLocked(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$tryPeekLocked(Lkotlinx/coroutines/flow/SharedFlowImpl;Lkotlinx/coroutines/flow/SharedFlowSlot;)J
    .registers 2

    .line 312
    invoke-direct {p0, p1}, Lkotlinx/coroutines/flow/SharedFlowImpl;->tryPeekLocked(Lkotlinx/coroutines/flow/SharedFlowSlot;)J

    move-result-wide p0

    return-wide p0
.end method

.method private final awaitValue(Lkotlinx/coroutines/flow/SharedFlowSlot;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/flow/SharedFlowSlot;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 311
    new-instance v0, Lkotlinx/coroutines/CancellableContinuationImpl;

    invoke-static {p2}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lkotlinx/coroutines/CancellableContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;I)V

    .line 317
    invoke-virtual {v0}, Lkotlinx/coroutines/CancellableContinuationImpl;->initCancellability()V

    .line 16
    monitor-enter p0

    .line 672
    :try_start_e
    # invokes: Lkotlinx/coroutines/flow/SharedFlowImpl;->tryPeekLocked(Lkotlinx/coroutines/flow/SharedFlowSlot;)J
    invoke-static {p0, p1}, Lkotlinx/coroutines/flow/SharedFlowImpl;->access$tryPeekLocked(Lkotlinx/coroutines/flow/SharedFlowImpl;Lkotlinx/coroutines/flow/SharedFlowSlot;)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-gez v1, :cond_1d

    .line 679
    iput-object v0, p1, Lkotlinx/coroutines/flow/SharedFlowSlot;->cont:Lkotlin/coroutines/Continuation;

    goto :goto_28

    :catchall_1b
    move-exception p1

    goto :goto_42

    .line 676
    :cond_1d
    sget-object p1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    .line 680
    :goto_28
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_2a
    .catchall {:try_start_e .. :try_end_2a} :catchall_1b

    .line 16
    monitor-exit p0

    .line 319
    invoke-virtual {v0}, Lkotlinx/coroutines/CancellableContinuationImpl;->getResult()Ljava/lang/Object;

    move-result-object p0

    .line 310
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_38

    invoke-static {p2}, Lkotlin/coroutines/jvm/internal/DebugProbesKt;->probeCoroutineSuspended(Lkotlin/coroutines/Continuation;)V

    :cond_38
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_3f

    return-object p0

    .line 320
    :cond_3f
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    .line 16
    :goto_42
    monitor-exit p0

    throw p1
.end method

.method private final cancelEmitter(Lkotlinx/coroutines/flow/SharedFlowImpl$Emitter;)V
    .registers 6

    .line 16
    monitor-enter p0

    .line 517
    :try_start_1
    iget-wide v0, p1, Lkotlinx/coroutines/flow/SharedFlowImpl$Emitter;->index:J

    invoke-direct {p0}, Lkotlinx/coroutines/flow/SharedFlowImpl;->getHead()J

    move-result-wide v2
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_2a

    cmp-long v0, v0, v2

    if-gez v0, :cond_d

    monitor-exit p0

    return-void

    .line 518
    :cond_d
    :try_start_d
    iget-object v0, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->buffer:[Ljava/lang/Object;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 519
    iget-wide v1, p1, Lkotlinx/coroutines/flow/SharedFlowImpl$Emitter;->index:J

    # invokes: Lkotlinx/coroutines/flow/SharedFlowKt;->getBufferAt([Ljava/lang/Object;J)Ljava/lang/Object;
    invoke-static {v0, v1, v2}, Lkotlinx/coroutines/flow/SharedFlowKt;->access$getBufferAt([Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1
    :try_end_18
    .catchall {:try_start_d .. :try_end_18} :catchall_2a

    if-eq v1, p1, :cond_1c

    monitor-exit p0

    return-void

    .line 520
    :cond_1c
    :try_start_1c
    iget-wide v1, p1, Lkotlinx/coroutines/flow/SharedFlowImpl$Emitter;->index:J

    sget-object p1, Lkotlinx/coroutines/flow/SharedFlowKt;->NO_VALUE:Lkotlinx/coroutines/internal/Symbol;

    # invokes: Lkotlinx/coroutines/flow/SharedFlowKt;->setBufferAt([Ljava/lang/Object;JLjava/lang/Object;)V
    invoke-static {v0, v1, v2, p1}, Lkotlinx/coroutines/flow/SharedFlowKt;->access$setBufferAt([Ljava/lang/Object;JLjava/lang/Object;)V

    .line 521
    invoke-direct {p0}, Lkotlinx/coroutines/flow/SharedFlowImpl;->cleanupTailLocked()V

    .line 522
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_28
    .catchall {:try_start_1c .. :try_end_28} :catchall_2a

    .line 16
    monitor-exit p0

    return-void

    :catchall_2a
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private final cleanupTailLocked()V
    .registers 6

    .line 625
    iget v0, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->bufferCapacity:I

    if-nez v0, :cond_a

    iget v0, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->queueSize:I

    const/4 v1, 0x1

    if-gt v0, v1, :cond_a

    goto :goto_3d

    .line 626
    :cond_a
    iget-object v0, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->buffer:[Ljava/lang/Object;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 627
    :goto_f
    iget v1, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->queueSize:I

    if-lez v1, :cond_3d

    invoke-direct {p0}, Lkotlinx/coroutines/flow/SharedFlowImpl;->getHead()J

    move-result-wide v1

    invoke-direct {p0}, Lkotlinx/coroutines/flow/SharedFlowImpl;->getTotalSize()I

    move-result v3

    int-to-long v3, v3

    add-long/2addr v1, v3

    const-wide/16 v3, 0x1

    sub-long/2addr v1, v3

    # invokes: Lkotlinx/coroutines/flow/SharedFlowKt;->getBufferAt([Ljava/lang/Object;J)Ljava/lang/Object;
    invoke-static {v0, v1, v2}, Lkotlinx/coroutines/flow/SharedFlowKt;->access$getBufferAt([Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lkotlinx/coroutines/flow/SharedFlowKt;->NO_VALUE:Lkotlinx/coroutines/internal/Symbol;

    if-ne v1, v2, :cond_3d

    .line 628
    iget v1, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->queueSize:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->queueSize:I

    .line 629
    invoke-direct {p0}, Lkotlinx/coroutines/flow/SharedFlowImpl;->getHead()J

    move-result-wide v1

    invoke-direct {p0}, Lkotlinx/coroutines/flow/SharedFlowImpl;->getTotalSize()I

    move-result v3

    int-to-long v3, v3

    add-long/2addr v1, v3

    const/4 v3, 0x0

    # invokes: Lkotlinx/coroutines/flow/SharedFlowKt;->setBufferAt([Ljava/lang/Object;JLjava/lang/Object;)V
    invoke-static {v0, v1, v2, v3}, Lkotlinx/coroutines/flow/SharedFlowKt;->access$setBufferAt([Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_f

    :cond_3d
    :goto_3d
    return-void
.end method

.method static synthetic collect$suspendImpl(Lkotlinx/coroutines/flow/SharedFlowImpl;Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/coroutines/flow/SharedFlowImpl<",
            "TT;>;",
            "Lkotlinx/coroutines/flow/FlowCollector<",
            "-TT;>;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lkotlinx/coroutines/flow/SharedFlowImpl$collect$1;

    if-eqz v0, :cond_13

    move-object v0, p2

    check-cast v0, Lkotlinx/coroutines/flow/SharedFlowImpl$collect$1;

    iget v1, v0, Lkotlinx/coroutines/flow/SharedFlowImpl$collect$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lkotlinx/coroutines/flow/SharedFlowImpl$collect$1;->label:I

    goto :goto_18

    :cond_13
    new-instance v0, Lkotlinx/coroutines/flow/SharedFlowImpl$collect$1;

    invoke-direct {v0, p0, p2}, Lkotlinx/coroutines/flow/SharedFlowImpl$collect$1;-><init>(Lkotlinx/coroutines/flow/SharedFlowImpl;Lkotlin/coroutines/Continuation;)V

    :goto_18
    iget-object p2, v0, Lkotlinx/coroutines/flow/SharedFlowImpl$collect$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 379
    iget v2, v0, Lkotlinx/coroutines/flow/SharedFlowImpl$collect$1;->label:I

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v2, :cond_76

    if-eq v2, v5, :cond_5f

    if-eq v2, v4, :cond_4a

    if-ne v2, v3, :cond_42

    iget-object p0, v0, Lkotlinx/coroutines/flow/SharedFlowImpl$collect$1;->L$3:Ljava/lang/Object;

    check-cast p0, Lkotlinx/coroutines/Job;

    iget-object p1, v0, Lkotlinx/coroutines/flow/SharedFlowImpl$collect$1;->L$2:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/flow/SharedFlowSlot;

    iget-object v2, v0, Lkotlinx/coroutines/flow/SharedFlowImpl$collect$1;->L$1:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/flow/FlowCollector;

    iget-object v5, v0, Lkotlinx/coroutines/flow/SharedFlowImpl$collect$1;->L$0:Ljava/lang/Object;

    check-cast v5, Lkotlinx/coroutines/flow/SharedFlowImpl;

    :goto_3b
    :try_start_3b
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_3e
    .catchall {:try_start_3b .. :try_end_3e} :catchall_3f

    goto :goto_5b

    :catchall_3f
    move-exception p0

    goto/16 :goto_dc

    :cond_42
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4a
    iget-object p0, v0, Lkotlinx/coroutines/flow/SharedFlowImpl$collect$1;->L$3:Ljava/lang/Object;

    check-cast p0, Lkotlinx/coroutines/Job;

    iget-object p1, v0, Lkotlinx/coroutines/flow/SharedFlowImpl$collect$1;->L$2:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/flow/SharedFlowSlot;

    iget-object v2, v0, Lkotlinx/coroutines/flow/SharedFlowImpl$collect$1;->L$1:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/flow/FlowCollector;

    iget-object v5, v0, Lkotlinx/coroutines/flow/SharedFlowImpl$collect$1;->L$0:Ljava/lang/Object;

    check-cast v5, Lkotlinx/coroutines/flow/SharedFlowImpl;

    goto :goto_3b

    :goto_5b
    move-object p2, v2

    move-object v2, p0

    move-object p0, v5

    goto :goto_a9

    :cond_5f
    iget-object p0, v0, Lkotlinx/coroutines/flow/SharedFlowImpl$collect$1;->L$2:Ljava/lang/Object;

    move-object p1, p0

    check-cast p1, Lkotlinx/coroutines/flow/SharedFlowSlot;

    iget-object p0, v0, Lkotlinx/coroutines/flow/SharedFlowImpl$collect$1;->L$1:Ljava/lang/Object;

    check-cast p0, Lkotlinx/coroutines/flow/FlowCollector;

    iget-object v2, v0, Lkotlinx/coroutines/flow/SharedFlowImpl$collect$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/flow/SharedFlowImpl;

    :try_start_6c
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_6f
    .catchall {:try_start_6c .. :try_end_6f} :catchall_72

    move-object p2, p0

    move-object p0, v2

    goto :goto_9d

    :catchall_72
    move-exception p0

    move-object v5, v2

    goto/16 :goto_dc

    :cond_76
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 380
    invoke-virtual {p0}, Lkotlinx/coroutines/flow/internal/AbstractSharedFlow;->allocateSlot()Lkotlinx/coroutines/flow/internal/AbstractSharedFlowSlot;

    move-result-object p2

    check-cast p2, Lkotlinx/coroutines/flow/SharedFlowSlot;

    .line 382
    :try_start_7f
    instance-of v2, p1, Lkotlinx/coroutines/flow/SubscribedFlowCollector;

    if-eqz v2, :cond_9a

    move-object v2, p1

    check-cast v2, Lkotlinx/coroutines/flow/SubscribedFlowCollector;

    iput-object p0, v0, Lkotlinx/coroutines/flow/SharedFlowImpl$collect$1;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Lkotlinx/coroutines/flow/SharedFlowImpl$collect$1;->L$1:Ljava/lang/Object;

    iput-object p2, v0, Lkotlinx/coroutines/flow/SharedFlowImpl$collect$1;->L$2:Ljava/lang/Object;

    iput v5, v0, Lkotlinx/coroutines/flow/SharedFlowImpl$collect$1;->label:I

    invoke-virtual {v2, v0}, Lkotlinx/coroutines/flow/SubscribedFlowCollector;->onSubscription(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2
    :try_end_92
    .catchall {:try_start_7f .. :try_end_92} :catchall_95

    if-ne v2, v1, :cond_9a

    goto :goto_db

    :catchall_95
    move-exception p1

    move-object v5, p0

    move-object p0, p1

    move-object p1, p2

    goto :goto_dc

    :cond_9a
    move-object v7, p2

    move-object p2, p1

    move-object p1, v7

    .line 326
    :goto_9d
    :try_start_9d
    invoke-interface {v0}, Lkotlin/coroutines/Continuation;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v2

    .line 383
    sget-object v5, Lkotlinx/coroutines/Job;->Key:Lkotlinx/coroutines/Job$Key;

    invoke-interface {v2, v5}, Lkotlin/coroutines/CoroutineContext;->get(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;

    move-result-object v2

    check-cast v2, Lkotlinx/coroutines/Job;

    .line 387
    :cond_a9
    :goto_a9
    invoke-direct {p0, p1}, Lkotlinx/coroutines/flow/SharedFlowImpl;->tryTakeValue(Lkotlinx/coroutines/flow/SharedFlowSlot;)Ljava/lang/Object;

    move-result-object v5

    .line 388
    sget-object v6, Lkotlinx/coroutines/flow/SharedFlowKt;->NO_VALUE:Lkotlinx/coroutines/internal/Symbol;

    if-ne v5, v6, :cond_c6

    .line 389
    iput-object p0, v0, Lkotlinx/coroutines/flow/SharedFlowImpl$collect$1;->L$0:Ljava/lang/Object;

    iput-object p2, v0, Lkotlinx/coroutines/flow/SharedFlowImpl$collect$1;->L$1:Ljava/lang/Object;

    iput-object p1, v0, Lkotlinx/coroutines/flow/SharedFlowImpl$collect$1;->L$2:Ljava/lang/Object;

    iput-object v2, v0, Lkotlinx/coroutines/flow/SharedFlowImpl$collect$1;->L$3:Ljava/lang/Object;

    iput v4, v0, Lkotlinx/coroutines/flow/SharedFlowImpl$collect$1;->label:I

    invoke-direct {p0, p1, v0}, Lkotlinx/coroutines/flow/SharedFlowImpl;->awaitValue(Lkotlinx/coroutines/flow/SharedFlowSlot;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v1, :cond_a9

    goto :goto_db

    :catchall_c2
    move-exception p2

    move-object v5, p0

    move-object p0, p2

    goto :goto_dc

    :cond_c6
    if-eqz v2, :cond_cb

    .line 391
    invoke-static {v2}, Lkotlinx/coroutines/JobKt;->ensureActive(Lkotlinx/coroutines/Job;)V

    .line 392
    :cond_cb
    iput-object p0, v0, Lkotlinx/coroutines/flow/SharedFlowImpl$collect$1;->L$0:Ljava/lang/Object;

    iput-object p2, v0, Lkotlinx/coroutines/flow/SharedFlowImpl$collect$1;->L$1:Ljava/lang/Object;

    iput-object p1, v0, Lkotlinx/coroutines/flow/SharedFlowImpl$collect$1;->L$2:Ljava/lang/Object;

    iput-object v2, v0, Lkotlinx/coroutines/flow/SharedFlowImpl$collect$1;->L$3:Ljava/lang/Object;

    iput v3, v0, Lkotlinx/coroutines/flow/SharedFlowImpl$collect$1;->label:I

    invoke-interface {p2, v5, v0}, Lkotlinx/coroutines/flow/FlowCollector;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5
    :try_end_d9
    .catchall {:try_start_9d .. :try_end_d9} :catchall_c2

    if-ne v5, v1, :cond_a9

    :goto_db
    return-object v1

    .line 395
    :goto_dc
    invoke-virtual {v5, p1}, Lkotlinx/coroutines/flow/internal/AbstractSharedFlow;->freeSlot(Lkotlinx/coroutines/flow/internal/AbstractSharedFlowSlot;)V

    throw p0
.end method

.method private final correctCollectorIndexesOnDropOldest(J)V
    .registers 11

    .line 90
    # getter for: Lkotlinx/coroutines/flow/internal/AbstractSharedFlow;->nCollectors:I
    invoke-static {p0}, Lkotlinx/coroutines/flow/internal/AbstractSharedFlow;->access$getNCollectors(Lkotlinx/coroutines/flow/internal/AbstractSharedFlow;)I

    move-result v0

    if-eqz v0, :cond_27

    .line 91
    # getter for: Lkotlinx/coroutines/flow/internal/AbstractSharedFlow;->slots:[Lkotlinx/coroutines/flow/internal/AbstractSharedFlowSlot;
    invoke-static {p0}, Lkotlinx/coroutines/flow/internal/AbstractSharedFlow;->access$getSlots(Lkotlinx/coroutines/flow/internal/AbstractSharedFlow;)[Lkotlinx/coroutines/flow/internal/AbstractSharedFlowSlot;

    move-result-object v0

    if-eqz v0, :cond_27

    .line 756
    array-length v1, v0

    const/4 v2, 0x0

    :goto_e
    if-ge v2, v1, :cond_27

    aget-object v3, v0, v2

    if-eqz v3, :cond_24

    .line 92
    check-cast v3, Lkotlinx/coroutines/flow/SharedFlowSlot;

    .line 465
    iget-wide v4, v3, Lkotlinx/coroutines/flow/SharedFlowSlot;->index:J

    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-ltz v6, :cond_24

    cmp-long v4, v4, p1

    if-gez v4, :cond_24

    .line 466
    iput-wide p1, v3, Lkotlinx/coroutines/flow/SharedFlowSlot;->index:J

    :cond_24
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 469
    :cond_27
    iput-wide p1, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->minCollectorIndex:J

    return-void
.end method

.method private final dropOldestLocked()V
    .registers 5

    .line 454
    iget-object v0, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->buffer:[Ljava/lang/Object;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {p0}, Lkotlinx/coroutines/flow/SharedFlowImpl;->getHead()J

    move-result-wide v1

    const/4 v3, 0x0

    # invokes: Lkotlinx/coroutines/flow/SharedFlowKt;->setBufferAt([Ljava/lang/Object;JLjava/lang/Object;)V
    invoke-static {v0, v1, v2, v3}, Lkotlinx/coroutines/flow/SharedFlowKt;->access$setBufferAt([Ljava/lang/Object;JLjava/lang/Object;)V

    .line 455
    iget v0, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->bufferSize:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->bufferSize:I

    .line 456
    invoke-direct {p0}, Lkotlinx/coroutines/flow/SharedFlowImpl;->getHead()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    .line 457
    iget-wide v2, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->replayIndex:J

    cmp-long v2, v2, v0

    if-gez v2, :cond_22

    iput-wide v0, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->replayIndex:J

    .line 458
    :cond_22
    iget-wide v2, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->minCollectorIndex:J

    cmp-long v2, v2, v0

    if-gez v2, :cond_2b

    invoke-direct {p0, v0, v1}, Lkotlinx/coroutines/flow/SharedFlowImpl;->correctCollectorIndexesOnDropOldest(J)V

    :cond_2b
    return-void
.end method

.method static synthetic emit$suspendImpl(Lkotlinx/coroutines/flow/SharedFlowImpl;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/coroutines/flow/SharedFlowImpl<",
            "TT;>;TT;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 414
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/flow/SharedFlowImpl;->tryEmit(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    .line 415
    :cond_9
    invoke-direct {p0, p1, p2}, Lkotlinx/coroutines/flow/SharedFlowImpl;->emitSuspend(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_14

    return-object p0

    :cond_14
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private final emitSuspend(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 311
    new-instance v5, Lkotlinx/coroutines/CancellableContinuationImpl;

    invoke-static {p2}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    const/4 v6, 0x1

    invoke-direct {v5, v0, v6}, Lkotlinx/coroutines/CancellableContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;I)V

    .line 317
    invoke-virtual {v5}, Lkotlinx/coroutines/CancellableContinuationImpl;->initCancellability()V

    .line 494
    sget-object v7, Lkotlinx/coroutines/flow/internal/AbstractSharedFlowKt;->EMPTY_RESUMES:[Lkotlin/coroutines/Continuation;

    .line 16
    monitor-enter p0

    .line 497
    :try_start_10
    # invokes: Lkotlinx/coroutines/flow/SharedFlowImpl;->tryEmitLocked(Ljava/lang/Object;)Z
    invoke-static {p0, p1}, Lkotlinx/coroutines/flow/SharedFlowImpl;->access$tryEmitLocked(Lkotlinx/coroutines/flow/SharedFlowImpl;Ljava/lang/Object;)Z

    move-result v0
    :try_end_14
    .catchall {:try_start_10 .. :try_end_14} :catchall_8b

    if-eqz v0, :cond_2c

    .line 498
    :try_start_16
    sget-object p1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v5, p1}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    .line 499
    # invokes: Lkotlinx/coroutines/flow/SharedFlowImpl;->findSlotsToResumeLocked([Lkotlin/coroutines/Continuation;)[Lkotlin/coroutines/Continuation;
    invoke-static {p0, v7}, Lkotlinx/coroutines/flow/SharedFlowImpl;->access$findSlotsToResumeLocked(Lkotlinx/coroutines/flow/SharedFlowImpl;[Lkotlin/coroutines/Continuation;)[Lkotlin/coroutines/Continuation;

    move-result-object p1
    :try_end_25
    .catchall {:try_start_16 .. :try_end_25} :catchall_28

    const/4 v0, 0x0

    move-object v1, p0

    goto :goto_58

    :catchall_28
    move-exception v0

    move-object p1, v0

    move-object v1, p0

    goto :goto_8e

    .line 503
    :cond_2c
    :try_start_2c
    new-instance v0, Lkotlinx/coroutines/flow/SharedFlowImpl$Emitter;

    # invokes: Lkotlinx/coroutines/flow/SharedFlowImpl;->getHead()J
    invoke-static {p0}, Lkotlinx/coroutines/flow/SharedFlowImpl;->access$getHead(Lkotlinx/coroutines/flow/SharedFlowImpl;)J

    move-result-wide v1

    # invokes: Lkotlinx/coroutines/flow/SharedFlowImpl;->getTotalSize()I
    invoke-static {p0}, Lkotlinx/coroutines/flow/SharedFlowImpl;->access$getTotalSize(Lkotlinx/coroutines/flow/SharedFlowImpl;)I

    move-result v3
    :try_end_36
    .catchall {:try_start_2c .. :try_end_36} :catchall_8b

    int-to-long v3, v3

    add-long v2, v1, v3

    move-object v1, p0

    move-object v4, p1

    :try_start_3b
    invoke-direct/range {v0 .. v5}, Lkotlinx/coroutines/flow/SharedFlowImpl$Emitter;-><init>(Lkotlinx/coroutines/flow/SharedFlowImpl;JLjava/lang/Object;Lkotlin/coroutines/Continuation;)V

    .line 504
    # invokes: Lkotlinx/coroutines/flow/SharedFlowImpl;->enqueueLocked(Ljava/lang/Object;)V
    invoke-static {v1, v0}, Lkotlinx/coroutines/flow/SharedFlowImpl;->access$enqueueLocked(Lkotlinx/coroutines/flow/SharedFlowImpl;Ljava/lang/Object;)V

    .line 505
    # getter for: Lkotlinx/coroutines/flow/SharedFlowImpl;->queueSize:I
    invoke-static {v1}, Lkotlinx/coroutines/flow/SharedFlowImpl;->access$getQueueSize$p(Lkotlinx/coroutines/flow/SharedFlowImpl;)I

    move-result p0

    add-int/2addr p0, v6

    invoke-static {v1, p0}, Lkotlinx/coroutines/flow/SharedFlowImpl;->access$setQueueSize$p(Lkotlinx/coroutines/flow/SharedFlowImpl;I)V

    .line 507
    # getter for: Lkotlinx/coroutines/flow/SharedFlowImpl;->bufferCapacity:I
    invoke-static {v1}, Lkotlinx/coroutines/flow/SharedFlowImpl;->access$getBufferCapacity$p(Lkotlinx/coroutines/flow/SharedFlowImpl;)I

    move-result p0

    if-nez p0, :cond_57

    # invokes: Lkotlinx/coroutines/flow/SharedFlowImpl;->findSlotsToResumeLocked([Lkotlin/coroutines/Continuation;)[Lkotlin/coroutines/Continuation;
    invoke-static {v1, v7}, Lkotlinx/coroutines/flow/SharedFlowImpl;->access$findSlotsToResumeLocked(Lkotlinx/coroutines/flow/SharedFlowImpl;[Lkotlin/coroutines/Continuation;)[Lkotlin/coroutines/Continuation;

    move-result-object v7
    :try_end_53
    .catchall {:try_start_3b .. :try_end_53} :catchall_54

    goto :goto_57

    :catchall_54
    move-exception v0

    :goto_55
    move-object p1, v0

    goto :goto_8e

    :cond_57
    :goto_57
    move-object p1, v7

    .line 16
    :goto_58
    monitor-exit v1

    if-eqz v0, :cond_5e

    .line 511
    invoke-static {v5, v0}, Lkotlinx/coroutines/CancellableContinuationKt;->disposeOnCancellation(Lkotlinx/coroutines/CancellableContinuation;Lkotlinx/coroutines/DisposableHandle;)V

    .line 513
    :cond_5e
    array-length p0, p1

    const/4 v0, 0x0

    :goto_60
    if-ge v0, p0, :cond_74

    aget-object v1, p1, v0

    if-eqz v1, :cond_71

    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {v2}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    :cond_71
    add-int/lit8 v0, v0, 0x1

    goto :goto_60

    .line 319
    :cond_74
    invoke-virtual {v5}, Lkotlinx/coroutines/CancellableContinuationImpl;->getResult()Ljava/lang/Object;

    move-result-object p0

    .line 310
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_81

    invoke-static {p2}, Lkotlin/coroutines/jvm/internal/DebugProbesKt;->probeCoroutineSuspended(Lkotlin/coroutines/Continuation;)V

    :cond_81
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_88

    return-object p0

    .line 320
    :cond_88
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :catchall_8b
    move-exception v0

    move-object v1, p0

    goto :goto_55

    .line 16
    :goto_8e
    monitor-exit v1

    throw p1
.end method

.method private final enqueueLocked(Ljava/lang/Object;)V
    .registers 8

    .line 474
    invoke-direct {p0}, Lkotlinx/coroutines/flow/SharedFlowImpl;->getTotalSize()I

    move-result v0

    .line 475
    iget-object v1, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->buffer:[Ljava/lang/Object;

    const/4 v2, 0x2

    if-nez v1, :cond_10

    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 476
    invoke-direct {p0, v1, v3, v2}, Lkotlinx/coroutines/flow/SharedFlowImpl;->growBuffer([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v1

    goto :goto_19

    .line 477
    :cond_10
    array-length v3, v1

    if-lt v0, v3, :cond_19

    array-length v3, v1

    mul-int/2addr v3, v2

    invoke-direct {p0, v1, v0, v3}, Lkotlinx/coroutines/flow/SharedFlowImpl;->growBuffer([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v1

    .line 479
    :cond_19
    :goto_19
    invoke-direct {p0}, Lkotlinx/coroutines/flow/SharedFlowImpl;->getHead()J

    move-result-wide v2

    int-to-long v4, v0

    add-long/2addr v2, v4

    # invokes: Lkotlinx/coroutines/flow/SharedFlowKt;->setBufferAt([Ljava/lang/Object;JLjava/lang/Object;)V
    invoke-static {v1, v2, v3, p1}, Lkotlinx/coroutines/flow/SharedFlowKt;->access$setBufferAt([Ljava/lang/Object;JLjava/lang/Object;)V

    return-void
.end method

.method private final findSlotsToResumeLocked([Lkotlin/coroutines/Continuation;)[Lkotlin/coroutines/Continuation;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;)[",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 685
    array-length v0, p1

    .line 90
    # getter for: Lkotlinx/coroutines/flow/internal/AbstractSharedFlow;->nCollectors:I
    invoke-static {p0}, Lkotlinx/coroutines/flow/internal/AbstractSharedFlow;->access$getNCollectors(Lkotlinx/coroutines/flow/internal/AbstractSharedFlow;)I

    move-result v1

    if-eqz v1, :cond_47

    .line 91
    # getter for: Lkotlinx/coroutines/flow/internal/AbstractSharedFlow;->slots:[Lkotlinx/coroutines/flow/internal/AbstractSharedFlowSlot;
    invoke-static {p0}, Lkotlinx/coroutines/flow/internal/AbstractSharedFlow;->access$getSlots(Lkotlinx/coroutines/flow/internal/AbstractSharedFlow;)[Lkotlinx/coroutines/flow/internal/AbstractSharedFlowSlot;

    move-result-object v1

    if-eqz v1, :cond_47

    .line 812
    array-length v2, v1

    const/4 v3, 0x0

    :goto_f
    if-ge v3, v2, :cond_47

    aget-object v4, v1, v3

    if-eqz v4, :cond_44

    .line 92
    check-cast v4, Lkotlinx/coroutines/flow/SharedFlowSlot;

    .line 687
    iget-object v5, v4, Lkotlinx/coroutines/flow/SharedFlowSlot;->cont:Lkotlin/coroutines/Continuation;

    if-nez v5, :cond_1c

    goto :goto_44

    .line 688
    :cond_1c
    invoke-direct {p0, v4}, Lkotlinx/coroutines/flow/SharedFlowImpl;->tryPeekLocked(Lkotlinx/coroutines/flow/SharedFlowSlot;)J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-ltz v6, :cond_44

    .line 689
    array-length v6, p1

    if-lt v0, v6, :cond_39

    array-length v6, p1

    const/4 v7, 0x2

    mul-int/2addr v6, v7

    invoke-static {v7, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-static {p1, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    const-string v6, "copyOf(...)"

    invoke-static {p1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 690
    :cond_39
    move-object v6, p1

    check-cast v6, [Lkotlin/coroutines/Continuation;

    add-int/lit8 v7, v0, 0x1

    aput-object v5, v6, v0

    const/4 v0, 0x0

    .line 691
    iput-object v0, v4, Lkotlinx/coroutines/flow/SharedFlowSlot;->cont:Lkotlin/coroutines/Continuation;

    move v0, v7

    :cond_44
    :goto_44
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    .line 693
    :cond_47
    check-cast p1, [Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method private final getBufferEndIndex()J
    .registers 5

    .line 357
    invoke-direct {p0}, Lkotlinx/coroutines/flow/SharedFlowImpl;->getHead()J

    move-result-wide v0

    iget p0, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->bufferSize:I

    int-to-long v2, p0

    add-long/2addr v0, v2

    return-wide v0
.end method

.method private final getHead()J
    .registers 5

    .line 354
    iget-wide v0, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->minCollectorIndex:J

    iget-wide v2, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->replayIndex:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method protected static synthetic getLastReplayedLocked$annotations()V
    .registers 0

    return-void
.end method

.method private final getPeekedValueLockedAt(J)Ljava/lang/Object;
    .registers 3

    .line 665
    iget-object p0, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->buffer:[Ljava/lang/Object;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    # invokes: Lkotlinx/coroutines/flow/SharedFlowKt;->getBufferAt([Ljava/lang/Object;J)Ljava/lang/Object;
    invoke-static {p0, p1, p2}, Lkotlinx/coroutines/flow/SharedFlowKt;->access$getBufferAt([Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    .line 666
    instance-of p1, p0, Lkotlinx/coroutines/flow/SharedFlowImpl$Emitter;

    if-eqz p1, :cond_11

    check-cast p0, Lkotlinx/coroutines/flow/SharedFlowImpl$Emitter;

    iget-object p0, p0, Lkotlinx/coroutines/flow/SharedFlowImpl$Emitter;->value:Ljava/lang/Object;

    :cond_11
    return-object p0
.end method

.method private final getQueueEndIndex()J
    .registers 5

    .line 358
    invoke-direct {p0}, Lkotlinx/coroutines/flow/SharedFlowImpl;->getHead()J

    move-result-wide v0

    iget v2, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->bufferSize:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    iget p0, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->queueSize:I

    int-to-long v2, p0

    add-long/2addr v0, v2

    return-wide v0
.end method

.method private final getReplaySize()I
    .registers 5

    .line 355
    invoke-direct {p0}, Lkotlinx/coroutines/flow/SharedFlowImpl;->getHead()J

    move-result-wide v0

    iget v2, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->bufferSize:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    iget-wide v2, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->replayIndex:J

    sub-long/2addr v0, v2

    long-to-int p0, v0

    return p0
.end method

.method private final getTotalSize()I
    .registers 2

    .line 356
    iget v0, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->bufferSize:I

    iget p0, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->queueSize:I

    add-int/2addr v0, p0

    return v0
.end method

.method private final growBuffer([Ljava/lang/Object;II)[Ljava/lang/Object;
    .registers 9

    if-lez p3, :cond_1d

    .line 484
    new-array p3, p3, [Ljava/lang/Object;

    iput-object p3, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->buffer:[Ljava/lang/Object;

    if-nez p1, :cond_9

    goto :goto_1c

    .line 486
    :cond_9
    invoke-direct {p0}, Lkotlinx/coroutines/flow/SharedFlowImpl;->getHead()J

    move-result-wide v0

    const/4 p0, 0x0

    :goto_e
    if-ge p0, p2, :cond_1c

    int-to-long v2, p0

    add-long/2addr v2, v0

    .line 488
    # invokes: Lkotlinx/coroutines/flow/SharedFlowKt;->getBufferAt([Ljava/lang/Object;J)Ljava/lang/Object;
    invoke-static {p1, v2, v3}, Lkotlinx/coroutines/flow/SharedFlowKt;->access$getBufferAt([Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    # invokes: Lkotlinx/coroutines/flow/SharedFlowKt;->setBufferAt([Ljava/lang/Object;JLjava/lang/Object;)V
    invoke-static {p3, v2, v3, v4}, Lkotlinx/coroutines/flow/SharedFlowKt;->access$setBufferAt([Ljava/lang/Object;JLjava/lang/Object;)V

    add-int/lit8 p0, p0, 0x1

    goto :goto_e

    :cond_1c
    :goto_1c
    return-object p3

    .line 483
    :cond_1d
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Buffer size overflow"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final tryEmitLocked(Ljava/lang/Object;)Z
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 421
    invoke-virtual {p0}, Lkotlinx/coroutines/flow/internal/AbstractSharedFlow;->getNCollectors()I

    move-result v0

    if-nez v0, :cond_b

    invoke-direct {p0, p1}, Lkotlinx/coroutines/flow/SharedFlowImpl;->tryEmitNoCollectorsLocked(Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 424
    :cond_b
    iget v0, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->bufferSize:I

    iget v1, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->bufferCapacity:I

    const/4 v2, 0x1

    if-lt v0, v1, :cond_2d

    iget-wide v0, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->minCollectorIndex:J

    iget-wide v3, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->replayIndex:J

    cmp-long v0, v0, v3

    if-gtz v0, :cond_2d

    .line 425
    iget-object v0, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->onBufferOverflow:Lkotlinx/coroutines/channels/BufferOverflow;

    sget-object v1, Lkotlinx/coroutines/flow/SharedFlowImpl$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    if-eq v0, v2, :cond_2b

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2a

    goto :goto_2d

    :cond_2a
    return v2

    :cond_2b
    const/4 p0, 0x0

    return p0

    .line 431
    :cond_2d
    :goto_2d
    invoke-direct {p0, p1}, Lkotlinx/coroutines/flow/SharedFlowImpl;->enqueueLocked(Ljava/lang/Object;)V

    .line 432
    iget p1, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->bufferSize:I

    add-int/2addr p1, v2

    iput p1, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->bufferSize:I

    .line 434
    iget v0, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->bufferCapacity:I

    if-le p1, v0, :cond_3c

    invoke-direct {p0}, Lkotlinx/coroutines/flow/SharedFlowImpl;->dropOldestLocked()V

    .line 436
    :cond_3c
    invoke-direct {p0}, Lkotlinx/coroutines/flow/SharedFlowImpl;->getReplaySize()I

    move-result p1

    iget v0, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->replay:I

    if-le p1, v0, :cond_58

    .line 437
    iget-wide v0, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->replayIndex:J

    const-wide/16 v3, 0x1

    add-long v6, v0, v3

    iget-wide v8, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->minCollectorIndex:J

    invoke-direct {p0}, Lkotlinx/coroutines/flow/SharedFlowImpl;->getBufferEndIndex()J

    move-result-wide v10

    invoke-direct {p0}, Lkotlinx/coroutines/flow/SharedFlowImpl;->getQueueEndIndex()J

    move-result-wide v12

    move-object v5, p0

    invoke-direct/range {v5 .. v13}, Lkotlinx/coroutines/flow/SharedFlowImpl;->updateBufferLocked(JJJJ)V

    :cond_58
    return v2
.end method

.method private final tryEmitNoCollectorsLocked(Ljava/lang/Object;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 444
    iget v0, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->replay:I

    const/4 v1, 0x1

    if-nez v0, :cond_6

    return v1

    .line 445
    :cond_6
    invoke-direct {p0, p1}, Lkotlinx/coroutines/flow/SharedFlowImpl;->enqueueLocked(Ljava/lang/Object;)V

    .line 446
    iget p1, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->bufferSize:I

    add-int/2addr p1, v1

    iput p1, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->bufferSize:I

    .line 448
    iget v0, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->replay:I

    if-le p1, v0, :cond_15

    invoke-direct {p0}, Lkotlinx/coroutines/flow/SharedFlowImpl;->dropOldestLocked()V

    .line 449
    :cond_15
    invoke-direct {p0}, Lkotlinx/coroutines/flow/SharedFlowImpl;->getHead()J

    move-result-wide v2

    iget p1, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->bufferSize:I

    int-to-long v4, p1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->minCollectorIndex:J

    return v1
.end method

.method private final tryPeekLocked(Lkotlinx/coroutines/flow/SharedFlowSlot;)J
    .registers 8

    .line 655
    iget-wide v0, p1, Lkotlinx/coroutines/flow/SharedFlowSlot;->index:J

    .line 656
    invoke-direct {p0}, Lkotlinx/coroutines/flow/SharedFlowImpl;->getBufferEndIndex()J

    move-result-wide v2

    cmp-long p1, v0, v2

    if-gez p1, :cond_b

    goto :goto_20

    .line 657
    :cond_b
    iget p1, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->bufferCapacity:I

    const-wide/16 v2, -0x1

    if-lez p1, :cond_12

    return-wide v2

    .line 659
    :cond_12
    invoke-direct {p0}, Lkotlinx/coroutines/flow/SharedFlowImpl;->getHead()J

    move-result-wide v4

    cmp-long p1, v0, v4

    if-lez p1, :cond_1b

    return-wide v2

    .line 660
    :cond_1b
    iget p0, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->queueSize:I

    if-nez p0, :cond_20

    return-wide v2

    :cond_20
    :goto_20
    return-wide v0
.end method

.method private final tryTakeValue(Lkotlinx/coroutines/flow/SharedFlowSlot;)Ljava/lang/Object;
    .registers 10

    .line 635
    sget-object v0, Lkotlinx/coroutines/flow/internal/AbstractSharedFlowKt;->EMPTY_RESUMES:[Lkotlin/coroutines/Continuation;

    .line 16
    monitor-enter p0

    .line 637
    :try_start_3
    invoke-direct {p0, p1}, Lkotlinx/coroutines/flow/SharedFlowImpl;->tryPeekLocked(Lkotlinx/coroutines/flow/SharedFlowSlot;)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-gez v3, :cond_12

    .line 639
    sget-object p1, Lkotlinx/coroutines/flow/SharedFlowKt;->NO_VALUE:Lkotlinx/coroutines/internal/Symbol;

    goto :goto_24

    :catchall_10
    move-exception p1

    goto :goto_3c

    .line 641
    :cond_12
    iget-wide v3, p1, Lkotlinx/coroutines/flow/SharedFlowSlot;->index:J

    .line 642
    invoke-direct {p0, v1, v2}, Lkotlinx/coroutines/flow/SharedFlowImpl;->getPeekedValueLockedAt(J)Ljava/lang/Object;

    move-result-object v0

    const-wide/16 v5, 0x1

    add-long/2addr v1, v5

    .line 643
    iput-wide v1, p1, Lkotlinx/coroutines/flow/SharedFlowSlot;->index:J

    .line 644
    invoke-virtual {p0, v3, v4}, Lkotlinx/coroutines/flow/SharedFlowImpl;->updateCollectorIndexLocked$kotlinx_coroutines_core(J)[Lkotlin/coroutines/Continuation;

    move-result-object p1
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_10

    move-object v7, v0

    move-object v0, p1

    move-object p1, v7

    .line 16
    :goto_24
    monitor-exit p0

    .line 648
    array-length p0, v0

    const/4 v1, 0x0

    :goto_27
    if-ge v1, p0, :cond_3b

    aget-object v2, v0, v1

    if-eqz v2, :cond_38

    sget-object v3, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {v3}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    :cond_38
    add-int/lit8 v1, v1, 0x1

    goto :goto_27

    :cond_3b
    return-object p1

    .line 16
    :goto_3c
    monitor-exit p0

    throw p1
.end method

.method private final updateBufferLocked(JJJJ)V
    .registers 15

    .line 607
    invoke-static {p3, p4, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 610
    invoke-direct {p0}, Lkotlinx/coroutines/flow/SharedFlowImpl;->getHead()J

    move-result-wide v2

    :goto_8
    cmp-long v4, v2, v0

    if-gez v4, :cond_19

    iget-object v4, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->buffer:[Ljava/lang/Object;

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v5, 0x0

    # invokes: Lkotlinx/coroutines/flow/SharedFlowKt;->setBufferAt([Ljava/lang/Object;JLjava/lang/Object;)V
    invoke-static {v4, v2, v3, v5}, Lkotlinx/coroutines/flow/SharedFlowKt;->access$setBufferAt([Ljava/lang/Object;JLjava/lang/Object;)V

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    goto :goto_8

    .line 612
    :cond_19
    iput-wide p1, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->replayIndex:J

    .line 613
    iput-wide p3, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->minCollectorIndex:J

    sub-long p1, p5, v0

    long-to-int p1, p1

    .line 614
    iput p1, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->bufferSize:I

    sub-long/2addr p7, p5

    long-to-int p1, p7

    .line 615
    iput p1, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->queueSize:I

    return-void
.end method


# virtual methods
.method public collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/flow/FlowCollector<",
            "-TT;>;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lkotlinx/coroutines/flow/SharedFlowImpl;->collect$suspendImpl(Lkotlinx/coroutines/flow/SharedFlowImpl;Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method protected createSlot()Lkotlinx/coroutines/flow/SharedFlowSlot;
    .registers 1

    .line 696
    new-instance p0, Lkotlinx/coroutines/flow/SharedFlowSlot;

    invoke-direct {p0}, Lkotlinx/coroutines/flow/SharedFlowSlot;-><init>()V

    return-object p0
.end method

.method public bridge synthetic createSlot()Lkotlinx/coroutines/flow/internal/AbstractSharedFlowSlot;
    .registers 1

    .line 312
    invoke-virtual {p0}, Lkotlinx/coroutines/flow/SharedFlowImpl;->createSlot()Lkotlinx/coroutines/flow/SharedFlowSlot;

    move-result-object p0

    return-object p0
.end method

.method protected createSlotArray(I)[Lkotlinx/coroutines/flow/SharedFlowSlot;
    .registers 2

    .line 697
    new-array p0, p1, [Lkotlinx/coroutines/flow/SharedFlowSlot;

    return-object p0
.end method

.method public bridge synthetic createSlotArray(I)[Lkotlinx/coroutines/flow/internal/AbstractSharedFlowSlot;
    .registers 2

    .line 312
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/flow/SharedFlowImpl;->createSlotArray(I)[Lkotlinx/coroutines/flow/SharedFlowSlot;

    move-result-object p0

    return-object p0
.end method

.method public emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lkotlinx/coroutines/flow/SharedFlowImpl;->emit$suspendImpl(Lkotlinx/coroutines/flow/SharedFlowImpl;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public fuse(Lkotlin/coroutines/CoroutineContext;ILkotlinx/coroutines/channels/BufferOverflow;)Lkotlinx/coroutines/flow/Flow;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/CoroutineContext;",
            "I",
            "Lkotlinx/coroutines/channels/BufferOverflow;",
            ")",
            "Lkotlinx/coroutines/flow/Flow<",
            "TT;>;"
        }
    .end annotation

    .line 710
    invoke-static {p0, p1, p2, p3}, Lkotlinx/coroutines/flow/SharedFlowKt;->fuseSharedFlow(Lkotlinx/coroutines/flow/SharedFlow;Lkotlin/coroutines/CoroutineContext;ILkotlinx/coroutines/channels/BufferOverflow;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p0

    return-object p0
.end method

.method protected final getLastReplayedLocked()Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 376
    iget-object v0, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->buffer:[Ljava/lang/Object;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-wide v1, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->replayIndex:J

    invoke-direct {p0}, Lkotlinx/coroutines/flow/SharedFlowImpl;->getReplaySize()I

    move-result p0

    int-to-long v3, p0

    add-long/2addr v1, v3

    const-wide/16 v3, 0x1

    sub-long/2addr v1, v3

    # invokes: Lkotlinx/coroutines/flow/SharedFlowKt;->getBufferAt([Ljava/lang/Object;J)Ljava/lang/Object;
    invoke-static {v0, v1, v2}, Lkotlinx/coroutines/flow/SharedFlowKt;->access$getBufferAt([Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public getReplayCache()Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 16
    monitor-enter p0

    .line 362
    :try_start_1
    invoke-direct {p0}, Lkotlinx/coroutines/flow/SharedFlowImpl;->getReplaySize()I

    move-result v0

    if-nez v0, :cond_f

    .line 363
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    monitor-exit p0

    return-object v0

    :catchall_d
    move-exception v0

    goto :goto_2c

    .line 364
    :cond_f
    :try_start_f
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 365
    iget-object v2, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->buffer:[Ljava/lang/Object;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v3, 0x0

    :goto_1a
    if-ge v3, v0, :cond_2a

    .line 367
    iget-wide v4, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->replayIndex:J

    int-to-long v6, v3

    add-long/2addr v4, v6

    # invokes: Lkotlinx/coroutines/flow/SharedFlowKt;->getBufferAt([Ljava/lang/Object;J)Ljava/lang/Object;
    invoke-static {v2, v4, v5}, Lkotlinx/coroutines/flow/SharedFlowKt;->access$getBufferAt([Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_27
    .catchall {:try_start_f .. :try_end_27} :catchall_d

    add-int/lit8 v3, v3, 0x1

    goto :goto_1a

    .line 16
    :cond_2a
    monitor-exit p0

    return-object v1

    :goto_2c
    monitor-exit p0

    throw v0
.end method

.method public resetReplayCache()V
    .registers 11

    .line 16
    monitor-enter p0

    .line 702
    :try_start_1
    invoke-direct {p0}, Lkotlinx/coroutines/flow/SharedFlowImpl;->getBufferEndIndex()J

    move-result-wide v2

    .line 703
    iget-wide v4, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->minCollectorIndex:J

    .line 704
    invoke-direct {p0}, Lkotlinx/coroutines/flow/SharedFlowImpl;->getBufferEndIndex()J

    move-result-wide v6

    .line 705
    invoke-direct {p0}, Lkotlinx/coroutines/flow/SharedFlowImpl;->getQueueEndIndex()J

    move-result-wide v8
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_1a

    move-object v1, p0

    .line 701
    :try_start_10
    invoke-direct/range {v1 .. v9}, Lkotlinx/coroutines/flow/SharedFlowImpl;->updateBufferLocked(JJJJ)V

    .line 707
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_15
    .catchall {:try_start_10 .. :try_end_15} :catchall_17

    .line 16
    monitor-exit v1

    return-void

    :catchall_17
    move-exception v0

    :goto_18
    move-object p0, v0

    goto :goto_1d

    :catchall_1a
    move-exception v0

    move-object v1, p0

    goto :goto_18

    :goto_1d
    monitor-exit v1

    throw p0
.end method

.method public tryEmit(Ljava/lang/Object;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 400
    sget-object v0, Lkotlinx/coroutines/flow/internal/AbstractSharedFlowKt;->EMPTY_RESUMES:[Lkotlin/coroutines/Continuation;

    .line 16
    monitor-enter p0

    .line 402
    :try_start_3
    invoke-direct {p0, p1}, Lkotlinx/coroutines/flow/SharedFlowImpl;->tryEmitLocked(Ljava/lang/Object;)Z

    move-result p1

    const/4 v1, 0x0

    if-eqz p1, :cond_12

    .line 403
    invoke-direct {p0, v0}, Lkotlinx/coroutines/flow/SharedFlowImpl;->findSlotsToResumeLocked([Lkotlin/coroutines/Continuation;)[Lkotlin/coroutines/Continuation;

    move-result-object v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_10

    const/4 p1, 0x1

    goto :goto_13

    :catchall_10
    move-exception p1

    goto :goto_2a

    :cond_12
    move p1, v1

    .line 16
    :goto_13
    monitor-exit p0

    .line 409
    array-length p0, v0

    :goto_15
    if-ge v1, p0, :cond_29

    aget-object v2, v0, v1

    if-eqz v2, :cond_26

    sget-object v3, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {v3}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    :cond_26
    add-int/lit8 v1, v1, 0x1

    goto :goto_15

    :cond_29
    return p1

    .line 16
    :goto_2a
    monitor-exit p0

    throw p1
.end method

.method public final updateCollectorIndexLocked$kotlinx_coroutines_core(J)[Lkotlin/coroutines/Continuation;
    .registers 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)[",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 533
    iget-wide v1, v0, Lkotlinx/coroutines/flow/SharedFlowImpl;->minCollectorIndex:J

    cmp-long v1, p1, v1

    if-lez v1, :cond_b

    sget-object v0, Lkotlinx/coroutines/flow/internal/AbstractSharedFlowKt;->EMPTY_RESUMES:[Lkotlin/coroutines/Continuation;

    return-object v0

    .line 535
    :cond_b
    invoke-direct {v0}, Lkotlinx/coroutines/flow/SharedFlowImpl;->getHead()J

    move-result-wide v1

    .line 536
    iget v3, v0, Lkotlinx/coroutines/flow/SharedFlowImpl;->bufferSize:I

    int-to-long v3, v3

    add-long/2addr v3, v1

    .line 538
    iget v5, v0, Lkotlinx/coroutines/flow/SharedFlowImpl;->bufferCapacity:I

    const-wide/16 v6, 0x1

    if-nez v5, :cond_1e

    iget v5, v0, Lkotlinx/coroutines/flow/SharedFlowImpl;->queueSize:I

    if-lez v5, :cond_1e

    add-long/2addr v3, v6

    .line 90
    :cond_1e
    # getter for: Lkotlinx/coroutines/flow/internal/AbstractSharedFlow;->nCollectors:I
    invoke-static {v0}, Lkotlinx/coroutines/flow/internal/AbstractSharedFlow;->access$getNCollectors(Lkotlinx/coroutines/flow/internal/AbstractSharedFlow;)I

    move-result v5

    if-eqz v5, :cond_44

    .line 91
    # getter for: Lkotlinx/coroutines/flow/internal/AbstractSharedFlow;->slots:[Lkotlinx/coroutines/flow/internal/AbstractSharedFlowSlot;
    invoke-static {v0}, Lkotlinx/coroutines/flow/internal/AbstractSharedFlow;->access$getSlots(Lkotlinx/coroutines/flow/internal/AbstractSharedFlow;)[Lkotlinx/coroutines/flow/internal/AbstractSharedFlowSlot;

    move-result-object v5

    if-eqz v5, :cond_44

    .line 784
    array-length v8, v5

    const/4 v10, 0x0

    :goto_2c
    if-ge v10, v8, :cond_44

    aget-object v11, v5, v10

    if-eqz v11, :cond_41

    .line 92
    check-cast v11, Lkotlinx/coroutines/flow/SharedFlowSlot;

    .line 541
    iget-wide v11, v11, Lkotlinx/coroutines/flow/SharedFlowSlot;->index:J

    const-wide/16 v13, 0x0

    cmp-long v13, v11, v13

    if-ltz v13, :cond_41

    cmp-long v13, v11, v3

    if-gez v13, :cond_41

    move-wide v3, v11

    :cond_41
    add-int/lit8 v10, v10, 0x1

    goto :goto_2c

    .line 544
    :cond_44
    iget-wide v10, v0, Lkotlinx/coroutines/flow/SharedFlowImpl;->minCollectorIndex:J

    cmp-long v5, v3, v10

    if-gtz v5, :cond_4d

    sget-object v0, Lkotlinx/coroutines/flow/internal/AbstractSharedFlowKt;->EMPTY_RESUMES:[Lkotlin/coroutines/Continuation;

    return-object v0

    .line 547
    :cond_4d
    invoke-direct {v0}, Lkotlinx/coroutines/flow/SharedFlowImpl;->getBufferEndIndex()J

    move-result-wide v10

    .line 548
    invoke-virtual {v0}, Lkotlinx/coroutines/flow/internal/AbstractSharedFlow;->getNCollectors()I

    move-result v5

    if-lez v5, :cond_64

    sub-long v12, v10, v3

    long-to-int v5, v12

    .line 553
    iget v8, v0, Lkotlinx/coroutines/flow/SharedFlowImpl;->queueSize:I

    iget v12, v0, Lkotlinx/coroutines/flow/SharedFlowImpl;->bufferCapacity:I

    sub-int/2addr v12, v5

    invoke-static {v8, v12}, Ljava/lang/Math;->min(II)I

    move-result v5

    goto :goto_66

    .line 556
    :cond_64
    iget v5, v0, Lkotlinx/coroutines/flow/SharedFlowImpl;->queueSize:I

    .line 558
    :goto_66
    sget-object v8, Lkotlinx/coroutines/flow/internal/AbstractSharedFlowKt;->EMPTY_RESUMES:[Lkotlin/coroutines/Continuation;

    .line 559
    iget v12, v0, Lkotlinx/coroutines/flow/SharedFlowImpl;->queueSize:I

    int-to-long v12, v12

    add-long/2addr v12, v10

    if-lez v5, :cond_b7

    .line 561
    new-array v8, v5, [Lkotlin/coroutines/Continuation;

    .line 563
    iget-object v14, v0, Lkotlinx/coroutines/flow/SharedFlowImpl;->buffer:[Ljava/lang/Object;

    invoke-static {v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-wide/from16 p1, v6

    move-wide v6, v10

    const/4 v15, 0x0

    :goto_79
    cmp-long v16, v10, v12

    if-gez v16, :cond_b1

    .line 565
    # invokes: Lkotlinx/coroutines/flow/SharedFlowKt;->getBufferAt([Ljava/lang/Object;J)Ljava/lang/Object;
    invoke-static {v14, v10, v11}, Lkotlinx/coroutines/flow/SharedFlowKt;->access$getBufferAt([Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    move-wide/from16 v17, v1

    .line 566
    sget-object v1, Lkotlinx/coroutines/flow/SharedFlowKt;->NO_VALUE:Lkotlinx/coroutines/internal/Symbol;

    if-eq v9, v1, :cond_a8

    .line 567
    const-string v2, "null cannot be cast to non-null type kotlinx.coroutines.flow.SharedFlowImpl.Emitter"

    invoke-static {v9, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v9, Lkotlinx/coroutines/flow/SharedFlowImpl$Emitter;

    add-int/lit8 v2, v15, 0x1

    move-wide/from16 v19, v3

    .line 568
    iget-object v3, v9, Lkotlinx/coroutines/flow/SharedFlowImpl$Emitter;->cont:Lkotlin/coroutines/Continuation;

    aput-object v3, v8, v15

    .line 569
    # invokes: Lkotlinx/coroutines/flow/SharedFlowKt;->setBufferAt([Ljava/lang/Object;JLjava/lang/Object;)V
    invoke-static {v14, v10, v11, v1}, Lkotlinx/coroutines/flow/SharedFlowKt;->access$setBufferAt([Ljava/lang/Object;JLjava/lang/Object;)V

    .line 570
    iget-object v1, v9, Lkotlinx/coroutines/flow/SharedFlowImpl$Emitter;->value:Ljava/lang/Object;

    # invokes: Lkotlinx/coroutines/flow/SharedFlowKt;->setBufferAt([Ljava/lang/Object;JLjava/lang/Object;)V
    invoke-static {v14, v6, v7, v1}, Lkotlinx/coroutines/flow/SharedFlowKt;->access$setBufferAt([Ljava/lang/Object;JLjava/lang/Object;)V

    add-long v3, v6, p1

    if-ge v2, v5, :cond_a5

    move v15, v2

    move-wide v6, v3

    goto :goto_aa

    :cond_a5
    move-wide v10, v3

    :goto_a6
    move-object v9, v8

    goto :goto_be

    :cond_a8
    move-wide/from16 v19, v3

    :goto_aa
    add-long v10, v10, p1

    move-wide/from16 v1, v17

    move-wide/from16 v3, v19

    goto :goto_79

    :cond_b1
    move-wide/from16 v17, v1

    move-wide/from16 v19, v3

    move-wide v10, v6

    goto :goto_a6

    :cond_b7
    move-wide/from16 v17, v1

    move-wide/from16 v19, v3

    move-wide/from16 p1, v6

    goto :goto_a6

    :goto_be
    sub-long v1, v10, v17

    long-to-int v1, v1

    .line 583
    invoke-virtual {v0}, Lkotlinx/coroutines/flow/internal/AbstractSharedFlow;->getNCollectors()I

    move-result v2

    if-nez v2, :cond_c9

    move-wide v3, v10

    goto :goto_cb

    :cond_c9
    move-wide/from16 v3, v19

    .line 585
    :goto_cb
    iget-wide v5, v0, Lkotlinx/coroutines/flow/SharedFlowImpl;->replayIndex:J

    iget v2, v0, Lkotlinx/coroutines/flow/SharedFlowImpl;->replay:I

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    int-to-long v1, v1

    sub-long v1, v10, v1

    invoke-static {v5, v6, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    .line 587
    iget v5, v0, Lkotlinx/coroutines/flow/SharedFlowImpl;->bufferCapacity:I

    if-nez v5, :cond_f7

    cmp-long v5, v1, v12

    if-gez v5, :cond_f7

    iget-object v5, v0, Lkotlinx/coroutines/flow/SharedFlowImpl;->buffer:[Ljava/lang/Object;

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    # invokes: Lkotlinx/coroutines/flow/SharedFlowKt;->getBufferAt([Ljava/lang/Object;J)Ljava/lang/Object;
    invoke-static {v5, v1, v2}, Lkotlinx/coroutines/flow/SharedFlowKt;->access$getBufferAt([Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    sget-object v6, Lkotlinx/coroutines/flow/SharedFlowKt;->NO_VALUE:Lkotlinx/coroutines/internal/Symbol;

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f7

    add-long v10, v10, p1

    add-long v1, v1, p1

    :cond_f7
    move-wide v5, v10

    move-wide v7, v12

    .line 592
    invoke-direct/range {v0 .. v8}, Lkotlinx/coroutines/flow/SharedFlowImpl;->updateBufferLocked(JJJJ)V

    .line 594
    invoke-direct {v0}, Lkotlinx/coroutines/flow/SharedFlowImpl;->cleanupTailLocked()V

    .line 596
    array-length v1, v9

    if-nez v1, :cond_106

    const/4 v1, 0x1

    move/from16 v16, v1

    goto :goto_108

    :cond_106
    const/16 v16, 0x0

    :goto_108
    if-nez v16, :cond_10f

    invoke-direct {v0, v9}, Lkotlinx/coroutines/flow/SharedFlowImpl;->findSlotsToResumeLocked([Lkotlin/coroutines/Continuation;)[Lkotlin/coroutines/Continuation;

    move-result-object v0

    return-object v0

    :cond_10f
    return-object v9
.end method

.method public final updateNewCollectorIndexLocked$kotlinx_coroutines_core()J
    .registers 5

    .line 525
    iget-wide v0, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->replayIndex:J

    .line 526
    iget-wide v2, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->minCollectorIndex:J

    cmp-long v2, v0, v2

    if-gez v2, :cond_a

    iput-wide v0, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->minCollectorIndex:J

    :cond_a
    return-wide v0
.end method
