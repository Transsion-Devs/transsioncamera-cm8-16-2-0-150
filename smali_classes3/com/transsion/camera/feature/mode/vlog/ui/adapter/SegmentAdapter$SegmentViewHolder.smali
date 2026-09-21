.class final Lcom/transsion/camera/feature/mode/vlog/ui/adapter/SegmentAdapter$SegmentViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/vlog/ui/adapter/SegmentAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SegmentViewHolder"
.end annotation


# instance fields
.field private final choseSign:Landroid/widget/ImageView;

.field private final deleteLayout:Lcom/transsion/camera/app/ui/widget/RotateLayout;

.field private final deleteView:Lcom/transsion/camera/app/ui/widget/RotateImageView;

.field private final duration:Landroid/widget/TextView;

.field private final durationRoot:Lcom/transsion/camera/app/ui/widget/RotateFrameLayout;

.field private final itemRoot:Landroid/widget/FrameLayout;

.field private final maskView:Landroid/widget/ImageView;

.field private final thumbnailView:Lcom/transsion/camera/app/ui/widget/RotateImageView;


# direct methods
.method static bridge synthetic -$$Nest$fgetchoseSign(Lcom/transsion/camera/feature/mode/vlog/ui/adapter/SegmentAdapter$SegmentViewHolder;)Landroid/widget/ImageView;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/SegmentAdapter$SegmentViewHolder;->choseSign:Landroid/widget/ImageView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetdeleteLayout(Lcom/transsion/camera/feature/mode/vlog/ui/adapter/SegmentAdapter$SegmentViewHolder;)Lcom/transsion/camera/app/ui/widget/RotateLayout;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/SegmentAdapter$SegmentViewHolder;->deleteLayout:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetdeleteView(Lcom/transsion/camera/feature/mode/vlog/ui/adapter/SegmentAdapter$SegmentViewHolder;)Lcom/transsion/camera/app/ui/widget/RotateImageView;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/SegmentAdapter$SegmentViewHolder;->deleteView:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetduration(Lcom/transsion/camera/feature/mode/vlog/ui/adapter/SegmentAdapter$SegmentViewHolder;)Landroid/widget/TextView;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/SegmentAdapter$SegmentViewHolder;->duration:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetdurationRoot(Lcom/transsion/camera/feature/mode/vlog/ui/adapter/SegmentAdapter$SegmentViewHolder;)Lcom/transsion/camera/app/ui/widget/RotateFrameLayout;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/SegmentAdapter$SegmentViewHolder;->durationRoot:Lcom/transsion/camera/app/ui/widget/RotateFrameLayout;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetitemRoot(Lcom/transsion/camera/feature/mode/vlog/ui/adapter/SegmentAdapter$SegmentViewHolder;)Landroid/widget/FrameLayout;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/SegmentAdapter$SegmentViewHolder;->itemRoot:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmaskView(Lcom/transsion/camera/feature/mode/vlog/ui/adapter/SegmentAdapter$SegmentViewHolder;)Landroid/widget/ImageView;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/SegmentAdapter$SegmentViewHolder;->maskView:Landroid/widget/ImageView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetthumbnailView(Lcom/transsion/camera/feature/mode/vlog/ui/adapter/SegmentAdapter$SegmentViewHolder;)Lcom/transsion/camera/app/ui/widget/RotateImageView;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/SegmentAdapter$SegmentViewHolder;->thumbnailView:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    return-object p0
.end method

