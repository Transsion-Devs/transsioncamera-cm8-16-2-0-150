.class public Lcom/transsion/camera/feature/mode/pmaster/ui/SimpleItemDecoration;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "SourceFile"


# instance fields
.field private final mHorizontalMargin:I

.field private mItemInterval:I

.field private final mLastMargin:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 30
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    .line 31
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/camera/featurelibs/makeupRes/R$dimen;->mu_item_horizontal_margin:I

    .line 32
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/SimpleItemDecoration;->mHorizontalMargin:I

    .line 34
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/camera/featurelibs/makeupRes/R$dimen;->mu_item_horizontal_last_margin:I

    .line 35
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/SimpleItemDecoration;->mLastMargin:I

    .line 37
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/transsion/camera/featurelibs/makeupRes/R$dimen;->mu_item_horizontal_interval_margin:I

    .line 38
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/SimpleItemDecoration;->mItemInterval:I

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .registers 5

    .line 47
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;->getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V

    .line 49
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p4

    if-nez p4, :cond_a

    return-void

    .line 53
    :cond_a
    invoke-virtual {p4}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result p4

    .line 54
    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p2

    const/4 p3, 0x0

    if-nez p2, :cond_1d

    .line 56
    iget p2, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/SimpleItemDecoration;->mHorizontalMargin:I

    iget p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/SimpleItemDecoration;->mItemInterval:I

    invoke-virtual {p1, p2, p3, p0, p3}, Landroid/graphics/Rect;->set(IIII)V

    return-void

    :cond_1d
    add-int/lit8 p4, p4, -0x1

    if-ne p2, p4, :cond_30

    .line 58
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result p2

    if-eqz p2, :cond_2a

    iget p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/SimpleItemDecoration;->mLastMargin:I

    goto :goto_2c

    :cond_2a
    iget p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/SimpleItemDecoration;->mHorizontalMargin:I

    :goto_2c
    invoke-virtual {p1, p3, p3, p0, p3}, Landroid/graphics/Rect;->set(IIII)V

    return-void

    .line 60
    :cond_30
    iget p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/SimpleItemDecoration;->mItemInterval:I

    invoke-virtual {p1, p3, p3, p0, p3}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method
