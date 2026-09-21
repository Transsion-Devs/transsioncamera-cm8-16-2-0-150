.class public Lcom/transsion/camera/app/ui/widget/TabLayout;
.super Landroid/widget/HorizontalScrollView;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/ui/ModeHorizontalScroll2$IModeScrollCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/ui/widget/TabLayout$Tab;,
        Lcom/transsion/camera/app/ui/widget/TabLayout$ActionIntercept;,
        Lcom/transsion/camera/app/ui/widget/TabLayout$SlidingTabStrip;,
        Lcom/transsion/camera/app/ui/widget/TabLayout$OnTabSelectedListener;,
        Lcom/transsion/camera/app/ui/widget/TabLayout$OnTabScrollListener;,
        Lcom/transsion/camera/app/ui/widget/TabLayout$TabView;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

.field private static final sTabPool:Landroidx/core/util/Pools$Pool;


# instance fields
.field private isOriginal:Ljava/lang/Boolean;

.field private mActionIntercept:Lcom/transsion/camera/app/ui/widget/TabLayout$ActionIntercept;

.field private mContentInsetStart:I

.field private mContext:Landroid/content/Context;

.field private mCurrentScrollX:I

.field private mCurrentTab:I

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private final mModeItemTextAllCaps:Z

.field private mMoving:Z

.field private mNeedUpdateHeadFootPadding:Z

.field private mPreviousScrollX:I

.field private mReScrollToSelectTab:Z

.field private mScreenFormType:I

.field private mScreenHeight:I

.field private mScrollAnimator:Landroid/animation/ValueAnimator;

