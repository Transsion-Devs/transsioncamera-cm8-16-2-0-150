.class public Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;
.super Landroid/view/ViewGroup;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/widgetslib/view/swipmenu/Controller;
.implements Landroidx/lifecycle/LifecycleObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout$DelScaleHeightAnimatorUpdateListener;,
        Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout$DelHeightAnimatorUpdateListener;,
        Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout$DelAnimatorUpdateListener;,
        Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout$DeleteAnimationListenerCompat;,
        Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout$DeleteAnimationListener;,
        Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout$OnMenuItemClickListener;
    }
.end annotation


# static fields
.field private static final COLOR_FILTER_INDEX:I = 0x12

.field private static final COLOR_MAX_VALUE:F = 255.0f

.field private static CURRENT_UI_MODE:I = 0x0

.field public static final DEFAULT_ITEM_SCROLLER_DURATION:I = 0x2bc

.field public static final DEFAULT_SCROLLER_DURATION:I = 0x15e

.field private static final DELETE_ANIMATION_ALPHA_SCALE_DURATION:I = 0x64

.field private static final DELETE_ANIMATION_DURATION:I = 0x12c

.field public static EXECUTEANIMATION:Z = false

.field private static final FLING_THRESHOLD_VELOCITY:I = 0x1f4

.field private static final MIN_FLING_VELOCITY:I = 0xfa

.field private static final MIN_ITEM_SIZE_REQUIRE_FILTER:I = 0x2

.field public static final OUTLINE_CORNER_SIZE:I = 0x8

.field private static final PAINT_MIN_ALPHA:I = 0xff

.field private static final TAG:Ljava/lang/String; = "OSSwipeMenuLayout"

.field private static isTouching:Z

.field private static mViewCache:Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;


# instance fields
.field private availableClick:Z

.field private cacheClose:Z

.field private canSeeFlashCallLayer:Z

.field private currentPointerId:I

.field private deltaX:I

.field private hasConsume:Z

.field private isFlashCallType:Z

.field private isRtlSwipe:Z

.field private isSwipeEnable:Z

.field private isUnMoved:Z

.field private isUserSwiped:Z

.field private mAnimateAlpha:I

.field private mAnimateDelAlpha:I

.field private mAnimateRatio:F

.field private mAnimatorSet:Landroid/animation/AnimatorSet;

.field private mAutoClipCorner:Z

.field private mBitmapRectFDest:Landroid/graphics/Rect;

.field private mBitmapRectFSrc:Landroid/graphics/Rect;

.field private mCircleDefBgColor:I

.field private mCircleDefMiddleBgColor:I

.field private mCircleDeleteDefBgColor:I

.field private mColorFilter:Landroid/graphics/ColorMatrixColorFilter;

