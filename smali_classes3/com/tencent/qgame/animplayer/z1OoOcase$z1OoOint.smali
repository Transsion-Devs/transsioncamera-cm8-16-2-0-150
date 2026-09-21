.class final Lcom/tencent/qgame/animplayer/z1OoOcase$z1OoOint;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/qgame/animplayer/z1OoOcase;->z1OoOdo(Landroid/media/MediaCodec;Landroid/media/MediaExtractor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic z1OoOdo:Lcom/tencent/qgame/animplayer/z1OoOcase;

.field final synthetic z1OoOfor:Landroid/media/MediaExtractor;

.field final synthetic z1OoOif:Landroid/media/MediaCodec;


# direct methods
.method constructor <init>(Lcom/tencent/qgame/animplayer/z1OoOcase;Landroid/media/MediaCodec;Landroid/media/MediaExtractor;)V
    .registers 4

    iput-object p1, p0, Lcom/tencent/qgame/animplayer/z1OoOcase$z1OoOint;->z1OoOdo:Lcom/tencent/qgame/animplayer/z1OoOcase;

    iput-object p2, p0, Lcom/tencent/qgame/animplayer/z1OoOcase$z1OoOint;->z1OoOif:Landroid/media/MediaCodec;

    iput-object p3, p0, Lcom/tencent/qgame/animplayer/z1OoOcase$z1OoOint;->z1OoOfor:Landroid/media/MediaExtractor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 6

    const-string v0, "AnimPlayer.HardDecoder"

    iget-object v1, p0, Lcom/tencent/qgame/animplayer/z1OoOcase$z1OoOint;->z1OoOdo:Lcom/tencent/qgame/animplayer/z1OoOcase;

    iget-object v1, v1, Lcom/tencent/qgame/animplayer/z1OoOnew;->z1OoOelse:Lcom/tencent/qgame/animplayer/z1OoOif;

    iget-object v1, v1, Lcom/tencent/qgame/animplayer/z1OoOif;->z1OoOconst:Lcom/tencent/qgame/animplayer/IAnimView;

    invoke-interface {v1}, Lcom/tencent/qgame/animplayer/IAnimView;->getAutoDismiss()Z

    move-result v1

    if-eqz v1, :cond_17

    iget-object v1, p0, Lcom/tencent/qgame/animplayer/z1OoOcase$z1OoOint;->z1OoOdo:Lcom/tencent/qgame/animplayer/z1OoOcase;

    iget-object v1, v1, Lcom/tencent/qgame/animplayer/z1OoOnew;->z1OoOif:Lcom/tencent/qgame/animplayer/z1OoOchar;

    if-eqz v1, :cond_17

    invoke-interface {v1}, Lcom/tencent/qgame/animplayer/z1OoOchar;->z1OoOif()V

    :cond_17
    :try_start_17
    sget-object v1, Lcom/tencent/qgame/animplayer/util/ALog;->INSTANCE:Lcom/tencent/qgame/animplayer/util/ALog;

    const-string v2, "release"

    invoke-virtual {v1, v0, v2}, Lcom/tencent/qgame/animplayer/util/ALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tencent/qgame/animplayer/z1OoOcase$z1OoOint;->z1OoOif:Landroid/media/MediaCodec;

    if-eqz v2, :cond_2b

    invoke-virtual {v2}, Landroid/media/MediaCodec;->stop()V

    invoke-virtual {v2}, Landroid/media/MediaCodec;->release()V

    goto :goto_2b

    :catchall_29
    move-exception v1

    goto :goto_7a

    :cond_2b
    :goto_2b
    iget-object v2, p0, Lcom/tencent/qgame/animplayer/z1OoOcase$z1OoOint;->z1OoOfor:Landroid/media/MediaExtractor;

    if-eqz v2, :cond_32

    invoke-virtual {v2}, Landroid/media/MediaExtractor;->release()V

    :cond_32
    iget-object v2, p0, Lcom/tencent/qgame/animplayer/z1OoOcase$z1OoOint;->z1OoOdo:Lcom/tencent/qgame/animplayer/z1OoOcase;

    invoke-static {v2}, Lcom/tencent/qgame/animplayer/z1OoOcase;->z1OoOdo(Lcom/tencent/qgame/animplayer/z1OoOcase;)Landroid/graphics/SurfaceTexture;

    move-result-object v2

    if-eqz v2, :cond_3d

    invoke-virtual {v2}, Landroid/graphics/SurfaceTexture;->release()V

    :cond_3d
    iget-object v2, p0, Lcom/tencent/qgame/animplayer/z1OoOcase$z1OoOint;->z1OoOdo:Lcom/tencent/qgame/animplayer/z1OoOcase;

    invoke-static {v2}, Lcom/tencent/qgame/animplayer/z1OoOcase;->z1OoOif(Lcom/tencent/qgame/animplayer/z1OoOcase;)V

    iget-object v2, p0, Lcom/tencent/qgame/animplayer/z1OoOcase$z1OoOint;->z1OoOdo:Lcom/tencent/qgame/animplayer/z1OoOcase;

    invoke-virtual {v2}, Lcom/tencent/qgame/animplayer/z1OoOnew;->z1OoOdo()Lcom/tencent/qgame/animplayer/util/SpeedControlUtil;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/qgame/animplayer/util/SpeedControlUtil;->reset()V

    iget-object v2, p0, Lcom/tencent/qgame/animplayer/z1OoOcase$z1OoOint;->z1OoOdo:Lcom/tencent/qgame/animplayer/z1OoOcase;

    iget-object v2, v2, Lcom/tencent/qgame/animplayer/z1OoOnew;->z1OoOelse:Lcom/tencent/qgame/animplayer/z1OoOif;

    iget-object v2, v2, Lcom/tencent/qgame/animplayer/z1OoOif;->z1OoOclass:Lcom/tencent/qgame/animplayer/z1OoOif/z1OoOdo;

    const-string v3, "AnimPlayer.AnimPluginManager"

    const-string v4, "onRelease"

    invoke-virtual {v1, v3, v4}, Lcom/tencent/qgame/animplayer/util/ALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, v2, Lcom/tencent/qgame/animplayer/z1OoOif/z1OoOdo;->z1OoOif:Ljava/util/List;

    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_60
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_70

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/qgame/animplayer/z1OoOif/z1OoOif;

    invoke-interface {v2}, Lcom/tencent/qgame/animplayer/z1OoOif/z1OoOif;->onRelease()V

    goto :goto_60

    :cond_70
    iget-object v1, p0, Lcom/tencent/qgame/animplayer/z1OoOcase$z1OoOint;->z1OoOdo:Lcom/tencent/qgame/animplayer/z1OoOcase;

    iget-object v1, v1, Lcom/tencent/qgame/animplayer/z1OoOnew;->z1OoOif:Lcom/tencent/qgame/animplayer/z1OoOchar;

    if-eqz v1, :cond_89

    invoke-interface {v1}, Lcom/tencent/qgame/animplayer/z1OoOchar;->z1OoOnew()V
    :try_end_79
    .catchall {:try_start_17 .. :try_end_79} :catchall_29

    goto :goto_89

    :goto_7a
    sget-object v2, Lcom/tencent/qgame/animplayer/util/ALog;->INSTANCE:Lcom/tencent/qgame/animplayer/util/ALog;

    const-string v3, "release e="

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3, v1}, Lcom/tencent/qgame/animplayer/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_89
    :goto_89
    iget-object v0, p0, Lcom/tencent/qgame/animplayer/z1OoOcase$z1OoOint;->z1OoOdo:Lcom/tencent/qgame/animplayer/z1OoOcase;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/tencent/qgame/animplayer/z1OoOnew;->z1OoOcase:Z

    invoke-virtual {v0}, Lcom/tencent/qgame/animplayer/z1OoOnew;->onVideoComplete()V

    iget-object v0, p0, Lcom/tencent/qgame/animplayer/z1OoOcase$z1OoOint;->z1OoOdo:Lcom/tencent/qgame/animplayer/z1OoOcase;

    invoke-static {v0}, Lcom/tencent/qgame/animplayer/z1OoOcase;->z1OoOfor(Lcom/tencent/qgame/animplayer/z1OoOcase;)Z

    move-result v0

    if-eqz v0, :cond_9e

    iget-object p0, p0, Lcom/tencent/qgame/animplayer/z1OoOcase$z1OoOint;->z1OoOdo:Lcom/tencent/qgame/animplayer/z1OoOcase;

    invoke-static {p0}, Lcom/tencent/qgame/animplayer/z1OoOcase;->z1OoOint(Lcom/tencent/qgame/animplayer/z1OoOcase;)V

    :cond_9e
    return-void
.end method
