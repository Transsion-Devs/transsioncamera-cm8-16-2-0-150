.class public Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar$OSMultiSeekBarBuilde;,
        Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar$OnProgressChangedListener;
    }
.end annotation


# instance fields
.field private isThumbOnDragging:Z

.field private final mCirclePaint:Landroid/graphics/Paint;

.field private final mContext:Landroid/content/Context;

.field private mDelta:F

.field private mHasInvalidate:Z

.field private mLeft:F

.field private mMax:F

.field private mMin:F

.field private mOSMultiSeekBarBuilde:Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar$OSMultiSeekBarBuilde;

.field private final mPaint:Landroid/graphics/Paint;

.field private mPreThumbCenterX:F

.field private mProcessMarginTopBottow:I

.field private mProgress:F

.field private mProgressListener:Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar$OnProgressChangedListener;

.field private mRight:F

.field private mSecondTTrackWidth:F

.field private mSecondTrackColor:I

.field private mStartTounchTime:J

.field private mStopTounchTime:J

.field private mThumbCenterX:F

.field private mThumbColor:I

.field private mThumbWidth:I

.field private mTouchXDown:F

.field private mTouchXMove:F

.field private mTrackColor:I

.field private mTrackLength:F

.field private mTrackWidth:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 62
    invoke-direct {p0, p1, v0}, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    .line 66
    invoke-direct {p0, p1, p2, v0}, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 6

    .line 70
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-wide/16 v0, 0x0

    .line 54
    iput-wide v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->mStartTounchTime:J

    .line 55
    iput-wide v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->mStopTounchTime:J

    .line 71
    iput-object p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->mContext:Landroid/content/Context;

    .line 72
    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->getConfigBuilder()Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar$OSMultiSeekBarBuilde;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar$OSMultiSeekBarBuilde;->build()V

    .line 74
    sget-object v0, Lcom/transsion/widgetslib/R$styleable;->OSMultiSeekbar:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 75
    sget p2, Lcom/transsion/widgetslib/R$styleable;->OSMultiSeekbar_osMultiSeekbarMin:I

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->mMin:F

    .line 76
    sget p2, Lcom/transsion/widgetslib/R$styleable;->OSMultiSeekbar_osMultiSeekbarMax:I

    const/high16 v0, 0x42c80000    # 100.0f

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->mMax:F

    .line 77
    sget p2, Lcom/transsion/widgetslib/R$styleable;->OSMultiSeekbar_osMultiSeekbarProgress:I

    iget v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->mMin:F

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->mProgress:F

    .line 78
    sget p2, Lcom/transsion/widgetslib/R$styleable;->OSMultiSeekbar_android_enabled:I

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    invoke-virtual {p0, p2}, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->setEnabled(Z)V

    .line 79
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 81
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->mPaint:Landroid/graphics/Paint;

    const/4 p2, 0x1

    .line 82
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 83
    sget-object v0, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 84
    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 86
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->mCirclePaint:Landroid/graphics/Paint;

    .line 87
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 88
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 89
    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 91
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->initConfigByPriority()V

    .line 93
    invoke-static {}, Lcom/transsion/widgetslib/util/Utils;->isRtl()Z

    move-result p1

    if-eqz p1, :cond_81

    invoke-virtual {p0}, Landroid/view/View;->getRotation()F

    move-result p1

    cmpl-float p1, p1, p3

    if-nez p1, :cond_81

    const/high16 p1, 0x43340000    # 180.0f

    .line 94
    invoke-virtual {p0, p1}, Landroid/view/View;->setRotation(F)V

    :cond_81
    return-void
.end method

.method static synthetic access$000(Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;)Landroid/content/Context;
    .registers 1

    .line 26
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100(Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;)I
    .registers 1

    .line 26
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->secondTrackColor()I

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;)I
    .registers 1

    .line 26
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->thumbColor()I

    move-result p0

    return p0
.end method

.method private calThumbCxWhenSeekStepSection(F)F
    .registers 4

    .line 253
    iget v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->mLeft:F

    cmpg-float v1, p1, v0

    if-gtz v1, :cond_7

    return v0

    .line 254
    :cond_7
    iget p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->mRight:F

    cmpl-float v0, p1, p0

    if-ltz v0, :cond_e

    return p0

    :cond_e
    return p1
.end method

.method private calculateProgress()F
    .registers 3

    .line 264
    iget v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->mThumbCenterX:F

    iget v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->mLeft:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->mDelta:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->mTrackLength:F

    div-float/2addr v0, v1

    iget p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->mMin:F

    add-float/2addr v0, p0

    return v0
