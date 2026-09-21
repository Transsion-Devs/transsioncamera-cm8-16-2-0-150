.class Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$Idle;
.super Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$AbstractState;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Idle"
.end annotation


# instance fields
.field private mHasDataSource:Z

.field final synthetic this$0:Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;


# direct methods
.method public constructor <init>(Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;)V
    .registers 3

    .line 407
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$Idle;->this$0:Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;

    .line 408
    const-string v0, "Idle"

    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$AbstractState;-><init>(Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;Ljava/lang/String;)V

    return-void
.end method

.method private canLeave()Z
    .registers 1

    .line 418
    iget-boolean p0, p0, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$Idle;->mHasDataSource:Z

    return p0
.end method

.method private tryLeave()V
    .registers 2

    .line 422
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$Idle;->canLeave()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 423
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$Idle;->this$0:Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;->-$$Nest$fgetmInitializedState(Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;)Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$AbstractState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$AbstractState;->enter()V

    :cond_f
    return-void
.end method


# virtual methods
.method public isPlaying()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method protected onEnter()V
    .registers 3

    .line 413
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$Idle;->this$0:Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;->-$$Nest$fputmSurface(Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;Landroid/view/Surface;)V

    const/4 v0, 0x0

    .line 414
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$Idle;->mHasDataSource:Z

    return-void
.end method

.method public setDataSource(Landroid/content/res/AssetFileDescriptor;)V
    .registers 9

    .line 439
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$Idle;->this$0:Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;->-$$Nest$fgetmMediaPlayer(Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;)Landroid/media/MediaPlayer;

    move-result-object v1

    .line 440
    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    .line 441
    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v3

    .line 442
    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v5

    .line 439
    invoke-virtual/range {v1 .. v6}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    const/4 p1, 0x1

    .line 443
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$Idle;->mHasDataSource:Z

    .line 444
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$Idle;->tryLeave()V

    return-void
.end method

.method public setDataSource(Ljava/lang/String;)V
    .registers 4

    .line 429
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 430
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 431
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$Idle;->this$0:Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;->-$$Nest$fgetmMediaPlayer(Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 432
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$Idle;->mHasDataSource:Z

    .line 434
    :cond_1d
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$Idle;->tryLeave()V

    return-void
.end method

.method public setLooping(Z)V
    .registers 2

    .line 449
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$Idle;->this$0:Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;->-$$Nest$fgetmMediaPlayer(Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;)Landroid/media/MediaPlayer;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/media/MediaPlayer;->setLooping(Z)V

    return-void
.end method
