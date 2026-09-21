.class public Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$Circle;
    }
.end annotation


# static fields
.field private static final CURRENT_COLOR_ALPHA:F = 1.0f

.field private static final DEBUG:Z = false

.field private static final INVALID_INDEX:I = -0x1

.field private static final NORMAL_COLOR_ALPHA:F = 1.0f

.field private static final TAG:Ljava/lang/String; = "SpringPageIndicator"


# instance fields
.field private CIRCLE_DISTANCE:I

.field private DEFAULT_PADDING_LEFT:I

.field private DEFAULT_PADDING_TOP:I

.field private MAXIMUM_CIRCLE_RADIUS:I

.field private MINIMUM_CIRCLE_RADIUS:I

.field private NORMAL_CIRCLE_RADIUS:I

.field private mAddPath:Landroid/graphics/Path;

.field private mBezierProgress:F

.field private mCurrClickMarker:I

.field private mCurrentDownControlPoint:Landroid/graphics/PointF;

.field private mCurrentMarker:I

.field private mCurrentMovedCircle:Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$Circle;

.field private mCurrentMovedCircleDownTangentPoint:Landroid/graphics/PointF;

.field private mCurrentMovedCircleUpTangentPoint:Landroid/graphics/PointF;

.field private mCurrentPath:Landroid/graphics/Path;

.field private mCurrentStillCircle:Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$Circle;

.field private mCurrentStillCircleDownTangentPoint:Landroid/graphics/PointF;

.field private mCurrentStillCircleUpTangentPoint:Landroid/graphics/PointF;

.field private mCurrentUpControlPoint:Landroid/graphics/PointF;

.field private mDefaultMaxMarkerNum:I

.field private mDirection:I

.field private mHideCircleNums:I

.field private mHideFrontCircles:Z

.field private mHousePath:Landroid/graphics/Path;

.field private mIsRtl:Z

.field private mMarkerClickListener:Lcom/transsion/widgetslib/view/indicator/PageIndicatorWrapper$OnMarkerClickListener;

.field private mMarkers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$Circle;",
            ">;"
        }
    .end annotation
.end field

.field private mMaxMarkerNum:I

.field private mNextDownControlPoint:Landroid/graphics/PointF;

.field private mNextMarker:I

.field private mNextMovedCircle:Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$Circle;

.field private mNextMovedCircleDownTangentPoint:Landroid/graphics/PointF;

.field private mNextMovedCircleUpTangentPoint:Landroid/graphics/PointF;

.field private mNextPath:Landroid/graphics/Path;

.field private mNextStillCircle:Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$Circle;

.field private mNextStillCircleDownTangentPoint:Landroid/graphics/PointF;

.field private mNextStillCircleUpTangentPoint:Landroid/graphics/PointF;

.field private mNextUpControlPoint:Landroid/graphics/PointF;

.field private mNormalColor:I

.field private mScroller:Landroid/widget/Scroller;

.field private mSelectedColor:I

.field private mShouldDrawNextCirclePath:Z

.field private mTempRect:Landroid/graphics/RectF;

.field private mTriangleLeft:Landroid/graphics/PointF;

.field private mTriangleRight:Landroid/graphics/PointF;

.field private mTriangleTop:Landroid/graphics/PointF;

.field private mXfermodeDesOver:Landroid/graphics/PorterDuffXfermode;

.field private mXfermodeSrcOver:Landroid/graphics/PorterDuffXfermode;

