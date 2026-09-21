.class public Lcom/transsion/camera/feature/mode/longexposure/setting/ui/SimpleItemDecoration;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "SourceFile"


# instance fields
.field private final mHorizontalMargin:I

.field private final mItemPadding:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 27
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    .line 28
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/camera/feature/longexposure/R$dimen;->long_exposure_scene_item_horizontal_margin:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/SimpleItemDecoration;->mHorizontalMargin:I

    .line 29
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/transsion/camera/feature/longexposure/R$dimen;->long_exposure_scene_item_padding_value:I

    .line 30
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/SimpleItemDecoration;->mItemPadding:I

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .registers 5

    .line 38
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;->getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V

    .line 40
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p4

    if-nez p4, :cond_a

    return-void

    .line 44
    :cond_a
    invoke-virtual {p4}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result p4

    .line 45
    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p2

    const/4 p3, 0x0

    if-nez p2, :cond_1d

    .line 47
    iget p2, p0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/SimpleItemDecoration;->mHorizontalMargin:I

    iget p0, p0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/SimpleItemDecoration;->mItemPadding:I

    invoke-virtual {p1, p2, p3, p0, p3}, Landroid/graphics/Rect;->set(IIII)V

    return-void

    :cond_1d
    add-int/lit8 p4, p4, -0x1

    if-ne p2, p4, :cond_29

    .line 49
    iget p2, p0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/SimpleItemDecoration;->mItemPadding:I

    iget p0, p0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/SimpleItemDecoration;->mHorizontalMargin:I

    invoke-virtual {p1, p2, p3, p0, p3}, Landroid/graphics/Rect;->set(IIII)V

    return-void

    .line 51
    :cond_29
    iget p0, p0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/SimpleItemDecoration;->mItemPadding:I

    invoke-virtual {p1, p0, p3, p0, p3}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method
