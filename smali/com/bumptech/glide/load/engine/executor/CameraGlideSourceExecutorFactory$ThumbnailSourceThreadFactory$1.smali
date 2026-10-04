.class Lcom/bumptech/glide/load/engine/executor/CameraGlideSourceExecutorFactory$ThumbnailSourceThreadFactory$1;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bumptech/glide/load/engine/executor/CameraGlideSourceExecutorFactory$ThumbnailSourceThreadFactory;->newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bumptech/glide/load/engine/executor/CameraGlideSourceExecutorFactory$ThumbnailSourceThreadFactory;


# direct methods
.method constructor <init>(Lcom/bumptech/glide/load/engine/executor/CameraGlideSourceExecutorFactory$ThumbnailSourceThreadFactory;Ljava/lang/Runnable;Ljava/lang/String;)V
    .registers 4

    .line 242
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/executor/CameraGlideSourceExecutorFactory$ThumbnailSourceThreadFactory$1;->this$0:Lcom/bumptech/glide/load/engine/executor/CameraGlideSourceExecutorFactory$ThumbnailSourceThreadFactory;

    invoke-direct {p0, p2, p3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 245
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/executor/CameraGlideSourceExecutorFactory$ThumbnailSourceThreadFactory$1;->this$0:Lcom/bumptech/glide/load/engine/executor/CameraGlideSourceExecutorFactory$ThumbnailSourceThreadFactory;

    invoke-static {v0}, Lcom/bumptech/glide/load/engine/executor/CameraGlideSourceExecutorFactory$ThumbnailSourceThreadFactory;->-$$Nest$fgetmPreventNetworkOperations(Lcom/bumptech/glide/load/engine/executor/CameraGlideSourceExecutorFactory$ThumbnailSourceThreadFactory;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 246
    new-instance v0, Landroid/os/StrictMode$ThreadPolicy$Builder;

    invoke-direct {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;-><init>()V

    .line 248
    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->detectNetwork()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v0

    .line 249
    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->penaltyDeath()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v0

    .line 250
    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->build()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    .line 246
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 253
    :cond_1c
    :try_start_1c
    invoke-super {p0}, Ljava/lang/Thread;->run()V
    :try_end_1f
    .catchall {:try_start_1c .. :try_end_1f} :catchall_20

    return-void

    :catchall_20
    move-exception v0

    .line 255
    iget-object p0, p0, Lcom/bumptech/glide/load/engine/executor/CameraGlideSourceExecutorFactory$ThumbnailSourceThreadFactory$1;->this$0:Lcom/bumptech/glide/load/engine/executor/CameraGlideSourceExecutorFactory$ThumbnailSourceThreadFactory;

    invoke-static {p0}, Lcom/bumptech/glide/load/engine/executor/CameraGlideSourceExecutorFactory$ThumbnailSourceThreadFactory;->-$$Nest$fgetmUncaughtThrowableStrategy(Lcom/bumptech/glide/load/engine/executor/CameraGlideSourceExecutorFactory$ThumbnailSourceThreadFactory;)Lcom/bumptech/glide/load/engine/executor/GlideExecutor$UncaughtThrowableStrategy;

    move-result-object p0

    invoke-interface {p0, v0}, Lcom/bumptech/glide/load/engine/executor/GlideExecutor$UncaughtThrowableStrategy;->handle(Ljava/lang/Throwable;)V

    return-void
.end method
