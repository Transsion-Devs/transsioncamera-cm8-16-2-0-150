.class public Lcom/transsion/camera/feature/imageryguide/ui/widget/GuidePageIndicator;
.super Landroid/view/View;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/feature/imageryguide/ui/widget/IRotatable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/imageryguide/ui/widget/GuidePageIndicator$SavedState;
    }
.end annotation


# static fields
.field private static final ANIMATION_SPEED:I = 0x10e

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mAnimationEndTime:J

.field private mAnimationStartTime:J

.field private mClockwise:Z

.field private mCurrentDegree:I

.field private mEnableAnimation:Z

.field private final mHorizontalInterval:F

.field private final mNormalPaint:Landroid/graphics/Paint;

.field private final mNormalRadius:F

.field private mPosition:I

.field private final mSelectPaint:Landroid/graphics/Paint;

.field private final mSelectRadius:F

.field private mStartDegree:I

.field private mTargetDegree:I

.field private mTotalSize:I

.field private final mVerticalInterval:F


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 33
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "Guide_PageIndicator"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/imageryguide/ui/widget/GuidePageIndicator;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 57
    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/feature/imageryguide/ui/widget/GuidePageIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    .line 62
    invoke-direct {p0, p1, p2, v0}, Lcom/transsion/camera/feature/imageryguide/ui/widget/GuidePageIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    const/4 v0, 0x0

    .line 67
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/transsion/camera/feature/imageryguide/ui/widget/GuidePageIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 15

    .line 72
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 41
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/transsion/camera/feature/imageryguide/ui/widget/GuidePageIndicator;->mNormalPaint:Landroid/graphics/Paint;

    .line 42
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, p0, Lcom/transsion/camera/feature/imageryguide/ui/widget/GuidePageIndicator;->mSelectPaint:Landroid/graphics/Paint;

    .line 45
    iput-boolean v1, p0, Lcom/transsion/camera/feature/imageryguide/ui/widget/GuidePageIndicator;->mEnableAnimation:Z

    const/4 v1, 0x0

    .line 49
    iput v1, p0, Lcom/transsion/camera/feature/imageryguide/ui/widget/GuidePageIndicator;->mCurrentDegree:I

    .line 50
    iput v1, p0, Lcom/transsion/camera/feature/imageryguide/ui/widget/GuidePageIndicator;->mStartDegree:I

    .line 51
    iput v1, p0, Lcom/transsion/camera/feature/imageryguide/ui/widget/GuidePageIndicator;->mTargetDegree:I

    const-wide/16 v3, 0x0

    .line 53
    iput-wide v3, p0, Lcom/transsion/camera/feature/imageryguide/ui/widget/GuidePageIndicator;->mAnimationStartTime:J

    .line 54
    iput-wide v3, p0, Lcom/transsion/camera/feature/imageryguide/ui/widget/GuidePageIndicator;->mAnimationEndTime:J

    .line 74
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 75
    sget v3, Lcom/transsion/camera/feature/imageryguide/R$dimen;->imagery_default_page_indicator_normal_radius:I

    .line 76
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    .line 77
    sget v4, Lcom/transsion/camera/feature/imageryguide/R$dimen;->imagery_default_page_indicator_select_radius:I

    .line 78
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    .line 79
    sget v5, Lcom/transsion/camera/feature/imageryguide/R$dimen;->imagery_default_page_indicator_horizontal_interval:I

    .line 80
    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    .line 81
    sget v6, Lcom/transsion/camera/feature/imageryguide/R$dimen;->imagery_default_page_indicator_vertical_interval:I

    .line 82
    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    .line 83
    sget v7, Lcom/transsion/camera/feature/imageryguide/R$color;->imagery_default_page_indicator_normal_color:I

    .line 84
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v7

    .line 85
    sget v8, Lcom/transsion/camera/feature/imageryguide/R$color;->imagery_default_page_indicator_select_color:I

    .line 86
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    .line 88
    sget-object v8, Lcom/transsion/camera/feature/imageryguide/R$styleable;->ImageryGuidePageIndicator:[I

    invoke-virtual {p1, p2, v8, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 91
    sget p2, Lcom/transsion/camera/feature/imageryguide/R$styleable;->ImageryGuidePageIndicator_imagery_normalRadius:I

    invoke-virtual {p1, p2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/transsion/camera/feature/imageryguide/ui/widget/GuidePageIndicator;->mNormalRadius:F

    .line 93
    sget p2, Lcom/transsion/camera/feature/imageryguide/R$styleable;->ImageryGuidePageIndicator_imagery_selectRadius:I

    invoke-virtual {p1, p2, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/transsion/camera/feature/imageryguide/ui/widget/GuidePageIndicator;->mSelectRadius:F

    .line 95
    sget p2, Lcom/transsion/camera/feature/imageryguide/R$styleable;->ImageryGuidePageIndicator_imagery_horizontalInterval:I

    invoke-virtual {p1, p2, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/transsion/camera/feature/imageryguide/ui/widget/GuidePageIndicator;->mHorizontalInterval:F

    .line 97
    sget p2, Lcom/transsion/camera/feature/imageryguide/R$styleable;->ImageryGuidePageIndicator_imagery_verticalInterval:I

    invoke-virtual {p1, p2, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/transsion/camera/feature/imageryguide/ui/widget/GuidePageIndicator;->mVerticalInterval:F

    .line 100
    sget p0, Lcom/transsion/camera/feature/imageryguide/R$styleable;->ImageryGuidePageIndicator_imagery_normalColor:I

    invoke-virtual {p1, p0, v7}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p0

    .line 102
    sget-object p2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 103
    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setColor(I)V

    .line 105
    sget p0, Lcom/transsion/camera/feature/imageryguide/R$styleable;->ImageryGuidePageIndicator_imagery_selectColor:I

    invoke-virtual {p1, p0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p0

    .line 107
    invoke-virtual {v2, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 108
    invoke-virtual {v2, p0}, Landroid/graphics/Paint;->setColor(I)V

    .line 110
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private doDraw(Landroid/graphics/Canvas;)V
    .registers 13

    .line 281
    iget v0, p0, Lcom/transsion/camera/feature/imageryguide/ui/widget/GuidePageIndicator;->mTotalSize:I

    .line 282
    div-int/lit8 v1, v0, 0x2

    const/4 v2, 0x1

    add-int/2addr v1, v2

    if-gtz v0, :cond_9

    goto :goto_5e

    .line 287
    :cond_9
    iget v3, p0, Lcom/transsion/camera/feature/imageryguide/ui/widget/GuidePageIndicator;->mPosition:I

    .line 288
    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    move-result v4

    if-ne v2, v4, :cond_16

    .line 289
    iget v3, p0, Lcom/transsion/camera/feature/imageryguide/ui/widget/GuidePageIndicator;->mPosition:I

    sub-int v3, v0, v3

    sub-int/2addr v3, v2

    .line 292
    :cond_16
    invoke-virtual {p0}, Landroid/view/View;->getPaddingStart()I

    move-result v2

    int-to-float v2, v2

    .line 293
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v4

    int-to-float v4, v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_22
    if-ge v6, v0, :cond_5e

    if-ne v3, v6, :cond_2b

    .line 299
    iget v7, p0, Lcom/transsion/camera/feature/imageryguide/ui/widget/GuidePageIndicator;->mSelectRadius:F

    .line 300
    iget-object v8, p0, Lcom/transsion/camera/feature/imageryguide/ui/widget/GuidePageIndicator;->mSelectPaint:Landroid/graphics/Paint;

    goto :goto_2f

    .line 302
    :cond_2b
    iget v7, p0, Lcom/transsion/camera/feature/imageryguide/ui/widget/GuidePageIndicator;->mNormalRadius:F

    .line 303
    iget-object v8, p0, Lcom/transsion/camera/feature/imageryguide/ui/widget/GuidePageIndicator;->mNormalPaint:Landroid/graphics/Paint;

    :goto_2f
    if-nez v6, :cond_47

    add-float/2addr v2, v7

    .line 307
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v5

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v9

    sub-int/2addr v5, v9

    int-to-float v5, v5

    iget v9, p0, Lcom/transsion/camera/feature/imageryguide/ui/widget/GuidePageIndicator;->mNormalRadius:F

    iget v10, p0, Lcom/transsion/camera/feature/imageryguide/ui/widget/GuidePageIndicator;->mSelectRadius:F

    invoke-static {v9, v10}, Ljava/lang/Math;->max(FF)F

    move-result v9

    sub-float/2addr v5, v9

    :goto_45
    add-float/2addr v4, v5

    goto :goto_57

    .line 309
    :cond_47
    iget v9, p0, Lcom/transsion/camera/feature/imageryguide/ui/widget/GuidePageIndicator;->mHorizontalInterval:F

    add-float/2addr v5, v9

    add-float/2addr v5, v7

    add-float/2addr v2, v5

    const/4 v5, 0x2

    if-lt v1, v5, :cond_57

    if-ge v6, v1, :cond_54

    .line 312
    iget v5, p0, Lcom/transsion/camera/feature/imageryguide/ui/widget/GuidePageIndicator;->mVerticalInterval:F

    goto :goto_45

    .line 314
    :cond_54
    iget v5, p0, Lcom/transsion/camera/feature/imageryguide/ui/widget/GuidePageIndicator;->mVerticalInterval:F

    sub-float/2addr v4, v5

    .line 319
    :cond_57
    :goto_57
    invoke-virtual {p1, v2, v4, v7, v8}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    add-int/lit8 v6, v6, 0x1

    move v5, v7

    goto :goto_22

    :cond_5e
    :goto_5e
    return-void
.end method

.method private measureHeight(I)I
    .registers 7

    .line 212
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 213
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/high16 v1, 0x40000000    # 2.0f

    if-ne v0, v1, :cond_d

    return p1

    .line 220
    :cond_d
    iget v1, p0, Lcom/transsion/camera/feature/imageryguide/ui/widget/GuidePageIndicator;->mTotalSize:I

    if-gtz v1, :cond_1b

    .line 222
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result p0

    add-int/2addr v1, p0

    goto :goto_64

    :cond_1b
    const/4 v2, 0x1

    const/high16 v3, 0x40000000    # 2.0f

    if-ne v1, v2, :cond_31

    .line 224
    iget v1, p0, Lcom/transsion/camera/feature/imageryguide/ui/widget/GuidePageIndicator;->mSelectRadius:F

    mul-float/2addr v1, v3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result p0

    :goto_2d
    int-to-float p0, p0

    add-float/2addr v1, p0

    float-to-int v1, v1

    goto :goto_64

    :cond_31
    const/4 v2, 0x2

    if-ne v1, v2, :cond_48

    .line 226
    iget v1, p0, Lcom/transsion/camera/feature/imageryguide/ui/widget/GuidePageIndicator;->mNormalRadius:F

    iget v2, p0, Lcom/transsion/camera/feature/imageryguide/ui/widget/GuidePageIndicator;->mSelectRadius:F

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    mul-float/2addr v1, v3

    .line 227
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result p0

    goto :goto_2d

    .line 229
    :cond_48
    div-int/2addr v1, v2

    .line 230
    iget v2, p0, Lcom/transsion/camera/feature/imageryguide/ui/widget/GuidePageIndicator;->mNormalRadius:F

    iget v4, p0, Lcom/transsion/camera/feature/imageryguide/ui/widget/GuidePageIndicator;->mSelectRadius:F

    invoke-static {v2, v4}, Ljava/lang/Math;->max(FF)F

    move-result v2

    mul-float/2addr v2, v3

    int-to-float v1, v1

    iget v3, p0, Lcom/transsion/camera/feature/imageryguide/ui/widget/GuidePageIndicator;->mVerticalInterval:F

    mul-float/2addr v1, v3

    add-float/2addr v2, v1

    .line 231
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v2, v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result p0

    int-to-float p0, p0

    add-float/2addr v2, p0

    float-to-int v1, v2

    :goto_64
    const/high16 p0, -0x80000000

    if-ne v0, p0, :cond_6d

    .line 236
    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0

    :cond_6d
    return v1
.end method

.method private measureWidth(I)I
    .registers 8

    .line 187
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 188
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 190
    iget v1, p0, Lcom/transsion/camera/feature/imageryguide/ui/widget/GuidePageIndicator;->mTotalSize:I

    const/high16 v2, 0x40000000    # 2.0f

    if-eq v0, v2, :cond_4b

    if-gtz v1, :cond_11

    goto :goto_4b

    :cond_11
    const/high16 v2, 0x40000000    # 2.0f

    const/4 v3, 0x1

    if-ne v1, v3, :cond_26

    .line 197
    invoke-virtual {p0}, Landroid/view/View;->getPaddingStart()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingEnd()I

    move-result v3

    add-int/2addr v1, v3

    int-to-float v1, v1

    iget p0, p0, Lcom/transsion/camera/feature/imageryguide/ui/widget/GuidePageIndicator;->mSelectRadius:F

    mul-float/2addr p0, v2

    add-float/2addr v1, p0

    float-to-int p0, v1

    goto :goto_42

    .line 199
    :cond_26
    invoke-virtual {p0}, Landroid/view/View;->getPaddingStart()I

    move-result v4

    invoke-virtual {p0}, Landroid/view/View;->getPaddingEnd()I

    move-result v5

    add-int/2addr v4, v5

    int-to-float v4, v4

    sub-int/2addr v1, v3

    mul-int/lit8 v3, v1, 0x2

    int-to-float v3, v3

    iget v5, p0, Lcom/transsion/camera/feature/imageryguide/ui/widget/GuidePageIndicator;->mNormalRadius:F

    mul-float/2addr v3, v5

    add-float/2addr v4, v3

    iget v3, p0, Lcom/transsion/camera/feature/imageryguide/ui/widget/GuidePageIndicator;->mSelectRadius:F

    mul-float/2addr v3, v2

    add-float/2addr v4, v3

    int-to-float v1, v1

    iget p0, p0, Lcom/transsion/camera/feature/imageryguide/ui/widget/GuidePageIndicator;->mHorizontalInterval:F

    mul-float/2addr v1, p0

    add-float/2addr v4, v1

    float-to-int p0, v4

    :goto_42
    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_4a

    .line 204
    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    move-result p0

    :cond_4a
    return p0

    :cond_4b
    :goto_4b
    return p1
.end method

.method private postDraw(Landroid/graphics/Canvas;I)V
    .registers 3

    .line 324
    invoke-virtual {p1, p2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void
.end method

.method private preDraw(Landroid/graphics/Canvas;)I
    .registers 8

    .line 252
    iget v0, p0, Lcom/transsion/camera/feature/imageryguide/ui/widget/GuidePageIndicator;->mCurrentDegree:I

    iget v1, p0, Lcom/transsion/camera/feature/imageryguide/ui/widget/GuidePageIndicator;->mTargetDegree:I

    if-eq v0, v1, :cond_39

    .line 253
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    .line 254
    iget-wide v2, p0, Lcom/transsion/camera/feature/imageryguide/ui/widget/GuidePageIndicator;->mAnimationEndTime:J

    cmp-long v2, v0, v2

    if-gez v2, :cond_34

    iget-boolean v2, p0, Lcom/transsion/camera/feature/imageryguide/ui/widget/GuidePageIndicator;->mEnableAnimation:Z

    if-eqz v2, :cond_34

    .line 255
    iget-wide v2, p0, Lcom/transsion/camera/feature/imageryguide/ui/widget/GuidePageIndicator;->mAnimationStartTime:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    .line 256
    iget v1, p0, Lcom/transsion/camera/feature/imageryguide/ui/widget/GuidePageIndicator;->mStartDegree:I

    .line 257
    iget-boolean v2, p0, Lcom/transsion/camera/feature/imageryguide/ui/widget/GuidePageIndicator;->mClockwise:Z

    if-eqz v2, :cond_1f

    goto :goto_20

    :cond_1f
    neg-int v0, v0

    :goto_20
    mul-int/lit16 v0, v0, 0x10e

    div-int/lit16 v0, v0, 0x3e8

    add-int/2addr v1, v0

    if-ltz v1, :cond_2a

    .line 258
    rem-int/lit16 v1, v1, 0x168

    goto :goto_2e

    :cond_2a
    rem-int/lit16 v1, v1, 0x168

    add-int/lit16 v1, v1, 0x168

    .line 259
    :goto_2e
    iput v1, p0, Lcom/transsion/camera/feature/imageryguide/ui/widget/GuidePageIndicator;->mCurrentDegree:I

    .line 260
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_48

    .line 262
    :cond_34
    iget v0, p0, Lcom/transsion/camera/feature/imageryguide/ui/widget/GuidePageIndicator;->mTargetDegree:I

    iput v0, p0, Lcom/transsion/camera/feature/imageryguide/ui/widget/GuidePageIndicator;->mCurrentDegree:I

    goto :goto_48

    .line 265
    :cond_39
    invoke-virtual {p0}, Landroid/view/View;->getRotation()F

    move-result v0

    iget v1, p0, Lcom/transsion/camera/feature/imageryguide/ui/widget/GuidePageIndicator;->mCurrentDegree:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_48

    const/4 v0, 0x0

    .line 266
    invoke-virtual {p0, v0}, Landroid/view/View;->setRotation(F)V

    .line 270
    :cond_48
    :goto_48
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 271
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 273
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getSaveCount()I

    move-result v2

    int-to-float v3, v0

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    int-to-float v5, v1

    div-float/2addr v5, v4

    .line 274
    invoke-virtual {p1, v3, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 275
    iget p0, p0, Lcom/transsion/camera/feature/imageryguide/ui/widget/GuidePageIndicator;->mCurrentDegree:I

    neg-int p0, p0

    int-to-float p0, p0

    invoke-virtual {p1, p0}, Landroid/graphics/Canvas;->rotate(F)V

    neg-int p0, v0

    int-to-float p0, p0

    div-float/2addr p0, v4

    neg-int v0, v1

    int-to-float v0, v0

    div-float/2addr v0, v4

    .line 276
    invoke-virtual {p1, p0, v0}, Landroid/graphics/Canvas;->translate(FF)V

    return v2
.end method

.method private setDegree(I)V
    .registers 8

    if-ltz p1, :cond_5

    .line 149
    rem-int/lit16 p1, p1, 0x168

    goto :goto_9

    :cond_5
    rem-int/lit16 p1, p1, 0x168

    add-int/lit16 p1, p1, 0x168

    .line 151
    :goto_9
    iget v0, p0, Lcom/transsion/camera/feature/imageryguide/ui/widget/GuidePageIndicator;->mTargetDegree:I

    if-ne p1, v0, :cond_e

    return-void

    .line 154
    :cond_e
    iput p1, p0, Lcom/transsion/camera/feature/imageryguide/ui/widget/GuidePageIndicator;->mTargetDegree:I

    .line 156
    iget-boolean v0, p0, Lcom/transsion/camera/feature/imageryguide/ui/widget/GuidePageIndicator;->mEnableAnimation:Z

    if-eqz v0, :cond_44

    .line 157
    iget p1, p0, Lcom/transsion/camera/feature/imageryguide/ui/widget/GuidePageIndicator;->mCurrentDegree:I

    iput p1, p0, Lcom/transsion/camera/feature/imageryguide/ui/widget/GuidePageIndicator;->mStartDegree:I

    .line 158
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsion/camera/feature/imageryguide/ui/widget/GuidePageIndicator;->mAnimationStartTime:J

    .line 160
    iget p1, p0, Lcom/transsion/camera/feature/imageryguide/ui/widget/GuidePageIndicator;->mTargetDegree:I

    iget v2, p0, Lcom/transsion/camera/feature/imageryguide/ui/widget/GuidePageIndicator;->mCurrentDegree:I

    sub-int/2addr p1, v2

    if-ltz p1, :cond_26

    goto :goto_28

    :cond_26
    add-int/lit16 p1, p1, 0x168

    :goto_28
    const/16 v2, 0xb4

    if-le p1, v2, :cond_2e

    add-int/lit16 p1, p1, -0x168

    :cond_2e
    if-ltz p1, :cond_32

    const/4 v2, 0x1

    goto :goto_33

    :cond_32
    const/4 v2, 0x0

    .line 167
    :goto_33
    iput-boolean v2, p0, Lcom/transsion/camera/feature/imageryguide/ui/widget/GuidePageIndicator;->mClockwise:Z

    .line 169
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    int-to-long v2, p1

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    const-wide/16 v4, 0x10e

    div-long/2addr v2, v4

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/transsion/camera/feature/imageryguide/ui/widget/GuidePageIndicator;->mAnimationEndTime:J

    goto :goto_46

    .line 171
    :cond_44
    iput p1, p0, Lcom/transsion/camera/feature/imageryguide/ui/widget/GuidePageIndicator;->mCurrentDegree:I

    .line 174
    :goto_46
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 3

    .line 244
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 246
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/imageryguide/ui/widget/GuidePageIndicator;->preDraw(Landroid/graphics/Canvas;)I

    move-result v0

    .line 247
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/imageryguide/ui/widget/GuidePageIndicator;->doDraw(Landroid/graphics/Canvas;)V

    .line 248
    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/feature/imageryguide/ui/widget/GuidePageIndicator;->postDraw(Landroid/graphics/Canvas;I)V

    return-void
.end method

.method protected onMeasure(II)V
    .registers 3

    .line 179
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/imageryguide/ui/widget/GuidePageIndicator;->measureWidth(I)I

    move-result p1

    .line 180
    invoke-direct {p0, p2}, Lcom/transsion/camera/feature/imageryguide/ui/widget/GuidePageIndicator;->measureHeight(I)I

    move-result p2

    .line 181
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 182
    invoke-virtual {p0, p1, p1}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 3

    .line 338
    check-cast p1, Lcom/transsion/camera/feature/imageryguide/ui/widget/GuidePageIndicator$SavedState;

    .line 339
    invoke-virtual {p1}, Landroid/view/AbsSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 340
    iget p1, p1, Lcom/transsion/camera/feature/imageryguide/ui/widget/GuidePageIndicator$SavedState;->mPosition:I

    iput p1, p0, Lcom/transsion/camera/feature/imageryguide/ui/widget/GuidePageIndicator;->mPosition:I

    .line 341
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .registers 3

    .line 330
    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 331
    new-instance v1, Lcom/transsion/camera/feature/imageryguide/ui/widget/GuidePageIndicator$SavedState;

    invoke-direct {v1, v0}, Lcom/transsion/camera/feature/imageryguide/ui/widget/GuidePageIndicator$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 332
    iget p0, p0, Lcom/transsion/camera/feature/imageryguide/ui/widget/GuidePageIndicator;->mPosition:I

    iput p0, v1, Lcom/transsion/camera/feature/imageryguide/ui/widget/GuidePageIndicator$SavedState;->mPosition:I

    return-object v1
.end method

.method public setNormalColor(I)V
    .registers 3

    .line 137
    iget-object v0, p0, Lcom/transsion/camera/feature/imageryguide/ui/widget/GuidePageIndicator;->mNormalPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 138
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setOrientation(IZ)V
    .registers 3

    .line 143
    iput-boolean p2, p0, Lcom/transsion/camera/feature/imageryguide/ui/widget/GuidePageIndicator;->mEnableAnimation:Z

    .line 144
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/imageryguide/ui/widget/GuidePageIndicator;->setDegree(I)V

    return-void
.end method

.method public setPageSize(I)V
    .registers 5

    .line 114
    sget-object v0, Lcom/transsion/camera/feature/imageryguide/ui/widget/GuidePageIndicator;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPageSize size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-ltz p1, :cond_21

    .line 115
    iget v0, p0, Lcom/transsion/camera/feature/imageryguide/ui/widget/GuidePageIndicator;->mTotalSize:I

    if-eq v0, p1, :cond_21

    .line 116
    iput p1, p0, Lcom/transsion/camera/feature/imageryguide/ui/widget/GuidePageIndicator;->mTotalSize:I

    .line 117
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :cond_21
    return-void
.end method

.method public setSelectColor(I)V
    .registers 3

    .line 132
    iget-object v0, p0, Lcom/transsion/camera/feature/imageryguide/ui/widget/GuidePageIndicator;->mSelectPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 133
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setSelectPosition(I)V
    .registers 5

    .line 122
    sget-object v0, Lcom/transsion/camera/feature/imageryguide/ui/widget/GuidePageIndicator;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSelectPosition position: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 123
    iget v0, p0, Lcom/transsion/camera/feature/imageryguide/ui/widget/GuidePageIndicator;->mTotalSize:I

    if-lt p1, v0, :cond_1f

    add-int/lit8 v0, v0, -0x1

    .line 124
    iput v0, p0, Lcom/transsion/camera/feature/imageryguide/ui/widget/GuidePageIndicator;->mPosition:I

    goto :goto_26

    :cond_1f
    const/4 v0, 0x0

    .line 126
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/feature/imageryguide/ui/widget/GuidePageIndicator;->mPosition:I

    .line 128
    :goto_26
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
