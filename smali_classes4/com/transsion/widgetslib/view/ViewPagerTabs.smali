.class public Lcom/transsion/widgetslib/view/ViewPagerTabs;
.super Landroid/widget/HorizontalScrollView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/widgetslib/view/ViewPagerTabs$InternalViewPagerListener;,
        Lcom/transsion/widgetslib/view/ViewPagerTabs$HorizontalTabChild;,
        Lcom/transsion/widgetslib/view/ViewPagerTabs$OnItemClickListener;,
        Lcom/transsion/widgetslib/view/ViewPagerTabs$SavedState;
    }
.end annotation


# static fields
.field private static final DEFAULT_UNREAD_INDICATOR_COLOR:I = -0x10000

.field private static final DEFAULT_UNREAD_INDICATOR_RADIUS:I = 0x3

.field private static final MAX_BALANCED_TAB_COUNT:I = 0x4

.field private static final MIN_BALANCED_TAB_COUNT:I = 0x2

.field private static final MIN_BALANCED_TAB_WIDTH_RATE:F = 0.35f

.field private static final MULTIPLE_DEFAULT_TAB_COLOR:I = -0x1

.field private static final SCROLL_STATE_IDLE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "ViewPagerTabs"


# instance fields
.field private mBalancedTitlePadding:I

.field private mContext:Landroid/content/Context;

