.class final Lcom/tencent/qgame/animplayer/z1OoOif$z1OoOint;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/qgame/animplayer/z1OoOif;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic z1OoOdo:Lcom/tencent/qgame/animplayer/z1OoOif;

.field final synthetic z1OoOif:Lcom/tencent/qgame/animplayer/z1OoOdo/z1OoOfor;


# direct methods
.method constructor <init>(Lcom/tencent/qgame/animplayer/z1OoOif;Lcom/tencent/qgame/animplayer/z1OoOdo/z1OoOfor;)V
    .registers 3

    iput-object p1, p0, Lcom/tencent/qgame/animplayer/z1OoOif$z1OoOint;->z1OoOdo:Lcom/tencent/qgame/animplayer/z1OoOif;

    iput-object p2, p0, Lcom/tencent/qgame/animplayer/z1OoOif$z1OoOint;->z1OoOif:Lcom/tencent/qgame/animplayer/z1OoOdo/z1OoOfor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 6

    iget-object v0, p0, Lcom/tencent/qgame/animplayer/z1OoOif$z1OoOint;->z1OoOdo:Lcom/tencent/qgame/animplayer/z1OoOif;

    iget-object v1, v0, Lcom/tencent/qgame/animplayer/z1OoOif;->z1OoOcatch:Lcom/tencent/qgame/animplayer/z1OoOdo;

    iget-object v2, p0, Lcom/tencent/qgame/animplayer/z1OoOif$z1OoOint;->z1OoOif:Lcom/tencent/qgame/animplayer/z1OoOdo/z1OoOfor;

    iget-boolean v3, v0, Lcom/tencent/qgame/animplayer/z1OoOif;->z1OoOchar:Z

    iget v4, v0, Lcom/tencent/qgame/animplayer/z1OoOif;->z1OoOelse:I

    iget v0, v0, Lcom/tencent/qgame/animplayer/z1OoOif;->z1OoOnew:I

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/tencent/qgame/animplayer/z1OoOdo;->z1OoOdo(Lcom/tencent/qgame/animplayer/z1OoOdo/z1OoOfor;ZII)I

    move-result v0

    if-eqz v0, :cond_2c

    iget-object v1, p0, Lcom/tencent/qgame/animplayer/z1OoOif$z1OoOint;->z1OoOdo:Lcom/tencent/qgame/animplayer/z1OoOif;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/tencent/qgame/animplayer/z1OoOif;->z1OoOvoid:Z

    iget-object v1, v1, Lcom/tencent/qgame/animplayer/z1OoOif;->z1OoOif:Lcom/tencent/qgame/animplayer/z1OoOnew;

    if-eqz v1, :cond_22

    invoke-static {v0}, Lcom/tencent/qgame/animplayer/z1OoOint;->z1OoOdo(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/tencent/qgame/animplayer/z1OoOnew;->onFailed(ILjava/lang/String;)V

    :cond_22
    iget-object p0, p0, Lcom/tencent/qgame/animplayer/z1OoOif$z1OoOint;->z1OoOdo:Lcom/tencent/qgame/animplayer/z1OoOif;

    iget-object p0, p0, Lcom/tencent/qgame/animplayer/z1OoOif;->z1OoOif:Lcom/tencent/qgame/animplayer/z1OoOnew;

    if-eqz p0, :cond_2b

    invoke-virtual {p0}, Lcom/tencent/qgame/animplayer/z1OoOnew;->onVideoComplete()V

    :cond_2b
    return-void

    :cond_2c
    sget-object v0, Lcom/tencent/qgame/animplayer/util/ALog;->INSTANCE:Lcom/tencent/qgame/animplayer/util/ALog;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "parse "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tencent/qgame/animplayer/z1OoOif$z1OoOint;->z1OoOdo:Lcom/tencent/qgame/animplayer/z1OoOif;

    iget-object v2, v2, Lcom/tencent/qgame/animplayer/z1OoOif;->z1OoOcatch:Lcom/tencent/qgame/animplayer/z1OoOdo;

    iget-object v2, v2, Lcom/tencent/qgame/animplayer/z1OoOdo;->z1OoOdo:Lcom/tencent/qgame/animplayer/AnimConfig;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AnimPlayer.AnimPlayer"

    invoke-virtual {v0, v2, v1}, Lcom/tencent/qgame/animplayer/util/ALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/qgame/animplayer/z1OoOif$z1OoOint;->z1OoOdo:Lcom/tencent/qgame/animplayer/z1OoOif;

    iget-object v1, v1, Lcom/tencent/qgame/animplayer/z1OoOif;->z1OoOcatch:Lcom/tencent/qgame/animplayer/z1OoOdo;

    iget-object v1, v1, Lcom/tencent/qgame/animplayer/z1OoOdo;->z1OoOdo:Lcom/tencent/qgame/animplayer/AnimConfig;

    if-eqz v1, :cond_6a

    invoke-virtual {v1}, Lcom/tencent/qgame/animplayer/AnimConfig;->isDefaultConfig()Z

    move-result v3

    if-nez v3, :cond_62

    iget-object v3, p0, Lcom/tencent/qgame/animplayer/z1OoOif$z1OoOint;->z1OoOdo:Lcom/tencent/qgame/animplayer/z1OoOif;

    iget-object v3, v3, Lcom/tencent/qgame/animplayer/z1OoOif;->z1OoOdo:Lcom/tencent/qgame/animplayer/inter/IAnimListener;

    if-eqz v3, :cond_6a

    invoke-interface {v3, v1}, Lcom/tencent/qgame/animplayer/inter/IAnimListener;->onVideoConfigReady(Lcom/tencent/qgame/animplayer/AnimConfig;)Z

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_6a

    :cond_62
    iget-object v0, p0, Lcom/tencent/qgame/animplayer/z1OoOif$z1OoOint;->z1OoOdo:Lcom/tencent/qgame/animplayer/z1OoOif;

    iget-object p0, p0, Lcom/tencent/qgame/animplayer/z1OoOif$z1OoOint;->z1OoOif:Lcom/tencent/qgame/animplayer/z1OoOdo/z1OoOfor;

    invoke-static {v0, p0}, Lcom/tencent/qgame/animplayer/z1OoOif;->z1OoOdo(Lcom/tencent/qgame/animplayer/z1OoOif;Lcom/tencent/qgame/animplayer/z1OoOdo/z1OoOfor;)V

    return-void

    :cond_6a
    const-string p0, "onVideoConfigReady return false"

    invoke-virtual {v0, v2, p0}, Lcom/tencent/qgame/animplayer/util/ALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
