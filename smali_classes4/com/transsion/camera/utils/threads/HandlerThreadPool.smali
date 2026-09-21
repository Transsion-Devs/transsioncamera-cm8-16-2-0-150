.class public Lcom/transsion/camera/utils/threads/HandlerThreadPool;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/utils/threads/HandlerThreadPool$HandlerThreadFactory;,
        Lcom/transsion/camera/utils/threads/HandlerThreadPool$Holder;,
        Lcom/transsion/camera/utils/threads/HandlerThreadPool$RecycleHandlerThread;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private final mCorePoolSize:I

.field private final mCoreThreadQueue:Ljava/util/Queue;

.field private final mKeepAliveTime:J

.field private final mMainHandler:Landroid/os/Handler;

.field private final mOtherThreadQueue:Ljava/util/Queue;

.field private final mThreadFactory:Lcom/transsion/camera/utils/threads/HandlerThreadPool$HandlerThreadFactory;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 18
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "HandlerThreadPool"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/utils/threads/HandlerThreadPool;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method private constructor <init>()V
    .registers 7

    .line 27
    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v5, Lcom/transsion/camera/utils/threads/HandlerThreadPool$HandlerThreadFactory;

    invoke-direct {v5}, Lcom/transsion/camera/utils/threads/HandlerThreadPool$HandlerThreadFactory;-><init>()V

    const/4 v1, 0x3

    const-wide/16 v2, 0xa

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/transsion/camera/utils/threads/HandlerThreadPool;-><init>(IJLjava/util/concurrent/TimeUnit;Lcom/transsion/camera/utils/threads/HandlerThreadPool$HandlerThreadFactory;)V

    return-void
.end method

.method private constructor <init>(IJLjava/util/concurrent/TimeUnit;Lcom/transsion/camera/utils/threads/HandlerThreadPool$HandlerThreadFactory;)V
    .registers 8

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/utils/threads/HandlerThreadPool;->mCoreThreadQueue:Ljava/util/Queue;

    .line 20
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/utils/threads/HandlerThreadPool;->mOtherThreadQueue:Ljava/util/Queue;

    .line 21
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/transsion/camera/utils/threads/HandlerThreadPool;->mMainHandler:Landroid/os/Handler;

    .line 31
    sget-object v0, Lcom/transsion/camera/utils/threads/HandlerThreadPool;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "HandlerThreadPool: "

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-ltz p1, :cond_3d

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-ltz v0, :cond_3d

    .line 36
    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 38
    iput p1, p0, Lcom/transsion/camera/utils/threads/HandlerThreadPool;->mCorePoolSize:I

    .line 39
    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide p1

    const-wide/32 p3, 0xf4240

    div-long/2addr p1, p3

    iput-wide p1, p0, Lcom/transsion/camera/utils/threads/HandlerThreadPool;->mKeepAliveTime:J

    .line 40
    iput-object p5, p0, Lcom/transsion/camera/utils/threads/HandlerThreadPool;->mThreadFactory:Lcom/transsion/camera/utils/threads/HandlerThreadPool$HandlerThreadFactory;

    return-void

    .line 33
    :cond_3d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/utils/threads/HandlerThreadPool-IA;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/utils/threads/HandlerThreadPool;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/transsion/camera/utils/threads/HandlerThreadPool;
    .registers 1

    .line 48
    invoke-static {}, Lcom/transsion/camera/utils/threads/HandlerThreadPool$Holder;->-$$Nest$sfgetINSTANCE()Lcom/transsion/camera/utils/threads/HandlerThreadPool;

    move-result-object v0

    return-object v0
.end method

