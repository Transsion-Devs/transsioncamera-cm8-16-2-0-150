.class public Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;
.super Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;
.source "SourceFile"


# instance fields
.field private final HIDE_ELEMENT_DURATION:I

.field private final SHOW_ELEMENT_DELAY:I

.field private final SHOW_ELEMENT_DURATION:I

.field private final TRANSLATE_TAB_DURATION:I

.field private mAppUI:Lcom/transsion/camera/app/common/IAppUI;

.field private mCollapsedScrollerBackground:Landroid/widget/FrameLayout;

.field private mCollapsedTabContainer:Landroid/widget/LinearLayout;

.field private mCollapsedTabExpandArrow:Landroid/widget/ImageView;

.field private mCollapsedTabTextView:Landroid/widget/TextView;

.field private mFilterTopUI:Landroid/view/View;

.field private final mHideElementAlphaInterpolator:Landroid/view/animation/PathInterpolator;

.field private mHoverCollapsedTabContainer:Landroid/widget/LinearLayout;

.field private mHoverTabTextView:Landroid/widget/TextView;

.field private mIsAnimationRunning:Z

.field private mResources:Landroid/content/res/Resources;

.field private final mScaleX:F

.field private mScrollerRulerView:Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;

.field private mScrollerRulerViewWidth:I

.field private mScrollerTranslationX:I

.field private mScrollerViewContainer:Landroid/widget/RelativeLayout;

.field private final mShowElementAlphaInterpolator:Landroid/view/animation/PathInterpolator;

.field private mTabMenu:Lcom/transsion/camera/app/ui/widget/menu/TabMenuCustomView;

.field private mTabMenuContainer:Landroid/view/ViewGroup;

.field private mTabViewSwitchContainer:Landroid/widget/LinearLayout;

.field private mTopUI:Landroid/widget/FrameLayout;

.field private final mVideoSightShockMenuState:Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockMenuState;


# direct methods
.method public static synthetic $r8$lambda$1vVVmp-C0OOi39t2n0OXCMPXWvg(Ljava/lang/Runnable;)V
    .registers 1

    if-eqz p0, :cond_5

    .line 416
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_5
    return-void
.end method

