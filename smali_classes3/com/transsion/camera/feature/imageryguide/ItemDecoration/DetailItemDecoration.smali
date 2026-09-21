.class public Lcom/transsion/camera/feature/imageryguide/ItemDecoration/DetailItemDecoration;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "SourceFile"


# instance fields
.field private final mBottomMargin:I

.field private final mSpacing:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 16
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    .line 17
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/camera/feature/imageryguide/R$dimen;->detail_guid_item_spacing:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/feature/imageryguide/ItemDecoration/DetailItemDecoration;->mSpacing:I

    .line 18
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/transsion/camera/feature/imageryguide/R$dimen;->detail_guid_item_margin_bottom:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/feature/imageryguide/ItemDecoration/DetailItemDecoration;->mBottomMargin:I

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .registers 5

    .line 23
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p4

    if-nez p4, :cond_7

    goto :goto_21

    .line 27
    :cond_7
    invoke-virtual {p4}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result p4

    .line 28
    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p2

    const/4 p3, 0x0

    .line 30
    invoke-virtual {p1, p3, p3, p3, p3}, Landroid/graphics/Rect;->set(IIII)V

    add-int/lit8 p4, p4, -0x1

    if-eq p2, p4, :cond_1b

    .line 32
    iget p3, p0, Lcom/transsion/camera/feature/imageryguide/ItemDecoration/DetailItemDecoration;->mSpacing:I

    iput p3, p1, Landroid/graphics/Rect;->bottom:I

    :cond_1b
    if-ne p2, p4, :cond_21

    .line 35
    iget p0, p0, Lcom/transsion/camera/feature/imageryguide/ItemDecoration/DetailItemDecoration;->mBottomMargin:I

    iput p0, p1, Landroid/graphics/Rect;->bottom:I

    :cond_21
    :goto_21
    return-void
.end method
