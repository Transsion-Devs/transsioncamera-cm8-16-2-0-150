.class public Lcom/transsion/widgetslib/widget/tablayout/TabLayout;
.super Landroid/widget/HorizontalScrollView;
.source "SourceFile"


# annotations
.annotation runtime Landroidx/viewpager/widget/ViewPager$DecorView;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/widgetslib/widget/tablayout/TabLayout$AdapterChangeListener;,
        Lcom/transsion/widgetslib/widget/tablayout/TabLayout$PagerAdapterObserver;,
        Lcom/transsion/widgetslib/widget/tablayout/TabLayout$ViewPagerOnTabSelectedListener;,
        Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabLayoutOnPageChangeListener;,
        Lcom/transsion/widgetslib/widget/tablayout/TabLayout$SlidingTabIndicator;,
        Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;,
        Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;,
        Lcom/transsion/widgetslib/widget/tablayout/TabLayout$BaseOnTabSelectedListener;,
        Lcom/transsion/widgetslib/widget/tablayout/TabLayout$OnTabSelectedListener;,
        Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabIndicatorGravity;,
        Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabGravity;,
        Lcom/transsion/widgetslib/widget/tablayout/TabLayout$LabelVisibility;,
        Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Mode;
    }
.end annotation


# static fields
.field private static final ANIMATION_DURATION:I = 0xfa

.field static final DEFAULT_GAP_TEXT_ICON:I = 0x8

.field private static final DEFAULT_HEIGHT:I = 0x38

.field private static final DEFAULT_HEIGHT_SECOND_PAGE:I = 0x36

.field private static final DEFAULT_HEIGHT_SECOND_PAGE_SECOND_HOME:I = 0x90

.field private static final DEFAULT_HEIGHT_WITH_TEXT_ICON:I = 0x48

.field static final FIXED_WRAP_GUTTER_MIN:I = 0x10

.field public static final GRAVITY_CENTER:I = 0x1

.field public static final GRAVITY_FILL:I = 0x0

.field public static final GRAVITY_START:I = 0x2

.field public static final INDICATOR_GRAVITY_BOTTOM:I = 0x0

.field public static final INDICATOR_GRAVITY_CENTER:I = 0x1

.field public static final INDICATOR_GRAVITY_STRETCH:I = 0x3

.field public static final INDICATOR_GRAVITY_TOP:I = 0x2

.field private static final INVALID_WIDTH:I = -0x1

.field private static final LOG_TAG:Ljava/lang/String; = "TabLayout"

.field private static final MIN_INDICATOR_WIDTH:I = 0x18

.field public static final MODE_AUTO:I = 0x2

.field public static final MODE_FIXED:I = 0x1

.field public static final MODE_SCROLLABLE:I = 0x0

.field public static final TAB_LABEL_VISIBILITY_LABELED:I = 0x1

.field public static final TAB_LABEL_VISIBILITY_UNLABELED:I = 0x0

.field private static final TAB_MIN_WIDTH_MARGIN:I = 0x38

.field private static final tabPool:Landroidx/core/util/Pools$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/core/util/Pools$Pool;"
        }
    .end annotation
.end field


# instance fields
.field private TAG:Ljava/lang/String;

.field private adapterChangeListener:Lcom/transsion/widgetslib/widget/tablayout/TabLayout$AdapterChangeListener;

.field private contentInsetStart:I

.field private currentVpSelectedListener:Lcom/transsion/widgetslib/widget/tablayout/TabLayout$BaseOnTabSelectedListener;

.field inlineLabel:Z

.field private mAttrs:Landroid/util/AttributeSet;

.field private mDefStyleAttr:I

.field private mDefaultHeight:I

.field private mHavePressEffect:Z

.field private mIOverScrollDecor:Lcom/transsion/effectengine/bounceeffect/IOverScrollDecor;

.field private mIsFirstLevelTab:Z

.field private mIsFixPadding:Z

.field private mOSTabLayout:Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;

.field mode:I

.field private pageChangeListener:Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabLayoutOnPageChangeListener;

.field private pagerAdapter:Landroidx/viewpager/widget/PagerAdapter;

.field private pagerAdapterObserver:Landroid/database/DataSetObserver;

.field private final requestedTabMaxWidth:I

.field private final requestedTabMinWidth:I

.field private scrollAnimator:Landroid/animation/ValueAnimator;

.field private final scrollableTabMinWidth:I

.field private selectedListener:Lcom/transsion/widgetslib/widget/tablayout/TabLayout$BaseOnTabSelectedListener;

.field private final selectedListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/transsion/widgetslib/widget/tablayout/TabLayout$BaseOnTabSelectedListener;",
            ">;"
        }
    .end annotation
.end field

.field private selectedTab:Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;

.field private setupViewPagerImplicitly:Z

.field final slidingTabIndicator:Lcom/transsion/widgetslib/widget/tablayout/TabLayout$SlidingTabIndicator;

.field final tabBackgroundResId:I

.field tabGravity:I

.field tabIndicatorAnimationDuration:I

.field tabIndicatorFullWidth:Z

.field tabIndicatorGravity:I

.field tabMaxWidth:I

.field tabPaddingBottom:I

.field tabPaddingEnd:I

.field tabPaddingStart:I

.field tabPaddingTop:I

.field tabRippleColorStateList:Landroid/content/res/ColorStateList;

.field tabSelectedIndicator:Landroid/graphics/drawable/Drawable;

.field tabTextColors:Landroid/content/res/ColorStateList;

.field tabTextMultiLineSize:F

.field tabTextSize:F

.field private final tabViewContentBounds:Landroid/graphics/RectF;

.field private final tabViewPool:Landroidx/core/util/Pools$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/core/util/Pools$Pool;"
        }
    .end annotation
.end field

.field private final tabs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;",
            ">;"
        }
    .end annotation
.end field

.field unboundedRipple:Z