.field private mColorMatrixArray:[F

.field private mContentView:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field private mCurrentOutlineCorner:I

.field private mDeleteMenuDefBgColor:I

.field private mExploreByTouchHelper:Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuExploreByTouchHelper;

.field private mFinalHeight:I

.field private mFirstP:Landroid/graphics/PointF;

.field private mFirstPNormal:Landroid/graphics/PointF;

.field protected mFlingThresholdVelocity:I

.field private mHeight:I

.field private mIFlashCallPlay:Lcom/transsion/widgetslib/view/swipmenu/IFlashCallPlay;

.field public mIsExecuteAnimation:Z

.field private mIsHios:Z

.field private mLastP:Landroid/graphics/PointF;

.field private mLimit:I

.field private mMaxScroll:I

.field private mMenuContentWidth:I

.field private mMenuDelPaint:Landroid/graphics/Paint;

.field private mMenuImageDelPaint:Landroid/graphics/Paint;

.field private mMenuImagePaint:Landroid/graphics/Paint;

.field private mMenuItemIconFixedWidth:I

.field private mMenuItemTextFixedWidth:I

.field private mMenuPaint:Landroid/graphics/Paint;

.field protected mMinFlingVelocity:I

.field private mMinScroll:I

.field private mNormalMenuDefBgColor:I

.field private mOnMenuItemClickListener:Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout$OnMenuItemClickListener;

.field private mPointerId:I

.field private mScaleTouchSlop:I

.field private mScaledMaximumFlingVelocity:I

.field private mScroller:Lcom/transsion/widgetslib/view/swipmenu/OverScroller;

.field private mScrollerDuration:I

.field private mSwipeCurrentHorizontal:Lcom/transsion/widgetslib/view/swipmenu/Horizontal;

.field private mSwipeLeftHorizontal:Lcom/transsion/widgetslib/view/swipmenu/LeftHorizontal;

.field private mSwipeMenu:Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;

.field private mSwipeMenuCreator:Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuCreator;

.field private mSwipeRightHorizontal:Lcom/transsion/widgetslib/view/swipmenu/RightHorizontal;

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field overScrollAmount:I

.field private screenWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 119
    invoke-direct {p0, p1, v0}, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    .line 123
    invoke-direct {p0, p1, p2, v0}, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 6

    .line 127
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 64
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mLastP:Landroid/graphics/PointF;

    const/4 v0, 0x1

    .line 65
    iput-boolean v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->isUnMoved:Z

    .line 66
    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    iput-object v1, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mFirstP:Landroid/graphics/PointF;

    .line 67
    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    iput-object v1, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mFirstPNormal:Landroid/graphics/PointF;

    const/4 v1, 0x0

    .line 78
    iput-boolean v1, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->isFlashCallType:Z

    .line 79
    iput-boolean v1, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->canSeeFlashCallLayer:Z

    const/16 v1, 0x52

    .line 84
    iput v1, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mMenuItemTextFixedWidth:I

    const/16 v1, 0x40

    .line 85
    iput v1, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mMenuItemIconFixedWidth:I

    const/16 v1, 0x15e

    .line 91
    iput v1, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mScrollerDuration:I

    const/16 v1, 0xff

    .line 111
    iput v1, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mAnimateAlpha:I

    .line 112
    iput v1, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mAnimateDelAlpha:I

    const/high16 v1, 0x3f800000    # 1.0f

    .line 113
    iput v1, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mAnimateRatio:F

    .line 114
    iput-boolean v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mAutoClipCorner:Z

    .line 128
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private abortScrollerAnimation()V
    .registers 1

    .line 889
    iget-object p0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mScroller:Lcom/transsion/widgetslib/view/swipmenu/OverScroller;

    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/swipmenu/OverScroller;->abortAnimation()V

    return-void
.end method

.method static synthetic access$000(Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;)Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;
    .registers 1

    .line 55
    iget-object p0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mSwipeMenu:Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;

    return-object p0
.end method

.method static synthetic access$102(Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;I)I
    .registers 2

    .line 55
    iput p1, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mAnimateAlpha:I

    return p1
.end method

.method static synthetic access$200(Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;)Landroid/graphics/Paint;
    .registers 1

    .line 55
    iget-object p0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mMenuImagePaint:Landroid/graphics/Paint;

    return-object p0
.end method

.method static synthetic access$302(Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;F)F
    .registers 2

    .line 55
    iput p1, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mAnimateRatio:F

    return p1
.end method

.method private acquireVelocityTracker(Landroid/view/MotionEvent;)V
    .registers 3

    .line 1571
    iget-object v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_a

    .line 1572
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1574
    :cond_a
    iget-object p0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    return-void
.end method

.method private closeCacheView()V
    .registers 2

    .line 868
    sget-object v0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mViewCache:Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;

    if-eqz v0, :cond_15

    if-eq v0, p0, :cond_15

    .line 869
    iget-boolean p0, v0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->isSwipeEnable:Z

    if-eqz p0, :cond_15

    const/4 p0, 0x1

    .line 870
    iput-boolean p0, v0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->cacheClose:Z

    .line 871
    invoke-direct {v0}, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->abortScrollerAnimation()V

    .line 872
    sget-object p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mViewCache:Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;

    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->smoothCloseMenu()V

    :cond_15
    return-void
.end method

.method public static closeMenu()V
    .registers 1

    .line 882
    sget-object v0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mViewCache:Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;

    if-eqz v0, :cond_c

    .line 883
    invoke-direct {v0}, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->abortScrollerAnimation()V

    .line 884
    sget-object v0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mViewCache:Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;

    invoke-virtual {v0}, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->smoothCloseMenu()V

    :cond_c
    return-void
.end method

.method private dependOnLimitShowOrHideMenu(I)V
    .registers 4

    .line 840
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mLimit:I

    if-le v0, v1, :cond_10

    .line 841
    invoke-direct {p0, p1}, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->smoothOpenMenu(I)V

    return-void

    .line 843
    :cond_10
    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->smoothCloseMenu(I)V

    return-void
.end method

.method private drawLeftBg(Landroid/graphics/Canvas;IIFIFLandroid/graphics/drawable/Drawable;Z)V
    .registers 15

    if-eqz p7, :cond_12

    .line 1496
    instance-of v0, p7, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v0, :cond_12

    .line 1497
    iget-object v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mMenuPaint:Landroid/graphics/Paint;

    move-object v1, p7

    check-cast v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    :cond_12
    add-int/lit8 p3, p3, -0x1

    if-ne p5, p3, :cond_38

    if-nez p7, :cond_25

    .line 1500
    iget-boolean p3, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mIsHios:Z

    if-eqz p3, :cond_1e

    if-nez p8, :cond_25

    .line 1501
    :cond_1e
    iget-object p3, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mMenuPaint:Landroid/graphics/Paint;

    iget p4, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mDeleteMenuDefBgColor:I

    invoke-virtual {p3, p4}, Landroid/graphics/Paint;->setColor(I)V

    .line 1503
    :cond_25
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p3

    add-int/2addr p2, p3

    int-to-float p2, p2

    iget p3, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mHeight:I

    int-to-float p7, p3

    iget-object p8, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mMenuPaint:Landroid/graphics/Paint;

    const/4 p5, 0x0

    move-object p3, p1

    move p4, p6

    move p6, p2

    invoke-virtual/range {p3 .. p8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    return-void

    :cond_38
    move-object p3, p1

    move v1, p6

    if-nez p7, :cond_49

    .line 1505
    iget-boolean p1, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mIsHios:Z

    if-eqz p1, :cond_42

    if-nez p8, :cond_49

    .line 1506
    :cond_42
    iget-object p1, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mMenuPaint:Landroid/graphics/Paint;

    iget p2, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mNormalMenuDefBgColor:I

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    :cond_49
    add-float p6, v1, p4

    const/high16 p1, 0x3f800000    # 1.0f

    add-float v3, p6, p1

    .line 1508
    iget p1, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mHeight:I

    int-to-float v4, p1

    iget-object v5, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mMenuPaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    move-object v0, p3

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private drawLeftBgAni(Landroid/graphics/Canvas;IIFIFLandroid/graphics/drawable/Drawable;Z)V
    .registers 15

    if-eqz p7, :cond_15

    .line 1514
    iget-boolean v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mIsHios:Z

    if-eqz v0, :cond_8

    if-nez p8, :cond_15

    .line 1515
    :cond_8
    iget-object v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mMenuPaint:Landroid/graphics/Paint;

    move-object v1, p7

    check-cast v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_1b

    .line 1517
    :cond_15
    iget-object v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mMenuPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    :goto_1b
    add-int/lit8 p3, p3, -0x1

    if-ne p5, p3, :cond_41

    if-nez p7, :cond_2e

    .line 1520
    iget-boolean p3, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mIsHios:Z

    if-eqz p3, :cond_27

    if-nez p8, :cond_2e

    .line 1521
    :cond_27
    iget-object p3, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mMenuPaint:Landroid/graphics/Paint;

    iget p4, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mDeleteMenuDefBgColor:I

    invoke-virtual {p3, p4}, Landroid/graphics/Paint;->setColor(I)V

    .line 1523
    :cond_2e
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p3

    add-int/2addr p2, p3

    int-to-float p2, p2

    iget p3, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mHeight:I

    int-to-float p7, p3

    iget-object p8, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mMenuPaint:Landroid/graphics/Paint;

    const/4 p5, 0x0

    move-object p3, p1

    move p4, p6

    move p6, p2

    invoke-virtual/range {p3 .. p8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    return-void

    :cond_41
    move-object p3, p1

    move v1, p6

    if-nez p7, :cond_52

    .line 1525
    iget-boolean p1, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mIsHios:Z

    if-eqz p1, :cond_4b

    if-nez p8, :cond_52

    .line 1526
    :cond_4b
    iget-object p1, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mMenuPaint:Landroid/graphics/Paint;

    iget p2, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mNormalMenuDefBgColor:I

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    :cond_52
    add-float v3, v1, p4

    .line 1528
    iget p1, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mHeight:I

    int-to-float v4, p1

    iget-object v5, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mMenuPaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    move-object v0, p3

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private drawLeftImg(Landroid/graphics/Canvas;IIFLcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;Landroid/graphics/drawable/Drawable;)V
    .registers 12

    .line 1421
    invoke-virtual {p5}, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;->getImage()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v0, v0

    .line 1422
    invoke-virtual {p5}, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;->getImage()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    .line 1423
    invoke-virtual {p5}, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;->getWidth()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v2, v1

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    add-float/2addr p4, v2

    .line 1424
    iget v2, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mHeight:I

    int-to-float v2, v2

    sub-float/2addr v2, v0

    div-float/2addr v2, v3

    if-nez p6, :cond_27

    .line 1425
    iget-boolean v4, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mIsHios:Z

    if-eqz v4, :cond_59

    :cond_27
    if-eqz p6, :cond_35

    .line 1427
    iget-object p2, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mMenuPaint:Landroid/graphics/Paint;

    check-cast p6, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p6}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_48

    :cond_35
    add-int/lit8 p2, p2, -0x1

    if-ne p3, p2, :cond_41

    .line 1430
    iget-object p2, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mMenuPaint:Landroid/graphics/Paint;

    iget p3, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mCircleDeleteDefBgColor:I

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_48

    .line 1432
    :cond_41
    iget-object p2, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mMenuPaint:Landroid/graphics/Paint;

    iget p3, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mCircleDefBgColor:I

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 1435
    :goto_48
    iget-object p2, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mSwipeMenu:Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;

    invoke-virtual {p2}, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;->getHiosCircleRadius()I

    move-result p2

    int-to-float p2, p2

    div-float/2addr v1, v3

    add-float/2addr v1, p4

    div-float p3, v0, v3

    add-float/2addr v2, p3

    .line 1436
    iget-object p3, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mMenuPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, p2, p3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 1438
    :cond_59
    invoke-virtual {p5}, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;->getImage()Landroid/graphics/Bitmap;

    move-result-object p2

    iget p3, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mHeight:I

    int-to-float p3, p3

    sub-float/2addr p3, v0

    div-float/2addr p3, v3

    iget-object p0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mMenuImagePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p4, p3, p0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method private drawLeftImgAni(Landroid/graphics/Canvas;IIFLcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;Landroid/graphics/drawable/Drawable;)V
    .registers 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    .line 1444
    invoke-virtual/range {p5 .. p5}, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;->getImage()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    .line 1445
    invoke-virtual/range {p5 .. p5}, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;->getImage()Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    add-int/lit8 v5, p2, -0x1

    const/high16 v6, 0x40000000    # 2.0f

    if-ne v2, v5, :cond_38

    .line 1449
    invoke-virtual {v0}, Landroid/view/View;->getScrollX()I

    move-result v7

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    add-int/2addr v7, v8

    int-to-float v7, v7

    sub-float v7, v7, p4

    div-float/2addr v7, v6

    div-float v8, v4, v6

    sub-float/2addr v7, v8

    add-float v7, p4, v7

    .line 1450
    iget v8, v0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mHeight:I

    :goto_32
    int-to-float v8, v8

    div-float/2addr v8, v6

    div-float v9, v3, v6

    sub-float/2addr v8, v9

    goto :goto_46

    .line 1452
    :cond_38
    invoke-virtual/range {p5 .. p5}, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;->getWidth()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v7, v6

    div-float v8, v4, v6

    sub-float/2addr v7, v8

    add-float v7, p4, v7

    .line 1453
    iget v8, v0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mHeight:I

    goto :goto_32

    :goto_46
    const/high16 v9, 0x3f800000    # 1.0f

    const-wide/high16 v10, 0x3fe0000000000000L    # 0.5

    if-nez p6, :cond_50

    .line 1455
    iget-boolean v12, v0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mIsHios:Z

    if-eqz v12, :cond_b8

    .line 1456
    :cond_50
    iget-object v12, v0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mSwipeMenu:Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;

    invoke-virtual {v12}, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;->getHiosCircleRadius()I

    move-result v12

    int-to-float v12, v12

    if-eqz p6, :cond_70

    .line 1458
    iget-object v13, v0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mMenuPaint:Landroid/graphics/Paint;

    move-object/from16 v14, p6

    check-cast v14, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v14}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result v15

    invoke-virtual {v13, v15}, Landroid/graphics/Paint;->setColor(I)V

    .line 1459
    iget-object v13, v0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mMenuDelPaint:Landroid/graphics/Paint;

    invoke-virtual {v14}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result v14

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_7e

    .line 1461
    :cond_70
    iget-object v13, v0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mMenuDelPaint:Landroid/graphics/Paint;

    iget v14, v0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mCircleDeleteDefBgColor:I

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setColor(I)V

    .line 1462
    iget-object v13, v0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mMenuPaint:Landroid/graphics/Paint;

    iget v14, v0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mCircleDefBgColor:I

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setColor(I)V

    .line 1464
    :goto_7e
    iget-boolean v13, v0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mIsHios:Z

    if-eqz v13, :cond_90

    .line 1465
    iget-object v13, v0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mMenuPaint:Landroid/graphics/Paint;

    iget v14, v0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mAnimateAlpha:I

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1466
    iget-object v13, v0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mMenuDelPaint:Landroid/graphics/Paint;

    iget v14, v0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mAnimateDelAlpha:I

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setAlpha(I)V

    :cond_90
    if-ne v2, v5, :cond_a8

    .line 1469
    iget-boolean v13, v0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mIsHios:Z

    if-eqz v13, :cond_9e

    float-to-double v12, v12

    .line 1470
    iget v14, v0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mAnimateRatio:F

    add-float/2addr v14, v9

    float-to-double v14, v14

    mul-double/2addr v14, v10

    mul-double/2addr v12, v14

    double-to-float v12, v12

    :cond_9e
    div-float/2addr v4, v6

    add-float/2addr v4, v7

    div-float/2addr v3, v6

    add-float/2addr v3, v8

    .line 1472
    iget-object v13, v0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mMenuDelPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v4, v3, v12, v13}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_b8

    :cond_a8
    div-float/2addr v4, v6

    add-float/2addr v4, v7

    div-float/2addr v3, v6

    add-float/2addr v3, v8

    .line 1474
    iget-object v12, v0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mSwipeMenu:Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;

    invoke-virtual {v12}, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;->getHiosCircleRadius()I

    move-result v12

    int-to-float v12, v12

    iget-object v13, v0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mMenuPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v4, v3, v12, v13}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 1478
    :cond_b8
    :goto_b8
    invoke-virtual/range {p5 .. p5}, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;->getImage()Landroid/graphics/Bitmap;

    move-result-object v3

    .line 1479
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    .line 1480
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    if-ne v2, v5, :cond_102

    .line 1482
    iget-object v2, v0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mBitmapRectFSrc:Landroid/graphics/Rect;

    float-to-int v5, v7

    float-to-int v12, v8

    add-float v13, v7, v4

    float-to-int v13, v13

    add-float v14, v8, v3

    float-to-int v14, v14

    invoke-virtual {v2, v5, v12, v13, v14}, Landroid/graphics/Rect;->set(IIII)V

    float-to-double v12, v4

    .line 1483
    iget v2, v0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mAnimateRatio:F

    add-float v5, v2, v9

    float-to-double v14, v5

    mul-double/2addr v14, v10

    mul-double/2addr v12, v14

    double-to-float v5, v12

    float-to-double v12, v3

    add-float/2addr v2, v9

    float-to-double v14, v2

    mul-double/2addr v14, v10

    mul-double/2addr v12, v14

    double-to-float v2, v12

    sub-float/2addr v4, v5

    div-float/2addr v4, v6

    sub-float/2addr v3, v2

    div-float/2addr v3, v6

    .line 1487
    iget-object v6, v0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mBitmapRectFDest:Landroid/graphics/Rect;

    add-float/2addr v7, v4

    float-to-int v4, v7

    add-float/2addr v8, v3

    float-to-int v3, v8

    add-float/2addr v7, v5

    float-to-int v5, v7

    add-float/2addr v8, v2

    float-to-int v2, v8

    invoke-virtual {v6, v4, v3, v5, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 1488
    invoke-virtual/range {p5 .. p5}, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;->getImage()Landroid/graphics/Bitmap;

    move-result-object v2

    iget-object v3, v0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mBitmapRectFDest:Landroid/graphics/Rect;

    iget-object v0, v0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mMenuImageDelPaint:Landroid/graphics/Paint;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v3, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-void

    .line 1490
    :cond_102
    invoke-virtual/range {p5 .. p5}, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;->getImage()Landroid/graphics/Bitmap;

    move-result-object v2

    iget-object v0, v0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mMenuImagePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v7, v8, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method private drawLeftImgHios(Landroid/graphics/Canvas;IIFLcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;Landroid/graphics/drawable/Drawable;F)V
    .registers 24

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    .line 1380
    invoke-virtual/range {p5 .. p5}, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;->getImage()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    .line 1381
    invoke-virtual/range {p5 .. p5}, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;->getImage()Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    sub-float v5, p7, v4

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    add-float v5, p4, v5

    .line 1383
    iget v7, v0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mFinalHeight:I

    int-to-float v7, v7

    sub-float/2addr v7, v3

    div-float/2addr v7, v6

    .line 1384
    iget-object v8, v0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mMenuImagePaint:Landroid/graphics/Paint;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    if-eqz p6, :cond_3a

    .line 1387
    iget-object v2, v0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mMenuPaint:Landroid/graphics/Paint;

    move-object/from16 v8, p6

    check-cast v8, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v8}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result v8

    invoke-virtual {v2, v8}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_60

    :cond_3a
    add-int/lit8 v8, p2, -0x1

    if-ne v2, v8, :cond_46

    .line 1390
    iget-object v2, v0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mMenuPaint:Landroid/graphics/Paint;

    iget v8, v0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mCircleDeleteDefBgColor:I

    invoke-virtual {v2, v8}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_60

    :cond_46
    add-int/lit8 v8, p2, -0x2

    if-ne v2, v8, :cond_59

    .line 1392
    iget-object v2, v0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mMenuImagePaint:Landroid/graphics/Paint;

    iget-object v8, v0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mColorFilter:Landroid/graphics/ColorMatrixColorFilter;

    invoke-virtual {v2, v8}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 1393
    iget-object v2, v0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mMenuPaint:Landroid/graphics/Paint;

    iget v8, v0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mCircleDefMiddleBgColor:I

    invoke-virtual {v2, v8}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_60

    .line 1395
    :cond_59
    iget-object v2, v0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mMenuPaint:Landroid/graphics/Paint;

    iget v8, v0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mCircleDefBgColor:I

    invoke-virtual {v2, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 1399
    :goto_60
    iget-object v2, v0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mMenuPaint:Landroid/graphics/Paint;

    iget v8, v0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mAnimateAlpha:I

    invoke-virtual {v2, v8}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1400
    iget-object v2, v0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mMenuDelPaint:Landroid/graphics/Paint;

    iget v8, v0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mAnimateDelAlpha:I

    invoke-virtual {v2, v8}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1402
    iget-object v2, v0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mSwipeMenu:Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;

    invoke-virtual {v2}, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;->getHiosCircleRadius()I

    move-result v2

    int-to-float v2, v2

    float-to-double v10, v2

    .line 1403
    iget v2, v0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mAnimateRatio:F

    const/high16 v8, 0x3f800000    # 1.0f

    add-float/2addr v2, v8

    float-to-double v12, v2

    const-wide/high16 v14, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v12, v14

    mul-double/2addr v10, v12

    double-to-float v2, v10

    div-float/2addr v4, v6

    add-float/2addr v4, v5

    div-float/2addr v3, v6

    add-float/2addr v3, v7

    .line 1404
    iget-object v10, v0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mMenuPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v4, v3, v2, v10}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 1407
    invoke-virtual/range {p5 .. p5}, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;->getImage()Landroid/graphics/Bitmap;

    move-result-object v2

    .line 1408
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    .line 1409
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    .line 1411
    iget-object v4, v0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mBitmapRectFSrc:Landroid/graphics/Rect;

    float-to-int v10, v5

    float-to-int v11, v7

    add-float v12, v5, v3

    float-to-int v12, v12

    add-float v13, v7, v2

    float-to-int v13, v13

    invoke-virtual {v4, v10, v11, v12, v13}, Landroid/graphics/Rect;->set(IIII)V

    float-to-double v10, v3

    .line 1412
    iget v4, v0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mAnimateRatio:F

    add-float v12, v4, v8

    float-to-double v12, v12

    mul-double/2addr v12, v14

    mul-double/2addr v10, v12

    double-to-float v10, v10

    float-to-double v11, v2

    add-float/2addr v4, v8

    move/from16 p7, v6

    move/from16 p4, v7

    float-to-double v6, v4

    mul-double/2addr v6, v14

    mul-double/2addr v11, v6

    double-to-float v4, v11

    sub-float/2addr v3, v10

    div-float v3, v3, p7

    sub-float/2addr v2, v4

    div-float v2, v2, p7

    .line 1416
    iget-object v6, v0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mBitmapRectFDest:Landroid/graphics/Rect;

    add-float/2addr v5, v3

    float-to-int v3, v5

    add-float v7, p4, v2

    float-to-int v2, v7

    add-float/2addr v5, v10

    float-to-int v5, v5

    add-float/2addr v7, v4

    float-to-int v4, v7

    invoke-virtual {v6, v3, v2, v5, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 1417
    invoke-virtual/range {p5 .. p5}, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;->getImage()Landroid/graphics/Bitmap;

    move-result-object v2

    iget-object v3, v0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mBitmapRectFDest:Landroid/graphics/Rect;

    iget-object v0, v0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mMenuImagePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v9, v3, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-void
.end method

.method private drawLeftText(Landroid/graphics/Canvas;FLcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;)V
    .registers 8

    .line 1370
    iget-object v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mMenuPaint:Landroid/graphics/Paint;

    invoke-virtual {p3}, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;->getTextSize()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1371
    iget-object v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mMenuPaint:Landroid/graphics/Paint;

    invoke-virtual {p3}, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;->getTitleColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1372
    iget-object v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mMenuPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v0

    .line 1373
    iget-object v1, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mMenuPaint:Landroid/graphics/Paint;

    invoke-virtual {p3}, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    .line 1374
    iget v2, v0, Landroid/graphics/Paint$FontMetrics;->bottom:F

    iget v0, v0, Landroid/graphics/Paint$FontMetrics;->top:F

    sub-float v0, v2, v0

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v0, v3

    sub-float/2addr v0, v2

    .line 1375
    iget v2, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mHeight:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    add-float/2addr v2, v0

    float-to-int v0, v2

    .line 1376
    invoke-virtual {p3}, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3}, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;->getWidth()I

    move-result p3

    int-to-float p3, p3

    sub-float/2addr p3, v1

    div-float/2addr p3, v3

    add-float/2addr p2, p3

    int-to-float p3, v0

    iget-object p0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mMenuPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, p2, p3, p0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method private drawLeftTextAni(Landroid/graphics/Canvas;IIFIFLcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;)V
    .registers 17

    add-int/lit8 v8, p3, -0x1

    if-ne p5, v8, :cond_16

    .line 1191
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    add-int/2addr v1, p2

    int-to-float v4, v1

    iget v1, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mHeight:I

    int-to-float v5, v1

    iget-object v6, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mMenuPaint:Landroid/graphics/Paint;

    const/4 v3, 0x0

    move-object v1, p1

    move v2, p6

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_23

    :cond_16
    add-float v4, p6, p4

    .line 1193
    iget v1, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mHeight:I

    int-to-float v5, v1

    iget-object v6, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mMenuPaint:Landroid/graphics/Paint;

    const/4 v3, 0x0

    move-object v1, p1

    move v2, p6

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 1195
    :goto_23
    iget-object v2, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mMenuPaint:Landroid/graphics/Paint;

    invoke-virtual/range {p7 .. p7}, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;->getTextSize()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1196
    iget-object v2, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mMenuPaint:Landroid/graphics/Paint;

    invoke-virtual/range {p7 .. p7}, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;->getTitleColor()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 1197
    iget-object v2, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mMenuPaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v2

    .line 1198
    iget-object v3, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mMenuPaint:Landroid/graphics/Paint;

    invoke-virtual/range {p7 .. p7}, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v3

    .line 1199
    iget v4, v2, Landroid/graphics/Paint$FontMetrics;->bottom:F

    iget v2, v2, Landroid/graphics/Paint$FontMetrics;->top:F

    sub-float v2, v4, v2

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v2, v5

    sub-float/2addr v2, v4

    .line 1200
    iget v4, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mHeight:I

    int-to-float v4, v4

    div-float/2addr v4, v5

    add-float/2addr v4, v2

    if-ne p5, v8, :cond_69

    .line 1202
    invoke-virtual/range {p7 .. p7}, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;->getText()Ljava/lang/String;

    move-result-object v2

    int-to-float v6, p2

    int-to-float v7, v8

    mul-float/2addr v7, p4

    sub-float/2addr v6, v7

    sub-float/2addr v6, v3

    div-float/2addr v6, v5

    add-float v3, p6, v6

    iget-object v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mMenuPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v4, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void

    .line 1204
    :cond_69
    invoke-virtual/range {p7 .. p7}, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p7 .. p7}, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;->getWidth()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    div-float/2addr v3, v5

    sub-float/2addr v6, v3

    add-float v3, p6, v6

    iget-object v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mMenuPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v4, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method private drawRightBg(Landroid/graphics/Canvas;IIFIFLandroid/graphics/drawable/Drawable;Z)V
    .registers 15

    if-eqz p7, :cond_12

    .line 1334
    instance-of v0, p7, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v0, :cond_12

    .line 1335
    iget-object v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mMenuPaint:Landroid/graphics/Paint;

    move-object v1, p7

    check-cast v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    :cond_12
    add-int/lit8 p3, p3, -0x1

    if-ne p5, p3, :cond_33

    if-nez p7, :cond_25

    .line 1338
    iget-boolean p3, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mIsHios:Z

    if-eqz p3, :cond_1e

    if-nez p8, :cond_25

    .line 1339
    :cond_1e
    iget-object p3, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mMenuPaint:Landroid/graphics/Paint;

    iget p5, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mDeleteMenuDefBgColor:I

    invoke-virtual {p3, p5}, Landroid/graphics/Paint;->setColor(I)V

    :cond_25
    int-to-float v1, p2

    add-float v3, v1, p4

    .line 1341
    iget p2, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mHeight:I

    int-to-float v4, p2

    iget-object v5, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mMenuPaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    return-void

    :cond_33
    move-object v0, p1

    if-nez p7, :cond_43

    .line 1343
    iget-boolean p1, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mIsHios:Z

    if-eqz p1, :cond_3c

    if-nez p8, :cond_43

    .line 1344
    :cond_3c
    iget-object p1, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mMenuPaint:Landroid/graphics/Paint;

    iget p2, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mNormalMenuDefBgColor:I

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    :cond_43
    add-float/2addr p4, p6

    neg-float p1, p4

    const/high16 p2, 0x3f800000    # 1.0f

    sub-float/2addr p1, p2

    neg-float p3, p6

    .line 1346
    iget p2, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mHeight:I

    int-to-float p4, p2

    iget-object p5, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mMenuPaint:Landroid/graphics/Paint;

    const/4 p2, 0x0

    move-object p0, v0

    invoke-virtual/range {p0 .. p5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private drawRightBgAni(Landroid/graphics/Canvas;IIFIFLandroid/graphics/drawable/Drawable;Z)V
    .registers 15

    if-eqz p7, :cond_15

    .line 1351
    iget-boolean v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mIsHios:Z

    if-eqz v0, :cond_8

    if-nez p8, :cond_15

    .line 1352
    :cond_8
    iget-object p8, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mMenuPaint:Landroid/graphics/Paint;

    move-object v0, p7

    check-cast v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result v0

    invoke-virtual {p8, v0}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_1b

    .line 1354
    :cond_15
    iget-object p8, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mMenuPaint:Landroid/graphics/Paint;

    const/4 v0, 0x0

    invoke-virtual {p8, v0}, Landroid/graphics/Paint;->setColor(I)V

    :goto_1b
    add-int/lit8 p3, p3, -0x1

    if-ne p5, p3, :cond_3c

    if-nez p7, :cond_2c

    .line 1357
    iget-boolean p5, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mIsHios:Z

    if-nez p5, :cond_2c

    .line 1358
    iget-object p5, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mMenuPaint:Landroid/graphics/Paint;

    iget p6, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mDeleteMenuDefBgColor:I

    invoke-virtual {p5, p6}, Landroid/graphics/Paint;->setColor(I)V

    :cond_2c
    int-to-float v1, p2

    neg-float p2, p4

    int-to-float p3, p3

    mul-float v3, p2, p3

    .line 1360
    iget p2, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mHeight:I

    int-to-float v4, p2

    iget-object v5, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mMenuPaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    return-void

    :cond_3c
    move-object v0, p1

    if-nez p7, :cond_4a

    .line 1362
    iget-boolean p1, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mIsHios:Z

    if-nez p1, :cond_4a

    .line 1363
    iget-object p1, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mMenuPaint:Landroid/graphics/Paint;

    iget p2, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mNormalMenuDefBgColor:I

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    :cond_4a
    add-float/2addr p4, p6

    neg-float p1, p4

    neg-float p3, p6

    .line 1365
    iget p2, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mHeight:I

    int-to-float p4, p2

    iget-object p5, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mMenuPaint:Landroid/graphics/Paint;

    const/4 p2, 0x0

    move-object p0, v0

    invoke-virtual/range {p0 .. p5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private drawRightImg(Landroid/graphics/Canvas;IIFLcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;Landroid/graphics/drawable/Drawable;)V
    .registers 12

    .line 1220
    invoke-virtual {p5}, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;->getImage()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v0, v0

    .line 1221
    invoke-virtual {p5}, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;->getImage()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    .line 1222
    invoke-virtual {p5}, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;->getWidth()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr p4, v2

    neg-float p4, p4

    invoke-virtual {p5}, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;->getWidth()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v2, v1

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    add-float/2addr p4, v2

    .line 1223
    iget v2, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mHeight:I

    int-to-float v2, v2

    sub-float/2addr v2, v0

    div-float/2addr v2, v3

    if-nez p6, :cond_2e

    .line 1224
    iget-boolean v4, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mIsHios:Z

    if-eqz v4, :cond_5f

    :cond_2e
    if-eqz p6, :cond_3c

    .line 1226
    iget-object p2, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mMenuPaint:Landroid/graphics/Paint;

    check-cast p6, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p6}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_4f

    :cond_3c
    add-int/lit8 p2, p2, -0x1

    if-ne p3, p2, :cond_48

    .line 1229
    iget-object p2, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mMenuPaint:Landroid/graphics/Paint;

    iget p3, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mCircleDeleteDefBgColor:I

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_4f

    .line 1231
    :cond_48
    iget-object p2, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mMenuPaint:Landroid/graphics/Paint;

    iget p3, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mCircleDefBgColor:I

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 1234
    :goto_4f
    iget-object p2, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mSwipeMenu:Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;

    invoke-virtual {p2}, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;->getHiosCircleRadius()I

    move-result p2

    div-float/2addr v1, v3

    add-float/2addr v1, p4

    div-float/2addr v0, v3

    add-float/2addr v0, v2

    int-to-float p2, p2

    .line 1235
    iget-object p3, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mMenuPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0, p2, p3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 1237
    :cond_5f
    invoke-virtual {p5}, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;->getImage()Landroid/graphics/Bitmap;

    move-result-object p2

    iget-object p0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mMenuImagePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p4, v2, p0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method private drawRightImgAni(Landroid/graphics/Canvas;IIFLcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;Landroid/graphics/drawable/Drawable;F)V
    .registers 24

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    .line 1281
    invoke-virtual/range {p5 .. p5}, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;->getImage()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    .line 1282
    invoke-virtual/range {p5 .. p5}, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;->getImage()Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    add-int/lit8 v5, p2, -0x1

    const/high16 v6, 0x40000000    # 2.0f

    if-ne v2, v5, :cond_37

    .line 1286
    invoke-virtual {v0}, Landroid/view/View;->getScrollX()I

    move-result v7

    int-to-float v7, v7

    move/from16 v8, p7

    neg-float v8, v8

    int-to-float v9, v5

    mul-float/2addr v8, v9

    invoke-virtual {v0}, Landroid/view/View;->getScrollX()I

    move-result v9

    int-to-float v9, v9

    sub-float/2addr v8, v9

    sub-float/2addr v8, v4

    div-float/2addr v8, v6

    add-float/2addr v7, v8

    .line 1287
    iget v8, v0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mHeight:I

    :goto_33
    int-to-float v8, v8

    sub-float/2addr v8, v3

    div-float/2addr v8, v6

    goto :goto_4a

    .line 1289
    :cond_37
    invoke-virtual/range {p5 .. p5}, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;->getWidth()I

    move-result v7

    int-to-float v7, v7

    add-float v7, p4, v7

    neg-float v7, v7

    invoke-virtual/range {p5 .. p5}, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;->getWidth()I

    move-result v8

    int-to-float v8, v8

    sub-float/2addr v8, v4

    div-float/2addr v8, v6

    add-float/2addr v7, v8

    .line 1290
    iget v8, v0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mHeight:I

    goto :goto_33

    :goto_4a
    const/high16 v9, 0x3f800000    # 1.0f

    const-wide/high16 v10, 0x3fe0000000000000L    # 0.5

    if-nez p6, :cond_54

    .line 1292
    iget-boolean v12, v0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mIsHios:Z

    if-eqz v12, :cond_bc

    .line 1293
    :cond_54
    iget-object v12, v0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mSwipeMenu:Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;

    invoke-virtual {v12}, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;->getHiosCircleRadius()I

    move-result v12

    int-to-float v12, v12

    if-eqz p6, :cond_74

    .line 1295
    iget-object v13, v0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mMenuPaint:Landroid/graphics/Paint;

    move-object/from16 v14, p6

    check-cast v14, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v14}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result v15

    invoke-virtual {v13, v15}, Landroid/graphics/Paint;->setColor(I)V

    .line 1296
    iget-object v13, v0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mMenuDelPaint:Landroid/graphics/Paint;

    invoke-virtual {v14}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result v14

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_82

    .line 1298
    :cond_74
    iget-object v13, v0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mMenuDelPaint:Landroid/graphics/Paint;

    iget v14, v0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mCircleDeleteDefBgColor:I

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setColor(I)V

    .line 1299
    iget-object v13, v0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mMenuPaint:Landroid/graphics/Paint;

    iget v14, v0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mCircleDefBgColor:I

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setColor(I)V

    .line 1301
    :goto_82
    iget-boolean v13, v0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mIsHios:Z

    if-eqz v13, :cond_94

    .line 1302
    iget-object v13, v0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mMenuPaint:Landroid/graphics/Paint;

    iget v14, v0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mAnimateAlpha:I

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1303
    iget-object v13, v0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mMenuDelPaint:Landroid/graphics/Paint;

    iget v14, v0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mAnimateDelAlpha:I

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setAlpha(I)V

    :cond_94
    if-ne v2, v5, :cond_ac

    .line 1306
    iget-boolean v13, v0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mIsHios:Z

    if-eqz v13, :cond_a2

    float-to-double v12, v12

    .line 1307
    iget v14, v0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mAnimateRatio:F

    add-float/2addr v14, v9

    float-to-double v14, v14

    mul-double/2addr v14, v10

    mul-double/2addr v12, v14

    double-to-float v12, v12

    :cond_a2
    div-float/2addr v4, v6

    add-float/2addr v4, v7

    div-float/2addr v3, v6

    add-float/2addr v3, v8

    .line 1309
    iget-object v13, v0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mMenuDelPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v4, v3, v12, v13}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_bc

    :cond_ac
    div-float/2addr v4, v6

    add-float/2addr v4, v7

    div-float/2addr v3, v6

    add-float/2addr v3, v8

    .line 1311
    iget-object v12, v0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mSwipeMenu:Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;

    invoke-virtual {v12}, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;->getHiosCircleRadius()I

    move-result v12

    int-to-float v12, v12

    iget-object v13, v0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mMenuPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v4, v3, v12, v13}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 1317
    :cond_bc
    :goto_bc
    invoke-virtual/range {p5 .. p5}, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;->getImage()Landroid/graphics/Bitmap;

    move-result-object v3

    .line 1318
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    .line 1319
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    if-ne v2, v5, :cond_104

    .line 1321
    iget-object v2, v0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mBitmapRectFSrc:Landroid/graphics/Rect;

    float-to-int v5, v7

    float-to-int v12, v8

    add-int v13, v5, v4

    add-int v14, v12, v3

    invoke-virtual {v2, v5, v12, v13, v14}, Landroid/graphics/Rect;->set(IIII)V

    int-to-double v12, v4

    .line 1322
    iget v2, v0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mAnimateRatio:F

    add-float v5, v2, v9

    float-to-double v14, v5

    mul-double/2addr v14, v10

    mul-double/2addr v12, v14

    double-to-float v5, v12

    int-to-double v12, v3

    add-float/2addr v2, v9

    float-to-double v14, v2

    mul-double/2addr v14, v10

    mul-double/2addr v12, v14

    double-to-float v2, v12

    int-to-float v4, v4

    sub-float/2addr v4, v5

    div-float/2addr v4, v6

    int-to-float v3, v3

    sub-float/2addr v3, v2

    div-float/2addr v3, v6

    .line 1326
    iget-object v6, v0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mBitmapRectFDest:Landroid/graphics/Rect;

    add-float/2addr v7, v4

    float-to-int v4, v7

    add-float/2addr v8, v3

    float-to-int v3, v8

    add-float/2addr v7, v5

    float-to-int v5, v7

    add-float/2addr v8, v2

    float-to-int v2, v8

    invoke-virtual {v6, v4, v3, v5, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 1327
    invoke-virtual/range {p5 .. p5}, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;->getImage()Landroid/graphics/Bitmap;

    move-result-object v2

    iget-object v3, v0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mBitmapRectFDest:Landroid/graphics/Rect;

    iget-object v0, v0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mMenuImageDelPaint:Landroid/graphics/Paint;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v3, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-void

    .line 1329
    :cond_104
    invoke-virtual/range {p5 .. p5}, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;->getImage()Landroid/graphics/Bitmap;

    move-result-object v2

    iget-object v0, v0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mMenuImagePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v7, v8, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method private drawRightImgHios(Landroid/graphics/Canvas;IIFLcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;Landroid/graphics/drawable/Drawable;F)V
    .registers 24

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    .line 1241
    invoke-virtual/range {p5 .. p5}, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;->getImage()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    .line 1242
    invoke-virtual/range {p5 .. p5}, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;->getImage()Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    sub-float v5, p7, v4

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    add-float v5, p4, v5

    .line 1245
    iget-object v7, v0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mMenuImagePaint:Landroid/graphics/Paint;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 1246
    iget v7, v0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mFinalHeight:I

    int-to-float v7, v7

    sub-float/2addr v7, v3

    div-float/2addr v7, v6

    if-eqz p6, :cond_3a

    .line 1249
    iget-object v2, v0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mMenuPaint:Landroid/graphics/Paint;

    move-object/from16 v9, p6

    check-cast v9, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v9}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result v9

    invoke-virtual {v2, v9}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_60

    :cond_3a
    add-int/lit8 v9, p2, -0x1

    if-ne v2, v9, :cond_46

    .line 1252
    iget-object v2, v0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mMenuPaint:Landroid/graphics/Paint;

    iget v9, v0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mCircleDeleteDefBgColor:I

    invoke-virtual {v2, v9}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_60

    :cond_46
    add-int/lit8 v9, p2, -0x2

    if-ne v2, v9, :cond_59

    .line 1254
    iget-object v2, v0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mMenuImagePaint:Landroid/graphics/Paint;

    iget-object v9, v0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mColorFilter:Landroid/graphics/ColorMatrixColorFilter;

    invoke-virtual {v2, v9}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 1255
    iget-object v2, v0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mMenuPaint:Landroid/graphics/Paint;

    iget v9, v0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mCircleDefMiddleBgColor:I

    invoke-virtual {v2, v9}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_60

    .line 1257
    :cond_59
    iget-object v2, v0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mMenuPaint:Landroid/graphics/Paint;

    iget v9, v0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mCircleDefBgColor:I

    invoke-virtual {v2, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 1261
    :goto_60
    iget-object v2, v0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mMenuPaint:Landroid/graphics/Paint;

    iget v9, v0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mAnimateAlpha:I

    invoke-virtual {v2, v9}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1262
    iget-object v2, v0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mMenuDelPaint:Landroid/graphics/Paint;

    iget v9, v0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mAnimateDelAlpha:I

    invoke-virtual {v2, v9}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1263
    iget-object v2, v0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mSwipeMenu:Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;

    invoke-virtual {v2}, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;->getHiosCircleRadius()I

    move-result v2

    int-to-double v9, v2

    .line 1264
    iget v2, v0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mAnimateRatio:F

    const/high16 v11, 0x3f800000    # 1.0f

    add-float/2addr v2, v11

    float-to-double v12, v2

    const-wide/high16 v14, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v12, v14

    mul-double/2addr v9, v12

    double-to-int v2, v9

    div-float/2addr v4, v6

    add-float/2addr v4, v5

    div-float/2addr v3, v6

    add-float/2addr v3, v7

    int-to-float v2, v2

    .line 1265
    iget-object v9, v0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mMenuPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v4, v3, v2, v9}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 1268
    invoke-virtual/range {p5 .. p5}, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;->getImage()Landroid/graphics/Bitmap;

    move-result-object v2

    .line 1269
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 1270
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .line 1271
    iget-object v4, v0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mBitmapRectFSrc:Landroid/graphics/Rect;

    float-to-int v9, v5

    float-to-int v10, v7

    add-int v12, v9, v3

    add-int v13, v10, v2

    invoke-virtual {v4, v9, v10, v12, v13}, Landroid/graphics/Rect;->set(IIII)V

    int-to-double v9, v3

    .line 1272
    iget v4, v0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mAnimateRatio:F

    add-float v12, v4, v11

    float-to-double v12, v12

    mul-double/2addr v12, v14

    mul-double/2addr v9, v12

    double-to-float v9, v9

    int-to-double v12, v2

    add-float/2addr v4, v11

    float-to-double v10, v4

    mul-double/2addr v10, v14

    mul-double/2addr v12, v10

    double-to-float v4, v12

    int-to-float v3, v3

    sub-float/2addr v3, v9

    div-float/2addr v3, v6

    int-to-float v2, v2

    sub-float/2addr v2, v4

    div-float/2addr v2, v6

    .line 1276
    iget-object v6, v0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mBitmapRectFDest:Landroid/graphics/Rect;

    add-float/2addr v5, v3

    float-to-int v3, v5

    add-float/2addr v7, v2

    float-to-int v2, v7

    add-float/2addr v5, v9

    float-to-int v5, v5

    add-float/2addr v7, v4

    float-to-int v4, v7

    invoke-virtual {v6, v3, v2, v5, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 1277
    invoke-virtual/range {p5 .. p5}, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;->getImage()Landroid/graphics/Bitmap;

    move-result-object v2

    iget-object v3, v0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mBitmapRectFDest:Landroid/graphics/Rect;

    iget-object v0, v0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mMenuImagePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v8, v3, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-void
.end method

.method private drawRightText(Landroid/graphics/Canvas;FLcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;)V
    .registers 8

    .line 1209
    iget-object v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mMenuPaint:Landroid/graphics/Paint;

    invoke-virtual {p3}, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;->getTextSize()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1210
    iget-object v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mMenuPaint:Landroid/graphics/Paint;

    invoke-virtual {p3}, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;->getTitleColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1211
    iget-object v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mMenuPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v0

    .line 1212
    iget-object v1, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mMenuPaint:Landroid/graphics/Paint;

    invoke-virtual {p3}, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    .line 1213
    iget v2, v0, Landroid/graphics/Paint$FontMetrics;->bottom:F

    iget v0, v0, Landroid/graphics/Paint$FontMetrics;->top:F

    sub-float v0, v2, v0

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v0, v3

    sub-float/2addr v0, v2

    .line 1214
    iget v2, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mHeight:I

    int-to-float v2, v2

    div-float/2addr v2, v3

    add-float/2addr v2, v0

    .line 1215
    invoke-virtual {p3}, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;->getWidth()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr p2, v0

    neg-float p2, p2

    invoke-virtual {p3}, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;->getWidth()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr v0, v1

    div-float/2addr v0, v3

    add-float/2addr p2, v0

    .line 1216
    invoke-virtual {p3}, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;->getText()Ljava/lang/String;

    move-result-object p3

    iget-object p0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mMenuPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p3, p2, v2, p0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method private drawRightTextAni(Landroid/graphics/Canvas;IIFIFLcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;)V
    .registers 12

    .line 1174
    iget-object v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mMenuPaint:Landroid/graphics/Paint;

    invoke-virtual {p7}, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;->getTextSize()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1175
    iget-object v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mMenuPaint:Landroid/graphics/Paint;

    invoke-virtual {p7}, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;->getTitleColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1176
    iget-object v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mMenuPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v0

    .line 1177
    iget-object v1, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mMenuPaint:Landroid/graphics/Paint;

    invoke-virtual {p7}, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    .line 1178
    iget v2, v0, Landroid/graphics/Paint$FontMetrics;->bottom:F

    iget v0, v0, Landroid/graphics/Paint$FontMetrics;->top:F

    sub-float v0, v2, v0

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v0, v3

    sub-float/2addr v0, v2

    .line 1179
    iget v2, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mHeight:I

    int-to-float v2, v2

    div-float/2addr v2, v3

    add-float/2addr v2, v0

    add-int/lit8 p3, p3, -0x1

    if-ne p5, p3, :cond_48

    int-to-float p2, p2

    neg-float p4, p4

    int-to-float p3, p3

    mul-float/2addr p4, p3

    sub-float/2addr p4, p2

    sub-float/2addr p4, v1

    div-float/2addr p4, v3

    add-float/2addr p2, p4

    .line 1182
    invoke-virtual {p7}, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;->getText()Ljava/lang/String;

    move-result-object p3

    iget-object p0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mMenuPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p3, p2, v2, p0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void

    .line 1184
    :cond_48
    invoke-virtual {p7}, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;->getWidth()I

    move-result p2

    int-to-float p2, p2

    add-float/2addr p6, p2

    neg-float p2, p6

    invoke-virtual {p7}, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;->getWidth()I

    move-result p3

    int-to-float p3, p3

    sub-float/2addr p3, v1

    div-float/2addr p3, v3

    add-float/2addr p2, p3

    .line 1185
    invoke-virtual {p7}, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;->getText()Ljava/lang/String;

    move-result-object p3

    iget-object p0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mMenuPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p3, p2, v2, p0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method private enableAccessibilityDelegate()V
    .registers 2

    .line 831
    iget-object v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mExploreByTouchHelper:Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuExploreByTouchHelper;

    invoke-static {p0, v0}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    .line 832
    iget-object p0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mExploreByTouchHelper:Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuExploreByTouchHelper;

    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuExploreByTouchHelper;->addAccessAbilityInfo()V

    return-void
.end method

.method private getSwipeDuration(Landroid/view/MotionEvent;I)I
    .registers 7

    .line 906
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v0

    .line 907
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    int-to-float v0, v0

    sub-float/2addr p1, v0

    float-to-int p1, p1

    .line 908
    iget-boolean v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->isFlashCallType:Z

    if-eqz v0, :cond_14

    iget v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->screenWidth:I

    mul-int/lit8 v0, v0, 0x2

    goto :goto_1a

    :cond_14
    iget-object v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mSwipeCurrentHorizontal:Lcom/transsion/widgetslib/view/swipmenu/Horizontal;

    invoke-virtual {v0}, Lcom/transsion/widgetslib/view/swipmenu/Horizontal;->getMenuWidth()I

    move-result v0

    .line 909
    :goto_1a
    div-int/lit8 v1, v0, 0x2

    .line 910
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x3f800000    # 1.0f

    mul-float/2addr v2, v3

    int-to-float v0, v0

    div-float/2addr v2, v0

    invoke-static {v3, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    int-to-float v1, v1

    .line 911
    invoke-virtual {p0, v2}, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->distanceInfluenceForSnapDuration(F)F

    move-result v2

    mul-float/2addr v2, v1

    add-float/2addr v1, v2

    if-lez p2, :cond_43

    int-to-float p1, p2

    div-float/2addr v1, p1

    .line 914
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const/high16 p2, 0x447a0000    # 1000.0f

    mul-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    mul-int/lit8 p1, p1, 0x4

    goto :goto_4e

    .line 916
    :cond_43
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p1, v0

    add-float/2addr p1, v3

    const/high16 p2, 0x42c80000    # 100.0f

    mul-float/2addr p1, p2

    float-to-int p1, p1

    .line 919
    :goto_4e
    iget-boolean p0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->isFlashCallType:Z

    if-eqz p0, :cond_55

    const/16 p0, 0x2bc

    goto :goto_57

    :cond_55
    const/16 p0, 0x15e

    :goto_57
    invoke-static {p1, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0
.end method

.method public static getViewCache()Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;
    .registers 1

    .line 155
    sget-object v0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mViewCache:Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;

    return-object v0
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 10

    .line 170
    iput-object p1, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mContext:Landroid/content/Context;

    .line 171
    invoke-static {p1}, Lcom/transsion/widgetslib/util/Utils;->getScreenWidth(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->screenWidth:I

    .line 172
    iget-object v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mMenuItemTextFixedWidth:I

    invoke-static {v0, v1}, Lcom/transsion/widgetslib/util/Utils;->dp2px(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mMenuItemTextFixedWidth:I

    .line 173
    iget-object v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mMenuItemIconFixedWidth:I

    invoke-static {v0, v1}, Lcom/transsion/widgetslib/util/Utils;->dp2px(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mMenuItemIconFixedWidth:I

    .line 174
    iget-object v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mScaleTouchSlop:I

    .line 175
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x43fa0000    # 500.0f

    mul-float/2addr v1, v0

    float-to-int v1, v1

    .line 176
    iput v1, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mFlingThresholdVelocity:I

    const/high16 v1, 0x437a0000    # 250.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 177
    iput v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mMinFlingVelocity:I

    const/4 v0, 0x1

    .line 178
    iput-boolean v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->isSwipeEnable:Z

    .line 179
    iput-boolean v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->isRtlSwipe:Z

    .line 180
    invoke-static {}, Lcom/transsion/widgetslib/util/Utils;->getOsType()Ljava/lang/String;

    move-result-object v1

    .line 181
    sget-object v2, Lcom/transsion/widgetslib/util/Utils;->mOsType:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mIsHios:Z

    const/16 v1, 0x8

    .line 182
    invoke-static {p1, v1}, Lcom/transsion/widgetslib/util/Utils;->dp2px(Landroid/content/Context;I)I

    move-result v2

    iput v2, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mCurrentOutlineCorner:I

    .line 183
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    sget-object v4, Lcom/transsion/widgetslib/R$styleable;->SwipeMenuLayout:[I

    invoke-virtual {v2, p2, v4, p3, v3}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 184
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result p3

    move v2, v3

    :goto_69
    if-ge v2, p3, :cond_ac

    .line 186
    invoke-virtual {p2, v2}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v4

    .line 187
    sget v5, Lcom/transsion/widgetslib/R$styleable;->SwipeMenuLayout_SwipeMenuLayoutSwipeEnable:I

    if-ne v4, v5, :cond_7a

    .line 188
    invoke-virtual {p2, v4, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->isSwipeEnable:Z

    goto :goto_a9

    .line 189
    :cond_7a
    sget v5, Lcom/transsion/widgetslib/R$styleable;->SwipeMenuLayout_SwipeMenuLayoutLeftSwipe:I

    if-ne v4, v5, :cond_85

    .line 190
    invoke-virtual {p2, v4, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->isRtlSwipe:Z

    goto :goto_a9

    .line 191
    :cond_85
    sget v5, Lcom/transsion/widgetslib/R$styleable;->SwipeMenuLayout_SwipeMenuLayoutIsHios:I

    if-ne v4, v5, :cond_92

    .line 192
    iget-boolean v5, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mIsHios:Z

    invoke-virtual {p2, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mIsHios:Z

    goto :goto_a9

    .line 193
    :cond_92
    sget v5, Lcom/transsion/widgetslib/R$styleable;->SwipeMenuLayout_SwipeMenuLayoutAutoClipCorner:I

    if-ne v4, v5, :cond_9d

    .line 194
    invoke-virtual {p2, v4, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mAutoClipCorner:Z

    goto :goto_a9

    .line 195
    :cond_9d
    sget v5, Lcom/transsion/widgetslib/R$styleable;->SwipeMenuLayout_SwipeMenuLayoutCornerSize:I

    if-ne v4, v5, :cond_a9

    .line 196
    iget v5, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mCurrentOutlineCorner:I

    invoke-virtual {p2, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mCurrentOutlineCorner:I

    :cond_a9
    :goto_a9
    add-int/lit8 v2, v2, 0x1

    goto :goto_69

    .line 199
    :cond_ac
    invoke-static {}, Lcom/transsion/widgetslib/util/Utils;->isRtl()Z

    move-result p3

    xor-int/2addr p3, v0

    iput-boolean p3, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->isRtlSwipe:Z

    .line 200
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 201
    new-instance p2, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;

    iget-object p3, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mContext:Landroid/content/Context;

    iget-boolean v2, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mIsHios:Z

    invoke-direct {p2, p3, v2}, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;-><init>(Landroid/content/Context;Z)V

    iput-object p2, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mSwipeMenu:Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;

    .line 202
    invoke-direct {p0}, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->resetCurrentSwipeController()V

    .line 203
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p2

    .line 204
    invoke-virtual {p2}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result p2

    iput p2, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mScaledMaximumFlingVelocity:I

    .line 205
    new-instance p2, Lcom/transsion/widgetslib/view/swipmenu/OverScroller;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-direct {p2, p3}, Lcom/transsion/widgetslib/view/swipmenu/OverScroller;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mScroller:Lcom/transsion/widgetslib/view/swipmenu/OverScroller;

    .line 206
    invoke-virtual {p0, v3}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 207
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mMenuPaint:Landroid/graphics/Paint;

    .line 208
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mMenuDelPaint:Landroid/graphics/Paint;

    .line 209
    iget-object p2, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mMenuPaint:Landroid/graphics/Paint;

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 210
    iget-object p2, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mMenuDelPaint:Landroid/graphics/Paint;

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 211
    iget-object p2, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mMenuPaint:Landroid/graphics/Paint;

    const/high16 p3, -0x10000

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 212
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mMenuImagePaint:Landroid/graphics/Paint;

    .line 213
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mMenuImageDelPaint:Landroid/graphics/Paint;

    .line 215
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p2

    .line 216
    iget p2, p2, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 p2, p2, 0x30

    .line 217
    sget p3, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->CURRENT_UI_MODE:I

    if-eq p3, p2, :cond_126

    .line 218
    sput p2, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->CURRENT_UI_MODE:I

    .line 219
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;->resetCacheIcon(Landroid/content/Context;)V

    .line 222
    :cond_126
    sget p2, Lcom/transsion/widgetslib/R$attr;->os_platform_basic_color:I

    filled-new-array {p2}, [I

    move-result-object p2

    .line 223
    invoke-virtual {p1, p2}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 224
    sget p3, Lcom/transsion/widgetslib/R$color;->os_platform_basic_color_hios:I

    invoke-virtual {p1, p3}, Landroid/content/Context;->getColor(I)I

    move-result p3

    invoke-virtual {p2, v3, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    iput p3, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mCircleDefMiddleBgColor:I

    .line 225
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 226
    iget-object p2, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mContext:Landroid/content/Context;

    sget p3, Lcom/transsion/widgetslib/R$color;->os_altitude_secondary_color:I

    invoke-static {p2, p3}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p2

    iput p2, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mCircleDefBgColor:I

    .line 227
    iget-object p2, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mContext:Landroid/content/Context;

    sget p3, Lcom/transsion/widgetslib/R$color;->os_red_basic_color:I

    invoke-static {p2, p3}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p2

    iput p2, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mCircleDeleteDefBgColor:I

    .line 228
    iget-object p2, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mContext:Landroid/content/Context;

    sget p3, Lcom/transsion/widgetslib/R$color;->os_red_basic_color:I

    invoke-static {p2, p3}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p2

    iput p2, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mDeleteMenuDefBgColor:I

    .line 229
    iget-object p2, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mContext:Landroid/content/Context;

    sget p3, Lcom/transsion/widgetslib/R$color;->os_gray_solid_tertiary_color:I

    invoke-static {p2, p3}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p2

    iput p2, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mNormalMenuDefBgColor:I

    .line 230
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mBitmapRectFSrc:Landroid/graphics/Rect;

    .line 231
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mBitmapRectFDest:Landroid/graphics/Rect;

    .line 233
    iget-boolean p2, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mIsHios:Z

    if-eqz p2, :cond_1d3

    .line 234
    sget p2, Lcom/transsion/widgetslib/R$color;->os_fill_icon_toggle_color:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getColor(I)I

    move-result p1

    .line 238
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result p1

    int-to-float p1, p1

    const/high16 p2, 0x437f0000    # 255.0f

    div-float p1, p2, p1

    const/16 p3, 0x14

    new-array p3, p3, [F

    const/4 v2, 0x0

    aput v2, p3, v3

    aput v2, p3, v0

    const/4 v0, 0x2

    aput v2, p3, v0

    const/4 v0, 0x3

    aput v2, p3, v0

    const/4 v0, 0x4

    aput p2, p3, v0

    const/4 v0, 0x5

    aput v2, p3, v0

    const/4 v0, 0x6

    aput v2, p3, v0

    const/4 v0, 0x7

    aput v2, p3, v0

    aput v2, p3, v1

    const/16 v0, 0x9

    aput p2, p3, v0

    const/16 v0, 0xa

    aput v2, p3, v0

    const/16 v0, 0xb

    aput v2, p3, v0

    const/16 v0, 0xc

    aput v2, p3, v0

    const/16 v0, 0xd

    aput v2, p3, v0

    const/16 v0, 0xe

    aput p2, p3, v0

    const/16 p2, 0xf

    aput v2, p3, p2

    const/16 p2, 0x10

    aput v2, p3, p2

    const/16 p2, 0x11

    aput v2, p3, p2

    const/16 p2, 0x12

    aput p1, p3, p2

    const/16 p1, 0x13

    aput v2, p3, p1

    iput-object p3, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mColorMatrixArray:[F

    .line 241
    :cond_1d3
    new-instance p1, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuExploreByTouchHelper;

    invoke-direct {p1, p0}, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuExploreByTouchHelper;-><init>(Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;)V

    iput-object p1, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mExploreByTouchHelper:Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuExploreByTouchHelper;

    return-void
.end method

.method private invalidateScroller()V
    .registers 3

    .line 1001
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v0

    .line 1002
    iget-object v1, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mScroller:Lcom/transsion/widgetslib/view/swipmenu/OverScroller;

    invoke-virtual {v1}, Lcom/transsion/widgetslib/view/swipmenu/OverScroller;->getCurrPos()I

    move-result v1

    sub-int/2addr v1, v0

    iput v1, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->deltaX:I

    .line 1003
    iget-object v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mScroller:Lcom/transsion/widgetslib/view/swipmenu/OverScroller;

    invoke-virtual {v0}, Lcom/transsion/widgetslib/view/swipmenu/OverScroller;->getCurrPos()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->scrollTo(II)V

    .line 1004
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private static isFingerEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    const/4 v0, 0x0

    .line 655
    invoke-virtual {p0, v0}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result p0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_9

    return v1

    :cond_9
    return v0
.end method

.method public static release()V
    .registers 1

    .line 1684
    invoke-static {}, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;->release()V

    .line 1685
    sget-object v0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mViewCache:Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    .line 1686
    sput-object v0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mViewCache:Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;

    :cond_a
    return-void
.end method

.method private releaseVelocityTracker()V
    .registers 2

    .line 1578
    iget-object v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_f

    .line 1579
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    .line 1580
    iget-object v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v0, 0x0

    .line 1581
    iput-object v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_f
    return-void
.end method

.method private removeOrRestoreItem(II)V
    .registers 9

    .line 848
    iget-boolean v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->isRtlSwipe:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_e

    const/16 v0, 0xa

    if-lt p2, v0, :cond_c

    :goto_a
    move v0, v2

    goto :goto_13

    :cond_c
    move v0, v1

    goto :goto_13

    :cond_e
    const/16 v0, -0xa

    if-gt p2, v0, :cond_c

    goto :goto_a

    .line 849
    :goto_13
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/transsion/widgetslib/R$dimen;->os_flash_call_distance_limit:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    if-le v3, v4, :cond_28

    move v1, v2

    .line 850
    :cond_28
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "velocityX:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " ;getScrollX:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " duration:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "removeOrRestoreItem"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_5a

    if-eqz v0, :cond_5a

    .line 852
    invoke-virtual {p0, p1, p2}, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->smoothRemoveItem(II)V

    return-void

    .line 863
    :cond_5a
    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->smoothRestoreItem(I)V

    return-void
.end method

.method private resetCurrentSwipeController()V
    .registers 4

    .line 292
    iget-boolean v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->isRtlSwipe:Z

    const-string v1, "OSSwipeMenuLayout"

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mSwipeLeftHorizontal:Lcom/transsion/widgetslib/view/swipmenu/LeftHorizontal;

    if-nez v0, :cond_21

    .line 293
    new-instance v0, Lcom/transsion/widgetslib/view/swipmenu/LeftHorizontal;

    iget-object v2, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mSwipeMenu:Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;

    invoke-direct {v0, v2}, Lcom/transsion/widgetslib/view/swipmenu/LeftHorizontal;-><init>(Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;)V

    iput-object v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mSwipeLeftHorizontal:Lcom/transsion/widgetslib/view/swipmenu/LeftHorizontal;

    .line 294
    iget v2, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->screenWidth:I

    invoke-virtual {v0, v2}, Lcom/transsion/widgetslib/view/swipmenu/Horizontal;->setScreenWidth(I)V

    .line 295
    iget-object v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mSwipeLeftHorizontal:Lcom/transsion/widgetslib/view/swipmenu/LeftHorizontal;

    iput-object v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mSwipeCurrentHorizontal:Lcom/transsion/widgetslib/view/swipmenu/Horizontal;

    .line 296
    const-string v0, "resetCurrentSwipeController: mSwipeLeftHorizontal"

    invoke-static {v1, v0}, Lcom/transsion/widgetscore/utils/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    :cond_21
    iget-boolean v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->isRtlSwipe:Z

    if-nez v0, :cond_40

    iget-object v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mSwipeRightHorizontal:Lcom/transsion/widgetslib/view/swipmenu/RightHorizontal;

    if-nez v0, :cond_40

    .line 299
    new-instance v0, Lcom/transsion/widgetslib/view/swipmenu/RightHorizontal;

    iget-object v2, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mSwipeMenu:Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;

    invoke-direct {v0, v2}, Lcom/transsion/widgetslib/view/swipmenu/RightHorizontal;-><init>(Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;)V

    iput-object v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mSwipeRightHorizontal:Lcom/transsion/widgetslib/view/swipmenu/RightHorizontal;

    .line 300
    iget v2, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->screenWidth:I

    invoke-virtual {v0, v2}, Lcom/transsion/widgetslib/view/swipmenu/Horizontal;->setScreenWidth(I)V

    .line 301
    iget-object v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mSwipeRightHorizontal:Lcom/transsion/widgetslib/view/swipmenu/RightHorizontal;

    iput-object v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mSwipeCurrentHorizontal:Lcom/transsion/widgetslib/view/swipmenu/Horizontal;

    .line 302
    const-string p0, "resetCurrentSwipeController: mSwipeRightHorizontal"

    invoke-static {v1, p0}, Lcom/transsion/widgetscore/utils/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    :cond_40
    return-void
.end method

.method private resetOverScrollParams()V
    .registers 2

    const/4 v0, 0x0

    .line 901
    iput v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->overScrollAmount:I

    .line 902
    iput-boolean v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->cacheClose:Z

    return-void
.end method

.method private smoothOpenMenu(I)V
    .registers 5

    .line 386
    sput-object p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mViewCache:Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;

    .line 387
    iget-object v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mContentView:Landroid/view/View;

    if-eqz v0, :cond_a

    const/4 v1, 0x0

    .line 388
    invoke-virtual {v0, v1}, Landroid/view/View;->setLongClickable(Z)V

    .line 390
    :cond_a
    iget-object v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mSwipeCurrentHorizontal:Lcom/transsion/widgetslib/view/swipmenu/Horizontal;

    if-eqz v0, :cond_1a

    .line 391
    iget-object v1, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mScroller:Lcom/transsion/widgetslib/view/swipmenu/OverScroller;

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v2

    invoke-virtual {v0, v1, v2, p1}, Lcom/transsion/widgetslib/view/swipmenu/Horizontal;->autoOpenMenu(Lcom/transsion/widgetslib/view/swipmenu/OverScroller;II)V

    .line 392
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 394
    :cond_1a
    invoke-direct {p0}, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->enableAccessibilityDelegate()V

    return-void
.end method

.method private smoothOpenMenuFling(I)V
    .registers 11

    .line 412
    sput-object p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mViewCache:Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;

    .line 413
    iget-object v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mContentView:Landroid/view/View;

    if-eqz v0, :cond_a

    const/4 v1, 0x0

    .line 414
    invoke-virtual {v0, v1}, Landroid/view/View;->setLongClickable(Z)V

    .line 416
    :cond_a
    iget-object v2, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mSwipeCurrentHorizontal:Lcom/transsion/widgetslib/view/swipmenu/Horizontal;

    if-eqz v2, :cond_51

    .line 417
    iget-object v3, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mScroller:Lcom/transsion/widgetslib/view/swipmenu/OverScroller;

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v4

    neg-int v5, p1

    iget v6, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mMinScroll:I

    iget v7, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mMaxScroll:I

    .line 419
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p1

    int-to-float p1, p1

    const/high16 v0, 0x3f000000    # 0.5f

    mul-float/2addr p1, v0

    const v0, 0x3e99999a    # 0.3f

    mul-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result v8

    .line 417
    invoke-virtual/range {v2 .. v8}, Lcom/transsion/widgetslib/view/swipmenu/Horizontal;->autoOpenMenuFling(Lcom/transsion/widgetslib/view/swipmenu/OverScroller;IIIII)V

    .line 420
    iget-boolean p1, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->isRtlSwipe:Z

    if-eqz p1, :cond_3b

    iget-object p1, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mScroller:Lcom/transsion/widgetslib/view/swipmenu/OverScroller;

    invoke-virtual {p1}, Lcom/transsion/widgetslib/view/swipmenu/OverScroller;->getFinalPos()I

    move-result p1

    iget v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mMaxScroll:I

    if-ge p1, v0, :cond_4b

    goto :goto_45

    :cond_3b
    iget-object p1, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mScroller:Lcom/transsion/widgetslib/view/swipmenu/OverScroller;

    invoke-virtual {p1}, Lcom/transsion/widgetslib/view/swipmenu/OverScroller;->getFinalPos()I

    move-result p1

    iget v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mMinScroll:I

    if-le p1, v0, :cond_4b

    .line 421
    :goto_45
    invoke-direct {p0}, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->softAbortScrollerAnimation()V

    .line 422
    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->smoothOpenMenu()V

    .line 425
    :cond_4b
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 426
    invoke-direct {p0}, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->enableAccessibilityDelegate()V

    :cond_51
    return-void
.end method

.method private softAbortScrollerAnimation()V
    .registers 1

    .line 893
    iget-object p0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mScroller:Lcom/transsion/widgetslib/view/swipmenu/OverScroller;

    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/swipmenu/OverScroller;->softAbortAnimation()V

    return-void
.end method

.method private unableAccessibility()V
    .registers 2

    .line 482
    iget-object v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mExploreByTouchHelper:Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuExploreByTouchHelper;

    invoke-virtual {v0}, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuExploreByTouchHelper;->removeAccessAbilityInfo()V

    const/4 v0, 0x0

    .line 483
    invoke-static {p0, v0}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    return-void
.end method


# virtual methods
.method protected computeMaxScroll()I
    .registers 2

    .line 1562
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lez v0, :cond_9

    .line 1564
    iget p0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mMenuContentWidth:I

    return p0

    :cond_9
    const/4 p0, 0x0

    return p0
.end method

.method protected computeMinScroll()I
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public computeScroll()V
    .registers 2

    .line 995
    iget-object v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mScroller:Lcom/transsion/widgetslib/view/swipmenu/OverScroller;

    invoke-virtual {v0}, Lcom/transsion/widgetslib/view/swipmenu/OverScroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 996
    invoke-direct {p0}, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->invalidateScroller()V

    :cond_b
    return-void
.end method

.method protected dampedOverScroll(I)V
    .registers 4

    int-to-float p1, p1

    .line 1536
    iget v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->deltaX:I

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-static {p1, v0, v1}, Lcom/transsion/widgetslib/view/swipmenu/OverScroll;->dampedScroll(FFI)F

    move-result p1

    iget v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->deltaX:I

    int-to-float v0, v0

    mul-float/2addr p1, v0

    .line 1537
    iget v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->overScrollAmount:I

    int-to-float v0, v0

    add-float/2addr v0, p1

    float-to-int p1, v0

    iput p1, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->overScrollAmount:I

    .line 1538
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result p1

    .line 1539
    iget v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mMinScroll:I

    iget v1, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mMaxScroll:I

    invoke-static {p1, v0, v1}, Lcom/transsion/widgetslib/view/swipmenu/Utilities;->boundToRange(III)I

    move-result p1

    .line 1540
    iget v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->overScrollAmount:I

    add-int/2addr p1, v0

    const/4 v0, 0x0

    invoke-super {p0, p1, v0}, Landroid/view/View;->scrollTo(II)V

    return-void
.end method

.method public decorateContentRoundCorner(I)V
    .registers 4

    .line 277
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "decorateContentRoundCorner size = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/widgetscore/utils/LogUtil;->d(Ljava/lang/String;)V

    .line 278
    new-instance v0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout$2;

    invoke-direct {v0, p0, p1}, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout$2;-><init>(Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;I)V

    .line 284
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    if-lez p1, :cond_2b

    const/4 p1, 0x0

    .line 285
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    .line 286
    invoke-virtual {p0, v0}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    const/4 p1, 0x1

    .line 287
    invoke-virtual {p0, p1}, Landroid/view/View;->setClipToOutline(Z)V

    :cond_2b
    return-void
.end method

.method public decorateOutlineRoundCorner(I)V
    .registers 4

    .line 260
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "decorateOutlineRoundCorner size = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/widgetscore/utils/LogUtil;->d(Ljava/lang/String;)V

    .line 261
    new-instance v0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout$1;

    invoke-direct {v0, p0, p1}, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout$1;-><init>(Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;I)V

    .line 267
    invoke-virtual {p0, v0}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    const/4 p1, 0x1

    .line 268
    invoke-virtual {p0, p1}, Landroid/view/View;->setClipToOutline(Z)V

    return-void
.end method

.method protected dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    .line 643
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 644
    iget-object p0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mExploreByTouchHelper:Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuExploreByTouchHelper;

    invoke-virtual {p0, p1}, Landroidx/customview/widget/ExploreByTouchHelper;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    or-int/2addr p0, v0

    return p0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 10

    .line 680
    iget-boolean v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->isFlashCallType:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_14

    iget-object v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mSwipeMenu:Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;

    invoke-virtual {v0}, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;->getMenuItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_14

    move v0, v1

    goto :goto_15

    :cond_14
    move v0, v2

    .line 681
    :goto_15
    iget-boolean v3, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->isSwipeEnable:Z

    if-eqz v3, :cond_25d

    if-nez v0, :cond_25d

    sget-boolean v0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->EXECUTEANIMATION:Z

    if-eqz v0, :cond_21

    goto/16 :goto_25d

    .line 686
    :cond_21
    invoke-direct {p0, p1}, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->acquireVelocityTracker(Landroid/view/MotionEvent;)V

    .line 687
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_20f

    if-eq v0, v1, :cond_31

    const/4 v3, 0x3

    if-eq v0, v3, :cond_31

    goto/16 :goto_258

    .line 709
    :cond_31
    iget-object v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mScroller:Lcom/transsion/widgetslib/view/swipmenu/OverScroller;

    invoke-virtual {v0}, Lcom/transsion/widgetslib/view/swipmenu/OverScroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_3c

    .line 710
    invoke-direct {p0}, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->abortScrollerAnimation()V

    .line 713
    :cond_3c
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_a1

    iget-object v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mSwipeCurrentHorizontal:Lcom/transsion/widgetslib/view/swipmenu/Horizontal;

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/transsion/widgetslib/view/swipmenu/Horizontal;->isMenuOpen(I)Z

    move-result v0

    if-eqz v0, :cond_a1

    .line 714
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget-object v3, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mFirstPNormal:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    sub-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v3, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mScaleTouchSlop:I

    int-to-float v3, v3

    cmpg-float v0, v0, v3

    if-gez v0, :cond_a1

    .line 715
    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->getClickMenuItemIndex(Landroid/view/MotionEvent;)I

    move-result v0

    if-ltz v0, :cond_76

    .line 716
    iget-object v3, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mSwipeMenu:Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;

    invoke-virtual {v3}, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;->getMenuItems()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_76

    move v3, v1

    goto :goto_77

    :cond_76
    move v3, v2

    :goto_77
    iput-boolean v3, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->availableClick:Z

    .line 717
    iget-object v3, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mOnMenuItemClickListener:Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout$OnMenuItemClickListener;

    if-eqz v3, :cond_a1

    if-ltz v0, :cond_a1

    iget-object v3, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mSwipeMenu:Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;

    invoke-virtual {v3}, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;->getMenuItems()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_a1

    .line 718
    iget-object v3, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mOnMenuItemClickListener:Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout$OnMenuItemClickListener;

    iget-object v4, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mSwipeMenu:Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;

    invoke-virtual {v4}, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;->getMenuItems()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;

    invoke-virtual {v4}, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;->getPosition()I

    move-result v4

    const/4 v5, 0x0

    invoke-interface {v3, v5, v4, v0}, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout$OnMenuItemClickListener;->onMenuItemClickListener(Landroid/view/View;II)V

    .line 723
    :cond_a1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iget-object v3, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mFirstP:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    sub-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v3, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mScaleTouchSlop:I

    int-to-float v3, v3

    cmpl-float v0, v0, v3

    if-lez v0, :cond_b7

    .line 724
    iput-boolean v1, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->isUserSwiped:Z

    .line 726
    :cond_b7
    iget-boolean v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->hasConsume:Z

    if-eqz v0, :cond_17a

    iget-boolean v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->isUserSwiped:Z

    if-eqz v0, :cond_17a

    .line 727
    iget-object v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v3, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mScaledMaximumFlingVelocity:I

    int-to-float v3, v3

    const/16 v4, 0x3e8

    invoke-virtual {v0, v4, v3}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 728
    iget-object v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v3, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mPointerId:I

    invoke-virtual {v0, v3}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v0

    float-to-int v0, v0

    .line 729
    iget-boolean v3, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->isRtlSwipe:Z

    if-nez v3, :cond_db

    if-ltz v0, :cond_d9

    goto :goto_dd

    :cond_d9
    move v1, v2

    goto :goto_dd

    :cond_db
    if-gtz v0, :cond_d9

    .line 730
    :goto_dd
    invoke-virtual {p0, v0}, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->shouldFlingForVelocity(I)Z

    move-result v3

    .line 731
    invoke-direct {p0, p1, v0}, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->getSwipeDuration(Landroid/view/MotionEvent;I)I

    move-result v4

    .line 732
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v5

    .line 734
    iget v6, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mMaxScroll:I

    if-lt v5, v6, :cond_f8

    iget-boolean v7, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->isRtlSwipe:Z

    if-eqz v7, :cond_f4

    if-eqz v1, :cond_f8

    goto :goto_100

    :cond_f4
    if-eqz v1, :cond_100

    if-eqz v3, :cond_100

    :cond_f8
    iget v7, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mMinScroll:I

    if-gt v5, v7, :cond_115

    if-eqz v1, :cond_100

    if-nez v3, :cond_115

    .line 736
    :cond_100
    :goto_100
    iget-boolean v1, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->canSeeFlashCallLayer:Z

    if-nez v1, :cond_115

    .line 737
    sput-object p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mViewCache:Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;

    .line 738
    iget-object v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mScroller:Lcom/transsion/widgetslib/view/swipmenu/OverScroller;

    iget v1, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mMinScroll:I

    invoke-virtual {v0, v5, v1, v6}, Lcom/transsion/widgetslib/view/swipmenu/OverScroller;->springBack(III)Z

    .line 739
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 740
    invoke-direct {p0}, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->enableAccessibilityDelegate()V

    goto/16 :goto_205

    .line 742
    :cond_115
    iget-boolean v1, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->canSeeFlashCallLayer:Z

    if-eqz v1, :cond_11e

    .line 743
    invoke-direct {p0, v4, v0}, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->removeOrRestoreItem(II)V

    goto/16 :goto_205

    :cond_11e
    if-gez v0, :cond_14a

    .line 746
    iget-boolean v1, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->isRtlSwipe:Z

    if-eqz v1, :cond_130

    if-eqz v3, :cond_12b

    .line 748
    invoke-direct {p0, v0}, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->smoothOpenMenuFling(I)V

    goto/16 :goto_205

    .line 750
    :cond_12b
    invoke-direct {p0, v4}, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->smoothOpenMenu(I)V

    goto/16 :goto_205

    :cond_130
    if-eqz v3, :cond_137

    .line 754
    invoke-virtual {p0, v0}, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->smoothCloseMenuFling(I)V

    goto/16 :goto_205

    .line 756
    :cond_137
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v0

    neg-int v0, v0

    iget v1, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mLimit:I

    if-le v0, v1, :cond_145

    .line 757
    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->smoothOpenMenu()V

    goto/16 :goto_205

    .line 759
    :cond_145
    invoke-virtual {p0, v4}, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->smoothCloseMenu(I)V

    goto/16 :goto_205

    :cond_14a
    if-lez v0, :cond_175

    .line 764
    iget-boolean v1, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->isRtlSwipe:Z

    if-eqz v1, :cond_169

    if-eqz v3, :cond_157

    .line 766
    invoke-virtual {p0, v0}, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->smoothCloseMenuFling(I)V

    goto/16 :goto_205

    .line 768
    :cond_157
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v0

    iget v1, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mLimit:I

    if-le v0, v1, :cond_164

    .line 769
    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->smoothOpenMenu()V

    goto/16 :goto_205

    .line 771
    :cond_164
    invoke-virtual {p0, v4}, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->smoothCloseMenu(I)V

    goto/16 :goto_205

    :cond_169
    if-eqz v3, :cond_170

    .line 776
    invoke-direct {p0, v0}, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->smoothOpenMenuFling(I)V

    goto/16 :goto_205

    .line 778
    :cond_170
    invoke-direct {p0, v4}, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->smoothOpenMenu(I)V

    goto/16 :goto_205

    .line 782
    :cond_175
    invoke-direct {p0, v4}, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->dependOnLimitShowOrHideMenu(I)V

    goto/16 :goto_205

    .line 787
    :cond_17a
    iget-boolean v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->isRtlSwipe:Z

    if-eqz v0, :cond_1c4

    .line 788
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v0

    iget v1, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mScaleTouchSlop:I

    if-le v0, v1, :cond_1a6

    .line 789
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v3

    sub-int/2addr v1, v3

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_19c

    .line 790
    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->smoothCloseMenu()V

    goto :goto_205

    .line 792
    :cond_19c
    iget-boolean v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->availableClick:Z

    if-nez v0, :cond_205

    .line 793
    iget v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mScrollerDuration:I

    invoke-direct {p0, v0}, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->dependOnLimitShowOrHideMenu(I)V

    goto :goto_205

    .line 796
    :cond_1a6
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v0

    neg-int v0, v0

    iget v1, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mScaleTouchSlop:I

    if-le v0, v1, :cond_1c0

    .line 797
    iget-object v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mScroller:Lcom/transsion/widgetslib/view/swipmenu/OverScroller;

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v1

    iget v3, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mMinScroll:I

    iget v4, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mMaxScroll:I

    invoke-virtual {v0, v1, v3, v4}, Lcom/transsion/widgetslib/view/swipmenu/OverScroller;->springBack(III)Z

    .line 798
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_205

    .line 800
    :cond_1c0
    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->smoothCloseMenu()V

    goto :goto_205

    .line 803
    :cond_1c4
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v0

    neg-int v0, v0

    iget v1, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mScaleTouchSlop:I

    if-le v0, v1, :cond_1e9

    .line 804
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1df

    .line 805
    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->smoothCloseMenu()V

    goto :goto_205

    .line 807
    :cond_1df
    iget-boolean v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->availableClick:Z

    if-nez v0, :cond_205

    .line 808
    iget v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mScrollerDuration:I

    invoke-direct {p0, v0}, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->dependOnLimitShowOrHideMenu(I)V

    goto :goto_205

    .line 811
    :cond_1e9
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v0

    iget v1, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mScaleTouchSlop:I

    if-le v0, v1, :cond_202

    .line 812
    iget-object v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mScroller:Lcom/transsion/widgetslib/view/swipmenu/OverScroller;

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v1

    iget v3, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mMinScroll:I

    iget v4, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mMaxScroll:I

    invoke-virtual {v0, v1, v3, v4}, Lcom/transsion/widgetslib/view/swipmenu/OverScroller;->springBack(III)Z

    .line 813
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_205

    .line 815
    :cond_202
    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->smoothCloseMenu()V

    .line 819
    :cond_205
    :goto_205
    invoke-direct {p0}, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->releaseVelocityTracker()V

    .line 820
    sput-boolean v2, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->isTouching:Z

    .line 821
    iput-boolean v2, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->hasConsume:Z

    .line 822
    iput-boolean v2, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->availableClick:Z

    goto :goto_258

    .line 690
    :cond_20f
    sget-boolean v0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->isTouching:Z

    if-eqz v0, :cond_214

    return v2

    .line 693
    :cond_214
    sput-boolean v1, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->isTouching:Z

    .line 695
    iput-boolean v2, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->isUserSwiped:Z

    .line 696
    iput-boolean v1, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->isUnMoved:Z

    .line 697
    iget-object v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mScroller:Lcom/transsion/widgetslib/view/swipmenu/OverScroller;

    invoke-virtual {v0}, Lcom/transsion/widgetslib/view/swipmenu/OverScroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_225

    .line 698
    invoke-direct {p0}, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->abortScrollerAnimation()V

    .line 700
    :cond_225
    invoke-direct {p0}, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->resetOverScrollParams()V

    .line 701
    invoke-direct {p0}, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->closeCacheView()V

    .line 702
    iget-object v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mLastP:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    invoke-virtual {v0, v1, v3}, Landroid/graphics/PointF;->set(FF)V

    .line 703
    iget-object v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mFirstP:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    invoke-virtual {v0, v1, v3}, Landroid/graphics/PointF;->set(FF)V

    .line 704
    iget-object v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mFirstPNormal:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {v0, v1, v3}, Landroid/graphics/PointF;->set(FF)V

    .line 705
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mPointerId:I

    .line 827
    :goto_258
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    .line 682
    :cond_25d
    :goto_25d
    sput-boolean v2, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->isTouching:Z

    .line 683
    invoke-direct {p0}, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->closeCacheView()V

    .line 684
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method distanceInfluenceForSnapDuration(F)F
    .registers 4

    const/high16 p0, 0x3f000000    # 0.5f

    sub-float/2addr p1, p0

    float-to-double p0, p1

    const-wide v0, 0x3fde28c7460698c7L    # 0.4712389167638204

    mul-double/2addr p0, v0

    double-to-float p0, p0

    float-to-double p0, p0

    .line 926
    invoke-static {p0, p1}, Ljava/lang/Math;->sin(D)D

    move-result-wide p0

    double-to-float p0, p0

    return p0
.end method

.method public doDeleteAnimation(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout$DeleteAnimationListener;)V
    .registers 4

    const/4 v0, 0x0

    .line 1606
    invoke-virtual {p0, p1, p2, v0}, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->doDeleteAnimationCore(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout$DeleteAnimationListener;Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout$DeleteAnimationListenerCompat;)V

    return-void
.end method

.method public doDeleteAnimation(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout$DeleteAnimationListenerCompat;)V
    .registers 4

    const/4 v0, 0x0

    .line 1610
    invoke-virtual {p0, p1, v0, p2}, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->doDeleteAnimationCore(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout$DeleteAnimationListener;Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout$DeleteAnimationListenerCompat;)V

    return-void
.end method

.method public doDeleteAnimationCore(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout$DeleteAnimationListener;Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout$DeleteAnimationListenerCompat;)V
    .registers 11

    const/4 v0, 0x0

    if-eqz p1, :cond_6

    .line 1616
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->setIsRecyclable(Z)V

    .line 1619
    :cond_6
    iget-object p1, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mSwipeCurrentHorizontal:Lcom/transsion/widgetslib/view/swipmenu/Horizontal;

    if-eqz p1, :cond_e2

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/transsion/widgetslib/view/swipmenu/Horizontal;->isMenuOpen(I)Z

    move-result p1

    if-eqz p1, :cond_e2

    .line 1620
    iget-object p1, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz p1, :cond_23

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_23

    .line 1621
    iget-object p1, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->cancel()V

    .line 1624
    :cond_23
    iget-boolean p1, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->isRtlSwipe:Z

    if-eqz p1, :cond_3e

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    iget-object v1, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mSwipeMenu:Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;

    invoke-virtual {v1}, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;->getMenuTotalWidth()I

    move-result v1

    iget-object v2, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mSwipeMenu:Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;

    invoke-virtual {v2}, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;->getMenuItems()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    div-int/2addr v1, v2

    sub-int/2addr p1, v1

    goto :goto_55

    .line 1625
    :cond_3e
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    iget-object v1, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mSwipeMenu:Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;

    invoke-virtual {v1}, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;->getMenuTotalWidth()I

    move-result v1

    iget-object v2, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mSwipeMenu:Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;

    invoke-virtual {v2}, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;->getMenuItems()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    div-int/2addr v1, v2

    sub-int/2addr p1, v1

    neg-int p1, p1

    .line 1626
    :goto_55
    filled-new-array {v0, p1}, [I

    move-result-object v1

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 1627
    new-instance v2, Lcom/transsion/widgetslib/view/interpolators/OSEaseInQuadOutCurve2Interpolator;

    invoke-direct {v2}, Lcom/transsion/widgetslib/view/interpolators/OSEaseInQuadOutCurve2Interpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1628
    new-instance v2, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout$DelAnimatorUpdateListener;

    invoke-direct {v2, p0, p1}, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout$DelAnimatorUpdateListener;-><init>(Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;I)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const-wide/16 v2, 0x12c

    .line 1629
    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1631
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p1

    int-to-float p1, p1

    const/4 v4, 0x2

    new-array v5, v4, [F

    aput p1, v5, v0

    const/4 p1, 0x1

    const/4 v6, 0x0

    aput v6, v5, p1

    invoke-static {v5}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v5

    .line 1632
    new-instance v6, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout$DelHeightAnimatorUpdateListener;

    invoke-direct {v6, p0, p3}, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout$DelHeightAnimatorUpdateListener;-><init>(Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout$DeleteAnimationListenerCompat;)V

    invoke-virtual {v5, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1633
    new-instance v6, Lcom/transsion/widgetslib/view/interpolators/OSEaseInQuadOutCurve2Interpolator;

    invoke-direct {v6}, Lcom/transsion/widgetslib/view/interpolators/OSEaseInQuadOutCurve2Interpolator;-><init>()V

    invoke-virtual {v5, v6}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1634
    invoke-virtual {v5, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1636
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v2, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mAnimatorSet:Landroid/animation/AnimatorSet;

    .line 1637
    new-instance v3, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout$3;

    invoke-direct {v3, p0, p2, p3}, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout$3;-><init>(Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout$DeleteAnimationListener;Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout$DeleteAnimationListenerCompat;)V

    invoke-virtual {v2, v3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1653
    iget-object p2, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mAnimatorSet:Landroid/animation/AnimatorSet;

    new-array p3, v4, [Landroid/animation/Animator;

    aput-object v1, p3, v0

    aput-object v5, p3, p1

    invoke-virtual {p2, p3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1654
    iget-boolean p2, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mIsHios:Z

    if-eqz p2, :cond_d4

    .line 1655
    new-array p2, v4, [F

    fill-array-data p2, :array_e4

    invoke-static {p2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p2

    .line 1656
    new-instance p3, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout$DelScaleHeightAnimatorUpdateListener;

    invoke-direct {p3, p0}, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout$DelScaleHeightAnimatorUpdateListener;-><init>(Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;)V

    invoke-virtual {p2, p3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const-wide/16 v1, 0x64

    .line 1657
    invoke-virtual {p2, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1658
    iget-object p3, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mAnimatorSet:Landroid/animation/AnimatorSet;

    new-array v1, p1, [Landroid/animation/Animator;

    aput-object p2, v1, v0

    invoke-virtual {p3, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1660
    :cond_d4
    iget-object p2, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p2}, Landroid/animation/AnimatorSet;->start()V

    .line 1661
    sput-boolean p1, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->EXECUTEANIMATION:Z

    .line 1662
    iput-boolean p1, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mIsExecuteAnimation:Z

    .line 1663
    iput-boolean v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->isSwipeEnable:Z

    const/4 p0, 0x0

    .line 1664
    sput-object p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mViewCache:Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;

    :cond_e2
    return-void

    nop

    :array_e4
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .registers 3

    .line 619
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected getClickMenuItemIndex(Landroid/view/MotionEvent;)I
    .registers 5

    .line 836
    iget-object v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mSwipeCurrentHorizontal:Lcom/transsion/widgetslib/view/swipmenu/Horizontal;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    iget-boolean p0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mIsHios:Z

    invoke-virtual {v0, v1, v2, p1, p0}, Lcom/transsion/widgetslib/view/swipmenu/Horizontal;->getClickMenuItemIndex(IFLandroid/view/MotionEvent;Z)I

    move-result p0

    return p0
.end method

.method public getOnMenuItemClickListener()Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout$OnMenuItemClickListener;
    .registers 1

    .line 562
    iget-object p0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mOnMenuItemClickListener:Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout$OnMenuItemClickListener;

    return-object p0
.end method

.method public getSwipeCurrentHorizontal()Lcom/transsion/widgetslib/view/swipmenu/Horizontal;
    .registers 1

    .line 1586
    iget-object p0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mSwipeCurrentHorizontal:Lcom/transsion/widgetslib/view/swipmenu/Horizontal;

    return-object p0
.end method

.method public isCompleteOpen()Z
    .registers 2

    .line 326
    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->isLeftCompleteOpen()Z

    move-result v0

    if-nez v0, :cond_f

    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->isRightMenuOpen()Z

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

.method public isLeftCompleteOpen()Z
    .registers 2

    .line 331
    iget-object v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mSwipeLeftHorizontal:Lcom/transsion/widgetslib/view/swipmenu/LeftHorizontal;

    if-eqz v0, :cond_10

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/transsion/widgetslib/view/swipmenu/Horizontal;->isCompleteClose(I)Z

    move-result p0

    if-nez p0, :cond_10

    const/4 p0, 0x1

    return p0

    :cond_10
    const/4 p0, 0x0

    return p0
.end method

.method public isLeftMenuOpen()Z
    .registers 2

    .line 316
    iget-object v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mSwipeLeftHorizontal:Lcom/transsion/widgetslib/view/swipmenu/LeftHorizontal;

    if-eqz v0, :cond_10

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/transsion/widgetslib/view/swipmenu/LeftHorizontal;->isMenuOpen(I)Z

    move-result p0

    if-eqz p0, :cond_10

    const/4 p0, 0x1

    return p0

    :cond_10
    const/4 p0, 0x0

    return p0
.end method

.method public isLeftMenuOpenNotEqual()Z
    .registers 2

    .line 346
    iget-object v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mSwipeLeftHorizontal:Lcom/transsion/widgetslib/view/swipmenu/LeftHorizontal;

    if-eqz v0, :cond_10

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/transsion/widgetslib/view/swipmenu/LeftHorizontal;->isMenuOpenNotEqual(I)Z

    move-result p0

    if-eqz p0, :cond_10

    const/4 p0, 0x1

    return p0

    :cond_10
    const/4 p0, 0x0

    return p0
.end method

.method public isMenuOpen()Z
    .registers 2

    .line 311
    iget-boolean v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->isRtlSwipe:Z

    if-eqz v0, :cond_9

    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->isLeftMenuOpen()Z

    move-result p0

    return p0

    :cond_9
    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->isRightMenuOpen()Z

    move-result p0

    return p0
.end method

.method public isMenuOpenNotEqual()Z
    .registers 2

    .line 341
    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->isLeftMenuOpenNotEqual()Z

    move-result v0

    if-nez v0, :cond_f

    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->isRightMenuOpenNotEqual()Z

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

.method public isRightCompleteOpen()Z
    .registers 2

    .line 336
    iget-object v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mSwipeRightHorizontal:Lcom/transsion/widgetslib/view/swipmenu/RightHorizontal;

    if-eqz v0, :cond_10

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/transsion/widgetslib/view/swipmenu/Horizontal;->isCompleteClose(I)Z

    move-result p0

    if-nez p0, :cond_10

    const/4 p0, 0x1

    return p0

    :cond_10
    const/4 p0, 0x0

    return p0
.end method

.method public isRightMenuOpen()Z
    .registers 2

    .line 321
    iget-object v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mSwipeRightHorizontal:Lcom/transsion/widgetslib/view/swipmenu/RightHorizontal;

    if-eqz v0, :cond_10

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/transsion/widgetslib/view/swipmenu/RightHorizontal;->isMenuOpen(I)Z

    move-result p0

    if-eqz p0, :cond_10

    const/4 p0, 0x1

    return p0

    :cond_10
    const/4 p0, 0x0

    return p0
.end method

.method public isRightMenuOpenNotEqual()Z
    .registers 2

    .line 351
    iget-object v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mSwipeRightHorizontal:Lcom/transsion/widgetslib/view/swipmenu/RightHorizontal;

    if-eqz v0, :cond_10

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/transsion/widgetslib/view/swipmenu/RightHorizontal;->isMenuOpenNotEqual(I)Z

    move-result p0

    if-eqz p0, :cond_10

    const/4 p0, 0x1

    return p0

    :cond_10
    const/4 p0, 0x0

    return p0
.end method

.method public isRtlSwipe()Z
    .registers 1

    .line 140
    iget-boolean p0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->isRtlSwipe:Z

    return p0
.end method

.method public isSwipeEnable()Z
    .registers 1

    .line 132
    iget-boolean p0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->isSwipeEnable:Z

    return p0
.end method

.method public onDestroy()V
    .registers 1
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    .line 1692
    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->resetAnimation()V

    .line 1693
    invoke-static {}, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->release()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 16

    .line 1058
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 1059
    iget-object v1, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mSwipeMenu:Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;

    if-eqz v1, :cond_2b4

    invoke-virtual {v1}, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;->getMenuItems()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_13

    goto/16 :goto_2b4

    .line 1062
    :cond_13
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 1063
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v8

    .line 1064
    iget-boolean v1, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->isRtlSwipe:Z

    const/4 v9, 0x0

    if-eqz v1, :cond_22

    if-lez v8, :cond_1ba

    goto :goto_24

    :cond_22
    if-gez v8, :cond_1ba

    .line 1066
    :goto_24
    iget-boolean v1, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mIsExecuteAnimation:Z

    if-nez v1, :cond_1ba

    .line 1067
    iget-object v1, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mSwipeMenu:Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;

    invoke-virtual {v1}, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;->getMenuItems()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    int-to-float v1, v8

    int-to-float v10, v2

    div-float/2addr v1, v10

    .line 1068
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    move v4, v1

    move v3, v9

    :goto_3b
    if-ge v3, v2, :cond_1ba

    int-to-float v1, v3

    mul-float v5, v4, v1

    .line 1070
    iget-boolean v6, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->isRtlSwipe:Z

    if-eqz v6, :cond_49

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    goto :goto_4a

    :cond_49
    move v6, v9

    :goto_4a
    int-to-float v6, v6

    add-float/2addr v6, v5

    .line 1071
    iget-object v5, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mSwipeMenu:Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;

    invoke-virtual {v5}, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;->getMenuItems()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;

    .line 1072
    invoke-virtual {v5}, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    move v11, v6

    .line 1073
    invoke-virtual {v5}, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;->getCircleBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 1075
    invoke-virtual {v5}, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;->getType()I

    move-result v12

    if-eqz v12, :cond_194

    const/4 v13, 0x1

    if-eq v12, v13, :cond_6c

    goto/16 :goto_e1

    .line 1077
    :cond_6c
    iget-boolean v12, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mIsHios:Z

    if-eqz v12, :cond_160

    .line 1078
    iget-boolean v4, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->isRtlSwipe:Z

    const/high16 v7, 0x40000000    # 2.0f

    if-eqz v4, :cond_e6

    .line 1079
    iget-object v4, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mSwipeMenu:Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;

    invoke-virtual {v4}, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;->getMenuTotalWidth()I

    move-result v4

    if-ge v8, v4, :cond_95

    .line 1080
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    add-int/2addr v1, v8

    int-to-float v1, v1

    iget-object v4, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mSwipeMenu:Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;

    invoke-virtual {v4, v3}, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;->getEdgeDistanceHios(I)F

    move-result v4

    sub-float/2addr v1, v4

    .line 1081
    invoke-virtual {v5}, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;->getWidth()I

    move-result v4

    int-to-float v4, v4

    :goto_90
    move-object v0, p0

    move v7, v4

    move v4, v1

    move-object v1, p1

    goto :goto_dd

    .line 1083
    :cond_95
    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v4

    iget-object v11, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mSwipeMenu:Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;

    invoke-virtual {v11}, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;->getMenuPadding()I

    move-result v11

    mul-int/lit8 v11, v11, 0x2

    sub-int/2addr v4, v11

    int-to-float v4, v4

    .line 1084
    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v11

    iget-object v12, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mSwipeMenu:Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;

    invoke-virtual {v12}, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;->getMenuTotalWidth()I

    move-result v12

    sub-int/2addr v11, v12

    int-to-float v11, v11

    iget-object v12, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mSwipeMenu:Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;

    invoke-virtual {v12}, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;->getHiosSpaceRatio()F

    move-result v12

    mul-float/2addr v11, v12

    sub-float/2addr v4, v11

    div-float/2addr v4, v10

    mul-float/2addr v1, v4

    .line 1086
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v11

    int-to-float v11, v11

    add-float/2addr v1, v11

    iget-object v11, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mSwipeMenu:Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;

    invoke-virtual {v11}, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;->getMenuPadding()I

    move-result v11

    int-to-float v11, v11

    add-float/2addr v1, v11

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v11

    iget-object v12, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mSwipeMenu:Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;

    .line 1087
    invoke-virtual {v12}, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;->getMenuTotalWidth()I

    move-result v12

    sub-int/2addr v11, v12

    int-to-float v11, v11

    iget-object v12, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mSwipeMenu:Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;

    invoke-virtual {v12}, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;->getHiosSpaceRatio()F

    move-result v12

    mul-float/2addr v11, v12

    div-float/2addr v11, v7

    add-float/2addr v1, v11

    goto :goto_90

    .line 1089
    :goto_dd
    invoke-direct/range {v0 .. v7}, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->drawLeftImgHios(Landroid/graphics/Canvas;IIFLcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;Landroid/graphics/drawable/Drawable;F)V

    move v4, v7

    :goto_e1
    move v5, v3

    move v3, v2

    move v2, v8

    goto/16 :goto_1b3

    :cond_e6
    neg-int v1, v8

    .line 1091
    iget-object v4, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mSwipeMenu:Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;

    invoke-virtual {v4}, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;->getMenuTotalWidth()I

    move-result v4

    if-ge v1, v4, :cond_10a

    .line 1092
    invoke-virtual {v5}, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;->getWidth()I

    move-result v1

    int-to-float v1, v1

    .line 1093
    iget-object v4, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mSwipeMenu:Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;

    invoke-virtual {v4, v3}, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;->getEdgeDistanceHios(I)F

    move-result v4

    invoke-virtual {v5}, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;->getWidth()I

    move-result v7

    int-to-float v7, v7

    sub-float/2addr v4, v7

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v4, v7

    :goto_106
    move-object v0, p0

    move v7, v1

    move-object v1, p1

    goto :goto_15a

    .line 1095
    :cond_10a
    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget-object v4, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mSwipeMenu:Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;

    invoke-virtual {v4}, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;->getMenuPadding()I

    move-result v4

    mul-int/lit8 v4, v4, 0x2

    sub-int/2addr v1, v4

    int-to-float v1, v1

    .line 1096
    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v4

    iget-object v11, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mSwipeMenu:Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;

    invoke-virtual {v11}, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;->getMenuTotalWidth()I

    move-result v11

    sub-int/2addr v4, v11

    int-to-float v4, v4

    iget-object v11, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mSwipeMenu:Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;

    invoke-virtual {v11}, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;->getHiosSpaceRatio()F

    move-result v11

    mul-float/2addr v4, v11

    sub-float/2addr v1, v4

    div-float/2addr v1, v10

    .line 1098
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v4

    int-to-float v4, v4

    sub-int v11, v2, v3

    int-to-float v11, v11

    mul-float/2addr v11, v1

    add-float/2addr v4, v11

    sub-float/2addr v4, v1

    iget-object v11, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mSwipeMenu:Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;

    invoke-virtual {v11}, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;->getMenuPadding()I

    move-result v11

    int-to-float v11, v11

    add-float/2addr v4, v11

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v11

    iget-object v12, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mSwipeMenu:Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;

    invoke-virtual {v12}, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;->getMenuTotalWidth()I

    move-result v12

    sub-int/2addr v11, v12

    int-to-float v11, v11

    iget-object v12, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mSwipeMenu:Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;

    invoke-virtual {v12}, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;->getHiosSpaceRatio()F

    move-result v12

    mul-float/2addr v11, v12

    div-float/2addr v11, v7

    add-float/2addr v4, v11

    goto :goto_106

    .line 1100
    :goto_15a
    invoke-direct/range {v0 .. v7}, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->drawRightImgHios(Landroid/graphics/Canvas;IIFLcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;Landroid/graphics/drawable/Drawable;F)V

    move v1, v7

    move v4, v1

    goto :goto_e1

    :cond_160
    move-object v12, v5

    move-object v13, v6

    .line 1103
    iget-boolean v1, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->isRtlSwipe:Z

    if-eqz v1, :cond_17f

    move v5, v3

    move v3, v2

    move v2, v8

    const/4 v8, 0x1

    move-object v0, p0

    move-object v1, p1

    move v6, v11

    .line 1104
    invoke-direct/range {v0 .. v8}, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->drawLeftBg(Landroid/graphics/Canvas;IIFIFLandroid/graphics/drawable/Drawable;Z)V

    move v7, v2

    move v2, v3

    move v8, v4

    move v3, v5

    move v4, v6

    move-object v5, v12

    move-object v6, v13

    .line 1105
    invoke-direct/range {v0 .. v6}, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->drawLeftImg(Landroid/graphics/Canvas;IIFLcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;Landroid/graphics/drawable/Drawable;)V

    :goto_17a
    move v5, v3

    move v4, v8

    move v3, v2

    move v2, v7

    goto :goto_1b3

    :cond_17f
    move v5, v3

    move v6, v11

    move v3, v2

    move v2, v8

    const/4 v8, 0x1

    move-object v0, p0

    move-object v1, p1

    .line 1107
    invoke-direct/range {v0 .. v8}, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->drawRightBg(Landroid/graphics/Canvas;IIFIFLandroid/graphics/drawable/Drawable;Z)V

    move v7, v2

    move v2, v3

    move v8, v4

    move v3, v5

    move v4, v6

    move-object v5, v12

    move-object v6, v13

    .line 1108
    invoke-direct/range {v0 .. v6}, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->drawRightImg(Landroid/graphics/Canvas;IIFLcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;Landroid/graphics/drawable/Drawable;)V

    goto :goto_17a

    :cond_194
    move-object v12, v5

    move v6, v11

    move v5, v3

    move v3, v2

    move v2, v8

    move v8, v4

    .line 1114
    iget-boolean v1, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->isRtlSwipe:Z

    if-eqz v1, :cond_1a9

    move v4, v8

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    .line 1115
    invoke-direct/range {v0 .. v8}, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->drawLeftBg(Landroid/graphics/Canvas;IIFIFLandroid/graphics/drawable/Drawable;Z)V

    .line 1116
    invoke-direct {p0, p1, v6, v12}, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->drawLeftText(Landroid/graphics/Canvas;FLcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;)V

    goto :goto_1b3

    :cond_1a9
    move v4, v8

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    .line 1118
    invoke-direct/range {v0 .. v8}, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->drawRightBg(Landroid/graphics/Canvas;IIFIFLandroid/graphics/drawable/Drawable;Z)V

    .line 1119
    invoke-direct {p0, p1, v6, v12}, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->drawRightText(Landroid/graphics/Canvas;FLcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;)V

    :goto_1b3
    add-int/lit8 v5, v5, 0x1

    move v8, v2

    move v2, v3

    move v3, v5

    goto/16 :goto_3b

    :cond_1ba
    move v2, v8

    .line 1127
    iget-boolean v3, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mIsExecuteAnimation:Z

    if-eqz v3, :cond_2b1

    .line 1128
    iget-object v3, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mSwipeMenu:Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;

    invoke-virtual {v3}, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;->getMenuItems()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    .line 1129
    iget-object v4, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mSwipeMenu:Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;

    invoke-virtual {v4}, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;->getMenuTotalWidth()I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mSwipeMenu:Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;

    invoke-virtual {v5}, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;->getMenuItems()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    move v5, v9

    :goto_1dd
    if-ge v5, v3, :cond_2b1

    int-to-float v6, v5

    mul-float/2addr v6, v4

    .line 1131
    iget-boolean v7, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->isRtlSwipe:Z

    if-eqz v7, :cond_1ea

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    goto :goto_1eb

    :cond_1ea
    move v7, v9

    :goto_1eb
    int-to-float v7, v7

    add-float/2addr v6, v7

    .line 1132
    iget-object v7, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mSwipeMenu:Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;

    invoke-virtual {v7}, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;->getMenuItems()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    move-object v10, v7

    check-cast v10, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;

    .line 1133
    invoke-virtual {v10}, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;->getText()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    .line 1134
    invoke-virtual {v10}, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 1135
    invoke-virtual {v10}, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;->getCircleBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v11

    .line 1136
    iget-boolean v12, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->isRtlSwipe:Z

    if-eqz v12, :cond_25f

    .line 1137
    iget-boolean v12, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mIsHios:Z

    if-eqz v12, :cond_214

    if-nez v8, :cond_217

    :cond_214
    move-object v0, p0

    move-object v1, p1

    goto :goto_21d

    :cond_217
    :goto_217
    move v7, v4

    move v1, v8

    move v8, v2

    move v2, v3

    move v3, v5

    goto :goto_221

    .line 1138
    :goto_21d
    invoke-direct/range {v0 .. v8}, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->drawLeftBgAni(Landroid/graphics/Canvas;IIFIFLandroid/graphics/drawable/Drawable;Z)V

    goto :goto_217

    .line 1140
    :goto_221
    iget-boolean v4, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mIsHios:Z

    if-eqz v4, :cond_247

    if-eqz v1, :cond_247

    .line 1141
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    add-int/2addr v1, v8

    int-to-float v1, v1

    iget-object v4, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mSwipeMenu:Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;

    invoke-virtual {v4, v3}, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;->getEdgeDistanceHios(I)F

    move-result v4

    sub-float v4, v1, v4

    .line 1142
    invoke-virtual {v10}, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;->getWidth()I

    move-result v1

    int-to-float v7, v1

    move-object v0, p0

    move-object v1, p1

    move-object v5, v10

    move-object v6, v11

    .line 1143
    invoke-direct/range {v0 .. v7}, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->drawLeftImgHios(Landroid/graphics/Canvas;IIFLcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;Landroid/graphics/drawable/Drawable;F)V

    :goto_241
    move v5, v3

    move v4, v7

    move v3, v2

    move v2, v8

    goto/16 :goto_2ad

    :cond_247
    move v4, v6

    move-object v5, v10

    move-object v6, v11

    if-eqz v1, :cond_252

    move-object v0, p0

    move-object v1, p1

    .line 1146
    invoke-direct/range {v0 .. v6}, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->drawLeftImgAni(Landroid/graphics/Canvas;IIFLcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;Landroid/graphics/drawable/Drawable;)V

    goto :goto_241

    :cond_252
    move-object v0, p0

    move-object v1, p1

    move v6, v4

    move v4, v7

    move-object v7, v5

    move v5, v3

    move v3, v2

    move v2, v8

    .line 1148
    invoke-direct/range {v0 .. v7}, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->drawLeftTextAni(Landroid/graphics/Canvas;IIFIFLcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;)V

    goto/16 :goto_2ad

    :cond_25f
    move v1, v8

    .line 1153
    iget-boolean v8, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mIsHios:Z

    if-eqz v8, :cond_266

    if-nez v1, :cond_26a

    :cond_266
    move-object v0, p0

    move v8, v1

    move-object v1, p1

    goto :goto_26e

    :cond_26a
    :goto_26a
    move v8, v2

    move v2, v3

    move v3, v5

    goto :goto_273

    .line 1154
    :goto_26e
    invoke-direct/range {v0 .. v8}, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->drawRightBgAni(Landroid/graphics/Canvas;IIFIFLandroid/graphics/drawable/Drawable;Z)V

    move v1, v8

    goto :goto_26a

    .line 1156
    :goto_273
    iget-boolean v5, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mIsHios:Z

    if-eqz v5, :cond_298

    if-eqz v1, :cond_298

    .line 1157
    invoke-virtual {v10}, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;->getWidth()I

    move-result v1

    int-to-float v7, v1

    .line 1158
    iget-object v1, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mSwipeMenu:Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;

    invoke-virtual {v1, v3}, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;->getEdgeDistanceHios(I)F

    move-result v1

    invoke-virtual {v10}, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;->getWidth()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v1, v4

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v4, v1

    move-object v0, p0

    move-object v1, p1

    move-object v5, v10

    move-object v6, v11

    .line 1159
    invoke-direct/range {v0 .. v7}, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->drawRightImgHios(Landroid/graphics/Canvas;IIFLcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;Landroid/graphics/drawable/Drawable;F)V

    goto :goto_241

    :cond_298
    move-object v5, v10

    if-eqz v1, :cond_2a4

    move-object v0, p0

    move-object v1, p1

    move v7, v4

    move v4, v6

    move-object v6, v11

    .line 1162
    invoke-direct/range {v0 .. v7}, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->drawRightImgAni(Landroid/graphics/Canvas;IIFLcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;Landroid/graphics/drawable/Drawable;F)V

    goto :goto_241

    :cond_2a4
    move-object v0, p0

    move-object v1, p1

    move-object v7, v5

    move v5, v3

    move v3, v2

    move v2, v8

    .line 1164
    invoke-direct/range {v0 .. v7}, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->drawRightTextAni(Landroid/graphics/Canvas;IIFIFLcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;)V

    :goto_2ad
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1dd

    .line 1170
    :cond_2b1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_2b4
    :goto_2b4
    return-void
.end method

.method protected onFinishInflate()V
    .registers 2

    .line 247
    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    .line 248
    iget-boolean v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mIsHios:Z

    if-eqz v0, :cond_15

    iget-boolean v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mAutoClipCorner:Z

    if-eqz v0, :cond_15

    .line 249
    iget v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mCurrentOutlineCorner:I

    invoke-virtual {p0, v0}, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->decorateOutlineRoundCorner(I)V

    .line 250
    iget v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mCurrentOutlineCorner:I

    invoke-virtual {p0, v0}, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->decorateContentRoundCorner(I)V

    :cond_15
    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .registers 4

    .line 1788
    invoke-super {p0, p1, p2, p3}, Landroid/view/View;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 1789
    iget-object p0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mExploreByTouchHelper:Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuExploreByTouchHelper;

    invoke-virtual {p0, p1, p2, p3}, Landroidx/customview/widget/ExploreByTouchHelper;->onFocusChanged(ZILandroid/graphics/Rect;)V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 7

    .line 931
    iget-boolean v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->isSwipeEnable:Z

    if-eqz v0, :cond_8e

    .line 932
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_57

    const/4 v2, 0x2

    if-eq v0, v2, :cond_10

    goto/16 :goto_8e

    .line 949
    :cond_10
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iget-object v2, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mFirstP:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    sub-float/2addr v0, v2

    float-to-int v0, v0

    .line 950
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    iget-object v3, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mFirstP:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    sub-float/2addr v2, v3

    float-to-int v2, v2

    .line 951
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    iget-object v4, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mFirstP:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->x:F

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget v4, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mScaleTouchSlop:I

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_8e

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-le v0, v2, :cond_8e

    .line 952
    iget-object v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mLastP:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    invoke-virtual {v0, v2, p1}, Landroid/graphics/PointF;->set(FF)V

    .line 953
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    invoke-interface {p0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    return v1

    .line 934
    :cond_57
    iget-boolean v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->isRtlSwipe:Z

    if-eqz v0, :cond_76

    .line 935
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v0

    iget v2, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mScaleTouchSlop:I

    if-le v0, v2, :cond_8e

    .line 936
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    cmpg-float v0, v0, v2

    if-gez v0, :cond_8e

    return v1

    .line 941
    :cond_76
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v0

    neg-int v0, v0

    iget v2, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mScaleTouchSlop:I

    if-le v0, v2, :cond_8e

    .line 942
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    cmpl-float v0, v0, v2

    if-lez v0, :cond_8e

    return v1

    .line 961
    :cond_8e
    :goto_8e
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method protected onLayout(ZIIII)V
    .registers 9

    .line 625
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    .line 626
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result p2

    const/4 p3, 0x0

    :goto_9
    if-ge p3, p1, :cond_36

    .line 628
    invoke-virtual {p0, p3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p4

    .line 629
    invoke-virtual {p4}, Landroid/view/View;->getVisibility()I

    move-result p5

    const/16 v0, 0x8

    if-eq p5, v0, :cond_33

    if-nez p3, :cond_33

    .line 631
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result p5

    invoke-virtual {p4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    add-int/2addr v0, p2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    invoke-virtual {p4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p4, p2, p5, v0, v1}, Landroid/view/View;->layout(IIII)V

    .line 632
    invoke-virtual {p4}, Landroid/view/View;->getMeasuredWidth()I

    move-result p4

    add-int/2addr p2, p4

    :cond_33
    add-int/lit8 p3, p3, 0x1

    goto :goto_9

    .line 636
    :cond_36
    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->updateMinAndMaxScrollX()V

    return-void
.end method

.method protected onMeasure(II)V
    .registers 7

    .line 590
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    const/4 v0, 0x1

    .line 591
    invoke-virtual {p0, v0}, Landroid/view/View;->setClickable(Z)V

    const/4 v1, 0x0

    .line 592
    iput v1, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mHeight:I

    .line 594
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-lez v2, :cond_40

    .line 596
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 597
    invoke-virtual {v2, v0}, Landroid/view/View;->setClickable(Z)V

    .line 598
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v3, 0x8

    if-eq v0, v3, :cond_40

    .line 599
    invoke-virtual {p0, v2, p1, p2}, Landroid/view/ViewGroup;->measureChild(Landroid/view/View;II)V

    .line 600
    iget p1, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mHeight:I

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mHeight:I

    .line 601
    iget-boolean p2, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mIsExecuteAnimation:Z

    if-eqz p2, :cond_38

    iget p2, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mFinalHeight:I

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    :cond_38
    iput p1, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mFinalHeight:I

    .line 602
    iput-object v2, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mContentView:Landroid/view/View;

    .line 603
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    .line 606
    :cond_40
    iget-boolean p1, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mIsExecuteAnimation:Z

    if-eqz p1, :cond_4e

    .line 608
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iget p1, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 607
    invoke-virtual {p0, v1, p1}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void

    .line 610
    :cond_4e
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result p2

    add-int/2addr p1, p2

    add-int/2addr p1, v1

    iget p2, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mHeight:I

    .line 611
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    add-int/2addr p2, v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v0

    add-int/2addr p2, v0

    .line 610
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 6

    .line 966
    iget-boolean v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->isSwipeEnable:Z

    if-eqz v0, :cond_7c

    sget-boolean v0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->EXECUTEANIMATION:Z

    if-nez v0, :cond_7c

    .line 967
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq v0, v1, :cond_11

    goto :goto_7b

    .line 970
    :cond_11
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iget v1, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->currentPointerId:I

    if-eq v0, v1, :cond_34

    .line 971
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->currentPointerId:I

    .line 972
    iget-object v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mLastP:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    invoke-virtual {v0, v1, v3}, Landroid/graphics/PointF;->set(FF)V

    .line 974
    :cond_34
    iput-boolean v2, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->hasConsume:Z

    .line 975
    iget-object v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mLastP:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    sub-float/2addr v0, v1

    .line 976
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/high16 v3, 0x41200000    # 10.0f

    cmpl-float v1, v1, v3

    if-gtz v1, :cond_55

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    const/16 v3, 0xa

    if-le v1, v3, :cond_5c

    .line 977
    :cond_55
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 979
    :cond_5c
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget v3, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mScaleTouchSlop:I

    int-to-float v3, v3

    cmpl-float v1, v1, v3

    const/4 v3, 0x0

    if-lez v1, :cond_6a

    .line 980
    iput-boolean v3, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->isUnMoved:Z

    :cond_6a
    float-to-int v0, v0

    .line 982
    invoke-virtual {p0, v0, v3}, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->scrollBy(II)V

    .line 983
    iget-object p0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mLastP:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    invoke-virtual {p0, v0, p1}, Landroid/graphics/PointF;->set(FF)V

    :goto_7b
    return v2

    .line 990
    :cond_7c
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public performLongClick()Z
    .registers 3

    .line 1591
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mScaleTouchSlop:I

    if-le v0, v1, :cond_e

    const/4 p0, 0x0

    return p0

    .line 1594
    :cond_e
    invoke-super {p0}, Landroid/view/View;->performLongClick()Z

    move-result p0

    return p0
.end method

.method public resetAnimation()V
    .registers 2

    .line 1697
    iget-object v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1698
    iget-object p0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_f
    return-void
.end method

.method public reuseItem(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .registers 4

    if-nez p1, :cond_3

    return-void

    :cond_3
    const/4 v0, 0x0

    .line 1672
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    const/4 v1, 0x1

    .line 1673
    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->setIsRecyclable(Z)V

    .line 1674
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1, v0, v0}, Landroid/view/View;->scrollTo(II)V

    .line 1675
    iput-boolean v1, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->isSwipeEnable:Z

    .line 1676
    iget-object p1, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mMenuImageDelPaint:Landroid/graphics/Paint;

    const/16 v0, 0xff

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1677
    iget-object p1, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mMenuImagePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1678
    iput v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mAnimateDelAlpha:I

    .line 1679
    iput v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mAnimateAlpha:I

    const/high16 p1, 0x3f800000    # 1.0f

    .line 1680
    iput p1, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mAnimateRatio:F

    return-void
.end method

.method public scrollBy(II)V
    .registers 4

    .line 1009
    iput p1, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->deltaX:I

    .line 1010
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v0

    add-int/2addr v0, p1

    invoke-virtual {p0, v0, p2}, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->scrollTo(II)V

    return-void
.end method

.method public scrollTo(II)V
    .registers 10

    .line 1015
    iget-boolean v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->isFlashCallType:Z

    if-nez v0, :cond_11

    iget-object v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mSwipeMenu:Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;

    invoke-virtual {v0}, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;->getMenuItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_11

    return-void

    .line 1018
    :cond_11
    iget-boolean v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mIsExecuteAnimation:Z

    if-eqz v0, :cond_19

    .line 1019
    invoke-super {p0, p1, p2}, Landroid/view/View;->scrollTo(II)V

    return-void

    .line 1022
    :cond_19
    iget-boolean v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->cacheClose:Z

    if-eqz v0, :cond_21

    .line 1023
    invoke-super {p0, p1, p2}, Landroid/view/View;->scrollTo(II)V

    return-void

    .line 1026
    :cond_21
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v0

    iget v1, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->deltaX:I

    add-int/2addr v0, v1

    .line 1027
    iget-boolean v1, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->isRtlSwipe:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_36

    .line 1028
    iget v4, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mMaxScroll:I

    if-le v0, v4, :cond_34

    :goto_32
    move v4, v2

    goto :goto_3b

    :cond_34
    move v4, v3

    goto :goto_3b

    :cond_36
    iget v4, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mMinScroll:I

    if-ge v0, v4, :cond_34

    goto :goto_32

    :goto_3b
    if-eqz v1, :cond_45

    .line 1030
    iget v5, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mMinScroll:I

    if-ge v0, v5, :cond_43

    :goto_41
    move v5, v2

    goto :goto_4a

    :cond_43
    move v5, v3

    goto :goto_4a

    :cond_45
    iget v5, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mMaxScroll:I

    if-le v0, v5, :cond_43

    goto :goto_41

    .line 1032
    :goto_4a
    iget-boolean v6, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->isFlashCallType:Z

    if-eqz v6, :cond_61

    if-eqz v1, :cond_59

    .line 1033
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v1

    if-gez v1, :cond_57

    goto :goto_5f

    :cond_57
    move v2, v3

    goto :goto_5f

    :cond_59
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v1

    if-lez v1, :cond_57

    :goto_5f
    iput-boolean v2, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->canSeeFlashCallLayer:Z

    .line 1037
    :cond_61
    iget-boolean v1, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->canSeeFlashCallLayer:Z

    if-eqz v1, :cond_75

    .line 1038
    invoke-super {p0, p1, p2}, Landroid/view/View;->scrollTo(II)V

    .line 1039
    iget-object p1, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mIFlashCallPlay:Lcom/transsion/widgetslib/view/swipmenu/IFlashCallPlay;

    if-eqz p1, :cond_a4

    .line 1040
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result p2

    int-to-float p2, p2

    invoke-interface {p1, p2}, Lcom/transsion/widgetslib/view/swipmenu/IFlashCallPlay;->onScrollChange(F)V

    goto :goto_a4

    .line 1043
    :cond_75
    iget-object v1, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mScroller:Lcom/transsion/widgetslib/view/swipmenu/OverScroller;

    invoke-virtual {v1}, Lcom/transsion/widgetslib/view/swipmenu/OverScroller;->isSpringing()Z

    move-result v1

    if-eqz v1, :cond_81

    .line 1044
    invoke-super {p0, p1, p2}, Landroid/view/View;->scrollTo(II)V

    goto :goto_a4

    :cond_81
    if-eqz v5, :cond_91

    .line 1046
    iget-boolean p1, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->isRtlSwipe:Z

    if-eqz p1, :cond_8a

    iget p1, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mMinScroll:I

    goto :goto_8c

    :cond_8a
    iget p1, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mMaxScroll:I

    :goto_8c
    sub-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->dampedOverScroll(I)V

    goto :goto_a4

    :cond_91
    if-eqz v4, :cond_a1

    .line 1048
    iget-boolean p1, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->isRtlSwipe:Z

    if-nez p1, :cond_9a

    iget p1, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mMinScroll:I

    goto :goto_9c

    :cond_9a
    iget p1, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mMaxScroll:I

    :goto_9c
    sub-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->dampedOverScroll(I)V

    goto :goto_a4

    .line 1050
    :cond_a1
    invoke-super {p0, p1, p2}, Landroid/view/View;->scrollTo(II)V

    .line 1053
    :cond_a4
    :goto_a4
    iput v3, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->deltaX:I

    return-void
.end method

.method public setFlashCall(Z)Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;
    .registers 2

    .line 150
    iput-boolean p1, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->isFlashCallType:Z

    return-object p0
.end method

.method public setFlashCallCallBack(Lcom/transsion/widgetslib/view/swipmenu/IFlashCallPlay;)V
    .registers 2

    .line 566
    iput-object p1, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mIFlashCallPlay:Lcom/transsion/widgetslib/view/swipmenu/IFlashCallPlay;

    return-void
.end method

.method public setHandHoldAnim(Lcom/airbnb/lottie/LottieAnimationView;F)V
    .registers 8

    if-nez p1, :cond_a

    .line 509
    const-string p0, "OSSwipeMenuLayout"

    const-string p1, "setHandHoldAnim animationView is null"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 512
    :cond_a
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/widgetslib/R$dimen;->os_flash_call_distance_limit:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    .line 513
    iget-object v1, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/widgetslib/R$dimen;->os_flash_call_lottie_text_padding_start:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    .line 514
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    div-float/2addr v2, v0

    .line 515
    iget v3, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->screenWidth:I

    int-to-float v3, v3

    const v4, 0x3f333333    # 0.7f

    mul-float/2addr v3, v4

    sub-float/2addr v3, v0

    .line 516
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    add-float/2addr p2, v3

    iget v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->screenWidth:I

    int-to-float v0, v0

    div-float/2addr p2, v0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v3, p2, v0

    if-lez v3, :cond_40

    move v4, v0

    goto :goto_46

    :cond_40
    cmpg-float v3, p2, v4

    if-gez v3, :cond_45

    goto :goto_46

    :cond_45
    move v4, p2

    :goto_46
    const/4 p2, 0x0

    cmpg-float v3, v2, p2

    if-gez v3, :cond_4d

    move v2, p2

    goto :goto_52

    :cond_4d
    cmpl-float p2, v2, v0

    if-lez p2, :cond_52

    move v2, v0

    .line 533
    :cond_52
    :goto_52
    new-instance p2, Landroid/graphics/Matrix;

    invoke-direct {p2}, Landroid/graphics/Matrix;-><init>()V

    .line 535
    invoke-static {}, Lcom/transsion/widgetslib/util/Utils;->isRtl()Z

    move-result v0

    if-eqz v0, :cond_71

    .line 536
    new-instance v0, Landroid/graphics/PointF;

    iget p0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->screenWidth:I

    int-to-float p0, p0

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v1, v3

    add-float/2addr p0, v1

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-direct {v0, p0, v1}, Landroid/graphics/PointF;-><init>(FF)V

    goto :goto_80

    .line 538
    :cond_71
    new-instance v0, Landroid/graphics/PointF;

    const/high16 p0, -0x40000000    # -2.0f

    mul-float/2addr v1, p0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p0

    div-int/lit8 p0, p0, 0x2

    int-to-float p0, p0

    invoke-direct {v0, v1, p0}, Landroid/graphics/PointF;-><init>(FF)V

    .line 540
    :goto_80
    iget p0, v0, Landroid/graphics/PointF;->x:F

    iget v0, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {p2, v4, v4, p0, v0}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 544
    invoke-virtual {p1, p2}, Landroid/view/View;->setAnimationMatrix(Landroid/graphics/Matrix;)V

    .line 549
    invoke-virtual {p1, v2}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method public setMenuCreator(Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuCreator;)V
    .registers 4

    .line 570
    iput-object p1, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mSwipeMenuCreator:Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuCreator;

    .line 571
    iget-object p1, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mSwipeMenu:Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;

    invoke-virtual {p1}, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;->getMenuItems()Ljava/util/List;

    move-result-object p1

    .line 572
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 573
    iget-object v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mSwipeMenuCreator:Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuCreator;

    iget-object v1, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mSwipeMenu:Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;

    invoke-interface {v0, v1, v1}, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuCreator;->onCreateMenu(Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;)V

    .line 574
    iget-object v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mSwipeMenu:Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;

    invoke-virtual {v0}, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;->getMenuTotalWidth()I

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mMenuContentWidth:I

    .line 576
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-lez v0, :cond_2f

    const/4 v0, 0x0

    .line 577
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;

    invoke-virtual {v0}, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;->getWidth()I

    move-result v0

    div-int/2addr v0, v1

    iput v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mLimit:I

    .line 579
    :cond_2f
    iget-boolean v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mIsHios:Z

    if-eqz v0, :cond_63

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lt v0, v1, :cond_63

    const/4 v0, 0x1

    .line 580
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;

    invoke-virtual {v1}, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;->getIconAlpha()I

    move-result v1

    if-lez v1, :cond_5a

    .line 581
    iget-object v1, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mColorMatrixArray:[F

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;

    invoke-virtual {p1}, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;->getIconAlpha()I

    move-result p1

    int-to-float p1, p1

    const/high16 v0, 0x437f0000    # 255.0f

    div-float/2addr v0, p1

    const/16 p1, 0x12

    aput v0, v1, p1

    .line 583
    :cond_5a
    new-instance p1, Landroid/graphics/ColorMatrixColorFilter;

    iget-object v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mColorMatrixArray:[F

    invoke-direct {p1, v0}, Landroid/graphics/ColorMatrixColorFilter;-><init>([F)V

    iput-object p1, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mColorFilter:Landroid/graphics/ColorMatrixColorFilter;

    :cond_63
    return-void
.end method

.method public setOnMenuItemClickListener(Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout$OnMenuItemClickListener;)V
    .registers 2

    .line 558
    iput-object p1, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mOnMenuItemClickListener:Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout$OnMenuItemClickListener;

    return-void
.end method

.method public setRtl(Z)Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;
    .registers 2

    xor-int/lit8 p1, p1, 0x1

    .line 144
    iput-boolean p1, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->isRtlSwipe:Z

    .line 145
    invoke-direct {p0}, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->resetCurrentSwipeController()V

    return-object p0
.end method

.method public setSwipeEnable(Z)V
    .registers 2

    .line 136
    iput-boolean p1, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->isSwipeEnable:Z

    return-void
.end method

.method protected shouldFlingForVelocity(I)Z
    .registers 2

    .line 897
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    iget p0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mFlingThresholdVelocity:I

    if-le p1, p0, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method public smoothCloseLeftMenu()V
    .registers 2

    .line 438
    iget-object v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mSwipeLeftHorizontal:Lcom/transsion/widgetslib/view/swipmenu/LeftHorizontal;

    if-eqz v0, :cond_9

    .line 439
    iput-object v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mSwipeCurrentHorizontal:Lcom/transsion/widgetslib/view/swipmenu/Horizontal;

    .line 440
    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->smoothCloseMenu()V

    :cond_9
    return-void
.end method

.method public smoothCloseMenu()V
    .registers 2

    .line 432
    iget v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mScrollerDuration:I

    invoke-virtual {p0, v0}, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->smoothCloseMenu(I)V

    return-void
.end method

.method public smoothCloseMenu(I)V
    .registers 5

    .line 454
    iget-object v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mContentView:Landroid/view/View;

    if-eqz v0, :cond_8

    const/4 v1, 0x1

    .line 455
    invoke-virtual {v0, v1}, Landroid/view/View;->setLongClickable(Z)V

    .line 457
    :cond_8
    iget-object v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mSwipeCurrentHorizontal:Lcom/transsion/widgetslib/view/swipmenu/Horizontal;

    if-eqz v0, :cond_18

    .line 458
    iget-object v1, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mScroller:Lcom/transsion/widgetslib/view/swipmenu/OverScroller;

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v2

    invoke-virtual {v0, v1, v2, p1}, Lcom/transsion/widgetslib/view/swipmenu/Horizontal;->autoCloseMenu(Lcom/transsion/widgetslib/view/swipmenu/OverScroller;II)V

    .line 459
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_18
    const/4 p1, 0x0

    .line 461
    sput-object p1, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mViewCache:Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;

    .line 462
    invoke-direct {p0}, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->unableAccessibility()V

    return-void
.end method

.method public smoothCloseMenuFling(I)V
    .registers 11

    .line 489
    iget-object v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mContentView:Landroid/view/View;

    if-eqz v0, :cond_8

    const/4 v1, 0x1

    .line 490
    invoke-virtual {v0, v1}, Landroid/view/View;->setLongClickable(Z)V

    .line 492
    :cond_8
    iget-object v2, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mSwipeCurrentHorizontal:Lcom/transsion/widgetslib/view/swipmenu/Horizontal;

    if-eqz v2, :cond_49

    .line 493
    iget-object v3, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mScroller:Lcom/transsion/widgetslib/view/swipmenu/OverScroller;

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v4

    neg-int v5, p1

    iget v6, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mMinScroll:I

    iget v7, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mMaxScroll:I

    .line 495
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p1

    int-to-float p1, p1

    const/high16 v0, 0x3f000000    # 0.5f

    mul-float/2addr p1, v0

    const v0, 0x3e99999a    # 0.3f

    mul-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result v8

    .line 493
    invoke-virtual/range {v2 .. v8}, Lcom/transsion/widgetslib/view/swipmenu/Horizontal;->autoCloseMenuFling(Lcom/transsion/widgetslib/view/swipmenu/OverScroller;IIIII)V

    .line 497
    iget-boolean p1, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->isRtlSwipe:Z

    if-eqz p1, :cond_39

    iget-object p1, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mScroller:Lcom/transsion/widgetslib/view/swipmenu/OverScroller;

    invoke-virtual {p1}, Lcom/transsion/widgetslib/view/swipmenu/OverScroller;->getFinalPos()I

    move-result p1

    iget v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mMinScroll:I

    if-le p1, v0, :cond_46

    goto :goto_43

    :cond_39
    iget-object p1, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mScroller:Lcom/transsion/widgetslib/view/swipmenu/OverScroller;

    invoke-virtual {p1}, Lcom/transsion/widgetslib/view/swipmenu/OverScroller;->getFinalPos()I

    move-result p1

    iget v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mMaxScroll:I

    if-ge p1, v0, :cond_46

    .line 498
    :goto_43
    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->smoothCloseMenu()V

    .line 501
    :cond_46
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_49
    const/4 p1, 0x0

    .line 503
    sput-object p1, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mViewCache:Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;

    .line 504
    invoke-direct {p0}, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->unableAccessibility()V

    return-void
.end method

.method public smoothCloseRightMenu()V
    .registers 2

    .line 446
    iget-object v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mSwipeRightHorizontal:Lcom/transsion/widgetslib/view/swipmenu/RightHorizontal;

    if-eqz v0, :cond_9

    .line 447
    iput-object v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mSwipeCurrentHorizontal:Lcom/transsion/widgetslib/view/swipmenu/Horizontal;

    .line 448
    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->smoothCloseMenu()V

    :cond_9
    return-void
.end method

.method public smoothOpenLeftMenu()V
    .registers 2

    .line 361
    iget v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mScrollerDuration:I

    invoke-virtual {p0, v0}, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->smoothOpenLeftMenu(I)V

    return-void
.end method

.method public smoothOpenLeftMenu(I)V
    .registers 3

    .line 371
    iget-object v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mSwipeLeftHorizontal:Lcom/transsion/widgetslib/view/swipmenu/LeftHorizontal;

    if-eqz v0, :cond_9

    .line 372
    iput-object v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mSwipeCurrentHorizontal:Lcom/transsion/widgetslib/view/swipmenu/Horizontal;

    .line 373
    invoke-direct {p0, p1}, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->smoothOpenMenu(I)V

    :cond_9
    return-void
.end method

.method public smoothOpenMenu()V
    .registers 2

    .line 356
    iget v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mScrollerDuration:I

    invoke-direct {p0, v0}, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->smoothOpenMenu(I)V

    return-void
.end method

.method public smoothOpenRightMenu()V
    .registers 2

    .line 366
    iget v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mScrollerDuration:I

    invoke-virtual {p0, v0}, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->smoothOpenRightMenu(I)V

    return-void
.end method

.method public smoothOpenRightMenu(I)V
    .registers 3

    .line 379
    iget-object v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mSwipeRightHorizontal:Lcom/transsion/widgetslib/view/swipmenu/RightHorizontal;

    if-eqz v0, :cond_9

    .line 380
    iput-object v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mSwipeCurrentHorizontal:Lcom/transsion/widgetslib/view/swipmenu/Horizontal;

    .line 381
    invoke-direct {p0, p1}, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->smoothOpenMenu(I)V

    :cond_9
    return-void
.end method

.method public smoothRemoveItem(II)V
    .registers 6

    .line 398
    iget-object v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mContentView:Landroid/view/View;

    if-eqz v0, :cond_8

    const/4 v1, 0x0

    .line 399
    invoke-virtual {v0, v1}, Landroid/view/View;->setLongClickable(Z)V

    .line 401
    :cond_8
    iget-object v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mSwipeCurrentHorizontal:Lcom/transsion/widgetslib/view/swipmenu/Horizontal;

    if-eqz v0, :cond_18

    .line 402
    iget-object v1, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mScroller:Lcom/transsion/widgetslib/view/swipmenu/OverScroller;

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v2

    invoke-virtual {v0, v1, p2, v2, p1}, Lcom/transsion/widgetslib/view/swipmenu/Horizontal;->autoRemoveItem(Lcom/transsion/widgetslib/view/swipmenu/OverScroller;III)V

    .line 403
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 405
    :cond_18
    iget-object p0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mIFlashCallPlay:Lcom/transsion/widgetslib/view/swipmenu/IFlashCallPlay;

    if-eqz p0, :cond_20

    const/4 p1, 0x1

    .line 406
    invoke-interface {p0, p1}, Lcom/transsion/widgetslib/view/swipmenu/IFlashCallPlay;->onPlayStatus(Z)V

    :cond_20
    const/4 p0, 0x0

    .line 408
    sput-object p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mViewCache:Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;

    return-void
.end method

.method public smoothRestoreItem(I)V
    .registers 6

    .line 467
    iget-object v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mContentView:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 468
    invoke-virtual {v0, v1}, Landroid/view/View;->setLongClickable(Z)V

    .line 471
    :cond_8
    iget-object v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mSwipeCurrentHorizontal:Lcom/transsion/widgetslib/view/swipmenu/Horizontal;

    if-eqz v0, :cond_18

    .line 472
    iget-object v2, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mScroller:Lcom/transsion/widgetslib/view/swipmenu/OverScroller;

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v3

    invoke-virtual {v0, v2, v3, p1}, Lcom/transsion/widgetslib/view/swipmenu/Horizontal;->autoRestoreItem(Lcom/transsion/widgetslib/view/swipmenu/OverScroller;II)V

    .line 473
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 475
    :cond_18
    iget-object p0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mIFlashCallPlay:Lcom/transsion/widgetslib/view/swipmenu/IFlashCallPlay;

    if-eqz p0, :cond_1f

    .line 476
    invoke-interface {p0, v1}, Lcom/transsion/widgetslib/view/swipmenu/IFlashCallPlay;->onPlayStatus(Z)V

    :cond_1f
    const/4 p0, 0x0

    .line 478
    sput-object p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mViewCache:Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;

    return-void
.end method

.method public switchMotionEventType(Landroid/view/MotionEvent;)V
    .registers 3

    .line 659
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p0

    const/4 v0, 0x3

    if-eq p0, v0, :cond_22

    const/4 v0, 0x7

    if-eq p0, v0, :cond_1d

    const/16 v0, 0x9

    if-eq p0, v0, :cond_18

    const/16 v0, 0xa

    if-eq p0, v0, :cond_13

    return-void

    :cond_13
    const/4 p0, 0x1

    .line 668
    invoke-virtual {p1, p0}, Landroid/view/MotionEvent;->setAction(I)V

    return-void

    :cond_18
    const/4 p0, 0x0

    .line 662
    invoke-virtual {p1, p0}, Landroid/view/MotionEvent;->setAction(I)V

    return-void

    :cond_1d
    const/4 p0, 0x2

    .line 665
    invoke-virtual {p1, p0}, Landroid/view/MotionEvent;->setAction(I)V

    return-void

    .line 671
    :cond_22
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->setAction(I)V

    return-void
.end method

.method protected updateMinAndMaxScrollX()V
    .registers 2

    .line 1545
    iget-boolean v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->isRtlSwipe:Z

    if-eqz v0, :cond_b

    .line 1546
    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->computeMinScroll()I

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mMinScroll:I

    goto :goto_12

    .line 1548
    :cond_b
    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->computeMaxScroll()I

    move-result v0

    neg-int v0, v0

    iput v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mMinScroll:I

    .line 1550
    :goto_12
    iget-boolean v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->isRtlSwipe:Z

    if-eqz v0, :cond_1d

    .line 1551
    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->computeMaxScroll()I

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mMaxScroll:I

    return-void

    .line 1553
    :cond_1d
    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->computeMinScroll()I

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mMaxScroll:I

    return-void
.end method
