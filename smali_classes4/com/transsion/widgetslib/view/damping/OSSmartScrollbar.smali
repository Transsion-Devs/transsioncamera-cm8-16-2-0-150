.class public Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar$SmartScrollChangedListener;,
        Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar$SmartGlobalLayoutListener;
    }
.end annotation


# static fields
.field private static final BAR_HEIGHT:I = 0x2d

.field private static final BAR_MARGIN:I = 0x3

.field private static final MIN_BAR_LEN:I = 0x9

.field private static final START_ANGLE:I = 0x10

.field private static final TAG:Ljava/lang/String; = "OSSmartScrollbar"


# instance fields
.field private mAnimator:Landroid/animation/ObjectAnimator;

.field private mArcColor:I

.field private mBarColor:I

.field private mBarLen:F

.field private mBarMargin:F

.field private mIsRegisterScrollChangedListener:Z

.field private mMaxBarLen:F

.field private mMaxScrollDistance:I

.field private mMeasureArc:Landroid/graphics/PathMeasure;

.field private mMinBarLen:F

.field private mOnGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private mOnScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

.field private mPaint:Landroid/graphics/Paint;

.field private mPathArc:Landroid/graphics/Path;

.field private mPathBar:Landroid/graphics/Path;

.field private mRatio:F

.field private final mRunnableFade:Ljava/lang/Runnable;

.field private mScrollableView:Landroid/view/View;

.field private mScrollingView:Landroidx/core/view/ScrollingView;

.field private mStopD:F

.field private mStrokeWidth:F

.field private mViewGroup:Landroid/view/ViewGroup;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 143
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 58
    iput-object p1, p0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->mViewGroup:Landroid/view/ViewGroup;

    .line 345
    new-instance v0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar$1;

    invoke-direct {v0, p0}, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar$1;-><init>(Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;)V

    iput-object v0, p0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->mRunnableFade:Ljava/lang/Runnable;

    .line 144
    invoke-direct {p0, p1}, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->init(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 148
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 58
    iput-object p1, p0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->mViewGroup:Landroid/view/ViewGroup;

    .line 345
    new-instance p1, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar$1;

    invoke-direct {p1, p0}, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar$1;-><init>(Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;)V

    iput-object p1, p0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->mRunnableFade:Ljava/lang/Runnable;

    .line 149
    invoke-direct {p0, p2}, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->init(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 153
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 58
    iput-object p1, p0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->mViewGroup:Landroid/view/ViewGroup;

    .line 345
    new-instance p1, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar$1;

    invoke-direct {p1, p0}, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar$1;-><init>(Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;)V

    iput-object p1, p0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->mRunnableFade:Ljava/lang/Runnable;

    .line 154
    invoke-direct {p0, p2}, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->init(Landroid/util/AttributeSet;)V

    return-void
.end method

.method static synthetic access$000(Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;)I
    .registers 1

    .line 37
    invoke-direct {p0}, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->getScrollRange()I

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;)I
    .registers 1

    .line 37
    invoke-direct {p0}, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->getScrollOffset()I

    move-result p0

    return p0
.end method

.method static synthetic access$1000(Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;)Landroid/graphics/PathMeasure;
    .registers 1

    .line 37
    iget-object p0, p0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->mMeasureArc:Landroid/graphics/PathMeasure;

    return-object p0
.end method

.method static synthetic access$1102(Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;F)F
    .registers 2

    .line 37
    iput p1, p0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->mRatio:F

    return p1
.end method

.method static synthetic access$1200()Ljava/lang/String;
    .registers 1

    .line 37
    sget-object v0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;)Landroid/animation/ObjectAnimator;
    .registers 1

    .line 37
    iget-object p0, p0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->mAnimator:Landroid/animation/ObjectAnimator;

    return-object p0
.end method

.method static synthetic access$200(Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;)I
    .registers 1

    .line 37
    invoke-direct {p0}, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->getScrollExtent()I

    move-result p0

    return p0
.end method

.method static synthetic access$300(Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;)Landroid/view/View;
    .registers 1

    .line 37
    iget-object p0, p0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->mScrollableView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$400(Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;)Landroid/graphics/Path;
    .registers 1

    .line 37
    iget-object p0, p0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->mPathBar:Landroid/graphics/Path;

    return-object p0
.end method

.method static synthetic access$500(Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;)I
    .registers 1

    .line 37
    iget p0, p0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->mMaxScrollDistance:I

    return p0
.end method

