.class public Lcom/transsion/camera/feature/mode/vlog/player/command/SetAssetsDataSource;
.super Lcom/transsion/camera/feature/mode/vlog/player/command/SetDataSource;
.source "SourceFile"


# instance fields
.field private mAssetFileDescriptor:Landroid/content/res/AssetFileDescriptor;


# direct methods
.method public constructor <init>(Lcom/transsion/camera/feature/mode/vlog/player/IVideoPlayerCommand;Landroid/content/res/AssetFileDescriptor;Lcom/transsion/camera/feature/mode/vlog/player/IPlayerManager$IPlayerManagerCallBack;)V
    .registers 4

    .line 25
    invoke-direct {p0, p1, p3}, Lcom/transsion/camera/feature/mode/vlog/player/command/SetDataSource;-><init>(Lcom/transsion/camera/feature/mode/vlog/player/IVideoPlayerCommand;Lcom/transsion/camera/feature/mode/vlog/player/IPlayerManager$IPlayerManagerCallBack;)V

    .line 26
    iput-object p2, p0, Lcom/transsion/camera/feature/mode/vlog/player/command/SetAssetsDataSource;->mAssetFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    return-void
.end method


# virtual methods
.method protected performExecute(Lcom/transsion/camera/feature/mode/vlog/player/IVideoPlayerCommand;)V
    .registers 2

    .line 31
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/player/command/SetAssetsDataSource;->mAssetFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    invoke-interface {p1, p0}, Lcom/transsion/camera/feature/mode/vlog/player/IVideoPlayerCommand;->setDataSource(Landroid/content/res/AssetFileDescriptor;)V

    return-void
.end method
