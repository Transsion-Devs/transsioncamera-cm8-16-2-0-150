.class Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$PlayBackComplete;
.super Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$AbstractState;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PlayBackComplete"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;


# direct methods
.method public constructor <init>(Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;)V
    .registers 3

    .line 655
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$PlayBackComplete;->this$0:Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;

    .line 656
    const-string v0, "PlayBackComplete"

    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$AbstractState;-><init>(Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected onEnter()V
    .registers 2

    .line 661
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$PlayBackComplete;->this$0:Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;->-$$Nest$fgetmPlayerListener(Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;)Lcom/transsion/camera/feature/mode/vlog/player/IVideoPlayer$IVideoPlayerListener;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 662
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$PlayBackComplete;->this$0:Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;->-$$Nest$fgetmPlayerListener(Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;)Lcom/transsion/camera/feature/mode/vlog/player/IVideoPlayer$IVideoPlayerListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/camera/feature/mode/vlog/player/IVideoPlayer$IVideoPlayerListener;->onCompleted()V

    :cond_11
    return-void
.end method

.method public pause()V
    .registers 1

    .line 687
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$PlayBackComplete;->this$0:Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;->-$$Nest$fgetmPausedState(Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;)Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$AbstractState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$AbstractState;->enter()V

    return-void
.end method

.method public seekTo(I)V
    .registers 4

    .line 669
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$PlayBackComplete;->this$0:Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;->-$$Nest$fgetmMediaPlayer(Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;)Landroid/media/MediaPlayer;

    move-result-object p0

    int-to-long v0, p1

    const/4 p1, 0x3

    invoke-virtual {p0, v0, v1, p1}, Landroid/media/MediaPlayer;->seekTo(JI)V

    return-void
.end method

.method public setVolume(FF)V
    .registers 3

    .line 677
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$PlayBackComplete;->this$0:Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;->-$$Nest$fgetmMediaPlayer(Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;)Landroid/media/MediaPlayer;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Landroid/media/MediaPlayer;->setVolume(FF)V

    return-void
.end method

.method public start()V
    .registers 1

    .line 682
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$PlayBackComplete;->this$0:Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;->-$$Nest$fgetmStartedState(Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;)Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$AbstractState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$AbstractState;->enter()V

    return-void
.end method

.method public stop()V
    .registers 1

    .line 692
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$PlayBackComplete;->this$0:Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;->-$$Nest$fgetmStoppedState(Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;)Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$AbstractState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$AbstractState;->enter()V

    return-void
.end method
