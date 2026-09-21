.class public Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;
.super Landroid/widget/LinearLayout;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnScrollChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout$TabOverflowPopupAdapter;,
        Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout$OnItemClickListener;
    }
.end annotation


# static fields
.field private static final INSET_STRETCH_PERCENT:F = 0.14f

.field private static final ITEM_AMOUNT_THRESHOLD_SECOND_HOME:F = 2.0f

.field private static final ITEM_AMOUNT_THRESHOLD_STRETCH_PERCENT:F = 3.0f

.field private static final TAG:Ljava/lang/String; = "OSTabLayout"


# instance fields
.field private mBottomLine:Landroid/view/View;

.field private mIsFirstLevelTab:Z

.field private mIsSecondHome:Z

.field private mItemClickListener:Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout$OnItemClickListener;

.field private mLlIconContainer:Landroid/widget/LinearLayout;

.field private mLlTabIconContainer:Landroid/view/ViewGroup;

.field private mOnClickListener:Landroid/view/View$OnClickListener;

.field private mOverflowButton:Landroid/widget/ImageView;

.field private mOverflowState:[Z

.field private mPopupItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPopupWindow:Landroid/widget/ListPopupWindow;

.field private mShowBottomLine:Z

.field private mTabLayout:Lcom/transsion/widgetslib/widget/tablayout/TabLayout;

.field private mTabPaddingStart:I

.field private mTabScrollPaddingStart:I

.field private mTabTextSize:F

.field private mTvLeftMask:Landroid/widget/TextView;

.field private mTvRightMask:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 63
    invoke-direct {p0, p1, v0}, Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6

    .line 67
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 68
    sget v0, Lcom/transsion/widgetslib/R$layout;->os_tab_layout:I

    invoke-static {p1, v0, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    const/4 v0, 0x1

    .line 69
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 70
    sget-object v0, Lcom/transsion/widgetslib/R$styleable;->OSTabLayout:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 71
    sget v0, Lcom/transsion/widgetslib/R$styleable;->OSTabLayout_osShowBottomLine:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;->mShowBottomLine:Z

    .line 72
    sget v0, Lcom/transsion/widgetslib/R$styleable;->OSTabLayout_osIsFirstLevelTab:I

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;->mIsFirstLevelTab:Z

    .line 73
    sget v0, Lcom/transsion/widgetslib/R$styleable;->OSTabLayout_osTabLayoutTextSize:I

    const/4 v2, -0x1

    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;->mTabTextSize:F

    .line 74
    sget v0, Lcom/transsion/widgetslib/R$attr;->OsBgPrimary:I

    filled-new-array {v0}, [I

    move-result-object v0

    .line 75
    invoke-virtual {p1, v0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 76
    sget v2, Lcom/transsion/widgetslib/R$color;->os_bg_primary_color:I

    invoke-static {p1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    .line 77
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 78
    sget v0, Lcom/transsion/widgetslib/R$styleable;->OSTabLayout_osTabLayoutBackground:I

    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    .line 79
    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 80
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 81
    sget p2, Lcom/transsion/widgetslib/R$attr;->tabPaddingStart:I

    filled-new-array {p2}, [I

    move-result-object p2

    .line 82
    sget v0, Lcom/transsion/widgetslib/R$style;->OSTablayout:I

    invoke-virtual {p1, v0, p2}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 83
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/transsion/widgetslib/R$dimen;->os_tab_item_padding_start:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p2, v1, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;->mTabPaddingStart:I

    .line 84
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 85
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/transsion/widgetslib/R$dimen;->os_tab_item_scroll_padding_start:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;->mTabScrollPaddingStart:I

    .line 86
    sget p1, Lcom/transsion/widgetslib/R$id;->tablayout_underline:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;->mBottomLine:Landroid/view/View;

    .line 87
    iget-boolean p2, p0, Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;->mShowBottomLine:Z

    if-eqz p2, :cond_8b

    .line 88
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_8f

    :cond_8b
    const/4 p2, 0x4

    .line 90
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 92
    :goto_8f
    sget p1, Lcom/transsion/widgetslib/R$id;->tablayout:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;

    iput-object p1, p0, Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;->mTabLayout:Lcom/transsion/widgetslib/widget/tablayout/TabLayout;

    .line 93
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnScrollChangeListener(Landroid/view/View$OnScrollChangeListener;)V

    .line 94
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;->mTabLayout:Lcom/transsion/widgetslib/widget/tablayout/TabLayout;

    invoke-virtual {p1, p0}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->bindOSTabLayout(Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;)V

    .line 95
    sget p1, Lcom/transsion/widgetslib/R$id;->overFlowButton:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;->mOverflowButton:Landroid/widget/ImageView;

    .line 96
    sget p1, Lcom/transsion/widgetslib/R$id;->ll_icon_container:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;->mLlIconContainer:Landroid/widget/LinearLayout;

    .line 97
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;->mOverflowButton:Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    sget p1, Lcom/transsion/widgetslib/R$id;->tv_left_mask:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;->mTvLeftMask:Landroid/widget/TextView;

    .line 99
    sget p1, Lcom/transsion/widgetslib/R$id;->tv_right_mask:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;->mTvRightMask:Landroid/widget/TextView;

    .line 100
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;->mTabLayout:Lcom/transsion/widgetslib/widget/tablayout/TabLayout;

    iget-boolean p2, p0, Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;->mIsFirstLevelTab:Z

    invoke-virtual {p1, p2}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->isFirstLevelTab(Z)V

    .line 101
    iget p1, p0, Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;->mTabTextSize:F

    const/high16 p2, -0x40800000    # -1.0f

    cmpl-float p2, p1, p2

    if-eqz p2, :cond_e2

    .line 102
    iget-object p2, p0, Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;->mTabLayout:Lcom/transsion/widgetslib/widget/tablayout/TabLayout;

    invoke-virtual {p2, p1}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->setTabTextSize(F)V

    .line 104
    :cond_e2
    sget p1, Lcom/transsion/widgetslib/R$id;->ll_tab_icon_container:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;->mLlTabIconContainer:Landroid/view/ViewGroup;

    .line 105
    new-instance p1, Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout$1;

    invoke-direct {p1, p0}, Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout$1;-><init>(Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;)V

    invoke-virtual {p0, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 111
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/transsion/widgetslib/util/Utils;->isSecondHome(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;->mIsSecondHome:Z

    return-void
.end method

.method static synthetic access$000(Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;)Z
    .registers 1

    .line 28
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;->handleFilter()Z

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;)Ljava/util/List;
    .registers 1

    .line 28
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;->mPopupItems:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$500(Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;)[Z
    .registers 1

    .line 28
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;->mOverflowState:[Z

    return-object p0
.end method

.method static synthetic access$600(Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;Landroid/view/View;Z)V
    .registers 3

    .line 28
    invoke-direct {p0, p1, p2}, Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;->viewEnable(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$700(Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;)Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout$OnItemClickListener;
    .registers 1

    .line 28
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;->mItemClickListener:Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout$OnItemClickListener;

    return-object p0
.end method

.method static synthetic access$800(Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;)Landroid/widget/ListPopupWindow;
    .registers 1

    .line 28
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;->mPopupWindow:Landroid/widget/ListPopupWindow;

    return-object p0
.end method

.method private handleFilter()Z
    .registers 7

    .line 211
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;->isTabLayoutScroll()Z

    move-result v0

    const/4 v1, 0x1

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-nez v0, :cond_27

    .line 212
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;->mTvLeftMask:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, v2, :cond_18

    .line 213
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;->mTvLeftMask:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    move v3, v1

    .line 216
    :cond_18
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;->mTvRightMask:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, v2, :cond_26

    .line 217
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;->mTvRightMask:Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    return v1

    :cond_26
    return v3

    .line 223
    :cond_27
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;->mTabLayout:Lcom/transsion/widgetslib/widget/tablayout/TabLayout;

    invoke-virtual {v0}, Landroid/view/View;->getScrollX()I

    move-result v0

    .line 224
    iget-object v4, p0, Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;->mTabLayout:Lcom/transsion/widgetslib/widget/tablayout/TabLayout;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    add-int/2addr v4, v0

    iget-object v5, p0, Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;->mTabLayout:Lcom/transsion/widgetslib/widget/tablayout/TabLayout;

    invoke-virtual {v5, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    if-lt v4, v5, :cond_42

    move v4, v1

    goto :goto_43

    :cond_42
    move v4, v3

    :goto_43
    if-lez v0, :cond_4a

    if-eqz v4, :cond_4a

    move v0, v2

    move v2, v3

    goto :goto_50

    :cond_4a
    if-lez v0, :cond_4f

    move v0, v3

    move v2, v0

    goto :goto_50

    :cond_4f
    move v0, v3

    .line 235
    :goto_50
    iget-object v4, p0, Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;->mTvLeftMask:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-eq v2, v4, :cond_5e

    .line 236
    iget-object v3, p0, Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;->mTvLeftMask:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    move v3, v1

    .line 239
    :cond_5e
    iget-object v2, p0, Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;->mTvRightMask:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eq v0, v2, :cond_6c

    .line 240
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;->mTvRightMask:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return v1

    :cond_6c
    return v3
.end method

.method private initOverflowItemState(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1b

    .line 179
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;->mPopupItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;->mOverflowState:[Z

    const/4 v0, 0x0

    .line 181
    :goto_d
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1b

    .line 182
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;->mOverflowState:[Z

    const/4 v2, 0x1

    aput-boolean v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    :cond_1b
    return-void
.end method

.method private isTabLayoutScroll()Z
    .registers 3

    .line 206
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;->mTabLayout:Lcom/transsion/widgetslib/widget/tablayout/TabLayout;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;->mTabLayout:Lcom/transsion/widgetslib/widget/tablayout/TabLayout;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p0

    if-eq v0, p0, :cond_15

    const/4 p0, 0x1

    return p0

    :cond_15
    return v1
.end method

.method private viewEnable(Landroid/view/View;Z)V
    .registers 3

    .line 196
    invoke-virtual {p1, p2}, Landroid/view/View;->setEnabled(Z)V

    if-eqz p2, :cond_8

    const/high16 p0, 0x3f800000    # 1.0f

    goto :goto_b

    :cond_8
    const p0, 0x3e99999a    # 0.3f

    .line 197
    :goto_b
    invoke-virtual {p1, p0}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method


# virtual methods
.method public getLeftMaskView()Landroid/view/View;
    .registers 1

    .line 412
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;->mTvLeftMask:Landroid/widget/TextView;

    return-object p0
.end method

.method public getRightMaskView()Landroid/view/View;
    .registers 1

    .line 416
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;->mTvRightMask:Landroid/widget/TextView;

    return-object p0
.end method

.method public getTabLayout()Lcom/transsion/widgetslib/widget/tablayout/TabLayout;
    .registers 1

    .line 123
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;->mTabLayout:Lcom/transsion/widgetslib/widget/tablayout/TabLayout;

    return-object p0
.end method

.method protected handleInsets()Z
    .registers 11

    .line 262
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;->mBottomLine:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 264
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;->isTabLayoutScroll()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2a

    .line 265
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/transsion/widgetslib/R$dimen;->os_tab_second_underline_margin_start:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 266
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/transsion/widgetslib/R$dimen;->os_tab_second_underline_margin_end:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 267
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 268
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    goto :goto_2c

    :cond_2a
    move v1, v2

    move v3, v1

    .line 270
    :goto_2c
    invoke-virtual {v0}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginStart()I

    move-result v4

    const/4 v5, 0x1

    if-ne v1, v4, :cond_3c

    .line 271
    invoke-virtual {v0}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginEnd()I

    move-result v1

    if-eq v3, v1, :cond_3a

    goto :goto_3c

    :cond_3a
    move v0, v2

    goto :goto_42

    .line 272
    :cond_3c
    :goto_3c
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;->mBottomLine:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move v0, v5

    .line 279
    :goto_42
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;->mTabLayout:Lcom/transsion/widgetslib/widget/tablayout/TabLayout;

    invoke-virtual {v1}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->getTabMode()I

    move-result v1

    if-nez v1, :cond_55

    .line 280
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/transsion/widgetslib/R$dimen;->os_space300:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    goto :goto_5f

    .line 281
    :cond_55
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/transsion/widgetslib/R$dimen;->os_space250:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    :goto_5f
    move v3, v2

    .line 282
    :goto_60
    iget-object v4, p0, Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;->mTabLayout:Lcom/transsion/widgetslib/widget/tablayout/TabLayout;

    invoke-virtual {v4}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->getTabCount()I

    move-result v4

    if-ge v3, v4, :cond_88

    .line 283
    iget-object v4, p0, Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;->mTabLayout:Lcom/transsion/widgetslib/widget/tablayout/TabLayout;

    invoke-virtual {v4}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->getTabCount()I

    move-result v4

    sub-int/2addr v4, v5

    if-ge v3, v4, :cond_85

    .line 284
    iget-object v4, p0, Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;->mTabLayout:Lcom/transsion/widgetslib/widget/tablayout/TabLayout;

    invoke-virtual {v4, v3}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->getTabAt(I)Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;

    move-result-object v4

    iget-object v4, v4, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;->view:Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;

    .line 285
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 286
    invoke-virtual {v6, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 287
    invoke-virtual {v4, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_85
    add-int/lit8 v3, v3, 0x1

    goto :goto_60

    .line 291
    :cond_88
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;->mTabLayout:Lcom/transsion/widgetslib/widget/tablayout/TabLayout;

    invoke-virtual {v1}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->getTabCount()I

    move-result v1

    const/4 v3, 0x2

    const/16 v4, 0x258

    if-gt v1, v3, :cond_c1

    iget-object v1, p0, Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;->mTabLayout:Lcom/transsion/widgetslib/widget/tablayout/TabLayout;

    invoke-virtual {v1}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->getTabMode()I

    move-result v1

    if-ne v1, v5, :cond_c1

    .line 293
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v4}, Lcom/transsion/widgetslib/util/Utils;->dp2px(Landroid/content/Context;I)I

    move-result v3

    if-le v1, v3, :cond_b4

    .line 294
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/transsion/widgetslib/R$dimen;->os_tab_padding_for_two_large:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    goto :goto_be

    .line 295
    :cond_b4
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/transsion/widgetslib/R$dimen;->os_tab_padding_for_two:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    :cond_be
    :goto_be
    move v3, v1

    goto/16 :goto_157

    .line 296
    :cond_c1
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;->mTabLayout:Lcom/transsion/widgetslib/widget/tablayout/TabLayout;

    invoke-virtual {v1}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->getTabCount()I

    move-result v1

    const/4 v3, 0x3

    if-ne v1, v3, :cond_f6

    iget-object v1, p0, Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;->mTabLayout:Lcom/transsion/widgetslib/widget/tablayout/TabLayout;

    invoke-virtual {v1}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->getTabMode()I

    move-result v1

    if-ne v1, v5, :cond_f6

    .line 298
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v4}, Lcom/transsion/widgetslib/util/Utils;->dp2px(Landroid/content/Context;I)I

    move-result v3

    if-le v1, v3, :cond_eb

    .line 299
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/transsion/widgetslib/R$dimen;->os_tab_padding_for_three_large:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    goto :goto_be

    .line 300
    :cond_eb
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/transsion/widgetslib/R$dimen;->os_tab_padding_for_two:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    goto :goto_be

    .line 303
    :cond_f6
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v4}, Lcom/transsion/widgetslib/util/Utils;->dp2px(Landroid/content/Context;I)I

    move-result v3

    if-le v1, v3, :cond_10f

    .line 304
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/transsion/widgetslib/R$dimen;->os_tab_padding_large:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    goto :goto_119

    .line 305
    :cond_10f
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/transsion/widgetslib/R$dimen;->os_tab_padding:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 306
    :goto_119
    iget-object v3, p0, Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;->mTabLayout:Lcom/transsion/widgetslib/widget/tablayout/TabLayout;

    invoke-virtual {v3}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->getTabMode()I

    move-result v3

    if-nez v3, :cond_be

    .line 307
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v4}, Lcom/transsion/widgetslib/util/Utils;->dp2px(Landroid/content/Context;I)I

    move-result v3

    if-le v1, v3, :cond_13d

    .line 308
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/transsion/widgetslib/R$dimen;->os_tab_padding_start_scrollable_large:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget v3, p0, Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;->mTabScrollPaddingStart:I

    :goto_13b
    sub-int/2addr v1, v3

    goto :goto_14a

    .line 309
    :cond_13d
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/transsion/widgetslib/R$dimen;->os_tab_padding_start_scrollable:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget v3, p0, Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;->mTabScrollPaddingStart:I

    goto :goto_13b

    .line 310
    :goto_14a
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v6, Lcom/transsion/widgetslib/R$dimen;->os_space250:I

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    move v9, v3

    move v3, v1

    move v1, v9

    .line 313
    :goto_157
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7, v4}, Lcom/transsion/widgetslib/util/Utils;->dp2px(Landroid/content/Context;I)I

    move-result v4

    if-le v6, v4, :cond_186

    iget-object v4, p0, Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;->mTabLayout:Lcom/transsion/widgetslib/widget/tablayout/TabLayout;

    .line 314
    invoke-virtual {v4}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->getTabCount()I

    move-result v4

    int-to-float v4, v4

    const/high16 v6, 0x40400000    # 3.0f

    cmpg-float v4, v4, v6

    if-gtz v4, :cond_186

    iget-object v4, p0, Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;->mTabLayout:Lcom/transsion/widgetslib/widget/tablayout/TabLayout;

    .line 315
    invoke-virtual {v4}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->getTabMode()I

    move-result v4

    if-ne v4, v5, :cond_186

    .line 316
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    const v3, 0x3e0f5c29    # 0.14f

    mul-float/2addr v1, v3

    float-to-int v1, v1

    :goto_184
    move v3, v1

    goto :goto_195

    .line 317
    :cond_186
    iget-boolean v4, p0, Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;->mIsSecondHome:Z

    if-eqz v4, :cond_195

    .line 318
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/transsion/widgetslib/R$dimen;->os_tab_padding_sh:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    goto :goto_184

    .line 320
    :cond_195
    :goto_195
    iget-object v4, p0, Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;->mOverflowButton:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_1b2

    .line 321
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v4, Lcom/transsion/widgetslib/R$dimen;->os_tab_overflow_image_edge_distance:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v6, Lcom/transsion/widgetslib/R$dimen;->os_tab_overflow_image_margin_end:I

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    sub-int/2addr v1, v4

    .line 324
    :cond_1b2
    iget-object v4, p0, Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;->mLlIconContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    if-lez v4, :cond_1bc

    move v4, v5

    goto :goto_1bd

    :cond_1bc
    move v4, v2

    :goto_1bd
    if-eqz v4, :cond_1c1

    move v6, v1

    goto :goto_1c2

    :cond_1c1
    move v6, v2

    :goto_1c2
    if-eqz v4, :cond_1c6

    move v4, v2

    goto :goto_1c7

    :cond_1c6
    move v4, v1

    .line 327
    :goto_1c7
    iget-object v7, p0, Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;->mLlTabIconContainer:Landroid/view/ViewGroup;

    invoke-virtual {v7}, Landroid/view/View;->getPaddingEnd()I

    move-result v7

    if-eq v6, v7, :cond_1df

    .line 328
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;->mLlTabIconContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v7

    iget-object v8, p0, Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;->mLlTabIconContainer:Landroid/view/ViewGroup;

    invoke-virtual {v8}, Landroid/view/View;->getPaddingBottom()I

    move-result v8

    invoke-virtual {v0, v2, v7, v6, v8}, Landroid/view/View;->setPaddingRelative(IIII)V

    move v0, v5

    .line 331
    :cond_1df
    iget-object v6, p0, Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;->mTabLayout:Lcom/transsion/widgetslib/widget/tablayout/TabLayout;

    invoke-virtual {v6, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 332
    invoke-virtual {v2}, Landroid/view/View;->getPaddingStart()I

    move-result v6

    if-ne v3, v6, :cond_1f3

    invoke-virtual {v2}, Landroid/view/View;->getPaddingEnd()I

    move-result v6

    if-eq v1, v6, :cond_1f2

    goto :goto_1f3

    :cond_1f2
    return v0

    .line 333
    :cond_1f3
    :goto_1f3
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;->mLlTabIconContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;->mLlTabIconContainer:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result p0

    invoke-virtual {v2, v3, v0, v4, p0}, Landroid/view/View;->setPaddingRelative(IIII)V

    return v5
.end method

.method public onClick(Landroid/view/View;)V
    .registers 5

    .line 128
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;->mOverflowButton:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_24

    .line 129
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;->mPopupWindow:Landroid/widget/ListPopupWindow;

    if-eqz v0, :cond_1d

    .line 130
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    iget-object v2, p0, Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;->mOverflowButton:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->setVerticalOffset(I)V

    .line 131
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;->mPopupWindow:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->show()V

    .line 133
    :cond_1d
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;->mOnClickListener:Landroid/view/View$OnClickListener;

    if-eqz p0, :cond_24

    .line 134
    invoke-interface {p0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_24
    return-void
.end method

.method protected onMeasure(II)V
    .registers 5

    .line 248
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 249
    iget-boolean v0, p0, Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;->mIsSecondHome:Z

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;->mTabLayout:Lcom/transsion/widgetslib/widget/tablayout/TabLayout;

    invoke-virtual {v0}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->getTabCount()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_22

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;->mTabLayout:Lcom/transsion/widgetslib/widget/tablayout/TabLayout;

    .line 250
    invoke-virtual {v0}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->getTabMode()I

    move-result v0

    if-eqz v0, :cond_22

    .line 251
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;->mTabLayout:Lcom/transsion/widgetslib/widget/tablayout/TabLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->setTabMode(I)V

    .line 253
    :cond_22
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;->handleFilter()Z

    .line 254
    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;->handleInsets()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 255
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    :cond_2e
    return-void
.end method

.method public onScrollChange(Landroid/view/View;IIII)V
    .registers 6

    .line 202
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;->handleFilter()Z

    return-void
.end method

.method public setBackground(I)V
    .registers 2

    .line 140
    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundResource(I)V

    return-void
.end method

.method public setCustomMenuView(Landroid/view/View;)V
    .registers 3

    .line 401
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;->mLlIconContainer:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_19

    .line 402
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 403
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;->mLlIconContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 404
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    const/4 v0, -0x2

    .line 405
    iput v0, p0, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v0, -0x1

    .line 406
    iput v0, p0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 407
    invoke-virtual {p1, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_19
    return-void
.end method

.method public setOnItemClickListener(Landroid/view/View$OnClickListener;)V
    .registers 2

    .line 192
    iput-object p1, p0, Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;->mOnClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public setOnItemClickListener(Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout$OnItemClickListener;)V
    .registers 2

    .line 188
    iput-object p1, p0, Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;->mItemClickListener:Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout$OnItemClickListener;

    return-void
.end method

.method public setOverFlowMenuItem(I)V
    .registers 7

    .line 166
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;->mOverflowButton:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 167
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;->mPopupItems:Ljava/util/List;

    .line 168
    invoke-direct {p0, p1}, Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;->initOverflowItemState(Ljava/util/List;)V

    .line 169
    new-instance p1, Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout$TabOverflowPopupAdapter;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout$TabOverflowPopupAdapter;-><init>(Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout$1;)V

    .line 170
    new-instance v2, Landroid/widget/ListPopupWindow;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/transsion/widgetslib/R$style;->OSTabOverflow:I

    invoke-direct {v2, v3, v0, v1, v4}, Landroid/widget/ListPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-object v2, p0, Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;->mPopupWindow:Landroid/widget/ListPopupWindow;

    .line 171
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;->mOverflowButton:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ListPopupWindow;->setAnchorView(Landroid/view/View;)V

    .line 172
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;->mPopupWindow:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/ListPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 173
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;->mPopupWindow:Landroid/widget/ListPopupWindow;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->setModal(Z)V

    .line 174
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;->mPopupWindow:Landroid/widget/ListPopupWindow;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/transsion/widgetslib/util/Utils;->measureAdapterMaxWidth(Landroid/content/Context;Landroid/widget/ListAdapter;)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/widget/ListPopupWindow;->setContentWidth(I)V

    return-void
.end method

.method public setOverflowButtonVisible(Z)V
    .registers 2

    .line 150
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;->mOverflowButton:Landroid/widget/ImageView;

    if-eqz p0, :cond_10

    if-eqz p1, :cond_b

    const/4 p1, 0x0

    .line 152
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void

    :cond_b
    const/16 p1, 0x8

    .line 154
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_10
    return-void
.end method

.method public setOverflowImage(I)V
    .registers 3

    .line 144
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;->mOverflowButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_f

    .line 145
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_f
    return-void
.end method

.method public setOverflowItemState(IZ)V
    .registers 3

    .line 160
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;->mOverflowState:[Z

    if-eqz p0, :cond_6

    .line 161
    aput-boolean p2, p0, p1

    :cond_6
    return-void
.end method

.method public setShowBottomLine(Z)V
    .registers 2

    if-eqz p1, :cond_9

    .line 116
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;->mBottomLine:Landroid/view/View;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 118
    :cond_9
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;->mBottomLine:Landroid/view/View;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
