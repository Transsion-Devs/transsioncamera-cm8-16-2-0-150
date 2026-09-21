.class public final Lcom/tencent/qgame/animplayer/AnimView$z1OoOif$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/qgame/animplayer/inter/IAnimListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/qgame/animplayer/AnimView$z1OoOif;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic z1OoOdo:Lcom/tencent/qgame/animplayer/AnimView$z1OoOif;


# direct methods
.method constructor <init>(Lcom/tencent/qgame/animplayer/AnimView$z1OoOif;)V
    .registers 2

    iput-object p1, p0, Lcom/tencent/qgame/animplayer/AnimView$z1OoOif$1;->z1OoOdo:Lcom/tencent/qgame/animplayer/AnimView$z1OoOif;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFailed(ILjava/lang/String;)V
    .registers 3

    iget-object p0, p0, Lcom/tencent/qgame/animplayer/AnimView$z1OoOif$1;->z1OoOdo:Lcom/tencent/qgame/animplayer/AnimView$z1OoOif;

    iget-object p0, p0, Lcom/tencent/qgame/animplayer/AnimView$z1OoOif;->z1OoOdo:Lcom/tencent/qgame/animplayer/AnimView;

    # getter for: Lcom/tencent/qgame/animplayer/AnimView;->animListener:Lcom/tencent/qgame/animplayer/inter/IAnimListener;
    invoke-static {p0}, Lcom/tencent/qgame/animplayer/AnimView;->access$getAnimListener$p(Lcom/tencent/qgame/animplayer/AnimView;)Lcom/tencent/qgame/animplayer/inter/IAnimListener;

    move-result-object p0

    if-eqz p0, :cond_d

    invoke-interface {p0, p1, p2}, Lcom/tencent/qgame/animplayer/inter/IAnimListener;->onFailed(ILjava/lang/String;)V

    :cond_d
    return-void
.end method

.method public final onVideoComplete()V
    .registers 2

    iget-object v0, p0, Lcom/tencent/qgame/animplayer/AnimView$z1OoOif$1;->z1OoOdo:Lcom/tencent/qgame/animplayer/AnimView$z1OoOif;

    iget-object v0, v0, Lcom/tencent/qgame/animplayer/AnimView$z1OoOif;->z1OoOdo:Lcom/tencent/qgame/animplayer/AnimView;

    # getter for: Lcom/tencent/qgame/animplayer/AnimView;->autoDismiss:Z
    invoke-static {v0}, Lcom/tencent/qgame/animplayer/AnimView;->access$getAutoDismiss$p(Lcom/tencent/qgame/animplayer/AnimView;)Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/tencent/qgame/animplayer/AnimView$z1OoOif$1;->z1OoOdo:Lcom/tencent/qgame/animplayer/AnimView$z1OoOif;

    iget-object v0, v0, Lcom/tencent/qgame/animplayer/AnimView$z1OoOif;->z1OoOdo:Lcom/tencent/qgame/animplayer/AnimView;

    # invokes: Lcom/tencent/qgame/animplayer/AnimView;->hide()V
    invoke-static {v0}, Lcom/tencent/qgame/animplayer/AnimView;->access$hide(Lcom/tencent/qgame/animplayer/AnimView;)V

    :cond_11
    iget-object p0, p0, Lcom/tencent/qgame/animplayer/AnimView$z1OoOif$1;->z1OoOdo:Lcom/tencent/qgame/animplayer/AnimView$z1OoOif;

    iget-object p0, p0, Lcom/tencent/qgame/animplayer/AnimView$z1OoOif;->z1OoOdo:Lcom/tencent/qgame/animplayer/AnimView;

    # getter for: Lcom/tencent/qgame/animplayer/AnimView;->animListener:Lcom/tencent/qgame/animplayer/inter/IAnimListener;
    invoke-static {p0}, Lcom/tencent/qgame/animplayer/AnimView;->access$getAnimListener$p(Lcom/tencent/qgame/animplayer/AnimView;)Lcom/tencent/qgame/animplayer/inter/IAnimListener;

    move-result-object p0

    if-eqz p0, :cond_1e

    invoke-interface {p0}, Lcom/tencent/qgame/animplayer/inter/IAnimListener;->onVideoComplete()V

    :cond_1e
    return-void
.end method

