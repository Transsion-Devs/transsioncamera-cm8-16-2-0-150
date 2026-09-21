.class Lcom/transsion/camera/feature/mode/vlog/player/PlayerManager$3;
.super Ljava/util/ArrayList;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/feature/mode/vlog/player/PlayerManager;->onCompleted()V
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


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/mode/vlog/player/PlayerManager;)V
    .registers 5

    .line 428
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/player/PlayerManager$3;->this$0:Lcom/transsion/camera/feature/mode/vlog/player/PlayerManager;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 430
    new-instance v0, Lcom/transsion/camera/feature/mode/vlog/player/command/Seek;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/vlog/player/PlayerManager;->-$$Nest$fgetmVideoView(Lcom/transsion/camera/feature/mode/vlog/player/PlayerManager;)Lcom/transsion/camera/feature/mode/vlog/widget/VideoView;

    move-result-object v1

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/vlog/player/PlayerManager;->-$$Nest$fgetmSourceStartTime(Lcom/transsion/camera/feature/mode/vlog/player/PlayerManager;)I

    move-result v2

    invoke-direct {v0, v1, v2, p1}, Lcom/transsion/camera/feature/mode/vlog/player/command/Seek;-><init>(Lcom/transsion/camera/feature/mode/vlog/player/IVideoPlayerCommand;ILcom/transsion/camera/feature/mode/vlog/player/IPlayerManager$IPlayerManagerCallBack;)V

    invoke-virtual {p0, v0}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    return-void
.end method
