.class public Lcom/transsion/camera/feature/mode/pmaster/ui/PMaterItemDecoration;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "SourceFile"


# instance fields
.field private final mHorizontalMargin:I

.field private mItemInterval:I

.field private final mLastMargin:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 28
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    .line 29
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/camera/featurelibs/makeupRes/R$dimen;->mu_item_horizontal_first_margin:I

    .line 30
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMaterItemDecoration;->mHorizontalMargin:I

    .line 32
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/camera/featurelibs/makeupRes/R$dimen;->mu_item_horizontal_last_margin:I

    .line 33
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMaterItemDecoration;->mLastMargin:I

    .line 35
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/transsion/camera/feature/pmaster/R$dimen;->pm_item_horizontal_interval_margin:I

    .line 36
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMaterItemDecoration;->mItemInterval:I

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .registers 5

    .line 44
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;->getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V

    .line 46
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p4

    if-nez p4, :cond_a

    return-void

    .line 51
    :cond_a
    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p2

    .line 52
    invoke-virtual {p4}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result p3

    const/4 p4, 0x0

    if-nez p2, :cond_1d

    .line 54
    iget p2, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMaterItemDecoration;->mHorizontalMargin:I

    iget p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMaterItemDecoration;->mItemInterval:I

    invoke-virtual {p1, p2, p4, p0, p4}, Landroid/graphics/Rect;->set(IIII)V

    return-void

    :cond_1d
    add-int/lit8 p3, p3, -0x1

    if-ne p2, p3, :cond_27

    .line 56
    iget p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMaterItemDecoration;->mLastMargin:I

    invoke-virtual {p1, p4, p4, p0, p4}, Landroid/graphics/Rect;->set(IIII)V

    return-void

    .line 58
    :cond_27
    iget p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMaterItemDecoration;->mItemInterval:I

    invoke-virtual {p1, p0, p4, p0, p4}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method
