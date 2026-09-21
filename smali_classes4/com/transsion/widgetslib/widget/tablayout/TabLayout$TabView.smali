.class public final Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/widgetslib/widget/tablayout/TabLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "TabView"
.end annotation


# instance fields
.field private final BADGE_NUM_MAX:I

.field private badgeAnchorView:Landroid/view/View;

.field private badgeDrawable:Lcom/google/android/material/badge/BadgeDrawable;

.field private baseBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private customIconView:Landroid/widget/ImageView;

.field private customTextView:Landroid/widget/TextView;

.field private customView:Landroid/view/View;

.field private defaultMaxLines:I

.field private iconView:Landroid/widget/ImageView;

.field private mBadgeNum:I

.field private mBadgeNumMax:I

.field private mBadgePlusTextSize:I

.field private mBadgePlusTextWidth:I

.field private mBadgeTextSize:I

.field private mBadgeTextWidth:I

.field private final mBadgeViewColor:I

.field private mBadgeViewHeight:I

.field private mBadgeViewPadding:I

.field private mBadgeViewPaint:Landroid/graphics/Paint;

.field private mBadgeViewRadius:F

.field private final mBadgeViewTextColor:I

.field private mBadgeViewWidth:I

.field private mIsShowBadgeView:Z

.field private mOuterRectf:Landroid/graphics/RectF;

.field private tab:Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;

.field private textView:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/transsion/widgetslib/widget/tablayout/TabLayout;


# direct methods
.method public constructor <init>(Lcom/transsion/widgetslib/widget/tablayout/TabLayout;Landroid/content/Context;)V
    .registers 8

    .line 2299
    iput-object p1, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->this$0:Lcom/transsion/widgetslib/widget/tablayout/TabLayout;

    .line 2300
    invoke-direct {p0, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    .line 2283
    iput v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->defaultMaxLines:I

    const/16 v1, 0x9

    .line 2293
    iput v1, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->BADGE_NUM_MAX:I

    .line 2294
    iput v1, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->mBadgeNumMax:I

    .line 2295
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/transsion/widgetslib/R$color;->os_warning_primary_hios:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->mBadgeViewColor:I

    .line 2296
    const-string v1, "#FFFFFF"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->mBadgeViewTextColor:I

    .line 2301
    invoke-direct {p0, p2}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->updateBackgroundDrawable(Landroid/content/Context;)V

    .line 2302
    iget v1, p1, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->tabPaddingStart:I

    iget v2, p1, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->tabPaddingTop:I

    iget v3, p1, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->tabPaddingEnd:I

    iget v4, p1, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->tabPaddingBottom:I

    invoke-static {p0, v1, v2, v3, v4}, Landroidx/core/view/ViewCompat;->setPaddingRelative(Landroid/view/View;IIII)V

    const/16 v1, 0x11

    .line 2304
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 2305
    iget-boolean v1, p1, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->inlineLabel:Z

    xor-int/2addr v1, v0

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 2306
    invoke-virtual {p0, v0}, Landroid/view/View;->setClickable(Z)V

    .line 2308
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x3ea

    invoke-static {v0, v1}, Landroidx/core/view/PointerIconCompat;->getSystemIcon(Landroid/content/Context;I)Landroidx/core/view/PointerIconCompat;

    move-result-object v0

    .line 2307
    invoke-static {p0, v0}, Landroidx/core/view/ViewCompat;->setPointerIcon(Landroid/view/View;Landroidx/core/view/PointerIconCompat;)V

    const/4 v0, 0x0

    .line 2309
    invoke-virtual {p0, v0}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 2310
    invoke-direct {p0, p2}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->initBadgeViewParams(Landroid/content/Context;)V

    .line 2311
    new-instance p2, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView$1;

    invoke-direct {p2, p0, p1}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView$1;-><init>(Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;Lcom/transsion/widgetslib/widget/tablayout/TabLayout;)V

    invoke-virtual {p0, p2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;Landroid/view/View;)V
    .registers 2

    .line 2265
    invoke-direct {p0, p1}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->tryUpdateBadgeDrawableBounds(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;)I
    .registers 1

    .line 2265
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->getContentWidth()I

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;Landroid/graphics/Canvas;)V
    .registers 2

    .line 2265
    invoke-direct {p0, p1}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->drawBackground(Landroid/graphics/Canvas;)V

    return-void
.end method

.method static synthetic access$300(Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;)Z
    .registers 1

    .line 2265
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->hasBadgeDrawable()Z

    move-result p0

    return p0
.end method

.method static synthetic access$400(Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;)Lcom/google/android/material/badge/BadgeDrawable;
    .registers 1

    .line 2265
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->badgeDrawable:Lcom/google/android/material/badge/BadgeDrawable;

    return-object p0
.end method

.method static synthetic access$500(Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;)Lcom/google/android/material/badge/BadgeDrawable;
    .registers 1

    .line 2265
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->getOrCreateBadge()Lcom/google/android/material/badge/BadgeDrawable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$600(Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;)V
    .registers 1

    .line 2265
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->removeBadge()V

    return-void
.end method

.method static synthetic access$700(Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;)Lcom/google/android/material/badge/BadgeDrawable;
    .registers 1

    .line 2265
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->getBadge()Lcom/google/android/material/badge/BadgeDrawable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$800(Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;)Landroid/widget/TextView;
    .registers 1

    .line 2265
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->textView:Landroid/widget/TextView;

    return-object p0
.end method