.method public constructor <init>(Lcom/transsion/camera/feature/mode/vlog/ui/adapter/SegmentAdapter;Landroid/view/View;)V
    .registers 10

    .line 278
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 279
    sget v0, Lcom/transsion/camera/feature/vlog/R$id;->cut_same_segment_item_root:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/SegmentAdapter$SegmentViewHolder;->itemRoot:Landroid/widget/FrameLayout;

    .line 280
    sget v1, Lcom/transsion/camera/feature/vlog/R$id;->duration_layout:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/ui/widget/RotateFrameLayout;

    iput-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/SegmentAdapter$SegmentViewHolder;->durationRoot:Lcom/transsion/camera/app/ui/widget/RotateFrameLayout;

    .line 281
    sget v2, Lcom/transsion/camera/feature/vlog/R$id;->duration:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/SegmentAdapter$SegmentViewHolder;->duration:Landroid/widget/TextView;

    .line 282
    sget v2, Lcom/transsion/camera/feature/vlog/R$id;->thumbnail:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/transsion/camera/app/ui/widget/RotateImageView;

    iput-object v2, p0, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/SegmentAdapter$SegmentViewHolder;->thumbnailView:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    .line 283
    sget v3, Lcom/transsion/camera/feature/vlog/R$id;->chosen_sign:I

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/SegmentAdapter$SegmentViewHolder;->choseSign:Landroid/widget/ImageView;

    .line 284
    sget v4, Lcom/transsion/camera/feature/vlog/R$id;->template_segment_black_mask:I

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/SegmentAdapter$SegmentViewHolder;->maskView:Landroid/widget/ImageView;

    .line 285
    sget v4, Lcom/transsion/camera/feature/vlog/R$id;->cut_same_delete_layout:I

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/transsion/camera/app/ui/widget/RotateLayout;

    iput-object v4, p0, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/SegmentAdapter$SegmentViewHolder;->deleteLayout:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    .line 286
    sget v5, Lcom/transsion/camera/feature/vlog/R$id;->delete:I

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/transsion/camera/app/ui/widget/RotateImageView;

    iput-object p2, p0, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/SegmentAdapter$SegmentViewHolder;->deleteView:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    .line 288
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    .line 289
    invoke-static {p1}, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/SegmentAdapter;->-$$Nest$fgetmContext(Lcom/transsion/camera/feature/mode/vlog/ui/adapter/SegmentAdapter;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v5, Lcom/transsion/camera/feature/vlog/R$dimen;->vlog_template_segment_item_size:I

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/SegmentAdapter;->-$$Nest$fgetmContext(Lcom/transsion/camera/feature/mode/vlog/ui/adapter/SegmentAdapter;)Landroid/content/Context;

    move-result-object v5

    .line 290
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/transsion/camera/feature/vlog/R$dimen;->vlog_chosen_sign_padding:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    add-int/2addr v3, v5

    iput v3, p2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 291
    invoke-static {p1}, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/SegmentAdapter;->-$$Nest$fgetmContext(Lcom/transsion/camera/feature/mode/vlog/ui/adapter/SegmentAdapter;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v5, Lcom/transsion/camera/feature/vlog/R$dimen;->vlog_template_segment_item_size:I

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/SegmentAdapter;->-$$Nest$fgetmContext(Lcom/transsion/camera/feature/mode/vlog/ui/adapter/SegmentAdapter;)Landroid/content/Context;

    move-result-object v5

    .line 292
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/transsion/camera/feature/vlog/R$dimen;->vlog_chosen_sign_padding:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    add-int/2addr v3, v5

    iput v3, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 p2, 0x1

    .line 294
    invoke-virtual {v0, p2}, Landroid/view/View;->setClipToOutline(Z)V

    .line 295
    new-instance p2, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/SegmentAdapter$SegmentViewHolder$1;

    invoke-direct {p2, p0, p1}, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/SegmentAdapter$SegmentViewHolder$1;-><init>(Lcom/transsion/camera/feature/mode/vlog/ui/adapter/SegmentAdapter$SegmentViewHolder;Lcom/transsion/camera/feature/mode/vlog/ui/adapter/SegmentAdapter;)V

    invoke-virtual {v0, p2}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 303
    invoke-static {p1}, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/SegmentAdapter;->-$$Nest$fgetmOrientation(Lcom/transsion/camera/feature/mode/vlog/ui/adapter/SegmentAdapter;)I

    move-result p0

    const/4 p2, 0x0

    invoke-virtual {v1, p0, p2}, Lcom/transsion/camera/app/ui/widget/RotateFrameLayout;->setOrientation(IZ)V

    .line 304
    invoke-static {p1}, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/SegmentAdapter;->-$$Nest$fgetmOrientation(Lcom/transsion/camera/feature/mode/vlog/ui/adapter/SegmentAdapter;)I

    move-result p0

    invoke-virtual {v4, p0, p2}, Lcom/transsion/camera/app/ui/widget/RotateLayout;->setOrientation(IZ)V

    .line 305
    invoke-static {p1}, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/SegmentAdapter;->-$$Nest$fgetmOrientation(Lcom/transsion/camera/feature/mode/vlog/ui/adapter/SegmentAdapter;)I

    move-result p0

    invoke-virtual {v2, p0, p2}, Lcom/transsion/camera/app/ui/widget/RotateImageView;->setOrientation(IZ)V

    return-void
.end method