.method static synthetic access$600(Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;)F
    .registers 1

    .line 37
    iget p0, p0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->mBarLen:F

    return p0
.end method

.method static synthetic access$602(Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;F)F
    .registers 2

    .line 37
    iput p1, p0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->mBarLen:F

    return p1
.end method

.method static synthetic access$700(Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;)F
    .registers 1

    .line 37
    iget p0, p0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->mMaxBarLen:F

    return p0
.end method

.method static synthetic access$800(Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;)F
    .registers 1

    .line 37
    iget p0, p0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->mMinBarLen:F

    return p0
.end method

.method static synthetic access$900(Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;)F
    .registers 1

    .line 37
    iget p0, p0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->mStopD:F

    return p0
.end method

.method static synthetic access$902(Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;F)F
    .registers 2

    .line 37
    iput p1, p0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->mStopD:F

    return p1
.end method

.method private getScrollExtent()I
    .registers 3

    .line 386
    iget-object v0, p0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->mScrollingView:Landroidx/core/view/ScrollingView;

    if-nez v0, :cond_d

    .line 387
    iget-object v0, p0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->mScrollableView:Landroid/view/View;

    const-string v1, "computeVerticalScrollExtent"

    invoke-direct {p0, v0, v1}, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->reflectMethodValue(Landroid/view/View;Ljava/lang/String;)I

    move-result p0

    return p0

    .line 389
    :cond_d
    invoke-interface {v0}, Landroidx/core/view/ScrollingView;->computeVerticalScrollExtent()I

    move-result p0

    return p0
.end method

.method private getScrollOffset()I
    .registers 3

    .line 375
    iget-object v0, p0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->mScrollingView:Landroidx/core/view/ScrollingView;

    if-nez v0, :cond_d

    .line 376
    iget-object v0, p0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->mScrollableView:Landroid/view/View;

    const-string v1, "computeVerticalScrollOffset"

    invoke-direct {p0, v0, v1}, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->reflectMethodValue(Landroid/view/View;Ljava/lang/String;)I

    move-result p0

    return p0

    .line 378
    :cond_d
    invoke-interface {v0}, Landroidx/core/view/ScrollingView;->computeVerticalScrollOffset()I

    move-result p0

    return p0
.end method

.method private getScrollRange()I
    .registers 3

    .line 364
    iget-object v0, p0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->mScrollingView:Landroidx/core/view/ScrollingView;

    if-nez v0, :cond_d

    .line 365
    iget-object v0, p0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->mScrollableView:Landroid/view/View;

    const-string v1, "computeVerticalScrollRange"

    invoke-direct {p0, v0, v1}, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->reflectMethodValue(Landroid/view/View;Ljava/lang/String;)I

    move-result p0

    return p0

    .line 367
    :cond_d
    invoke-interface {v0}, Landroidx/core/view/ScrollingView;->computeVerticalScrollRange()I

    move-result p0

    return p0
.end method

