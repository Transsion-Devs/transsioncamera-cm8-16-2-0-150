.class public Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator$OnMarkerClickListener;,
        Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator$SaveState;,
        Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator$Circle;,
        Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator$Direction;
    }
.end annotation


# static fields
.field public static final DIRECTION_HORIZONTAL:I = 0x0

.field public static final DIRECTION_VERTICAL:I = 0x1

.field private static final INCLUDED_ANGLE:I = 0x7

.field private static final INVALID_INDEX:I = -0x1

.field private static final MAX_DOT_NUM:I = 0x3

.field private static final MIN_DOT_NUM:I = 0x2


# instance fields
.field private mCurrentMarkerIndex:I

.field private mCurrentPercent:F

.field private mCurrentVpScrollState:I

.field private mDefaultPaddingLeft:I

.field private mDefaultPaddingTop:I

.field private mDirection:I

.field private mFinalMarkerIndex:I

.field private mIncludedAngle:D

.field private mIsRtl:Z

.field private mMarkers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator$Circle;",
            ">;"
        }
    .end annotation
.end field

.field private mNextMarkerIndex:I

.field private mNormalCircleRadius:I

.field private mNormalColor:I

.field private mOnMarkerClickListener:Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator$OnMarkerClickListener;

.field private mScreenRadius:I

.field private mSelectedCircleRadius:I

.field private mSelectedColor:I

.field private mViewPager:Landroidx/viewpager/widget/ViewPager;

.field private mViewPager2:Landroidx/viewpager2/widget/ViewPager2;

.field private mVp2PageChangeCallback:Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;

.field private mVpPageChangeCallback:Landroidx/viewpager/widget/ViewPager$SimpleOnPageChangeListener;

