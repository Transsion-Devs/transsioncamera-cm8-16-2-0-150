.class final Lcom/bumptech/glide/load/engine/executor/CameraGlideSourceExecutorFactory$RoutingSourceExecutor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/ExecutorService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/engine/executor/CameraGlideSourceExecutorFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "RoutingSourceExecutor"
.end annotation


# instance fields
.field private final mDefaultPool:Ljava/util/concurrent/ThreadPoolExecutor;

.field private final mThumbnailPool:Ljava/util/concurrent/ThreadPoolExecutor;


# direct methods
.method constructor <init>(Ljava/util/concurrent/ThreadPoolExecutor;Ljava/util/concurrent/ThreadPoolExecutor;)V
    .registers 3

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/executor/CameraGlideSourceExecutorFactory$RoutingSourceExecutor;->mDefaultPool:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 85
    iput-object p2, p0, Lcom/bumptech/glide/load/engine/executor/CameraGlideSourceExecutorFactory$RoutingSourceExecutor;->mThumbnailPool:Ljava/util/concurrent/ThreadPoolExecutor;

    return-void
.end method

.method private remainingNanos(J)J
    .registers 5

    .line 133
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    sub-long/2addr p1, v0

    const-wide/16 v0, 0x0

    .line 134
    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p0

    return-wide p0
.end method

.method private target()Ljava/util/concurrent/ExecutorService;
    .registers 2

    .line 89
    invoke-static {}, Lcom/transsion/camera/feature/thumbnailtransition/ThumbnailGlideDecodeSession;->isActive()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object p0, p0, Lcom/bumptech/glide/load/engine/executor/CameraGlideSourceExecutorFactory$RoutingSourceExecutor;->mThumbnailPool:Ljava/util/concurrent/ThreadPoolExecutor;

    return-object p0

    :cond_9
    iget-object p0, p0, Lcom/bumptech/glide/load/engine/executor/CameraGlideSourceExecutorFactory$RoutingSourceExecutor;->mDefaultPool:Ljava/util/concurrent/ThreadPoolExecutor;

    return-object p0
.end method


