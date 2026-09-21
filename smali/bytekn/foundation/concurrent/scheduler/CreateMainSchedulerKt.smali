.class public abstract Lbytekn/foundation/concurrent/scheduler/CreateMainSchedulerKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final createMainScheduler()Lbytekn/foundation/concurrent/scheduler/Scheduler;
    .registers 1

    .line 7
    new-instance v0, Lbytekn/foundation/concurrent/scheduler/MainScheduler;

    invoke-direct {v0}, Lbytekn/foundation/concurrent/scheduler/MainScheduler;-><init>()V

    return-object v0
.end method
