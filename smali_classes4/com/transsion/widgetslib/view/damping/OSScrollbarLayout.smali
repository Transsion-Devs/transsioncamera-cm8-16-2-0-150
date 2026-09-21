.class public Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout$ScrollBarView;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "OSScrollbarLayout"

.field private static final TYPE_RECYCLER_VIEW:I = 0x1

.field private static final TYPE_SCROLL_VIEW:I


# instance fields
.field private mAnimScrollBarFade:Landroid/animation/ValueAnimator;

.field private mBarBottom:I

.field private mBarCanSlideDistance:I

.field private mBarMarginRight:I

.field private mBarMarginTop:I

.field private mBarMinLen:I

.field private mBarPullMinLen:I

.field private mBarTop:I

.field private mBarWidth:I

.field private mBottomEdgeAnimListener:Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation$z1OoOconst;

.field private mHasScrollBar:Z

.field private mHeight:I

.field private mIsDownScroll:Z

.field private mLayoutContentCanSlideDistance:I

.field private mLayoutType:I

.field private final mRect:Landroid/graphics/Rect;

.field private final mRunnableFade:Ljava/lang/Runnable;

.field private mScrollRange:I

.field private mSpringAnimBottomEdge:Lcom/transsion/effectengine/bounceeffect/dynamicanimation/SpringAnimation;

.field private mSpringAnimTopEdge:Lcom/transsion/effectengine/bounceeffect/dynamicanimation/SpringAnimation;

.field private mTopEdgeAnimListener:Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation$z1OoOconst;

.field private mTranslationY:F

.field private mViewOver:Landroid/view/View;

.field private mViewScrollBar:Landroid/view/View;

