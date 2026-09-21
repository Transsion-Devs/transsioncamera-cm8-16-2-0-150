.class public Lcom/transsion/camera/app/common/recyclerview/MyRecyclerVIewItemDecoration;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/common/recyclerview/MyRecyclerVIewItemDecoration$IItemWidthProvider;
    }
.end annotation


# instance fields
.field private mDynamicGap:Z

.field private mFirstMargin:I

.field private mItemGap:I

.field private mLastMargin:I


# direct methods
.method public constructor <init>(IIIZ)V
    .registers 5

    .line 31
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    .line 32
    iput p1, p0, Lcom/transsion/camera/app/common/recyclerview/MyRecyclerVIewItemDecoration;->mFirstMargin:I

    .line 33
    iput p2, p0, Lcom/transsion/camera/app/common/recyclerview/MyRecyclerVIewItemDecoration;->mLastMargin:I

    .line 34
    iput p3, p0, Lcom/transsion/camera/app/common/recyclerview/MyRecyclerVIewItemDecoration;->mItemGap:I

    .line 35
    iput-boolean p4, p0, Lcom/transsion/camera/app/common/recyclerview/MyRecyclerVIewItemDecoration;->mDynamicGap:Z

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .registers 11

    .line 40
    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p2

    .line 41
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p4

    const/4 v0, 0x0

    if-eqz p4, :cond_10

    .line 42
    invoke-virtual {p4}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v1

    goto :goto_11

    :cond_10
    move v1, v0

    .line 48
    :goto_11
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    .line 47
    invoke-static {v2}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1e

    move v2, v3

    goto :goto_1f

    :cond_1e
    move v2, v0

    :goto_1f
    if-ne v2, v3, :cond_23

    move v2, v3

    goto :goto_24

    :cond_23
    move v2, v0

    .line 53
    :goto_24
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v4

    .line 54
    instance-of v5, v4, Landroidx/recyclerview/widget/LinearLayoutManager;

    if-eqz v5, :cond_8d

    .line 55
    check-cast v4, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 56
    invoke-virtual {v4}, Landroidx/recyclerview/widget/LinearLayoutManager;->getOrientation()I

    move-result v4

    if-nez v4, :cond_8d

    .line 57
    iget-boolean v4, p0, Lcom/transsion/camera/app/common/recyclerview/MyRecyclerVIewItemDecoration;->mDynamicGap:Z

    if-eqz v4, :cond_5b

    .line 60
    instance-of v4, p4, Lcom/transsion/camera/app/common/recyclerview/MyRecyclerVIewItemDecoration$IItemWidthProvider;

    if-eqz v4, :cond_48

    .line 61
    check-cast p4, Lcom/transsion/camera/app/common/recyclerview/MyRecyclerVIewItemDecoration$IItemWidthProvider;

    .line 62
    invoke-interface {p4}, Lcom/transsion/camera/app/common/recyclerview/MyRecyclerVIewItemDecoration$IItemWidthProvider;->getItemWidth()I

    move-result v4

    invoke-interface {p4}, Lcom/transsion/camera/app/common/recyclerview/MyRecyclerVIewItemDecoration$IItemWidthProvider;->getVisibleItemCount()I

    move-result p4

    mul-int/2addr v4, p4

    goto :goto_49

    :cond_48
    move v4, v0

    .line 66
    :goto_49
    invoke-virtual {p3}, Landroid/view/View;->getWidth()I

    move-result p3

    iget p4, p0, Lcom/transsion/camera/app/common/recyclerview/MyRecyclerVIewItemDecoration;->mFirstMargin:I

    sub-int/2addr p3, p4

    iget p4, p0, Lcom/transsion/camera/app/common/recyclerview/MyRecyclerVIewItemDecoration;->mLastMargin:I

    sub-int/2addr p3, p4

    sub-int/2addr p3, v4

    if-le v1, v3, :cond_5b

    add-int/lit8 p4, v1, -0x1

    .line 68
    div-int/2addr p3, p4

    iput p3, p0, Lcom/transsion/camera/app/common/recyclerview/MyRecyclerVIewItemDecoration;->mItemGap:I

    :cond_5b
    if-nez p2, :cond_6b

    if-eqz v2, :cond_65

    .line 73
    iget p0, p0, Lcom/transsion/camera/app/common/recyclerview/MyRecyclerVIewItemDecoration;->mFirstMargin:I

    invoke-virtual {p1, v0, v0, p0, v0}, Landroid/graphics/Rect;->set(IIII)V

    return-void

    .line 75
    :cond_65
    iget p0, p0, Lcom/transsion/camera/app/common/recyclerview/MyRecyclerVIewItemDecoration;->mFirstMargin:I

    invoke-virtual {p1, p0, v0, v0, v0}, Landroid/graphics/Rect;->set(IIII)V

    return-void

    :cond_6b
    sub-int/2addr v1, v3

    if-ne p2, v1, :cond_80

    if-eqz v2, :cond_78

    .line 79
    iget p2, p0, Lcom/transsion/camera/app/common/recyclerview/MyRecyclerVIewItemDecoration;->mLastMargin:I

    iget p0, p0, Lcom/transsion/camera/app/common/recyclerview/MyRecyclerVIewItemDecoration;->mItemGap:I

    invoke-virtual {p1, p2, v0, p0, v0}, Landroid/graphics/Rect;->set(IIII)V

    return-void

    .line 81
    :cond_78
    iget p2, p0, Lcom/transsion/camera/app/common/recyclerview/MyRecyclerVIewItemDecoration;->mItemGap:I

    iget p0, p0, Lcom/transsion/camera/app/common/recyclerview/MyRecyclerVIewItemDecoration;->mLastMargin:I

    invoke-virtual {p1, p2, v0, p0, v0}, Landroid/graphics/Rect;->set(IIII)V

    return-void

    :cond_80
    if-eqz v2, :cond_88

    .line 85
    iget p0, p0, Lcom/transsion/camera/app/common/recyclerview/MyRecyclerVIewItemDecoration;->mItemGap:I

    invoke-virtual {p1, v0, v0, p0, v0}, Landroid/graphics/Rect;->set(IIII)V

    return-void

    .line 87
    :cond_88
    iget p0, p0, Lcom/transsion/camera/app/common/recyclerview/MyRecyclerVIewItemDecoration;->mItemGap:I

    invoke-virtual {p1, p0, v0, v0, v0}, Landroid/graphics/Rect;->set(IIII)V

    :cond_8d
    return-void
.end method
