.class public Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/widgetslib/drawable/ReversibleDrawable;


# static fields
.field private static final DELTA_FLOAT:F = 1.0E-7f

.field private static final FRAMES_TICK_RATIO_MAX:F = 0.333f

.field private static final PVH_BORDER_SCALE:Ljava/lang/String; = "pvh_border_scale"

.field private static final PVH_FRAME_SCALE:Ljava/lang/String; = "pvh_frame_scale"

.field public static final SMALL_RATIO:F = 1.2220833f


# instance fields
.field private final mAlpha:I

.field private mBitmapShader:Landroid/graphics/Bitmap;

.field private mChecked:Z

.field private mCheckedBg:Landroid/graphics/Bitmap;

.field private mCheckedFillColor:I

.field private final mContext:Landroid/content/Context;

.field private mCurrentAlpha:I

.field private mCurrentFrameScale:F

.field private mCurrentLeft:I

.field private mCurrentRadius:F

.field private mCurrentScale:F

.field private mCurrentTop:I

.field private final mDeltaPathPointStartLength:F

.field private final mDeltaTickLength:F

.field private mDrawableAlpha:I

.field private mExecFraction:F

.field private mExtractAlphaCheckedBg:Landroid/graphics/Bitmap;

.field private mExtractAlphaNormalBitmap:Landroid/graphics/Bitmap;

.field private mIsShowBorderShadow:Z

.field private final mIsSmallScreen:Z

.field private final mMeasurePathFullTick:Landroid/graphics/PathMeasure;

.field private final mMeasurePathPointStart:Landroid/graphics/PathMeasure;

.field private mNormalBitmap:Landroid/graphics/Bitmap;

.field private final mPadding:F

.field private final mPaddingRadius:F

.field private final mPaint:Landroid/graphics/Paint;

.field private final mPaintTick:Landroid/graphics/Paint;

.field private final mPathBorder:Landroid/graphics/Path;

.field private mPathPointStartLength:F

.field private final mPathTick:Landroid/graphics/Path;

