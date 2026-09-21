.class public Lcom/transsion/camera/feature/mode/vlog/utils/ThreadPool;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/mode/vlog/utils/ThreadPool$WorkRejectedExecutionHandler;
    }
.end annotation


# static fields
.field private static final CORE_POOL_SIZE:I = 0xa

.field private static final KEEP_ALIVE_SECONDS:I = 0xa

.field private static final MAXIMUM_POOL_SIZE:I = 0x14

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

.field private static final WORK_QUEUE_CAPACITY:I = 0x14

.field private static final sDebug:Z = false

.field private static final sInstance:Lcom/transsion/camera/feature/mode/vlog/utils/ThreadPool;

.field private static final sPoolWorkQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private static final sThreadFactory:Ljava/util/concurrent/ThreadFactory;


# instance fields
.field private final THREAD_POOL_EXECUTOR:Ljava/util/concurrent/ThreadPoolExecutor;


# direct methods
.method static bridge synthetic -$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;
    .registers 1

    .line 0
    sget-object v0, Lcom/transsion/camera/feature/mode/vlog/utils/ThreadPool;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 15
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/feature/mode/vlog/utils/ThreadPool;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/mode/vlog/utils/ThreadPool;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    .line 23
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    sput-object v0, Lcom/transsion/camera/feature/mode/vlog/utils/ThreadPool;->sPoolWorkQueue:Ljava/util/concurrent/BlockingQueue;

    .line 26
    new-instance v0, Lcom/transsion/camera/feature/mode/vlog/utils/ThreadPool$1;

    invoke-direct {v0}, Lcom/transsion/camera/feature/mode/vlog/utils/ThreadPool$1;-><init>()V

    sput-object v0, Lcom/transsion/camera/feature/mode/vlog/utils/ThreadPool;->sThreadFactory:Ljava/util/concurrent/ThreadFactory;

    .line 39
    new-instance v0, Lcom/transsion/camera/feature/mode/vlog/utils/ThreadPool;

    invoke-direct {v0}, Lcom/transsion/camera/feature/mode/vlog/utils/ThreadPool;-><init>()V

    sput-object v0, Lcom/transsion/camera/feature/mode/vlog/utils/ThreadPool;->sInstance:Lcom/transsion/camera/feature/mode/vlog/utils/ThreadPool;

    return-void
.end method

.method private constructor <init>()V
    .registers 10

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v6, Lcom/transsion/camera/feature/mode/vlog/utils/ThreadPool;->sPoolWorkQueue:Ljava/util/concurrent/BlockingQueue;

    sget-object v7, Lcom/transsion/camera/feature/mode/vlog/utils/ThreadPool;->sThreadFactory:Ljava/util/concurrent/ThreadFactory;

    new-instance v8, Lcom/transsion/camera/feature/mode/vlog/utils/ThreadPool$WorkRejectedExecutionHandler;

    invoke-direct {v8}, Lcom/transsion/camera/feature/mode/vlog/utils/ThreadPool$WorkRejectedExecutionHandler;-><init>()V

    const/16 v1, 0xa

    const/16 v2, 0x14

    const-wide/16 v3, 0xa

    invoke-direct/range {v0 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    const/4 v1, 0x1

    .line 45
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    .line 46
    iput-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/utils/ThreadPool;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/ThreadPoolExecutor;

    return-void
.end method

.method public static execute(Ljava/lang/Runnable;)V
    .registers 2

    if-nez p0, :cond_a

    .line 51
    sget-object p0, Lcom/transsion/camera/feature/mode/vlog/utils/ThreadPool;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "task is null"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 55
    :cond_a
    sget-object v0, Lcom/transsion/camera/feature/mode/vlog/utils/ThreadPool;->sInstance:Lcom/transsion/camera/feature/mode/vlog/utils/ThreadPool;

    iget-object v0, v0, Lcom/transsion/camera/feature/mode/vlog/utils/ThreadPool;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static varargs execute([Ljava/lang/Runnable;)V
    .registers 5

    if-eqz p0, :cond_17

    .line 82
    array-length v0, p0

    if-nez v0, :cond_6

    goto :goto_17

    .line 87
    :cond_6
    array-length v0, p0

    const/4 v1, 0x0

    :goto_8
    if-ge v1, v0, :cond_16

    aget-object v2, p0, v1

    .line 88
    sget-object v3, Lcom/transsion/camera/feature/mode/vlog/utils/ThreadPool;->sInstance:Lcom/transsion/camera/feature/mode/vlog/utils/ThreadPool;

    iget-object v3, v3, Lcom/transsion/camera/feature/mode/vlog/utils/ThreadPool;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_16
    return-void

    .line 83
    :cond_17
    :goto_17
    sget-object p0, Lcom/transsion/camera/feature/mode/vlog/utils/ThreadPool;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "no tasks add"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public static printThreadPoolMessage()V
    .registers 13

    .line 62
    sget-object v0, Lcom/transsion/camera/feature/mode/vlog/utils/ThreadPool;->sInstance:Lcom/transsion/camera/feature/mode/vlog/utils/ThreadPool;

    iget-object v1, v0, Lcom/transsion/camera/feature/mode/vlog/utils/ThreadPool;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v1}, Ljava/util/concurrent/ThreadPoolExecutor;->getActiveCount()I

    move-result v1

    .line 63
    iget-object v2, v0, Lcom/transsion/camera/feature/mode/vlog/utils/ThreadPool;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v2}, Ljava/util/concurrent/ThreadPoolExecutor;->getCorePoolSize()I

    move-result v2

    .line 64
    iget-object v3, v0, Lcom/transsion/camera/feature/mode/vlog/utils/ThreadPool;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v3}, Ljava/util/concurrent/ThreadPoolExecutor;->getPoolSize()I

    move-result v3

    .line 65
    iget-object v4, v0, Lcom/transsion/camera/feature/mode/vlog/utils/ThreadPool;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v4}, Ljava/util/concurrent/ThreadPoolExecutor;->getLargestPoolSize()I

    move-result v4

    .line 66
    iget-object v5, v0, Lcom/transsion/camera/feature/mode/vlog/utils/ThreadPool;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v5}, Ljava/util/concurrent/ThreadPoolExecutor;->getMaximumPoolSize()I

    move-result v5

    .line 67
    iget-object v6, v0, Lcom/transsion/camera/feature/mode/vlog/utils/ThreadPool;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v6}, Ljava/util/concurrent/ThreadPoolExecutor;->getTaskCount()J

    move-result-wide v6

    .line 68
    iget-object v8, v0, Lcom/transsion/camera/feature/mode/vlog/utils/ThreadPool;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v8}, Ljava/util/concurrent/ThreadPoolExecutor;->getCompletedTaskCount()J

    move-result-wide v8

    .line 69
    iget-object v0, v0, Lcom/transsion/camera/feature/mode/vlog/utils/ThreadPool;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->getQueue()Ljava/util/concurrent/BlockingQueue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    .line 71
    sget-object v10, Lcom/transsion/camera/feature/mode/vlog/utils/ThreadPool;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "printThreadPoolMessage, activeCount: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", corePoolSize: "

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", poolSize: "

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", largestPoolSize: "

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", maximumPoolSize: "

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", TaskCount: "

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", completedTaskCount: "

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", queueCount: "

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method
