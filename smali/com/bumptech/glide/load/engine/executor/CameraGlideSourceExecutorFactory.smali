.class public abstract Lcom/bumptech/glide/load/engine/executor/CameraGlideSourceExecutorFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/engine/executor/CameraGlideSourceExecutorFactory$DefaultSourceThreadFactory;,
        Lcom/bumptech/glide/load/engine/executor/CameraGlideSourceExecutorFactory$ThumbnailSourceThreadFactory;,
        Lcom/bumptech/glide/load/engine/executor/CameraGlideSourceExecutorFactory$RoutingSourceExecutor;
    }
.end annotation


# direct methods
.method public static createSourceExecutor()Lcom/bumptech/glide/load/engine/executor/GlideExecutor;
    .registers 10

    .line 39
    invoke-static {}, Lcom/bumptech/glide/load/engine/executor/GlideExecutor;->calculateBestThreadCount()I

    move-result v1

    .line 40
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-direct {v6}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    new-instance v7, Lcom/bumptech/glide/load/engine/executor/CameraGlideSourceExecutorFactory$DefaultSourceThreadFactory;

    sget-object v8, Lcom/bumptech/glide/load/engine/executor/GlideExecutor$UncaughtThrowableStrategy;->DEFAULT:Lcom/bumptech/glide/load/engine/executor/GlideExecutor$UncaughtThrowableStrategy;

    const-string v2, "source"

    const/4 v9, 0x0

    invoke-direct {v7, v2, v8, v9}, Lcom/bumptech/glide/load/engine/executor/CameraGlideSourceExecutorFactory$DefaultSourceThreadFactory;-><init>(Ljava/lang/String;Lcom/bumptech/glide/load/engine/executor/GlideExecutor$UncaughtThrowableStrategy;Z)V

    const-wide/16 v3, 0x0

    move v2, v1

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    .line 52
    new-instance v2, Lcom/bumptech/glide/load/engine/executor/CameraGlideSourceExecutorFactory$1;

    move-object v1, v8

    new-instance v8, Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-direct {v8}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    move v3, v9

    new-instance v9, Lcom/bumptech/glide/load/engine/executor/CameraGlideSourceExecutorFactory$ThumbnailSourceThreadFactory;

    const-string v4, "thumbnail-source"

    invoke-direct {v9, v4, v1, v3}, Lcom/bumptech/glide/load/engine/executor/CameraGlideSourceExecutorFactory$ThumbnailSourceThreadFactory;-><init>(Ljava/lang/String;Lcom/bumptech/glide/load/engine/executor/GlideExecutor$UncaughtThrowableStrategy;Z)V

    const/4 v3, 0x1

    const/4 v4, 0x1

    move-object v7, v5

    const-wide/16 v5, 0x0

    invoke-direct/range {v2 .. v9}, Lcom/bumptech/glide/load/engine/executor/CameraGlideSourceExecutorFactory$1;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    .line 73
    new-instance v1, Lcom/bumptech/glide/load/engine/executor/GlideExecutor;

    new-instance v3, Lcom/bumptech/glide/load/engine/executor/CameraGlideSourceExecutorFactory$RoutingSourceExecutor;

    invoke-direct {v3, v0, v2}, Lcom/bumptech/glide/load/engine/executor/CameraGlideSourceExecutorFactory$RoutingSourceExecutor;-><init>(Ljava/util/concurrent/ThreadPoolExecutor;Ljava/util/concurrent/ThreadPoolExecutor;)V

    invoke-direct {v1, v3}, Lcom/bumptech/glide/load/engine/executor/GlideExecutor;-><init>(Ljava/util/concurrent/ExecutorService;)V

    return-object v1
.end method