.field private paint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 118
    invoke-direct {p0, p1, v0}, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6

    .line 122
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    .line 74
    iput v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mCurrentMarker:I

    .line 75
    iput v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mNextMarker:I

    const/4 v1, 0x1

    .line 76
    iput-boolean v1, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mShouldDrawNextCirclePath:Z

    .line 77
    iput-boolean v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mHideFrontCircles:Z

    .line 78
    iput v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mHideCircleNums:I

    const v0, 0x7fffffff

    .line 87
    iput v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mDefaultMaxMarkerNum:I

    const/4 v0, -0x1

    .line 91
    iput v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mCurrClickMarker:I

    const/4 v0, 0x0

    .line 123
    invoke-virtual {p0, v1, v0}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 124
    invoke-static {}, Lcom/transsion/widgetslib/util/Utils;->isRtl()Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mIsRtl:Z

    .line 125
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 126
    sget v1, Lcom/transsion/widgetslib/R$dimen;->os_spring_page_marker_radius:I

    .line 127
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->NORMAL_CIRCLE_RADIUS:I

    .line 128
    sget v1, Lcom/transsion/widgetslib/R$dimen;->os_spring_page_marker_radius:I

    .line 129
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->MAXIMUM_CIRCLE_RADIUS:I

    .line 130
    sget v1, Lcom/transsion/widgetslib/R$dimen;->os_spring_page_marker_radius:I

    .line 131
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->MINIMUM_CIRCLE_RADIUS:I

    .line 132
    sget v1, Lcom/transsion/widgetslib/R$dimen;->os_spring_page_marker_distance:I

    .line 133
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->CIRCLE_DISTANCE:I

    .line 134
    sget-object v0, Lcom/transsion/widgetslib/R$styleable;->PageIndicatorWrapper:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 135
    sget v0, Lcom/transsion/widgetslib/R$styleable;->PageIndicatorWrapper_normalColor:I

    sget v1, Lcom/transsion/widgetslib/R$attr;->os_comp_color_page_default:I

    sget v2, Lcom/transsion/widgetslib/R$color;->os_comp_color_page_default_hios:I

    invoke-static {p1, v1, v2}, Lcom/transsion/widgetslib/util/Utils;->getAttrColor(Landroid/content/Context;II)I

    move-result v1

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mNormalColor:I

    .line 136
    sget v0, Lcom/transsion/widgetslib/R$styleable;->PageIndicatorWrapper_selectedColor:I

    sget v1, Lcom/transsion/widgetslib/R$attr;->os_comp_color_page_focus:I

    sget v2, Lcom/transsion/widgetslib/R$color;->os_comp_color_page_focus_hios:I

    invoke-static {p1, v1, v2}, Lcom/transsion/widgetslib/util/Utils;->getAttrColor(Landroid/content/Context;II)I

    move-result p1

    invoke-virtual {p2, v0, p1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    iput p1, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mSelectedColor:I

    .line 137
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 138
    invoke-direct {p0}, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->init()V

    return-void
.end method

.method private calculateCircles()V
    .registers 9

    .line 352
    iget-object v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mMarkers:Ljava/util/ArrayList;

    if-eqz v0, :cond_86

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_c

    goto/16 :goto_86

    .line 355
    :cond_c
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    .line 356
    iget-object v1, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mMarkers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 358
    invoke-virtual {p0}, Landroid/view/View;->hasWindowFocus()Z

    move-result v2

    if-nez v2, :cond_23

    .line 359
    invoke-direct {p0, v1}, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->calculateWidth(I)I

    move-result v2

    if-ge v2, v0, :cond_23

    move v0, v2

    .line 365
    :cond_23
    iget v2, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->MAXIMUM_CIRCLE_RADIUS:I

    mul-int/lit8 v3, v2, 0x2

    add-int/lit8 v4, v1, -0x1

    iget v5, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->CIRCLE_DISTANCE:I

    mul-int/2addr v5, v4

    add-int/2addr v3, v5

    sub-int/2addr v0, v3

    .line 367
    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v2

    iget v3, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->DEFAULT_PADDING_LEFT:I

    add-int/2addr v3, v2

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 370
    iget-boolean v2, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mHideFrontCircles:Z

    if-eqz v2, :cond_42

    .line 371
    iget v2, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->CIRCLE_DISTANCE:I

    iget v3, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mHideCircleNums:I

    mul-int/2addr v2, v3

    sub-int/2addr v0, v2

    .line 374
    :cond_42
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    const/4 v3, 0x0

    :goto_49
    if-ge v3, v1, :cond_7d

    .line 377
    iget-object v5, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mMarkers:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$Circle;

    .line 378
    iget v6, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mCurrentMarker:I

    if-ne v3, v6, :cond_5d

    .line 379
    iget v6, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->MAXIMUM_CIRCLE_RADIUS:I

    int-to-float v6, v6

    iput v6, v5, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$Circle;->radius:F

    goto :goto_62

    .line 381
    :cond_5d
    iget v6, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->NORMAL_CIRCLE_RADIUS:I

    int-to-float v6, v6

    iput v6, v5, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$Circle;->radius:F

    .line 383
    :goto_62
    iget-boolean v6, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mIsRtl:Z

    if-eqz v6, :cond_70

    sub-int v6, v4, v3

    .line 384
    iget v7, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->CIRCLE_DISTANCE:I

    mul-int/2addr v6, v7

    add-int/2addr v6, v0

    int-to-float v6, v6

    iput v6, v5, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$Circle;->centerX:F

    goto :goto_77

    .line 386
    :cond_70
    iget v6, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->CIRCLE_DISTANCE:I

    mul-int/2addr v6, v3

    add-int/2addr v6, v0

    int-to-float v6, v6

    iput v6, v5, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$Circle;->centerX:F

    :goto_77
    int-to-float v6, v2

    .line 388
    iput v6, v5, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$Circle;->centerY:F

    add-int/lit8 v3, v3, 0x1

    goto :goto_49

    .line 390
    :cond_7d
    iget-object v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mCurrentMovedCircle:Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$Circle;

    iget-object p0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mNextMovedCircle:Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$Circle;

    int-to-float v1, v2

    iput v1, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$Circle;->centerY:F

    iput v1, v0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$Circle;->centerY:F

    :cond_86
    :goto_86
    return-void
.end method

.method private calculateMaxMarkerNum(I)I
    .registers 3

    .line 441
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    sub-int/2addr p1, v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v0

    add-int/2addr p1, v0

    iget v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->MAXIMUM_CIRCLE_RADIUS:I

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr p1, v0

    iget v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->DEFAULT_PADDING_LEFT:I

    mul-int/lit8 v0, v0, 0x2

    sub-int/2addr p1, v0

    .line 443
    iget p0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->CIRCLE_DISTANCE:I

    div-int/2addr p1, p0

    add-int/lit8 p1, p1, 0x1

    return p1
.end method

.method private calculatePoints()V
    .registers 11

    .line 733
    iget-object v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mCurrentStillCircle:Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$Circle;

    iget v1, v0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$Circle;->radius:F

    iget-object v2, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mCurrentMovedCircle:Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$Circle;

    iget v3, v2, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$Circle;->radius:F

    sub-float/2addr v1, v3

    iget v2, v2, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$Circle;->centerX:F

    iget v0, v0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$Circle;->centerX:F

    sub-float/2addr v2, v0

    div-float/2addr v1, v2

    float-to-double v0, v1

    .line 734
    invoke-static {v0, v1}, Ljava/lang/Math;->acos(D)D

    move-result-wide v0

    .line 737
    iget-object v2, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mCurrentStillCircleUpTangentPoint:Landroid/graphics/PointF;

    iget-object v3, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mCurrentStillCircle:Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$Circle;

    iget v4, v3, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$Circle;->centerX:F

    iget v3, v3, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$Circle;->radius:F

    float-to-double v5, v3

    .line 738
    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v7

    mul-double/2addr v5, v7

    double-to-float v3, v5

    add-float/2addr v4, v3

    iput v4, v2, Landroid/graphics/PointF;->x:F

    .line 739
    iget-object v2, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mCurrentStillCircleUpTangentPoint:Landroid/graphics/PointF;

    iget-object v3, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mCurrentStillCircle:Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$Circle;

    iget v4, v3, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$Circle;->centerY:F

    iget v3, v3, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$Circle;->radius:F

    float-to-double v5, v3

    .line 740
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v7

    mul-double/2addr v5, v7

    double-to-float v3, v5

    sub-float/2addr v4, v3

    iput v4, v2, Landroid/graphics/PointF;->y:F

    .line 741
    iget-object v2, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mCurrentMovedCircleUpTangentPoint:Landroid/graphics/PointF;

    iget-object v3, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mCurrentMovedCircle:Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$Circle;

    iget v4, v3, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$Circle;->centerX:F

    iget v3, v3, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$Circle;->radius:F

    float-to-double v5, v3

    .line 742
    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v7

    mul-double/2addr v5, v7

    double-to-float v3, v5

    add-float/2addr v4, v3

    iput v4, v2, Landroid/graphics/PointF;->x:F

    .line 743
    iget-object v2, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mCurrentMovedCircleUpTangentPoint:Landroid/graphics/PointF;

    iget-object v3, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mCurrentMovedCircle:Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$Circle;

    iget v4, v3, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$Circle;->centerY:F

    iget v3, v3, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$Circle;->radius:F

    float-to-double v5, v3

    .line 744
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v7

    mul-double/2addr v5, v7

    double-to-float v3, v5

    sub-float/2addr v4, v3

    iput v4, v2, Landroid/graphics/PointF;->y:F

    .line 746
    iget-object v2, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mCurrentStillCircleDownTangentPoint:Landroid/graphics/PointF;

    iget-object v3, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mCurrentStillCircleUpTangentPoint:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    iput v3, v2, Landroid/graphics/PointF;->x:F

    .line 747
    iget-object v3, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mCurrentStillCircle:Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$Circle;

    iget v4, v3, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$Circle;->centerY:F

    iget v3, v3, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$Circle;->radius:F

    float-to-double v5, v3

    .line 748
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v7

    mul-double/2addr v5, v7

    double-to-float v3, v5

    add-float/2addr v4, v3

    iput v4, v2, Landroid/graphics/PointF;->y:F

    .line 749
    iget-object v2, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mCurrentMovedCircleDownTangentPoint:Landroid/graphics/PointF;

    iget-object v3, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mCurrentMovedCircleUpTangentPoint:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    iput v3, v2, Landroid/graphics/PointF;->x:F

    .line 750
    iget-object v3, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mCurrentMovedCircle:Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$Circle;

    iget v4, v3, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$Circle;->centerY:F

    iget v3, v3, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$Circle;->radius:F

    float-to-double v5, v3

    .line 751
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    mul-double/2addr v5, v0

    double-to-float v0, v5

    add-float/2addr v4, v0

    iput v4, v2, Landroid/graphics/PointF;->y:F

    .line 753
    iget-object v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mCurrentUpControlPoint:Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mCurrentStillCircleUpTangentPoint:Landroid/graphics/PointF;

    iget v2, v1, Landroid/graphics/PointF;->x:F

    iget-object v3, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mCurrentMovedCircleUpTangentPoint:Landroid/graphics/PointF;

    iget v4, v3, Landroid/graphics/PointF;->x:F

    sub-float/2addr v4, v2

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    add-float/2addr v2, v4

    iput v2, v0, Landroid/graphics/PointF;->x:F

    .line 756
    iget-object v4, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mCurrentStillCircle:Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$Circle;

    iget v4, v4, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$Circle;->centerY:F

    iget v6, v3, Landroid/graphics/PointF;->y:F

    iget v7, v1, Landroid/graphics/PointF;->y:F

    sub-float/2addr v6, v7

    div-float/2addr v6, v5

    sub-float v6, v4, v6

    iput v6, v0, Landroid/graphics/PointF;->y:F

    .line 759
    iget-object v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mCurrentDownControlPoint:Landroid/graphics/PointF;

    iput v2, v0, Landroid/graphics/PointF;->x:F

    .line 760
    iget v2, v3, Landroid/graphics/PointF;->y:F

    iget v1, v1, Landroid/graphics/PointF;->y:F

    sub-float/2addr v2, v1

    div-float/2addr v2, v5

    add-float/2addr v4, v2

    iput v4, v0, Landroid/graphics/PointF;->y:F

    .line 765
    iget-object v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mNextStillCircle:Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$Circle;

    iget v1, v0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$Circle;->radius:F

    iget-object v2, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mCurrentMovedCircle:Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$Circle;

    iget v2, v2, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$Circle;->radius:F

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mNextMovedCircle:Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$Circle;

    iget v2, v2, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$Circle;->centerX:F

    iget v0, v0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$Circle;->centerX:F

    sub-float/2addr v2, v0

    div-float/2addr v1, v2

    float-to-double v0, v1

    .line 766
    invoke-static {v0, v1}, Ljava/lang/Math;->acos(D)D

    move-result-wide v0

    .line 769
    iget-object v2, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mNextStillCircleUpTangentPoint:Landroid/graphics/PointF;

    iget-object v3, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mNextStillCircle:Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$Circle;

    iget v4, v3, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$Circle;->centerX:F

    iget v3, v3, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$Circle;->radius:F

    float-to-double v6, v3

    .line 770
    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    mul-double/2addr v6, v8

    double-to-float v3, v6

    add-float/2addr v4, v3

    iput v4, v2, Landroid/graphics/PointF;->x:F

    .line 771
    iget-object v2, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mNextStillCircleUpTangentPoint:Landroid/graphics/PointF;

    iget-object v3, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mNextStillCircle:Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$Circle;

    iget v4, v3, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$Circle;->centerY:F

    iget v3, v3, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$Circle;->radius:F

    float-to-double v6, v3

    .line 772
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    mul-double/2addr v6, v8

    double-to-float v3, v6

    sub-float/2addr v4, v3

    iput v4, v2, Landroid/graphics/PointF;->y:F

    .line 773
    iget-object v2, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mNextMovedCircleUpTangentPoint:Landroid/graphics/PointF;

    iget-object v3, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mNextMovedCircle:Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$Circle;

    iget v4, v3, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$Circle;->centerX:F

    iget v3, v3, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$Circle;->radius:F

    float-to-double v6, v3

    .line 774
    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    mul-double/2addr v6, v8

    double-to-float v3, v6

    add-float/2addr v4, v3

    iput v4, v2, Landroid/graphics/PointF;->x:F

    .line 775
    iget-object v2, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mNextMovedCircleUpTangentPoint:Landroid/graphics/PointF;

    iget-object v3, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mNextMovedCircle:Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$Circle;

    iget v4, v3, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$Circle;->centerY:F

    iget v3, v3, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$Circle;->radius:F

    float-to-double v6, v3

    .line 776
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    mul-double/2addr v6, v8

    double-to-float v3, v6

    sub-float/2addr v4, v3

    iput v4, v2, Landroid/graphics/PointF;->y:F

    .line 778
    iget-object v2, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mNextStillCircleDownTangentPoint:Landroid/graphics/PointF;

    iget-object v3, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mNextStillCircleUpTangentPoint:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    iput v3, v2, Landroid/graphics/PointF;->x:F

    .line 779
    iget-object v3, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mNextStillCircle:Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$Circle;

    iget v4, v3, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$Circle;->centerY:F

    iget v3, v3, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$Circle;->radius:F

    float-to-double v6, v3

    .line 780
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    mul-double/2addr v6, v8

    double-to-float v3, v6

    add-float/2addr v4, v3

    iput v4, v2, Landroid/graphics/PointF;->y:F

    .line 781
    iget-object v2, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mNextMovedCircleDownTangentPoint:Landroid/graphics/PointF;

    iget-object v3, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mNextMovedCircleUpTangentPoint:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    iput v3, v2, Landroid/graphics/PointF;->x:F

    .line 782
    iget-object v3, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mNextMovedCircle:Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$Circle;

    iget v4, v3, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$Circle;->centerY:F

    iget v3, v3, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$Circle;->radius:F

    float-to-double v6, v3

    .line 783
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    mul-double/2addr v6, v0

    double-to-float v0, v6

    add-float/2addr v4, v0

    iput v4, v2, Landroid/graphics/PointF;->y:F

    .line 786
    iget-object v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mNextUpControlPoint:Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mNextStillCircleUpTangentPoint:Landroid/graphics/PointF;

    iget v2, v1, Landroid/graphics/PointF;->x:F

    iget-object v3, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mNextMovedCircleUpTangentPoint:Landroid/graphics/PointF;

    iget v4, v3, Landroid/graphics/PointF;->x:F

    sub-float/2addr v4, v2

    div-float/2addr v4, v5

    add-float/2addr v2, v4

    iput v2, v0, Landroid/graphics/PointF;->x:F

    .line 789
    iget-object v4, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mNextStillCircle:Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$Circle;

    iget v4, v4, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$Circle;->centerY:F

    iget v6, v3, Landroid/graphics/PointF;->y:F

    iget v7, v1, Landroid/graphics/PointF;->y:F

    sub-float/2addr v6, v7

    div-float/2addr v6, v5

    sub-float v6, v4, v6

    iput v6, v0, Landroid/graphics/PointF;->y:F

    .line 792
    iget-object p0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mNextDownControlPoint:Landroid/graphics/PointF;

    iput v2, p0, Landroid/graphics/PointF;->x:F

    .line 793
    iget v0, v3, Landroid/graphics/PointF;->y:F

    iget v1, v1, Landroid/graphics/PointF;->y:F

    sub-float/2addr v0, v1

    div-float/2addr v0, v5

    add-float/2addr v4, v0

    iput v4, p0, Landroid/graphics/PointF;->y:F

    return-void
.end method

.method private calculateWidth(I)I
    .registers 4

    .line 432
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->MAXIMUM_CIRCLE_RADIUS:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    add-int/lit8 p1, p1, -0x1

    iget v1, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->CIRCLE_DISTANCE:I

    mul-int/2addr p1, v1

    add-int/2addr v0, p1

    iget p1, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->DEFAULT_PADDING_LEFT:I

    mul-int/lit8 p1, p1, 0x2

    add-int/2addr v0, p1

    .line 435
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    add-int/2addr p1, v1

    iget p0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->DEFAULT_PADDING_LEFT:I

    mul-int/lit8 p0, p0, 0x2

    add-int/2addr p1, p0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method private generatePath()V
    .registers 6

    .line 680
    iget-object v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mCurrentPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 681
    iget-object v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mCurrentPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mCurrentStillCircle:Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$Circle;

    iget v2, v1, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$Circle;->centerX:F

    iget v3, v1, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$Circle;->centerY:F

    iget v1, v1, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$Circle;->radius:F

    .line 683
    iget v4, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mDirection:I

    if-lez v4, :cond_16

    sget-object v4, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    goto :goto_18

    :cond_16
    sget-object v4, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    .line 681
    :goto_18
    invoke-virtual {v0, v2, v3, v1, v4}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 685
    iget v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mCurrentMarker:I

    iget v1, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mNextMarker:I

    if-eq v0, v1, :cond_e9

    .line 687
    iget-object v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mCurrentPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mCurrentMovedCircle:Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$Circle;

    iget v2, v1, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$Circle;->centerX:F

    iget v3, v1, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$Circle;->centerY:F

    iget v1, v1, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$Circle;->radius:F

    .line 689
    iget v4, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mDirection:I

    if-lez v4, :cond_32

    sget-object v4, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    goto :goto_34

    :cond_32
    sget-object v4, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    .line 687
    :goto_34
    invoke-virtual {v0, v2, v3, v1, v4}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 692
    iget-object v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mCurrentPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mCurrentStillCircleUpTangentPoint:Landroid/graphics/PointF;

    iget v2, v1, Landroid/graphics/PointF;->x:F

    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 694
    iget-object v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mCurrentPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mCurrentUpControlPoint:Landroid/graphics/PointF;

    iget v2, v1, Landroid/graphics/PointF;->x:F

    iget v1, v1, Landroid/graphics/PointF;->y:F

    iget-object v3, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mCurrentMovedCircleUpTangentPoint:Landroid/graphics/PointF;

    iget v4, v3, Landroid/graphics/PointF;->x:F

    iget v3, v3, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v2, v1, v4, v3}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 698
    iget-object v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mCurrentPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mCurrentMovedCircleDownTangentPoint:Landroid/graphics/PointF;

    iget v2, v1, Landroid/graphics/PointF;->x:F

    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 700
    iget-object v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mCurrentPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mCurrentDownControlPoint:Landroid/graphics/PointF;

    iget v2, v1, Landroid/graphics/PointF;->x:F

    iget v1, v1, Landroid/graphics/PointF;->y:F

    iget-object v3, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mCurrentStillCircleDownTangentPoint:Landroid/graphics/PointF;

    iget v4, v3, Landroid/graphics/PointF;->x:F

    iget v3, v3, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v2, v1, v4, v3}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 704
    iget-object v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mCurrentPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mCurrentStillCircleUpTangentPoint:Landroid/graphics/PointF;

    iget v2, v1, Landroid/graphics/PointF;->x:F

    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 708
    iget-object v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mNextPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mNextStillCircleUpTangentPoint:Landroid/graphics/PointF;

    iget v2, v1, Landroid/graphics/PointF;->x:F

    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 710
    iget-object v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mNextPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mNextUpControlPoint:Landroid/graphics/PointF;

    iget v2, v1, Landroid/graphics/PointF;->x:F

    iget v1, v1, Landroid/graphics/PointF;->y:F

    iget-object v3, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mNextMovedCircleUpTangentPoint:Landroid/graphics/PointF;

    iget v4, v3, Landroid/graphics/PointF;->x:F

    iget v3, v3, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v2, v1, v4, v3}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 713
    iget-object v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mNextPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mNextMovedCircleDownTangentPoint:Landroid/graphics/PointF;

    iget v2, v1, Landroid/graphics/PointF;->x:F

    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 715
    iget-object v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mNextPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mNextDownControlPoint:Landroid/graphics/PointF;

    iget v2, v1, Landroid/graphics/PointF;->x:F

    iget v1, v1, Landroid/graphics/PointF;->y:F

    iget-object v3, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mNextStillCircleDownTangentPoint:Landroid/graphics/PointF;

    iget v4, v3, Landroid/graphics/PointF;->x:F

    iget v3, v3, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v2, v1, v4, v3}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 718
    iget-object v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mNextPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mNextStillCircleUpTangentPoint:Landroid/graphics/PointF;

    iget v2, v1, Landroid/graphics/PointF;->x:F

    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 721
    iget-object v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mNextPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mNextStillCircle:Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$Circle;

    iget v2, v1, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$Circle;->centerX:F

    iget v3, v1, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$Circle;->centerY:F

    iget v1, v1, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$Circle;->radius:F

    .line 723
    iget v4, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mDirection:I

    if-lez v4, :cond_ce

    sget-object v4, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    goto :goto_d0

    :cond_ce
    sget-object v4, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    .line 721
    :goto_d0
    invoke-virtual {v0, v2, v3, v1, v4}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 724
    iget-object v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mNextPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mNextMovedCircle:Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$Circle;

    iget v2, v1, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$Circle;->centerX:F

    iget v3, v1, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$Circle;->centerY:F

    iget v1, v1, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$Circle;->radius:F

    .line 726
    iget p0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mDirection:I

    if-lez p0, :cond_e4

    sget-object p0, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    goto :goto_e6

    :cond_e4
    sget-object p0, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    .line 724
    :goto_e6
    invoke-virtual {v0, v2, v3, v1, p0}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    :cond_e9
    return-void
