.class Lcom/transsion/camera/feature/mode/vlog/player/PlayerManager$2;
.super Ljava/util/ArrayList;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/feature/mode/vlog/player/PlayerManager;->startPlayback(Lcom/transsion/camera/feature/mode/vlog/widget/VideoView;Landroid/content/res/AssetFileDescriptor;ZIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList<",
        "Lcom/transsion/camera/feature/mode/vlog/player/command/BaseCommand;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/mode/vlog/player/PlayerManager;

.field final synthetic val$assetFileDescriptor:Landroid/content/res/AssetFileDescriptor;

.field final synthetic val$realLooping:Z

.field final synthetic val$seekToTime:I

.field final synthetic val$videoView:Lcom/transsion/camera/feature/mode/vlog/widget/VideoView;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/mode/vlog/player/PlayerManager;Lcom/transsion/camera/feature/mode/vlog/widget/VideoView;ZLandroid/content/res/AssetFileDescriptor;I)V
    .registers 7

    .line 193
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/player/PlayerManager$2;->this$0:Lcom/transsion/camera/feature/mode/vlog/player/PlayerManager;

    iput-object p2, p0, Lcom/transsion/camera/feature/mode/vlog/player/PlayerManager$2;->val$videoView:Lcom/transsion/camera/feature/mode/vlog/widget/VideoView;

    iput-boolean p3, p0, Lcom/transsion/camera/feature/mode/vlog/player/PlayerManager$2;->val$realLooping:Z

    iput-object p4, p0, Lcom/transsion/camera/feature/mode/vlog/player/PlayerManager$2;->val$assetFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    iput p5, p0, Lcom/transsion/camera/feature/mode/vlog/player/PlayerManager$2;->val$seekToTime:I

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 195
    new-instance v0, Lcom/transsion/camera/feature/mode/vlog/player/command/CreatePlayer;

    invoke-direct {v0, p2, p1}, Lcom/transsion/camera/feature/mode/vlog/player/command/CreatePlayer;-><init>(Lcom/transsion/camera/feature/mode/vlog/player/IVideoPlayerCommand;Lcom/transsion/camera/feature/mode/vlog/player/IPlayerManager$IPlayerManagerCallBack;)V

    invoke-virtual {p0, v0}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 196
    new-instance v0, Lcom/transsion/camera/feature/mode/vlog/player/command/SetLoop;

    invoke-direct {v0, p2, p3, p1}, Lcom/transsion/camera/feature/mode/vlog/player/command/SetLoop;-><init>(Lcom/transsion/camera/feature/mode/vlog/player/IVideoPlayerCommand;ZLcom/transsion/camera/feature/mode/vlog/player/IPlayerManager$IPlayerManagerCallBack;)V

    invoke-virtual {p0, v0}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 197
    new-instance p3, Lcom/transsion/camera/feature/mode/vlog/player/command/SetAssetsDataSource;

    invoke-direct {p3, p2, p4, p1}, Lcom/transsion/camera/feature/mode/vlog/player/command/SetAssetsDataSource;-><init>(Lcom/transsion/camera/feature/mode/vlog/player/IVideoPlayerCommand;Landroid/content/res/AssetFileDescriptor;Lcom/transsion/camera/feature/mode/vlog/player/IPlayerManager$IPlayerManagerCallBack;)V

    invoke-virtual {p0, p3}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 198
    new-instance p3, Lcom/transsion/camera/feature/mode/vlog/player/command/Prepare;

    invoke-direct {p3, p2, p1}, Lcom/transsion/camera/feature/mode/vlog/player/command/Prepare;-><init>(Lcom/transsion/camera/feature/mode/vlog/player/IVideoPlayerCommand;Lcom/transsion/camera/feature/mode/vlog/player/IPlayerManager$IPlayerManagerCallBack;)V

    invoke-virtual {p0, p3}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 199
    new-instance p3, Lcom/transsion/camera/feature/mode/vlog/player/command/Seek;

    invoke-direct {p3, p2, p5, p1}, Lcom/transsion/camera/feature/mode/vlog/player/command/Seek;-><init>(Lcom/transsion/camera/feature/mode/vlog/player/IVideoPlayerCommand;ILcom/transsion/camera/feature/mode/vlog/player/IPlayerManager$IPlayerManagerCallBack;)V

    invoke-virtual {p0, p3}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 200
    new-instance p3, Lcom/transsion/camera/feature/mode/vlog/player/command/Start;

    invoke-direct {p3, p2, p1}, Lcom/transsion/camera/feature/mode/vlog/player/command/Start;-><init>(Lcom/transsion/camera/feature/mode/vlog/player/IVideoPlayerCommand;Lcom/transsion/camera/feature/mode/vlog/player/IPlayerManager$IPlayerManagerCallBack;)V

    invoke-virtual {p0, p3}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    return-void
.end method
