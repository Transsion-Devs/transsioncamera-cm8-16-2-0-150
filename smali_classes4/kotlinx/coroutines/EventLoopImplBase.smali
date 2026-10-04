.class public abstract Lkotlinx/coroutines/EventLoopImplBase;
.super Lkotlinx/coroutines/EventLoopImplPlatform;
.source "SourceFile"

# interfaces
.implements Lkotlinx/coroutines/Delay;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlinx/coroutines/EventLoopImplBase$DelayedResumeTask;,
        Lkotlinx/coroutines/EventLoopImplBase$DelayedRunnableTask;,
        Lkotlinx/coroutines/EventLoopImplBase$DelayedTask;,
        Lkotlinx/coroutines/EventLoopImplBase$DelayedTaskQueue;
    }
.end annotation


# static fields
.field private static final synthetic _delayed$volatile$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

.field private static final synthetic _isCompleted$volatile$FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

.field private static final synthetic _queue$volatile$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;


# instance fields
.field private volatile synthetic _delayed$volatile:Ljava/lang/Object;

.field private volatile synthetic _isCompleted$volatile:I

.field private volatile synthetic _queue$volatile:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-string v0, "_queue$volatile"

    const-class v1, Lkotlinx/coroutines/EventLoopImplBase;

    const-class v2, Ljava/lang/Object;

    invoke-static {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/EventLoopImplBase;->_queue$volatile$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const-string v0, "_delayed$volatile"

    invoke-static {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/EventLoopImplBase;->_delayed$volatile$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const-string v0, "_isCompleted$volatile"

    invoke-static {v1, v0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/EventLoopImplBase;->_isCompleted$volatile$FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 177
    invoke-direct {p0}, Lkotlinx/coroutines/EventLoopImplPlatform;-><init>()V

    const/4 v0, 0x0

    .line 184
    iput v0, p0, Lkotlinx/coroutines/EventLoopImplBase;->_isCompleted$volatile:I

    return-void
.end method

.method public static final synthetic access$isCompleted(Lkotlinx/coroutines/EventLoopImplBase;)Z
    .registers 1

    .line 177
    invoke-direct {p0}, Lkotlinx/coroutines/EventLoopImplBase;->isCompleted()Z

    move-result p0

    return p0
.end method

.method private final closeQueue()V
    .registers 6

    .line 339
    invoke-static {}, Lkotlinx/coroutines/EventLoopImplBase;->get_queue$volatile$FU()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    :cond_4
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1a

    .line 343
    invoke-static {}, Lkotlinx/coroutines/EventLoopImplBase;->get_queue$volatile$FU()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v1

    const/4 v2, 0x0

    # getter for: Lkotlinx/coroutines/EventLoop_commonKt;->CLOSED_EMPTY:Lkotlinx/coroutines/internal/Symbol;
    invoke-static {}, Lkotlinx/coroutines/EventLoop_commonKt;->access$getCLOSED_EMPTY$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v3

    invoke-static {v1, p0, v2, v3}, Lkotlin/SafePublicationLazyImpl$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_48

    .line 344
    :cond_1a
    instance-of v2, v1, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;

    if-eqz v2, :cond_24

    .line 345
    check-cast v1, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;

    invoke-virtual {v1}, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->close()Z

    return-void

    .line 349
    :cond_24
    # getter for: Lkotlinx/coroutines/EventLoop_commonKt;->CLOSED_EMPTY:Lkotlinx/coroutines/internal/Symbol;
    invoke-static {}, Lkotlinx/coroutines/EventLoop_commonKt;->access$getCLOSED_EMPTY$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v2

    if-ne v1, v2, :cond_2b

    goto :goto_48

    .line 352
    :cond_2b
    new-instance v2, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;

    const/16 v3, 0x8

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;-><init>(IZ)V

    .line 353
    const-string v3, "null cannot be cast to non-null type java.lang.Runnable{ kotlinx.coroutines.RunnableKt.Runnable }"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v3, v1

    check-cast v3, Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->addLast(Ljava/lang/Object;)I

    .line 354
    invoke-static {}, Lkotlinx/coroutines/EventLoopImplBase;->get_queue$volatile$FU()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v3

    invoke-static {v3, p0, v1, v2}, Lkotlin/SafePublicationLazyImpl$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    :goto_48
    return-void
.end method

.method private final dequeue()Ljava/lang/Runnable;
    .registers 6

    .line 321
    invoke-static {}, Lkotlinx/coroutines/EventLoopImplBase;->get_queue$volatile$FU()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    :cond_4
    :goto_4
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_c

    return-object v2

    .line 326
    :cond_c
    instance-of v3, v1, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;

    if-eqz v3, :cond_2f

    .line 327
    const-string v2, "null cannot be cast to non-null type kotlinx.coroutines.internal.LockFreeTaskQueueCore<java.lang.Runnable{ kotlinx.coroutines.RunnableKt.Runnable }>{ kotlinx.coroutines.EventLoop_commonKt.Queue<java.lang.Runnable{ kotlinx.coroutines.RunnableKt.Runnable }> }"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v2, v1

    check-cast v2, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;

    invoke-virtual {v2}, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->removeFirstOrNull()Ljava/lang/Object;

    move-result-object v3

    .line 328
    sget-object v4, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->REMOVE_FROZEN:Lkotlinx/coroutines/internal/Symbol;

    if-eq v3, v4, :cond_23

    check-cast v3, Ljava/lang/Runnable;

    return-object v3

    :cond_23
    invoke-static {}, Lkotlinx/coroutines/EventLoopImplBase;->get_queue$volatile$FU()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v3

    .line 329
    invoke-virtual {v2}, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->next()Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;

    move-result-object v2

    invoke-static {v3, p0, v1, v2}, Lkotlin/SafePublicationLazyImpl$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_4

    .line 332
    :cond_2f
    # getter for: Lkotlinx/coroutines/EventLoop_commonKt;->CLOSED_EMPTY:Lkotlinx/coroutines/internal/Symbol;
    invoke-static {}, Lkotlinx/coroutines/EventLoop_commonKt;->access$getCLOSED_EMPTY$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v3

    if-ne v1, v3, :cond_36

    return-object v2

    .line 333
    :cond_36
    invoke-static {}, Lkotlinx/coroutines/EventLoopImplBase;->get_queue$volatile$FU()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v3

    invoke-static {v3, p0, v1, v2}, Lkotlin/SafePublicationLazyImpl$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string p0, "null cannot be cast to non-null type java.lang.Runnable{ kotlinx.coroutines.RunnableKt.Runnable }"

    invoke-static {v1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Runnable;

    return-object v1
.end method

.method private final enqueueImpl(Ljava/lang/Runnable;)Z
    .registers 8

    .line 294
    invoke-static {}, Lkotlinx/coroutines/EventLoopImplBase;->get_queue$volatile$FU()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    :cond_4
    :goto_4
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 297
    invoke-direct {p0}, Lkotlinx/coroutines/EventLoopImplBase;->isCompleted()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_10

    return v3

    :cond_10
    const/4 v2, 0x1

    if-nez v1, :cond_1f

    .line 299
    invoke-static {}, Lkotlinx/coroutines/EventLoopImplBase;->get_queue$volatile$FU()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v1

    const/4 v3, 0x0

    invoke-static {v1, p0, v3, p1}, Lkotlin/SafePublicationLazyImpl$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    return v2

    .line 300
    :cond_1f
    instance-of v4, v1, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;

    if-eqz v4, :cond_45

    .line 301
    const-string v4, "null cannot be cast to non-null type kotlinx.coroutines.internal.LockFreeTaskQueueCore<java.lang.Runnable{ kotlinx.coroutines.RunnableKt.Runnable }>{ kotlinx.coroutines.EventLoop_commonKt.Queue<java.lang.Runnable{ kotlinx.coroutines.RunnableKt.Runnable }> }"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v4, v1

    check-cast v4, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;

    invoke-virtual {v4, p1}, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->addLast(Ljava/lang/Object;)I

    move-result v5

    if-eqz v5, :cond_44

    if-eq v5, v2, :cond_38

    const/4 v1, 0x2

    if-eq v5, v1, :cond_37

    goto :goto_4

    :cond_37
    return v3

    .line 303
    :cond_38
    invoke-static {}, Lkotlinx/coroutines/EventLoopImplBase;->get_queue$volatile$FU()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v2

    .line 304
    invoke-virtual {v4}, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->next()Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;

    move-result-object v3

    invoke-static {v2, p0, v1, v3}, Lkotlin/SafePublicationLazyImpl$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_4

    :cond_44
    return v2

    .line 308
    :cond_45
    # getter for: Lkotlinx/coroutines/EventLoop_commonKt;->CLOSED_EMPTY:Lkotlinx/coroutines/internal/Symbol;
    invoke-static {}, Lkotlinx/coroutines/EventLoop_commonKt;->access$getCLOSED_EMPTY$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v4

    if-ne v1, v4, :cond_4c

    return v3

    .line 311
    :cond_4c
    new-instance v3, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;

    const/16 v4, 0x8

    invoke-direct {v3, v4, v2}, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;-><init>(IZ)V

    .line 312
    const-string v4, "null cannot be cast to non-null type java.lang.Runnable{ kotlinx.coroutines.RunnableKt.Runnable }"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v4, v1

    check-cast v4, Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->addLast(Ljava/lang/Object;)I

    .line 313
    invoke-virtual {v3, p1}, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->addLast(Ljava/lang/Object;)I

    .line 314
    invoke-static {}, Lkotlinx/coroutines/EventLoopImplBase;->get_queue$volatile$FU()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v4

    invoke-static {v4, p0, v1, v3}, Lkotlin/SafePublicationLazyImpl$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    return v2
.end method

.method private final synthetic get_delayed$volatile()Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lkotlinx/coroutines/EventLoopImplBase;->_delayed$volatile:Ljava/lang/Object;

    return-object p0
.end method

.method private static final synthetic get_delayed$volatile$FU()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .registers 1

    sget-object v0, Lkotlinx/coroutines/EventLoopImplBase;->_delayed$volatile$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-object v0
.end method

.method private final synthetic get_isCompleted$volatile()I
    .registers 1

    iget p0, p0, Lkotlinx/coroutines/EventLoopImplBase;->_isCompleted$volatile:I

    return p0
.end method

.method private static final synthetic get_isCompleted$volatile$FU()Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;
    .registers 1

    sget-object v0, Lkotlinx/coroutines/EventLoopImplBase;->_isCompleted$volatile$FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    return-object v0
.end method

.method private final synthetic get_queue$volatile()Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lkotlinx/coroutines/EventLoopImplBase;->_queue$volatile:Ljava/lang/Object;

    return-object p0
.end method

.method private static final synthetic get_queue$volatile$FU()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .registers 1

    sget-object v0, Lkotlinx/coroutines/EventLoopImplBase;->_queue$volatile$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-object v0
.end method

.method private final isCompleted()Z
    .registers 2

    invoke-static {}, Lkotlinx/coroutines/EventLoopImplBase;->get_isCompleted$volatile$FU()Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    .line 186
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    move-result p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
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

.method private final rescheduleAllDelayed()V
    .registers 4

    .line 390
    # getter for: Lkotlinx/coroutines/AbstractTimeSourceKt;->timeSource:Lkotlinx/coroutines/AbstractTimeSource;
    invoke-static {}, Lkotlinx/coroutines/AbstractTimeSourceKt;->access$getTimeSource$p()Lkotlinx/coroutines/AbstractTimeSource;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lkotlinx/coroutines/AbstractTimeSource;->nanoTime()J

    move-result-wide v0

    goto :goto_f

    :cond_b
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 399
    :goto_f
    invoke-static {}, Lkotlinx/coroutines/EventLoopImplBase;->get_delayed$volatile$FU()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlinx/coroutines/EventLoopImplBase$DelayedTaskQueue;

    if-eqz v2, :cond_28

    invoke-virtual {v2}, Lkotlinx/coroutines/internal/ThreadSafeHeap;->removeFirstOrNull()Lkotlinx/coroutines/internal/ThreadSafeHeapNode;

    move-result-object v2

    check-cast v2, Lkotlinx/coroutines/EventLoopImplBase$DelayedTask;

    if-nez v2, :cond_24

    goto :goto_28

    .line 400
    :cond_24
    invoke-virtual {p0, v0, v1, v2}, Lkotlinx/coroutines/EventLoopImplPlatform;->reschedule(JLkotlinx/coroutines/EventLoopImplBase$DelayedTask;)V

    goto :goto_f

    :cond_28
    :goto_28
    return-void
.end method

.method private final scheduleImpl(JLkotlinx/coroutines/EventLoopImplBase$DelayedTask;)I
    .registers 7

    .line 374
    invoke-direct {p0}, Lkotlinx/coroutines/EventLoopImplBase;->isCompleted()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p0, 0x1

    return p0

    .line 375
    :cond_8
    invoke-static {}, Lkotlinx/coroutines/EventLoopImplBase;->get_delayed$volatile$FU()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/EventLoopImplBase$DelayedTaskQueue;

    if-nez v0, :cond_2e

    invoke-static {}, Lkotlinx/coroutines/EventLoopImplBase;->get_delayed$volatile$FU()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    .line 376
    new-instance v1, Lkotlinx/coroutines/EventLoopImplBase$DelayedTaskQueue;

    invoke-direct {v1, p1, p2}, Lkotlinx/coroutines/EventLoopImplBase$DelayedTaskQueue;-><init>(J)V

    const/4 v2, 0x0

    invoke-static {v0, p0, v2, v1}, Lkotlin/SafePublicationLazyImpl$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    invoke-static {}, Lkotlinx/coroutines/EventLoopImplBase;->get_delayed$volatile$FU()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    .line 377
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Lkotlinx/coroutines/EventLoopImplBase$DelayedTaskQueue;

    .line 379
    :cond_2e
    invoke-virtual {p3, p1, p2, v0, p0}, Lkotlinx/coroutines/EventLoopImplBase$DelayedTask;->scheduleTask(JLkotlinx/coroutines/EventLoopImplBase$DelayedTaskQueue;Lkotlinx/coroutines/EventLoopImplBase;)I

    move-result p0

    return p0
.end method

.method private final setCompleted(Z)V
    .registers 3

    invoke-static {}, Lkotlinx/coroutines/EventLoopImplBase;->get_isCompleted$volatile$FU()Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    .line 187
    invoke-virtual {v0, p0, p1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->set(Ljava/lang/Object;I)V

    return-void
.end method

.method private final synthetic set_delayed$volatile(Ljava/lang/Object;)V
    .registers 2

    iput-object p1, p0, Lkotlinx/coroutines/EventLoopImplBase;->_delayed$volatile:Ljava/lang/Object;

    return-void
.end method

.method private final synthetic set_isCompleted$volatile(I)V
    .registers 2

    iput p1, p0, Lkotlinx/coroutines/EventLoopImplBase;->_isCompleted$volatile:I

    return-void
.end method

.method private final synthetic set_queue$volatile(Ljava/lang/Object;)V
    .registers 2

    iput-object p1, p0, Lkotlinx/coroutines/EventLoopImplBase;->_queue$volatile:Ljava/lang/Object;

    return-void
.end method

.method private final shouldUnpark(Lkotlinx/coroutines/EventLoopImplBase$DelayedTask;)Z
    .registers 3

    .line 371
    invoke-static {}, Lkotlinx/coroutines/EventLoopImplBase;->get_delayed$volatile$FU()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lkotlinx/coroutines/EventLoopImplBase$DelayedTaskQueue;

    if-eqz p0, :cond_13

    invoke-virtual {p0}, Lkotlinx/coroutines/internal/ThreadSafeHeap;->peek()Lkotlinx/coroutines/internal/ThreadSafeHeapNode;

    move-result-object p0

    check-cast p0, Lkotlinx/coroutines/EventLoopImplBase$DelayedTask;

    goto :goto_14

    :cond_13
    const/4 p0, 0x0

    :goto_14
    if-ne p0, p1, :cond_18

    const/4 p0, 0x1

    return p0

    :cond_18
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public delay(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 177
    invoke-static {p0, p1, p2, p3}, Lkotlinx/coroutines/Delay$DefaultImpls;->delay(Lkotlinx/coroutines/Delay;JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final dispatch(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Runnable;)V
    .registers 3

    .line 283
    invoke-virtual {p0, p2}, Lkotlinx/coroutines/EventLoopImplBase;->enqueue(Ljava/lang/Runnable;)V

    return-void
.end method

.method public enqueue(Ljava/lang/Runnable;)V
    .registers 3

    .line 286
    invoke-direct {p0, p1}, Lkotlinx/coroutines/EventLoopImplBase;->enqueueImpl(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 288
    invoke-virtual {p0}, Lkotlinx/coroutines/EventLoopImplPlatform;->unpark()V

    return-void

    .line 290
    :cond_a
    sget-object p0, Lkotlinx/coroutines/DefaultExecutor;->INSTANCE:Lkotlinx/coroutines/DefaultExecutor;

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/DefaultExecutor;->enqueue(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected getNextTime()J
    .registers 7

    .line 202
    invoke-super {p0}, Lkotlinx/coroutines/EventLoop;->getNextTime()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_b

    return-wide v2

    :cond_b
    invoke-static {}, Lkotlinx/coroutines/EventLoopImplBase;->get_queue$volatile$FU()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    .line 203
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-wide v4, 0x7fffffffffffffffL

    if-eqz v0, :cond_2f

    .line 206
    instance-of v1, v0, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;

    if-eqz v1, :cond_27

    check-cast v0, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;

    invoke-virtual {v0}, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2f

    return-wide v2

    .line 207
    :cond_27
    # getter for: Lkotlinx/coroutines/EventLoop_commonKt;->CLOSED_EMPTY:Lkotlinx/coroutines/internal/Symbol;
    invoke-static {}, Lkotlinx/coroutines/EventLoop_commonKt;->access$getCLOSED_EMPTY$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object p0

    if-ne v0, p0, :cond_2e

    return-wide v4

    :cond_2e
    return-wide v2

    .line 210
    :cond_2f
    invoke-static {}, Lkotlinx/coroutines/EventLoopImplBase;->get_delayed$volatile$FU()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lkotlinx/coroutines/EventLoopImplBase$DelayedTaskQueue;

    if-eqz p0, :cond_5b

    invoke-virtual {p0}, Lkotlinx/coroutines/internal/ThreadSafeHeap;->peek()Lkotlinx/coroutines/internal/ThreadSafeHeapNode;

    move-result-object p0

    check-cast p0, Lkotlinx/coroutines/EventLoopImplBase$DelayedTask;

    if-nez p0, :cond_44

    goto :goto_5b

    .line 211
    :cond_44
    iget-wide v0, p0, Lkotlinx/coroutines/EventLoopImplBase$DelayedTask;->nanoTime:J

    # getter for: Lkotlinx/coroutines/AbstractTimeSourceKt;->timeSource:Lkotlinx/coroutines/AbstractTimeSource;
    invoke-static {}, Lkotlinx/coroutines/AbstractTimeSourceKt;->access$getTimeSource$p()Lkotlinx/coroutines/AbstractTimeSource;

    move-result-object p0

    if-eqz p0, :cond_51

    invoke-virtual {p0}, Lkotlinx/coroutines/AbstractTimeSource;->nanoTime()J

    move-result-wide v4

    goto :goto_55

    :cond_51
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    :goto_55
    sub-long/2addr v0, v4

    invoke-static {v0, v1, v2, v3}, Lkotlin/ranges/RangesKt;->coerceAtLeast(JJ)J

    move-result-wide v0

    return-wide v0

    :cond_5b
    :goto_5b
    return-wide v4
.end method

.method public invokeOnTimeout(JLjava/lang/Runnable;Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/DisposableHandle;
    .registers 5

    .line 177
    invoke-static {p0, p1, p2, p3, p4}, Lkotlinx/coroutines/Delay$DefaultImpls;->invokeOnTimeout(Lkotlinx/coroutines/Delay;JLjava/lang/Runnable;Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/DisposableHandle;

    move-result-object p0

    return-object p0
.end method

.method protected isEmpty()Z
    .registers 4

    .line 190
    invoke-virtual {p0}, Lkotlinx/coroutines/EventLoop;->isUnconfinedQueueEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    :cond_8
    invoke-static {}, Lkotlinx/coroutines/EventLoopImplBase;->get_delayed$volatile$FU()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    .line 191
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/EventLoopImplBase$DelayedTaskQueue;

    if-eqz v0, :cond_1b

    .line 192
    invoke-virtual {v0}, Lkotlinx/coroutines/internal/ThreadSafeHeap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1b

    return v1

    :cond_1b
    invoke-static {}, Lkotlinx/coroutines/EventLoopImplBase;->get_queue$volatile$FU()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    .line 193
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    const/4 v0, 0x1

    if-nez p0, :cond_27

    return v0

    .line 195
    :cond_27
    instance-of v2, p0, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;

    if-eqz v2, :cond_32

    check-cast p0, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;

    invoke-virtual {p0}, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->isEmpty()Z

    move-result p0

    return p0

    .line 196
    :cond_32
    # getter for: Lkotlinx/coroutines/EventLoop_commonKt;->CLOSED_EMPTY:Lkotlinx/coroutines/internal/Symbol;
    invoke-static {}, Lkotlinx/coroutines/EventLoop_commonKt;->access$getCLOSED_EMPTY$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v2

    if-ne p0, v2, :cond_39

    return v0

    :cond_39
    return v1
.end method

.method public processNextEvent()J
    .registers 10

    .line 257
    invoke-virtual {p0}, Lkotlinx/coroutines/EventLoop;->processUnconfinedEvent()Z

    move-result v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_9

    return-wide v1

    :cond_9
    invoke-static {}, Lkotlinx/coroutines/EventLoopImplBase;->get_delayed$volatile$FU()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    .line 259
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/EventLoopImplBase$DelayedTaskQueue;

    if-eqz v0, :cond_53

    .line 260
    invoke-virtual {v0}, Lkotlinx/coroutines/internal/ThreadSafeHeap;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_53

    .line 261
    # getter for: Lkotlinx/coroutines/AbstractTimeSourceKt;->timeSource:Lkotlinx/coroutines/AbstractTimeSource;
    invoke-static {}, Lkotlinx/coroutines/AbstractTimeSourceKt;->access$getTimeSource$p()Lkotlinx/coroutines/AbstractTimeSource;

    move-result-object v3

    if-eqz v3, :cond_26

    invoke-virtual {v3}, Lkotlinx/coroutines/AbstractTimeSource;->nanoTime()J

    move-result-wide v3

    goto :goto_2a

    :cond_26
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    .line 16
    :cond_2a
    :goto_2a
    monitor-enter v0

    .line 52
    :try_start_2b
    invoke-virtual {v0}, Lkotlinx/coroutines/internal/ThreadSafeHeap;->firstImpl()Lkotlinx/coroutines/internal/ThreadSafeHeapNode;

    move-result-object v5
    :try_end_2f
    .catchall {:try_start_2b .. :try_end_2f} :catchall_42

    const/4 v6, 0x0

    if-nez v5, :cond_34

    monitor-exit v0

    goto :goto_4c

    .line 53
    :cond_34
    :try_start_34
    check-cast v5, Lkotlinx/coroutines/EventLoopImplBase$DelayedTask;

    .line 267
    invoke-virtual {v5, v3, v4}, Lkotlinx/coroutines/EventLoopImplBase$DelayedTask;->timeToExecute(J)Z

    move-result v7

    const/4 v8, 0x0

    if-eqz v7, :cond_44

    .line 268
    invoke-direct {p0, v5}, Lkotlinx/coroutines/EventLoopImplBase;->enqueueImpl(Ljava/lang/Runnable;)Z

    move-result v5

    goto :goto_45

    :catchall_42
    move-exception p0

    goto :goto_51

    :cond_44
    move v5, v8

    :goto_45
    if-eqz v5, :cond_4b

    .line 54
    invoke-virtual {v0, v8}, Lkotlinx/coroutines/internal/ThreadSafeHeap;->removeAtImpl(I)Lkotlinx/coroutines/internal/ThreadSafeHeapNode;

    move-result-object v6
    :try_end_4b
    .catchall {:try_start_34 .. :try_end_4b} :catchall_42

    .line 16
    :cond_4b
    monitor-exit v0

    .line 266
    :goto_4c
    check-cast v6, Lkotlinx/coroutines/EventLoopImplBase$DelayedTask;

    if-nez v6, :cond_2a

    goto :goto_53

    .line 16
    :goto_51
    monitor-exit v0

    throw p0

    .line 275
    :cond_53
    :goto_53
    invoke-direct {p0}, Lkotlinx/coroutines/EventLoopImplBase;->dequeue()Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_5d

    .line 277
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-wide v1

    .line 280
    :cond_5d
    invoke-virtual {p0}, Lkotlinx/coroutines/EventLoopImplBase;->getNextTime()J

    move-result-wide v0

    return-wide v0
.end method

.method protected final resetAll()V
    .registers 3

    invoke-static {}, Lkotlinx/coroutines/EventLoopImplBase;->get_queue$volatile$FU()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    const/4 v1, 0x0

    .line 384
    invoke-virtual {v0, p0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {}, Lkotlinx/coroutines/EventLoopImplBase;->get_delayed$volatile$FU()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    .line 385
    invoke-virtual {v0, p0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public final schedule(JLkotlinx/coroutines/EventLoopImplBase$DelayedTask;)V
    .registers 6

    .line 367
    invoke-direct {p0, p1, p2, p3}, Lkotlinx/coroutines/EventLoopImplBase;->scheduleImpl(JLkotlinx/coroutines/EventLoopImplBase$DelayedTask;)I

    move-result v0

    if-eqz v0, :cond_19

    const/4 v1, 0x1

    if-eq v0, v1, :cond_15

    const/4 p0, 0x2

    if-ne v0, p0, :cond_d

    goto :goto_22

    .line 365
    :cond_d
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 367
    const-string p1, "unexpected result"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 365
    :cond_15
    invoke-virtual {p0, p1, p2, p3}, Lkotlinx/coroutines/EventLoopImplPlatform;->reschedule(JLkotlinx/coroutines/EventLoopImplBase$DelayedTask;)V

    return-void

    .line 364
    :cond_19
    invoke-direct {p0, p3}, Lkotlinx/coroutines/EventLoopImplBase;->shouldUnpark(Lkotlinx/coroutines/EventLoopImplBase$DelayedTask;)Z

    move-result p1

    if-eqz p1, :cond_22

    invoke-virtual {p0}, Lkotlinx/coroutines/EventLoopImplPlatform;->unpark()V

    :cond_22
    :goto_22
    return-void
.end method

.method protected final scheduleInvokeOnTimeout(JLjava/lang/Runnable;)Lkotlinx/coroutines/DisposableHandle;
    .registers 7

    .line 244
    invoke-static {p1, p2}, Lkotlinx/coroutines/EventLoop_commonKt;->delayToNanos(J)J

    move-result-wide p1

    const-wide v0, 0x3fffffffffffffffL    # 1.9999999999999998

    cmp-long v0, p1, v0

    if-gez v0, :cond_26

    .line 246
    # getter for: Lkotlinx/coroutines/AbstractTimeSourceKt;->timeSource:Lkotlinx/coroutines/AbstractTimeSource;
    invoke-static {}, Lkotlinx/coroutines/AbstractTimeSourceKt;->access$getTimeSource$p()Lkotlinx/coroutines/AbstractTimeSource;

    move-result-object v0

    if-eqz v0, :cond_18

    invoke-virtual {v0}, Lkotlinx/coroutines/AbstractTimeSource;->nanoTime()J

    move-result-wide v0

    goto :goto_1c

    :cond_18
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 247
    :goto_1c
    new-instance v2, Lkotlinx/coroutines/EventLoopImplBase$DelayedRunnableTask;

    add-long/2addr p1, v0

    invoke-direct {v2, p1, p2, p3}, Lkotlinx/coroutines/EventLoopImplBase$DelayedRunnableTask;-><init>(JLjava/lang/Runnable;)V

    .line 248
    invoke-virtual {p0, v0, v1, v2}, Lkotlinx/coroutines/EventLoopImplBase;->schedule(JLkotlinx/coroutines/EventLoopImplBase$DelayedTask;)V

    return-object v2

    .line 251
    :cond_26
    sget-object p0, Lkotlinx/coroutines/NonDisposableHandle;->INSTANCE:Lkotlinx/coroutines/NonDisposableHandle;

    return-object p0
.end method

.method public scheduleResumeAfterDelay(JLkotlinx/coroutines/CancellableContinuation;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lkotlinx/coroutines/CancellableContinuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 228
    invoke-static {p1, p2}, Lkotlinx/coroutines/EventLoop_commonKt;->delayToNanos(J)J

    move-result-wide p1

    const-wide v0, 0x3fffffffffffffffL    # 1.9999999999999998

    cmp-long v0, p1, v0

    if-gez v0, :cond_28

    .line 230
    # getter for: Lkotlinx/coroutines/AbstractTimeSourceKt;->timeSource:Lkotlinx/coroutines/AbstractTimeSource;
    invoke-static {}, Lkotlinx/coroutines/AbstractTimeSourceKt;->access$getTimeSource$p()Lkotlinx/coroutines/AbstractTimeSource;

    move-result-object v0

    if-eqz v0, :cond_18

    invoke-virtual {v0}, Lkotlinx/coroutines/AbstractTimeSource;->nanoTime()J

    move-result-wide v0

    goto :goto_1c

    :cond_18
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 231
    :goto_1c
    new-instance v2, Lkotlinx/coroutines/EventLoopImplBase$DelayedResumeTask;

    add-long/2addr p1, v0

    invoke-direct {v2, p0, p1, p2, p3}, Lkotlinx/coroutines/EventLoopImplBase$DelayedResumeTask;-><init>(Lkotlinx/coroutines/EventLoopImplBase;JLkotlinx/coroutines/CancellableContinuation;)V

    .line 237
    invoke-virtual {p0, v0, v1, v2}, Lkotlinx/coroutines/EventLoopImplBase;->schedule(JLkotlinx/coroutines/EventLoopImplBase$DelayedTask;)V

    .line 238
    invoke-static {p3, v2}, Lkotlinx/coroutines/CancellableContinuationKt;->disposeOnCancellation(Lkotlinx/coroutines/CancellableContinuation;Lkotlinx/coroutines/DisposableHandle;)V

    :cond_28
    return-void
.end method

.method public shutdown()V
    .registers 5

    .line 216
    sget-object v0, Lkotlinx/coroutines/ThreadLocalEventLoop;->INSTANCE:Lkotlinx/coroutines/ThreadLocalEventLoop;

    invoke-virtual {v0}, Lkotlinx/coroutines/ThreadLocalEventLoop;->resetEventLoop$kotlinx_coroutines_core()V

    const/4 v0, 0x1

    .line 219
    invoke-direct {p0, v0}, Lkotlinx/coroutines/EventLoopImplBase;->setCompleted(Z)V

    .line 220
    invoke-direct {p0}, Lkotlinx/coroutines/EventLoopImplBase;->closeQueue()V

    .line 222
    :cond_c
    invoke-virtual {p0}, Lkotlinx/coroutines/EventLoopImplBase;->processNextEvent()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_c

    .line 224
    invoke-direct {p0}, Lkotlinx/coroutines/EventLoopImplBase;->rescheduleAllDelayed()V

    return-void
.end method
