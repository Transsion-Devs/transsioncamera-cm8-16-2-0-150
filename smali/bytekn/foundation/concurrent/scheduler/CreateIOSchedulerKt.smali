.class public abstract Lbytekn/foundation/concurrent/scheduler/CreateIOSchedulerKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final createIoScheduler()Lbytekn/foundation/concurrent/scheduler/Scheduler;
    .registers 6

    .line 9
    new-instance v0, Lbytekn/foundation/concurrent/scheduler/ExecutorServiceScheduler;

    .line 10
    new-instance v1, Lbytekn/foundation/concurrent/scheduler/CachedExecutorServiceStrategy;

    .line 11
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x1

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    .line 12
    new-instance v4, Lbytekn/foundation/concurrent/scheduler/ThreadFactoryImpl;

    const-string v5, "IO"

    invoke-direct {v4, v5}, Lbytekn/foundation/concurrent/scheduler/ThreadFactoryImpl;-><init>(Ljava/lang/String;)V

    .line 10
    invoke-direct {v1, v2, v3, v4}, Lbytekn/foundation/concurrent/scheduler/CachedExecutorServiceStrategy;-><init>(JLjava/util/concurrent/ThreadFactory;)V

    .line 9
    invoke-direct {v0, v1}, Lbytekn/foundation/concurrent/scheduler/ExecutorServiceScheduler;-><init>(Lbytekn/foundation/concurrent/scheduler/ExecutorServiceStrategy;)V

    return-object v0
.end method
