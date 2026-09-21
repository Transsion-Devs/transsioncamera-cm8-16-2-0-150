.class public Lcom/transsion/camera/feature/mode/vlog/player/command/SetVideoView;
.super Lcom/transsion/camera/feature/mode/vlog/player/command/BaseCommand;
.source "SourceFile"


# instance fields
.field private final mCallback:Lcom/transsion/camera/feature/mode/vlog/player/IPlayerManager$IPlayerManagerCallBack;

.field private final mVideoView:Lcom/transsion/camera/feature/mode/vlog/widget/VideoView;


# direct methods
.method public constructor <init>(Lcom/transsion/camera/feature/mode/vlog/player/IVideoPlayerCommand;Lcom/transsion/camera/feature/mode/vlog/widget/VideoView;Lcom/transsion/camera/feature/mode/vlog/player/IPlayerManager$IPlayerManagerCallBack;)V
    .registers 4

    .line 28
    invoke-direct {p0, p1, p3}, Lcom/transsion/camera/feature/mode/vlog/player/command/BaseCommand;-><init>(Lcom/transsion/camera/feature/mode/vlog/player/IVideoPlayerCommand;Lcom/transsion/camera/feature/mode/vlog/player/IPlayerManager$IPlayerManagerCallBack;)V

    .line 29
    iput-object p2, p0, Lcom/transsion/camera/feature/mode/vlog/player/command/SetVideoView;->mVideoView:Lcom/transsion/camera/feature/mode/vlog/widget/VideoView;

    .line 30
    iput-object p3, p0, Lcom/transsion/camera/feature/mode/vlog/player/command/SetVideoView;->mCallback:Lcom/transsion/camera/feature/mode/vlog/player/IPlayerManager$IPlayerManagerCallBack;

    return-void
.end method


# virtual methods
.method protected performExecute(Lcom/transsion/camera/feature/mode/vlog/player/IVideoPlayerCommand;)V
    .registers 2

    .line 41
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/player/command/SetVideoView;->mCallback:Lcom/transsion/camera/feature/mode/vlog/player/IPlayerManager$IPlayerManagerCallBack;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/player/command/SetVideoView;->mVideoView:Lcom/transsion/camera/feature/mode/vlog/widget/VideoView;

    invoke-interface {p1, p0}, Lcom/transsion/camera/feature/mode/vlog/player/IPlayerManager$IPlayerManagerCallBack;->setVideoView(Lcom/transsion/camera/feature/mode/vlog/widget/VideoView;)V

    return-void
.end method

.method protected stateAfter()Lcom/transsion/camera/feature/mode/vlog/player/PlayerState;
    .registers 1

    .line 51
    sget-object p0, Lcom/transsion/camera/feature/mode/vlog/player/PlayerState;->IDLE:Lcom/transsion/camera/feature/mode/vlog/player/PlayerState;

    return-object p0
.end method

.method protected stateBefore()Lcom/transsion/camera/feature/mode/vlog/player/PlayerState;
    .registers 1

    .line 46
    sget-object p0, Lcom/transsion/camera/feature/mode/vlog/player/PlayerState;->SETTING_NEW_VIEW:Lcom/transsion/camera/feature/mode/vlog/player/PlayerState;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/transsion/camera/feature/mode/vlog/player/command/SetVideoView;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mVideoView "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/player/command/SetVideoView;->mVideoView:Lcom/transsion/camera/feature/mode/vlog/widget/VideoView;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
