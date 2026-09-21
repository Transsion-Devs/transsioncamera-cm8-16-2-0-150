.class public Lcom/transsion/camera/feature/mode/vlog/ui/adapter/SegmentItemDecoration;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "SourceFile"


# instance fields
.field private final mAbsoluteItemInterval:I

.field private final mCurrentPage:I

.field private final mItemRootWidth:I

.field private final mRelativeItemInterval:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .registers 6
    .param p2    # I
        .annotation build Lcom/transsion/camera/feature/mode/vlog/IVlog$Page;
        .end annotation
    .end param

    .line 23
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    .line 24
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/camera/feature/vlog/R$dimen;->vlog_cutsame_segment_item_root_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/SegmentItemDecoration;->mItemRootWidth:I

    .line 25
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/camera/feature/vlog/R$dimen;->vlog_cutsame_segment_item_interval:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/SegmentItemDecoration;->mAbsoluteItemInterval:I

    .line 26
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v2, Lcom/transsion/camera/feature/vlog/R$dimen;->vlog_template_segment_item_size:I

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    sub-int/2addr v0, p1

    div-int/lit8 v0, v0, 0x2

    if-gtz v0, :cond_2d

    .line 29
    iput v1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/SegmentItemDecoration;->mRelativeItemInterval:I

    goto :goto_32

    :cond_2d
    mul-int/lit8 v0, v0, 0x2

    sub-int/2addr v1, v0

    .line 31
    iput v1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/SegmentItemDecoration;->mRelativeItemInterval:I

    .line 34
    :goto_32
    iput p2, p0, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/SegmentItemDecoration;->mCurrentPage:I

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .registers 10

    .line 39
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p4

    if-nez p4, :cond_7

    goto :goto_62

    .line 44
    :cond_7
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->getViewLayoutPosition()I

    move-result p2

    .line 46
    iget v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/SegmentItemDecoration;->mCurrentPage:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_28

    .line 47
    invoke-virtual {p4}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    sub-int/2addr v0, v2

    if-ne p2, v0, :cond_23

    .line 48
    invoke-virtual {p1, v3, v3, v3, v3}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_28

    .line 50
    :cond_23
    iget v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/SegmentItemDecoration;->mRelativeItemInterval:I

    invoke-virtual {p1, v3, v3, v0, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 54
    :cond_28
    :goto_28
    iget v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/SegmentItemDecoration;->mCurrentPage:I

    if-ne v0, v2, :cond_62

    if-ltz p2, :cond_62

    .line 55
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/feature/mode/vlog/widget/RecyclerLinearLayoutManager;

    if-nez v0, :cond_37

    goto :goto_62

    .line 59
    :cond_37
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getItemCount()I

    move-result v0

    .line 60
    invoke-virtual {p3}, Landroid/view/View;->getMeasuredWidth()I

    move-result p3

    .line 62
    iget v4, p0, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/SegmentItemDecoration;->mItemRootWidth:I

    mul-int/2addr v4, v0

    sub-int/2addr p3, v4

    div-int/2addr p3, v1

    sub-int/2addr v0, v2

    iget v4, p0, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/SegmentItemDecoration;->mAbsoluteItemInterval:I

    mul-int/2addr v0, v4

    div-int/2addr v0, v1

    add-int/2addr p3, v0

    if-nez p2, :cond_52

    .line 64
    iget p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/SegmentItemDecoration;->mRelativeItemInterval:I

    invoke-virtual {p1, p3, v3, p0, v3}, Landroid/graphics/Rect;->set(IIII)V

    return-void

    .line 65
    :cond_52
    invoke-virtual {p4}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result p4

    sub-int/2addr p4, v2

    if-ne p2, p4, :cond_5d

    .line 66
    invoke-virtual {p1, v3, v3, p3, v3}, Landroid/graphics/Rect;->set(IIII)V

    return-void

    .line 68
    :cond_5d
    iget p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/SegmentItemDecoration;->mRelativeItemInterval:I

    invoke-virtual {p1, v3, v3, p0, v3}, Landroid/graphics/Rect;->set(IIII)V

    :cond_62
    :goto_62
    return-void
.end method