.field viewPager:Landroidx/viewpager/widget/ViewPager;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 201
    new-instance v0, Landroidx/core/util/Pools$SynchronizedPool;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroidx/core/util/Pools$SynchronizedPool;-><init>(I)V

    sput-object v0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->tabPool:Landroidx/core/util/Pools$Pool;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 486
    invoke-direct {p0, p1, v0}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    .line 490
    invoke-direct {p0, p1, p2, v0}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 9

    .line 494
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 170
    const-string p1, "TabLayout"

    iput-object p1, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->TAG:Ljava/lang/String;

    .line 411
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->tabs:Ljava/util/ArrayList;

    .line 415
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->tabViewContentBounds:Landroid/graphics/RectF;

    const p1, 0x7fffffff

    .line 437
    iput p1, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->tabMaxWidth:I

    .line 458
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->selectedListeners:Ljava/util/ArrayList;

    .line 481
    new-instance p1, Landroidx/core/util/Pools$SimplePool;

    const/16 v0, 0xc

    invoke-direct {p1, v0}, Landroidx/core/util/Pools$SimplePool;-><init>(I)V

    iput-object p1, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->tabViewPool:Landroidx/core/util/Pools$Pool;

    .line 496
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 497
    iput-object p2, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->mAttrs:Landroid/util/AttributeSet;

    .line 498
    iput p3, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->mDefStyleAttr:I

    const/4 v0, 0x0

    .line 500
    invoke-virtual {p0, v0}, Landroid/view/View;->setHorizontalScrollBarEnabled(Z)V

    .line 503
    new-instance v1, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$SlidingTabIndicator;

    invoke-direct {v1, p0, p1}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$SlidingTabIndicator;-><init>(Lcom/transsion/widgetslib/widget/tablayout/TabLayout;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->slidingTabIndicator:Lcom/transsion/widgetslib/widget/tablayout/TabLayout$SlidingTabIndicator;

    .line 504
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x2

    const/4 v4, -0x1

    invoke-direct {v2, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-super {p0, v1, v0, v2}, Landroid/widget/HorizontalScrollView;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 510
    sget-object v2, Lcom/transsion/widgetslib/R$styleable;->TabLayout:[I

    sget v3, Lcom/transsion/widgetslib/R$style;->OSTablayout:I

    invoke-virtual {p1, p2, v2, p3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 522
    sget p3, Lcom/transsion/widgetslib/R$styleable;->TabLayout_tabIndicatorHeight:I

    .line 523
    invoke-virtual {p2, p3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    .line 522
    invoke-virtual {v1, p3}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$SlidingTabIndicator;->setSelectedIndicatorHeight(I)V

    .line 524
    sget p3, Lcom/transsion/widgetslib/R$styleable;->TabLayout_tabIndicatorColor:I

    sget v2, Lcom/transsion/widgetslib/R$color;->os_platform_basic_color_hios:I

    .line 525
    invoke-virtual {p1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v2

    invoke-virtual {p2, p3, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    .line 524
    invoke-virtual {v1, p3}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$SlidingTabIndicator;->setSelectedIndicatorColor(I)V

    .line 526
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v2, Lcom/transsion/widgetslib/R$dimen;->os_tab_default_selected_indicator_radius:I

    invoke-virtual {p3, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p3

    invoke-virtual {v1, p3}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$SlidingTabIndicator;->setDefaultSelectedIndicatorRadius(I)V

    .line 527
    sget p3, Lcom/transsion/widgetslib/R$styleable;->TabLayout_tabIndicator:I

    .line 528
    invoke-static {p1, p2, p3}, Lcom/google/android/material/resources/MaterialResources;->getDrawable(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    .line 527
    invoke-virtual {p0, p3}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->setSelectedTabIndicator(Landroid/graphics/drawable/Drawable;)V

    .line 529
    sget p3, Lcom/transsion/widgetslib/R$styleable;->TabLayout_tabIndicatorGravity:I

    .line 530
    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p3

    .line 529
    invoke-virtual {p0, p3}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->setSelectedTabIndicatorGravity(I)V

    .line 531
    sget p3, Lcom/transsion/widgetslib/R$styleable;->TabLayout_tabIndicatorFullWidth:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    invoke-virtual {p0, p3}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->setTabIndicatorFullWidth(Z)V

    .line 533
    invoke-direct {p0, p2}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->initPaddingParams(Landroid/content/res/TypedArray;)V

    .line 537
    sget p3, Lcom/transsion/widgetslib/R$styleable;->TabLayout_tabRippleColor:I

    .line 538
    invoke-static {p1, p2, p3}, Lcom/google/android/material/resources/MaterialResources;->getColorStateList(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->tabRippleColorStateList:Landroid/content/res/ColorStateList;

    const/16 p1, 0xfa

    .line 540
    iput p1, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->tabIndicatorAnimationDuration:I

    .line 542
    iput v4, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->requestedTabMinWidth:I

    .line 544
    sget p1, Lcom/transsion/widgetslib/R$styleable;->TabLayout_tabMaxWidth:I

    .line 545
    invoke-virtual {p2, p1, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    iput p1, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->requestedTabMaxWidth:I

    .line 546
    sget p1, Lcom/transsion/widgetslib/R$styleable;->TabLayout_tabBackground:I

    .line 547
    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p1

    iput p1, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->tabBackgroundResId:I

    .line 548
    iput v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->contentInsetStart:I

    .line 553
    sget p1, Lcom/transsion/widgetslib/R$styleable;->TabLayout_OsTabMode:I

    const/4 p3, 0x1

    invoke-virtual {p2, p1, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    iput p1, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->mode:I

    .line 554
    sget p1, Lcom/transsion/widgetslib/R$styleable;->TabLayout_OsTabGravity:I

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    iput p1, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->tabGravity:I

    .line 555
    sget p1, Lcom/transsion/widgetslib/R$styleable;->TabLayout_tabInlineLabel:I

    invoke-virtual {p2, p1, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->inlineLabel:Z

    .line 556
    sget p1, Lcom/transsion/widgetslib/R$styleable;->TabLayout_tabUnboundedRipple:I

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->unboundedRipple:Z

    .line 557
    sget p1, Lcom/transsion/widgetslib/R$styleable;->TabLayout_scrollableTabMinWidth:I

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    iput p1, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->scrollableTabMinWidth:I

    .line 558
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 560
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->applyModeAndGravity()V

    .line 561
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->initScrollPaddingParams()V

    .line 562
    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->getTabMode()I

    move-result p1

    if-nez p1, :cond_ed

    .line 563
    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->enableOverScroll()V

    :cond_ed
    return-void
.end method

.method static synthetic access$1000(Lcom/transsion/widgetslib/widget/tablayout/TabLayout;)Z
    .registers 1

    .line 168
    iget-boolean p0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->mHavePressEffect:Z

    return p0
.end method

.method static synthetic access$1300(Lcom/transsion/widgetslib/widget/tablayout/TabLayout;)Landroid/graphics/RectF;
    .registers 1

    .line 168
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->tabViewContentBounds:Landroid/graphics/RectF;

    return-object p0
.end method

.method static synthetic access$900(Lcom/transsion/widgetslib/widget/tablayout/TabLayout;)Z
    .registers 1

    .line 168
    iget-boolean p0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->mIsFirstLevelTab:Z

    return p0
.end method

.method private addTabFromItemView(Lcom/transsion/widgetslib/widget/tablayout/TabItem;)V
    .registers 4

    .line 772
    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->newTab()Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;

    move-result-object v0

    .line 773
    iget-object v1, p1, Lcom/transsion/widgetslib/widget/tablayout/TabItem;->text:Ljava/lang/CharSequence;

    if-eqz v1, :cond_b

    .line 774
    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;->setText(Ljava/lang/CharSequence;)Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;

    .line 776
    :cond_b
    iget-object v1, p1, Lcom/transsion/widgetslib/widget/tablayout/TabItem;->icon:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_12

    .line 777
    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;->setIcon(Landroid/graphics/drawable/Drawable;)Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;

    .line 779
    :cond_12
    iget v1, p1, Lcom/transsion/widgetslib/widget/tablayout/TabItem;->customLayout:I

    if-eqz v1, :cond_19

    .line 780
    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;->setCustomView(I)Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;

    .line 782
    :cond_19
    invoke-virtual {p1}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2a

    .line 783
    invoke-virtual {p1}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;->setContentDescription(Ljava/lang/CharSequence;)Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;

    .line 785
    :cond_2a
    invoke-virtual {p0, v0}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->addTab(Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;)V

    return-void
.end method

.method private addTabView(Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;)V
    .registers 4

    .line 1509
    iget-object v0, p1, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;->view:Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;

    const/4 v1, 0x0

    .line 1510
    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->setSelected(Z)V

    .line 1511
    invoke-virtual {v0, v1}, Landroid/view/View;->setActivated(Z)V

    .line 1512
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->slidingTabIndicator:Lcom/transsion/widgetslib/widget/tablayout/TabLayout$SlidingTabIndicator;

    invoke-virtual {p1}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;->getPosition()I

    move-result p1

    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->createLayoutParamsForTabs()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object p0

    invoke-virtual {v1, v0, p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private addViewInternal(Landroid/view/View;)V
    .registers 3

    .line 1536
    instance-of v0, p1, Lcom/transsion/widgetslib/widget/tablayout/TabItem;

    if-eqz v0, :cond_a

    .line 1537
    check-cast p1, Lcom/transsion/widgetslib/widget/tablayout/TabItem;

    invoke-direct {p0, p1}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->addTabFromItemView(Lcom/transsion/widgetslib/widget/tablayout/TabItem;)V

    return-void

    .line 1539
    :cond_a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Only TabItem instances can be added to TabLayout"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private animateToTab(I)V
    .registers 5

    const/4 v0, -0x1

    if-ne p1, v0, :cond_4

    return-void

    .line 1684
    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3d

    .line 1685
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->isLaidOut(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_3d

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->slidingTabIndicator:Lcom/transsion/widgetslib/widget/tablayout/TabLayout$SlidingTabIndicator;

    .line 1686
    invoke-virtual {v0}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$SlidingTabIndicator;->childrenNeedLayout()Z

    move-result v0

    if-eqz v0, :cond_1a

    goto :goto_3d

    .line 1693
    :cond_1a
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v0

    .line 1694
    invoke-direct {p0, p1, v1}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->calculateScrollXForTab(IF)I

    move-result v1

    if-eq v0, v1, :cond_35

    .line 1697
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->ensureScrollAnimator()V

    .line 1699
    iget-object v2, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->scrollAnimator:Landroid/animation/ValueAnimator;

    filled-new-array {v0, v1}, [I

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    .line 1700
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->scrollAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 1704
    :cond_35
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->slidingTabIndicator:Lcom/transsion/widgetslib/widget/tablayout/TabLayout$SlidingTabIndicator;

    iget p0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->tabIndicatorAnimationDuration:I

    invoke-virtual {v0, p1, p0}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$SlidingTabIndicator;->animateIndicatorToPosition(II)V

    return-void

    :cond_3d
    :goto_3d
    const/4 v0, 0x1

    .line 1689
    invoke-virtual {p0, p1, v1, v0}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->setScrollPosition(IFZ)V

    return-void
.end method

.method private applyGravityForModeScrollable(I)V
    .registers 3

    if-eqz p1, :cond_f

    const/4 v0, 0x1

    if-eq p1, v0, :cond_9

    const/4 v0, 0x2

    if-eq p1, v0, :cond_16

    return-void

    .line 1865
    :cond_9
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->slidingTabIndicator:Lcom/transsion/widgetslib/widget/tablayout/TabLayout$SlidingTabIndicator;

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    return-void

    .line 1868
    :cond_f
    const-string p1, "TabLayout"

    const-string v0, "MODE_SCROLLABLE + GRAVITY_FILL is not supported, GRAVITY_START will be used instead"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1874
    :cond_16
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->slidingTabIndicator:Lcom/transsion/widgetslib/widget/tablayout/TabLayout$SlidingTabIndicator;

    const p1, 0x800003

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setGravity(I)V

    return-void
.end method

.method private applyModeAndGravity()V
    .registers 5

    .line 1837
    iget v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->mode:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eqz v0, :cond_b

    if-ne v0, v1, :cond_9

    goto :goto_b

    :cond_9
    move v0, v2

    goto :goto_14

    .line 1839
    :cond_b
    :goto_b
    iget v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->contentInsetStart:I

    iget v3, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->tabPaddingStart:I

    sub-int/2addr v0, v3

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1841
    :goto_14
    iget-object v3, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->slidingTabIndicator:Lcom/transsion/widgetslib/widget/tablayout/TabLayout$SlidingTabIndicator;

    invoke-static {v3, v0, v2, v2, v2}, Landroidx/core/view/ViewCompat;->setPaddingRelative(Landroid/view/View;IIII)V

    .line 1843
    iget v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->mode:I

    const/4 v2, 0x1

    if-eqz v0, :cond_34

    if-eq v0, v2, :cond_23

    if-eq v0, v1, :cond_23

    goto :goto_39

    .line 1846
    :cond_23
    iget v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->tabGravity:I

    if-ne v0, v1, :cond_2e

    .line 1847
    const-string v0, "TabLayout"

    const-string v1, "GRAVITY_START is not supported with the current tab mode, GRAVITY_CENTER will be used instead"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1852
    :cond_2e
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->slidingTabIndicator:Lcom/transsion/widgetslib/widget/tablayout/TabLayout$SlidingTabIndicator;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    goto :goto_39

    .line 1855
    :cond_34
    iget v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->tabGravity:I

    invoke-direct {p0, v0}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->applyGravityForModeScrollable(I)V

    .line 1859
    :goto_39
    invoke-virtual {p0, v2}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->updateTabViews(Z)V

    return-void
.end method

.method private calculateScrollXForTab(IF)I
    .registers 7

    .line 1814
    iget v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->mode:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-eqz v0, :cond_a

    if-ne v0, v2, :cond_9

    goto :goto_a

    :cond_9
    return v1

    .line 1815
    :cond_a
    :goto_a
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->slidingTabIndicator:Lcom/transsion/widgetslib/widget/tablayout/TabLayout$SlidingTabIndicator;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    add-int/lit8 p1, p1, 0x1

    .line 1817
    iget-object v3, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->slidingTabIndicator:Lcom/transsion/widgetslib/widget/tablayout/TabLayout$SlidingTabIndicator;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge p1, v3, :cond_21

    .line 1818
    iget-object v3, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->slidingTabIndicator:Lcom/transsion/widgetslib/widget/tablayout/TabLayout$SlidingTabIndicator;

    invoke-virtual {v3, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    goto :goto_22

    :cond_21
    const/4 p1, 0x0

    :goto_22
    if-eqz v0, :cond_29

    .line 1820
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v3

    goto :goto_2a

    :cond_29
    move v3, v1

    :goto_2a
    if-eqz p1, :cond_30

    .line 1821
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 1824
    :cond_30
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result p1

    div-int/lit8 v0, v3, 0x2

    add-int/2addr p1, v0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    div-int/2addr v0, v2

    sub-int/2addr p1, v0

    add-int/2addr v3, v1

    int-to-float v0, v3

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v0, v1

    mul-float/2addr v0, p2

    float-to-int p2, v0

    .line 1828
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result p0

    if-nez p0, :cond_4c

    add-int/2addr p1, p2

    return p1

    :cond_4c
    sub-int/2addr p1, p2

    return p1
.end method

.method private configureTab(Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;I)V
    .registers 4

    .line 1499
    invoke-virtual {p1, p2}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;->setPosition(I)V

    .line 1500
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v0, p2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1502
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->tabs:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    :goto_e
    add-int/lit8 p2, p2, 0x1

    if-ge p2, p1, :cond_1e

    .line 1504
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;

    invoke-virtual {v0, p2}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;->setPosition(I)V

    goto :goto_e

    :cond_1e
    return-void
.end method

.method private static createColorStateList(II)Landroid/content/res/ColorStateList;
    .registers 6

    const/4 v0, 0x2

    .line 3472
    new-array v1, v0, [[I

    .line 3473
    new-array v0, v0, [I

    .line 3476
    sget-object v2, Landroid/widget/HorizontalScrollView;->SELECTED_STATE_SET:[I

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 3477
    aput p1, v0, v3

    .line 3481
    sget-object p1, Landroid/widget/HorizontalScrollView;->EMPTY_STATE_SET:[I

    const/4 v2, 0x1

    aput-object p1, v1, v2

    .line 3482
    aput p0, v0, v2

    .line 3484
    new-instance p0, Landroid/content/res/ColorStateList;

    invoke-direct {p0, v1, v0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object p0
.end method

.method private static createColorStateList(III)Landroid/content/res/ColorStateList;
    .registers 7

    const/4 v0, 0x3

    .line 3451
    new-array v1, v0, [[I

    .line 3452
    new-array v0, v0, [I

    .line 3455
    sget-object v2, Landroid/widget/HorizontalScrollView;->SELECTED_STATE_SET:[I

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 3456
    aput p1, v0, v3

    .line 3459
    sget-object p1, Landroid/widget/HorizontalScrollView;->PRESSED_STATE_SET:[I

    const/4 v2, 0x1

    aput-object p1, v1, v2

    .line 3460
    aput p2, v0, v2

    .line 3464
    sget-object p1, Landroid/widget/HorizontalScrollView;->EMPTY_STATE_SET:[I

    const/4 p2, 0x2

    aput-object p1, v1, p2

    .line 3465
    aput p0, v0, p2

    .line 3467
    new-instance p0, Landroid/content/res/ColorStateList;

    invoke-direct {p0, v1, v0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object p0
.end method

.method private createLayoutParamsForTabs()Landroid/widget/LinearLayout$LayoutParams;
    .registers 4

    .line 1545
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1547
    invoke-direct {p0, v0}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->updateTabViewLayoutParams(Landroid/widget/LinearLayout$LayoutParams;)V

    return-object v0
.end method

.method private createTabView(Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;)Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;
    .registers 4

    .line 1483
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->tabViewPool:Landroidx/core/util/Pools$Pool;

    if-eqz v0, :cond_b

    invoke-interface {v0}, Landroidx/core/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    if-nez v0, :cond_17

    .line 1485
    new-instance v0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;-><init>(Lcom/transsion/widgetslib/widget/tablayout/TabLayout;Landroid/content/Context;)V

    .line 1487
    :cond_17
    invoke-virtual {v0, p1}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->setTab(Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;)V

    const/4 v1, 0x1

    .line 1488
    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 1489
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->getTabMinWidth()I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/view/View;->setMinimumWidth(I)V

    .line 1490
    # getter for: Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;->contentDesc:Ljava/lang/CharSequence;
    invoke-static {p1}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;->access$000(Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_37

    .line 1491
    # getter for: Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;->text:Ljava/lang/CharSequence;
    invoke-static {p1}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;->access$100(Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    return-object v0

    .line 1493
    :cond_37
    # getter for: Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;->contentDesc:Ljava/lang/CharSequence;
    invoke-static {p1}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;->access$000(Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method private dispatchTabReselected(Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;)V
    .registers 4

    .line 1808
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->selectedListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_18

    .line 1809
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->selectedListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$BaseOnTabSelectedListener;

    invoke-interface {v1, p1}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$BaseOnTabSelectedListener;->onTabReselected(Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_18
    return-void
.end method

.method private dispatchTabSelected(Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;)V
    .registers 4

    .line 1796
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->selectedListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_18

    .line 1797
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->selectedListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$BaseOnTabSelectedListener;

    invoke-interface {v1, p1}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$BaseOnTabSelectedListener;->onTabSelected(Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_18
    return-void
.end method

.method private dispatchTabUnselected(Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;)V
    .registers 4

    .line 1802
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->selectedListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_18

    .line 1803
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->selectedListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$BaseOnTabSelectedListener;

    invoke-interface {v1, p1}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$BaseOnTabSelectedListener;->onTabUnselected(Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_18
    return-void
.end method

.method private ensureScrollAnimator()V
    .registers 4

    .line 1708
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->scrollAnimator:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_25

    .line 1709
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->scrollAnimator:Landroid/animation/ValueAnimator;

    .line 1710
    new-instance v1, Lcom/transsion/widgetslib/view/interpolators/OSEaseInQuadOutCurve1Interpolator;

    invoke-direct {v1}, Lcom/transsion/widgetslib/view/interpolators/OSEaseInQuadOutCurve1Interpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1711
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->scrollAnimator:Landroid/animation/ValueAnimator;

    iget v1, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->tabIndicatorAnimationDuration:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1712
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->scrollAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$1;

    invoke-direct {v1, p0}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$1;-><init>(Lcom/transsion/widgetslib/widget/tablayout/TabLayout;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    :cond_25
    return-void
.end method

.method private getDefaultHeight()I
    .registers 5

    .line 3490
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_39

    .line 3491
    iget-object v2, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;

    if-eqz v2, :cond_36

    .line 3492
    invoke-virtual {v2}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-eqz v3, :cond_36

    invoke-virtual {v2}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_36

    .line 3497
    iget-boolean v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->inlineLabel:Z

    if-nez v0, :cond_39

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    const/16 v0, 0x48

    invoke-static {p0, v0}, Lcom/google/android/material/internal/ViewUtils;->dpToPx(Landroid/content/Context;I)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    return p0

    :cond_36
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 3498
    :cond_39
    iget p0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->mDefaultHeight:I

    return p0
.end method

.method private getTabMinWidth()I
    .registers 3

    .line 3502
    iget v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->requestedTabMinWidth:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    return v0

    .line 3507
    :cond_6
    iget v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->mode:I

    if-eqz v0, :cond_10

    const/4 v1, 0x2

    if-ne v0, v1, :cond_e

    goto :goto_10

    :cond_e
    const/4 p0, 0x0

    return p0

    :cond_10
    :goto_10
    iget p0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->scrollableTabMinWidth:I

    return p0
.end method

.method private getTabScrollRange()I
    .registers 3

    .line 1432
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->slidingTabIndicator:Lcom/transsion/widgetslib/widget/tablayout/TabLayout$SlidingTabIndicator;

    .line 1433
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result p0

    sub-int/2addr v0, p0

    const/4 p0, 0x0

    .line 1432
    invoke-static {p0, v0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method private initPaddingParams(Landroid/content/res/TypedArray;)V
    .registers 5

    if-eqz p1, :cond_44

    .line 568
    iget-boolean v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->mIsFixPadding:Z

    if-eqz v0, :cond_7

    goto :goto_44

    .line 571
    :cond_7
    sget v0, Lcom/transsion/widgetslib/R$styleable;->TabLayout_tabPadding:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->tabPaddingBottom:I

    iput v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->tabPaddingTop:I

    iput v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->tabPaddingEnd:I

    iput v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->tabPaddingStart:I

    .line 573
    sget v2, Lcom/transsion/widgetslib/R$styleable;->TabLayout_tabPaddingStart:I

    .line 574
    invoke-virtual {p1, v2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->tabPaddingStart:I

    .line 575
    sget v0, Lcom/transsion/widgetslib/R$styleable;->TabLayout_tabPaddingTop:I

    iget v2, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->tabPaddingTop:I

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->tabPaddingTop:I

    .line 576
    sget v0, Lcom/transsion/widgetslib/R$styleable;->TabLayout_tabPaddingEnd:I

    iget v2, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->tabPaddingEnd:I

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->tabPaddingEnd:I

    .line 577
    sget v0, Lcom/transsion/widgetslib/R$styleable;->TabLayout_tabPaddingBottom:I

    iget v2, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->tabPaddingBottom:I

    .line 578
    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->tabPaddingBottom:I

    .line 579
    sget v0, Lcom/transsion/widgetslib/R$styleable;->TabLayout_isFixPadding:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->mIsFixPadding:Z

    :cond_44
    :goto_44
    return-void
.end method

.method private initScrollPaddingParams()V
    .registers 3

    .line 583
    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->getTabMode()I

    move-result v0

    if-nez v0, :cond_18

    .line 584
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/widgetslib/R$dimen;->os_tab_item_scroll_padding_start:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->tabPaddingEnd:I

    iput v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->tabPaddingStart:I

    :cond_18
    return-void
.end method

.method private removeTabViewAt(I)V
    .registers 4

    .line 1670
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->slidingTabIndicator:Lcom/transsion/widgetslib/widget/tablayout/TabLayout$SlidingTabIndicator;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;

    .line 1671
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->slidingTabIndicator:Lcom/transsion/widgetslib/widget/tablayout/TabLayout$SlidingTabIndicator;

    invoke-virtual {v1, p1}, Landroid/view/ViewGroup;->removeViewAt(I)V

    if-eqz v0, :cond_17

    .line 1673
    invoke-virtual {v0}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->reset()V

    .line 1674
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->tabViewPool:Landroidx/core/util/Pools$Pool;

    invoke-interface {p1, v0}, Landroidx/core/util/Pools$Pool;->release(Ljava/lang/Object;)Z

    .line 1676
    :cond_17
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method private setSelectedTabView(I)V
    .registers 8

    .line 1733
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->slidingTabIndicator:Lcom/transsion/widgetslib/widget/tablayout/TabLayout$SlidingTabIndicator;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge p1, v0, :cond_25

    const/4 v1, 0x0

    move v2, v1

    :goto_a
    if-ge v2, v0, :cond_25

    .line 1736
    iget-object v3, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->slidingTabIndicator:Lcom/transsion/widgetslib/widget/tablayout/TabLayout$SlidingTabIndicator;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x1

    if-ne v2, p1, :cond_17

    move v5, v4

    goto :goto_18

    :cond_17
    move v5, v1

    .line 1737
    :goto_18
    invoke-virtual {v3, v5}, Landroid/view/View;->setSelected(Z)V

    if-ne v2, p1, :cond_1e

    goto :goto_1f

    :cond_1e
    move v4, v1

    .line 1738
    :goto_1f
    invoke-virtual {v3, v4}, Landroid/view/View;->setActivated(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_25
    return-void
.end method

.method private setTextAppearance()V
    .registers 4

    .line 603
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    .line 604
    iget-boolean v1, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->mIsFirstLevelTab:Z

    if-eqz v1, :cond_33

    .line 605
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/widgetslib/R$dimen;->os_tab_first_level_title_size:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->tabTextSize:F

    .line 606
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/widgetslib/R$dimen;->os_tab_first_level_title_size:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->tabTextMultiLineSize:F

    .line 608
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/widgetslib/R$color;->os_text_tertiary_hios:I

    invoke-virtual {v1, v2, v0}, Landroid/content/res/Resources;->getColorStateList(ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->tabTextColors:Landroid/content/res/ColorStateList;

    goto :goto_59

    .line 610
    :cond_33
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/widgetslib/R$dimen;->os_tab_second_level_title_size:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->tabTextSize:F

    .line 611
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/widgetslib/R$dimen;->os_tab_second_level_title_size:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->tabTextMultiLineSize:F

    .line 612
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/widgetslib/R$color;->os_text_tertiary_hios:I

    invoke-virtual {v1, v2, v0}, Landroid/content/res/Resources;->getColorStateList(ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->tabTextColors:Landroid/content/res/ColorStateList;

    .line 616
    :goto_59
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/transsion/widgetslib/R$attr;->os_text_primary:I

    sget v2, Lcom/transsion/widgetslib/R$color;->os_text_primary_hios:I

    invoke-static {v0, v1, v2}, Lcom/transsion/widgetslib/util/Utils;->getAttrColor(Landroid/content/Context;II)I

    move-result v0

    .line 617
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/transsion/widgetslib/R$color;->os_text_secondary_press_color:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    .line 618
    iget-object v2, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->tabTextColors:Landroid/content/res/ColorStateList;

    invoke-virtual {v2}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v2

    invoke-static {v2, v0, v1}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->createColorStateList(III)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->tabTextColors:Landroid/content/res/ColorStateList;

    return-void
.end method

.method private setupWithViewPager(Landroidx/viewpager/widget/ViewPager;ZZ)V
    .registers 6

    .line 1330
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->viewPager:Landroidx/viewpager/widget/ViewPager;

    if-eqz v0, :cond_14

    .line 1332
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->pageChangeListener:Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabLayoutOnPageChangeListener;

    if-eqz v1, :cond_b

    .line 1333
    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->removeOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 1335
    :cond_b
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->adapterChangeListener:Lcom/transsion/widgetslib/widget/tablayout/TabLayout$AdapterChangeListener;

    if-eqz v0, :cond_14

    .line 1336
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->viewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v1, v0}, Landroidx/viewpager/widget/ViewPager;->removeOnAdapterChangeListener(Landroidx/viewpager/widget/ViewPager$OnAdapterChangeListener;)V

    .line 1340
    :cond_14
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->currentVpSelectedListener:Lcom/transsion/widgetslib/widget/tablayout/TabLayout$BaseOnTabSelectedListener;

    const/4 v1, 0x0

    if-eqz v0, :cond_1e

    .line 1342
    invoke-virtual {p0, v0}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->removeOnTabSelectedListener(Lcom/transsion/widgetslib/widget/tablayout/TabLayout$BaseOnTabSelectedListener;)V

    .line 1343
    iput-object v1, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->currentVpSelectedListener:Lcom/transsion/widgetslib/widget/tablayout/TabLayout$BaseOnTabSelectedListener;

    :cond_1e
    if-eqz p1, :cond_69

    .line 1347
    iput-object p1, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->viewPager:Landroidx/viewpager/widget/ViewPager;

    .line 1350
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->pageChangeListener:Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabLayoutOnPageChangeListener;

    if-nez v0, :cond_2d

    .line 1351
    new-instance v0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabLayoutOnPageChangeListener;

    invoke-direct {v0, p0}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabLayoutOnPageChangeListener;-><init>(Lcom/transsion/widgetslib/widget/tablayout/TabLayout;)V

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->pageChangeListener:Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabLayoutOnPageChangeListener;

    .line 1353
    :cond_2d
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->pageChangeListener:Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabLayoutOnPageChangeListener;

    invoke-virtual {v0}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabLayoutOnPageChangeListener;->reset()V

    .line 1354
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->pageChangeListener:Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabLayoutOnPageChangeListener;

    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 1357
    new-instance v0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$ViewPagerOnTabSelectedListener;

    invoke-direct {v0, p1}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$ViewPagerOnTabSelectedListener;-><init>(Landroidx/viewpager/widget/ViewPager;)V

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->currentVpSelectedListener:Lcom/transsion/widgetslib/widget/tablayout/TabLayout$BaseOnTabSelectedListener;

    .line 1358
    invoke-virtual {p0, v0}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->addOnTabSelectedListener(Lcom/transsion/widgetslib/widget/tablayout/TabLayout$BaseOnTabSelectedListener;)V

    .line 1360
    invoke-virtual {p1}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v0

    if-eqz v0, :cond_4a

    .line 1364
    invoke-virtual {p0, v0, p2}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->setPagerAdapter(Landroidx/viewpager/widget/PagerAdapter;Z)V

    .line 1368
    :cond_4a
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->adapterChangeListener:Lcom/transsion/widgetslib/widget/tablayout/TabLayout$AdapterChangeListener;

    if-nez v0, :cond_55

    .line 1369
    new-instance v0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$AdapterChangeListener;

    invoke-direct {v0, p0}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$AdapterChangeListener;-><init>(Lcom/transsion/widgetslib/widget/tablayout/TabLayout;)V

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->adapterChangeListener:Lcom/transsion/widgetslib/widget/tablayout/TabLayout$AdapterChangeListener;

    .line 1371
    :cond_55
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->adapterChangeListener:Lcom/transsion/widgetslib/widget/tablayout/TabLayout$AdapterChangeListener;

    invoke-virtual {v0, p2}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$AdapterChangeListener;->setAutoRefresh(Z)V

    .line 1372
    iget-object p2, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->adapterChangeListener:Lcom/transsion/widgetslib/widget/tablayout/TabLayout$AdapterChangeListener;

    invoke-virtual {p1, p2}, Landroidx/viewpager/widget/ViewPager;->addOnAdapterChangeListener(Landroidx/viewpager/widget/ViewPager$OnAdapterChangeListener;)V

    .line 1375
    invoke-virtual {p1}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result p1

    const/4 p2, 0x0

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->setScrollPosition(IFZ)V

    goto :goto_6f

    .line 1379
    :cond_69
    iput-object v1, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->viewPager:Landroidx/viewpager/widget/ViewPager;

    const/4 p1, 0x0

    .line 1380
    invoke-virtual {p0, v1, p1}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->setPagerAdapter(Landroidx/viewpager/widget/PagerAdapter;Z)V

    .line 1383
    :goto_6f
    iput-boolean p3, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->setupViewPagerImplicitly:Z

    return-void
.end method

.method private updTabViewPadding()V
    .registers 7

    const/4 v0, 0x0

    .line 3706
    :goto_1
    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->getTabCount()I

    move-result v1

    if-ge v0, v1, :cond_1b

    .line 3707
    invoke-virtual {p0, v0}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->getTabAt(I)Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;

    move-result-object v1

    iget-object v1, v1, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;->view:Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;

    iget v2, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->tabPaddingStart:I

    iget v3, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->tabPaddingTop:I

    iget v4, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->tabPaddingEnd:I

    iget v5, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->tabPaddingBottom:I

    invoke-static {v1, v2, v3, v4, v5}, Landroidx/core/view/ViewCompat;->setPaddingRelative(Landroid/view/View;IIII)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1b
    return-void
.end method

.method private updateAllTabs()V
    .registers 4

    .line 1476
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_17

    .line 1477
    iget-object v2, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;

    invoke-virtual {v2}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;->updateView()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_17
    return-void
.end method

.method private updateTabViewLayoutParams(Landroid/widget/LinearLayout$LayoutParams;)V
    .registers 4

    .line 1552
    iget v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->mode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_11

    iget p0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->tabGravity:I

    if-nez p0, :cond_11

    const/4 p0, 0x0

    .line 1553
    iput p0, p1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const/high16 p0, 0x3f800000    # 1.0f

    .line 1554
    iput p0, p1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    return-void

    :cond_11
    const/4 p0, -0x2

    .line 1556
    iput p0, p1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const/4 p0, 0x0

    .line 1557
    iput p0, p1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    return-void
.end method


# virtual methods
.method public addOnTabSelectedListener(Lcom/transsion/widgetslib/widget/tablayout/TabLayout$BaseOnTabSelectedListener;)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 840
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->selectedListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 841
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->selectedListeners:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_d
    return-void
.end method

.method public addOnTabSelectedListener(Lcom/transsion/widgetslib/widget/tablayout/TabLayout$OnTabSelectedListener;)V
    .registers 2

    .line 825
    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->addOnTabSelectedListener(Lcom/transsion/widgetslib/widget/tablayout/TabLayout$BaseOnTabSelectedListener;)V

    return-void
.end method

.method public addTab(Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;)V
    .registers 3

    .line 725
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->addTab(Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;Z)V

    return-void
.end method

.method public addTab(Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;I)V
    .registers 4

    .line 736
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->addTab(Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;IZ)V

    return-void
.end method

.method public addTab(Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;IZ)V
    .registers 5

    .line 757
    iget-object v0, p1, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;->parent:Lcom/transsion/widgetslib/widget/tablayout/TabLayout;

    if-ne v0, p0, :cond_17

    .line 760
    invoke-direct {p0, p1, p2}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->configureTab(Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;I)V

    .line 761
    invoke-direct {p0, p1}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->addTabView(Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;)V

    if-eqz p3, :cond_f

    .line 764
    invoke-virtual {p1}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;->select()V

    .line 766
    :cond_f
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->mOSTabLayout:Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;

    if-eqz p0, :cond_16

    .line 767
    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;->handleInsets()Z

    :cond_16
    return-void

    .line 758
    :cond_17
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Tab belongs to a different TabLayout."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public addTab(Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;Z)V
    .registers 4

    .line 746
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p0, p1, v0, p2}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->addTab(Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;IZ)V

    return-void
.end method

.method public addView(Landroid/view/View;)V
    .registers 2

    .line 1517
    invoke-direct {p0, p1}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->addViewInternal(Landroid/view/View;)V

    return-void
.end method

.method public addView(Landroid/view/View;I)V
    .registers 3

    .line 1522
    invoke-direct {p0, p1}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->addViewInternal(Landroid/view/View;)V

    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .registers 4

    .line 1532
    invoke-direct {p0, p1}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->addViewInternal(Landroid/view/View;)V

    return-void
.end method

.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .registers 3

    .line 1527
    invoke-direct {p0, p1}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->addViewInternal(Landroid/view/View;)V

    return-void
.end method

.method public bindOSTabLayout(Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;)V
    .registers 2

    .line 239
    iput-object p1, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->mOSTabLayout:Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;

    return-void
.end method

.method public clearOnTabSelectedListeners()V
    .registers 1

    .line 871
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->selectedListeners:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method protected createTabFromPool()Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;
    .registers 1

    .line 891
    sget-object p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->tabPool:Landroidx/core/util/Pools$Pool;

    invoke-interface {p0}, Landroidx/core/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;

    if-nez p0, :cond_f

    .line 893
    new-instance p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;

    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;-><init>()V

    :cond_f
    return-object p0
.end method

.method public enableOverScroll()V
    .registers 2

    .line 3712
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->mIOverScrollDecor:Lcom/transsion/effectengine/bounceeffect/IOverScrollDecor;

    if-nez v0, :cond_b

    .line 3713
    invoke-static {p0}, Lcom/transsion/effectengine/bounceeffect/OverScrollDecorHelper;->setUpOverScroll(Landroid/widget/HorizontalScrollView;)Lcom/transsion/effectengine/bounceeffect/IOverScrollDecor;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->mIOverScrollDecor:Lcom/transsion/effectengine/bounceeffect/IOverScrollDecor;

    return-void

    .line 3715
    :cond_b
    invoke-interface {v0}, Lcom/transsion/effectengine/bounceeffect/IOverScrollDecor;->enable()V

    return-void
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .registers 2

    .line 167
    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/FrameLayout$LayoutParams;
    .registers 2

    .line 3516
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->generateDefaultLayoutParams()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method public getSelectedTabPosition()I
    .registers 1

    .line 926
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->selectedTab:Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;

    if-eqz p0, :cond_9

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;->getPosition()I

    move-result p0

    return p0

    :cond_9
    const/4 p0, -0x1

    return p0
.end method

.method public getTabAt(I)Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;
    .registers 3

    if-ltz p1, :cond_12

    .line 917
    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->getTabCount()I

    move-result v0

    if-lt p1, v0, :cond_9

    goto :goto_12

    :cond_9
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->tabs:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;

    return-object p0

    :cond_12
    :goto_12
    const/4 p0, 0x0

    return-object p0
.end method

.method public getTabCount()I
    .registers 1

    .line 909
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->tabs:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0
.end method

.method public getTabGravity()I
    .registers 1

    .line 1047
    iget p0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->tabGravity:I

    return p0
.end method

.method public getTabIndicatorGravity()I
    .registers 1

    .line 1080
    iget p0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->tabIndicatorGravity:I

    return p0
.end method

.method getTabMaxWidth()I
    .registers 1

    .line 3520
    iget p0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->tabMaxWidth:I

    return p0
.end method

.method public getTabMode()I
    .registers 1

    .line 1024
    iget p0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->mode:I

    return p0
.end method

.method public getTabPaddingBottom()I
    .registers 1

    .line 3694
    iget p0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->tabPaddingBottom:I

    return p0
.end method

.method public getTabPaddingEnd()I
    .registers 1

    .line 3690
    iget p0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->tabPaddingEnd:I

    return p0
.end method

.method public getTabPaddingStart()I
    .registers 1

    .line 3682
    iget p0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->tabPaddingStart:I

    return p0
.end method

.method public getTabPaddingTop()I
    .registers 1

    .line 3686
    iget p0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->tabPaddingTop:I

    return p0
.end method

.method public getTabTextColors()Landroid/content/res/ColorStateList;
    .registers 1

    .line 1219
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->tabTextColors:Landroid/content/res/ColorStateList;

    return-object p0
.end method

.method public getTabTextSize()F
    .registers 1

    .line 3734
    iget p0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->tabTextSize:F

    return p0
.end method

.method public hasUnboundedRipple()Z
    .registers 1

    .line 1199
    iget-boolean p0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->unboundedRipple:Z

    return p0
.end method

.method public isFirstLevelTab(Z)V
    .registers 4

    .line 590
    iput-boolean p1, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->mIsFirstLevelTab:Z

    .line 591
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->setTextAppearance()V

    .line 592
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 593
    iget-boolean v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->mIsFirstLevelTab:Z

    if-eqz v0, :cond_18

    sget v0, Lcom/transsion/widgetslib/R$dimen;->os_tab_default_height_first_level:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    goto :goto_1e

    .line 594
    :cond_18
    sget v0, Lcom/transsion/widgetslib/R$dimen;->os_tab_default_height_second_level:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    :goto_1e
    iput v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->mDefaultHeight:I

    .line 595
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->slidingTabIndicator:Lcom/transsion/widgetslib/widget/tablayout/TabLayout$SlidingTabIndicator;

    iget-boolean v1, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->mIsFirstLevelTab:Z

    if-eqz v1, :cond_29

    .line 596
    sget v1, Lcom/transsion/widgetslib/R$dimen;->os_tab_default_selected_bottom_offset_fl:I

    goto :goto_2b

    .line 597
    :cond_29
    sget v1, Lcom/transsion/widgetslib/R$dimen;->os_tab_default_selected_bottom_offset_sl:I

    .line 595
    :goto_2b
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$SlidingTabIndicator;->setSelectedIndicatorBottomOffset(I)V

    .line 598
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public isFixPadding()Z
    .registers 1

    .line 3726
    iget-boolean p0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->mIsFixPadding:Z

    return p0
.end method

.method public isInlineLabel()Z
    .registers 1

    .line 1155
    iget-boolean p0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->inlineLabel:Z

    return p0
.end method

.method public isTabIndicatorFullWidth()Z
    .registers 1

    .line 1112
    iget-boolean p0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->tabIndicatorFullWidth:Z

    return p0
.end method

.method public newTab()Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;
    .registers 2

    .line 883
    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->createTabFromPool()Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;

    move-result-object v0

    .line 884
    iput-object p0, v0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;->parent:Lcom/transsion/widgetslib/widget/tablayout/TabLayout;

    .line 885
    invoke-direct {p0, v0}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->createTabView(Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;)Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;

    move-result-object p0

    iput-object p0, v0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;->view:Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;

    return-object v0
.end method

.method protected onAttachedToWindow()V
    .registers 3

    .line 1404
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 1406
    invoke-static {p0}, Lcom/google/android/material/shape/MaterialShapeUtils;->setParentAbsoluteElevation(Landroid/view/View;)V

    .line 1408
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->viewPager:Landroidx/viewpager/widget/ViewPager;

    if-nez v0, :cond_18

    .line 1411
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 1412
    instance-of v1, v0, Landroidx/viewpager/widget/ViewPager;

    if-eqz v1, :cond_18

    .line 1415
    check-cast v0, Landroidx/viewpager/widget/ViewPager;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v1}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->setupWithViewPager(Landroidx/viewpager/widget/ViewPager;ZZ)V

    :cond_18
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 6

    .line 3670
    invoke-super {p0, p1}, Landroid/view/View;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 3671
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->mAttrs:Landroid/util/AttributeSet;

    if-eqz p1, :cond_23

    .line 3672
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->mAttrs:Landroid/util/AttributeSet;

    sget-object v1, Lcom/transsion/widgetslib/R$styleable;->TabLayout:[I

    iget v2, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->mDefStyleAttr:I

    sget v3, Lcom/transsion/widgetslib/R$style;->OSTablayout:I

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 3674
    invoke-direct {p0, p1}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->initPaddingParams(Landroid/content/res/TypedArray;)V

    .line 3675
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->initScrollPaddingParams()V

    .line 3676
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 3677
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->updTabViewPadding()V

    :cond_23
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    .line 1422
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 1424
    iget-boolean v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->setupViewPagerImplicitly:Z

    if-eqz v0, :cond_e

    const/4 v0, 0x0

    .line 1426
    invoke-virtual {p0, v0}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->setupWithViewPager(Landroidx/viewpager/widget/ViewPager;)V

    const/4 v0, 0x0

    .line 1427
    iput-boolean v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->setupViewPagerImplicitly:Z

    :cond_e
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 5

    const/4 v0, 0x0

    .line 1584
    :goto_1
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->slidingTabIndicator:Lcom/transsion/widgetslib/widget/tablayout/TabLayout$SlidingTabIndicator;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1b

    .line 1585
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->slidingTabIndicator:Lcom/transsion/widgetslib/widget/tablayout/TabLayout$SlidingTabIndicator;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1586
    instance-of v2, v1, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;

    if-eqz v2, :cond_18

    .line 1587
    check-cast v1, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;

    # invokes: Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->drawBackground(Landroid/graphics/Canvas;)V
    invoke-static {v1, p1}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->access$200(Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;Landroid/graphics/Canvas;)V

    :cond_18
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1591
    :cond_1b
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 4

    .line 1571
    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 1572
    invoke-static {p1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->wrap(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object p1

    .line 1576
    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->getTabCount()I

    move-result p0

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1574
    invoke-static {v1, p0, v0, v1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionInfoCompat;->obtain(IIZI)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionInfoCompat;

    move-result-object p0

    .line 1573
    invoke-virtual {p1, p0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setCollectionInfo(Ljava/lang/Object;)V

    return-void
.end method

.method protected onMeasure(II)V
    .registers 9

    .line 1598
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->getDefaultHeight()I

    move-result v0

    .line 1599
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    const/high16 v2, -0x80000000

    const/4 v3, 0x0

    const/high16 v4, 0x40000000    # 2.0f

    const/4 v5, 0x1

    if-eq v1, v2, :cond_22

    if-eqz v1, :cond_13

    goto :goto_35

    .line 1608
    :cond_13
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result p2

    add-int/2addr v0, p2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result p2

    add-int/2addr v0, p2

    .line 1607
    invoke-static {v0, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    goto :goto_35

    .line 1601
    :cond_22
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ne v1, v5, :cond_35

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    if-lt v1, v0, :cond_35

    .line 1602
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setMinimumHeight(I)V

    .line 1614
    :cond_35
    :goto_35
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 1615
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    if-eqz v1, :cond_53

    .line 1619
    iget v1, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->requestedTabMaxWidth:I

    if-lez v1, :cond_44

    goto :goto_51

    :cond_44
    int-to-float v0, v0

    .line 1621
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const/16 v2, 0x38

    invoke-static {v1, v2}, Lcom/google/android/material/internal/ViewUtils;->dpToPx(Landroid/content/Context;I)F

    move-result v1

    sub-float/2addr v0, v1

    float-to-int v1, v0

    :goto_51
    iput v1, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->tabMaxWidth:I

    .line 1625
    :cond_53
    invoke-super {p0, p1, p2}, Landroid/widget/HorizontalScrollView;->onMeasure(II)V

    .line 1627
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    if-ne p1, v5, :cond_ae

    .line 1630
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    .line 1633
    iget v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->mode:I

    if-eqz v0, :cond_75

    if-eq v0, v5, :cond_6a

    const/4 v1, 0x2

    if-eq v0, v1, :cond_75

    goto :goto_9d

    .line 1642
    :cond_6a
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    if-eq v0, v1, :cond_9d

    goto :goto_7f

    .line 1638
    :cond_75
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    if-ge v0, v1, :cond_9d

    .line 1651
    :goto_7f
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    .line 1652
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1649
    invoke-static {p2, v0, v1}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result p2

    .line 1655
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-static {v0, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 1656
    invoke-virtual {p1, v0, p2}, Landroid/view/View;->measure(II)V

    .line 1659
    :cond_9d
    :goto_9d
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    if-le p1, p2, :cond_ab

    .line 1660
    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->enableOverScroll()V

    return-void

    .line 1662
    :cond_ab
    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->unableOverScroll()V

    :cond_ae
    return-void
.end method

.method populateFromPagerAdapter()V
    .registers 6

    .line 1457
    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->removeAllTabs()V

    .line 1459
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->pagerAdapter:Landroidx/viewpager/widget/PagerAdapter;

    if-eqz v0, :cond_40

    .line 1460
    invoke-virtual {v0}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_d
    if-ge v2, v0, :cond_23

    .line 1462
    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->newTab()Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;

    move-result-object v3

    iget-object v4, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->pagerAdapter:Landroidx/viewpager/widget/PagerAdapter;

    invoke-virtual {v4, v2}, Landroidx/viewpager/widget/PagerAdapter;->getPageTitle(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;->setText(Ljava/lang/CharSequence;)Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;

    move-result-object v3

    invoke-virtual {p0, v3, v1}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->addTab(Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 1466
    :cond_23
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->viewPager:Landroidx/viewpager/widget/ViewPager;

    if-eqz v1, :cond_40

    if-lez v0, :cond_40

    .line 1467
    invoke-virtual {v1}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v0

    .line 1468
    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->getSelectedTabPosition()I

    move-result v1

    if-eq v0, v1, :cond_40

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->getTabCount()I

    move-result v1

    if-ge v0, v1, :cond_40

    .line 1469
    invoke-virtual {p0, v0}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->getTabAt(I)Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->selectTab(Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;)V

    :cond_40
    return-void
.end method

.method protected releaseFromTabPool(Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;)Z
    .registers 2

    .line 900
    sget-object p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->tabPool:Landroidx/core/util/Pools$Pool;

    invoke-interface {p0, p1}, Landroidx/core/util/Pools$Pool;->release(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public removeAllTabs()V
    .registers 3

    .line 974
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->slidingTabIndicator:Lcom/transsion/widgetslib/widget/tablayout/TabLayout$SlidingTabIndicator;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_10

    .line 975
    invoke-direct {p0, v0}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->removeTabViewAt(I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 978
    :cond_10
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_16
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 979
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;

    .line 980
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 981
    invoke-virtual {v1}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;->reset()V

    .line 982
    invoke-virtual {p0, v1}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->releaseFromTabPool(Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;)Z

    goto :goto_16

    :cond_2c
    const/4 v0, 0x0

    .line 985
    iput-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->selectedTab:Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;

    return-void
.end method

.method public removeOnTabSelectedListener(Lcom/transsion/widgetslib/widget/tablayout/TabLayout$BaseOnTabSelectedListener;)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 864
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->selectedListeners:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeOnTabSelectedListener(Lcom/transsion/widgetslib/widget/tablayout/TabLayout$OnTabSelectedListener;)V
    .registers 2

    .line 852
    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->removeOnTabSelectedListener(Lcom/transsion/widgetslib/widget/tablayout/TabLayout$BaseOnTabSelectedListener;)V

    return-void
.end method

.method public removeTab(Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;)V
    .registers 3

    .line 936
    iget-object v0, p1, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;->parent:Lcom/transsion/widgetslib/widget/tablayout/TabLayout;

    if-ne v0, p0, :cond_c

    .line 940
    invoke-virtual {p1}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;->getPosition()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->removeTabAt(I)V

    return-void

    .line 937
    :cond_c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Tab does not belong to this TabLayout."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public removeTabAt(I)V
    .registers 7

    .line 950
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->selectedTab:Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;->getPosition()I

    move-result v0

    goto :goto_b

    :cond_a
    move v0, v1

    .line 951
    :goto_b
    invoke-direct {p0, p1}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->removeTabViewAt(I)V

    .line 953
    iget-object v2, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;

    if-eqz v2, :cond_1e

    .line 955
    invoke-virtual {v2}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;->reset()V

    .line 956
    invoke-virtual {p0, v2}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->releaseFromTabPool(Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;)Z

    .line 959
    :cond_1e
    iget-object v2, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v3, p1

    :goto_25
    if-ge v3, v2, :cond_35

    .line 961
    iget-object v4, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;

    invoke-virtual {v4, v3}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;->setPosition(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_25

    :cond_35
    if-ne v0, p1, :cond_52

    .line 965
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_41

    const/4 p1, 0x0

    goto :goto_4f

    :cond_41
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->tabs:Ljava/util/ArrayList;

    add-int/lit8 p1, p1, -0x1

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;

    :goto_4f
    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->selectTab(Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;)V

    :cond_52
    return-void
.end method

.method public selectTab(Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;)V
    .registers 3

    const/4 v0, 0x1

    .line 1750
    invoke-virtual {p0, p1, v0}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->selectTab(Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;Z)V

    return-void
.end method

.method public selectTab(Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;Z)V
    .registers 7

    .line 1762
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->selectedTab:Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;

    if-ne v0, p1, :cond_11

    if-eqz v0, :cond_40

    .line 1766
    invoke-direct {p0, p1}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->dispatchTabReselected(Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;)V

    .line 1767
    invoke-virtual {p1}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;->getPosition()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->animateToTab(I)V

    return-void

    :cond_11
    const/4 v1, -0x1

    if-eqz p1, :cond_19

    .line 1770
    invoke-virtual {p1}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;->getPosition()I

    move-result v2

    goto :goto_1a

    :cond_19
    move v2, v1

    :goto_1a
    if-eqz p2, :cond_34

    if-eqz v0, :cond_24

    .line 1772
    invoke-virtual {v0}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;->getPosition()I

    move-result p2

    if-ne p2, v1, :cond_2c

    :cond_24
    if-eq v2, v1, :cond_2c

    const/4 p2, 0x0

    const/4 v3, 0x1

    .line 1775
    invoke-virtual {p0, v2, p2, v3}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->setScrollPosition(IFZ)V

    goto :goto_2f

    .line 1777
    :cond_2c
    invoke-direct {p0, v2}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->animateToTab(I)V

    :goto_2f
    if-eq v2, v1, :cond_34

    .line 1780
    invoke-direct {p0, v2}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->setSelectedTabView(I)V

    .line 1785
    :cond_34
    iput-object p1, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->selectedTab:Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;

    if-eqz v0, :cond_3b

    .line 1787
    invoke-direct {p0, v0}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->dispatchTabUnselected(Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;)V

    :cond_3b
    if-eqz p1, :cond_40

    .line 1790
    invoke-direct {p0, p1}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->dispatchTabSelected(Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;)V

    :cond_40
    return-void
.end method

.method public setDefaultSelectedIndicatorRadius(I)V
    .registers 2

    .line 648
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->slidingTabIndicator:Lcom/transsion/widgetslib/widget/tablayout/TabLayout$SlidingTabIndicator;

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$SlidingTabIndicator;->setDefaultSelectedIndicatorRadius(I)V

    return-void
.end method

.method public setElevation(F)V
    .registers 2

    .line 1564
    invoke-super {p0, p1}, Landroid/view/View;->setElevation(F)V

    .line 1566
    invoke-static {p0, p1}, Lcom/google/android/material/shape/MaterialShapeUtils;->setElevation(Landroid/view/View;F)V

    return-void
.end method

.method public setFixPadding(Z)V
    .registers 2

    .line 3730
    iput-boolean p1, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->mIsFixPadding:Z

    return-void
.end method

.method public setInlineLabel(Z)V
    .registers 4

    .line 1123
    iget-boolean v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->inlineLabel:Z

    if-eq v0, p1, :cond_24

    .line 1124
    iput-boolean p1, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->inlineLabel:Z

    const/4 p1, 0x0

    .line 1125
    :goto_7
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->slidingTabIndicator:Lcom/transsion/widgetslib/widget/tablayout/TabLayout$SlidingTabIndicator;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge p1, v0, :cond_21

    .line 1126
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->slidingTabIndicator:Lcom/transsion/widgetslib/widget/tablayout/TabLayout$SlidingTabIndicator;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1127
    instance-of v1, v0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;

    if-eqz v1, :cond_1e

    .line 1128
    check-cast v0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;

    invoke-virtual {v0}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->updateOrientation()V

    :cond_1e
    add-int/lit8 p1, p1, 0x1

    goto :goto_7

    .line 1131
    :cond_21
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->applyModeAndGravity()V

    :cond_24
    return-void
.end method

.method public setInlineLabelResource(I)V
    .registers 3

    .line 1144
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->setInlineLabel(Z)V

    return-void
.end method

.method public setOnTabSelectedListener(Lcom/transsion/widgetslib/widget/tablayout/TabLayout$BaseOnTabSelectedListener;)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 805
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->selectedListener:Lcom/transsion/widgetslib/widget/tablayout/TabLayout$BaseOnTabSelectedListener;

    if-eqz v0, :cond_7

    .line 806
    invoke-virtual {p0, v0}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->removeOnTabSelectedListener(Lcom/transsion/widgetslib/widget/tablayout/TabLayout$BaseOnTabSelectedListener;)V

    .line 810
    :cond_7
    iput-object p1, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->selectedListener:Lcom/transsion/widgetslib/widget/tablayout/TabLayout$BaseOnTabSelectedListener;

    if-eqz p1, :cond_e

    .line 812
    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->addOnTabSelectedListener(Lcom/transsion/widgetslib/widget/tablayout/TabLayout$BaseOnTabSelectedListener;)V

    :cond_e
    return-void
.end method

.method public setOnTabSelectedListener(Lcom/transsion/widgetslib/widget/tablayout/TabLayout$OnTabSelectedListener;)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 794
    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->setOnTabSelectedListener(Lcom/transsion/widgetslib/widget/tablayout/TabLayout$BaseOnTabSelectedListener;)V

    return-void
.end method

.method setPagerAdapter(Landroidx/viewpager/widget/PagerAdapter;Z)V
    .registers 5

    .line 1437
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->pagerAdapter:Landroidx/viewpager/widget/PagerAdapter;

    if-eqz v0, :cond_b

    iget-object v1, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->pagerAdapterObserver:Landroid/database/DataSetObserver;

    if-eqz v1, :cond_b

    .line 1439
    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/PagerAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 1442
    :cond_b
    iput-object p1, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->pagerAdapter:Landroidx/viewpager/widget/PagerAdapter;

    if-eqz p2, :cond_21

    if-eqz p1, :cond_21

    .line 1446
    iget-object p2, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->pagerAdapterObserver:Landroid/database/DataSetObserver;

    if-nez p2, :cond_1c

    .line 1447
    new-instance p2, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$PagerAdapterObserver;

    invoke-direct {p2, p0}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$PagerAdapterObserver;-><init>(Lcom/transsion/widgetslib/widget/tablayout/TabLayout;)V

    iput-object p2, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->pagerAdapterObserver:Landroid/database/DataSetObserver;

    .line 1449
    :cond_1c
    iget-object p2, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->pagerAdapterObserver:Landroid/database/DataSetObserver;

    invoke-virtual {p1, p2}, Landroidx/viewpager/widget/PagerAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 1453
    :cond_21
    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->populateFromPagerAdapter()V

    return-void
.end method

.method public setRelativeTabPadding(IIII)V
    .registers 5

    .line 3698
    iput p1, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->tabPaddingStart:I

    .line 3699
    iput p2, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->tabPaddingTop:I

    .line 3700
    iput p3, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->tabPaddingEnd:I

    .line 3701
    iput p4, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->tabPaddingBottom:I

    .line 3702
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->updTabViewPadding()V

    return-void
.end method

.method setScrollAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V
    .registers 2

    .line 1723
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->ensureScrollAnimator()V

    .line 1724
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->scrollAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0, p1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method public setScrollPosition(IFZ)V
    .registers 5

    const/4 v0, 0x1

    .line 676
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->setScrollPosition(IFZZ)V

    return-void
.end method

.method public setScrollPosition(IFZZ)V
    .registers 7

    int-to-float v0, p1

    add-float/2addr v0, p2

    .line 696
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    if-ltz v0, :cond_34

    .line 697
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->slidingTabIndicator:Lcom/transsion/widgetslib/widget/tablayout/TabLayout$SlidingTabIndicator;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-lt v0, v1, :cond_11

    goto :goto_34

    :cond_11
    if-eqz p4, :cond_18

    .line 703
    iget-object p4, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->slidingTabIndicator:Lcom/transsion/widgetslib/widget/tablayout/TabLayout$SlidingTabIndicator;

    invoke-virtual {p4, p1, p2}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$SlidingTabIndicator;->setIndicatorPositionFromTabPosition(IF)V

    .line 707
    :cond_18
    iget-object p4, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->scrollAnimator:Landroid/animation/ValueAnimator;

    if-eqz p4, :cond_27

    invoke-virtual {p4}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p4

    if-eqz p4, :cond_27

    .line 708
    iget-object p4, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->scrollAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p4}, Landroid/animation/ValueAnimator;->cancel()V

    .line 710
    :cond_27
    invoke-direct {p0, p1, p2}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->calculateScrollXForTab(IF)I

    move-result p1

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->scrollTo(II)V

    if-eqz p3, :cond_34

    .line 714
    invoke-direct {p0, v0}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->setSelectedTabView(I)V

    :cond_34
    :goto_34
    return-void
.end method

.method public setSelectedIndicatorBottomOffset(I)V
    .registers 2

    .line 639
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->slidingTabIndicator:Lcom/transsion/widgetslib/widget/tablayout/TabLayout$SlidingTabIndicator;

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$SlidingTabIndicator;->setSelectedIndicatorBottomOffset(I)V

    return-void
.end method

.method public setSelectedTabIndicator(I)V
    .registers 3

    if-eqz p1, :cond_e

    .line 1290
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 1289
    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->setSelectedTabIndicator(Landroid/graphics/drawable/Drawable;)V

    return-void

    :cond_e
    const/4 p1, 0x0

    .line 1292
    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->setSelectedTabIndicator(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setSelectedTabIndicator(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    .line 1269
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->tabSelectedIndicator:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_b

    .line 1270
    iput-object p1, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->tabSelectedIndicator:Landroid/graphics/drawable/Drawable;

    .line 1271
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->slidingTabIndicator:Lcom/transsion/widgetslib/widget/tablayout/TabLayout$SlidingTabIndicator;

    invoke-static {p0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    :cond_b
    return-void
.end method

.method public setSelectedTabIndicatorColor(I)V
    .registers 2

    .line 630
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->slidingTabIndicator:Lcom/transsion/widgetslib/widget/tablayout/TabLayout$SlidingTabIndicator;

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$SlidingTabIndicator;->setSelectedIndicatorColor(I)V

    return-void
.end method

.method public setSelectedTabIndicatorGravity(I)V
    .registers 3

    .line 1065
    iget v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->tabIndicatorGravity:I

    if-eq v0, p1, :cond_b

    .line 1066
    iput p1, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->tabIndicatorGravity:I

    .line 1067
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->slidingTabIndicator:Lcom/transsion/widgetslib/widget/tablayout/TabLayout$SlidingTabIndicator;

    invoke-static {p0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    :cond_b
    return-void
.end method

.method public setSelectedTabIndicatorHeight(I)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 661
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->slidingTabIndicator:Lcom/transsion/widgetslib/widget/tablayout/TabLayout$SlidingTabIndicator;

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$SlidingTabIndicator;->setSelectedIndicatorHeight(I)V

    return-void
.end method

.method public setTabChildEnable(Z)V
    .registers 5

    .line 3656
    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->getTabCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_17

    .line 3658
    invoke-virtual {p0, v1}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->getTabAt(I)Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;

    move-result-object v2

    if-eqz v2, :cond_14

    .line 3660
    iget-object v2, v2, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;->view:Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;

    if-eqz v2, :cond_14

    .line 3662
    invoke-virtual {v2, p1}, Landroid/view/View;->setEnabled(Z)V

    :cond_14
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_17
    return-void
.end method

.method public setTabGravity(I)V
    .registers 3

    .line 1034
    iget v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->tabGravity:I

    if-eq v0, p1, :cond_9

    .line 1035
    iput p1, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->tabGravity:I

    .line 1036
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->applyModeAndGravity()V

    :cond_9
    return-void
.end method

.method public setTabIndicatorFullWidth(Z)V
    .registers 2

    .line 1099
    iput-boolean p1, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->tabIndicatorFullWidth:Z

    .line 1100
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->slidingTabIndicator:Lcom/transsion/widgetslib/widget/tablayout/TabLayout$SlidingTabIndicator;

    invoke-static {p0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    return-void
.end method

.method public setTabMode(I)V
    .registers 3

    .line 1004
    iget v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->mode:I

    if-eq p1, v0, :cond_1c

    .line 1005
    iput p1, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->mode:I

    .line 1006
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->initScrollPaddingParams()V

    .line 1007
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->applyModeAndGravity()V

    .line 1008
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->updTabViewPadding()V

    .line 1009
    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->getTabMode()I

    move-result p1

    if-nez p1, :cond_19

    .line 1010
    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->enableOverScroll()V

    return-void

    .line 1012
    :cond_19
    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->unableOverScroll()V

    :cond_1c
    return-void
.end method

.method public setTabTextColors(II)V
    .registers 3

    .line 1229
    invoke-static {p1, p2}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->createColorStateList(II)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->setTabTextColors(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setTabTextColors(Landroid/content/res/ColorStateList;)V
    .registers 3

    .line 1208
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->tabTextColors:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_9

    .line 1209
    iput-object p1, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->tabTextColors:Landroid/content/res/ColorStateList;

    .line 1210
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->updateAllTabs()V

    :cond_9
    return-void
.end method

.method public setTabTextSize(F)V
    .registers 2

    .line 3738
    iput p1, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->tabTextSize:F

    return-void
.end method

.method public setTabsFromPagerAdapter(Landroidx/viewpager/widget/PagerAdapter;)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 1393
    invoke-virtual {p0, p1, v0}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->setPagerAdapter(Landroidx/viewpager/widget/PagerAdapter;Z)V

    return-void
.end method

.method public setupWithViewPager(Landroidx/viewpager/widget/ViewPager;)V
    .registers 3

    const/4 v0, 0x1

    .line 1305
    invoke-virtual {p0, p1, v0}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->setupWithViewPager(Landroidx/viewpager/widget/ViewPager;Z)V

    return-void
.end method

.method public setupWithViewPager(Landroidx/viewpager/widget/ViewPager;Z)V
    .registers 4

    const/4 v0, 0x0

    .line 1325
    invoke-direct {p0, p1, p2, v0}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->setupWithViewPager(Landroidx/viewpager/widget/ViewPager;ZZ)V

    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .registers 1

    .line 1399
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->getTabScrollRange()I

    move-result p0

    if-lez p0, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method public unableOverScroll()V
    .registers 1

    .line 3720
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->mIOverScrollDecor:Lcom/transsion/effectengine/bounceeffect/IOverScrollDecor;

    if-eqz p0, :cond_7

    .line 3721
    invoke-interface {p0}, Lcom/transsion/effectengine/bounceeffect/IOverScrollDecor;->disable()V

    :cond_7
    return-void
.end method

.method updateTabViews(Z)V
    .registers 5

    const/4 v0, 0x0

    .line 1882
    :goto_1
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->slidingTabIndicator:Lcom/transsion/widgetslib/widget/tablayout/TabLayout$SlidingTabIndicator;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_27

    .line 1883
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->slidingTabIndicator:Lcom/transsion/widgetslib/widget/tablayout/TabLayout$SlidingTabIndicator;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1884
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->getTabMinWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setMinimumWidth(I)V

    .line 1885
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p0, v2}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->updateTabViewLayoutParams(Landroid/widget/LinearLayout$LayoutParams;)V

    if-eqz p1, :cond_24

    .line 1887
    invoke-virtual {v1}, Landroid/view/View;->requestLayout()V

    :cond_24
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_27
    return-void
.end method