.method private offerInner(Lcom/transsion/camera/utils/threads/HandlerThreadPool$RecycleHandlerThread;)Z
    .registers 8

    .line 113
    invoke-virtual {p1}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_58

    invoke-virtual {p1}, Lcom/transsion/camera/utils/threads/HandlerThreadPool$RecycleHandlerThread;->isQuitting()Z

    move-result v0

    if-nez v0, :cond_58

    .line 114
    monitor-enter p0

    .line 115
    :try_start_e
    iget-object v0, p0, Lcom/transsion/camera/utils/threads/HandlerThreadPool;->mCoreThreadQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    .line 116
    iget v2, p0, Lcom/transsion/camera/utils/threads/HandlerThreadPool;->mCorePoolSize:I

    const/4 v3, 0x1

    if-ge v0, v2, :cond_1a

    move v1, v3

    .line 117
    :cond_1a
    sget-object v2, Lcom/transsion/camera/utils/threads/HandlerThreadPool;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "offerInner: current = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", mCorePoolSize = "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/transsion/camera/utils/threads/HandlerThreadPool;->mCorePoolSize:I

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-nez v1, :cond_4a

    .line 119
    iget-object v0, p0, Lcom/transsion/camera/utils/threads/HandlerThreadPool;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {p1}, Lcom/transsion/camera/utils/threads/HandlerThreadPool$RecycleHandlerThread;->getQuitRunnable()Ljava/lang/Runnable;

    move-result-object v2

    iget-wide v4, p0, Lcom/transsion/camera/utils/threads/HandlerThreadPool;->mKeepAliveTime:J

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_4a

    :catchall_48
    move-exception p1

    goto :goto_56

    :cond_4a
    :goto_4a
    if-eqz v1, :cond_4f

    .line 121
    iget-object v0, p0, Lcom/transsion/camera/utils/threads/HandlerThreadPool;->mCoreThreadQueue:Ljava/util/Queue;

    goto :goto_51

    :cond_4f
    iget-object v0, p0, Lcom/transsion/camera/utils/threads/HandlerThreadPool;->mOtherThreadQueue:Ljava/util/Queue;

    .line 122
    :goto_51
    invoke-interface {v0, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 123
    monitor-exit p0

    return v3

    .line 124
    :goto_56
    monitor-exit p0
    :try_end_57
    .catchall {:try_start_e .. :try_end_57} :catchall_48

    throw p1

    :cond_58
    return v1
.end method

.method private pollInner()Lcom/transsion/camera/utils/threads/HandlerThreadPool$RecycleHandlerThread;
    .registers 2

    .line 72
    iget-object v0, p0, Lcom/transsion/camera/utils/threads/HandlerThreadPool;->mCoreThreadQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_11

    .line 73
    iget-object v0, p0, Lcom/transsion/camera/utils/threads/HandlerThreadPool;->mCoreThreadQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/utils/threads/HandlerThreadPool$RecycleHandlerThread;

    goto :goto_12

    :cond_11
    const/4 v0, 0x0

    .line 77
    :goto_12
    invoke-direct {p0}, Lcom/transsion/camera/utils/threads/HandlerThreadPool;->updateToCoreThread()V

    if-nez v0, :cond_20

    .line 81
    iget-object p0, p0, Lcom/transsion/camera/utils/threads/HandlerThreadPool;->mCoreThreadQueue:Ljava/util/Queue;

    invoke-interface {p0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/utils/threads/HandlerThreadPool$RecycleHandlerThread;

    return-object p0

    :cond_20
    return-object v0
.end method

.method private updateToCoreThread()V
    .registers 4

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/utils/threads/HandlerThreadPool;->mOtherThreadQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4c

    .line 88
    iget-object v0, p0, Lcom/transsion/camera/utils/threads/HandlerThreadPool;->mOtherThreadQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/utils/threads/HandlerThreadPool$RecycleHandlerThread;

    if-eqz v0, :cond_0

    .line 90
    iget-object v1, p0, Lcom/transsion/camera/utils/threads/HandlerThreadPool;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Lcom/transsion/camera/utils/threads/HandlerThreadPool$RecycleHandlerThread;->getQuitRunnable()Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 91
    invoke-direct {p0, v0}, Lcom/transsion/camera/utils/threads/HandlerThreadPool;->offerInner(Lcom/transsion/camera/utils/threads/HandlerThreadPool$RecycleHandlerThread;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 92
    sget-object p0, Lcom/transsion/camera/utils/threads/HandlerThreadPool;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateToCoreThread: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getThreadId()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :cond_4c
    return-void
.end method


# virtual methods
.method public offer(Ljava/lang/String;)V
    .registers 3

    .line 100
    iget-object v0, p0, Lcom/transsion/camera/utils/threads/HandlerThreadPool;->mThreadFactory:Lcom/transsion/camera/utils/threads/HandlerThreadPool$HandlerThreadFactory;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/utils/threads/HandlerThreadPool$HandlerThreadFactory;->newHandlerThread(Ljava/lang/String;)Landroid/os/HandlerThread;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/camera/utils/threads/HandlerThreadPool;->offer(Ljava/lang/Thread;)V

    return-void
.end method

.method public offer(Ljava/lang/Thread;)V
    .registers 4

    .line 104
    instance-of v0, p1, Lcom/transsion/camera/utils/threads/HandlerThreadPool$RecycleHandlerThread;

    if-eqz v0, :cond_37

    .line 105
    check-cast p1, Lcom/transsion/camera/utils/threads/HandlerThreadPool$RecycleHandlerThread;

    .line 106
    invoke-direct {p0, p1}, Lcom/transsion/camera/utils/threads/HandlerThreadPool;->offerInner(Lcom/transsion/camera/utils/threads/HandlerThreadPool$RecycleHandlerThread;)Z

    move-result p0

    if-eqz p0, :cond_37

    .line 107
    sget-object p0, Lcom/transsion/camera/utils/threads/HandlerThreadPool;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "offer: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getThreadId()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :cond_37
    return-void
.end method

.method public onDestroy()V
    .registers 3

    .line 130
    iget-object v0, p0, Lcom/transsion/camera/utils/threads/HandlerThreadPool;->mOtherThreadQueue:Ljava/util/Queue;

    new-instance v1, Lcom/transsion/camera/utils/threads/HandlerThreadPool$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/transsion/camera/utils/threads/HandlerThreadPool$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v0, v1}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    .line 131
    iget-object v0, p0, Lcom/transsion/camera/utils/threads/HandlerThreadPool;->mOtherThreadQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    .line 132
    iget-object v0, p0, Lcom/transsion/camera/utils/threads/HandlerThreadPool;->mCoreThreadQueue:Ljava/util/Queue;

    new-instance v1, Lcom/transsion/camera/utils/threads/HandlerThreadPool$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/transsion/camera/utils/threads/HandlerThreadPool$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v0, v1}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    .line 133
    iget-object v0, p0, Lcom/transsion/camera/utils/threads/HandlerThreadPool;->mCoreThreadQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    .line 134
    iget-object p0, p0, Lcom/transsion/camera/utils/threads/HandlerThreadPool;->mMainHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public declared-synchronized poll(Ljava/lang/String;)Landroid/os/HandlerThread;
    .registers 5

    monitor-enter p0

    .line 53
    :try_start_1
    iget-object v0, p0, Lcom/transsion/camera/utils/threads/HandlerThreadPool;->mCoreThreadQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_46

    iget-object v0, p0, Lcom/transsion/camera/utils/threads/HandlerThreadPool;->mOtherThreadQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_46

    .line 54
    iget-object v0, p0, Lcom/transsion/camera/utils/threads/HandlerThreadPool;->mThreadFactory:Lcom/transsion/camera/utils/threads/HandlerThreadPool$HandlerThreadFactory;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/utils/threads/HandlerThreadPool$HandlerThreadFactory;->newHandlerThread(Ljava/lang/String;)Landroid/os/HandlerThread;

    move-result-object p1

    .line 55
    sget-object v0, Lcom/transsion/camera/utils/threads/HandlerThreadPool;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "poll(new): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getThreadId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_42
    .catchall {:try_start_1 .. :try_end_42} :catchall_44

    .line 56
    monitor-exit p0

    return-object p1

    :catchall_44
    move-exception p1

    goto :goto_9c

    .line 58
    :cond_46
    :try_start_46
    invoke-direct {p0}, Lcom/transsion/camera/utils/threads/HandlerThreadPool;->pollInner()Lcom/transsion/camera/utils/threads/HandlerThreadPool$RecycleHandlerThread;

    move-result-object v0

    if-eqz v0, :cond_96

    .line 59
    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v1

    if-nez v1, :cond_53

    goto :goto_96

    .line 62
    :cond_53
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_69

    .line 63
    invoke-virtual {v0, p1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 64
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object p1

    const-string v1, "main"

    invoke-virtual {p1, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 66
    :cond_69
    sget-object p1, Lcom/transsion/camera/utils/threads/HandlerThreadPool;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "poll(recycle): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getThreadId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_94
    .catchall {:try_start_46 .. :try_end_94} :catchall_44

    .line 67
    monitor-exit p0

    return-object v0

    .line 60
    :cond_96
    :goto_96
    :try_start_96
    invoke-virtual {p0, p1}, Lcom/transsion/camera/utils/threads/HandlerThreadPool;->poll(Ljava/lang/String;)Landroid/os/HandlerThread;

    move-result-object p1
    :try_end_9a
    .catchall {:try_start_96 .. :try_end_9a} :catchall_44

    monitor-exit p0

    return-object p1

    :goto_9c
    :try_start_9c
    monitor-exit p0
    :try_end_9d
    .catchall {:try_start_9c .. :try_end_9d} :catchall_44

    throw p1
.end method
