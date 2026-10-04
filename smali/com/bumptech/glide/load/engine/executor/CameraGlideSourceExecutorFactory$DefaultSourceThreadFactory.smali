.class final Lcom/bumptech/glide/load/engine/executor/CameraGlideSourceExecutorFactory$DefaultSourceThreadFactory;
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
    name = "DefaultSourceThreadFactory"
.end annotation


# instance fields
.field private final mName:Ljava/lang/String;

.field private final mPreventNetworkOperations:Z

.field private mThreadNum:I

.field private final mUncaughtThrowableStrategy:Lcom/bumptech/glide/load/engine/executor/GlideExecutor$UncaughtThrowableStrategy;


# direct methods
.method static bridge synthetic -$$Nest$fgetmPreventNetworkOperations(Lcom/bumptech/glide/load/engine/executor/CameraGlideSourceExecutorFactory$DefaultSourceThreadFactory;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/bumptech/glide/load/engine/executor/CameraGlideSourceExecutorFactory$DefaultSourceThreadFactory;->mPreventNetworkOperations:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmUncaughtThrowableStrategy(Lcom/bumptech/glide/load/engine/executor/CameraGlideSourceExecutorFactory$DefaultSourceThreadFactory;)Lcom/bumptech/glide/load/engine/executor/GlideExecutor$UncaughtThrowableStrategy;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/bumptech/glide/load/engine/executor/CameraGlideSourceExecutorFactory$DefaultSourceThreadFactory;->mUncaughtThrowableStrategy:Lcom/bumptech/glide/load/engine/executor/GlideExecutor$UncaughtThrowableStrategy;

    return-object p0
.end method

.method constructor <init>(Ljava/lang/String;Lcom/bumptech/glide/load/engine/executor/GlideExecutor$UncaughtThrowableStrategy;Z)V
    .registers 4

    .line 194
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 195
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/executor/CameraGlideSourceExecutorFactory$DefaultSourceThreadFactory;->mName:Ljava/lang/String;

    .line 196
    iput-object p2, p0, Lcom/bumptech/glide/load/engine/executor/CameraGlideSourceExecutorFactory$DefaultSourceThreadFactory;->mUncaughtThrowableStrategy:Lcom/bumptech/glide/load/engine/executor/GlideExecutor$UncaughtThrowableStrategy;

    .line 197
    iput-boolean p3, p0, Lcom/bumptech/glide/load/engine/executor/CameraGlideSourceExecutorFactory$DefaultSourceThreadFactory;->mPreventNetworkOperations:Z

    return-void
.end method


# virtual methods
.method public declared-synchronized newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .registers 5

    monitor-enter p0

    .line 202
    :try_start_1
    new-instance v0, Lcom/bumptech/glide/load/engine/executor/CameraGlideSourceExecutorFactory$DefaultSourceThreadFactory$1;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "glide-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/bumptech/glide/load/engine/executor/CameraGlideSourceExecutorFactory$DefaultSourceThreadFactory;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "-thread-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/bumptech/glide/load/engine/executor/CameraGlideSourceExecutorFactory$DefaultSourceThreadFactory;->mThreadNum:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, p1, v1}, Lcom/bumptech/glide/load/engine/executor/CameraGlideSourceExecutorFactory$DefaultSourceThreadFactory$1;-><init>(Lcom/bumptech/glide/load/engine/executor/CameraGlideSourceExecutorFactory$DefaultSourceThreadFactory;Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 220
    iget p1, p0, Lcom/bumptech/glide/load/engine/executor/CameraGlideSourceExecutorFactory$DefaultSourceThreadFactory;->mThreadNum:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/bumptech/glide/load/engine/executor/CameraGlideSourceExecutorFactory$DefaultSourceThreadFactory;->mThreadNum:I
    :try_end_29
    .catchall {:try_start_1 .. :try_end_29} :catchall_2b

    .line 221
    monitor-exit p0

    return-object v0

    :catchall_2b
    move-exception p1

    :try_start_2c
    monitor-exit p0
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_2b

    throw p1
.end method
