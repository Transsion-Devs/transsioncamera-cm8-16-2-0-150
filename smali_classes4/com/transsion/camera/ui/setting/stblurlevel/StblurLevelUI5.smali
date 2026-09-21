.class public Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI5;
.super Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/ui/widget/CommonParamsControlView$OnTouchMoveListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI5$UIHandler;
    }
.end annotation


# static fields
.field private static final HIDE_SETTING_NAME_DELAY_TIME:I = 0xbb8

.field private static final MSG_HIDE_SETTING_NAME:I = 0x64


# instance fields
.field private final mCustomizedFocalLengthSupport:Z

.field private mForceHideTopSwitch:Z

.field private mPopSettingTitleContainer:Landroid/widget/FrameLayout;

.field private mPopSettingTitleTextView:Landroid/widget/TextView;

.field private final mResources:Landroid/content/res/Resources;

.field private mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

.field private final mUIHandler:Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI5$UIHandler;


# direct methods
.method public static synthetic $r8$lambda$ed44ILgHEugznAW4zUwfceryLac(Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI5;I)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI5;->lambda$onOrientationChanged$0(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmPopSettingTitleContainer(Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI5;)Landroid/widget/FrameLayout;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI5;->mPopSettingTitleContainer:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mhidePop3SettingTitle(Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI5;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI5;->hidePop3SettingTitle()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mshowPop3sSettingTitle(Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI5;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI5;->showPop3sSettingTitle()V

    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;)V
    .registers 3

    .line 57
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI;-><init>(Landroid/content/res/Resources;)V

    const/4 v0, 0x0

    .line 52
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI5;->mForceHideTopSwitch:Z

    .line 58
    new-instance v0, Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI5$UIHandler;

    invoke-direct {v0, p0}, Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI5$UIHandler;-><init>(Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI5;)V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI5;->mUIHandler:Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI5$UIHandler;

    .line 59
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mCustomizedFocalLengthSupport:Z

    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI5;->mCustomizedFocalLengthSupport:Z

    .line 60
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI5;->mResources:Landroid/content/res/Resources;

    return-void
.end method

.method private getSTBlurViewLayout(Landroid/content/Context;)I
    .registers 2

    .line 115
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/transsion/camera/R$bool;->use_stblur_view_ui5_itel:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    if-eqz p0, :cond_f

    .line 116
    sget p0, Lcom/transsion/camera/R$layout;->stblur_view_ui5_itel:I

    return p0

    .line 118
    :cond_f
    sget p0, Lcom/transsion/camera/R$layout;->stblur_view:I

    return p0
.end method

.method private hidePop3SettingTitle()V
    .registers 3

    .line 334
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI5;->mPopSettingTitleContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_16

    .line 335
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI5;->mPopSettingTitleContainer:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 336
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI5;->mUIHandler:Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI5$UIHandler;

    const/16 v0, 0x64

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    :cond_16
    return-void
.end method

.method private synthetic lambda$onOrientationChanged$0(I)V
    .registers 4

    const/16 v0, 0x5a

    if-ne p1, v0, :cond_7

    const/16 v0, -0x5a

    goto :goto_12

    :cond_7
    const/16 v1, 0x10e

    if-ne p1, v1, :cond_c

    goto :goto_12

    :cond_c
    const/16 v0, 0xb4

    if-ne p1, v0, :cond_11

    goto :goto_12

    :cond_11
    const/4 v0, 0x0

    .line 141
    :goto_12
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI;->mScrollerRulerView:Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->rotateIndicator(I)V

    return-void
.end method

.method private showPop3sSettingTitle()V
    .registers 5

    .line 320
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI5;->mUIHandler:Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI5$UIHandler;

    const/16 v1, 0x64

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 321
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI5;->mPopSettingTitleContainer:Landroid/widget/FrameLayout;

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_28

    const-string v2, "alpha"

    invoke-static {v0, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v1, 0xc8

    .line 322
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 323
    new-instance v1, Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI5$2;

    invoke-direct {v1, p0}, Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI5$2;-><init>(Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI5;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 330
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    return-void

    :array_28
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method public cancelForceHide()V
    .registers 2

    const/4 v0, 0x0

    .line 315
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI5;->mForceHideTopSwitch:Z

    .line 316
    invoke-virtual {p0, v0}, Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI5;->updateSTblurLevelVisibility(Z)V

    return-void
.end method

.method public createEntryView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Lcom/transsion/camera/app/common/interactive/CommonInteractive;)Landroid/view/View;
    .registers 7

    .line 65
    invoke-static {}, Lcom/transsion/camera/app/common/ModuleTransferManager;->getTransferManager()Lcom/transsion/camera/app/common/ModuleTransferManager;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI;->mModuleTransfer:Lcom/transsion/camera/app/common/IModuleTransfer;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ModuleTransferManager;->registerTransferListener(Lcom/transsion/camera/app/common/IModuleTransfer;)V

    .line 66
    invoke-static {}, Lcom/transsion/camera/app/common/ModuleTransferManager;->getTransferManager()Lcom/transsion/camera/app/common/ModuleTransferManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ModuleTransferManager;->getRingScreenLightState()Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI;->mLowLight:Z

    .line 67
    iput-object p2, p0, Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI;->mEntryRootView:Landroid/view/ViewGroup;

    .line 68
    invoke-virtual {p3}, Lcom/transsion/camera/app/common/interactive/CommonInteractive;->getIAppUI()Lcom/transsion/camera/app/common/IAppUI;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI;->mIAppUI:Lcom/transsion/camera/app/common/IAppUI;

    .line 69
    invoke-virtual {p3}, Lcom/transsion/camera/app/common/interactive/CommonInteractive;->getAppUIRect()Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

    move-result-object p3

    iput-object p3, p0, Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI;->mAppUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

    .line 70
    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-direct {p0, p3}, Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI5;->getSTBlurViewLayout(Landroid/content/Context;)I

    move-result p3

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI;->mEntryView:Landroid/view/View;

    .line 71
    sget p3, Lcom/transsion/camera/featurelibs/commonwidget/R$layout;->pop_3s_setting_title:I

    check-cast p2, Landroid/view/ViewGroup;

    const/4 v0, 0x1

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 72
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI;->mEntryView:Landroid/view/View;

    sget p2, Lcom/transsion/camera/featurelibs/commonwidget/R$id;->pop_menu_container:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI5;->mPopSettingTitleContainer:Landroid/widget/FrameLayout;

    .line 73
    sget p2, Lcom/transsion/camera/featurelibs/commonwidget/R$id;->pop_setting_title:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI5;->mPopSettingTitleTextView:Landroid/widget/TextView;

    .line 74
    sget p2, Lcom/transsion/camera/R$string;->guide_stblurlevel_title:I

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    .line 75
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI5;->mPopSettingTitleContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    .line 76
    iget-object p2, p0, Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI;->mAppUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

    invoke-interface {p2}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getModePlusBottomBarHeight()I

    move-result p2

    iget-object p3, p0, Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI5;->mResources:Landroid/content/res/Resources;

    sget v1, Lcom/transsion/camera/featurelibs/commonwidget/R$dimen;->common_pop_setting_title_bottom_margin:I

    .line 77
    invoke-virtual {p3, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p3

    add-int/2addr p2, p3

    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    const/4 p2, -0x2

    .line 78
    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 79
    iget-object p2, p0, Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI5;->mPopSettingTitleContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 81
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI;->mEntryView:Landroid/view/View;

    sget p2, Lcom/transsion/camera/R$id;->blur_top_switch:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI;->mBlurTopSwitch:Landroid/widget/ImageView;

    .line 82
    iget-boolean p2, p0, Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI;->mIsBlurOn:Z

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 83
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI;->ringScreenLightUpdateUI()V

    .line 84
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI;->mBlurTopSwitch:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    .line 85
    iget-object p2, p0, Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI;->mAppUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

    invoke-interface {p2}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getModePlusBottomBarHeight()I

    move-result p2

    .line 86
    iget p3, p1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int/2addr p3, p2

    iput p3, p1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 87
    iget-object p3, p0, Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI;->mBlurTopSwitch:Landroid/widget/ImageView;

    invoke-virtual {p3, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 88
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI;->mBlurTopSwitch:Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI;->mBlurTopSwitch:Landroid/widget/ImageView;

    const p3, 0x3f4ccccd    # 0.8f

    const/4 v1, 0x0

    invoke-static {p1, p3, v1}, Lcom/transsion/camera/utils/MultiTouchManager;->pressSealAnimation(Landroid/view/View;FLandroid/animation/AnimatorListenerAdapter;)V

    .line 92
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI;->mEntryView:Landroid/view/View;

    sget v2, Lcom/transsion/camera/R$id;->blur_level_view_root:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI;->mScrollerRulerViewRoot:Landroid/widget/FrameLayout;

    .line 93
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    .line 94
    iget v2, p1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v2, p2

    iput v2, p1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 95
    iget-object p2, p0, Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI;->mScrollerRulerViewRoot:Landroid/widget/FrameLayout;

    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 97
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI;->mEntryView:Landroid/view/View;

    sget p2, Lcom/transsion/camera/R$id;->blur_bottom_switch:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI;->mBlurBottomSwitch:Landroid/widget/ImageView;

    .line 98
    iget-boolean p2, p0, Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI;->mIsBlurOn:Z

    xor-int/2addr p2, v0

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 99
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI;->mEntryView:Landroid/view/View;

    sget p2, Lcom/transsion/camera/R$id;->blur_bottom_switch_root:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI;->mBlurBootomSwitchRoot:Landroid/widget/FrameLayout;

    .line 100
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI;->mBlurBootomSwitchRoot:Landroid/widget/FrameLayout;

    invoke-static {p1, p3, v1}, Lcom/transsion/camera/utils/MultiTouchManager;->pressSealAnimation(Landroid/view/View;FLandroid/animation/AnimatorListenerAdapter;)V

    .line 103
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI;->mEntryView:Landroid/view/View;

    sget p2, Lcom/transsion/camera/R$id;->blur_level_view:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI;->mScrollerRulerView:Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;

    .line 104
    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->setEdgeFadeEnable(Z)V

    .line 105
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI;->mScrollerRulerView:Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;

    iget p2, p0, Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI;->mScrollerFadingLength:I

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->setFadingLength(F)V

    .line 106
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI;->mScrollerRulerView:Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;

    invoke-virtual {p1, p0}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->setOnTouchMoveListener(Lcom/transsion/camera/app/ui/widget/CommonParamsControlView$OnTouchMoveListener;)V

    .line 107
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI;->mScrollerRulerView:Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;

    iget-object p2, p0, Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI;->mDurationChangedListener:Lcom/transsion/camera/app/ui/widget/IValueChangedListener;

    invoke-virtual {p1, p2}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->setDurationChangedListener(Lcom/transsion/camera/app/ui/widget/IValueChangedListener;)V

    .line 108
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI;->mScrollerRulerView:Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;

    iget-boolean p2, p0, Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI;->mIsBlurOn:Z

    xor-int/2addr p2, v0

    invoke-virtual {p1, p2}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->setIsDurationAuto(Z)V

    .line 109
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI;->mEntryView:Landroid/view/View;

    return-object p0
.end method

.method public forceHideTopSwitch()V
    .registers 3

    const/4 v0, 0x1

    .line 307
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI5;->mForceHideTopSwitch:Z

    .line 308
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI;->mBlurTopSwitch:Landroid/widget/ImageView;

    if-eqz v0, :cond_12

    const/16 v1, 0x8

    .line 309
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 310
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI;->mBlurTopSwitch:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    :cond_12
    return-void
.end method

.method public bridge synthetic getExtraKey()Ljava/lang/String;
    .registers 1

    .line 0
    invoke-super {p0}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->getExtraKey()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected initScrollerView()V
    .registers 6

    .line 172
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI;->mScrollerRulerView:Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;

    if-eqz v0, :cond_42

    .line 173
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI;->getDurationDataList()Ljava/util/List;

    move-result-object v0

    .line 174
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI;->mStblurDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v1}, Lcom/transsion/camera/app/common/setting/ISetting;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/transsion/camera/adapter/CameraInfoUtil;->isCameraFacingBack(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_17

    const-string v1, "f2.8"

    goto :goto_19

    :cond_17
    const-string v1, "f4.0"

    .line 175
    :goto_19
    new-instance v2, Lcom/transsion/camera/app/ui/widget/ScrollerParamsInfo;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {v2, v1, v3, v4, v4}, Lcom/transsion/camera/app/ui/widget/ScrollerParamsInfo;-><init>(Ljava/lang/String;ZZI)V

    .line 177
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI;->mScrollerRulerView:Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;

    invoke-virtual {v1, v0, v2}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->setScope(Ljava/util/List;Lcom/transsion/camera/app/ui/widget/ScrollerParamsInfo;)V

    .line 178
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI;->mScrollerRulerView:Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;

    iget-boolean v1, p0, Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI;->mIsBlurOn:Z

    if-eqz v1, :cond_2e

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI;->mCurrentBlurValue:Ljava/lang/String;

    goto :goto_32

    :cond_2e
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI;->getLastFeatureValue()Ljava/lang/String;

    move-result-object v1

    :goto_32
    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->setCurrentItem(Ljava/lang/String;)V

    .line 179
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI;->mScrollerRulerView:Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;

    iget-boolean v1, p0, Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI;->mIsBlurOn:Z

    xor-int/2addr v1, v4

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->setIsDurationAuto(Z)V

    .line 180
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI;->mScrollerRulerView:Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_42
    return-void
.end method

.method public bridge synthetic isNeedResetPrivacyMode()Z
    .registers 1

    .line 0
    invoke-super {p0}, Lcom/transsion/camera/app/common/IPrivacyCallback;->isNeedResetPrivacyMode()Z

    move-result p0

    return p0
.end method

.method public notifyCameraOperateAction(I)V
    .registers 4

    const/4 v0, 0x3

    if-eq p1, v0, :cond_46

    const/4 v0, 0x5

    if-eq p1, v0, :cond_46

    const/16 v0, 0x1c

    const/4 v1, 0x0

    if-eq p1, v0, :cond_43

    const/16 v0, 0xb

    if-eq p1, v0, :cond_3f

    const/16 v0, 0xc

    if-eq p1, v0, :cond_43

    const/16 v0, 0xcf

    if-eq p1, v0, :cond_20

    const/16 v0, 0xd0

    if-eq p1, v0, :cond_1c

    return-void

    .line 196
    :cond_1c
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI5;->cancelForceHide()V

    return-void

    .line 188
    :cond_20
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI;->mScrollerRulerViewRoot:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_3b

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_3b

    iget-object p1, p0, Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI;->mScrollerRulerViewRoot:Landroid/widget/FrameLayout;

    .line 189
    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result p1

    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_3b

    .line 190
    invoke-virtual {p0, v1}, Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI5;->showOrHideSTblurLevel(Z)V

    .line 191
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI5;->hidePop3SettingTitle()V

    .line 193
    :cond_3b
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI5;->forceHideTopSwitch()V

    return-void

    :cond_3f
    const/4 p1, 0x1

    .line 203
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI;->mSelfTimerCapturing:Z

    return-void

    .line 207
    :cond_43
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI;->mSelfTimerCapturing:Z

    return-void

    .line 200
    :cond_46
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI5;->updateBlurIconImgResource()V

    return-void
.end method

.method public bridge synthetic onGestureTouchEvent(Landroid/view/MotionEvent;)V
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/IAppUIListener$IPreviewGestureListener;->onGestureTouchEvent(Landroid/view/MotionEvent;)V

    return-void
.end method

.method public onOrientationChanged(I)V
    .registers 4

    .line 124
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->onOrientationChanged(I)V

    .line 125
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI;->mScrollerRulerViewRoot:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_2e

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI;->mScrollerRulerView:Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;

    if-nez v0, :cond_c

    goto :goto_2e

    .line 128
    :cond_c
    iget v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mScreenFormType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2a

    const/4 v1, 0x7

    if-ne v0, v1, :cond_15

    goto :goto_2a

    .line 131
    :cond_15
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result v0

    if-eqz v0, :cond_2e

    iget v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mScreenFormType:I

    if-nez v0, :cond_2e

    .line 132
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI;->mScrollerRulerViewRoot:Landroid/widget/FrameLayout;

    new-instance v1, Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI5$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI5$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI5;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_2a
    :goto_2a
    const/4 p1, 0x0

    .line 130
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->updateSettingUILayout(Z)V

    :cond_2e
    :goto_2e
    return-void
.end method

.method public onTouchMoveStart()V
    .registers 2

    .line 271
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI;->mIAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/16 v0, 0xbe

    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    return-void
.end method

.method public onTouchMoveStop()V
    .registers 2

    .line 276
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI;->mIAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/16 v0, 0xbf

    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    return-void
.end method

.method public bridge synthetic queryState(Ljava/lang/String;)Lcom/transsion/camera/app/common/IAppUI$UIState;
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;->queryState(Ljava/lang/String;)Lcom/transsion/camera/app/common/IAppUI$UIState;

    move-result-object p0

    return-object p0
.end method

.method protected resetUI()V
    .registers 3

    .line 163
    invoke-super {p0}, Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI;->resetUI()V

    .line 164
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI5;->hidePop3SettingTitle()V

    .line 165
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI5;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz p0, :cond_15

    .line 166
    const-string v0, "key_conflict_ui_state"

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p0

    const-string v1, "value_stblur_ui_off"

    .line 167
    invoke-virtual {p0, v0, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_15
    return-void
.end method

.method public bridge synthetic setExtraDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->setExtraDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V

    return-void
.end method

.method public setSettingMonitor(Lcom/transsion/camera/app/common/setting/StatusMonitor;)V
    .registers 2

    .line 158
    invoke-super {p0, p1}, Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI;->setSettingMonitor(Lcom/transsion/camera/app/common/setting/StatusMonitor;)V

    .line 159
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI5;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    return-void
.end method

.method public setupEntryView()V
    .registers 3

    .line 148
    invoke-super {p0}, Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI;->setupEntryView()V

    .line 149
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI;->mEntryView:Landroid/view/View;

    if-eqz v0, :cond_b

    const/4 v1, 0x0

    .line 150
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 152
    :cond_b
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI5;->resetUI()V

    .line 153
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI5;->initScrollerView()V

    return-void
.end method

.method protected showOrHideSTblurLevel(Z)V
    .registers 11

    const/4 v0, 0x2

    .line 219
    const-string v1, "translationY"

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-string v4, "alpha"

    const-string v5, "key_conflict_ui_state"

    if-eqz p1, :cond_49

    .line 220
    iget-object v6, p0, Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI;->mIAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/16 v7, 0x198

    invoke-interface {v6, v7}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 221
    iget-object v6, p0, Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI5;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    invoke-virtual {v6, v5}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object v6

    const-string v7, "value_stblur_ui_on"

    .line 222
    invoke-virtual {v6, v5, v7}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    .line 223
    iget-object v5, p0, Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI;->mScrollerRulerViewRoot:Landroid/widget/FrameLayout;

    iget v6, p0, Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI;->mTranslateStart:F

    iget v7, p0, Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI;->mTranslateEnd:F

    new-array v8, v0, [F

    aput v6, v8, v2

    aput v7, v8, v3

    invoke-static {v5, v1, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 224
    iget-object v5, p0, Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI;->mScrollerRulerViewRoot:Landroid/widget/FrameLayout;

    new-array v6, v0, [F

    fill-array-data v6, :array_ae

    invoke-static {v5, v4, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .line 225
    iget-object v6, p0, Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI;->mBlurTopSwitch:Landroid/widget/ImageView;

    new-array v7, v0, [F

    fill-array-data v7, :array_b6

    invoke-static {v6, v4, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 226
    iget-object v6, p0, Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI;->mIAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v6, v3, v2, v3}, Lcom/transsion/camera/app/common/IAppUIControl$ISettingOptionControl;->sinkUI(ZIZ)V

    goto :goto_86

    .line 228
    :cond_49
    iget-object v6, p0, Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI;->mIAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/16 v7, 0x199

    invoke-interface {v6, v7}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 229
    iget-object v6, p0, Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI5;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    invoke-virtual {v6, v5}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object v6

    const-string v7, "value_stblur_ui_off"

    .line 230
    invoke-virtual {v6, v5, v7}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    .line 231
    iget-object v5, p0, Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI;->mScrollerRulerViewRoot:Landroid/widget/FrameLayout;

    iget v6, p0, Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI;->mTranslateEnd:F

    iget v7, p0, Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI;->mTranslateStart:F

    new-array v8, v0, [F

    aput v6, v8, v2

    aput v7, v8, v3

    invoke-static {v5, v1, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 232
    iget-object v5, p0, Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI;->mScrollerRulerViewRoot:Landroid/widget/FrameLayout;

    new-array v6, v0, [F

    fill-array-data v6, :array_be

    invoke-static {v5, v4, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .line 233
    iget-object v6, p0, Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI;->mBlurTopSwitch:Landroid/widget/ImageView;

    new-array v7, v0, [F

    fill-array-data v7, :array_c6

    invoke-static {v6, v4, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 234
    iget-object v6, p0, Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI;->mIAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v6, v2, v2, v3}, Lcom/transsion/camera/app/common/IAppUIControl$ISettingOptionControl;->sinkUI(ZIZ)V

    .line 237
    :goto_86
    new-instance v6, Landroid/animation/AnimatorSet;

    invoke-direct {v6}, Landroid/animation/AnimatorSet;-><init>()V

    .line 238
    sget-object v7, Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI;->PATH_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v6, v7}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 239
    sget v7, Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI;->SINK_ANIM_DURATION:I

    int-to-long v7, v7

    invoke-virtual {v6, v7, v8}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    const/4 v7, 0x3

    .line 240
    new-array v7, v7, [Landroid/animation/Animator;

    aput-object v1, v7, v2

    aput-object v5, v7, v3

    aput-object v4, v7, v0

    invoke-virtual {v6, v7}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 241
    new-instance v0, Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI5$1;

    invoke-direct {v0, p0, p1}, Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI5$1;-><init>(Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI5;Z)V

    invoke-virtual {v6, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 266
    invoke-virtual {v6}, Landroid/animation/AnimatorSet;->start()V

    return-void

    :array_ae
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_b6
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_be
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_c6
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public updateBlurIconImgResource()V
    .registers 5

    .line 280
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI;->mLowLight:Z

    if-nez v0, :cond_30

    .line 281
    new-instance v0, Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-static {}, Lcom/transsion/camera/app_info/AppInfo;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/app/common/storage/DataStore;-><init>(Landroid/content/Context;)V

    .line 282
    const-string v1, "key_picture_ratio"

    const-string v2, "_global_scope"

    const-string v3, "4:3"

    invoke-virtual {v0, v1, v3, v2}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 284
    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_29

    const-string v1, "1:1"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_26

    goto :goto_29

    .line 287
    :cond_26
    sget v0, Lcom/transsion/camera/featurelibs/commonwidget/R$drawable;->btn_pm_portrait_scroller_switch_light:I

    goto :goto_2b

    .line 285
    :cond_29
    :goto_29
    sget v0, Lcom/transsion/camera/featurelibs/commonwidget/R$drawable;->btn_pm_portrait_scroller_switch:I

    .line 289
    :goto_2b
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI;->mBlurBottomSwitch:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_30
    return-void
.end method

.method protected updateSTblurLevelVisibility(Z)V
    .registers 8

    .line 294
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI;->mScrollerRulerViewRoot:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz p1, :cond_9

    move v3, v1

    goto :goto_a

    :cond_9
    move v3, v2

    :goto_a
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 295
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI;->mScrollerRulerViewRoot:Landroid/widget/FrameLayout;

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    if-eqz p1, :cond_16

    move v5, v3

    goto :goto_17

    :cond_16
    move v5, v4

    :goto_17
    invoke-virtual {v0, v5}, Landroid/view/View;->setAlpha(F)V

    .line 296
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI;->mScrollerRulerViewRoot:Landroid/widget/FrameLayout;

    iget v5, p0, Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI;->mTranslateStart:F

    invoke-virtual {v0, v5}, Landroid/view/View;->setTranslationY(F)V

    .line 297
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI5;->mForceHideTopSwitch:Z

    if-nez v0, :cond_36

    .line 298
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI;->mBlurTopSwitch:Landroid/widget/ImageView;

    if-eqz p1, :cond_2a

    move v1, v2

    :cond_2a
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 299
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI;->mBlurTopSwitch:Landroid/widget/ImageView;

    if-eqz p1, :cond_32

    move v3, v4

    :cond_32
    invoke-virtual {p0, v3}, Landroid/view/View;->setAlpha(F)V

    return-void

    .line 301
    :cond_36
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI;->mBlurTopSwitch:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 302
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI;->mBlurTopSwitch:Landroid/widget/ImageView;

    invoke-virtual {p0, v4}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method
