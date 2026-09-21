.class Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$Started;
.super Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$AbstractState;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Started"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;


# direct methods
.method public constructor <init>(Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;)V
    .registers 3

    .line 515
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$Started;->this$0:Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;

    .line 516
    const-string v0, "Started"

    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$AbstractState;-><init>(Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;Ljava/lang/String;)V

    return-void
.end method

.method private applySurface()V
    .registers 3

    .line 567
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$Started;->this$0:Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;->-$$Nest$fgetmMediaType(Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;)Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$MediaType;

    move-result-object v0

    sget-object v1, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$MediaType;->VIDEO:Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$MediaType;

    if-ne v0, v1, :cond_2a

    .line 568
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$Started;->this$0:Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;->-$$Nest$fgetmSurface(Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;)Landroid/view/Surface;

    move-result-object v0

    if-eqz v0, :cond_22

    .line 571
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$Started;->this$0:Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;->-$$Nest$fgetmMediaPlayer(Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;)Landroid/media/MediaPlayer;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$Started;->this$0:Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;->-$$Nest$fgetmSurface(Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;)Landroid/view/Surface;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V

    return-void

    .line 569
    :cond_22
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "mSurface is null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2a
    return-void
.end method


# virtual methods
.method protected onEnter()V
    .registers 2

    .line 521
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$Started;->applySurface()V

    .line 522
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$Started;->this$0:Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;->-$$Nest$fgetmMediaPlayer(Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 523
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$Started;->this$0:Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;->-$$Nest$mstartProgressUpdater(Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;)V

    .line 524
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$Started;->this$0:Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;->-$$Nest$fgetmPlayerListener(Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;)Lcom/transsion/camera/feature/mode/vlog/player/IVideoPlayer$IVideoPlayerListener;

    move-result-object v0

    if-eqz v0, :cond_22

    .line 525
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$Started;->this$0:Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;->-$$Nest$fgetmPlayerListener(Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;)Lcom/transsion/camera/feature/mode/vlog/player/IVideoPlayer$IVideoPlayerListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/camera/feature/mode/vlog/player/IVideoPlayer$IVideoPlayerListener;->onStarted()V

    :cond_22
    return-void
.end method

.method public pause()V
    .registers 1

    .line 558
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$Started;->this$0:Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;->-$$Nest$fgetmPausedState(Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;)Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$AbstractState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$AbstractState;->enter()V

    return-void
.end method

.method public seekTo(I)V
    .registers 4

    .line 532
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$Started;->this$0:Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;->-$$Nest$fgetmMediaPlayer(Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;)Landroid/media/MediaPlayer;

    move-result-object p0

    int-to-long v0, p1

    const/4 p1, 0x3

    invoke-virtual {p0, v0, v1, p1}, Landroid/media/MediaPlayer;->seekTo(JI)V

    return-void
.end method

.method public setSurfaceTexture(Landroid/graphics/SurfaceTexture;)V
    .registers 4

    .line 578
    invoke-static {}, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;->-$$Nest$sfgetmTag()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setSurfaceTexture at state "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$AbstractState;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 580
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$Started;->this$0:Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;->-$$Nest$fgetmErrorState(Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;)Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$AbstractState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$AbstractState;->enter()V

    return-void
.end method

.method public setVolume(FF)V
    .registers 3

    .line 540
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$Started;->this$0:Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;->-$$Nest$fgetmMediaPlayer(Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;)Landroid/media/MediaPlayer;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Landroid/media/MediaPlayer;->setVolume(FF)V

    return-void
.end method

.method public start()V
    .registers 1

    .line 553
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$Started;->this$0:Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;->-$$Nest$fgetmStartedState(Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;)Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$AbstractState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$AbstractState;->enter()V

    return-void
.end method

.method public stop()V
    .registers 1

    .line 563
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$Started;->this$0:Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;->-$$Nest$fgetmStoppedState(Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;)Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$AbstractState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$AbstractState;->enter()V

    return-void
.end method

.method public updateProgress()V
    .registers 2

    .line 545
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$Started;->this$0:Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;->-$$Nest$fgetmProgressListener(Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;)Lcom/transsion/camera/feature/mode/vlog/player/IVideoPlayer$IVideoProgressListener;

    move-result-object v0

    if-eqz v0, :cond_1b

    .line 546
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$Started;->this$0:Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;->-$$Nest$fgetmProgressListener(Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;)Lcom/transsion/camera/feature/mode/vlog/player/IVideoPlayer$IVideoProgressListener;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$Started;->this$0:Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;->-$$Nest$fgetmMediaPlayer(Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;)Landroid/media/MediaPlayer;

    move-result-object p0

    .line 547
    invoke-virtual {p0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result p0

    .line 546
    invoke-interface {v0, p0}, Lcom/transsion/camera/feature/mode/vlog/player/IVideoPlayer$IVideoProgressListener;->onProgressUpdate(I)V

    :cond_1b
    return-void
.end method