.field private paint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 117
    invoke-direct {p0, p1, v0}, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 10

    .line 121
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    .line 49
    iput v0, p0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->mCurrentMarkerIndex:I

    .line 50
    iput v0, p0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->mNextMarkerIndex:I

    .line 51
    iput v0, p0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->mFinalMarkerIndex:I

    const/16 v1, 0xe9

    .line 56
    iput v1, p0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->mScreenRadius:I

    .line 60
    iput v0, p0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->mCurrentVpScrollState:I

    .line 65
    new-instance v1, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator$1;

    invoke-direct {v1, p0}, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator$1;-><init>(Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;)V

    iput-object v1, p0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->mVp2PageChangeCallback:Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;

    .line 80
    new-instance v1, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator$2;

    invoke-direct {v1, p0}, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator$2;-><init>(Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;)V

    iput-object v1, p0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->mVpPageChangeCallback:Landroidx/viewpager/widget/ViewPager$SimpleOnPageChangeListener;

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 122
    invoke-virtual {p0, v2, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 123
    invoke-static {}, Lcom/transsion/widgetslib/util/Utils;->isRtl()Z

    move-result v1

    iput-boolean v1, p0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->mIsRtl:Z

    .line 124
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 125
    sget v3, Lcom/transsion/widgetslib/R$dimen;->os_watch_page_marker_normal_radius:I

    .line 126
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    iput v3, p0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->mNormalCircleRadius:I

    .line 127
    sget v3, Lcom/transsion/widgetslib/R$dimen;->os_watch_page_marker_selected_radius:I

    .line 128
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->mSelectedCircleRadius:I

    .line 129
    sget-object v1, Lcom/transsion/widgetslib/R$styleable;->OSWatchPageIndicator:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 130
    sget p2, Lcom/transsion/widgetslib/R$styleable;->OSWatchPageIndicator_osWatchPINormalColor:I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/transsion/widgetslib/R$color;->os_watch_indicator_normal_color:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->mNormalColor:I

    .line 131
    sget p2, Lcom/transsion/widgetslib/R$styleable;->OSWatchPageIndicator_osWatchPISelectedColor:I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/transsion/widgetslib/R$color;->os_watch_indicator_selected_color:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->mSelectedColor:I

    .line 132
    sget p2, Lcom/transsion/widgetslib/R$styleable;->OSWatchPageIndicator_osWatchPISelectedRadius:I

    iget v1, p0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->mSelectedCircleRadius:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->mSelectedCircleRadius:I

    .line 133
    sget p2, Lcom/transsion/widgetslib/R$styleable;->OSWatchPageIndicator_osWatchPISelectedColor:I

    iget v1, p0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->mNormalCircleRadius:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->mNormalCircleRadius:I

    .line 134
    sget p2, Lcom/transsion/widgetslib/R$styleable;->OSWatchPageIndicator_osWatchPIAngle:I

    const/4 v1, 0x7

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p2

    int-to-float p2, p2

    const/high16 v1, 0x43340000    # 180.0f

    div-float/2addr p2, v1

    float-to-double v3, p2

    const-wide v5, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v3, v5

    iput-wide v3, p0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->mIncludedAngle:D

    .line 135
    sget p2, Lcom/transsion/widgetslib/R$styleable;->OSWatchPageIndicator_osWatchPINDirection:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->mDirection:I

    .line 136
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 137
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->mMarkers:Ljava/util/ArrayList;

    .line 138
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->paint:Landroid/graphics/Paint;

    .line 139
    sget-object p2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 140
    iget-object p1, p0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 141
    iget-object p1, p0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setDither(Z)V

    .line 142
    invoke-direct {p0}, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->initPadding()V

    return-void
.end method

.method public static getAlphaComponent(II)I
    .registers 3

    if-ltz p1, :cond_e

    const/16 v0, 0xff

    if-gt p1, v0, :cond_e

    const v0, 0xffffff

    and-int/2addr p0, v0

    shl-int/lit8 p1, p1, 0x18

    or-int/2addr p0, p1

    return p0

    .line 417
    :cond_e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "alpha must be between 0 and 255."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private getDynamicAlphaAc()I
    .registers 4

    .line 306
    iget v0, p0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->mNormalColor:I

    ushr-int/lit8 v0, v0, 0x18

    .line 307
    iget v1, p0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->mSelectedColor:I

    ushr-int/lit8 v1, v1, 0x18

    int-to-float v2, v0

    sub-int/2addr v1, v0

    int-to-float v0, v1

    .line 308
    iget p0, p0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->mCurrentPercent:F

    mul-float/2addr v0, p0

    add-float/2addr v2, v0

    float-to-int p0, v2

    return p0
.end method

.method private getDynamicAlphaDe()I
    .registers 4

    .line 313
    iget v0, p0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->mNormalColor:I

    ushr-int/lit8 v0, v0, 0x18

    .line 314
    iget v1, p0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->mSelectedColor:I

    ushr-int/lit8 v1, v1, 0x18

    int-to-float v2, v1

    sub-int/2addr v1, v0

    int-to-float v0, v1

    .line 315
    iget p0, p0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->mCurrentPercent:F

    mul-float/2addr v0, p0

    sub-float/2addr v2, v0

    float-to-int p0, v2

    return p0
.end method

.method private getIndexOfMarkers(Landroid/view/MotionEvent;)I
    .registers 11

    .line 231
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 232
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    const/4 v1, 0x0

    .line 233
    :goto_9
    iget-object v2, p0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->mMarkers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_65

    .line 234
    iget-object v2, p0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->mMarkers:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator$Circle;

    .line 235
    iget v3, v2, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator$Circle;->centerX:F

    sub-float v3, v0, v3

    float-to-double v3, v3

    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    iget v2, v2, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator$Circle;->centerY:F

    sub-float v2, p1, v2

    float-to-double v7, v2

    invoke-static {v7, v8, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    add-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    .line 236
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getIndexOfMarkers sqrt = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/transsion/widgetscore/utils/LogUtil;->v(Ljava/lang/String;)V

    .line 237
    iget v4, p0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->mNormalCircleRadius:I

    int-to-double v4, v4

    cmpg-double v2, v2, v4

    if-gtz v2, :cond_62

    .line 238
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "getIndexOfMarkers hit index = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/transsion/widgetscore/utils/LogUtil;->v(Ljava/lang/String;)V

    return v1

    :cond_62
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_65
    const/4 p0, -0x1

    return p0
.end method

.method private getRadiusAc(II)F
    .registers 4

    int-to-float v0, p1

    sub-int/2addr p2, p1

    int-to-float p1, p2

    .line 298
    iget p0, p0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->mCurrentPercent:F

    mul-float/2addr p1, p0

    add-float/2addr v0, p1

    return v0
.end method

.method private getRadiusDe(II)F
    .registers 4

    int-to-float v0, p1

    sub-int/2addr p1, p2

    int-to-float p1, p1

    .line 302
    iget p0, p0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->mCurrentPercent:F

    mul-float/2addr p1, p0

    sub-float/2addr v0, p1

    return v0
.end method

.method private initCircleParams()V
    .registers 18

    move-object/from16 v0, p0

    .line 495
    iget-object v1, v0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->mMarkers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    int-to-float v1, v1

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v1, v3

    const/4 v5, 0x0

    .line 496
    :goto_f
    iget-object v6, v0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->mMarkers:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_d2

    .line 497
    iget-object v6, v0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->mMarkers:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator$Circle;

    .line 498
    iget v7, v0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->mCurrentMarkerIndex:I

    if-ne v7, v5, :cond_27

    iget v8, v0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->mSelectedCircleRadius:I

    :goto_25
    int-to-float v8, v8

    goto :goto_2a

    :cond_27
    iget v8, v0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->mNormalCircleRadius:I

    goto :goto_25

    :goto_2a
    iput v8, v6, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator$Circle;->radius:F

    if-ne v7, v5, :cond_30

    move v7, v2

    goto :goto_31

    :cond_30
    const/4 v7, 0x0

    .line 499
    :goto_31
    iput-boolean v7, v6, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator$Circle;->isSelected:Z

    .line 500
    iget v7, v0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->mDirection:I

    if-eq v7, v2, :cond_74

    .line 510
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v7, v3

    .line 511
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    iget v9, v0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->mDefaultPaddingTop:I

    sub-int/2addr v8, v9

    iget v9, v0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->mNormalCircleRadius:I

    sub-int/2addr v8, v9

    int-to-float v8, v8

    float-to-double v9, v7

    .line 512
    iget v7, v0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->mScreenRadius:I

    int-to-double v11, v7

    int-to-float v7, v5

    sub-float v13, v1, v7

    float-to-double v13, v13

    move v15, v3

    iget-wide v2, v0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->mIncludedAngle:D

    mul-double/2addr v13, v2

    invoke-static {v13, v14}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    mul-double/2addr v11, v2

    sub-double/2addr v9, v11

    double-to-float v2, v9

    iput v2, v6, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator$Circle;->centerX:F

    float-to-double v2, v8

    .line 513
    iget v8, v0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->mScreenRadius:I

    int-to-double v9, v8

    int-to-double v11, v8

    sub-float/2addr v7, v1

    float-to-double v7, v7

    iget-wide v13, v0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->mIncludedAngle:D

    mul-double/2addr v7, v13

    invoke-static {v7, v8}, Ljava/lang/Math;->cos(D)D

    move-result-wide v7

    mul-double/2addr v11, v7

    sub-double/2addr v9, v11

    sub-double/2addr v2, v9

    double-to-float v2, v2

    iput v2, v6, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator$Circle;->centerY:F

    move/from16 v16, v5

    goto :goto_c5

    :cond_74
    move v15, v3

    .line 502
    iget-boolean v2, v0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->mIsRtl:Z

    if-eqz v2, :cond_80

    iget v2, v0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->mDefaultPaddingLeft:I

    iget v3, v0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->mNormalCircleRadius:I

    add-int/2addr v2, v3

    :goto_7e
    int-to-float v2, v2

    goto :goto_8b

    :cond_80
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    iget v3, v0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->mDefaultPaddingLeft:I

    sub-int/2addr v2, v3

    iget v3, v0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->mNormalCircleRadius:I

    sub-int/2addr v2, v3

    goto :goto_7e

    .line 503
    :goto_8b
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v15

    float-to-double v7, v2

    .line 504
    iget v2, v0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->mScreenRadius:I

    int-to-double v9, v2

    int-to-double v11, v2

    int-to-float v2, v5

    sub-float v13, v2, v1

    float-to-double v13, v13

    move/from16 v16, v5

    iget-wide v4, v0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->mIncludedAngle:D

    mul-double/2addr v13, v4

    invoke-static {v13, v14}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    mul-double/2addr v11, v4

    sub-double/2addr v9, v11

    iget-boolean v4, v0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->mIsRtl:Z

    if-eqz v4, :cond_ab

    const/4 v4, -0x1

    goto :goto_ac

    :cond_ab
    const/4 v4, 0x1

    :goto_ac
    int-to-double v4, v4

    mul-double/2addr v9, v4

    sub-double/2addr v7, v9

    double-to-float v4, v7

    iput v4, v6, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator$Circle;->centerX:F

    float-to-double v3, v3

    .line 505
    iget v5, v0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->mScreenRadius:I

    int-to-double v7, v5

    sub-float v2, v1, v2

    float-to-double v9, v2

    iget-wide v11, v0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->mIncludedAngle:D

    mul-double/2addr v9, v11

    invoke-static {v9, v10}, Ljava/lang/Math;->sin(D)D

    move-result-wide v9

    mul-double/2addr v7, v9

    sub-double/2addr v3, v7

    double-to-float v2, v3

    iput v2, v6, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator$Circle;->centerY:F

    .line 518
    :goto_c5
    invoke-virtual {v6}, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator$Circle;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/transsion/widgetscore/utils/LogUtil;->v(Ljava/lang/String;)V

    add-int/lit8 v5, v16, 0x1

    move v3, v15

    const/4 v2, 0x1

    goto/16 :goto_f

    :cond_d2
    return-void
.end method

.method private initPadding()V
    .registers 3

    .line 267
    iget v0, p0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->mSelectedCircleRadius:I

    iget v1, p0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->mNormalCircleRadius:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->mDefaultPaddingLeft:I

    iput v0, p0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->mDefaultPaddingTop:I

    return-void
.end method

.method private initScreenRadius(Landroid/content/Context;)V
    .registers 3

    .line 271
    iget v0, p0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->mDirection:I

    if-eqz v0, :cond_1e

    .line 276
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 p1, p1, 0x2

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {v0}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginEnd()I

    move-result v0

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->mScreenRadius:I

    return-void

    .line 273
    :cond_1e
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 p1, p1, 0x2

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->mScreenRadius:I

    return-void
.end method

.method private isSameRadius()Z
    .registers 2

    .line 210
    iget-object p0, p0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->mMarkers:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_b

    const/4 p0, 0x1

    return p0

    :cond_b
    const/4 p0, 0x0

    return p0
.end method

.method private measureHeight()I
    .registers 9

    .line 335
    iget-object v0, p0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->mMarkers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 p0, 0x0

    return p0

    .line 338
    :cond_a
    iget-object v0, p0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->mMarkers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v0, v2

    .line 339
    iget v2, p0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->mDirection:I

    if-eq v2, v1, :cond_36

    .line 343
    iget v1, p0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->mScreenRadius:I

    int-to-double v2, v1

    int-to-double v4, v1

    iget-wide v6, p0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->mIncludedAngle:D

    float-to-double v0, v0

    mul-double/2addr v6, v0

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    mul-double/2addr v4, v0

    sub-double/2addr v2, v4

    iget v0, p0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->mNormalCircleRadius:I

    mul-int/lit8 v0, v0, 0x2

    int-to-double v0, v0

    add-double/2addr v2, v0

    iget p0, p0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->mDefaultPaddingTop:I

    mul-int/lit8 p0, p0, 0x2

    int-to-double v0, p0

    add-double/2addr v2, v0

    double-to-int p0, v2

    return p0

    .line 341
    :cond_36
    iget v1, p0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->mDefaultPaddingTop:I

    mul-int/lit8 v1, v1, 0x2

    iget v2, p0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->mNormalCircleRadius:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    int-to-double v1, v1

    iget-wide v3, p0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->mIncludedAngle:D

    float-to-double v5, v0

    mul-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    iget p0, p0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->mScreenRadius:I

    int-to-double v5, p0

    mul-double/2addr v3, v5

    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    mul-double/2addr v3, v5

    add-double/2addr v1, v3

    double-to-int p0, v1

    return p0
.end method

.method private measureWidth()I
    .registers 9

    .line 320
    iget-object v0, p0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->mMarkers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 p0, 0x0

    return p0

    .line 323
    :cond_a
    iget-object v0, p0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->mMarkers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v0, v2

    .line 324
    iget v2, p0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->mDirection:I

    if-eq v2, v1, :cond_36

    .line 328
    iget v1, p0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->mDefaultPaddingLeft:I

    mul-int/lit8 v1, v1, 0x2

    iget v2, p0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->mNormalCircleRadius:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    int-to-double v1, v1

    iget-wide v3, p0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->mIncludedAngle:D

    float-to-double v5, v0

    mul-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    iget p0, p0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->mScreenRadius:I

    int-to-double v5, p0

    mul-double/2addr v3, v5

    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    mul-double/2addr v3, v5

    add-double/2addr v1, v3

    double-to-int p0, v1

    return p0

    .line 326
    :cond_36
    iget v1, p0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->mScreenRadius:I

    int-to-double v2, v1

    int-to-double v4, v1

    iget-wide v6, p0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->mIncludedAngle:D

    float-to-double v0, v0

    mul-double/2addr v6, v0

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    mul-double/2addr v4, v0

    sub-double/2addr v2, v4

    iget v0, p0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->mNormalCircleRadius:I

    mul-int/lit8 v0, v0, 0x2

    int-to-double v0, v0

    add-double/2addr v2, v0

    iget p0, p0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->mDefaultPaddingLeft:I

    mul-int/lit8 p0, p0, 0x2

    int-to-double v0, p0

    add-double/2addr v2, v0

    double-to-int p0, v2

    return p0
.end method

.method private resetMarkersStatus()V
    .registers 5

    const/4 v0, 0x0

    move v1, v0

    .line 446
    :goto_2
    iget-object v2, p0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->mMarkers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1e

    .line 447
    iget-object v2, p0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->mMarkers:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator$Circle;

    iget v3, p0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->mCurrentMarkerIndex:I

    if-ne v1, v3, :cond_18

    const/4 v3, 0x1

    goto :goto_19

    :cond_18
    move v3, v0

    :goto_19
    iput-boolean v3, v2, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator$Circle;->isSelected:Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_1e
    return-void
.end method


# virtual methods
.method public addMarker()V
    .registers 3

    .line 378
    iget-object v0, p0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->mMarkers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1d

    .line 381
    iget-object v0, p0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->mMarkers:Ljava/util/ArrayList;

    new-instance v1, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator$Circle;

    invoke-direct {v1, p0}, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator$Circle;-><init>(Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 382
    invoke-direct {p0}, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->initPadding()V

    .line 383
    invoke-direct {p0}, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->initCircleParams()V

    .line 384
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void

    .line 379
    :cond_1d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Out of bounds, this view can only accept the num within 3."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public addMarkers(I)V
    .registers 5

    const/4 v0, 0x0

    :goto_1
    if-ge v0, p1, :cond_10

    .line 370
    iget-object v1, p0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->mMarkers:Ljava/util/ArrayList;

    new-instance v2, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator$Circle;

    invoke-direct {v2, p0}, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator$Circle;-><init>(Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 372
    :cond_10
    invoke-direct {p0}, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->initPadding()V

    .line 373
    invoke-direct {p0}, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->initCircleParams()V

    .line 374
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public bindViewPager(Landroidx/viewpager/widget/ViewPager;)V
    .registers 2

    .line 409
    iput-object p1, p0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    if-eqz p1, :cond_9

    .line 411
    iget-object p0, p0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->mVpPageChangeCallback:Landroidx/viewpager/widget/ViewPager$SimpleOnPageChangeListener;

    invoke-virtual {p1, p0}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    :cond_9
    return-void
.end method

.method public bindViewPager(Landroidx/viewpager2/widget/ViewPager2;)V
    .registers 2

    .line 402
    iput-object p1, p0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->mViewPager2:Landroidx/viewpager2/widget/ViewPager2;

    if-eqz p1, :cond_9

    .line 404
    iget-object p0, p0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->mVp2PageChangeCallback:Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;

    invoke-virtual {p1, p0}, Landroidx/viewpager2/widget/ViewPager2;->registerOnPageChangeCallback(Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;)V

    :cond_9
    return-void
.end method

.method public getScrollState()I
    .registers 2

    .line 282
    iget-object v0, p0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->mViewPager2:Landroidx/viewpager2/widget/ViewPager2;

    if-eqz v0, :cond_9

    .line 283
    invoke-virtual {v0}, Landroidx/viewpager2/widget/ViewPager2;->getScrollState()I

    move-result p0

    return p0

    .line 285
    :cond_9
    iget p0, p0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->mCurrentVpScrollState:I

    return p0
.end method

.method public isIDELState()Z
    .registers 4

    .line 290
    iget-object v0, p0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->mViewPager2:Landroidx/viewpager2/widget/ViewPager2;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_e

    .line 291
    invoke-virtual {v0}, Landroidx/viewpager2/widget/ViewPager2;->getScrollState()I

    move-result p0

    if-nez p0, :cond_d

    return v2

    :cond_d
    return v1

    .line 293
    :cond_e
    iget p0, p0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->mCurrentVpScrollState:I

    if-nez p0, :cond_13

    return v2

    :cond_13
    return v1
.end method

.method protected onDetachedFromWindow()V
    .registers 3

    .line 558
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 559
    iget-object v0, p0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->mViewPager2:Landroidx/viewpager2/widget/ViewPager2;

    if-eqz v0, :cond_c

    .line 560
    iget-object v1, p0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->mVp2PageChangeCallback:Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;

    invoke-virtual {v0, v1}, Landroidx/viewpager2/widget/ViewPager2;->unregisterOnPageChangeCallback(Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;)V

    .line 562
    :cond_c
    iget-object v0, p0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    if-eqz v0, :cond_15

    .line 563
    iget-object p0, p0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->mVpPageChangeCallback:Landroidx/viewpager/widget/ViewPager$SimpleOnPageChangeListener;

    invoke-virtual {v0, p0}, Landroidx/viewpager/widget/ViewPager;->removeOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    :cond_15
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 9

    .line 171
    iget-object v0, p0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->mMarkers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_a

    return-void

    .line 174
    :cond_a
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 175
    iget-object v0, p0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->paint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->mNormalColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 176
    iget-object v0, p0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->mMarkers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_1b
    if-ge v1, v0, :cond_14d

    .line 178
    iget-object v2, p0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->mMarkers:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator$Circle;

    .line 179
    iget-boolean v3, p0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->mIsRtl:Z

    if-eqz v3, :cond_33

    iget v4, p0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->mDirection:I

    if-nez v4, :cond_33

    add-int/lit8 v4, v0, -0x1

    iget v5, p0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->mCurrentMarkerIndex:I

    sub-int/2addr v4, v5

    goto :goto_35

    :cond_33
    iget v4, p0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->mCurrentMarkerIndex:I

    :goto_35
    if-eqz v3, :cond_41

    .line 180
    iget v3, p0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->mDirection:I

    if-nez v3, :cond_41

    add-int/lit8 v3, v0, -0x1

    iget v5, p0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->mNextMarkerIndex:I

    sub-int/2addr v3, v5

    goto :goto_43

    :cond_41
    iget v3, p0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->mNextMarkerIndex:I

    .line 181
    :goto_43
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mIsRtl = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->mIsRtl:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " DIRECTION_HORIZONTAL = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->mDirection:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " mCurrentMarkerIndexTemp = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " mNextMarkerIndexTemp = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " mViewPager2.getScrollState() = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->getScrollState()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/transsion/widgetscore/utils/LogUtil;->v(Ljava/lang/String;)V

    .line 182
    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->isIDELState()Z

    move-result v5

    if-eqz v5, :cond_bb

    if-ne v1, v4, :cond_9c

    .line 184
    iget-object v3, p0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->paint:Landroid/graphics/Paint;

    iget v4, p0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->mSelectedColor:I

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 185
    iget v3, v2, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator$Circle;->centerX:F

    iget v2, v2, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator$Circle;->centerY:F

    iget v4, p0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->mSelectedCircleRadius:I

    int-to-float v4, v4

    iget-object v5, p0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v2, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto/16 :goto_149

    .line 187
    :cond_9c
    iget-object v3, p0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->paint:Landroid/graphics/Paint;

    iget v4, p0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->mNormalColor:I

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 188
    iget v3, v2, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator$Circle;->centerX:F

    iget v2, v2, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator$Circle;->centerY:F

    invoke-direct {p0}, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->isSameRadius()Z

    move-result v4

    if-eqz v4, :cond_b1

    iget v4, p0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->mSelectedCircleRadius:I

    :goto_af
    int-to-float v4, v4

    goto :goto_b4

    :cond_b1
    iget v4, p0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->mNormalCircleRadius:I

    goto :goto_af

    :goto_b4
    iget-object v5, p0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v2, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto/16 :goto_149

    :cond_bb
    if-ne v1, v4, :cond_d4

    if-ne v3, v4, :cond_d4

    .line 192
    iget-object v3, p0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->paint:Landroid/graphics/Paint;

    iget v4, p0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->mSelectedColor:I

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 193
    iget v3, v2, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator$Circle;->centerX:F

    iget v2, v2, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator$Circle;->centerY:F

    iget v4, p0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->mSelectedCircleRadius:I

    int-to-float v4, v4

    iget-object v5, p0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v2, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto/16 :goto_149

    :cond_d4
    if-ne v1, v4, :cond_100

    .line 195
    iget-object v3, p0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->paint:Landroid/graphics/Paint;

    iget v4, p0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->mSelectedColor:I

    invoke-direct {p0}, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->getDynamicAlphaDe()I

    move-result v5

    invoke-static {v4, v5}, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->getAlphaComponent(II)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 196
    iget v3, v2, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator$Circle;->centerX:F

    iget v2, v2, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator$Circle;->centerY:F

    iget v4, p0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->mSelectedCircleRadius:I

    invoke-direct {p0}, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->isSameRadius()Z

    move-result v5

    if-eqz v5, :cond_f4

    iget v5, p0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->mSelectedCircleRadius:I

    goto :goto_f6

    :cond_f4
    iget v5, p0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->mNormalCircleRadius:I

    :goto_f6
    invoke-direct {p0, v4, v5}, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->getRadiusDe(II)F

    move-result v4

    iget-object v5, p0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v2, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_149

    :cond_100
    if-ne v1, v3, :cond_12c

    .line 198
    iget-object v3, p0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->paint:Landroid/graphics/Paint;

    iget v4, p0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->mSelectedColor:I

    invoke-direct {p0}, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->getDynamicAlphaAc()I

    move-result v5

    invoke-static {v4, v5}, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->getAlphaComponent(II)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 199
    iget v3, v2, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator$Circle;->centerX:F

    iget v2, v2, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator$Circle;->centerY:F

    invoke-direct {p0}, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->isSameRadius()Z

    move-result v4

    if-eqz v4, :cond_11e

    iget v4, p0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->mSelectedCircleRadius:I

    goto :goto_120

    :cond_11e
    iget v4, p0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->mNormalCircleRadius:I

    :goto_120
    iget v5, p0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->mSelectedCircleRadius:I

    invoke-direct {p0, v4, v5}, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->getRadiusAc(II)F

    move-result v4

    iget-object v5, p0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v2, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_149

    .line 201
    :cond_12c
    iget-object v3, p0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->paint:Landroid/graphics/Paint;

    iget v4, p0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->mNormalColor:I

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 202
    iget v3, v2, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator$Circle;->centerX:F

    iget v2, v2, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator$Circle;->centerY:F

    invoke-direct {p0}, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->isSameRadius()Z

    move-result v4

    if-eqz v4, :cond_141

    iget v4, p0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->mSelectedCircleRadius:I

    :goto_13f
    int-to-float v4, v4

    goto :goto_144

    :cond_141
    iget v4, p0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->mNormalCircleRadius:I

    goto :goto_13f

    :goto_144
    iget-object v5, p0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v2, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :goto_149
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1b

    .line 206
    :cond_14d
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method protected onMeasure(II)V
    .registers 6

    .line 147
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->initScreenRadius(Landroid/content/Context;)V

    .line 148
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 149
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 150
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 151
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    const/high16 v2, 0x40000000    # 2.0f

    if-ne v0, v2, :cond_1c

    goto :goto_20

    .line 157
    :cond_1c
    invoke-direct {p0}, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->measureWidth()I

    move-result p1

    :goto_20
    if-ne v1, v2, :cond_23

    goto :goto_27

    .line 162
    :cond_23
    invoke-direct {p0}, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->measureHeight()I

    move-result p2

    .line 164
    :goto_27
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 165
    invoke-direct {p0}, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->initCircleParams()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 4

    .line 215
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MotionEvent = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    invoke-static {v1}, Landroid/view/MotionEvent;->actionToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/widgetscore/utils/LogUtil;->v(Ljava/lang/String;)V

    .line 216
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_27

    .line 225
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    .line 218
    :cond_27
    invoke-direct {p0, p1}, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->getIndexOfMarkers(Landroid/view/MotionEvent;)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_30

    const/4 v0, 0x1

    goto :goto_31

    :cond_30
    const/4 v0, 0x0

    :goto_31
    if-eqz v0, :cond_3a

    .line 220
    iget-object p0, p0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->mOnMarkerClickListener:Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator$OnMarkerClickListener;

    if-eqz p0, :cond_3a

    .line 221
    invoke-interface {p0, p1}, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator$OnMarkerClickListener;->onMarkerClickListener(I)V

    :cond_3a
    return v0
.end method

.method public pageScrollStateChanged(I)V
    .registers 4

    .line 528
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPageScrollStateChanged state = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " mFinalMarkerIndex = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->mFinalMarkerIndex:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/transsion/widgetscore/utils/LogUtil;->v(Ljava/lang/String;)V

    .line 529
    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->isIDELState()Z

    move-result p1

    if-eqz p1, :cond_2b

    .line 530
    iget p1, p0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->mFinalMarkerIndex:I

    iput p1, p0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->mCurrentMarkerIndex:I

    .line 531
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_2b
    return-void
.end method

.method public removeMarker()V
    .registers 3

    .line 388
    iget-object v0, p0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->mMarkers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_25

    .line 391
    iget-object v0, p0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->mMarkers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 392
    iget-object v1, p0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->mMarkers:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 393
    iget v1, p0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->mCurrentMarkerIndex:I

    if-le v1, v0, :cond_1e

    .line 394
    iput v0, p0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->mFinalMarkerIndex:I

    iput v0, p0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->mCurrentMarkerIndex:I

    .line 396
    :cond_1e
    invoke-direct {p0}, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->initCircleParams()V

    .line 397
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void

    .line 389
    :cond_25
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Out of bounds, at least 2 markers."

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setCurrent(I)V
    .registers 3

    .line 434
    iget v0, p0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->mCurrentMarkerIndex:I

    if-ne p1, v0, :cond_5

    return-void

    :cond_5
    if-ltz p1, :cond_1c

    .line 437
    iget-object v0, p0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->mMarkers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-gt p1, v0, :cond_1c

    .line 440
    iput p1, p0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->mFinalMarkerIndex:I

    iput p1, p0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->mCurrentMarkerIndex:I

    .line 441
    invoke-direct {p0}, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->resetMarkersStatus()V

    .line 442
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    return-void

    .line 438
    :cond_1c
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "OSWatchPageIndicator ArrayIndexOutOfBoundsException: index out of bounds."

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setDirection(I)V
    .registers 2

    .line 246
    iput p1, p0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->mDirection:I

    .line 247
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public setIsRtl(Z)V
    .registers 2

    .line 251
    iput-boolean p1, p0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->mIsRtl:Z

    .line 252
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public setNormalCircleRadius(I)V
    .registers 2

    .line 256
    iput p1, p0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->mNormalCircleRadius:I

    .line 257
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public setNormalColor(I)V
    .registers 2

    .line 424
    iput p1, p0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->mNormalColor:I

    .line 425
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setOnMarkerClickListener(Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator$OnMarkerClickListener;)V
    .registers 2

    .line 572
    iput-object p1, p0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->mOnMarkerClickListener:Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator$OnMarkerClickListener;

    return-void
.end method

.method public setSelectedCircleRadius(I)V
    .registers 2

    .line 261
    iput p1, p0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->mSelectedCircleRadius:I

    .line 262
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public setSelectedColor(I)V
    .registers 2

    .line 429
    iput p1, p0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->mSelectedColor:I

    .line 430
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public update(F)V
    .registers 5

    .line 348
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->mCurrentPercent:F

    const/4 v0, 0x0

    cmpl-float v1, p1, v0

    const/high16 v2, 0x3f000000    # 0.5f

    if-lez v1, :cond_30

    .line 350
    iget v0, p0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->mCurrentMarkerIndex:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->mMarkers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-le v0, v1, :cond_1e

    iget v0, p0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->mCurrentMarkerIndex:I

    goto :goto_22

    :cond_1e
    iget v0, p0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->mCurrentMarkerIndex:I

    add-int/lit8 v0, v0, 0x1

    :goto_22
    iput v0, p0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->mNextMarkerIndex:I

    cmpl-float v1, p1, v2

    if-lez v1, :cond_2b

    .line 352
    iput v0, p0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->mFinalMarkerIndex:I

    goto :goto_50

    .line 354
    :cond_2b
    iget v0, p0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->mCurrentMarkerIndex:I

    iput v0, p0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->mFinalMarkerIndex:I

    goto :goto_50

    :cond_30
    cmpg-float v0, p1, v0

    if-gez v0, :cond_50

    .line 357
    iget v0, p0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->mCurrentMarkerIndex:I

    add-int/lit8 v1, v0, -0x1

    if-gez v1, :cond_3b

    goto :goto_3d

    :cond_3b
    add-int/lit8 v0, v0, -0x1

    :goto_3d
    iput v0, p0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->mNextMarkerIndex:I

    .line 358
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v2

    if-lez v0, :cond_4c

    .line 359
    iget v0, p0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->mNextMarkerIndex:I

    iput v0, p0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->mFinalMarkerIndex:I

    goto :goto_50

    .line 361
    :cond_4c
    iget v0, p0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->mCurrentMarkerIndex:I

    iput v0, p0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->mFinalMarkerIndex:I

    .line 364
    :cond_50
    :goto_50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mNextMarkerIndex = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->mNextMarkerIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " percent = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/transsion/widgetscore/utils/LogUtil;->v(Ljava/lang/String;)V

    .line 365
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    return-void
.end method

.method public whenPageScroll(IFI)V
    .registers 7

    const/4 v0, 0x1

    if-eqz p1, :cond_c

    .line 536
    iget-object v1, p0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->mMarkers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v0

    if-ne p1, v1, :cond_15

    :cond_c
    if-nez p3, :cond_15

    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->isIDELState()Z

    move-result v1

    if-nez v1, :cond_15

    goto :goto_7a

    .line 539
    :cond_15
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPageScrolled position = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mCurrentMarkerIndex = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->mCurrentMarkerIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " positionOffset = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " positionOffsetPixels = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mViewPager2.getScrollState() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->getScrollState()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/transsion/widgetscore/utils/LogUtil;->v(Ljava/lang/String;)V

    .line 540
    iget v1, p0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->mCurrentMarkerIndex:I

    if-lt p1, v1, :cond_5d

    if-eqz p3, :cond_5d

    if-eq p1, v1, :cond_59

    .line 542
    iput p1, p0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->mCurrentMarkerIndex:I

    .line 544
    :cond_59
    invoke-virtual {p0, p2}, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->update(F)V

    return-void

    :cond_5d
    if-ge p1, v1, :cond_6e

    if-eqz p3, :cond_6e

    sub-int/2addr v1, p1

    if-le v1, v0, :cond_67

    add-int/2addr p1, v0

    .line 547
    iput p1, p0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->mCurrentMarkerIndex:I

    :cond_67
    const/high16 p1, 0x3f800000    # 1.0f

    sub-float/2addr p2, p1

    .line 549
    invoke-virtual {p0, p2}, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->update(F)V

    return-void

    :cond_6e
    const/4 p1, 0x0

    cmpl-float p1, p2, p1

    if-nez p1, :cond_7a

    .line 551
    iget p1, p0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->mFinalMarkerIndex:I

    iput p1, p0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->mCurrentMarkerIndex:I

    .line 552
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    :cond_7a
    :goto_7a
    return-void
.end method

.method public whenPageScrollStateChanged(I)V
    .registers 2

    .line 523
    iput p1, p0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->mCurrentVpScrollState:I

    .line 524
    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->pageScrollStateChanged(I)V

    return-void
.end method
