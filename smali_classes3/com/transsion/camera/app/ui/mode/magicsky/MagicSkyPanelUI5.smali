.class public Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI5;
.super Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/ui/anim/UnionAnimatorHolder$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI5$UIHandler;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;",
        "Lcom/transsion/camera/app/common/ui/anim/UnionAnimatorHolder$AnimatorUpdateListener;"
    }
.end annotation


# static fields
.field private static final HIDE_SETTING_NAME_DELAY_TIME:I = 0xbb8

.field private static final MSG_HIDE_SETTING_NAME:I = 0x64


# instance fields
.field private mPopSettingTitleContainer:Landroid/widget/FrameLayout;

.field private mPopSettingTitleTextView:Landroid/widget/TextView;

.field private final mUIHandler:Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI5$UIHandler;


# direct methods
.method static bridge synthetic -$$Nest$fgetmPopSettingTitleContainer(Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI5;)Landroid/widget/FrameLayout;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI5;->mPopSettingTitleContainer:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mhidePopSettingTitle(Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI5;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI5;->hidePopSettingTitle()V

    return-void
.end method

.method public constructor <init>(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Lcom/transsion/camera/app/common/IAppUI;Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)V
    .registers 6

    .line 44
    invoke-direct/range {p0 .. p5}, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;-><init>(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Lcom/transsion/camera/app/common/IAppUI;Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)V

    .line 45
    invoke-static {}, Lcom/transsion/camera/app/common/ui/anim/UnionAnimatorHolder;->getInstance()Lcom/transsion/camera/app/common/ui/anim/UnionAnimatorHolder;

    move-result-object p1

    sget-object p2, Lcom/transsion/camera/app/common/ui/anim/UnionAnimatorHolder$AnimationDescription;->UI5_ANIM_PREVIEW_TRANSLATION:Lcom/transsion/camera/app/common/ui/anim/UnionAnimatorHolder$AnimationDescription;

    invoke-virtual {p1, p2, p0}, Lcom/transsion/camera/app/common/ui/anim/UnionAnimatorHolder;->registerAnimatorUpdateListener(Lcom/transsion/camera/app/common/ui/anim/UnionAnimatorHolder$AnimationDescription;Lcom/transsion/camera/app/common/ui/anim/UnionAnimatorHolder$AnimatorUpdateListener;)V

    .line 46
    new-instance p1, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI5$UIHandler;

    invoke-direct {p1, p0}, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI5$UIHandler;-><init>(Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI5;)V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI5;->mUIHandler:Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI5$UIHandler;

    return-void
.end method

.method private hidePopSettingTitle()V
    .registers 3

    .line 142
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI5;->mPopSettingTitleContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_16

    .line 143
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI5;->mPopSettingTitleContainer:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 144
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI5;->mUIHandler:Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI5$UIHandler;

    const/16 v0, 0x64

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    :cond_16
    return-void
.end method

.method private showPop3sSettingTitle()V
    .registers 5

    .line 128
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI5;->mUIHandler:Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI5$UIHandler;

    const/16 v1, 0x64

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 129
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI5;->mPopSettingTitleContainer:Landroid/widget/FrameLayout;

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_28

    const-string v2, "alpha"

    invoke-static {v0, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v1, 0xc8

    .line 130
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 131
    new-instance v1, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI5$2;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI5$2;-><init>(Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI5;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 138
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    return-void

    :array_28
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private updatePopSettingTitleLayout()V
    .registers 6

    .line 158
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI5;->mPopSettingTitleContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 159
    iget-object v1, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    const-string v2, "4:3"

    const-string v3, "_global_scope"

    const-string v4, "key_picture_ratio"

    invoke-virtual {v1, v4, v2, v3}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 160
    const-string v2, "1:1"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_39

    .line 161
    iget-object v1, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mAppUIRect:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v1}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getModePlusBottomBarHeight()I

    move-result v1

    iget-object v2, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI5;->mPopSettingTitleContainer:Landroid/widget/FrameLayout;

    .line 162
    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/transsion/camera/featurelibs/commonwidget/R$dimen;->common_pop_setting_title_bottom_margin_1_1:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 163
    iget-object v1, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI5;->mPopSettingTitleTextView:Landroid/widget/TextView;

    sget v2, Lcom/transsion/camera/featurelibs/commonwidget/R$drawable;->pop_menu_name_background_black:I

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_55

    .line 165
    :cond_39
    iget-object v1, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mAppUIRect:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v1}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getModePlusBottomBarHeight()I

    move-result v1

    iget-object v2, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI5;->mPopSettingTitleContainer:Landroid/widget/FrameLayout;

    .line 166
    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/transsion/camera/featurelibs/commonwidget/R$dimen;->common_pop_setting_title_bottom_margin:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 167
    iget-object v1, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI5;->mPopSettingTitleTextView:Landroid/widget/TextView;

    sget v2, Lcom/transsion/camera/featurelibs/commonwidget/R$drawable;->pop_menu_name_background:I

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    :goto_55
    const/16 v1, 0x51

    .line 169
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    const/4 v1, -0x2

    .line 170
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 171
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI5;->mPopSettingTitleContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method protected hideSkySettingUI()V
    .registers 2

    .line 113
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mSkyRootAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 114
    invoke-super {p0}, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->hideSkySettingUI()V

    .line 115
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI5;->hidePopSettingTitle()V

    return-void
.end method

.method protected initMagicSkyUI()V
    .registers 4

    .line 51
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mChooseLayout:Landroid/view/View;

    sget v1, Lcom/transsion/camera/feature/mode/magicsky/R$id;->sky_choose_root:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mChooseRoot:Landroid/widget/FrameLayout;

    .line 52
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mChooseLayout:Landroid/view/View;

    sget v1, Lcom/transsion/camera/feature/mode/magicsky/R$id;->sky_select_root:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mSkySelectRoot:Landroid/view/View;

    .line 53
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mChooseLayout:Landroid/view/View;

    sget v1, Lcom/transsion/camera/feature/mode/magicsky/R$id;->sky_select_root_rotate:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/ui/widget/RotateLayout;

    iput-object v0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mSkySelectRootRotate:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    .line 55
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mChooseLayout:Landroid/view/View;

    sget v1, Lcom/transsion/camera/feature/mode/magicsky/R$id;->sky_choose_bar:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/ui/widget/RotateImageView;

    iput-object v0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mSkyChooseBar:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    .line 56
    iget-object v1, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mChooseBarListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mSkyChooseBar:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    const v1, 0x3f4ccccd    # 0.8f

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/transsion/camera/utils/MultiTouchManager;->pressSealAnimation(Landroid/view/View;FLandroid/animation/AnimatorListenerAdapter;)V

    .line 59
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mChooseLayout:Landroid/view/View;

    sget v1, Lcom/transsion/camera/feature/mode/magicsky/R$id;->sky_select_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mSkySelectRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    .line 60
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setMotionEventSplittingEnabled(Z)V

    .line 61
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mSkySelectRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 63
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mChooseLayout:Landroid/view/View;

    sget v2, Lcom/transsion/camera/featurelibs/commonwidget/R$id;->pop_menu_container:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI5;->mPopSettingTitleContainer:Landroid/widget/FrameLayout;

    .line 64
    sget v2, Lcom/transsion/camera/featurelibs/commonwidget/R$id;->pop_setting_title:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI5;->mPopSettingTitleTextView:Landroid/widget/TextView;

    .line 65
    sget v2, Lcom/transsion/camera/feature/mode/magicsky/R$string;->magicsky_mode_title:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 67
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 68
    new-instance v2, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI5$1;

    invoke-direct {v2, p0, v0}, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI5$1;-><init>(Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI5;Landroid/content/res/Resources;)V

    iput-object v2, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mSkyItems:Ljava/util/List;

    .line 84
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->initAnim()V

    .line 85
    invoke-virtual {p0, v1}, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI5;->updateSettingUILayout(Z)V

    return-void
.end method

.method public onAnimationUpdate(Ljava/lang/Integer;ZZ)V
    .registers 4

    if-eqz p2, :cond_9

    .line 97
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mSkyChooseBar:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    return-void

    :cond_9
    if-eqz p3, :cond_11

    .line 99
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mSkyChooseBar:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    :cond_11
    return-void
.end method

.method public bridge synthetic onAnimationUpdate(Ljava/lang/Object;ZZ)V
    .registers 4

    .line 36
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI5;->onAnimationUpdate(Ljava/lang/Integer;ZZ)V

    return-void
.end method

.method public onBackPressed()V
    .registers 3

    .line 120
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mSkyRootAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v0

    if-nez v0, :cond_11

    .line 121
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI5;->hidePopSettingTitle()V

    .line 122
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/4 v1, 0x1

    invoke-interface {v0, v1, v1}, Lcom/transsion/camera/app/common/IAppUI;->showOrHideModePickerRootUI(ZZ)V

    .line 124
    :cond_11
    invoke-super {p0}, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->onBackPressed()V

    return-void
.end method

.method public onOrientationChanged(IZ)V
    .registers 3

    .line 176
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->onOrientationChanged(IZ)V

    const/16 p2, 0x5a

    if-eq p1, p2, :cond_b

    const/16 p2, 0x10e

    if-ne p1, p2, :cond_c

    :cond_b
    const/4 p1, 0x0

    .line 180
    :cond_c
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI5;->mPopSettingTitleTextView:Landroid/widget/TextView;

    int-to-float p1, p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setRotation(F)V

    return-void
.end method

.method protected showSkySettingUI()V
    .registers 3

    .line 105
    invoke-super {p0}, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->showSkySettingUI()V

    .line 106
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI5;->updatePopSettingTitleLayout()V

    .line 107
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI5;->showPop3sSettingTitle()V

    .line 108
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-interface {p0, v0, v1}, Lcom/transsion/camera/app/common/IAppUI;->showOrHideModePickerRootUI(ZZ)V

    return-void
.end method

.method public unInitMagicSkyUI()V
    .registers 3

    .line 90
    invoke-static {}, Lcom/transsion/camera/app/common/ui/anim/UnionAnimatorHolder;->getInstance()Lcom/transsion/camera/app/common/ui/anim/UnionAnimatorHolder;

    move-result-object v0

    sget-object v1, Lcom/transsion/camera/app/common/ui/anim/UnionAnimatorHolder$AnimationDescription;->UI5_ANIM_PREVIEW_TRANSLATION:Lcom/transsion/camera/app/common/ui/anim/UnionAnimatorHolder$AnimationDescription;

    invoke-virtual {v0, v1, p0}, Lcom/transsion/camera/app/common/ui/anim/UnionAnimatorHolder;->unregisterAnimatorUpdateListener(Lcom/transsion/camera/app/common/ui/anim/UnionAnimatorHolder$AnimationDescription;Lcom/transsion/camera/app/common/ui/anim/UnionAnimatorHolder$AnimatorUpdateListener;)V

    .line 91
    invoke-super {p0}, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->unInitMagicSkyUI()V

    return-void
.end method

.method protected updateSettingUILayout(Z)V
    .registers 5

    .line 150
    invoke-super {p0, p1}, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->updateSettingUILayout(Z)V

    .line 151
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mSkySelectRoot:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    .line 152
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mAppUIRect:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getBottomBarHeight()I

    move-result v0

    iget-object v1, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/camera/feature/mode/magicsky/R$dimen;->magic_sky_select_root_bottom_margin_offset:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    add-int/2addr v0, v1

    const/4 v1, 0x0

    .line 153
    invoke-virtual {p1, v1, v1, v1, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 154
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mSkySelectRoot:Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
