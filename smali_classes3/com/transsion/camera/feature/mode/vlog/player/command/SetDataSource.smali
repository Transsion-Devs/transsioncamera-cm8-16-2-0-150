.class public abstract Lcom/transsion/camera/feature/mode/vlog/player/command/SetDataSource;
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
.method protected stateAfter()Lcom/transsion/camera/feature/mode/vlog/player/PlayerState;
    .registers 1

    .line 31
    sget-object p0, Lcom/transsion/camera/feature/mode/vlog/player/PlayerState;->DATA_SOURCE_SET:Lcom/transsion/camera/feature/mode/vlog/player/PlayerState;

    return-object p0
.end method

.method protected stateBefore()Lcom/transsion/camera/feature/mode/vlog/player/PlayerState;
    .registers 1

    .line 26
    sget-object p0, Lcom/transsion/camera/feature/mode/vlog/player/PlayerState;->SETTING_DATA_SOURCE:Lcom/transsion/camera/feature/mode/vlog/player/PlayerState;

    return-object p0
.end method
