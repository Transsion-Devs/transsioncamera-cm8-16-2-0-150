.class public Lcom/transsion/camera/feature/supernightfilter/ui/PaddingItemDecoration;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "SourceFile"


# instance fields
.field private final mFirstItemPadding:I

.field private final mItemPadding:I

.field private final mLastItemPadding:I


# direct methods
.method public constructor <init>(III)V
    .registers 4

    .line 13
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    .line 14
    iput p1, p0, Lcom/transsion/camera/feature/supernightfilter/ui/PaddingItemDecoration;->mFirstItemPadding:I

    .line 15
    iput p2, p0, Lcom/transsion/camera/feature/supernightfilter/ui/PaddingItemDecoration;->mItemPadding:I

    .line 16
    iput p3, p0, Lcom/transsion/camera/feature/supernightfilter/ui/PaddingItemDecoration;->mLastItemPadding:I

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .registers 6

    .line 21
    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p2

    .line 23
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p4

    const/4 v0, 0x0

    if-eqz p4, :cond_10

    .line 25
    invoke-virtual {p4}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result p4

    goto :goto_11

    :cond_10
    move p4, v0

    :goto_11
    if-nez p2, :cond_2b

    .line 28
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result p2

    if-eqz p2, :cond_25

    .line 29
    iget p2, p0, Lcom/transsion/camera/feature/supernightfilter/ui/PaddingItemDecoration;->mFirstItemPadding:I

    iget p0, p0, Lcom/transsion/camera/feature/supernightfilter/ui/PaddingItemDecoration;->mItemPadding:I

    invoke-virtual {p1, p2, v0, p0, v0}, Landroid/graphics/Rect;->set(IIII)V

    return-void

    .line 31
    :cond_25
    iget p0, p0, Lcom/transsion/camera/feature/supernightfilter/ui/PaddingItemDecoration;->mItemPadding:I

    invoke-virtual {p1, v0, v0, v0, p0}, Landroid/graphics/Rect;->set(IIII)V

    return-void

    :cond_2b
    add-int/lit8 p4, p4, -0x1

    if-ne p2, p4, :cond_49

    .line 34
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result p2

    if-eqz p2, :cond_41

    .line 35
    iget p2, p0, Lcom/transsion/camera/feature/supernightfilter/ui/PaddingItemDecoration;->mItemPadding:I

    iget p0, p0, Lcom/transsion/camera/feature/supernightfilter/ui/PaddingItemDecoration;->mLastItemPadding:I

    invoke-virtual {p1, p2, v0, p0, v0}, Landroid/graphics/Rect;->set(IIII)V

    return-void

    .line 37
    :cond_41
    iget p2, p0, Lcom/transsion/camera/feature/supernightfilter/ui/PaddingItemDecoration;->mItemPadding:I

    iget p0, p0, Lcom/transsion/camera/feature/supernightfilter/ui/PaddingItemDecoration;->mLastItemPadding:I

    invoke-virtual {p1, v0, p2, v0, p0}, Landroid/graphics/Rect;->set(IIII)V

    return-void

    .line 40
    :cond_49
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result p2

    if-eqz p2, :cond_59

    .line 41
    iget p0, p0, Lcom/transsion/camera/feature/supernightfilter/ui/PaddingItemDecoration;->mItemPadding:I

    invoke-virtual {p1, p0, v0, p0, v0}, Landroid/graphics/Rect;->set(IIII)V

    return-void

    .line 43
    :cond_59
    iget p0, p0, Lcom/transsion/camera/feature/supernightfilter/ui/PaddingItemDecoration;->mItemPadding:I

    invoke-virtual {p1, v0, p0, v0, p0}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method
