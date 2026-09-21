.class public Lcom/transsion/camera/feature/mode/vlog/player/command/SetVolume;
.super Lcom/transsion/camera/feature/mode/vlog/player/command/BaseCommand;
.source "SourceFile"


# instance fields
.field private final mVolume:F


# direct methods
.method public constructor <init>(Lcom/transsion/camera/feature/mode/vlog/player/IVideoPlayerCommand;FLcom/transsion/camera/feature/mode/vlog/player/IPlayerManager$IPlayerManagerCallBack;)V
    .registers 4

    .line 27
    invoke-direct {p0, p1, p3}, Lcom/transsion/camera/feature/mode/vlog/player/command/BaseCommand;-><init>(Lcom/transsion/camera/feature/mode/vlog/player/IVideoPlayerCommand;Lcom/transsion/camera/feature/mode/vlog/player/IPlayerManager$IPlayerManagerCallBack;)V

    .line 29
    iput p2, p0, Lcom/transsion/camera/feature/mode/vlog/player/command/SetVolume;->mVolume:F

    return-void
.end method


# virtual methods
.method protected performExecute(Lcom/transsion/camera/feature/mode/vlog/player/IVideoPlayerCommand;)V
    .registers 2

    .line 34
    iget p0, p0, Lcom/transsion/camera/feature/mode/vlog/player/command/SetVolume;->mVolume:F

    invoke-interface {p1, p0}, Lcom/transsion/camera/feature/mode/vlog/player/IVideoPlayerCommand;->setVolume(F)V

    return-void
.end method

.method protected stateAfter()Lcom/transsion/camera/feature/mode/vlog/player/PlayerState;
    .registers 1

    .line 44
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/vlog/player/command/BaseCommand;->getPlayerState()Lcom/transsion/camera/feature/mode/vlog/player/PlayerState;

    move-result-object p0

    return-object p0
.end method

.method protected stateBefore()Lcom/transsion/camera/feature/mode/vlog/player/PlayerState;
    .registers 1

    .line 39
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/vlog/player/command/BaseCommand;->getPlayerState()Lcom/transsion/camera/feature/mode/vlog/player/PlayerState;

    move-result-object p0

    return-object p0
.end method
