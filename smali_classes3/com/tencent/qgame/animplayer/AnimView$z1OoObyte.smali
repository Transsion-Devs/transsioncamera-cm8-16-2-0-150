.class final Lcom/tencent/qgame/animplayer/AnimView$z1OoObyte;
.super Lkotlin/jvm/internal/Lambda;

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/qgame/animplayer/AnimView;->startPlay(Lcom/tencent/qgame/animplayer/z1OoOdo/z1OoOfor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic z1OoOdo:Lcom/tencent/qgame/animplayer/AnimView;

.field final synthetic z1OoOif:Lcom/tencent/qgame/animplayer/z1OoOdo/z1OoOfor;


# direct methods
.method constructor <init>(Lcom/tencent/qgame/animplayer/AnimView;Lcom/tencent/qgame/animplayer/z1OoOdo/z1OoOfor;)V
    .registers 3

    iput-object p1, p0, Lcom/tencent/qgame/animplayer/AnimView$z1OoObyte;->z1OoOdo:Lcom/tencent/qgame/animplayer/AnimView;

    iput-object p2, p0, Lcom/tencent/qgame/animplayer/AnimView$z1OoObyte;->z1OoOif:Lcom/tencent/qgame/animplayer/z1OoOdo/z1OoOfor;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic invoke()Ljava/lang/Object;
    .registers 5

    iget-object v0, p0, Lcom/tencent/qgame/animplayer/AnimView$z1OoObyte;->z1OoOdo:Lcom/tencent/qgame/animplayer/AnimView;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const-string v1, "AnimPlayer.AnimView"

    if-eqz v0, :cond_13

    sget-object p0, Lcom/tencent/qgame/animplayer/util/ALog;->INSTANCE:Lcom/tencent/qgame/animplayer/util/ALog;

    const-string v0, "AnimView is GONE, can\'t play"

    :goto_e
    invoke-virtual {p0, v1, v0}, Lcom/tencent/qgame/animplayer/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_a3

    :cond_13
    iget-object v0, p0, Lcom/tencent/qgame/animplayer/AnimView$z1OoObyte;->z1OoOdo:Lcom/tencent/qgame/animplayer/AnimView;

    invoke-static {v0}, Lcom/tencent/qgame/animplayer/AnimView;->access$getPlayer$p(Lcom/tencent/qgame/animplayer/AnimView;)Lcom/tencent/qgame/animplayer/z1OoOif;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qgame/animplayer/z1OoOif;->z1OoOif()Z

    move-result v0

    if-nez v0, :cond_9d

    iget-object v0, p0, Lcom/tencent/qgame/animplayer/AnimView$z1OoObyte;->z1OoOdo:Lcom/tencent/qgame/animplayer/AnimView;

    iget-object v1, p0, Lcom/tencent/qgame/animplayer/AnimView$z1OoObyte;->z1OoOif:Lcom/tencent/qgame/animplayer/z1OoOdo/z1OoOfor;

    invoke-static {v0, v1}, Lcom/tencent/qgame/animplayer/AnimView;->access$setLastFile$p(Lcom/tencent/qgame/animplayer/AnimView;Lcom/tencent/qgame/animplayer/z1OoOdo/z1OoOfor;)V

    iget-object v0, p0, Lcom/tencent/qgame/animplayer/AnimView$z1OoObyte;->z1OoOdo:Lcom/tencent/qgame/animplayer/AnimView;

    invoke-static {v0}, Lcom/tencent/qgame/animplayer/AnimView;->access$getPlayer$p(Lcom/tencent/qgame/animplayer/AnimView;)Lcom/tencent/qgame/animplayer/z1OoOif;

    move-result-object v0

    iget-object p0, p0, Lcom/tencent/qgame/animplayer/AnimView$z1OoObyte;->z1OoOif:Lcom/tencent/qgame/animplayer/z1OoOdo/z1OoOfor;

    const-string v1, "fileContainer"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/tencent/qgame/animplayer/z1OoOif;->z1OoOvoid:Z

    iget-object v1, v0, Lcom/tencent/qgame/animplayer/z1OoOif;->z1OoOif:Lcom/tencent/qgame/animplayer/z1OoOnew;

    if-nez v1, :cond_4a

    new-instance v1, Lcom/tencent/qgame/animplayer/z1OoOcase;

    invoke-direct {v1, v0}, Lcom/tencent/qgame/animplayer/z1OoOcase;-><init>(Lcom/tencent/qgame/animplayer/z1OoOif;)V

    iget v2, v0, Lcom/tencent/qgame/animplayer/z1OoOif;->z1OoOtry:I

    iput v2, v1, Lcom/tencent/qgame/animplayer/z1OoOnew;->z1OoObyte:I

    iget v2, v0, Lcom/tencent/qgame/animplayer/z1OoOif;->z1OoOint:I

    invoke-virtual {v1, v2}, Lcom/tencent/qgame/animplayer/z1OoOnew;->z1OoOdo(I)V

    iput-object v1, v0, Lcom/tencent/qgame/animplayer/z1OoOif;->z1OoOif:Lcom/tencent/qgame/animplayer/z1OoOnew;

    :cond_4a
    iget-object v1, v0, Lcom/tencent/qgame/animplayer/z1OoOif;->z1OoOfor:Lcom/tencent/qgame/animplayer/z1OoOfor;

    if-nez v1, :cond_59

    new-instance v1, Lcom/tencent/qgame/animplayer/z1OoOfor;

    invoke-direct {v1, v0}, Lcom/tencent/qgame/animplayer/z1OoOfor;-><init>(Lcom/tencent/qgame/animplayer/z1OoOif;)V

    iget v2, v0, Lcom/tencent/qgame/animplayer/z1OoOif;->z1OoOtry:I

    iput v2, v1, Lcom/tencent/qgame/animplayer/z1OoOfor;->z1OoOfor:I

    iput-object v1, v0, Lcom/tencent/qgame/animplayer/z1OoOif;->z1OoOfor:Lcom/tencent/qgame/animplayer/z1OoOfor;

    :cond_59
    iget-object v1, v0, Lcom/tencent/qgame/animplayer/z1OoOif;->z1OoOif:Lcom/tencent/qgame/animplayer/z1OoOnew;

    if-eqz v1, :cond_88

    iget-object v2, v1, Lcom/tencent/qgame/animplayer/z1OoOnew;->z1OoOfor:Lcom/tencent/qgame/animplayer/z1OoObyte;

    const-string v3, "anim_render_thread"

    invoke-static {v2, v3}, Lcom/tencent/qgame/animplayer/z1OoOnew$z1OoOdo;->z1OoOdo(Lcom/tencent/qgame/animplayer/z1OoObyte;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_72

    iget-object v1, v1, Lcom/tencent/qgame/animplayer/z1OoOnew;->z1OoOint:Lcom/tencent/qgame/animplayer/z1OoObyte;

    const-string v2, "anim_decode_thread"

    invoke-static {v1, v2}, Lcom/tencent/qgame/animplayer/z1OoOnew$z1OoOdo;->z1OoOdo(Lcom/tencent/qgame/animplayer/z1OoObyte;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_72

    goto :goto_88

    :cond_72
    const/4 p0, 0x0

    iput-boolean p0, v0, Lcom/tencent/qgame/animplayer/z1OoOif;->z1OoOvoid:Z

    iget-object p0, v0, Lcom/tencent/qgame/animplayer/z1OoOif;->z1OoOif:Lcom/tencent/qgame/animplayer/z1OoOnew;

    if-eqz p0, :cond_80

    const/16 v1, 0x2713

    const-string v2, "0x3 thread create fail"

    invoke-virtual {p0, v1, v2}, Lcom/tencent/qgame/animplayer/z1OoOnew;->onFailed(ILjava/lang/String;)V

    :cond_80
    iget-object p0, v0, Lcom/tencent/qgame/animplayer/z1OoOif;->z1OoOif:Lcom/tencent/qgame/animplayer/z1OoOnew;

    if-eqz p0, :cond_a3

    invoke-virtual {p0}, Lcom/tencent/qgame/animplayer/z1OoOnew;->onVideoComplete()V

    goto :goto_a3

    :cond_88
    :goto_88
    iget-object v1, v0, Lcom/tencent/qgame/animplayer/z1OoOif;->z1OoOif:Lcom/tencent/qgame/animplayer/z1OoOnew;

    if-eqz v1, :cond_a3

    iget-object v1, v1, Lcom/tencent/qgame/animplayer/z1OoOnew;->z1OoOfor:Lcom/tencent/qgame/animplayer/z1OoObyte;

    if-eqz v1, :cond_a3

    iget-object v1, v1, Lcom/tencent/qgame/animplayer/z1OoObyte;->z1OoOif:Landroid/os/Handler;

    if-eqz v1, :cond_a3

    new-instance v2, Lcom/tencent/qgame/animplayer/z1OoOif$z1OoOint;

    invoke-direct {v2, v0, p0}, Lcom/tencent/qgame/animplayer/z1OoOif$z1OoOint;-><init>(Lcom/tencent/qgame/animplayer/z1OoOif;Lcom/tencent/qgame/animplayer/z1OoOdo/z1OoOfor;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_a3

    :cond_9d
    sget-object p0, Lcom/tencent/qgame/animplayer/util/ALog;->INSTANCE:Lcom/tencent/qgame/animplayer/util/ALog;

    const-string v0, "is running can not start"

    goto/16 :goto_e

    :cond_a3
    :goto_a3
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
