.class Lcom/transsion/camera/feature/mode/pmaster/adapter/SelectItemRVAdapter$ViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/pmaster/adapter/SelectItemRVAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ViewHolder"
.end annotation


# instance fields
.field final civ:Landroid/widget/ImageView;

.field compatIv:Lcom/transsion/camera/app/ui/widget/RotateCompatImageView;

.field compatIvLayout:Landroid/view/ViewGroup;

.field iv:Landroid/widget/ImageView;

.field final ivTitleView:Landroid/widget/TextView;

.field final ll:Landroid/view/ViewGroup;

.field final rotateContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .registers 4

    .line 294
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 295
    sget v0, Lcom/transsion/camera/feature/pmaster/R$id;->feature_item_container:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/ui/widget/RotateLayout;

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/adapter/SelectItemRVAdapter$ViewHolder;->rotateContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    .line 296
    sget v0, Lcom/transsion/camera/feature/pmaster/R$id;->ll_item:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/adapter/SelectItemRVAdapter$ViewHolder;->ll:Landroid/view/ViewGroup;

    .line 297
    sget v1, Lcom/transsion/camera/feature/pmaster/R$id;->iv_cover:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/transsion/camera/feature/mode/pmaster/adapter/SelectItemRVAdapter$ViewHolder;->civ:Landroid/widget/ImageView;

    .line 298
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result v1

    if-nez v1, :cond_32

    .line 299
    sget v1, Lcom/transsion/camera/feature/pmaster/R$id;->iv_item:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/transsion/camera/feature/mode/pmaster/adapter/SelectItemRVAdapter$ViewHolder;->iv:Landroid/widget/ImageView;

    goto :goto_46

    .line 301
    :cond_32
    sget v1, Lcom/transsion/camera/feature/pmaster/R$id;->iv_item:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/ui/widget/RotateCompatImageView;

    iput-object v1, p0, Lcom/transsion/camera/feature/mode/pmaster/adapter/SelectItemRVAdapter$ViewHolder;->compatIv:Lcom/transsion/camera/app/ui/widget/RotateCompatImageView;

    .line 302
    sget v1, Lcom/transsion/camera/feature/pmaster/R$id;->iv_item_layout:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/transsion/camera/feature/mode/pmaster/adapter/SelectItemRVAdapter$ViewHolder;->compatIvLayout:Landroid/view/ViewGroup;

    .line 304
    :goto_46
    sget v1, Lcom/transsion/camera/feature/pmaster/R$id;->iv_title:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/adapter/SelectItemRVAdapter$ViewHolder;->ivTitleView:Landroid/widget/TextView;

    .line 306
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result p1

    if-eqz p1, :cond_62

    const/4 p1, 0x1

    .line 307
    invoke-virtual {v0, p1}, Landroid/view/View;->setClipToOutline(Z)V

    .line 308
    new-instance p1, Lcom/transsion/camera/feature/mode/pmaster/adapter/SelectItemRVAdapter$ViewHolder$1;

    invoke-direct {p1, p0}, Lcom/transsion/camera/feature/mode/pmaster/adapter/SelectItemRVAdapter$ViewHolder$1;-><init>(Lcom/transsion/camera/feature/mode/pmaster/adapter/SelectItemRVAdapter$ViewHolder;)V

    invoke-virtual {v0, p1}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    :cond_62
    return-void
.end method


# virtual methods
.method public updateRotation(IIZ)V
    .registers 7

    const/4 v0, 0x1

    const/16 v1, 0x5a

    const/4 v2, 0x0

    if-ne p1, v0, :cond_c

    .line 320
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/adapter/SelectItemRVAdapter$ViewHolder;->rotateContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {p0, v1, v2}, Lcom/transsion/camera/app/ui/widget/RotateLayout;->setOrientation(IZ)V

    return-void

    :cond_c
    const/4 v0, 0x7

    if-ne p1, v0, :cond_25

    if-eq p2, v1, :cond_1b

    const/16 p1, 0x10e

    if-eq p2, p1, :cond_1b

    .line 330
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/adapter/SelectItemRVAdapter$ViewHolder;->rotateContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {p0, v2, v2}, Lcom/transsion/camera/app/ui/widget/RotateLayout;->setOrientation(IZ)V

    return-void

    .line 325
    :cond_1b
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/adapter/SelectItemRVAdapter$ViewHolder;->rotateContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    add-int/lit16 p2, p2, 0xb4

    rem-int/lit16 p2, p2, 0x168

    invoke-virtual {p0, p2, v2}, Lcom/transsion/camera/app/ui/widget/RotateLayout;->setOrientation(IZ)V

    return-void

    .line 334
    :cond_25
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result v0

    if-eqz v0, :cond_38

    if-nez p1, :cond_38

    .line 335
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/adapter/SelectItemRVAdapter$ViewHolder;->rotateContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {p1, p2, p3}, Lcom/transsion/camera/app/ui/widget/RotateLayout;->setOrientation(IZ)V

    .line 336
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/adapter/SelectItemRVAdapter$ViewHolder;->compatIv:Lcom/transsion/camera/app/ui/widget/RotateCompatImageView;

    invoke-interface {p0, p2, p3}, Lcom/transsion/camera/app/ui/widget/IRotatable;->setOrientation(IZ)V

    return-void

    .line 338
    :cond_38
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/adapter/SelectItemRVAdapter$ViewHolder;->rotateContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {p0, v2, v2}, Lcom/transsion/camera/app/ui/widget/RotateLayout;->setOrientation(IZ)V

    return-void
.end method
