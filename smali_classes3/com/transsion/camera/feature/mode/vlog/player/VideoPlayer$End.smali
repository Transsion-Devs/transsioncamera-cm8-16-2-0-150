.class Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$End;
.super Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$AbstractState;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "End"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;


# direct methods
.method public constructor <init>(Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;)V
    .registers 3

    .line 699
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$End;->this$0:Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;

    .line 700
    const-string v0, "End"

    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$AbstractState;-><init>(Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public isPlaying()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method protected onEnter()V
    .registers 3

    .line 705
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$End;->this$0:Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;->-$$Nest$fputmSurface(Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;Landroid/view/Surface;)V

    .line 706
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$End;->this$0:Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;

    invoke-static {v0, v1}, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;->-$$Nest$fputmPlayerListener(Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;Lcom/transsion/camera/feature/mode/vlog/player/IVideoPlayer$IVideoPlayerListener;)V

    .line 707
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$End;->this$0:Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;

    invoke-static {v0, v1}, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;->-$$Nest$fputmProgressListener(Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;Lcom/transsion/camera/feature/mode/vlog/player/IVideoPlayer$IVideoProgressListener;)V

    .line 708
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$End;->this$0:Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;->-$$Nest$fgetmMediaPlayer(Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;)Landroid/media/MediaPlayer;

    move-result-object p0

    invoke-virtual {p0}, Landroid/media/MediaPlayer;->release()V

    return-void
.end method
