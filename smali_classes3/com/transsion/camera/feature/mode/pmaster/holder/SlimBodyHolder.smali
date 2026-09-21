.class public Lcom/transsion/camera/feature/mode/pmaster/holder/SlimBodyHolder;
.super Lcom/transsion/camera/feature/mode/pmaster/holder/RvHolder;
.source "SourceFile"


# static fields
.field private static final NORMAL_STATE_SET:[I

.field private static final PRESSED_STATE_SET:[I

.field private static final SELECTED_STATE_SET:[I

.field private static final sStates:[[I


# instance fields
.field private final mContainer:Lcom/transsion/camera/app/ui/widget/RotateLinearLayout;

.field private mIconBackgroundView:Landroid/view/View;

.field private final mIconView:Landroid/widget/ImageView;

.field private mProgressBar:Lcom/transsion/camera/feature/mode/pmaster/ui/PMCircularProgressBar;

.field private mProgressBarBlackColor:I

.field private mProgressBarNormalColor:I

.field private final mStateList:Landroid/content/res/ColorStateList;

.field private final mTitleView:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const v0, 0x10100a7

    .line 32
    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Lcom/transsion/camera/feature/mode/pmaster/holder/SlimBodyHolder;->PRESSED_STATE_SET:[I

    const v0, 0x10100a1

    .line 36
    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Lcom/transsion/camera/feature/mode/pmaster/holder/SlimBodyHolder;->SELECTED_STATE_SET:[I

    const/4 v1, 0x0

    .line 40
    filled-new-array {v1}, [I

    move-result-object v1

    sput-object v1, Lcom/transsion/camera/feature/mode/pmaster/holder/SlimBodyHolder;->NORMAL_STATE_SET:[I

    .line 42
    filled-new-array {v0, v1}, [[I

    move-result-object v0

    sput-object v0, Lcom/transsion/camera/feature/mode/pmaster/holder/SlimBodyHolder;->sStates:[[I

    return-void
.end method

.method public constructor <init>(Landroid/view/View;I)V
    .registers 7

    .line 57
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/pmaster/holder/RvHolder;-><init>(Landroid/view/View;)V

    .line 58
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    .line 59
    sget v0, Lcom/transsion/camera/feature/pmaster/R$id;->mu_item_icon:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/holder/SlimBodyHolder;->mIconView:Landroid/widget/ImageView;

    .line 60
    sget v0, Lcom/transsion/camera/feature/pmaster/R$id;->mu_item_title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/holder/SlimBodyHolder;->mTitleView:Landroid/widget/TextView;

    if-eqz v0, :cond_2a

    .line 62
    sget v1, Lcom/transsion/camera/featurelibs/commonwidget/R$color;->mu_item_shadow_color:I

    invoke-virtual {p2, v1}, Landroid/content/Context;->getColor(I)I

    move-result v1

    const/high16 v2, 0x40a00000    # 5.0f

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2, v3, v3, v1}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 65
    :cond_2a
    sget v0, Lcom/transsion/camera/feature/pmaster/R$id;->feature_item_container:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/ui/widget/RotateLinearLayout;

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/holder/SlimBodyHolder;->mContainer:Lcom/transsion/camera/app/ui/widget/RotateLinearLayout;

    .line 66
    sget v0, Lcom/transsion/camera/featurelibs/commonwidget/R$color;->mu_item_selected_color:I

    invoke-virtual {p2, v0}, Landroid/content/Context;->getColor(I)I

    move-result v0

    .line 68
    sget v1, Lcom/transsion/camera/featurelibs/commonwidget/R$color;->mu_item_unselected_color:I

    invoke-virtual {p2, v1}, Landroid/content/Context;->getColor(I)I

    move-result v1

    .line 70
    new-instance v2, Landroid/content/res/ColorStateList;

    sget-object v3, Lcom/transsion/camera/feature/mode/pmaster/holder/SlimBodyHolder;->sStates:[[I

    filled-new-array {v0, v1}, [I

    move-result-object v0

    invoke-direct {v2, v3, v0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    iput-object v2, p0, Lcom/transsion/camera/feature/mode/pmaster/holder/SlimBodyHolder;->mStateList:Landroid/content/res/ColorStateList;

    .line 72
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result v0

    if-eqz v0, :cond_75

    .line 73
    sget v0, Lcom/transsion/camera/feature/pmaster/R$id;->pmu_item_circle_bar:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMCircularProgressBar;

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/holder/SlimBodyHolder;->mProgressBar:Lcom/transsion/camera/feature/mode/pmaster/ui/PMCircularProgressBar;

    .line 74
    sget v0, Lcom/transsion/camera/featurelibs/commonwidget/R$color;->mu_item_normal_circle_black_color:I

    invoke-virtual {p2, v0}, Landroid/content/Context;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/feature/mode/pmaster/holder/SlimBodyHolder;->mProgressBarBlackColor:I

    .line 75
    sget v0, Lcom/transsion/camera/featurelibs/commonwidget/R$color;->mu_item_normal_circle_color:I

    invoke-virtual {p2, v0}, Landroid/content/Context;->getColor(I)I

    move-result p2

    iput p2, p0, Lcom/transsion/camera/feature/mode/pmaster/holder/SlimBodyHolder;->mProgressBarNormalColor:I

    .line 76
    sget p2, Lcom/transsion/camera/feature/pmaster/R$id;->mu_item_icon_background:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/holder/SlimBodyHolder;->mIconBackgroundView:Landroid/view/View;

    :cond_75
    return-void
.end method

.method private updateIconBackgroundViewResource()V
    .registers 5

    .line 179
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportUI5:Z

    if-eqz v0, :cond_3d

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/holder/SlimBodyHolder;->mIconBackgroundView:Landroid/view/View;

    if-eqz v0, :cond_3d

    .line 180
    new-instance v0, Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-static {}, Lcom/transsion/camera/app_info/AppInfo;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/app/common/storage/DataStore;-><init>(Landroid/content/Context;)V

    .line 181
    const-string v1, "key_picture_ratio"

    const-string v2, "_global_scope"

    const-string v3, "4:3"

    invoke-virtual {v0, v1, v3, v2}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 183
    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_36

    const-string v1, "1:1"

    .line 184
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2e

    goto :goto_36

    .line 188
    :cond_2e
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/holder/SlimBodyHolder;->mIconBackgroundView:Landroid/view/View;

    sget v0, Lcom/transsion/camera/featurelibs/commonwidget/R$drawable;->ic_mu_item_background_black_light_ui5:I

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundResource(I)V

    return-void

    .line 185
    :cond_36
    :goto_36
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/holder/SlimBodyHolder;->mIconBackgroundView:Landroid/view/View;

    sget v0, Lcom/transsion/camera/featurelibs/commonwidget/R$drawable;->ic_mu_item_background_black_dark_ui5:I

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_3d
    return-void
.end method


# virtual methods
.method public bindHolder(Ljava/lang/Object;IIZII)V
    .registers 16

    .line 82
    instance-of v0, p1, Lcom/transsion/camera/feature/mode/pmaster/data/SlimBodyInfo;

    if-eqz v0, :cond_1d8

    .line 83
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/holder/SlimBodyHolder;->mTitleView:Landroid/widget/TextView;

    if-nez v0, :cond_1a

    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 84
    check-cast p1, Lcom/transsion/camera/feature/mode/pmaster/data/SlimBodyInfo;

    .line 85
    iget p1, p1, Lcom/transsion/camera/feature/mode/pmaster/data/SlimBodyInfo;->drawableId:I

    if-lez p1, :cond_1d8

    .line 86
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/holder/SlimBodyHolder;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void

    .line 90
    :cond_1a
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/holder/SlimBodyHolder;->mContainer:Lcom/transsion/camera/app/ui/widget/RotateLinearLayout;

    sget v1, Lcom/transsion/camera/feature/pmaster/R$id;->mu_item_layout:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 91
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 92
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/pmaster/holder/SlimBodyHolder;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 93
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/pmaster/holder/SlimBodyHolder;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 94
    iget-object v4, p0, Lcom/transsion/camera/feature/mode/pmaster/holder/SlimBodyHolder;->mContainer:Lcom/transsion/camera/app/ui/widget/RotateLinearLayout;

    invoke-virtual {v4}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/transsion/camera/feature/pmaster/R$dimen;->mu_item_size:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 95
    iget-object v4, p0, Lcom/transsion/camera/feature/mode/pmaster/holder/SlimBodyHolder;->mContainer:Lcom/transsion/camera/app/ui/widget/RotateLinearLayout;

    invoke-virtual {v4}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/transsion/camera/feature/pmaster/R$dimen;->mu_item_size:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 96
    iget-object v4, p0, Lcom/transsion/camera/feature/mode/pmaster/holder/SlimBodyHolder;->mContainer:Lcom/transsion/camera/app/ui/widget/RotateLinearLayout;

    invoke-virtual {v4}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/transsion/camera/featurelibs/makeupRes/R$dimen;->mu_item_title_width:I

    .line 97
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 99
    iget-object v4, p0, Lcom/transsion/camera/feature/mode/pmaster/holder/SlimBodyHolder;->mContainer:Lcom/transsion/camera/app/ui/widget/RotateLinearLayout;

    invoke-virtual {v4}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/transsion/camera/feature/pmaster/R$dimen;->pm_item_title_height:I

    .line 100
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 101
    iget-object v4, p0, Lcom/transsion/camera/feature/mode/pmaster/holder/SlimBodyHolder;->mTitleView:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/transsion/camera/feature/mode/pmaster/holder/SlimBodyHolder;->mContainer:Lcom/transsion/camera/app/ui/widget/RotateLinearLayout;

    invoke-virtual {v5}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/transsion/camera/feature/pmaster/R$dimen;->mu_item_title_text_size:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    int-to-float v5, v5

    const/4 v6, 0x0

    invoke-virtual {v4, v6, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    const/16 v4, 0x5a

    const/4 v5, 0x1

    if-ne p5, v5, :cond_a7

    .line 103
    iget-object p5, p0, Lcom/transsion/camera/feature/mode/pmaster/holder/SlimBodyHolder;->mContainer:Lcom/transsion/camera/app/ui/widget/RotateLinearLayout;

    invoke-virtual {p5}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p5

    sget p6, Lcom/transsion/camera/feature/pmaster/R$dimen;->mu_big_item_expand_width:I

    invoke-virtual {p5, p6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p5

    iput p5, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 104
    iget-object p5, p0, Lcom/transsion/camera/feature/mode/pmaster/holder/SlimBodyHolder;->mContainer:Lcom/transsion/camera/app/ui/widget/RotateLinearLayout;

    invoke-virtual {p5}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p5

    sget p6, Lcom/transsion/camera/feature/pmaster/R$dimen;->mu_big_item_expand_height:I

    invoke-virtual {p5, p6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p5

    iput p5, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 105
    iget-object p5, p0, Lcom/transsion/camera/feature/mode/pmaster/holder/SlimBodyHolder;->mContainer:Lcom/transsion/camera/app/ui/widget/RotateLinearLayout;

    invoke-virtual {p5, v4, v6}, Lcom/transsion/camera/app/ui/widget/RotateLinearLayout;->setOrientation(IZ)V

    goto/16 :goto_15b

    :cond_a7
    const/4 v7, 0x7

    if-ne p5, v7, :cond_12c

    .line 107
    iget-object p5, p0, Lcom/transsion/camera/feature/mode/pmaster/holder/SlimBodyHolder;->mContainer:Lcom/transsion/camera/app/ui/widget/RotateLinearLayout;

    invoke-virtual {p5}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p5

    sget v7, Lcom/transsion/camera/feature/pmaster/R$dimen;->pmu_feature_height_flip:I

    invoke-virtual {p5, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p5

    iput p5, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 108
    iget-object p5, p0, Lcom/transsion/camera/feature/mode/pmaster/holder/SlimBodyHolder;->mContainer:Lcom/transsion/camera/app/ui/widget/RotateLinearLayout;

    invoke-virtual {p5}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p5

    sget v7, Lcom/transsion/camera/feature/pmaster/R$dimen;->pmu_big_item_width_flip:I

    invoke-virtual {p5, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p5

    iput p5, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 109
    iget-object p5, p0, Lcom/transsion/camera/feature/mode/pmaster/holder/SlimBodyHolder;->mContainer:Lcom/transsion/camera/app/ui/widget/RotateLinearLayout;

    invoke-virtual {p5}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p5

    sget v7, Lcom/transsion/camera/feature/pmaster/R$dimen;->mu_item_size_flip:I

    invoke-virtual {p5, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p5

    iput p5, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 110
    iget-object p5, p0, Lcom/transsion/camera/feature/mode/pmaster/holder/SlimBodyHolder;->mContainer:Lcom/transsion/camera/app/ui/widget/RotateLinearLayout;

    invoke-virtual {p5}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p5

    sget v7, Lcom/transsion/camera/feature/pmaster/R$dimen;->mu_item_size_flip:I

    invoke-virtual {p5, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p5

    iput p5, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 111
    iget-object p5, p0, Lcom/transsion/camera/feature/mode/pmaster/holder/SlimBodyHolder;->mContainer:Lcom/transsion/camera/app/ui/widget/RotateLinearLayout;

    invoke-virtual {p5}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p5

    sget v7, Lcom/transsion/camera/feature/pmaster/R$dimen;->mu_item_title_width_flip:I

    invoke-virtual {p5, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p5

    iput p5, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 112
    iget-object p5, p0, Lcom/transsion/camera/feature/mode/pmaster/holder/SlimBodyHolder;->mContainer:Lcom/transsion/camera/app/ui/widget/RotateLinearLayout;

    invoke-virtual {p5}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p5

    sget v7, Lcom/transsion/camera/feature/pmaster/R$dimen;->mu_item_title_height_flip:I

    invoke-virtual {p5, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p5

    iput p5, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 113
    iget-object p5, p0, Lcom/transsion/camera/feature/mode/pmaster/holder/SlimBodyHolder;->mTitleView:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/transsion/camera/feature/mode/pmaster/holder/SlimBodyHolder;->mContainer:Lcom/transsion/camera/app/ui/widget/RotateLinearLayout;

    invoke-virtual {v7}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/transsion/camera/feature/pmaster/R$dimen;->mu_item_title_text_size_flip:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {p5, v6, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    if-eqz p6, :cond_126

    const/16 p5, 0xb4

    if-eq p6, v4, :cond_11d

    if-eq p6, p5, :cond_126

    const/16 v4, 0x10e

    if-eq p6, v4, :cond_11d

    goto :goto_15b

    .line 117
    :cond_11d
    iget-object v4, p0, Lcom/transsion/camera/feature/mode/pmaster/holder/SlimBodyHolder;->mContainer:Lcom/transsion/camera/app/ui/widget/RotateLinearLayout;

    add-int/2addr p6, p5

    rem-int/lit16 p6, p6, 0x168

    invoke-virtual {v4, p6, v6}, Lcom/transsion/camera/app/ui/widget/RotateLinearLayout;->setOrientation(IZ)V

    goto :goto_15b

    .line 121
    :cond_126
    iget-object p5, p0, Lcom/transsion/camera/feature/mode/pmaster/holder/SlimBodyHolder;->mContainer:Lcom/transsion/camera/app/ui/widget/RotateLinearLayout;

    invoke-virtual {p5, v6, v6}, Lcom/transsion/camera/app/ui/widget/RotateLinearLayout;->setOrientation(IZ)V

    goto :goto_15b

    .line 126
    :cond_12c
    iget-object v4, p0, Lcom/transsion/camera/feature/mode/pmaster/holder/SlimBodyHolder;->mContainer:Lcom/transsion/camera/app/ui/widget/RotateLinearLayout;

    invoke-virtual {v4}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v7, Lcom/transsion/camera/feature/pmaster/R$dimen;->pmu_big_item_width:I

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 127
    iget-object v4, p0, Lcom/transsion/camera/feature/mode/pmaster/holder/SlimBodyHolder;->mContainer:Lcom/transsion/camera/app/ui/widget/RotateLinearLayout;

    invoke-virtual {v4}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v7, Lcom/transsion/camera/feature/pmaster/R$dimen;->pmu_feature_height:I

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 128
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result v4

    if-eqz v4, :cond_156

    if-nez p5, :cond_156

    .line 129
    iget-object p5, p0, Lcom/transsion/camera/feature/mode/pmaster/holder/SlimBodyHolder;->mContainer:Lcom/transsion/camera/app/ui/widget/RotateLinearLayout;

    invoke-virtual {p5, p6, v6}, Lcom/transsion/camera/app/ui/widget/RotateLinearLayout;->setOrientation(IZ)V

    goto :goto_15b

    .line 131
    :cond_156
    iget-object p5, p0, Lcom/transsion/camera/feature/mode/pmaster/holder/SlimBodyHolder;->mContainer:Lcom/transsion/camera/app/ui/widget/RotateLinearLayout;

    invoke-virtual {p5, v6, v6}, Lcom/transsion/camera/app/ui/widget/RotateLinearLayout;->setOrientation(IZ)V

    .line 134
    :goto_15b
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 135
    iget-object p5, p0, Lcom/transsion/camera/feature/mode/pmaster/holder/SlimBodyHolder;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {p5, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 136
    iget-object p5, p0, Lcom/transsion/camera/feature/mode/pmaster/holder/SlimBodyHolder;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {p5, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 137
    check-cast p1, Lcom/transsion/camera/feature/mode/pmaster/data/SlimBodyInfo;

    .line 138
    iget p5, p1, Lcom/transsion/camera/feature/mode/pmaster/data/SlimBodyInfo;->drawableId:I

    if-lez p5, :cond_17a

    .line 139
    iget-object p6, p0, Lcom/transsion/camera/feature/mode/pmaster/holder/SlimBodyHolder;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {p6, p5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 140
    iget-object p5, p0, Lcom/transsion/camera/feature/mode/pmaster/holder/SlimBodyHolder;->mTitleView:Landroid/widget/TextView;

    iget p6, p1, Lcom/transsion/camera/feature/mode/pmaster/data/SlimBodyInfo;->titleId:I

    invoke-virtual {p5, p6}, Landroid/widget/TextView;->setText(I)V

    :cond_17a
    if-ne p2, p3, :cond_18c

    .line 143
    iget-object p5, p0, Lcom/transsion/camera/feature/mode/pmaster/holder/SlimBodyHolder;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {p5, v5}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 144
    iget-object p5, p0, Lcom/transsion/camera/feature/mode/pmaster/holder/SlimBodyHolder;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {p5, v5}, Landroid/view/View;->setPressed(Z)V

    .line 145
    iget-object p5, p0, Lcom/transsion/camera/feature/mode/pmaster/holder/SlimBodyHolder;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {p5, v5}, Landroid/widget/TextView;->setSelected(Z)V

    goto :goto_196

    .line 147
    :cond_18c
    iget-object p5, p0, Lcom/transsion/camera/feature/mode/pmaster/holder/SlimBodyHolder;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {p5, v6}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 148
    iget-object p5, p0, Lcom/transsion/camera/feature/mode/pmaster/holder/SlimBodyHolder;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {p5, v6}, Landroid/widget/TextView;->setSelected(Z)V

    .line 151
    :goto_196
    iget-object p5, p0, Lcom/transsion/camera/feature/mode/pmaster/holder/SlimBodyHolder;->mProgressBar:Lcom/transsion/camera/feature/mode/pmaster/ui/PMCircularProgressBar;

    if-eqz p5, :cond_1b3

    if-ne p2, p3, :cond_19d

    move v6, v5

    .line 152
    :cond_19d
    invoke-virtual {p5, v6}, Lcom/transsion/camera/feature/mode/pmaster/ui/PMCircularProgressBar;->setSelect(Z)V

    .line 153
    iget-object p5, p0, Lcom/transsion/camera/feature/mode/pmaster/holder/SlimBodyHolder;->mProgressBar:Lcom/transsion/camera/feature/mode/pmaster/ui/PMCircularProgressBar;

    if-eqz p4, :cond_1a7

    iget p6, p0, Lcom/transsion/camera/feature/mode/pmaster/holder/SlimBodyHolder;->mProgressBarBlackColor:I

    goto :goto_1a9

    :cond_1a7
    iget p6, p0, Lcom/transsion/camera/feature/mode/pmaster/holder/SlimBodyHolder;->mProgressBarNormalColor:I

    :goto_1a9
    invoke-virtual {p5, p6}, Lcom/transsion/camera/feature/mode/pmaster/ui/PMCircularProgressBar;->setNormalColor(I)V

    .line 154
    iget-object p5, p0, Lcom/transsion/camera/feature/mode/pmaster/holder/SlimBodyHolder;->mProgressBar:Lcom/transsion/camera/feature/mode/pmaster/ui/PMCircularProgressBar;

    iget p6, p1, Lcom/transsion/camera/feature/mode/pmaster/data/SlimBodyInfo;->progress:I

    invoke-virtual {p5, p6}, Lcom/transsion/camera/feature/mode/pmaster/ui/PMCircularProgressBar;->setProgress(I)V

    .line 157
    :cond_1b3
    iget-object p5, p0, Lcom/transsion/camera/feature/mode/pmaster/holder/SlimBodyHolder;->mTitleView:Landroid/widget/TextView;

    iget-object p6, p0, Lcom/transsion/camera/feature/mode/pmaster/holder/SlimBodyHolder;->mStateList:Landroid/content/res/ColorStateList;

    invoke-virtual {p5, p6}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 159
    iget-object p5, p0, Lcom/transsion/camera/feature/mode/pmaster/holder/SlimBodyHolder;->mIconBackgroundView:Landroid/view/View;

    if-eqz p5, :cond_1d8

    .line 160
    iget p1, p1, Lcom/transsion/camera/feature/mode/pmaster/data/SlimBodyInfo;->featureId:I

    const/4 p6, 0x2

    if-ne p1, p6, :cond_1cb

    if-ne p2, p3, :cond_1cb

    .line 161
    sget p0, Lcom/transsion/camera/featurelibs/commonwidget/R$drawable;->ic_multi_fb_ai_on_background:I

    invoke-virtual {p5, p0}, Landroid/view/View;->setBackgroundResource(I)V

    return-void

    :cond_1cb
    if-eqz p4, :cond_1d0

    .line 163
    sget p1, Lcom/transsion/camera/featurelibs/commonwidget/R$drawable;->ic_mu_item_black_background:I

    goto :goto_1d2

    .line 164
    :cond_1d0
    sget p1, Lcom/transsion/camera/featurelibs/commonwidget/R$drawable;->ic_mu_item_background:I

    .line 163
    :goto_1d2
    invoke-virtual {p5, p1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 165
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/pmaster/holder/SlimBodyHolder;->updateIconBackgroundViewResource()V

    :cond_1d8
    return-void
.end method

.method public updateRotation(IIZ)V
    .registers 5

    .line 173
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result v0

    if-eqz v0, :cond_d

    if-nez p1, :cond_d

    .line 174
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/holder/SlimBodyHolder;->mContainer:Lcom/transsion/camera/app/ui/widget/RotateLinearLayout;

    invoke-virtual {p0, p2, p3}, Lcom/transsion/camera/app/ui/widget/RotateLinearLayout;->setOrientation(IZ)V

    :cond_d
    return-void
.end method
