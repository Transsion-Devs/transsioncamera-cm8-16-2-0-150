.class final Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$ProgressUpdater;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ProgressUpdater"
.end annotation


# instance fields
.field private volatile mUpdating:Z

.field final synthetic this$0:Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;)V
    .registers 2

    .line 740
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$ProgressUpdater;->this$0:Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$ProgressUpdater;-><init>(Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;)V

    return-void
.end method


# virtual methods
.method pause()V
    .registers 2

    const/4 v0, 0x0

    .line 752
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$ProgressUpdater;->mUpdating:Z

    .line 753
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$ProgressUpdater;->this$0:Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;->-$$Nest$fgetmMainHandler(Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public run()V
    .registers 4

    .line 765
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$ProgressUpdater;->this$0:Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;->-$$Nest$mnotifyProgressUpdated(Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;)V

    .line 766
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$ProgressUpdater;->mUpdating:Z

    if-eqz v0, :cond_14

    .line 767
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$ProgressUpdater;->this$0:Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;->-$$Nest$fgetmMainHandler(Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_14
    return-void
.end method

.method start()V
    .registers 2

    const/4 v0, 0x1

    .line 746
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$ProgressUpdater;->mUpdating:Z

    .line 747
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$ProgressUpdater;->this$0:Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;->-$$Nest$fgetmMainHandler(Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method stop()V
    .registers 2

    const/4 v0, 0x0

    .line 758
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$ProgressUpdater;->mUpdating:Z

    .line 759
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$ProgressUpdater;->this$0:Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;->-$$Nest$fgetmMainHandler(Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method