.method public final onVideoConfigReady(Lcom/tencent/qgame/animplayer/AnimConfig;)Z
    .registers 5

    const-string v0, "config"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/qgame/animplayer/AnimView$z1OoOif$1;->z1OoOdo:Lcom/tencent/qgame/animplayer/AnimView$z1OoOif;

    iget-object v0, v0, Lcom/tencent/qgame/animplayer/AnimView$z1OoOif;->z1OoOdo:Lcom/tencent/qgame/animplayer/AnimView;

    # getter for: Lcom/tencent/qgame/animplayer/AnimView;->scaleTypeUtil:Lcom/tencent/qgame/animplayer/util/ScaleTypeUtil;
    invoke-static {v0}, Lcom/tencent/qgame/animplayer/AnimView;->access$getScaleTypeUtil$p(Lcom/tencent/qgame/animplayer/AnimView;)Lcom/tencent/qgame/animplayer/util/ScaleTypeUtil;

    move-result-object v0

    invoke-virtual {p1}, Lcom/tencent/qgame/animplayer/AnimConfig;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Lcom/tencent/qgame/animplayer/AnimConfig;->getHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/tencent/qgame/animplayer/util/ScaleTypeUtil;->setVideoSize(II)V

    iget-object v0, p0, Lcom/tencent/qgame/animplayer/AnimView$z1OoOif$1;->z1OoOdo:Lcom/tencent/qgame/animplayer/AnimView$z1OoOif;

    iget-object v0, v0, Lcom/tencent/qgame/animplayer/AnimView$z1OoOif;->z1OoOdo:Lcom/tencent/qgame/animplayer/AnimView;

    # getter for: Lcom/tencent/qgame/animplayer/AnimView;->animListener:Lcom/tencent/qgame/animplayer/inter/IAnimListener;
    invoke-static {v0}, Lcom/tencent/qgame/animplayer/AnimView;->access$getAnimListener$p(Lcom/tencent/qgame/animplayer/AnimView;)Lcom/tencent/qgame/animplayer/inter/IAnimListener;

    move-result-object v0

    if-eqz v0, :cond_27

    invoke-interface {v0, p1}, Lcom/tencent/qgame/animplayer/inter/IAnimListener;->onVideoConfigReady(Lcom/tencent/qgame/animplayer/AnimConfig;)Z

    move-result p0

    return p0

    :cond_27
    invoke-static {p0, p1}, Lcom/tencent/qgame/animplayer/inter/IAnimListener$DefaultImpls;->onVideoConfigReady(Lcom/tencent/qgame/animplayer/inter/IAnimListener;Lcom/tencent/qgame/animplayer/AnimConfig;)Z

    move-result p0

    return p0
.end method

.method public final onVideoDestroy()V
    .registers 2

    iget-object v0, p0, Lcom/tencent/qgame/animplayer/AnimView$z1OoOif$1;->z1OoOdo:Lcom/tencent/qgame/animplayer/AnimView$z1OoOif;

    iget-object v0, v0, Lcom/tencent/qgame/animplayer/AnimView$z1OoOif;->z1OoOdo:Lcom/tencent/qgame/animplayer/AnimView;

    # invokes: Lcom/tencent/qgame/animplayer/AnimView;->hide()V
    invoke-static {v0}, Lcom/tencent/qgame/animplayer/AnimView;->access$hide(Lcom/tencent/qgame/animplayer/AnimView;)V

    iget-object p0, p0, Lcom/tencent/qgame/animplayer/AnimView$z1OoOif$1;->z1OoOdo:Lcom/tencent/qgame/animplayer/AnimView$z1OoOif;

    iget-object p0, p0, Lcom/tencent/qgame/animplayer/AnimView$z1OoOif;->z1OoOdo:Lcom/tencent/qgame/animplayer/AnimView;

    # getter for: Lcom/tencent/qgame/animplayer/AnimView;->animListener:Lcom/tencent/qgame/animplayer/inter/IAnimListener;
    invoke-static {p0}, Lcom/tencent/qgame/animplayer/AnimView;->access$getAnimListener$p(Lcom/tencent/qgame/animplayer/AnimView;)Lcom/tencent/qgame/animplayer/inter/IAnimListener;

    move-result-object p0

    if-eqz p0, :cond_14

    invoke-interface {p0}, Lcom/tencent/qgame/animplayer/inter/IAnimListener;->onVideoDestroy()V

    :cond_14
    return-void
.end method

.method public final onVideoRender(ILcom/tencent/qgame/animplayer/AnimConfig;)V
    .registers 3

    iget-object p0, p0, Lcom/tencent/qgame/animplayer/AnimView$z1OoOif$1;->z1OoOdo:Lcom/tencent/qgame/animplayer/AnimView$z1OoOif;

    iget-object p0, p0, Lcom/tencent/qgame/animplayer/AnimView$z1OoOif;->z1OoOdo:Lcom/tencent/qgame/animplayer/AnimView;

    # getter for: Lcom/tencent/qgame/animplayer/AnimView;->animListener:Lcom/tencent/qgame/animplayer/inter/IAnimListener;
    invoke-static {p0}, Lcom/tencent/qgame/animplayer/AnimView;->access$getAnimListener$p(Lcom/tencent/qgame/animplayer/AnimView;)Lcom/tencent/qgame/animplayer/inter/IAnimListener;

    move-result-object p0

    if-eqz p0, :cond_d

    invoke-interface {p0, p1, p2}, Lcom/tencent/qgame/animplayer/inter/IAnimListener;->onVideoRender(ILcom/tencent/qgame/animplayer/AnimConfig;)V

    :cond_d
    return-void
.end method

.method public final onVideoStart()V
    .registers 1

    iget-object p0, p0, Lcom/tencent/qgame/animplayer/AnimView$z1OoOif$1;->z1OoOdo:Lcom/tencent/qgame/animplayer/AnimView$z1OoOif;

    iget-object p0, p0, Lcom/tencent/qgame/animplayer/AnimView$z1OoOif;->z1OoOdo:Lcom/tencent/qgame/animplayer/AnimView;

    # getter for: Lcom/tencent/qgame/animplayer/AnimView;->animListener:Lcom/tencent/qgame/animplayer/inter/IAnimListener;
    invoke-static {p0}, Lcom/tencent/qgame/animplayer/AnimView;->access$getAnimListener$p(Lcom/tencent/qgame/animplayer/AnimView;)Lcom/tencent/qgame/animplayer/inter/IAnimListener;

    move-result-object p0

    if-eqz p0, :cond_d

    invoke-interface {p0}, Lcom/tencent/qgame/animplayer/inter/IAnimListener;->onVideoStart()V

    :cond_d
    return-void
.end method
