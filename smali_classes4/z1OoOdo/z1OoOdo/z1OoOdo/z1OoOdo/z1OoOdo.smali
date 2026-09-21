.class public Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo;
.super Landroidx/recyclerview/widget/RecyclerView$EdgeEffectFactory;
.source "SourceFile"

# interfaces
.implements Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOfor;


# instance fields
.field public z1OoOdo:Lcom/transsion/effectengine/bounceeffect/BounceEdgeEffect;

.field public z1OoOfor:Lcom/transsion/effectengine/bounceeffect/BounceEdgeEffect;

.field public z1OoOif:Lcom/transsion/effectengine/bounceeffect/BounceEdgeEffect;

.field public z1OoOint:Lcom/transsion/effectengine/bounceeffect/BounceEdgeEffect;

.field public z1OoOnew:Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$EdgeEffectFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public createEdgeEffect(Landroidx/recyclerview/widget/RecyclerView;I)Landroid/widget/EdgeEffect;
    .registers 5

    if-eqz p2, :cond_2e

    const/4 v0, 0x1

    if-eq p2, v0, :cond_24

    const/4 v0, 0x2

    if-eq p2, v0, :cond_1a

    const/4 v0, 0x3

    if-eq p2, v0, :cond_10

    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$EdgeEffectFactory;->createEdgeEffect(Landroidx/recyclerview/widget/RecyclerView;I)Landroid/widget/EdgeEffect;

    move-result-object p0

    return-object p0

    :cond_10
    new-instance v0, Lcom/transsion/effectengine/bounceeffect/BounceEdgeEffect;

    iget-object v1, p0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo;->z1OoOnew:Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;

    invoke-direct {v0, p1, p2, v1}, Lcom/transsion/effectengine/bounceeffect/BounceEdgeEffect;-><init>(Landroid/view/View;ILz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;)V

    iput-object v0, p0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo;->z1OoOint:Lcom/transsion/effectengine/bounceeffect/BounceEdgeEffect;

    return-object v0

    :cond_1a
    new-instance v0, Lcom/transsion/effectengine/bounceeffect/BounceEdgeEffect;

    iget-object v1, p0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo;->z1OoOnew:Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;

    invoke-direct {v0, p1, p2, v1}, Lcom/transsion/effectengine/bounceeffect/BounceEdgeEffect;-><init>(Landroid/view/View;ILz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;)V

    iput-object v0, p0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo;->z1OoOif:Lcom/transsion/effectengine/bounceeffect/BounceEdgeEffect;

    return-object v0

    :cond_24
    new-instance v0, Lcom/transsion/effectengine/bounceeffect/BounceEdgeEffect;

    iget-object v1, p0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo;->z1OoOnew:Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;

    invoke-direct {v0, p1, p2, v1}, Lcom/transsion/effectengine/bounceeffect/BounceEdgeEffect;-><init>(Landroid/view/View;ILz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;)V

    iput-object v0, p0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo;->z1OoOfor:Lcom/transsion/effectengine/bounceeffect/BounceEdgeEffect;

    return-object v0

    :cond_2e
    new-instance v0, Lcom/transsion/effectengine/bounceeffect/BounceEdgeEffect;

    iget-object v1, p0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo;->z1OoOnew:Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;

    invoke-direct {v0, p1, p2, v1}, Lcom/transsion/effectengine/bounceeffect/BounceEdgeEffect;-><init>(Landroid/view/View;ILz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;)V

    iput-object v0, p0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo;->z1OoOdo:Lcom/transsion/effectengine/bounceeffect/BounceEdgeEffect;

    return-object v0
.end method

.method public z1OoOdo()V
    .registers 2

    .line 0
    iget-object v0, p0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo;->z1OoOdo:Lcom/transsion/effectengine/bounceeffect/BounceEdgeEffect;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/transsion/effectengine/bounceeffect/BounceEdgeEffect;->cancelBounceAnimation()V

    :cond_7
    iget-object v0, p0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo;->z1OoOif:Lcom/transsion/effectengine/bounceeffect/BounceEdgeEffect;

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Lcom/transsion/effectengine/bounceeffect/BounceEdgeEffect;->cancelBounceAnimation()V

    :cond_e
    iget-object v0, p0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo;->z1OoOfor:Lcom/transsion/effectengine/bounceeffect/BounceEdgeEffect;

    if-eqz v0, :cond_15

    invoke-virtual {v0}, Lcom/transsion/effectengine/bounceeffect/BounceEdgeEffect;->cancelBounceAnimation()V

    :cond_15
    iget-object p0, p0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo;->z1OoOint:Lcom/transsion/effectengine/bounceeffect/BounceEdgeEffect;

    if-eqz p0, :cond_1c

    invoke-virtual {p0}, Lcom/transsion/effectengine/bounceeffect/BounceEdgeEffect;->cancelBounceAnimation()V

    :cond_1c
    return-void
.end method

.method public z1OoOdo(Lcom/transsion/effectengine/bounceeffect/BounceEdgeEffect;)Z
    .registers 3

    .line 0
    iget-object v0, p0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo;->z1OoOfor:Lcom/transsion/effectengine/bounceeffect/BounceEdgeEffect;

    if-eqz v0, :cond_b

    if-eq v0, p1, :cond_b

    invoke-virtual {v0}, Lcom/transsion/effectengine/bounceeffect/BounceEdgeEffect;->isBounceEdgeAnimRunning()Z

    move-result v0

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    iget-object p0, p0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo;->z1OoOint:Lcom/transsion/effectengine/bounceeffect/BounceEdgeEffect;

    if-eqz p0, :cond_18

    if-eq p0, p1, :cond_18

    invoke-virtual {p0}, Lcom/transsion/effectengine/bounceeffect/BounceEdgeEffect;->isBounceEdgeAnimRunning()Z

    move-result p0

    or-int/2addr p0, v0

    return p0

    :cond_18
    return v0
.end method
