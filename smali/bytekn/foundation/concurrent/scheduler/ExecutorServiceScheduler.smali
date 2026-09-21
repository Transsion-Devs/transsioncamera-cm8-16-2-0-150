.class public final Lbytekn/foundation/concurrent/scheduler/ExecutorServiceScheduler;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbytekn/foundation/concurrent/scheduler/Scheduler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbytekn/foundation/concurrent/scheduler/ExecutorServiceScheduler$ExecutorImpl;
    }
.end annotation


# instance fields
.field private final executorServiceStrategy:Lbytekn/foundation/concurrent/scheduler/ExecutorServiceStrategy;


# direct methods
.method public constructor <init>(Lbytekn/foundation/concurrent/scheduler/ExecutorServiceStrategy;)V
    .registers 3

    const-string v0, "executorServiceStrategy"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbytekn/foundation/concurrent/scheduler/ExecutorServiceScheduler;->executorServiceStrategy:Lbytekn/foundation/concurrent/scheduler/ExecutorServiceStrategy;

    return-void
.end method


# virtual methods
.method public newExecutor()Lbytekn/foundation/concurrent/scheduler/Scheduler$Executor;
    .registers 2

    .line 12
    new-instance v0, Lbytekn/foundation/concurrent/scheduler/ExecutorServiceScheduler$ExecutorImpl;

    iget-object p0, p0, Lbytekn/foundation/concurrent/scheduler/ExecutorServiceScheduler;->executorServiceStrategy:Lbytekn/foundation/concurrent/scheduler/ExecutorServiceStrategy;

    invoke-direct {v0, p0}, Lbytekn/foundation/concurrent/scheduler/ExecutorServiceScheduler$ExecutorImpl;-><init>(Lbytekn/foundation/concurrent/scheduler/ExecutorServiceStrategy;)V

    return-object v0
.end method
