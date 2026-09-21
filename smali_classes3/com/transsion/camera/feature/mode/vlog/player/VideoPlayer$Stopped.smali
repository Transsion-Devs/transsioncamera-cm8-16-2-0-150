.class Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$Stopped;
.super Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$AbstractState;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Stopped"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;


# direct methods
.method public constructor <init>(Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;)V
    .registers 3

    .line 633
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$Stopped;->this$0:Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;

    .line 634
    const-string v0, "Stopped"

    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$AbstractState;-><init>(Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected onEnter()V
    .registers 2

    .line 639
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$Stopped;->this$0:Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;->-$$Nest$mstopProgressUpdater(Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;)V

    .line 640
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$Stopped;->this$0:Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;->-$$Nest$fgetmMediaPlayer(Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 641
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$Stopped;->this$0:Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;->-$$Nest$fgetmPlayerListener(Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;)Lcom/transsion/camera/feature/mode/vlog/player/IVideoPlayer$IVideoPlayerListener;

    move-result-object v0

    if-eqz v0, :cond_1f

    .line 642
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$Stopped;->this$0:Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;->-$$Nest$fgetmPlayerListener(Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;)Lcom/transsion/camera/feature/mode/vlog/player/IVideoPlayer$IVideoPlayerListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/camera/feature/mode/vlog/player/IVideoPlayer$IVideoPlayerListener;->onStopped()V

    :cond_1f
    return-void
.end method

.method public start()V
    .registers 1

    .line 648
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$Stopped;->this$0:Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;->-$$Nest$fgetmStartedState(Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;)Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$AbstractState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$AbstractState;->enter()V

    return-void
.end method