.end method

.method static dp2px(I)I
    .registers 3

    int-to-float p0, p0

    .line 496
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v1, 0x1

    .line 495
    invoke-static {v1, p0, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p0

    float-to-int p0, p0

    return p0
.end method

.method private formatFloat(F)F
    .registers 3

    float-to-double p0, p1

    .line 259
    invoke-static {p0, p1}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object p0

    const/4 p1, 0x1

    const/4 v0, 0x4

    .line 260
    invoke-virtual {p0, p1, v0}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigDecimal;->floatValue()F

    move-result p0

    return p0
.end method

.method private initConfigByPriority()V
    .registers 4

    .line 99
    iget v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->mMin:F

    iget v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->mMax:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_f

    const/4 v0, 0x0

    .line 100
    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->mMin:F

    const/high16 v0, 0x42c80000    # 100.0f

    .line 101
    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->mMax:F

    .line 103
    :cond_f
    iget v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->mMin:F

    iget v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->mMax:F

    cmpl-float v2, v0, v1

    if-lez v2, :cond_1b

    .line 105
    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->mMax:F

    .line 106
    iput v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->mMin:F

    .line 108
    :cond_1b
    iget v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->mProgress:F

    iget v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->mMin:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_25

    .line 109
    iput v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->mProgress:F

    .line 111
    :cond_25
    iget v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->mProgress:F

    iget v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->mMax:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2f

    .line 112
    iput v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->mProgress:F

    .line 114
    :cond_2f
    iget v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->mThumbWidth:I

    int-to-float v0, v0

    iget v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->mSecondTTrackWidth:F

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_41

    float-to-int v0, v1

    const/4 v1, 0x4

    .line 115
    invoke-static {v1}, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->dp2px(I)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->mThumbWidth:I

    .line 117
    :cond_41
    iget v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->mMax:F

    iget v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->mMin:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->mDelta:F

    .line 118
    iget v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->mProgress:F

    invoke-virtual {p0, v0}, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->setProgress(F)V

    return-void
.end method

.method private secondTrackColor()I
    .registers 5

    .line 348
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 349
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    sget v2, Lcom/transsion/widgetslib/R$attr;->os_platform_basic_color:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 350
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->mContext:Landroid/content/Context;

    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p0

    return p0

    .line 352
    :cond_1d
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->mContext:Landroid/content/Context;

    sget v0, Lcom/transsion/widgetslib/R$color;->os_platform_basic_color_hios:I

    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p0

    return p0
.end method

.method static sp2px(I)I
    .registers 3

    int-to-float p0, p0

    .line 501
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v1, 0x2

    .line 500
    invoke-static {v1, p0, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p0

    float-to-int p0, p0

    return p0
.end method

.method private thumbColor()I
    .registers 5

    .line 357
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 358
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    sget v2, Lcom/transsion/widgetslib/R$attr;->os_platform_basic_color:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 359
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->mContext:Landroid/content/Context;

    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p0

    return p0

    .line 361
    :cond_1d
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->mContext:Landroid/content/Context;

    sget v0, Lcom/transsion/widgetslib/R$color;->os_platform_basic_color_hios:I

    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p0

    return p0
.end method


# virtual methods
.method config(Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar$OSMultiSeekBarBuilde;)V
    .registers 5

    .line 384
    iget v0, p1, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar$OSMultiSeekBarBuilde;->min:F

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->mMin:F

    .line 385
    iget v0, p1, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar$OSMultiSeekBarBuilde;->max:F

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->mMax:F

    .line 386
    iget v0, p1, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar$OSMultiSeekBarBuilde;->progress:F

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->mProgress:F

    .line 387
    iget v0, p1, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar$OSMultiSeekBarBuilde;->trackColor:I

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->mTrackColor:I

    .line 388
    iget v0, p1, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar$OSMultiSeekBarBuilde;->secondTrackColor:I

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->mSecondTrackColor:I

    .line 389
    iget v0, p1, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar$OSMultiSeekBarBuilde;->trackWidth:I

    int-to-float v0, v0

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->mTrackWidth:F

    .line 390
    iget v0, p1, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar$OSMultiSeekBarBuilde;->secondTrackWidth:I

    int-to-float v0, v0

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->mSecondTTrackWidth:F

    .line 391
    iget v0, p1, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar$OSMultiSeekBarBuilde;->thumbWidth:I

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->mThumbWidth:I

    .line 392
    iget v0, p1, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar$OSMultiSeekBarBuilde;->thumbColor:I

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->mThumbColor:I

    .line 393
    iget p1, p1, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar$OSMultiSeekBarBuilde;->processMarginTopBottow:I

    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->mProcessMarginTopBottow:I

    .line 395
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->initConfigByPriority()V

    .line 396
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->mProgressListener:Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar$OnProgressChangedListener;

    if-eqz p1, :cond_3d

    .line 397
    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->getProgress()I

    move-result v0

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->getProgressFloat()F

    move-result v1

    const/4 v2, 0x0

    invoke-interface {p1, p0, v0, v1, v2}, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar$OnProgressChangedListener;->onProgressChanged(Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;IFZ)V

    :cond_3d
    const/4 p1, 0x0

    .line 400
    iput-object p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->mOSMultiSeekBarBuilde:Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar$OSMultiSeekBarBuilde;

    .line 402
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public getConfigBuilder()Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar$OSMultiSeekBarBuilde;
    .registers 2

    .line 377
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->mOSMultiSeekBarBuilde:Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar$OSMultiSeekBarBuilde;

    if-nez v0, :cond_b

    .line 378
    new-instance v0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar$OSMultiSeekBarBuilde;

    invoke-direct {v0, p0}, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar$OSMultiSeekBarBuilde;-><init>(Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;)V

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->mOSMultiSeekBarBuilde:Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar$OSMultiSeekBarBuilde;

    .line 380
    :cond_b
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->mOSMultiSeekBarBuilde:Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar$OSMultiSeekBarBuilde;

    return-object p0
.end method

.method public getMax()F
    .registers 1

    .line 272
    iget p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->mMax:F

    return p0
.end method

.method public getMin()F
    .registers 1

    .line 268
    iget p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->mMin:F

    return p0
.end method

.method public getOnProgressChangedListener()Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar$OnProgressChangedListener;
    .registers 1

    .line 292
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->mProgressListener:Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar$OnProgressChangedListener;

    return-object p0
.end method

.method public getProgress()I
    .registers 1

    .line 284
    iget p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->mProgress:F

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    return p0
.end method

.method public getProgressFloat()F
    .registers 1

    .line 288
    iget p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->mProgress:F

    return p0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 11

    .line 140
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 142
    iget v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->mLeft:F

    .line 143
    iget v5, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->mRight:F

    .line 144
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    iget v2, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->mProcessMarginTopBottow:I

    add-int/2addr v0, v2

    int-to-float v0, v0

    iget v2, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->mThumbWidth:I

    int-to-float v2, v2

    const/high16 v8, 0x3f000000    # 0.5f

    mul-float/2addr v2, v8

    add-float/2addr v2, v0

    .line 146
    iget-boolean v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->isThumbOnDragging:Z

    if-nez v0, :cond_28

    .line 147
    iget v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->mTrackLength:F

    iget v3, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->mDelta:F

    div-float/2addr v0, v3

    iget v3, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->mProgress:F

    iget v4, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->mMin:F

    sub-float/2addr v3, v4

    mul-float/2addr v0, v3

    add-float/2addr v0, v1

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->mThumbCenterX:F

    .line 151
    :cond_28
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->mPaint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->mTrackColor:I

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 152
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->mPaint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->mTrackWidth:F

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 153
    iget v3, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->mThumbCenterX:F

    iget-object v7, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->mPaint:Landroid/graphics/Paint;

    move v6, v2

    move v4, v2

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    move-object v0, v2

    move v2, v4

    .line 156
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->mPaint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->mSecondTrackColor:I

    invoke-virtual {p1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 157
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->mPaint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->mSecondTTrackWidth:F

    invoke-virtual {p1, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 158
    iget v3, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->mThumbCenterX:F

    iget-object v5, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->mPaint:Landroid/graphics/Paint;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 160
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->mCirclePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 161
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->mCirclePaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->mThumbColor:I

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 162
    iget p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->mThumbWidth:I

    int-to-float p1, p1

    mul-float/2addr p1, v8

    .line 163
    iget v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->mThumbCenterX:F

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->mCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2, p1, p0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 6

    .line 135
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    return-void
.end method

.method protected onMeasure(II)V
    .registers 4

    .line 123
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 124
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result p2

    iget v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->mThumbWidth:I

    add-int/2addr p2, v0

    iget v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->mProcessMarginTopBottow:I

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr p2, v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v0

    add-int/2addr p2, v0

    const/16 v0, 0xb4

    .line 125
    invoke-static {v0}, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->dp2px(I)I

    move-result v0

    invoke-static {v0, p1}, Landroid/view/View;->resolveSize(II)I

    move-result p1

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 127
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result p1

    int-to-float p1, p1

    iget p2, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->mThumbWidth:I

    int-to-float p2, p2

    const/high16 v0, 0x3f000000    # 0.5f

    mul-float/2addr p2, v0

    add-float/2addr p1, p2

    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->mLeft:F

    .line 128
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result p2

    sub-int/2addr p1, p2

    int-to-float p1, p1

    iget p2, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->mTrackWidth:F

    sub-float/2addr p1, p2

    iget p2, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->mThumbWidth:I

    int-to-float p2, p2

    mul-float/2addr p2, v0

    sub-float/2addr p1, p2

    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->mRight:F

    .line 130
    iget p2, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->mLeft:F

    sub-float/2addr p1, p2

    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->mTrackLength:F

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 3

    .line 324
    instance-of v0, p1, Landroid/os/Bundle;

    if-eqz v0, :cond_1d

    .line 325
    check-cast p1, Landroid/os/Bundle;

    .line 326
    const-string v0, "progress"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->mProgress:F

    .line 327
    const-string v0, "save_instance"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    invoke-super {p0, p1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 328
    iget p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->mProgress:F

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->setProgress(F)V

    return-void

    .line 331
    :cond_1d
    invoke-super {p0, p1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .registers 4

    .line 316
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 317
    const-string v1, "save_instance"

    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 318
    const-string v1, "progress"

    iget p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->mProgress:F

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    return-object v0
.end method

.method protected onSizeChanged(IIII)V
    .registers 5

    .line 169
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 170
    new-instance p1, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar$1;

    invoke-direct {p1, p0}, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar$1;-><init>(Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;)V

    invoke-virtual {p0, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 7

    .line 186
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_a3

    if-eq v0, v2, :cond_67

    const/4 v3, 0x2

    if-eq v0, v3, :cond_12

    const/4 v3, 0x3

    if-eq v0, v3, :cond_67

    goto/16 :goto_e3

    .line 205
    :cond_12
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->isThumbOnDragging:Z

    .line 206
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->mStopTounchTime:J

    .line 208
    iget-boolean v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->isThumbOnDragging:Z

    if-eqz v0, :cond_e3

    .line 210
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-direct {p0, v0}, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->calThumbCxWhenSeekStepSection(F)F

    move-result v0

    .line 211
    iget v3, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->mTouchXDown:F

    sub-float v3, v0, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iput v3, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->mTouchXMove:F

    .line 212
    iget v4, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->mPreThumbCenterX:F

    cmpl-float v4, v0, v4

    if-eqz v4, :cond_e3

    invoke-static {v2}, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->dp2px(I)I

    move-result v4

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-gtz v3, :cond_47

    iget-boolean v3, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->mHasInvalidate:Z

    if-eqz v3, :cond_e3

    .line 213
    :cond_47
    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->mPreThumbCenterX:F

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->mThumbCenterX:F

    .line 218
    iput-boolean v2, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->mHasInvalidate:Z

    .line 219
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->calculateProgress()F

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->mProgress:F

    .line 220
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 221
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->mProgressListener:Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar$OnProgressChangedListener;

    if-eqz v0, :cond_e3

    .line 222
    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->getProgress()I

    move-result v3

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->getProgressFloat()F

    move-result v4

    invoke-interface {v0, p0, v3, v4, v2}, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar$OnProgressChangedListener;->onProgressChanged(Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;IFZ)V

    goto/16 :goto_e3

    .line 229
    :cond_67
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->mStopTounchTime:J

    .line 230
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 232
    iget-boolean v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->isThumbOnDragging:Z

    if-eqz v0, :cond_99

    .line 233
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-direct {p0, v0}, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->calThumbCxWhenSeekStepSection(F)F

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->mPreThumbCenterX:F

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->mThumbCenterX:F

    .line 234
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->calculateProgress()F

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->mProgress:F

    .line 235
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->mProgressListener:Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar$OnProgressChangedListener;

    if-eqz v0, :cond_99

    .line 236
    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->getProgress()I

    move-result v3

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->getProgressFloat()F

    move-result v4

    invoke-interface {v0, p0, v3, v4, v2}, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar$OnProgressChangedListener;->onProgressChanged(Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;IFZ)V

    .line 240
    :cond_99
    iput-boolean v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->isThumbOnDragging:Z

    .line 241
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->mProgressListener:Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar$OnProgressChangedListener;

    if-eqz v0, :cond_e3

    .line 242
    invoke-interface {v0, p0}, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar$OnProgressChangedListener;->onStopTrackingTouch(Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;)V

    goto :goto_e3

    .line 188
    :cond_a3
    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->performClick()Z

    .line 189
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 190
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->isThumbOnDragging:Z

    .line 191
    iput-boolean v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->mHasInvalidate:Z

    if-eqz v0, :cond_e3

    .line 193
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v3, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->mLeft:F

    cmpg-float v0, v0, v3

    if-ltz v0, :cond_e0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v3, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->mRight:F

    cmpl-float v0, v0, v3

    if-lez v0, :cond_cc

    goto :goto_e0

    .line 197
    :cond_cc
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->mTouchXDown:F

    .line 198
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->mStartTounchTime:J

    .line 199
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->mProgressListener:Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar$OnProgressChangedListener;

    if-eqz v0, :cond_e3

    .line 200
    invoke-interface {v0, p0}, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar$OnProgressChangedListener;->onStartTrackingTouch(Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;)V

    goto :goto_e3

    .line 194
    :cond_e0
    :goto_e0
    iput-boolean v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->isThumbOnDragging:Z

    return v1

    .line 246
    :cond_e3
    :goto_e3
    iget-boolean v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->isThumbOnDragging:Z

    if-nez v0, :cond_ef

    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    if-eqz p0, :cond_ee

    goto :goto_ef

    :cond_ee
    return v1

    :cond_ef
    :goto_ef
    return v2
.end method

.method public performClick()Z
    .registers 1

    .line 180
    invoke-super {p0}, Landroid/view/View;->performClick()Z

    move-result p0

    return p0
.end method

.method public setEnabled(Z)V
    .registers 4

    .line 336
    invoke-super {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    if-eqz p1, :cond_12

    .line 338
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->secondTrackColor()I

    move-result p1

    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->mSecondTrackColor:I

    .line 339
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->thumbColor()I

    move-result p1

    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->mThumbColor:I

    goto :goto_2a

    .line 341
    :cond_12
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->mContext:Landroid/content/Context;

    sget v0, Lcom/transsion/widgetslib/R$attr;->os_fill_weak:I

    sget v1, Lcom/transsion/widgetslib/R$color;->os_fill_weak_hios:I

    invoke-static {p1, v0, v1}, Lcom/transsion/widgetslib/util/Utils;->getAttrColor(Landroid/content/Context;II)I

    move-result p1

    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->mSecondTrackColor:I

    .line 342
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->mContext:Landroid/content/Context;

    sget v0, Lcom/transsion/widgetslib/R$attr;->os_grayfill_base:I

    sget v1, Lcom/transsion/widgetslib/R$color;->os_grayfill_base_hios:I

    invoke-static {p1, v0, v1}, Lcom/transsion/widgetslib/util/Utils;->getAttrColor(Landroid/content/Context;II)I

    move-result p1

    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->mThumbColor:I

    .line 344
    :goto_2a
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setOnProgressChangedListener(Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar$OnProgressChangedListener;)V
    .registers 2

    .line 296
    iput-object p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->mProgressListener:Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar$OnProgressChangedListener;

    return-void
.end method

.method public setProgress(F)V
    .registers 5

    .line 276
    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->mProgress:F

    .line 277
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->mProgressListener:Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar$OnProgressChangedListener;

    if-eqz p1, :cond_12

    .line 278
    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->getProgress()I

    move-result v0

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->getProgressFloat()F

    move-result v1

    const/4 v2, 0x0

    invoke-interface {p1, p0, v0, v1, v2}, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar$OnProgressChangedListener;->onProgressChanged(Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;IFZ)V

    .line 280
    :cond_12
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    return-void
.end method

.method public setSecondTrackColor(I)V
    .registers 3

    .line 307
    iget v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->mSecondTrackColor:I

    if-eq v0, p1, :cond_9

    .line 308
    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->mSecondTrackColor:I

    .line 309
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_9
    return-void
.end method

.method public setTrackColor(I)V
    .registers 3

    .line 300
    iget v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->mTrackColor:I

    if-eq v0, p1, :cond_9

    .line 301
    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->mTrackColor:I

    .line 302
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_9
    return-void
.end method
