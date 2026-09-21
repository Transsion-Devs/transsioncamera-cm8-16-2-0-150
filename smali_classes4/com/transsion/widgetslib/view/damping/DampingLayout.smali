.class public Lcom/transsion/widgetslib/view/damping/DampingLayout;
.super Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/widgetslib/view/damping/DampingLayout$ScrollBarView;,
        Lcom/transsion/widgetslib/view/damping/DampingLayout$OnRefreshListener;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final ANIM_DURATION:I = 0x12c

.field private static final REFRESHING_DELTA_ALPHA:F = 1.0f

.field private static final REFRESHING_DELTA_SCALE:F = 0.5f

.field private static final REFRESHING_DELTA_SCALE_LOADING_VIEW:F = 0.8f

.field private static final REFRESHING_START_ALPHA:F = 0.0f

.field private static final REFRESHING_START_SCALE:F = 0.5f

.field private static final REFRESHING_START_SCALE_LOADING_VIEW:F = 0.2f

.field private static final TAG:Ljava/lang/String; = "DampingLayout"


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mAnimRefreshFinish:Landroid/animation/ValueAnimator;

.field private mAnimScrollBarFade:Landroid/animation/ValueAnimator;

.field private mAnimatorUnfold:Landroid/animation/ValueAnimator;

.field private mBarCanSlideDistance:I

.field private final mBarMarginRight:I

.field private final mBarMarginTop:I

.field private mBarMinLen:I

.field private mBarPullMinLen:I

.field private mBarWidth:I

.field private mCubicInterpolator:Lcom/transsion/widgetslib/widget/timepicker/wheel/EaseCubicInterpolator;

.field private mDampingLayoutHeight:I

.field private mDampingMode:I

.field private mHasScrollBar:Z

.field private mHeightRefreshLayout:I

.field private mIsAbortRefreshing:Z

.field private mIsLimitDampingEdge:Z

.field private mIsRefreshing:Z

.field private mLayoutContent:Landroid/view/View;

.field private mLayoutContentCanSlideDistance:I

.field private mLayoutContentHeight:I

.field private mLoadingView:Lcom/transsion/widgetslib/view/LoadingView;

.field private mLoadingViewHeight:I

.field private mLoadingViewTransDistance:F

.field private mOffsetY:F

.field private mOnRefreshListener:Lcom/transsion/widgetslib/view/damping/DampingLayout$OnRefreshListener;

.field private mOverScrollDecor:Lcom/transsion/effectengine/bounceeffect/IOverScrollDecor;

.field private mOverScrollDistance:F

.field private final mRect:Landroid/graphics/Rect;

.field private mRunnable:Ljava/lang/Runnable;

.field private final mRunnableFade:Ljava/lang/Runnable;

.field private mTextRefreshing:Landroid/widget/TextView;

.field private mTextRefreshingTransDistance:F

.field private mUseScene:I

.field private mViewScrollBar:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 78
    invoke-direct {p0, p1, v0}, Lcom/transsion/widgetslib/view/damping/DampingLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    .line 82
    invoke-direct {p0, p1, p2, v0}, Lcom/transsion/widgetslib/view/damping/DampingLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 7

    .line 86
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 459
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mRect:Landroid/graphics/Rect;

    .line 731
    new-instance v0, Lcom/transsion/widgetslib/view/damping/DampingLayout$12;

    invoke-direct {v0, p0}, Lcom/transsion/widgetslib/view/damping/DampingLayout$12;-><init>(Lcom/transsion/widgetslib/view/damping/DampingLayout;)V

    iput-object v0, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mRunnableFade:Ljava/lang/Runnable;

    .line 87
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 88
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    sget-object v1, Lcom/transsion/widgetslib/R$styleable;->DampingLayout:[I

    const/4 v2, 0x0

    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 89
    sget p2, Lcom/transsion/widgetslib/R$styleable;->DampingLayout_os_damping_mode:I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mDampingMode:I

    .line 90
    sget p2, Lcom/transsion/widgetslib/R$styleable;->DampingLayout_os_damping_bar_use_scene:I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mUseScene:I

    .line 91
    sget p2, Lcom/transsion/widgetslib/R$styleable;->DampingLayout_os_damping_bar_margin_right:I

    const/high16 p3, 0x40c00000    # 6.0f

    const/4 v1, 0x1

    .line 92
    invoke-static {v1, p3, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p3

    float-to-int p3, p3

    .line 91
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p2

    iput p2, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mBarMarginRight:I

    .line 93
    sget p2, Lcom/transsion/widgetslib/R$styleable;->DampingLayout_os_damping_bar_margin_top:I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p2

    iput p2, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mBarMarginTop:I

    .line 94
    sget p2, Lcom/transsion/widgetslib/R$styleable;->DampingLayout_os_damping_bar_width:I

    const/high16 p3, 0x40400000    # 3.0f

    .line 95
    invoke-static {v1, p3, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p3

    float-to-int p3, p3

    .line 94
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p2

    iput p2, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mBarWidth:I

    .line 96
    sget p2, Lcom/transsion/widgetslib/R$styleable;->DampingLayout_os_limit_damping_edge:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mIsLimitDampingEdge:Z

    .line 97
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 99
    invoke-direct {p0}, Lcom/transsion/widgetslib/view/damping/DampingLayout;->init()V

    return-void
.end method

.method static synthetic access$000(Lcom/transsion/widgetslib/view/damping/DampingLayout;)V
    .registers 1

    .line 49
    invoke-direct {p0}, Lcom/transsion/widgetslib/view/damping/DampingLayout;->initUpOverScroll()V

    return-void
.end method

.method static synthetic access$100(Lcom/transsion/widgetslib/view/damping/DampingLayout;F)V
    .registers 2

    .line 49
    invoke-direct {p0, p1}, Lcom/transsion/widgetslib/view/damping/DampingLayout;->handleOverScrollDistance(F)V

    return-void
.end method

.method static synthetic access$1002(Lcom/transsion/widgetslib/view/damping/DampingLayout;Z)Z
    .registers 2

    .line 49
    iput-boolean p1, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mIsAbortRefreshing:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/transsion/widgetslib/view/damping/DampingLayout;)Landroid/widget/TextView;
    .registers 1

    .line 49
    iget-object p0, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mTextRefreshing:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/transsion/widgetslib/view/damping/DampingLayout;)Lcom/transsion/widgetslib/view/LoadingView;
    .registers 1

    .line 49
    iget-object p0, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mLoadingView:Lcom/transsion/widgetslib/view/LoadingView;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/transsion/widgetslib/view/damping/DampingLayout;)Landroid/graphics/Rect;
    .registers 1

    .line 49
    iget-object p0, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mRect:Landroid/graphics/Rect;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/transsion/widgetslib/view/damping/DampingLayout;)I
    .registers 1

    .line 49
    iget p0, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mBarPullMinLen:I

    return p0
