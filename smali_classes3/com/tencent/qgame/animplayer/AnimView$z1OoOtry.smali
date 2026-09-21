.class final Lcom/tencent/qgame/animplayer/AnimView$z1OoOtry;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/qgame/animplayer/AnimView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic z1OoOdo:Lcom/tencent/qgame/animplayer/AnimView;

.field final synthetic z1OoOif:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/tencent/qgame/animplayer/AnimView;Landroid/content/Context;)V
    .registers 3

    iput-object p1, p0, Lcom/tencent/qgame/animplayer/AnimView$z1OoOtry;->z1OoOdo:Lcom/tencent/qgame/animplayer/AnimView;

    iput-object p2, p0, Lcom/tencent/qgame/animplayer/AnimView$z1OoOtry;->z1OoOif:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    iget-object v0, p0, Lcom/tencent/qgame/animplayer/AnimView$z1OoOtry;->z1OoOdo:Lcom/tencent/qgame/animplayer/AnimView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v0, p0, Lcom/tencent/qgame/animplayer/AnimView$z1OoOtry;->z1OoOdo:Lcom/tencent/qgame/animplayer/AnimView;

    new-instance v1, Lcom/tencent/qgame/animplayer/z1OoOfor/z1OoOdo;

    iget-object v2, p0, Lcom/tencent/qgame/animplayer/AnimView$z1OoOtry;->z1OoOif:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/tencent/qgame/animplayer/z1OoOfor/z1OoOdo;-><init>(Landroid/content/Context;B)V

    iget-object v2, p0, Lcom/tencent/qgame/animplayer/AnimView$z1OoOtry;->z1OoOdo:Lcom/tencent/qgame/animplayer/AnimView;

    invoke-static {v2}, Lcom/tencent/qgame/animplayer/AnimView;->access$getPlayer$p(Lcom/tencent/qgame/animplayer/AnimView;)Lcom/tencent/qgame/animplayer/z1OoOif;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tencent/qgame/animplayer/z1OoOfor/z1OoOdo;->setPlayer(Lcom/tencent/qgame/animplayer/z1OoOif;)V

    invoke-virtual {v1, v3}, Landroid/view/TextureView;->setOpaque(Z)V

    iget-object v2, p0, Lcom/tencent/qgame/animplayer/AnimView$z1OoOtry;->z1OoOdo:Lcom/tencent/qgame/animplayer/AnimView;

    invoke-virtual {v1, v2}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    iget-object v2, p0, Lcom/tencent/qgame/animplayer/AnimView$z1OoOtry;->z1OoOdo:Lcom/tencent/qgame/animplayer/AnimView;

    # getter for: Lcom/tencent/qgame/animplayer/AnimView;->scaleTypeUtil:Lcom/tencent/qgame/animplayer/util/ScaleTypeUtil;
    invoke-static {v2}, Lcom/tencent/qgame/animplayer/AnimView;->access$getScaleTypeUtil$p(Lcom/tencent/qgame/animplayer/AnimView;)Lcom/tencent/qgame/animplayer/util/ScaleTypeUtil;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/tencent/qgame/animplayer/util/ScaleTypeUtil;->getLayoutParam(Landroid/view/View;)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static {v0, v1}, Lcom/tencent/qgame/animplayer/AnimView;->access$setInnerTextureView$p(Lcom/tencent/qgame/animplayer/AnimView;Lcom/tencent/qgame/animplayer/z1OoOfor/z1OoOdo;)V

    iget-object p0, p0, Lcom/tencent/qgame/animplayer/AnimView$z1OoOtry;->z1OoOdo:Lcom/tencent/qgame/animplayer/AnimView;

    # getter for: Lcom/tencent/qgame/animplayer/AnimView;->innerTextureView:Lcom/tencent/qgame/animplayer/z1OoOfor/z1OoOdo;
    invoke-static {p0}, Lcom/tencent/qgame/animplayer/AnimView;->access$getInnerTextureView$p(Lcom/tencent/qgame/animplayer/AnimView;)Lcom/tencent/qgame/animplayer/z1OoOfor/z1OoOdo;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method