.method public static synthetic $r8$lambda$6IxN7ZUy7npuSKPfpP1OCuVU86o(Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;Landroid/view/View;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->lambda$initViewListenerIfNeed$13(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$6Nha0YEANJLcvRBUcXx2OcijEu8(Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;Landroid/view/View;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->lambda$initViewListenerIfNeed$10(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Ard5_ZW_t44uRjQZ6Wb0dq6AItY(Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;Z)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->lambda$init$1(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$B964oZhmRXHyhJZOUcC5enfuJKI(Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;Z)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->lambda$init$3(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$BS7_mFC-QvczsIWLUpTxhTPRnUk(Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;Landroid/view/View;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->lambda$initMainSwitchListener$15(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$DnXR-jyeARTArS_2wsCstDPp_aA(Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->startExpandToCollapseAnimation()V

    return-void
.end method

.method public static synthetic $r8$lambda$E7TAF47VQtlTmqQz8LY6ep0-teQ(Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;Ljava/lang/Runnable;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->lambda$updateScrollerViewLayout$6(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$HBRN6f_dLuBN4elyqtkp81Kbvgc(Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;Landroid/view/View;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->lambda$initViewListenerIfNeed$12(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$HlOj8OEYcrOHhL3u8u_wb8f66V8(Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->startExpandToDefaultAnimation()V

    return-void
.end method

.method public static synthetic $r8$lambda$JIbylYbV2w3wPlIqosg5JQ11WH4(Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;Landroid/animation/ValueAnimator;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->lambda$updateTabSwitchLayout$8(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$KS2D8FlfXrEbJ-985eO0j5tUZx8(Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;Z)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->lambda$init$2(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$M0V8l3Nn_FFLTumpyPapeRmW8hk(Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;Landroid/view/View;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->lambda$initViewListenerIfNeed$14(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$MqEg2r9zhxAPRfZ7A5d9mJLfRn4(Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;Landroid/animation/ValueAnimator;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->lambda$collapseScrollerView$19(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Ne0RAc9rWJF2mJzhDfFfjcYOYmA(Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;Landroid/animation/ValueAnimator;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->lambda$startExpandScrollerAnimation$17(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$SPlmwAAOuGUAFPjsWOdC0__cj5M(Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;Landroid/widget/FrameLayout$LayoutParams;Landroid/animation/ValueAnimator;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->lambda$updateTabSwitchLayout$7(Landroid/widget/FrameLayout$LayoutParams;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$_CJ8Cj2zdiIvwIbU097EnZ3XItk(Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;Z)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->lambda$init$4(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$agFDrua7wTEahbCNZNxm81HOC9U(Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;Z)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->lambda$init$0(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$dt2LSa4GiNwMP-uYNAhw36pgj6E(Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;Z)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->lambda$init$5(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$rn59_3rFbzurD-R3AOxmBdrHso0(Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;Landroid/view/View;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->lambda$initViewListenerIfNeed$11(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$wHkh5yH_kvdqt3l0xE0oetoo1es(Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;Landroid/animation/ValueAnimator;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->lambda$startExpandScrollerAnimation$18(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$yteGIjJXZfKlKbMNouH2XzcxNi0(Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->lambda$recoverSettingValueAndUI$16()V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmCollapsedScrollerBackground(Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;)Landroid/widget/FrameLayout;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mCollapsedScrollerBackground:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCollapsedTabContainer(Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;)Landroid/widget/LinearLayout;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mCollapsedTabContainer:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCollapsedTabExpandArrow(Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;)Landroid/widget/ImageView;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mCollapsedTabExpandArrow:Landroid/widget/ImageView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCollapsedTabTextView(Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;)Landroid/widget/TextView;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mCollapsedTabTextView:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmFilterTopUI(Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;)Landroid/view/View;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mFilterTopUI:Landroid/view/View;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmHoverCollapsedTabContainer(Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;)Landroid/widget/LinearLayout;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mHoverCollapsedTabContainer:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmScrollerRulerView(Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;)Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mScrollerRulerView:Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTabMenu(Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;)Lcom/transsion/camera/app/ui/widget/menu/TabMenuCustomView;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mTabMenu:Lcom/transsion/camera/app/ui/widget/menu/TabMenuCustomView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTabMenuContainer(Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;)Landroid/view/ViewGroup;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mTabMenuContainer:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmIsAnimationRunning(Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mIsAnimationRunning:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateMenuComponentVisible(Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->updateMenuComponentVisible()V

    return-void
.end method

.method public constructor <init>(ZZZ)V
    .registers 9

    .line 83
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;-><init>()V

    const/16 v0, 0xc8

    .line 48
    iput v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->SHOW_ELEMENT_DURATION:I

    .line 49
    iput v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->HIDE_ELEMENT_DURATION:I

    const/16 v0, 0x96

    .line 50
    iput v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->SHOW_ELEMENT_DELAY:I

    const/16 v0, 0x15e

    .line 51
    iput v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->TRANSLATE_TAB_DURATION:I

    const v0, 0x3f19999a    # 0.6f

    .line 52
    iput v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mScaleX:F

    .line 54
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3ecccccd    # 0.4f

    const/4 v2, 0x0

    const v3, 0x3dcccccd    # 0.1f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mHideElementAlphaInterpolator:Landroid/view/animation/PathInterpolator;

    .line 55
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3ea8f5c3    # 0.33f

    const v3, 0x3f28f5c3    # 0.66f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mShowElementAlphaInterpolator:Landroid/view/animation/PathInterpolator;

    if-eqz p1, :cond_42

    .line 85
    new-instance v0, Lcom/transsion/camera/ui/setting/videosightshock/VideoFilterUI5;

    invoke-direct {v0, p0}, Lcom/transsion/camera/ui/setting/videosightshock/VideoFilterUI5;-><init>(Lcom/transsion/camera/ui/setting/videosightshock/listener/IVssListener;)V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mVideoFilterUI:Lcom/transsion/camera/ui/setting/videosightshock/ui/VideoFilterUI;

    .line 86
    iget v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mSupportCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mSupportCount:I

    :cond_42
    if-eqz p2, :cond_51

    .line 89
    new-instance v0, Lcom/transsion/camera/ui/setting/videosightshock/ui/VideoEffectUI;

    invoke-direct {v0, p0}, Lcom/transsion/camera/ui/setting/videosightshock/ui/VideoEffectUI;-><init>(Lcom/transsion/camera/ui/setting/videosightshock/listener/IVssListener;)V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mVideoEffectUI:Lcom/transsion/camera/ui/setting/videosightshock/ui/IVssUI;

    .line 90
    iget v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mSupportCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mSupportCount:I

    :cond_51
    if-eqz p3, :cond_60

    .line 93
    new-instance v0, Lcom/transsion/camera/ui/setting/videosightshock/ui/VideoFrameUI;

    invoke-direct {v0, p0}, Lcom/transsion/camera/ui/setting/videosightshock/ui/VideoFrameUI;-><init>(Lcom/transsion/camera/ui/setting/videosightshock/listener/IVssListener;)V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mVideoFrameUI:Lcom/transsion/camera/ui/setting/videosightshock/ui/VideoFrameUI;

    .line 94
    iget v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mSupportCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mSupportCount:I

    .line 97
    :cond_60
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mbSupportFilter:Z

    .line 98
    iput-boolean p2, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mbSupportEffect:Z

    .line 99
    iput-boolean p3, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mbSupportFrame:Z

    .line 101
    new-instance p1, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockMenuState;

    invoke-direct {p1}, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockMenuState;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mVideoSightShockMenuState:Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockMenuState;

    return-void
.end method

.method static synthetic access$000(Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;)Lcom/transsion/camera/app/ui/widget/RotateImageView;
    .registers 1

    .line 47
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mMainSwitch:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;)Lcom/transsion/camera/app/ui/widget/RotateImageView;
    .registers 1

    .line 47
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mMainSwitch:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;)Lcom/transsion/camera/app/ui/widget/RotateImageView;
    .registers 1

    .line 47
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mMainSwitch:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    return-object p0
.end method

.method static synthetic access$300(Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;)Lcom/transsion/camera/app/ui/widget/RotateImageView;
    .registers 1

    .line 47
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mMainSwitch:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    return-object p0
.end method

.method static synthetic access$400(Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;)Lcom/transsion/camera/app/ui/widget/RotateImageView;
    .registers 1

    .line 47
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mMainSwitch:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    return-object p0
.end method

.method static synthetic access$500(Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;)Lcom/transsion/camera/app/ui/widget/RotateImageView;
    .registers 1

    .line 47
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mMainSwitch:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    return-object p0
.end method

.method private collapseScrollerView(Z)V
    .registers 22

    move-object/from16 v0, p0

    .line 808
    iget-object v1, v0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mResources:Landroid/content/res/Resources;

    sget v2, Lcom/transsion/camera/featurelibs/commonwidget/R$dimen;->scroller_scale_width:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 809
    iget-object v2, v0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mResources:Landroid/content/res/Resources;

    sget v3, Lcom/transsion/camera/featurelibs/commonwidget/R$dimen;->scroller_scale_width_animator:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 811
    iget-object v3, v0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mResources:Landroid/content/res/Resources;

    sget v4, Lcom/transsion/camera/featurelibs/commonwidget/R$dimen;->collapse_scroller_width:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v3, v3

    const v4, 0x3f19999a    # 0.6f

    div-float/2addr v3, v4

    float-to-int v3, v3

    .line 813
    iget-object v5, v0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mScrollerRulerView:Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;

    invoke-virtual {v5}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/transsion/camera/R$dimen;->video_filter_scroller_fading_edge_length:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v5

    .line 814
    div-int/lit8 v6, v3, 0x2

    sub-int/2addr v6, v2

    const/4 v7, 0x2

    .line 816
    new-array v8, v7, [I

    .line 817
    iget-object v9, v0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mScrollerRulerView:Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;

    invoke-virtual {v9, v8}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 818
    new-array v9, v7, [I

    .line 819
    iget-object v10, v0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mCollapsedScrollerBackground:Landroid/widget/FrameLayout;

    invoke-virtual {v10, v9}, Landroid/view/View;->getLocationOnScreen([I)V

    int-to-float v10, v3

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v10, v11

    .line 821
    iget-object v12, v0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mResources:Landroid/content/res/Resources;

    .line 822
    invoke-virtual {v12}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v12

    iget v12, v12, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v12, v12

    div-float/2addr v12, v11

    const/4 v11, 0x0

    aget v13, v8, v11

    add-int v14, v13, v3

    int-to-float v14, v14

    sub-float/2addr v12, v14

    add-float/2addr v10, v12

    .line 823
    aget v9, v9, v11

    sub-int/2addr v9, v13

    iget-object v12, v0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mResources:Landroid/content/res/Resources;

    .line 824
    invoke-virtual {v12}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v12

    iget v12, v12, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-double v12, v12

    const-wide/high16 v14, 0x4000000000000000L    # 2.0

    div-double/2addr v12, v14

    aget v8, v8, v11

    int-to-double v14, v8

    sub-double/2addr v12, v14

    const-wide v14, 0x3fd9999980000000L    # 0.3999999761581421

    mul-double/2addr v12, v14

    double-to-int v8, v12

    sub-int/2addr v9, v8

    iput v9, v0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mScrollerTranslationX:I

    .line 826
    iget-object v8, v0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mScrollerRulerView:Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;

    invoke-virtual {v8}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->getCenterPointX()F

    move-result v9

    invoke-virtual {v8, v9}, Landroid/view/View;->setPivotX(F)V

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-eqz p1, :cond_f9

    .line 829
    new-array v4, v7, [F

    fill-array-data v4, :array_12c

    const-string v12, "alpha"

    invoke-static {v12, v4}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v13

    .line 830
    new-array v4, v7, [F

    fill-array-data v4, :array_134

    const-string v12, "scaleX"

    invoke-static {v12, v4}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v17

    int-to-float v1, v1

    int-to-float v2, v2

    .line 831
    new-array v4, v7, [F

    aput v1, v4, v11

    aput v2, v4, v8

    const-string v1, "scaleWidth"

    invoke-static {v1, v4}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v14

    .line 832
    iget v1, v0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mScrollerTranslationX:I

    filled-new-array {v11, v1}, [I

    move-result-object v1

    const-string v2, "translationX"

    invoke-static {v2, v1}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v16

    .line 833
    iget v1, v0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mScrollerRulerViewWidth:I

    filled-new-array {v1, v3}, [I

    move-result-object v1

    const-string v2, "containerWidth"

    invoke-static {v2, v1}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v18

    .line 834
    const-string v1, "fadingEdgeLength"

    filled-new-array {v5, v6}, [I

    move-result-object v2

    invoke-static {v1, v2}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v19

    .line 835
    new-array v1, v7, [F

    aput v9, v1, v11

    aput v10, v1, v8

    const-string v2, "scrollerOffset"

    invoke-static {v2, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v15

    .line 837
    filled-new-array/range {v13 .. v19}, [Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofPropertyValuesHolder([Landroid/animation/PropertyValuesHolder;)Landroid/animation/ValueAnimator;

    move-result-object v1

    const-wide/16 v2, 0x15e

    .line 840
    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 841
    new-instance v2, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 843
    new-instance v2, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5$$ExternalSyntheticLambda1;

    invoke-direct {v2, v0}, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 865
    new-instance v2, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5$10;

    invoke-direct {v2, v0}, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5$10;-><init>(Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;)V

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 877
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    return-void

    .line 879
    :cond_f9
    iget-object v1, v0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mScrollerRulerView:Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 880
    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 881
    iget-object v3, v0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mScrollerRulerView:Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;

    invoke-virtual {v3, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 882
    iget-object v1, v0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mScrollerRulerView:Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;

    invoke-virtual {v1, v8}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->setScrollerStatus(Z)V

    .line 883
    iget-object v1, v0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mScrollerRulerView:Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;

    int-to-float v2, v2

    invoke-virtual {v1, v2, v9}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->setScrollerParamsForAnim(FF)V

    .line 885
    iget-object v1, v0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mScrollerRulerView:Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;

    neg-float v2, v10

    invoke-virtual {v1, v2}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->setCanvasTranslateX(F)V

    .line 887
    iget-object v1, v0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mScrollerRulerView:Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;

    invoke-virtual {v1, v4}, Landroid/view/View;->setScaleX(F)V

    .line 888
    iget-object v1, v0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mScrollerRulerView:Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;

    int-to-float v2, v6

    invoke-virtual {v1, v2}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->setFadingLength(F)V

    .line 890
    iget-object v1, v0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mScrollerRulerView:Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;

    iget v0, v0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mScrollerTranslationX:I

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setTranslationX(F)V

    return-void

    nop

    :array_12c
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_134
    .array-data 4
        0x3f800000    # 1.0f
        0x3f19999a    # 0.6f
    .end array-data
.end method

.method private doExpendToCollapsedAnimation()V
    .registers 19

    move-object/from16 v0, p0

    .line 895
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 897
    iget-object v2, v0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mCurrentSelectTabSwitch:Landroid/widget/LinearLayout;

    const/4 v3, 0x2

    .line 898
    new-array v4, v3, [I

    .line 899
    invoke-virtual {v2, v4}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 901
    new-array v4, v3, [I

    .line 902
    iget-object v5, v0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mCollapsedTabTextView:Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 904
    sget v5, Lcom/transsion/camera/R$id;->tab_text:I

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 905
    new-array v5, v3, [I

    .line 906
    invoke-virtual {v2, v5}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 v6, 0x0

    .line 908
    aget v5, v5, v6

    aget v4, v4, v6

    sub-int/2addr v5, v4

    int-to-float v4, v5

    .line 910
    iget-object v5, v0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mHoverCollapsedTabContainer:Landroid/widget/LinearLayout;

    new-array v7, v3, [F

    const/4 v8, 0x0

    aput v8, v7, v6

    const/4 v8, 0x1

    aput v4, v7, v8

    const-string v4, "translationX"

    invoke-static {v5, v4, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    const-wide/16 v9, 0x15e

    .line 911
    invoke-virtual {v4, v9, v10}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 912
    new-instance v5, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5$11;

    invoke-direct {v5, v0, v2}, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5$11;-><init>(Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;Landroid/widget/TextView;)V

    invoke-virtual {v4, v5}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 927
    iget-object v5, v0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mHoverCollapsedTabContainer:Landroid/widget/LinearLayout;

    sget v7, Lcom/transsion/camera/featurelibs/commonwidget/R$id;->collapsed_tab_text:I

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 928
    new-instance v7, Landroid/animation/ArgbEvaluator;

    invoke-direct {v7}, Landroid/animation/ArgbEvaluator;-><init>()V

    iget v9, v0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mUnSelectedColor:I

    .line 929
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    iget v10, v0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mSelectedColor:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    filled-new-array {v9, v10}, [Ljava/lang/Object;

    move-result-object v9

    .line 928
    const-string v10, "textColor"

    invoke-static {v5, v10, v7, v9}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    move-result-object v5

    const-wide/16 v9, 0x64

    .line 930
    invoke-virtual {v5, v9, v10}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 932
    iget-object v7, v0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mCollapsedTabContainer:Landroid/widget/LinearLayout;

    new-array v9, v3, [F

    fill-array-data v9, :array_128

    const-string v10, "alpha"

    invoke-static {v7, v10, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    const-wide/16 v11, 0xc8

    .line 933
    invoke-virtual {v7, v11, v12}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 934
    iget-object v9, v0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mHideElementAlphaInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v7, v9}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 935
    new-instance v9, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5$12;

    invoke-direct {v9, v0}, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5$12;-><init>(Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;)V

    invoke-virtual {v7, v9}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 953
    iget-object v9, v0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mHoverCollapsedTabContainer:Landroid/widget/LinearLayout;

    sget v13, Lcom/transsion/camera/featurelibs/commonwidget/R$id;->expand_arrow:I

    invoke-virtual {v9, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    .line 954
    new-array v13, v3, [F

    fill-array-data v13, :array_130

    invoke-static {v9, v10, v13}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v9

    .line 956
    iget-object v13, v0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mHideElementAlphaInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v9, v13}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 957
    invoke-virtual {v9, v11, v12}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 959
    iget-object v13, v0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mTabMenuContainer:Landroid/view/ViewGroup;

    new-array v14, v3, [F

    fill-array-data v14, :array_138

    invoke-static {v13, v10, v14}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v13

    const-wide/16 v14, 0x96

    .line 960
    invoke-virtual {v13, v14, v15}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 961
    invoke-virtual {v13, v11, v12}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move/from16 v16, v6

    .line 962
    iget-object v6, v0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mShowElementAlphaInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v13, v6}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 963
    new-instance v6, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5$13;

    invoke-direct {v6, v0, v2}, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5$13;-><init>(Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;Landroid/widget/TextView;)V

    invoke-virtual {v13, v6}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 978
    iget-object v6, v0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mMainSwitch:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    move/from16 v17, v8

    new-array v8, v3, [F

    fill-array-data v8, :array_140

    invoke-static {v6, v10, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    .line 979
    invoke-virtual {v6, v14, v15}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 980
    invoke-virtual {v6, v11, v12}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 981
    iget-object v8, v0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mShowElementAlphaInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v6, v8}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 982
    new-instance v8, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5$14;

    invoke-direct {v8, v0}, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5$14;-><init>(Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;)V

    invoke-virtual {v6, v8}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 996
    iget-object v8, v0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mCollapsedScrollerBackground:Landroid/widget/FrameLayout;

    new-array v14, v3, [F

    fill-array-data v14, :array_148

    invoke-static {v8, v10, v14}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    const-wide/16 v14, 0x12c

    .line 997
    invoke-virtual {v8, v14, v15}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 998
    invoke-virtual {v8, v11, v12}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 999
    iget-object v10, v0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mShowElementAlphaInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v8, v10}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const/4 v10, 0x7

    .line 1001
    new-array v10, v10, [Landroid/animation/Animator;

    aput-object v4, v10, v16

    aput-object v9, v10, v17

    aput-object v7, v10, v3

    const/4 v3, 0x3

    aput-object v5, v10, v3

    const/4 v3, 0x4

    aput-object v6, v10, v3

    const/4 v3, 0x5

    aput-object v13, v10, v3

    const/4 v3, 0x6

    aput-object v8, v10, v3

    invoke-virtual {v1, v10}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1006
    new-instance v3, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5$15;

    invoke-direct {v3, v0, v2}, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5$15;-><init>(Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;Landroid/widget/TextView;)V

    invoke-virtual {v1, v3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1027
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    return-void

    nop

    :array_128
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_130
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_138
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_140
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_148
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private handleCollapseToExpand()V
    .registers 1

    .line 561
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->startCollapseToExpandAnimation()V

    .line 562
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->startExpandScrollerAnimation()V

    return-void
.end method

.method private handleCollapseToNoEffect()V
    .registers 2

    const/4 v0, 0x1

    .line 763
    invoke-virtual {p0, v0}, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->updateTabSwitchLayout(Z)V

    .line 764
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->startCollapsedToNoEffectAnimation()V

    return-void
.end method

.method private handleExpandToCollapse()V
    .registers 3

    .line 799
    new-instance v0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5$$ExternalSyntheticLambda13;

    invoke-direct {v0, p0}, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5$$ExternalSyntheticLambda13;-><init>(Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;)V

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->updateTabSwitchLayout(ZLjava/lang/Runnable;)V

    return-void
.end method

.method private handleExpandToNoEffect()V
    .registers 3

    .line 1031
    new-instance v0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;)V

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->updateTabSwitchLayout(ZLjava/lang/Runnable;)V

    return-void
.end method

.method private handleNoEffectToCollapse()V
    .registers 2

    const/4 v0, 0x1

    .line 1129
    invoke-virtual {p0, v0}, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->updateTabSwitchLayout(Z)V

    .line 1130
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->startNoEffectToCollapseAnimation()V

    .line 1131
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->resetScrollerRulerView()V

    const/4 v0, 0x0

    .line 1132
    invoke-direct {p0, v0}, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->collapseScrollerView(Z)V

    return-void
.end method

.method private handleNoEffectToExpand()V
    .registers 1

    .line 1168
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->resetScrollerRulerView()V

    .line 1169
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->startNoEffectToExpandAnimation()V

    return-void
.end method

.method private synthetic lambda$collapseScrollerView$19(Landroid/animation/ValueAnimator;)V
    .registers 5

    .line 844
    const-string v0, "alpha"

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 845
    const-string v1, "scaleWidth"

    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 846
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mScrollerRulerView:Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;

    invoke-virtual {v2, v1, v0}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->setScrollerParamsForAnim(FF)V

    .line 848
    const-string v0, "scaleX"

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 849
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mScrollerRulerView:Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setScaleX(F)V

    .line 851
    const-string v0, "fadingEdgeLength"

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 852
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mScrollerRulerView:Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->setFadingLength(F)V

    .line 854
    const-string v0, "scrollerOffset"

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 855
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mScrollerRulerView:Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;

    neg-float v0, v0

    invoke-virtual {v1, v0}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->setCanvasTranslateX(F)V

    .line 857
    const-string v0, "containerWidth"

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 858
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mScrollerRulerView:Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 859
    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 860
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mScrollerRulerView:Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 862
    const-string v0, "translationX"

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 863
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mScrollerRulerView:Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;

    int-to-float p1, p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setTranslationX(F)V

    return-void
.end method

.method private synthetic lambda$init$0(Z)V
    .registers 2

    .line 109
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->handleNoEffectToExpand()V

    return-void
.end method

.method private synthetic lambda$init$1(Z)V
    .registers 2

    .line 111
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->handleNoEffectToCollapse()V

    return-void
.end method

.method private synthetic lambda$init$2(Z)V
    .registers 2

    .line 113
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->handleExpandToNoEffect()V

    return-void
.end method

.method private synthetic lambda$init$3(Z)V
    .registers 2

    .line 115
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->handleExpandToCollapse()V

    return-void
.end method

.method private synthetic lambda$init$4(Z)V
    .registers 2

    .line 117
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->handleCollapseToNoEffect()V

    return-void
.end method

.method private synthetic lambda$init$5(Z)V
    .registers 2

    .line 119
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->handleCollapseToExpand()V

    return-void
.end method

.method private synthetic lambda$initMainSwitchListener$15(Landroid/view/View;)V
    .registers 3

    .line 507
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mMainSwitch:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-static {p1}, Lcom/transsion/camera/utils/MultiTouchManager;->canPerformClick(Landroid/view/View;)Z

    move-result p1

    if-nez p1, :cond_9

    return-void

    .line 510
    :cond_9
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mMainSwitch:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setSelected(Z)V

    .line 511
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->resetTabState()V

    .line 512
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mVideoFilterUI:Lcom/transsion/camera/ui/setting/videosightshock/ui/VideoFilterUI;

    invoke-virtual {p1}, Lcom/transsion/camera/ui/setting/videosightshock/ui/VideoFilterUI;->resetCurrentItem()V

    .line 514
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mVideoSightShockMenuState:Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockMenuState;

    sget-object p1, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockMenuState$TemplateState;->NO_EFFECT:Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockMenuState$TemplateState;

    invoke-virtual {p0, p1, v0}, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockMenuState;->update(Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockMenuState$TemplateState;Z)V

    return-void
.end method

.method private synthetic lambda$initViewListenerIfNeed$10(Landroid/view/View;)V
    .registers 4

    .line 430
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mFilterSwitch:Landroid/widget/LinearLayout;

    invoke-static {p1}, Lcom/transsion/camera/utils/MultiTouchManager;->canPerformClick(Landroid/view/View;)Z

    move-result p1

    if-nez p1, :cond_9

    goto :goto_11

    .line 433
    :cond_9
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mFilterSwitch:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result p1

    if-eqz p1, :cond_12

    :goto_11
    return-void

    .line 436
    :cond_12
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mFilterSwitch:Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mCurrentSelectTabSwitch:Landroid/widget/LinearLayout;

    .line 437
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mCollapsedTabTextView:Landroid/widget/TextView;

    sget v0, Lcom/transsion/camera/R$string;->video_filter:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 438
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mHoverTabTextView:Landroid/widget/TextView;

    sget v0, Lcom/transsion/camera/R$string;->video_filter:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 439
    const-string p1, "key_video_filter_style"

    invoke-virtual {p0, p1}, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->setVideoSightMode(Ljava/lang/String;)V

    .line 440
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mVideoFilterUI:Lcom/transsion/camera/ui/setting/videosightshock/ui/VideoFilterUI;

    invoke-virtual {p1}, Lcom/transsion/camera/ui/setting/videosightshock/ui/VideoFilterUI;->getmCurrentItem()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    if-eqz p1, :cond_42

    .line 441
    const-string v1, "0"

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_42

    .line 443
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mVideoSightShockMenuState:Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockMenuState;

    sget-object p1, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockMenuState$TemplateState;->COLLAPSE_SCROLLER_BAR:Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockMenuState$TemplateState;

    invoke-virtual {p0, p1, v0}, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockMenuState;->update(Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockMenuState$TemplateState;Z)V

    return-void

    .line 445
    :cond_42
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mVideoSightShockMenuState:Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockMenuState;

    sget-object p1, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockMenuState$TemplateState;->NO_EFFECT:Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockMenuState$TemplateState;

    invoke-virtual {p0, p1, v0}, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockMenuState;->update(Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockMenuState$TemplateState;Z)V

    return-void
.end method

.method private synthetic lambda$initViewListenerIfNeed$11(Landroid/view/View;)V
    .registers 3

    .line 453
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mEffectSwitch:Landroid/widget/LinearLayout;

    invoke-static {p1}, Lcom/transsion/camera/utils/MultiTouchManager;->canPerformClick(Landroid/view/View;)Z

    move-result p1

    if-nez p1, :cond_9

    goto :goto_11

    .line 456
    :cond_9
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mEffectSwitch:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result p1

    if-eqz p1, :cond_12

    :goto_11
    return-void

    .line 459
    :cond_12
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mEffectSwitch:Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mCurrentSelectTabSwitch:Landroid/widget/LinearLayout;

    .line 460
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mCollapsedTabTextView:Landroid/widget/TextView;

    sget v0, Lcom/transsion/camera/R$string;->video_effect:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 461
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mHoverTabTextView:Landroid/widget/TextView;

    sget v0, Lcom/transsion/camera/R$string;->video_effect:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 462
    const-string p1, "key_video_effect_style"

    invoke-virtual {p0, p1}, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->setVideoSightMode(Ljava/lang/String;)V

    .line 463
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mVideoSightShockMenuState:Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockMenuState;

    sget-object p1, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockMenuState$TemplateState;->NO_EFFECT:Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockMenuState$TemplateState;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockMenuState;->update(Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockMenuState$TemplateState;Z)V

    return-void
.end method

.method private synthetic lambda$initViewListenerIfNeed$12(Landroid/view/View;)V
    .registers 4

    .line 470
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mFrameSwitch:Landroid/widget/LinearLayout;

    invoke-static {p1}, Lcom/transsion/camera/utils/MultiTouchManager;->canPerformClick(Landroid/view/View;)Z

    move-result p1

    if-nez p1, :cond_9

    goto :goto_11

    .line 473
    :cond_9
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mFrameSwitch:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result p1

    if-eqz p1, :cond_12

    :goto_11
    return-void

    .line 476
    :cond_12
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mFrameSwitch:Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mCurrentSelectTabSwitch:Landroid/widget/LinearLayout;

    .line 477
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mCollapsedTabTextView:Landroid/widget/TextView;

    sget v0, Lcom/transsion/camera/R$string;->video_frame:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 478
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mHoverTabTextView:Landroid/widget/TextView;

    sget v0, Lcom/transsion/camera/R$string;->video_frame:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 479
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mVideoSightShockMenuState:Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockMenuState;

    sget-object v0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockMenuState$TemplateState;->NO_EFFECT:Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockMenuState$TemplateState;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockMenuState;->update(Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockMenuState$TemplateState;Z)V

    .line 480
    const-string p1, "key_video_frame_style"

    invoke-virtual {p0, p1}, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->setVideoSightMode(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$initViewListenerIfNeed$13(Landroid/view/View;)V
    .registers 3

    .line 487
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mCollapsedTabContainer:Landroid/widget/LinearLayout;

    invoke-static {p1}, Lcom/transsion/camera/utils/MultiTouchManager;->canPerformClick(Landroid/view/View;)Z

    move-result p1

    if-nez p1, :cond_9

    return-void

    .line 490
    :cond_9
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mVideoSightShockMenuState:Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockMenuState;

    sget-object p1, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockMenuState$TemplateState;->COLLAPSE_SCROLLER_BAR:Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockMenuState$TemplateState;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockMenuState;->update(Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockMenuState$TemplateState;Z)V

    return-void
.end method

.method private synthetic lambda$initViewListenerIfNeed$14(Landroid/view/View;)V
    .registers 3

    .line 495
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mCollapsedScrollerBackground:Landroid/widget/FrameLayout;

    invoke-static {p1}, Lcom/transsion/camera/utils/MultiTouchManager;->canPerformClick(Landroid/view/View;)Z

    move-result p1

    if-nez p1, :cond_9

    goto :goto_1b

    .line 498
    :cond_9
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mVideoSightShockMenuState:Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockMenuState;

    sget-object v0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockMenuState$TemplateState;->COLLAPSE_SCROLLER_BAR:Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockMenuState$TemplateState;

    invoke-virtual {p1, v0}, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockMenuState;->isSameState(Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockMenuState$TemplateState;)Z

    move-result p1

    if-eqz p1, :cond_1b

    .line 499
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mVideoSightShockMenuState:Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockMenuState;

    sget-object p1, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockMenuState$TemplateState;->EXPAND_SCROLLER_BAR:Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockMenuState$TemplateState;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockMenuState;->update(Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockMenuState$TemplateState;Z)V

    :cond_1b
    :goto_1b
    return-void
.end method

.method private synthetic lambda$recoverSettingValueAndUI$16()V
    .registers 1

    .line 556
    invoke-super {p0}, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->recoverSettingValueAndUI()V

    return-void
.end method

.method private synthetic lambda$startExpandScrollerAnimation$17(Landroid/animation/ValueAnimator;)V
    .registers 4

    .line 584
    const-string v0, "scaleWidth"

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 585
    const-string v1, "alpha"

    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 586
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mScrollerRulerView:Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;

    invoke-virtual {p0, v0, p1}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->setScrollerParamsForAnim(FF)V

    return-void
.end method

.method private synthetic lambda$startExpandScrollerAnimation$18(Landroid/animation/ValueAnimator;)V
    .registers 4

    .line 602
    const-string v0, "scaleX"

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 603
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mScrollerRulerView:Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setScaleX(F)V

    .line 605
    const-string v0, "fadingEdgeLength"

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 606
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mScrollerRulerView:Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->setFadingLength(F)V

    .line 608
    const-string v0, "containerWidth"

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 609
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mScrollerRulerView:Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 610
    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 611
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mScrollerRulerView:Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 613
    const-string v0, "translationX"

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 614
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mScrollerRulerView:Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;

    int-to-float p1, p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setTranslationX(F)V

    return-void
.end method

.method private synthetic lambda$updateScrollerViewLayout$6(Ljava/lang/Runnable;)V
    .registers 4

    .line 355
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mScrollerRulerView:Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->calculateCenterPointX()V

    .line 356
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mScrollerRulerView:Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 357
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mVideoSightShockMenuState:Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockMenuState;

    sget-object v1, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockMenuState$TemplateState;->COLLAPSE_SCROLLER_BAR:Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockMenuState$TemplateState;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockMenuState;->isSameState(Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockMenuState$TemplateState;)Z

    move-result v0

    if-eqz v0, :cond_18

    const/4 v0, 0x0

    .line 358
    invoke-direct {p0, v0}, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->collapseScrollerView(Z)V

    :cond_18
    if-eqz p1, :cond_1d

    .line 361
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_1d
    return-void
.end method

.method private synthetic lambda$updateTabSwitchLayout$7(Landroid/widget/FrameLayout$LayoutParams;Landroid/animation/ValueAnimator;)V
    .registers 3

    .line 389
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 390
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mTabMenuContainer:Landroid/view/ViewGroup;

    invoke-virtual {p0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private synthetic lambda$updateTabSwitchLayout$8(Landroid/animation/ValueAnimator;)V
    .registers 2

    .line 395
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mTabMenu:Lcom/transsion/camera/app/ui/widget/menu/TabMenuCustomView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/widget/menu/TabMenuCustomView;->updateTabSwitchLeftMargin(I)V

    return-void
.end method

.method private resetScrollerRulerView()V
    .registers 4

    .line 1272
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mScrollerRulerView:Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->setScrollerStatus(Z)V

    .line 1273
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mScrollerRulerView:Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    .line 1274
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mScrollerRulerView:Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mResources:Landroid/content/res/Resources;

    sget v2, Lcom/transsion/camera/R$dimen;->video_filter_scroller_fading_edge_length:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->setFadingLength(F)V

    .line 1275
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mScrollerRulerView:Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 1277
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mScrollerRulerView:Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1278
    iget v1, p0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mScrollerRulerViewWidth:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1279
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mScrollerRulerView:Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1281
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mScrollerRulerView:Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->resetScrollerParams()V

    return-void
.end method

.method private startCollapseToExpandAnimation()V
    .registers 17

    move-object/from16 v0, p0

    .line 637
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 639
    iget-object v2, v0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mCurrentSelectTabSwitch:Landroid/widget/LinearLayout;

    .line 640
    sget v3, Lcom/transsion/camera/R$id;->tab_text:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const/4 v4, 0x2

    .line 642
    new-array v5, v4, [I

    .line 643
    invoke-virtual {v3, v5}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 644
    new-array v6, v4, [I

    .line 645
    iget-object v7, v0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mCollapsedTabTextView:Landroid/widget/TextView;

    invoke-virtual {v7, v6}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 v7, 0x0

    .line 647
    aget v5, v5, v7

    aget v6, v6, v7

    sub-int/2addr v5, v6

    int-to-float v5, v5

    .line 648
    iget-object v6, v0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mHoverCollapsedTabContainer:Landroid/widget/LinearLayout;

    new-array v8, v4, [F

    aput v5, v8, v7

    const/4 v5, 0x1

    const/4 v9, 0x0

    aput v9, v8, v5

    const-string v9, "translationX"

    invoke-static {v6, v9, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    const-wide/16 v8, 0x15e

    .line 650
    invoke-virtual {v6, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 651
    new-instance v8, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5$4;

    invoke-direct {v8, v0, v3}, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5$4;-><init>(Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;Landroid/widget/TextView;)V

    invoke-virtual {v6, v8}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 673
    iget-object v8, v0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mHoverCollapsedTabContainer:Landroid/widget/LinearLayout;

    sget v9, Lcom/transsion/camera/featurelibs/commonwidget/R$id;->collapsed_tab_text:I

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 674
    new-instance v9, Landroid/animation/ArgbEvaluator;

    invoke-direct {v9}, Landroid/animation/ArgbEvaluator;-><init>()V

    iget v10, v0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mSelectedColor:I

    .line 675
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    iget v11, v0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mUnSelectedColor:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    filled-new-array {v10, v11}, [Ljava/lang/Object;

    move-result-object v10

    .line 674
    const-string v11, "textColor"

    invoke-static {v8, v11, v9, v10}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    move-result-object v8

    const-wide/16 v9, 0x64

    .line 676
    invoke-virtual {v8, v9, v10}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 678
    iget-object v9, v0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mHoverCollapsedTabContainer:Landroid/widget/LinearLayout;

    sget v10, Lcom/transsion/camera/featurelibs/commonwidget/R$id;->expand_arrow:I

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    .line 679
    new-array v10, v4, [F

    fill-array-data v10, :array_118

    const-string v11, "alpha"

    invoke-static {v9, v11, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v9

    .line 681
    iget-object v10, v0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mShowElementAlphaInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v9, v10}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v12, 0xc8

    .line 682
    invoke-virtual {v9, v12, v13}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 684
    iget-object v10, v0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mMainSwitch:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    new-array v14, v4, [F

    fill-array-data v14, :array_120

    invoke-static {v10, v11, v14}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v10

    .line 685
    invoke-virtual {v10, v12, v13}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 686
    iget-object v14, v0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mShowElementAlphaInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v10, v14}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 687
    new-instance v14, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5$5;

    invoke-direct {v14, v0}, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5$5;-><init>(Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;)V

    invoke-virtual {v10, v14}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 701
    iget-object v14, v0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mTabMenuContainer:Landroid/view/ViewGroup;

    new-array v15, v4, [F

    fill-array-data v15, :array_128

    invoke-static {v14, v11, v15}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v14

    .line 702
    invoke-virtual {v14, v12, v13}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 703
    iget-object v15, v0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mHideElementAlphaInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v14, v15}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 704
    new-instance v15, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5$6;

    invoke-direct {v15, v0, v3, v2}, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5$6;-><init>(Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;Landroid/widget/TextView;Landroid/widget/LinearLayout;)V

    invoke-virtual {v14, v15}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 721
    iget-object v2, v0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mCollapsedTabContainer:Landroid/widget/LinearLayout;

    new-array v3, v4, [F

    fill-array-data v3, :array_130

    invoke-static {v2, v11, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    move v3, v5

    move-object v15, v6

    const-wide/16 v5, 0x96

    .line 722
    invoke-virtual {v2, v5, v6}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 723
    invoke-virtual {v2, v12, v13}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 724
    iget-object v5, v0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mShowElementAlphaInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v2, v5}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 725
    new-instance v5, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5$7;

    invoke-direct {v5, v0}, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5$7;-><init>(Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;)V

    invoke-virtual {v2, v5}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 734
    iget-object v5, v0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mCollapsedScrollerBackground:Landroid/widget/FrameLayout;

    new-array v6, v4, [F

    fill-array-data v6, :array_138

    invoke-static {v5, v11, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .line 735
    iget-object v6, v0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mHideElementAlphaInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v5, v6}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 736
    invoke-virtual {v5, v12, v13}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    const/4 v6, 0x7

    .line 738
    new-array v6, v6, [Landroid/animation/Animator;

    aput-object v10, v6, v7

    aput-object v14, v6, v3

    aput-object v5, v6, v4

    const/4 v3, 0x3

    aput-object v15, v6, v3

    const/4 v3, 0x4

    aput-object v2, v6, v3

    const/4 v2, 0x5

    aput-object v9, v6, v2

    const/4 v2, 0x6

    aput-object v8, v6, v2

    invoke-virtual {v1, v6}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 741
    new-instance v2, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5$8;

    invoke-direct {v2, v0}, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5$8;-><init>(Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;)V

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 759
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    return-void

    :array_118
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_120
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_128
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_130
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_138
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private startCollapsedToNoEffectAnimation()V
    .registers 9

    .line 768
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 770
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mCollapsedScrollerBackground:Landroid/widget/FrameLayout;

    const/4 v2, 0x2

    new-array v3, v2, [F

    fill-array-data v3, :array_48

    const-string v4, "alpha"

    invoke-static {v1, v4, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    const-wide/16 v5, 0xc8

    .line 771
    invoke-virtual {v1, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 772
    iget-object v3, p0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mHideElementAlphaInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v1, v3}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 774
    iget-object v3, p0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mFilterTopUI:Landroid/view/View;

    new-array v7, v2, [F

    fill-array-data v7, :array_50

    invoke-static {v3, v4, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 775
    invoke-virtual {v3, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 776
    iget-object v4, p0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mHideElementAlphaInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v3, v4}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 777
    new-instance v4, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5$9;

    invoke-direct {v4, p0}, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5$9;-><init>(Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;)V

    invoke-virtual {v3, v4}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 793
    new-array p0, v2, [Landroid/animation/Animator;

    const/4 v2, 0x0

    aput-object v3, p0, v2

    const/4 v2, 0x1

    aput-object v1, p0, v2

    invoke-virtual {v0, p0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 795
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void

    nop

    :array_48
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_50
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private startExpandScrollerAnimation()V
    .registers 13

    .line 566
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mResources:Landroid/content/res/Resources;

    sget v1, Lcom/transsion/camera/featurelibs/commonwidget/R$dimen;->scroller_scale_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 567
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mResources:Landroid/content/res/Resources;

    sget v2, Lcom/transsion/camera/featurelibs/commonwidget/R$dimen;->scroller_scale_width_animator:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 569
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mResources:Landroid/content/res/Resources;

    sget v3, Lcom/transsion/camera/featurelibs/commonwidget/R$dimen;->collapse_scroller_width:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 571
    iget-object v3, p0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mScrollerRulerView:Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;

    invoke-virtual {v3}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/transsion/camera/R$dimen;->video_filter_scroller_fading_edge_length:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    .line 572
    div-int/lit8 v4, v2, 0x2

    sub-int/2addr v4, v1

    const/4 v5, 0x2

    .line 574
    new-array v6, v5, [F

    fill-array-data v6, :array_c4

    const-string v7, "alpha"

    invoke-static {v7, v6}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v6

    .line 575
    new-array v7, v5, [F

    fill-array-data v7, :array_cc

    const-string v8, "scaleX"

    invoke-static {v8, v7}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v7

    .line 576
    iget v8, p0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mScrollerTranslationX:I

    const/4 v9, 0x0

    filled-new-array {v8, v9}, [I

    move-result-object v8

    const-string v10, "translationX"

    invoke-static {v10, v8}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v8

    .line 577
    iget v10, p0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mScrollerRulerViewWidth:I

    filled-new-array {v2, v10}, [I

    move-result-object v2

    const-string v10, "containerWidth"

    invoke-static {v10, v2}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    .line 578
    const-string v10, "fadingEdgeLength"

    filled-new-array {v4, v3}, [I

    move-result-object v3

    invoke-static {v10, v3}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    int-to-float v1, v1

    int-to-float v0, v0

    .line 580
    new-array v4, v5, [F

    aput v1, v4, v9

    const/4 v1, 0x1

    aput v0, v4, v1

    const-string v0, "scaleWidth"

    invoke-static {v0, v4}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 581
    filled-new-array {v0, v6}, [Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofPropertyValuesHolder([Landroid/animation/PropertyValuesHolder;)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v10, 0x12c

    .line 582
    invoke-virtual {v0, v10, v11}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 583
    new-instance v4, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5$$ExternalSyntheticLambda11;

    invoke-direct {v4, p0}, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5$$ExternalSyntheticLambda11;-><init>(Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;)V

    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 588
    new-instance v4, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5$2;

    invoke-direct {v4, p0}, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5$2;-><init>(Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;)V

    invoke-virtual {v0, v4}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 595
    filled-new-array {v8, v7, v2, v3}, [Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofPropertyValuesHolder([Landroid/animation/PropertyValuesHolder;)Landroid/animation/ValueAnimator;

    move-result-object v2

    const-wide/16 v3, 0x1f4

    .line 598
    invoke-virtual {v2, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 599
    new-instance v3, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 601
    new-instance v3, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5$$ExternalSyntheticLambda12;

    invoke-direct {v3, p0}, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5$$ExternalSyntheticLambda12;-><init>(Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 616
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    .line 617
    new-instance v4, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5$3;

    invoke-direct {v4, p0}, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5$3;-><init>(Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;)V

    invoke-virtual {v3, v4}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 632
    new-array p0, v5, [Landroid/animation/Animator;

    aput-object v2, p0, v9

    aput-object v0, p0, v1

    invoke-virtual {v3, p0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 633
    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->start()V

    return-void

    :array_c4
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_cc
    .array-data 4
        0x3f19999a    # 0.6f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private startExpandToCollapseAnimation()V
    .registers 2

    .line 803
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->doExpendToCollapsedAnimation()V

    const/4 v0, 0x1

    .line 804
    invoke-direct {p0, v0}, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->collapseScrollerView(Z)V

    return-void
.end method

.method private startExpandToDefaultAnimation()V
    .registers 19

    move-object/from16 v0, p0

    .line 1035
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 1037
    iget-object v2, v0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mCurrentSelectTabSwitch:Landroid/widget/LinearLayout;

    const/4 v3, 0x2

    .line 1038
    new-array v4, v3, [I

    .line 1039
    invoke-virtual {v2, v4}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 1041
    new-array v4, v3, [I

    .line 1042
    iget-object v5, v0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mCollapsedTabTextView:Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 1044
    sget v5, Lcom/transsion/camera/R$id;->tab_text:I

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 1045
    new-array v5, v3, [I

    .line 1046
    invoke-virtual {v2, v5}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 v6, 0x0

    .line 1048
    aget v5, v5, v6

    aget v4, v4, v6

    sub-int/2addr v5, v4

    int-to-float v4, v5

    .line 1050
    iget-object v5, v0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mHoverCollapsedTabContainer:Landroid/widget/LinearLayout;

    new-array v7, v3, [F

    const/4 v8, 0x0

    aput v8, v7, v6

    const/4 v8, 0x1

    aput v4, v7, v8

    const-string v4, "translationX"

    invoke-static {v5, v4, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    const-wide/16 v9, 0x15e

    .line 1052
    invoke-virtual {v4, v9, v10}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1053
    new-instance v5, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5$16;

    invoke-direct {v5, v0, v2}, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5$16;-><init>(Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;Landroid/widget/TextView;)V

    invoke-virtual {v4, v5}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1073
    iget-object v5, v0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mHoverCollapsedTabContainer:Landroid/widget/LinearLayout;

    sget v7, Lcom/transsion/camera/featurelibs/commonwidget/R$id;->collapsed_tab_text:I

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 1074
    new-instance v7, Landroid/animation/ArgbEvaluator;

    invoke-direct {v7}, Landroid/animation/ArgbEvaluator;-><init>()V

    iget v9, v0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mUnSelectedColor:I

    .line 1075
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    iget v10, v0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mSelectedColor:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    filled-new-array {v9, v10}, [Ljava/lang/Object;

    move-result-object v9

    .line 1074
    const-string v10, "textColor"

    invoke-static {v5, v10, v7, v9}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .line 1077
    iget-object v7, v0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mFilterTopUI:Landroid/view/View;

    new-array v9, v3, [F

    fill-array-data v9, :array_106

    const-string v10, "alpha"

    invoke-static {v7, v10, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    .line 1078
    iget-object v9, v0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mHideElementAlphaInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v7, v9}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v11, 0xc8

    .line 1079
    invoke-virtual {v7, v11, v12}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1081
    iget-object v9, v0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mCollapsedTabContainer:Landroid/widget/LinearLayout;

    new-array v13, v3, [F

    fill-array-data v13, :array_10e

    invoke-static {v9, v10, v13}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v9

    .line 1082
    iget-object v13, v0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mHideElementAlphaInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v9, v13}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1083
    invoke-virtual {v9, v11, v12}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1085
    iget-object v13, v0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mTabMenuContainer:Landroid/view/ViewGroup;

    new-array v14, v3, [F

    fill-array-data v14, :array_116

    invoke-static {v13, v10, v14}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v13

    const-wide/16 v14, 0x96

    .line 1086
    invoke-virtual {v13, v14, v15}, Landroid/animation/Animator;->setStartDelay(J)V

    move/from16 v16, v6

    .line 1087
    iget-object v6, v0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mShowElementAlphaInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v13, v6}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1088
    invoke-virtual {v13, v11, v12}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1090
    iget-object v6, v0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mMainSwitch:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    move/from16 v17, v8

    new-array v8, v3, [F

    fill-array-data v8, :array_11e

    invoke-static {v6, v10, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    .line 1091
    invoke-virtual {v6, v11, v12}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1092
    invoke-virtual {v6, v14, v15}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 1093
    iget-object v8, v0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mShowElementAlphaInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v6, v8}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1095
    iget-object v8, v0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mHoverCollapsedTabContainer:Landroid/widget/LinearLayout;

    sget v14, Lcom/transsion/camera/featurelibs/commonwidget/R$id;->expand_arrow:I

    invoke-virtual {v8, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .line 1096
    new-array v14, v3, [F

    fill-array-data v14, :array_126

    invoke-static {v8, v10, v14}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    .line 1097
    iget-object v10, v0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mHideElementAlphaInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v8, v10}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1098
    invoke-virtual {v8, v11, v12}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    const/4 v10, 0x7

    .line 1100
    new-array v10, v10, [Landroid/animation/Animator;

    aput-object v7, v10, v16

    aput-object v9, v10, v17

    aput-object v13, v10, v3

    const/4 v3, 0x3

    aput-object v6, v10, v3

    const/4 v3, 0x4

    aput-object v5, v10, v3

    const/4 v3, 0x5

    aput-object v4, v10, v3

    const/4 v3, 0x6

    aput-object v8, v10, v3

    invoke-virtual {v1, v10}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1105
    new-instance v3, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5$17;

    invoke-direct {v3, v0, v2}, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5$17;-><init>(Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;Landroid/widget/TextView;)V

    invoke-virtual {v1, v3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1125
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    return-void

    nop

    :array_106
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_10e
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_116
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_11e
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_126
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private startNoEffectToCollapseAnimation()V
    .registers 7

    .line 1136
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 1138
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mCollapsedScrollerBackground:Landroid/widget/FrameLayout;

    const/4 v2, 0x2

    new-array v3, v2, [F

    fill-array-data v3, :array_40

    const-string v4, "alpha"

    invoke-static {v1, v4, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 1139
    iget-object v3, p0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mFilterTopUI:Landroid/view/View;

    new-array v5, v2, [F

    fill-array-data v5, :array_48

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    const-wide/16 v4, 0xc8

    .line 1141
    invoke-virtual {v0, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1142
    iget-object v4, p0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mShowElementAlphaInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v4}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1143
    new-instance v4, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5$18;

    invoke-direct {v4, p0}, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5$18;-><init>(Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;)V

    invoke-virtual {v0, v4}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1162
    new-array p0, v2, [Landroid/animation/Animator;

    const/4 v2, 0x0

    aput-object v3, p0, v2

    const/4 v2, 0x1

    aput-object v1, p0, v2

    invoke-virtual {v0, p0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1164
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void

    nop

    :array_40
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_48
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private startNoEffectToExpandAnimation()V
    .registers 16

    .line 1173
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 1175
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mCurrentSelectTabSwitch:Landroid/widget/LinearLayout;

    .line 1176
    sget v2, Lcom/transsion/camera/R$id;->tab_text:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const/4 v3, 0x2

    .line 1178
    new-array v4, v3, [I

    .line 1179
    invoke-virtual {v2, v4}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 1180
    new-array v5, v3, [I

    .line 1181
    iget-object v6, p0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mCollapsedTabTextView:Landroid/widget/TextView;

    invoke-virtual {v6, v5}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 v6, 0x0

    .line 1182
    aget v4, v4, v6

    aget v5, v5, v6

    sub-int/2addr v4, v5

    int-to-float v4, v4

    .line 1184
    iget-object v5, p0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mHoverCollapsedTabContainer:Landroid/widget/LinearLayout;

    new-array v7, v3, [F

    aput v4, v7, v6

    const/4 v4, 0x1

    const/4 v8, 0x0

    aput v8, v7, v4

    const-string v8, "translationX"

    invoke-static {v5, v8, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    const-wide/16 v7, 0x15e

    .line 1187
    invoke-virtual {v5, v7, v8}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1188
    new-instance v7, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5$19;

    invoke-direct {v7, p0, v2, v1}, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5$19;-><init>(Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;Landroid/widget/TextView;Landroid/widget/LinearLayout;)V

    invoke-virtual {v5, v7}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1213
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mHoverCollapsedTabContainer:Landroid/widget/LinearLayout;

    sget v2, Lcom/transsion/camera/featurelibs/commonwidget/R$id;->expand_arrow:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 1214
    new-array v2, v3, [F

    fill-array-data v2, :array_100

    const-string v7, "alpha"

    invoke-static {v1, v7, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    const-wide/16 v8, 0xc8

    .line 1215
    invoke-virtual {v1, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1216
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mShowElementAlphaInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1218
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mHoverCollapsedTabContainer:Landroid/widget/LinearLayout;

    sget v10, Lcom/transsion/camera/featurelibs/commonwidget/R$id;->collapsed_tab_text:I

    invoke-virtual {v2, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 1219
    new-instance v10, Landroid/animation/ArgbEvaluator;

    invoke-direct {v10}, Landroid/animation/ArgbEvaluator;-><init>()V

    iget v11, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mSelectedColor:I

    .line 1220
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    iget v12, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mUnSelectedColor:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    filled-new-array {v11, v12}, [Ljava/lang/Object;

    move-result-object v11

    .line 1219
    const-string v12, "textColor"

    invoke-static {v2, v12, v10, v11}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    move-result-object v2

    const-wide/16 v10, 0x64

    .line 1221
    invoke-virtual {v2, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1223
    iget-object v10, p0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mFilterTopUI:Landroid/view/View;

    new-array v11, v3, [F

    fill-array-data v11, :array_108

    invoke-static {v10, v7, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v10

    const-wide/16 v11, 0x96

    .line 1224
    invoke-virtual {v10, v11, v12}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 1225
    invoke-virtual {v10, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1226
    iget-object v13, p0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mShowElementAlphaInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v10, v13}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1228
    iget-object v13, p0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mCollapsedTabContainer:Landroid/widget/LinearLayout;

    new-array v14, v3, [F

    fill-array-data v14, :array_110

    invoke-static {v13, v7, v14}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v13

    .line 1229
    invoke-virtual {v13, v11, v12}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 1230
    invoke-virtual {v13, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1231
    iget-object v11, p0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mShowElementAlphaInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v13, v11}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1233
    iget-object v11, p0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mTabMenuContainer:Landroid/view/ViewGroup;

    new-array v12, v3, [F

    fill-array-data v12, :array_118

    invoke-static {v11, v7, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v11

    .line 1234
    invoke-virtual {v11, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1235
    iget-object v12, p0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mHideElementAlphaInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v11, v12}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1237
    iget-object v12, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mMainSwitch:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    new-array v14, v3, [F

    fill-array-data v14, :array_120

    invoke-static {v12, v7, v14}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    .line 1238
    invoke-virtual {v7, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1239
    iget-object v8, p0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mHideElementAlphaInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v7, v8}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const/4 v8, 0x7

    .line 1241
    new-array v8, v8, [Landroid/animation/Animator;

    aput-object v10, v8, v6

    aput-object v13, v8, v4

    aput-object v5, v8, v3

    const/4 v3, 0x3

    aput-object v1, v8, v3

    const/4 v1, 0x4

    aput-object v2, v8, v1

    const/4 v1, 0x5

    aput-object v11, v8, v1

    const/4 v1, 0x6

    aput-object v7, v8, v1

    invoke-virtual {v0, v8}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1245
    new-instance v1, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5$20;

    invoke-direct {v1, p0}, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5$20;-><init>(Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1268
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void

    nop

    :array_100
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_108
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_110
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_118
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_120
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private updateMenuComponentVisible()V
    .registers 9

    .line 338
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mVideoSightShockMenuState:Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockMenuState;

    invoke-virtual {v0}, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockMenuState;->needShowTabBar()Z

    move-result v0

    .line 339
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mVideoSightShockMenuState:Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockMenuState;

    invoke-virtual {v1}, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockMenuState;->needShowCollapsedTab()Z

    move-result v1

    .line 340
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mVideoSightShockMenuState:Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockMenuState;

    invoke-virtual {v2}, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockMenuState;->needShowScrollerBackground()Z

    move-result v2

    .line 341
    iget-object v3, p0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mVideoSightShockMenuState:Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockMenuState;

    invoke-virtual {v3}, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockMenuState;->needShowScrollerBar()Z

    move-result v3

    .line 343
    iget-object v4, p0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mTabMenuContainer:Landroid/view/ViewGroup;

    const/4 v5, 0x4

    const/4 v6, 0x0

    if-eqz v0, :cond_20

    move v7, v6

    goto :goto_21

    :cond_20
    move v7, v5

    :goto_21
    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 344
    iget-object v4, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mMainSwitch:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    if-eqz v0, :cond_2a

    move v0, v6

    goto :goto_2b

    :cond_2a
    move v0, v5

    :goto_2b
    invoke-virtual {v4, v0}, Landroid/view/View;->setVisibility(I)V

    .line 345
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mCollapsedTabContainer:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_34

    move v1, v6

    goto :goto_35

    :cond_34
    move v1, v5

    :goto_35
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 346
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mFilterTopUI:Landroid/view/View;

    if-eqz v3, :cond_3e

    move v1, v6

    goto :goto_3f

    :cond_3e
    move v1, v5

    :goto_3f
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 347
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mCollapsedScrollerBackground:Landroid/widget/FrameLayout;

    if-eqz v2, :cond_47

    move v5, v6

    :cond_47
    invoke-virtual {p0, v5}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private updateTabSwitchLayout(ZLjava/lang/Runnable;)V
    .registers 9

    .line 373
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mTabMenuContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 375
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mMainSwitch:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 376
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mVideoSightShockMenuState:Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockMenuState;

    sget-object v3, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockMenuState$TemplateState;->NO_EFFECT:Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockMenuState$TemplateState;

    invoke-virtual {v2, v3}, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockMenuState;->isSameState(Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockMenuState$TemplateState;)Z

    move-result v2

    if-eqz v2, :cond_24

    .line 377
    sget v2, Lcom/transsion/camera/featurelibs/commonwidget/R$dimen;->tab_internal_margin:I

    .line 378
    iget-object v3, p0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mResources:Landroid/content/res/Resources;

    sget v4, Lcom/transsion/camera/featurelibs/commonwidget/R$dimen;->tab_container_left_margin:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    :goto_22
    add-int/2addr v3, v1

    goto :goto_2f

    .line 381
    :cond_24
    sget v2, Lcom/transsion/camera/featurelibs/commonwidget/R$dimen;->tab_internal_margin_with_small_scroller_bar:I

    .line 382
    iget-object v3, p0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mResources:Landroid/content/res/Resources;

    sget v4, Lcom/transsion/camera/featurelibs/commonwidget/R$dimen;->tab_container_left_margin_with_small_scroller_bar:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    goto :goto_22

    :goto_2f
    if-eqz p1, :cond_81

    .line 387
    iget p1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    filled-new-array {p1, v3}, [I

    move-result-object p1

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 388
    new-instance p2, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5$$ExternalSyntheticLambda8;

    invoke-direct {p2, p0, v0}, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5$$ExternalSyntheticLambda8;-><init>(Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;Landroid/widget/FrameLayout$LayoutParams;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 392
    iget-object p2, p0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mTabMenu:Lcom/transsion/camera/app/ui/widget/menu/TabMenuCustomView;

    invoke-virtual {p2}, Lcom/transsion/camera/app/ui/widget/menu/TabMenuCustomView;->getCurrentTabInternalMargin()I

    move-result p2

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mResources:Landroid/content/res/Resources;

    .line 393
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    filled-new-array {p2, v1}, [I

    move-result-object p2

    .line 392
    invoke-static {p2}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p2

    .line 394
    new-instance v1, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5$$ExternalSyntheticLambda9;

    invoke-direct {v1, p0}, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5$$ExternalSyntheticLambda9;-><init>(Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;)V

    invoke-virtual {p2, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 397
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    const-wide/16 v4, 0xc8

    .line 398
    invoke-virtual {v1, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    const/4 v4, 0x2

    .line 399
    new-array v4, v4, [Landroid/animation/Animator;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 p1, 0x1

    aput-object p2, v4, p1

    invoke-virtual {v1, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 400
    new-instance p1, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5$1;

    invoke-direct {p1, p0, v2, v0, v3}, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5$1;-><init>(Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;ILandroid/widget/FrameLayout$LayoutParams;I)V

    invoke-virtual {v1, p1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 409
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    return-void

    .line 411
    :cond_81
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mTabMenu:Lcom/transsion/camera/app/ui/widget/menu/TabMenuCustomView;

    invoke-virtual {p1, v2}, Lcom/transsion/camera/app/ui/widget/menu/TabMenuCustomView;->updateTabSwitchLeftMarginByResId(I)V

    .line 412
    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 413
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mTabMenuContainer:Landroid/view/ViewGroup;

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 414
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mTabMenuContainer:Landroid/view/ViewGroup;

    new-instance p1, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5$$ExternalSyntheticLambda10;

    invoke-direct {p1, p2}, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5$$ExternalSyntheticLambda10;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p0, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public adjustControlView(IIIII)V
    .registers 12

    .line 309
    iget-object p2, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mControlViewContent:Landroid/view/ViewGroup;

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    .line 310
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mVideoFilterUI:Lcom/transsion/camera/ui/setting/videosightshock/ui/VideoFilterUI;

    const/4 v1, 0x0

    iget v3, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    move v2, p1

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/transsion/camera/ui/setting/videosightshock/ui/VideoFilterUI;->updateSeekBarLayout(ZIIII)V

    return-void
.end method

.method public init()V
    .registers 6

    .line 106
    invoke-super {p0}, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->init()V

    .line 107
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mVideoSightShockMenuState:Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockMenuState;

    invoke-virtual {v0}, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockMenuState;->getStateTransitionHandler()Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockMenuState$StateTransitionHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockMenuState$StateTransitionHandler;->builder()Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockMenuState$StateTransitionHandler$TransitionBuilder;

    move-result-object v0

    sget-object v1, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockMenuState$TemplateState;->NO_EFFECT:Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockMenuState$TemplateState;

    sget-object v2, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockMenuState$TemplateState;->EXPAND_SCROLLER_BAR:Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockMenuState$TemplateState;

    new-instance v3, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5$$ExternalSyntheticLambda2;

    invoke-direct {v3, p0}, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5$$ExternalSyntheticLambda2;-><init>(Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;)V

    .line 108
    invoke-virtual {v0, v1, v2, v3}, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockMenuState$StateTransitionHandler$TransitionBuilder;->add(Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockMenuState$TemplateState;Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockMenuState$TemplateState;Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockMenuState$TransitionAction;)Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockMenuState$StateTransitionHandler$TransitionBuilder;

    move-result-object v0

    sget-object v3, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockMenuState$TemplateState;->COLLAPSE_SCROLLER_BAR:Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockMenuState$TemplateState;

    new-instance v4, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5$$ExternalSyntheticLambda3;

    invoke-direct {v4, p0}, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5$$ExternalSyntheticLambda3;-><init>(Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;)V

    .line 110
    invoke-virtual {v0, v1, v3, v4}, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockMenuState$StateTransitionHandler$TransitionBuilder;->add(Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockMenuState$TemplateState;Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockMenuState$TemplateState;Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockMenuState$TransitionAction;)Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockMenuState$StateTransitionHandler$TransitionBuilder;

    move-result-object v0

    new-instance v4, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5$$ExternalSyntheticLambda4;

    invoke-direct {v4, p0}, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5$$ExternalSyntheticLambda4;-><init>(Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;)V

    .line 112
    invoke-virtual {v0, v2, v1, v4}, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockMenuState$StateTransitionHandler$TransitionBuilder;->add(Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockMenuState$TemplateState;Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockMenuState$TemplateState;Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockMenuState$TransitionAction;)Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockMenuState$StateTransitionHandler$TransitionBuilder;

    move-result-object v0

    new-instance v4, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5$$ExternalSyntheticLambda5;

    invoke-direct {v4, p0}, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5$$ExternalSyntheticLambda5;-><init>(Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;)V

    .line 114
    invoke-virtual {v0, v2, v3, v4}, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockMenuState$StateTransitionHandler$TransitionBuilder;->add(Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockMenuState$TemplateState;Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockMenuState$TemplateState;Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockMenuState$TransitionAction;)Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockMenuState$StateTransitionHandler$TransitionBuilder;

    move-result-object v0

    new-instance v4, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5$$ExternalSyntheticLambda6;

    invoke-direct {v4, p0}, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5$$ExternalSyntheticLambda6;-><init>(Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;)V

    .line 116
    invoke-virtual {v0, v3, v1, v4}, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockMenuState$StateTransitionHandler$TransitionBuilder;->add(Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockMenuState$TemplateState;Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockMenuState$TemplateState;Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockMenuState$TransitionAction;)Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockMenuState$StateTransitionHandler$TransitionBuilder;

    move-result-object v0

    new-instance v1, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0}, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5$$ExternalSyntheticLambda7;-><init>(Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;)V

    .line 118
    invoke-virtual {v0, v3, v2, v1}, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockMenuState$StateTransitionHandler$TransitionBuilder;->add(Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockMenuState$TemplateState;Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockMenuState$TemplateState;Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockMenuState$TransitionAction;)Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockMenuState$StateTransitionHandler$TransitionBuilder;

    move-result-object p0

    .line 120
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockMenuState$StateTransitionHandler$TransitionBuilder;->register()V

    return-void
.end method

.method protected initMainSwitchListener()V
    .registers 4

    .line 505
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mMainSwitch:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    const v1, 0x3f4ccccd    # 0.8f

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/transsion/camera/utils/MultiTouchManager;->pressSealAnimation(Landroid/view/View;FLandroid/animation/AnimatorListenerAdapter;)V

    .line 506
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mMainSwitch:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    new-instance v1, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5$$ExternalSyntheticLambda19;

    invoke-direct {v1, p0}, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5$$ExternalSyntheticLambda19;-><init>(Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected initVideoEffectView(Landroid/view/View;Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/view/View;ILcom/transsion/camera/app/common/IAppUI;)V
    .registers 16

    .line 204
    sget p5, Lcom/transsion/camera/R$layout;->tab_item_layout_ui5:I

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mTabViewSwitchContainer:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {p2, p5, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p5

    check-cast p5, Landroid/widget/LinearLayout;

    .line 205
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mTabViewSwitchContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 207
    sget v0, Lcom/transsion/camera/R$id;->tab_switch_item:I

    invoke-virtual {p5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mEffectSwitch:Landroid/widget/LinearLayout;

    .line 208
    sget v0, Lcom/transsion/camera/R$id;->tab_rotate_layout:I

    invoke-virtual {p5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/ui/widget/RotateLayout;

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mEffectRotateLayout:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    .line 209
    sget v0, Lcom/transsion/camera/R$id;->tab_indicator:I

    invoke-virtual {p5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mEffectSwitchDot:Landroid/view/View;

    .line 211
    sget v0, Lcom/transsion/camera/R$id;->tab_text:I

    invoke-virtual {p5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p5

    check-cast p5, Landroid/widget/TextView;

    iput-object p5, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mEffectSwitchText:Landroid/widget/TextView;

    .line 212
    sget v0, Lcom/transsion/camera/R$string;->video_effect:I

    invoke-virtual {p5, v0}, Landroid/widget/TextView;->setText(I)V

    .line 214
    iget-object p5, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mEffectSwitchText:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lcom/transsion/camera/R$color;->video_sight_shock_item_selected_shadow_color:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result p1

    const/high16 v0, 0x40800000    # 4.0f

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p5, v0, v1, v1, p1}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 215
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mVideoEffectUI:Lcom/transsion/camera/ui/setting/videosightshock/ui/IVssUI;

    iget-object p1, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mVssSettingMap:Ljava/util/Map;

    const-string p5, "key_video_effect_style"

    invoke-interface {p1, p5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v5, p1

    check-cast v5, Lcom/transsion/camera/app/common/setting/ISetting;

    const/4 v7, 0x0

    move-object v3, p2

    move-object v4, p3

    move-object v6, p4

    move-object v8, p6

    invoke-interface/range {v2 .. v8}, Lcom/transsion/camera/ui/setting/videosightshock/ui/IVssUI;->initView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Lcom/transsion/camera/app/common/setting/ISetting;Landroid/view/View;ILcom/transsion/camera/app/common/IAppUI;)V

    .line 217
    iget p1, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mSupportCount:I

    const/4 p2, 0x1

    if-ne p1, p2, :cond_74

    .line 218
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mEffectSwitchDot:Landroid/view/View;

    const/16 p3, 0x8

    invoke-virtual {p1, p3}, Landroid/view/View;->setVisibility(I)V

    .line 219
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mEffectSwitchText:Landroid/widget/TextView;

    invoke-virtual {p1, p3}, Landroid/view/View;->setVisibility(I)V

    .line 221
    :cond_74
    iget-boolean p1, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mSelected:Z

    if-nez p1, :cond_7d

    .line 222
    invoke-virtual {p0, p5}, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->setVideoSightMode(Ljava/lang/String;)V

    .line 223
    iput-boolean p2, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mSelected:Z

    :cond_7d
    return-void
.end method

.method protected initVideoFilterView(Landroid/view/View;Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/view/View;ILcom/transsion/camera/app/common/IAppUI;)V
    .registers 18

    .line 176
    sget v0, Lcom/transsion/camera/R$layout;->tab_item_layout_ui5:I

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mTabViewSwitchContainer:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {p2, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 177
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mTabViewSwitchContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 179
    sget v1, Lcom/transsion/camera/R$id;->tab_switch_item:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mFilterSwitch:Landroid/widget/LinearLayout;

    .line 180
    sget v1, Lcom/transsion/camera/R$id;->tab_rotate_layout:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/ui/widget/RotateLayout;

    iput-object v1, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mFilterRotateLayout:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    .line 181
    sget v1, Lcom/transsion/camera/R$id;->tab_indicator:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mFilterSwitchDot:Landroid/view/View;

    .line 183
    sget v1, Lcom/transsion/camera/R$id;->tab_text:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mFilterSwitchText:Landroid/widget/TextView;

    .line 184
    sget v1, Lcom/transsion/camera/R$string;->video_filter:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 185
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mFilterSwitchText:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v1, Lcom/transsion/camera/R$color;->video_sight_shock_item_selected_shadow_color:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getColor(I)I

    move-result p1

    const/high16 v1, 0x40800000    # 4.0f

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v2, v2, p1}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 187
    iget-object v3, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mVideoFilterUI:Lcom/transsion/camera/ui/setting/videosightshock/ui/VideoFilterUI;

    iget-object p1, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mVssSettingMap:Ljava/util/Map;

    const-string v0, "key_video_filter_style"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v6, p1

    check-cast v6, Lcom/transsion/camera/app/common/setting/ISetting;

    const/4 v8, 0x0

    iget-object v10, p0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mTopUI:Landroid/widget/FrameLayout;

    move-object v4, p2

    move-object v5, p3

    move-object v7, p4

    move-object/from16 v9, p6

    invoke-virtual/range {v3 .. v10}, Lcom/transsion/camera/ui/setting/videosightshock/ui/AbstractVssUI;->initView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Lcom/transsion/camera/app/common/setting/ISetting;Landroid/view/View;ILcom/transsion/camera/app/common/IAppUI;Landroid/view/ViewGroup;)V

    .line 188
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mVideoFilterUI:Lcom/transsion/camera/ui/setting/videosightshock/ui/VideoFilterUI;

    invoke-virtual {p1}, Lcom/transsion/camera/ui/setting/videosightshock/ui/VideoFilterUI;->getScrollerViewContainer()Landroid/widget/RelativeLayout;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mScrollerViewContainer:Landroid/widget/RelativeLayout;

    .line 190
    iget p1, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mSupportCount:I

    const/4 p2, 0x1

    if-ne p1, p2, :cond_7f

    .line 191
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mFilterSwitchDot:Landroid/view/View;

    const/16 p3, 0x8

    invoke-virtual {p1, p3}, Landroid/view/View;->setVisibility(I)V

    .line 192
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mFilterSwitchText:Landroid/widget/TextView;

    invoke-virtual {p1, p3}, Landroid/view/View;->setVisibility(I)V

    .line 194
    :cond_7f
    iget-boolean p1, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mSelected:Z

    if-nez p1, :cond_88

    .line 195
    invoke-virtual {p0, v0}, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->setVideoSightMode(Ljava/lang/String;)V

    .line 196
    iput-boolean p2, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mSelected:Z

    .line 199
    :cond_88
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mFilterSwitch:Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mCurrentSelectTabSwitch:Landroid/widget/LinearLayout;

    return-void
.end method

.method protected initVideoFrameView(Landroid/view/View;Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/view/View;ILcom/transsion/camera/app/common/IAppUI;)V
    .registers 14

    .line 229
    sget p5, Lcom/transsion/camera/R$layout;->tab_item_layout_ui5:I

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mTabViewSwitchContainer:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {p2, p5, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p5

    check-cast p5, Landroid/widget/LinearLayout;

    .line 230
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mTabViewSwitchContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 232
    sget v0, Lcom/transsion/camera/R$id;->tab_switch_item:I

    invoke-virtual {p5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mFrameSwitch:Landroid/widget/LinearLayout;

    .line 233
    sget v0, Lcom/transsion/camera/R$id;->tab_rotate_layout:I

    invoke-virtual {p5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/ui/widget/RotateLayout;

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mFrameRotateLayout:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    .line 235
    sget v0, Lcom/transsion/camera/R$id;->tab_text:I

    invoke-virtual {p5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mFrameSwitchText:Landroid/widget/TextView;

    .line 236
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v1, Lcom/transsion/camera/R$color;->video_sight_shock_item_selected_shadow_color:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getColor(I)I

    move-result p1

    const/high16 v1, 0x40800000    # 4.0f

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v2, v2, p1}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 237
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mFrameSwitchText:Landroid/widget/TextView;

    sget v0, Lcom/transsion/camera/R$string;->video_frame:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 239
    sget p1, Lcom/transsion/camera/R$id;->tab_indicator:I

    invoke-virtual {p5, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mFrameSwitchDot:Landroid/view/View;

    .line 240
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mVideoFrameUI:Lcom/transsion/camera/ui/setting/videosightshock/ui/VideoFrameUI;

    iget-object p1, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mVssSettingMap:Ljava/util/Map;

    const-string p5, "key_video_frame_style"

    invoke-interface {p1, p5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lcom/transsion/camera/app/common/setting/ISetting;

    const/4 v5, 0x0

    move-object v1, p2

    move-object v2, p3

    move-object v4, p4

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/transsion/camera/ui/setting/videosightshock/ui/AbstractVssUI;->initView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Lcom/transsion/camera/app/common/setting/ISetting;Landroid/view/View;ILcom/transsion/camera/app/common/IAppUI;)V

    .line 242
    iget p1, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mSupportCount:I

    const/4 p2, 0x1

    if-ne p1, p2, :cond_74

    .line 243
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mFrameSwitchDot:Landroid/view/View;

    const/16 p3, 0x8

    invoke-virtual {p1, p3}, Landroid/view/View;->setVisibility(I)V

    .line 244
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mFrameSwitchText:Landroid/widget/TextView;

    invoke-virtual {p1, p3}, Landroid/view/View;->setVisibility(I)V

    .line 246
    :cond_74
    iget-boolean p1, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mSelected:Z

    if-nez p1, :cond_7d

    .line 247
    invoke-virtual {p0, p5}, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->setVideoSightMode(Ljava/lang/String;)V

    .line 248
    iput-boolean p2, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mSelected:Z

    :cond_7d
    return-void
.end method

.method public initView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/view/View;ILcom/transsion/camera/app/common/IAppUI;)V
    .registers 15

    .line 125
    iput-object p5, p0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    .line 126
    sget v0, Lcom/transsion/camera/R$layout;->video_sight_shock_control_panel_layout_ui5:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 127
    sget p2, Lcom/transsion/camera/R$id;->tab_control_view_container:I

    invoke-virtual {v3, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/transsion/camera/app/ui/widget/RotateLayout;

    iput-object p2, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mControlViewContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    .line 128
    sget p2, Lcom/transsion/camera/R$id;->video_sight_shock_control:I

    invoke-virtual {v3, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/FrameLayout;

    iput-object p2, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mControlView:Landroid/widget/FrameLayout;

    const/4 v0, 0x0

    .line 129
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 130
    iget-object p2, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mControlViewContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {p2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mResources:Landroid/content/res/Resources;

    .line 132
    sget p2, Lcom/transsion/camera/R$id;->tab_control_view_container:I

    invoke-virtual {v3, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/transsion/camera/app/ui/widget/menu/TabMenuCustomView;

    iput-object p2, p0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mTabMenu:Lcom/transsion/camera/app/ui/widget/menu/TabMenuCustomView;

    .line 133
    invoke-virtual {p2}, Lcom/transsion/camera/app/ui/widget/menu/TabMenuCustomView;->getTabViewSwitchContainer()Landroid/widget/LinearLayout;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mTabViewSwitchContainer:Landroid/widget/LinearLayout;

    .line 134
    iget-object p2, p0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mTabMenu:Lcom/transsion/camera/app/ui/widget/menu/TabMenuCustomView;

    invoke-virtual {p2}, Lcom/transsion/camera/app/ui/widget/menu/TabMenuCustomView;->getTopUI()Landroid/widget/FrameLayout;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mTopUI:Landroid/widget/FrameLayout;

    .line 135
    iget-object p2, p0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mTabMenu:Lcom/transsion/camera/app/ui/widget/menu/TabMenuCustomView;

    invoke-virtual {p2}, Lcom/transsion/camera/app/ui/widget/menu/TabMenuCustomView;->getMenuContainer()Landroid/widget/LinearLayout;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mControlViewContent:Landroid/view/ViewGroup;

    .line 136
    iget-object p2, p0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mTabMenu:Lcom/transsion/camera/app/ui/widget/menu/TabMenuCustomView;

    invoke-virtual {p2}, Lcom/transsion/camera/app/ui/widget/menu/TabMenuCustomView;->getEffectListContainer()Landroid/widget/FrameLayout;

    move-result-object v5

    .line 137
    iget-object p2, p0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mTabMenu:Lcom/transsion/camera/app/ui/widget/menu/TabMenuCustomView;

    invoke-virtual {p2}, Lcom/transsion/camera/app/ui/widget/menu/TabMenuCustomView;->getTabMenuContainer()Landroid/view/ViewGroup;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mTabMenuContainer:Landroid/view/ViewGroup;

    .line 139
    iget-object p2, p0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mTabMenu:Lcom/transsion/camera/app/ui/widget/menu/TabMenuCustomView;

    invoke-virtual {p2}, Lcom/transsion/camera/app/ui/widget/menu/TabMenuCustomView;->getCollapsedTabContainer()Landroid/widget/LinearLayout;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mCollapsedTabContainer:Landroid/widget/LinearLayout;

    .line 140
    sget v0, Lcom/transsion/camera/featurelibs/commonwidget/R$id;->collapsed_tab_text:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mCollapsedTabTextView:Landroid/widget/TextView;

    .line 141
    sget v0, Lcom/transsion/camera/R$string;->video_filter:I

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(I)V

    .line 142
    iget-object p2, p0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mCollapsedTabContainer:Landroid/widget/LinearLayout;

    sget v0, Lcom/transsion/camera/featurelibs/commonwidget/R$id;->expand_arrow:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mCollapsedTabExpandArrow:Landroid/widget/ImageView;

    .line 144
    iget-object p2, p0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mTabMenu:Lcom/transsion/camera/app/ui/widget/menu/TabMenuCustomView;

    invoke-virtual {p2}, Lcom/transsion/camera/app/ui/widget/menu/TabMenuCustomView;->getHoverTabContainer()Landroid/widget/LinearLayout;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mHoverCollapsedTabContainer:Landroid/widget/LinearLayout;

    .line 145
    sget v0, Lcom/transsion/camera/featurelibs/commonwidget/R$id;->collapsed_tab_text:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mHoverTabTextView:Landroid/widget/TextView;

    .line 146
    sget v0, Lcom/transsion/camera/R$string;->video_filter:I

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(I)V

    .line 148
    iget-object p2, p0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mTabMenu:Lcom/transsion/camera/app/ui/widget/menu/TabMenuCustomView;

    invoke-virtual {p2}, Lcom/transsion/camera/app/ui/widget/menu/TabMenuCustomView;->getScrollerViewBackground()Landroid/widget/FrameLayout;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mCollapsedScrollerBackground:Landroid/widget/FrameLayout;

    .line 150
    iget-object p2, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mVideoFilterUI:Lcom/transsion/camera/ui/setting/videosightshock/ui/VideoFilterUI;

    move-object v2, p0

    move-object v4, p1

    move-object v6, p3

    move v7, p4

    move-object v8, p5

    if-eqz p2, :cond_b5

    .line 151
    invoke-virtual/range {v2 .. v8}, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->initVideoFilterView(Landroid/view/View;Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/view/View;ILcom/transsion/camera/app/common/IAppUI;)V

    .line 152
    iget-object p0, v2, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mVideoFilterUI:Lcom/transsion/camera/ui/setting/videosightshock/ui/VideoFilterUI;

    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/videosightshock/ui/VideoFilterUI;->getFilterTopUI()Landroid/view/View;

    move-result-object p0

    iput-object p0, v2, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mFilterTopUI:Landroid/view/View;

    .line 153
    iget-object p0, v2, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mVideoFilterUI:Lcom/transsion/camera/ui/setting/videosightshock/ui/VideoFilterUI;

    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/videosightshock/ui/VideoFilterUI;->getScrollerRulerView()Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;

    move-result-object p0

    iput-object p0, v2, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mScrollerRulerView:Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;

    .line 156
    :cond_b5
    iget-object p0, v2, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mVideoEffectUI:Lcom/transsion/camera/ui/setting/videosightshock/ui/IVssUI;

    if-eqz p0, :cond_bc

    .line 157
    invoke-virtual/range {v2 .. v8}, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->initVideoEffectView(Landroid/view/View;Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/view/View;ILcom/transsion/camera/app/common/IAppUI;)V

    .line 160
    :cond_bc
    iget-object p0, v2, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mVideoFrameUI:Lcom/transsion/camera/ui/setting/videosightshock/ui/VideoFrameUI;

    if-eqz p0, :cond_c3

    .line 161
    invoke-virtual/range {v2 .. v8}, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->initVideoFrameView(Landroid/view/View;Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/view/View;ILcom/transsion/camera/app/common/IAppUI;)V

    .line 164
    :cond_c3
    iget-object p0, v2, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mTabMenu:Lcom/transsion/camera/app/ui/widget/menu/TabMenuCustomView;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/widget/menu/TabMenuCustomView;->getNoEffectImageView()Lcom/transsion/camera/app/ui/widget/RotateImageView;

    move-result-object p0

    iput-object p0, v2, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mMainSwitch:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    .line 165
    iget p1, v2, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mSupportCount:I

    if-ne p1, v1, :cond_d4

    const/16 p1, 0x8

    .line 166
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 169
    :cond_d4
    invoke-virtual {v2, v3}, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->initTabColor(Landroid/view/View;)V

    .line 170
    invoke-virtual {v2}, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->initViewListenerIfNeed()V

    .line 171
    iget-object p0, v2, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mResources:Landroid/content/res/Resources;

    sget p1, Lcom/transsion/camera/R$dimen;->video_filter_scroller_container_width:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p0

    iput p0, v2, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mScrollerRulerViewWidth:I

    return-void
.end method

.method protected initViewListenerIfNeed()V
    .registers 5

    .line 424
    iget v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mSupportCount:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    return-void

    .line 427
    :cond_6
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->initMainSwitchListener()V

    .line 428
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mbSupportFilter:Z

    const/4 v1, 0x0

    const v2, 0x3f4ccccd    # 0.8f

    if-eqz v0, :cond_20

    .line 429
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mFilterSwitch:Landroid/widget/LinearLayout;

    new-instance v3, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5$$ExternalSyntheticLambda14;

    invoke-direct {v3, p0}, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5$$ExternalSyntheticLambda14;-><init>(Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 448
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mFilterSwitch:Landroid/widget/LinearLayout;

    invoke-static {v0, v2, v1}, Lcom/transsion/camera/utils/MultiTouchManager;->pressSealAnimation(Landroid/view/View;FLandroid/animation/AnimatorListenerAdapter;)V

    .line 451
    :cond_20
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mbSupportEffect:Z

    if-eqz v0, :cond_33

    .line 452
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mEffectSwitch:Landroid/widget/LinearLayout;

    new-instance v3, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5$$ExternalSyntheticLambda15;

    invoke-direct {v3, p0}, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5$$ExternalSyntheticLambda15;-><init>(Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 465
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mEffectSwitch:Landroid/widget/LinearLayout;

    invoke-static {v0, v2, v1}, Lcom/transsion/camera/utils/MultiTouchManager;->pressSealAnimation(Landroid/view/View;FLandroid/animation/AnimatorListenerAdapter;)V

    .line 468
    :cond_33
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mbSupportFrame:Z

    if-eqz v0, :cond_46

    .line 469
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mFrameSwitch:Landroid/widget/LinearLayout;

    new-instance v3, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5$$ExternalSyntheticLambda16;

    invoke-direct {v3, p0}, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5$$ExternalSyntheticLambda16;-><init>(Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 482
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mFrameSwitch:Landroid/widget/LinearLayout;

    invoke-static {v0, v2, v1}, Lcom/transsion/camera/utils/MultiTouchManager;->pressSealAnimation(Landroid/view/View;FLandroid/animation/AnimatorListenerAdapter;)V

    .line 485
    :cond_46
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mCollapsedTabContainer:Landroid/widget/LinearLayout;

    invoke-static {v0}, Lcom/transsion/camera/utils/MultiTouchManager;->pressSealWithoutAnimation(Landroid/view/View;)V

    .line 486
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mCollapsedTabContainer:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5$$ExternalSyntheticLambda17;

    invoke-direct {v1, p0}, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5$$ExternalSyntheticLambda17;-><init>(Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 493
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mCollapsedScrollerBackground:Landroid/widget/FrameLayout;

    invoke-static {v0}, Lcom/transsion/camera/utils/MultiTouchManager;->pressSealWithoutAnimation(Landroid/view/View;)V

    .line 494
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mCollapsedScrollerBackground:Landroid/widget/FrameLayout;

    new-instance v1, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5$$ExternalSyntheticLambda18;

    invoke-direct {v1, p0}, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5$$ExternalSyntheticLambda18;-><init>(Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public notifyCameraOperateAction(I)V
    .registers 4

    .line 315
    invoke-super {p0, p1}, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->notifyCameraOperateAction(I)V

    const/16 v0, 0x13

    if-eq p1, v0, :cond_8

    return-void

    .line 318
    :cond_8
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mVideoSightShockMenuState:Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockMenuState;

    sget-object v0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockMenuState$TemplateState;->NO_EFFECT:Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockMenuState$TemplateState;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockMenuState;->update(Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockMenuState$TemplateState;Z)V

    .line 319
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mVideoFilterUI:Lcom/transsion/camera/ui/setting/videosightshock/ui/VideoFilterUI;

    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/videosightshock/ui/VideoFilterUI;->resetCurrentItem()V

    return-void
.end method

.method public onItemSelectStateChanged(Lcom/transsion/camera/ui/setting/videosightshock/bean/VidSigShockItemBean;)V
    .registers 4

    .line 326
    invoke-super {p0, p1}, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->onItemSelectStateChanged(Lcom/transsion/camera/ui/setting/videosightshock/bean/VidSigShockItemBean;)V

    .line 328
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mCurrentSelectStyle:Ljava/lang/String;

    const-string v1, "key_video_filter_style"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_20

    iget-object p1, p1, Lcom/transsion/camera/ui/setting/videosightshock/bean/VidSigShockItemBean;->mValue:Ljava/lang/String;

    const-string v0, "0"

    .line 329
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_20

    .line 331
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mVideoSightShockMenuState:Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockMenuState;

    sget-object p1, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockMenuState$TemplateState;->EXPAND_SCROLLER_BAR:Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockMenuState$TemplateState;

    invoke-virtual {p0, p1, v1}, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockMenuState;->update(Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockMenuState$TemplateState;Z)V

    return-void

    .line 333
    :cond_20
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mVideoSightShockMenuState:Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockMenuState;

    sget-object p1, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockMenuState$TemplateState;->NO_EFFECT:Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockMenuState$TemplateState;

    invoke-virtual {p0, p1, v1}, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockMenuState;->update(Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockMenuState$TemplateState;Z)V

    return-void
.end method

.method public onOrientationChanged(I)V
    .registers 3

    .line 521
    invoke-super {p0, p1}, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->onOrientationChanged(I)V

    const/16 v0, 0x5a

    if-eq p1, v0, :cond_b

    const/16 v0, 0x10e

    if-ne p1, v0, :cond_c

    :cond_b
    const/4 p1, 0x0

    .line 525
    :cond_c
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mCollapsedTabTextView:Landroid/widget/TextView;

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/view/View;->setRotation(F)V

    .line 526
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mHoverTabTextView:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/view/View;->setRotation(F)V

    return-void
.end method

.method public recoverSettingValueAndUI()V
    .registers 2

    .line 556
    new-instance v0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5$$ExternalSyntheticLambda20;

    invoke-direct {v0, p0}, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5$$ExternalSyntheticLambda20;-><init>(Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;)V

    invoke-virtual {p0, v0}, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->updateScrollerViewLayout(Ljava/lang/Runnable;)V

    .line 557
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->updateMenuComponentVisible()V

    return-void
.end method

.method protected resetTabState()V
    .registers 3

    .line 550
    invoke-super {p0}, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->resetTabState()V

    .line 551
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mVideoSightShockMenuState:Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockMenuState;

    sget-object v0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockMenuState$TemplateState;->NO_EFFECT:Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockMenuState$TemplateState;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockMenuState;->update(Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockMenuState$TemplateState;Z)V

    return-void
.end method

.method public setEnable(Z)V
    .registers 3

    if-eqz p1, :cond_7

    .line 531
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mIsAnimationRunning:Z

    if-eqz v0, :cond_7

    return-void

    .line 534
    :cond_7
    invoke-super {p0, p1}, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->setEnable(Z)V

    .line 535
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mTabMenu:Lcom/transsion/camera/app/ui/widget/menu/TabMenuCustomView;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/ui/widget/menu/TabMenuCustomView;->setEnable(Z)V

    .line 536
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mMainSwitch:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method

.method protected updateControlViewLayout(II)V
    .registers 9

    .line 254
    invoke-virtual {p0, p1}, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->updateSwitchTextOrientation(I)V

    .line 255
    iget v1, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mDotsMarginBottom:I

    iget v2, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mDefaultControlViewHeight:I

    iget v3, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mControlPadding:I

    move-object v0, p0

    move v4, p1

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->adjustControlView(IIIII)V

    const/4 p0, 0x0

    .line 256
    invoke-virtual {v0, p0}, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->updateTabSwitchLayout(Z)V

    .line 258
    iget-object p1, v0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mControlViewContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    .line 259
    invoke-virtual {p1, p0, p0, p0, p0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    const/16 p2, 0x50

    .line 260
    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 261
    iget-object v1, v0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v1}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getBottomBarHeight()I

    move-result v1

    iget-object v2, v0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mResources:Landroid/content/res/Resources;

    sget v3, Lcom/transsion/camera/featurelibs/commonwidget/R$dimen;->common_menu_bottom_margin:I

    .line 262
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 263
    iget-object v1, v0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mControlViewContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v1, p0, p0}, Lcom/transsion/camera/app/ui/widget/RotateLayout;->setOrientation(IZ)V

    .line 264
    iget-object p0, v0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mControlViewContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {p0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 266
    iget-object p0, v0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mTopUI:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroid/widget/LinearLayout$LayoutParams;

    .line 267
    iget-object p1, v0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mResources:Landroid/content/res/Resources;

    sget v1, Lcom/transsion/camera/featurelibs/commonwidget/R$dimen;->top_ui_left_margin:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 268
    iget-object p1, v0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mResources:Landroid/content/res/Resources;

    sget v1, Lcom/transsion/camera/R$dimen;->video_sight_shock_top_ui_bottom_margin:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 269
    iget-object p1, v0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mTopUI:Landroid/widget/FrameLayout;

    invoke-virtual {p1, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 271
    iget-object p0, v0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mTabMenuContainer:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroid/widget/FrameLayout$LayoutParams;

    .line 272
    iget-object p1, v0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mResources:Landroid/content/res/Resources;

    sget v1, Lcom/transsion/camera/R$dimen;->video_sight_shock_tab_bottom_margin:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 273
    iput p2, p0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 274
    iget-object p1, v0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mTabMenuContainer:Landroid/view/ViewGroup;

    invoke-virtual {p1, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 276
    iget-object p0, v0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mMainSwitch:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroid/widget/FrameLayout$LayoutParams;

    .line 277
    iput p2, p0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 278
    iget-object p1, v0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mResources:Landroid/content/res/Resources;

    sget v1, Lcom/transsion/camera/R$dimen;->no_effect_bottom_margin:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 279
    iget-object p1, v0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mMainSwitch:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {p1, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 281
    iget-object p0, v0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mCollapsedTabContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroid/widget/FrameLayout$LayoutParams;

    .line 282
    iput p2, p0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 283
    iget-object p1, v0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mResources:Landroid/content/res/Resources;

    sget p2, Lcom/transsion/camera/R$dimen;->video_sight_shock_collapsed_tab_bottom_margin:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 284
    iget-object p1, v0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mCollapsedTabContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 285
    iget-object p1, v0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mHoverCollapsedTabContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 287
    iget-object p0, v0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mCollapsedScrollerBackground:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroid/widget/FrameLayout$LayoutParams;

    const/16 p1, 0x55

    .line 288
    iput p1, p0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 289
    iget-object p1, v0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mResources:Landroid/content/res/Resources;

    sget p2, Lcom/transsion/camera/featurelibs/commonwidget/R$dimen;->scroller_background_right_margin:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 290
    iget-object p1, v0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mResources:Landroid/content/res/Resources;

    sget p2, Lcom/transsion/camera/featurelibs/commonwidget/R$dimen;->scroller_background_bottom_margin:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 291
    iget-object p1, v0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mCollapsedScrollerBackground:Landroid/widget/FrameLayout;

    invoke-virtual {p1, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 293
    iget-object p0, v0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mVideoFilterUI:Lcom/transsion/camera/ui/setting/videosightshock/ui/VideoFilterUI;

    iget-object p1, v0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mCollapsedTabContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    sget p2, Lcom/transsion/camera/featurelibs/commonwidget/R$dimen;->scroller_left_margin:I

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/ui/setting/videosightshock/ui/VideoFilterUI;->updateScrollerViewLayout(II)V

    .line 294
    invoke-direct {v0}, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->updateMenuComponentVisible()V

    .line 296
    iget-boolean p0, v0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mbSupportFilter:Z

    const/4 p1, 0x0

    const/16 p2, 0xb4

    if-eqz p0, :cond_f7

    .line 297
    iget-object p0, v0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mFilterSwitchText:Landroid/widget/TextView;

    if-eqz v5, :cond_f3

    if-ne v5, p2, :cond_f1

    goto :goto_f3

    :cond_f1
    move v1, p1

    goto :goto_f4

    :cond_f3
    :goto_f3
    int-to-float v1, v5

    :goto_f4
    invoke-virtual {p0, v1}, Landroid/view/View;->setRotation(F)V

    .line 299
    :cond_f7
    iget-boolean p0, v0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mbSupportEffect:Z

    if-eqz p0, :cond_108

    .line 300
    iget-object p0, v0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mEffectSwitchText:Landroid/widget/TextView;

    if-eqz v5, :cond_104

    if-ne v5, p2, :cond_102

    goto :goto_104

    :cond_102
    move v1, p1

    goto :goto_105

    :cond_104
    :goto_104
    int-to-float v1, v5

    :goto_105
    invoke-virtual {p0, v1}, Landroid/view/View;->setRotation(F)V

    .line 302
    :cond_108
    iget-boolean p0, v0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mbSupportFrame:Z

    if-eqz p0, :cond_116

    .line 303
    iget-object p0, v0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mFrameSwitchText:Landroid/widget/TextView;

    if-eqz v5, :cond_112

    if-ne v5, p2, :cond_113

    :cond_112
    int-to-float p1, v5

    :cond_113
    invoke-virtual {p0, p1}, Landroid/view/View;->setRotation(F)V

    :cond_116
    return-void
.end method

.method public updateIndicatorRingScreenLight(Z)V
    .registers 4

    .line 541
    invoke-super {p0, p1}, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->updateIndicatorRingScreenLight(Z)V

    .line 542
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mTabMenu:Lcom/transsion/camera/app/ui/widget/menu/TabMenuCustomView;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/ui/widget/menu/TabMenuCustomView;->updateRingScreenLight(Z)V

    if-eqz p1, :cond_d

    const/high16 v0, -0x1000000

    goto :goto_17

    .line 544
    :cond_d
    invoke-static {}, Lcom/transsion/camera/app_info/AppInfo;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/transsion/camera/R$color;->video_sight_shock_item_unselected_color:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    :goto_17
    iput v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mUnSelectedColor:I

    .line 545
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mVideoFilterUI:Lcom/transsion/camera/ui/setting/videosightshock/ui/VideoFilterUI;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/ui/setting/videosightshock/ui/VideoFilterUI;->updateLowLight(Z)V

    return-void
.end method

.method public updateScrollerViewLayout(Ljava/lang/Runnable;)V
    .registers 5

    .line 351
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mVideoFilterUI:Lcom/transsion/camera/ui/setting/videosightshock/ui/VideoFilterUI;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mCollapsedTabContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    sget v2, Lcom/transsion/camera/featurelibs/commonwidget/R$dimen;->scroller_left_margin:I

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/ui/setting/videosightshock/ui/VideoFilterUI;->updateScrollerViewLayout(II)V

    .line 353
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->resetScrollerRulerView()V

    .line 354
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mScrollerViewContainer:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5$$ExternalSyntheticLambda21;

    invoke-direct {v1, p0, p1}, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5$$ExternalSyntheticLambda21;-><init>(Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public updateTabSwitchLayout(Z)V
    .registers 3

    const/4 v0, 0x0

    .line 367
    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->updateTabSwitchLayout(ZLjava/lang/Runnable;)V

    return-void
.end method