.field private mWidth:I


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 61
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 50
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->mRect:Landroid/graphics/Rect;

    const/4 p1, 0x0

    .line 55
    iput p1, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->mLayoutType:I

    const/4 p1, 0x0

    .line 58
    iput p1, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->mTranslationY:F

    .line 545
    new-instance p1, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout$9;

    invoke-direct {p1, p0}, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout$9;-><init>(Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;)V

    iput-object p1, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->mRunnableFade:Ljava/lang/Runnable;

    const/4 p1, 0x0

    .line 62
    invoke-direct {p0, p1}, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->init(Landroid/content/res/TypedArray;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .line 66
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 50
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->mRect:Landroid/graphics/Rect;

    const/4 v0, 0x0

    .line 55
    iput v0, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->mLayoutType:I

    const/4 v0, 0x0

    .line 58
    iput v0, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->mTranslationY:F

    .line 545
    new-instance v0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout$9;

    invoke-direct {v0, p0}, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout$9;-><init>(Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;)V

    iput-object v0, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->mRunnableFade:Ljava/lang/Runnable;

    .line 67
    sget-object v0, Lcom/transsion/widgetslib/R$styleable;->OSScrollbarLayout:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->init(Landroid/content/res/TypedArray;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 6

    .line 71
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 50
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->mRect:Landroid/graphics/Rect;

    const/4 v0, 0x0

    .line 55
    iput v0, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->mLayoutType:I

    const/4 v1, 0x0

    .line 58
    iput v1, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->mTranslationY:F

    .line 545
    new-instance v1, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout$9;

    invoke-direct {v1, p0}, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout$9;-><init>(Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;)V

    iput-object v1, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->mRunnableFade:Ljava/lang/Runnable;

    .line 72
    sget-object v1, Lcom/transsion/widgetslib/R$styleable;->OSScrollbarLayout:[I

    invoke-virtual {p1, p2, v1, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->init(Landroid/content/res/TypedArray;)V

    return-void
.end method

.method static synthetic access$000(Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;)Z
    .registers 1

    .line 39
    iget-boolean p0, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->mHasScrollBar:Z

    return p0
.end method

.method static synthetic access$100(Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;)Landroid/view/View;
    .registers 1

    .line 39
    iget-object p0, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->mViewScrollBar:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;)Landroid/graphics/Rect;
    .registers 1

    .line 39
    iget-object p0, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->mRect:Landroid/graphics/Rect;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;F)V
    .registers 2

    .line 39
    invoke-direct {p0, p1}, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->updateScrollBarBottom(F)V

    return-void
.end method

.method static synthetic access$1200(Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;I)V
    .registers 2

    .line 39
    invoke-direct {p0, p1}, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->updateScrollBarTop(I)V

    return-void
.end method

.method static synthetic access$1300(Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;)Landroid/animation/ValueAnimator;
    .registers 1

    .line 39
    iget-object p0, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->mAnimScrollBarFade:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;Landroid/animation/Animator;)V
    .registers 2

    .line 39
    invoke-direct {p0, p1}, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->cancelAnim(Landroid/animation/Animator;)V

    return-void
.end method

.method static synthetic access$202(Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;Z)Z
    .registers 2

    .line 39
    iput-boolean p1, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->mIsDownScroll:Z

    return p1
.end method

.method static synthetic access$300(Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;Landroid/view/View;II)V
    .registers 4

    .line 39
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->updateScrollBar(Landroid/view/View;II)V

    return-void
.end method

.method static synthetic access$400(Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;)V
    .registers 1

    .line 39
    invoke-direct {p0}, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->sendScrollBarFadeMsg()V

    return-void
.end method

.method static synthetic access$500(Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;)I
    .registers 1

    .line 39
    iget p0, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->mScrollRange:I

    return p0
.end method

.method static synthetic access$502(Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;I)I
    .registers 2

    .line 39
    iput p1, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->mScrollRange:I

    return p1
.end method

.method static synthetic access$602(Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;I)I
    .registers 2

    .line 39
    iput p1, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->mHeight:I

    return p1
.end method

.method static synthetic access$700(Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;)V
    .registers 1

    .line 39
    invoke-direct {p0}, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->playAnimScrollBarFade()V

    return-void
.end method

.method static synthetic access$800(Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;)I
    .registers 1

    .line 39
    iget p0, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->mBarTop:I

    return p0
.end method

.method static synthetic access$802(Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;I)I
    .registers 2

    .line 39
    iput p1, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->mBarTop:I

    return p1
.end method

.method static synthetic access$900(Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;)I
    .registers 1

    .line 39
    iget p0, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->mBarBottom:I

    return p0
.end method

.method static synthetic access$902(Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;I)I
    .registers 2

    .line 39
    iput p1, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->mBarBottom:I

    return p1
.end method

.method private cancelAnim(Landroid/animation/Animator;)V
    .registers 2

    if-eqz p1, :cond_5

    .line 585
    invoke-virtual {p1}, Landroid/animation/Animator;->cancel()V

    :cond_5
    return-void
.end method

.method private drawScrollBar()V
    .registers 5

    .line 228
    iget-object v0, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->mViewOver:Landroid/view/View;

    instance-of v1, v0, Landroidx/recyclerview/widget/RecyclerView;

    const-wide/16 v2, 0x64

    if-eqz v1, :cond_12

    .line 229
    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    .line 230
    new-instance v1, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout$4;

    invoke-direct {v1, p0, v0}, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout$4;-><init>(Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;Landroidx/recyclerview/widget/RecyclerView;)V

    invoke-virtual {p0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 249
    :cond_12
    iget-object v0, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->mViewOver:Landroid/view/View;

    instance-of v0, v0, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;

    if-eqz v0, :cond_27

    .line 250
    invoke-direct {p0}, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->onEdgeEffect()V

    .line 251
    iget-object v0, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->mViewOver:Landroid/view/View;

    check-cast v0, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;

    .line 252
    new-instance v1, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout$5;

    invoke-direct {v1, p0, v0}, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout$5;-><init>(Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;)V

    invoke-virtual {p0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_27
    return-void
.end method

.method private getFieldValue(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .registers 3

    .line 293
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    .line 297
    :try_start_4
    invoke-virtual {p0, p2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    const/4 p2, 0x1

    .line 298
    invoke-virtual {p0, p2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 299
    invoke-virtual {p0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_10
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_10} :catch_11
    .catch Ljava/lang/NoSuchFieldException; {:try_start_4 .. :try_end_10} :catch_11
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_10} :catch_11
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_10} :catch_11

    return-object p0

    :catch_11
    move-exception p0

    .line 301
    sget-object p1, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->TAG:Ljava/lang/String;

    const-string p2, "getFieldValue error"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method private init(Landroid/content/res/TypedArray;)V
    .registers 8

    .line 76
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/high16 v1, 0x40c00000    # 6.0f

    const/4 v2, 0x1

    .line 77
    invoke-static {v2, v1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    const/high16 v3, 0x40000000    # 2.0f

    .line 78
    invoke-static {v2, v3, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    float-to-int v3, v3

    const/high16 v4, 0x40400000    # 3.0f

    .line 79
    invoke-static {v2, v4, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v4

    float-to-int v4, v4

    if-nez p1, :cond_27

    .line 81
    iput v1, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->mBarMarginRight:I

    .line 82
    iput v3, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->mBarMarginTop:I

    .line 83
    iput v4, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->mBarWidth:I

    goto :goto_42

    .line 85
    :cond_27
    sget v5, Lcom/transsion/widgetslib/R$styleable;->OSScrollbarLayout_os_scrollbar_margin_right:I

    invoke-virtual {p1, v5, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    iput v1, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->mBarMarginRight:I

    .line 86
    sget v1, Lcom/transsion/widgetslib/R$styleable;->OSScrollbarLayout_os_scrollbar_margin_top:I

    invoke-virtual {p1, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    iput v1, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->mBarMarginTop:I

    .line 87
    sget v1, Lcom/transsion/widgetslib/R$styleable;->OSScrollbarLayout_os_scrollbar_width:I

    invoke-virtual {p1, v1, v4}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    iput v1, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->mBarWidth:I

    .line 88
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    :goto_42
    const/high16 p1, 0x41000000    # 8.0f

    .line 91
    invoke-static {v2, p1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->mBarPullMinLen:I

    const/high16 p1, 0x42700000    # 60.0f

    .line 92
    invoke-static {v2, p1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->mBarMinLen:I

    return-void
.end method

.method private initAnimScrollBarFade()V
    .registers 4

    const/4 v0, 0x2

    .line 96
    new-array v0, v0, [F

    fill-array-data v0, :array_2c

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->mAnimScrollBarFade:Landroid/animation/ValueAnimator;

    .line 97
    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 98
    iget-object v0, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->mAnimScrollBarFade:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->mViewOver:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getScrollBarFadeDuration()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 99
    iget-object v0, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->mAnimScrollBarFade:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout$1;

    invoke-direct {v1, p0}, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout$1;-><init>(Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void

    nop

    :array_2c
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private onEdgeEffect()V
    .registers 4

    .line 423
    iget-object v0, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->mViewOver:Landroid/view/View;

    if-nez v0, :cond_6

    goto/16 :goto_93

    .line 427
    :cond_6
    iget-object v1, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->mSpringAnimTopEdge:Lcom/transsion/effectengine/bounceeffect/dynamicanimation/SpringAnimation;

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->mSpringAnimBottomEdge:Lcom/transsion/effectengine/bounceeffect/dynamicanimation/SpringAnimation;

    if-nez v1, :cond_68

    .line 428
    :cond_e
    instance-of v1, v0, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v1, :cond_3c

    .line 429
    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    .line 442
    const-string v1, "mTopGlow"

    invoke-direct {p0, v0, v1}, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->getFieldValue(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 443
    instance-of v2, v1, Lcom/transsion/effectengine/bounceeffect/BounceEdgeEffect;

    if-eqz v2, :cond_28

    iget-object v2, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->mSpringAnimTopEdge:Lcom/transsion/effectengine/bounceeffect/dynamicanimation/SpringAnimation;

    if-nez v2, :cond_28

    .line 444
    check-cast v1, Lcom/transsion/effectengine/bounceeffect/BounceEdgeEffect;

    .line 445
    iget-object v1, v1, Lcom/transsion/effectengine/bounceeffect/BounceEdgeEffect;->z1OoOif:Lcom/transsion/effectengine/bounceeffect/dynamicanimation/SpringAnimation;

    iput-object v1, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->mSpringAnimTopEdge:Lcom/transsion/effectengine/bounceeffect/dynamicanimation/SpringAnimation;

    .line 448
    :cond_28
    const-string v1, "mBottomGlow"

    invoke-direct {p0, v0, v1}, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->getFieldValue(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 449
    instance-of v1, v0, Lcom/transsion/effectengine/bounceeffect/BounceEdgeEffect;

    if-eqz v1, :cond_3c

    iget-object v1, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->mSpringAnimBottomEdge:Lcom/transsion/effectengine/bounceeffect/dynamicanimation/SpringAnimation;

    if-nez v1, :cond_3c

    .line 450
    check-cast v0, Lcom/transsion/effectengine/bounceeffect/BounceEdgeEffect;

    .line 451
    iget-object v0, v0, Lcom/transsion/effectengine/bounceeffect/BounceEdgeEffect;->z1OoOif:Lcom/transsion/effectengine/bounceeffect/dynamicanimation/SpringAnimation;

    iput-object v0, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->mSpringAnimBottomEdge:Lcom/transsion/effectengine/bounceeffect/dynamicanimation/SpringAnimation;

    .line 455
    :cond_3c
    iget-object v0, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->mViewOver:Landroid/view/View;

    instance-of v1, v0, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;

    if-eqz v1, :cond_68

    .line 456
    check-cast v0, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;

    .line 457
    invoke-virtual {v0}, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->getEdgeGlowTop()Landroid/widget/EdgeEffect;

    move-result-object v1

    instance-of v1, v1, Lcom/transsion/effectengine/bounceeffect/BounceEdgeEffect;

    if-eqz v1, :cond_56

    .line 458
    invoke-virtual {v0}, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->getEdgeGlowTop()Landroid/widget/EdgeEffect;

    move-result-object v1

    check-cast v1, Lcom/transsion/effectengine/bounceeffect/BounceEdgeEffect;

    .line 459
    iget-object v1, v1, Lcom/transsion/effectengine/bounceeffect/BounceEdgeEffect;->z1OoOif:Lcom/transsion/effectengine/bounceeffect/dynamicanimation/SpringAnimation;

    iput-object v1, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->mSpringAnimTopEdge:Lcom/transsion/effectengine/bounceeffect/dynamicanimation/SpringAnimation;

    .line 462
    :cond_56
    invoke-virtual {v0}, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->getEdgeGlowBottom()Landroid/widget/EdgeEffect;

    move-result-object v1

    instance-of v1, v1, Lcom/transsion/effectengine/bounceeffect/BounceEdgeEffect;

    if-eqz v1, :cond_68

    .line 463
    invoke-virtual {v0}, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->getEdgeGlowBottom()Landroid/widget/EdgeEffect;

    move-result-object v0

    check-cast v0, Lcom/transsion/effectengine/bounceeffect/BounceEdgeEffect;

    .line 464
    iget-object v0, v0, Lcom/transsion/effectengine/bounceeffect/BounceEdgeEffect;->z1OoOif:Lcom/transsion/effectengine/bounceeffect/dynamicanimation/SpringAnimation;

    iput-object v0, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->mSpringAnimBottomEdge:Lcom/transsion/effectengine/bounceeffect/dynamicanimation/SpringAnimation;

    .line 470
    :cond_68
    :try_start_68
    iget-object v0, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->mSpringAnimTopEdge:Lcom/transsion/effectengine/bounceeffect/dynamicanimation/SpringAnimation;

    if-eqz v0, :cond_7f

    iget-object v0, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->mTopEdgeAnimListener:Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation$z1OoOconst;

    if-nez v0, :cond_7f

    .line 471
    new-instance v0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout$7;

    invoke-direct {v0, p0}, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout$7;-><init>(Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;)V

    iput-object v0, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->mTopEdgeAnimListener:Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation$z1OoOconst;

    .line 482
    iget-object v1, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->mSpringAnimTopEdge:Lcom/transsion/effectengine/bounceeffect/dynamicanimation/SpringAnimation;

    invoke-virtual {v1, v0}, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation;->addUpdateListener(Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation$z1OoOconst;)Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation;

    goto :goto_7f

    :catch_7d
    move-exception v0

    goto :goto_94

    .line 485
    :cond_7f
    :goto_7f
    iget-object v0, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->mSpringAnimBottomEdge:Lcom/transsion/effectengine/bounceeffect/dynamicanimation/SpringAnimation;

    if-eqz v0, :cond_93

    iget-object v0, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->mBottomEdgeAnimListener:Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation$z1OoOconst;

    if-nez v0, :cond_93

    .line 486
    new-instance v0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout$8;

    invoke-direct {v0, p0}, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout$8;-><init>(Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;)V

    iput-object v0, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->mBottomEdgeAnimListener:Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation$z1OoOconst;

    .line 497
    iget-object v1, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->mSpringAnimBottomEdge:Lcom/transsion/effectengine/bounceeffect/dynamicanimation/SpringAnimation;

    invoke-virtual {v1, v0}, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation;->addUpdateListener(Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation$z1OoOconst;)Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation;
    :try_end_93
    .catch Ljava/lang/Exception; {:try_start_68 .. :try_end_93} :catch_7d

    :cond_93
    :goto_93
    return-void

    :goto_94
    const/4 v1, 0x0

    .line 500
    iput-object v1, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->mBottomEdgeAnimListener:Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation$z1OoOconst;

    .line 501
    iput-object v1, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->mTopEdgeAnimListener:Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation$z1OoOconst;

    .line 502
    sget-object p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->TAG:Ljava/lang/String;

    const-string v1, "onEdgeEffect error"

    invoke-static {p0, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method private playAnimScrollBarFade()V
    .registers 6

    .line 111
    iget-object v0, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->mViewScrollBar:Landroid/view/View;

    if-eqz v0, :cond_30

    iget-boolean v0, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->mHasScrollBar:Z

    if-nez v0, :cond_9

    goto :goto_30

    .line 115
    :cond_9
    iget-object v0, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->mAnimScrollBarFade:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_10

    .line 116
    invoke-direct {p0}, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->initAnimScrollBarFade()V

    .line 119
    :cond_10
    iget-object v0, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->mAnimScrollBarFade:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 121
    iget-object v0, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->mViewScrollBar:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 123
    iget-object v0, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->mAnimScrollBarFade:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->mViewOver:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getScrollBarDefaultDelayBeforeFade()I

    move-result v1

    int-to-long v1, v1

    const-wide/16 v3, 0x4

    mul-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 124
    iget-object p0, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->mAnimScrollBarFade:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    :cond_30
    :goto_30
    return-void
.end method

.method private releaseResource()V
    .registers 2

    .line 523
    iget-object v0, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->mAnimScrollBarFade:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v0}, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->cancelAnim(Landroid/animation/Animator;)V

    .line 525
    invoke-virtual {p0}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_10

    .line 527
    iget-object p0, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->mRunnableFade:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_10
    return-void
.end method

.method private sendScrollBarFadeMsg()V
    .registers 4

    .line 532
    invoke-virtual {p0}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_1e

    .line 533
    iget-boolean v1, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->mHasScrollBar:Z

    if-eqz v1, :cond_1e

    .line 535
    iget-object v1, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->mRunnableFade:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 536
    iget-object v1, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->mRunnableFade:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 541
    :cond_17
    iget-object p0, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->mRunnableFade:Ljava/lang/Runnable;

    const-wide/16 v1, 0x64

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1e
    return-void
.end method

.method private translateScrollBar(I)V
    .registers 5

    .line 392
    iget-object v0, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->mViewScrollBar:Landroid/view/View;

    if-eqz v0, :cond_5a

    const/4 v0, 0x1

    .line 393
    iput-boolean v0, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->mHasScrollBar:Z

    .line 395
    iget-object v1, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->mAnimScrollBarFade:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v1}, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->cancelAnim(Landroid/animation/Animator;)V

    .line 396
    iget-object v1, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->mViewScrollBar:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getAlpha()F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_1d

    .line 397
    iget-object v1, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->mViewScrollBar:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    :cond_1d
    int-to-float p1, p1

    mul-float/2addr p1, v2

    .line 400
    iget v1, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->mLayoutContentCanSlideDistance:I

    int-to-float v1, v1

    div-float/2addr p1, v1

    .line 401
    iget v1, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->mBarCanSlideDistance:I

    int-to-float v1, v1

    mul-float/2addr p1, v1

    .line 402
    iget v1, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->mBarMarginTop:I

    int-to-float v1, v1

    add-float/2addr v1, p1

    .line 403
    iget-object p1, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->mViewScrollBar:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result p1

    .line 405
    iget v2, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->mLayoutType:I

    if-ne v2, v0, :cond_4d

    .line 406
    iget-boolean v0, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->mIsDownScroll:Z

    if-eqz v0, :cond_43

    cmpl-float p1, v1, p1

    if-lez p1, :cond_52

    .line 408
    iget-object p1, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->mViewScrollBar:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_52

    :cond_43
    cmpg-float p1, v1, p1

    if-gez p1, :cond_52

    .line 412
    iget-object p1, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->mViewScrollBar:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_52

    .line 416
    :cond_4d
    iget-object p1, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->mViewScrollBar:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 418
    :cond_52
    :goto_52
    iget-object p1, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->mViewScrollBar:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result p1

    iput p1, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->mTranslationY:F

    :cond_5a
    return-void
.end method

.method private updateScrollBar(Landroid/view/View;II)V
    .registers 10

    if-nez p1, :cond_3

    return-void

    .line 318
    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 319
    invoke-virtual {p1}, Landroid/view/View;->getVerticalScrollbarThumbDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const/4 v3, 0x0

    if-lez v1, :cond_fd

    if-lez v0, :cond_fd

    if-ge v0, p2, :cond_fd

    if-eqz v2, :cond_fd

    .line 322
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_24

    goto/16 :goto_fd

    .line 337
    :cond_24
    iget v4, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->mScrollRange:I

    if-ne v4, p2, :cond_34

    iget v4, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->mHeight:I

    if-ne v4, v0, :cond_34

    iget v4, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->mWidth:I

    if-ne v4, v1, :cond_34

    .line 338
    invoke-direct {p0, p3}, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->translateScrollBar(I)V

    return-void

    .line 342
    :cond_34
    iget-object v4, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->mViewScrollBar:Landroid/view/View;

    if-nez v4, :cond_56

    .line 343
    new-instance v4, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout$ScrollBarView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout$ScrollBarView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->mViewScrollBar:Landroid/view/View;

    .line 344
    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 345
    iget-object v4, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->mViewScrollBar:Landroid/view/View;

    const-string v5, "#7FA1A1A1"

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundColor(I)V

    .line 346
    iget-object v4, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->mViewScrollBar:Landroid/view/View;

    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->bringChildToFront(Landroid/view/View;)V

    .line 349
    :cond_56
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    iget v4, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->mBarWidth:I

    sub-int/2addr p1, v4

    iget v4, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->mBarMarginRight:I

    sub-int/2addr p1, v4

    .line 350
    iget-object v4, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->mViewScrollBar:Landroid/view/View;

    invoke-static {}, Lcom/transsion/widgetthemes/util/Utils;->isRtl()Z

    move-result v5

    if-eqz v5, :cond_69

    neg-int p1, p1

    :cond_69
    int-to-float p1, p1

    invoke-virtual {v4, p1}, Landroid/view/View;->setTranslationX(F)V

    .line 351
    sget-object p1, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateScrollBar, mScrollRange: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->mScrollRange:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", scrollRange: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", mHeight: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->mHeight:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", height: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", mWidth: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->mWidth:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", width: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v4}, Lcom/transsion/widgetscore/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    .line 355
    iget-object v2, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->mViewScrollBar:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    if-eqz v2, :cond_d8

    .line 357
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    iput p1, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 359
    iget v4, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->mBarWidth:I

    iput v4, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 360
    iget v4, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->mBarMinLen:I

    if-ge p1, v4, :cond_d3

    if-le v4, v0, :cond_cf

    .line 362
    iput v0, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->mBarMinLen:I

    .line 364
    :cond_cf
    iget p1, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->mBarMinLen:I

    iput p1, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 366
    :cond_d3
    iget-object p1, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->mViewScrollBar:Landroid/view/View;

    invoke-virtual {p0, p1, v2}, Landroid/view/ViewGroup;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_d8
    sub-int p1, p2, v0

    .line 369
    iput p1, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->mLayoutContentCanSlideDistance:I

    .line 370
    iget p1, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->mBarMarginTop:I

    mul-int/lit8 p1, p1, 0x2

    sub-int p1, v0, p1

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    sub-int/2addr p1, v2

    iput p1, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->mBarCanSlideDistance:I

    if-gez p1, :cond_eb

    .line 372
    iput v3, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->mBarCanSlideDistance:I

    .line 374
    :cond_eb
    iput p2, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->mScrollRange:I

    .line 375
    iput v0, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->mHeight:I

    .line 376
    iput v1, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->mWidth:I

    .line 378
    new-instance p1, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout$6;

    invoke-direct {p1, p0}, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout$6;-><init>(Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;)V

    invoke-virtual {p0, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 388
    invoke-direct {p0, p3}, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->translateScrollBar(I)V

    return-void

    .line 323
    :cond_fd
    :goto_fd
    invoke-virtual {p0}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object p1

    if-eqz p1, :cond_110

    .line 324
    iget-object p2, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->mRunnableFade:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result p2

    if-eqz p2, :cond_110

    .line 325
    iget-object p2, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->mRunnableFade:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 327
    :cond_110
    iget-object p1, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->mAnimScrollBarFade:Landroid/animation/ValueAnimator;

    invoke-direct {p0, p1}, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->cancelAnim(Landroid/animation/Animator;)V

    .line 328
    iget-object p1, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->mViewScrollBar:Landroid/view/View;

    if-eqz p1, :cond_11d

    const/4 p2, 0x0

    .line 329
    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    .line 331
    :cond_11d
    sget-object p1, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "updateScrollBar, mHasScrollBar: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->mHasScrollBar:Z

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p3, ", mViewScrollBar:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->mViewScrollBar:Landroid/view/View;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/transsion/widgetscore/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    iput-boolean v3, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->mHasScrollBar:Z

    return-void
.end method

.method private updateScrollBarBottom(F)V
    .registers 5

    .line 158
    iget-object v0, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->mRect:Landroid/graphics/Rect;

    iget v1, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->mBarBottom:I

    int-to-float v1, v1

    sub-float/2addr v1, p1

    float-to-int p1, v1

    iput p1, v0, Landroid/graphics/Rect;->bottom:I

    .line 159
    iget v1, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->mBarPullMinLen:I

    iget p0, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->mBarTop:I

    add-int v2, v1, p0

    if-gt p1, v2, :cond_14

    add-int/2addr v1, p0

    .line 160
    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    :cond_14
    return-void
.end method

.method private updateScrollBarTop(I)V
    .registers 5

    .line 165
    iget-object v0, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->mRect:Landroid/graphics/Rect;

    iget v1, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->mBarTop:I

    add-int/2addr p1, v1

    iput p1, v0, Landroid/graphics/Rect;->top:I

    .line 166
    iget v1, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->mBarPullMinLen:I

    add-int/2addr p1, v1

    iget v2, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->mBarBottom:I

    if-lt p1, v2, :cond_11

    sub-int/2addr v2, v1

    .line 167
    iput v2, v0, Landroid/graphics/Rect;->top:I

    .line 169
    :cond_11
    iget-object p1, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->mViewScrollBar:Landroid/view/View;

    iget p0, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->mTranslationY:F

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    add-float/2addr p0, v0

    invoke-virtual {p1, p0}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method


# virtual methods
.method protected onDetachedFromWindow()V
    .registers 1

    .line 518
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 519
    invoke-direct {p0}, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->releaseResource()V

    return-void
.end method

.method public onOverScrollUpdated(F)V
    .registers 5

    .line 129
    iget-object v0, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->mViewScrollBar:Landroid/view/View;

    if-eqz v0, :cond_5f

    iget-boolean v0, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->mHasScrollBar:Z

    if-nez v0, :cond_9

    goto :goto_5f

    .line 133
    :cond_9
    iget-object v0, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->mAnimScrollBarFade:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v0}, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->cancelAnim(Landroid/animation/Animator;)V

    .line 134
    iget-object v0, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->mViewScrollBar:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1f

    .line 135
    iget-object v0, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->mViewScrollBar:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 138
    :cond_1f
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v2, p1, v1

    if-lez v2, :cond_2c

    .line 140
    invoke-direct {p0, v0}, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->updateScrollBarBottom(F)V

    goto :goto_42

    :cond_2c
    cmpg-float p1, p1, v1

    if-gez p1, :cond_35

    float-to-int p1, v0

    .line 142
    invoke-direct {p0, p1}, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->updateScrollBarTop(I)V

    goto :goto_42

    .line 144
    :cond_35
    iget-object p1, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->mRect:Landroid/graphics/Rect;

    iget v0, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->mBarTop:I

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 145
    iget v0, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->mBarBottom:I

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 146
    invoke-direct {p0}, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->sendScrollBarFadeMsg()V

    .line 149
    :goto_42
    iget-object p1, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->mViewScrollBar:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    if-eqz p1, :cond_5f

    .line 151
    iget-object v0, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 152
    iget-object v0, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 153
    iget-object v0, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->mViewScrollBar:Landroid/view/View;

    invoke-virtual {p0, v0, p1}, Landroid/view/ViewGroup;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_5f
    :goto_5f
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .registers 5

    .line 308
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 309
    iget-object p1, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->mViewOver:Landroid/view/View;

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2, p2}, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->updateScrollBar(Landroid/view/View;II)V

    return-void
.end method

.method public onVisibilityAggregated(Z)V
    .registers 2

    .line 508
    invoke-super {p0, p1}, Landroid/view/View;->onVisibilityAggregated(Z)V

    if-eqz p1, :cond_9

    .line 510
    invoke-direct {p0}, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->playAnimScrollBarFade()V

    return-void

    .line 512
    :cond_9
    iget-object p1, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->mAnimScrollBarFade:Landroid/animation/ValueAnimator;

    invoke-direct {p0, p1}, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->cancelAnim(Landroid/animation/Animator;)V

    return-void
.end method

.method public setOverScrollView(Landroid/view/View;)V
    .registers 4

    if-nez p1, :cond_3

    return-void

    .line 177
    :cond_3
    iput-object p1, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->mViewOver:Landroid/view/View;

    .line 180
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setVerticalScrollbarThumbDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v0, 0x1

    .line 181
    invoke-virtual {p1, v0}, Landroid/view/View;->setVerticalScrollBarEnabled(Z)V

    .line 184
    instance-of v1, p1, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v1, :cond_23

    .line 185
    iput v0, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->mLayoutType:I

    .line 186
    move-object v0, p1

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    .line 187
    new-instance v1, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout$2;

    invoke-direct {v1, p0, v0}, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout$2;-><init>(Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;Landroidx/recyclerview/widget/RecyclerView;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 201
    :cond_23
    instance-of v0, p1, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;

    if-eqz v0, :cond_31

    .line 202
    check-cast p1, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;

    .line 203
    new-instance v0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout$3;

    invoke-direct {v0, p0, p1}, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout$3;-><init>(Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnScrollChangeListener(Landroid/view/View$OnScrollChangeListener;)V

    .line 212
    :cond_31
    invoke-direct {p0}, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->drawScrollBar()V

    return-void
.end method

.method public updateScrollBar()V
    .registers 4

    .line 271
    iget-object v0, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->mViewOver:Landroid/view/View;

    if-nez v0, :cond_5

    return-void

    .line 277
    :cond_5
    :try_start_5
    const-class v0, Landroid/view/View;

    const-string v1, "awakenScrollBars"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x1

    .line 278
    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 279
    iget-object v1, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->mViewOver:Landroid/view/View;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_17
    .catch Ljava/lang/NoSuchMethodException; {:try_start_5 .. :try_end_17} :catch_1b
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_5 .. :try_end_17} :catch_1b
    .catch Ljava/lang/IllegalAccessException; {:try_start_5 .. :try_end_17} :catch_1b

    .line 289
    invoke-direct {p0}, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->drawScrollBar()V

    return-void

    :catch_1b
    move-exception p0

    .line 281
    sget-object v0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->TAG:Ljava/lang/String;

    const-string v1, "invoke awakenScrollBars error"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method
