.class final Lcom/transsion/camera/feature/mode/vlog/ui/adapter/FreeFillAdapter$FreeViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/vlog/ui/adapter/FreeFillAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "FreeViewHolder"
.end annotation


# instance fields
.field private final deleteLayout:Lcom/transsion/camera/app/ui/widget/RotateLayout;

.field private final deleteView:Lcom/transsion/camera/app/ui/widget/RotateImageView;

.field private final itemRoot:Landroid/widget/FrameLayout;

.field private final maskView:Landroid/widget/ImageView;

.field private final thumbnailView:Lcom/transsion/camera/app/ui/widget/RotateImageView;


# direct methods
.method static bridge synthetic -$$Nest$fgetdeleteLayout(Lcom/transsion/camera/feature/mode/vlog/ui/adapter/FreeFillAdapter$FreeViewHolder;)Lcom/transsion/camera/app/ui/widget/RotateLayout;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/FreeFillAdapter$FreeViewHolder;->deleteLayout:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetdeleteView(Lcom/transsion/camera/feature/mode/vlog/ui/adapter/FreeFillAdapter$FreeViewHolder;)Lcom/transsion/camera/app/ui/widget/RotateImageView;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/FreeFillAdapter$FreeViewHolder;->deleteView:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetitemRoot(Lcom/transsion/camera/feature/mode/vlog/ui/adapter/FreeFillAdapter$FreeViewHolder;)Landroid/widget/FrameLayout;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/FreeFillAdapter$FreeViewHolder;->itemRoot:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmaskView(Lcom/transsion/camera/feature/mode/vlog/ui/adapter/FreeFillAdapter$FreeViewHolder;)Landroid/widget/ImageView;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/FreeFillAdapter$FreeViewHolder;->maskView:Landroid/widget/ImageView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetthumbnailView(Lcom/transsion/camera/feature/mode/vlog/ui/adapter/FreeFillAdapter$FreeViewHolder;)Lcom/transsion/camera/app/ui/widget/RotateImageView;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/FreeFillAdapter$FreeViewHolder;->thumbnailView:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    return-object p0
.end method

.method public constructor <init>(Lcom/transsion/camera/feature/mode/vlog/ui/adapter/FreeFillAdapter;Landroid/view/View;)V
    .registers 7

    .line 263
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 264
    sget v0, Lcom/transsion/camera/feature/vlog/R$id;->free_shot_segment_item_root:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/FreeFillAdapter$FreeViewHolder;->itemRoot:Landroid/widget/FrameLayout;

    .line 265
    sget v1, Lcom/transsion/camera/feature/vlog/R$id;->free_delete_layout:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/ui/widget/RotateLayout;

    iput-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/FreeFillAdapter$FreeViewHolder;->deleteLayout:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    .line 266
    sget v2, Lcom/transsion/camera/feature/vlog/R$id;->free_thumbnail:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/transsion/camera/app/ui/widget/RotateImageView;

    iput-object v2, p0, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/FreeFillAdapter$FreeViewHolder;->thumbnailView:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    .line 267
    sget v3, Lcom/transsion/camera/feature/vlog/R$id;->free_delete:I

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/transsion/camera/app/ui/widget/RotateImageView;

    iput-object v3, p0, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/FreeFillAdapter$FreeViewHolder;->deleteView:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    .line 268
    sget v3, Lcom/transsion/camera/feature/vlog/R$id;->free_mask:I

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/FreeFillAdapter$FreeViewHolder;->maskView:Landroid/widget/ImageView;

    const/4 p2, 0x1

    .line 270
    invoke-virtual {v0, p2}, Landroid/view/View;->setClipToOutline(Z)V

    .line 271
    new-instance p2, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/FreeFillAdapter$FreeViewHolder$1;

    invoke-direct {p2, p0, p1}, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/FreeFillAdapter$FreeViewHolder$1;-><init>(Lcom/transsion/camera/feature/mode/vlog/ui/adapter/FreeFillAdapter$FreeViewHolder;Lcom/transsion/camera/feature/mode/vlog/ui/adapter/FreeFillAdapter;)V

    invoke-virtual {v0, p2}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 279
    invoke-static {p1}, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/FreeFillAdapter;->-$$Nest$fgetmOrientation(Lcom/transsion/camera/feature/mode/vlog/ui/adapter/FreeFillAdapter;)I

    move-result p0

    const/4 p2, 0x0

    invoke-virtual {v1, p0, p2}, Lcom/transsion/camera/app/ui/widget/RotateLayout;->setOrientation(IZ)V

    .line 280
    invoke-static {p1}, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/FreeFillAdapter;->-$$Nest$fgetmOrientation(Lcom/transsion/camera/feature/mode/vlog/ui/adapter/FreeFillAdapter;)I

    move-result p0

    invoke-virtual {v2, p0, p2}, Lcom/transsion/camera/app/ui/widget/RotateImageView;->setOrientation(IZ)V

    return-void
.end method