.end method

.method static synthetic access$200(Lcom/transsion/widgetslib/view/damping/DampingLayout;)V
    .registers 1

    .line 49
    invoke-direct {p0}, Lcom/transsion/widgetslib/view/damping/DampingLayout;->refreshFinishAnim()V

    return-void
.end method

.method static synthetic access$300(Lcom/transsion/widgetslib/view/damping/DampingLayout;)Landroid/animation/ValueAnimator;
    .registers 1

    .line 49
    iget-object p0, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mAnimScrollBarFade:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method static synthetic access$400(Lcom/transsion/widgetslib/view/damping/DampingLayout;Landroid/animation/Animator;)V
    .registers 2

    .line 49
    invoke-direct {p0, p1}, Lcom/transsion/widgetslib/view/damping/DampingLayout;->cancelAnim(Landroid/animation/Animator;)V

    return-void
.end method

.method static synthetic access$500(Lcom/transsion/widgetslib/view/damping/DampingLayout;)Landroid/view/View;
    .registers 1

    .line 49
    iget-object p0, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mViewScrollBar:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$600(Lcom/transsion/widgetslib/view/damping/DampingLayout;)V
    .registers 1

    .line 49
    invoke-direct {p0}, Lcom/transsion/widgetslib/view/damping/DampingLayout;->sendScrollBarFadeMsg()V

    return-void
.end method

.method static synthetic access$700(Lcom/transsion/widgetslib/view/damping/DampingLayout;)Landroid/view/View;
    .registers 1

    .line 49
    iget-object p0, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mLayoutContent:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$800(Lcom/transsion/widgetslib/view/damping/DampingLayout;F)V
    .registers 2

    .line 49
    invoke-direct {p0, p1}, Lcom/transsion/widgetslib/view/damping/DampingLayout;->refreshTitleLayout(F)V

    return-void
.end method

.method static synthetic access$902(Lcom/transsion/widgetslib/view/damping/DampingLayout;Z)Z
    .registers 2

    .line 49
    iput-boolean p1, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mIsRefreshing:Z

    return p1
.end method

.method private cancelAnim(Landroid/animation/Animator;)V
    .registers 2

    if-eqz p1, :cond_b

    .line 802
    invoke-virtual {p1}, Landroid/animation/Animator;->isRunning()Z

    move-result p0

    if-eqz p0, :cond_b

    .line 803
    invoke-virtual {p1}, Landroid/animation/Animator;->cancel()V

    :cond_b
    return-void
.end method

