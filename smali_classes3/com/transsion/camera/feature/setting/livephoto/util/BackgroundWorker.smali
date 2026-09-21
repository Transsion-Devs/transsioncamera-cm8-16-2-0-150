.class public Lcom/transsion/camera/feature/setting/livephoto/util/BackgroundWorker;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private final mExecutor:Ljava/util/concurrent/ExecutorService;

.field private final mLock:Ljava/lang/Object;

.field private mLooper:Landroid/os/Looper;

.field private volatile mReady:Z


# direct methods
.method public static synthetic $r8$lambda$DneSxHAGtv5RlD5ds68ZFBIlcug(Lcom/transsion/camera/feature/setting/livephoto/util/BackgroundWorker;Ljava/lang/String;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/livephoto/util/BackgroundWorker;->lambda$new$0(Ljava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 11
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "BackgroundWorker"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/setting/livephoto/util/BackgroundWorker;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 4

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/livephoto/util/BackgroundWorker;->mLock:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 16
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/livephoto/util/BackgroundWorker;->mReady:Z

    .line 19
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    .line 20
    iput-object v0, p0, Lcom/transsion/camera/feature/setting/livephoto/util/BackgroundWorker;->mExecutor:Ljava/util/concurrent/ExecutorService;

    .line 21
    new-instance v1, Lcom/transsion/camera/feature/setting/livephoto/util/BackgroundWorker$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/transsion/camera/feature/setting/livephoto/util/BackgroundWorker$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/feature/setting/livephoto/util/BackgroundWorker;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$new$0(Ljava/lang/String;)V
    .registers 3

    .line 22
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 23
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 24
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/setting/livephoto/util/BackgroundWorker;->mLooper:Landroid/os/Looper;

    .line 25
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/livephoto/util/BackgroundWorker;->mLock:Ljava/lang/Object;

    monitor-enter p1

    const/4 v0, 0x1

    .line 26
    :try_start_14
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/livephoto/util/BackgroundWorker;->mReady:Z

    .line 27
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/livephoto/util/BackgroundWorker;->mLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 28
    monitor-exit p1
    :try_end_1c
    .catchall {:try_start_14 .. :try_end_1c} :catchall_2a

    .line 29
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 30
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/livephoto/util/BackgroundWorker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 p1, 0x0

    .line 31
    :try_start_23
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/livephoto/util/BackgroundWorker;->mReady:Z

    .line 32
    monitor-exit v0

    return-void

    :catchall_27
    move-exception p0

    monitor-exit v0
    :try_end_29
    .catchall {:try_start_23 .. :try_end_29} :catchall_27

    throw p0

    :catchall_2a
    move-exception p0

    .line 28
    :try_start_2b
    monitor-exit p1
    :try_end_2c
    .catchall {:try_start_2b .. :try_end_2c} :catchall_2a

    throw p0
.end method

.method private waitUntilReady()V
    .registers 6

    .line 37
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/livephoto/util/BackgroundWorker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 38
    :goto_3
    :try_start_3
    iget-boolean v1, p0, Lcom/transsion/camera/feature/setting/livephoto/util/BackgroundWorker;->mReady:Z
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_d

    if-nez v1, :cond_28

    .line 40
    :try_start_7
    iget-object v1, p0, Lcom/transsion/camera/feature/setting/livephoto/util/BackgroundWorker;->mLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_c
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_c} :catch_f
    .catchall {:try_start_7 .. :try_end_c} :catchall_d

    goto :goto_3

    :catchall_d
    move-exception p0

    goto :goto_2a

    :catch_f
    move-exception v1

    .line 42
    :try_start_10
    sget-object v2, Lcom/transsion/camera/feature/setting/livephoto/util/BackgroundWorker;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "waitUntilReady, exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_3

    .line 45
    :cond_28
    monitor-exit v0

    return-void

    :goto_2a
    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_10 .. :try_end_2b} :catchall_d

    throw p0
.end method


# virtual methods
.method public getLooper()Landroid/os/Looper;
    .registers 1

    .line 49
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/livephoto/util/BackgroundWorker;->waitUntilReady()V

    .line 50
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/livephoto/util/BackgroundWorker;->mLooper:Landroid/os/Looper;

    return-object p0
.end method

.method public quit()V
    .registers 2

    .line 54
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/livephoto/util/BackgroundWorker;->waitUntilReady()V

    .line 55
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/livephoto/util/BackgroundWorker;->mLooper:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->quitSafely()V

    .line 56
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/livephoto/util/BackgroundWorker;->mExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    return-void
.end method
