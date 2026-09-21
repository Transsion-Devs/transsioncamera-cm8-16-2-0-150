.class public Lcom/transsion/camera/utils/threads/WorkThreadPools$WorkRejectedExecutionHandler;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/RejectedExecutionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/utils/threads/WorkThreadPools;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WorkRejectedExecutionHandler"
.end annotation


# static fields
.field private static final BACKUP_POOL_SIZE:I


# instance fields
.field private sBackupExecutor:Ljava/util/concurrent/ThreadPoolExecutor;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 65
    invoke-static {}, Lcom/transsion/camera/utils/threads/WorkThreadPools;->-$$Nest$sfgetCPU_COUNT()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    sput v0, Lcom/transsion/camera/utils/threads/WorkThreadPools$WorkRejectedExecutionHandler;->BACKUP_POOL_SIZE:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public rejectedExecution(Ljava/lang/Runnable;Ljava/util/concurrent/ThreadPoolExecutor;)V
    .registers 13

    .line 71
    monitor-enter p0

    .line 72
    :try_start_1
    iget-object p2, p0, Lcom/transsion/camera/utils/threads/WorkThreadPools$WorkRejectedExecutionHandler;->sBackupExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    if-nez p2, :cond_35

    .line 73
    invoke-static {}, Lcom/transsion/camera/utils/threads/WorkThreadPools;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p2

    const-string v0, "WorkThreadPools is full and BackupExecutor create."

    invoke-static {p2, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 74
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    sget v2, Lcom/transsion/camera/utils/threads/WorkThreadPools$WorkRejectedExecutionHandler;->BACKUP_POOL_SIZE:I

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    new-instance v8, Lcom/transsion/camera/utils/threads/WorkThreadFactory;

    const-string p2, "BackupWorkThreadPools"

    invoke-direct {v8, p2}, Lcom/transsion/camera/utils/threads/WorkThreadFactory;-><init>(Ljava/lang/String;)V

    new-instance v9, Ljava/util/concurrent/ThreadPoolExecutor$CallerRunsPolicy;

    invoke-direct {v9}, Ljava/util/concurrent/ThreadPoolExecutor$CallerRunsPolicy;-><init>()V

    const-wide/16 v4, 0xa

    move v3, v2

    invoke-direct/range {v1 .. v9}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    iput-object v1, p0, Lcom/transsion/camera/utils/threads/WorkThreadPools$WorkRejectedExecutionHandler;->sBackupExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 p2, 0x1

    .line 79
    invoke-virtual {v1, p2}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    goto :goto_35

    :catchall_32
    move-exception v0

    move-object p1, v0

    goto :goto_7a

    .line 81
    :cond_35
    :goto_35
    monitor-exit p0
    :try_end_36
    .catchall {:try_start_1 .. :try_end_36} :catchall_32

    .line 82
    iget-object p2, p0, Lcom/transsion/camera/utils/threads/WorkThreadPools$WorkRejectedExecutionHandler;->sBackupExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    if-eqz p2, :cond_74

    invoke-virtual {p2}, Ljava/util/concurrent/ThreadPoolExecutor;->getQueue()Ljava/util/concurrent/BlockingQueue;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/concurrent/BlockingQueue;->remainingCapacity()I

    move-result p2

    if-nez p2, :cond_74

    iget-object p2, p0, Lcom/transsion/camera/utils/threads/WorkThreadPools$WorkRejectedExecutionHandler;->sBackupExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 83
    invoke-virtual {p2}, Ljava/util/concurrent/ThreadPoolExecutor;->getActiveCount()I

    move-result p2

    iget-object v0, p0, Lcom/transsion/camera/utils/threads/WorkThreadPools$WorkRejectedExecutionHandler;->sBackupExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->getMaximumPoolSize()I

    move-result v0

    if-ne p2, v0, :cond_74

    .line 84
    invoke-static {}, Lcom/transsion/camera/utils/threads/WorkThreadPools;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BackupExecutor is full and the task "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v1, p1

    check-cast v1, Lcom/transsion/camera/utils/threads/WorkTask;

    iget-object v1, v1, Lcom/transsion/camera/utils/threads/WorkTask;->mTaskName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " will run Caller thread."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 86
    :cond_74
    iget-object p0, p0, Lcom/transsion/camera/utils/threads/WorkThreadPools$WorkRejectedExecutionHandler;->sBackupExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void

    .line 81
    :goto_7a
    :try_start_7a
    monitor-exit p0
    :try_end_7b
    .catchall {:try_start_7a .. :try_end_7b} :catchall_32

    throw p1
.end method
