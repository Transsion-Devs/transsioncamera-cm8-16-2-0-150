.class Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$Initialized;
.super Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$AbstractState;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Initialized"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;


# direct methods
.method public constructor <init>(Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;)V
    .registers 3

    .line 461
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$Initialized;->this$0:Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;

    .line 462
    const-string v0, "Initialized"

    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$AbstractState;-><init>(Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public prepare()V
    .registers 4

    .line 468
    :try_start_0
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$Initialized;->this$0:Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;->-$$Nest$fgetmMediaPlayer(Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V

    .line 469
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$Initialized;->this$0:Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;->-$$Nest$fgetmPreparedState(Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;)Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$AbstractState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$AbstractState;->enter()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_12} :catch_13

    return-void

    :catch_13
    move-exception v0

    .line 471
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$Initialized;->this$0:Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;->-$$Nest$fputmMediaPlayerErrorWhat(Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;I)V

    .line 472
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$Initialized;->this$0:Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;

    const/16 v2, -0x3ec

    invoke-static {v1, v2}, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;->-$$Nest$fputmMediaPlayerErrorExtra(Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;I)V

    .line 473
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$Initialized;->this$0:Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;->-$$Nest$fgetmErrorState(Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;)Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$AbstractState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$AbstractState;->enter()V

    .line 474
    throw v0
.end method
