.class public Lcom/transsion/camera/feature/mode/vlog/widget/FreeItemTouchHelper;
.super Landroidx/recyclerview/widget/ItemTouchHelper;
.source "SourceFile"


# instance fields
.field private final mAbsoluteItemInterval:I

.field private final mItemRootWidth:I

.field private final mRelativeItemInterval:I


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/ItemTouchHelper$Callback;Landroid/content/Context;)V
    .registers 5

    .line 21
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/ItemTouchHelper;-><init>(Landroidx/recyclerview/widget/ItemTouchHelper$Callback;)V

    .line 22
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/transsion/camera/feature/vlog/R$dimen;->vlog_cutsame_segment_item_root_size:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/feature/mode/vlog/widget/FreeItemTouchHelper;->mItemRootWidth:I

    .line 23
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/camera/feature/vlog/R$dimen;->vlog_cutsame_segment_item_interval:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/feature/mode/vlog/widget/FreeItemTouchHelper;->mAbsoluteItemInterval:I

    .line 24
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v1, Lcom/transsion/camera/feature/vlog/R$dimen;->vlog_template_segment_item_size:I

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    sub-int/2addr p1, p2

    div-int/lit8 p1, p1, 0x2

    if-gtz p1, :cond_2d

    .line 27
    iput v0, p0, Lcom/transsion/camera/feature/mode/vlog/widget/FreeItemTouchHelper;->mRelativeItemInterval:I

    return-void

    :cond_2d
    mul-int/lit8 p1, p1, 0x2

    sub-int/2addr v0, p1

    .line 29
    iput v0, p0, Lcom/transsion/camera/feature/mode/vlog/widget/FreeItemTouchHelper;->mRelativeItemInterval:I

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .registers 7

    .line 45
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p4

    if-nez p4, :cond_7

    goto :goto_24

    .line 51
    :cond_7
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 52
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->isItemRemoved()Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->getViewLayoutPosition()I

    move-result p2

    goto :goto_1c

    :cond_18
    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p2

    .line 53
    :goto_1c
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    if-nez v0, :cond_25

    :goto_24
    return-void

    .line 57
    :cond_25
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getItemCount()I

    move-result v0

    .line 58
    invoke-virtual {p3}, Landroid/view/View;->getMeasuredWidth()I

    move-result p3

    .line 59
    iget v1, p0, Lcom/transsion/camera/feature/mode/vlog/widget/FreeItemTouchHelper;->mItemRootWidth:I

    mul-int/2addr v1, v0

    sub-int/2addr p3, v1

    div-int/lit8 p3, p3, 0x2

    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Lcom/transsion/camera/feature/mode/vlog/widget/FreeItemTouchHelper;->mAbsoluteItemInterval:I

    mul-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    add-int/2addr p3, v0

    const/4 v0, 0x0

    if-nez p2, :cond_44

    .line 63
    iget p0, p0, Lcom/transsion/camera/feature/mode/vlog/widget/FreeItemTouchHelper;->mRelativeItemInterval:I

    invoke-virtual {p1, p3, v0, p0, v0}, Landroid/graphics/Rect;->set(IIII)V

    return-void

    .line 64
    :cond_44
    invoke-virtual {p4}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result p4

    add-int/lit8 p4, p4, -0x1

    if-ne p2, p4, :cond_50

    .line 65
    invoke-virtual {p1, v0, v0, p3, v0}, Landroid/graphics/Rect;->set(IIII)V

    return-void

    .line 67
    :cond_50
    iget p0, p0, Lcom/transsion/camera/feature/mode/vlog/widget/FreeItemTouchHelper;->mRelativeItemInterval:I

    invoke-virtual {p1, v0, v0, p0, v0}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method public startDrag(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .registers 2

    .line 35
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/ItemTouchHelper;->startDrag(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    return-void
.end method

.method public startSwipe(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .registers 2

    .line 40
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/ItemTouchHelper;->startSwipe(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    return-void
.end method
