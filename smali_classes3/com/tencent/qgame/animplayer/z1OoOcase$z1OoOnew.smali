.class final Lcom/tencent/qgame/animplayer/z1OoOcase$z1OoOnew;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/qgame/animplayer/z1OoOcase;->z1OoOint()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic z1OoOdo:Lcom/tencent/qgame/animplayer/z1OoOcase;


# direct methods
.method constructor <init>(Lcom/tencent/qgame/animplayer/z1OoOcase;)V
    .registers 2

    iput-object p1, p0, Lcom/tencent/qgame/animplayer/z1OoOcase$z1OoOnew;->z1OoOdo:Lcom/tencent/qgame/animplayer/z1OoOcase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 6

    :try_start_0
    iget-object v0, p0, Lcom/tencent/qgame/animplayer/z1OoOcase$z1OoOnew;->z1OoOdo:Lcom/tencent/qgame/animplayer/z1OoOcase;

    invoke-static {v0}, Lcom/tencent/qgame/animplayer/z1OoOcase;->z1OoOdo(Lcom/tencent/qgame/animplayer/z1OoOcase;)Landroid/graphics/SurfaceTexture;

    move-result-object v0

    if-eqz v0, :cond_a4

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    iget-object v0, p0, Lcom/tencent/qgame/animplayer/z1OoOcase$z1OoOnew;->z1OoOdo:Lcom/tencent/qgame/animplayer/z1OoOcase;

    iget-object v0, v0, Lcom/tencent/qgame/animplayer/z1OoOnew;->z1OoOif:Lcom/tencent/qgame/animplayer/z1OoOchar;

    if-eqz v0, :cond_14

    invoke-interface {v0}, Lcom/tencent/qgame/animplayer/z1OoOchar;->z1OoOdo()V

    :cond_14
    iget-object v0, p0, Lcom/tencent/qgame/animplayer/z1OoOcase$z1OoOnew;->z1OoOdo:Lcom/tencent/qgame/animplayer/z1OoOcase;

    iget-object v0, v0, Lcom/tencent/qgame/animplayer/z1OoOnew;->z1OoOelse:Lcom/tencent/qgame/animplayer/z1OoOif;

    iget-object v0, v0, Lcom/tencent/qgame/animplayer/z1OoOif;->z1OoOclass:Lcom/tencent/qgame/animplayer/z1OoOif/z1OoOdo;

    iget v1, v0, Lcom/tencent/qgame/animplayer/z1OoOif/z1OoOdo;->z1OoOint:I

    iget v2, v0, Lcom/tencent/qgame/animplayer/z1OoOif/z1OoOdo;->z1OoOfor:I
    :try_end_1e
    .catchall {:try_start_0 .. :try_end_1e} :catchall_a5

    add-int/lit8 v2, v2, 0x1

    const-string v3, "AnimPlayer.AnimPluginManager"

    if-gt v1, v2, :cond_29

    :try_start_24
    iget v1, v0, Lcom/tencent/qgame/animplayer/z1OoOif/z1OoOdo;->z1OoOnew:I

    const/4 v2, 0x4

    if-lt v1, v2, :cond_56

    :cond_29
    sget-object v1, Lcom/tencent/qgame/animplayer/util/ALog;->INSTANCE:Lcom/tencent/qgame/animplayer/util/ALog;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "jump frameIndex= "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, v0, Lcom/tencent/qgame/animplayer/z1OoOif/z1OoOdo;->z1OoOfor:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ",decodeIndex="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Lcom/tencent/qgame/animplayer/z1OoOif/z1OoOdo;->z1OoOint:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ",frameDiffTimes="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Lcom/tencent/qgame/animplayer/z1OoOif/z1OoOdo;->z1OoOnew:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Lcom/tencent/qgame/animplayer/util/ALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget v1, v0, Lcom/tencent/qgame/animplayer/z1OoOif/z1OoOdo;->z1OoOint:I

    iput v1, v0, Lcom/tencent/qgame/animplayer/z1OoOif/z1OoOdo;->z1OoOfor:I

    :cond_56
    iget v1, v0, Lcom/tencent/qgame/animplayer/z1OoOif/z1OoOdo;->z1OoOint:I

    iget v2, v0, Lcom/tencent/qgame/animplayer/z1OoOif/z1OoOdo;->z1OoOfor:I

    if-eq v1, v2, :cond_63

    iget v1, v0, Lcom/tencent/qgame/animplayer/z1OoOif/z1OoOdo;->z1OoOnew:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/tencent/qgame/animplayer/z1OoOif/z1OoOdo;->z1OoOnew:I

    goto :goto_66

    :cond_63
    const/4 v1, 0x0

    iput v1, v0, Lcom/tencent/qgame/animplayer/z1OoOif/z1OoOdo;->z1OoOnew:I

    :goto_66
    sget-object v1, Lcom/tencent/qgame/animplayer/util/ALog;->INSTANCE:Lcom/tencent/qgame/animplayer/util/ALog;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "onRendering frameIndex="

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, v0, Lcom/tencent/qgame/animplayer/z1OoOif/z1OoOdo;->z1OoOfor:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Lcom/tencent/qgame/animplayer/util/ALog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, v0, Lcom/tencent/qgame/animplayer/z1OoOif/z1OoOdo;->z1OoOif:Ljava/util/List;

    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_83
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_95

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/qgame/animplayer/z1OoOif/z1OoOif;

    iget v3, v0, Lcom/tencent/qgame/animplayer/z1OoOif/z1OoOdo;->z1OoOfor:I

    invoke-interface {v2, v3}, Lcom/tencent/qgame/animplayer/z1OoOif/z1OoOif;->onRendering(I)V

    goto :goto_83

    :cond_95
    iget v1, v0, Lcom/tencent/qgame/animplayer/z1OoOif/z1OoOdo;->z1OoOfor:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/tencent/qgame/animplayer/z1OoOif/z1OoOdo;->z1OoOfor:I

    iget-object p0, p0, Lcom/tencent/qgame/animplayer/z1OoOcase$z1OoOnew;->z1OoOdo:Lcom/tencent/qgame/animplayer/z1OoOcase;

    iget-object p0, p0, Lcom/tencent/qgame/animplayer/z1OoOnew;->z1OoOif:Lcom/tencent/qgame/animplayer/z1OoOchar;

    if-eqz p0, :cond_a4

    invoke-interface {p0}, Lcom/tencent/qgame/animplayer/z1OoOchar;->z1OoOtry()V
    :try_end_a4
    .catchall {:try_start_24 .. :try_end_a4} :catchall_a5

    :cond_a4
    return-void

    :catchall_a5
    move-exception p0

    sget-object v0, Lcom/tencent/qgame/animplayer/util/ALog;->INSTANCE:Lcom/tencent/qgame/animplayer/util/ALog;

    const-string v1, "render exception="

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "AnimPlayer.HardDecoder"

    invoke-virtual {v0, v2, v1, p0}, Lcom/tencent/qgame/animplayer/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
