.class public Lcom/transsion/widgetslib/widget/FootOperationBar;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/widgetslib/widget/FootOperationBar$RedPointType;,
        Lcom/transsion/widgetslib/widget/FootOperationBar$FootPopupAdapter;,
        Lcom/transsion/widgetslib/widget/FootOperationBar$OnFootOptBarClickListener;,
        Lcom/transsion/widgetslib/widget/FootOperationBar$MyOnPreDrawListener;
    }
.end annotation


# static fields
.field private static final ANIM_TIME:I = 0x96

.field private static final DEFAULT_MAX_VISIBLE_TAB_COUNT:I = 0x5

.field private static final DEFAULT_MIN_VISIBLE_TAB_COUNT:I = 0x3

.field private static final MAX_LETTER_SPACING:F = 0.0f

.field private static final MIN_LETTER_SPACING:F = -0.05f

.field private static final PRESS_TIME:Ljava/lang/String; = "PRESS_TIME"

.field private static final TAG:Ljava/lang/String; = "FootOperationBar"


# instance fields
.field private final PRESS_ANIMATION_DURATION:I

.field private final PRESS_RESPONSE_TIME:I

.field private isFootActionBar:Z

.field private mAnim:Z

.field private mBgColor:I

.field private mBlurAlp:F

.field private mClickImageTintColor:I

.field private mClickInterval:J

.field private mClickTextColor:I

.field private mContainer:Landroid/widget/LinearLayout;

.field private mContext:Landroid/content/Context;

.field private mCurrentItemCount:I

.field private mDynamicBlur:Lcom/transsion/widgetslib/blur/DynamicBlur;

.field private mFootItemViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mHaveClickImageTintColor:Z

.field private mHaveNormalImageTintColor:Z

.field private mHaveTextColor:Z

.field private mImmersive:Z

.field private mInitShow:Z

.field private mIsLandscape:Z

.field private mItemBackgroundRes:I

.field private mItemClickListener:Lcom/transsion/widgetslib/widget/FootOperationBar$OnFootOptBarClickListener;

.field private mLastClickTime:J

.field private mMaxVisibleTabCount:I

.field private mMenuBuilder:Landroidx/appcompat/view/menu/MenuBuilder;