.method private addOnLayoutChangeListener(Landroid/view/View;)V
    .registers 3

    if-nez p1, :cond_3

    return-void

    .line 2837
    :cond_3
    new-instance v0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView$2;

    invoke-direct {v0, p0, p1}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView$2;-><init>(Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;Landroid/view/View;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return-void
.end method

.method private approximateLineWidth(Landroid/text/Layout;IF)F
    .registers 4

    .line 3053
    invoke-virtual {p1, p2}, Landroid/text/Layout;->getLineWidth(I)F

    move-result p0

    invoke-virtual {p1}, Landroid/text/Layout;->getPaint()Landroid/text/TextPaint;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Paint;->getTextSize()F

    move-result p1

    div-float/2addr p3, p1

    mul-float/2addr p0, p3

    return p0
.end method

.method private createPreApi18BadgeAnchorRoot()Landroid/widget/FrameLayout;
    .registers 3

    .line 2794
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 2795
    new-instance p0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {p0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 2798
    invoke-virtual {v0, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method private drawBackground(Landroid/graphics/Canvas;)V
    .registers 7

    .line 2458
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->baseBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1c

    .line 2459
    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2460
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->baseBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_1c
    return-void
.end method

.method private getBadge()Lcom/google/android/material/badge/BadgeDrawable;
    .registers 1

    .line 2823
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->badgeDrawable:Lcom/google/android/material/badge/BadgeDrawable;

    return-object p0
.end method

.method private getContentWidth()I
    .registers 9

    .line 3033
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->textView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->iconView:Landroid/widget/ImageView;

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->customView:Landroid/view/View;

    const/4 v2, 0x3

    new-array v3, v2, [Landroid/view/View;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    aput-object v1, v3, v0

    const/4 v1, 0x2

    aput-object p0, v3, v1

    move p0, v4

    move v1, p0

    move v5, v1

    :goto_15
    if-ge v4, v2, :cond_43

    aget-object v6, v3, v4

    if-eqz v6, :cond_40

    .line 3034
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-nez v7, :cond_40

    if-eqz v5, :cond_2c

    .line 3035
    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v7

    invoke-static {v1, v7}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_30

    :cond_2c
    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v1

    :goto_30
    if-eqz v5, :cond_3b

    .line 3036
    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v5

    invoke-static {p0, v5}, Ljava/lang/Math;->max(II)I

    move-result p0

    goto :goto_3f

    :cond_3b
    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result p0

    :goto_3f
    move v5, v0

    :cond_40
    add-int/lit8 v4, v4, 0x1

    goto :goto_15

    :cond_43
    sub-int/2addr p0, v1

    return p0
.end method

.method private getCustomParentForBadge(Landroid/view/View;)Landroid/widget/FrameLayout;
    .registers 4

    .line 3016
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->iconView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    if-eq p1, v0, :cond_a

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->textView:Landroid/widget/TextView;

    if-eq p1, p0, :cond_a

    return-object v1

    .line 3019
    :cond_a
    sget-boolean p0, Lcom/google/android/material/badge/BadgeUtils;->USE_COMPAT_PARENT:Z

    if-eqz p0, :cond_15

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    check-cast p0, Landroid/widget/FrameLayout;

    return-object p0

    :cond_15
    return-object v1
.end method

.method private getOrCreateBadge()Lcom/google/android/material/badge/BadgeDrawable;
    .registers 2

    .line 2811
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->badgeDrawable:Lcom/google/android/material/badge/BadgeDrawable;

    if-nez v0, :cond_e

    .line 2812
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/material/badge/BadgeDrawable;->create(Landroid/content/Context;)Lcom/google/android/material/badge/BadgeDrawable;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->badgeDrawable:Lcom/google/android/material/badge/BadgeDrawable;

    .line 2814
    :cond_e
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->tryUpdateBadgeAnchor()V

    .line 2815
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->badgeDrawable:Lcom/google/android/material/badge/BadgeDrawable;

    if-eqz p0, :cond_16

    return-object p0

    .line 2816
    :cond_16
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Unable to create badge"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private hasBadgeDrawable()Z
    .registers 1

    .line 3011
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->badgeDrawable:Lcom/google/android/material/badge/BadgeDrawable;

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method private inflateAndAddDefaultIconView()V
    .registers 5

    .line 2715
    sget-boolean v0, Lcom/google/android/material/badge/BadgeUtils;->USE_COMPAT_PARENT:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_d

    .line 2716
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->createPreApi18BadgeAnchorRoot()Landroid/widget/FrameLayout;

    move-result-object v0

    .line 2717
    invoke-virtual {p0, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    goto :goto_e

    :cond_d
    move-object v0, p0

    .line 2721
    :goto_e
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    sget v3, Lcom/transsion/widgetslib/R$layout;->design_layout_tab_icon:I

    .line 2722
    invoke-virtual {v2, v3, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->iconView:Landroid/widget/ImageView;

    .line 2723
    invoke-virtual {v0, v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 2724
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->this$0:Lcom/transsion/widgetslib/widget/tablayout/TabLayout;

    # getter for: Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->mHavePressEffect:Z
    invoke-static {p0}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->access$1000(Lcom/transsion/widgetslib/widget/tablayout/TabLayout;)Z

    move-result p0

    if-eqz p0, :cond_31

    .line 2725
    sget p0, Lcom/transsion/widgetslib/R$drawable;->os_press_primary_bg:I

    invoke-virtual {v0, p0}, Landroid/view/View;->setBackgroundResource(I)V

    return-void

    :cond_31
    const/4 p0, 0x0

    .line 2727
    invoke-virtual {v0, p0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private inflateAndAddDefaultTextView()V
    .registers 7

    .line 2769
    sget-boolean v0, Lcom/google/android/material/badge/BadgeUtils;->USE_COMPAT_PARENT:Z

    if-eqz v0, :cond_c

    .line 2770
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->createPreApi18BadgeAnchorRoot()Landroid/widget/FrameLayout;

    move-result-object v0

    .line 2771
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_d

    :cond_c
    move-object v0, p0

    .line 2775
    :goto_d
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/transsion/widgetslib/R$layout;->os_design_layout_tab_text:I

    const/4 v3, 0x0

    .line 2776
    invoke-virtual {v1, v2, v0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->textView:Landroid/widget/TextView;

    .line 2777
    sget v2, Lcom/transsion/widgetslib/R$id;->os_id_tab_layout_text_view_id:I

    invoke-virtual {v1, v2}, Landroid/view/View;->setId(I)V

    .line 2778
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/transsion/widgetslib/util/Utils;->isSecondHome(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_52

    .line 2779
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->textView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    .line 2780
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/transsion/widgetslib/R$dimen;->os_tab_text_top_offset:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iget-object v4, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->textView:Landroid/widget/TextView;

    .line 2781
    invoke-virtual {v4}, Landroid/view/View;->getPaddingRight()I

    move-result v4

    iget-object v5, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->textView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/view/View;->getPaddingBottom()I

    move-result v5

    .line 2779
    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 2783
    :cond_52
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->textView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 2784
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->this$0:Lcom/transsion/widgetslib/widget/tablayout/TabLayout;

    # getter for: Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->mHavePressEffect:Z
    invoke-static {p0}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->access$1000(Lcom/transsion/widgetslib/widget/tablayout/TabLayout;)Z

    move-result p0

    if-eqz p0, :cond_65

    .line 2785
    sget p0, Lcom/transsion/widgetslib/R$drawable;->os_press_primary_bg:I

    invoke-virtual {v0, p0}, Landroid/view/View;->setBackgroundResource(I)V

    return-void

    :cond_65
    const/4 p0, 0x0

    .line 2787
    invoke-virtual {v0, p0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private initBadgeViewParams(Landroid/content/Context;)V
    .registers 5

    .line 2330
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/transsion/widgetslib/view/BadgeView;->getNotWidthByType(I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/transsion/widgetslib/util/Utils;->dp2px(Landroid/content/Context;I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iput v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->mBadgeViewRadius:F

    .line 2331
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->mBadgeViewPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    .line 2332
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 2333
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->mBadgeViewPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setDither(Z)V

    .line 2334
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->mBadgeViewPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->mBadgeViewColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 2335
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->mBadgeViewPaint:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/widgetslib/R$dimen;->os_tab_badgeview_num_size:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 2336
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/widgetslib/R$dimen;->os_tab_badgeview_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->mBadgeViewHeight:I

    .line 2337
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/widgetslib/R$dimen;->os_tab_badgeview_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->mBadgeViewPadding:I

    .line 2338
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/widgetslib/R$dimen;->os_tab_badgeview_text_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->mBadgeTextSize:I

    .line 2339
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/transsion/widgetslib/R$dimen;->os_tab_badgeview_plus_text_size:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->mBadgePlusTextSize:I

    .line 2340
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->mBadgeViewPaint:Landroid/graphics/Paint;

    iget v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->mBadgeTextSize:I

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 2341
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->mOuterRectf:Landroid/graphics/RectF;

    return-void
.end method

.method private removeBadge()V
    .registers 2

    .line 2827
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->badgeAnchorView:Landroid/view/View;

    if-eqz v0, :cond_7

    .line 2828
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->tryRemoveBadgeFromAnchor()V

    :cond_7
    const/4 v0, 0x0

    .line 2830
    iput-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->badgeDrawable:Lcom/google/android/material/badge/BadgeDrawable;

    return-void
.end method

.method private tryAttachBadgeToAnchor(Landroid/view/View;)V
    .registers 4

    .line 2890
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->hasBadgeDrawable()Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_1b

    :cond_7
    if-eqz p1, :cond_1b

    const/4 v0, 0x0

    .line 2895
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 2896
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 2897
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->badgeDrawable:Lcom/google/android/material/badge/BadgeDrawable;

    .line 2898
    invoke-direct {p0, p1}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->getCustomParentForBadge(Landroid/view/View;)Landroid/widget/FrameLayout;

    move-result-object v1

    .line 2897
    invoke-static {v0, p1, v1}, Lcom/google/android/material/badge/BadgeUtils;->attachBadgeDrawable(Lcom/google/android/material/badge/BadgeDrawable;Landroid/view/View;Landroid/widget/FrameLayout;)V

    .line 2899
    iput-object p1, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->badgeAnchorView:Landroid/view/View;

    :cond_1b
    :goto_1b
    return-void
.end method

.method private tryRemoveBadgeFromAnchor()V
    .registers 4

    .line 2904
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->hasBadgeDrawable()Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_20

    .line 2907
    :cond_7
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->badgeAnchorView:Landroid/view/View;

    if-eqz v0, :cond_20

    const/4 v0, 0x1

    .line 2909
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 2910
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 2911
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->badgeDrawable:Lcom/google/android/material/badge/BadgeDrawable;

    iget-object v1, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->badgeAnchorView:Landroid/view/View;

    .line 2912
    invoke-direct {p0, v1}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->getCustomParentForBadge(Landroid/view/View;)Landroid/widget/FrameLayout;

    move-result-object v2

    .line 2911
    invoke-static {v0, v1, v2}, Lcom/google/android/material/badge/BadgeUtils;->detachBadgeDrawable(Lcom/google/android/material/badge/BadgeDrawable;Landroid/view/View;Landroid/widget/FrameLayout;)V

    const/4 v0, 0x0

    .line 2913
    iput-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->badgeAnchorView:Landroid/view/View;

    :cond_20
    :goto_20
    return-void
.end method

.method private tryUpdateBadgeAnchor()V
    .registers 3

    .line 2858
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->hasBadgeDrawable()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 2861
    :cond_7
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->customView:Landroid/view/View;

    if-eqz v0, :cond_f

    .line 2863
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->tryRemoveBadgeFromAnchor()V

    return-void

    .line 2865
    :cond_f
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->iconView:Landroid/widget/ImageView;

    if-eqz v0, :cond_30

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->tab:Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;

    if-eqz v0, :cond_30

    invoke-virtual {v0}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_30

    .line 2866
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->badgeAnchorView:Landroid/view/View;

    iget-object v1, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->iconView:Landroid/widget/ImageView;

    if-eq v0, v1, :cond_2c

    .line 2867
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->tryRemoveBadgeFromAnchor()V

    .line 2869
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->iconView:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->tryAttachBadgeToAnchor(Landroid/view/View;)V

    return-void

    .line 2871
    :cond_2c
    invoke-direct {p0, v1}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->tryUpdateBadgeDrawableBounds(Landroid/view/View;)V

    return-void

    .line 2873
    :cond_30
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->textView:Landroid/widget/TextView;

    if-eqz v0, :cond_52

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->tab:Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;

    if-eqz v0, :cond_52

    .line 2875
    invoke-virtual {v0}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;->getTabLabelVisibility()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_52

    .line 2876
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->badgeAnchorView:Landroid/view/View;

    iget-object v1, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->textView:Landroid/widget/TextView;

    if-eq v0, v1, :cond_4e

    .line 2877
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->tryRemoveBadgeFromAnchor()V

    .line 2879
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->textView:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->tryAttachBadgeToAnchor(Landroid/view/View;)V

    return-void

    .line 2881
    :cond_4e
    invoke-direct {p0, v1}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->tryUpdateBadgeDrawableBounds(Landroid/view/View;)V

    return-void

    .line 2884
    :cond_52
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->tryRemoveBadgeFromAnchor()V

    return-void
.end method

.method private tryUpdateBadgeDrawableBounds(Landroid/view/View;)V
    .registers 3

    .line 3005
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->hasBadgeDrawable()Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->badgeAnchorView:Landroid/view/View;

    if-ne p1, v0, :cond_13

    .line 3006
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->badgeDrawable:Lcom/google/android/material/badge/BadgeDrawable;

    invoke-direct {p0, p1}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->getCustomParentForBadge(Landroid/view/View;)Landroid/widget/FrameLayout;

    move-result-object p0

    invoke-static {v0, p1, p0}, Lcom/google/android/material/badge/BadgeUtils;->setBadgeDrawableBounds(Lcom/google/android/material/badge/BadgeDrawable;Landroid/view/View;Landroid/widget/FrameLayout;)V

    :cond_13
    return-void
.end method

.method private updBadgeViewNum()V
    .registers 4

    .line 2345
    iget v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->mBadgeNum:I

    const/4 v1, -0x1

    if-le v0, v1, :cond_4d

    .line 2346
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->mBadgeViewPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->mBadgeTextSize:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 2347
    iget v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->mBadgeNum:I

    iget v1, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->mBadgeNumMax:I

    if-le v0, v1, :cond_36

    .line 2348
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->mBadgeViewPaint:Landroid/graphics/Paint;

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    .line 2349
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->mBadgeViewPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->mBadgePlusTextSize:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 2350
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->mBadgeViewPaint:Landroid/graphics/Paint;

    const-string v2, "+"

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->mBadgePlusTextWidth:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    float-to-int v0, v0

    .line 2351
    iput v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->mBadgeTextWidth:I

    goto :goto_43

    .line 2353
    :cond_36
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->mBadgeViewPaint:Landroid/graphics/Paint;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->mBadgeTextWidth:I

    .line 2355
    :goto_43
    iget v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->mBadgeTextWidth:I

    iget v1, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->mBadgeViewPadding:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->mBadgeViewWidth:I

    goto :goto_51

    .line 2357
    :cond_4d
    iget v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->mBadgeViewHeight:I

    iput v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->mBadgeViewWidth:I

    .line 2359
    :goto_51
    iget v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->mBadgeViewWidth:I

    iget v1, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->mBadgeViewHeight:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->mBadgeViewWidth:I

    return-void
.end method

.method private updateBackgroundDrawable(Landroid/content/Context;)V
    .registers 7

    .line 2398
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->this$0:Lcom/transsion/widgetslib/widget/tablayout/TabLayout;

    iget p1, p1, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->tabBackgroundResId:I

    const/4 v0, 0x0

    if-eqz p1, :cond_27

    .line 2399
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iget-object v1, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->this$0:Lcom/transsion/widgetslib/widget/tablayout/TabLayout;

    iget v1, v1, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->tabBackgroundResId:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->baseBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_29

    .line 2400
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result p1

    if-eqz p1, :cond_29

    .line 2401
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->baseBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    goto :goto_29

    .line 2404
    :cond_27
    iput-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->baseBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 2408
    :cond_29
    :goto_29
    new-instance p1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {p1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const/4 v1, 0x0

    .line 2409
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 2411
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->this$0:Lcom/transsion/widgetslib/widget/tablayout/TabLayout;

    iget-object v1, v1, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->tabRippleColorStateList:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_5b

    .line 2412
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const/high16 v2, 0x42fc0000    # 126.0f

    .line 2417
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    const/4 v2, -0x1

    .line 2418
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 2423
    iget-object v2, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->this$0:Lcom/transsion/widgetslib/widget/tablayout/TabLayout;

    iget-object v2, v2, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->tabRippleColorStateList:Landroid/content/res/ColorStateList;

    .line 2430
    new-instance v3, Landroid/graphics/drawable/RippleDrawable;

    .line 2433
    iget-object v4, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->this$0:Lcom/transsion/widgetslib/widget/tablayout/TabLayout;

    iget-boolean v4, v4, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->unboundedRipple:Z

    if-eqz v4, :cond_53

    move-object p1, v0

    :cond_53
    if-eqz v4, :cond_56

    goto :goto_57

    :cond_56
    move-object v0, v1

    .line 2434
    :goto_57
    invoke-direct {v3, v2, p1, v0}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    move-object p1, v3

    .line 2443
    :cond_5b
    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 2444
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->this$0:Lcom/transsion/widgetslib/widget/tablayout/TabLayout;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private updateClipStatus(Z)V
    .registers 4

    .line 2744
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    const/4 v0, 0x0

    .line 2746
    :cond_5
    instance-of v1, p0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_1f

    add-int/lit8 v0, v0, 0x1

    .line 2748
    move-object v1, p0

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, p1}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 2749
    invoke-virtual {v1, p1}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 2750
    invoke-interface {p0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    .line 2751
    instance-of v1, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;

    if-nez v1, :cond_1f

    const/4 v1, 0x3

    if-le v0, v1, :cond_5

    :cond_1f
    return-void
.end method

.method private updateTextAndIcon(Landroid/widget/TextView;Landroid/widget/ImageView;)V
    .registers 9

    .line 2929
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->tab:Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;

    const/4 v1, 0x0

    if-eqz v0, :cond_1a

    invoke-virtual {v0}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 2930
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->tab:Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;

    invoke-virtual {v0}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v0}, Landroidx/core/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_1b

    :cond_1a
    move-object v0, v1

    .line 2932
    :goto_1b
    iget-object v2, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->tab:Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;

    if-eqz v2, :cond_24

    invoke-virtual {v2}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    goto :goto_25

    :cond_24
    move-object v2, v1

    :goto_25
    const/16 v3, 0x8

    const/4 v4, 0x0

    if-eqz p2, :cond_3c

    if-eqz v0, :cond_36

    .line 2936
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2937
    invoke-virtual {p2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2938
    invoke-virtual {p0, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3c

    .line 2940
    :cond_36
    invoke-virtual {p2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2941
    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2946
    :cond_3c
    :goto_3c
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz p1, :cond_6d

    if-eqz p2, :cond_4e

    .line 2949
    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_4e

    .line 2950
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_6d

    :cond_4e
    if-nez v0, :cond_67

    .line 2954
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2955
    iget-object v2, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->tab:Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;

    # getter for: Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;->labelVisibilityMode:I
    invoke-static {v2}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;->access$1200(Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;)I

    move-result v2

    const/4 v5, 0x1

    if-ne v2, v5, :cond_60

    .line 2956
    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_63

    .line 2958
    :cond_60
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 2960
    :goto_63
    invoke-virtual {p0, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_6d

    .line 2962
    :cond_67
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 2963
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_6d
    :goto_6d
    if-eqz p2, :cond_af

    .line 2969
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-nez v0, :cond_87

    .line 2971
    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_87

    .line 2973
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v3}, Lcom/google/android/material/internal/ViewUtils;->dpToPx(Landroid/content/Context;I)F

    move-result v2

    float-to-int v2, v2

    goto :goto_88

    :cond_87
    move v2, v4

    .line 2975
    :goto_88
    iget-object v3, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->this$0:Lcom/transsion/widgetslib/widget/tablayout/TabLayout;

    iget-boolean v3, v3, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->inlineLabel:Z

    if-eqz v3, :cond_a0

    .line 2976
    invoke-static {p1}, Landroidx/core/view/MarginLayoutParamsCompat;->getMarginEnd(Landroid/view/ViewGroup$MarginLayoutParams;)I

    move-result v3

    if-eq v2, v3, :cond_af

    .line 2977
    invoke-static {p1, v2}, Landroidx/core/view/MarginLayoutParamsCompat;->setMarginEnd(Landroid/view/ViewGroup$MarginLayoutParams;I)V

    .line 2978
    iput v4, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 2980
    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2981
    invoke-virtual {p2}, Landroid/view/View;->requestLayout()V

    goto :goto_af

    .line 2984
    :cond_a0
    iget v3, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    if-eq v2, v3, :cond_af

    .line 2985
    iput v2, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 2986
    invoke-static {p1, v4}, Landroidx/core/view/MarginLayoutParamsCompat;->setMarginEnd(Landroid/view/ViewGroup$MarginLayoutParams;I)V

    .line 2988
    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2989
    invoke-virtual {p2}, Landroid/view/View;->requestLayout()V

    .line 2994
    :cond_af
    :goto_af
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->tab:Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;

    if-eqz p1, :cond_b8

    # getter for: Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;->contentDesc:Ljava/lang/CharSequence;
    invoke-static {p1}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;->access$000(Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;)Ljava/lang/CharSequence;

    move-result-object p1

    goto :goto_b9

    :cond_b8
    move-object p1, v1

    :goto_b9
    if-nez v0, :cond_bf

    .line 2997
    invoke-virtual {p0, v1}, Landroid/view/View;->setTooltipText(Ljava/lang/CharSequence;)V

    return-void

    .line 2999
    :cond_bf
    invoke-virtual {p0, p1}, Landroid/view/View;->setTooltipText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method protected drawableStateChanged()V
    .registers 3

    .line 2466
    invoke-super {p0}, Landroid/view/View;->drawableStateChanged()V

    .line 2468
    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    move-result-object v0

    .line 2469
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->baseBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_18

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 2470
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->baseBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v0

    goto :goto_19

    :cond_18
    const/4 v0, 0x0

    :goto_19
    if-eqz v0, :cond_23

    .line 2474
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 2475
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->this$0:Lcom/transsion/widgetslib/widget/tablayout/TabLayout;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_23
    return-void
.end method

.method public getTab()Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;
    .registers 1

    .line 3046
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->tab:Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;

    return-object p0
.end method

.method public hideBadgeView()V
    .registers 2

    const/4 v0, 0x0

    .line 2762
    iput-boolean v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->mIsShowBadgeView:Z

    const/4 v0, 0x1

    .line 2763
    invoke-direct {p0, v0}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->updateClipStatus(Z)V

    .line 2764
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 10

    .line 2364
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 2365
    iget-boolean v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->mIsShowBadgeView:Z

    if-eqz v0, :cond_131

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->textView:Landroid/widget/TextView;

    if-eqz v0, :cond_131

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_131

    .line 2366
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->mBadgeViewPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->mBadgeViewColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 2367
    iget v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->mBadgeNum:I

    const/4 v1, 0x2

    if-gez v0, :cond_54

    .line 2368
    invoke-static {}, Lcom/transsion/widgetslib/util/Utils;->isRtl()Z

    move-result v0

    if-eqz v0, :cond_2e

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->textView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    int-to-float v0, v0

    iget v2, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->mBadgeViewRadius:F

    sub-float/2addr v0, v2

    goto :goto_38

    :cond_2e
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->textView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v0

    int-to-float v0, v0

    iget v2, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->mBadgeViewRadius:F

    add-float/2addr v0, v2

    :goto_38
    iget-object v2, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->textView:Landroid/widget/TextView;

    .line 2369
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->mBadgeViewRadius:F

    add-float/2addr v2, v3

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v1}, Lcom/transsion/widgetslib/util/Utils;->dp2px(Landroid/content/Context;I)I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v2, v1

    iget v1, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->mBadgeViewRadius:F

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->mBadgeViewPaint:Landroid/graphics/Paint;

    .line 2368
    invoke-virtual {p1, v0, v2, v1, p0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void

    .line 2371
    :cond_54
    iget v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->mBadgeViewHeight:I

    div-int/2addr v0, v1

    .line 2372
    iget-object v2, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->mOuterRectf:Landroid/graphics/RectF;

    invoke-static {}, Lcom/transsion/widgetslib/util/Utils;->isRtl()Z

    move-result v3

    if-eqz v3, :cond_6a

    iget-object v3, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->textView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v3

    iget v4, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->mBadgeViewWidth:I

    sub-int/2addr v3, v4

    :goto_68
    int-to-float v3, v3

    goto :goto_71

    :cond_6a
    iget-object v3, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->textView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v3

    goto :goto_68

    :goto_71
    iget-object v4, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->textView:Landroid/widget/TextView;

    .line 2373
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v4

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v1}, Lcom/transsion/widgetslib/util/Utils;->dp2px(Landroid/content/Context;I)I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v4, v4

    .line 2374
    invoke-static {}, Lcom/transsion/widgetslib/util/Utils;->isRtl()Z

    move-result v5

    if-eqz v5, :cond_8f

    iget-object v5, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->textView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v5

    :goto_8d
    int-to-float v5, v5

    goto :goto_99

    :cond_8f
    iget-object v5, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->textView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    move-result v5

    iget v6, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->mBadgeViewWidth:I

    add-int/2addr v5, v6

    goto :goto_8d

    :goto_99
    iget-object v6, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->textView:Landroid/widget/TextView;

    .line 2375
    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v6

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7, v1}, Lcom/transsion/widgetslib/util/Utils;->dp2px(Landroid/content/Context;I)I

    move-result v7

    sub-int/2addr v6, v7

    iget v7, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->mBadgeViewHeight:I

    add-int/2addr v6, v7

    int-to-float v6, v6

    .line 2372
    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/RectF;->set(FFFF)V

    .line 2376
    iget-object v2, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->mOuterRectf:Landroid/graphics/RectF;

    int-to-float v0, v0

    iget-object v3, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->mBadgeViewPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v0, v0, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 2377
    iget-object v2, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->mBadgeViewPaint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->mBadgeViewTextColor:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 2378
    iget-object v2, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->mBadgeViewPaint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->mBadgeTextSize:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 2379
    iget-object v2, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->mBadgeViewPaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v2

    .line 2380
    iget v3, v2, Landroid/graphics/Paint$FontMetrics;->bottom:F

    iget v2, v2, Landroid/graphics/Paint$FontMetrics;->top:F

    sub-float v2, v3, v2

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v2, v4

    sub-float/2addr v2, v3

    add-float/2addr v2, v0

    .line 2381
    iget-object v3, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->mOuterRectf:Landroid/graphics/RectF;

    iget v5, v3, Landroid/graphics/RectF;->top:F

    add-float/2addr v2, v5

    float-to-int v2, v2

    .line 2382
    iget v5, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->mBadgeViewWidth:I

    iget v6, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->mBadgeTextWidth:I

    sub-int/2addr v5, v6

    div-int/2addr v5, v1

    int-to-float v1, v5

    iget v3, v3, Landroid/graphics/RectF;->left:F

    add-float/2addr v1, v3

    float-to-int v1, v1

    .line 2383
    iget v3, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->mBadgeNum:I

    iget v5, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->mBadgeNumMax:I

    if-le v3, v5, :cond_126

    .line 2384
    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    int-to-float v5, v1

    int-to-float v2, v2

    iget-object v6, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->mBadgeViewPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v5, v2, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 2385
    iget-object v2, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->mBadgeViewPaint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->mBadgePlusTextSize:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 2386
    iget-object v2, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->mBadgeViewPaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v2

    .line 2387
    iget v3, v2, Landroid/graphics/Paint$FontMetrics;->bottom:F

    iget v2, v2, Landroid/graphics/Paint$FontMetrics;->top:F

    sub-float v2, v3, v2

    div-float/2addr v2, v4

    sub-float/2addr v2, v3

    add-float/2addr v0, v2

    .line 2388
    iget-object v2, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->mOuterRectf:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    add-float/2addr v0, v2

    float-to-int v0, v0

    .line 2389
    iget v2, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->mBadgeTextWidth:I

    iget v3, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->mBadgePlusTextWidth:I

    sub-int/2addr v2, v3

    add-int/2addr v1, v2

    int-to-float v1, v1

    int-to-float v0, v0

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->mBadgeViewPaint:Landroid/graphics/Paint;

    const-string v2, "+"

    invoke-virtual {p1, v2, v1, v0, p0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void

    .line 2391
    :cond_126
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    int-to-float v1, v1

    int-to-float v2, v2

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->mBadgeViewPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, p0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_131
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 9

    .line 2535
    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 2536
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->badgeDrawable:Lcom/google/android/material/badge/BadgeDrawable;

    if-eqz v0, :cond_2e

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 2537
    invoke-virtual {p0}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    .line 2538
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->badgeDrawable:Lcom/google/android/material/badge/BadgeDrawable;

    .line 2539
    invoke-virtual {v0}, Lcom/google/android/material/badge/BadgeDrawable;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2538
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 2541
    :cond_2e
    invoke-static {p1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->wrap(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object p1

    .line 2542
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->tab:Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;

    .line 2546
    invoke-virtual {v0}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;->getPosition()I

    move-result v3

    const/4 v5, 0x0

    .line 2549
    invoke-virtual {p0}, Landroid/view/View;->isSelected()Z

    move-result v6

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v4, 0x1

    .line 2543
    invoke-static/range {v1 .. v6}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;->obtain(IIIIZZ)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;

    move-result-object v0

    .line 2542
    invoke-virtual {p1, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setCollectionItemInfo(Ljava/lang/Object;)V

    .line 2550
    invoke-virtual {p0}, Landroid/view/View;->isSelected()Z

    move-result p0

    if-eqz p0, :cond_56

    const/4 p0, 0x0

    .line 2551
    invoke-virtual {p1, p0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setClickable(Z)V

    .line 2552
    sget-object p0, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->ACTION_CLICK:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    invoke-virtual {p1, p0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->removeAction(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)Z

    .line 2554
    :cond_56
    const-string p0, "Tab"

    invoke-virtual {p1, p0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setRoleDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onMeasure(II)V
    .registers 7

    .line 2559
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 2560
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 2561
    iget-object v2, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->this$0:Lcom/transsion/widgetslib/widget/tablayout/TabLayout;

    invoke-virtual {v2}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->getTabMaxWidth()I

    move-result v2

    if-lez v2, :cond_1e

    if-eqz v1, :cond_14

    if-le v0, v2, :cond_1e

    .line 2569
    :cond_14
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->this$0:Lcom/transsion/widgetslib/widget/tablayout/TabLayout;

    iget p1, p1, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->tabMaxWidth:I

    const/high16 v0, -0x80000000

    invoke-static {p1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 2576
    :cond_1e
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 2579
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->textView:Landroid/widget/TextView;

    if-eqz v0, :cond_6d

    .line 2580
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->this$0:Lcom/transsion/widgetslib/widget/tablayout/TabLayout;

    iget v0, v0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->tabTextSize:F

    .line 2581
    iget v1, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->defaultMaxLines:I

    .line 2583
    iget-object v2, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->iconView:Landroid/widget/ImageView;

    const/4 v3, 0x1

    if-eqz v2, :cond_38

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_38

    move v1, v3

    goto :goto_46

    .line 2586
    :cond_38
    iget-object v2, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->textView:Landroid/widget/TextView;

    if-eqz v2, :cond_46

    invoke-virtual {v2}, Landroid/widget/TextView;->getLineCount()I

    move-result v2

    if-le v2, v3, :cond_46

    .line 2588
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->this$0:Lcom/transsion/widgetslib/widget/tablayout/TabLayout;

    iget v0, v0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->tabTextMultiLineSize:F

    .line 2591
    :cond_46
    :goto_46
    iget-object v2, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->textView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getTextSize()F

    move-result v2

    .line 2592
    iget-object v3, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->textView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getLineCount()I

    .line 2593
    iget-object v3, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->textView:Landroid/widget/TextView;

    invoke-static {v3}, Landroidx/core/widget/TextViewCompat;->getMaxLines(Landroid/widget/TextView;)I

    move-result v3

    cmpl-float v2, v0, v2

    if-nez v2, :cond_5f

    if-ltz v3, :cond_6d

    if-eq v1, v3, :cond_6d

    .line 2619
    :cond_5f
    iget-object v2, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->textView:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 2620
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->textView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 2621
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    :cond_6d
    return-void
.end method

.method public performClick()Z
    .registers 3

    .line 2481
    invoke-super {p0}, Landroid/view/View;->performClick()Z

    move-result v0

    .line 2483
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->tab:Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;

    if-eqz v1, :cond_15

    if-nez v0, :cond_e

    const/4 v0, 0x0

    .line 2485
    invoke-virtual {p0, v0}, Landroid/view/View;->playSoundEffect(I)V

    .line 2487
    :cond_e
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->tab:Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;->select()V

    const/4 p0, 0x1

    return p0

    :cond_15
    return v0
.end method

.method reset()V
    .registers 2

    const/4 v0, 0x0

    .line 2635
    invoke-virtual {p0, v0}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->setTab(Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;)V

    const/4 v0, 0x0

    .line 2636
    invoke-virtual {p0, v0}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->setSelected(Z)V

    return-void
.end method

.method public setSelected(Z)V
    .registers 4

    .line 2496
    invoke-virtual {p0}, Landroid/view/View;->isSelected()Z

    .line 2498
    invoke-super {p0, p1}, Landroid/view/View;->setSelected(Z)V

    .line 2507
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->textView:Landroid/widget/TextView;

    if-eqz v0, :cond_3e

    .line 2508
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setSelected(Z)V

    if-eqz p1, :cond_27

    .line 2511
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->this$0:Lcom/transsion/widgetslib/widget/tablayout/TabLayout;

    # getter for: Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->mIsFirstLevelTab:Z
    invoke-static {v0}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->access$900(Lcom/transsion/widgetslib/widget/tablayout/TabLayout;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 2512
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->textView:Landroid/widget/TextView;

    sget v1, Lcom/transsion/widgetslib/R$style;->os_semibold_font:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextAppearance(I)V

    goto :goto_3e

    .line 2514
    :cond_1f
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->textView:Landroid/widget/TextView;

    sget v1, Lcom/transsion/widgetslib/R$style;->os_semibold_font:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextAppearance(I)V

    goto :goto_3e

    .line 2517
    :cond_27
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->this$0:Lcom/transsion/widgetslib/widget/tablayout/TabLayout;

    # getter for: Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->mIsFirstLevelTab:Z
    invoke-static {v0}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->access$900(Lcom/transsion/widgetslib/widget/tablayout/TabLayout;)Z

    move-result v0

    if-eqz v0, :cond_37

    .line 2518
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->textView:Landroid/widget/TextView;

    sget v1, Lcom/transsion/widgetslib/R$style;->os_regular_fontweight:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextAppearance(I)V

    goto :goto_3e

    .line 2520
    :cond_37
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->textView:Landroid/widget/TextView;

    sget v1, Lcom/transsion/widgetslib/R$style;->os_regular_fontweight:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextAppearance(I)V

    .line 2525
    :cond_3e
    :goto_3e
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->iconView:Landroid/widget/ImageView;

    if-eqz v0, :cond_45

    .line 2526
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 2528
    :cond_45
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->customView:Landroid/view/View;

    if-eqz p0, :cond_4c

    .line 2529
    invoke-virtual {p0, p1}, Landroid/view/View;->setSelected(Z)V

    :cond_4c
    return-void
.end method

.method setTab(Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;)V
    .registers 3

    .line 2628
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->tab:Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;

    if-eq p1, v0, :cond_9

    .line 2629
    iput-object p1, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->tab:Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;

    .line 2630
    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->update()V

    :cond_9
    return-void
.end method

.method public showBadgeView()V
    .registers 2

    const/4 v0, -0x1

    .line 2732
    invoke-virtual {p0, v0}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->showBadgeView(I)V

    return-void
.end method

.method public showBadgeView(I)V
    .registers 3

    const/16 v0, 0x9

    .line 2758
    invoke-virtual {p0, p1, v0}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->showBadgeView(II)V

    return-void
.end method

.method public showBadgeView(II)V
    .registers 4

    const/4 v0, 0x1

    .line 2736
    iput-boolean v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->mIsShowBadgeView:Z

    .line 2737
    iput p1, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->mBadgeNum:I

    .line 2738
    iput p2, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->mBadgeNumMax:I

    .line 2739
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->updBadgeViewNum()V

    const/4 p1, 0x0

    .line 2740
    invoke-direct {p0, p1}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->updateClipStatus(Z)V

    .line 2741
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method final update()V
    .registers 6

    .line 2640
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->tab:Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    .line 2641
    invoke-virtual {v0}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;->getCustomView()Landroid/view/View;

    move-result-object v2

    goto :goto_b

    :cond_a
    move-object v2, v1

    :goto_b
    if-eqz v2, :cond_53

    .line 2643
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-eq v3, p0, :cond_1d

    if-eqz v3, :cond_1a

    .line 2646
    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 2648
    :cond_1a
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 2650
    :cond_1d
    iput-object v2, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->customView:Landroid/view/View;

    .line 2651
    iget-object v3, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->textView:Landroid/widget/TextView;

    const/16 v4, 0x8

    if-eqz v3, :cond_28

    .line 2652
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 2654
    :cond_28
    iget-object v3, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->iconView:Landroid/widget/ImageView;

    if-eqz v3, :cond_34

    .line 2655
    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2656
    iget-object v3, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->iconView:Landroid/widget/ImageView;

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_34
    const v1, 0x1020014

    .line 2659
    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->customTextView:Landroid/widget/TextView;

    if-eqz v1, :cond_47

    .line 2661
    invoke-static {v1}, Landroidx/core/widget/TextViewCompat;->getMaxLines(Landroid/widget/TextView;)I

    move-result v1

    iput v1, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->defaultMaxLines:I

    :cond_47
    const v1, 0x1020006

    .line 2663
    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->customIconView:Landroid/widget/ImageView;

    goto :goto_60

    .line 2666
    :cond_53
    iget-object v2, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->customView:Landroid/view/View;

    if-eqz v2, :cond_5c

    .line 2667
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 2668
    iput-object v1, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->customView:Landroid/view/View;

    .line 2670
    :cond_5c
    iput-object v1, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->customTextView:Landroid/widget/TextView;

    .line 2671
    iput-object v1, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->customIconView:Landroid/widget/ImageView;

    .line 2674
    :goto_60
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->customView:Landroid/view/View;

    if-nez v1, :cond_a5

    .line 2676
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->iconView:Landroid/widget/ImageView;

    if-nez v1, :cond_6b

    .line 2677
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->inflateAndAddDefaultIconView()V

    :cond_6b
    if-eqz v0, :cond_7e

    .line 2680
    invoke-virtual {v0}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_7e

    .line 2681
    invoke-virtual {v0}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v1}, Landroidx/core/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 2684
    :cond_7e
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->textView:Landroid/widget/TextView;

    if-nez v1, :cond_85

    .line 2685
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->inflateAndAddDefaultTextView()V

    .line 2689
    :cond_85
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->this$0:Lcom/transsion/widgetslib/widget/tablayout/TabLayout;

    iget-object v1, v1, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->tabTextColors:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_90

    .line 2690
    iget-object v2, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->textView:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 2692
    :cond_90
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->textView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->iconView:Landroid/widget/ImageView;

    invoke-direct {p0, v1, v2}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->updateTextAndIcon(Landroid/widget/TextView;Landroid/widget/ImageView;)V

    .line 2694
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->tryUpdateBadgeAnchor()V

    .line 2695
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->iconView:Landroid/widget/ImageView;

    invoke-direct {p0, v1}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->addOnLayoutChangeListener(Landroid/view/View;)V

    .line 2696
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->textView:Landroid/widget/TextView;

    invoke-direct {p0, v1}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->addOnLayoutChangeListener(Landroid/view/View;)V

    goto :goto_b2

    .line 2699
    :cond_a5
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->customTextView:Landroid/widget/TextView;

    if-nez v1, :cond_ad

    iget-object v2, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->customIconView:Landroid/widget/ImageView;

    if-eqz v2, :cond_b2

    .line 2700
    :cond_ad
    iget-object v2, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->customIconView:Landroid/widget/ImageView;

    invoke-direct {p0, v1, v2}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->updateTextAndIcon(Landroid/widget/TextView;Landroid/widget/ImageView;)V

    :cond_b2
    :goto_b2
    if-eqz v0, :cond_c5

    .line 2704
    # getter for: Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;->contentDesc:Ljava/lang/CharSequence;
    invoke-static {v0}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;->access$000(Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_c5

    .line 2707
    # getter for: Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;->contentDesc:Ljava/lang/CharSequence;
    invoke-static {v0}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;->access$000(Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_c5
    if-eqz v0, :cond_cf

    .line 2710
    invoke-virtual {v0}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_cf

    const/4 v0, 0x1

    goto :goto_d0

    :cond_cf
    const/4 v0, 0x0

    :goto_d0
    invoke-virtual {p0, v0}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->setSelected(Z)V

    return-void
.end method

.method final updateOrientation()V
    .registers 3

    .line 2918
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->this$0:Lcom/transsion/widgetslib/widget/tablayout/TabLayout;

    iget-boolean v0, v0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->inlineLabel:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 2919
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->customTextView:Landroid/widget/TextView;

    if-nez v0, :cond_1a

    iget-object v1, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->customIconView:Landroid/widget/ImageView;

    if-eqz v1, :cond_12

    goto :goto_1a

    .line 2922
    :cond_12
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->textView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->iconView:Landroid/widget/ImageView;

    invoke-direct {p0, v0, v1}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->updateTextAndIcon(Landroid/widget/TextView;Landroid/widget/ImageView;)V

    return-void

    .line 2920
    :cond_1a
    :goto_1a
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->customIconView:Landroid/widget/ImageView;

    invoke-direct {p0, v0, v1}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->updateTextAndIcon(Landroid/widget/TextView;Landroid/widget/ImageView;)V

    return-void
.end method
