.class public Lcom/transsion/camera/ui/setting/videosightshock/adapter/VideoSightShockItemAdapter$ItemViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/ui/setting/videosightshock/adapter/VideoSightShockItemAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ItemViewHolder"
.end annotation


# instance fields
.field public final imageLayout:Landroid/widget/FrameLayout;

.field public final itemContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

.field public final itemLayout:Landroid/widget/FrameLayout;

.field public ivCompatItem:Lcom/transsion/camera/app/ui/widget/RotateCompatImageView;

.field public ivItem:Landroid/widget/ImageView;

.field public final ivItemSign:Landroid/widget/ImageView;

.field public final tvItemTitle:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/transsion/camera/ui/setting/videosightshock/adapter/VideoSightShockItemAdapter;Landroid/view/View;)V
    .registers 5

    .line 71
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 73
    sget v0, Lcom/transsion/camera/R$id;->fl_item_layout:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/adapter/VideoSightShockItemAdapter$ItemViewHolder;->itemLayout:Landroid/widget/FrameLayout;

    .line 74
    sget v0, Lcom/transsion/camera/R$id;->fl_item_image_layout:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/adapter/VideoSightShockItemAdapter$ItemViewHolder;->imageLayout:Landroid/widget/FrameLayout;

    .line 75
    sget v1, Lcom/transsion/camera/R$id;->item_container:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/ui/widget/RotateLayout;

    iput-object v1, p0, Lcom/transsion/camera/ui/setting/videosightshock/adapter/VideoSightShockItemAdapter$ItemViewHolder;->itemContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    .line 76
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result v1

    if-nez v1, :cond_32

    .line 77
    sget v1, Lcom/transsion/camera/R$id;->iv_item:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/transsion/camera/ui/setting/videosightshock/adapter/VideoSightShockItemAdapter$ItemViewHolder;->ivItem:Landroid/widget/ImageView;

    goto :goto_3c

    .line 79
    :cond_32
    sget v1, Lcom/transsion/camera/R$id;->iv_item:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/ui/widget/RotateCompatImageView;

    iput-object v1, p0, Lcom/transsion/camera/ui/setting/videosightshock/adapter/VideoSightShockItemAdapter$ItemViewHolder;->ivCompatItem:Lcom/transsion/camera/app/ui/widget/RotateCompatImageView;

    .line 81
    :goto_3c
    sget v1, Lcom/transsion/camera/R$id;->iv_item_chosen_sign:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/transsion/camera/ui/setting/videosightshock/adapter/VideoSightShockItemAdapter$ItemViewHolder;->ivItemSign:Landroid/widget/ImageView;

    .line 82
    sget v1, Lcom/transsion/camera/R$id;->tv_title:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/transsion/camera/ui/setting/videosightshock/adapter/VideoSightShockItemAdapter$ItemViewHolder;->tvItemTitle:Landroid/widget/TextView;

    const/4 p2, 0x1

    .line 84
    invoke-virtual {v0, p2}, Landroid/view/View;->setClipToOutline(Z)V

    .line 85
    new-instance p2, Lcom/transsion/camera/ui/setting/videosightshock/adapter/VideoSightShockItemAdapter$ItemViewHolder$1;

    invoke-direct {p2, p0, p1}, Lcom/transsion/camera/ui/setting/videosightshock/adapter/VideoSightShockItemAdapter$ItemViewHolder$1;-><init>(Lcom/transsion/camera/ui/setting/videosightshock/adapter/VideoSightShockItemAdapter$ItemViewHolder;Lcom/transsion/camera/ui/setting/videosightshock/adapter/VideoSightShockItemAdapter;)V

    invoke-virtual {v0, p2}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    return-void
.end method


# virtual methods
.method public updateRotation(IIZ)V
    .registers 5

    .line 95
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result v0

    if-eqz v0, :cond_13

    if-nez p1, :cond_13

    .line 96
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/videosightshock/adapter/VideoSightShockItemAdapter$ItemViewHolder;->itemContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {p1, p2, p3}, Lcom/transsion/camera/app/ui/widget/RotateLayout;->setOrientation(IZ)V

    .line 97
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videosightshock/adapter/VideoSightShockItemAdapter$ItemViewHolder;->ivCompatItem:Lcom/transsion/camera/app/ui/widget/RotateCompatImageView;

    invoke-interface {p0, p2, p3}, Lcom/transsion/camera/app/ui/widget/IRotatable;->setOrientation(IZ)V

    return-void

    .line 99
    :cond_13
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videosightshock/adapter/VideoSightShockItemAdapter$ItemViewHolder;->itemContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    const/4 p2, 0x1

    const/4 p3, 0x0

    if-ne p1, p2, :cond_1c

    const/16 p1, 0x5a

    goto :goto_1d

    :cond_1c
    move p1, p3

    :goto_1d
    invoke-virtual {p0, p1, p3}, Lcom/transsion/camera/app/ui/widget/RotateLayout;->setOrientation(IZ)V

    return-void
.end method