.end method

.method private getMarkers(I)Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$Circle;
    .registers 2

    .line 527
    :try_start_0
    iget-object p0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mMarkers:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$Circle;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_9

    return-object p0

    :catch_9
    const/4 p0, 0x0

    return-object p0
.end method

.method private init()V
    .registers 3

    .line 552
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mCurrentStillCircleUpTangentPoint:Landroid/graphics/PointF;

    .line 553
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mCurrentStillCircleDownTangentPoint:Landroid/graphics/PointF;

    .line 554
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mCurrentMovedCircleUpTangentPoint:Landroid/graphics/PointF;

    .line 555
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mCurrentMovedCircleDownTangentPoint:Landroid/graphics/PointF;

    .line 556
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mCurrentUpControlPoint:Landroid/graphics/PointF;

    .line 557
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mCurrentDownControlPoint:Landroid/graphics/PointF;

    .line 560
    new-instance v0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$Circle;

    invoke-direct {v0, p0}, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$Circle;-><init>(Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;)V

    iput-object v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mCurrentMovedCircle:Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$Circle;

    .line 562
    new-instance v0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$Circle;

    invoke-direct {v0, p0}, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$Circle;-><init>(Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;)V

    iput-object v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mNextMovedCircle:Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$Circle;

    .line 564
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mNextStillCircleUpTangentPoint:Landroid/graphics/PointF;

    .line 565
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mNextStillCircleDownTangentPoint:Landroid/graphics/PointF;

    .line 566
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mNextMovedCircleUpTangentPoint:Landroid/graphics/PointF;

    .line 567
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mNextMovedCircleDownTangentPoint:Landroid/graphics/PointF;

    .line 569
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mNextUpControlPoint:Landroid/graphics/PointF;

    .line 570
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mNextDownControlPoint:Landroid/graphics/PointF;

    .line 572
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mCurrentPath:Landroid/graphics/Path;

    .line 573
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mNextPath:Landroid/graphics/Path;

    .line 574
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mHousePath:Landroid/graphics/Path;

    .line 575
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mAddPath:Landroid/graphics/Path;

    .line 577
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mTempRect:Landroid/graphics/RectF;

    .line 578
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mTriangleTop:Landroid/graphics/PointF;

    .line 579
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mTriangleLeft:Landroid/graphics/PointF;

    .line 580
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mTriangleRight:Landroid/graphics/PointF;

    .line 581
    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    iput-object v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mXfermodeSrcOver:Landroid/graphics/PorterDuffXfermode;

    .line 582
    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->DST_OVER:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    iput-object v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mXfermodeDesOver:Landroid/graphics/PorterDuffXfermode;

    .line 583
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mMarkers:Ljava/util/ArrayList;

    .line 584
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->paint:Landroid/graphics/Paint;

    .line 585
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 586
    iget-object v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->paint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const/4 v0, 0x0

    .line 587
    invoke-virtual {p0, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 588
    new-instance v0, Landroid/widget/Scroller;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mScroller:Landroid/widget/Scroller;

    .line 589
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/transsion/widgetslib/util/Utils;->dp2px(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->DEFAULT_PADDING_LEFT:I

    .line 590
    iput v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->DEFAULT_PADDING_TOP:I

    return-void
.end method

.method private offsetHalfSize(I)V
    .registers 16

    .line 274
    iget-object v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mMarkers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 275
    iget v1, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mMaxMarkerNum:I

    if-ge v0, v1, :cond_1d

    .line 276
    iget-object p1, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {p1}, Landroid/widget/Scroller;->getCurrX()I

    move-result p1

    if-eqz p1, :cond_1c

    .line 277
    iget-object v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mScroller:Landroid/widget/Scroller;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    :cond_1c
    return-void

    :cond_1d
    sub-int v2, v0, v1

    .line 281
    iget v3, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->CIRCLE_DISTANCE:I

    mul-int v7, v2, v3

    .line 282
    iget-boolean v2, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mIsRtl:Z

    if-eqz v2, :cond_3f

    if-lt v0, v1, :cond_3f

    add-int/lit8 v1, v1, -0x1

    if-ge p1, v1, :cond_3f

    .line 283
    iget-object v1, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrX()I

    move-result v1

    if-eq v1, v7, :cond_3f

    .line 284
    iget-object v4, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mScroller:Landroid/widget/Scroller;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/widget/Scroller;->startScroll(IIIII)V

    return-void

    .line 289
    :cond_3f
    iget v1, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mMaxMarkerNum:I

    div-int/lit8 v2, v1, 0x2

    .line 290
    iget-boolean v3, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mIsRtl:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_4a

    move v9, v7

    goto :goto_4b

    :cond_4a
    move v9, v4

    :goto_4b
    if-gt p1, v2, :cond_4e

    goto :goto_79

    :cond_4e
    if-le p1, v2, :cond_79

    sub-int v5, v0, v1

    if-nez v5, :cond_55

    goto :goto_79

    :cond_55
    if-gt v5, v2, :cond_5c

    .line 301
    iget p1, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->CIRCLE_DISTANCE:I

    mul-int v4, v5, p1

    goto :goto_79

    :cond_5c
    add-int/lit8 v4, v1, -0x1

    if-gt p1, v4, :cond_66

    sub-int/2addr p1, v2

    .line 304
    iget v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->CIRCLE_DISTANCE:I

    :goto_63
    mul-int v4, p1, v0

    goto :goto_79

    :cond_66
    add-int/lit8 v0, v0, -0x1

    sub-int/2addr v0, p1

    if-le v0, v2, :cond_72

    add-int/lit8 v1, v1, -0x1

    sub-int/2addr p1, v1

    add-int/2addr p1, v2

    .line 309
    iget v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->CIRCLE_DISTANCE:I

    goto :goto_63

    :cond_72
    add-int/lit8 v1, v1, -0x1

    sub-int/2addr p1, v1

    add-int/2addr p1, v0

    .line 311
    iget v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->CIRCLE_DISTANCE:I

    goto :goto_63

    :cond_79
    :goto_79
    if-eqz v3, :cond_7e

    neg-int p1, v4

    int-to-float p1, p1

    goto :goto_7f

    :cond_7e
    int-to-float p1, v4

    .line 318
    :goto_7f
    iget-object v8, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mScroller:Landroid/widget/Scroller;

    float-to-int v11, p1

    const/4 v12, 0x0

    const/16 v13, 0xc8

    const/4 v10, 0x0

    invoke-virtual/range {v8 .. v13}, Landroid/widget/Scroller;->startScroll(IIIII)V

    return-void
.end method

.method private setAddPath(Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$Circle;)V
    .registers 9

    .line 534
    iget-object v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mAddPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 535
    iget v0, p1, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$Circle;->radius:F

    const/high16 v1, 0x40c00000    # 6.0f

    div-float v1, v0, v1

    float-to-int v1, v1

    const/high16 v2, 0x40400000    # 3.0f

    mul-float/2addr v0, v2

    const/high16 v2, 0x40800000    # 4.0f

    div-float/2addr v0, v2

    float-to-int v0, v0

    .line 537
    iget-object v2, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mTempRect:Landroid/graphics/RectF;

    .line 538
    iget v3, p1, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$Circle;->centerX:F

    int-to-float v4, v0

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->left:F

    .line 539
    iget v5, p1, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$Circle;->centerY:F

    int-to-float v6, v1

    sub-float/2addr v5, v6

    iput v5, v2, Landroid/graphics/RectF;->top:F

    mul-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    add-float/2addr v3, v0

    .line 540
    iput v3, v2, Landroid/graphics/RectF;->right:F

    mul-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    add-float/2addr v5, v1

    .line 541
    iput v5, v2, Landroid/graphics/RectF;->bottom:F

    .line 542
    iget-object v3, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mAddPath:Landroid/graphics/Path;

    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v3, v2, v5}, Landroid/graphics/Path;->addRect(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    .line 544
    iget v3, p1, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$Circle;->centerX:F

    sub-float/2addr v3, v6

    iput v3, v2, Landroid/graphics/RectF;->left:F

    .line 545
    iget p1, p1, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$Circle;->centerY:F

    sub-float/2addr p1, v4

    iput p1, v2, Landroid/graphics/RectF;->top:F

    add-float/2addr v3, v1

    .line 546
    iput v3, v2, Landroid/graphics/RectF;->right:F

    add-float/2addr p1, v0

    .line 547
    iput p1, v2, Landroid/graphics/RectF;->bottom:F

    .line 548
    iget-object p0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mAddPath:Landroid/graphics/Path;

    invoke-virtual {p0, v2, v5}, Landroid/graphics/Path;->addRect(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    return-void
.end method

.method public static setAlphaComponent(II)I
    .registers 3

    if-ltz p1, :cond_e

    const/16 v0, 0xff

    if-gt p1, v0, :cond_e

    const v0, 0xffffff

    and-int/2addr p0, v0

    shl-int/lit8 p1, p1, 0x18

    or-int/2addr p0, p1

    return p0

    .line 803
    :cond_e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "alpha must be between 0 and 255."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private shouldScrollLeft(I)Z
    .registers 3

    .line 242
    iget-object v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mMarkers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$Circle;

    .line 243
    iget v0, p1, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$Circle;->centerX:F

    iget p1, p1, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$Circle;->radius:F

    sub-float/2addr v0, p1

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result p1

    iget p0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->CIRCLE_DISTANCE:I

    add-int/2addr p1, p0

    int-to-float p0, p1

    cmpg-float p0, v0, p0

    if-gtz p0, :cond_1b

    const/4 p0, 0x1

    return p0

    :cond_1b
    const/4 p0, 0x0

    return p0
.end method

.method private shouldScrollLeftOrRight(I)Z
    .registers 5

    .line 249
    iget-object v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mMarkers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v1, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mMaxMarkerNum:I

    const/4 v2, 0x0

    if-lt v0, v1, :cond_29

    iget-boolean v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mIsRtl:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mMarkers:Ljava/util/ArrayList;

    .line 250
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v1

    if-ne p1, v0, :cond_1a

    goto :goto_29

    .line 253
    :cond_1a
    invoke-direct {p0, p1}, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->shouldScrollLeft(I)Z

    move-result v0

    if-nez v0, :cond_28

    invoke-direct {p0, p1}, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->shouldScrollRight(I)Z

    move-result p0

    if-eqz p0, :cond_27

    goto :goto_28

    :cond_27
    return v2

    :cond_28
    :goto_28
    return v1

    :cond_29
    :goto_29
    return v2
.end method

.method private shouldScrollRight(I)Z
    .registers 5

    .line 235
    iget-object v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mMarkers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$Circle;

    .line 236
    iget v1, v0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$Circle;->centerX:F

    iget v0, v0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$Circle;->radius:F

    add-float/2addr v1, v0

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v0

    .line 237
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    add-int/2addr v0, v2

    iget v2, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->CIRCLE_DISTANCE:I

    sub-int/2addr v0, v2

    int-to-float v0, v0

    cmpl-float v0, v1, v0

    if-ltz v0, :cond_2f

    .line 238
    iget-object v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mMarkers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    if-lt p1, v0, :cond_2e

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result p0

    if-nez p0, :cond_2f

    :cond_2e
    return v1

    :cond_2f
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public addMarker()V
    .registers 3

    .line 149
    iget-object v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mMarkers:Ljava/util/ArrayList;

    new-instance v1, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$Circle;

    invoke-direct {v1, p0}, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$Circle;-><init>(Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 150
    iget-object v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mNextStillCircle:Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$Circle;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mCurrentStillCircle:Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$Circle;

    if-nez v0, :cond_23

    :cond_12
    const/4 v0, 0x0

    .line 151
    iput v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mCurrentMarker:I

    iput v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mNextMarker:I

    .line 152
    iget-object v1, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mMarkers:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$Circle;

    iput-object v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mCurrentStillCircle:Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$Circle;

    iput-object v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mNextStillCircle:Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$Circle;

    .line 154
    :cond_23
    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->resetColorAlphaAndRadius()V

    .line 155
    invoke-direct {p0}, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->calculateCircles()V

    .line 156
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public computeScroll()V
    .registers 3

    .line 323
    iget-object v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 324
    iget-object v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/view/View;->scrollTo(II)V

    .line 325
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 327
    :cond_15
    invoke-super {p0}, Landroid/view/View;->computeScroll()V

    return-void
.end method

.method public hideFrontMarkers(ZI)V
    .registers 3

    .line 226
    iput-boolean p1, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mHideFrontCircles:Z

    .line 227
    iput p2, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mHideCircleNums:I

    .line 228
    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->resetColorAlphaAndRadius()V

    .line 229
    invoke-direct {p0}, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->calculateCircles()V

    .line 230
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 231
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 8

    .line 481
    iget-object v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mMarkers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_a

    return-void

    .line 484
    :cond_a
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 485
    iget-object v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->paint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 486
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v0

    .line 487
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v1

    .line 488
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    add-int/2addr v3, v1

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 489
    iget-object v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->paint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mNormalColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 490
    iget-object v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mMarkers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_36
    if-ge v1, v0, :cond_61

    .line 492
    iget v2, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mCurrentMarker:I

    if-eq v1, v2, :cond_5e

    iget-boolean v2, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mShouldDrawNextCirclePath:Z

    if-eqz v2, :cond_4d

    iget v2, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mNextMarker:I

    if-ne v1, v2, :cond_4d

    iget-object v2, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mNextPath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4d

    goto :goto_5e

    .line 495
    :cond_4d
    invoke-direct {p0, v1}, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->getMarkers(I)Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$Circle;

    move-result-object v2

    if-eqz v2, :cond_5e

    .line 497
    iget v3, v2, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$Circle;->centerX:F

    iget v4, v2, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$Circle;->centerY:F

    iget v2, v2, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$Circle;->radius:F

    iget-object v5, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4, v2, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_5e
    :goto_5e
    add-int/lit8 v1, v1, 0x1

    goto :goto_36

    .line 501
    :cond_61
    iget-boolean v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mShouldDrawNextCirclePath:Z

    if-eqz v0, :cond_7f

    .line 502
    iget-object v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->paint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mBezierProgress:F

    float-to-double v1, v1

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    cmpg-double v1, v1, v3

    if-gez v1, :cond_73

    iget v1, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mNormalColor:I

    goto :goto_75

    :cond_73
    iget v1, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mSelectedColor:I

    :goto_75
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 503
    iget-object v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mNextPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 506
    :cond_7f
    iget-object v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->paint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mBezierProgress:F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_8c

    iget v1, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mSelectedColor:I

    goto :goto_8e

    :cond_8c
    iget v1, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mNormalColor:I

    :goto_8e
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 507
    iget v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mBezierProgress:F

    cmpg-float v0, v0, v2

    if-gez v0, :cond_9f

    .line 508
    iget-object v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->paint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mXfermodeSrcOver:Landroid/graphics/PorterDuffXfermode;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    goto :goto_a6

    .line 510
    :cond_9f
    iget-object v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->paint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mXfermodeDesOver:Landroid/graphics/PorterDuffXfermode;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 512
    :goto_a6
    iget-object v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mCurrentPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_c2

    .line 513
    iget v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mCurrentMarker:I

    invoke-direct {p0, v0}, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->getMarkers(I)Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$Circle;

    move-result-object v0

    if-eqz v0, :cond_ce

    .line 515
    iget v1, v0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$Circle;->centerX:F

    iget v2, v0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$Circle;->centerY:F

    iget v0, v0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$Circle;->radius:F

    iget-object p0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v0, p0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_ce

    .line 518
    :cond_c2
    iget-object v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mCurrentPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 519
    iget-object p0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mCurrentPath:Landroid/graphics/Path;

    invoke-virtual {p0}, Landroid/graphics/Path;->reset()V

    .line 521
    :cond_ce
    :goto_ce
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method protected onMeasure(II)V
    .registers 6

    .line 449
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 450
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 451
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 452
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    const/high16 v2, 0x40000000    # 2.0f

    if-ne v0, v2, :cond_15

    goto :goto_3b

    .line 458
    :cond_15
    invoke-direct {p0, p1}, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->calculateMaxMarkerNum(I)I

    move-result p1

    const/4 v0, 0x1

    if-le p1, v0, :cond_24

    .line 460
    iget v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mDefaultMaxMarkerNum:I

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mMaxMarkerNum:I

    .line 462
    :cond_24
    iget-object p1, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mMarkers:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    iget v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mMaxMarkerNum:I

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 463
    iget-boolean v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mHideFrontCircles:Z

    if-eqz v0, :cond_37

    .line 464
    iget v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mHideCircleNums:I

    sub-int/2addr p1, v0

    .line 466
    :cond_37
    invoke-direct {p0, p1}, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->calculateWidth(I)I

    move-result p1

    :goto_3b
    if-ne v1, v2, :cond_3e

    goto :goto_51

    .line 473
    :cond_3e
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result p2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v0

    add-int/2addr p2, v0

    iget v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->MAXIMUM_CIRCLE_RADIUS:I

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr p2, v0

    iget v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->DEFAULT_PADDING_TOP:I

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr p2, v0

    .line 475
    :goto_51
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 476
    invoke-direct {p0}, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->calculateCircles()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 6

    .line 395
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    if-eqz v0, :cond_a

    goto/16 :goto_f7

    .line 397
    :cond_a
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    .line 399
    iget-object v1, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mMarkers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_fc

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v1, v0, v1

    if-gtz v1, :cond_fc

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_27

    goto/16 :goto_fc

    .line 402
    :cond_27
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    .line 403
    iget-boolean v1, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mIsRtl:Z

    if-eqz v1, :cond_99

    .line 404
    iget-object v1, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mMarkers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$Circle;

    iget v1, v1, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$Circle;->centerX:F

    iget v3, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->CIRCLE_DISTANCE:I

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    add-float/2addr v1, v3

    cmpg-float v1, v0, v1

    if-gez v1, :cond_5b

    .line 405
    iget-object v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mMarkers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mCurrClickMarker:I

    goto/16 :goto_eb

    .line 406
    :cond_5b
    iget-object v1, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mMarkers:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$Circle;

    iget v1, v1, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$Circle;->centerX:F

    iget v3, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->CIRCLE_DISTANCE:I

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    sub-float/2addr v1, v3

    cmpl-float v1, v0, v1

    if-lez v1, :cond_73

    .line 407
    iput v2, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mCurrClickMarker:I

    goto/16 :goto_eb

    .line 409
    :cond_73
    iget-object v1, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mMarkers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    iget-object v2, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mMarkers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$Circle;

    iget v2, v2, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$Circle;->centerX:F

    add-float/2addr v0, v2

    iget v2, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->CIRCLE_DISTANCE:I

    div-int/lit8 v3, v2, 0x2

    int-to-float v3, v3

    sub-float/2addr v0, v3

    int-to-float v2, v2

    div-float/2addr v0, v2

    float-to-int v0, v0

    sub-int/2addr v1, v0

    iput v1, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mCurrClickMarker:I

    goto :goto_eb

    .line 412
    :cond_99
    iget-object v1, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mMarkers:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$Circle;

    iget v1, v1, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$Circle;->centerX:F

    iget v3, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->CIRCLE_DISTANCE:I

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    add-float/2addr v1, v3

    cmpg-float v1, v0, v1

    if-gez v1, :cond_b0

    .line 413
    iput v2, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mCurrClickMarker:I

    goto :goto_eb

    .line 414
    :cond_b0
    iget-object v1, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mMarkers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$Circle;

    iget v1, v1, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$Circle;->centerX:F

    iget v3, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->CIRCLE_DISTANCE:I

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    add-float/2addr v1, v3

    cmpl-float v1, v0, v1

    if-lez v1, :cond_d5

    .line 416
    iget-object v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mMarkers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mCurrClickMarker:I

    goto :goto_eb

    .line 418
    :cond_d5
    iget-object v1, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mMarkers:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$Circle;

    iget v1, v1, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$Circle;->centerX:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->CIRCLE_DISTANCE:I

    div-int/lit8 v2, v1, 0x2

    int-to-float v2, v2

    add-float/2addr v0, v2

    int-to-float v1, v1

    div-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mCurrClickMarker:I

    .line 422
    :goto_eb
    iget v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mCurrClickMarker:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_f7

    .line 423
    iget-object v1, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mMarkerClickListener:Lcom/transsion/widgetslib/view/indicator/PageIndicatorWrapper$OnMarkerClickListener;

    if-eqz v1, :cond_f7

    .line 424
    invoke-interface {v1, v0}, Lcom/transsion/widgetslib/view/indicator/PageIndicatorWrapper$OnMarkerClickListener;->onClick(I)V

    .line 428
    :cond_f7
    :goto_f7
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    :cond_fc
    :goto_fc
    return v2
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .registers 3

    .line 265
    invoke-super {p0, p1, p2}, Landroid/view/View;->onVisibilityChanged(Landroid/view/View;I)V

    .line 267
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_e

    .line 268
    iget p1, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mCurrentMarker:I

    invoke-direct {p0, p1}, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->offsetHalfSize(I)V

    :cond_e
    return-void
.end method

.method public removeAllMarkers()V
    .registers 2

    .line 202
    iget-object v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mMarkers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    .line 203
    iput v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mCurrentMarker:I

    iput v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mNextMarker:I

    const/4 v0, 0x0

    .line 204
    iput-object v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mCurrentStillCircle:Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$Circle;

    iput-object v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mNextStillCircle:Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$Circle;

    .line 205
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public removeMarker(I)V
    .registers 5

    if-ltz p1, :cond_8b

    .line 175
    iget-object v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mMarkers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_c

    goto/16 :goto_8b

    .line 179
    :cond_c
    iget v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mCurrentMarker:I

    const/4 v1, 0x1

    if-lt p1, v0, :cond_1e

    iget-object v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mMarkers:Ljava/util/ArrayList;

    .line 180
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v1

    if-ne p1, v0, :cond_42

    iget v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mCurrentMarker:I

    if-ne v0, p1, :cond_42

    .line 181
    :cond_1e
    iget v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mCurrentMarker:I

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mCurrentMarker:I

    iput v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mNextMarker:I

    .line 182
    iget-object v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mMarkers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v1, :cond_3d

    iget-object v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mMarkers:Ljava/util/ArrayList;

    iget v2, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mCurrentMarker:I

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$Circle;

    goto :goto_3e

    :cond_3d
    const/4 v0, 0x0

    :goto_3e
    iput-object v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mCurrentStillCircle:Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$Circle;

    iput-object v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mNextStillCircle:Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$Circle;

    .line 184
    :cond_42
    iget-object v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mMarkers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v1

    .line 185
    iget-object v1, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mMarkers:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$Circle;

    iget v1, v1, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$Circle;->centerX:F

    .line 187
    iget-object v2, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mMarkers:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 188
    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->resetColorAlphaAndRadius()V

    .line 189
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 191
    iget-object v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mMarkers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_88

    .line 192
    invoke-direct {p0}, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->calculateCircles()V

    .line 193
    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->MAXIMUM_CIRCLE_RADIUS:I

    iget v2, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->DEFAULT_PADDING_LEFT:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_88

    .line 194
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v0

    if-lez v0, :cond_88

    .line 195
    invoke-direct {p0, p1}, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->offsetHalfSize(I)V

    .line 198
    :cond_88
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :cond_8b
    :goto_8b
    return-void
.end method

.method public resetAddPageIndex()V
    .registers 1

    .line 142
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    return-void
.end method

.method resetColorAlphaAndRadius()V
    .registers 4

    .line 336
    iget-object v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mCurrentStillCircle:Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$Circle;

    if-eqz v0, :cond_9

    .line 337
    iget v1, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->MAXIMUM_CIRCLE_RADIUS:I

    int-to-float v1, v1

    iput v1, v0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$Circle;->radius:F

    :cond_9
    const/4 v0, 0x0

    .line 339
    :goto_a
    iget-object v1, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mMarkers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_26

    .line 340
    iget v1, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mCurrentMarker:I

    if-eq v0, v1, :cond_23

    .line 341
    iget-object v1, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mMarkers:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$Circle;

    iget v2, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->NORMAL_CIRCLE_RADIUS:I

    int-to-float v2, v2

    iput v2, v1, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$Circle;->radius:F

    :cond_23
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 344
    :cond_26
    iget-object v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mCurrentPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 345
    iget-object p0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mNextPath:Landroid/graphics/Path;

    invoke-virtual {p0}, Landroid/graphics/Path;->reset()V

    return-void
.end method

.method public setCurrentMarker(I)V
    .registers 3

    if-ltz p1, :cond_2d

    .line 209
    iget-object v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mMarkers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_2d

    iget v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mCurrentMarker:I

    if-eq p1, v0, :cond_2d

    .line 210
    iput p1, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mCurrentMarker:I

    iput p1, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mNextMarker:I

    .line 211
    iget-object v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mMarkers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$Circle;

    iput-object v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mCurrentStillCircle:Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$Circle;

    iput-object v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mNextStillCircle:Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$Circle;

    .line 212
    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->resetColorAlphaAndRadius()V

    .line 213
    invoke-direct {p0, p1}, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->shouldScrollLeftOrRight(I)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 214
    invoke-direct {p0, p1}, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->offsetHalfSize(I)V

    .line 216
    :cond_2a
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_2d
    return-void
.end method

.method public setMarkerClickListener(Lcom/transsion/widgetslib/view/indicator/PageIndicatorWrapper$OnMarkerClickListener;)V
    .registers 2

    .line 332
    iput-object p1, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mMarkerClickListener:Lcom/transsion/widgetslib/view/indicator/PageIndicatorWrapper$OnMarkerClickListener;

    return-void
.end method

.method public setMaxMarkerNum(I)V
    .registers 2

    .line 221
    iput p1, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mMaxMarkerNum:I

    .line 222
    iput p1, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mDefaultMaxMarkerNum:I

    return-void
.end method

.method public setNormalColor(I)V
    .registers 2

    .line 160
    iput p1, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mNormalColor:I

    .line 161
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setSelectedColor(I)V
    .registers 2

    .line 165
    iput p1, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mSelectedColor:I

    .line 166
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public update(F)V
    .registers 12

    .line 594
    iget-object v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mMarkers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-gt v0, v2, :cond_d

    .line 595
    iput v1, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mBezierProgress:F

    return-void

    .line 600
    :cond_d
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v3

    if-nez v0, :cond_18

    move p1, v1

    :cond_18
    float-to-double v4, p1

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    cmpl-double v0, v4, v6

    const/4 v4, 0x0

    if-eqz v0, :cond_26

    cmpl-float v0, p1, v1

    if-eqz v0, :cond_26

    move v0, v2

    goto :goto_27

    :cond_26
    move v0, v4

    .line 604
    :goto_27
    iput-boolean v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mShouldDrawNextCirclePath:Z

    .line 605
    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->resetColorAlphaAndRadius()V

    .line 606
    iget-boolean v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mIsRtl:Z

    if-eqz v0, :cond_4d

    cmpl-float v0, p1, v1

    if-lez v0, :cond_3c

    .line 607
    iget v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mCurrentMarker:I

    sub-int/2addr v0, v2

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_4a

    .line 608
    :cond_3c
    iget-object v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mMarkers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v2

    iget v5, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mCurrentMarker:I

    add-int/2addr v5, v2

    invoke-static {v0, v5}, Ljava/lang/Math;->min(II)I

    move-result v0

    :goto_4a
    iput v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mNextMarker:I

    goto :goto_69

    :cond_4d
    cmpl-float v0, p1, v1

    if-ltz v0, :cond_60

    .line 610
    iget-object v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mMarkers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v2

    iget v5, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mCurrentMarker:I

    add-int/2addr v5, v2

    invoke-static {v0, v5}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_67

    .line 611
    :cond_60
    iget v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mCurrentMarker:I

    sub-int/2addr v0, v2

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    :goto_67
    iput v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mNextMarker:I

    .line 613
    :goto_69
    iget-object v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mMarkers:Ljava/util/ArrayList;

    iget v5, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mCurrentMarker:I

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$Circle;

    iput-object v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mCurrentStillCircle:Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$Circle;

    .line 614
    iget-object v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mMarkers:Ljava/util/ArrayList;

    iget v5, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mNextMarker:I

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$Circle;

    iput-object v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mNextStillCircle:Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$Circle;

    .line 615
    iget v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mCurrentMarker:I

    iget v5, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mNextMarker:I

    if-ne v0, v5, :cond_89

    .line 616
    iput-boolean v4, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mShouldDrawNextCirclePath:Z

    :cond_89
    cmpl-float v0, p1, v1

    if-ltz v0, :cond_8e

    goto :goto_8f

    :cond_8e
    const/4 v2, -0x1

    .line 619
    :goto_8f
    iput v2, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mDirection:I

    .line 621
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const/high16 v0, 0x40000000    # 2.0f

    mul-float/2addr p1, v0

    iput p1, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mBezierProgress:F

    cmpg-float v1, p1, v3

    if-gtz v1, :cond_ee

    .line 626
    iget-object v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mCurrentStillCircle:Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$Circle;

    iget v1, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->MAXIMUM_CIRCLE_RADIUS:I

    int-to-float v2, v1

    iget v3, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->MINIMUM_CIRCLE_RADIUS:I

    sub-int v4, v1, v3

    int-to-float v4, v4

    mul-float/2addr v4, p1

    sub-float/2addr v2, v4

    iput v2, v0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$Circle;->radius:F

    .line 629
    iget-object v2, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mCurrentMovedCircle:Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$Circle;

    int-to-float v4, v3

    mul-float/2addr v4, p1

    iput v4, v2, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$Circle;->radius:F

    .line 630
    iget v4, v0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$Circle;->centerX:F

    iget v5, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mDirection:I

    mul-int v6, v1, v5

    int-to-float v6, v6

    add-float/2addr v6, v4

    iget-object v7, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mNextStillCircle:Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$Circle;

    iget v8, v7, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$Circle;->centerX:F

    sub-float/2addr v8, v4

    mul-int/2addr v1, v5

    int-to-float v1, v1

    sub-float/2addr v8, v1

    mul-float/2addr v8, p1

    add-float/2addr v6, v8

    iput v6, v2, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$Circle;->centerX:F

    .line 635
    iget v1, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mNextMarker:I

    iget v4, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mCurrentMarker:I

    if-eq v1, v4, :cond_140

    .line 636
    iget v1, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->NORMAL_CIRCLE_RADIUS:I

    int-to-float v4, v1

    sub-int v3, v1, v3

    int-to-float v3, v3

    mul-float/2addr v3, p1

    sub-float/2addr v4, v3

    iput v4, v7, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$Circle;->radius:F

    .line 639
    iget-object v3, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mNextMovedCircle:Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$Circle;

    iget v2, v2, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$Circle;->radius:F

    iput v2, v3, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$Circle;->radius:F

    .line 640
    iget v2, v7, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$Circle;->centerX:F

    mul-int v4, v1, v5

    int-to-float v4, v4

    sub-float v4, v2, v4

    mul-int/2addr v1, v5

    int-to-float v1, v1

    sub-float/2addr v2, v1

    iget v0, v0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$Circle;->centerX:F

    sub-float/2addr v2, v0

    mul-float/2addr v2, p1

    sub-float/2addr v4, v2

    iput v4, v3, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$Circle;->centerX:F

    goto :goto_140

    .line 649
    :cond_ee
    iget-object v1, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mCurrentStillCircle:Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$Circle;

    iget v2, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->MINIMUM_CIRCLE_RADIUS:I

    int-to-float v4, v2

    iget v5, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->NORMAL_CIRCLE_RADIUS:I

    sub-int v6, v5, v2

    int-to-float v6, v6

    sub-float v3, p1, v3

    mul-float/2addr v6, v3

    add-float/2addr v4, v6

    iput v4, v1, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$Circle;->radius:F

    .line 652
    iget-object v4, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mCurrentMovedCircle:Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$Circle;

    int-to-float v6, v2

    sub-float/2addr v0, p1

    mul-float/2addr v6, v0

    iput v6, v4, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$Circle;->radius:F

    .line 653
    iget p1, v1, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$Circle;->centerX:F

    iget v6, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mDirection:I

    mul-int v7, v5, v6

    int-to-float v7, v7

    add-float/2addr v7, p1

    iget-object v8, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mNextStillCircle:Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$Circle;

    iget v9, v8, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$Circle;->centerX:F

    sub-float/2addr v9, p1

    mul-int/2addr v5, v6

    int-to-float p1, v5

    sub-float/2addr v9, p1

    mul-float/2addr v9, v0

    add-float/2addr v7, v9

    iput v7, v4, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$Circle;->centerX:F

    .line 659
    iget p1, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mNextMarker:I

    iget v5, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mCurrentMarker:I

    if-eq p1, v5, :cond_140

    int-to-float p1, v2

    .line 660
    iget v5, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->MAXIMUM_CIRCLE_RADIUS:I

    sub-int v2, v5, v2

    int-to-float v2, v2

    mul-float/2addr v2, v3

    add-float/2addr p1, v2

    iput p1, v8, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$Circle;->radius:F

    .line 664
    iget-object p1, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mNextMovedCircle:Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$Circle;

    iget v2, v4, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$Circle;->radius:F

    iput v2, p1, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$Circle;->radius:F

    .line 665
    iget v2, v8, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$Circle;->centerX:F

    mul-int v3, v5, v6

    int-to-float v3, v3

    sub-float v3, v2, v3

    mul-int/2addr v5, v6

    int-to-float v4, v5

    sub-float/2addr v2, v4

    iget v1, v1, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$Circle;->centerX:F

    sub-float/2addr v2, v1

    mul-float/2addr v2, v0

    sub-float/2addr v3, v2

    iput v3, p1, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$Circle;->centerX:F

    .line 673
    :cond_140
    :goto_140
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "generatePath: mCurrentMovedCircle = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mCurrentMovedCircle:Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$Circle;

    invoke-virtual {v0}, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$Circle;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SpringPageIndicator"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 674
    invoke-direct {p0}, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->calculatePoints()V

    .line 675
    invoke-direct {p0}, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->generatePath()V

    .line 676
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
