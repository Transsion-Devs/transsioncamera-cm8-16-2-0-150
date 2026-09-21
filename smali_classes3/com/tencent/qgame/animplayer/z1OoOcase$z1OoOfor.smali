.class final Lcom/tencent/qgame/animplayer/z1OoOcase$z1OoOfor;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/qgame/animplayer/z1OoOcase;->z1OoOnew()V
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

    iput-object p1, p0, Lcom/tencent/qgame/animplayer/z1OoOcase$z1OoOfor;->z1OoOdo:Lcom/tencent/qgame/animplayer/z1OoOcase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    iget-object v0, p0, Lcom/tencent/qgame/animplayer/z1OoOcase$z1OoOfor;->z1OoOdo:Lcom/tencent/qgame/animplayer/z1OoOcase;

    iget-object v0, v0, Lcom/tencent/qgame/animplayer/z1OoOnew;->z1OoOelse:Lcom/tencent/qgame/animplayer/z1OoOif;

    iget-object v0, v0, Lcom/tencent/qgame/animplayer/z1OoOif;->z1OoOclass:Lcom/tencent/qgame/animplayer/z1OoOif/z1OoOdo;

    sget-object v1, Lcom/tencent/qgame/animplayer/util/ALog;->INSTANCE:Lcom/tencent/qgame/animplayer/util/ALog;

    const-string v2, "AnimPlayer.AnimPluginManager"

    const-string v3, "onDestroy"

    invoke-virtual {v1, v2, v3}, Lcom/tencent/qgame/animplayer/util/ALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v0, Lcom/tencent/qgame/animplayer/z1OoOif/z1OoOdo;->z1OoOif:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_17
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_27

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/qgame/animplayer/z1OoOif/z1OoOif;

    invoke-interface {v1}, Lcom/tencent/qgame/animplayer/z1OoOif/z1OoOif;->onDestroy()V

    goto :goto_17

    :cond_27
    iget-object v0, p0, Lcom/tencent/qgame/animplayer/z1OoOcase$z1OoOfor;->z1OoOdo:Lcom/tencent/qgame/animplayer/z1OoOcase;

    iget-object v0, v0, Lcom/tencent/qgame/animplayer/z1OoOnew;->z1OoOif:Lcom/tencent/qgame/animplayer/z1OoOchar;

    if-eqz v0, :cond_30

    invoke-interface {v0}, Lcom/tencent/qgame/animplayer/z1OoOchar;->z1OoOfor()V

    :cond_30
    iget-object v0, p0, Lcom/tencent/qgame/animplayer/z1OoOcase$z1OoOfor;->z1OoOdo:Lcom/tencent/qgame/animplayer/z1OoOcase;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/tencent/qgame/animplayer/z1OoOnew;->z1OoOif:Lcom/tencent/qgame/animplayer/z1OoOchar;

    invoke-virtual {v0}, Lcom/tencent/qgame/animplayer/z1OoOnew;->onVideoDestroy()V

    iget-object p0, p0, Lcom/tencent/qgame/animplayer/z1OoOcase$z1OoOfor;->z1OoOdo:Lcom/tencent/qgame/animplayer/z1OoOcase;

    iget-object v0, p0, Lcom/tencent/qgame/animplayer/z1OoOnew;->z1OoOelse:Lcom/tencent/qgame/animplayer/z1OoOif;

    iget-boolean v0, v0, Lcom/tencent/qgame/animplayer/z1OoOif;->z1OoOgoto:Z

    if-eqz v0, :cond_75

    sget-object v0, Lcom/tencent/qgame/animplayer/util/ALog;->INSTANCE:Lcom/tencent/qgame/animplayer/util/ALog;

    const-string v2, "AnimPlayer.Decoder"

    const-string v3, "destroyThread"

    invoke-virtual {v0, v2, v3}, Lcom/tencent/qgame/animplayer/util/ALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/qgame/animplayer/z1OoOnew;->z1OoOfor:Lcom/tencent/qgame/animplayer/z1OoObyte;

    iget-object v0, v0, Lcom/tencent/qgame/animplayer/z1OoObyte;->z1OoOif:Landroid/os/Handler;

    if-eqz v0, :cond_52

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_52
    iget-object v0, p0, Lcom/tencent/qgame/animplayer/z1OoOnew;->z1OoOint:Lcom/tencent/qgame/animplayer/z1OoObyte;

    iget-object v0, v0, Lcom/tencent/qgame/animplayer/z1OoObyte;->z1OoOif:Landroid/os/Handler;

    if-eqz v0, :cond_5b

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_5b
    iget-object v0, p0, Lcom/tencent/qgame/animplayer/z1OoOnew;->z1OoOfor:Lcom/tencent/qgame/animplayer/z1OoObyte;

    iget-object v2, v0, Lcom/tencent/qgame/animplayer/z1OoObyte;->z1OoOdo:Landroid/os/HandlerThread;

    invoke-static {v2}, Lcom/tencent/qgame/animplayer/z1OoOnew$z1OoOdo;->z1OoOdo(Landroid/os/HandlerThread;)Landroid/os/HandlerThread;

    iput-object v1, v0, Lcom/tencent/qgame/animplayer/z1OoObyte;->z1OoOdo:Landroid/os/HandlerThread;

    iget-object v0, p0, Lcom/tencent/qgame/animplayer/z1OoOnew;->z1OoOint:Lcom/tencent/qgame/animplayer/z1OoObyte;

    iget-object v2, v0, Lcom/tencent/qgame/animplayer/z1OoObyte;->z1OoOdo:Landroid/os/HandlerThread;

    invoke-static {v2}, Lcom/tencent/qgame/animplayer/z1OoOnew$z1OoOdo;->z1OoOdo(Landroid/os/HandlerThread;)Landroid/os/HandlerThread;

    iput-object v1, v0, Lcom/tencent/qgame/animplayer/z1OoObyte;->z1OoOdo:Landroid/os/HandlerThread;

    iget-object v0, p0, Lcom/tencent/qgame/animplayer/z1OoOnew;->z1OoOfor:Lcom/tencent/qgame/animplayer/z1OoObyte;

    iput-object v1, v0, Lcom/tencent/qgame/animplayer/z1OoObyte;->z1OoOif:Landroid/os/Handler;

    iget-object p0, p0, Lcom/tencent/qgame/animplayer/z1OoOnew;->z1OoOint:Lcom/tencent/qgame/animplayer/z1OoObyte;

    iput-object v1, p0, Lcom/tencent/qgame/animplayer/z1OoObyte;->z1OoOif:Landroid/os/Handler;

    :cond_75
    return-void
.end method
