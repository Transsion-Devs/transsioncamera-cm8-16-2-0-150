.class public Lcom/transsion/camera/feature/mode/vlog/player/command/SetLoop;
.super Lcom/transsion/camera/feature/mode/vlog/player/command/BaseCommand;
.source "SourceFile"


# instance fields
.field private final mLooping:Z


# direct methods
.method public constructor <init>(Lcom/transsion/camera/feature/mode/vlog/player/IVideoPlayerCommand;ZLcom/transsion/camera/feature/mode/vlog/player/IPlayerManager$IPlayerManagerCallBack;)V
    .registers 4

    .line 24
    invoke-direct {p0, p1, p3}, Lcom/transsion/camera/feature/mode/vlog/player/command/BaseCommand;-><init>(Lcom/transsion/camera/feature/mode/vlog/player/IVideoPlayerCommand;Lcom/transsion/camera/feature/mode/vlog/player/IPlayerManager$IPlayerManagerCallBack;)V

    .line 26
    iput-boolean p2, p0, Lcom/transsion/camera/feature/mode/vlog/player/command/SetLoop;->mLooping:Z

    return-void
.end method


# virtual methods
.method protected performExecute(Lcom/transsion/camera/feature/mode/vlog/player/IVideoPlayerCommand;)V
    .registers 2

    .line 31
    iget-boolean p0, p0, Lcom/transsion/camera/feature/mode/vlog/player/command/SetLoop;->mLooping:Z

    invoke-interface {p1, p0}, Lcom/transsion/camera/feature/mode/vlog/player/IVideoPlayerCommand;->setLoop(Z)V

    return-void
.end method

.method protected stateAfter()Lcom/transsion/camera/feature/mode/vlog/player/PlayerState;
    .registers 1

    .line 41
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/vlog/player/command/BaseCommand;->getPlayerState()Lcom/transsion/camera/feature/mode/vlog/player/PlayerState;

    move-result-object p0

    return-object p0
.end method

.method protected stateBefore()Lcom/transsion/camera/feature/mode/vlog/player/PlayerState;
    .registers 1

    .line 36
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/vlog/player/command/BaseCommand;->getPlayerState()Lcom/transsion/camera/feature/mode/vlog/player/PlayerState;

    move-result-object p0

    return-object p0
.end method
