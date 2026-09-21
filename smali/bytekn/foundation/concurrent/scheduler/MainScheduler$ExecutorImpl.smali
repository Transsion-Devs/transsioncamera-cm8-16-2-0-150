.class final Lbytekn/foundation/concurrent/scheduler/MainScheduler$ExecutorImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbytekn/foundation/concurrent/scheduler/Scheduler$Executor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbytekn/foundation/concurrent/scheduler/MainScheduler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ExecutorImpl"
.end annotation


# instance fields
.field private volatile handler:Landroid/os/Handler;

.field private final monitor:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lbytekn/foundation/concurrent/scheduler/MainScheduler$ExecutorImpl;->handler:Landroid/os/Handler;

    .line 20
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lbytekn/foundation/concurrent/scheduler/MainScheduler$ExecutorImpl;->monitor:Ljava/lang/Object;

    return-void
.end method

.method public static final synthetic access$getHandler$p(Lbytekn/foundation/concurrent/scheduler/MainScheduler$ExecutorImpl;)Landroid/os/Handler;
    .registers 1

    .line 16
    iget-object p0, p0, Lbytekn/foundation/concurrent/scheduler/MainScheduler$ExecutorImpl;->handler:Landroid/os/Handler;

    return-object p0
.end method

.method public static final synthetic access$getMonitor$p(Lbytekn/foundation/concurrent/scheduler/MainScheduler$ExecutorImpl;)Ljava/lang/Object;
    .registers 1

    .line 16
    iget-object p0, p0, Lbytekn/foundation/concurrent/scheduler/MainScheduler$ExecutorImpl;->monitor:Ljava/lang/Object;

    return-object p0
.end method


# virtual methods
.method public submit(JLkotlin/jvm/functions/Function0;)V
    .registers 6

    const-string v0, "task"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    # getter for: Lbytekn/foundation/concurrent/scheduler/MainScheduler$ExecutorImpl;->handler:Landroid/os/Handler;
    invoke-static {p0}, Lbytekn/foundation/concurrent/scheduler/MainScheduler$ExecutorImpl;->access$getHandler$p(Lbytekn/foundation/concurrent/scheduler/MainScheduler$ExecutorImpl;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_25

    .line 36
    # getter for: Lbytekn/foundation/concurrent/scheduler/MainScheduler$ExecutorImpl;->monitor:Ljava/lang/Object;
    invoke-static {p0}, Lbytekn/foundation/concurrent/scheduler/MainScheduler$ExecutorImpl;->access$getMonitor$p(Lbytekn/foundation/concurrent/scheduler/MainScheduler$ExecutorImpl;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 37
    :try_start_10
    # getter for: Lbytekn/foundation/concurrent/scheduler/MainScheduler$ExecutorImpl;->handler:Landroid/os/Handler;
    invoke-static {p0}, Lbytekn/foundation/concurrent/scheduler/MainScheduler$ExecutorImpl;->access$getHandler$p(Lbytekn/foundation/concurrent/scheduler/MainScheduler$ExecutorImpl;)Landroid/os/Handler;

    move-result-object p0

    if-eqz p0, :cond_21

    .line 24
    new-instance v1, Lbytekn/foundation/concurrent/scheduler/MainScheduler$sam$i$java_lang_Runnable$0;

    invoke-direct {v1, p3}, Lbytekn/foundation/concurrent/scheduler/MainScheduler$sam$i$java_lang_Runnable$0;-><init>(Lkotlin/jvm/functions/Function0;)V

    invoke-virtual {p0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_1e
    .catchall {:try_start_10 .. :try_end_1e} :catchall_1f

    goto :goto_21

    :catchall_1f
    move-exception p0

    goto :goto_23

    :cond_21
    :goto_21
    monitor-exit v0

    return-void

    :goto_23
    monitor-exit v0

    throw p0

    :cond_25
    return-void
.end method
