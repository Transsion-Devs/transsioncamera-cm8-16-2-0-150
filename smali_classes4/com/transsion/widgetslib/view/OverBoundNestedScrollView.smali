.class public Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Landroidx/core/view/NestedScrollingParent3;
.implements Landroidx/core/view/NestedScrollingChild;
.implements Landroidx/core/view/ScrollingView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/widgetslib/view/OverBoundNestedScrollView$AccessibilityDelegate;,
        Lcom/transsion/widgetslib/view/OverBoundNestedScrollView$SavedState;,
        Lcom/transsion/widgetslib/view/OverBoundNestedScrollView$OnScrollChangeListener;
    }
.end annotation


# static fields
.field private static final ACCESSIBILITY_DELEGATE:Lcom/transsion/widgetslib/view/OverBoundNestedScrollView$AccessibilityDelegate;

.field static final ANIMATED_SCROLL_GAP:I = 0xfa

.field private static final DEFAULT_SMOOTH_SCROLL_DURATION:I = 0xfa

.field private static final INVALID_POINTER:I = -0x1

.field static final MAX_SCROLL_FACTOR:F = 0.5f

.field private static final SCROLLVIEW_STYLEABLE:[I

.field private static final TAG:Ljava/lang/String; = "NestedScrollView"


# instance fields
.field private mActivePointerId:I

.field private final mChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

.field private mChildToScrollTo:Landroid/view/View;

.field private mEdgeGlowBottom:Landroid/widget/EdgeEffect;

.field private mEdgeGlowTop:Landroid/widget/EdgeEffect;

.field private mFillViewport:Z

.field private mIsBeingDragged:Z

.field private mIsLaidOut:Z

.field private mIsLayoutDirty:Z

.field private mLastMotionY:I

.field private mLastScroll:J

.field private mLastScrollerY:I

.field private mMaximumVelocity:I

.field private mMinimumVelocity:I

.field private mNestedYOffset:I

.field private mOnScrollChangeListener:Lcom/transsion/widgetslib/view/OverBoundNestedScrollView$OnScrollChangeListener;

.field private mOverScrollDecor:Lcom/transsion/effectengine/bounceeffect/IOverScrollDecor;

.field private final mParentHelper:Landroidx/core/view/NestedScrollingParentHelper;

.field private mSavedState:Lcom/transsion/widgetslib/view/OverBoundNestedScrollView$SavedState;

.field private final mScrollConsumed:[I

.field private final mScrollOffset:[I

.field private mScroller:Landroid/widget/OverScroller;

.field private mSmoothScrollingEnabled:Z

.field private final mTempRect:Landroid/graphics/Rect;

.field private mTouchSlop:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private mVerticalScrollFactor:F


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 184
    new-instance v0, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView$AccessibilityDelegate;

    invoke-direct {v0}, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView$AccessibilityDelegate;-><init>()V

    sput-object v0, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->ACCESSIBILITY_DELEGATE:Lcom/transsion/widgetslib/view/OverBoundNestedScrollView$AccessibilityDelegate;

    const v0, 0x101017a

    .line 186
    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->SCROLLVIEW_STYLEABLE:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 198
    invoke-direct {p0, p1, v0}, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    .line 202
    invoke-direct {p0, p1, p2, v0}, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 8

    .line 207
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 110
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->mTempRect:Landroid/graphics/Rect;

    const/4 v0, 0x1

    .line 124
    iput-boolean v0, p0, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->mIsLayoutDirty:Z

    const/4 v1, 0x0

    .line 125
    iput-boolean v1, p0, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->mIsLaidOut:Z

    const/4 v2, 0x0

    .line 132
    iput-object v2, p0, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->mChildToScrollTo:Landroid/view/View;

    .line 139
    iput-boolean v1, p0, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->mIsBeingDragged:Z

    .line 155
    iput-boolean v0, p0, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->mSmoothScrollingEnabled:Z

    const/4 v2, -0x1

    .line 165
    iput v2, p0, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->mActivePointerId:I

    const/4 v2, 0x2

    .line 170
    new-array v3, v2, [I

    iput-object v3, p0, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->mScrollOffset:[I

    .line 171
    new-array v2, v2, [I

    iput-object v2, p0, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->mScrollConsumed:[I

    .line 208
    invoke-direct {p0}, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->initScrollView()V

    .line 210
    sget-object v2, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->SCROLLVIEW_STYLEABLE:[I

    invoke-virtual {p1, p2, v2, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 213
    invoke-virtual {p1, v1, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    invoke-virtual {p0, p2}, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->setFillViewport(Z)V

    .line 215
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 217
    new-instance p1, Landroidx/core/view/NestedScrollingParentHelper;

    invoke-direct {p1, p0}, Landroidx/core/view/NestedScrollingParentHelper;-><init>(Landroid/view/ViewGroup;)V

    iput-object p1, p0, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->mParentHelper:Landroidx/core/view/NestedScrollingParentHelper;

    .line 218
    new-instance p1, Landroidx/core/view/NestedScrollingChildHelper;

    invoke-direct {p1, p0}, Landroidx/core/view/NestedScrollingChildHelper;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->mChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    .line 221
    invoke-virtual {p0, v0}, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->setNestedScrollingEnabled(Z)V

    .line 223
    sget-object p1, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->ACCESSIBILITY_DELEGATE:Lcom/transsion/widgetslib/view/OverBoundNestedScrollView$AccessibilityDelegate;

    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    return-void
.end method

.method private abortAnimatedScroll()V
    .registers 2

    .line 1690
    iget-object v0, p0, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->abortAnimation()V

    const/4 v0, 0x1

    .line 1691
    invoke-virtual {p0, v0}, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->stopNestedScroll(I)V

    return-void
.end method

.method static synthetic access$000(Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;)Lcom/transsion/effectengine/bounceeffect/IOverScrollDecor;
    .registers 1

    .line 77
    iget-object p0, p0, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->mOverScrollDecor:Lcom/transsion/effectengine/bounceeffect/IOverScrollDecor;

    return-object p0
.end method

.method private canScroll()Z
    .registers 5

    .line 531
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_2d

    .line 532
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 533
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 534
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    iget v3, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr v0, v3

    iget v2, v2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v0, v2

    .line 535
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result p0

    sub-int/2addr v2, p0

    if-le v0, v2, :cond_2d

    const/4 p0, 0x1

    return p0

    :cond_2d
    return v1
.end method

.method private static clamp(III)I
    .registers 4

    if-ge p1, p2, :cond_c

    if-gez p0, :cond_5

    goto :goto_c

    :cond_5
    add-int v0, p1, p0

    if-le v0, p2, :cond_b

    sub-int/2addr p2, p1

    return p2

    :cond_b
    return p0

    :cond_c
    :goto_c
    const/4 p0, 0x0

    return p0
.end method

.method private doScrollY(I)V
    .registers 4

    if-eqz p1, :cond_e

    .line 1418
    iget-boolean v0, p0, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->mSmoothScrollingEnabled:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_b

    .line 1419
    invoke-virtual {p0, v1, p1}, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->smoothScrollBy(II)V

    return-void

    .line 1421
    :cond_b
    invoke-virtual {p0, v1, p1}, Landroid/view/View;->scrollBy(II)V

    :cond_e
    return-void
.end method

.method private endDrag()V
    .registers 2

    const/4 v0, 0x0

    .line 1966
    iput-boolean v0, p0, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->mIsBeingDragged:Z

    .line 1968
    invoke-direct {p0}, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->recycleVelocityTracker()V

    .line 1969
    invoke-virtual {p0, v0}, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->stopNestedScroll(I)V

    .line 1971
    iget-object v0, p0, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    if-eqz v0, :cond_15

    .line 1972
    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 1973
    iget-object p0, p0, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Landroid/widget/EdgeEffect;->onRelease()V

    :cond_15
    return-void
.end method

.method private ensureGlows()V
    .registers 3

    .line 2001
    invoke-virtual {p0}, Landroid/view/View;->getOverScrollMode()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1e

    .line 2002
    iget-object v0, p0, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    if-nez v0, :cond_1d

    .line 2003
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 2004
    new-instance v1, Landroid/widget/EdgeEffect;

    invoke-direct {v1, v0}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    .line 2005
    new-instance v1, Landroid/widget/EdgeEffect;

    invoke-direct {v1, v0}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    :cond_1d
    return-void

    :cond_1e
    const/4 v0, 0x0

    .line 2008
    iput-object v0, p0, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    .line 2009
    iput-object v0, p0, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    return-void
.end method

.method private findFocusableViewInBounds(ZII)Landroid/view/View;
    .registers 15

    const/4 v0, 0x2

    .line 1163
    invoke-virtual {p0, v0}, Landroid/view/View;->getFocusables(I)Ljava/util/ArrayList;

    move-result-object p0

    .line 1175
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_d
    if-ge v3, v0, :cond_53

    .line 1177
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    .line 1178
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v6

    .line 1179
    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v7

    if-ge p2, v7, :cond_50

    if-ge v6, p3, :cond_50

    const/4 v8, 0x1

    if-ge p2, v6, :cond_28

    if-ge v7, p3, :cond_28

    move v9, v8

    goto :goto_29

    :cond_28
    move v9, v2

    :goto_29
    if-nez v1, :cond_2e

    move-object v1, v5

    move v4, v9

    goto :goto_50

    :cond_2e
    if-eqz p1, :cond_36

    .line 1195
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v10

    if-lt v6, v10, :cond_3e

    :cond_36
    if-nez p1, :cond_40

    .line 1196
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v6

    if-le v7, v6, :cond_40

    :cond_3e
    move v6, v8

    goto :goto_41

    :cond_40
    move v6, v2

    :goto_41
    if-eqz v4, :cond_48

    if-eqz v9, :cond_50

    if-eqz v6, :cond_50

    goto :goto_4f

    :cond_48
    if-eqz v9, :cond_4d

    move-object v1, v5

    move v4, v8

    goto :goto_50

    :cond_4d
    if-eqz v6, :cond_50

    :goto_4f
    move-object v1, v5

    :cond_50
    :goto_50
    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    :cond_53
    return-object v1
.end method

.method private getVerticalScrollFactorCompat()F
    .registers 6

    .line 1056
    iget v0, p0, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->mVerticalScrollFactor:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_35

    .line 1057
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 1058
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 1059
    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const v3, 0x101004d

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v0, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 1065
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 1064
    invoke-virtual {v0, v1}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->mVerticalScrollFactor:F

    goto :goto_35

    .line 1061
    :cond_2d
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Expected theme to define listPreferredItemHeight."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1067
    :cond_35
    :goto_35
    iget p0, p0, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->mVerticalScrollFactor:F

    return p0
.end method

.method private inChild(II)Z
    .registers 6

    .line 683
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_2b

    .line 684
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v0

    .line 685
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    .line 686
    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v2

    sub-int/2addr v2, v0

    if-lt p2, v2, :cond_2b

    .line 687
    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result v2

    sub-int/2addr v2, v0

    if-ge p2, v2, :cond_2b

    .line 688
    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result p2

    if-lt p1, p2, :cond_2b

    .line 689
    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    move-result p0

    if-ge p1, p0, :cond_2b

    const/4 p0, 0x1

    return p0

    :cond_2b
    return v1
.end method

.method private initOrResetVelocityTracker()V
    .registers 2

    .line 695
    iget-object v0, p0, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_b

    .line 696
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    return-void

    .line 698
    :cond_b
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    return-void
.end method

.method private initScrollView()V
    .registers 3

    .line 468
    new-instance v0, Landroid/widget/OverScroller;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->mScroller:Landroid/widget/OverScroller;

    const/4 v0, 0x1

    .line 469
    invoke-virtual {p0, v0}, Landroid/view/View;->setFocusable(Z)V

    const/high16 v0, 0x40000

    .line 470
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    const/4 v0, 0x0

    .line 471
    invoke-virtual {p0, v0}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 472
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 473
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->mTouchSlop:I

    .line 474
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v1

    iput v1, p0, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->mMinimumVelocity:I

    .line 475
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->mMaximumVelocity:I

    return-void
.end method

.method private initVelocityTrackerIfNotExists()V
    .registers 2

    .line 703
    iget-object v0, p0, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_a

    .line 704
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_a
    return-void
.end method

.method private isOffScreen(Landroid/view/View;)Z
    .registers 4

    const/4 v0, 0x0

    .line 1396
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->isWithinDeltaOfScreen(Landroid/view/View;II)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private static isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z
    .registers 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 1942
    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    .line 1943
    instance-of v1, p0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_15

    check-cast p0, Landroid/view/View;

    invoke-static {p0, p1}, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z

    move-result p0

    if-eqz p0, :cond_15

    return v0

    :cond_15
    const/4 p0, 0x0

    return p0
.end method

.method private isWithinDeltaOfScreen(Landroid/view/View;II)Z
    .registers 5

    .line 1404
    iget-object v0, p0, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 1405
    iget-object v0, p0, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v0}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1407
    iget-object p1, p0, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->mTempRect:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr p1, p2

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v0

    if-lt p1, v0, :cond_23

    iget-object p1, p0, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->mTempRect:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr p1, p2

    .line 1408
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result p0

    add-int/2addr p0, p3

    if-gt p1, p0, :cond_23

    const/4 p0, 0x1

    return p0

    :cond_23
    const/4 p0, 0x0

    return p0
.end method

.method private onNestedScrollInternal(II[I)V
    .registers 14

    .line 323
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v0

    const/4 v1, 0x0

    .line 324
    invoke-virtual {p0, v1, p1}, Landroid/view/View;->scrollBy(II)V

    .line 325
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v1

    sub-int v4, v1, v0

    if-eqz p3, :cond_16

    const/4 v0, 0x1

    .line 328
    aget v1, p3, v0

    add-int/2addr v1, v4

    aput v1, p3, v0

    :cond_16
    sub-int v6, p1, v4

    .line 332
    iget-object v2, p0, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->mChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v3, 0x0

    move v8, p2

    move-object v9, p3

    invoke-virtual/range {v2 .. v9}, Landroidx/core/view/NestedScrollingChildHelper;->dispatchNestedScroll(IIII[II[I)V

    return-void
.end method

.method private onSecondaryPointerUp(Landroid/view/MotionEvent;)V
    .registers 5

    .line 1011
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    .line 1012
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 1013
    iget v2, p0, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->mActivePointerId:I

    if-ne v1, v2, :cond_25

    if-nez v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    .line 1018
    :goto_11
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->mLastMotionY:I

    .line 1019
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->mActivePointerId:I

    .line 1020
    iget-object p0, p0, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz p0, :cond_25

    .line 1021
    invoke-virtual {p0}, Landroid/view/VelocityTracker;->clear()V

    :cond_25
    return-void
.end method

.method private recycleVelocityTracker()V
    .registers 2

    .line 709
    iget-object v0, p0, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_a

    .line 710
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v0, 0x0

    .line 711
    iput-object v0, p0, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_a
    return-void
.end method

.method private runAnimatedScroll(Z)V
    .registers 3

    const/4 v0, 0x1

    if-eqz p1, :cond_8

    const/4 p1, 0x2

    .line 1681
    invoke-virtual {p0, p1, v0}, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->startNestedScroll(II)Z

    goto :goto_b

    .line 1683
    :cond_8
    invoke-virtual {p0, v0}, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->stopNestedScroll(I)V

    .line 1685
    :goto_b
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result p1

    iput p1, p0, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->mLastScrollerY:I

    .line 1686
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    return-void
.end method

.method private scrollAndFocus(III)Z
    .registers 10

    .line 1312
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 1313
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v1

    add-int/2addr v0, v1

    const/16 v2, 0x21

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne p1, v2, :cond_11

    move v2, v4

    goto :goto_12

    :cond_11
    move v2, v3

    .line 1317
    :goto_12
    invoke-direct {p0, v2, p2, p3}, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->findFocusableViewInBounds(ZII)Landroid/view/View;

    move-result-object v5

    if-nez v5, :cond_19

    move-object v5, p0

    :cond_19
    if-lt p2, v1, :cond_1e

    if-gt p3, v0, :cond_1e

    goto :goto_28

    :cond_1e
    if-eqz v2, :cond_22

    sub-int/2addr p2, v1

    goto :goto_24

    :cond_22
    sub-int p2, p3, v0

    .line 1326
    :goto_24
    invoke-direct {p0, p2}, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->doScrollY(I)V

    move v3, v4

    .line 1329
    :goto_28
    invoke-virtual {p0}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object p0

    if-eq v5, p0, :cond_31

    invoke-virtual {v5, p1}, Landroid/view/View;->requestFocus(I)Z

    :cond_31
    return v3
.end method

.method private scrollToChild(Landroid/view/View;)V
    .registers 3

    .line 1700
    iget-object v0, p0, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 1703
    iget-object v0, p0, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v0}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1705
    iget-object p1, p0, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result p1

    if-eqz p1, :cond_16

    const/4 v0, 0x0

    .line 1708
    invoke-virtual {p0, v0, p1}, Landroid/view/View;->scrollBy(II)V

    :cond_16
    return-void
.end method

.method private scrollToChildRect(Landroid/graphics/Rect;Z)Z
    .registers 5

    .line 1721
    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_9

    const/4 v1, 0x1

    goto :goto_a

    :cond_9
    move v1, v0

    :goto_a
    if-eqz v1, :cond_15

    if-eqz p2, :cond_12

    .line 1725
    invoke-virtual {p0, v0, p1}, Landroid/view/View;->scrollBy(II)V

    return v1

    .line 1727
    :cond_12
    invoke-virtual {p0, v0, p1}, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->smoothScrollBy(II)V

    :cond_15
    return v1
.end method

.method private smoothScrollBy(IIIZ)V
    .registers 13

    .line 1456
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 1460
    :cond_7
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->mLastScroll:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0xfa

    cmp-long v0, v0, v2

    if-lez v0, :cond_5a

    const/4 p1, 0x0

    .line 1462
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1463
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 1464
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    iget v2, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr v0, v2

    iget v1, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v0, v1

    .line 1465
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    .line 1466
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v4

    sub-int/2addr v0, v1

    .line 1467
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/2addr p2, v4

    .line 1468
    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    sub-int v6, p1, v4

    .line 1469
    iget-object v2, p0, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v3

    const/4 v5, 0x0

    move v7, p3

    invoke-virtual/range {v2 .. v7}, Landroid/widget/OverScroller;->startScroll(IIIII)V

    .line 1470
    invoke-direct {p0, p4}, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->runAnimatedScroll(Z)V

    goto :goto_68

    .line 1472
    :cond_5a
    iget-object p3, p0, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {p3}, Landroid/widget/OverScroller;->isFinished()Z

    move-result p3

    if-nez p3, :cond_65

    .line 1473
    invoke-direct {p0}, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->abortAnimatedScroll()V

    .line 1475
    :cond_65
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->scrollBy(II)V

    .line 1477
    :goto_68
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->mLastScroll:J

    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;)V
    .registers 3

    .line 480
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-gtz v0, :cond_a

    .line 484
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void

    .line 481
    :cond_a
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "ScrollView can host only one direct child"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public addView(Landroid/view/View;I)V
    .registers 4

    .line 489
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-gtz v0, :cond_a

    .line 493
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    return-void

    .line 490
    :cond_a
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "ScrollView can host only one direct child"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .registers 5

    .line 507
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-gtz v0, :cond_a

    .line 511
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void

    .line 508
    :cond_a
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "ScrollView can host only one direct child"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .registers 4

    .line 498
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-gtz v0, :cond_a

    .line 502
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    .line 499
    :cond_a
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "ScrollView can host only one direct child"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public arrowScroll(I)Z
    .registers 9

    .line 1342
    invoke-virtual {p0}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v0

    if-ne v0, p0, :cond_7

    const/4 v0, 0x0

    .line 1345
    :cond_7
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v1

    invoke-virtual {v1, p0, v0, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    .line 1347
    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->getMaxScrollAmount()I

    move-result v2

    if-eqz v1, :cond_36

    .line 1349
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    invoke-direct {p0, v1, v2, v3}, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->isWithinDeltaOfScreen(Landroid/view/View;II)Z

    move-result v3

    if-eqz v3, :cond_36

    .line 1350
    iget-object v2, p0, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 1351
    iget-object v2, p0, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v1, v2}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1352
    iget-object v2, p0, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v2}, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result v2

    .line 1353
    invoke-direct {p0, v2}, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->doScrollY(I)V

    .line 1354
    invoke-virtual {v1, p1}, Landroid/view/View;->requestFocus(I)Z

    goto :goto_7e

    :cond_36
    const/16 v1, 0x21

    const/4 v3, 0x0

    const/16 v4, 0x82

    if-ne p1, v1, :cond_48

    .line 1359
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v1

    if-ge v1, v2, :cond_48

    .line 1360
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v2

    goto :goto_74

    :cond_48
    if-ne p1, v4, :cond_74

    .line 1362
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-lez v1, :cond_74

    .line 1363
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1364
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/FrameLayout$LayoutParams;

    .line 1365
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v1

    iget v5, v5, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v1, v5

    .line 1366
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v5

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v6

    sub-int/2addr v5, v6

    sub-int/2addr v1, v5

    .line 1367
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    :cond_74
    :goto_74
    if-nez v2, :cond_77

    return v3

    :cond_77
    if-ne p1, v4, :cond_7a

    goto :goto_7b

    :cond_7a
    neg-int v2, v2

    .line 1373
    :goto_7b
    invoke-direct {p0, v2}, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->doScrollY(I)V

    :goto_7e
    if-eqz v0, :cond_9b

    .line 1376
    invoke-virtual {v0}, Landroid/view/View;->isFocused()Z

    move-result p1

    if-eqz p1, :cond_9b

    .line 1377
    invoke-direct {p0, v0}, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->isOffScreen(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_9b

    .line 1383
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    move-result p1

    const/high16 v0, 0x20000

    .line 1384
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    .line 1385
    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    .line 1386
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    :cond_9b
    const/4 p0, 0x1

    return p0
.end method

.method public cancelTranBounceAnimation()V
    .registers 3

    .line 2340
    iget-object v0, p0, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    instance-of v1, v0, Lcom/transsion/effectengine/bounceeffect/BounceEdgeEffect;

    if-eqz v1, :cond_b

    .line 2341
    check-cast v0, Lcom/transsion/effectengine/bounceeffect/BounceEdgeEffect;

    invoke-virtual {v0}, Lcom/transsion/effectengine/bounceeffect/BounceEdgeEffect;->cancelBounceAnimation()V

    .line 2343
    :cond_b
    iget-object p0, p0, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    instance-of v0, p0, Lcom/transsion/effectengine/bounceeffect/BounceEdgeEffect;

    if-eqz v0, :cond_16

    .line 2344
    check-cast p0, Lcom/transsion/effectengine/bounceeffect/BounceEdgeEffect;

    invoke-virtual {p0}, Lcom/transsion/effectengine/bounceeffect/BounceEdgeEffect;->cancelBounceAnimation()V

    :cond_16
    return-void
.end method

.method public computeHorizontalScrollExtent()I
    .registers 1

    .line 1586
    invoke-super {p0}, Landroid/view/View;->computeHorizontalScrollExtent()I

    move-result p0

    return p0
.end method

.method public computeHorizontalScrollOffset()I
    .registers 1

    .line 1579
    invoke-super {p0}, Landroid/view/View;->computeHorizontalScrollOffset()I

    move-result p0

    return p0
.end method

.method public computeHorizontalScrollRange()I
    .registers 1

    .line 1572
    invoke-super {p0}, Landroid/view/View;->computeHorizontalScrollRange()I

    move-result p0

    return p0
.end method

.method public computeScroll()V
    .registers 13

    .line 1622
    iget-object v1, p0, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v1

    if-eqz v1, :cond_9

    return-void

    .line 1626
    :cond_9
    iget-object v1, p0, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    .line 1627
    iget-object v1, p0, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v1

    .line 1628
    iget v2, p0, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->mLastScrollerY:I

    sub-int v2, v1, v2

    .line 1629
    iput v1, p0, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->mLastScrollerY:I

    .line 1632
    iget-object v3, p0, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->mScrollConsumed:[I

    const/4 v10, 0x1

    const/4 v11, 0x0

    aput v11, v3, v10

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v1, 0x0

    move-object v0, p0

    .line 1633
    invoke-virtual/range {v0 .. v5}, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->dispatchNestedPreScroll(II[I[II)Z

    .line 1635
    iget-object v1, p0, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->mScrollConsumed:[I

    aget v1, v1, v10

    sub-int/2addr v2, v1

    .line 1637
    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->getScrollRange()I

    move-result v6

    if-eqz v2, :cond_5f

    .line 1641
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v4

    .line 1642
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v3

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v1, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v9}, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->overScrollByCompat(IIIIIIIIZ)Z

    move v8, v6

    .line 1643
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v1

    sub-int/2addr v1, v4

    sub-int v4, v2, v1

    .line 1647
    iget-object v7, p0, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->mScrollConsumed:[I

    aput v11, v7, v10

    .line 1648
    iget-object v5, p0, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->mScrollOffset:[I

    const/4 v6, 0x1

    move v2, v1

    const/4 v1, 0x0

    const/4 v3, 0x0

    invoke-virtual/range {v0 .. v7}, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->dispatchNestedScroll(IIII[II[I)V

    .line 1650
    iget-object v1, p0, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->mScrollConsumed:[I

    aget v1, v1, v10

    sub-int v2, v4, v1

    goto :goto_60

    :cond_5f
    move v8, v6

    :goto_60
    if-eqz v2, :cond_9d

    .line 1654
    invoke-virtual {p0}, Landroid/view/View;->getOverScrollMode()I

    move-result v1

    if-eqz v1, :cond_6c

    if-ne v1, v10, :cond_9a

    if-lez v8, :cond_9a

    .line 1658
    :cond_6c
    invoke-direct {p0}, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->ensureGlows()V

    if-gez v2, :cond_86

    .line 1660
    iget-object v1, p0, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v1

    if-eqz v1, :cond_9a

    .line 1661
    iget-object v1, p0, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    iget-object v2, p0, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v2}, Landroid/widget/OverScroller;->getCurrVelocity()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    goto :goto_9a

    .line 1664
    :cond_86
    iget-object v1, p0, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v1

    if-eqz v1, :cond_9a

    .line 1665
    iget-object v1, p0, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    iget-object v2, p0, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v2}, Landroid/widget/OverScroller;->getCurrVelocity()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    .line 1669
    :cond_9a
    :goto_9a
    invoke-direct {p0}, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->abortAnimatedScroll()V

    .line 1672
    :cond_9d
    iget-object v1, p0, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v1

    if-nez v1, :cond_a9

    .line 1673
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    return-void

    .line 1675
    :cond_a9
    invoke-virtual {p0, v10}, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->stopNestedScroll(I)V

    return-void
.end method

.method protected computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I
    .registers 12

    .line 1742
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 1744
    :cond_8
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 1745
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v2

    add-int v3, v2, v0

    .line 1749
    invoke-virtual {p0}, Landroid/view/View;->getVerticalFadingEdgeLength()I

    move-result v4

    .line 1754
    iget v5, p1, Landroid/graphics/Rect;->top:I

    if-lez v5, :cond_1b

    add-int/2addr v2, v4

    .line 1761
    :cond_1b
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1762
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/FrameLayout$LayoutParams;

    .line 1763
    iget v7, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v8

    iget v9, v6, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr v8, v9

    iget v9, v6, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v8, v9

    if-ge v7, v8, :cond_36

    sub-int v4, v3, v4

    goto :goto_37

    :cond_36
    move v4, v3

    .line 1769
    :goto_37
    iget v7, p1, Landroid/graphics/Rect;->bottom:I

    if-le v7, v4, :cond_59

    iget v8, p1, Landroid/graphics/Rect;->top:I

    if-le v8, v2, :cond_59

    .line 1774
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p0

    if-le p0, v0, :cond_49

    .line 1776
    iget p0, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr p0, v2

    goto :goto_4c

    .line 1779
    :cond_49
    iget p0, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p0, v4

    .line 1783
    :goto_4c
    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result p1

    iget v0, v6, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int/2addr p1, v0

    sub-int/2addr p1, v3

    .line 1785
    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0

    .line 1787
    :cond_59
    iget v3, p1, Landroid/graphics/Rect;->top:I

    if-ge v3, v2, :cond_78

    if-ge v7, v4, :cond_78

    .line 1792
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v3

    if-le v3, v0, :cond_6a

    .line 1794
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v4, p1

    sub-int/2addr v1, v4

    goto :goto_6e

    .line 1797
    :cond_6a
    iget p1, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, p1

    sub-int/2addr v1, v2

    .line 1801
    :goto_6e
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result p0

    neg-int p0, p0

    invoke-static {v1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0

    :cond_78
    return v1
.end method

.method public computeVerticalScrollExtent()I
    .registers 1

    .line 1565
    invoke-super {p0}, Landroid/view/View;->computeVerticalScrollExtent()I

    move-result p0

    return p0
.end method

.method public computeVerticalScrollOffset()I
    .registers 2

    const/4 v0, 0x0

    .line 1558
    invoke-super {p0}, Landroid/view/View;->computeVerticalScrollOffset()I

    move-result p0

    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method public computeVerticalScrollRange()I
    .registers 5

    .line 1534
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 1535
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    if-nez v0, :cond_15

    return v1

    :cond_15
    const/4 v0, 0x0

    .line 1540
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1541
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 1542
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v2

    iget v3, v3, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v2, v3

    .line 1543
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result p0

    sub-int v1, v2, v1

    .line 1544
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    if-gez p0, :cond_35

    sub-int/2addr v2, p0

    return v2

    :cond_35
    if-le p0, v0, :cond_39

    sub-int/2addr p0, v0

    add-int/2addr v2, p0

    :cond_39
    return v2
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 3

    .line 629
    invoke-super {p0, p1}, Landroid/view/View;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_f

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->executeKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p0

    if-eqz p0, :cond_d

    goto :goto_f

    :cond_d
    const/4 p0, 0x0

    return p0

    :cond_f
    :goto_f
    const/4 p0, 0x1

    return p0
.end method

.method public dispatchNestedFling(FFZ)Z
    .registers 4

    .line 306
    iget-object p0, p0, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->mChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    invoke-virtual {p0, p1, p2, p3}, Landroidx/core/view/NestedScrollingChildHelper;->dispatchNestedFling(FFZ)Z

    move-result p0

    return p0
.end method

.method public dispatchNestedPreFling(FF)Z
    .registers 3

    .line 311
    iget-object p0, p0, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->mChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    invoke-virtual {p0, p1, p2}, Landroidx/core/view/NestedScrollingChildHelper;->dispatchNestedPreFling(FF)Z

    move-result p0

    return p0
.end method

.method public dispatchNestedPreScroll(II[I[I)Z
    .registers 11

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 301
    invoke-virtual/range {v0 .. v5}, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->dispatchNestedPreScroll(II[I[II)Z

    move-result p0

    return p0
.end method

.method public dispatchNestedPreScroll(II[I[II)Z
    .registers 6

    .line 262
    iget-object p0, p0, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->mChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    invoke-virtual/range {p0 .. p5}, Landroidx/core/view/NestedScrollingChildHelper;->dispatchNestedPreScroll(II[I[II)Z

    move-result p0

    return p0
.end method

.method public dispatchNestedScroll(IIII[II[I)V
    .registers 8

    .line 231
    iget-object p0, p0, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->mChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    invoke-virtual/range {p0 .. p7}, Landroidx/core/view/NestedScrollingChildHelper;->dispatchNestedScroll(IIII[II[I)V

    return-void
.end method

.method public dispatchNestedScroll(IIII[I)Z
    .registers 6

    .line 295
    iget-object p0, p0, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->mChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    invoke-virtual/range {p0 .. p5}, Landroidx/core/view/NestedScrollingChildHelper;->dispatchNestedScroll(IIII[I)Z

    move-result p0

    return p0
.end method

.method public dispatchNestedScroll(IIII[II)Z
    .registers 7

    .line 255
    iget-object p0, p0, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->mChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    invoke-virtual/range {p0 .. p6}, Landroidx/core/view/NestedScrollingChildHelper;->dispatchNestedScroll(IIII[II)Z

    move-result p0

    return p0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .registers 11

    .line 2015
    invoke-super {p0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 2016
    iget-object v0, p0, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    if-eqz v0, :cond_cd

    .line 2017
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v0

    .line 2018
    iget-object v1, p0, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_67

    .line 2019
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    .line 2020
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    .line 2021
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v4

    .line 2023
    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 2024
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getClipToPadding()Z

    move-result v6

    if-eqz v6, :cond_39

    .line 2025
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v6

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v7

    add-int/2addr v6, v7

    sub-int/2addr v3, v6

    .line 2026
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v6

    goto :goto_3a

    :cond_39
    move v6, v2

    .line 2028
    :goto_3a
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getClipToPadding()Z

    move-result v7

    if-eqz v7, :cond_4f

    .line 2029
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v7

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v8

    add-int/2addr v7, v8

    sub-int/2addr v4, v7

    .line 2030
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v7

    add-int/2addr v5, v7

    :cond_4f
    int-to-float v6, v6

    int-to-float v5, v5

    .line 2032
    invoke-virtual {p1, v6, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2033
    iget-object v5, p0, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v5, v3, v4}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 2034
    iget-object v3, p0, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v3, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v3

    if-eqz v3, :cond_64

    .line 2035
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 2037
    :cond_64
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 2039
    :cond_67
    iget-object v1, p0, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v1

    if-nez v1, :cond_cd

    .line 2040
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    .line 2041
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    .line 2042
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v4

    .line 2044
    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->getScrollRange()I

    move-result v5

    invoke-static {v5, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/2addr v0, v4

    .line 2045
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getClipToPadding()Z

    move-result v5

    if-eqz v5, :cond_98

    .line 2046
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v5

    add-int/2addr v2, v5

    sub-int/2addr v3, v2

    .line 2047
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    .line 2049
    :cond_98
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getClipToPadding()Z

    move-result v5

    if-eqz v5, :cond_ad

    .line 2050
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v5

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v6

    add-int/2addr v5, v6

    sub-int/2addr v4, v5

    .line 2051
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v0, v5

    :cond_ad
    sub-int/2addr v2, v3

    int-to-float v2, v2

    int-to-float v0, v0

    .line 2053
    invoke-virtual {p1, v2, v0}, Landroid/graphics/Canvas;->translate(FF)V

    int-to-float v0, v3

    const/4 v2, 0x0

    const/high16 v5, 0x43340000    # 180.0f

    .line 2054
    invoke-virtual {p1, v5, v0, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 2055
    iget-object v0, p0, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v0, v3, v4}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 2056
    iget-object v0, p0, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v0, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v0

    if-eqz v0, :cond_ca

    .line 2057
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 2059
    :cond_ca
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_cd
    return-void
.end method

.method public enableTranBounceEffect()V
    .registers 3

    .line 2334
    new-instance v0, Lcom/transsion/effectengine/bounceeffect/BounceEdgeEffect;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/transsion/effectengine/bounceeffect/BounceEdgeEffect;-><init>(Landroid/view/View;I)V

    iput-object v0, p0, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    .line 2335
    new-instance v0, Lcom/transsion/effectengine/bounceeffect/BounceEdgeEffect;

    const/4 v1, 0x3

    invoke-direct {v0, p0, v1}, Lcom/transsion/effectengine/bounceeffect/BounceEdgeEffect;-><init>(Landroid/view/View;I)V

    iput-object v0, p0, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    return-void
.end method

.method public executeKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 7

    .line 641
    iget-object v0, p0, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 643
    invoke-direct {p0}, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->canScroll()Z

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x82

    if-nez v0, :cond_37

    .line 644
    invoke-virtual {p0}, Landroid/view/View;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_36

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_36

    .line 645
    invoke-virtual {p0}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object p1

    if-ne p1, p0, :cond_22

    const/4 p1, 0x0

    .line 647
    :cond_22
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v0

    invoke-virtual {v0, p0, p1, v2}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_36

    if-eq p1, p0, :cond_36

    .line 651
    invoke-virtual {p1, v2}, Landroid/view/View;->requestFocus(I)Z

    move-result p0

    if-eqz p0, :cond_36

    const/4 p0, 0x1

    return p0

    :cond_36
    return v1

    .line 657
    :cond_37
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_7b

    .line 658
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v3, 0x13

    const/16 v4, 0x21

    if-eq v0, v3, :cond_6b

    const/16 v3, 0x14

    if-eq v0, v3, :cond_5b

    const/16 v3, 0x3e

    if-eq v0, v3, :cond_50

    goto :goto_7b

    .line 674
    :cond_50
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result p1

    if-eqz p1, :cond_57

    move v2, v4

    :cond_57
    invoke-virtual {p0, v2}, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->pageScroll(I)Z

    return v1

    .line 667
    :cond_5b
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result p1

    if-nez p1, :cond_66

    .line 668
    invoke-virtual {p0, v2}, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->arrowScroll(I)Z

    move-result p0

    return p0

    .line 670
    :cond_66
    invoke-virtual {p0, v2}, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->fullScroll(I)Z

    move-result p0

    return p0

    .line 660
    :cond_6b
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result p1

    if-nez p1, :cond_76

    .line 661
    invoke-virtual {p0, v4}, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->arrowScroll(I)Z

    move-result p0

    return p0

    .line 663
    :cond_76
    invoke-virtual {p0, v4}, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->fullScroll(I)Z

    move-result p0

    return p0

    :cond_7b
    :goto_7b
    return v1
.end method

.method public fling(I)V
    .registers 14

    .line 1954
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lez v0, :cond_22

    .line 1956
    iget-object v1, p0, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v3

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/high16 v8, -0x80000000

    const v9, 0x7fffffff

    move v5, p1

    invoke-virtual/range {v1 .. v11}, Landroid/widget/OverScroller;->fling(IIIIIIIIII)V

    const/4 p1, 0x1

    .line 1961
    invoke-direct {p0, p1}, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->runAnimatedScroll(Z)V

    :cond_22
    return-void
.end method

.method public fullScroll(I)Z
    .registers 7

    const/16 v0, 0x82

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p1, v0, :cond_8

    move v0, v2

    goto :goto_9

    :cond_8
    move v0, v1

    .line 1279
    :goto_9
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    .line 1281
    iget-object v4, p0, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->mTempRect:Landroid/graphics/Rect;

    iput v1, v4, Landroid/graphics/Rect;->top:I

    .line 1282
    iput v3, v4, Landroid/graphics/Rect;->bottom:I

    if-eqz v0, :cond_3d

    .line 1285
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lez v0, :cond_3d

    sub-int/2addr v0, v2

    .line 1287
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1288
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 1289
    iget-object v2, p0, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    iget v1, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, v2, Landroid/graphics/Rect;->bottom:I

    .line 1290
    iget-object v0, p0, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v3

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 1294
    :cond_3d
    iget-object v0, p0, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->top:I

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    invoke-direct {p0, p1, v1, v0}, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->scrollAndFocus(III)Z

    move-result p0

    return p0
.end method

.method protected getBottomFadingEdgeStrength()F
    .registers 6

    .line 443
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-nez v0, :cond_8

    const/4 p0, 0x0

    return p0

    :cond_8
    const/4 v0, 0x0

    .line 447
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 448
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 449
    invoke-virtual {p0}, Landroid/view/View;->getVerticalFadingEdgeLength()I

    move-result v2

    .line 450
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    .line 451
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    iget v1, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result p0

    sub-int/2addr v0, p0

    sub-int/2addr v0, v3

    if-ge v0, v2, :cond_33

    int-to-float p0, v0

    int-to-float v0, v2

    div-float/2addr p0, v0

    return p0

    :cond_33
    const/high16 p0, 0x3f800000    # 1.0f

    return p0
.end method

.method public getEdgeGlowBottom()Landroid/widget/EdgeEffect;
    .registers 1

    .line 2353
    iget-object p0, p0, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    return-object p0
.end method

.method public getEdgeGlowTop()Landroid/widget/EdgeEffect;
    .registers 1

    .line 2349
    iget-object p0, p0, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    return-object p0
.end method

.method public getMaxScrollAmount()I
    .registers 2

    .line 464
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    int-to-float p0, p0

    const/high16 v0, 0x3f000000    # 0.5f

    mul-float/2addr p0, v0

    float-to-int p0, p0

    return p0
.end method

.method public getNestedScrollAxes()I
    .registers 1

    .line 416
    iget-object p0, p0, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->mParentHelper:Landroidx/core/view/NestedScrollingParentHelper;

    invoke-virtual {p0}, Landroidx/core/view/NestedScrollingParentHelper;->getNestedScrollAxes()I

    move-result p0

    return p0
.end method

.method getScrollRange()I
    .registers 5

    .line 1136
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_2f

    .line 1137
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1138
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 1139
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    iget v3, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr v0, v3

    iget v2, v2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v0, v2

    .line 1140
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result p0

    sub-int/2addr v2, p0

    sub-int/2addr v0, v2

    .line 1141
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0

    :cond_2f
    return v1
.end method

.method protected getTopFadingEdgeStrength()F
    .registers 2

    .line 428
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-nez v0, :cond_8

    const/4 p0, 0x0

    return p0

    .line 432
    :cond_8
    invoke-virtual {p0}, Landroid/view/View;->getVerticalFadingEdgeLength()I

    move-result v0

    .line 433
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result p0

    if-ge p0, v0, :cond_16

    int-to-float p0, p0

    int-to-float v0, v0

    div-float/2addr p0, v0

    return p0

    :cond_16
    const/high16 p0, 0x3f800000    # 1.0f

    return p0
.end method

.method public hasNestedScrollingParent()Z
    .registers 2

    const/4 v0, 0x0

    .line 289
    invoke-virtual {p0, v0}, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->hasNestedScrollingParent(I)Z

    move-result p0

    return p0
.end method

.method public hasNestedScrollingParent(I)Z
    .registers 2

    .line 249
    iget-object p0, p0, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->mChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    invoke-virtual {p0, p1}, Landroidx/core/view/NestedScrollingChildHelper;->hasNestedScrollingParent(I)Z

    move-result p0

    return p0
.end method

.method public isBounceEdgeAnimRunning(Lcom/transsion/effectengine/bounceeffect/BounceEdgeEffect;)Z
    .registers 4

    .line 2368
    iget-object v0, p0, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    instance-of v1, v0, Lcom/transsion/effectengine/bounceeffect/BounceEdgeEffect;

    if-eqz v1, :cond_f

    if-eq v0, p1, :cond_f

    .line 2369
    check-cast v0, Lcom/transsion/effectengine/bounceeffect/BounceEdgeEffect;

    invoke-virtual {v0}, Lcom/transsion/effectengine/bounceeffect/BounceEdgeEffect;->isBounceEdgeAnimRunning()Z

    move-result v0

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    .line 2371
    :goto_10
    iget-object p0, p0, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    instance-of v1, p0, Lcom/transsion/effectengine/bounceeffect/BounceEdgeEffect;

    if-eqz v1, :cond_1f

    if-eq p0, p1, :cond_1f

    .line 2372
    check-cast p0, Lcom/transsion/effectengine/bounceeffect/BounceEdgeEffect;

    invoke-virtual {p0}, Lcom/transsion/effectengine/bounceeffect/BounceEdgeEffect;->isBounceEdgeAnimRunning()Z

    move-result p0

    return p0

    :cond_1f
    return v0
.end method

.method public isFillViewport()Z
    .registers 1

    .line 549
    iget-boolean p0, p0, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->mFillViewport:Z

    return p0
.end method

.method public isNestedScrollingEnabled()Z
    .registers 1

    .line 274
    iget-object p0, p0, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->mChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    invoke-virtual {p0}, Landroidx/core/view/NestedScrollingChildHelper;->isNestedScrollingEnabled()Z

    move-result p0

    return p0
.end method

.method public isSmoothScrollingEnabled()Z
    .registers 1

    .line 571
    iget-boolean p0, p0, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->mSmoothScrollingEnabled:Z

    return p0
.end method

.method protected measureChild(Landroid/view/View;II)V
    .registers 5

    .line 1592
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    .line 1597
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    .line 1598
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result p0

    add-int/2addr v0, p0

    iget p0, p3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1597
    invoke-static {p2, v0, p0}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result p0

    const/4 p2, 0x0

    .line 1600
    invoke-static {p2, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 1602
    invoke-virtual {p1, p0, p2}, Landroid/view/View;->measure(II)V

    return-void
.end method

.method protected measureChildWithMargins(Landroid/view/View;IIII)V
    .registers 6

    .line 1608
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p4

    check-cast p4, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1611
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result p5

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result p0

    add-int/2addr p5, p0

    iget p0, p4, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr p5, p0

    iget p0, p4, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr p5, p0

    add-int/2addr p5, p3

    iget p0, p4, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 1610
    invoke-static {p2, p5, p0}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result p0

    .line 1613
    iget p2, p4, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget p3, p4, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr p2, p3

    const/4 p3, 0x0

    invoke-static {p2, p3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 1616
    invoke-virtual {p1, p0, p2}, Landroid/view/View;->measure(II)V

    return-void
.end method

.method public onAttachedToWindow()V
    .registers 2

    .line 1909
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    const/4 v0, 0x0

    .line 1911
    iput-boolean v0, p0, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->mIsLaidOut:Z

    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .registers 5

    .line 1028
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    if-eqz v0, :cond_44

    .line 1029
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/16 v2, 0x8

    if-eq v0, v2, :cond_12

    goto :goto_44

    .line 1031
    :cond_12
    iget-boolean v0, p0, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->mIsBeingDragged:Z

    if-nez v0, :cond_44

    const/16 v0, 0x9

    .line 1032
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result p1

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_44

    .line 1034
    invoke-direct {p0}, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->getVerticalScrollFactorCompat()F

    move-result v0

    mul-float/2addr p1, v0

    float-to-int p1, p1

    .line 1035
    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->getScrollRange()I

    move-result v0

    .line 1036
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v2

    sub-int p1, v2, p1

    if-gez p1, :cond_35

    move v0, v1

    goto :goto_39

    :cond_35
    if-le p1, v0, :cond_38

    goto :goto_39

    :cond_38
    move v0, p1

    :goto_39
    if-eq v0, v2, :cond_44

    .line 1044
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result p1

    invoke-super {p0, p1, v0}, Landroid/view/View;->scrollTo(II)V

    const/4 p0, 0x1

    return p0

    :cond_44
    :goto_44
    return v1
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 13

    .line 736
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_d

    .line 737
    iget-boolean v3, p0, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->mIsBeingDragged:Z

    if-eqz v3, :cond_d

    return v1

    :cond_d
    and-int/lit16 v0, v0, 0xff

    const/4 v3, 0x0

    if-eqz v0, :cond_a2

    const/4 v4, -0x1

    if-eq v0, v1, :cond_7d

    if-eq v0, v2, :cond_24

    const/4 v1, 0x3

    if-eq v0, v1, :cond_7d

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1f

    goto/16 :goto_d9

    .line 823
    :cond_1f
    invoke-direct {p0, p1}, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto/16 :goto_d9

    .line 752
    :cond_24
    iget v0, p0, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->mActivePointerId:I

    if-ne v0, v4, :cond_2a

    goto/16 :goto_d9

    .line 758
    :cond_2a
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v5

    if-ne v5, v4, :cond_4d

    .line 760
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid pointerId="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " in onInterceptTouchEvent"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "NestedScrollView"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_d9

    .line 765
    :cond_4d
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    float-to-int v0, v0

    .line 766
    iget v4, p0, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->mLastMotionY:I

    sub-int v4, v0, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    .line 767
    iget v5, p0, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->mTouchSlop:I

    if-le v4, v5, :cond_d9

    .line 768
    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->getNestedScrollAxes()I

    move-result v4

    and-int/2addr v2, v4

    if-nez v2, :cond_d9

    .line 769
    iput-boolean v1, p0, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->mIsBeingDragged:Z

    .line 770
    iput v0, p0, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->mLastMotionY:I

    .line 771
    invoke-direct {p0}, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->initVelocityTrackerIfNotExists()V

    .line 772
    iget-object v0, p0, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 773
    iput v3, p0, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->mNestedYOffset:I

    .line 774
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_d9

    .line 776
    invoke-interface {p1, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_d9

    .line 814
    :cond_7d
    iput-boolean v3, p0, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->mIsBeingDragged:Z

    .line 815
    iput v4, p0, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->mActivePointerId:I

    .line 816
    invoke-direct {p0}, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->recycleVelocityTracker()V

    .line 817
    iget-object v4, p0, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v5

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v6

    const/4 v9, 0x0

    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->getScrollRange()I

    move-result v10

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v4 .. v10}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    move-result p1

    if-eqz p1, :cond_9e

    .line 818
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 820
    :cond_9e
    invoke-virtual {p0, v3}, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->stopNestedScroll(I)V

    goto :goto_d9

    .line 783
    :cond_a2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    .line 784
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    invoke-direct {p0, v4, v0}, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->inChild(II)Z

    move-result v4

    if-nez v4, :cond_b8

    .line 785
    iput-boolean v3, p0, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->mIsBeingDragged:Z

    .line 786
    invoke-direct {p0}, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->recycleVelocityTracker()V

    goto :goto_d9

    .line 794
    :cond_b8
    iput v0, p0, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->mLastMotionY:I

    .line 795
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->mActivePointerId:I

    .line 797
    invoke-direct {p0}, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->initOrResetVelocityTracker()V

    .line 798
    iget-object v0, p0, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 805
    iget-object p1, p0, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {p1}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    .line 806
    iget-object p1, p0, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {p1}, Landroid/widget/OverScroller;->isFinished()Z

    move-result p1

    xor-int/2addr p1, v1

    iput-boolean p1, p0, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->mIsBeingDragged:Z

    .line 807
    invoke-virtual {p0, v2, v3}, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->startNestedScroll(II)Z

    .line 831
    :cond_d9
    :goto_d9
    iget-boolean p0, p0, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->mIsBeingDragged:Z

    return p0
.end method

.method protected onLayout(ZIIII)V
    .registers 7

    .line 1871
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    const/4 p1, 0x0

    .line 1872
    iput-boolean p1, p0, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->mIsLayoutDirty:Z

    .line 1874
    iget-object p2, p0, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->mChildToScrollTo:Landroid/view/View;

    if-eqz p2, :cond_15

    invoke-static {p2, p0}, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z

    move-result p2

    if-eqz p2, :cond_15

    .line 1875
    iget-object p2, p0, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->mChildToScrollTo:Landroid/view/View;

    invoke-direct {p0, p2}, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->scrollToChild(Landroid/view/View;)V

    :cond_15
    const/4 p2, 0x0

    .line 1877
    iput-object p2, p0, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->mChildToScrollTo:Landroid/view/View;

    .line 1879
    iget-boolean p4, p0, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->mIsLaidOut:Z

    if-nez p4, :cond_63

    .line 1881
    iget-object p4, p0, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->mSavedState:Lcom/transsion/widgetslib/view/OverBoundNestedScrollView$SavedState;

    if-eqz p4, :cond_2d

    .line 1882
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result p4

    iget-object v0, p0, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->mSavedState:Lcom/transsion/widgetslib/view/OverBoundNestedScrollView$SavedState;

    iget v0, v0, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView$SavedState;->scrollPosition:I

    invoke-virtual {p0, p4, v0}, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->scrollTo(II)V

    .line 1883
    iput-object p2, p0, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->mSavedState:Lcom/transsion/widgetslib/view/OverBoundNestedScrollView$SavedState;

    .line 1889
    :cond_2d
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p2

    if-lez p2, :cond_47

    .line 1890
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    .line 1891
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/widget/FrameLayout$LayoutParams;

    .line 1892
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    iget p4, p2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr p1, p4

    iget p2, p2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int/2addr p1, p2

    :cond_47
    sub-int/2addr p5, p3

    .line 1894
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result p2

    sub-int/2addr p5, p2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result p2

    sub-int/2addr p5, p2

    .line 1895
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result p2

    .line 1896
    invoke-static {p2, p5, p1}, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->clamp(III)I

    move-result p1

    if-eq p1, p2, :cond_63

    .line 1898
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result p2

    invoke-virtual {p0, p2, p1}, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->scrollTo(II)V

    .line 1903
    :cond_63
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->scrollTo(II)V

    const/4 p1, 0x1

    .line 1904
    iput-boolean p1, p0, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->mIsLaidOut:Z

    return-void
.end method

.method protected onMeasure(II)V
    .registers 7

    .line 593
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 595
    iget-boolean v0, p0, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->mFillViewport:Z

    if-nez v0, :cond_8

    goto :goto_58

    .line 599
    :cond_8
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p2

    if-nez p2, :cond_f

    goto :goto_58

    .line 604
    :cond_f
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p2

    if-lez p2, :cond_58

    const/4 p2, 0x0

    .line 605
    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    .line 606
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 608
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    .line 609
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    .line 610
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    .line 611
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    iget v3, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    sub-int/2addr v2, v3

    iget v3, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    sub-int/2addr v2, v3

    if-ge v1, v2, :cond_58

    .line 617
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result p0

    add-int/2addr v1, p0

    iget p0, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    add-int/2addr v1, p0

    iget p0, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    add-int/2addr v1, p0

    iget p0, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 616
    invoke-static {p1, v1, p0}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result p0

    const/high16 p1, 0x40000000    # 2.0f

    .line 620
    invoke-static {v2, p1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 621
    invoke-virtual {p2, p0, p1}, Landroid/view/View;->measure(II)V

    :cond_58
    :goto_58
    return-void
.end method

.method public onNestedFling(Landroid/view/View;FFZ)Z
    .registers 5

    if-nez p4, :cond_c

    const/4 p1, 0x0

    const/4 p2, 0x1

    .line 402
    invoke-virtual {p0, p1, p3, p2}, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->dispatchNestedFling(FFZ)Z

    float-to-int p1, p3

    .line 403
    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->fling(I)V

    return p2

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method public onNestedPreFling(Landroid/view/View;FF)Z
    .registers 4

    .line 411
    invoke-virtual {p0, p2, p3}, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->dispatchNestedPreFling(FF)Z

    move-result p0

    return p0
.end method

.method public onNestedPreScroll(Landroid/view/View;II[I)V
    .registers 11

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    .line 395
    invoke-virtual/range {v0 .. v5}, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->onNestedPreScroll(Landroid/view/View;II[II)V

    return-void
.end method

.method public onNestedPreScroll(Landroid/view/View;II[II)V
    .registers 6

    move p1, p2

    move p2, p3

    move-object p3, p4

    const/4 p4, 0x0

    .line 365
    invoke-virtual/range {p0 .. p5}, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->dispatchNestedPreScroll(II[I[II)Z

    return-void
.end method

.method public onNestedScroll(Landroid/view/View;IIII)V
    .registers 6

    const/4 p1, 0x0

    const/4 p2, 0x0

    .line 390
    invoke-direct {p0, p5, p1, p2}, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->onNestedScrollInternal(II[I)V

    return-void
.end method

.method public onNestedScroll(Landroid/view/View;IIIII)V
    .registers 7

    const/4 p1, 0x0

    .line 359
    invoke-direct {p0, p5, p6, p1}, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->onNestedScrollInternal(II[I)V

    return-void
.end method

.method public onNestedScroll(Landroid/view/View;IIIII[I)V
    .registers 8

    .line 319
    invoke-direct {p0, p5, p6, p7}, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->onNestedScrollInternal(II[I)V

    return-void
.end method

.method public onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V
    .registers 5

    const/4 v0, 0x0

    .line 379
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;II)V

    return-void
.end method

.method public onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;II)V
    .registers 6

    .line 346
    iget-object v0, p0, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->mParentHelper:Landroidx/core/view/NestedScrollingParentHelper;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroidx/core/view/NestedScrollingParentHelper;->onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;II)V

    const/4 p1, 0x2

    .line 347
    invoke-virtual {p0, p1, p4}, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->startNestedScroll(II)Z

    return-void
.end method

.method protected onOverScrolled(IIZZ)V
    .registers 5

    .line 1073
    invoke-super {p0, p1, p2}, Landroid/view/View;->scrollTo(II)V

    return-void
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .registers 5

    const/4 v0, 0x2

    if-ne p1, v0, :cond_6

    const/16 p1, 0x82

    goto :goto_b

    :cond_6
    const/4 v0, 0x1

    if-ne p1, v0, :cond_b

    const/16 p1, 0x21

    :cond_b
    :goto_b
    if-nez p2, :cond_17

    .line 1838
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    goto :goto_1f

    .line 1839
    :cond_17
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v0

    invoke-virtual {v0, p0, p2, p1}, Landroid/view/FocusFinder;->findNextFocusFromRect(Landroid/view/ViewGroup;Landroid/graphics/Rect;I)Landroid/view/View;

    move-result-object v0

    :goto_1f
    const/4 v1, 0x0

    if-nez v0, :cond_23

    return v1

    .line 1846
    :cond_23
    invoke-direct {p0, v0}, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->isOffScreen(Landroid/view/View;)Z

    move-result p0

    if-eqz p0, :cond_2a

    return v1

    .line 1850
    :cond_2a
    invoke-virtual {v0, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result p0

    return p0
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 3

    .line 2096
    instance-of v0, p1, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView$SavedState;

    if-nez v0, :cond_8

    .line 2097
    invoke-super {p0, p1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    .line 2101
    :cond_8
    check-cast p1, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView$SavedState;

    .line 2102
    invoke-virtual {p1}, Landroid/view/AbsSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 2103
    iput-object p1, p0, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->mSavedState:Lcom/transsion/widgetslib/view/OverBoundNestedScrollView$SavedState;

    .line 2104
    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->requestLayout()V

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .registers 3

    .line 2109
    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 2110
    new-instance v1, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView$SavedState;

    invoke-direct {v1, v0}, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 2111
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result p0

    iput p0, v1, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView$SavedState;->scrollPosition:I

    return-object v1
.end method

.method protected onScrollChanged(IIII)V
    .registers 11

    .line 584
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onScrollChanged(IIII)V

    .line 586
    iget-object v0, p0, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->mOnScrollChangeListener:Lcom/transsion/widgetslib/view/OverBoundNestedScrollView$OnScrollChangeListener;

    if-eqz v0, :cond_f

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    .line 587
    invoke-interface/range {v0 .. v5}, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView$OnScrollChangeListener;->onScrollChange(Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;IIII)V

    :cond_f
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .registers 5

    .line 1916
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 1918
    invoke-virtual {p0}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_26

    if-ne p0, p1, :cond_c

    goto :goto_26

    :cond_c
    const/4 p2, 0x0

    .line 1926
    invoke-direct {p0, p1, p2, p4}, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->isWithinDeltaOfScreen(Landroid/view/View;II)Z

    move-result p2

    if-eqz p2, :cond_26

    .line 1927
    iget-object p2, p0, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1, p2}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 1928
    iget-object p2, p0, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1929
    iget-object p1, p0, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result p1

    .line 1930
    invoke-direct {p0, p1}, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->doScrollY(I)V

    :cond_26
    :goto_26
    return-void
.end method

.method public onStartNestedScroll(Landroid/view/View;Landroid/view/View;I)Z
    .registers 5

    const/4 v0, 0x0

    .line 373
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->onStartNestedScroll(Landroid/view/View;Landroid/view/View;II)Z

    move-result p0

    return p0
.end method

.method public onStartNestedScroll(Landroid/view/View;Landroid/view/View;II)Z
    .registers 5

    .line 0
    and-int/lit8 p0, p3, 0x2

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method public onStopNestedScroll(Landroid/view/View;)V
    .registers 3

    const/4 v0, 0x0

    .line 384
    invoke-virtual {p0, p1, v0}, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->onStopNestedScroll(Landroid/view/View;I)V

    return-void
.end method

.method public onStopNestedScroll(Landroid/view/View;I)V
    .registers 4

    .line 352
    iget-object v0, p0, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->mParentHelper:Landroidx/core/view/NestedScrollingParentHelper;

    invoke-virtual {v0, p1, p2}, Landroidx/core/view/NestedScrollingParentHelper;->onStopNestedScroll(Landroid/view/View;I)V

    .line 353
    invoke-virtual {p0, p2}, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->stopNestedScroll(I)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 23

    move-object/from16 v0, p0

    move-object/from16 v10, p1

    .line 836
    invoke-direct {v0}, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->initVelocityTrackerIfNotExists()V

    .line 838
    invoke-virtual {v10}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    const/4 v11, 0x0

    if-nez v1, :cond_10

    .line 841
    iput v11, v0, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->mNestedYOffset:I

    .line 844
    :cond_10
    invoke-static {v10}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v12

    .line 845
    iget v2, v0, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->mNestedYOffset:I

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {v12, v3, v2}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    const/4 v2, 0x2

    const/4 v13, 0x1

    if-eqz v1, :cond_238

    const/4 v4, -0x1

    if-eq v1, v13, :cond_1ed

    .line 847
    const-string v3, "NestedScrollView"

    if-eq v1, v2, :cond_b1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_86

    const/4 v2, 0x5

    if-eq v1, v2, :cond_5b

    const/4 v2, 0x6

    if-eq v1, v2, :cond_31

    goto/16 :goto_26f

    .line 992
    :cond_31
    invoke-direct/range {p0 .. p1}, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    .line 993
    iget v1, v0, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->mActivePointerId:I

    invoke-virtual {v10, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v1

    if-ne v1, v4, :cond_52

    .line 995
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid pointerIndex = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_26f

    .line 998
    :cond_52
    invoke-virtual {v10, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->mLastMotionY:I

    goto/16 :goto_26f

    .line 982
    :cond_5b
    invoke-virtual {v10}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    if-ne v1, v4, :cond_77

    .line 984
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid getActionIndex = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_26f

    .line 987
    :cond_77
    invoke-virtual {v10, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, v0, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->mLastMotionY:I

    .line 988
    invoke-virtual {v10, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iput v1, v0, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->mActivePointerId:I

    goto/16 :goto_26f

    .line 972
    :cond_86
    iget-boolean v1, v0, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->mIsBeingDragged:Z

    if-eqz v1, :cond_aa

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-lez v1, :cond_aa

    .line 973
    iget-object v5, v0, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/view/View;->getScrollX()I

    move-result v6

    invoke-virtual {v0}, Landroid/view/View;->getScrollY()I

    move-result v7

    const/4 v10, 0x0

    .line 974
    invoke-virtual {v0}, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->getScrollRange()I

    move-result v11

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 973
    invoke-virtual/range {v5 .. v11}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    move-result v1

    if-eqz v1, :cond_aa

    .line 975
    invoke-static {v0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 978
    :cond_aa
    iput v4, v0, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->mActivePointerId:I

    .line 979
    invoke-direct {v0}, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->endDrag()V

    goto/16 :goto_26f

    .line 874
    :cond_b1
    iget v1, v0, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->mActivePointerId:I

    invoke-virtual {v10, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v14

    if-ne v14, v4, :cond_d6

    .line 876
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid pointerId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->mActivePointerId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " in onTouchEvent"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_26f

    .line 880
    :cond_d6
    invoke-virtual {v10, v14}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    float-to-int v6, v1

    .line 881
    iget v1, v0, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->mLastMotionY:I

    sub-int/2addr v1, v6

    .line 882
    iget-boolean v2, v0, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->mIsBeingDragged:Z

    if-nez v2, :cond_fa

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v2

    iget v3, v0, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->mTouchSlop:I

    if-le v2, v3, :cond_fa

    .line 883
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_f3

    .line 885
    invoke-interface {v2, v13}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 887
    :cond_f3
    iput-boolean v13, v0, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->mIsBeingDragged:Z

    if-lez v1, :cond_fc

    .line 889
    iget v2, v0, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->mTouchSlop:I

    sub-int/2addr v1, v2

    :cond_fa
    :goto_fa
    move v2, v1

    goto :goto_100

    .line 891
    :cond_fc
    iget v2, v0, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->mTouchSlop:I

    add-int/2addr v1, v2

    goto :goto_fa

    .line 894
    :goto_100
    iget-boolean v1, v0, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->mIsBeingDragged:Z

    if-eqz v1, :cond_26f

    .line 896
    iget-object v3, v0, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->mScrollConsumed:[I

    iget-object v4, v0, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->mScrollOffset:[I

    const/4 v5, 0x0

    const/4 v1, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->dispatchNestedPreScroll(II[I[II)Z

    move-result v1

    if-eqz v1, :cond_11e

    .line 898
    iget-object v1, v0, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->mScrollConsumed:[I

    aget v1, v1, v13

    sub-int/2addr v2, v1

    .line 899
    iget v1, v0, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->mNestedYOffset:I

    iget-object v3, v0, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->mScrollOffset:[I

    aget v3, v3, v13

    add-int/2addr v1, v3

    iput v1, v0, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->mNestedYOffset:I

    .line 903
    :cond_11e
    iget-object v1, v0, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->mScrollOffset:[I

    aget v1, v1, v13

    sub-int/2addr v6, v1

    iput v6, v0, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->mLastMotionY:I

    .line 905
    invoke-virtual {v0}, Landroid/view/View;->getScrollY()I

    move-result v15

    .line 906
    invoke-virtual {v0}, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->getScrollRange()I

    move-result v6

    .line 907
    invoke-virtual {v0}, Landroid/view/View;->getOverScrollMode()I

    move-result v1

    if-eqz v1, :cond_13b

    if-ne v1, v13, :cond_138

    if-lez v6, :cond_138

    goto :goto_13b

    :cond_138
    move/from16 v16, v11

    goto :goto_13d

    :cond_13b
    :goto_13b
    move/from16 v16, v13

    .line 913
    :goto_13d
    invoke-virtual {v0}, Landroid/view/View;->getScrollY()I

    move-result v4

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v9}, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->overScrollByCompat(IIIIIIIIZ)Z

    move-result v1

    move v8, v2

    move v9, v6

    if-eqz v1, :cond_15a

    .line 914
    invoke-virtual {v0, v11}, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->hasNestedScrollingParent(I)Z

    move-result v1

    if-nez v1, :cond_15a

    .line 916
    iget-object v1, v0, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1}, Landroid/view/VelocityTracker;->clear()V

    .line 919
    :cond_15a
    invoke-virtual {v0}, Landroid/view/View;->getScrollY()I

    move-result v1

    sub-int v2, v1, v15

    sub-int v4, v8, v2

    .line 922
    iget-object v7, v0, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->mScrollConsumed:[I

    aput v11, v7, v13

    .line 924
    iget-object v5, v0, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->mScrollOffset:[I

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x0

    invoke-virtual/range {v0 .. v7}, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->dispatchNestedScroll(IIII[II[I)V

    .line 927
    iget v1, v0, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->mLastMotionY:I

    iget-object v2, v0, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->mScrollOffset:[I

    aget v2, v2, v13

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->mLastMotionY:I

    .line 928
    iget v1, v0, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->mNestedYOffset:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->mNestedYOffset:I

    if-eqz v16, :cond_26f

    .line 931
    iget-object v1, v0, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->mScrollConsumed:[I

    aget v1, v1, v13

    sub-int v2, v8, v1

    .line 932
    invoke-direct {v0}, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->ensureGlows()V

    add-int/2addr v15, v2

    if-gez v15, :cond_1ae

    .line 935
    iget-object v1, v0, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    int-to-float v2, v2

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    .line 936
    invoke-virtual {v10, v14}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    .line 935
    invoke-static {v1, v2, v3}, Landroidx/core/widget/EdgeEffectCompat;->onPull(Landroid/widget/EdgeEffect;FF)V

    .line 937
    iget-object v1, v0, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v1

    if-nez v1, :cond_1d6

    .line 938
    iget-object v1, v0, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->onRelease()V

    goto :goto_1d6

    :cond_1ae
    if-le v15, v9, :cond_1d6

    .line 941
    iget-object v1, v0, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    int-to-float v2, v2

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    .line 942
    invoke-virtual {v10, v14}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    .line 943
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float/2addr v4, v3

    .line 941
    invoke-static {v1, v2, v4}, Landroidx/core/widget/EdgeEffectCompat;->onPull(Landroid/widget/EdgeEffect;FF)V

    .line 944
    iget-object v1, v0, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v1

    if-nez v1, :cond_1d6

    .line 945
    iget-object v1, v0, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 948
    :cond_1d6
    :goto_1d6
    iget-object v1, v0, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    if-eqz v1, :cond_26f

    .line 949
    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v1

    if-eqz v1, :cond_1e8

    iget-object v1, v0, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v1

    if-nez v1, :cond_26f

    .line 950
    :cond_1e8
    invoke-static {v0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    goto/16 :goto_26f

    .line 956
    :cond_1ed
    iget-object v1, v0, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 957
    iget v2, v0, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->mMaximumVelocity:I

    int-to-float v2, v2

    const/16 v5, 0x3e8

    invoke-virtual {v1, v5, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 958
    iget v2, v0, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->mActivePointerId:I

    invoke-virtual {v1, v2}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v1

    float-to-int v1, v1

    .line 959
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v2

    iget v5, v0, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->mMinimumVelocity:I

    if-lt v2, v5, :cond_215

    neg-int v1, v1

    int-to-float v2, v1

    .line 960
    invoke-virtual {v0, v3, v2}, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->dispatchNestedPreFling(FF)Z

    move-result v5

    if-nez v5, :cond_232

    .line 961
    invoke-virtual {v0, v3, v2, v13}, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->dispatchNestedFling(FFZ)Z

    .line 962
    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->fling(I)V

    goto :goto_232

    .line 964
    :cond_215
    iget-object v14, v0, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/view/View;->getScrollX()I

    move-result v15

    invoke-virtual {v0}, Landroid/view/View;->getScrollY()I

    move-result v16

    const/16 v19, 0x0

    .line 965
    invoke-virtual {v0}, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->getScrollRange()I

    move-result v20

    const/16 v17, 0x0

    const/16 v18, 0x0

    .line 964
    invoke-virtual/range {v14 .. v20}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    move-result v1

    if-eqz v1, :cond_232

    .line 966
    invoke-static {v0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 968
    :cond_232
    :goto_232
    iput v4, v0, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->mActivePointerId:I

    .line 969
    invoke-direct {v0}, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->endDrag()V

    goto :goto_26f

    .line 849
    :cond_238
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-nez v1, :cond_23f

    return v11

    .line 852
    :cond_23f
    iget-object v1, v0, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v1

    xor-int/lit8 v3, v1, 0x1

    iput-boolean v3, v0, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->mIsBeingDragged:Z

    if-nez v1, :cond_254

    .line 853
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_254

    .line 855
    invoke-interface {v1, v13}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 863
    :cond_254
    iget-object v1, v0, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v1

    if-nez v1, :cond_25f

    .line 864
    invoke-direct {v0}, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->abortAnimatedScroll()V

    .line 868
    :cond_25f
    invoke-virtual {v10}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->mLastMotionY:I

    .line 869
    invoke-virtual {v10, v11}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iput v1, v0, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->mActivePointerId:I

    .line 870
    invoke-virtual {v0, v2, v11}, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->startNestedScroll(II)Z

    .line 1002
    :cond_26f
    :goto_26f
    iget-object v0, v0, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_276

    .line 1003
    invoke-virtual {v0, v12}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1005
    :cond_276
    invoke-virtual {v12}, Landroid/view/MotionEvent;->recycle()V

    return v13
.end method

.method overScrollByCompat(IIIIIIIIZ)Z
    .registers 21

    .line 1081
    invoke-virtual {p0}, Landroid/view/View;->getOverScrollMode()I

    move-result v0

    .line 1083
    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->computeHorizontalScrollRange()I

    move-result v1

    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->computeHorizontalScrollExtent()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-le v1, v2, :cond_12

    move v1, v4

    goto :goto_13

    :cond_12
    move v1, v3

    .line 1085
    :goto_13
    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->computeVerticalScrollRange()I

    move-result v2

    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->computeVerticalScrollExtent()I

    move-result v5

    if-le v2, v5, :cond_1f

    move v2, v4

    goto :goto_20

    :cond_1f
    move v2, v3

    :goto_20
    if-eqz v0, :cond_29

    if-ne v0, v4, :cond_27

    if-eqz v1, :cond_27

    goto :goto_29

    :cond_27
    move v1, v3

    goto :goto_2a

    :cond_29
    :goto_29
    move v1, v4

    :goto_2a
    if-eqz v0, :cond_33

    if-ne v0, v4, :cond_31

    if-eqz v2, :cond_31

    goto :goto_33

    :cond_31
    move v0, v3

    goto :goto_34

    :cond_33
    :goto_33
    move v0, v4

    :goto_34
    add-int v2, p3, p1

    if-nez v1, :cond_3a

    move v1, v3

    goto :goto_3c

    :cond_3a
    move/from16 v1, p7

    :goto_3c
    add-int v5, p4, p2

    if-nez v0, :cond_42

    move v0, v3

    goto :goto_44

    :cond_42
    move/from16 v0, p8

    :goto_44
    neg-int v6, v1

    add-int v1, v1, p5

    neg-int v7, v0

    add-int v0, v0, p6

    if-le v2, v1, :cond_4f

    move v2, v1

    move v1, v4

    goto :goto_55

    :cond_4f
    if-ge v2, v6, :cond_54

    move v1, v4

    move v2, v6

    goto :goto_55

    :cond_54
    move v1, v3

    :goto_55
    if-le v5, v0, :cond_5a

    move v5, v0

    move v0, v4

    goto :goto_60

    :cond_5a
    if-ge v5, v7, :cond_5f

    move v0, v4

    move v5, v7

    goto :goto_60

    :cond_5f
    move v0, v3

    :goto_60
    if-eqz v0, :cond_80

    .line 1125
    invoke-virtual {p0, v4}, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->hasNestedScrollingParent(I)Z

    move-result v6

    if-nez v6, :cond_80

    .line 1126
    iget-object v6, p0, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->mScroller:Landroid/widget/OverScroller;

    const/4 v7, 0x0

    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->getScrollRange()I

    move-result v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    move p2, v2

    move p3, v5

    move-object p1, v6

    move/from16 p6, v7

    move/from16 p7, v8

    move p4, v9

    move/from16 p5, v10

    invoke-virtual/range {p1 .. p7}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    move v6, p2

    goto :goto_81

    :cond_80
    move v6, v2

    .line 1129
    :goto_81
    invoke-virtual {p0, v6, v5, v1, v0}, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->onOverScrolled(IIZZ)V

    if-nez v1, :cond_8a

    if-eqz v0, :cond_89

    goto :goto_8a

    :cond_89
    return v3

    :cond_8a
    :goto_8a
    return v4
.end method

.method public pageScroll(I)Z
    .registers 6

    const/16 v0, 0x82

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p1, v0, :cond_8

    move v0, v2

    goto :goto_9

    :cond_8
    move v0, v1

    .line 1241
    :goto_9
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    if-eqz v0, :cond_40

    .line 1244
    iget-object v0, p0, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v1

    add-int/2addr v1, v3

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 1245
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lez v0, :cond_51

    sub-int/2addr v0, v2

    .line 1247
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1248
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 1249
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    iget v1, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    .line 1250
    iget-object v1, p0, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v3

    if-le v2, v0, :cond_51

    sub-int/2addr v0, v3

    .line 1251
    iput v0, v1, Landroid/graphics/Rect;->top:I

    goto :goto_51

    .line 1255
    :cond_40
    iget-object v0, p0, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v2

    sub-int/2addr v2, v3

    iput v2, v0, Landroid/graphics/Rect;->top:I

    .line 1256
    iget-object v0, p0, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/Rect;->top:I

    if-gez v2, :cond_51

    .line 1257
    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 1260
    :cond_51
    :goto_51
    iget-object v0, p0, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v1

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    .line 1262
    invoke-direct {p0, p1, v1, v3}, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->scrollAndFocus(III)Z

    move-result p0

    return p0
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .registers 4

    .line 1808
    iget-boolean v0, p0, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->mIsLayoutDirty:Z

    if-nez v0, :cond_8

    .line 1809
    invoke-direct {p0, p2}, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->scrollToChild(Landroid/view/View;)V

    goto :goto_a

    .line 1812
    :cond_8
    iput-object p2, p0, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->mChildToScrollTo:Landroid/view/View;

    .line 1814
    :goto_a
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    return-void
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .registers 6

    .line 1857
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v1

    sub-int/2addr v0, v1

    .line 1858
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result p1

    sub-int/2addr v1, p1

    .line 1857
    invoke-virtual {p2, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 1860
    invoke-direct {p0, p2, p3}, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->scrollToChildRect(Landroid/graphics/Rect;Z)Z

    move-result p0

    return p0
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .registers 2

    if-eqz p1, :cond_5

    .line 718
    invoke-direct {p0}, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->recycleVelocityTracker()V

    .line 720
    :cond_5
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    return-void
.end method

.method public requestLayout()V
    .registers 2

    const/4 v0, 0x1

    .line 1865
    iput-boolean v0, p0, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->mIsLayoutDirty:Z

    .line 1866
    invoke-super {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public scrollTo(II)V
    .registers 9

    .line 1985
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lez v0, :cond_58

    const/4 v0, 0x0

    .line 1986
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1987
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 1988
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    .line 1989
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v3

    iget v4, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    add-int/2addr v3, v4

    iget v4, v1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    add-int/2addr v3, v4

    .line 1990
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v4

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v4, v5

    .line 1991
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    iget v5, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr v0, v5

    iget v1, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v0, v1

    .line 1992
    invoke-static {p1, v2, v3}, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->clamp(III)I

    move-result p1

    .line 1993
    invoke-static {p2, v4, v0}, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->clamp(III)I

    move-result p2

    .line 1994
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v0

    if-ne p1, v0, :cond_55

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v0

    if-eq p2, v0, :cond_58

    .line 1995
    :cond_55
    invoke-super {p0, p1, p2}, Landroid/view/View;->scrollTo(II)V

    :cond_58
    return-void
.end method

.method public setBase(Lcom/transsion/effectengine/bounceeffect/IOverScrollDecor;)V
    .registers 4

    .line 2357
    iget-object v0, p0, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    instance-of v1, v0, Lcom/transsion/effectengine/bounceeffect/BounceEdgeEffect;

    if-eqz v1, :cond_b

    .line 2358
    check-cast v0, Lcom/transsion/effectengine/bounceeffect/BounceEdgeEffect;

    invoke-virtual {v0, p1}, Lcom/transsion/effectengine/bounceeffect/BounceEdgeEffect;->setBase(Lcom/transsion/effectengine/bounceeffect/IOverScrollDecor;)V

    .line 2360
    :cond_b
    iget-object p0, p0, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    instance-of v0, p0, Lcom/transsion/effectengine/bounceeffect/BounceEdgeEffect;

    if-eqz v0, :cond_16

    .line 2361
    check-cast p0, Lcom/transsion/effectengine/bounceeffect/BounceEdgeEffect;

    invoke-virtual {p0, p1}, Lcom/transsion/effectengine/bounceeffect/BounceEdgeEffect;->setBase(Lcom/transsion/effectengine/bounceeffect/IOverScrollDecor;)V

    :cond_16
    return-void
.end method

.method public setFillViewport(Z)V
    .registers 3

    .line 561
    iget-boolean v0, p0, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->mFillViewport:Z

    if-eq p1, v0, :cond_9

    .line 562
    iput-boolean p1, p0, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->mFillViewport:Z

    .line 563
    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->requestLayout()V

    :cond_9
    return-void
.end method

.method public setNestedScrollingEnabled(Z)V
    .registers 2

    .line 269
    iget-object p0, p0, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->mChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    invoke-virtual {p0, p1}, Landroidx/core/view/NestedScrollingChildHelper;->setNestedScrollingEnabled(Z)V

    return-void
.end method

.method public setOnScrollChangeListener(Lcom/transsion/widgetslib/view/OverBoundNestedScrollView$OnScrollChangeListener;)V
    .registers 2

    .line 524
    iput-object p1, p0, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->mOnScrollChangeListener:Lcom/transsion/widgetslib/view/OverBoundNestedScrollView$OnScrollChangeListener;

    return-void
.end method

.method public setSmoothScrollingEnabled(Z)V
    .registers 2

    .line 579
    iput-boolean p1, p0, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->mSmoothScrollingEnabled:Z

    return-void
.end method

.method public setUpOverScroll()Lcom/transsion/effectengine/bounceeffect/IOverScrollDecor;
    .registers 2

    const/4 v0, 0x0

    .line 2329
    invoke-virtual {p0, v0}, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->setUpOverScroll(Z)Lcom/transsion/effectengine/bounceeffect/IOverScrollDecor;

    move-result-object p0

    return-object p0
.end method

.method public setUpOverScroll(Lcom/google/android/material/appbar/AppBarLayout;)Lcom/transsion/effectengine/bounceeffect/IOverScrollDecor;
    .registers 3

    const/4 v0, 0x0

    .line 2303
    invoke-virtual {p0, p1, v0}, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->setUpOverScroll(Lcom/google/android/material/appbar/AppBarLayout;Z)Lcom/transsion/effectengine/bounceeffect/IOverScrollDecor;

    move-result-object p0

    return-object p0
.end method

.method public setUpOverScroll(Lcom/google/android/material/appbar/AppBarLayout;Z)Lcom/transsion/effectengine/bounceeffect/IOverScrollDecor;
    .registers 4

    const/4 p1, 0x0

    .line 2243
    invoke-virtual {p0, p1}, Landroid/view/View;->setOverScrollMode(I)V

    .line 2244
    new-instance v0, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView$1;

    invoke-direct {v0, p0, p0}, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView$1;-><init>(Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;Landroid/view/View;)V

    invoke-static {p0, p1, v0, p2}, Lcom/transsion/effectengine/bounceeffect/OverScrollDecorHelper;->setUpMiscViewOverScroll(Landroid/view/View;ILcom/transsion/effectengine/bounceeffect/adapters/MiscViewOverScrollDecorAdapter;Z)Lcom/transsion/effectengine/bounceeffect/IOverScrollDecor;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->mOverScrollDecor:Lcom/transsion/effectengine/bounceeffect/IOverScrollDecor;

    const/4 p2, 0x0

    if-nez p1, :cond_13

    return-object p2

    :cond_13
    const/4 v0, 0x1

    .line 2260
    invoke-interface {p1, v0}, Lcom/transsion/effectengine/bounceeffect/IOverScrollDecor;->enableNestedScrollMode(Z)V

    .line 2261
    iget-object p1, p0, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->mOverScrollDecor:Lcom/transsion/effectengine/bounceeffect/IOverScrollDecor;

    invoke-interface {p1, v0}, Lcom/transsion/effectengine/bounceeffect/IOverScrollDecor;->setDoubleFriction(Z)V

    .line 2263
    new-instance p1, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView$2;

    invoke-direct {p1, p0}, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView$2;-><init>(Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;)V

    throw p2
.end method

.method public setUpOverScroll(Z)Lcom/transsion/effectengine/bounceeffect/IOverScrollDecor;
    .registers 4

    const/4 v0, 0x0

    .line 2308
    invoke-virtual {p0, v0}, Landroid/view/View;->setOverScrollMode(I)V

    .line 2309
    new-instance v1, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView$4;

    invoke-direct {v1, p0, p0}, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView$4;-><init>(Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;Landroid/view/View;)V

    invoke-static {p0, v0, v1, p1}, Lcom/transsion/effectengine/bounceeffect/OverScrollDecorHelper;->setUpMiscViewOverScroll(Landroid/view/View;ILcom/transsion/effectengine/bounceeffect/adapters/MiscViewOverScrollDecorAdapter;Z)Lcom/transsion/effectengine/bounceeffect/IOverScrollDecor;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->mOverScrollDecor:Lcom/transsion/effectengine/bounceeffect/IOverScrollDecor;

    if-eqz p1, :cond_14

    .line 2323
    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->setBase(Lcom/transsion/effectengine/bounceeffect/IOverScrollDecor;)V

    .line 2325
    :cond_14
    iget-object p0, p0, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->mOverScrollDecor:Lcom/transsion/effectengine/bounceeffect/IOverScrollDecor;

    return-object p0
.end method

.method public shouldDelayChildPressedState()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public final smoothScrollBy(II)V
    .registers 5

    const/16 v0, 0xfa

    const/4 v1, 0x0

    .line 1433
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->smoothScrollBy(IIIZ)V

    return-void
.end method

.method public final smoothScrollBy(III)V
    .registers 5

    const/4 v0, 0x0

    .line 1444
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->smoothScrollBy(IIIZ)V

    return-void
.end method

.method public final smoothScrollTo(II)V
    .registers 5

    const/16 v0, 0xfa

    const/4 v1, 0x0

    .line 1487
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->smoothScrollTo(IIIZ)V

    return-void
.end method

.method public final smoothScrollTo(III)V
    .registers 5

    const/4 v0, 0x0

    .line 1498
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->smoothScrollTo(IIIZ)V

    return-void
.end method

.method smoothScrollTo(IIIZ)V
    .registers 6

    .line 1523
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v0

    sub-int/2addr p1, v0

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v0

    sub-int/2addr p2, v0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->smoothScrollBy(IIIZ)V

    return-void
.end method

.method smoothScrollTo(IIZ)V
    .registers 5

    const/16 v0, 0xfa

    .line 1510
    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->smoothScrollTo(IIIZ)V

    return-void
.end method

.method public startNestedScroll(I)Z
    .registers 3

    const/4 v0, 0x0

    .line 279
    invoke-virtual {p0, p1, v0}, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->startNestedScroll(II)Z

    move-result p0

    return p0
.end method

.method public startNestedScroll(II)Z
    .registers 3

    .line 239
    iget-object p0, p0, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->mChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    invoke-virtual {p0, p1, p2}, Landroidx/core/view/NestedScrollingChildHelper;->startNestedScroll(II)Z

    move-result p0

    return p0
.end method

.method public stopNestedScroll()V
    .registers 2

    const/4 v0, 0x0

    .line 284
    invoke-virtual {p0, v0}, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->stopNestedScroll(I)V

    return-void
.end method

.method public stopNestedScroll(I)V
    .registers 2

    .line 244
    iget-object p0, p0, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->mChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    invoke-virtual {p0, p1}, Landroidx/core/view/NestedScrollingChildHelper;->stopNestedScroll(I)V

    return-void
.end method
