.class public Lcom/transsion/camera/ui/setting/videosightshock/adapter/VidSigShockItemDecoration;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "SourceFile"


# instance fields
.field private mHorizontalLastMargin:I

.field private final mHorizontalLastMarginNormal:I

.field private mHorizontalMargin:I

.field private final mHorizontalMarginNormal:I

.field private final mItemInterValExpand:I

.field private mItemInterval:I

.field private final mItemIntervalHover:I

.field private final mItemIntervalNormal:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 27
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    const/4 v0, 0x0

    .line 17
    iput v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/adapter/VidSigShockItemDecoration;->mHorizontalMargin:I

    .line 18
    iput v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/adapter/VidSigShockItemDecoration;->mHorizontalLastMargin:I

    .line 22
    iput v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/adapter/VidSigShockItemDecoration;->mItemInterval:I

    .line 28
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/camera/R$dimen;->video_sight_shock_item_horizontal_margin:I

    .line 29
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/adapter/VidSigShockItemDecoration;->mHorizontalMarginNormal:I

    .line 30
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/camera/R$dimen;->video_sight_shock_item_last_margin:I

    .line 31
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/adapter/VidSigShockItemDecoration;->mHorizontalLastMarginNormal:I

    .line 32
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/camera/R$dimen;->video_sight_shock_item_interval_normal:I

    .line 33
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/adapter/VidSigShockItemDecoration;->mItemIntervalNormal:I

    .line 34
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/camera/R$dimen;->video_sight_shock_item_interval_hover:I

    .line 35
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/adapter/VidSigShockItemDecoration;->mItemIntervalHover:I

    .line 36
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/transsion/camera/R$dimen;->video_sight_shock_item_interval_expand:I

    .line 37
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/ui/setting/videosightshock/adapter/VidSigShockItemDecoration;->mItemInterValExpand:I

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .registers 5

    .line 62
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;->getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V

    .line 63
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p4

    if-nez p4, :cond_a

    return-void

    .line 69
    :cond_a
    invoke-virtual {p4}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result p4

    .line 70
    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p2

    const/4 p3, 0x0

    if-nez p2, :cond_1b

    .line 73
    iget p0, p0, Lcom/transsion/camera/ui/setting/videosightshock/adapter/VidSigShockItemDecoration;->mHorizontalMargin:I

    invoke-virtual {p1, p0, p3, p3, p3}, Landroid/graphics/Rect;->set(IIII)V

    return-void

    :cond_1b
    add-int/lit8 p4, p4, -0x1

    if-ne p2, p4, :cond_30

    .line 75
    iget p2, p0, Lcom/transsion/camera/ui/setting/videosightshock/adapter/VidSigShockItemDecoration;->mItemInterval:I

    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result p4

    if-eqz p4, :cond_2a

    iget p0, p0, Lcom/transsion/camera/ui/setting/videosightshock/adapter/VidSigShockItemDecoration;->mHorizontalLastMargin:I

    goto :goto_2c

    :cond_2a
    iget p0, p0, Lcom/transsion/camera/ui/setting/videosightshock/adapter/VidSigShockItemDecoration;->mHorizontalMargin:I

    :goto_2c
    invoke-virtual {p1, p2, p3, p0, p3}, Landroid/graphics/Rect;->set(IIII)V

    return-void

    .line 77
    :cond_30
    iget p0, p0, Lcom/transsion/camera/ui/setting/videosightshock/adapter/VidSigShockItemDecoration;->mItemInterval:I

    invoke-virtual {p1, p0, p3, p3, p3}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method public setScreenFormType(I)V
    .registers 4

    const/4 v0, 0x0

    .line 41
    iput v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/adapter/VidSigShockItemDecoration;->mHorizontalLastMargin:I

    const/4 v1, 0x1

    if-ne p1, v1, :cond_d

    .line 43
    iget p1, p0, Lcom/transsion/camera/ui/setting/videosightshock/adapter/VidSigShockItemDecoration;->mItemInterValExpand:I

    iput p1, p0, Lcom/transsion/camera/ui/setting/videosightshock/adapter/VidSigShockItemDecoration;->mItemInterval:I

    .line 44
    iput v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/adapter/VidSigShockItemDecoration;->mHorizontalMargin:I

    return-void

    :cond_d
    const/4 v1, 0x4

    if-eq p1, v1, :cond_21

    const/4 v1, 0x5

    if-ne p1, v1, :cond_14

    goto :goto_21

    .line 50
    :cond_14
    iget p1, p0, Lcom/transsion/camera/ui/setting/videosightshock/adapter/VidSigShockItemDecoration;->mItemIntervalNormal:I

    iput p1, p0, Lcom/transsion/camera/ui/setting/videosightshock/adapter/VidSigShockItemDecoration;->mItemInterval:I

    .line 51
    iget p1, p0, Lcom/transsion/camera/ui/setting/videosightshock/adapter/VidSigShockItemDecoration;->mHorizontalMarginNormal:I

    iput p1, p0, Lcom/transsion/camera/ui/setting/videosightshock/adapter/VidSigShockItemDecoration;->mHorizontalMargin:I

    .line 52
    iget p1, p0, Lcom/transsion/camera/ui/setting/videosightshock/adapter/VidSigShockItemDecoration;->mHorizontalLastMarginNormal:I

    iput p1, p0, Lcom/transsion/camera/ui/setting/videosightshock/adapter/VidSigShockItemDecoration;->mHorizontalLastMargin:I

    return-void

    .line 47
    :cond_21
    :goto_21
    iget p1, p0, Lcom/transsion/camera/ui/setting/videosightshock/adapter/VidSigShockItemDecoration;->mItemIntervalHover:I

    iput p1, p0, Lcom/transsion/camera/ui/setting/videosightshock/adapter/VidSigShockItemDecoration;->mItemInterval:I

    .line 48
    iput v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/adapter/VidSigShockItemDecoration;->mHorizontalMargin:I

    return-void
.end method
