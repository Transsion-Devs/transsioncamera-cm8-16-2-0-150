.class final Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$PlayerListenerWrapper;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/feature/mode/vlog/player/IVideoPlayer$IVideoPlayerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PlayerListenerWrapper"
.end annotation


# instance fields
.field private final mDelegate:Lcom/transsion/camera/feature/mode/vlog/player/IVideoPlayer$IVideoPlayerListener;

.field private final mMainHandler:Landroid/os/Handler;


# direct methods
.method public static synthetic $r8$lambda$54jlwOvBwjYOzwVp23KQBp6wdJA(Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$PlayerListenerWrapper;I)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$PlayerListenerWrapper;->lambda$onInfo$0(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$v1JNYM3yf1fKzWELolj4bVljTrk(Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$PlayerListenerWrapper;II)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$PlayerListenerWrapper;->lambda$onError$1(II)V

    return-void
.end method

.method public static synthetic $r8$lambda$v56xQX9gdqBbXXTUOCRmYU1ejqc(Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$PlayerListenerWrapper;II)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$PlayerListenerWrapper;->lambda$onVideoSizeChanged$2(II)V

    return-void
.end method

.method private constructor <init>(Landroid/os/Handler;Lcom/transsion/camera/feature/mode/vlog/player/IVideoPlayer$IVideoPlayerListener;)V
    .registers 3

    .line 781
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 782
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$PlayerListenerWrapper;->mMainHandler:Landroid/os/Handler;

    .line 783
    iput-object p2, p0, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$PlayerListenerWrapper;->mDelegate:Lcom/transsion/camera/feature/mode/vlog/player/IVideoPlayer$IVideoPlayerListener;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Handler;Lcom/transsion/camera/feature/mode/vlog/player/IVideoPlayer$IVideoPlayerListener;Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer-IA;)V
    .registers 4

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$PlayerListenerWrapper;-><init>(Landroid/os/Handler;Lcom/transsion/camera/feature/mode/vlog/player/IVideoPlayer$IVideoPlayerListener;)V

    return-void
.end method

.method private checkMainThread()Z
    .registers 2

    .line 787
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

.method private synthetic lambda$onError$1(II)V
    .registers 3

    .line 851
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$PlayerListenerWrapper;->mDelegate:Lcom/transsion/camera/feature/mode/vlog/player/IVideoPlayer$IVideoPlayerListener;

    invoke-interface {p0, p1, p2}, Lcom/transsion/camera/feature/mode/vlog/player/IVideoPlayer$IVideoPlayerListener;->onError(II)V

    return-void
.end method

.method private synthetic lambda$onInfo$0(I)V
    .registers 2

    .line 841
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$PlayerListenerWrapper;->mDelegate:Lcom/transsion/camera/feature/mode/vlog/player/IVideoPlayer$IVideoPlayerListener;

    invoke-interface {p0, p1}, Lcom/transsion/camera/feature/mode/vlog/player/IVideoPlayer$IVideoPlayerListener;->onInfo(I)V

    return-void
.end method