# virtual methods
.method public awaitTermination(JLjava/util/concurrent/TimeUnit;)Z
    .registers 7

    .line 123
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide p1

    add-long/2addr v0, p1

    .line 124
    iget-object p1, p0, Lcom/bumptech/glide/load/engine/executor/CameraGlideSourceExecutorFactory$RoutingSourceExecutor;->mThumbnailPool:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 126
    invoke-direct {p0, v0, v1}, Lcom/bumptech/glide/load/engine/executor/CameraGlideSourceExecutorFactory$RoutingSourceExecutor;->remainingNanos(J)J

    move-result-wide p2

    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 125
    invoke-virtual {p1, p2, p3, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    move-result p1

    .line 127
    iget-object p2, p0, Lcom/bumptech/glide/load/engine/executor/CameraGlideSourceExecutorFactory$RoutingSourceExecutor;->mDefaultPool:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 128
    invoke-direct {p0, v0, v1}, Lcom/bumptech/glide/load/engine/executor/CameraGlideSourceExecutorFactory$RoutingSourceExecutor;->remainingNanos(J)J

    move-result-wide v0

    invoke-virtual {p2, v0, v1, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    move-result p0

    if-eqz p1, :cond_25

    if-eqz p0, :cond_25

    const/4 p0, 0x1

    return p0

    :cond_25
    const/4 p0, 0x0

    return p0
.end method

.method public execute(Ljava/lang/Runnable;)V
    .registers 2

    .line 94
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/executor/CameraGlideSourceExecutorFactory$RoutingSourceExecutor;->target()Ljava/util/concurrent/ExecutorService;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public invokeAll(Ljava/util/Collection;)Ljava/util/List;
    .registers 2

    .line 159
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/executor/CameraGlideSourceExecutorFactory$RoutingSourceExecutor;->target()Ljava/util/concurrent/ExecutorService;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/concurrent/ExecutorService;->invokeAll(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public invokeAll(Ljava/util/Collection;JLjava/util/concurrent/TimeUnit;)Ljava/util/List;
    .registers 5

    .line 167
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/executor/CameraGlideSourceExecutorFactory$RoutingSourceExecutor;->target()Ljava/util/concurrent/ExecutorService;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3, p4}, Ljava/util/concurrent/ExecutorService;->invokeAll(Ljava/util/Collection;JLjava/util/concurrent/TimeUnit;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public invokeAny(Ljava/util/Collection;)Ljava/lang/Object;
    .registers 2

    .line 174
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/executor/CameraGlideSourceExecutorFactory$RoutingSourceExecutor;->target()Ljava/util/concurrent/ExecutorService;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/concurrent/ExecutorService;->invokeAny(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public invokeAny(Ljava/util/Collection;JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .registers 5

    .line 181
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/executor/CameraGlideSourceExecutorFactory$RoutingSourceExecutor;->target()Ljava/util/concurrent/ExecutorService;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3, p4}, Ljava/util/concurrent/ExecutorService;->invokeAny(Ljava/util/Collection;JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public isShutdown()Z
    .registers 2

    .line 112
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/executor/CameraGlideSourceExecutorFactory$RoutingSourceExecutor;->mDefaultPool:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->isShutdown()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object p0, p0, Lcom/bumptech/glide/load/engine/executor/CameraGlideSourceExecutorFactory$RoutingSourceExecutor;->mThumbnailPool:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->isShutdown()Z

    move-result p0

    if-eqz p0, :cond_12

    const/4 p0, 0x1

    return p0

    :cond_12
    const/4 p0, 0x0

    return p0
.end method

.method public isTerminated()Z
    .registers 2

    .line 117
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/executor/CameraGlideSourceExecutorFactory$RoutingSourceExecutor;->mDefaultPool:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->isTerminated()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object p0, p0, Lcom/bumptech/glide/load/engine/executor/CameraGlideSourceExecutorFactory$RoutingSourceExecutor;->mThumbnailPool:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->isTerminated()Z

    move-result p0

    if-eqz p0, :cond_12

    const/4 p0, 0x1

    return p0

    :cond_12
    const/4 p0, 0x0

    return p0
.end method

.method public shutdown()V
    .registers 2

    .line 99
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/executor/CameraGlideSourceExecutorFactory$RoutingSourceExecutor;->mThumbnailPool:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdown()V

    .line 100
    iget-object p0, p0, Lcom/bumptech/glide/load/engine/executor/CameraGlideSourceExecutorFactory$RoutingSourceExecutor;->mDefaultPool:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdown()V

    return-void
.end method

.method public shutdownNow()Ljava/util/List;
    .registers 2

    .line 106
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/executor/CameraGlideSourceExecutorFactory$RoutingSourceExecutor;->mThumbnailPool:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdownNow()Ljava/util/List;

    .line 107
    iget-object p0, p0, Lcom/bumptech/glide/load/engine/executor/CameraGlideSourceExecutorFactory$RoutingSourceExecutor;->mDefaultPool:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdownNow()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    .registers 2

    .line 152
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/executor/CameraGlideSourceExecutorFactory$RoutingSourceExecutor;->target()Ljava/util/concurrent/ExecutorService;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object p0

    return-object p0
.end method

.method public submit(Ljava/lang/Runnable;Ljava/lang/Object;)Ljava/util/concurrent/Future;
    .registers 3

    .line 146
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/executor/CameraGlideSourceExecutorFactory$RoutingSourceExecutor;->target()Ljava/util/concurrent/ExecutorService;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;Ljava/lang/Object;)Ljava/util/concurrent/Future;

    move-result-object p0

    return-object p0
.end method

.method public submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    .registers 2

    .line 140
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/executor/CameraGlideSourceExecutorFactory$RoutingSourceExecutor;->target()Ljava/util/concurrent/ExecutorService;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p0

    return-object p0
.end method
