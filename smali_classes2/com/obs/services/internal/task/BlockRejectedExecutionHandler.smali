.class public Lcom/obs/services/internal/task/BlockRejectedExecutionHandler;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/RejectedExecutionHandler;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public rejectedExecution(Ljava/lang/Runnable;Ljava/util/concurrent/ThreadPoolExecutor;)V
    .registers 4

    .line 32
    :try_start_0
    invoke-virtual {p2}, Ljava/util/concurrent/ThreadPoolExecutor;->getQueue()Ljava/util/concurrent/BlockingQueue;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_7
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_7} :catch_8

    return-void

    :catch_8
    move-exception p0

    .line 34
    instance-of p2, p1, Ljava/util/concurrent/RunnableFuture;

    if-nez p2, :cond_2f

    .line 38
    new-instance p2, Lcom/obs/services/exception/ObsException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p0}, Lcom/obs/services/exception/ObsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 39
    instance-of p0, p1, Lcom/obs/services/internal/task/RestoreObjectTask;

    if-eqz p0, :cond_2e

    .line 40
    check-cast p1, Lcom/obs/services/internal/task/RestoreObjectTask;

    .line 41
    invoke-virtual {p1}, Lcom/obs/services/internal/task/AbstractObsTask;->getProgressStatus()Lcom/obs/services/internal/task/DefaultTaskProgressStatus;

    move-result-object p0

    invoke-virtual {p0}, Lcom/obs/services/internal/task/DefaultTaskProgressStatus;->failTaskIncrement()V

    .line 42
    invoke-virtual {p1}, Lcom/obs/services/internal/task/RestoreObjectTask;->getCallback()Lcom/obs/services/model/TaskCallback;

    move-result-object p0

    .line 43
    invoke-virtual {p1}, Lcom/obs/services/internal/task/RestoreObjectTask;->getTaskRequest()Lcom/obs/services/model/RestoreObjectRequest;

    move-result-object p1

    invoke-interface {p0, p2, p1}, Lcom/obs/services/model/TaskCallback;->onException(Lcom/obs/services/exception/ObsException;Ljava/lang/Object;)V

    :cond_2e
    return-void

    .line 35
    :cond_2f
    new-instance p1, Ljava/util/concurrent/RejectedExecutionException;

    invoke-direct {p1, p0}, Ljava/util/concurrent/RejectedExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method
