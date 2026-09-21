.class public Lcom/transsion/camera/feature/mode/vlog/player/command/CreatePlayer;
.super Lcom/transsion/camera/feature/mode/vlog/player/command/BaseCommand;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/transsion/camera/feature/mode/vlog/player/IVideoPlayerCommand;Lcom/transsion/camera/feature/mode/vlog/player/IPlayerManager$IPlayerManagerCallBack;)V
    .registers 3

    .line 21
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/mode/vlog/player/command/BaseCommand;-><init>(Lcom/transsion/camera/feature/mode/vlog/player/IVideoPlayerCommand;Lcom/transsion/camera/feature/mode/vlog/player/IPlayerManager$IPlayerManagerCallBack;)V

    return-void
.end method


# virtual methods
.method protected performExecute(Lcom/transsion/camera/feature/mode/vlog/player/IVideoPlayerCommand;)V
    .registers 2

    .line 26
    invoke-interface {p1}, Lcom/transsion/camera/feature/mode/vlog/player/IVideoPlayerCommand;->createPlayer()V

    return-void
.end method

.method protected stateAfter()Lcom/transsion/camera/feature/mode/vlog/player/PlayerState;
    .registers 1

    .line 36
    sget-object p0, Lcom/transsion/camera/feature/mode/vlog/player/PlayerState;->PLAYER_CREATED:Lcom/transsion/camera/feature/mode/vlog/player/PlayerState;

    return-object p0
.end method

.method protected stateBefore()Lcom/transsion/camera/feature/mode/vlog/player/PlayerState;
    .registers 1

    .line 31
    sget-object p0, Lcom/transsion/camera/feature/mode/vlog/player/PlayerState;->CREATING_PLAYER:Lcom/transsion/camera/feature/mode/vlog/player/PlayerState;

    return-object p0
.end method
