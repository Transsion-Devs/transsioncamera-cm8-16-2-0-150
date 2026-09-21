.class public Lcom/transsion/camera/app/common/algorithm/util/ThreadPool;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

.field private static final sInstance:Lcom/transsion/camera/app/common/algorithm/util/ThreadPool;

.field private static final sPoolWorkQueue:Ljava/util/concurrent/BlockingQueue;

.field private static final sThreadFactory:Ljava/util/concurrent/ThreadFactory;


# instance fields
.field private final THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 29
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "ThreadPool"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/common/algorithm/util/ThreadPool;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    .line 36
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    sput-object v0, Lcom/transsion/camera/app/common/algorithm/util/ThreadPool;->sPoolWorkQueue:Ljava/util/concurrent/BlockingQueue;

    .line 39
    new-instance v0, Lcom/transsion/camera/app/common/algorithm/util/ThreadPool$1;

    invoke-direct {v0}, Lcom/transsion/camera/app/common/algorithm/util/ThreadPool$1;-><init>()V

    sput-object v0, Lcom/transsion/camera/app/common/algorithm/util/ThreadPool;->sThreadFactory:Ljava/util/concurrent/ThreadFactory;

    .line 52
    new-instance v0, Lcom/transsion/camera/app/common/algorithm/util/ThreadPool;

    invoke-direct {v0}, Lcom/transsion/camera/app/common/algorithm/util/ThreadPool;-><init>()V

    sput-object v0, Lcom/transsion/camera/app/common/algorithm/util/ThreadPool;->sInstance:Lcom/transsion/camera/app/common/algorithm/util/ThreadPool;

    return-void
.end method

.method private constructor <init>()V
    .registers 9

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v6, Lcom/transsion/camera/app/common/algorithm/util/ThreadPool;->sPoolWorkQueue:Ljava/util/concurrent/BlockingQueue;

    sget-object v7, Lcom/transsion/camera/app/common/algorithm/util/ThreadPool;->sThreadFactory:Ljava/util/concurrent/ThreadFactory;

    const/4 v1, 0x2

    const/4 v2, 0x2

    const-wide/16 v3, 0x1e

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    const/4 v1, 0x1

    .line 58
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    .line 59
    iput-object v0, p0, Lcom/transsion/camera/app/common/algorithm/util/ThreadPool;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public static execute(Ljava/lang/Runnable;)V
    .registers 2

    if-nez p0, :cond_a

    .line 64
    sget-object p0, Lcom/transsion/camera/app/common/algorithm/util/ThreadPool;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "command is null"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 67
    :cond_a
    sget-object v0, Lcom/transsion/camera/app/common/algorithm/util/ThreadPool;->sInstance:Lcom/transsion/camera/app/common/algorithm/util/ThreadPool;

    iget-object v0, v0, Lcom/transsion/camera/app/common/algorithm/util/ThreadPool;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-interface {v0, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
