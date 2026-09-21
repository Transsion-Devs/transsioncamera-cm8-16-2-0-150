.class public Lcom/transsion/camera/feature/imagestyle/widget/ImageStyleItemAdapter$ItemViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/imagestyle/widget/ImageStyleItemAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ItemViewHolder"
.end annotation


# instance fields
.field public final itemRootLayout:Landroid/widget/FrameLayout;

.field public final ivItemSign:Landroid/widget/ImageView;

.field public rotatableImageViewItem:Lcom/transsion/camera/app/ui/widget/IRotatable;

.field public final rtLayout:Lcom/transsion/camera/app/ui/widget/RotateLayout;

.field public final tvItemTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .registers 4

    .line 64
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 58
    iput-object v0, p0, Lcom/transsion/camera/feature/imagestyle/widget/ImageStyleItemAdapter$ItemViewHolder;->rotatableImageViewItem:Lcom/transsion/camera/app/ui/widget/IRotatable;

    .line 65
    sget v0, Lcom/transsion/camera/feature/imagestyle/R$id;->is_item_root_layout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/transsion/camera/feature/imagestyle/widget/ImageStyleItemAdapter$ItemViewHolder;->itemRootLayout:Landroid/widget/FrameLayout;

    .line 66
    sget v1, Lcom/transsion/camera/feature/imagestyle/R$id;->is_item_rtlayout:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/ui/widget/RotateLayout;

    iput-object v1, p0, Lcom/transsion/camera/feature/imagestyle/widget/ImageStyleItemAdapter$ItemViewHolder;->rtLayout:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    .line 67
    sget v1, Lcom/transsion/camera/feature/imagestyle/R$id;->iv_item:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/ui/widget/IRotatable;

    iput-object v1, p0, Lcom/transsion/camera/feature/imagestyle/widget/ImageStyleItemAdapter$ItemViewHolder;->rotatableImageViewItem:Lcom/transsion/camera/app/ui/widget/IRotatable;

    .line 68
    sget v1, Lcom/transsion/camera/feature/imagestyle/R$id;->iv_item_chosen_sign:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/transsion/camera/feature/imagestyle/widget/ImageStyleItemAdapter$ItemViewHolder;->ivItemSign:Landroid/widget/ImageView;

    .line 69
    sget v1, Lcom/transsion/camera/feature/imagestyle/R$id;->tv_title:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/transsion/camera/feature/imagestyle/widget/ImageStyleItemAdapter$ItemViewHolder;->tvItemTitle:Landroid/widget/TextView;

    const/4 p1, 0x1

    .line 71
    invoke-virtual {v0, p1}, Landroid/view/View;->setClipToOutline(Z)V

    .line 72
    new-instance p1, Lcom/transsion/camera/feature/imagestyle/widget/ImageStyleItemAdapter$ItemViewHolder$1;

    invoke-direct {p1, p0}, Lcom/transsion/camera/feature/imagestyle/widget/ImageStyleItemAdapter$ItemViewHolder$1;-><init>(Lcom/transsion/camera/feature/imagestyle/widget/ImageStyleItemAdapter$ItemViewHolder;)V

    invoke-virtual {v0, p1}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    return-void
.end method


# virtual methods
.method public getImageView()Landroid/widget/ImageView;
    .registers 1

    .line 86
    iget-object p0, p0, Lcom/transsion/camera/feature/imagestyle/widget/ImageStyleItemAdapter$ItemViewHolder;->rotatableImageViewItem:Lcom/transsion/camera/app/ui/widget/IRotatable;

    check-cast p0, Landroid/widget/ImageView;

    return-object p0
.end method

.method public setImageView(Lcom/transsion/camera/app/ui/widget/IRotatable;)V
    .registers 2

    .line 82
    iput-object p1, p0, Lcom/transsion/camera/feature/imagestyle/widget/ImageStyleItemAdapter$ItemViewHolder;->rotatableImageViewItem:Lcom/transsion/camera/app/ui/widget/IRotatable;

    return-void
.end method

.method public setOrientation(IZ)V
    .registers 5

    .line 99
    iget-object v0, p0, Lcom/transsion/camera/feature/imagestyle/widget/ImageStyleItemAdapter$ItemViewHolder;->rtLayout:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/transsion/camera/app/ui/widget/RotateLayout;->setOrientation(IZ)V

    .line 100
    iget-object p0, p0, Lcom/transsion/camera/feature/imagestyle/widget/ImageStyleItemAdapter$ItemViewHolder;->rotatableImageViewItem:Lcom/transsion/camera/app/ui/widget/IRotatable;

    invoke-interface {p0, p1, p2}, Lcom/transsion/camera/app/ui/widget/IRotatable;->setOrientation(IZ)V

    return-void
.end method

.method updateSize(II)V
    .registers 4

    if-lez p1, :cond_13

    if-lez p2, :cond_13

    .line 91
    iget-object v0, p0, Lcom/transsion/camera/feature/imagestyle/widget/ImageStyleItemAdapter$ItemViewHolder;->itemRootLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 92
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 93
    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 94
    iget-object p0, p0, Lcom/transsion/camera/feature/imagestyle/widget/ImageStyleItemAdapter$ItemViewHolder;->itemRootLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_13
    return-void
.end method
