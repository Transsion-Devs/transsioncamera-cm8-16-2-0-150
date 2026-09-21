.class final Lbytekn/foundation/concurrent/scheduler/ExecutorServiceScheduler$ExecutorImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbytekn/foundation/concurrent/scheduler/Scheduler$Executor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbytekn/foundation/concurrent/scheduler/ExecutorServiceScheduler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ExecutorImpl"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbytekn/foundation/concurrent/scheduler/ExecutorServiceScheduler$ExecutorImpl$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lbytekn/foundation/concurrent/scheduler/ExecutorServiceScheduler$ExecutorImpl$Companion;


# instance fields
.field private volatile executor:Ljava/util/concurrent/ScheduledExecutorService;

.field private final executorServiceStrategy:Lbytekn/foundation/concurrent/scheduler/ExecutorServiceStrategy;

.field private final monitor:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lbytekn/foundation/concurrent/scheduler/ExecutorServiceScheduler$ExecutorImpl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lbytekn/foundation/concurrent/scheduler/ExecutorServiceScheduler$ExecutorImpl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lbytekn/foundation/concurrent/scheduler/ExecutorServiceScheduler$ExecutorImpl;->Companion:Lbytekn/foundation/concurrent/scheduler/ExecutorServiceScheduler$ExecutorImpl$Companion;

    return-void
.end method

.method public constructor <init>(Lbytekn/foundation/concurrent/scheduler/ExecutorServiceStrategy;)V
    .registers 3

    const-string v0, "executorServiceStrategy"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbytekn/foundation/concurrent/scheduler/ExecutorServiceScheduler$ExecutorImpl;->executorServiceStrategy:Lbytekn/foundation/concurrent/scheduler/ExecutorServiceStrategy;

    .line 23
    invoke-interface {p1}, Lbytekn/foundation/concurrent/scheduler/ExecutorServiceStrategy;->get()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object p1

    iput-object p1, p0, Lbytekn/foundation/concurrent/scheduler/ExecutorServiceScheduler$ExecutorImpl;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    .line 25
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbytekn/foundation/concurrent/scheduler/ExecutorServiceScheduler$ExecutorImpl;->monitor:Ljava/lang/Object;

    return-void
.end method

.method public static final synthetic access$getExecutor$p(Lbytekn/foundation/concurrent/scheduler/ExecutorServiceScheduler$ExecutorImpl;)Ljava/util/concurrent/ScheduledExecutorService;
    .registers 1

    .line 18
    iget-object p0, p0, Lbytekn/foundation/concurrent/scheduler/ExecutorServiceScheduler$ExecutorImpl;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    return-object p0
.end method

.method public static final synthetic access$getMonitor$p(Lbytekn/foundation/concurrent/scheduler/ExecutorServiceScheduler$ExecutorImpl;)Ljava/lang/Object;
    .registers 1

    .line 18
    iget-object p0, p0, Lbytekn/foundation/concurrent/scheduler/ExecutorServiceScheduler$ExecutorImpl;->monitor:Ljava/lang/Object;

    return-object p0
.end method


# virtual methods
.method public submit(JLkotlin/jvm/functions/Function0;)V
    .registers 6

    const-string v0, "task"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    # getter for: Lbytekn/foundation/concurrent/scheduler/ExecutorServiceScheduler$ExecutorImpl;->executor:Ljava/util/concurrent/ScheduledExecutorService;
    invoke-static {p0}, Lbytekn/foundation/concurrent/scheduler/ExecutorServiceScheduler$ExecutorImpl;->access$getExecutor$p(Lbytekn/foundation/concurrent/scheduler/ExecutorServiceScheduler$ExecutorImpl;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    if-eqz v0, :cond_28

    .line 40
    # getter for: Lbytekn/foundation/concurrent/scheduler/ExecutorServiceScheduler$ExecutorImpl;->monitor:Ljava/lang/Object;
    invoke-static {p0}, Lbytekn/foundation/concurrent/scheduler/ExecutorServiceScheduler$ExecutorImpl;->access$getMonitor$p(Lbytekn/foundation/concurrent/scheduler/ExecutorServiceScheduler$ExecutorImpl;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 41
    :try_start_10
    # getter for: Lbytekn/foundation/concurrent/scheduler/ExecutorServiceScheduler$ExecutorImpl;->executor:Ljava/util/concurrent/ScheduledExecutorService;
    invoke-static {p0}, Lbytekn/foundation/concurrent/scheduler/ExecutorServiceScheduler$ExecutorImpl;->access$getExecutor$p(Lbytekn/foundation/concurrent/scheduler/ExecutorServiceScheduler$ExecutorImpl;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object p0

    if-eqz p0, :cond_24

    .line 30
    sget-object v1, Lbytekn/foundation/concurrent/scheduler/ExecutorServiceScheduler$ExecutorImpl;->Companion:Lbytekn/foundation/concurrent/scheduler/ExecutorServiceScheduler$ExecutorImpl$Companion;

    # invokes: Lbytekn/foundation/concurrent/scheduler/ExecutorServiceScheduler$ExecutorImpl$Companion;->wrapSchedulerTaskSafe(Lkotlin/jvm/functions/Function0;)Ljava/lang/Runnable;
    invoke-static {v1, p3}, Lbytekn/foundation/concurrent/scheduler/ExecutorServiceScheduler$ExecutorImpl$Companion;->access$wrapSchedulerTaskSafe(Lbytekn/foundation/concurrent/scheduler/ExecutorServiceScheduler$ExecutorImpl$Companion;Lkotlin/jvm/functions/Function0;)Ljava/lang/Runnable;

    move-result-object p3

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p0, p3, p1, p2, v1}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    :try_end_21
    .catchall {:try_start_10 .. :try_end_21} :catchall_22

    goto :goto_24

    :catchall_22
    move-exception p0

    goto :goto_26

    :cond_24
    :goto_24
    monitor-exit v0

    return-void

    :goto_26
    monitor-exit v0

    throw p0

    :cond_28
    return-void
.end method