.field private mCurLeftAndRight:[I

.field private mCurrentPosition:I

.field private mEnableMultipleSelectedTabColors:Z

.field private mIsRtl:Z

.field private mIsTabBalanced:Z

.field private mItemClickListener:Lcom/transsion/widgetslib/view/ViewPagerTabs$OnItemClickListener;

.field private mItemsNumber:I

.field private mMoveLineEnd:I

.field private mMoveLineStart:I

.field private mMovingLineHeight:I

.field private mNextLeftAndRight:[I

.field private mOnPageChangeListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

.field private mOnScrollListener:Landroid/view/View$OnScrollChangeListener;

.field private mRestorePosition:I

.field private mScreenWidth:I

.field private mSelectedTitleColors:[I

.field private mTabChild:Lcom/transsion/widgetslib/view/ViewPagerTabs$HorizontalTabChild;

.field private mTabHeight:I

.field private mTitlePadding:I

.field private mUnreadIndicatorPaint:Landroid/graphics/Paint;

.field private mUnreadIndicatorRadius:I

.field private mUnreadPosition:[I

.field private mViewPager:Landroidx/viewpager/widget/ViewPager;

.field private mZoomInTitlesWidth:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 102
    invoke-direct {p0, p1, v0}, Lcom/transsion/widgetslib/view/ViewPagerTabs;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6

    .line 106
    invoke-direct {p0, p1, p2}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x2

    .line 83
    new-array v1, v0, [I

    iput-object v1, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs;->mCurLeftAndRight:[I

    .line 84
    new-array v0, v0, [I

    iput-object v0, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs;->mNextLeftAndRight:[I

    const/4 v0, -0x1

    .line 89
    iput v0, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs;->mItemsNumber:I

    const/4 v1, 0x0

    .line 90
    new-array v2, v1, [I

    iput-object v2, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs;->mUnreadPosition:[I

    .line 107
    iput-object p1, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs;->mContext:Landroid/content/Context;

    .line 108
    invoke-direct {p0, p2}, Lcom/transsion/widgetslib/view/ViewPagerTabs;->init(Landroid/util/AttributeSet;)V

    .line 109
    invoke-direct {p0}, Lcom/transsion/widgetslib/view/ViewPagerTabs;->isRtl()Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs;->mIsRtl:Z

    .line 110
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    iget p2, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs;->mTabHeight:I

    invoke-direct {p1, v0, p2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 111
    iget p2, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs;->mMoveLineStart:I

    invoke-virtual {p1, p2, v1, p2, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 112
    iget-object p2, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs;->mTabChild:Lcom/transsion/widgetslib/view/ViewPagerTabs$HorizontalTabChild;

    invoke-virtual {p0, p2, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 p1, 0x1

    .line 113
    invoke-virtual {p0, p1}, Landroid/widget/HorizontalScrollView;->setFillViewport(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/transsion/widgetslib/view/ViewPagerTabs;)Landroid/content/Context;
    .registers 1

    .line 50
    iget-object p0, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/transsion/widgetslib/view/ViewPagerTabs;)V
    .registers 1

    .line 50
    invoke-direct {p0}, Lcom/transsion/widgetslib/view/ViewPagerTabs;->setTabs()V

    return-void
.end method

.method static synthetic access$1200(Lcom/transsion/widgetslib/view/ViewPagerTabs;I)I
    .registers 2

    .line 50
    invoke-direct {p0, p1}, Lcom/transsion/widgetslib/view/ViewPagerTabs;->getRtlPosition(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$1300(Lcom/transsion/widgetslib/view/ViewPagerTabs;)Lcom/transsion/widgetslib/view/ViewPagerTabs$HorizontalTabChild;
    .registers 1

    .line 50
    iget-object p0, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs;->mTabChild:Lcom/transsion/widgetslib/view/ViewPagerTabs$HorizontalTabChild;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/transsion/widgetslib/view/ViewPagerTabs;IFI)V
    .registers 4

    .line 50
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/widgetslib/view/ViewPagerTabs;->onTabPageScrolled(IFI)V

    return-void
.end method

.method static synthetic access$1502(Lcom/transsion/widgetslib/view/ViewPagerTabs;I)I
    .registers 2

    .line 50
    iput p1, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs;->mCurrentPosition:I

    return p1
.end method

.method static synthetic access$1600(Lcom/transsion/widgetslib/view/ViewPagerTabs;I)V
    .registers 2

    .line 50
    invoke-direct {p0, p1}, Lcom/transsion/widgetslib/view/ViewPagerTabs;->onTabPageSelected(I)V

    return-void
.end method

.method static synthetic access$1700(Lcom/transsion/widgetslib/view/ViewPagerTabs;I)V
    .registers 2

    .line 50
    invoke-direct {p0, p1}, Lcom/transsion/widgetslib/view/ViewPagerTabs;->onTabPageScrollStateChanged(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/transsion/widgetslib/view/ViewPagerTabs;)I
    .registers 1

    .line 50
    iget p0, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs;->mMovingLineHeight:I

    return p0
.end method

.method static synthetic access$300(Lcom/transsion/widgetslib/view/ViewPagerTabs;)V
    .registers 1

    .line 50
    invoke-direct {p0}, Lcom/transsion/widgetslib/view/ViewPagerTabs;->updateCheckStatus()V

    return-void
.end method

.method static synthetic access$400(Lcom/transsion/widgetslib/view/ViewPagerTabs;)Z
    .registers 1

    .line 50
    iget-boolean p0, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs;->mIsRtl:Z

    return p0
.end method

.method static synthetic access$500(Lcom/transsion/widgetslib/view/ViewPagerTabs;)Ljava/util/ArrayList;
    .registers 1

    .line 50
    iget-object p0, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs;->mZoomInTitlesWidth:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$600(Lcom/transsion/widgetslib/view/ViewPagerTabs;)[I
    .registers 1

    .line 50
    iget-object p0, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs;->mCurLeftAndRight:[I

    return-object p0
.end method

.method static synthetic access$700(Lcom/transsion/widgetslib/view/ViewPagerTabs;)[I
    .registers 1

    .line 50
    iget-object p0, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs;->mNextLeftAndRight:[I

    return-object p0
.end method

.method static synthetic access$800(Lcom/transsion/widgetslib/view/ViewPagerTabs;)I
    .registers 1

    .line 50
    iget p0, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs;->mMoveLineEnd:I

    return p0
.end method

.method static synthetic access$900(Lcom/transsion/widgetslib/view/ViewPagerTabs;)Landroidx/viewpager/widget/ViewPager;
    .registers 1

    .line 50
    iget-object p0, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    return-object p0
.end method

.method private addTabs()V
    .registers 12

    .line 745
    iget-object v0, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs;->mContext:Landroid/content/Context;

    if-nez v0, :cond_6

    goto/16 :goto_cd

    .line 749
    :cond_6
    iget-object v0, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs;->mTabChild:Lcom/transsion/widgetslib/view/ViewPagerTabs$HorizontalTabChild;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 750
    iget-object v0, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v0

    .line 751
    invoke-virtual {v0}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result v1

    .line 753
    invoke-direct {p0, v1}, Lcom/transsion/widgetslib/view/ViewPagerTabs;->checkTabCount(I)V

    .line 754
    iget-object v2, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs;->mZoomInTitlesWidth:Ljava/util/ArrayList;

    if-eqz v2, :cond_20

    .line 755
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    goto :goto_27

    .line 757
    :cond_20
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs;->mZoomInTitlesWidth:Ljava/util/ArrayList;

    .line 760
    :goto_27
    iget v2, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs;->mScreenWidth:I

    div-int/2addr v2, v1

    .line 761
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v3, v2, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v4, 0x0

    move v5, v4

    :goto_32
    if-ge v5, v1, :cond_cd

    .line 768
    iget-object v6, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs;->mContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    sget v7, Lcom/transsion/widgetslib/R$layout;->tab_textview:I

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/CheckedTextView;

    .line 769
    invoke-virtual {v0, v5}, Landroidx/viewpager/widget/PagerAdapter;->getPageTitle(I)Ljava/lang/CharSequence;

    move-result-object v7

    if-nez v7, :cond_4b

    .line 771
    const-string v7, ""

    .line 773
    :cond_4b
    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 775
    invoke-virtual {v6, v4}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 776
    sget v7, Lcom/transsion/widgetslib/R$style;->os_regular_fontweight:I

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextAppearance(I)V

    const/4 v7, 0x1

    .line 777
    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setSingleLine(Z)V

    const/16 v8, 0x11

    .line 778
    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setGravity(I)V

    .line 783
    iget-boolean v8, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs;->mIsTabBalanced:Z

    if-eqz v8, :cond_75

    .line 784
    iget v8, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs;->mBalancedTitlePadding:I

    mul-int/lit8 v8, v8, 0x2

    sub-int v8, v2, v8

    int-to-float v8, v8

    invoke-direct {p0, v6, v8}, Lcom/transsion/widgetslib/view/ViewPagerTabs;->breakTitleText(Landroid/widget/TextView;F)V

    .line 786
    :cond_75
    invoke-direct {p0, v6}, Lcom/transsion/widgetslib/view/ViewPagerTabs;->measureText(Landroid/widget/TextView;)F

    move-result v8

    .line 787
    iget-object v9, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs;->mZoomInTitlesWidth:Ljava/util/ArrayList;

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 788
    iget-boolean v9, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs;->mIsTabBalanced:Z

    if-eqz v9, :cond_8a

    .line 789
    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setWidth(I)V

    goto :goto_99

    .line 793
    :cond_8a
    iget v9, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs;->mTitlePadding:I

    mul-int/lit8 v9, v9, 0x2

    int-to-float v9, v9

    add-float/2addr v9, v8

    float-to-int v8, v9

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setWidth(I)V

    .line 794
    iget v8, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs;->mTitlePadding:I

    invoke-virtual {v6, v8, v4, v8, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 798
    :goto_99
    sget-object v8, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    sget v10, Lcom/transsion/widgetslib/R$integer;->OSSemiBoldWeight:I

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v9

    invoke-static {v8, v9, v4}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    move-result-object v8

    .line 799
    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 801
    new-instance v8, Lcom/transsion/widgetslib/view/ViewPagerTabs$4;

    invoke-direct {v8, p0, v5}, Lcom/transsion/widgetslib/view/ViewPagerTabs$4;-><init>(Lcom/transsion/widgetslib/view/ViewPagerTabs;I)V

    invoke-virtual {v6, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 808
    iget-object v8, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs;->mTabChild:Lcom/transsion/widgetslib/view/ViewPagerTabs$HorizontalTabChild;

    # getter for: Lcom/transsion/widgetslib/view/ViewPagerTabs$HorizontalTabChild;->mCurPosition:I
    invoke-static {v8}, Lcom/transsion/widgetslib/view/ViewPagerTabs$HorizontalTabChild;->access$000(Lcom/transsion/widgetslib/view/ViewPagerTabs$HorizontalTabChild;)I

    move-result v8

    if-ne v5, v8, :cond_c4

    .line 811
    invoke-virtual {v6, v7}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 812
    sget v7, Lcom/transsion/widgetslib/R$style;->os_semibold_font:I

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextAppearance(I)V

    .line 824
    :cond_c4
    iget-object v7, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs;->mTabChild:Lcom/transsion/widgetslib/view/ViewPagerTabs$HorizontalTabChild;

    invoke-virtual {v7, v6, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_32

    :cond_cd
    :goto_cd
    return-void
.end method

.method private addTabs([Ljava/lang/CharSequence;)V
    .registers 12

    .line 356
    iget-object v0, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs;->mTabChild:Lcom/transsion/widgetslib/view/ViewPagerTabs$HorizontalTabChild;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 357
    array-length v0, p1

    .line 359
    invoke-direct {p0, v0}, Lcom/transsion/widgetslib/view/ViewPagerTabs;->checkTabCount(I)V

    .line 360
    iget-object v1, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs;->mZoomInTitlesWidth:Ljava/util/ArrayList;

    if-eqz v1, :cond_11

    .line 361
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    goto :goto_18

    .line 363
    :cond_11
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs;->mZoomInTitlesWidth:Ljava/util/ArrayList;

    .line 365
    :goto_18
    iget v1, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs;->mScreenWidth:I

    div-int/2addr v1, v0

    .line 366
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v1, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v3, 0x0

    move v4, v3

    :goto_23
    if-ge v4, v0, :cond_c0

    .line 374
    iget-object v5, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    sget v6, Lcom/transsion/widgetslib/R$layout;->tab_textview:I

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/CheckedTextView;

    .line 375
    aget-object v6, p1, v4

    if-nez v6, :cond_3c

    .line 376
    const-string v6, ""

    aput-object v6, p1, v4

    .line 378
    :cond_3c
    aget-object v6, p1, v4

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 380
    invoke-virtual {v5, v3}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 381
    sget v6, Lcom/transsion/widgetslib/R$style;->os_regular_fontweight:I

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextAppearance(I)V

    const/4 v6, 0x1

    .line 382
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setSingleLine(Z)V

    const/16 v7, 0x11

    .line 383
    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setGravity(I)V

    .line 387
    iget-boolean v7, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs;->mIsTabBalanced:Z

    if-eqz v7, :cond_68

    .line 388
    iget v7, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs;->mBalancedTitlePadding:I

    mul-int/lit8 v7, v7, 0x2

    sub-int v7, v1, v7

    int-to-float v7, v7

    invoke-direct {p0, v5, v7}, Lcom/transsion/widgetslib/view/ViewPagerTabs;->breakTitleText(Landroid/widget/TextView;F)V

    .line 390
    :cond_68
    invoke-direct {p0, v5}, Lcom/transsion/widgetslib/view/ViewPagerTabs;->measureText(Landroid/widget/TextView;)F

    move-result v7

    .line 391
    iget-object v8, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs;->mZoomInTitlesWidth:Ljava/util/ArrayList;

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 392
    iget-boolean v8, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs;->mIsTabBalanced:Z

    if-eqz v8, :cond_7d

    .line 393
    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setWidth(I)V

    goto :goto_8c

    .line 397
    :cond_7d
    iget v8, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs;->mTitlePadding:I

    mul-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    add-float/2addr v8, v7

    float-to-int v7, v8

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setWidth(I)V

    .line 398
    iget v7, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs;->mTitlePadding:I

    invoke-virtual {v5, v7, v3, v7, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 402
    :goto_8c
    sget-object v7, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lcom/transsion/widgetslib/R$integer;->OSSemiBoldWeight:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v8

    invoke-static {v7, v8, v3}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    move-result-object v7

    .line 403
    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 405
    new-instance v7, Lcom/transsion/widgetslib/view/ViewPagerTabs$1;

    invoke-direct {v7, p0, v4}, Lcom/transsion/widgetslib/view/ViewPagerTabs$1;-><init>(Lcom/transsion/widgetslib/view/ViewPagerTabs;I)V

    invoke-virtual {v5, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 412
    iget-object v7, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs;->mTabChild:Lcom/transsion/widgetslib/view/ViewPagerTabs$HorizontalTabChild;

    # getter for: Lcom/transsion/widgetslib/view/ViewPagerTabs$HorizontalTabChild;->mCurPosition:I
    invoke-static {v7}, Lcom/transsion/widgetslib/view/ViewPagerTabs$HorizontalTabChild;->access$000(Lcom/transsion/widgetslib/view/ViewPagerTabs$HorizontalTabChild;)I

    move-result v7

    if-ne v4, v7, :cond_b7

    .line 415
    invoke-virtual {v5, v6}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 416
    sget v6, Lcom/transsion/widgetslib/R$style;->os_semibold_font:I

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextAppearance(I)V

    .line 428
    :cond_b7
    iget-object v6, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs;->mTabChild:Lcom/transsion/widgetslib/view/ViewPagerTabs$HorizontalTabChild;

    invoke-virtual {v6, v5, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_23

    :cond_c0
    return-void
.end method

.method private breakTitleText(Landroid/widget/TextView;F)V
    .registers 10

    if-nez p1, :cond_3

    goto :goto_5b

    .line 335
    :cond_3
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    move-object v1, p0

    check-cast v1, Ljava/lang/String;

    if-nez v1, :cond_d

    goto :goto_5b

    .line 339
    :cond_d
    invoke-virtual {p1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    .line 340
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result p0

    cmpl-float p0, p0, p2

    if-lez p0, :cond_5b

    .line 341
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    const/4 v6, 0x0

    const/4 v2, 0x0

    move v5, p2

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Paint;->breakText(Ljava/lang/CharSequence;IIZF[F)I

    move-result p0

    if-lez p0, :cond_5b

    .line 345
    :try_start_27
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 p0, p0, -0x1

    const/4 v0, 0x0

    invoke-virtual {v1, v0, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ".."

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_42
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_27 .. :try_end_42} :catch_43

    return-void

    :catch_43
    move-exception v0

    move-object p0, v0

    .line 348
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "OS ViewPagerTabs # breakTitleText() Catch Exception e = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ViewPagerTabs"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5b
    :goto_5b
    return-void
.end method

.method private checkTabCount(I)V
    .registers 3

    const/4 v0, 0x2

    if-lt p1, v0, :cond_8

    const/4 v0, 0x4

    if-le p1, v0, :cond_7

    goto :goto_8

    :cond_7
    return-void

    :cond_8
    :goto_8
    const/4 p1, 0x0

    .line 314
    iput-boolean p1, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs;->mIsTabBalanced:Z

    return-void
.end method

.method private chooseLayoutParams(I)Landroid/widget/LinearLayout$LayoutParams;
    .registers 5

    const/4 v0, 0x0

    if-gtz p1, :cond_4

    return-object v0

    :cond_4
    const/4 v1, 0x2

    const/4 v2, -0x1

    if-eq p1, v1, :cond_19

    .line 323
    iget-boolean p0, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs;->mIsTabBalanced:Z

    if-nez p0, :cond_d

    goto :goto_19

    :cond_d
    if-eqz p0, :cond_18

    .line 326
    new-instance p0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 p1, 0x0

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-direct {p0, p1, v2, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    return-object p0

    :cond_18
    return-object v0

    .line 324
    :cond_19
    :goto_19
    new-instance p0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 p1, -0x2

    invoke-direct {p0, p1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    return-object p0
.end method

.method private dp2px(I)I
    .registers 3

    int-to-float p1, p1

    .line 882
    iget-object p0, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs;->mContext:Landroid/content/Context;

    .line 883
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    const/4 v0, 0x1

    .line 882
    invoke-static {v0, p1, p0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p0

    float-to-int p0, p0

    return p0
.end method

.method private getRtlPosition(I)I
    .registers 3

    .line 453
    iget-boolean v0, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs;->mIsRtl:Z

    if-eqz v0, :cond_e

    iget-object p0, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs;->mTabChild:Lcom/transsion/widgetslib/view/ViewPagerTabs$HorizontalTabChild;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    sub-int/2addr p0, p1

    return p0

    :cond_e
    return p1
.end method

.method private init(Landroid/util/AttributeSet;)V
    .registers 5

    .line 186
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 187
    iget-object v1, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 195
    sget v1, Lcom/transsion/widgetslib/R$dimen;->os_viewpager_tab_text_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs;->mTitlePadding:I

    .line 196
    sget v1, Lcom/transsion/widgetslib/R$dimen;->os_viewpager_average_tab_text_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs;->mBalancedTitlePadding:I

    .line 199
    sget v1, Lcom/transsion/widgetslib/R$dimen;->os_tab_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs;->mTabHeight:I

    .line 200
    sget v1, Lcom/transsion/widgetslib/R$dimen;->os_foot_bar_line_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs;->mMovingLineHeight:I

    .line 201
    iget-object v1, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v1, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs;->mScreenWidth:I

    const/16 v1, 0x10

    .line 202
    invoke-direct {p0, v1}, Lcom/transsion/widgetslib/view/ViewPagerTabs;->dp2px(I)I

    move-result v2

    iput v2, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs;->mMoveLineStart:I

    .line 203
    iget v2, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs;->mScreenWidth:I

    invoke-direct {p0, v1}, Lcom/transsion/widgetslib/view/ViewPagerTabs;->dp2px(I)I

    move-result v1

    sub-int/2addr v2, v1

    iput v2, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs;->mMoveLineEnd:I

    .line 204
    iget v1, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs;->mScreenWidth:I

    iget v2, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs;->mMoveLineStart:I

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs;->mScreenWidth:I

    .line 206
    iget-object v1, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/transsion/widgetslib/R$styleable;->ViewPagerTabs:[I

    invoke-virtual {v1, p1, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 209
    sget v1, Lcom/transsion/widgetslib/R$styleable;->ViewPagerTabs_osTabHeight:I

    iget v2, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs;->mTabHeight:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    iput v1, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs;->mTabHeight:I

    .line 210
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 211
    new-instance p1, Lcom/transsion/widgetslib/view/ViewPagerTabs$HorizontalTabChild;

    iget-object v1, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs;->mContext:Landroid/content/Context;

    invoke-direct {p1, p0, v1}, Lcom/transsion/widgetslib/view/ViewPagerTabs$HorizontalTabChild;-><init>(Lcom/transsion/widgetslib/view/ViewPagerTabs;Landroid/content/Context;)V

    iput-object p1, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs;->mTabChild:Lcom/transsion/widgetslib/view/ViewPagerTabs$HorizontalTabChild;

    .line 214
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v0, 0x40400000    # 3.0f

    mul-float/2addr p1, v0

    float-to-int p1, p1

    .line 215
    iput p1, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs;->mUnreadIndicatorRadius:I

    .line 216
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs;->mUnreadIndicatorPaint:Landroid/graphics/Paint;

    const/4 v0, 0x1

    .line 217
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 218
    iget-object p1, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs;->mUnreadIndicatorPaint:Landroid/graphics/Paint;

    const/high16 v0, -0x10000

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 223
    sget p1, Lcom/transsion/widgetslib/R$attr;->OsBgPrimary:I

    filled-new-array {p1}, [I

    move-result-object p1

    .line 224
    iget-object v0, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 225
    iget-object v0, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs;->mContext:Landroid/content/Context;

    sget v1, Lcom/transsion/widgetslib/R$color;->os_bg_primary_color:I

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 226
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private isRtl()Z
    .registers 2

    .line 457
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p0

    .line 458
    invoke-static {p0}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_c

    return v0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method private measureText(Landroid/widget/TextView;)F
    .registers 2

    .line 448
    invoke-virtual {p1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object p0

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result p0

    return p0
.end method

.method private onTabPageScrollStateChanged(I)V
    .registers 2

    .line 844
    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/view/ViewPagerTabs;->onPageScrollStateChanged(I)V

    return-void
.end method

.method private onTabPageScrolled(IFI)V
    .registers 4

    .line 836
    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/widgetslib/view/ViewPagerTabs;->onPageScrolled(IFI)V

    return-void
.end method

.method private onTabPageSelected(I)V
    .registers 2

    .line 840
    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/view/ViewPagerTabs;->onPageSelected(I)V

    return-void
.end method

.method private setTabs()V
    .registers 6

    .line 728
    iget-object v0, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs;->mItemsNumber:I

    .line 729
    iget-object v1, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs;->mSelectedTitleColors:[I

    const/4 v2, 0x0

    if-eqz v1, :cond_2d

    array-length v1, v1

    if-eq v1, v0, :cond_2d

    .line 730
    new-array v0, v0, [I

    move v1, v2

    .line 731
    :goto_17
    iget v3, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs;->mItemsNumber:I

    if-ge v1, v3, :cond_2b

    .line 732
    iget-object v3, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs;->mSelectedTitleColors:[I

    array-length v4, v3

    add-int/lit8 v4, v4, -0x1

    if-gt v1, v4, :cond_25

    aget v3, v3, v1

    goto :goto_26

    :cond_25
    const/4 v3, -0x1

    :goto_26
    aput v3, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    .line 734
    :cond_2b
    iput-object v0, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs;->mSelectedTitleColors:[I

    .line 737
    :cond_2d
    invoke-direct {p0}, Lcom/transsion/widgetslib/view/ViewPagerTabs;->addTabs()V

    .line 738
    invoke-virtual {p0, v2}, Landroid/view/View;->setHorizontalScrollBarEnabled(Z)V

    return-void
.end method

.method private updateCheckStatus()V
    .registers 5

    const/4 v0, 0x0

    move v1, v0

    .line 503
    :goto_2
    iget-object v2, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs;->mTabChild:Lcom/transsion/widgetslib/view/ViewPagerTabs$HorizontalTabChild;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_2f

    .line 504
    iget-object v2, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs;->mTabChild:Lcom/transsion/widgetslib/view/ViewPagerTabs$HorizontalTabChild;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckedTextView;

    .line 505
    iget-object v3, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs;->mTabChild:Lcom/transsion/widgetslib/view/ViewPagerTabs$HorizontalTabChild;

    # getter for: Lcom/transsion/widgetslib/view/ViewPagerTabs$HorizontalTabChild;->mCurPosition:I
    invoke-static {v3}, Lcom/transsion/widgetslib/view/ViewPagerTabs$HorizontalTabChild;->access$000(Lcom/transsion/widgetslib/view/ViewPagerTabs$HorizontalTabChild;)I

    move-result v3

    if-eq v1, v3, :cond_23

    .line 506
    invoke-virtual {v2, v0}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 507
    sget v3, Lcom/transsion/widgetslib/R$style;->os_regular_fontweight:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextAppearance(I)V

    goto :goto_2c

    :cond_23
    const/4 v3, 0x1

    .line 509
    invoke-virtual {v2, v3}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 510
    sget v3, Lcom/transsion/widgetslib/R$style;->os_semibold_font:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextAppearance(I)V

    :goto_2c
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2f
    return-void
.end method


# virtual methods
.method public getDefaultViewPagerItemIndex()I
    .registers 2

    .line 230
    iget-object v0, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs;->mTabChild:Lcom/transsion/widgetslib/view/ViewPagerTabs$HorizontalTabChild;

    if-nez v0, :cond_6

    const/4 p0, 0x0

    return p0

    .line 233
    :cond_6
    # getter for: Lcom/transsion/widgetslib/view/ViewPagerTabs$HorizontalTabChild;->mCurPosition:I
    invoke-static {v0}, Lcom/transsion/widgetslib/view/ViewPagerTabs$HorizontalTabChild;->access$000(Lcom/transsion/widgetslib/view/ViewPagerTabs$HorizontalTabChild;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/transsion/widgetslib/view/ViewPagerTabs;->getRtlPosition(I)I

    move-result p0

    return p0
.end method

.method protected onAttachedToWindow()V
    .registers 2

    .line 118
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 119
    invoke-direct {p0}, Lcom/transsion/widgetslib/view/ViewPagerTabs;->isRtl()Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs;->mIsRtl:Z

    const/4 v0, 0x0

    .line 121
    invoke-virtual {p0, v0}, Lcom/transsion/widgetslib/view/ViewPagerTabs;->onPageScrollStateChanged(I)V

    return-void
.end method

.method protected onMeasure(II)V
    .registers 3

    .line 61
    invoke-super {p0, p1, p2}, Landroid/widget/HorizontalScrollView;->onMeasure(II)V

    return-void
.end method

.method public onPageScrollStateChanged(I)V
    .registers 3

    .line 493
    iget-object v0, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs;->mOnPageChangeListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_7

    .line 494
    invoke-interface {v0, p1}, Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;->onPageScrollStateChanged(I)V

    :cond_7
    if-nez p1, :cond_c

    .line 498
    invoke-direct {p0}, Lcom/transsion/widgetslib/view/ViewPagerTabs;->updateCheckStatus()V

    :cond_c
    return-void
.end method

.method public onPageScrolled(IFI)V
    .registers 4

    .line 463
    iget-object p0, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs;->mOnPageChangeListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    if-eqz p0, :cond_7

    .line 464
    invoke-interface {p0, p1, p2, p3}, Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;->onPageScrolled(IFI)V

    :cond_7
    return-void
.end method

.method public onPageSelected(I)V
    .registers 2

    .line 477
    iget-object p0, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs;->mOnPageChangeListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    if-eqz p0, :cond_7

    .line 478
    invoke-interface {p0, p1}, Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    :cond_7
    return-void
.end method

.method public onTabClick(I)V
    .registers 3

    .line 516
    invoke-direct {p0, p1}, Lcom/transsion/widgetslib/view/ViewPagerTabs;->getRtlPosition(I)I

    move-result p1

    .line 517
    iget-object v0, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs;->mItemClickListener:Lcom/transsion/widgetslib/view/ViewPagerTabs$OnItemClickListener;

    if-eqz v0, :cond_b

    .line 518
    invoke-interface {v0, p1}, Lcom/transsion/widgetslib/view/ViewPagerTabs$OnItemClickListener;->OnItemClick(I)V

    .line 520
    :cond_b
    iget-object p0, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    return-void
.end method

.method public setItemClickListener(Lcom/transsion/widgetslib/view/ViewPagerTabs$OnItemClickListener;)V
    .registers 2

    .line 237
    iput-object p1, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs;->mItemClickListener:Lcom/transsion/widgetslib/view/ViewPagerTabs$OnItemClickListener;

    return-void
.end method

.method public setLineColor(I)V
    .registers 3

    .line 887
    iget-object v0, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs;->mTabChild:Lcom/transsion/widgetslib/view/ViewPagerTabs$HorizontalTabChild;

    if-eqz v0, :cond_1d

    # getter for: Lcom/transsion/widgetslib/view/ViewPagerTabs$HorizontalTabChild;->mMovingLine:Landroid/graphics/Paint;
    invoke-static {v0}, Lcom/transsion/widgetslib/view/ViewPagerTabs$HorizontalTabChild;->access$1800(Lcom/transsion/widgetslib/view/ViewPagerTabs$HorizontalTabChild;)Landroid/graphics/Paint;

    move-result-object v0

    if-eqz v0, :cond_1d

    .line 888
    iget-object v0, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs;->mTabChild:Lcom/transsion/widgetslib/view/ViewPagerTabs$HorizontalTabChild;

    # getter for: Lcom/transsion/widgetslib/view/ViewPagerTabs$HorizontalTabChild;->mMovingLine:Landroid/graphics/Paint;
    invoke-static {v0}, Lcom/transsion/widgetslib/view/ViewPagerTabs$HorizontalTabChild;->access$1800(Lcom/transsion/widgetslib/view/ViewPagerTabs$HorizontalTabChild;)Landroid/graphics/Paint;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Landroid/content/Context;->getColor(I)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setColor(I)V

    :cond_1d
    return-void
.end method

.method public setOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V
    .registers 2

    .line 707
    iput-object p1, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs;->mOnPageChangeListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    return-void
.end method

.method public setOnScrollListener(Landroid/view/View$OnScrollChangeListener;)V
    .registers 2

    .line 711
    iput-object p1, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs;->mOnScrollListener:Landroid/view/View$OnScrollChangeListener;

    return-void
.end method

.method public setSelectTextColor(I)V
    .registers 2

    return-void
.end method

.method public setSelectedTabColors([I)V
    .registers 8

    if-eqz p1, :cond_31

    .line 254
    array-length v0, p1

    if-nez v0, :cond_6

    goto :goto_31

    .line 257
    :cond_6
    array-length v0, p1

    .line 259
    iget v1, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs;->mItemsNumber:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_f

    if-eq v0, v1, :cond_f

    move v0, v1

    .line 262
    :cond_f
    iget-object v1, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs;->mSelectedTitleColors:[I

    if-nez v1, :cond_17

    .line 263
    new-array v1, v0, [I

    iput-object v1, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs;->mSelectedTitleColors:[I

    :cond_17
    const/4 v1, 0x0

    :goto_18
    const/4 v3, 0x1

    if-ge v1, v0, :cond_2a

    .line 266
    iget-object v4, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs;->mSelectedTitleColors:[I

    array-length v5, p1

    sub-int/2addr v5, v3

    if-gt v1, v5, :cond_24

    aget v3, p1, v1

    goto :goto_25

    :cond_24
    move v3, v2

    :goto_25
    aput v3, v4, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    .line 268
    :cond_2a
    iput-boolean v3, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs;->mEnableMultipleSelectedTabColors:Z

    .line 271
    iget-object p0, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs;->mTabChild:Lcom/transsion/widgetslib/view/ViewPagerTabs$HorizontalTabChild;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_31
    :goto_31
    return-void
.end method

.method public setTabBalanced(Z)V
    .registers 2

    .line 309
    iput-boolean p1, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs;->mIsTabBalanced:Z

    return-void
.end method

.method public setTabChildEnable(Z)V
    .registers 6

    .line 894
    :try_start_0
    iget-object v0, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs;->mTabChild:Lcom/transsion/widgetslib/view/ViewPagerTabs$HorizontalTabChild;

    if-eqz v0, :cond_21

    .line 895
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_a
    if-ge v2, v0, :cond_21

    .line 897
    iget-object v3, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs;->mTabChild:Lcom/transsion/widgetslib/view/ViewPagerTabs$HorizontalTabChild;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 898
    iget-object v3, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs;->mTabChild:Lcom/transsion/widgetslib/view/ViewPagerTabs$HorizontalTabChild;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/view/View;->setEnabled(Z)V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1e} :catch_22

    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_21
    return-void

    :catch_22
    move-exception p0

    .line 902
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public setTabHeight(I)V
    .registers 4

    .line 275
    iget-object v0, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs;->mTabChild:Lcom/transsion/widgetslib/view/ViewPagerTabs$HorizontalTabChild;

    if-nez v0, :cond_5

    return-void

    :cond_5
    int-to-float p1, p1

    .line 279
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v1, 0x1

    .line 278
    invoke-static {v1, p1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs;->mTabHeight:I

    .line 280
    iget-object p1, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs;->mTabChild:Lcom/transsion/widgetslib/view/ViewPagerTabs$HorizontalTabChild;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz p1, :cond_2a

    .line 282
    iget v0, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs;->mTabHeight:I

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 283
    iget-object p0, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs;->mTabChild:Lcom/transsion/widgetslib/view/ViewPagerTabs$HorizontalTabChild;

    invoke-virtual {p0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    .line 285
    :cond_2a
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v0, -0x1

    iget v1, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs;->mTabHeight:I

    invoke-direct {p1, v0, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 286
    iget-object p0, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs;->mTabChild:Lcom/transsion/widgetslib/view/ViewPagerTabs$HorizontalTabChild;

    invoke-virtual {p0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setTabs([Ljava/lang/CharSequence;)V
    .registers 7

    if-eqz p1, :cond_30

    .line 291
    array-length v0, p1

    if-nez v0, :cond_6

    goto :goto_30

    .line 295
    :cond_6
    array-length v0, p1

    iput v0, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs;->mItemsNumber:I

    .line 296
    iget-object v1, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs;->mSelectedTitleColors:[I

    const/4 v2, 0x0

    if-eqz v1, :cond_2a

    array-length v1, v1

    if-eq v1, v0, :cond_2a

    .line 297
    new-array v0, v0, [I

    move v1, v2

    .line 298
    :goto_14
    iget v3, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs;->mItemsNumber:I

    if-ge v1, v3, :cond_28

    .line 299
    iget-object v3, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs;->mSelectedTitleColors:[I

    array-length v4, v3

    add-int/lit8 v4, v4, -0x1

    if-gt v1, v4, :cond_22

    aget v3, v3, v1

    goto :goto_23

    :cond_22
    const/4 v3, -0x1

    :goto_23
    aput v3, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    .line 301
    :cond_28
    iput-object v0, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs;->mSelectedTitleColors:[I

    .line 304
    :cond_2a
    invoke-direct {p0, p1}, Lcom/transsion/widgetslib/view/ViewPagerTabs;->addTabs([Ljava/lang/CharSequence;)V

    .line 305
    invoke-virtual {p0, v2}, Landroid/view/View;->setHorizontalScrollBarEnabled(Z)V

    :cond_30
    :goto_30
    return-void
.end method

.method public setTitleTabEnable(IZ)V
    .registers 4

    .line 872
    iget-object v0, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs;->mTabChild:Lcom/transsion/widgetslib/view/ViewPagerTabs$HorizontalTabChild;

    if-eqz v0, :cond_15

    .line 873
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ltz p1, :cond_15

    if-ge p1, v0, :cond_15

    .line 875
    iget-object p0, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs;->mTabChild:Lcom/transsion/widgetslib/view/ViewPagerTabs$HorizontalTabChild;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/view/View;->setEnabled(Z)V

    :cond_15
    return-void
.end method

.method public setUnSelectTextColor(I)V
    .registers 2

    return-void
.end method

.method public varargs setUnreadTip([I)V
    .registers 3

    if-eqz p1, :cond_f

    .line 714
    array-length v0, p1

    if-nez v0, :cond_6

    goto :goto_f

    .line 717
    :cond_6
    iput-object p1, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs;->mUnreadPosition:[I

    .line 719
    iget-object p0, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs;->mTabChild:Lcom/transsion/widgetslib/view/ViewPagerTabs$HorizontalTabChild;

    if-eqz p0, :cond_f

    .line 720
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_f
    :goto_f
    return-void
.end method

.method public setViewPager(Landroidx/viewpager/widget/ViewPager;)V
    .registers 4

    .line 641
    iput-object p1, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    .line 642
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/transsion/widgetslib/view/ViewPagerTabs$2;

    invoke-direct {v1, p0, p1}, Lcom/transsion/widgetslib/view/ViewPagerTabs$2;-><init>(Lcom/transsion/widgetslib/view/ViewPagerTabs;Landroidx/viewpager/widget/ViewPager;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method public setViewPager(Landroidx/viewpager/widget/ViewPager;I)V
    .registers 5

    .line 682
    iput-object p1, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    .line 683
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/transsion/widgetslib/view/ViewPagerTabs$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/transsion/widgetslib/view/ViewPagerTabs$3;-><init>(Lcom/transsion/widgetslib/view/ViewPagerTabs;Landroidx/viewpager/widget/ViewPager;I)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method
