.class public final Lkotlinx/coroutines/scheduling/CoroutineSchedulerKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final isSchedulerWorker(Ljava/lang/Thread;)Z
    .registers 1

    .line 1024
    instance-of p0, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;

    return p0
.end method

.method public static final mayNotBlock(Ljava/lang/Thread;)Z
    .registers 2

    .line 1031
    instance-of v0, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;

    if-eqz v0, :cond_e

    .line 1032
    check-cast p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;

    iget-object p0, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->state:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    sget-object v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;->CPU_ACQUIRED:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    if-ne p0, v0, :cond_e

    const/4 p0, 0x1

    return p0

    :cond_e
    const/4 p0, 0x0

    return p0
.end method