.field private final mPointEnd:[F

.field private final mPointStart:[F

.field private final mPointTickBottomX:F

.field private final mPointTickBottomY:F

.field private mRadius:F

.field private final mRectF:Landroid/graphics/RectF;

.field private final mRectFrame:Landroid/graphics/RectF;

.field private final mTanPointEnd:[F

.field private final mTanPointStart:[F

.field private mTickColor:I

.field private mTickLength:F

.field private mUncheckedBorderAlpha:I

.field private mUncheckedBorderColor:I

.field private mUncheckedFillAlpha:I

.field private mUncheckedFillColor:I

.field private final mValueAnimator:Landroid/animation/ValueAnimator;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 162
    invoke-direct {p0, p1, v0}, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;-><init>(Landroid/content/Context;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .registers 13

    .line 96
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const/16 v0, 0xff

    .line 66
    iput v0, p0, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->mAlpha:I

    const/4 v0, 0x2

    .line 78
    new-array v1, v0, [F

    iput-object v1, p0, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->mPointStart:[F

    .line 79
    new-array v1, v0, [F

    iput-object v1, p0, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->mTanPointStart:[F

    .line 84
    new-array v1, v0, [F

    iput-object v1, p0, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->mPointEnd:[F

    .line 85
    new-array v0, v0, [F

    iput-object v0, p0, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->mTanPointEnd:[F

    const/high16 v0, 0x3f800000    # 1.0f

    .line 90
    iput v0, p0, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->mExecFraction:F

    .line 91
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->mRectF:Landroid/graphics/RectF;

    .line 92
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->mRectFrame:Landroid/graphics/RectF;

    const/4 v1, -0x1

    .line 94
    iput v1, p0, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->mDrawableAlpha:I

    .line 420
    new-instance v2, Landroid/graphics/Paint;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, p0, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->mPaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    .line 421
    iput v2, p0, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->mUncheckedFillColor:I

    .line 424
    invoke-static {v2}, Landroid/graphics/Color;->alpha(I)I

    move-result v4

    iput v4, p0, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->mUncheckedFillAlpha:I

    .line 430
    iput v1, p0, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->mTickColor:I

    .line 97
    iput-object p1, p0, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->mContext:Landroid/content/Context;

    .line 98
    invoke-static {p1}, Lcom/transsion/widgetslib/util/Utils;->isSecondHome(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->mIsSmallScreen:Z

    .line 99
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 101
    new-instance v4, Landroid/graphics/Paint;

    const/4 v5, 0x3

    invoke-direct {v4, v5}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v4, p0, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->mPaintTick:Landroid/graphics/Paint;

    .line 102
    sget-object v5, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 103
    sget-object v5, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 104
    sget-object v5, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    const/high16 v5, 0x40000000    # 2.0f

    .line 105
    invoke-static {v3, v5, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 106
    iget v5, p0, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->mTickColor:I

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 108
    new-array v4, v2, [F

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v4

    iput-object v4, p0, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->mValueAnimator:Landroid/animation/ValueAnimator;

    .line 110
    new-instance v4, Landroid/graphics/Path;

    invoke-direct {v4}, Landroid/graphics/Path;-><init>()V

    iput-object v4, p0, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->mPathBorder:Landroid/graphics/Path;

    .line 112
    new-instance v4, Landroid/graphics/Path;

    invoke-direct {v4}, Landroid/graphics/Path;-><init>()V

    iput-object v4, p0, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->mPathTick:Landroid/graphics/Path;

    .line 113
    new-instance v4, Landroid/graphics/PathMeasure;

    invoke-direct {v4}, Landroid/graphics/PathMeasure;-><init>()V

    iput-object v4, p0, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->mMeasurePathFullTick:Landroid/graphics/PathMeasure;

    .line 115
    new-instance v5, Landroid/graphics/Path;

    invoke-direct {v5}, Landroid/graphics/Path;-><init>()V

    .line 116
    new-instance v6, Landroid/graphics/PathMeasure;

    invoke-direct {v6}, Landroid/graphics/PathMeasure;-><init>()V

    iput-object v6, p0, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->mMeasurePathPointStart:Landroid/graphics/PathMeasure;

    const/high16 v7, 0x40800000    # 4.0f

    .line 118
    invoke-static {v3, v7, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v7

    iput v7, p0, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->mRadius:F

    .line 120
    sget v7, Lcom/transsion/widgetslib/R$color;->os_fill_quaternary_color:I

    invoke-virtual {p1, v7}, Landroid/content/Context;->getColor(I)I

    move-result v7

    iput v7, p0, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->mUncheckedBorderColor:I

    .line 121
    invoke-static {v7}, Landroid/graphics/Color;->alpha(I)I

    move-result v7

    iput v7, p0, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->mUncheckedBorderAlpha:I

    .line 122
    invoke-static {p1}, Lcom/transsion/widgetslib/util/Utils;->getOsPlatformBasicColor(Landroid/content/Context;)I

    move-result p1

    iput p1, p0, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->mCheckedFillColor:I

    const/high16 p1, 0x40400000    # 3.0f

    .line 124
    invoke-static {v3, p1, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    iput p1, p0, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->mPadding:F

    const p1, 0x4089999a    # 4.3f

    .line 125
    invoke-static {v3, p1, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    iput p1, p0, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->mPaddingRadius:F

    .line 127
    invoke-direct {p0}, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->setBitmap()V

    .line 129
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    const/high16 v7, 0x40c00000    # 6.0f

    .line 130
    invoke-static {v3, v7, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v7

    const v8, 0x40151eb8    # 2.33f

    .line 131
    invoke-static {v3, v8, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v9

    neg-float v7, v7

    neg-float v9, v9

    .line 132
    invoke-virtual {p1, v7, v9}, Landroid/graphics/Path;->moveTo(FF)V

    .line 133
    invoke-static {v3, v0, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v7

    neg-float v7, v7

    iput v7, p0, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->mPointTickBottomX:F

    const v9, 0x402ae148    # 2.67f

    .line 134
    invoke-static {v3, v9, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v9

    iput v9, p0, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->mPointTickBottomY:F

    .line 135
    invoke-virtual {p1, v7, v9}, Landroid/graphics/Path;->lineTo(FF)V

    const v7, 0x40b570a4    # 5.67f

    .line 136
    invoke-static {v3, v7, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v7

    const v9, 0x409570a4    # 4.67f

    .line 137
    invoke-static {v3, v9, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v9

    neg-float v9, v9

    .line 138
    invoke-virtual {p1, v7, v9}, Landroid/graphics/Path;->lineTo(FF)V

    .line 139
    invoke-virtual {v4, p1, v2}, Landroid/graphics/PathMeasure;->setPath(Landroid/graphics/Path;Z)V

    .line 140
    invoke-static {v3, v8, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    iput p1, p0, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->mDeltaTickLength:F

    .line 142
    invoke-virtual {v5}, Landroid/graphics/Path;->reset()V

    const/high16 v7, 0x3fc00000    # 1.5f

    .line 144
    invoke-static {v3, v7, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v7

    add-float/2addr p1, v7

    const/4 v7, 0x0

    .line 143
    invoke-virtual {v4, v7, p1, v5, v3}, Landroid/graphics/PathMeasure;->getSegment(FFLandroid/graphics/Path;Z)Z

    .line 145
    invoke-static {v3, v0, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    iput p1, p0, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->mDeltaPathPointStartLength:F

    .line 146
    invoke-virtual {v6, v5, v2}, Landroid/graphics/PathMeasure;->setPath(Landroid/graphics/Path;Z)V

    .line 148
    invoke-direct {p0, p2}, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->setChecked(Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZZ)V
    .registers 4

    .line 152
    invoke-direct {p0, p1, p2}, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;-><init>(Landroid/content/Context;Z)V

    const/4 p1, 0x0

    .line 153
    invoke-virtual {p0, p1, p3}, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->setPictureMode(ZZ)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZZZ)V
    .registers 5

    .line 157
    invoke-direct {p0, p1, p2}, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;-><init>(Landroid/content/Context;Z)V

    .line 158
    invoke-virtual {p0, p4, p3}, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->setPictureMode(ZZ)V

    return-void
.end method

.method static synthetic access$000(Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;)F
    .registers 1

    .line 47
    iget p0, p0, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->mExecFraction:F

    return p0
.end method

.method static synthetic access$002(Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;F)F
    .registers 2

    .line 47
    iput p1, p0, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->mExecFraction:F

    return p1
.end method

.method static synthetic access$1000(Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;)Landroid/graphics/Path;
    .registers 1

    .line 47
    iget-object p0, p0, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->mPathBorder:Landroid/graphics/Path;

    return-object p0
.end method

.method static synthetic access$102(Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;I)I
    .registers 2

    .line 47
    iput p1, p0, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->mCurrentLeft:I

    return p1
.end method

.method static synthetic access$1100(Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;)Landroid/animation/ValueAnimator;
    .registers 1

    .line 47
    iget-object p0, p0, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->mValueAnimator:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;)F
    .registers 1

    .line 47
    iget p0, p0, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->mTickLength:F

    return p0
.end method

.method static synthetic access$1300(Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;)[F
    .registers 1

    .line 47
    iget-object p0, p0, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->mPointEnd:[F

    return-object p0
.end method

.method static synthetic access$1400(Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;)[F
    .registers 1

    .line 47
    iget-object p0, p0, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->mTanPointEnd:[F

    return-object p0
.end method

.method static synthetic access$1500(Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;)F
    .registers 1

    .line 47
    iget p0, p0, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->mPathPointStartLength:F

    return p0
.end method

.method static synthetic access$1600(Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;)[F
    .registers 1

    .line 47
    iget-object p0, p0, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->mPointStart:[F

    return-object p0
.end method

.method static synthetic access$1700(Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;)[F
    .registers 1

    .line 47
    iget-object p0, p0, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->mTanPointStart:[F

    return-object p0
.end method

.method static synthetic access$202(Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;I)I
    .registers 2

    .line 47
    iput p1, p0, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->mCurrentTop:I

    return p1
.end method

.method static synthetic access$302(Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;I)I
    .registers 2

    .line 47
    iput p1, p0, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->mCurrentAlpha:I

    return p1
.end method

.method static synthetic access$402(Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;F)F
    .registers 2

    .line 47
    iput p1, p0, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->mCurrentRadius:F

    return p1
.end method

.method static synthetic access$502(Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;F)F
    .registers 2

    .line 47
    iput p1, p0, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->mCurrentScale:F

    return p1
.end method

.method static synthetic access$602(Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;F)F
    .registers 2

    .line 47
    iput p1, p0, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->mCurrentFrameScale:F

    return p1
.end method

.method static synthetic access$700(Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;)Landroid/graphics/Path;
    .registers 1

    .line 47
    iget-object p0, p0, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->mPathTick:Landroid/graphics/Path;

    return-object p0
.end method

.method static synthetic access$800(Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;)F
    .registers 1

    .line 47
    iget p0, p0, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->mDeltaTickLength:F

    return p0
.end method

.method static synthetic access$900(Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;)Landroid/graphics/PathMeasure;
    .registers 1

    .line 47
    iget-object p0, p0, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->mMeasurePathFullTick:Landroid/graphics/PathMeasure;

    return-object p0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;
    .registers 2

    const/4 v0, 0x0

    .line 409
    invoke-static {p0, v0}, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->getInstance(Landroid/content/Context;Z)Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;

    move-result-object p0

    return-object p0
.end method

.method public static getInstance(Landroid/content/Context;Z)Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;
    .registers 3

    .line 405
    new-instance v0, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;

    invoke-direct {v0, p0, p1}, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;-><init>(Landroid/content/Context;Z)V

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;ZZ)Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;
    .registers 4

    .line 413
    new-instance v0, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;

    invoke-direct {v0, p0, p1, p2}, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;-><init>(Landroid/content/Context;ZZ)V

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;ZZZ)Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;
    .registers 5

    .line 417
    new-instance v0, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;-><init>(Landroid/content/Context;ZZZ)V

    return-object v0
.end method

.method private makeSrc()Landroid/graphics/Bitmap;
    .registers 12

    .line 213
    invoke-virtual {p0}, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->getIntrinsicWidth()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->mPadding:F

    const v2, 0x400ccccd    # 2.2f

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    float-to-int v0, v0

    invoke-virtual {p0}, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->getIntrinsicHeight()I

    move-result v1

    int-to-float v1, v1

    iget v3, p0, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->mPadding:F

    mul-float/2addr v3, v2

    sub-float/2addr v1, v3

    float-to-int v1, v1

    .line 214
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 215
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 216
    new-instance v10, Landroid/graphics/Paint;

    invoke-direct {v10}, Landroid/graphics/Paint;-><init>()V

    const/4 v4, -0x1

    .line 217
    invoke-virtual {v10, v4}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float v6, v0

    int-to-float v7, v1

    .line 218
    iget v8, p0, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->mPaddingRadius:F

    const/4 v4, 0x0

    const/4 v5, 0x0

    move v9, v8

    invoke-virtual/range {v3 .. v10}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    return-object v2
.end method

.method private setAnimParams(IIIFFFF)V
    .registers 25

    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v4, p2

    move/from16 v6, p4

    move/from16 v0, p7

    .line 299
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    .line 300
    iget-object v5, v1, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->mRectF:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v7

    neg-int v7, v7

    int-to-float v7, v7

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v7, v8

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v9

    neg-int v9, v9

    int-to-float v9, v9

    div-float/2addr v9, v8

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v10

    int-to-float v10, v10

    div-float/2addr v10, v8

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v8

    invoke-virtual {v5, v7, v9, v10, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 301
    iget-object v3, v1, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->mRectF:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerX()F

    move-result v3

    float-to-int v3, v3

    .line 302
    iget-object v5, v1, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->mRectF:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->centerY()F

    move-result v5

    float-to-int v5, v5

    .line 303
    sget-object v7, Lcom/transsion/widgetslib/view/OSCheckBox;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "startAnim, centerX: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", centerY: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", mRectF: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v1, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->mRectF:Landroid/graphics/RectF;

    invoke-virtual {v9}, Landroid/graphics/RectF;->toShortString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ", mChecked: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v9, v1, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->mChecked:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, ", execFraction: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v9, ", this:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/transsion/widgetscore/utils/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "startAnim, tickLength: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v9, p5

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v9, ", startLength: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v9, p6

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/transsion/widgetscore/utils/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    iget-boolean v7, v1, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->mChecked:Z

    const-string v8, "pvh_frame_scale"

    const-string v9, "pvh_border_scale"

    const v11, 0x3eaa7efa    # 0.333f

    const/4 v12, 0x0

    const/high16 v13, 0x3f800000    # 1.0f

    if-eqz v7, :cond_ec

    sub-int/2addr v3, v2

    sub-int/2addr v5, v4

    neg-float v7, v6

    .line 312
    iget-object v14, v1, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->mValueAnimator:Landroid/animation/ValueAnimator;

    .line 314
    invoke-static {v12, v12}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v15

    .line 315
    invoke-static {v11, v12}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v10

    .line 316
    invoke-static {v13, v13}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v11

    filled-new-array {v15, v10, v11}, [Landroid/animation/Keyframe;

    move-result-object v10

    .line 313
    invoke-static {v9, v10}, Landroid/animation/PropertyValuesHolder;->ofKeyframe(Ljava/lang/String;[Landroid/animation/Keyframe;)Landroid/animation/PropertyValuesHolder;

    move-result-object v9

    .line 318
    invoke-static {v12, v13}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v10

    const v11, 0x3f99999a    # 1.2f

    const v12, 0x3eaa7efa    # 0.333f

    .line 319
    invoke-static {v12, v11}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v11

    .line 320
    invoke-static {v13, v13}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v12

    filled-new-array {v10, v11, v12}, [Landroid/animation/Keyframe;

    move-result-object v10

    .line 317
    invoke-static {v8, v10}, Landroid/animation/PropertyValuesHolder;->ofKeyframe(Ljava/lang/String;[Landroid/animation/Keyframe;)Landroid/animation/PropertyValuesHolder;

    move-result-object v8

    filled-new-array {v9, v8}, [Landroid/animation/PropertyValuesHolder;

    move-result-object v8

    .line 312
    invoke-virtual {v14, v8}, Landroid/animation/ValueAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    goto :goto_13a

    .line 322
    :cond_ec
    iget-object v3, v1, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->mRectF:Landroid/graphics/RectF;

    iget v5, v3, Landroid/graphics/RectF;->left:F

    int-to-float v7, v2

    sub-float/2addr v5, v7

    float-to-int v5, v5

    .line 323
    iget v3, v3, Landroid/graphics/RectF;->top:F

    int-to-float v7, v4

    sub-float/2addr v3, v7

    float-to-int v3, v3

    .line 324
    iget v7, v1, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->mRadius:F

    sub-float/2addr v7, v6

    .line 325
    iget-object v10, v1, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->mValueAnimator:Landroid/animation/ValueAnimator;

    .line 327
    invoke-static {v12, v13}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v11

    const v14, 0x3f99999a    # 1.2f

    const v15, 0x3eaa7efa    # 0.333f

    .line 328
    invoke-static {v15, v14}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v0

    .line 329
    invoke-static {v13, v12}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v14

    filled-new-array {v11, v0, v14}, [Landroid/animation/Keyframe;

    move-result-object v0

    .line 326
    invoke-static {v9, v0}, Landroid/animation/PropertyValuesHolder;->ofKeyframe(Ljava/lang/String;[Landroid/animation/Keyframe;)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 331
    invoke-static {v12, v13}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v9

    const v11, 0x3f99999a    # 1.2f

    .line 332
    invoke-static {v15, v11}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v11

    .line 333
    invoke-static {v13, v13}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v12

    filled-new-array {v9, v11, v12}, [Landroid/animation/Keyframe;

    move-result-object v9

    .line 330
    invoke-static {v8, v9}, Landroid/animation/PropertyValuesHolder;->ofKeyframe(Ljava/lang/String;[Landroid/animation/Keyframe;)Landroid/animation/PropertyValuesHolder;

    move-result-object v8

    filled-new-array {v0, v8}, [Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 325
    invoke-virtual {v10, v0}, Landroid/animation/ValueAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    move/from16 v16, v5

    move v5, v3

    move/from16 v3, v16

    .line 336
    :goto_13a
    iget-object v0, v1, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->mValueAnimator:Landroid/animation/ValueAnimator;

    const/high16 v8, 0x43960000    # 300.0f

    mul-float v8, v8, p7

    float-to-long v8, v8

    invoke-virtual {v0, v8, v9}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 338
    new-instance v0, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable$1;

    invoke-direct/range {v0 .. v7}, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable$1;-><init>(Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;IIIIFF)V

    .line 368
    iget-object v2, v1, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 369
    iget-object v2, v1, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->mValueAnimator:Landroid/animation/ValueAnimator;

    new-instance v3, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;

    invoke-direct {v3}, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;-><init>()V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 370
    iget-object v2, v1, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->mValueAnimator:Landroid/animation/ValueAnimator;

    new-instance v3, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable$2;

    invoke-direct {v3, v1, v0}, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable$2;-><init>(Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v2, v3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method private setAnimParams(Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;)V
    .registers 10

    .line 294
    iget v1, p1, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->mCurrentLeft:I

    iget v2, p1, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->mCurrentTop:I

    iget v3, p1, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->mCurrentAlpha:I

    iget v4, p1, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->mCurrentRadius:F

    iget v5, p1, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->mTickLength:F

    iget v6, p1, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->mPathPointStartLength:F

    iget v7, p1, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->mExecFraction:F

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->setAnimParams(IIIFFFF)V

    return-void
.end method

.method private setBitmap()V
    .registers 7

    .line 190
    iget-object v0, p0, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->mContext:Landroid/content/Context;

    sget v1, Lcom/transsion/widgetslib/R$drawable;->os_checked_drawable_unchecked:I

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_b

    return-void

    .line 194
    :cond_b
    invoke-static {v0}, Lcom/transsion/widgetslib/util/ImageUtils;->drawable2Bitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->mNormalBitmap:Landroid/graphics/Bitmap;

    .line 195
    iget-object v0, p0, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->mContext:Landroid/content/Context;

    sget v1, Lcom/transsion/widgetslib/R$drawable;->os_checkbox_checked_bg:I

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/widgetslib/util/ImageUtils;->drawable2Bitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->mCheckedBg:Landroid/graphics/Bitmap;

    .line 197
    iget-object v0, p0, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->mContext:Landroid/content/Context;

    sget v1, Lcom/transsion/widgetslib/R$drawable;->os_checked_drawable_shadow:I

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/widgetslib/util/ImageUtils;->drawable2Bitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 198
    invoke-direct {p0}, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->makeSrc()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 200
    invoke-virtual {p0}, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->getIntrinsicWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->getIntrinsicHeight()I

    move-result v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->mBitmapShader:Landroid/graphics/Bitmap;

    .line 201
    new-instance v2, Landroid/graphics/Canvas;

    iget-object v3, p0, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->mBitmapShader:Landroid/graphics/Bitmap;

    invoke-direct {v2, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 202
    new-instance v3, Landroid/graphics/Paint;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Landroid/graphics/Paint;-><init>(I)V

    const/4 v4, 0x0

    .line 204
    invoke-virtual {v2, v0, v4, v4, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 205
    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v4}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 206
    iget-object v0, p0, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->mBitmapShader:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    sub-int/2addr v0, v4

    int-to-float v0, v0

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v0, v4

    iget-object p0, p0, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->mBitmapShader:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    sub-int/2addr p0, v5

    int-to-float p0, p0

    div-float/2addr p0, v4

    invoke-virtual {v2, v1, v0, p0, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    const/4 p0, 0x0

    .line 207
    invoke-virtual {v3, p0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 209
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    return-void
.end method

.method private setChecked(Z)V
    .registers 12

    .line 166
    iput-boolean p1, p0, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->mChecked:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_7

    move v1, v0

    goto :goto_e

    .line 168
    :cond_7
    invoke-virtual {p0}, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->getIntrinsicWidth()I

    move-result v1

    neg-int v1, v1

    div-int/lit8 v1, v1, 0x2

    :goto_e
    iput v1, p0, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->mCurrentLeft:I

    if-eqz p1, :cond_14

    move v1, v0

    goto :goto_1b

    .line 169
    :cond_14
    invoke-virtual {p0}, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->getIntrinsicHeight()I

    move-result v1

    neg-int v1, v1

    div-int/lit8 v1, v1, 0x2

    :goto_1b
    iput v1, p0, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->mCurrentTop:I

    if-eqz p1, :cond_21

    const/16 v0, 0xff

    .line 170
    :cond_21
    iput v0, p0, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->mCurrentAlpha:I

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    if-eqz p1, :cond_2a

    move v2, v0

    goto :goto_2b

    :cond_2a
    move v2, v1

    .line 171
    :goto_2b
    iput v2, p0, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->mCurrentScale:F

    .line 172
    iput v0, p0, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->mCurrentFrameScale:F

    if-eqz p1, :cond_33

    move v0, v1

    goto :goto_35

    .line 173
    :cond_33
    iget v0, p0, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->mRadius:F

    :goto_35
    iput v0, p0, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->mCurrentRadius:F

    .line 174
    iget-object v0, p0, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->mPathBorder:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    if-nez p1, :cond_5c

    .line 176
    iget-object v2, p0, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->mPathBorder:Landroid/graphics/Path;

    iget v0, p0, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->mCurrentLeft:I

    int-to-float v3, v0

    iget v4, p0, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->mCurrentTop:I

    int-to-float v4, v4

    invoke-virtual {p0}, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->getIntrinsicWidth()I

    move-result v5

    add-int/2addr v0, v5

    int-to-float v5, v0

    iget v0, p0, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->mCurrentTop:I

    .line 177
    invoke-virtual {p0}, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->getIntrinsicHeight()I

    move-result v6

    add-int/2addr v0, v6

    int-to-float v6, v0

    iget v7, p0, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->mCurrentRadius:F

    sget-object v9, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    move v8, v7

    .line 176
    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Path;->addRoundRect(FFFFFFLandroid/graphics/Path$Direction;)V

    :cond_5c
    if-eqz p1, :cond_68

    .line 180
    iget-object v0, p0, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->mMeasurePathFullTick:Landroid/graphics/PathMeasure;

    invoke-virtual {v0}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v0

    iget v2, p0, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->mDeltaTickLength:F

    sub-float/2addr v0, v2

    goto :goto_69

    :cond_68
    move v0, v1

    :goto_69
    iput v0, p0, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->mTickLength:F

    .line 181
    iget-object v0, p0, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->mPathTick:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    if-eqz p1, :cond_7e

    .line 183
    iget-object v0, p0, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->mMeasurePathFullTick:Landroid/graphics/PathMeasure;

    iget v2, p0, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->mDeltaTickLength:F

    iget v3, p0, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->mTickLength:F

    iget-object v4, p0, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->mPathTick:Landroid/graphics/Path;

    const/4 v5, 0x1

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/PathMeasure;->getSegment(FFLandroid/graphics/Path;Z)Z

    :cond_7e
    if-eqz p1, :cond_8a

    .line 186
    iget-object p1, p0, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->mMeasurePathPointStart:Landroid/graphics/PathMeasure;

    invoke-virtual {p1}, Landroid/graphics/PathMeasure;->getLength()F

    move-result p1

    iget v0, p0, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->mDeltaPathPointStartLength:F

    sub-float v1, p1, v0

    :cond_8a
    iput v1, p0, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->mPathPointStartLength:F

    return-void
.end method


# virtual methods
.method public cleanUp()V
    .registers 3

    .line 494
    iget-object v0, p0, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->mExtractAlphaNormalBitmap:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_12

    .line 495
    iget-object v0, p0, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->mExtractAlphaNormalBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 496
    iput-object v1, p0, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->mExtractAlphaNormalBitmap:Landroid/graphics/Bitmap;

    .line 498
    :cond_12
    iget-object v0, p0, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->mExtractAlphaCheckedBg:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_23

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_23

    .line 499
    iget-object v0, p0, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->mExtractAlphaCheckedBg:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 500
    iput-object v1, p0, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->mExtractAlphaCheckedBg:Landroid/graphics/Bitmap;

    :cond_23
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .registers 16

    .line 248
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 249
    iget-object v1, p0, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->mNormalBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_13e

    iget-object v1, p0, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->mCheckedBg:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_13e

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_14

    goto/16 :goto_13e

    .line 253
    :cond_14
    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 254
    iget-boolean v1, p0, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->mIsSmallScreen:Z

    if-eqz v1, :cond_2b

    const v1, 0x3f9c6d3a

    .line 255
    invoke-virtual {p1, v1, v1}, Landroid/graphics/Canvas;->scale(FF)V

    .line 257
    :cond_2b
    iget-object v1, p0, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->mRectFrame:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    iget v4, p0, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->mCurrentFrameScale:F

    mul-float/2addr v2, v4

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v4

    neg-int v4, v4

    int-to-float v4, v4

    div-float/2addr v4, v3

    iget v5, p0, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->mCurrentFrameScale:F

    mul-float/2addr v4, v5

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v3

    iget v6, p0, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->mCurrentFrameScale:F

    mul-float/2addr v5, v6

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v3

    iget v7, p0, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->mCurrentFrameScale:F

    mul-float/2addr v6, v7

    invoke-virtual {v1, v2, v4, v5, v6}, Landroid/graphics/RectF;->set(FFFF)V

    .line 258
    iget-object v1, p0, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->mRectF:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    iget v4, p0, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->mCurrentScale:F

    mul-float/2addr v2, v4

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v4

    neg-int v4, v4

    int-to-float v4, v4

    div-float/2addr v4, v3

    iget v5, p0, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->mCurrentScale:F

    mul-float/2addr v4, v5

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v3

    iget v6, p0, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->mCurrentScale:F

    mul-float/2addr v5, v6

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v3

    iget v3, p0, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->mCurrentScale:F

    mul-float/2addr v0, v3

    invoke-virtual {v1, v2, v4, v5, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 259
    iget-boolean v0, p0, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->mIsShowBorderShadow:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_8f

    .line 260
    iget-object v0, p0, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->mBitmapShader:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->mRectFrame:Landroid/graphics/RectF;

    invoke-virtual {p1, v0, v1, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 262
    :cond_8f
    iget-object v0, p0, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->mPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->mUncheckedFillColor:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 263
    iget v0, p0, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->mDrawableAlpha:I

    const/16 v2, 0xff

    const/4 v3, -0x1

    iget v4, p0, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->mUncheckedFillAlpha:I

    if-eq v0, v3, :cond_a1

    mul-int/2addr v4, v0

    div-int/2addr v4, v2

    .line 264
    :cond_a1
    iget-object v0, p0, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 265
    iget-object v0, p0, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->mRectFrame:Landroid/graphics/RectF;

    iget v4, v0, Landroid/graphics/RectF;->left:F

    iget v5, p0, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->mPadding:F

    add-float v7, v4, v5

    iget v4, v0, Landroid/graphics/RectF;->top:F

    add-float v8, v4, v5

    iget v4, v0, Landroid/graphics/RectF;->right:F

    sub-float v9, v4, v5

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    sub-float v10, v0, v5

    iget v11, p0, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->mPaddingRadius:F

    iget-object v13, p0, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->mPaint:Landroid/graphics/Paint;

    move v12, v11

    move-object v6, p1

    invoke-virtual/range {v6 .. v13}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    .line 268
    iget-object p1, p0, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->mPaint:Landroid/graphics/Paint;

    iget v0, p0, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->mUncheckedBorderColor:I

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 269
    iget p1, p0, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->mDrawableAlpha:I

    iget v0, p0, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->mUncheckedBorderAlpha:I

    if-eq p1, v3, :cond_d2

    mul-int/2addr v0, p1

    div-int/2addr v0, v2

    .line 270
    :cond_d2
    iget-object p1, p0, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 271
    iget-object p1, p0, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->mExtractAlphaNormalBitmap:Landroid/graphics/Bitmap;

    if-nez p1, :cond_e3

    .line 272
    iget-object p1, p0, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->mNormalBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->extractAlpha()Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->mExtractAlphaNormalBitmap:Landroid/graphics/Bitmap;

    .line 274
    :cond_e3
    iget-object p1, p0, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->mExtractAlphaNormalBitmap:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->mRectFrame:Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v6, p1, v1, v0, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 276
    iget-object p1, p0, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->mRectF:Landroid/graphics/RectF;

    iget v0, p0, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->mCurrentAlpha:I

    const/16 v4, 0x1f

    invoke-virtual {v6, p1, v0, v4}, Landroid/graphics/Canvas;->saveLayerAlpha(Landroid/graphics/RectF;II)I

    move-result p1

    .line 277
    iget-object v0, p0, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->mPathBorder:Landroid/graphics/Path;

    sget-object v4, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {v6, v0, v4}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    .line 278
    iget-object v0, p0, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->mPaint:Landroid/graphics/Paint;

    iget v4, p0, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->mCheckedFillColor:I

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 279
    iget v0, p0, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->mDrawableAlpha:I

    if-eq v0, v3, :cond_109

    move v2, v0

    .line 280
    :cond_109
    iget-object v0, p0, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 281
    iget-object v0, p0, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->mExtractAlphaCheckedBg:Landroid/graphics/Bitmap;

    if-nez v0, :cond_11a

    .line 282
    iget-object v0, p0, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->mCheckedBg:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->extractAlpha()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->mExtractAlphaCheckedBg:Landroid/graphics/Bitmap;

    .line 284
    :cond_11a
    iget-object v0, p0, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->mExtractAlphaCheckedBg:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->mRectF:Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v6, v0, v1, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 285
    invoke-virtual {v6, p1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 286
    iget p1, p0, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->mCurrentScale:F

    invoke-virtual {v6, p1, p1}, Landroid/graphics/Canvas;->scale(FF)V

    .line 288
    iget-object p1, p0, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->mPaintTick:Landroid/graphics/Paint;

    iget v0, p0, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->mTickColor:I

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 289
    iget-object p1, p0, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->mPaintTick:Landroid/graphics/Paint;

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 290
    iget-object p1, p0, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->mPathTick:Landroid/graphics/Path;

    iget-object p0, p0, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->mPaintTick:Landroid/graphics/Paint;

    invoke-virtual {v6, p1, p0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_13e
    :goto_13e
    return-void
.end method

.method protected finalize()V
    .registers 1

    .line 507
    invoke-virtual {p0}, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->cleanUp()V

    .line 508
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public getIntrinsicHeight()I
    .registers 2

    .line 238
    iget-object v0, p0, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->mNormalBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_11

    iget-object p0, p0, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/transsion/widgetslib/R$dimen;->os_ctm_checked_box_wh:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0

    :cond_11
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p0

    return p0
.end method

.method public getIntrinsicWidth()I
    .registers 2

    .line 243
    iget-object v0, p0, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->mNormalBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_11

    iget-object p0, p0, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/transsion/widgetslib/R$dimen;->os_ctm_checked_box_wh:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0

    :cond_11
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p0

    return p0
.end method

.method public getOpacity()I
    .registers 1

    const/4 p0, -0x3

    return p0
.end method

.method public isRunning()Z
    .registers 1

    .line 401
    iget-object p0, p0, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p0

    return p0
.end method

.method public setAlpha(I)V
    .registers 2

    .line 224
    iput p1, p0, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->mDrawableAlpha:I

    return-void
.end method

.method public setCheckedFillColor(I)V
    .registers 2

    .line 457
    iput p1, p0, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->mCheckedFillColor:I

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 2

    return-void
.end method

.method public setPictureMode(Z)V
    .registers 3

    const/4 v0, 0x1

    .line 469
    invoke-virtual {p0, p1, v0}, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->setPictureMode(ZZ)V

    return-void
.end method

.method public setPictureMode(ZZ)V
    .registers 5

    const/4 v0, 0x0

    if-eqz p2, :cond_2d

    if-eqz p1, :cond_1c

    .line 475
    iget-object p1, p0, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->mContext:Landroid/content/Context;

    sget p2, Lcom/transsion/widgetslib/R$color;->os_color_white100:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getColor(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->setUncheckedBorderColor(I)V

    .line 476
    iget-object p1, p0, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->mContext:Landroid/content/Context;

    sget p2, Lcom/transsion/widgetslib/R$color;->os_color_black30:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getColor(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->setUncheckedFillColor(I)V

    goto :goto_58

    .line 478
    :cond_1c
    iget-object p1, p0, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->mContext:Landroid/content/Context;

    sget p2, Lcom/transsion/widgetslib/R$attr;->os_fill_base:I

    sget v1, Lcom/transsion/widgetslib/R$color;->os_fill_base_hios:I

    invoke-static {p1, p2, v1}, Lcom/transsion/widgetslib/util/Utils;->getAttrColor(Landroid/content/Context;II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->setUncheckedBorderColor(I)V

    .line 479
    invoke-virtual {p0, v0}, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->setUncheckedFillColor(I)V

    goto :goto_58

    :cond_2d
    if-eqz p1, :cond_48

    .line 483
    iget-object p1, p0, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->mContext:Landroid/content/Context;

    sget p2, Lcom/transsion/widgetslib/R$color;->os_uncheck_box_pic_border_color:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getColor(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->setUncheckedBorderColor(I)V

    .line 484
    iget-object p1, p0, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->mContext:Landroid/content/Context;

    sget p2, Lcom/transsion/widgetslib/R$color;->os_color_gray80:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getColor(I)I

    move-result p1

    const/16 p2, 0x80

    invoke-virtual {p0, p1, p2}, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->setUncheckedFillColor(II)V

    goto :goto_58

    .line 486
    :cond_48
    iget-object p1, p0, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->mContext:Landroid/content/Context;

    sget p2, Lcom/transsion/widgetslib/R$attr;->os_fill_weaker:I

    sget v1, Lcom/transsion/widgetslib/R$color;->os_fill_weaker_hios:I

    invoke-static {p1, p2, v1}, Lcom/transsion/widgetslib/util/Utils;->getAttrColor(Landroid/content/Context;II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->setUncheckedBorderColor(I)V

    .line 487
    invoke-virtual {p0, v0}, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->setUncheckedFillColor(I)V

    .line 490
    :goto_58
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public setShowBorderShadow(Z)V
    .registers 2

    .line 465
    iput-boolean p1, p0, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->mIsShowBorderShadow:Z

    return-void
.end method

.method public setTickColor(I)V
    .registers 2

    .line 461
    iput p1, p0, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->mTickColor:I

    return-void
.end method

.method public setUncheckedBorderColor(I)V
    .registers 2

    .line 447
    iput p1, p0, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->mUncheckedBorderColor:I

    .line 448
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->mUncheckedBorderAlpha:I

    return-void
.end method

.method public setUncheckedBorderColor(II)V
    .registers 3

    .line 452
    iput p1, p0, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->mUncheckedBorderColor:I

    .line 453
    iput p2, p0, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->mUncheckedBorderAlpha:I

    return-void
.end method

.method public setUncheckedFillColor(I)V
    .registers 2

    .line 437
    iput p1, p0, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->mUncheckedFillColor:I

    .line 438
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->mUncheckedFillAlpha:I

    return-void
.end method

.method public setUncheckedFillColor(II)V
    .registers 3

    .line 442
    iput p1, p0, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->mUncheckedFillColor:I

    .line 443
    iput p2, p0, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->mUncheckedFillAlpha:I

    return-void
.end method

.method public start(Lcom/transsion/widgetslib/drawable/ReversibleDrawable;)V
    .registers 3

    .line 384
    instance-of v0, p1, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;

    if-eqz v0, :cond_13

    .line 385
    iget-object v0, p0, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 386
    check-cast p1, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;

    invoke-direct {p0, p1}, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->setAnimParams(Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;)V

    .line 387
    iget-object p0, p0, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    :cond_13
    return-void
.end method

.method public stop()V
    .registers 2

    .line 393
    invoke-virtual {p0}, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 394
    iget-object v0, p0, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 395
    iget-boolean v0, p0, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->mChecked:Z

    invoke-direct {p0, v0}, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->setChecked(Z)V

    :cond_10
    return-void
.end method
