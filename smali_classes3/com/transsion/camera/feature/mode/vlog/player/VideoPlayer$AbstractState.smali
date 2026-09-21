.class abstract Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$AbstractState;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$Command;
.implements Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$InnerCommand;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "AbstractState"
.end annotation


# instance fields
.field protected final mName:Ljava/lang/String;

.field final synthetic this$0:Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;


# direct methods
.method public constructor <init>(Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;Ljava/lang/String;)V
    .registers 3

    .line 303
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$AbstractState;->this$0:Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 304
    iput-object p2, p0, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$AbstractState;->mName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method final enter()V
    .registers 4

    .line 308
    invoke-static {}, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;->-$$Nest$sfgetmTag()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " State changed:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 309
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$AbstractState;->this$0:Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;

    invoke-static {v2}, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;->-$$Nest$fgetmCurrentState(Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;)Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$AbstractState;

    move-result-object v2

    if-eqz v2, :cond_1f

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$AbstractState;->this$0:Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;

    invoke-static {v2}, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;->-$$Nest$fgetmCurrentState(Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;)Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$AbstractState;

    move-result-object v2

    iget-object v2, v2, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$AbstractState;->mName:Ljava/lang/String;

    goto :goto_21

    :cond_1f
    const-string v2, ""

    :goto_21
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$AbstractState;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 308
    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 310
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$AbstractState;->this$0:Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;

    invoke-static {v0, p0}, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;->-$$Nest$fputmCurrentState(Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$AbstractState;)V

    .line 311
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$AbstractState;->onEnter()V

    return-void
.end method

.method public isPlaying()Z
    .registers 1

    .line 383
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$AbstractState;->this$0:Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;->-$$Nest$fgetmMediaPlayer(Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;)Landroid/media/MediaPlayer;

    move-result-object p0

    invoke-virtual {p0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result p0

    return p0
.end method

.method public mediaPlayerComplete()V
    .registers 1

    .line 393
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$AbstractState;->this$0:Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;->-$$Nest$fgetmPlayBackCompleteState(Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;)Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$AbstractState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$AbstractState;->enter()V

    return-void
.end method

.method public mediaPlayerError()V
    .registers 1

    .line 398
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$AbstractState;->this$0:Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;->-$$Nest$fgetmErrorState(Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;)Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$AbstractState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$AbstractState;->enter()V

    return-void
.end method

.method protected onEnter()V
    .registers 1

    return-void
.end method

.method public pause()V
    .registers 4

    .line 362
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cannot pause at state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$AbstractState;->mName:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public prepare()V
    .registers 4

    .line 342
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cannot prepare at state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$AbstractState;->mName:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public release()V
    .registers 1

    .line 379
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$AbstractState;->this$0:Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;->-$$Nest$fgetmEndState(Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;)Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$AbstractState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$AbstractState;->enter()V

    return-void
.end method

.method public reset()V
    .registers 2

    .line 372
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$AbstractState;->this$0:Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;->-$$Nest$mstopProgressUpdater(Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;)V

    .line 373
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$AbstractState;->this$0:Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;->-$$Nest$fgetmMediaPlayer(Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 374
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$AbstractState;->this$0:Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;->-$$Nest$fgetmIdleState(Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;)Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$AbstractState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$AbstractState;->enter()V

    return-void
.end method

.method public seekTo(I)V
    .registers 4

    .line 357
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cannot seekTo at state "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$AbstractState;->mName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setDataSource(Landroid/content/res/AssetFileDescriptor;)V
    .registers 4

    .line 325
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cannot setDataSource at state "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$AbstractState;->mName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setDataSource(Ljava/lang/String;)V
    .registers 4

    .line 320
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cannot setDataSource at state "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$AbstractState;->mName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setLooping(Z)V
    .registers 2

    return-void
.end method

.method public setSurfaceTexture(Landroid/graphics/SurfaceTexture;)V
    .registers 4

    .line 330
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$AbstractState;->this$0:Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;->-$$Nest$fgetmMediaType(Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;)Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$MediaType;

    move-result-object v0

    sget-object v1, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$MediaType;->VIDEO:Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$MediaType;

    if-ne v0, v1, :cond_14

    .line 331
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$AbstractState;->this$0:Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;

    new-instance v0, Landroid/view/Surface;

    invoke-direct {v0, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    invoke-static {p0, v0}, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;->-$$Nest$fputmSurface(Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;Landroid/view/Surface;)V

    :cond_14
    return-void
.end method

.method public setVolume(FF)V
    .registers 4

    .line 352
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "cannot set volume at state "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$AbstractState;->mName:Ljava/lang/String;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public start()V
    .registers 4

    .line 347
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cannot start at state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$AbstractState;->mName:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public stop()V
    .registers 4

    .line 367
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cannot stop at state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$AbstractState;->mName:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public updateProgress()V
    .registers 1

    return-void
.end method