.field private mScrollHotArea:[F

.field private mSelectedListener:Lcom/transsion/camera/app/ui/widget/TabLayout$OnTabSelectedListener;

.field private mSelectedTab:Lcom/transsion/camera/app/ui/widget/TabLayout$Tab;

.field mSelectedTabTextAppearance:I

.field private mStartScrollX:F

.field private mStartScrollY:F

.field private mTabAnimationDuration:I

.field private mTabAnimationInterpolator:Landroid/view/animation/Interpolator;

.field final mTabBackgroundResId:I

.field mTabMaxWidth:I

.field mTabPaddingBottom:I

.field mTabPaddingEnd:I

.field mTabPaddingStart:I

.field mTabPaddingTop:I

.field private mTabScrollListener:Lcom/transsion/camera/app/ui/widget/TabLayout$OnTabScrollListener;

.field private final mTabStrip:Lcom/transsion/camera/app/ui/widget/TabLayout$SlidingTabStrip;

.field mTabTextAppearance:I

.field private final mTabViewPool:Landroidx/core/util/Pools$Pool;

.field private final mTabs:Ljava/util/ArrayList;

.field private mTargetScrollX:I


# direct methods
.method public static synthetic $r8$lambda$5Z4ClTxk7mEqGHNeKhDG0fgwz1c()Z
    .registers 1

    .line 175
    const/4 v0, 0x0

    return v0
.end method

.method static bridge synthetic -$$Nest$fgetisOriginal(Lcom/transsion/camera/app/ui/widget/TabLayout;)Ljava/lang/Boolean;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/TabLayout;->isOriginal:Ljava/lang/Boolean;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmActionIntercept(Lcom/transsion/camera/app/ui/widget/TabLayout;)Lcom/transsion/camera/app/ui/widget/TabLayout$ActionIntercept;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/TabLayout;->mActionIntercept:Lcom/transsion/camera/app/ui/widget/TabLayout$ActionIntercept;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmModeItemTextAllCaps(Lcom/transsion/camera/app/ui/widget/TabLayout;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/widget/TabLayout;->mModeItemTextAllCaps:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$mselectTab(Lcom/transsion/camera/app/ui/widget/TabLayout;Lcom/transsion/camera/app/ui/widget/TabLayout$Tab;ZZ)V
    .registers 4

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/camera/app/ui/widget/TabLayout;->selectTab(Lcom/transsion/camera/app/ui/widget/TabLayout$Tab;ZZ)V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;
    .registers 1

    .line 0
    sget-object v0, Lcom/transsion/camera/app/ui/widget/TabLayout;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 90
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "TabLayout"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/ui/widget/TabLayout;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    .line 105
    new-instance v0, Landroidx/core/util/Pools$SynchronizedPool;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroidx/core/util/Pools$SynchronizedPool;-><init>(I)V

    sput-object v0, Lcom/transsion/camera/app/ui/widget/TabLayout;->sTabPool:Landroidx/core/util/Pools$Pool;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    .line 187
    invoke-direct {p0, p1, p2, v0}, Lcom/transsion/camera/app/ui/widget/TabLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 8

    .line 191
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, 0x0

    .line 101
    iput-boolean p3, p0, Lcom/transsion/camera/app/ui/widget/TabLayout;->mReScrollToSelectTab:Z

    const/4 v0, 0x4

    .line 111
    new-array v0, v0, [F

    iput-object v0, p0, Lcom/transsion/camera/app/ui/widget/TabLayout;->mScrollHotArea:[F

    .line 112
    iput p3, p0, Lcom/transsion/camera/app/ui/widget/TabLayout;->mScreenFormType:I

    const/16 v0, 0xc8

    .line 142
    iput v0, p0, Lcom/transsion/camera/app/ui/widget/TabLayout;->mTabAnimationDuration:I

    .line 145
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/widget/TabLayout;->mTabs:Ljava/util/ArrayList;

    const/4 v0, -0x1

    .line 147
    iput v0, p0, Lcom/transsion/camera/app/ui/widget/TabLayout;->mCurrentTab:I

    .line 162
    iput p3, p0, Lcom/transsion/camera/app/ui/widget/TabLayout;->mTabBackgroundResId:I

    const v1, 0x7fffffff

    .line 164
    iput v1, p0, Lcom/transsion/camera/app/ui/widget/TabLayout;->mTabMaxWidth:I

    .line 168
    iput-boolean p3, p0, Lcom/transsion/camera/app/ui/widget/TabLayout;->mNeedUpdateHeadFootPadding:Z

    .line 174
    new-instance v1, Lcom/transsion/camera/app/ui/widget/TabLayout$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/transsion/camera/app/ui/widget/TabLayout$$ExternalSyntheticLambda0;-><init>()V

    iput-object v1, p0, Lcom/transsion/camera/app/ui/widget/TabLayout;->mActionIntercept:Lcom/transsion/camera/app/ui/widget/TabLayout$ActionIntercept;

    .line 180
    new-instance v1, Landroidx/core/util/Pools$SimplePool;

    const/16 v2, 0xc

    invoke-direct {v1, v2}, Landroidx/core/util/Pools$SimplePool;-><init>(I)V

    iput-object v1, p0, Lcom/transsion/camera/app/ui/widget/TabLayout;->mTabViewPool:Landroidx/core/util/Pools$Pool;

    .line 1320
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v1, p0, Lcom/transsion/camera/app/ui/widget/TabLayout;->isOriginal:Ljava/lang/Boolean;

    .line 194
    invoke-virtual {p0, p3}, Landroid/view/View;->setHorizontalScrollBarEnabled(Z)V

    const/4 v1, 0x2

    .line 197
    invoke-virtual {p0, v1}, Landroid/view/View;->setOverScrollMode(I)V

    .line 200
    new-instance v1, Lcom/transsion/camera/app/ui/widget/TabLayout$SlidingTabStrip;

    invoke-direct {v1, p0, p1}, Lcom/transsion/camera/app/ui/widget/TabLayout$SlidingTabStrip;-><init>(Lcom/transsion/camera/app/ui/widget/TabLayout;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/transsion/camera/app/ui/widget/TabLayout;->mTabStrip:Lcom/transsion/camera/app/ui/widget/TabLayout$SlidingTabStrip;

    .line 201
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v2, v3, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-super {p0, v1, p3, v2}, Landroid/widget/HorizontalScrollView;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    const v0, 0x1010034

    const v1, 0x1010035

    .line 204
    filled-new-array {v0, v1}, [I

    move-result-object v0

    .line 209
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    const v0, 0x10301ed

    .line 210
    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    iput p3, p0, Lcom/transsion/camera/app/ui/widget/TabLayout;->mTabTextAppearance:I

    const/4 p3, 0x1

    const v0, 0x1030209

    .line 212
    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    iput p3, p0, Lcom/transsion/camera/app/ui/widget/TabLayout;->mSelectedTabTextAppearance:I

    .line 213
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 214
    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/TabLayout;->mContext:Landroid/content/Context;

    .line 217
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/TabLayout;->applyModeAndGravity()V

    .line 218
    invoke-static {}, Lcom/transsion/camera/utils/ScreenUtils;->getScreenSize()Landroid/util/Size;

    move-result-object p1

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/app/ui/widget/TabLayout;->mScreenHeight:I

    .line 219
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/TabLayout;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/transsion/camera/R$bool;->mode_item_text_all_caps:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/widget/TabLayout;->mModeItemTextAllCaps:Z

    return-void
.end method

.method private addTabView(Lcom/transsion/camera/app/ui/widget/TabLayout$Tab;)V
    .registers 4

    .line 454
    iget-object v0, p1, Lcom/transsion/camera/app/ui/widget/TabLayout$Tab;->mView:Lcom/transsion/camera/app/ui/widget/TabLayout$TabView;

    .line 455
    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/TabLayout;->mTabStrip:Lcom/transsion/camera/app/ui/widget/TabLayout$SlidingTabStrip;

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/widget/TabLayout$Tab;->getPosition()I

    move-result p1

    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/TabLayout;->createLayoutParamsForTabs()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object p0

    invoke-virtual {v1, v0, p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private applyModeAndGravity()V
    .registers 3

    .line 923
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/TabLayout;->mTabStrip:Lcom/transsion/camera/app/ui/widget/TabLayout$SlidingTabStrip;

    const v1, 0x800003

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    const/4 v0, 0x1

    .line 925
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/widget/TabLayout;->updateTabViews(Z)V

    return-void
.end method

.method private calculateScrollXForTab(IF)I
    .registers 6

    .line 900
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/TabLayout;->mTabStrip:Lcom/transsion/camera/app/ui/widget/TabLayout$SlidingTabStrip;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    add-int/lit8 p1, p1, 0x1

    .line 901
    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/TabLayout;->mTabStrip:Lcom/transsion/camera/app/ui/widget/TabLayout$SlidingTabStrip;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge p1, v1, :cond_17

    .line 902
    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/TabLayout;->mTabStrip:Lcom/transsion/camera/app/ui/widget/TabLayout$SlidingTabStrip;

    invoke-virtual {v1, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    goto :goto_18

    :cond_17
    const/4 p1, 0x0

    :goto_18
    const/4 v1, 0x0

    if-eqz v0, :cond_20

    .line 904
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    goto :goto_21

    :cond_20
    move v2, v1

    :goto_21
    if-eqz p1, :cond_28

    .line 905
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    goto :goto_29

    :cond_28
    move p1, v1

    :goto_29
    if-nez v0, :cond_2c

    goto :goto_30

    .line 908
    :cond_2c
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v1

    .line 909
    :goto_30
    div-int/lit8 v0, v2, 0x2

    add-int/2addr v1, v0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    sub-int/2addr v1, v0

    add-int/2addr v2, p1

    int-to-float p1, v2

    const/high16 v0, 0x3f000000    # 0.5f

    mul-float/2addr p1, v0

    mul-float/2addr p1, p2

    float-to-int p1, p1

    .line 913
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result p0

    if-nez p0, :cond_49

    add-int/2addr v1, p1

    return v1

    :cond_49
    sub-int/2addr v1, p1

    return v1
.end method

.method private cancelScrollAnimator()V
    .registers 2

    .line 579
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/TabLayout;->mScrollAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_f

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/widget/TabLayout;->isScrolling()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 580
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/TabLayout;->mScrollAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_f
    return-void
.end method

.method private configureTab(Lcom/transsion/camera/app/ui/widget/TabLayout$Tab;I)V
    .registers 4

    .line 444
    invoke-virtual {p1, p2}, Lcom/transsion/camera/app/ui/widget/TabLayout$Tab;->setPosition(I)V

    .line 445
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/TabLayout;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0, p2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 447
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/TabLayout;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    :goto_e
    add-int/lit8 p2, p2, 0x1

    if-ge p2, p1, :cond_1e

    .line 449
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/TabLayout;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/ui/widget/TabLayout$Tab;

    invoke-virtual {v0, p2}, Lcom/transsion/camera/app/ui/widget/TabLayout$Tab;->setPosition(I)V

    goto :goto_e

    :cond_1e
    return-void
.end method

.method private createLayoutParamsForTabs()Landroid/widget/LinearLayout$LayoutParams;
    .registers 4

    .line 475
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 477
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/widget/TabLayout;->updateTabViewLayoutParams(Landroid/widget/LinearLayout$LayoutParams;)V

    return-object v0
.end method

.method private createTabView(Lcom/transsion/camera/app/ui/widget/TabLayout$Tab;)Lcom/transsion/camera/app/ui/widget/TabLayout$TabView;
    .registers 4

    .line 435
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/TabLayout;->mTabViewPool:Landroidx/core/util/Pools$Pool;

    if-eqz v0, :cond_b

    invoke-interface {v0}, Landroidx/core/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/ui/widget/TabLayout$TabView;

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    if-nez v0, :cond_17

    .line 437
    new-instance v0, Lcom/transsion/camera/app/ui/widget/TabLayout$TabView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/transsion/camera/app/ui/widget/TabLayout$TabView;-><init>(Lcom/transsion/camera/app/ui/widget/TabLayout;Landroid/content/Context;)V

    .line 439
    :cond_17
    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/ui/widget/TabLayout$TabView;->setTab(Lcom/transsion/camera/app/ui/widget/TabLayout$Tab;)V

    return-object v0
.end method

.method private differentScrollX()Z
    .registers 2

    .line 555
    iget v0, p0, Lcom/transsion/camera/app/ui/widget/TabLayout;->mCurrentScrollX:I

    iget p0, p0, Lcom/transsion/camera/app/ui/widget/TabLayout;->mTargetScrollX:I

    if-eq v0, p0, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method private dispatchTabSelected(Lcom/transsion/camera/app/ui/widget/TabLayout$Tab;)V
    .registers 2

    .line 894
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/TabLayout;->mSelectedListener:Lcom/transsion/camera/app/ui/widget/TabLayout$OnTabSelectedListener;

    if-eqz p0, :cond_7

    .line 895
    invoke-interface {p0, p1}, Lcom/transsion/camera/app/ui/widget/TabLayout$OnTabSelectedListener;->onTabSelected(Lcom/transsion/camera/app/ui/widget/TabLayout$Tab;)V

    :cond_7
    return-void
.end method

.method private ensureScrollAnimator()V
    .registers 4

    .line 592
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/TabLayout;->mScrollAnimator:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_2e

    .line 593
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/widget/TabLayout;->mScrollAnimator:Landroid/animation/ValueAnimator;

    .line 594
    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/TabLayout;->mTabAnimationInterpolator:Landroid/view/animation/Interpolator;

    if-eqz v1, :cond_12

    .line 595
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 597
    :cond_12
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/TabLayout;->mScrollAnimator:Landroid/animation/ValueAnimator;

    iget v1, p0, Lcom/transsion/camera/app/ui/widget/TabLayout;->mTabAnimationDuration:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 598
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/TabLayout;->mScrollAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/transsion/camera/app/ui/widget/TabLayout$1;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/ui/widget/TabLayout$1;-><init>(Lcom/transsion/camera/app/ui/widget/TabLayout;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 604
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/TabLayout;->mScrollAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/transsion/camera/app/ui/widget/TabLayout$2;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/ui/widget/TabLayout$2;-><init>(Lcom/transsion/camera/app/ui/widget/TabLayout;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_2e
    return-void
.end method

.method private ensureSelectedTabPosition()V
    .registers 4

    .line 985
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/widget/TabLayout;->mReScrollToSelectTab:Z

    if-eqz v0, :cond_13

    .line 986
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/TabLayout;->mTabStrip:Lcom/transsion/camera/app/ui/widget/TabLayout$SlidingTabStrip;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    const/4 v0, 0x0

    .line 987
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/widget/TabLayout;->mReScrollToSelectTab:Z

    .line 988
    iget v0, p0, Lcom/transsion/camera/app/ui/widget/TabLayout;->mCurrentTab:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/transsion/camera/app/ui/widget/TabLayout;->setScrollPosition(IFZ)V

    :cond_13
    return-void
.end method

.method private getDefaultHeight()I
    .registers 5

    .line 1556
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/TabLayout;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_29

    .line 1557
    iget-object v2, p0, Lcom/transsion/camera/app/ui/widget/TabLayout;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/camera/app/ui/widget/TabLayout$Tab;

    if-eqz v2, :cond_26

    .line 1558
    invoke-virtual {v2}, Lcom/transsion/camera/app/ui/widget/TabLayout$Tab;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-eqz v3, :cond_26

    invoke-virtual {v2}, Lcom/transsion/camera/app/ui/widget/TabLayout$Tab;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_26

    const/16 p0, 0x48

    return p0

    :cond_26
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_29
    const/16 p0, 0x30

    return p0
.end method

.method private getTabScrollRange()I
    .registers 3

    .line 430
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/TabLayout;->mTabStrip:Lcom/transsion/camera/app/ui/widget/TabLayout$SlidingTabStrip;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    .line 431
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result p0

    sub-int/2addr v0, p0

    const/4 p0, 0x0

    .line 430
    invoke-static {p0, v0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method private invalidCurrentTab()Z
    .registers 2

    .line 673
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/TabLayout;->mSelectedTab:Lcom/transsion/camera/app/ui/widget/TabLayout$Tab;

    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/widget/TabLayout;->invalidTab(Lcom/transsion/camera/app/ui/widget/TabLayout$Tab;)Z

    move-result p0

    return p0
.end method

.method private invalidTab(Lcom/transsion/camera/app/ui/widget/TabLayout$Tab;)Z
    .registers 2

    if-eqz p1, :cond_c

    .line 852
    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/widget/TabLayout$Tab;->getPosition()I

    move-result p0

    const/4 p1, -0x1

    if-ne p0, p1, :cond_a

    goto :goto_c

    :cond_a
    const/4 p0, 0x0

    return p0

    :cond_c
    :goto_c
    const/4 p0, 0x1

    return p0
.end method

.method private invalidTabIndex(I)Z
    .registers 2

    if-ltz p1, :cond_b

    .line 665
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/widget/TabLayout;->getTabCount()I

    move-result p0

    if-lt p1, p0, :cond_9

    goto :goto_b

    :cond_9
    const/4 p0, 0x0

    return p0

    :cond_b
    :goto_b
    const/4 p0, 0x1

    return p0
.end method

.method private isCurrentTab(Lcom/transsion/camera/app/ui/widget/TabLayout$Tab;)Z
    .registers 2

    .line 669
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/TabLayout;->mSelectedTab:Lcom/transsion/camera/app/ui/widget/TabLayout$Tab;

    if-ne p0, p1, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method private onMeasureDone()V
    .registers 2

    .line 959
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/widget/TabLayout;->mNeedUpdateHeadFootPadding:Z

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    .line 960
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/widget/TabLayout;->mNeedUpdateHeadFootPadding:Z

    .line 961
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/TabLayout;->setHeadFootPadding()V

    :cond_a
    return-void
.end method

.method private removeTabViewAt(I)V
    .registers 4

    .line 534
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/TabLayout;->mTabStrip:Lcom/transsion/camera/app/ui/widget/TabLayout$SlidingTabStrip;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/ui/widget/TabLayout$TabView;

    .line 535
    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/TabLayout;->mTabStrip:Lcom/transsion/camera/app/ui/widget/TabLayout$SlidingTabStrip;

    invoke-virtual {v1, p1}, Landroid/view/ViewGroup;->removeViewAt(I)V

    if-eqz v0, :cond_17

    .line 537
    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/widget/TabLayout$TabView;->reset()V

    .line 538
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/TabLayout;->mTabViewPool:Landroidx/core/util/Pools$Pool;

    invoke-interface {p1, v0}, Landroidx/core/util/Pools$Pool;->release(Ljava/lang/Object;)Z

    .line 540
    :cond_17
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method private scrollTo(I)V
    .registers 4

    .line 838
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/TabLayout;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/app/ui/widget/TabLayout$Tab;

    const/4 v0, 0x1

    .line 839
    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/widget/TabLayout$Tab;->getPosition()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/transsion/camera/app/ui/widget/TabLayout;->updateScrollPosition(ZI)V

    .line 840
    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/widget/TabLayout$Tab;->getPosition()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/widget/TabLayout;->setCurrentTabView(I)V

    return-void
.end method

.method private scrollToTab(I)V
    .registers 4

    .line 564
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/TabLayout;->viewNotReady()Z

    move-result v0

    if-eqz v0, :cond_15

    const/4 v0, 0x1

    .line 567
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/widget/TabLayout;->mReScrollToSelectTab:Z

    const/4 v1, 0x0

    .line 568
    invoke-virtual {p0, p1, v1, v0}, Lcom/transsion/camera/app/ui/widget/TabLayout;->setScrollPosition(IFZ)V

    .line 569
    sget-object p0, Lcom/transsion/camera/app/ui/widget/TabLayout;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "[scrollToTab] viewNotReady"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 572
    :cond_15
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/widget/TabLayout;->updateScrollX(I)Z

    move-result p1

    if-eqz p1, :cond_2a

    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/TabLayout;->differentScrollX()Z

    move-result p1

    if-eqz p1, :cond_2a

    .line 573
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/TabLayout;->cancelScrollAnimator()V

    .line 574
    iget p1, p0, Lcom/transsion/camera/app/ui/widget/TabLayout;->mTargetScrollX:I

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/view/View;->scrollTo(II)V

    :cond_2a
    return-void
.end method

.method private selectTab(Lcom/transsion/camera/app/ui/widget/TabLayout$Tab;ZZ)V
    .registers 5

    .line 856
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/widget/TabLayout;->invalidTab(Lcom/transsion/camera/app/ui/widget/TabLayout$Tab;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 857
    sget-object p0, Lcom/transsion/camera/app/ui/widget/TabLayout;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "selectTab is invalid position"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 860
    :cond_e
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/widget/TabLayout;->isCurrentTab(Lcom/transsion/camera/app/ui/widget/TabLayout$Tab;)Z

    move-result v0

    if-eqz v0, :cond_1e

    if-nez p3, :cond_1e

    .line 861
    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/widget/TabLayout$Tab;->getPosition()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/widget/TabLayout;->scrollToTab(I)V

    return-void

    .line 863
    :cond_1e
    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/widget/TabLayout$Tab;->getPosition()I

    move-result p3

    invoke-direct {p0, p2, p3}, Lcom/transsion/camera/app/ui/widget/TabLayout;->updateScrollPosition(ZI)V

    .line 864
    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/widget/TabLayout$Tab;->getPosition()I

    move-result p2

    invoke-direct {p0, p2}, Lcom/transsion/camera/app/ui/widget/TabLayout;->setCurrentTabView(I)V

    .line 865
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/widget/TabLayout;->updateSelectedTab(Lcom/transsion/camera/app/ui/widget/TabLayout$Tab;)V

    return-void
.end method

.method private setCurrentTabView(I)V
    .registers 7

    const/4 v0, -0x1

    if-ne p1, v0, :cond_4

    goto :goto_23

    .line 629
    :cond_4
    iput p1, p0, Lcom/transsion/camera/app/ui/widget/TabLayout;->mCurrentTab:I

    .line 630
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/TabLayout;->mTabStrip:Lcom/transsion/camera/app/ui/widget/TabLayout$SlidingTabStrip;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge p1, v0, :cond_23

    const/4 v1, 0x0

    move v2, v1

    :goto_10
    if-ge v2, v0, :cond_23

    .line 633
    iget-object v3, p0, Lcom/transsion/camera/app/ui/widget/TabLayout;->mTabStrip:Lcom/transsion/camera/app/ui/widget/TabLayout$SlidingTabStrip;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-ne v2, p1, :cond_1c

    const/4 v4, 0x1

    goto :goto_1d

    :cond_1c
    move v4, v1

    .line 634
    :goto_1d
    invoke-virtual {v3, v4}, Landroid/view/View;->setSelected(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    :cond_23
    :goto_23
    return-void
.end method

.method private setHeadFootPadding()V
    .registers 6

    .line 970
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/TabLayout;->mTabStrip:Lcom/transsion/camera/app/ui/widget/TabLayout$SlidingTabStrip;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lez v0, :cond_39

    .line 972
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/widget/TabLayout;->getTabLayoutWidth()I

    move-result v1

    .line 974
    iget-object v2, p0, Lcom/transsion/camera/app/ui/widget/TabLayout;->mTabStrip:Lcom/transsion/camera/app/ui/widget/TabLayout$SlidingTabStrip;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    .line 975
    iget-object v4, p0, Lcom/transsion/camera/app/ui/widget/TabLayout;->mTabStrip:Lcom/transsion/camera/app/ui/widget/TabLayout$SlidingTabStrip;

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v4, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    sub-int v2, v1, v2

    .line 976
    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v0

    .line 977
    div-int/lit8 v1, v1, 0x2

    .line 979
    iget v0, p0, Lcom/transsion/camera/app/ui/widget/TabLayout;->mContentInsetStart:I

    iget v4, p0, Lcom/transsion/camera/app/ui/widget/TabLayout;->mTabPaddingStart:I

    sub-int/2addr v0, v4

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 980
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/TabLayout;->mTabStrip:Lcom/transsion/camera/app/ui/widget/TabLayout$SlidingTabStrip;

    add-int/2addr v0, v2

    invoke-static {p0, v0, v3, v1, v3}, Landroidx/core/view/ViewCompat;->setPaddingRelative(Landroid/view/View;IIII)V

    :cond_39
    return-void
.end method

.method private startScrollAnimator()V
    .registers 4

    .line 585
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/TabLayout;->ensureScrollAnimator()V

    .line 586
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/TabLayout;->mScrollAnimator:Landroid/animation/ValueAnimator;

    iget v1, p0, Lcom/transsion/camera/app/ui/widget/TabLayout;->mCurrentScrollX:I

    iget v2, p0, Lcom/transsion/camera/app/ui/widget/TabLayout;->mTargetScrollX:I

    filled-new-array {v1, v2}, [I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    .line 587
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/TabLayout;->mScrollAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 588
    invoke-static {}, Lcom/transsion/camera/utils/dfx/mgr/ExManager;->get()Lcom/transsion/camera/utils/dfx/inter/IExDetection;

    move-result-object v0

    const/16 v1, 0x2c24

    invoke-interface {v0, p0, v1}, Lcom/transsion/camera/utils/dfx/inter/IPerformanceDfx;->begin(Landroid/view/View;I)V

    return-void
.end method

.method private startVibrator()V
    .registers 5

    .line 785
    invoke-static {}, Lcom/transsion/camera/app/common/vibrate/VibratorController;->getInstance()Lcom/transsion/camera/app/common/vibrate/VibratorController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/vibrate/VibratorController;->isSupport()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 786
    invoke-static {}, Lcom/transsion/camera/app/common/vibrate/VibratorController;->getInstance()Lcom/transsion/camera/app/common/vibrate/VibratorController;

    move-result-object p0

    const-string v0, "Cam_mode_sw.he"

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/vibrate/VibratorController;->doVibrate(Ljava/lang/String;)V

    return-void

    .line 789
    :cond_14
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/TabLayout;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/transsion/camera/utils/FeatureSupport;->isSupportVibrate(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, -0x1

    const-string/jumbo v2, "vibrator"

    if-eqz v0, :cond_3d

    .line 790
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/camera/utils/FeatureSupport;->isVibrateWhenCloseTouch(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_57

    .line 791
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/TabLayout;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Vibrator;

    const-wide/32 v2, 0x78a2764e    # 9.99945902E-315

    .line 792
    invoke-static {v2, v3, v1}, Landroid/os/VibrationEffect;->createOneShot(JI)Landroid/os/VibrationEffect;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Vibrator;->vibrate(Landroid/os/VibrationEffect;)V

    return-void

    .line 797
    :cond_3d
    sget-object v0, Lcom/transsion/camera/app/ui/widget/TabLayout;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v3, "startVibrator, use os vibrator"

    invoke-static {v0, v3}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 798
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/TabLayout;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Vibrator;

    if-eqz p0, :cond_57

    const-wide/16 v2, 0x32

    .line 801
    invoke-static {v2, v3, v1}, Landroid/os/VibrationEffect;->createOneShot(JI)Landroid/os/VibrationEffect;

    move-result-object v0

    .line 802
    invoke-virtual {p0, v0}, Landroid/os/Vibrator;->vibrate(Landroid/os/VibrationEffect;)V

    :cond_57
    return-void
.end method

.method private updateScrollPosition(ZI)V
    .registers 4

    .line 870
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/TabLayout;->invalidCurrentTab()Z

    move-result v0

    if-nez v0, :cond_29

    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/TabLayout;->viewNotReady()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_29

    .line 876
    :cond_d
    invoke-direct {p0, p2}, Lcom/transsion/camera/app/ui/widget/TabLayout;->updateScrollX(I)Z

    move-result p2

    if-eqz p2, :cond_28

    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/TabLayout;->differentScrollX()Z

    move-result p2

    if-eqz p2, :cond_28

    if-eqz p1, :cond_1f

    .line 878
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/TabLayout;->startScrollAnimator()V

    return-void

    .line 880
    :cond_1f
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/TabLayout;->cancelScrollAnimator()V

    .line 881
    iget p1, p0, Lcom/transsion/camera/app/ui/widget/TabLayout;->mTargetScrollX:I

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->scrollTo(II)V

    :cond_28
    return-void

    :cond_29
    :goto_29
    const/4 p1, 0x1

    .line 873
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/widget/TabLayout;->mReScrollToSelectTab:Z

    const/4 v0, 0x0

    .line 874
    invoke-virtual {p0, p2, v0, p1}, Lcom/transsion/camera/app/ui/widget/TabLayout;->setScrollPosition(IFZ)V

    .line 875
    sget-object p0, Lcom/transsion/camera/app/ui/widget/TabLayout;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "[updateScrollPosition] viewNotReady"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private updateScrollX(I)Z
    .registers 4

    .line 544
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v0

    const/4 v1, 0x0

    .line 545
    invoke-direct {p0, p1, v1}, Lcom/transsion/camera/app/ui/widget/TabLayout;->calculateScrollXForTab(IF)I

    move-result p1

    .line 546
    iget v1, p0, Lcom/transsion/camera/app/ui/widget/TabLayout;->mCurrentScrollX:I

    if-ne v0, v1, :cond_13

    iget v1, p0, Lcom/transsion/camera/app/ui/widget/TabLayout;->mTargetScrollX:I

    if-ne p1, v1, :cond_13

    const/4 p0, 0x0

    return p0

    .line 549
    :cond_13
    iput v0, p0, Lcom/transsion/camera/app/ui/widget/TabLayout;->mCurrentScrollX:I

    .line 550
    iput p1, p0, Lcom/transsion/camera/app/ui/widget/TabLayout;->mTargetScrollX:I

    const/4 p0, 0x1

    return p0
.end method

.method private updateSelectedTab(Lcom/transsion/camera/app/ui/widget/TabLayout$Tab;)V
    .registers 2

    .line 887
    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/TabLayout;->mSelectedTab:Lcom/transsion/camera/app/ui/widget/TabLayout$Tab;

    if-eqz p1, :cond_7

    .line 889
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/widget/TabLayout;->dispatchTabSelected(Lcom/transsion/camera/app/ui/widget/TabLayout$Tab;)V

    :cond_7
    return-void
.end method

.method private updateTabViewLayoutParams(Landroid/widget/LinearLayout$LayoutParams;)V
    .registers 2

    const/4 p0, -0x2

    .line 482
    iput p0, p1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const/4 p0, 0x0

    .line 483
    iput p0, p1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    return-void
.end method

.method private validTabIndex(I)I
    .registers 2

    .line 848
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/TabLayout;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    move-result p0

    const/4 p1, 0x0

    invoke-static {p1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method private viewNotReady()Z
    .registers 2

    .line 559
    invoke-virtual {p0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_17

    invoke-static {p0}, Landroidx/core/view/ViewCompat;->isLaidOut(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/TabLayout;->mTabStrip:Lcom/transsion/camera/app/ui/widget/TabLayout$SlidingTabStrip;

    .line 560
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/widget/TabLayout$SlidingTabStrip;->childrenNeedLayout()Z

    move-result p0

    if-eqz p0, :cond_15

    goto :goto_17

    :cond_15
    const/4 p0, 0x0

    return p0

    :cond_17
    :goto_17
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public addTab(Lcom/transsion/camera/app/ui/widget/TabLayout$Tab;IZ)V
    .registers 5

    .line 292
    iget-object v0, p1, Lcom/transsion/camera/app/ui/widget/TabLayout$Tab;->mParent:Lcom/transsion/camera/app/ui/widget/TabLayout;

    if-ne v0, p0, :cond_11

    .line 295
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/ui/widget/TabLayout;->configureTab(Lcom/transsion/camera/app/ui/widget/TabLayout$Tab;I)V

    .line 296
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/widget/TabLayout;->addTabView(Lcom/transsion/camera/app/ui/widget/TabLayout$Tab;)V

    if-eqz p3, :cond_10

    const/4 p0, 0x0

    .line 299
    invoke-virtual {p1, p0, p0}, Lcom/transsion/camera/app/ui/widget/TabLayout$Tab;->select(ZZ)V

    :cond_10
    return-void

    .line 293
    :cond_11
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Tab belongs to a different TabLayout."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public addTab(Lcom/transsion/camera/app/ui/widget/TabLayout$Tab;Z)V
    .registers 4

    .line 281
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/TabLayout;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p0, p1, v0, p2}, Lcom/transsion/camera/app/ui/widget/TabLayout;->addTab(Lcom/transsion/camera/app/ui/widget/TabLayout$Tab;IZ)V

    return-void
.end method

.method public addView(Landroid/view/View;)V
    .registers 2

    .line 0
    return-void
.end method

.method public addView(Landroid/view/View;I)V
    .registers 3

    .line 0
    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .registers 4

    .line 0
    return-void
.end method

.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .registers 3

    .line 0
    return-void
.end method

.method public canScrollToNext()Z
    .registers 3

    .line 808
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/widget/TabLayout;->isScrolling()Z

    move-result v0

    if-nez v0, :cond_13

    iget v0, p0, Lcom/transsion/camera/app/ui/widget/TabLayout;->mCurrentTab:I

    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/TabLayout;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    const/4 v1, 0x1

    sub-int/2addr p0, v1

    if-ge v0, p0, :cond_13

    return v1

    :cond_13
    const/4 p0, 0x0

    return p0
.end method

.method public canScrollToPrevious()Z
    .registers 2

    .line 813
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/widget/TabLayout;->isScrolling()Z

    move-result v0

    if-nez v0, :cond_c

    iget p0, p0, Lcom/transsion/camera/app/ui/widget/TabLayout;->mCurrentTab:I

    if-lez p0, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method public canScrolling()Z
    .registers 1

    .line 818
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/widget/TabLayout;->isScrolling()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public checkTabIndex()V
    .registers 3

    .line 659
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/TabLayout;->mSelectedTab:Lcom/transsion/camera/app/ui/widget/TabLayout$Tab;

    if-eqz v0, :cond_c

    const/4 v1, 0x0

    .line 660
    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/widget/TabLayout$Tab;->getPosition()I

    move-result v0

    invoke-direct {p0, v1, v0}, Lcom/transsion/camera/app/ui/widget/TabLayout;->updateScrollPosition(ZI)V

    :cond_c
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 4

    .line 1017
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_10

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    if-eqz v0, :cond_10

    const/4 p0, 0x1

    return p0

    .line 1021
    :cond_10
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/TabLayout;->mGestureDetector:Landroid/view/GestureDetector;

    if-eqz v0, :cond_17

    .line 1022
    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1027
    :cond_17
    :try_start_17
    invoke-super {p0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_1b} :catch_1c

    return p0

    :catch_1c
    move-exception p0

    .line 1029
    sget-object p1, Lcom/transsion/camera/app/ui/widget/TabLayout;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dispatchTouchEvent exception: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public down(FF)V
    .registers 3

    .line 678
    iput p1, p0, Lcom/transsion/camera/app/ui/widget/TabLayout;->mStartScrollX:F

    .line 679
    iput p2, p0, Lcom/transsion/camera/app/ui/widget/TabLayout;->mStartScrollY:F

    return-void
.end method

.method dpToPx(I)I
    .registers 2

    .line 487
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    int-to-float p1, p1

    mul-float/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    return p0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .registers 2

    .line 88
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/widget/TabLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/FrameLayout$LayoutParams;
    .registers 2

    .line 1572
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->generateDefaultLayoutParams()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method public getCenterNearestIndex()I
    .registers 13

    const/4 v0, 0x2

    .line 755
    new-array v1, v0, [I

    .line 756
    iget-object v2, p0, Lcom/transsion/camera/app/ui/widget/TabLayout;->mTabs:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/camera/app/ui/widget/TabLayout$Tab;

    iget-object v2, v2, Lcom/transsion/camera/app/ui/widget/TabLayout$Tab;->mView:Lcom/transsion/camera/app/ui/widget/TabLayout$TabView;

    invoke-virtual {v2, v1}, Landroid/view/View;->getLocationInWindow([I)V

    .line 757
    new-array v2, v0, [I

    .line 758
    invoke-virtual {p0, v2}, Landroid/view/View;->getLocationInWindow([I)V

    .line 759
    aget v4, v2, v3

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v5

    div-int/2addr v5, v0

    add-int/2addr v4, v5

    .line 760
    aget v5, v1, v3

    iget-object v6, p0, Lcom/transsion/camera/app/ui/widget/TabLayout;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/transsion/camera/app/ui/widget/TabLayout$Tab;

    iget-object v6, v6, Lcom/transsion/camera/app/ui/widget/TabLayout$Tab;->mView:Lcom/transsion/camera/app/ui/widget/TabLayout$TabView;

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v6

    div-int/2addr v6, v0

    add-int/2addr v5, v6

    sub-int/2addr v5, v4

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    .line 761
    iget v6, p0, Lcom/transsion/camera/app/ui/widget/TabLayout;->mScreenFormType:I

    const/4 v7, 0x5

    const/4 v8, 0x1

    const/4 v9, 0x4

    if-ne v6, v9, :cond_62

    .line 762
    iget v4, p0, Lcom/transsion/camera/app/ui/widget/TabLayout;->mScreenHeight:I

    aget v2, v2, v8

    sub-int/2addr v4, v2

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    div-int/2addr v2, v0

    add-int/2addr v4, v2

    .line 763
    iget v2, p0, Lcom/transsion/camera/app/ui/widget/TabLayout;->mScreenHeight:I

    aget v5, v1, v8

    sub-int/2addr v2, v5

    iget-object v5, p0, Lcom/transsion/camera/app/ui/widget/TabLayout;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/transsion/camera/app/ui/widget/TabLayout$Tab;

    iget-object v5, v5, Lcom/transsion/camera/app/ui/widget/TabLayout$Tab;->mView:Lcom/transsion/camera/app/ui/widget/TabLayout$TabView;

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v5

    div-int/2addr v5, v0

    add-int/2addr v2, v5

    sub-int/2addr v2, v4

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v5

    goto :goto_83

    :cond_62
    if-ne v6, v7, :cond_83

    .line 765
    aget v2, v2, v8

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v4

    div-int/2addr v4, v0

    add-int/2addr v4, v2

    .line 766
    aget v2, v1, v8

    iget-object v5, p0, Lcom/transsion/camera/app/ui/widget/TabLayout;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/transsion/camera/app/ui/widget/TabLayout$Tab;

    iget-object v5, v5, Lcom/transsion/camera/app/ui/widget/TabLayout$Tab;->mView:Lcom/transsion/camera/app/ui/widget/TabLayout$TabView;

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v5

    div-int/2addr v5, v0

    add-int/2addr v2, v5

    sub-int/2addr v2, v4

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v5

    :cond_83
    :goto_83
    move v6, v3

    move v2, v8

    .line 768
    :goto_85
    iget-object v10, p0, Lcom/transsion/camera/app/ui/widget/TabLayout;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v2, v10, :cond_f0

    .line 769
    iget-object v10, p0, Lcom/transsion/camera/app/ui/widget/TabLayout;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/transsion/camera/app/ui/widget/TabLayout$Tab;

    iget-object v10, v10, Lcom/transsion/camera/app/ui/widget/TabLayout$Tab;->mView:Lcom/transsion/camera/app/ui/widget/TabLayout$TabView;

    invoke-virtual {v10, v1}, Landroid/view/View;->getLocationInWindow([I)V

    .line 770
    aget v10, v1, v3

    iget-object v11, p0, Lcom/transsion/camera/app/ui/widget/TabLayout;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/transsion/camera/app/ui/widget/TabLayout$Tab;

    iget-object v11, v11, Lcom/transsion/camera/app/ui/widget/TabLayout$Tab;->mView:Lcom/transsion/camera/app/ui/widget/TabLayout$TabView;

    invoke-virtual {v11}, Landroid/view/View;->getWidth()I

    move-result v11

    div-int/2addr v11, v0

    add-int/2addr v10, v11

    sub-int/2addr v10, v4

    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v10

    .line 771
    iget v11, p0, Lcom/transsion/camera/app/ui/widget/TabLayout;->mScreenFormType:I

    if-ne v11, v9, :cond_d0

    .line 772
    iget v10, p0, Lcom/transsion/camera/app/ui/widget/TabLayout;->mScreenHeight:I

    aget v11, v1, v8

    sub-int/2addr v10, v11

    iget-object v11, p0, Lcom/transsion/camera/app/ui/widget/TabLayout;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/transsion/camera/app/ui/widget/TabLayout$Tab;

    iget-object v11, v11, Lcom/transsion/camera/app/ui/widget/TabLayout$Tab;->mView:Lcom/transsion/camera/app/ui/widget/TabLayout$TabView;

    invoke-virtual {v11}, Landroid/view/View;->getWidth()I

    move-result v11

    div-int/2addr v11, v0

    add-int/2addr v10, v11

    sub-int/2addr v10, v4

    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v10

    goto :goto_e9

    :cond_d0
    if-ne v11, v7, :cond_e9

    .line 774
    aget v10, v1, v8

    iget-object v11, p0, Lcom/transsion/camera/app/ui/widget/TabLayout;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/transsion/camera/app/ui/widget/TabLayout$Tab;

    iget-object v11, v11, Lcom/transsion/camera/app/ui/widget/TabLayout$Tab;->mView:Lcom/transsion/camera/app/ui/widget/TabLayout$TabView;

    invoke-virtual {v11}, Landroid/view/View;->getWidth()I

    move-result v11

    div-int/2addr v11, v0

    add-int/2addr v10, v11

    sub-int/2addr v10, v4

    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v10

    :cond_e9
    :goto_e9
    if-ge v10, v5, :cond_ed

    move v6, v2

    move v5, v10

    :cond_ed
    add-int/lit8 v2, v2, 0x1

    goto :goto_85

    :cond_f0
    return v6
.end method

.method public getMoreTabView()Lcom/transsion/camera/app/ui/widget/TabLayout$TabView;
    .registers 2

    .line 344
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/TabLayout;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/app/ui/widget/TabLayout$Tab;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/TabLayout$Tab;->mView:Lcom/transsion/camera/app/ui/widget/TabLayout$TabView;

    return-object p0
.end method

.method public getSelectedTabPosition()I
    .registers 1

    .line 361
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/TabLayout;->mSelectedTab:Lcom/transsion/camera/app/ui/widget/TabLayout$Tab;

    if-eqz p0, :cond_9

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/widget/TabLayout$Tab;->getPosition()I

    move-result p0

    return p0

    :cond_9
    const/4 p0, -0x1

    return p0
.end method

.method public getTabAt(I)Lcom/transsion/camera/app/ui/widget/TabLayout$Tab;
    .registers 3

    if-ltz p1, :cond_12

    .line 352
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/widget/TabLayout;->getTabCount()I

    move-result v0

    if-lt p1, v0, :cond_9

    goto :goto_12

    :cond_9
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/TabLayout;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/app/ui/widget/TabLayout$Tab;

    return-object p0

    :cond_12
    :goto_12
    const/4 p0, 0x0

    return-object p0
.end method

.method public getTabCount()I
    .registers 1

    .line 340
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/TabLayout;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0
.end method

.method public getTabLayoutWidth()I
    .registers 1

    .line 1580
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p0

    return p0
.end method

.method getTabMaxWidth()I
    .registers 1

    .line 1576
    iget p0, p0, Lcom/transsion/camera/app/ui/widget/TabLayout;->mTabMaxWidth:I

    return p0
.end method

.method public isScrolling()Z
    .registers 4

    .line 1001
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/TabLayout;->mScrollAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_2a

    .line 1002
    sget-object v0, Lcom/transsion/camera/app/ui/widget/TabLayout;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[isScrolling] mScrollAnimator.isRunning(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/widget/TabLayout;->mScrollAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ",mMoving:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/widget/TabLayout;->mMoving:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1004
    :cond_2a
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/TabLayout;->mScrollAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_34

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_38

    :cond_34
    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/widget/TabLayout;->mMoving:Z

    if-eqz p0, :cond_3a

    :cond_38
    const/4 p0, 0x1

    return p0

    :cond_3a
    const/4 p0, 0x0

    return p0
.end method

.method public newTab(Z)Lcom/transsion/camera/app/ui/widget/TabLayout$Tab;
    .registers 3

    .line 324
    sget-object v0, Lcom/transsion/camera/app/ui/widget/TabLayout;->sTabPool:Landroidx/core/util/Pools$Pool;

    invoke-interface {v0}, Landroidx/core/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/ui/widget/TabLayout$Tab;

    if-nez v0, :cond_f

    .line 326
    new-instance v0, Lcom/transsion/camera/app/ui/widget/TabLayout$Tab;

    invoke-direct {v0}, Lcom/transsion/camera/app/ui/widget/TabLayout$Tab;-><init>()V

    .line 328
    :cond_f
    iput-object p0, v0, Lcom/transsion/camera/app/ui/widget/TabLayout$Tab;->mParent:Lcom/transsion/camera/app/ui/widget/TabLayout;

    .line 329
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/widget/TabLayout;->createTabView(Lcom/transsion/camera/app/ui/widget/TabLayout$Tab;)Lcom/transsion/camera/app/ui/widget/TabLayout$TabView;

    move-result-object p0

    iput-object p0, v0, Lcom/transsion/camera/app/ui/widget/TabLayout$Tab;->mView:Lcom/transsion/camera/app/ui/widget/TabLayout$TabView;

    .line 330
    invoke-virtual {p0, p1}, Landroid/view/View;->setFocusable(Z)V

    return-object v0
.end method

.method protected onLayout(ZIIII)V
    .registers 6

    .line 940
    invoke-super/range {p0 .. p5}, Landroid/widget/HorizontalScrollView;->onLayout(ZIIII)V

    .line 941
    iget p2, p0, Lcom/transsion/camera/app/ui/widget/TabLayout;->mScreenFormType:I

    if-nez p2, :cond_1b

    .line 942
    invoke-static {}, Lcom/transsion/camera/utils/ScreenUtils;->getScreenSize()Landroid/util/Size;

    move-result-object p2

    if-eqz p2, :cond_1b

    .line 943
    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result p2

    if-le p4, p2, :cond_1b

    .line 944
    sget-object p0, Lcom/transsion/camera/app/ui/widget/TabLayout;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "[onLayout] abnormal, skip!"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    :cond_1b
    if-eqz p1, :cond_28

    .line 950
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/TabLayout;->setHeadFootPadding()V

    .line 951
    iget p1, p0, Lcom/transsion/camera/app/ui/widget/TabLayout;->mCurrentTab:I

    const/4 p2, 0x0

    const/4 p3, 0x0

    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/camera/app/ui/widget/TabLayout;->setScrollPosition(IFZ)V

    return-void

    .line 953
    :cond_28
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/TabLayout;->ensureSelectedTabPosition()V

    return-void
.end method

.method protected onMeasure(II)V
    .registers 7

    .line 494
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/TabLayout;->getDefaultHeight()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/widget/TabLayout;->dpToPx(I)I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    .line 495
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    const/high16 v2, -0x80000000

    const/high16 v3, 0x40000000    # 2.0f

    if-eq v1, v2, :cond_24

    if-eqz v1, :cond_1f

    goto :goto_30

    .line 502
    :cond_1f
    invoke-static {v0, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    goto :goto_30

    .line 498
    :cond_24
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 497
    invoke-static {p2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 506
    :goto_30
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 507
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    if-eqz v1, :cond_43

    const/16 v1, 0x38

    .line 510
    invoke-virtual {p0, v1}, Lcom/transsion/camera/app/ui/widget/TabLayout;->dpToPx(I)I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/transsion/camera/app/ui/widget/TabLayout;->mTabMaxWidth:I

    .line 514
    :cond_43
    invoke-super {p0, p1, p2}, Landroid/widget/HorizontalScrollView;->onMeasure(II)V

    .line 516
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_7a

    const/4 p1, 0x0

    .line 519
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    .line 520
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    if-ge v0, v1, :cond_7a

    .line 523
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    .line 524
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 523
    invoke-static {p2, v0, v1}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result p2

    .line 526
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    .line 525
    invoke-static {v0, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 527
    invoke-virtual {p1, v0, p2}, Landroid/view/View;->measure(II)V

    .line 530
    :cond_7a
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/TabLayout;->onMeasureDone()V

    return-void
.end method

.method protected onScrollChanged(IIII)V
    .registers 5

    .line 728
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onScrollChanged(IIII)V

    .line 729
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/TabLayout;->mTabScrollListener:Lcom/transsion/camera/app/ui/widget/TabLayout$OnTabScrollListener;

    if-eqz p0, :cond_a

    .line 730
    invoke-interface {p0}, Lcom/transsion/camera/app/ui/widget/TabLayout$OnTabScrollListener;->onScrolling()V

    :cond_a
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 2

    const/4 p0, 0x1

    return p0
.end method

.method public removeAllTabs()V
    .registers 4

    .line 409
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/TabLayout;->mTabStrip:Lcom/transsion/camera/app/ui/widget/TabLayout$SlidingTabStrip;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_10

    .line 410
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/widget/TabLayout;->removeTabViewAt(I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 413
    :cond_10
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/TabLayout;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_16
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 414
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/ui/widget/TabLayout$Tab;

    .line 415
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 416
    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/widget/TabLayout$Tab;->reset()V

    .line 417
    sget-object v2, Lcom/transsion/camera/app/ui/widget/TabLayout;->sTabPool:Landroidx/core/util/Pools$Pool;

    invoke-interface {v2, v1}, Landroidx/core/util/Pools$Pool;->release(Ljava/lang/Object;)Z

    goto :goto_16

    :cond_2e
    const/4 v0, 0x0

    .line 420
    iput-object v0, p0, Lcom/transsion/camera/app/ui/widget/TabLayout;->mSelectedTab:Lcom/transsion/camera/app/ui/widget/TabLayout$Tab;

    return-void
.end method

.method public scrollToNext()V
    .registers 4

    .line 823
    iget v0, p0, Lcom/transsion/camera/app/ui/widget/TabLayout;->mCurrentTab:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/widget/TabLayout;->validTabIndex(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/widget/TabLayout;->scrollTo(I)V

    .line 824
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/TabLayout;->mSelectedTab:Lcom/transsion/camera/app/ui/widget/TabLayout$Tab;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/TabLayout;->mTabs:Ljava/util/ArrayList;

    iget v2, p0, Lcom/transsion/camera/app/ui/widget/TabLayout;->mCurrentTab:I

    invoke-direct {p0, v2}, Lcom/transsion/camera/app/ui/widget/TabLayout;->validTabIndex(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eq v0, v1, :cond_2c

    .line 825
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/TabLayout;->mTabs:Ljava/util/ArrayList;

    iget v1, p0, Lcom/transsion/camera/app/ui/widget/TabLayout;->mCurrentTab:I

    invoke-direct {p0, v1}, Lcom/transsion/camera/app/ui/widget/TabLayout;->validTabIndex(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/ui/widget/TabLayout$Tab;

    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/widget/TabLayout;->updateSelectedTab(Lcom/transsion/camera/app/ui/widget/TabLayout$Tab;)V

    :cond_2c
    return-void
.end method

.method public scrollToPrevious()V
    .registers 4

    .line 831
    iget v0, p0, Lcom/transsion/camera/app/ui/widget/TabLayout;->mCurrentTab:I

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/widget/TabLayout;->validTabIndex(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/widget/TabLayout;->scrollTo(I)V

    .line 832
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/TabLayout;->mSelectedTab:Lcom/transsion/camera/app/ui/widget/TabLayout$Tab;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/TabLayout;->mTabs:Ljava/util/ArrayList;

    iget v2, p0, Lcom/transsion/camera/app/ui/widget/TabLayout;->mCurrentTab:I

    invoke-direct {p0, v2}, Lcom/transsion/camera/app/ui/widget/TabLayout;->validTabIndex(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eq v0, v1, :cond_2c

    .line 833
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/TabLayout;->mTabs:Ljava/util/ArrayList;

    iget v1, p0, Lcom/transsion/camera/app/ui/widget/TabLayout;->mCurrentTab:I

    invoke-direct {p0, v1}, Lcom/transsion/camera/app/ui/widget/TabLayout;->validTabIndex(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/ui/widget/TabLayout$Tab;

    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/widget/TabLayout;->updateSelectedTab(Lcom/transsion/camera/app/ui/widget/TabLayout$Tab;)V

    :cond_2c
    return-void
.end method

.method public scrolling(FF)V
    .registers 9

    .line 688
    invoke-static {p0}, Lcom/transsion/camera/utils/MultiTouchManager;->startTouching(Landroid/view/View;)V

    .line 689
    invoke-static {p0}, Lcom/transsion/camera/utils/MultiTouchManager;->canPerformClick(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_b

    goto/16 :goto_a7

    .line 692
    :cond_b
    invoke-static {}, Lcom/transsion/camera/utils/FeatureSupport;->isSupportColumnOrBoth()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_6a

    .line 693
    iget v0, p0, Lcom/transsion/camera/app/ui/widget/TabLayout;->mStartScrollX:F

    iget-object v3, p0, Lcom/transsion/camera/app/ui/widget/TabLayout;->mScrollHotArea:[F

    aget v4, v3, v2

    cmpg-float v4, v0, v4

    if-ltz v4, :cond_4f

    const/4 v4, 0x2

    aget v4, v3, v4

    cmpl-float v0, v0, v4

    if-lez v0, :cond_25

    goto :goto_4f

    .line 698
    :cond_25
    iget v0, p0, Lcom/transsion/camera/app/ui/widget/TabLayout;->mStartScrollY:F

    aget v4, v3, v1

    cmpg-float v4, v0, v4

    if-ltz v4, :cond_34

    const/4 v4, 0x3

    aget v3, v3, v4

    cmpl-float v0, v0, v3

    if-lez v0, :cond_6a

    .line 699
    :cond_34
    sget-object p1, Lcom/transsion/camera/app/ui/widget/TabLayout;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "The starting point exceeds hot area: mStartScrollY = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/transsion/camera/app/ui/widget/TabLayout;->mStartScrollY:F

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 700
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/widget/TabLayout;->mMoving:Z

    return-void

    .line 694
    :cond_4f
    :goto_4f
    sget-object p1, Lcom/transsion/camera/app/ui/widget/TabLayout;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "The starting point exceeds hot area: mStartScrollX = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/transsion/camera/app/ui/widget/TabLayout;->mStartScrollX:F

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 695
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/widget/TabLayout;->mMoving:Z

    return-void

    .line 704
    :cond_6a
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/widget/TabLayout;->mMoving:Z

    if-nez v0, :cond_76

    .line 705
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/widget/TabLayout;->mMoving:Z

    .line 706
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/app/ui/widget/TabLayout;->mPreviousScrollX:I

    .line 708
    :cond_76
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/widget/TabLayout;->getCenterNearestIndex()I

    move-result v0

    float-to-int v1, p1

    .line 709
    iget v3, p0, Lcom/transsion/camera/app/ui/widget/TabLayout;->mPreviousScrollX:I

    add-int/2addr v1, v3

    .line 710
    iget v4, p0, Lcom/transsion/camera/app/ui/widget/TabLayout;->mScreenFormType:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_88

    neg-float p2, p2

    :goto_84
    float-to-int p2, p2

    add-int v1, p2, v3

    goto :goto_8c

    :cond_88
    const/4 v5, 0x5

    if-ne v4, v5, :cond_8c

    goto :goto_84

    .line 715
    :cond_8c
    :goto_8c
    invoke-virtual {p0, v1, v2}, Landroid/view/View;->scrollTo(II)V

    .line 716
    iget p2, p0, Lcom/transsion/camera/app/ui/widget/TabLayout;->mCurrentTab:I

    if-eq v0, p2, :cond_a0

    .line 717
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/widget/TabLayout;->setCurrentTabView(I)V

    .line 718
    sget-object p2, Lcom/transsion/camera/app/ui/widget/TabLayout;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "scrolling, startVibrator"

    invoke-static {p2, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 719
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/TabLayout;->startVibrator()V

    .line 721
    :cond_a0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/TabLayout;->mTabScrollListener:Lcom/transsion/camera/app/ui/widget/TabLayout$OnTabScrollListener;

    if-eqz p0, :cond_a7

    .line 722
    invoke-interface {p0, p1}, Lcom/transsion/camera/app/ui/widget/TabLayout$OnTabScrollListener;->onTabScroll(F)V

    :cond_a7
    :goto_a7
    return-void
.end method

.method public selectTabIndex(IZ)Z
    .registers 5

    .line 650
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/widget/TabLayout;->invalidTabIndex(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    .line 653
    :cond_8
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/TabLayout;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/app/ui/widget/TabLayout$Tab;

    .line 654
    invoke-virtual {p0, p2, v1}, Lcom/transsion/camera/app/ui/widget/TabLayout$Tab;->select(ZZ)V

    const/4 p0, 0x1

    return p0
.end method

.method public setActionIntercept(Lcom/transsion/camera/app/ui/widget/TabLayout$ActionIntercept;)V
    .registers 2

    .line 312
    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/TabLayout;->mActionIntercept:Lcom/transsion/camera/app/ui/widget/TabLayout$ActionIntercept;

    return-void
.end method

.method public setGestureDetector(Landroid/view/GestureDetector;)V
    .registers 2

    .line 1035
    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/TabLayout;->mGestureDetector:Landroid/view/GestureDetector;

    return-void
.end method

.method public setOnTabScrollListener(Lcom/transsion/camera/app/ui/widget/TabLayout$OnTabScrollListener;)V
    .registers 2

    .line 308
    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/TabLayout;->mTabScrollListener:Lcom/transsion/camera/app/ui/widget/TabLayout$OnTabScrollListener;

    return-void
.end method

.method public setOnTabSelectedListener(Lcom/transsion/camera/app/ui/widget/TabLayout$OnTabSelectedListener;)V
    .registers 2

    .line 304
    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/TabLayout;->mSelectedListener:Lcom/transsion/camera/app/ui/widget/TabLayout$OnTabSelectedListener;

    return-void
.end method

.method public setScrollPosition(IFZ)V
    .registers 8

    int-to-float v0, p1

    add-float/2addr v0, p2

    .line 233
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    if-ltz v0, :cond_54

    .line 234
    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/TabLayout;->mTabStrip:Lcom/transsion/camera/app/ui/widget/TabLayout$SlidingTabStrip;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-lt v0, v1, :cond_11

    goto :goto_54

    .line 238
    :cond_11
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/TabLayout;->cancelScrollAnimator()V

    .line 239
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/ui/widget/TabLayout;->calculateScrollXForTab(IF)I

    move-result p1

    const/4 p2, 0x0

    .line 240
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->scrollTo(II)V

    if-lez p1, :cond_4f

    .line 241
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result p2

    sub-int p2, p1, p2

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    const/4 v1, 0x1

    if-le p2, v1, :cond_4f

    .line 243
    sget-object p2, Lcom/transsion/camera/app/ui/widget/TabLayout;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[setScrollPosition] scrollX is not matched: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 244
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/widget/TabLayout;->mReScrollToSelectTab:Z

    :cond_4f
    if-eqz p3, :cond_54

    .line 249
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/widget/TabLayout;->setCurrentTabView(I)V

    :cond_54
    :goto_54
    return-void
.end method

.method public setTabAnimationDuration(I)V
    .registers 2

    .line 993
    iput p1, p0, Lcom/transsion/camera/app/ui/widget/TabLayout;->mTabAnimationDuration:I

    return-void
.end method

.method public setTabAnimationInterpolator(Landroid/view/animation/Interpolator;)V
    .registers 2

    .line 997
    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/TabLayout;->mTabAnimationInterpolator:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public setTabNormalTextColorState(Z)V
    .registers 3

    .line 1323
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/TabLayout;->isOriginal:Ljava/lang/Boolean;

    const/4 p1, 0x0

    .line 1324
    :goto_7
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/widget/TabLayout;->getTabCount()I

    move-result v0

    if-ge p1, v0, :cond_1f

    .line 1325
    iget v0, p0, Lcom/transsion/camera/app/ui/widget/TabLayout;->mCurrentTab:I

    if-eq p1, v0, :cond_1c

    .line 1326
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/widget/TabLayout;->getTabAt(I)Lcom/transsion/camera/app/ui/widget/TabLayout$Tab;

    move-result-object v0

    if-eqz v0, :cond_1c

    .line 1328
    iget-object v0, v0, Lcom/transsion/camera/app/ui/widget/TabLayout$Tab;->mView:Lcom/transsion/camera/app/ui/widget/TabLayout$TabView;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/widget/TabLayout$TabView;->initTabNormalTextColor()V

    :cond_1c
    add-int/lit8 p1, p1, 0x1

    goto :goto_7

    :cond_1f
    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .registers 1

    .line 426
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/TabLayout;->getTabScrollRange()I

    move-result p0

    if-lez p0, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method public stopScroll()V
    .registers 4

    .line 736
    invoke-static {p0}, Lcom/transsion/camera/utils/MultiTouchManager;->stopTouching(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 737
    iput v0, p0, Lcom/transsion/camera/app/ui/widget/TabLayout;->mStartScrollX:F

    .line 738
    iput v0, p0, Lcom/transsion/camera/app/ui/widget/TabLayout;->mStartScrollY:F

    const/4 v0, 0x0

    .line 739
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/widget/TabLayout;->mMoving:Z

    .line 740
    iput v0, p0, Lcom/transsion/camera/app/ui/widget/TabLayout;->mPreviousScrollX:I

    .line 741
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/widget/TabLayout;->getCenterNearestIndex()I

    move-result v0

    .line 742
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/widget/TabLayout;->scrollTo(I)V

    .line 743
    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/TabLayout;->mSelectedTab:Lcom/transsion/camera/app/ui/widget/TabLayout$Tab;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/widget/TabLayout;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eq v1, v2, :cond_29

    .line 744
    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/TabLayout;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/ui/widget/TabLayout$Tab;

    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/widget/TabLayout;->updateSelectedTab(Lcom/transsion/camera/app/ui/widget/TabLayout$Tab;)V

    :cond_29
    return-void
.end method

.method public updateHeadFootPadding()V
    .registers 2

    const/4 v0, 0x1

    .line 966
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/widget/TabLayout;->mNeedUpdateHeadFootPadding:Z

    return-void
.end method

.method public updateRotation(I)V
    .registers 5

    const/4 v0, 0x0

    .line 1312
    :goto_1
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/widget/TabLayout;->getTabCount()I

    move-result v1

    if-ge v0, v1, :cond_16

    .line 1313
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/widget/TabLayout;->getTabAt(I)Lcom/transsion/camera/app/ui/widget/TabLayout$Tab;

    move-result-object v1

    if-eqz v1, :cond_13

    .line 1315
    iget-object v1, v1, Lcom/transsion/camera/app/ui/widget/TabLayout$Tab;->mView:Lcom/transsion/camera/app/ui/widget/TabLayout$TabView;

    int-to-float v2, p1

    invoke-virtual {v1, v2}, Lcom/transsion/camera/app/ui/widget/TabLayout$TabView;->updateRotation(F)V

    :cond_13
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_16
    return-void
.end method

.method public updateScrollHotArea([F)V
    .registers 4

    .line 749
    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/TabLayout;->mScrollHotArea:[F

    .line 750
    sget-object p1, Lcom/transsion/camera/app/ui/widget/TabLayout;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[updateScrollHotArea] current hot area is: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/TabLayout;->mScrollHotArea:[F

    invoke-static {p0}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method updateTabViews(Z)V
    .registers 5

    const/4 v0, 0x0

    .line 929
    :goto_1
    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/TabLayout;->mTabStrip:Lcom/transsion/camera/app/ui/widget/TabLayout$SlidingTabStrip;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_20

    .line 930
    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/TabLayout;->mTabStrip:Lcom/transsion/camera/app/ui/widget/TabLayout$SlidingTabStrip;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 931
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p0, v2}, Lcom/transsion/camera/app/ui/widget/TabLayout;->updateTabViewLayoutParams(Landroid/widget/LinearLayout$LayoutParams;)V

    if-eqz p1, :cond_1d

    .line 933
    invoke-virtual {v1}, Landroid/view/View;->requestLayout()V

    :cond_1d
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_20
    return-void
.end method
