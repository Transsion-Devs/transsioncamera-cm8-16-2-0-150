.class public Lcom/transsion/camera/featurelibs/aicommon/request/RequestDispatcher;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final sThreadFactory:Ljava/util/concurrent/ThreadFactory;


# instance fields
.field final mExecutorService:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 29
    new-instance v0, Lcom/transsion/camera/featurelibs/aicommon/request/RequestDispatcher$1;

    invoke-direct {v0}, Lcom/transsion/camera/featurelibs/aicommon/request/RequestDispatcher$1;-><init>()V

    sput-object v0, Lcom/transsion/camera/featurelibs/aicommon/request/RequestDispatcher;->sThreadFactory:Ljava/util/concurrent/ThreadFactory;

    return-void
.end method

.method public constructor <init>()V
    .registers 9

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/SynchronousQueue;

    invoke-direct {v6}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    sget-object v7, Lcom/transsion/camera/featurelibs/aicommon/request/RequestDispatcher;->sThreadFactory:Ljava/util/concurrent/ThreadFactory;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-wide/16 v3, 0x3c

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object v0, p0, Lcom/transsion/camera/featurelibs/aicommon/request/RequestDispatcher;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    return-void
.end method
