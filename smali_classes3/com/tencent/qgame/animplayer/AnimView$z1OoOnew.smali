.class final Lcom/tencent/qgame/animplayer/AnimView$z1OoOnew;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/qgame/animplayer/AnimView;->onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic z1OoOdo:Lcom/tencent/qgame/animplayer/AnimView;


# direct methods
.method constructor <init>(Lcom/tencent/qgame/animplayer/AnimView;)V
    .registers 2

    iput-object p1, p0, Lcom/tencent/qgame/animplayer/AnimView$z1OoOnew;->z1OoOdo:Lcom/tencent/qgame/animplayer/AnimView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/tencent/qgame/animplayer/AnimView$z1OoOnew;->z1OoOdo:Lcom/tencent/qgame/animplayer/AnimView;

    # getter for: Lcom/tencent/qgame/animplayer/AnimView;->innerTextureView:Lcom/tencent/qgame/animplayer/z1OoOfor/z1OoOdo;
    invoke-static {v0}, Lcom/tencent/qgame/animplayer/AnimView;->access$getInnerTextureView$p(Lcom/tencent/qgame/animplayer/AnimView;)Lcom/tencent/qgame/animplayer/z1OoOfor/z1OoOdo;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    :cond_c
    iget-object v0, p0, Lcom/tencent/qgame/animplayer/AnimView$z1OoOnew;->z1OoOdo:Lcom/tencent/qgame/animplayer/AnimView;

    invoke-static {v0, v1}, Lcom/tencent/qgame/animplayer/AnimView;->access$setInnerTextureView$p(Lcom/tencent/qgame/animplayer/AnimView;Lcom/tencent/qgame/animplayer/z1OoOfor/z1OoOdo;)V

    iget-object p0, p0, Lcom/tencent/qgame/animplayer/AnimView$z1OoOnew;->z1OoOdo:Lcom/tencent/qgame/animplayer/AnimView;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    return-void
.end method