.method private init(Landroid/util/AttributeSet;)V
    .registers 8

    .line 158
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 160
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    mul-int/lit8 v1, v1, 0xa

    iput v1, p0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->mMaxScrollDistance:I

    .line 162
    const-string v1, "#33FFFFFF"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->mArcColor:I

    .line 163
    const-string v1, "#99FFFFFF"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->mBarColor:I

    const/high16 v1, 0x40400000    # 3.0f

    const/4 v2, 0x1

    .line 164
    invoke-static {v2, v1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    iput v1, p0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->mBarMargin:F

    if-eqz p1, :cond_6d

    .line 166
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v3, Lcom/transsion/widgetslib/R$styleable;->OSSmartScrollbar:[I

    invoke-virtual {v1, p1, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 167
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v1

    const/4 v3, 0x0

    :goto_38
    if-ge v3, v1, :cond_6a

    .line 169
    invoke-virtual {p1, v3}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v4

    .line 170
    sget v5, Lcom/transsion/widgetslib/R$styleable;->OSSmartScrollbar_arc_color:I

    if-ne v4, v5, :cond_4c

    .line 171
    iget v5, p0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->mArcColor:I

    invoke-virtual {p1, v4, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->setArcColor(I)V

    goto :goto_67

    .line 172
    :cond_4c
    sget v5, Lcom/transsion/widgetslib/R$styleable;->OSSmartScrollbar_bar_color:I

    if-ne v4, v5, :cond_5a

    .line 173
    iget v5, p0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->mBarColor:I

    invoke-virtual {p1, v4, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->setBarColor(I)V

    goto :goto_67

    .line 174
    :cond_5a
    sget v5, Lcom/transsion/widgetslib/R$styleable;->OSSmartScrollbar_bar_margin:I

    if-ne v4, v5, :cond_67

    .line 175
    iget v5, p0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->mBarMargin:F

    invoke-virtual {p1, v4, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    invoke-virtual {p0, v4}, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->setBarMargin(F)V

    :cond_67
    :goto_67
    add-int/lit8 v3, v3, 0x1

    goto :goto_38

    .line 178
    :cond_6a
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 181
    :cond_6d
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->mPaint:Landroid/graphics/Paint;

    .line 182
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 183
    iget-object p1, p0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    const/high16 p1, 0x40200000    # 2.5f

    .line 185
    invoke-static {v2, p1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    iput p1, p0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->mStrokeWidth:F

    .line 187
    iget-object v1, p0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 189
    new-instance p1, Landroid/graphics/PathMeasure;

    invoke-direct {p1}, Landroid/graphics/PathMeasure;-><init>()V

    iput-object p1, p0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->mMeasureArc:Landroid/graphics/PathMeasure;

    .line 190
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->mPathArc:Landroid/graphics/Path;

    .line 191
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->mPathBar:Landroid/graphics/Path;

    const/high16 p1, 0x41100000    # 9.0f

    .line 193
    invoke-static {v2, p1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    iput p1, p0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->mMinBarLen:F

    const/4 p1, 0x2

    .line 195
    new-array p1, p1, [F

    fill-array-data p1, :array_dc

    sget-object v0, Landroid/view/View;->ALPHA:Landroid/util/Property;

    invoke-static {p0, v0, p1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->mAnimator:Landroid/animation/ObjectAnimator;

    .line 196
    invoke-virtual {p0}, Landroid/view/View;->getScrollBarFadeDuration()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object p1

    invoke-virtual {p0}, Landroid/view/View;->getScrollBarDefaultDelayBeforeFade()I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, 0x4

    mul-long/2addr v0, v2

    invoke-virtual {p1, v0, v1}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 198
    new-instance p1, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar$SmartGlobalLayoutListener;

    invoke-direct {p1, p0}, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar$SmartGlobalLayoutListener;-><init>(Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;)V

    iput-object p1, p0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->mOnGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 199
    new-instance p1, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar$SmartScrollChangedListener;

    invoke-direct {p1, p0}, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar$SmartScrollChangedListener;-><init>(Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;)V

    iput-object p1, p0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->mOnScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    return-void

    nop

    :array_dc
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private reflectMethodValue(Landroid/view/View;Ljava/lang/String;)I
    .registers 5

    const/4 p0, 0x0

    .line 304
    :try_start_1
    const-class v0, Landroid/view/View;

    invoke-virtual {v0, p2, p0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p2
    :try_end_7
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_7} :catch_8

    goto :goto_11

    :catch_8
    move-exception p2

    .line 306
    sget-object v0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->TAG:Ljava/lang/String;

    const-string v1, "get declared method error !"

    invoke-static {v0, v1, p2}, Lcom/transsion/widgetscore/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object p2, p0

    :goto_11
    const/4 v0, 0x0

    if-nez p2, :cond_15

    return v0

    :cond_15
    const/4 v1, 0x1

    .line 313
    invoke-virtual {p2, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 315
    :try_start_19
    invoke-virtual {p2, p1, p0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 316
    instance-of p1, p0, Ljava/lang/Integer;

    if-eqz p1, :cond_30

    .line 317
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_27
    .catch Ljava/lang/IllegalAccessException; {:try_start_19 .. :try_end_27} :catch_28
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_19 .. :try_end_27} :catch_28

    goto :goto_30

    :catch_28
    move-exception p0

    .line 320
    sget-object p1, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->TAG:Ljava/lang/String;

    const-string p2, "invoke method error !"

    invoke-static {p1, p2, p0}, Lcom/transsion/widgetscore/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_30
    :goto_30
    return v0
.end method

.method private releaseResources()V
    .registers 3

    .line 439
    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->unregisterScrollChangedListener()V

    .line 441
    iget-object v0, p0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->mAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 442
    iget-object v0, p0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->mAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 445
    :cond_10
    invoke-virtual {p0}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_23

    .line 448
    iget-object v1, p0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->mRunnableFade:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 449
    iget-object p0, p0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->mRunnableFade:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_23
    return-void
.end method

.method private sendScrollBarFadeMsg()V
    .registers 4

    .line 327
    iget-object v0, p0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->mAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 328
    iget-object v0, p0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->mAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    :cond_d
    const/high16 v0, 0x3f800000    # 1.0f

    .line 330
    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    .line 332
    invoke-virtual {p0}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_2c

    .line 335
    iget-object v1, p0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->mRunnableFade:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v1

    if-eqz v1, :cond_25

    .line 336
    iget-object v1, p0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->mRunnableFade:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 341
    :cond_25
    iget-object p0, p0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->mRunnableFade:Ljava/lang/Runnable;

    const-wide/16 v1, 0x64

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2c
    return-void
.end method


# virtual methods
.method public associateScrollableView(Landroid/view/View;)V
    .registers 5

    .line 287
    sget-object v0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "associateScrollView, scrollingView: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/widgetscore/utils/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_2f

    .line 288
    iget-object v0, p0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->mScrollableView:Landroid/view/View;

    if-ne v0, p1, :cond_1d

    goto :goto_2f

    .line 292
    :cond_1d
    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->unregisterScrollChangedListener()V

    .line 294
    iput-object p1, p0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->mScrollableView:Landroid/view/View;

    .line 295
    instance-of v0, p1, Landroidx/core/view/ScrollingView;

    if-eqz v0, :cond_29

    check-cast p1, Landroidx/core/view/ScrollingView;

    goto :goto_2a

    :cond_29
    const/4 p1, 0x0

    :goto_2a
    iput-object p1, p0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->mScrollingView:Landroidx/core/view/ScrollingView;

    .line 296
    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->registerScrollChangedListener()V

    :cond_2f
    :goto_2f
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 1

    .line 434
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 435
    invoke-direct {p0}, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->releaseResources()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 5

    .line 265
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 266
    iget-object v0, p0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->mPathBar:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_48

    iget-object v0, p0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->mViewGroup:Landroid/view/ViewGroup;

    if-nez v0, :cond_10

    goto :goto_48

    .line 270
    :cond_10
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 273
    iget-object v0, p0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->mViewGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v1

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 275
    iget-object v0, p0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->mArcColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 276
    iget-object v0, p0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->mPathArc:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 278
    iget-object v0, p0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->mBarColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 279
    iget-object v0, p0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->mPathBar:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 281
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 283
    invoke-direct {p0}, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->sendScrollBarFadeMsg()V

    :cond_48
    :goto_48
    return-void
.end method

.method protected onMeasure(II)V
    .registers 8

    .line 204
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 205
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 206
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    const/4 v2, 0x1

    const/high16 v3, 0x40000000    # 2.0f

    if-ne v0, v3, :cond_15

    .line 210
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    goto :goto_2c

    .line 212
    :cond_15
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    const/high16 v0, 0x40a00000    # 5.0f

    invoke-static {v2, v0, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    float-to-int p1, p1

    int-to-float p1, p1

    .line 213
    iget v0, p0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->mStrokeWidth:F

    iget v4, p0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->mBarMargin:F

    add-float/2addr v0, v4

    add-float/2addr p1, v0

    float-to-int p1, p1

    :goto_2c
    if-ne v1, v3, :cond_33

    .line 218
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    goto :goto_42

    .line 220
    :cond_33
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    const/high16 v0, 0x42340000    # 45.0f

    invoke-static {v2, v0, p2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p2

    float-to-int p2, p2

    .line 223
    :goto_42
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .registers 5

    .line 228
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 229
    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->refreshArc()V

    return-void
.end method

.method public onVisibilityAggregated(Z)V
    .registers 2

    .line 354
    invoke-super {p0, p1}, Landroid/view/View;->onVisibilityAggregated(Z)V

    if-eqz p1, :cond_9

    .line 356
    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->registerScrollChangedListener()V

    return-void

    .line 358
    :cond_9
    invoke-direct {p0}, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->releaseResources()V

    return-void
.end method

.method public refreshArc()V
    .registers 12

    .line 233
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 234
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_d

    .line 235
    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->mViewGroup:Landroid/view/ViewGroup;

    goto :goto_10

    :cond_d
    const/4 v0, 0x0

    .line 237
    iput-object v0, p0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->mViewGroup:Landroid/view/ViewGroup;

    .line 239
    :goto_10
    iget-object v0, p0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->mViewGroup:Landroid/view/ViewGroup;

    if-nez v0, :cond_15

    return-void

    .line 243
    :cond_15
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->mViewGroup:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 244
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->mStrokeWidth:F

    sub-float/2addr v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    iget v3, p0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->mBarMargin:F

    sub-float v7, v2, v3

    .line 246
    iget-object v2, p0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->mPathArc:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 247
    iget-object v4, p0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->mPathArc:Landroid/graphics/Path;

    neg-float v5, v7

    const/high16 v9, -0x3cdc0000    # -164.0f

    const/high16 v10, -0x3e000000    # -32.0f

    move v6, v5

    move v8, v7

    invoke-virtual/range {v4 .. v10}, Landroid/graphics/Path;->addArc(FFFFFF)V

    .line 248
    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    move-result v2

    if-nez v2, :cond_4a

    const/high16 v2, -0x3ccc0000    # -180.0f

    .line 249
    invoke-virtual {p0, v2}, Landroid/view/View;->setRotation(F)V

    .line 251
    :cond_4a
    iget-object v2, p0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->mMeasureArc:Landroid/graphics/PathMeasure;

    iget-object v3, p0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->mPathArc:Landroid/graphics/Path;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/graphics/PathMeasure;->setPath(Landroid/graphics/Path;Z)V

    .line 253
    iget-object v2, p0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->mMeasureArc:Landroid/graphics/PathMeasure;

    invoke-virtual {v2}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v2

    .line 254
    iget v3, p0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->mBarLen:F

    sub-float v3, v2, v3

    iput v3, p0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->mStopD:F

    .line 255
    iget v3, p0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->mMinBarLen:F

    sub-float v3, v2, v3

    iput v3, p0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->mMaxBarLen:F

    .line 256
    sget-object v3, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "refreshArc, arcLen: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", mBarLen: "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->mBarLen:F

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", mMinBarLen: "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->mMinBarLen:F

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", mMaxBarLen: "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->mMaxBarLen:F

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", mStopD: "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->mStopD:F

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", w: "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", h: "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", radius: "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/transsion/widgetscore/utils/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    iget-object v0, p0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->mPathBar:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 259
    iget v0, p0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->mStopD:F

    iget v1, p0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->mRatio:F

    mul-float/2addr v0, v1

    .line 260
    iget-object v1, p0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->mMeasureArc:Landroid/graphics/PathMeasure;

    iget v2, p0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->mBarLen:F

    add-float/2addr v2, v0

    iget-object p0, p0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->mPathBar:Landroid/graphics/Path;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, p0, v3}, Landroid/graphics/PathMeasure;->getSegment(FFLandroid/graphics/Path;Z)Z

    return-void
.end method

.method public registerScrollChangedListener()V
    .registers 3

    .line 408
    iget-object v0, p0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->mScrollableView:Landroid/view/View;

    if-nez v0, :cond_5

    goto :goto_9

    .line 412
    :cond_5
    iget-boolean v1, p0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->mIsRegisterScrollChangedListener:Z

    if-eqz v1, :cond_a

    :goto_9
    return-void

    :cond_a
    const/4 v1, 0x1

    .line 415
    iput-boolean v1, p0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->mIsRegisterScrollChangedListener:Z

    .line 416
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->mOnGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 417
    iget-object v0, p0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->mScrollableView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->mOnScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    return-void
.end method

.method public setArcColor(I)V
    .registers 2

    .line 396
    iput p1, p0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->mArcColor:I

    return-void
.end method

.method public setBarColor(I)V
    .registers 2

    .line 400
    iput p1, p0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->mBarColor:I

    return-void
.end method

.method public setBarMargin(F)V
    .registers 2

    .line 404
    iput p1, p0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->mBarMargin:F

    return-void
.end method

.method public unregisterScrollChangedListener()V
    .registers 3

    .line 421
    iget-object v0, p0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->mScrollableView:Landroid/view/View;

    if-nez v0, :cond_5

    goto :goto_20

    .line 425
    :cond_5
    iget-boolean v1, p0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->mIsRegisterScrollChangedListener:Z

    if-eqz v1, :cond_20

    const/4 v1, 0x0

    .line 426
    iput-boolean v1, p0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->mIsRegisterScrollChangedListener:Z

    .line 427
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->mOnGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 428
    iget-object v0, p0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->mScrollableView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->mOnScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    :cond_20
    :goto_20
    return-void
.end method