.method private synthetic lambda$onVideoSizeChanged$2(II)V
    .registers 3

    .line 861
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$PlayerListenerWrapper;->mDelegate:Lcom/transsion/camera/feature/mode/vlog/player/IVideoPlayer$IVideoPlayerListener;

    invoke-interface {p0, p1, p2}, Lcom/transsion/camera/feature/mode/vlog/player/IVideoPlayer$IVideoPlayerListener;->onVideoSizeChanged(II)V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .registers 3

    .line 828
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$PlayerListenerWrapper;->checkMainThread()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 829
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$PlayerListenerWrapper;->mDelegate:Lcom/transsion/camera/feature/mode/vlog/player/IVideoPlayer$IVideoPlayerListener;

    invoke-interface {p0}, Lcom/transsion/camera/feature/mode/vlog/player/IVideoPlayer$IVideoPlayerListener;->onCompleted()V

    return-void

    .line 831
    :cond_c
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$PlayerListenerWrapper;->mMainHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$PlayerListenerWrapper;->mDelegate:Lcom/transsion/camera/feature/mode/vlog/player/IVideoPlayer$IVideoPlayerListener;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$PlayerListenerWrapper$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$PlayerListenerWrapper$$ExternalSyntheticLambda6;-><init>(Lcom/transsion/camera/feature/mode/vlog/player/IVideoPlayer$IVideoPlayerListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onError(II)V
    .registers 5

    .line 847
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$PlayerListenerWrapper;->checkMainThread()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 848
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$PlayerListenerWrapper;->mDelegate:Lcom/transsion/camera/feature/mode/vlog/player/IVideoPlayer$IVideoPlayerListener;

    invoke-interface {p0, p1, p2}, Lcom/transsion/camera/feature/mode/vlog/player/IVideoPlayer$IVideoPlayerListener;->onError(II)V

    return-void

    .line 850
    :cond_c
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$PlayerListenerWrapper;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$PlayerListenerWrapper$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p1, p2}, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$PlayerListenerWrapper$$ExternalSyntheticLambda4;-><init>(Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$PlayerListenerWrapper;II)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onInfo(I)V
    .registers 4

    .line 837
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$PlayerListenerWrapper;->checkMainThread()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 838
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$PlayerListenerWrapper;->mDelegate:Lcom/transsion/camera/feature/mode/vlog/player/IVideoPlayer$IVideoPlayerListener;

    invoke-interface {p0, p1}, Lcom/transsion/camera/feature/mode/vlog/player/IVideoPlayer$IVideoPlayerListener;->onInfo(I)V

    return-void

    .line 840
    :cond_c
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$PlayerListenerWrapper;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$PlayerListenerWrapper$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$PlayerListenerWrapper$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$PlayerListenerWrapper;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onPaused()V
    .registers 3

    .line 810
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$PlayerListenerWrapper;->checkMainThread()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 811
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$PlayerListenerWrapper;->mDelegate:Lcom/transsion/camera/feature/mode/vlog/player/IVideoPlayer$IVideoPlayerListener;

    invoke-interface {p0}, Lcom/transsion/camera/feature/mode/vlog/player/IVideoPlayer$IVideoPlayerListener;->onPaused()V

    return-void

    .line 813
    :cond_c
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$PlayerListenerWrapper;->mMainHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$PlayerListenerWrapper;->mDelegate:Lcom/transsion/camera/feature/mode/vlog/player/IVideoPlayer$IVideoPlayerListener;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$PlayerListenerWrapper$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$PlayerListenerWrapper$$ExternalSyntheticLambda7;-><init>(Lcom/transsion/camera/feature/mode/vlog/player/IVideoPlayer$IVideoPlayerListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onPrepared()V
    .registers 3

    .line 792
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$PlayerListenerWrapper;->checkMainThread()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 793
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$PlayerListenerWrapper;->mDelegate:Lcom/transsion/camera/feature/mode/vlog/player/IVideoPlayer$IVideoPlayerListener;

    invoke-interface {p0}, Lcom/transsion/camera/feature/mode/vlog/player/IVideoPlayer$IVideoPlayerListener;->onPrepared()V

    return-void

    .line 795
    :cond_c
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$PlayerListenerWrapper;->mMainHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$PlayerListenerWrapper;->mDelegate:Lcom/transsion/camera/feature/mode/vlog/player/IVideoPlayer$IVideoPlayerListener;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$PlayerListenerWrapper$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$PlayerListenerWrapper$$ExternalSyntheticLambda2;-><init>(Lcom/transsion/camera/feature/mode/vlog/player/IVideoPlayer$IVideoPlayerListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onStarted()V
    .registers 3

    .line 801
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$PlayerListenerWrapper;->checkMainThread()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 802
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$PlayerListenerWrapper;->mDelegate:Lcom/transsion/camera/feature/mode/vlog/player/IVideoPlayer$IVideoPlayerListener;

    invoke-interface {p0}, Lcom/transsion/camera/feature/mode/vlog/player/IVideoPlayer$IVideoPlayerListener;->onStarted()V

    return-void

    .line 804
    :cond_c
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$PlayerListenerWrapper;->mMainHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$PlayerListenerWrapper;->mDelegate:Lcom/transsion/camera/feature/mode/vlog/player/IVideoPlayer$IVideoPlayerListener;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$PlayerListenerWrapper$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$PlayerListenerWrapper$$ExternalSyntheticLambda3;-><init>(Lcom/transsion/camera/feature/mode/vlog/player/IVideoPlayer$IVideoPlayerListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onStopped()V
    .registers 3

    .line 819
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$PlayerListenerWrapper;->checkMainThread()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 820
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$PlayerListenerWrapper;->mDelegate:Lcom/transsion/camera/feature/mode/vlog/player/IVideoPlayer$IVideoPlayerListener;

    invoke-interface {p0}, Lcom/transsion/camera/feature/mode/vlog/player/IVideoPlayer$IVideoPlayerListener;->onStopped()V

    return-void

    .line 822
    :cond_c
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$PlayerListenerWrapper;->mMainHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$PlayerListenerWrapper;->mDelegate:Lcom/transsion/camera/feature/mode/vlog/player/IVideoPlayer$IVideoPlayerListener;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$PlayerListenerWrapper$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$PlayerListenerWrapper$$ExternalSyntheticLambda5;-><init>(Lcom/transsion/camera/feature/mode/vlog/player/IVideoPlayer$IVideoPlayerListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onVideoSizeChanged(II)V
    .registers 5

    .line 857
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$PlayerListenerWrapper;->checkMainThread()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 858
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$PlayerListenerWrapper;->mDelegate:Lcom/transsion/camera/feature/mode/vlog/player/IVideoPlayer$IVideoPlayerListener;

    invoke-interface {p0, p1, p2}, Lcom/transsion/camera/feature/mode/vlog/player/IVideoPlayer$IVideoPlayerListener;->onVideoSizeChanged(II)V

    return-void

    .line 860
    :cond_c
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$PlayerListenerWrapper;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$PlayerListenerWrapper$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2}, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$PlayerListenerWrapper$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$PlayerListenerWrapper;II)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
