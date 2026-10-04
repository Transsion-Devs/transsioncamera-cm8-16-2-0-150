.class final Lcom/bumptech/glide/load/engine/executor/CameraGlideSourceExecutorFactory$ThumbnailSourceThreadFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/engine/executor/CameraGlideSourceExecutorFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ThumbnailSourceThreadFactory"
.end annotation


# instance fields
.field private final mName:Ljava/lang/String;

.field private final mPreventNetworkOperations:Z

.field private final mUncaughtThrowableStrategy:Lcom/bumptech/glide/load/engine/executor/GlideExecutor$UncaughtThrowableStrategy;


# direct methods
.method static bridge synthetic -$$Nest$fgetmPreventNetworkOperations(Lcom/bumptech/glide/load/engine/executor/CameraGlideSourceExecutorFactory$ThumbnailSourceThreadFactory;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/bumptech/glide/load/engine/executor/CameraGlideSourceExecutorFactory$ThumbnailSourceThreadFactory;->mPreventNetworkOperations:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmUncaughtThrowableStrategy(Lcom/bumptech/glide/load/engine/executor/CameraGlideSourceExecutorFactory$ThumbnailSourceThreadFactory;)Lcom/bumptech/glide/load/engine/executor/GlideExecutor$UncaughtThrowableStrategy;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/bumptech/glide/load/engine/executor/CameraGlideSourceExecutorFactory$ThumbnailSourceThreadFactory;->mUncaughtThrowableStrategy:Lcom/bumptech/glide/load/engine/executor/GlideExecutor$UncaughtThrowableStrategy;

    return-object p0
.end method

.method constructor <init>(Ljava/lang/String;Lcom/bumptech/glide/load/engine/executor/GlideExecutor$UncaughtThrowableStrategy;Z)V
    .registers 4

    .line 234
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 235
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/executor/CameraGlideSourceExecutorFactory$ThumbnailSourceThreadFactory;->mName:Ljava/lang/String;

    .line 236
    iput-object p2, p0, Lcom/bumptech/glide/load/engine/executor/CameraGlideSourceExecutorFactory$ThumbnailSourceThreadFactory;->mUncaughtThrowableStrategy:Lcom/bumptech/glide/load/engine/executor/GlideExecutor$UncaughtThrowableStrategy;

    .line 237
    iput-boolean p3, p0, Lcom/bumptech/glide/load/engine/executor/CameraGlideSourceExecutorFactory$ThumbnailSourceThreadFactory;->mPreventNetworkOperations:Z

    return-void
.end method


# virtual methods
.method public declared-synchronized newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .registers 5

    monitor-enter p0

    .line 242
    :try_start_1
    new-instance v0, Lcom/bumptech/glide/load/engine/executor/CameraGlideSourceExecutorFactory$ThumbnailSourceThreadFactory$1;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "glide-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/bumptech/glide/load/engine/executor/CameraGlideSourceExecutorFactory$ThumbnailSourceThreadFactory;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "-thread-0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, p1, v1}, Lcom/bumptech/glide/load/engine/executor/CameraGlideSourceExecutorFactory$ThumbnailSourceThreadFactory$1;-><init>(Lcom/bumptech/glide/load/engine/executor/CameraGlideSourceExecutorFactory$ThumbnailSourceThreadFactory;Ljava/lang/Runnable;Ljava/lang/String;)V
    :try_end_1e
    .catchall {:try_start_1 .. :try_end_1e} :catchall_20

    monitor-exit p0

    return-object v0

    :catchall_20
    move-exception p1

    :try_start_21
    monitor-exit p0
    :try_end_22
    .catchall {:try_start_21 .. :try_end_22} :catchall_20

    throw p1
.end method