.method private getBarLayoutAttach()Landroid/view/ViewGroup;
    .registers 6

    .line 682
    iget v0, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mUseScene:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_3a

    .line 683
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_39

    .line 684
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 685
    instance-of v1, v0, Landroid/widget/FrameLayout;

    if-nez v1, :cond_38

    instance-of v1, v0, Landroid/widget/RelativeLayout;

    if-eqz v1, :cond_1d

    goto :goto_38

    .line 688
    :cond_1d
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v1

    .line 689
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 690
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 691
    new-instance v3, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 692
    invoke-virtual {v3, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 693
    invoke-virtual {v0, v3, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-object v3

    :cond_38
    :goto_38
    return-object v0

    :cond_39
    return-object v2

    .line 699
    :cond_3a
    iget-object v0, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_55

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-nez v0, :cond_45

    goto :goto_55

    .line 702
    :cond_45
    iget-object p0, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    const v0, 0x1020002

    invoke-virtual {p0, v0}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    return-object p0

    :cond_55
    :goto_55
    return-object v2
.end method

.method private handleOverScrollDistance(F)V
    .registers 3

    .line 168
    invoke-direct {p0, p1}, Lcom/transsion/widgetslib/view/damping/DampingLayout;->onOverPull(F)V

    .line 171
    iput p1, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mOverScrollDistance:F

    .line 173
    iget-boolean v0, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mIsRefreshing:Z

    if-eqz v0, :cond_15

    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    if-nez p1, :cond_15

    .line 176
    iget-boolean p1, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mIsAbortRefreshing:Z

    if-eqz p1, :cond_15

    .line 177
    invoke-direct {p0}, Lcom/transsion/widgetslib/view/damping/DampingLayout;->refreshFinishAnim()V

    :cond_15
    return-void
.end method

.method private handleTouchEvent(Landroid/view/MotionEvent;)V
    .registers 4

    .line 241
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_47

    const/4 v1, 0x2

    if-eq p1, v1, :cond_f

    const/4 v1, 0x3

    if-eq p1, v1, :cond_47

    goto/16 :goto_8e

    .line 243
    :cond_f
    iget p1, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mOverScrollDistance:F

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_8e

    .line 244
    iget v0, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mHeightRefreshLayout:I

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_2f

    .line 245
    iget-object v0, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mLayoutContent:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationY(F)V

    .line 246
    iget-object p1, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mTextRefreshing:Landroid/widget/TextView;

    sget v0, Lcom/transsion/widgetslib/R$string;->os_dampingl_down_pull_refresh:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 247
    iget p1, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mOverScrollDistance:F

    invoke-direct {p0, p1}, Lcom/transsion/widgetslib/view/damping/DampingLayout;->refreshTitleLayout(F)V

    return-void

    .line 249
    :cond_2f
    iget-object p1, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mTextRefreshing:Landroid/widget/TextView;

    sget v0, Lcom/transsion/widgetslib/R$string;->os_dampingl_release_for_refresh:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 250
    iget-object p1, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mLayoutContent:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result p1

    iget v0, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mHeightRefreshLayout:I

    int-to-float v0, v0

    cmpg-float p1, p1, v0

    if-gez p1, :cond_8e

    .line 251
    invoke-direct {p0}, Lcom/transsion/widgetslib/view/damping/DampingLayout;->playAnimatorUnfold()V

    return-void

    .line 258
    :cond_47
    iget p1, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mOverScrollDistance:F

    iget v1, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mHeightRefreshLayout:I

    int-to-float v1, v1

    cmpl-float p1, p1, v1

    if-ltz p1, :cond_93

    .line 259
    iput-boolean v0, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mIsRefreshing:Z

    .line 260
    iget-object p1, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mTextRefreshing:Landroid/widget/TextView;

    sget v0, Lcom/transsion/widgetslib/R$string;->os_dampingl_refreshing:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 261
    iget-object p1, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mLoadingView:Lcom/transsion/widgetslib/view/LoadingView;

    invoke-virtual {p1}, Lcom/transsion/widgetslib/view/LoadingView;->start()V

    .line 263
    iget-object p1, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mLayoutContent:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result p1

    iget v0, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mHeightRefreshLayout:I

    int-to-float v0, v0

    cmpg-float p1, p1, v0

    if-gez p1, :cond_6e

    .line 264
    invoke-direct {p0}, Lcom/transsion/widgetslib/view/damping/DampingLayout;->playAnimatorUnfold()V

    .line 267
    :cond_6e
    iget-object p1, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mOnRefreshListener:Lcom/transsion/widgetslib/view/damping/DampingLayout$OnRefreshListener;

    if-nez p1, :cond_8f

    .line 268
    iget-object p1, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mRunnable:Ljava/lang/Runnable;

    if-nez p1, :cond_7d

    .line 269
    new-instance p1, Lcom/transsion/widgetslib/view/damping/DampingLayout$3;

    invoke-direct {p1, p0}, Lcom/transsion/widgetslib/view/damping/DampingLayout$3;-><init>(Lcom/transsion/widgetslib/view/damping/DampingLayout;)V

    iput-object p1, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mRunnable:Ljava/lang/Runnable;

    .line 276
    :cond_7d
    invoke-virtual {p0}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object p1

    if-eqz p1, :cond_8e

    .line 277
    invoke-virtual {p0}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mRunnable:Ljava/lang/Runnable;

    const-wide/16 v0, 0x7d0

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_8e
    :goto_8e
    return-void

    .line 280
    :cond_8f
    invoke-interface {p1}, Lcom/transsion/widgetslib/view/damping/DampingLayout$OnRefreshListener;->onRefresh()V

    return-void

    .line 283
    :cond_93
    invoke-direct {p0}, Lcom/transsion/widgetslib/view/damping/DampingLayout;->refreshFinishAnim()V

    return-void
.end method

.method private init()V
    .registers 5

    .line 103
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/high16 v1, 0x41700000    # 15.0f

    const/4 v2, 0x1

    .line 104
    invoke-static {v2, v1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    iput v1, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mTextRefreshingTransDistance:F

    const/high16 v1, 0x40c00000    # 6.0f

    .line 105
    invoke-static {v2, v1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    iput v1, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mLoadingViewTransDistance:F

    .line 107
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/transsion/widgetslib/R$dimen;->os_damping_layout_loading_title:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mHeightRefreshLayout:I

    .line 109
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/transsion/widgetslib/R$dimen;->os_damping_layout_loading_view:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mLoadingViewHeight:I

    .line 111
    iget v3, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mTextRefreshingTransDistance:F

    int-to-float v1, v1

    add-float/2addr v3, v1

    iput v3, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mTextRefreshingTransDistance:F

    const/high16 v1, 0x41000000    # 8.0f

    .line 113
    invoke-static {v2, v1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mBarPullMinLen:I

    const/high16 v1, 0x42700000    # 60.0f

    .line 114
    invoke-static {v2, v1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mBarMinLen:I

    .line 116
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_59

    .line 117
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    iput-object v0, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mActivity:Landroid/app/Activity;

    .line 122
    :cond_59
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setVerticalScrollbarThumbDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 123
    invoke-virtual {p0, v2}, Landroid/view/View;->setVerticalScrollBarEnabled(Z)V

    return-void
.end method

.method private initAnimScrollBarFade()V
    .registers 4

    const/4 v0, 0x2

    .line 466
    new-array v0, v0, [F

    fill-array-data v0, :array_2a

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mAnimScrollBarFade:Landroid/animation/ValueAnimator;

    .line 467
    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 468
    iget-object v0, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mAnimScrollBarFade:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/view/View;->getScrollBarFadeDuration()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 469
    iget-object v0, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mAnimScrollBarFade:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/transsion/widgetslib/view/damping/DampingLayout$8;

    invoke-direct {v1, p0}, Lcom/transsion/widgetslib/view/damping/DampingLayout$8;-><init>(Lcom/transsion/widgetslib/view/damping/DampingLayout;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void

    nop

    :array_2a
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private initUpOverScroll()V
    .registers 3

    .line 143
    sget-boolean v0, Lcom/transsion/widgetslib/util/Utils;->VERSION_T_GO:Z

    if-eqz v0, :cond_5

    goto :goto_12

    .line 147
    :cond_5
    iget-object v0, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mOverScrollDecor:Lcom/transsion/effectengine/bounceeffect/IOverScrollDecor;

    if-eqz v0, :cond_a

    goto :goto_12

    .line 151
    :cond_a
    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->setUpOverScroll()Lcom/transsion/effectengine/bounceeffect/IOverScrollDecor;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mOverScrollDecor:Lcom/transsion/effectengine/bounceeffect/IOverScrollDecor;

    if-nez v0, :cond_13

    :goto_12
    return-void

    .line 156
    :cond_13
    new-instance v0, Lcom/transsion/widgetslib/view/damping/DampingLayout$2;

    invoke-direct {v0, p0}, Lcom/transsion/widgetslib/view/damping/DampingLayout$2;-><init>(Lcom/transsion/widgetslib/view/damping/DampingLayout;)V

    .line 162
    iget-object v1, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mOverScrollDecor:Lcom/transsion/effectengine/bounceeffect/IOverScrollDecor;

    invoke-interface {v1, v0}, Lcom/transsion/effectengine/bounceeffect/IOverScrollDecor;->setOverScrollListener(Lcom/transsion/effectengine/bounceeffect/IOverScrollListener;)V

    .line 164
    invoke-direct {p0}, Lcom/transsion/widgetslib/view/damping/DampingLayout;->onEdgeEffect()V

    return-void
.end method

.method private onEdgeEffect()V
    .registers 3

    .line 485
    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->getEdgeGlowTop()Landroid/widget/EdgeEffect;

    move-result-object v0

    instance-of v0, v0, Lcom/transsion/effectengine/bounceeffect/BounceEdgeEffect;

    if-eqz v0, :cond_1a

    .line 486
    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->getEdgeGlowTop()Landroid/widget/EdgeEffect;

    move-result-object v0

    check-cast v0, Lcom/transsion/effectengine/bounceeffect/BounceEdgeEffect;

    .line 487
    iget-object v0, v0, Lcom/transsion/effectengine/bounceeffect/BounceEdgeEffect;->z1OoOif:Lcom/transsion/effectengine/bounceeffect/dynamicanimation/SpringAnimation;

    if-eqz v0, :cond_1a

    .line 489
    new-instance v1, Lcom/transsion/widgetslib/view/damping/DampingLayout$9;

    invoke-direct {v1, p0}, Lcom/transsion/widgetslib/view/damping/DampingLayout$9;-><init>(Lcom/transsion/widgetslib/view/damping/DampingLayout;)V

    invoke-virtual {v0, v1}, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation;->addUpdateListener(Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation$z1OoOconst;)Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation;

    .line 508
    :cond_1a
    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->getEdgeGlowBottom()Landroid/widget/EdgeEffect;

    move-result-object v0

    instance-of v0, v0, Lcom/transsion/effectengine/bounceeffect/BounceEdgeEffect;

    if-eqz v0, :cond_34

    .line 509
    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->getEdgeGlowBottom()Landroid/widget/EdgeEffect;

    move-result-object v0

    check-cast v0, Lcom/transsion/effectengine/bounceeffect/BounceEdgeEffect;

    .line 510
    iget-object v0, v0, Lcom/transsion/effectengine/bounceeffect/BounceEdgeEffect;->z1OoOif:Lcom/transsion/effectengine/bounceeffect/dynamicanimation/SpringAnimation;

    if-eqz v0, :cond_34

    .line 512
    new-instance v1, Lcom/transsion/widgetslib/view/damping/DampingLayout$10;

    invoke-direct {v1, p0}, Lcom/transsion/widgetslib/view/damping/DampingLayout$10;-><init>(Lcom/transsion/widgetslib/view/damping/DampingLayout;)V

    invoke-virtual {v0, v1}, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation;->addUpdateListener(Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation$z1OoOconst;)Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation;

    :cond_34
    return-void
.end method

.method private onOverPull(F)V
    .registers 6

    .line 533
    iget-boolean v0, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mHasScrollBar:Z

    if-eqz v0, :cond_6c

    iget-object v0, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mViewScrollBar:Landroid/view/View;

    if-eqz v0, :cond_6c

    .line 534
    iget-object v0, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mAnimScrollBarFade:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v0}, Lcom/transsion/widgetslib/view/damping/DampingLayout;->cancelAnim(Landroid/animation/Animator;)V

    .line 535
    iget-object v0, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mViewScrollBar:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1e

    .line 536
    iget-object v0, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mViewScrollBar:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 539
    :cond_1e
    iget-object v0, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mViewScrollBar:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 541
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v3, p1, v2

    if-lez v3, :cond_3d

    .line 543
    iget-object p1, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    int-to-float v0, v0

    sub-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 544
    iget v1, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mBarPullMinLen:I

    if-gt v0, v1, :cond_5d

    .line 545
    iput v1, p1, Landroid/graphics/Rect;->bottom:I

    goto :goto_5d

    :cond_3d
    cmpg-float p1, p1, v2

    if-gez p1, :cond_51

    .line 548
    iget-object p1, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mRect:Landroid/graphics/Rect;

    float-to-int v1, v1

    iput v1, p1, Landroid/graphics/Rect;->top:I

    .line 549
    iget v2, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mBarPullMinLen:I

    add-int/2addr v1, v2

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lt v1, v0, :cond_5d

    sub-int/2addr v0, v2

    .line 550
    iput v0, p1, Landroid/graphics/Rect;->top:I

    goto :goto_5d

    .line 553
    :cond_51
    iget-object p1, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mRect:Landroid/graphics/Rect;

    const/4 v1, 0x0

    iput v1, p1, Landroid/graphics/Rect;->top:I

    .line 554
    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 555
    invoke-direct {p0}, Lcom/transsion/widgetslib/view/damping/DampingLayout;->sendScrollBarFadeMsg()V

    .line 557
    :cond_5d
    :goto_5d
    iget-object p1, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mViewScrollBar:Landroid/view/View;

    iget-object p0, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mRect:Landroid/graphics/Rect;

    iget v0, p0, Landroid/graphics/Rect;->left:I

    iget v1, p0, Landroid/graphics/Rect;->top:I

    iget v2, p0, Landroid/graphics/Rect;->right:I

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, v0, v1, v2, p0}, Landroid/view/View;->layout(IIII)V

    :cond_6c
    return-void
.end method

.method private playAnimatorUnfold()V
    .registers 6

    .line 339
    iget-object v0, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mAnimatorUnfold:Landroid/animation/ValueAnimator;

    const/4 v1, 0x0

    if-nez v0, :cond_d

    .line 340
    new-array v0, v1, [F

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mAnimatorUnfold:Landroid/animation/ValueAnimator;

    .line 342
    :cond_d
    iget-object v0, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mAnimatorUnfold:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_16

    return-void

    .line 345
    :cond_16
    iget-object v0, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mAnimatorUnfold:Landroid/animation/ValueAnimator;

    iget-object v2, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mLayoutContent:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTranslationY()F

    move-result v2

    iget v3, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mHeightRefreshLayout:I

    int-to-float v3, v3

    const/4 v4, 0x2

    new-array v4, v4, [F

    aput v2, v4, v1

    const/4 v1, 0x1

    aput v3, v4, v1

    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 346
    iget-object v0, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mAnimatorUnfold:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x32

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 347
    iget-object v0, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mAnimatorUnfold:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 348
    iget-object v0, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mAnimatorUnfold:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/transsion/widgetslib/view/damping/DampingLayout$5;

    invoke-direct {v1, p0}, Lcom/transsion/widgetslib/view/damping/DampingLayout$5;-><init>(Lcom/transsion/widgetslib/view/damping/DampingLayout;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 359
    iget-object p0, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mAnimatorUnfold:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private refreshFinishAnim()V
    .registers 7

    .line 363
    iget-object v0, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mLayoutContent:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v2, v0, v1

    if-gez v2, :cond_c

    return-void

    .line 368
    :cond_c
    iget-object v2, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mAnimRefreshFinish:Landroid/animation/ValueAnimator;

    const/4 v3, 0x2

    if-nez v2, :cond_3c

    .line 369
    new-array v2, v3, [F

    fill-array-data v2, :array_50

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    iput-object v2, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mAnimRefreshFinish:Landroid/animation/ValueAnimator;

    const-wide/16 v4, 0x12c

    .line 370
    invoke-virtual {v2, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 371
    iget-object v2, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mAnimRefreshFinish:Landroid/animation/ValueAnimator;

    iget-object v4, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mCubicInterpolator:Lcom/transsion/widgetslib/widget/timepicker/wheel/EaseCubicInterpolator;

    invoke-virtual {v2, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 372
    iget-object v2, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mAnimRefreshFinish:Landroid/animation/ValueAnimator;

    new-instance v4, Lcom/transsion/widgetslib/view/damping/DampingLayout$6;

    invoke-direct {v4, p0}, Lcom/transsion/widgetslib/view/damping/DampingLayout$6;-><init>(Lcom/transsion/widgetslib/view/damping/DampingLayout;)V

    invoke-virtual {v2, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 383
    iget-object v2, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mAnimRefreshFinish:Landroid/animation/ValueAnimator;

    new-instance v4, Lcom/transsion/widgetslib/view/damping/DampingLayout$7;

    invoke-direct {v4, p0}, Lcom/transsion/widgetslib/view/damping/DampingLayout$7;-><init>(Lcom/transsion/widgetslib/view/damping/DampingLayout;)V

    invoke-virtual {v2, v4}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 395
    :cond_3c
    iget-object v2, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mAnimRefreshFinish:Landroid/animation/ValueAnimator;

    new-array v3, v3, [F

    const/4 v4, 0x0

    aput v0, v3, v4

    const/4 v0, 0x1

    aput v1, v3, v0

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 396
    iget-object p0, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mAnimRefreshFinish:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    nop

    :array_50
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method private refreshTitleLayout(F)V
    .registers 6

    .line 401
    :try_start_0
    iget v0, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mHeightRefreshLayout:I

    int-to-float v1, v0

    cmpl-float v1, p1, v1

    if-lez v1, :cond_8

    return-void

    :cond_8
    int-to-float v0, v0

    div-float v0, p1, v0

    .line 406
    iget-object v1, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mTextRefreshing:Landroid/widget/TextView;

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float v3, v0, v2

    add-float/2addr v3, v2

    invoke-virtual {v1, v3}, Landroid/view/View;->setScaleX(F)V

    .line 407
    iget-object v1, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mTextRefreshing:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/view/View;->getScaleX()F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setScaleY(F)V

    .line 408
    iget-object v1, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mTextRefreshing:Landroid/widget/TextView;

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float/2addr v2, v0

    const/4 v3, 0x0

    add-float/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 410
    iget v1, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mTextRefreshingTransDistance:F

    cmpl-float v3, p1, v1

    if-lez v3, :cond_2f

    goto :goto_30

    :cond_2f
    move v1, p1

    .line 413
    :goto_30
    iget-object v3, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mTextRefreshing:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 415
    iget v1, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mLoadingViewHeight:I

    int-to-float v1, v1

    sub-float/2addr p1, v1

    .line 416
    iget v1, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mLoadingViewTransDistance:F

    cmpl-float v3, p1, v1

    if-lez v3, :cond_40

    move p1, v1

    .line 419
    :cond_40
    iget-object v1, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mLoadingView:Lcom/transsion/widgetslib/view/LoadingView;

    const v3, 0x3f4ccccd    # 0.8f

    mul-float/2addr v0, v3

    const v3, 0x3e4ccccd    # 0.2f

    add-float/2addr v0, v3

    invoke-virtual {v1, v0}, Landroid/view/View;->setScaleX(F)V

    .line 420
    iget-object v0, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mLoadingView:Lcom/transsion/widgetslib/view/LoadingView;

    invoke-virtual {v0}, Landroid/view/View;->getScaleX()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleY(F)V

    .line 421
    iget-object v0, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mLoadingView:Lcom/transsion/widgetslib/view/LoadingView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 422
    iget-object p0, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mLoadingView:Lcom/transsion/widgetslib/view/LoadingView;

    invoke-virtual {p0, p1}, Landroid/view/View;->setTranslationY(F)V
    :try_end_60
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_60} :catch_61

    return-void

    :catch_61
    move-exception p0

    .line 424
    sget-object p1, Lcom/transsion/widgetslib/view/damping/DampingLayout;->TAG:Ljava/lang/String;

    const-string v0, "refreshTitleLayout, error"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method private releaseResource()V
    .registers 3

    .line 321
    iget-object v0, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mAnimatorUnfold:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v0}, Lcom/transsion/widgetslib/view/damping/DampingLayout;->cancelAnim(Landroid/animation/Animator;)V

    .line 322
    iget-object v0, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mAnimRefreshFinish:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v0}, Lcom/transsion/widgetslib/view/damping/DampingLayout;->cancelAnim(Landroid/animation/Animator;)V

    .line 323
    iget-object v0, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mAnimScrollBarFade:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v0}, Lcom/transsion/widgetslib/view/damping/DampingLayout;->cancelAnim(Landroid/animation/Animator;)V

    .line 325
    iget-object v0, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mLoadingView:Lcom/transsion/widgetslib/view/LoadingView;

    if-eqz v0, :cond_16

    .line 326
    invoke-virtual {v0}, Lcom/transsion/widgetslib/view/LoadingView;->release()V

    .line 329
    :cond_16
    invoke-virtual {p0}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_28

    .line 331
    iget-object v1, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mRunnable:Ljava/lang/Runnable;

    if-eqz v1, :cond_23

    .line 332
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 334
    :cond_23
    iget-object p0, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mRunnableFade:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_28
    return-void
.end method

.method private sendScrollBarFadeMsg()V
    .registers 4

    .line 718
    invoke-virtual {p0}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 721
    iget-object v1, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mRunnableFade:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 722
    iget-object v1, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mRunnableFade:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 727
    :cond_13
    iget-object p0, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mRunnableFade:Ljava/lang/Runnable;

    const-wide/16 v1, 0x64

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1a
    return-void
.end method

.method private translateScrollBar(I)V
    .registers 4

    .line 742
    iget-object v0, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mViewScrollBar:Landroid/view/View;

    if-eqz v0, :cond_33

    const/4 v0, 0x1

    .line 743
    iput-boolean v0, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mHasScrollBar:Z

    .line 745
    iget-object v0, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mAnimScrollBarFade:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v0}, Lcom/transsion/widgetslib/view/damping/DampingLayout;->cancelAnim(Landroid/animation/Animator;)V

    .line 746
    iget-object v0, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mViewScrollBar:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1d

    .line 747
    iget-object v0, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mViewScrollBar:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    :cond_1d
    int-to-float p1, p1

    mul-float/2addr p1, v1

    .line 750
    iget v0, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mLayoutContentCanSlideDistance:I

    int-to-float v0, v0

    div-float/2addr p1, v0

    .line 751
    iget v0, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mBarMarginTop:I

    int-to-float v0, v0

    iget v1, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mBarCanSlideDistance:I

    int-to-float v1, v1

    mul-float/2addr p1, v1

    add-float/2addr v0, p1

    .line 753
    iget-object p1, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mViewScrollBar:Landroid/view/View;

    iget p0, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mOffsetY:F

    add-float/2addr p0, v0

    invoke-virtual {p1, p0}, Landroid/view/View;->setTranslationY(F)V

    :cond_33
    return-void
.end method


# virtual methods
.method public abortRefreshing()V
    .registers 4

    .line 292
    iget v0, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mOverScrollDistance:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_12

    const/4 v0, 0x0

    .line 293
    iput-boolean v0, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mIsAbortRefreshing:Z

    .line 294
    iget-boolean v0, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mIsRefreshing:Z

    if-eqz v0, :cond_21

    .line 295
    invoke-direct {p0}, Lcom/transsion/widgetslib/view/damping/DampingLayout;->refreshFinishAnim()V

    goto :goto_21

    :cond_12
    const/4 v0, 0x1

    .line 298
    iput-boolean v0, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mIsAbortRefreshing:Z

    .line 299
    iget-object v0, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mLoadingView:Lcom/transsion/widgetslib/view/LoadingView;

    invoke-virtual {v0}, Lcom/transsion/widgetslib/view/LoadingView;->release()V

    .line 300
    iget-object v0, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mTextRefreshing:Landroid/widget/TextView;

    sget v1, Lcom/transsion/widgetslib/R$string;->os_dampingl_refresh_finish:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 303
    :cond_21
    :goto_21
    new-instance v0, Lcom/transsion/widgetslib/view/damping/DampingLayout$4;

    invoke-direct {v0, p0}, Lcom/transsion/widgetslib/view/damping/DampingLayout$4;-><init>(Lcom/transsion/widgetslib/view/damping/DampingLayout;)V

    const-wide/16 v1, 0x3c

    invoke-virtual {p0, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 317
    invoke-virtual {p0}, Landroid/view/View;->awakenScrollBars()Z

    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    .line 230
    iget-object v0, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mOverScrollDecor:Lcom/transsion/effectengine/bounceeffect/IOverScrollDecor;

    if-nez v0, :cond_9

    .line 231
    invoke-super {p0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    .line 234
    :cond_9
    iget-boolean v0, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mIsRefreshing:Z

    if-nez v0, :cond_14

    iget v0, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mDampingMode:I

    if-nez v0, :cond_14

    .line 235
    invoke-direct {p0, p1}, Lcom/transsion/widgetslib/view/damping/DampingLayout;->handleTouchEvent(Landroid/view/MotionEvent;)V

    .line 237
    :cond_14
    invoke-super {p0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .registers 14

    .line 563
    invoke-super {p0, p1}, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->draw(Landroid/graphics/Canvas;)V

    .line 568
    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->computeVerticalScrollRange()I

    move-result p1

    .line 569
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 570
    invoke-virtual {p0}, Landroid/view/View;->getVerticalScrollbarThumbDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v2, 0x0

    if-lez v0, :cond_19c

    if-ge v0, p1, :cond_19c

    if-eqz v1, :cond_19c

    .line 573
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_22

    goto/16 :goto_19c

    .line 583
    :cond_22
    iget v3, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mLayoutContentHeight:I

    if-ne v3, p1, :cond_2b

    iget v3, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mDampingLayoutHeight:I

    if-ne v3, v0, :cond_2b

    goto :goto_35

    .line 587
    :cond_2b
    iget-object v3, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mViewScrollBar:Landroid/view/View;

    if-nez v3, :cond_54

    .line 588
    invoke-direct {p0}, Lcom/transsion/widgetslib/view/damping/DampingLayout;->getBarLayoutAttach()Landroid/view/ViewGroup;

    move-result-object v3

    if-nez v3, :cond_36

    :goto_35
    return-void

    .line 593
    :cond_36
    new-instance v4, Lcom/transsion/widgetslib/view/damping/DampingLayout$ScrollBarView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/transsion/widgetslib/view/damping/DampingLayout$ScrollBarView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mViewScrollBar:Landroid/view/View;

    .line 594
    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 595
    iget-object v4, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mViewScrollBar:Landroid/view/View;

    const-string v5, "#7FA1A1A1"

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundColor(I)V

    .line 596
    iget-object v4, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mViewScrollBar:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->bringChildToFront(Landroid/view/View;)V

    .line 599
    :cond_54
    iget v3, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mUseScene:I

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-ne v3, v5, :cond_7f

    .line 600
    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v5

    sub-int/2addr v3, v5

    iget v5, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mBarWidth:I

    sub-int/2addr v3, v5

    iget v5, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mBarMarginRight:I

    sub-int/2addr v3, v5

    .line 601
    iget-object v5, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mViewScrollBar:Landroid/view/View;

    invoke-static {}, Lcom/transsion/widgetslib/util/Utils;->isRtl()Z

    move-result v6

    if-eqz v6, :cond_72

    neg-int v3, v3

    :cond_72
    int-to-float v3, v3

    invoke-virtual {v5, v3}, Landroid/view/View;->setTranslationX(F)V

    .line 602
    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v3

    int-to-float v3, v3

    iput v3, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mOffsetY:F

    goto/16 :goto_147

    .line 604
    :cond_7f
    new-array v3, v4, [I

    .line 605
    invoke-virtual {p0, v3}, Landroid/view/View;->getLocationInWindow([I)V

    .line 607
    aget v6, v3, v2

    .line 608
    aget v3, v3, v5

    .line 610
    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    move-result v7

    add-int/2addr v7, v6

    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v8

    sub-int/2addr v7, v8

    iget v8, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mBarWidth:I

    sub-int/2addr v7, v8

    iget v8, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mBarMarginRight:I

    sub-int/2addr v7, v8

    .line 611
    invoke-static {}, Lcom/transsion/widgetslib/util/Utils;->isRtl()Z

    move-result v8

    if-eqz v8, :cond_ee

    iget-object v8, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mActivity:Landroid/app/Activity;

    if-eqz v8, :cond_ee

    invoke-virtual {v8}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v8

    if-eqz v8, :cond_ee

    .line 613
    iget-object v8, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mActivity:Landroid/app/Activity;

    invoke-virtual {v8}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v8

    invoke-interface {v8}, Landroid/view/WindowManager;->getCurrentWindowMetrics()Landroid/view/WindowMetrics;

    move-result-object v8

    if-eqz v8, :cond_ee

    .line 614
    invoke-virtual {v8}, Landroid/view/WindowMetrics;->getBounds()Landroid/graphics/Rect;

    move-result-object v9

    if-eqz v9, :cond_ee

    .line 615
    invoke-virtual {v8}, Landroid/view/WindowMetrics;->getBounds()Landroid/graphics/Rect;

    move-result-object v7

    .line 616
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v9

    iget v9, v9, Landroid/content/res/Configuration;->orientation:I

    if-ne v9, v4, :cond_df

    .line 617
    invoke-virtual {v8}, Landroid/view/WindowMetrics;->getWindowInsets()Landroid/view/WindowInsets;

    move-result-object v8

    if-eqz v8, :cond_df

    .line 618
    invoke-virtual {v8}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object v9

    if-eqz v9, :cond_df

    .line 619
    invoke-virtual {v8}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/DisplayCutout;->getSafeInsetLeft()I

    move-result v8

    goto :goto_e0

    :cond_df
    move v8, v2

    .line 622
    :goto_e0
    iget v9, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mBarWidth:I

    add-int/2addr v6, v9

    iget v9, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mBarMarginRight:I

    add-int/2addr v6, v9

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v7

    sub-int/2addr v6, v7

    add-int v7, v6, v8

    goto :goto_ef

    :cond_ee
    move v8, v2

    .line 627
    :goto_ef
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const-string v9, "dimen"

    const-string v10, "android"

    const-string v11, "status_bar_height"

    invoke-virtual {v6, v11, v9, v10}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    if-lez v6, :cond_108

    .line 630
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    goto :goto_109

    :cond_108
    move v6, v2

    .line 632
    :goto_109
    iget-object v9, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mActivity:Landroid/app/Activity;

    if-eqz v9, :cond_11e

    invoke-virtual {v9}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v9

    if-eqz v9, :cond_11e

    .line 633
    iget-object v9, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mActivity:Landroid/app/Activity;

    invoke-virtual {v9}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/ActionBar;->getHeight()I

    move-result v9

    goto :goto_11f

    :cond_11e
    move v9, v2

    :goto_11f
    sub-int v6, v3, v6

    sub-int/2addr v6, v9

    int-to-float v6, v6

    .line 635
    iput v6, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mOffsetY:F

    .line 637
    iget-object v6, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mActivity:Landroid/app/Activity;

    if-eqz v6, :cond_141

    invoke-virtual {v6}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v6

    if-eqz v6, :cond_141

    .line 638
    iget-object v6, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mActivity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v6

    .line 639
    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    if-ne v6, v5, :cond_141

    int-to-float v3, v3

    .line 640
    iput v3, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mOffsetY:F

    sub-int/2addr v7, v8

    .line 645
    :cond_141
    iget-object v3, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mViewScrollBar:Landroid/view/View;

    int-to-float v5, v7

    invoke-virtual {v3, v5}, Landroid/view/View;->setTranslationX(F)V

    .line 649
    :goto_147
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 651
    iget-object v3, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mViewScrollBar:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 652
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    iput v1, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 653
    iget v5, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mBarWidth:I

    iput v5, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 654
    iget v5, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mBarMinLen:I

    if-ge v1, v5, :cond_167

    if-le v5, v0, :cond_163

    .line 656
    iput v0, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mBarMinLen:I

    .line 658
    :cond_163
    iget v1, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mBarMinLen:I

    iput v1, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 660
    :cond_167
    iget-object v1, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mViewScrollBar:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iget-object v5, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mViewScrollBar:Landroid/view/View;

    invoke-virtual {v1, v5, v3}, Landroid/view/ViewGroup;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    sub-int v1, p1, v0

    .line 662
    iput v1, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mLayoutContentCanSlideDistance:I

    .line 663
    iget v1, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    sub-int v1, v0, v1

    iget v3, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mBarMarginTop:I

    mul-int/2addr v3, v4

    sub-int/2addr v1, v3

    iput v1, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mBarCanSlideDistance:I

    if-gez v1, :cond_186

    .line 665
    iput v2, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mBarCanSlideDistance:I

    .line 667
    :cond_186
    iput p1, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mLayoutContentHeight:I

    .line 668
    iput v0, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mDampingLayoutHeight:I

    .line 670
    new-instance p1, Lcom/transsion/widgetslib/view/damping/DampingLayout$11;

    invoke-direct {p1, p0}, Lcom/transsion/widgetslib/view/damping/DampingLayout$11;-><init>(Lcom/transsion/widgetslib/view/damping/DampingLayout;)V

    const-wide/16 v0, 0x64

    invoke-virtual {p0, p1, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 677
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/transsion/widgetslib/view/damping/DampingLayout;->translateScrollBar(I)V

    return-void

    .line 574
    :cond_19c
    :goto_19c
    iget-boolean p1, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mHasScrollBar:Z

    if-eqz p1, :cond_1af

    iget-object p1, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mViewScrollBar:Landroid/view/View;

    if-eqz p1, :cond_1af

    .line 575
    iget-object p1, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mAnimScrollBarFade:Landroid/animation/ValueAnimator;

    invoke-direct {p0, p1}, Lcom/transsion/widgetslib/view/damping/DampingLayout;->cancelAnim(Landroid/animation/Animator;)V

    .line 576
    iget-object p1, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mViewScrollBar:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 579
    :cond_1af
    iput-boolean v2, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mHasScrollBar:Z

    return-void
.end method

.method public getLoadingView()Lcom/transsion/widgetslib/view/LoadingView;
    .registers 1

    .line 443
    iget-object p0, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mLoadingView:Lcom/transsion/widgetslib/view/LoadingView;

    return-object p0
.end method

.method public isRefreshing()Z
    .registers 1

    .line 433
    iget-boolean p0, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mIsRefreshing:Z

    return p0
.end method

.method public onAttachedToWindow()V
    .registers 4

    .line 129
    invoke-super {p0}, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->onAttachedToWindow()V

    .line 130
    iget v0, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mDampingMode:I

    if-eqz v0, :cond_1a

    iget v0, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mUseScene:I

    if-nez v0, :cond_c

    goto :goto_1a

    :cond_c
    const/4 v1, 0x1

    if-ne v0, v1, :cond_19

    .line 133
    new-instance v0, Lcom/transsion/widgetslib/view/damping/DampingLayout$1;

    invoke-direct {v0, p0}, Lcom/transsion/widgetslib/view/damping/DampingLayout$1;-><init>(Lcom/transsion/widgetslib/view/damping/DampingLayout;)V

    const-wide/16 v1, 0x64

    invoke-virtual {p0, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_19
    return-void

    .line 131
    :cond_1a
    :goto_1a
    invoke-direct {p0}, Lcom/transsion/widgetslib/view/damping/DampingLayout;->initUpOverScroll()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 1

    .line 224
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 225
    invoke-direct {p0}, Lcom/transsion/widgetslib/view/damping/DampingLayout;->releaseResource()V

    return-void
.end method

.method protected onFinishInflate()V
    .registers 8

    .line 186
    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    .line 187
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_c

    goto/16 :goto_9b

    :cond_c
    const/4 v0, 0x0

    .line 191
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mLayoutContent:Landroid/view/View;

    .line 192
    invoke-virtual {v2, v0}, Landroid/view/View;->setNestedScrollingEnabled(Z)V

    .line 193
    iget-object v2, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mLayoutContent:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setVerticalScrollBarEnabled(Z)V

    .line 195
    iget v2, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mDampingMode:I

    if-nez v2, :cond_9b

    .line 196
    invoke-virtual {p0, v1}, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->setFillViewport(Z)V

    .line 198
    new-instance v1, Lcom/transsion/widgetslib/widget/timepicker/wheel/EaseCubicInterpolator;

    const/high16 v2, 0x3e800000    # 0.25f

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    invoke-direct {v1, v2, v4, v4, v3}, Lcom/transsion/widgetslib/widget/timepicker/wheel/EaseCubicInterpolator;-><init>(FFFF)V

    iput-object v1, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mCubicInterpolator:Lcom/transsion/widgetslib/widget/timepicker/wheel/EaseCubicInterpolator;

    .line 200
    iget-object v1, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mLayoutContent:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 201
    iget-object v2, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mLayoutContent:Landroid/view/View;

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 203
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/transsion/widgetslib/R$layout;->os_damping_layout_title:I

    const/4 v5, 0x0

    invoke-static {v2, v3, v5}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 204
    new-instance v3, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v3, v5}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 205
    iget v5, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mHeightRefreshLayout:I

    const/4 v6, -0x1

    invoke-virtual {v3, v2, v6, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 206
    iget-object v2, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mLayoutContent:Landroid/view/View;

    invoke-virtual {v3, v2, v6, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 207
    invoke-virtual {p0, v3, v1}, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 209
    sget v1, Lcom/transsion/widgetslib/R$id;->damping_text_loading:I

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mTextRefreshing:Landroid/widget/TextView;

    const/high16 v2, 0x3f000000    # 0.5f

    .line 210
    invoke-virtual {v1, v2}, Landroid/view/View;->setScaleX(F)V

    .line 211
    iget-object v1, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mTextRefreshing:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/view/View;->getScaleX()F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setScaleY(F)V

    .line 212
    iget-object v1, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mTextRefreshing:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/view/View;->setAlpha(F)V

    .line 214
    sget v1, Lcom/transsion/widgetslib/R$id;->loading_view:I

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/transsion/widgetslib/view/LoadingView;

    iput-object v1, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mLoadingView:Lcom/transsion/widgetslib/view/LoadingView;

    const v2, 0x3e4ccccd    # 0.2f

    .line 215
    invoke-virtual {v1, v2}, Landroid/view/View;->setScaleX(F)V

    .line 216
    iget-object v1, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mLoadingView:Lcom/transsion/widgetslib/view/LoadingView;

    invoke-virtual {v1}, Landroid/view/View;->getScaleX()F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setScaleY(F)V

    .line 217
    iget-object v1, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mLoadingView:Lcom/transsion/widgetslib/view/LoadingView;

    invoke-virtual {v1, v4}, Landroid/view/View;->setAlpha(F)V

    .line 218
    iget-object p0, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mLoadingView:Lcom/transsion/widgetslib/view/LoadingView;

    invoke-virtual {p0, v0}, Lcom/transsion/widgetslib/view/LoadingView;->setAutoAnim(Z)V

    :cond_9b
    :goto_9b
    return-void
.end method

.method protected onScrollChanged(IIII)V
    .registers 5

    .line 712
    invoke-super {p0, p1, p2, p3, p4}, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->onScrollChanged(IIII)V

    .line 713
    invoke-direct {p0, p2}, Lcom/transsion/widgetslib/view/damping/DampingLayout;->translateScrollBar(I)V

    .line 714
    invoke-direct {p0}, Lcom/transsion/widgetslib/view/damping/DampingLayout;->sendScrollBarFadeMsg()V

    return-void
.end method

.method public onVisibilityAggregated(Z)V
    .registers 6

    .line 759
    invoke-super {p0, p1}, Landroid/view/View;->onVisibilityAggregated(Z)V

    if-eqz p1, :cond_28

    .line 761
    iget-object p1, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mAnimScrollBarFade:Landroid/animation/ValueAnimator;

    if-nez p1, :cond_c

    .line 762
    invoke-direct {p0}, Lcom/transsion/widgetslib/view/damping/DampingLayout;->initAnimScrollBarFade()V

    .line 764
    :cond_c
    iget-object p1, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mViewScrollBar:Landroid/view/View;

    if-eqz p1, :cond_15

    const/high16 v0, 0x3f800000    # 1.0f

    .line 765
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 768
    :cond_15
    iget-object p1, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mAnimScrollBarFade:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/view/View;->getScrollBarDefaultDelayBeforeFade()I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, 0x4

    mul-long/2addr v0, v2

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 769
    iget-object p0, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mAnimScrollBarFade:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    .line 771
    :cond_28
    iget-object p1, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mAnimScrollBarFade:Landroid/animation/ValueAnimator;

    invoke-direct {p0, p1}, Lcom/transsion/widgetslib/view/damping/DampingLayout;->cancelAnim(Landroid/animation/Animator;)V

    return-void
.end method

.method public setBarWidth(I)V
    .registers 2

    .line 812
    iput p1, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mBarWidth:I

    return-void
.end method

.method public setDampingMode(I)V
    .registers 2

    .line 808
    iput p1, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mDampingMode:I

    return-void
.end method

.method public setLimitDampingEdge(Z)V
    .registers 2

    .line 820
    iput-boolean p1, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mIsLimitDampingEdge:Z

    return-void
.end method

.method public setOnRefreshListener(Lcom/transsion/widgetslib/view/damping/DampingLayout$OnRefreshListener;)V
    .registers 2

    .line 429
    iput-object p1, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mOnRefreshListener:Lcom/transsion/widgetslib/view/damping/DampingLayout$OnRefreshListener;

    return-void
.end method

.method public setTextColor(I)V
    .registers 2

    .line 437
    iget-object p0, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mTextRefreshing:Landroid/widget/TextView;

    if-eqz p0, :cond_7

    .line 438
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_7
    return-void
.end method

.method public setUseScene(I)V
    .registers 2

    .line 816
    iput p1, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mUseScene:I

    return-void
.end method