.field private mMenuEnables:[Z

.field private mMoreIconRes:I

.field private mMoreView:Landroid/view/View;

.field private final mMyOnPreDrawListener:Lcom/transsion/widgetslib/widget/FootOperationBar$MyOnPreDrawListener;

.field private mNormalImageTintColor:I

.field private mOrientation:I

.field private mPopAdapter:Lcom/transsion/widgetslib/widget/FootOperationBar$FootPopupAdapter;

.field private mPopup:Landroid/widget/ListPopupWindow;

.field private mPopupItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPopupMaxHeight:I

.field mPressAnimator:Landroid/animation/ValueAnimator;

.field private mSelectedIndex:I

.field private mShow:Z

.field private final mTabHitDelegateExpend:I

.field private final mTabParentHitDelegateInsert:I

.field private mTextColor:I

.field private mTintColor:I

.field private mVisibleTabCount:I

.field private needChangeImgColor:Z


# direct methods
.method public static synthetic $r8$lambda$8Oj2R_UfU5ankkeANH1-ZlvjHiY(Lcom/transsion/widgetslib/widget/FootOperationBar;Landroid/view/View;I)V
    .registers 4

    const/high16 v0, 0x3f800000    # 1.0f

    .line 492
    invoke-direct {p0, p1, v0}, Lcom/transsion/widgetslib/widget/FootOperationBar;->startAlphaAnimation(Landroid/view/View;F)V

    .line 493
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mItemClickListener:Lcom/transsion/widgetslib/widget/FootOperationBar$OnFootOptBarClickListener;

    if-eqz p1, :cond_18

    invoke-direct {p0, p2}, Lcom/transsion/widgetslib/widget/FootOperationBar;->isFastClick(I)Z

    move-result p1

    if-nez p1, :cond_18

    .line 494
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mItemClickListener:Lcom/transsion/widgetslib/widget/FootOperationBar$OnFootOptBarClickListener;

    invoke-interface {p1, p2}, Lcom/transsion/widgetslib/widget/FootOperationBar$OnFootOptBarClickListener;->onItemClick(I)V

    const/4 p1, 0x1

    .line 495
    invoke-direct {p0, p2, p1}, Lcom/transsion/widgetslib/widget/FootOperationBar;->setItemSelectState(IZ)V

    :cond_18
    return-void
.end method

.method public static synthetic $r8$lambda$AuTJ1iBaecoCbpSNKHAf1MXCk0c(Lcom/transsion/widgetslib/widget/FootOperationBar;Landroid/view/View;I)V
    .registers 4

    const/high16 v0, 0x3f800000    # 1.0f

    .line 549
    invoke-direct {p0, p1, v0}, Lcom/transsion/widgetslib/widget/FootOperationBar;->startAlphaAnimation(Landroid/view/View;F)V

    .line 550
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mItemClickListener:Lcom/transsion/widgetslib/widget/FootOperationBar$OnFootOptBarClickListener;

    if-eqz p1, :cond_18

    invoke-direct {p0, p2}, Lcom/transsion/widgetslib/widget/FootOperationBar;->isFastClick(I)Z

    move-result p1

    if-nez p1, :cond_18

    .line 551
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mItemClickListener:Lcom/transsion/widgetslib/widget/FootOperationBar$OnFootOptBarClickListener;

    invoke-interface {p1, p2}, Lcom/transsion/widgetslib/widget/FootOperationBar$OnFootOptBarClickListener;->onItemClick(I)V

    const/4 p1, 0x1

    .line 552
    invoke-direct {p0, p2, p1}, Lcom/transsion/widgetslib/widget/FootOperationBar;->setItemSelectState(IZ)V

    :cond_18
    return-void
.end method

.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 11

    .line 138
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-wide/16 v0, 0x0

    .line 93
    iput-wide v0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mLastClickTime:J

    .line 94
    iput-wide v0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mClickInterval:J

    const/4 v0, 0x0

    .line 98
    iput-boolean v0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mShow:Z

    .line 99
    iput-boolean v0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mAnim:Z

    .line 100
    iput-boolean v0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mInitShow:Z

    .line 101
    iput-boolean v0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mImmersive:Z

    const/4 v1, 0x1

    .line 113
    iput-boolean v1, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->needChangeImgColor:Z

    .line 116
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mFootItemViews:Ljava/util/List;

    const/4 v2, -0x1

    .line 121
    iput v2, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mTintColor:I

    const v3, 0x3f4ccccd    # 0.8f

    .line 122
    iput v3, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mBlurAlp:F

    .line 130
    iput v2, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mSelectedIndex:I

    const/16 v3, 0x64

    .line 133
    iput v3, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->PRESS_RESPONSE_TIME:I

    .line 134
    iput v3, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->PRESS_ANIMATION_DURATION:I

    .line 139
    iput-object p1, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mContext:Landroid/content/Context;

    .line 140
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    sget v4, Lcom/transsion/widgetslib/R$layout;->os_foot_opt_bar_root:I

    invoke-virtual {v3, v4, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 141
    sget v3, Lcom/transsion/widgetslib/R$id;->os_foot_opt_bar_container:I

    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mContainer:Landroid/widget/LinearLayout;

    .line 142
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mPopupItems:Ljava/util/List;

    .line 143
    sget-object v3, Lcom/transsion/widgetslib/R$styleable;->FootOperationBar:[I

    invoke-virtual {p1, p2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 146
    sget v3, Lcom/transsion/widgetslib/R$styleable;->FootOperationBar_isFootActionBar:I

    invoke-virtual {p2, v3, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->isFootActionBar:Z

    .line 147
    sget v3, Lcom/transsion/widgetslib/R$styleable;->FootOperationBar_foot_need_change_img_color:I

    invoke-virtual {p2, v3, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->needChangeImgColor:Z

    .line 149
    sget v3, Lcom/transsion/widgetslib/R$styleable;->FootOperationBar_foot_item_background:I

    sget v4, Lcom/transsion/widgetslib/R$drawable;->os_foot_option_bar_item_bg:I

    invoke-virtual {p2, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mItemBackgroundRes:I

    .line 150
    sget v3, Lcom/transsion/widgetslib/R$styleable;->FootOperationBar_foot_item_icon_tint:I

    iget-object v4, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mContext:Landroid/content/Context;

    sget v5, Lcom/transsion/widgetslib/R$attr;->os_icon_secondary:I

    sget v6, Lcom/transsion/widgetslib/R$color;->os_icon_secondary_hios:I

    invoke-static {v4, v5, v6}, Lcom/transsion/widgetslib/util/Utils;->getAttrColor(Landroid/content/Context;II)I

    move-result v4

    invoke-virtual {p2, v3, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    iput v3, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mTintColor:I

    .line 151
    sget v3, Lcom/transsion/widgetslib/R$attr;->os_platform_basic_color:I

    sget v4, Lcom/transsion/widgetslib/R$attr;->os_foot_more:I

    filled-new-array {v3, v4}, [I

    move-result-object v3

    .line 152
    invoke-virtual {p1, v3}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 153
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/transsion/widgetslib/R$color;->os_platform_basic_color_hios:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v0, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    .line 154
    sget v5, Lcom/transsion/widgetslib/R$drawable;->os_ic_foot_more_hios:I

    invoke-virtual {v3, v1, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    iput v5, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mMoreIconRes:I

    .line 155
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 156
    iget-boolean v3, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->isFootActionBar:Z

    if-eqz v3, :cond_ea

    .line 158
    iget-object v3, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mContext:Landroid/content/Context;

    sget v5, Lcom/transsion/widgetslib/R$attr;->os_icon_secondary:I

    sget v6, Lcom/transsion/widgetslib/R$color;->os_icon_secondary_hios:I

    invoke-static {v3, v5, v6}, Lcom/transsion/widgetslib/util/Utils;->getAttrColor(Landroid/content/Context;II)I

    move-result v3

    iput v3, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mNormalImageTintColor:I

    .line 159
    invoke-static {v3}, Landroid/graphics/Color;->red(I)I

    move-result v3

    iget v5, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mNormalImageTintColor:I

    .line 160
    invoke-static {v5}, Landroid/graphics/Color;->green(I)I

    move-result v5

    iget v6, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mNormalImageTintColor:I

    invoke-static {v6}, Landroid/graphics/Color;->blue(I)I

    move-result v6

    const/16 v7, 0x33

    .line 159
    invoke-static {v7, v3, v5, v6}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    iput v3, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mClickImageTintColor:I

    .line 161
    iget-object v3, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mContext:Landroid/content/Context;

    sget v5, Lcom/transsion/widgetslib/R$attr;->os_text_primary:I

    sget v6, Lcom/transsion/widgetslib/R$color;->os_text_primary_hios:I

    invoke-static {v3, v5, v6}, Lcom/transsion/widgetslib/util/Utils;->getAttrColor(Landroid/content/Context;II)I

    move-result v3

    iput v3, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mTextColor:I

    .line 162
    invoke-static {v3}, Landroid/graphics/Color;->red(I)I

    move-result v3

    iget v5, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mTextColor:I

    invoke-static {v5}, Landroid/graphics/Color;->green(I)I

    move-result v5

    iget v6, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mTextColor:I

    invoke-static {v6}, Landroid/graphics/Color;->blue(I)I

    move-result v6

    invoke-static {v7, v3, v5, v6}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    iput v3, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mClickTextColor:I

    goto :goto_10e

    .line 164
    :cond_ea
    iget-object v3, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mContext:Landroid/content/Context;

    sget v5, Lcom/transsion/widgetslib/R$attr;->os_comp_color_tab_icon:I

    sget v6, Lcom/transsion/widgetslib/R$color;->os_comp_color_tab_icon_hios:I

    invoke-static {v3, v5, v6}, Lcom/transsion/widgetslib/util/Utils;->getAttrColor(Landroid/content/Context;II)I

    move-result v3

    iput v3, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mNormalImageTintColor:I

    .line 165
    iget-object v3, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/transsion/widgetslib/util/Utils;->getOsPlatformBasicColor(Landroid/content/Context;)I

    move-result v3

    iput v3, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mClickImageTintColor:I

    .line 167
    iget-object v3, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mContext:Landroid/content/Context;

    sget v5, Lcom/transsion/widgetslib/R$attr;->os_text_info:I

    sget v6, Lcom/transsion/widgetslib/R$color;->os_text_info_hios:I

    invoke-static {v3, v5, v6}, Lcom/transsion/widgetslib/util/Utils;->getAttrColor(Landroid/content/Context;II)I

    move-result v3

    iput v3, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mTextColor:I

    .line 168
    iget v3, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mClickImageTintColor:I

    iput v3, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mClickTextColor:I

    .line 171
    :goto_10e
    sget v3, Lcom/transsion/widgetslib/R$styleable;->FootOperationBar_foot_click_image_color:I

    invoke-virtual {p2, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    iput-boolean v3, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mHaveClickImageTintColor:Z

    if-eqz v3, :cond_120

    .line 173
    sget v3, Lcom/transsion/widgetslib/R$styleable;->FootOperationBar_foot_click_image_color:I

    invoke-virtual {p2, v3, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mClickImageTintColor:I

    .line 175
    :cond_120
    sget v2, Lcom/transsion/widgetslib/R$styleable;->FootOperationBar_foot_normal_image_color:I

    invoke-virtual {p2, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mHaveNormalImageTintColor:Z

    if-eqz v2, :cond_134

    .line 177
    sget v2, Lcom/transsion/widgetslib/R$styleable;->FootOperationBar_foot_normal_image_color:I

    const/high16 v3, -0x10000

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mNormalImageTintColor:I

    .line 179
    :cond_134
    sget v2, Lcom/transsion/widgetslib/R$styleable;->FootOperationBar_foot_text_color:I

    invoke-virtual {p2, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mHaveTextColor:Z

    if-eqz v2, :cond_148

    .line 181
    sget v2, Lcom/transsion/widgetslib/R$styleable;->FootOperationBar_foot_text_color:I

    iget v3, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mTextColor:I

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mTextColor:I

    .line 183
    :cond_148
    sget v2, Lcom/transsion/widgetslib/R$styleable;->FootOperationBar_foot_click_text_color:I

    invoke-virtual {p2, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_158

    .line 184
    sget v2, Lcom/transsion/widgetslib/R$styleable;->FootOperationBar_foot_click_text_color:I

    invoke-virtual {p2, v2, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mClickTextColor:I

    .line 187
    :cond_158
    sget v2, Lcom/transsion/widgetslib/R$styleable;->FootOperationBar_foot_max_visible_tab_count:I

    const/4 v3, 0x5

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mMaxVisibleTabCount:I

    const/4 v3, 0x3

    if-ge v2, v3, :cond_166

    .line 189
    iput v3, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mMaxVisibleTabCount:I

    .line 191
    :cond_166
    sget v2, Lcom/transsion/widgetslib/R$styleable;->FootOperationBar_foot_landscape:I

    invoke-virtual {p2, v2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mIsLandscape:Z

    .line 192
    invoke-direct {p0, p1}, Lcom/transsion/widgetslib/widget/FootOperationBar;->initDefaultParameter(Landroid/content/Context;)V

    .line 195
    sget v2, Lcom/transsion/widgetslib/R$styleable;->FootOperationBar_foot_opt_menu:I

    invoke-virtual {p2, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_182

    .line 196
    sget v2, Lcom/transsion/widgetslib/R$styleable;->FootOperationBar_foot_opt_menu:I

    invoke-virtual {p2, v2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/transsion/widgetslib/widget/FootOperationBar;->inflateMenu(I)V

    .line 198
    :cond_182
    sget v2, Lcom/transsion/widgetslib/R$styleable;->FootOperationBar_foot_init_show:I

    invoke-virtual {p2, v2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mInitShow:Z

    .line 199
    sget v2, Lcom/transsion/widgetslib/R$styleable;->FootOperationBar_foot_immersive:I

    invoke-virtual {p2, v2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mImmersive:Z

    .line 200
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 202
    invoke-static {p1}, Lcom/transsion/widgetslib/util/Utils;->isGestureNavigationBarOn(Landroid/content/Context;)Z

    move-result p1

    .line 203
    sget-object p2, Lcom/transsion/widgetslib/widget/FootOperationBar;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FootOperationBar: isGestureNavigationBarOn =="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", mImmersive=="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mImmersive:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p2, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    iget-boolean p2, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mImmersive:Z

    if-eqz p2, :cond_1d4

    if-eqz p1, :cond_1d4

    .line 205
    sget p1, Lcom/transsion/widgetslib/R$id;->os_fob_immersive:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewStub;

    if-eqz p1, :cond_1d4

    .line 207
    new-instance p2, Lcom/transsion/widgetslib/widget/FootOperationBar$1;

    invoke-direct {p2, p0}, Lcom/transsion/widgetslib/widget/FootOperationBar$1;-><init>(Lcom/transsion/widgetslib/widget/FootOperationBar;)V

    invoke-virtual {p1, p2}, Landroid/view/ViewStub;->setOnInflateListener(Landroid/view/ViewStub$OnInflateListener;)V

    .line 218
    invoke-virtual {p1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 221
    :cond_1d4
    new-instance p1, Lcom/transsion/widgetslib/widget/FootOperationBar$MyOnPreDrawListener;

    invoke-direct {p1, p0}, Lcom/transsion/widgetslib/widget/FootOperationBar$MyOnPreDrawListener;-><init>(Lcom/transsion/widgetslib/widget/FootOperationBar;)V

    iput-object p1, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mMyOnPreDrawListener:Lcom/transsion/widgetslib/widget/FootOperationBar$MyOnPreDrawListener;

    .line 222
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 226
    invoke-virtual {p0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 228
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    const/high16 p2, 0x41400000    # 12.0f

    invoke-static {v1, p2, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mTabParentHitDelegateInsert:I

    .line 229
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    const/high16 p2, 0x40c00000    # 6.0f

    invoke-static {v1, p2, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mTabHitDelegateExpend:I

    .line 231
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    iput p1, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mOrientation:I

    .line 233
    new-array p1, v0, [F

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mPressAnimator:Landroid/animation/ValueAnimator;

    const/4 p2, 0x0

    .line 236
    invoke-static {p2, p2}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object p2

    const/high16 v0, 0x3f800000    # 1.0f

    .line 237
    invoke-static {v0, v0}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v0

    filled-new-array {p2, v0}, [Landroid/animation/Keyframe;

    move-result-object p2

    .line 235
    const-string v0, "PRESS_TIME"

    invoke-static {v0, p2}, Landroid/animation/PropertyValuesHolder;->ofKeyframe(Ljava/lang/String;[Landroid/animation/Keyframe;)Landroid/animation/PropertyValuesHolder;

    move-result-object p2

    filled-new-array {p2}, [Landroid/animation/PropertyValuesHolder;

    move-result-object p2

    .line 234
    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    .line 238
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mPressAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 p1, 0x64

    invoke-virtual {p0, p1, p2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .registers 1

    .line 83
    sget-object v0, Lcom/transsion/widgetslib/widget/FootOperationBar;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/transsion/widgetslib/widget/FootOperationBar;)Z
    .registers 1

    .line 83
    iget-boolean p0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mInitShow:Z

    return p0
.end method

.method static synthetic access$1000(Lcom/transsion/widgetslib/widget/FootOperationBar;)Z
    .registers 1

    .line 83
    iget-boolean p0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mIsLandscape:Z

    return p0
.end method

.method static synthetic access$1202(Lcom/transsion/widgetslib/widget/FootOperationBar;Z)Z
    .registers 2

    .line 83
    iput-boolean p1, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mAnim:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/transsion/widgetslib/widget/FootOperationBar;)Lcom/transsion/widgetslib/widget/FootOperationBar$MyOnPreDrawListener;
    .registers 1

    .line 83
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mMyOnPreDrawListener:Lcom/transsion/widgetslib/widget/FootOperationBar$MyOnPreDrawListener;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/transsion/widgetslib/widget/FootOperationBar;)Ljava/util/List;
    .registers 1

    .line 83
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mPopupItems:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/transsion/widgetslib/widget/FootOperationBar;)[Z
    .registers 1

    .line 83
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mMenuEnables:[Z

    return-object p0
.end method

.method static synthetic access$1800(Lcom/transsion/widgetslib/widget/FootOperationBar;Landroid/view/View;Z)V
    .registers 3

    .line 83
    invoke-direct {p0, p1, p2}, Lcom/transsion/widgetslib/widget/FootOperationBar;->viewEnable(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$1900(Lcom/transsion/widgetslib/widget/FootOperationBar;)I
    .registers 1

    .line 83
    iget p0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mVisibleTabCount:I

    return p0
.end method

.method static synthetic access$200(Lcom/transsion/widgetslib/widget/FootOperationBar;)Z
    .registers 1

    .line 83
    iget-boolean p0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mShow:Z

    return p0
.end method

.method static synthetic access$2000(Lcom/transsion/widgetslib/widget/FootOperationBar;)I
    .registers 1

    .line 83
    iget p0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mBgColor:I

    return p0
.end method

.method static synthetic access$2100(Lcom/transsion/widgetslib/widget/FootOperationBar;)Landroid/widget/LinearLayout;
    .registers 1

    .line 83
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mContainer:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$2200(Lcom/transsion/widgetslib/widget/FootOperationBar;)I
    .registers 1

    .line 83
    iget p0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mTabParentHitDelegateInsert:I

    return p0
.end method

.method static synthetic access$2300(Lcom/transsion/widgetslib/widget/FootOperationBar;)I
    .registers 1

    .line 83
    iget p0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mTabHitDelegateExpend:I

    return p0
.end method

.method static synthetic access$300(Lcom/transsion/widgetslib/widget/FootOperationBar;)Landroid/view/View;
    .registers 1

    .line 83
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mMoreView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$400(Lcom/transsion/widgetslib/widget/FootOperationBar;)Landroid/widget/ListPopupWindow;
    .registers 1

    .line 83
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mPopup:Landroid/widget/ListPopupWindow;

    return-object p0
.end method

.method static synthetic access$500(Lcom/transsion/widgetslib/widget/FootOperationBar;)Lcom/transsion/widgetslib/widget/FootOperationBar$OnFootOptBarClickListener;
    .registers 1

    .line 83
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mItemClickListener:Lcom/transsion/widgetslib/widget/FootOperationBar$OnFootOptBarClickListener;

    return-object p0
.end method

.method static synthetic access$600(Lcom/transsion/widgetslib/widget/FootOperationBar;I)Z
    .registers 2

    .line 83
    invoke-direct {p0, p1}, Lcom/transsion/widgetslib/widget/FootOperationBar;->isFastClick(I)Z

    move-result p0

    return p0
.end method

.method static synthetic access$700(Lcom/transsion/widgetslib/widget/FootOperationBar;)Z
    .registers 1

    .line 83
    iget-boolean p0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->isFootActionBar:Z

    return p0
.end method

.method static synthetic access$800(Lcom/transsion/widgetslib/widget/FootOperationBar;IZ)V
    .registers 3

    .line 83
    invoke-direct {p0, p1, p2}, Lcom/transsion/widgetslib/widget/FootOperationBar;->setItemSelectState(IZ)V

    return-void
.end method

.method static synthetic access$900(Lcom/transsion/widgetslib/widget/FootOperationBar;Landroid/view/View;F)V
    .registers 3

    .line 83
    invoke-direct {p0, p1, p2}, Lcom/transsion/widgetslib/widget/FootOperationBar;->startAlphaAnimation(Landroid/view/View;F)V

    return-void
.end method

.method private adaptSafeInsets(Landroid/view/View;)V
    .registers 4

    .line 791
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/widgetslib/util/Utils;->isSecondHome(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_35

    if-nez p1, :cond_d

    goto :goto_35

    .line 794
    :cond_d
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    .line 795
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-nez v0, :cond_16

    goto :goto_35

    .line 799
    :cond_16
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/widgetslib/R$dimen;->os_foot_bar_item_safe_inset:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    .line 800
    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 801
    iget p0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mCurrentItemCount:I

    const/4 v1, 0x2

    if-ne p0, v1, :cond_2b

    shl-int/lit8 v0, v0, 0x1

    :cond_2b
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 802
    invoke-virtual {p1}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginStart()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    :cond_35
    :goto_35
    return-void
.end method

.method private addItemView(Landroid/view/View;I)V
    .registers 6

    .line 465
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mFootItemViews:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 468
    sget v0, Lcom/transsion/widgetslib/R$id;->os_fob_layout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    .line 469
    invoke-direct {p0, v0, p1, v1}, Lcom/transsion/widgetslib/widget/FootOperationBar;->expendTabTouchDelegate(Landroid/view/View;Landroid/view/View;Z)V

    .line 470
    new-instance v1, Lcom/transsion/widgetslib/widget/FootOperationBar$3;

    invoke-direct {v1, p0, p2}, Lcom/transsion/widgetslib/widget/FootOperationBar$3;-><init>(Lcom/transsion/widgetslib/widget/FootOperationBar;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 489
    iget-boolean v1, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->isFootActionBar:Z

    if-nez v1, :cond_2e

    .line 490
    sget v1, Lcom/transsion/widgetslib/R$id;->os_foot_opt_press:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 491
    new-instance v2, Lcom/transsion/widgetslib/widget/FootOperationBar$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, v1, p2}, Lcom/transsion/widgetslib/widget/FootOperationBar$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/widgetslib/widget/FootOperationBar;Landroid/view/View;I)V

    .line 498
    new-instance p2, Lcom/transsion/widgetslib/widget/FootOperationBar$4;

    invoke-direct {p2, p0, v2, v1}, Lcom/transsion/widgetslib/widget/FootOperationBar$4;-><init>(Lcom/transsion/widgetslib/widget/FootOperationBar;Ljava/lang/Runnable;Landroid/view/View;)V

    invoke-virtual {v0, p2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 517
    :cond_2e
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method private addItemView(Landroidx/appcompat/view/menu/MenuBuilder;I)V
    .registers 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "RestrictedApi"
        }
    .end annotation

    .line 413
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mFootItemViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    :goto_6
    if-ge v0, p2, :cond_22

    .line 415
    invoke-virtual {p1, v0}, Landroidx/appcompat/view/menu/MenuBuilder;->getItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 416
    invoke-interface {v1}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-interface {v1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v2, v1}, Lcom/transsion/widgetslib/widget/FootOperationBar;->getMenuItem(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 418
    invoke-direct {p0, v1, v0}, Lcom/transsion/widgetslib/widget/FootOperationBar;->addItemView(Landroid/view/View;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_22
    return-void
.end method

.method private addItemView([I[Ljava/lang/String;I)V
    .registers 7

    .line 455
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mFootItemViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    :goto_6
    if-ge v0, p3, :cond_16

    .line 458
    aget v1, p1, v0

    aget-object v2, p2, v0

    invoke-direct {p0, v1, v2}, Lcom/transsion/widgetslib/widget/FootOperationBar;->getMenuItem(ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 460
    invoke-direct {p0, v1, v0}, Lcom/transsion/widgetslib/widget/FootOperationBar;->addItemView(Landroid/view/View;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_16
    return-void
.end method

.method private adjustTextItem(Landroid/widget/TextView;Landroid/widget/RelativeLayout;)V
    .registers 12

    if-eqz p1, :cond_48

    if-nez p2, :cond_5

    goto :goto_48

    .line 340
    :cond_5
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p1}, Landroid/widget/TextView;->getTextSize()F

    move-result v3

    const/4 v5, 0x1

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v6

    const/4 v2, 0x2

    const/4 v4, 0x0

    invoke-static/range {v0 .. v6}, Lcom/transsion/widgetslib/util/OSAutoAdjustUtil;->isTextFullyVisibleOffset(Landroid/content/Context;Ljava/lang/CharSequence;IFFII)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_23

    .line 341
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setLetterSpacing(F)V

    return-void

    .line 342
    :cond_23
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {p1}, Landroid/widget/TextView;->getTextSize()F

    move-result v5

    const/4 v7, 0x1

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v8

    const/4 v4, 0x2

    const v6, -0x42b33333    # -0.05f

    invoke-static/range {v2 .. v8}, Lcom/transsion/widgetslib/util/OSAutoAdjustUtil;->isTextFullyVisibleOffset(Landroid/content/Context;Ljava/lang/CharSequence;IFFII)Z

    move-result p0

    if-eqz p0, :cond_45

    const p0, -0x42b33333    # -0.05f

    .line 343
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setLetterSpacing(F)V

    return-void

    .line 345
    :cond_45
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setLetterSpacing(F)V

    :cond_48
    :goto_48
    return-void
.end method

.method private adjustTextLayout()V
    .registers 5

    const/4 v0, 0x0

    .line 329
    :goto_1
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mFootItemViews:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2f

    .line 330
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mFootItemViews:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    sget v2, Lcom/transsion/widgetslib/R$id;->os_foot_opt_bar_item_text:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 331
    iget-object v2, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mFootItemViews:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    sget v3, Lcom/transsion/widgetslib/R$id;->os_foot_opt_bar_item_root_layout:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    .line 332
    invoke-direct {p0, v1, v2}, Lcom/transsion/widgetslib/widget/FootOperationBar;->adjustTextItem(Landroid/widget/TextView;Landroid/widget/RelativeLayout;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2f
    return-void
.end method

.method private closeAnimator()V
    .registers 7

    const/4 v0, 0x2

    .line 1086
    new-array v0, v0, [F

    fill-array-data v0, :array_2e

    const-string v1, "alpha"

    invoke-static {p0, v1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 1087
    new-instance v1, Lcom/transsion/widgetslib/widget/timepicker/wheel/EaseCubicInterpolator;

    const v2, 0x3ea8f5c3    # 0.33f

    const v3, 0x3f28f5c3    # 0.66f

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v4, v3, v5}, Lcom/transsion/widgetslib/widget/timepicker/wheel/EaseCubicInterpolator;-><init>(FFFF)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v1, 0x96

    .line 1088
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1089
    new-instance v1, Lcom/transsion/widgetslib/widget/FootOperationBar$12;

    invoke-direct {v1, p0}, Lcom/transsion/widgetslib/widget/FootOperationBar$12;-><init>(Lcom/transsion/widgetslib/widget/FootOperationBar;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1100
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    return-void

    :array_2e
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private expendTabTouchDelegate(Landroid/view/View;Landroid/view/View;Z)V
    .registers 5

    .line 1475
    new-instance v0, Lcom/transsion/widgetslib/widget/FootOperationBar$15;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/transsion/widgetslib/widget/FootOperationBar$15;-><init>(Lcom/transsion/widgetslib/widget/FootOperationBar;Landroid/view/View;Landroid/view/View;Z)V

    invoke-virtual {p2, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private getMenuItem(ILjava/lang/String;)Landroid/view/View;
    .registers 4

    .line 816
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/transsion/widgetslib/widget/FootOperationBar;->getMenuItem(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method private getMenuItem(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)Landroid/view/View;
    .registers 11

    .line 718
    iget-boolean v0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->isFootActionBar:Z

    if-eqz v0, :cond_10

    .line 719
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/widgetslib/widget/ViewExtsKt;->createActionItem(Landroid/content/Context;)Landroid/view/View;

    move-result-object v0

    .line 720
    invoke-direct {p0, v0}, Lcom/transsion/widgetslib/widget/FootOperationBar;->adaptSafeInsets(Landroid/view/View;)V

    goto :goto_4a

    .line 722
    :cond_10
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/widgetslib/widget/ViewExtsKt;->createOptItem(Landroid/content/Context;)Landroid/view/View;

    move-result-object v0

    .line 723
    sget v1, Lcom/transsion/widgetslib/R$id;->os_foot_opt_press:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/transsion/widgetslib/widget/FootOperationBar;->adaptSafeInsets(Landroid/view/View;)V

    .line 724
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 725
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/transsion/widgetslib/R$color;->os_gray_fifth_color:I

    invoke-static {v2, v3}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 726
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const/16 v3, 0x8

    invoke-static {v2, v3}, Lcom/transsion/widgetslib/util/Utils;->dp2px(Landroid/content/Context;I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 727
    sget v2, Lcom/transsion/widgetslib/R$id;->os_foot_opt_press:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 728
    invoke-virtual {v2, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 730
    :goto_4a
    sget v1, Lcom/transsion/widgetslib/R$id;->os_fob_layout:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 731
    iget-boolean v2, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mIsLandscape:Z

    const/4 v3, 0x1

    xor-int/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 734
    sget v2, Lcom/transsion/widgetslib/R$id;->os_foot_opt_bar_item_icon:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 735
    sget v4, Lcom/transsion/widgetslib/R$id;->os_foot_opt_bar_item_text:I

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 737
    iget-boolean v5, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mIsLandscape:Z

    const/4 v6, 0x0

    if-nez v5, :cond_7e

    .line 738
    iget-object v5, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v7, Lcom/transsion/widgetslib/R$dimen;->os_foot_bar_item_text_size_portrait:I

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v4, v6, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_7e
    if-eqz p1, :cond_89

    .line 741
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 742
    invoke-virtual {v2, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 743
    invoke-direct {p0, v2}, Lcom/transsion/widgetslib/widget/FootOperationBar;->setImageColorStateList(Landroid/widget/ImageView;)V

    .line 745
    :cond_89
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_95

    .line 746
    invoke-virtual {v4, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 747
    invoke-direct {p0, v4}, Lcom/transsion/widgetslib/widget/FootOperationBar;->setTextColorStateList(Landroid/widget/TextView;)V

    .line 750
    :cond_95
    iget-boolean p1, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->isFootActionBar:Z

    if-nez p1, :cond_a1

    .line 751
    new-instance p1, Lcom/transsion/widgetslib/widget/FootOperationBar$7;

    invoke-direct {p1, p0, v0, v1, v2}, Lcom/transsion/widgetslib/widget/FootOperationBar$7;-><init>(Lcom/transsion/widgetslib/widget/FootOperationBar;Landroid/view/View;Landroid/widget/LinearLayout;Landroid/widget/ImageView;)V

    invoke-virtual {v1, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 778
    :cond_a1
    iget-boolean p1, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mIsLandscape:Z

    if-eqz p1, :cond_b8

    .line 779
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    const/high16 p1, 0x40800000    # 4.0f

    invoke-static {v3, p1, p0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p0

    float-to-int p0, p0

    invoke-virtual {v4, p0, v6, v6, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    return-object v0

    .line 781
    :cond_b8
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/transsion/widgetslib/R$dimen;->os_foot_bar_item_text_paddingTop:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p0

    invoke-virtual {v4, p0, v6, v6, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    return-object v0
.end method

.method private getPopupHeight()I
    .registers 4

    .line 1573
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/widgetslib/R$dimen;->os_popup_menu_bg_margin:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    .line 1574
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/widgetslib/R$dimen;->os_foot_bar_popup_item_height:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    mul-int/lit8 v0, v0, 0x2

    .line 1576
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mMenuEnables:[Z

    if-eqz p0, :cond_1d

    .line 1577
    array-length p0, p0

    mul-int/2addr p0, v1

    add-int/2addr v0, p0

    :cond_1d
    return v0
.end method

.method private initDefaultParameter(Landroid/content/Context;)V
    .registers 9

    if-nez p1, :cond_3

    return-void

    .line 276
    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_4b

    .line 277
    iget-boolean p1, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->isFootActionBar:Z

    if-eqz p1, :cond_1b

    .line 278
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mContext:Landroid/content/Context;

    sget v1, Lcom/transsion/widgetslib/R$attr;->os_comp_color_actionbar_bg:I

    sget v2, Lcom/transsion/widgetslib/R$color;->os_comp_color_actionbar_bg_hios:I

    invoke-static {p1, v1, v2}, Lcom/transsion/widgetslib/util/Utils;->getAttrColor(Landroid/content/Context;II)I

    move-result p1

    iput p1, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mBgColor:I

    goto :goto_27

    .line 280
    :cond_1b
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mContext:Landroid/content/Context;

    sget v1, Lcom/transsion/widgetslib/R$attr;->os_comp_color_tab_bg:I

    sget v2, Lcom/transsion/widgetslib/R$color;->os_comp_color_tab_bg_hios:I

    invoke-static {p1, v1, v2}, Lcom/transsion/widgetslib/util/Utils;->getAttrColor(Landroid/content/Context;II)I

    move-result p1

    iput p1, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mBgColor:I

    .line 283
    :goto_27
    sget-object p1, Lcom/transsion/widgetslib/util/Utils;->mOsType:[Ljava/lang/String;

    aget-object p1, p1, v0

    invoke-static {}, Lcom/transsion/widgetslib/util/Utils;->getOsType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_46

    .line 284
    iget-boolean p1, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->isFootActionBar:Z

    if-nez p1, :cond_46

    .line 285
    sget p1, Lcom/transsion/widgetslib/R$id;->os_fob_top_line_stub:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewStub;

    if-eqz p1, :cond_46

    .line 287
    invoke-virtual {p1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 291
    :cond_46
    iget p1, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mBgColor:I

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 295
    :cond_4b
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/transsion/widgetslib/util/Utils;->isWaterfallScreen(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_d7

    .line 297
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Display;->getRotation()I

    move-result p1

    .line 298
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    .line 299
    iget-object v2, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    .line 300
    iget-object v3, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    .line 301
    iget-object v4, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    if-eqz p1, :cond_ba

    const/4 v5, 0x1

    if-eq p1, v5, :cond_9d

    const/4 v5, 0x2

    if-eq p1, v5, :cond_ba

    const/4 v5, 0x3

    if-eq p1, v5, :cond_83

    move v0, v1

    move p1, v3

    goto :goto_d2

    .line 315
    :cond_83
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcom/transsion/widgetslib/R$dimen;->os_curve_land:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    .line 316
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/transsion/widgetslib/R$dimen;->os_foot_bar_min_height_curve_land:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/view/View;->setMinimumHeight(I)V

    goto :goto_d2

    .line 309
    :cond_9d
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcom/transsion/widgetslib/R$dimen;->os_curve_land:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    .line 311
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/transsion/widgetslib/R$dimen;->os_foot_bar_min_height_curve_land:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/view/View;->setMinimumHeight(I)V

    move v6, v0

    move v0, p1

    move p1, v6

    goto :goto_d2

    .line 305
    :cond_ba
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/transsion/widgetslib/R$dimen;->os_foot_bar_padding:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/widgetslib/R$dimen;->os_curve_land:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    add-int/2addr v0, p1

    move p1, v0

    .line 320
    :goto_d2
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0, v2, p1, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 324
    :cond_d7
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/view/View;->getMinimumHeight()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/view/View;->setMinimumHeight(I)V

    return-void
.end method

.method private isFastClick(I)Z
    .registers 10

    .line 1587
    iget-wide v0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mClickInterval:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return v1

    .line 1590
    :cond_a
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 1591
    iget v0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mSelectedIndex:I

    if-ne v0, p1, :cond_22

    iget-wide v4, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mLastClickTime:J

    sub-long v4, v2, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    iget-wide v6, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mClickInterval:J

    cmp-long p1, v4, v6

    if-gez p1, :cond_22

    const/4 p0, 0x1

    return p0

    .line 1594
    :cond_22
    iput-wide v2, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mLastClickTime:J

    return v1
.end method

.method private openAnimator()V
    .registers 7

    const/4 v0, 0x2

    .line 1066
    new-array v0, v0, [F

    fill-array-data v0, :array_2e

    const-string v1, "alpha"

    invoke-static {p0, v1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 1067
    new-instance v1, Lcom/transsion/widgetslib/widget/timepicker/wheel/EaseCubicInterpolator;

    const v2, 0x3ea8f5c3    # 0.33f

    const v3, 0x3f28f5c3    # 0.66f

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v4, v3, v5}, Lcom/transsion/widgetslib/widget/timepicker/wheel/EaseCubicInterpolator;-><init>(FFFF)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v1, 0x96

    .line 1068
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1069
    new-instance v1, Lcom/transsion/widgetslib/widget/FootOperationBar$11;

    invoke-direct {v1, p0}, Lcom/transsion/widgetslib/widget/FootOperationBar$11;-><init>(Lcom/transsion/widgetslib/widget/FootOperationBar;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1082
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    return-void

    :array_2e
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private popupAdjustMaxHeight()V
    .registers 3

    .line 1566
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/FootOperationBar;->getPopupHeight()I

    move-result v0

    .line 1567
    iget v1, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mPopupMaxHeight:I

    if-lez v1, :cond_11

    if-le v0, v1, :cond_11

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mPopup:Landroid/widget/ListPopupWindow;

    if-eqz p0, :cond_11

    .line 1568
    invoke-virtual {p0, v1}, Landroid/widget/ListPopupWindow;->setHeight(I)V

    :cond_11
    return-void
.end method

.method private redPointHideAnim(Landroid/view/View;)V
    .registers 7

    .line 1355
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 1359
    :cond_7
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v2, 0x3f000000    # 0.5f

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v2, Lcom/transsion/widgetslib/widget/timepicker/wheel/EaseCubicInterpolator;

    const v3, 0x3ecccccd    # 0.4f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v2, v3, v1, v4, v4}, Lcom/transsion/widgetslib/widget/timepicker/wheel/EaseCubicInterpolator;-><init>(FFFF)V

    .line 1360
    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/transsion/widgetslib/widget/FootOperationBar$14;

    invoke-direct {v1, p0, p1}, Lcom/transsion/widgetslib/widget/FootOperationBar$14;-><init>(Lcom/transsion/widgetslib/widget/FootOperationBar;Landroid/view/View;)V

    .line 1361
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 1370
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method private resetSelectedIndex()V
    .registers 4

    const/4 v0, -0x1

    .line 597
    iput v0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mSelectedIndex:I

    .line 598
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mFootItemViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_29

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 599
    sget v2, Lcom/transsion/widgetslib/R$id;->os_foot_opt_bar_item_icon:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->isSelected()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 600
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mFootItemViews:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mSelectedIndex:I

    :cond_29
    return-void
.end method

.method private setContainerBgColor()V
    .registers 5

    .line 1311
    iget v0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mBgColor:I

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    .line 1312
    iget v1, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mBlurAlp:F

    int-to-float v0, v0

    mul-float/2addr v1, v0

    float-to-int v0, v1

    iget v1, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mBgColor:I

    invoke-static {v1}, Landroid/graphics/Color;->red(I)I

    move-result v1

    iget v2, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mBgColor:I

    invoke-static {v2}, Landroid/graphics/Color;->green(I)I

    move-result v2

    iget v3, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mBgColor:I

    invoke-static {v3}, Landroid/graphics/Color;->blue(I)I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    .line 1313
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/transsion/widgetslib/util/Utils;->isGestureNavigationBarOn(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 1314
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundColor(I)V

    return-void

    .line 1316
    :cond_2f
    new-instance v1, Landroid/graphics/drawable/ShapeDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/ShapeDrawable;-><init>()V

    .line 1317
    invoke-virtual {v1}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v2

    .line 1318
    new-instance v3, Lcom/transsion/widgetslib/widget/FootOperationBar$13;

    invoke-direct {v3, p0, v2, v0, v1}, Lcom/transsion/widgetslib/widget/FootOperationBar$13;-><init>(Lcom/transsion/widgetslib/widget/FootOperationBar;Landroid/graphics/Paint;ILandroid/graphics/drawable/ShapeDrawable;)V

    invoke-virtual {p0, v3}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private setContainerWidth(I)V
    .registers 7

    .line 672
    iput p1, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mCurrentItemCount:I

    .line 673
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v1, 0x1

    if-eq p1, v1, :cond_7f

    const/4 v2, 0x2

    if-eq p1, v2, :cond_67

    const/4 v2, 0x3

    if-eq p1, v2, :cond_4f

    const/4 v2, 0x4

    if-eq p1, v2, :cond_48

    const/4 v2, 0x5

    const/high16 v3, 0x41200000    # 10.0f

    const/high16 v4, 0x41880000    # 17.0f

    if-eq p1, v2, :cond_3d

    .line 701
    iget-boolean p1, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mIsLandscape:Z

    if-eqz p1, :cond_22

    move v3, v4

    :cond_22
    invoke-static {v1, v3, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    float-to-int p1, p1

    .line 702
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/transsion/widgetslib/util/Utils;->isWaterfallScreen(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_8d

    .line 703
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/widgetslib/R$dimen;->os_curve_land:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    add-int/2addr p1, v0

    goto :goto_8d

    .line 698
    :cond_3d
    iget-boolean p1, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mIsLandscape:Z

    if-eqz p1, :cond_42

    move v3, v4

    :cond_42
    invoke-static {v1, v3, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    :goto_46
    float-to-int p1, p1

    goto :goto_8d

    :cond_48
    const/high16 p1, 0x41600000    # 14.0f

    .line 695
    invoke-static {v1, p1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    goto :goto_46

    .line 688
    :cond_4f
    iget-boolean p1, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mIsLandscape:Z

    if-eqz p1, :cond_5a

    const/high16 p1, 0x41800000    # 16.0f

    .line 689
    invoke-static {v1, p1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    goto :goto_46

    .line 691
    :cond_5a
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/transsion/widgetslib/R$dimen;->os_foot_bar_padding_3:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    goto :goto_8d

    .line 681
    :cond_67
    iget-boolean p1, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mIsLandscape:Z

    if-eqz p1, :cond_72

    const/high16 p1, 0x42400000    # 48.0f

    .line 682
    invoke-static {v1, p1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    goto :goto_46

    .line 684
    :cond_72
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/transsion/widgetslib/R$dimen;->os_foot_bar_padding_2:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    goto :goto_8d

    .line 678
    :cond_7f
    iget-boolean p1, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mIsLandscape:Z

    if-eqz p1, :cond_86

    const/high16 p1, 0x43520000    # 210.0f

    goto :goto_88

    :cond_86
    const/high16 p1, 0x42c60000    # 99.0f

    :goto_88
    invoke-static {v1, p1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    goto :goto_46

    .line 707
    :cond_8d
    :goto_8d
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/4 v1, -0x1

    .line 708
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 709
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 710
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result p0

    invoke-virtual {v0, p1, v1, p1, p0}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method

.method private setFootPopupWindow()V
    .registers 6

    .line 999
    new-instance v0, Lcom/transsion/widgetslib/widget/FootOperationBar$FootPopupAdapter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/transsion/widgetslib/widget/FootOperationBar$FootPopupAdapter;-><init>(Lcom/transsion/widgetslib/widget/FootOperationBar;Lcom/transsion/widgetslib/widget/FootOperationBar$1;)V

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mPopAdapter:Lcom/transsion/widgetslib/widget/FootOperationBar$FootPopupAdapter;

    .line 1000
    new-instance v0, Landroid/widget/ListPopupWindow;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    sget v4, Lcom/transsion/widgetslib/R$style;->OsFootOptPopupEdgeStyle:I

    invoke-direct {v0, v2, v1, v3, v4}, Landroid/widget/ListPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mPopup:Landroid/widget/ListPopupWindow;

    .line 1001
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mPopAdapter:Lcom/transsion/widgetslib/widget/FootOperationBar$FootPopupAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1002
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mPopAdapter:Lcom/transsion/widgetslib/widget/FootOperationBar$FootPopupAdapter;

    invoke-static {v0, v1}, Lcom/transsion/widgetslib/util/Utils;->measureAdapterMaxWidth(Landroid/content/Context;Landroid/widget/ListAdapter;)I

    move-result v0

    .line 1003
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v1, v0}, Landroid/widget/ListPopupWindow;->setContentWidth(I)V

    .line 1004
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mPopup:Landroid/widget/ListPopupWindow;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ListPopupWindow;->setModal(Z)V

    .line 1005
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mPopup:Landroid/widget/ListPopupWindow;

    new-instance v3, Lcom/transsion/widgetslib/widget/FootOperationBar$9;

    invoke-direct {v3, p0}, Lcom/transsion/widgetslib/widget/FootOperationBar$9;-><init>(Lcom/transsion/widgetslib/widget/FootOperationBar;)V

    invoke-virtual {v1, v3}, Landroid/widget/ListPopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 1011
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mPopup:Landroid/widget/ListPopupWindow;

    iget-object v3, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/ListPopupWindow;->setAnchorView(Landroid/view/View;)V

    .line 1012
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mPopup:Landroid/widget/ListPopupWindow;

    const v3, 0x800005

    invoke-virtual {v1, v3}, Landroid/widget/ListPopupWindow;->setDropDownGravity(I)V

    .line 1015
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-ne v1, v3, :cond_5c

    .line 1017
    new-instance v1, Lcom/transsion/widgetslib/widget/FootOperationBar$10;

    invoke-direct {v1, p0}, Lcom/transsion/widgetslib/widget/FootOperationBar$10;-><init>(Lcom/transsion/widgetslib/widget/FootOperationBar;)V

    invoke-virtual {p0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 1040
    :cond_5c
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/transsion/widgetslib/util/Utils;->isWaterfallScreen(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_bc

    .line 1041
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v1

    if-eq v1, v2, :cond_9d

    const/4 v2, 0x3

    if-eq v1, v2, :cond_88

    .line 1054
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mContext:Landroid/content/Context;

    sget v2, Lcom/transsion/widgetslib/R$drawable;->os_foot_opt_popup_background_curse_0_180:I

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1055
    iget-object v2, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/transsion/widgetslib/R$dimen;->os_curse_offset_portrait:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    goto :goto_b1

    .line 1050
    :cond_88
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mContext:Landroid/content/Context;

    sget v2, Lcom/transsion/widgetslib/R$drawable;->os_foot_opt_popup_background_curse_270:I

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1051
    iget-object v2, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/transsion/widgetslib/R$dimen;->os_curse_offset_land:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    goto :goto_b1

    .line 1046
    :cond_9d
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mContext:Landroid/content/Context;

    sget v2, Lcom/transsion/widgetslib/R$drawable;->os_foot_opt_popup_background_curse_90:I

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1047
    iget-object v2, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/transsion/widgetslib/R$dimen;->os_curse_offset_land:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 1058
    :goto_b1
    iget-object v3, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mPopup:Landroid/widget/ListPopupWindow;

    add-int/2addr v0, v2

    invoke-virtual {v3, v0}, Landroid/widget/ListPopupWindow;->setContentWidth(I)V

    .line 1059
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1062
    :cond_bc
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/FootOperationBar;->popupAdjustMaxHeight()V

    return-void
.end method

.method private setImageColorStateList(Landroid/widget/ImageView;)V
    .registers 5

    .line 820
    iget-boolean v0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->needChangeImgColor:Z

    if-eqz v0, :cond_34

    const/4 v0, 0x2

    .line 821
    new-array v0, v0, [[I

    .line 822
    iget-boolean v1, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->isFootActionBar:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_16

    const v1, 0x10100a7

    .line 823
    filled-new-array {v1}, [I

    move-result-object v1

    aput-object v1, v0, v2

    goto :goto_1f

    :cond_16
    const v1, 0x10100a1

    .line 825
    filled-new-array {v1}, [I

    move-result-object v1

    aput-object v1, v0, v2

    :goto_1f
    const/4 v1, 0x1

    .line 827
    new-array v2, v2, [I

    aput-object v2, v0, v1

    .line 828
    iget v1, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mClickImageTintColor:I

    iget p0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mNormalImageTintColor:I

    filled-new-array {v1, p0}, [I

    move-result-object p0

    .line 829
    new-instance v1, Landroid/content/res/ColorStateList;

    invoke-direct {v1, v0, p0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    :cond_34
    return-void
.end method

.method private setItemSelectState(IZ)V
    .registers 8

    .line 615
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mFootItemViews:Ljava/util/List;

    if-eqz v0, :cond_71

    .line 616
    iget v0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mSelectedIndex:I

    if-ne v0, p1, :cond_a

    goto/16 :goto_71

    :cond_a
    const/4 v0, 0x0

    move v1, v0

    .line 620
    :goto_c
    iget-object v2, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mFootItemViews:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_6f

    .line 621
    iget-object v2, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mFootItemViews:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    sget v3, Lcom/transsion/widgetslib/R$id;->os_foot_opt_bar_item_text:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 622
    iget-object v3, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mFootItemViews:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    sget v4, Lcom/transsion/widgetslib/R$id;->os_foot_opt_bar_item_icon:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/transsion/widgetslib/widget/OSMaskImageView;

    if-ne v1, p1, :cond_50

    if-eqz p2, :cond_43

    .line 625
    iget-boolean v4, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->needChangeImgColor:Z

    if-eqz v4, :cond_6c

    .line 626
    invoke-virtual {v3}, Lcom/transsion/widgetslib/widget/OSMaskImageView;->animSelected()V

    .line 627
    invoke-static {v2}, Lcom/transsion/widgetslib/widget/ViewExtsKt;->animSelected(Landroid/widget/TextView;)V

    goto :goto_6c

    .line 630
    :cond_43
    iget-boolean v4, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->isFootActionBar:Z

    if-eqz v4, :cond_48

    goto :goto_71

    :cond_48
    const/4 v4, 0x1

    .line 634
    invoke-virtual {v3, v4}, Landroid/view/View;->setSelected(Z)V

    .line 635
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setSelected(Z)V

    goto :goto_6c

    .line 638
    :cond_50
    iget-boolean v4, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->isFootActionBar:Z

    if-eqz v4, :cond_55

    goto :goto_71

    :cond_55
    if-eqz p2, :cond_66

    .line 643
    iget-boolean v4, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->needChangeImgColor:Z

    if-eqz v4, :cond_6c

    iget v4, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mSelectedIndex:I

    if-ne v4, v1, :cond_6c

    .line 644
    invoke-virtual {v3}, Lcom/transsion/widgetslib/widget/OSMaskImageView;->animSelected()V

    .line 645
    invoke-static {v2}, Lcom/transsion/widgetslib/widget/ViewExtsKt;->animSelected(Landroid/widget/TextView;)V

    goto :goto_6c

    .line 648
    :cond_66
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setSelected(Z)V

    .line 649
    invoke-virtual {v3, v0}, Landroid/view/View;->setSelected(Z)V

    :cond_6c
    :goto_6c
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 654
    :cond_6f
    iput p1, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mSelectedIndex:I

    :cond_71
    :goto_71
    return-void
.end method

.method private setMenu(Landroidx/appcompat/view/menu/MenuBuilder;)V
    .registers 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "RestrictedApi"
        }
    .end annotation

    .line 376
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 377
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mPopupItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    .line 378
    iput-object v0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mPopup:Landroid/widget/ListPopupWindow;

    const/4 v0, -0x1

    .line 379
    iput v0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mSelectedIndex:I

    .line 381
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/MenuBuilder;->size()I

    move-result v0

    .line 382
    invoke-direct {p0, v0}, Lcom/transsion/widgetslib/widget/FootOperationBar;->setContainerWidth(I)V

    .line 383
    iget-boolean v1, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->isFootActionBar:Z

    if-eqz v1, :cond_60

    .line 384
    iget v1, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mMaxVisibleTabCount:I

    const/4 v2, 0x5

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    if-gt v0, v1, :cond_28

    .line 385
    invoke-direct {p0, p1, v0}, Lcom/transsion/widgetslib/widget/FootOperationBar;->addItemView(Landroidx/appcompat/view/menu/MenuBuilder;I)V

    return-void

    .line 387
    :cond_28
    iget v1, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mMaxVisibleTabCount:I

    if-le v1, v2, :cond_2e

    const/4 v1, 0x4

    goto :goto_30

    :cond_2e
    add-int/lit8 v1, v1, -0x1

    :goto_30
    iput v1, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mVisibleTabCount:I

    .line 388
    invoke-direct {p0, p1, v1}, Lcom/transsion/widgetslib/widget/FootOperationBar;->addItemView(Landroidx/appcompat/view/menu/MenuBuilder;I)V

    .line 390
    iget v1, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mMoreIconRes:I

    iget-object v2, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mContext:Landroid/content/Context;

    .line 391
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/transsion/widgetslib/R$string;->os_foot_opt_bar_more:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 390
    invoke-direct {p0, v1, v2}, Lcom/transsion/widgetslib/widget/FootOperationBar;->getMenuItem(ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 392
    sget v2, Lcom/transsion/widgetslib/R$id;->os_fob_layout:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mMoreView:Landroid/view/View;

    .line 394
    new-instance v3, Lcom/transsion/widgetslib/widget/FootOperationBar$2;

    invoke-direct {v3, p0}, Lcom/transsion/widgetslib/widget/FootOperationBar$2;-><init>(Lcom/transsion/widgetslib/widget/FootOperationBar;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 401
    iget-object v2, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 402
    invoke-direct {p0, p1, v0}, Lcom/transsion/widgetslib/widget/FootOperationBar;->setPopupItems(Landroidx/appcompat/view/menu/MenuBuilder;I)V

    return-void

    .line 405
    :cond_60
    invoke-direct {p0, p1, v0}, Lcom/transsion/widgetslib/widget/FootOperationBar;->addItemView(Landroidx/appcompat/view/menu/MenuBuilder;I)V

    return-void
.end method

.method private setPopupItems(Landroidx/appcompat/view/menu/MenuBuilder;I)V
    .registers 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "RestrictedApi"
        }
    .end annotation

    .line 660
    new-array v0, p2, [Z

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mMenuEnables:[Z

    .line 662
    iget v0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mMaxVisibleTabCount:I

    const/4 v1, 0x5

    const/4 v2, 0x1

    if-le v0, v1, :cond_c

    const/4 v0, 0x4

    goto :goto_d

    :cond_c
    sub-int/2addr v0, v2

    :goto_d
    iput v0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mVisibleTabCount:I

    :goto_f
    if-ge v0, p2, :cond_2d

    .line 664
    invoke-virtual {p1, v0}, Landroidx/appcompat/view/menu/MenuBuilder;->getItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 665
    iget-object v3, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mPopupItems:Ljava/util/List;

    invoke-interface {v1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 666
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mMenuEnables:[Z

    iget v3, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mVisibleTabCount:I

    sub-int v3, v0, v3

    aput-boolean v2, v1, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    .line 668
    :cond_2d
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/FootOperationBar;->setFootPopupWindow()V

    return-void
.end method

.method private setPopupItems([Ljava/lang/String;I)V
    .registers 7

    .line 943
    iget v0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mVisibleTabCount:I

    sub-int v1, p2, v0

    new-array v1, v1, [Z

    iput-object v1, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mMenuEnables:[Z

    :goto_8
    if-ge v0, p2, :cond_1d

    .line 945
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mPopupItems:Ljava/util/List;

    aget-object v2, p1, v0

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 946
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mMenuEnables:[Z

    iget v2, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mVisibleTabCount:I

    sub-int v2, v0, v2

    const/4 v3, 0x1

    aput-boolean v3, v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 948
    :cond_1d
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/FootOperationBar;->setFootPopupWindow()V

    return-void
.end method

.method private setTextColorStateList(Landroid/widget/TextView;)V
    .registers 5

    .line 834
    iget-boolean v0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->needChangeImgColor:Z

    if-eqz v0, :cond_37

    const/4 v0, 0x2

    .line 835
    new-array v0, v0, [[I

    .line 836
    iget-boolean v1, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->isFootActionBar:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_16

    const v1, 0x10100a7

    .line 837
    filled-new-array {v1}, [I

    move-result-object v1

    aput-object v1, v0, v2

    goto :goto_1f

    :cond_16
    const v1, 0x10100a1

    .line 839
    filled-new-array {v1}, [I

    move-result-object v1

    aput-object v1, v0, v2

    :goto_1f
    const/4 v1, 0x1

    .line 841
    new-array v2, v2, [I

    aput-object v2, v0, v1

    .line 842
    iget v1, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mClickTextColor:I

    iget p0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mTextColor:I

    filled-new-array {v1, p0}, [I

    move-result-object p0

    .line 843
    invoke-static {p1}, Lcom/transsion/widgetslib/widget/ViewExtsKt;->resetAnimTag(Landroid/widget/TextView;)V

    .line 844
    new-instance v1, Landroid/content/res/ColorStateList;

    invoke-direct {v1, v0, p0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_37
    return-void
.end method

.method private startAlphaAnimation(Landroid/view/View;F)V
    .registers 5

    if-nez p1, :cond_3

    return-void

    .line 809
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result p0

    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p0, v0, v1

    const/4 p0, 0x1

    aput p2, v0, p0

    const-string p0, "alpha"

    invoke-static {p1, p0, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    const-wide/16 p1, 0x64

    .line 810
    invoke-virtual {p0, p1, p2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 811
    new-instance p1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {p1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {p0, p1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 812
    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method private viewEnable(Landroid/view/View;Z)V
    .registers 5

    if-eqz p1, :cond_22

    .line 987
    sget p0, Lcom/transsion/widgetslib/R$id;->os_fob_layout:I

    invoke-virtual {p1, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    const v0, 0x3ecccccd    # 0.4f

    const/high16 v1, 0x3f800000    # 1.0f

    if-nez p0, :cond_19

    .line 989
    invoke-virtual {p1, p2}, Landroid/view/View;->setEnabled(Z)V

    if-eqz p2, :cond_15

    move v0, v1

    .line 990
    :cond_15
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    return-void

    .line 993
    :cond_19
    invoke-virtual {p0, p2}, Landroid/view/View;->setEnabled(Z)V

    if-eqz p2, :cond_1f

    move v0, v1

    .line 994
    :cond_1f
    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    :cond_22
    return-void
.end method


# virtual methods
.method public addSingleItemView(III)V
    .registers 5

    .line 579
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/transsion/widgetslib/widget/FootOperationBar;->getMenuItem(ILjava/lang/String;)Landroid/view/View;

    move-result-object p1

    .line 581
    iget-object p2, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mFootItemViews:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-ge p3, p2, :cond_1c

    .line 582
    iget-object p2, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mFootItemViews:Ljava/util/List;

    invoke-interface {p2, p3, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_21

    .line 584
    :cond_1c
    iget-object p2, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mFootItemViews:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 586
    :goto_21
    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/FootOperationBar;->resetClickListener()V

    .line 587
    iget-object p2, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mFootItemViews:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-ge p3, p2, :cond_32

    .line 588
    iget-object p2, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p2, p1, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    goto :goto_37

    .line 590
    :cond_32
    iget-object p2, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 593
    :goto_37
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/FootOperationBar;->resetSelectedIndex()V

    return-void
.end method

.method public changeFootItem(III)V
    .registers 5

    .line 883
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/widgetslib/widget/FootOperationBar;->changeFootItem(IILjava/lang/String;)V

    return-void
.end method

.method public changeFootItem(IILjava/lang/String;)V
    .registers 5

    .line 879
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mContext:Landroid/content/Context;

    invoke-static {v0, p2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/widgetslib/widget/FootOperationBar;->changeFootItem(ILandroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    return-void
.end method

.method public changeFootItem(ILandroid/graphics/drawable/Drawable;)V
    .registers 4

    const/4 v0, 0x0

    .line 891
    invoke-virtual {p0, p1, p2, v0}, Lcom/transsion/widgetslib/widget/FootOperationBar;->changeFootItem(ILandroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    return-void
.end method

.method public changeFootItem(ILandroid/graphics/drawable/Drawable;Ljava/lang/String;)V
    .registers 6

    .line 866
    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/widget/FootOperationBar;->getItemImageView(I)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_f

    if-eqz p2, :cond_f

    const/4 v1, 0x0

    .line 868
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 869
    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 872
    :cond_f
    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/widget/FootOperationBar;->getItemTextView(I)Landroid/widget/TextView;

    move-result-object p0

    if-eqz p0, :cond_1a

    if-eqz p3, :cond_1a

    .line 874
    invoke-virtual {p0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1a
    return-void
.end method

.method public changeFootItem(ILjava/lang/String;)V
    .registers 4

    const/4 v0, 0x0

    .line 887
    invoke-virtual {p0, p1, v0, p2}, Lcom/transsion/widgetslib/widget/FootOperationBar;->changeFootItem(ILandroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    return-void
.end method

.method public changeItemEnable(IZ)V
    .registers 5

    .line 962
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mPopup:Landroid/widget/ListPopupWindow;

    if-nez v0, :cond_e

    .line 963
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/transsion/widgetslib/widget/FootOperationBar;->viewEnable(Landroid/view/View;Z)V

    return-void

    .line 965
    :cond_e
    iget v0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mVisibleTabCount:I

    if-ge p1, v0, :cond_1c

    .line 966
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/transsion/widgetslib/widget/FootOperationBar;->viewEnable(Landroid/view/View;Z)V

    return-void

    .line 968
    :cond_1c
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mMenuEnables:[Z

    sub-int/2addr p1, v0

    aput-boolean p2, v1, p1

    .line 969
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mPopAdapter:Lcom/transsion/widgetslib/widget/FootOperationBar$FootPopupAdapter;

    if-eqz p0, :cond_28

    .line 970
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :cond_28
    return-void
.end method

.method public changeItems([I[I)V
    .registers 7

    .line 895
    array-length v0, p2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 896
    :goto_4
    array-length v2, p2

    if-ge v1, v2, :cond_18

    .line 897
    iget-object v2, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    aget v3, p2, v1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 899
    :cond_18
    invoke-virtual {p0, p1, v0}, Lcom/transsion/widgetslib/widget/FootOperationBar;->changeItems([I[Ljava/lang/String;)V

    return-void
.end method

.method public changeItems([I[Ljava/lang/String;)V
    .registers 6

    .line 903
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mPopup:Landroid/widget/ListPopupWindow;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 904
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->dismiss()V

    .line 906
    :cond_f
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 907
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mPopupItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 908
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mFootItemViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    .line 909
    iput-object v0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mPopup:Landroid/widget/ListPopupWindow;

    const/4 v0, -0x1

    .line 910
    iput v0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mSelectedIndex:I

    .line 912
    array-length v0, p1

    .line 913
    invoke-direct {p0, v0}, Lcom/transsion/widgetslib/widget/FootOperationBar;->setContainerWidth(I)V

    .line 914
    iget-boolean v1, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->isFootActionBar:Z

    if-eqz v1, :cond_71

    .line 915
    iget v1, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mMaxVisibleTabCount:I

    const/4 v2, 0x5

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    if-gt v0, v1, :cond_39

    .line 916
    invoke-direct {p0, p1, p2, v0}, Lcom/transsion/widgetslib/widget/FootOperationBar;->addItemView([I[Ljava/lang/String;I)V

    return-void

    .line 918
    :cond_39
    iget v1, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mMaxVisibleTabCount:I

    if-le v1, v2, :cond_3f

    const/4 v1, 0x4

    goto :goto_41

    :cond_3f
    add-int/lit8 v1, v1, -0x1

    :goto_41
    iput v1, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mVisibleTabCount:I

    .line 919
    invoke-direct {p0, p1, p2, v1}, Lcom/transsion/widgetslib/widget/FootOperationBar;->addItemView([I[Ljava/lang/String;I)V

    .line 921
    iget p1, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mMoreIconRes:I

    iget-object v1, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mContext:Landroid/content/Context;

    .line 922
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/widgetslib/R$string;->os_foot_opt_bar_more:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 921
    invoke-direct {p0, p1, v1}, Lcom/transsion/widgetslib/widget/FootOperationBar;->getMenuItem(ILjava/lang/String;)Landroid/view/View;

    move-result-object p1

    .line 923
    sget v1, Lcom/transsion/widgetslib/R$id;->os_fob_layout:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mMoreView:Landroid/view/View;

    .line 925
    new-instance v2, Lcom/transsion/widgetslib/widget/FootOperationBar$8;

    invoke-direct {v2, p0}, Lcom/transsion/widgetslib/widget/FootOperationBar$8;-><init>(Lcom/transsion/widgetslib/widget/FootOperationBar;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 934
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 935
    invoke-direct {p0, p2, v0}, Lcom/transsion/widgetslib/widget/FootOperationBar;->setPopupItems([Ljava/lang/String;I)V

    return-void

    .line 938
    :cond_71
    invoke-direct {p0, p1, p2, v0}, Lcom/transsion/widgetslib/widget/FootOperationBar;->addItemView([I[Ljava/lang/String;I)V

    return-void
.end method

.method public changeItemsEnable([Z)V
    .registers 5

    .line 952
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mPopup:Landroid/widget/ListPopupWindow;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 953
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->dismiss()V

    .line 955
    :cond_f
    array-length v0, p1

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/FootOperationBar;->getItemCount()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x0

    :goto_19
    if-ge v1, v0, :cond_23

    .line 957
    aget-boolean v2, p1, v1

    invoke-virtual {p0, v1, v2}, Lcom/transsion/widgetslib/widget/FootOperationBar;->changeItemEnable(IZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_19

    :cond_23
    return-void
.end method

.method public changePopAdapter([I[I)V
    .registers 7

    .line 435
    array-length v0, p2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 436
    :goto_4
    array-length v2, p2

    if-ge v1, v2, :cond_18

    .line 437
    iget-object v2, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    aget v3, p2, v1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 439
    :cond_18
    invoke-virtual {p0, p1, v0}, Lcom/transsion/widgetslib/widget/FootOperationBar;->changePopAdapter([I[Ljava/lang/String;)V

    return-void
.end method

.method public changePopAdapter([I[Ljava/lang/String;)V
    .registers 4

    .line 443
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mPopup:Landroid/widget/ListPopupWindow;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 444
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->dismiss()V

    .line 446
    :cond_f
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mPopupItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    .line 447
    iput-object v0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mPopup:Landroid/widget/ListPopupWindow;

    .line 448
    array-length p1, p1

    .line 449
    invoke-direct {p0, p2, p1}, Lcom/transsion/widgetslib/widget/FootOperationBar;->setPopupItems([Ljava/lang/String;I)V

    return-void
.end method

.method public closeDynamicBlur()V
    .registers 2

    .line 1334
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mDynamicBlur:Lcom/transsion/widgetslib/blur/DynamicBlur;

    if-eqz v0, :cond_a

    .line 1335
    invoke-virtual {v0}, Lcom/transsion/widgetslib/blur/DynamicBlur;->stopBlurred()V

    const/4 v0, 0x0

    .line 1336
    iput-object v0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mDynamicBlur:Lcom/transsion/widgetslib/blur/DynamicBlur;

    :cond_a
    return-void
.end method

.method public closeDynamicBlurWithRestoreBackground()V
    .registers 2

    .line 1344
    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/FootOperationBar;->closeDynamicBlur()V

    .line 1345
    iget v0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mBgColor:I

    invoke-virtual {p0, v0}, Lcom/transsion/widgetslib/widget/FootOperationBar;->setContainerBackgroundColor(I)V

    return-void
.end method

.method public closeFootOperationBar()V
    .registers 3

    .line 1116
    iget-boolean v0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mAnim:Z

    if-nez v0, :cond_27

    iget-boolean v0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mShow:Z

    if-eqz v0, :cond_27

    .line 1117
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mPopup:Landroid/widget/ListPopupWindow;

    if-eqz v0, :cond_17

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 1118
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->dismiss()V

    .line 1120
    :cond_17
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mMoreView:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_1f

    .line 1121
    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    :cond_1f
    const/4 v0, 0x1

    .line 1123
    iput-boolean v0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mAnim:Z

    .line 1124
    iput-boolean v1, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mShow:Z

    .line 1125
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/FootOperationBar;->closeAnimator()V

    :cond_27
    return-void
.end method

.method public enableMore(Z)V
    .registers 3

    .line 977
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mMoreView:Landroid/view/View;

    if-eqz v0, :cond_18

    .line 978
    invoke-direct {p0, v0, p1}, Lcom/transsion/widgetslib/widget/FootOperationBar;->viewEnable(Landroid/view/View;Z)V

    if-nez p1, :cond_18

    .line 979
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mPopup:Landroid/widget/ListPopupWindow;

    if-eqz p1, :cond_18

    invoke-virtual {p1}, Landroid/widget/ListPopupWindow;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_18

    .line 980
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {p0}, Landroid/widget/ListPopupWindow;->dismiss()V

    :cond_18
    return-void
.end method

.method public expendTabTouchDelegate()V
    .registers 5

    .line 1503
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mFootItemViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 1504
    sget v2, Lcom/transsion/widgetslib/R$id;->os_fob_layout:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {p0, v2, v1, v3}, Lcom/transsion/widgetslib/widget/FootOperationBar;->expendTabTouchDelegate(Landroid/view/View;Landroid/view/View;Z)V

    goto :goto_6

    :cond_1d
    return-void
.end method

.method public getDynamicBlur()Lcom/transsion/widgetslib/blur/DynamicBlur;
    .registers 3

    .line 1302
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mDynamicBlur:Lcom/transsion/widgetslib/blur/DynamicBlur;

    if-nez v0, :cond_1b

    .line 1303
    new-instance v0, Lcom/transsion/widgetslib/blur/DynamicBlur;

    iget-object v1, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/transsion/widgetslib/blur/DynamicBlur;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mDynamicBlur:Lcom/transsion/widgetslib/blur/DynamicBlur;

    .line 1304
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/transsion/widgetslib/util/Utils;->getOsBgPrimary(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/blur/DynamicBlur;->setEraseColor(I)V

    .line 1305
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mDynamicBlur:Lcom/transsion/widgetslib/blur/DynamicBlur;

    invoke-virtual {v0, p0}, Lcom/transsion/widgetslib/blur/DynamicBlur;->setBlurView(Landroid/view/View;)V

    .line 1307
    :cond_1b
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mDynamicBlur:Lcom/transsion/widgetslib/blur/DynamicBlur;

    return-object p0
.end method

.method public getItemCount()I
    .registers 2

    .line 1142
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mPopupItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_18

    .line 1143
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mPopupItems:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    add-int/2addr v0, p0

    add-int/lit8 v0, v0, -0x1

    return v0

    .line 1144
    :cond_18
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p0

    return p0
.end method

.method public getItemImageView(I)Landroid/widget/ImageView;
    .registers 2

    .line 855
    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/widget/FootOperationBar;->getItemView(I)Landroid/view/View;

    move-result-object p0

    if-nez p0, :cond_8

    const/4 p0, 0x0

    return-object p0

    .line 856
    :cond_8
    sget p1, Lcom/transsion/widgetslib/R$id;->os_foot_opt_bar_item_icon:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ImageView;

    return-object p0
.end method

.method public getItemRedPoint(I)Lcom/transsion/widgetslib/view/BadgeView;
    .registers 5

    .line 1375
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mFootItemViews:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_50

    iget-boolean v2, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->isFootActionBar:Z

    if-eqz v2, :cond_a

    goto :goto_50

    .line 1378
    :cond_a
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ltz p1, :cond_50

    add-int/lit8 v0, v0, -0x1

    if-le p1, v0, :cond_15

    goto :goto_50

    .line 1384
    :cond_15
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mFootItemViews:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    sget v2, Lcom/transsion/widgetslib/R$id;->os_foot_opt_bar_item_text:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1385
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_45

    .line 1386
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mFootItemViews:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    sget p1, Lcom/transsion/widgetslib/R$id;->os_stub_fpb_red_point:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/view/ViewStub;

    invoke-virtual {p0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/transsion/widgetslib/view/BadgeView;

    .line 1387
    invoke-virtual {v0, p0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-object p0

    .line 1389
    :cond_45
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p0

    .line 1390
    instance-of p1, p0, Lcom/transsion/widgetslib/view/BadgeView;

    if-eqz p1, :cond_50

    .line 1391
    check-cast p0, Lcom/transsion/widgetslib/view/BadgeView;

    return-object p0

    :cond_50
    :goto_50
    return-object v1
.end method

.method public getItemTextView(I)Landroid/widget/TextView;
    .registers 2

    .line 861
    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/widget/FootOperationBar;->getItemView(I)Landroid/view/View;

    move-result-object p0

    if-nez p0, :cond_8

    const/4 p0, 0x0

    return-object p0

    .line 862
    :cond_8
    sget p1, Lcom/transsion/widgetslib/R$id;->os_foot_opt_bar_item_text:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    return-object p0
.end method

.method public getItemView(I)Landroid/view/View;
    .registers 2

    .line 850
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public getPopupMaxHeight()I
    .registers 1

    .line 1543
    iget p0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mPopupMaxHeight:I

    return p0
.end method

.method public hasItemRedPoint(I)Z
    .registers 5

    .line 1451
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mFootItemViews:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_36

    iget-boolean v2, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->isFootActionBar:Z

    if-eqz v2, :cond_a

    goto :goto_36

    .line 1454
    :cond_a
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ltz p1, :cond_36

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    if-le p1, v0, :cond_15

    goto :goto_36

    .line 1459
    :cond_15
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mFootItemViews:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    sget p1, Lcom/transsion/widgetslib/R$id;->os_foot_opt_bar_item_text:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    .line 1460
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p0

    .line 1461
    instance-of p1, p0, Lcom/transsion/widgetslib/view/BadgeView;

    if-eqz p1, :cond_36

    .line 1462
    check-cast p0, Lcom/transsion/widgetslib/view/BadgeView;

    .line 1463
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p0

    if-nez p0, :cond_36

    return v2

    :cond_36
    :goto_36
    return v1
.end method

.method public inflateMenu(I)V
    .registers 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "RestrictedApi"
        }
    .end annotation

    .line 368
    new-instance v0, Landroid/view/MenuInflater;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/MenuInflater;-><init>(Landroid/content/Context;)V

    .line 369
    new-instance v1, Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/appcompat/view/menu/MenuBuilder;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mMenuBuilder:Landroidx/appcompat/view/menu/MenuBuilder;

    .line 370
    invoke-virtual {v0, p1, v1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 371
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mMenuBuilder:Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-direct {p0, p1}, Lcom/transsion/widgetslib/widget/FootOperationBar;->setMenu(Landroidx/appcompat/view/menu/MenuBuilder;)V

    return-void
.end method

.method public initShow(Z)V
    .registers 2

    .line 1138
    iput-boolean p1, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mInitShow:Z

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 4

    .line 1156
    invoke-super {p0, p1}, Landroid/view/View;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1157
    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/FootOperationBar;->updateFootBarView()V

    .line 1159
    iget-boolean p1, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mShow:Z

    if-eqz p1, :cond_23

    .line 1163
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    .line 1164
    iget v0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mOrientation:I

    if-eq v0, p1, :cond_21

    .line 1166
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mMyOnPreDrawListener:Lcom/transsion/widgetslib/widget/FootOperationBar$MyOnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 1168
    :cond_21
    iput p1, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mOrientation:I

    :cond_23
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 1

    .line 1350
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 1351
    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/FootOperationBar;->closeDynamicBlur()V

    return-void
.end method

.method protected onMeasure(II)V
    .registers 3

    .line 266
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    .line 267
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/transsion/widgetslib/widget/FootOperationBar;->initDefaultParameter(Landroid/content/Context;)V

    .line 268
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/FootOperationBar;->adjustTextLayout()V

    return-void
.end method

.method public openFootOperationBar()V
    .registers 2

    .line 1104
    iget-boolean v0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mAnim:Z

    if-nez v0, :cond_10

    iget-boolean v0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mShow:Z

    if-nez v0, :cond_10

    const/4 v0, 0x1

    .line 1105
    iput-boolean v0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mAnim:Z

    .line 1106
    iput-boolean v0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mShow:Z

    .line 1107
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/FootOperationBar;->openAnimator()V

    :cond_10
    return-void
.end method

.method public removeItemView(I)V
    .registers 4

    .line 423
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mFootItemViews:Ljava/util/List;

    if-eqz v0, :cond_24

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, p1, :cond_24

    .line 424
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mFootItemViews:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 425
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 426
    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/FootOperationBar;->resetClickListener()V

    .line 427
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 428
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 430
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/FootOperationBar;->resetSelectedIndex()V

    :cond_24
    return-void
.end method

.method public resetClickListener()V
    .registers 7

    const/4 v0, 0x0

    move v1, v0

    .line 521
    :goto_2
    iget-object v2, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mFootItemViews:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3d

    .line 524
    iget-object v2, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mFootItemViews:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 525
    sget v3, Lcom/transsion/widgetslib/R$id;->os_fob_layout:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 526
    invoke-direct {p0, v3, v2, v0}, Lcom/transsion/widgetslib/widget/FootOperationBar;->expendTabTouchDelegate(Landroid/view/View;Landroid/view/View;Z)V

    .line 527
    new-instance v4, Lcom/transsion/widgetslib/widget/FootOperationBar$5;

    invoke-direct {v4, p0, v1}, Lcom/transsion/widgetslib/widget/FootOperationBar$5;-><init>(Lcom/transsion/widgetslib/widget/FootOperationBar;I)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 546
    iget-boolean v4, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->isFootActionBar:Z

    if-nez v4, :cond_3a

    .line 547
    sget v4, Lcom/transsion/widgetslib/R$id;->os_foot_opt_press:I

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 548
    new-instance v4, Lcom/transsion/widgetslib/widget/FootOperationBar$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0, v2, v1}, Lcom/transsion/widgetslib/widget/FootOperationBar$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/widgetslib/widget/FootOperationBar;Landroid/view/View;I)V

    .line 555
    new-instance v5, Lcom/transsion/widgetslib/widget/FootOperationBar$6;

    invoke-direct {v5, p0, v4, v2}, Lcom/transsion/widgetslib/widget/FootOperationBar$6;-><init>(Lcom/transsion/widgetslib/widget/FootOperationBar;Ljava/lang/Runnable;Landroid/view/View;)V

    invoke-virtual {v3, v5}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_3a
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3d
    return-void
.end method

.method public restoreTabTouchDelegate()V
    .registers 5

    .line 1512
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mFootItemViews:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_6
    :goto_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 1513
    sget v1, Lcom/transsion/widgetslib/R$id;->os_fob_layout:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 1514
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    .line 1515
    instance-of v3, v2, Landroid/graphics/Rect;

    if-eqz v3, :cond_6

    .line 1516
    check-cast v2, Landroid/graphics/Rect;

    .line 1517
    new-instance v3, Landroid/view/TouchDelegate;

    invoke-direct {v3, v2, v1}, Landroid/view/TouchDelegate;-><init>(Landroid/graphics/Rect;Landroid/view/View;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setTouchDelegate(Landroid/view/TouchDelegate;)V

    goto :goto_6

    :cond_2b
    return-void
.end method

.method public setAnim(Z)V
    .registers 2

    .line 1112
    iput-boolean p1, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mAnim:Z

    return-void
.end method

.method public setBlurAlp(I)V
    .registers 3

    if-ltz p1, :cond_10

    const/16 v0, 0xff

    if-le p1, v0, :cond_7

    goto :goto_10

    :cond_7
    const/high16 v0, 0x3f800000    # 1.0f

    int-to-float p1, p1

    mul-float/2addr p1, v0

    const/high16 v0, 0x437f0000    # 255.0f

    div-float/2addr p1, v0

    .line 1286
    iput p1, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mBlurAlp:F

    :cond_10
    :goto_10
    return-void
.end method

.method public setClickImageTintColor(I)V
    .registers 3

    .line 1219
    iget v0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mNormalImageTintColor:I

    invoke-virtual {p0, v0, p1}, Lcom/transsion/widgetslib/widget/FootOperationBar;->setImageTintColor(II)V

    return-void
.end method

.method public setClickInterval(J)V
    .registers 3

    .line 1583
    iput-wide p1, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mClickInterval:J

    return-void
.end method

.method public setContainerBackground(I)V
    .registers 2

    .line 350
    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/widget/FootOperationBar;->setContainerBackgroundNoOverlay(I)V

    return-void
.end method

.method public setContainerBackgroundColor(I)V
    .registers 2

    .line 358
    iput p1, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mBgColor:I

    .line 359
    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 361
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mDynamicBlur:Lcom/transsion/widgetslib/blur/DynamicBlur;

    if-eqz p1, :cond_c

    .line 362
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/FootOperationBar;->setContainerBgColor()V

    :cond_c
    return-void
.end method

.method public setContainerBackgroundNoOverlay(I)V
    .registers 3

    .line 354
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/widget/FootOperationBar;->setContainerBackgroundColor(I)V

    return-void
.end method

.method public setFootOptBarClickTextColor(I)V
    .registers 3

    .line 1185
    iget v0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mTextColor:I

    invoke-virtual {p0, v0, p1}, Lcom/transsion/widgetslib/widget/FootOperationBar;->setTextTintColor(II)V

    return-void
.end method

.method public setFootOptBarTextColor(I)V
    .registers 3

    .line 1180
    iget v0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mClickTextColor:I

    invoke-virtual {p0, p1, v0}, Lcom/transsion/widgetslib/widget/FootOperationBar;->setTextTintColor(II)V

    return-void
.end method

.method public setFootTextSize(F)V
    .registers 5

    .line 1199
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_13

    .line 1201
    invoke-virtual {p0, v1}, Lcom/transsion/widgetslib/widget/FootOperationBar;->getItemTextView(I)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setTextSize(F)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_13
    return-void
.end method

.method public setImageTintColor(II)V
    .registers 4

    .line 1206
    iput p1, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mNormalImageTintColor:I

    .line 1207
    iput p2, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mClickImageTintColor:I

    .line 1208
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    const/4 p2, 0x0

    :goto_b
    if-ge p2, p1, :cond_17

    .line 1210
    invoke-virtual {p0, p2}, Lcom/transsion/widgetslib/widget/FootOperationBar;->getItemImageView(I)Landroid/widget/ImageView;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/transsion/widgetslib/widget/FootOperationBar;->setImageColorStateList(Landroid/widget/ImageView;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_b

    :cond_17
    return-void
.end method

.method public setItemRedPointState(IZII)V
    .registers 5

    .line 1407
    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/widget/FootOperationBar;->getItemRedPoint(I)Lcom/transsion/widgetslib/view/BadgeView;

    move-result-object p0

    if-nez p0, :cond_7

    goto :goto_24

    .line 1412
    :cond_7
    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/BadgeView;->getRedPointType()I

    move-result p1

    if-eq p1, p3, :cond_10

    .line 1413
    invoke-virtual {p0, p3}, Lcom/transsion/widgetslib/view/BadgeView;->setRedPointType(I)V

    :cond_10
    if-lez p4, :cond_16

    if-eqz p2, :cond_16

    const/4 p1, 0x0

    goto :goto_18

    :cond_16
    const/16 p1, 0x8

    .line 1416
    :goto_18
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 1417
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_24

    .line 1418
    invoke-virtual {p0, p4}, Lcom/transsion/widgetslib/view/BadgeView;->setNum(I)Ljava/lang/String;

    :cond_24
    :goto_24
    return-void
.end method

.method public setItemSelectState(I)V
    .registers 3

    const/4 v0, 0x0

    .line 608
    invoke-direct {p0, p1, v0}, Lcom/transsion/widgetslib/widget/FootOperationBar;->setItemSelectState(IZ)V

    return-void
.end method

.method public setLandscape(Z)V
    .registers 3

    .line 1523
    iget-boolean v0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mIsLandscape:Z

    if-ne v0, p1, :cond_5

    goto :goto_e

    .line 1527
    :cond_5
    iput-boolean p1, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mIsLandscape:Z

    .line 1528
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mMenuBuilder:Landroidx/appcompat/view/menu/MenuBuilder;

    if-eqz p1, :cond_e

    .line 1529
    invoke-direct {p0, p1}, Lcom/transsion/widgetslib/widget/FootOperationBar;->setMenu(Landroidx/appcompat/view/menu/MenuBuilder;)V

    :cond_e
    :goto_e
    return-void
.end method

.method public setNormalImageTintColor(I)V
    .registers 3

    .line 1215
    iget v0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mClickImageTintColor:I

    invoke-virtual {p0, p1, v0}, Lcom/transsion/widgetslib/widget/FootOperationBar;->setImageTintColor(II)V

    return-void
.end method

.method public setOnFootOptBarClickListener(Lcom/transsion/widgetslib/widget/FootOperationBar$OnFootOptBarClickListener;)V
    .registers 2

    .line 1175
    iput-object p1, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mItemClickListener:Lcom/transsion/widgetslib/widget/FootOperationBar$OnFootOptBarClickListener;

    return-void
.end method

.method public setPopupFullScreenMaxHeight(I)V
    .registers 4

    if-lez p1, :cond_11

    .line 1548
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/widgetslib/R$dimen;->os_foot_bar_min_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    sub-int/2addr p1, v0

    .line 1549
    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/widget/FootOperationBar;->setPopupMaxHeight(I)V

    return-void

    :cond_11
    const/4 p1, 0x0

    .line 1551
    iput p1, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mPopupMaxHeight:I

    .line 1552
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mPopup:Landroid/widget/ListPopupWindow;

    if-eqz p1, :cond_1b

    .line 1553
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/FootOperationBar;->setFootPopupWindow()V

    :cond_1b
    return-void
.end method

.method public setPopupMaxHeight(I)V
    .registers 2

    .line 1559
    iput p1, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mPopupMaxHeight:I

    .line 1560
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mPopup:Landroid/widget/ListPopupWindow;

    if-eqz p1, :cond_9

    .line 1561
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/FootOperationBar;->setFootPopupWindow()V

    :cond_9
    return-void
.end method

.method public setTextTintColor(II)V
    .registers 4

    .line 1190
    iput p1, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mTextColor:I

    .line 1191
    iput p2, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mClickTextColor:I

    .line 1192
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    const/4 p2, 0x0

    :goto_b
    if-ge p2, p1, :cond_17

    .line 1194
    invoke-virtual {p0, p2}, Lcom/transsion/widgetslib/widget/FootOperationBar;->getItemTextView(I)Landroid/widget/TextView;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/transsion/widgetslib/widget/FootOperationBar;->setTextColorStateList(Landroid/widget/TextView;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_b

    :cond_17
    return-void
.end method

.method public setTopLineVisible(I)V
    .registers 3

    .line 1534
    sget v0, Lcom/transsion/widgetslib/R$id;->os_fob_top_line:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_b

    .line 1536
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_b
    return-void
.end method

.method public toggleDynamicBlur(Landroid/view/View;)V
    .registers 5

    .line 1290
    sget-boolean v0, Lcom/transsion/widgetslib/util/Utils;->VERSION_T_GO:Z

    if-eqz v0, :cond_5

    goto :goto_20

    .line 1294
    :cond_5
    invoke-static {}, Lcom/transsion/widgetslib/util/Utils;->getOsType()Ljava/lang/String;

    move-result-object v0

    .line 1295
    sget-object v1, Lcom/transsion/widgetslib/util/Utils;->mOsType:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 1296
    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/FootOperationBar;->getDynamicBlur()Lcom/transsion/widgetslib/blur/DynamicBlur;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/transsion/widgetslib/blur/DynamicBlur;->setBlurredView(Landroid/view/View;)V

    .line 1297
    iget p1, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mBgColor:I

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/widget/FootOperationBar;->setContainerBackgroundColor(I)V

    :cond_20
    :goto_20
    return-void
.end method

.method public toggleFootOperationBar()V
    .registers 2

    .line 1130
    iget-boolean v0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mShow:Z

    if-eqz v0, :cond_8

    .line 1131
    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/FootOperationBar;->closeFootOperationBar()V

    return-void

    .line 1133
    :cond_8
    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/FootOperationBar;->openFootOperationBar()V

    return-void
.end method

.method public updateFootBarView()V
    .registers 2

    .line 1148
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/transsion/widgetslib/widget/FootOperationBar;->setContainerWidth(I)V

    .line 1149
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mPopup:Landroid/widget/ListPopupWindow;

    if-eqz v0, :cond_18

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 1150
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {p0}, Landroid/widget/ListPopupWindow;->dismiss()V

    :cond_18
    return-void
.end method

.method public updateItemRedPointNum(II)V
    .registers 3

    .line 1429
    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/widget/FootOperationBar;->getItemRedPoint(I)Lcom/transsion/widgetslib/view/BadgeView;

    move-result-object p1

    if-nez p1, :cond_7

    return-void

    :cond_7
    if-gtz p2, :cond_d

    .line 1435
    invoke-direct {p0, p1}, Lcom/transsion/widgetslib/widget/FootOperationBar;->redPointHideAnim(Landroid/view/View;)V

    return-void

    .line 1437
    :cond_d
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p0

    if-eqz p0, :cond_17

    const/4 p0, 0x0

    .line 1438
    invoke-virtual {p1, p0}, Landroid/view/View;->setVisibility(I)V

    .line 1440
    :cond_17
    invoke-virtual {p1, p2}, Lcom/transsion/widgetslib/view/BadgeView;->setNum(I)Ljava/lang/String;

    return-void
.end method
