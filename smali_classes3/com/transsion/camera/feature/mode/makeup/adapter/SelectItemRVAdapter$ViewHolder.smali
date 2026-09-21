.class public Lcom/transsion/camera/feature/mode/makeup/adapter/SelectItemRVAdapter$ViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/makeup/adapter/SelectItemRVAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ViewHolder"
.end annotation


# instance fields
.field public final civ:Landroid/widget/ImageView;

.field public compatIv:Lcom/transsion/camera/app/ui/widget/RotateCompatImageView;

.field public compatIvLayout:Landroid/view/ViewGroup;

.field public iv:Landroid/widget/ImageView;

.field final ivTitleView:Landroid/widget/TextView;

.field final ll:Landroid/view/ViewGroup;

.field final rotateContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .registers 4

    .line 269
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 270
    sget v0, Lcom/transsion/camera/feature/makeup/R$id;->feature_item_container:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/ui/widget/RotateLayout;

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/adapter/SelectItemRVAdapter$ViewHolder;->rotateContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    .line 271
    sget v0, Lcom/transsion/camera/feature/makeup/R$id;->ll_item:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/adapter/SelectItemRVAdapter$ViewHolder;->ll:Landroid/view/ViewGroup;

    .line 272
    sget v1, Lcom/transsion/camera/feature/makeup/R$id;->iv_cover:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/adapter/SelectItemRVAdapter$ViewHolder;->civ:Landroid/widget/ImageView;

    .line 273
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result v1

    if-nez v1, :cond_32

    .line 274
    sget v1, Lcom/transsion/camera/feature/makeup/R$id;->iv_item:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/adapter/SelectItemRVAdapter$ViewHolder;->iv:Landroid/widget/ImageView;

    goto :goto_46

    .line 276
    :cond_32
    sget v1, Lcom/transsion/camera/feature/makeup/R$id;->iv_item:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/ui/widget/RotateCompatImageView;

    iput-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/adapter/SelectItemRVAdapter$ViewHolder;->compatIv:Lcom/transsion/camera/app/ui/widget/RotateCompatImageView;

    .line 277
    sget v1, Lcom/transsion/camera/feature/makeup/R$id;->iv_item_layout:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/adapter/SelectItemRVAdapter$ViewHolder;->compatIvLayout:Landroid/view/ViewGroup;

    .line 279
    :goto_46
    sget v1, Lcom/transsion/camera/feature/makeup/R$id;->iv_title:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/adapter/SelectItemRVAdapter$ViewHolder;->ivTitleView:Landroid/widget/TextView;

    .line 281
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result p1

    if-eqz p1, :cond_62

    const/4 p1, 0x1

    .line 282
    invoke-virtual {v0, p1}, Landroid/view/View;->setClipToOutline(Z)V

    .line 283
    new-instance p1, Lcom/transsion/camera/feature/mode/makeup/adapter/SelectItemRVAdapter$ViewHolder$1;

    invoke-direct {p1, p0}, Lcom/transsion/camera/feature/mode/makeup/adapter/SelectItemRVAdapter$ViewHolder$1;-><init>(Lcom/transsion/camera/feature/mode/makeup/adapter/SelectItemRVAdapter$ViewHolder;)V

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

    .line 295
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/adapter/SelectItemRVAdapter$ViewHolder;->rotateContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {p0, v1, v2}, Lcom/transsion/camera/app/ui/widget/RotateLayout;->setOrientation(IZ)V

    return-void

    :cond_c
    const/4 v0, 0x7

    if-ne p1, v0, :cond_26

    if-eq p2, v1, :cond_1c

    const/16 p1, 0x10e

    if-ne p2, p1, :cond_16

    goto :goto_1c

    .line 300
    :cond_16
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/adapter/SelectItemRVAdapter$ViewHolder;->rotateContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {p0, v2, v2}, Lcom/transsion/camera/app/ui/widget/RotateLayout;->setOrientation(IZ)V

    return-void

    .line 298
    :cond_1c
    :goto_1c
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/adapter/SelectItemRVAdapter$ViewHolder;->rotateContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    add-int/lit16 p2, p2, 0xb4

    rem-int/lit16 p2, p2, 0x168

    invoke-virtual {p0, p2, v2}, Lcom/transsion/camera/app/ui/widget/RotateLayout;->setOrientation(IZ)V

    return-void

    .line 303
    :cond_26
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result v0

    if-eqz v0, :cond_39

    if-nez p1, :cond_39

    .line 304
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/adapter/SelectItemRVAdapter$ViewHolder;->rotateContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {p1, p2, p3}, Lcom/transsion/camera/app/ui/widget/RotateLayout;->setOrientation(IZ)V

    .line 305
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/adapter/SelectItemRVAdapter$ViewHolder;->compatIv:Lcom/transsion/camera/app/ui/widget/RotateCompatImageView;

    invoke-interface {p0, p2, p3}, Lcom/transsion/camera/app/ui/widget/IRotatable;->setOrientation(IZ)V

    return-void

    .line 307
    :cond_39
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/adapter/SelectItemRVAdapter$ViewHolder;->rotateContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {p0, v2, v2}, Lcom/transsion/camera/app/ui/widget/RotateLayout;->setOrientation(IZ)V

    return-void
.end method
