.class final Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$ProgressListenerWrapper;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/feature/mode/vlog/player/IVideoPlayer$IVideoProgressListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ProgressListenerWrapper"
.end annotation


# instance fields
.field private final mDelegate:Lcom/transsion/camera/feature/mode/vlog/player/IVideoPlayer$IVideoProgressListener;

.field private final mMainHandler:Landroid/os/Handler;

.field private final mProgress:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final mUpdateRunnable:Ljava/lang/Runnable;


# direct methods
.method static bridge synthetic -$$Nest$fgetmDelegate(Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$ProgressListenerWrapper;)Lcom/transsion/camera/feature/mode/vlog/player/IVideoPlayer$IVideoProgressListener;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$ProgressListenerWrapper;->mDelegate:Lcom/transsion/camera/feature/mode/vlog/player/IVideoPlayer$IVideoProgressListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmProgress(Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$ProgressListenerWrapper;)Ljava/util/concurrent/atomic/AtomicInteger;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$ProgressListenerWrapper;->mProgress:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object p0
.end method

.method private constructor <init>(Landroid/os/Handler;Lcom/transsion/camera/feature/mode/vlog/player/IVideoPlayer$IVideoProgressListener;)V
    .registers 4

    .line 884
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 870
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$ProgressListenerWrapper;->mProgress:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 875
    new-instance v0, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$ProgressListenerWrapper$1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$ProgressListenerWrapper$1;-><init>(Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$ProgressListenerWrapper;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$ProgressListenerWrapper;->mUpdateRunnable:Ljava/lang/Runnable;

    .line 885
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$ProgressListenerWrapper;->mMainHandler:Landroid/os/Handler;

    .line 886
    iput-object p2, p0, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$ProgressListenerWrapper;->mDelegate:Lcom/transsion/camera/feature/mode/vlog/player/IVideoPlayer$IVideoProgressListener;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Handler;Lcom/transsion/camera/feature/mode/vlog/player/IVideoPlayer$IVideoProgressListener;Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer-IA;)V
    .registers 4

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$ProgressListenerWrapper;-><init>(Landroid/os/Handler;Lcom/transsion/camera/feature/mode/vlog/player/IVideoPlayer$IVideoProgressListener;)V

    return-void
.end method

.method private checkMainThread()Z
    .registers 2

    .line 900
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-ne p0, v0, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public onProgressUpdate(I)V
    .registers 3

    .line 891
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$ProgressListenerWrapper;->checkMainThread()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 892
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$ProgressListenerWrapper;->mDelegate:Lcom/transsion/camera/feature/mode/vlog/player/IVideoPlayer$IVideoProgressListener;

    invoke-interface {p0, p1}, Lcom/transsion/camera/feature/mode/vlog/player/IVideoPlayer$IVideoProgressListener;->onProgressUpdate(I)V

    return-void

    .line 894
    :cond_c
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$ProgressListenerWrapper;->mProgress:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 895
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$ProgressListenerWrapper;->mMainHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$ProgressListenerWrapper;->mUpdateRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
