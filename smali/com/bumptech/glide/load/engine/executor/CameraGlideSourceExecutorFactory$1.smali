.class Lcom/bumptech/glide/load/engine/executor/CameraGlideSourceExecutorFactory$1;
.super Ljava/util/concurrent/ThreadPoolExecutor;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bumptech/glide/load/engine/executor/CameraGlideSourceExecutorFactory;->createSourceExecutor()Lcom/bumptech/glide/load/engine/executor/GlideExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V
    .registers 8

    .line 62
    invoke-direct/range {p0 .. p7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    return-void
.end method


# virtual methods
.method protected beforeExecute(Ljava/lang/Thread;Ljava/lang/Runnable;)V
    .registers 4

    .line 65
    invoke-static {}, Lcom/transsion/camera/feature/thumbnailtransition/ThumbnailGlideDecodeSession;->isActive()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 67
    invoke-static {}, Lcom/transsion/camera/feature/thumbnailtransition/ThumbnailGlideDecodeSession;->getPriorityForNextSourceTask()I

    move-result v0

    .line 66
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 69
    :cond_d
    invoke-super {p0, p1, p2}, Ljava/util/concurrent/ThreadPoolExecutor;->beforeExecute(Ljava/lang/Thread;Ljava/lang/Runnable;)V

    return-void
.end method
