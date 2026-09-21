.class public Lcom/transsion/camera/feature/imageryguide/ItemDecoration/ModeItemDecoration;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "SourceFile"


# instance fields
.field private final mBottomMargin:I

.field private final mEdgeMargin:I

.field private final mSpacing:I

.field private final mSpanCount:I

.field private final mTopMargin:I


# direct methods
.method public constructor <init>(IIIII)V
    .registers 6

    .line 17
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    .line 18
    iput p1, p0, Lcom/transsion/camera/feature/imageryguide/ItemDecoration/ModeItemDecoration;->mSpanCount:I

    .line 19
    iput p2, p0, Lcom/transsion/camera/feature/imageryguide/ItemDecoration/ModeItemDecoration;->mSpacing:I

    .line 20
    iput p3, p0, Lcom/transsion/camera/feature/imageryguide/ItemDecoration/ModeItemDecoration;->mTopMargin:I

    .line 21
    iput p4, p0, Lcom/transsion/camera/feature/imageryguide/ItemDecoration/ModeItemDecoration;->mEdgeMargin:I

    .line 22
    iput p5, p0, Lcom/transsion/camera/feature/imageryguide/ItemDecoration/ModeItemDecoration;->mBottomMargin:I

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .registers 5

    .line 27
    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p2

    const/4 p3, -0x1

    if-ne p2, p3, :cond_8

    return-void

    .line 31
    :cond_8
    iget p3, p0, Lcom/transsion/camera/feature/imageryguide/ItemDecoration/ModeItemDecoration;->mSpanCount:I

    rem-int p3, p2, p3

    const/4 p4, 0x0

    .line 33
    invoke-virtual {p1, p4, p4, p4, p4}, Landroid/graphics/Rect;->set(IIII)V

    if-nez p3, :cond_1d

    .line 36
    iget p3, p0, Lcom/transsion/camera/feature/imageryguide/ItemDecoration/ModeItemDecoration;->mEdgeMargin:I

    iput p3, p1, Landroid/graphics/Rect;->left:I

    .line 37
    iget p3, p0, Lcom/transsion/camera/feature/imageryguide/ItemDecoration/ModeItemDecoration;->mSpacing:I

    div-int/lit8 p3, p3, 0x2

    iput p3, p1, Landroid/graphics/Rect;->right:I

    goto :goto_38

    .line 38
    :cond_1d
    iget p4, p0, Lcom/transsion/camera/feature/imageryguide/ItemDecoration/ModeItemDecoration;->mSpanCount:I

    add-int/lit8 p4, p4, -0x1

    if-ne p3, p4, :cond_2e

    .line 39
    iget p3, p0, Lcom/transsion/camera/feature/imageryguide/ItemDecoration/ModeItemDecoration;->mSpacing:I

    div-int/lit8 p3, p3, 0x2

    iput p3, p1, Landroid/graphics/Rect;->left:I

    .line 40
    iget p3, p0, Lcom/transsion/camera/feature/imageryguide/ItemDecoration/ModeItemDecoration;->mEdgeMargin:I

    iput p3, p1, Landroid/graphics/Rect;->right:I

    goto :goto_38

    .line 42
    :cond_2e
    iget p3, p0, Lcom/transsion/camera/feature/imageryguide/ItemDecoration/ModeItemDecoration;->mSpacing:I

    div-int/lit8 p4, p3, 0x2

    iput p4, p1, Landroid/graphics/Rect;->left:I

    .line 43
    div-int/lit8 p3, p3, 0x2

    iput p3, p1, Landroid/graphics/Rect;->right:I

    .line 46
    :goto_38
    iget p3, p0, Lcom/transsion/camera/feature/imageryguide/ItemDecoration/ModeItemDecoration;->mSpanCount:I

    if-ge p2, p3, :cond_41

    .line 47
    iget p0, p0, Lcom/transsion/camera/feature/imageryguide/ItemDecoration/ModeItemDecoration;->mTopMargin:I

    iput p0, p1, Landroid/graphics/Rect;->top:I

    return-void

    .line 49
    :cond_41
    iget p0, p0, Lcom/transsion/camera/feature/imageryguide/ItemDecoration/ModeItemDecoration;->mBottomMargin:I

    iput p0, p1, Landroid/graphics/Rect;->bottom:I

    return-void
.end method
