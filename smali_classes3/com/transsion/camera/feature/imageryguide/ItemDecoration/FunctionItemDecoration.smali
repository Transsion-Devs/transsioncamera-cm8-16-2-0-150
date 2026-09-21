.class public Lcom/transsion/camera/feature/imageryguide/ItemDecoration/FunctionItemDecoration;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "SourceFile"


# instance fields
.field private final mFirstItemLeftMargin:I

.field private final mLeftMargin:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 16
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    .line 17
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/camera/feature/imageryguide/R$dimen;->imagery_guid_function_item_decoration_left_margin:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/feature/imageryguide/ItemDecoration/FunctionItemDecoration;->mLeftMargin:I

    .line 18
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/transsion/camera/feature/imageryguide/R$dimen;->imagery_guid_function_item_decoration_first_left_margin:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/feature/imageryguide/ItemDecoration/FunctionItemDecoration;->mFirstItemLeftMargin:I

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .registers 6

    .line 23
    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p2

    .line 24
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p4

    const/4 v0, 0x0

    if-eqz p4, :cond_14

    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p3

    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result p3

    goto :goto_15

    :cond_14
    move p3, v0

    .line 26
    :goto_15
    invoke-virtual {p1, v0, v0, v0, v0}, Landroid/graphics/Rect;->set(IIII)V

    if-nez p2, :cond_1f

    .line 28
    iget p0, p0, Lcom/transsion/camera/feature/imageryguide/ItemDecoration/FunctionItemDecoration;->mFirstItemLeftMargin:I

    iput p0, p1, Landroid/graphics/Rect;->left:I

    return-void

    :cond_1f
    add-int/lit8 p3, p3, -0x1

    if-ne p2, p3, :cond_2c

    .line 30
    iget p2, p0, Lcom/transsion/camera/feature/imageryguide/ItemDecoration/FunctionItemDecoration;->mLeftMargin:I

    iput p2, p1, Landroid/graphics/Rect;->left:I

    .line 31
    iget p0, p0, Lcom/transsion/camera/feature/imageryguide/ItemDecoration/FunctionItemDecoration;->mFirstItemLeftMargin:I

    iput p0, p1, Landroid/graphics/Rect;->right:I

    return-void

    .line 33
    :cond_2c
    iget p0, p0, Lcom/transsion/camera/feature/imageryguide/ItemDecoration/FunctionItemDecoration;->mLeftMargin:I

    iput p0, p1, Landroid/graphics/Rect;->left:I

    return-void
.end method
