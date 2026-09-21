.class public Lcom/transsion/camera/feature/mode/dualvideo/DragRectView;
.super Landroid/view/View;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/mode/dualvideo/DragRectView$OnRectChangedListener;
    }
.end annotation


# static fields
.field private static final BOTTOM:I = 0x17

.field private static final CENTER:I = 0x19

.field private static final DIRECTION_EDAGE:I = 0x46

.field private static final LEFT:I = 0x16

.field private static final LEFT_BOTTOM:I = 0x13

.field private static final LEFT_TOP:I = 0x11

.field private static final RIGHT:I = 0x18

.field private static final RIGHT_BOTTOM:I = 0x14

.field private static final RIGHT_TOP:I = 0x12

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

.field private static final TOP:I = 0x15


# instance fields
.field private mAreaWidth:I

.field private mBottomAreaEdge:I

.field private mCurTouchPointId:I

.field private mDownX:F

.field private mDownY:F

.field private mDragDirection:I

.field private mLastX:I

.field private mLastY:I

.field private mMaxRectHeight:I

.field private mMaxRectWidth:I

.field private mMinRectHeight:I

.field private mMinRectWidth:I

.field private mOriBottom:I

.field private mOriLeft:I

.field private mOriRight:I

.field private mOriTop:I

.field private mPipEdgeOffsetRespond:I

.field private mRectChangedListener:Lcom/transsion/camera/feature/mode/dualvideo/DragRectView$OnRectChangedListener;

