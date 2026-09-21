.class public Lcom/transsion/camera/feature/mode/vlog/player/command/SetPathDataSource;
.super Lcom/transsion/camera/feature/mode/vlog/player/command/SetDataSource;
.source "SourceFile"


# instance fields
.field private mVideoPath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/transsion/camera/feature/mode/vlog/player/IVideoPlayerCommand;Ljava/lang/String;Lcom/transsion/camera/feature/mode/vlog/player/IPlayerManager$IPlayerManagerCallBack;)V
    .registers 4

    .line 13
    invoke-direct {p0, p1, p3}, Lcom/transsion/camera/feature/mode/vlog/player/command/SetDataSource;-><init>(Lcom/transsion/camera/feature/mode/vlog/player/IVideoPlayerCommand;Lcom/transsion/camera/feature/mode/vlog/player/IPlayerManager$IPlayerManagerCallBack;)V

    .line 14
    iput-object p2, p0, Lcom/transsion/camera/feature/mode/vlog/player/command/SetPathDataSource;->mVideoPath:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected performExecute(Lcom/transsion/camera/feature/mode/vlog/player/IVideoPlayerCommand;)V
    .registers 2

    .line 19
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/player/command/SetPathDataSource;->mVideoPath:Ljava/lang/String;

    invoke-interface {p1, p0}, Lcom/transsion/camera/feature/mode/vlog/player/IVideoPlayerCommand;->setDataSource(Ljava/lang/String;)V

    return-void
.end method
