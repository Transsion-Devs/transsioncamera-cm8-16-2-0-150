.class public Lcom/transsion/camera/utils/threads/WorkThreadPools;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/utils/threads/WorkThreadPools$WorkRejectedExecutionHandler;,
        Lcom/transsion/camera/utils/threads/WorkThreadPools$InstanceHolder;
    }
.end annotation


# static fields
.field private static final CORE_POOL_SIZE:I

.field private static final CPU_COUNT:I

.field private static final MAX_NUM_POOL_SIZE:I

.field private static final QUEUE_CAPACITY:I

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

.field private static final mTimeUnit:Ljava/util/concurrent/TimeUnit;

.field private static sExecutor:Ljava/util/concurrent/ThreadPoolExecutor;


# direct methods
.method static bridge synthetic -$$Nest$sfgetCPU_COUNT()I
    .registers 1

    .line 0
    sget v0, Lcom/transsion/camera/utils/threads/WorkThreadPools;->CPU_COUNT:I

    return v0
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;
    .registers 1

    .line 0
    sget-object v0, Lcom/transsion/camera/utils/threads/WorkThreadPools;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 12
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "WorkThreadPools"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/utils/threads/WorkThreadPools;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    .line 13
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    sput v0, Lcom/transsion/camera/utils/threads/WorkThreadPools;->CPU_COUNT:I

    add-int/lit8 v1, v0, 0x1

    .line 14
    sput v1, Lcom/transsion/camera/utils/threads/WorkThreadPools;->MAX_NUM_POOL_SIZE:I

    .line 15
    div-int/lit8 v1, v0, 0x2

    sput v1, Lcom/transsion/camera/utils/threads/WorkThreadPools;->CORE_POOL_SIZE:I

    .line 16
    sput v0, Lcom/transsion/camera/utils/threads/WorkThreadPools;->QUEUE_CAPACITY:I

    .line 17
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    sput-object v0, Lcom/transsion/camera/utils/threads/WorkThreadPools;->mTimeUnit:Ljava/util/concurrent/TimeUnit;

    return-void
.end method

.method private constructor <init>()V
    .registers 10

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    sget v1, Lcom/transsion/camera/utils/threads/WorkThreadPools;->CORE_POOL_SIZE:I

    sget v2, Lcom/transsion/camera/utils/threads/WorkThreadPools;->MAX_NUM_POOL_SIZE:I

    sget-object v5, Lcom/transsion/camera/utils/threads/WorkThreadPools;->mTimeUnit:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    sget p0, Lcom/transsion/camera/utils/threads/WorkThreadPools;->QUEUE_CAPACITY:I

    invoke-direct {v6, p0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    new-instance v7, Lcom/transsion/camera/utils/threads/WorkThreadFactory;

    const-string p0, "WorkThreadPools"

    invoke-direct {v7, p0}, Lcom/transsion/camera/utils/threads/WorkThreadFactory;-><init>(Ljava/lang/String;)V

    new-instance v8, Lcom/transsion/camera/utils/threads/WorkThreadPools$WorkRejectedExecutionHandler;

    invoke-direct {v8}, Lcom/transsion/camera/utils/threads/WorkThreadPools$WorkRejectedExecutionHandler;-><init>()V

    const-wide/16 v3, 0x3c

    invoke-direct/range {v0 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    sput-object v0, Lcom/transsion/camera/utils/threads/WorkThreadPools;->sExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/utils/threads/WorkThreadPools-IA;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/utils/threads/WorkThreadPools;-><init>()V

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/transsion/camera/utils/threads/WorkThreadPools;
    .registers 2

    const-class v0, Lcom/transsion/camera/utils/threads/WorkThreadPools;

    monitor-enter v0

    .line 33
    :try_start_3
    invoke-static {}, Lcom/transsion/camera/utils/threads/WorkThreadPools$InstanceHolder;->-$$Nest$sfgetINSTANCE()Lcom/transsion/camera/utils/threads/WorkThreadPools;

    move-result-object v1
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_9

    monitor-exit v0

    return-object v1

    :catchall_9
    move-exception v1

    :try_start_a
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_a .. :try_end_b} :catchall_9

    throw v1
.end method


# virtual methods
.method public execute(Lcom/transsion/camera/utils/threads/WorkTask;)V
    .registers 2

    .line 47
    sget-object p0, Lcom/transsion/camera/utils/threads/WorkThreadPools;->sExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public execute(Ljava/lang/Runnable;Ljava/lang/String;)V
    .registers 4

    .line 37
    new-instance v0, Lcom/transsion/camera/utils/threads/WorkThreadPools$1;

    invoke-direct {v0, p0, p2, p1}, Lcom/transsion/camera/utils/threads/WorkThreadPools$1;-><init>(Lcom/transsion/camera/utils/threads/WorkThreadPools;Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 43
    invoke-virtual {p0, v0}, Lcom/transsion/camera/utils/threads/WorkThreadPools;->execute(Lcom/transsion/camera/utils/threads/WorkTask;)V

    return-void
.end method

.method public submit(Lcom/transsion/camera/utils/threads/WorkTask;)Ljava/util/concurrent/Future;
    .registers 2

    .line 61
    sget-object p0, Lcom/transsion/camera/utils/threads/WorkThreadPools;->sExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/AbstractExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object p0

    return-object p0
.end method