.field private mTopAreaEdge:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 14
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "DragRectView"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/mode/dualvideo/DragRectView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 67
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 17
    iput v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DragRectView;->mTopAreaEdge:I

    .line 18
    iput v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DragRectView;->mBottomAreaEdge:I

    .line 19
    iput v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DragRectView;->mMinRectWidth:I

    .line 20
    iput v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DragRectView;->mMinRectHeight:I

    .line 21
    iput v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DragRectView;->mMaxRectWidth:I

    .line 22
    iput v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DragRectView;->mMaxRectHeight:I

    const/4 v1, 0x0

    .line 24
    iput v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DragRectView;->mDownX:F

    .line 25
    iput v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DragRectView;->mDownY:F

    .line 44
    iput v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DragRectView;->mCurTouchPointId:I

    .line 68
    invoke-virtual {p0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 69
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/transsion/camera/feature/mode/dualvideo/R$dimen;->pip_edge_offset_respond:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DragRectView;->mPipEdgeOffsetRespond:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .line 61
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 17
    iput p2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DragRectView;->mTopAreaEdge:I

    .line 18
    iput p2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DragRectView;->mBottomAreaEdge:I

    .line 19
    iput p2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DragRectView;->mMinRectWidth:I

    .line 20
    iput p2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DragRectView;->mMinRectHeight:I

    .line 21
    iput p2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DragRectView;->mMaxRectWidth:I

    .line 22
    iput p2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DragRectView;->mMaxRectHeight:I

    const/4 v0, 0x0

    .line 24
    iput v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DragRectView;->mDownX:F

    .line 25
    iput v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DragRectView;->mDownY:F

    .line 44
    iput p2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DragRectView;->mCurTouchPointId:I

    .line 62
    invoke-virtual {p0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 63
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/transsion/camera/feature/mode/dualvideo/R$dimen;->pip_edge_offset_respond:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DragRectView;->mPipEdgeOffsetRespond:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 55
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    .line 17
    iput p2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DragRectView;->mTopAreaEdge:I

    .line 18
    iput p2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DragRectView;->mBottomAreaEdge:I

    .line 19
    iput p2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DragRectView;->mMinRectWidth:I

    .line 20
    iput p2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DragRectView;->mMinRectHeight:I

    .line 21
    iput p2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DragRectView;->mMaxRectWidth:I

    .line 22
    iput p2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DragRectView;->mMaxRectHeight:I

    const/4 p3, 0x0

    .line 24
    iput p3, p0, Lcom/transsion/camera/feature/mode/dualvideo/DragRectView;->mDownX:F

    .line 25
    iput p3, p0, Lcom/transsion/camera/feature/mode/dualvideo/DragRectView;->mDownY:F

    .line 44
    iput p2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DragRectView;->mCurTouchPointId:I

    .line 56
    invoke-virtual {p0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 57
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/transsion/camera/feature/mode/dualvideo/R$dimen;->pip_edge_offset_respond:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DragRectView;->mPipEdgeOffsetRespond:I

    return-void
.end method

.method private bottom(I)V
    .registers 5

    .line 259
    iget v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DragRectView;->mOriBottom:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DragRectView;->mOriBottom:I

    .line 260
    iget p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DragRectView;->mBottomAreaEdge:I

    if-le v0, p1, :cond_b

    .line 261
    iput p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DragRectView;->mOriBottom:I

    .line 263
    :cond_b
    iget p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DragRectView;->mOriBottom:I

    iget v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DragRectView;->mOriTop:I

    sub-int v1, p1, v0

    iget v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DragRectView;->mMinRectHeight:I

    if-gt v1, v2, :cond_19

    add-int/2addr v0, v2

    .line 264
    iput v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DragRectView;->mOriBottom:I

    return-void

    :cond_19
    sub-int/2addr p1, v0

    .line 265
    iget v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DragRectView;->mMaxRectHeight:I

    if-lt p1, v1, :cond_21

    add-int/2addr v0, v1

    .line 266
    iput v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DragRectView;->mOriBottom:I

    :cond_21
    return-void
.end method

.method private center(Landroid/view/View;II)V
    .registers 7

    .line 219
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    add-int/2addr v0, p2

    .line 220
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    add-int/2addr v1, p3

    .line 221
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v2

    add-int/2addr v2, p2

    .line 222
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result p2

    add-int/2addr p2, p3

    if-gez v0, :cond_1b

    .line 225
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    const/4 v0, 0x0

    .line 227
    :cond_1b
    iget p3, p0, Lcom/transsion/camera/feature/mode/dualvideo/DragRectView;->mAreaWidth:I

    if-le v2, p3, :cond_26

    .line 229
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    sub-int v0, p3, v0

    move v2, p3

    .line 231
    :cond_26
    iget p3, p0, Lcom/transsion/camera/feature/mode/dualvideo/DragRectView;->mTopAreaEdge:I

    if-ge v1, p3, :cond_30

    .line 233
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p2

    add-int/2addr p2, p3

    move v1, p3

    .line 235
    :cond_30
    iget p3, p0, Lcom/transsion/camera/feature/mode/dualvideo/DragRectView;->mBottomAreaEdge:I

    if-le p2, p3, :cond_3b

    .line 237
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p2

    sub-int v1, p3, p2

    move p2, p3

    .line 240
    :cond_3b
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DragRectView;->mRectChangedListener:Lcom/transsion/camera/feature/mode/dualvideo/DragRectView$OnRectChangedListener;

    if-eqz p0, :cond_42

    .line 241
    invoke-interface {p0, v0, v1, v2, p2}, Lcom/transsion/camera/feature/mode/dualvideo/DragRectView$OnRectChangedListener;->onChanging(IIII)V

    .line 243
    :cond_42
    invoke-virtual {p1, v0, v1, v2, p2}, Landroid/view/View;->layout(IIII)V

    return-void
.end method

.method private getDirection(Landroid/view/View;II)I
    .registers 8

    .line 295
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result p0

    .line 296
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v0

    .line 297
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v1

    .line 298
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    const/16 v2, 0x46

    if-ge p2, v2, :cond_19

    if-ge p3, v2, :cond_19

    const/16 p0, 0x11

    return p0

    :cond_19
    if-ge p3, v2, :cond_23

    sub-int v3, v0, p0

    sub-int/2addr v3, p2

    if-ge v3, v2, :cond_23

    const/16 p0, 0x12

    return p0

    :cond_23
    if-ge p2, v2, :cond_2d

    sub-int v3, v1, p1

    sub-int/2addr v3, p3

    if-ge v3, v2, :cond_2d

    const/16 p0, 0x13

    return p0

    :cond_2d
    sub-int/2addr v0, p0

    sub-int/2addr v0, p2

    if-ge v0, v2, :cond_39

    sub-int p0, v1, p1

    sub-int/2addr p0, p3

    if-ge p0, v2, :cond_39

    const/16 p0, 0x14

    return p0

    :cond_39
    if-ge p2, v2, :cond_3e

    const/16 p0, 0x16

    return p0

    :cond_3e
    if-ge p3, v2, :cond_43

    const/16 p0, 0x15

    return p0

    :cond_43
    if-ge v0, v2, :cond_48

    const/16 p0, 0x18

    return p0

    :cond_48
    sub-int/2addr v1, p1

    sub-int/2addr v1, p3

    if-ge v1, v2, :cond_4f

    const/16 p0, 0x17

    return p0

    :cond_4f
    const/16 p0, 0x19

    return p0
.end method

.method private getOutTouchDirection(Landroid/view/View;II)I
    .registers 8

    const/4 v0, 0x2

    .line 327
    new-array v0, v0, [I

    .line 328
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 p1, 0x0

    .line 329
    aget v1, v0, p1

    sub-int v1, p2, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DragRectView;->mPipEdgeOffsetRespond:I

    const/4 v3, 0x1

    if-ge v1, v2, :cond_23

    aget v1, v0, v3

    sub-int v1, p3, v1

    .line 330
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DragRectView;->mPipEdgeOffsetRespond:I

    if-ge v1, v2, :cond_23

    const/16 p0, 0x11

    return p0

    .line 333
    :cond_23
    aget v1, v0, p1

    sub-int v1, p2, v1

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DragRectView;->mPipEdgeOffsetRespond:I

    if-ge v1, v2, :cond_43

    aget v1, v0, v3

    sub-int v1, p3, v1

    .line 334
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DragRectView;->mPipEdgeOffsetRespond:I

    if-ge v1, v2, :cond_43

    const/16 p0, 0x12

    return p0

    .line 337
    :cond_43
    aget v1, v0, p1

    sub-int v1, p2, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DragRectView;->mPipEdgeOffsetRespond:I

    if-ge v1, v2, :cond_63

    aget v1, v0, v3

    sub-int v1, p3, v1

    .line 338
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DragRectView;->mPipEdgeOffsetRespond:I

    if-ge v1, v2, :cond_63

    const/16 p0, 0x13

    return p0

    .line 341
    :cond_63
    aget v1, v0, p1

    sub-int v1, p2, v1

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DragRectView;->mPipEdgeOffsetRespond:I

    if-ge v1, v2, :cond_88

    aget v1, v0, v3

    sub-int v1, p3, v1

    .line 342
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DragRectView;->mPipEdgeOffsetRespond:I

    if-ge v1, v2, :cond_88

    const/16 p0, 0x14

    return p0

    .line 345
    :cond_88
    aget v1, v0, p1

    sub-int v1, p2, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DragRectView;->mPipEdgeOffsetRespond:I

    if-ge v1, v2, :cond_97

    const/16 p0, 0x16

    return p0

    .line 348
    :cond_97
    aget v1, v0, v3

    sub-int v1, p3, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DragRectView;->mPipEdgeOffsetRespond:I

    if-ge v1, v2, :cond_a6

    const/16 p0, 0x15

    return p0

    .line 351
    :cond_a6
    aget p1, v0, p1

    sub-int/2addr p2, p1

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p1

    sub-int/2addr p2, p1

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p1

    iget p2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DragRectView;->mPipEdgeOffsetRespond:I

    if-ge p1, p2, :cond_b9

    const/16 p0, 0x18

    return p0

    .line 354
    :cond_b9
    aget p1, v0, v3

    sub-int/2addr p3, p1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p1

    sub-int/2addr p3, p1

    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result p1

    iget p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DragRectView;->mPipEdgeOffsetRespond:I

    if-ge p1, p0, :cond_cc

    const/16 p0, 0x17

    return p0

    :cond_cc
    const/16 p0, 0x19

    return p0
.end method

.method private left(I)V
    .registers 5

    .line 271
    iget v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DragRectView;->mOriLeft:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DragRectView;->mOriLeft:I

    if-gez v0, :cond_a

    const/4 p1, 0x0

    .line 273
    iput p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DragRectView;->mOriLeft:I

    .line 275
    :cond_a
    iget p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DragRectView;->mOriRight:I

    iget v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DragRectView;->mOriLeft:I

    sub-int v1, p1, v0

    iget v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DragRectView;->mMinRectWidth:I

    if-gt v1, v2, :cond_18

    sub-int/2addr p1, v2

    .line 276
    iput p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DragRectView;->mOriLeft:I

    return-void

    :cond_18
    sub-int v0, p1, v0

    .line 277
    iget v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DragRectView;->mMaxRectWidth:I

    if-lt v0, v1, :cond_21

    sub-int/2addr p1, v1

    .line 278
    iput p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DragRectView;->mOriLeft:I

    :cond_21
    return-void
.end method

.method private right(I)V
    .registers 5

    .line 283
    iget v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DragRectView;->mOriRight:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DragRectView;->mOriRight:I

    .line 284
    iget p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DragRectView;->mAreaWidth:I

    if-le v0, p1, :cond_b

    .line 285
    iput p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DragRectView;->mOriRight:I

    .line 287
    :cond_b
    iget p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DragRectView;->mOriRight:I

    iget v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DragRectView;->mOriLeft:I

    sub-int v1, p1, v0

    iget v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DragRectView;->mMinRectWidth:I

    if-gt v1, v2, :cond_19

    add-int/2addr v0, v2

    .line 288
    iput v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DragRectView;->mOriRight:I

    return-void

    :cond_19
    sub-int/2addr p1, v0

    .line 289
    iget v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DragRectView;->mMaxRectWidth:I

    if-lt p1, v1, :cond_21

    add-int/2addr v0, v1

    .line 290
    iput v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DragRectView;->mOriRight:I

    :cond_21
    return-void
.end method

.method private setDown(Landroid/view/View;Landroid/view/MotionEvent;Z)V
    .registers 7

    .line 122
    sget-object v0, Lcom/transsion/camera/feature/mode/dualvideo/DragRectView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDown, getX:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", getRawX:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", getY:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", getRawY:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 123
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DragRectView;->mDownX:F

    .line 124
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iput v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DragRectView;->mDownY:F

    .line 125
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DragRectView;->mOriLeft:I

    .line 126
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DragRectView;->mOriRight:I

    .line 127
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DragRectView;->mOriTop:I

    .line 128
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DragRectView;->mOriBottom:I

    .line 129
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DragRectView;->mLastY:I

    .line 130
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DragRectView;->mLastX:I

    if-eqz p3, :cond_81

    .line 131
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    float-to-int p2, p2

    invoke-direct {p0, p0, p1, p2}, Lcom/transsion/camera/feature/mode/dualvideo/DragRectView;->getOutTouchDirection(Landroid/view/View;II)I

    move-result p1

    goto :goto_8f

    .line 132
    :cond_81
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p3

    float-to-int p3, p3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    float-to-int p2, p2

    invoke-direct {p0, p1, p3, p2}, Lcom/transsion/camera/feature/mode/dualvideo/DragRectView;->getDirection(Landroid/view/View;II)I

    move-result p1

    :goto_8f
    iput p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DragRectView;->mDragDirection:I

    .line 133
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DragRectView;->mRectChangedListener:Lcom/transsion/camera/feature/mode/dualvideo/DragRectView$OnRectChangedListener;

    if-eqz p0, :cond_98

    .line 134
    invoke-interface {p0}, Lcom/transsion/camera/feature/mode/dualvideo/DragRectView$OnRectChangedListener;->onChangeBegin()V

    :cond_98
    return-void
.end method

.method private top(I)V
    .registers 5

    .line 247
    iget v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DragRectView;->mOriTop:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DragRectView;->mOriTop:I

    .line 248
    iget p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DragRectView;->mTopAreaEdge:I

    if-ge v0, p1, :cond_b

    .line 249
    iput p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DragRectView;->mOriTop:I

    .line 251
    :cond_b
    iget p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DragRectView;->mOriBottom:I

    iget v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DragRectView;->mOriTop:I

    sub-int v1, p1, v0

    iget v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DragRectView;->mMinRectHeight:I

    if-gt v1, v2, :cond_19

    sub-int/2addr p1, v2

    .line 252
    iput p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DragRectView;->mOriTop:I

    return-void

    :cond_19
    sub-int v0, p1, v0

    .line 253
    iget v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DragRectView;->mMaxRectHeight:I

    if-lt v0, v1, :cond_22

    sub-int/2addr p1, v1

    .line 254
    iput p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DragRectView;->mOriTop:I

    :cond_22
    return-void
.end method


# virtual methods
.method public imitateTouch(Landroid/view/MotionEvent;)Z
    .registers 6

    .line 109
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_14

    .line 111
    iget v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DragRectView;->mCurTouchPointId:I

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    if-eq v2, v3, :cond_10

    return v1

    :cond_10
    const/4 v2, 0x1

    .line 114
    invoke-direct {p0, p0, p1, v2}, Lcom/transsion/camera/feature/mode/dualvideo/DragRectView;->setDown(Landroid/view/View;Landroid/view/MotionEvent;Z)V

    .line 116
    :cond_14
    invoke-virtual {p0, p0, p1, v0}, Lcom/transsion/camera/feature/mode/dualvideo/DragRectView;->processDrag(Landroid/view/View;Landroid/view/MotionEvent;I)V

    .line 117
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return v1
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 2

    .line 91
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 7

    .line 96
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_13

    .line 98
    iget v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DragRectView;->mCurTouchPointId:I

    invoke-virtual {p2, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    if-eq v2, v3, :cond_10

    return v1

    .line 101
    :cond_10
    invoke-direct {p0, p1, p2, v1}, Lcom/transsion/camera/feature/mode/dualvideo/DragRectView;->setDown(Landroid/view/View;Landroid/view/MotionEvent;Z)V

    .line 103
    :cond_13
    invoke-virtual {p0, p1, p2, v0}, Lcom/transsion/camera/feature/mode/dualvideo/DragRectView;->processDrag(Landroid/view/View;Landroid/view/MotionEvent;I)V

    .line 104
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return v1
.end method

.method public processDrag(Landroid/view/View;Landroid/view/MotionEvent;I)V
    .registers 9

    const/4 v0, 0x0

    if-eqz p3, :cond_cc

    const/4 v1, 0x1

    if-eq p3, v1, :cond_95

    const/4 v2, 0x2

    if-eq p3, v2, :cond_b

    goto/16 :goto_94

    .line 146
    :cond_b
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result p3

    if-gt p3, v1, :cond_94

    iget p3, p0, Lcom/transsion/camera/feature/mode/dualvideo/DragRectView;->mCurTouchPointId:I

    invoke-virtual {p2, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    if-eq p3, v0, :cond_1b

    goto/16 :goto_94

    .line 149
    :cond_1b
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p3

    float-to-int p3, p3

    iget v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DragRectView;->mLastX:I

    sub-int/2addr p3, v0

    .line 150
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    float-to-int v0, v0

    iget v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DragRectView;->mLastY:I

    sub-int/2addr v0, v1

    .line 151
    iget v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DragRectView;->mDragDirection:I

    packed-switch v1, :pswitch_data_d6

    goto :goto_60

    .line 165
    :pswitch_31
    invoke-direct {p0, p1, p3, v0}, Lcom/transsion/camera/feature/mode/dualvideo/DragRectView;->center(Landroid/view/View;II)V

    goto :goto_60

    .line 156
    :pswitch_35
    invoke-direct {p0, p3}, Lcom/transsion/camera/feature/mode/dualvideo/DragRectView;->right(I)V

    goto :goto_60

    .line 159
    :pswitch_39
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/mode/dualvideo/DragRectView;->bottom(I)V

    goto :goto_60

    .line 153
    :pswitch_3d
    invoke-direct {p0, p3}, Lcom/transsion/camera/feature/mode/dualvideo/DragRectView;->left(I)V

    goto :goto_60

    .line 162
    :pswitch_41
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/mode/dualvideo/DragRectView;->top(I)V

    goto :goto_60

    .line 182
    :pswitch_45
    invoke-direct {p0, p3}, Lcom/transsion/camera/feature/mode/dualvideo/DragRectView;->right(I)V

    .line 183
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/mode/dualvideo/DragRectView;->bottom(I)V

    goto :goto_60

    .line 174
    :pswitch_4c
    invoke-direct {p0, p3}, Lcom/transsion/camera/feature/mode/dualvideo/DragRectView;->left(I)V

    .line 175
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/mode/dualvideo/DragRectView;->bottom(I)V

    goto :goto_60

    .line 186
    :pswitch_53
    invoke-direct {p0, p3}, Lcom/transsion/camera/feature/mode/dualvideo/DragRectView;->right(I)V

    .line 187
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/mode/dualvideo/DragRectView;->top(I)V

    goto :goto_60

    .line 178
    :pswitch_5a
    invoke-direct {p0, p3}, Lcom/transsion/camera/feature/mode/dualvideo/DragRectView;->left(I)V

    .line 179
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/mode/dualvideo/DragRectView;->top(I)V

    .line 190
    :goto_60
    iget p3, p0, Lcom/transsion/camera/feature/mode/dualvideo/DragRectView;->mDragDirection:I

    const/16 v0, 0x19

    if-eq p3, v0, :cond_86

    invoke-virtual {p0}, Landroid/view/View;->isSelected()Z

    move-result p3

    if-eqz p3, :cond_86

    .line 191
    iget-object p3, p0, Lcom/transsion/camera/feature/mode/dualvideo/DragRectView;->mRectChangedListener:Lcom/transsion/camera/feature/mode/dualvideo/DragRectView$OnRectChangedListener;

    if-eqz p3, :cond_7b

    .line 192
    iget v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DragRectView;->mOriLeft:I

    iget v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DragRectView;->mOriTop:I

    iget v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DragRectView;->mOriRight:I

    iget v3, p0, Lcom/transsion/camera/feature/mode/dualvideo/DragRectView;->mOriBottom:I

    invoke-interface {p3, v0, v1, v2, v3}, Lcom/transsion/camera/feature/mode/dualvideo/DragRectView$OnRectChangedListener;->onChanging(IIII)V

    .line 194
    :cond_7b
    iget p3, p0, Lcom/transsion/camera/feature/mode/dualvideo/DragRectView;->mOriLeft:I

    iget v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DragRectView;->mOriTop:I

    iget v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DragRectView;->mOriRight:I

    iget v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DragRectView;->mOriBottom:I

    invoke-virtual {p1, p3, v0, v1, v2}, Landroid/view/View;->layout(IIII)V

    .line 196
    :cond_86
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DragRectView;->mLastX:I

    .line 197
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DragRectView;->mLastY:I

    :cond_94
    :goto_94
    return-void

    .line 201
    :cond_95
    invoke-static {p0}, Lcom/transsion/camera/utils/MultiTouchManager;->stopTouching(Landroid/view/View;)V

    .line 203
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    iget p3, p0, Lcom/transsion/camera/feature/mode/dualvideo/DragRectView;->mDownX:F

    sub-float/2addr p1, p3

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    float-to-double v1, p1

    const-wide/high16 v3, 0x3fe0000000000000L    # 0.5

    cmpg-double p1, v1, v3

    if-gtz p1, :cond_c2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    iget p2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DragRectView;->mDownY:F

    sub-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    float-to-double p1, p1

    cmpg-double p1, p1, v3

    if-gtz p1, :cond_c2

    .line 204
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DragRectView;->mRectChangedListener:Lcom/transsion/camera/feature/mode/dualvideo/DragRectView$OnRectChangedListener;

    if-eqz p1, :cond_c9

    .line 205
    invoke-interface {p1}, Lcom/transsion/camera/feature/mode/dualvideo/DragRectView$OnRectChangedListener;->onClick()V

    goto :goto_c9

    .line 208
    :cond_c2
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DragRectView;->mRectChangedListener:Lcom/transsion/camera/feature/mode/dualvideo/DragRectView$OnRectChangedListener;

    if-eqz p1, :cond_c9

    .line 209
    invoke-interface {p1}, Lcom/transsion/camera/feature/mode/dualvideo/DragRectView$OnRectChangedListener;->onChangeEnd()V

    .line 212
    :cond_c9
    :goto_c9
    iput v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DragRectView;->mDragDirection:I

    return-void

    .line 141
    :cond_cc
    invoke-static {p0}, Lcom/transsion/camera/utils/MultiTouchManager;->startTouching(Landroid/view/View;)V

    .line 142
    invoke-virtual {p2, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DragRectView;->mCurTouchPointId:I

    return-void

    :pswitch_data_d6
    .packed-switch 0x11
        :pswitch_5a
        :pswitch_53
        :pswitch_4c
        :pswitch_45
        :pswitch_41
        :pswitch_3d
        :pswitch_39
        :pswitch_35
        :pswitch_31
    .end packed-switch
.end method

.method public setAreaSize(III)V
    .registers 4

    .line 84
    iput p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DragRectView;->mAreaWidth:I

    .line 85
    iput p2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DragRectView;->mTopAreaEdge:I

    .line 86
    iput p3, p0, Lcom/transsion/camera/feature/mode/dualvideo/DragRectView;->mBottomAreaEdge:I

    return-void
.end method

.method public setEdgeSize(IIII)V
    .registers 5

    .line 77
    iput p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DragRectView;->mMinRectWidth:I

    .line 78
    iput p2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DragRectView;->mMinRectHeight:I

    .line 79
    iput p3, p0, Lcom/transsion/camera/feature/mode/dualvideo/DragRectView;->mMaxRectWidth:I

    .line 80
    iput p4, p0, Lcom/transsion/camera/feature/mode/dualvideo/DragRectView;->mMaxRectHeight:I

    return-void
.end method

.method public setRectChangedListener(Lcom/transsion/camera/feature/mode/dualvideo/DragRectView$OnRectChangedListener;)V
    .registers 2

    .line 73
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DragRectView;->mRectChangedListener:Lcom/transsion/camera/feature/mode/dualvideo/DragRectView$OnRectChangedListener;

    return-void
.end method
