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

.field private mInflatedRootView:Landroid/view/View;

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

.field private mViewInitialized:Z


# direct methods
.method public static synthetic $r8$lambda$1vVVmp-C0OOi39t2n0OXCMPXWvg(Ljava/lang/Runnable;)V
    .registers 1

    if-eqz p0, :cond_5

    .line 446
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

    .line 87
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;-><init>()V

    const/16 v0, 0xc8

    .line 49
    iput v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->SHOW_ELEMENT_DURATION:I

    .line 50
    iput v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->HIDE_ELEMENT_DURATION:I

    const/16 v0, 0x96

    .line 51
    iput v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->SHOW_ELEMENT_DELAY:I

    const/16 v0, 0x15e

    .line 52
    iput v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->TRANSLATE_TAB_DURATION:I

    const v0, 0x3f19999a    # 0.6f

    .line 53
    iput v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mScaleX:F

    .line 55
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3ecccccd    # 0.4f

    const/4 v2, 0x0

    const v3, 0x3dcccccd    # 0.1f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mHideElementAlphaInterpolator:Landroid/view/animation/PathInterpolator;

    .line 56
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3ea8f5c3    # 0.33f

    const v3, 0x3f28f5c3    # 0.66f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mShowElementAlphaInterpolator:Landroid/view/animation/PathInterpolator;

    const/4 v0, 0x0

    .line 83
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mViewInitialized:Z

    if-eqz p1, :cond_45

    .line 89
    new-instance v0, Lcom/transsion/camera/ui/setting/videosightshock/VideoFilterUI5;

    invoke-direct {v0, p0}, Lcom/transsion/camera/ui/setting/videosightshock/VideoFilterUI5;-><init>(Lcom/transsion/camera/ui/setting/videosightshock/listener/IVssListener;)V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mVideoFilterUI:Lcom/transsion/camera/ui/setting/videosightshock/ui/VideoFilterUI;

    .line 90
    iget v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mSupportCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mSupportCount:I

    :cond_45
    if-eqz p2, :cond_54

    .line 93
    new-instance v0, Lcom/transsion/camera/ui/setting/videosightshock/ui/VideoEffectUI;

    invoke-direct {v0, p0}, Lcom/transsion/camera/ui/setting/videosightshock/ui/VideoEffectUI;-><init>(Lcom/transsion/camera/ui/setting/videosightshock/listener/IVssListener;)V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mVideoEffectUI:Lcom/transsion/camera/ui/setting/videosightshock/ui/IVssUI;

    .line 94
    iget v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mSupportCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mSupportCount:I

    :cond_54
    if-eqz p3, :cond_63

    .line 97
    new-instance v0, Lcom/transsion/camera/ui/setting/videosightshock/ui/VideoFrameUI;

    invoke-direct {v0, p0}, Lcom/transsion/camera/ui/setting/videosightshock/ui/VideoFrameUI;-><init>(Lcom/transsion/camera/ui/setting/videosightshock/listener/IVssListener;)V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mVideoFrameUI:Lcom/transsion/camera/ui/setting/videosightshock/ui/VideoFrameUI;

    .line 98
    iget v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mSupportCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mSupportCount:I

    .line 101
    :cond_63
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mbSupportFilter:Z

    .line 102
    iput-boolean p2, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mbSupportEffect:Z

    .line 103
    iput-boolean p3, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mbSupportFrame:Z

    .line 105
    new-instance p1, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockMenuState;

    invoke-direct {p1}, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockMenuState;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mVideoSightShockMenuState:Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockMenuState;

    return-void
.end method

.method static synthetic access$000(Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;)Lcom/transsion/camera/app/ui/widget/RotateImageView;
    .registers 1

    .line 48
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mMainSwitch:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;)Lcom/transsion/camera/app/ui/widget/RotateImageView;
    .registers 1

    .line 48
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mMainSwitch:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;)Lcom/transsion/camera/app/ui/widget/RotateImageView;
    .registers 1

    .line 48
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mMainSwitch:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    return-object p0
.end method

.method static synthetic access$300(Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;)Lcom/transsion/camera/app/ui/widget/RotateImageView;
    .registers 1

    .line 48
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mMainSwitch:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    return-object p0
.end method

.method static synthetic access$400(Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;)Lcom/transsion/camera/app/ui/widget/RotateImageView;
    .registers 1

    .line 48
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mMainSwitch:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    return-object p0
.end method

.method static synthetic access$500(Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;)Lcom/transsion/camera/app/ui/widget/RotateImageView;
    .registers 1

    .line 48
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mMainSwitch:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    return-object p0
.end method

.method private collapseScrollerView(Z)V
    .registers 22

    move-object/from16 v0, p0

    .line 838
    iget-object v1, v0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mResources:Landroid/content/res/Resources;

    sget v2, Lcom/transsion/camera/featurelibs/commonwidget/R$dimen;->scroller_scale_width:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 839
    iget-object v2, v0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mResources:Landroid/content/res/Resources;

    sget v3, Lcom/transsion/camera/featurelibs/commonwidget/R$dimen;->scroller_scale_width_animator:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 841
    iget-object v3, v0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mResources:Landroid/content/res/Resources;

    sget v4, Lcom/transsion/camera/featurelibs/commonwidget/R$dimen;->collapse_scroller_width:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v3, v3

    const v4, 0x3f19999a    # 0.6f

    div-float/2addr v3, v4

    float-to-int v3, v3

    .line 843
    iget-object v5, v0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mScrollerRulerView:Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;

    invoke-virtual {v5}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/transsion/camera/R$dimen;->video_filter_scroller_fading_edge_length:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v5

    .line 844
    div-int/lit8 v6, v3, 0x2

    sub-int/2addr v6, v2

    const/4 v7, 0x2

    .line 846
    new-array v8, v7, [I

    .line 847
    iget-object v9, v0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mScrollerRulerView:Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;

    invoke-virtual {v9, v8}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 848
    new-array v9, v7, [I

    .line 849
    iget-object v10, v0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mCollapsedScrollerBackground:Landroid/widget/FrameLayout;

    invoke-virtual {v10, v9}, Landroid/view/View;->getLocationOnScreen([I)V

    int-to-float v10, v3

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v10, v11

    .line 851
    iget-object v12, v0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mResources:Landroid/content/res/Resources;

    .line 852
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

    .line 853
    aget v9, v9, v11

    sub-int/2addr v9, v13

    iget-object v12, v0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mResources:Landroid/content/res/Resources;

    .line 854
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

    .line 856
    iget-object v8, v0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mScrollerRulerView:Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;

    invoke-virtual {v8}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->getCenterPointX()F

    move-result v9

    invoke-virtual {v8, v9}, Landroid/view/View;->setPivotX(F)V

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-eqz p1, :cond_f9

    .line 859
    new-array v4, v7, [F

    fill-array-data v4, :array_12c

    const-string v12, "alpha"

    invoke-static {v12, v4}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v13

    .line 860
    new-array v4, v7, [F

    fill-array-data v4, :array_134

    const-string v12, "scaleX"

    invoke-static {v12, v4}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v17

    int-to-float v1, v1

    int-to-float v2, v2

    .line 861
    new-array v4, v7, [F

    aput v1, v4, v11

    aput v2, v4, v8

    const-string v1, "scaleWidth"

    invoke-static {v1, v4}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v14

    .line 862
    iget v1, v0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mScrollerTranslationX:I

    filled-new-array {v11, v1}, [I

    move-result-object v1

    const-string v2, "translationX"

    invoke-static {v2, v1}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v16

    .line 863
    iget v1, v0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mScrollerRulerViewWidth:I

    filled-new-array {v1, v3}, [I

    move-result-object v1

    const-string v2, "containerWidth"

    invoke-static {v2, v1}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v18

    .line 864
    const-string v1, "fadingEdgeLength"

    filled-new-array {v5, v6}, [I

    move-result-object v2

    invoke-static {v1, v2}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v19

    .line 865
    new-array v1, v7, [F

    aput v9, v1, v11

    aput v10, v1, v8

    const-string v2, "scrollerOffset"

    invoke-static {v2, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v15

    .line 867
    filled-new-array/range {v13 .. v19}, [Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofPropertyValuesHolder([Landroid/animation/PropertyValuesHolder;)Landroid/animation/ValueAnimator;

    move-result-object v1

    const-wide/16 v2, 0x15e

    .line 870
    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 871
    new-instance v2, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 873
    new-instance v2, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5$$ExternalSyntheticLambda1;

    invoke-direct {v2, v0}, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 895
    new-instance v2, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5$10;

    invoke-direct {v2, v0}, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5$10;-><init>(Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;)V

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 907
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    return-void

    .line 909
    :cond_f9
    iget-object v1, v0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mScrollerRulerView:Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 910
    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 911
    iget-object v3, v0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mScrollerRulerView:Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;

    invoke-virtual {v3, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 912
    iget-object v1, v0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mScrollerRulerView:Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;

    invoke-virtual {v1, v8}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->setScrollerStatus(Z)V

    .line 913
    iget-object v1, v0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mScrollerRulerView:Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;

    int-to-float v2, v2

    invoke-virtual {v1, v2, v9}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->setScrollerParamsForAnim(FF)V

    .line 915
    iget-object v1, v0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mScrollerRulerView:Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;

    neg-float v2, v10

    invoke-virtual {v1, v2}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->setCanvasTranslateX(F)V

    .line 917
    iget-object v1, v0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mScrollerRulerView:Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;

    invoke-virtual {v1, v4}, Landroid/view/View;->setScaleX(F)V

    .line 918
    iget-object v1, v0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mScrollerRulerView:Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;

    int-to-float v2, v6

    invoke-virtual {v1, v2}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->setFadingLength(F)V

    .line 920
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

    .line 925
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 927
    iget-object v2, v0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mCurrentSelectTabSwitch:Landroid/widget/LinearLayout;

    const/4 v3, 0x2

    .line 928
    new-array v4, v3, [I

    .line 929
    invoke-virtual {v2, v4}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 931
    new-array v4, v3, [I

    .line 932
    iget-object v5, v0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mCollapsedTabTextView:Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 934
    sget v5, Lcom/transsion/camera/R$id;->tab_text:I

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 935
    new-array v5, v3, [I

    .line 936
    invoke-virtual {v2, v5}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 v6, 0x0

    .line 938
    aget v5, v5, v6

    aget v4, v4, v6

    sub-int/2addr v5, v4

    int-to-float v4, v5

    .line 940
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

    .line 941
    invoke-virtual {v4, v9, v10}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 942
    new-instance v5, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5$11;

    invoke-direct {v5, v0, v2}, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5$11;-><init>(Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;Landroid/widget/TextView;)V

    invoke-virtual {v4, v5}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 957
    iget-object v5, v0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mHoverCollapsedTabContainer:Landroid/widget/LinearLayout;

    sget v7, Lcom/transsion/camera/featurelibs/commonwidget/R$id;->collapsed_tab_text:I

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 958
    new-instance v7, Landroid/animation/ArgbEvaluator;

    invoke-direct {v7}, Landroid/animation/ArgbEvaluator;-><init>()V

    iget v9, v0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mUnSelectedColor:I

    .line 959
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    iget v10, v0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mSelectedColor:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    filled-new-array {v9, v10}, [Ljava/lang/Object;

    move-result-object v9

    .line 958
    const-string v10, "textColor"

    invoke-static {v5, v10, v7, v9}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    move-result-object v5

    const-wide/16 v9, 0x64

    .line 960
    invoke-virtual {v5, v9, v10}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 962
    iget-object v7, v0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mCollapsedTabContainer:Landroid/widget/LinearLayout;

    new-array v9, v3, [F

    fill-array-data v9, :array_128

    const-string v10, "alpha"

    invoke-static {v7, v10, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    const-wide/16 v11, 0xc8

    .line 963
    invoke-virtual {v7, v11, v12}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 964
    iget-object v9, v0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mHideElementAlphaInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v7, v9}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 965
    new-instance v9, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5$12;

    invoke-direct {v9, v0}, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5$12;-><init>(Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;)V

    invoke-virtual {v7, v9}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 983
    iget-object v9, v0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mHoverCollapsedTabContainer:Landroid/widget/LinearLayout;

    sget v13, Lcom/transsion/camera/featurelibs/commonwidget/R$id;->expand_arrow:I

    invoke-virtual {v9, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    .line 984
    new-array v13, v3, [F

    fill-array-data v13, :array_130

    invoke-static {v9, v10, v13}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v9

    .line 986
    iget-object v13, v0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mHideElementAlphaInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v9, v13}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 987
    invoke-virtual {v9, v11, v12}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 989
    iget-object v13, v0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mTabMenuContainer:Landroid/view/ViewGroup;

    new-array v14, v3, [F

    fill-array-data v14, :array_138

    invoke-static {v13, v10, v14}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v13

    const-wide/16 v14, 0x96

    .line 990
    invoke-virtual {v13, v14, v15}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 991
    invoke-virtual {v13, v11, v12}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move/from16 v16, v6

    .line 992
    iget-object v6, v0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mShowElementAlphaInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v13, v6}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 993
    new-instance v6, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5$13;

    invoke-direct {v6, v0, v2}, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5$13;-><init>(Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;Landroid/widget/TextView;)V

    invoke-virtual {v13, v6}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1008
    iget-object v6, v0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mMainSwitch:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    move/from16 v17, v8

    new-array v8, v3, [F

    fill-array-data v8, :array_140

    invoke-static {v6, v10, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    .line 1009
    invoke-virtual {v6, v14, v15}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 1010
    invoke-virtual {v6, v11, v12}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1011
    iget-object v8, v0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mShowElementAlphaInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v6, v8}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1012
    new-instance v8, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5$14;

    invoke-direct {v8, v0}, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5$14;-><init>(Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;)V

    invoke-virtual {v6, v8}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1026
    iget-object v8, v0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mCollapsedScrollerBackground:Landroid/widget/FrameLayout;

    new-array v14, v3, [F

    fill-array-data v14, :array_148

    invoke-static {v8, v10, v14}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    const-wide/16 v14, 0x12c

    .line 1027
    invoke-virtual {v8, v14, v15}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 1028
    invoke-virtual {v8, v11, v12}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1029
    iget-object v10, v0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mShowElementAlphaInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v8, v10}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const/4 v10, 0x7

    .line 1031
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

    .line 1036
    new-instance v3, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5$15;

    invoke-direct {v3, v0, v2}, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5$15;-><init>(Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;Landroid/widget/TextView;)V

    invoke-virtual {v1, v3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1057
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

    .line 591
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->startCollapseToExpandAnimation()V

    .line 592
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->startExpandScrollerAnimation()V

    return-void
.end method

.method private handleCollapseToNoEffect()V
    .registers 2

    const/4 v0, 0x1

    .line 793
    invoke-virtual {p0, v0}, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->updateTabSwitchLayout(Z)V

    .line 794
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->startCollapsedToNoEffectAnimation()V

    return-void
.end method

.method private handleExpandToCollapse()V
    .registers 3

    .line 829
    new-instance v0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5$$ExternalSyntheticLambda13;

    invoke-direct {v0, p0}, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5$$ExternalSyntheticLambda13;-><init>(Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;)V

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->updateTabSwitchLayout(ZLjava/lang/Runnable;)V

    return-void
.end method

.method private handleExpandToNoEffect()V
    .registers 3

    .line 1061
    new-instance v0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;)V

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->updateTabSwitchLayout(ZLjava/lang/Runnable;)V

    return-void
.end method

.method private handleNoEffectToCollapse()V
    .registers 2

    const/4 v0, 0x1

    .line 1159
    invoke-virtual {p0, v0}, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->updateTabSwitchLayout(Z)V

    .line 1160
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->startNoEffectToCollapseAnimation()V

    .line 1161
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->resetScrollerRulerView()V

    const/4 v0, 0x0

    .line 1162
    invoke-direct {p0, v0}, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->collapseScrollerView(Z)V

    return-void
.end method

.method private handleNoEffectToExpand()V
    .registers 1

    .line 1198
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->resetScrollerRulerView()V

    .line 1199
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->startNoEffectToExpandAnimation()V

    return-void
.end method

.method private synthetic lambda$collapseScrollerView$19(Landroid/animation/ValueAnimator;)V
    .registers 5

    .line 874
    const-string v0, "alpha"

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 875
    const-string v1, "scaleWidth"

    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 876
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mScrollerRulerView:Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;

    invoke-virtual {v2, v1, v0}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->setScrollerParamsForAnim(FF)V

    .line 878
    const-string v0, "scaleX"

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 879
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mScrollerRulerView:Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setScaleX(F)V

    .line 881
    const-string v0, "fadingEdgeLength"

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 882
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mScrollerRulerView:Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->setFadingLength(F)V

    .line 884
    const-string v0, "scrollerOffset"

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 885
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mScrollerRulerView:Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;

    neg-float v0, v0

    invoke-virtual {v1, v0}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->setCanvasTranslateX(F)V

    .line 887
    const-string v0, "containerWidth"

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 888
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mScrollerRulerView:Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 889
    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 890
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mScrollerRulerView:Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 892
    const-string v0, "translationX"

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 893
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mScrollerRulerView:Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;

    int-to-float p1, p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setTranslationX(F)V

    return-void
.end method

.method private synthetic lambda$init$0(Z)V
    .registers 2

    .line 113
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->handleNoEffectToExpand()V

    return-void
.end method

.method private synthetic lambda$init$1(Z)V
    .registers 2

    .line 115
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->handleNoEffectToCollapse()V

    return-void
.end method

.method private synthetic lambda$init$2(Z)V
    .registers 2

    .line 117
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->handleExpandToNoEffect()V

    return-void
.end method

.method private synthetic lambda$init$3(Z)V
    .registers 2

    .line 119
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->handleExpandToCollapse()V

    return-void
.end method

.method private synthetic lambda$init$4(Z)V
    .registers 2

    .line 121
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->handleCollapseToNoEffect()V

    return-void
.end method

.method private synthetic lambda$init$5(Z)V
    .registers 2

    .line 123
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->handleCollapseToExpand()V

    return-void
.end method

.method private synthetic lambda$initMainSwitchListener$15(Landroid/view/View;)V
    .registers 3

    .line 537
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mMainSwitch:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-static {p1}, Lcom/transsion/camera/utils/MultiTouchManager;->canPerformClick(Landroid/view/View;)Z

    move-result p1

    if-nez p1, :cond_9

    return-void

    .line 540
    :cond_9
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mMainSwitch:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setSelected(Z)V

    .line 541
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->resetTabState()V

    .line 542
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mVideoFilterUI:Lcom/transsion/camera/ui/setting/videosightshock/ui/VideoFilterUI;

    invoke-virtual {p1}, Lcom/transsion/camera/ui/setting/videosightshock/ui/VideoFilterUI;->resetCurrentItem()V

    .line 544
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mVideoSightShockMenuState:Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockMenuState;

    sget-object p1, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockMenuState$TemplateState;->NO_EFFECT:Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockMenuState$TemplateState;

    invoke-virtual {p0, p1, v0}, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockMenuState;->update(Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockMenuState$TemplateState;Z)V

    return-void
.end method

.method private synthetic lambda$initViewListenerIfNeed$10(Landroid/view/View;)V
    .registers 4

    .line 460
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mFilterSwitch:Landroid/widget/LinearLayout;

    invoke-static {p1}, Lcom/transsion/camera/utils/MultiTouchManager;->canPerformClick(Landroid/view/View;)Z

    move-result p1

    if-nez p1, :cond_9

    goto :goto_11

    .line 463
    :cond_9
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mFilterSwitch:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result p1

    if-eqz p1, :cond_12

    :goto_11
    return-void

    .line 466
    :cond_12
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mFilterSwitch:Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mCurrentSelectTabSwitch:Landroid/widget/LinearLayout;

    .line 467
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mCollapsedTabTextView:Landroid/widget/TextView;

    sget v0, Lcom/transsion/camera/R$string;->video_filter:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 468
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mHoverTabTextView:Landroid/widget/TextView;

    sget v0, Lcom/transsion/camera/R$string;->video_filter:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 469
    const-string p1, "key_video_filter_style"

    invoke-virtual {p0, p1}, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->setVideoSightMode(Ljava/lang/String;)V

    .line 470
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mVideoFilterUI:Lcom/transsion/camera/ui/setting/videosightshock/ui/VideoFilterUI;

    invoke-virtual {p1}, Lcom/transsion/camera/ui/setting/videosightshock/ui/VideoFilterUI;->getmCurrentItem()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    if-eqz p1, :cond_42

    .line 471
    const-string v1, "0"

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_42

    .line 473
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mVideoSightShockMenuState:Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockMenuState;

    sget-object p1, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockMenuState$TemplateState;->COLLAPSE_SCROLLER_BAR:Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockMenuState$TemplateState;

    invoke-virtual {p0, p1, v0}, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockMenuState;->update(Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockMenuState$TemplateState;Z)V

    return-void

    .line 475
    :cond_42
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mVideoSightShockMenuState:Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockMenuState;

    sget-object p1, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockMenuState$TemplateState;->NO_EFFECT:Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockMenuState$TemplateState;

    invoke-virtual {p0, p1, v0}, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockMenuState;->update(Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockMenuState$TemplateState;Z)V

    return-void
.end method

.method private synthetic lambda$initViewListenerIfNeed$11(Landroid/view/View;)V
    .registers 3

    .line 483
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mEffectSwitch:Landroid/widget/LinearLayout;

    invoke-static {p1}, Lcom/transsion/camera/utils/MultiTouchManager;->canPerformClick(Landroid/view/View;)Z

    move-result p1

    if-nez p1, :cond_9

    goto :goto_11

    .line 486
    :cond_9
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mEffectSwitch:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result p1

    if-eqz p1, :cond_12

    :goto_11
    return-void

    .line 489
    :cond_12
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mEffectSwitch:Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mCurrentSelectTabSwitch:Landroid/widget/LinearLayout;

    .line 490
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mCollapsedTabTextView:Landroid/widget/TextView;

    sget v0, Lcom/transsion/camera/R$string;->video_effect:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 491
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mHoverTabTextView:Landroid/widget/TextView;

    sget v0, Lcom/transsion/camera/R$string;->video_effect:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 492
    const-string p1, "key_video_effect_style"

    invoke-virtual {p0, p1}, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->setVideoSightMode(Ljava/lang/String;)V

    .line 493
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mVideoSightShockMenuState:Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockMenuState;

    sget-object p1, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockMenuState$TemplateState;->NO_EFFECT:Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockMenuState$TemplateState;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockMenuState;->update(Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockMenuState$TemplateState;Z)V

    return-void
.end method

.method private synthetic lambda$initViewListenerIfNeed$12(Landroid/view/View;)V
    .registers 4

    .line 500
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mFrameSwitch:Landroid/widget/LinearLayout;

    invoke-static {p1}, Lcom/transsion/camera/utils/MultiTouchManager;->canPerformClick(Landroid/view/View;)Z

    move-result p1

    if-nez p1, :cond_9

    goto :goto_11

    .line 503
    :cond_9
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mFrameSwitch:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result p1

    if-eqz p1, :cond_12

    :goto_11
    return-void

    .line 506
    :cond_12
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mFrameSwitch:Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mCurrentSelectTabSwitch:Landroid/widget/LinearLayout;

    .line 507
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mCollapsedTabTextView:Landroid/widget/TextView;

    sget v0, Lcom/transsion/camera/R$string;->video_frame:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 508
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mHoverTabTextView:Landroid/widget/TextView;

    sget v0, Lcom/transsion/camera/R$string;->video_frame:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 509
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mVideoSightShockMenuState:Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockMenuState;

    sget-object v0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockMenuState$TemplateState;->NO_EFFECT:Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockMenuState$TemplateState;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockMenuState;->update(Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockMenuState$TemplateState;Z)V

    .line 510
    const-string p1, "key_video_frame_style"

    invoke-virtual {p0, p1}, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->setVideoSightMode(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$initViewListenerIfNeed$13(Landroid/view/View;)V
    .registers 3

    .line 517
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mCollapsedTabContainer:Landroid/widget/LinearLayout;

    invoke-static {p1}, Lcom/transsion/camera/utils/MultiTouchManager;->canPerformClick(Landroid/view/View;)Z

    move-result p1

    if-nez p1, :cond_9

    return-void

    .line 520
    :cond_9
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mVideoSightShockMenuState:Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockMenuState;

    sget-object p1, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockMenuState$TemplateState;->COLLAPSE_SCROLLER_BAR:Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockMenuState$TemplateState;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockMenuState;->update(Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockMenuState$TemplateState;Z)V

    return-void
.end method

.method private synthetic lambda$initViewListenerIfNeed$14(Landroid/view/View;)V
    .registers 3

    .line 525
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mCollapsedScrollerBackground:Landroid/widget/FrameLayout;

    invoke-static {p1}, Lcom/transsion/camera/utils/MultiTouchManager;->canPerformClick(Landroid/view/View;)Z

    move-result p1

    if-nez p1, :cond_9

    goto :goto_1b

    .line 528
    :cond_9
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mVideoSightShockMenuState:Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockMenuState;

    sget-object v0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockMenuState$TemplateState;->COLLAPSE_SCROLLER_BAR:Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockMenuState$TemplateState;

    invoke-virtual {p1, v0}, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockMenuState;->isSameState(Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockMenuState$TemplateState;)Z

    move-result p1

    if-eqz p1, :cond_1b

    .line 529
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

    .line 586
    invoke-super {p0}, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->recoverSettingValueAndUI()V

    return-void
.end method

.method private synthetic lambda$startExpandScrollerAnimation$17(Landroid/animation/ValueAnimator;)V
    .registers 4

    .line 614
    const-string v0, "scaleWidth"

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 615
    const-string v1, "alpha"

    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 616
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mScrollerRulerView:Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;

    invoke-virtual {p0, v0, p1}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->setScrollerParamsForAnim(FF)V

    return-void
.end method

.method private synthetic lambda$startExpandScrollerAnimation$18(Landroid/animation/ValueAnimator;)V
    .registers 4

    .line 632
    const-string v0, "scaleX"

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 633
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mScrollerRulerView:Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setScaleX(F)V

    .line 635
    const-string v0, "fadingEdgeLength"

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 636
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mScrollerRulerView:Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->setFadingLength(F)V

    .line 638
    const-string v0, "containerWidth"

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 639
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mScrollerRulerView:Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 640
    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 641
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mScrollerRulerView:Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 643
    const-string v0, "translationX"

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 644
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mScrollerRulerView:Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;

    int-to-float p1, p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setTranslationX(F)V

    return-void
.end method

.method private synthetic lambda$updateScrollerViewLayout$6(Ljava/lang/Runnable;)V
    .registers 4

    .line 385
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mScrollerRulerView:Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->calculateCenterPointX()V

    .line 386
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mScrollerRulerView:Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 387
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mVideoSightShockMenuState:Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockMenuState;

    sget-object v1, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockMenuState$TemplateState;->COLLAPSE_SCROLLER_BAR:Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockMenuState$TemplateState;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockMenuState;->isSameState(Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockMenuState$TemplateState;)Z

    move-result v0

    if-eqz v0, :cond_18

    const/4 v0, 0x0

    .line 388
    invoke-direct {p0, v0}, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->collapseScrollerView(Z)V

    :cond_18
    if-eqz p1, :cond_1d

    .line 391
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_1d
    return-void
.end method

.method private synthetic lambda$updateTabSwitchLayout$7(Landroid/widget/FrameLayout$LayoutParams;Landroid/animation/ValueAnimator;)V
    .registers 3

    .line 419
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 420
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mTabMenuContainer:Landroid/view/ViewGroup;

    invoke-virtual {p0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private synthetic lambda$updateTabSwitchLayout$8(Landroid/animation/ValueAnimator;)V
    .registers 2

    .line 425
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

    .line 1302
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mScrollerRulerView:Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->setScrollerStatus(Z)V

    .line 1303
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mScrollerRulerView:Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    .line 1304
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mScrollerRulerView:Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mResources:Landroid/content/res/Resources;

    sget v2, Lcom/transsion/camera/R$dimen;->video_filter_scroller_fading_edge_length:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->setFadingLength(F)V

    .line 1305
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mScrollerRulerView:Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 1307
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mScrollerRulerView:Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1308
    iget v1, p0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mScrollerRulerViewWidth:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1309
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mScrollerRulerView:Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1311
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mScrollerRulerView:Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->resetScrollerParams()V

    return-void
.end method

.method private startCollapseToExpandAnimation()V
    .registers 17

    move-object/from16 v0, p0

    .line 667
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 669
    iget-object v2, v0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mCurrentSelectTabSwitch:Landroid/widget/LinearLayout;

    .line 670
    sget v3, Lcom/transsion/camera/R$id;->tab_text:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const/4 v4, 0x2

    .line 672
    new-array v5, v4, [I

    .line 673
    invoke-virtual {v3, v5}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 674
    new-array v6, v4, [I

    .line 675
    iget-object v7, v0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mCollapsedTabTextView:Landroid/widget/TextView;

    invoke-virtual {v7, v6}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 v7, 0x0

    .line 677
    aget v5, v5, v7

    aget v6, v6, v7

    sub-int/2addr v5, v6

    int-to-float v5, v5

    .line 678
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

    .line 680
    invoke-virtual {v6, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 681
    new-instance v8, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5$4;

    invoke-direct {v8, v0, v3}, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5$4;-><init>(Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;Landroid/widget/TextView;)V

    invoke-virtual {v6, v8}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 703
    iget-object v8, v0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mHoverCollapsedTabContainer:Landroid/widget/LinearLayout;

    sget v9, Lcom/transsion/camera/featurelibs/commonwidget/R$id;->collapsed_tab_text:I

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 704
    new-instance v9, Landroid/animation/ArgbEvaluator;

    invoke-direct {v9}, Landroid/animation/ArgbEvaluator;-><init>()V

    iget v10, v0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mSelectedColor:I

    .line 705
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    iget v11, v0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mUnSelectedColor:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    filled-new-array {v10, v11}, [Ljava/lang/Object;

    move-result-object v10

    .line 704
    const-string v11, "textColor"

    invoke-static {v8, v11, v9, v10}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    move-result-object v8

    const-wide/16 v9, 0x64

    .line 706
    invoke-virtual {v8, v9, v10}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 708
    iget-object v9, v0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mHoverCollapsedTabContainer:Landroid/widget/LinearLayout;

    sget v10, Lcom/transsion/camera/featurelibs/commonwidget/R$id;->expand_arrow:I

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    .line 709
    new-array v10, v4, [F

    fill-array-data v10, :array_118

    const-string v11, "alpha"

    invoke-static {v9, v11, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v9

    .line 711
    iget-object v10, v0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mShowElementAlphaInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v9, v10}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v12, 0xc8

    .line 712
    invoke-virtual {v9, v12, v13}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 714
    iget-object v10, v0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mMainSwitch:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    new-array v14, v4, [F

    fill-array-data v14, :array_120

    invoke-static {v10, v11, v14}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v10

    .line 715
    invoke-virtual {v10, v12, v13}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 716
    iget-object v14, v0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mShowElementAlphaInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v10, v14}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 717
    new-instance v14, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5$5;

    invoke-direct {v14, v0}, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5$5;-><init>(Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;)V

    invoke-virtual {v10, v14}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 731
    iget-object v14, v0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mTabMenuContainer:Landroid/view/ViewGroup;

    new-array v15, v4, [F

    fill-array-data v15, :array_128

    invoke-static {v14, v11, v15}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v14

    .line 732
    invoke-virtual {v14, v12, v13}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 733
    iget-object v15, v0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mHideElementAlphaInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v14, v15}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 734
    new-instance v15, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5$6;

    invoke-direct {v15, v0, v3, v2}, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5$6;-><init>(Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;Landroid/widget/TextView;Landroid/widget/LinearLayout;)V

    invoke-virtual {v14, v15}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 751
    iget-object v2, v0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mCollapsedTabContainer:Landroid/widget/LinearLayout;

    new-array v3, v4, [F

    fill-array-data v3, :array_130

    invoke-static {v2, v11, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    move v3, v5

    move-object v15, v6

    const-wide/16 v5, 0x96

    .line 752
    invoke-virtual {v2, v5, v6}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 753
    invoke-virtual {v2, v12, v13}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 754
    iget-object v5, v0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mShowElementAlphaInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v2, v5}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 755
    new-instance v5, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5$7;

    invoke-direct {v5, v0}, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5$7;-><init>(Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;)V

    invoke-virtual {v2, v5}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 764
    iget-object v5, v0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mCollapsedScrollerBackground:Landroid/widget/FrameLayout;

    new-array v6, v4, [F

    fill-array-data v6, :array_138

    invoke-static {v5, v11, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .line 765
    iget-object v6, v0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mHideElementAlphaInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v5, v6}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 766
    invoke-virtual {v5, v12, v13}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    const/4 v6, 0x7

    .line 768
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

    .line 771
    new-instance v2, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5$8;

    invoke-direct {v2, v0}, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5$8;-><init>(Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;)V

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 789
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

    .line 798
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 800
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mCollapsedScrollerBackground:Landroid/widget/FrameLayout;

    const/4 v2, 0x2

    new-array v3, v2, [F

    fill-array-data v3, :array_48

    const-string v4, "alpha"

    invoke-static {v1, v4, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    const-wide/16 v5, 0xc8

    .line 801
    invoke-virtual {v1, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 802
    iget-object v3, p0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mHideElementAlphaInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v1, v3}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 804
    iget-object v3, p0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mFilterTopUI:Landroid/view/View;

    new-array v7, v2, [F

    fill-array-data v7, :array_50

    invoke-static {v3, v4, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 805
    invoke-virtual {v3, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 806
    iget-object v4, p0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mHideElementAlphaInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v3, v4}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 807
    new-instance v4, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5$9;

    invoke-direct {v4, p0}, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5$9;-><init>(Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;)V

    invoke-virtual {v3, v4}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 823
    new-array p0, v2, [Landroid/animation/Animator;

    const/4 v2, 0x0

    aput-object v3, p0, v2

    const/4 v2, 0x1

    aput-object v1, p0, v2

    invoke-virtual {v0, p0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 825
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

    .line 596
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mResources:Landroid/content/res/Resources;

    sget v1, Lcom/transsion/camera/featurelibs/commonwidget/R$dimen;->scroller_scale_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 597
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mResources:Landroid/content/res/Resources;

    sget v2, Lcom/transsion/camera/featurelibs/commonwidget/R$dimen;->scroller_scale_width_animator:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 599
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mResources:Landroid/content/res/Resources;

    sget v3, Lcom/transsion/camera/featurelibs/commonwidget/R$dimen;->collapse_scroller_width:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 601
    iget-object v3, p0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mScrollerRulerView:Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;

    invoke-virtual {v3}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/transsion/camera/R$dimen;->video_filter_scroller_fading_edge_length:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    .line 602
    div-int/lit8 v4, v2, 0x2

    sub-int/2addr v4, v1

    const/4 v5, 0x2

    .line 604
    new-array v6, v5, [F

    fill-array-data v6, :array_c4

    const-string v7, "alpha"

    invoke-static {v7, v6}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v6

    .line 605
    new-array v7, v5, [F

    fill-array-data v7, :array_cc

    const-string v8, "scaleX"

    invoke-static {v8, v7}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v7

    .line 606
    iget v8, p0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mScrollerTranslationX:I

    const/4 v9, 0x0

    filled-new-array {v8, v9}, [I

    move-result-object v8

    const-string v10, "translationX"

    invoke-static {v10, v8}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v8

    .line 607
    iget v10, p0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mScrollerRulerViewWidth:I

    filled-new-array {v2, v10}, [I

    move-result-object v2

    const-string v10, "containerWidth"

    invoke-static {v10, v2}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    .line 608
    const-string v10, "fadingEdgeLength"

    filled-new-array {v4, v3}, [I

    move-result-object v3

    invoke-static {v10, v3}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    int-to-float v1, v1

    int-to-float v0, v0

    .line 610
    new-array v4, v5, [F

    aput v1, v4, v9

    const/4 v1, 0x1

    aput v0, v4, v1

    const-string v0, "scaleWidth"

    invoke-static {v0, v4}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 611
    filled-new-array {v0, v6}, [Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofPropertyValuesHolder([Landroid/animation/PropertyValuesHolder;)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v10, 0x12c

    .line 612
    invoke-virtual {v0, v10, v11}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 613
    new-instance v4, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5$$ExternalSyntheticLambda11;

    invoke-direct {v4, p0}, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5$$ExternalSyntheticLambda11;-><init>(Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;)V

    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 618
    new-instance v4, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5$2;

    invoke-direct {v4, p0}, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5$2;-><init>(Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;)V

    invoke-virtual {v0, v4}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 625
    filled-new-array {v8, v7, v2, v3}, [Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofPropertyValuesHolder([Landroid/animation/PropertyValuesHolder;)Landroid/animation/ValueAnimator;

    move-result-object v2

    const-wide/16 v3, 0x1f4

    .line 628
    invoke-virtual {v2, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 629
    new-instance v3, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 631
    new-instance v3, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5$$ExternalSyntheticLambda12;

    invoke-direct {v3, p0}, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5$$ExternalSyntheticLambda12;-><init>(Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 646
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    .line 647
    new-instance v4, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5$3;

    invoke-direct {v4, p0}, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5$3;-><init>(Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;)V

    invoke-virtual {v3, v4}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 662
    new-array p0, v5, [Landroid/animation/Animator;

    aput-object v2, p0, v9

    aput-object v0, p0, v1

    invoke-virtual {v3, p0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 663
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

    .line 833
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->doExpendToCollapsedAnimation()V

    const/4 v0, 0x1

    .line 834
    invoke-direct {p0, v0}, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->collapseScrollerView(Z)V

    return-void
.end method

.method private startExpandToDefaultAnimation()V
    .registers 19

    move-object/from16 v0, p0

    .line 1065
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 1067
    iget-object v2, v0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mCurrentSelectTabSwitch:Landroid/widget/LinearLayout;

    const/4 v3, 0x2

    .line 1068
    new-array v4, v3, [I

    .line 1069
    invoke-virtual {v2, v4}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 1071
    new-array v4, v3, [I

    .line 1072
    iget-object v5, v0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mCollapsedTabTextView:Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 1074
    sget v5, Lcom/transsion/camera/R$id;->tab_text:I

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 1075
    new-array v5, v3, [I

    .line 1076
    invoke-virtual {v2, v5}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 v6, 0x0

    .line 1078
    aget v5, v5, v6

    aget v4, v4, v6

    sub-int/2addr v5, v4

    int-to-float v4, v5

    .line 1080
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

    .line 1082
    invoke-virtual {v4, v9, v10}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1083
    new-instance v5, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5$16;

    invoke-direct {v5, v0, v2}, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5$16;-><init>(Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;Landroid/widget/TextView;)V

    invoke-virtual {v4, v5}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1103
    iget-object v5, v0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mHoverCollapsedTabContainer:Landroid/widget/LinearLayout;

    sget v7, Lcom/transsion/camera/featurelibs/commonwidget/R$id;->collapsed_tab_text:I

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 1104
    new-instance v7, Landroid/animation/ArgbEvaluator;

    invoke-direct {v7}, Landroid/animation/ArgbEvaluator;-><init>()V

    iget v9, v0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mUnSelectedColor:I

    .line 1105
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    iget v10, v0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mSelectedColor:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    filled-new-array {v9, v10}, [Ljava/lang/Object;

    move-result-object v9

    .line 1104
    const-string v10, "textColor"

    invoke-static {v5, v10, v7, v9}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .line 1107
    iget-object v7, v0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mFilterTopUI:Landroid/view/View;

    new-array v9, v3, [F

    fill-array-data v9, :array_106

    const-string v10, "alpha"

    invoke-static {v7, v10, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    .line 1108
    iget-object v9, v0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mHideElementAlphaInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v7, v9}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v11, 0xc8

    .line 1109
    invoke-virtual {v7, v11, v12}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1111
    iget-object v9, v0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mCollapsedTabContainer:Landroid/widget/LinearLayout;

    new-array v13, v3, [F

    fill-array-data v13, :array_10e

    invoke-static {v9, v10, v13}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v9

    .line 1112
    iget-object v13, v0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mHideElementAlphaInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v9, v13}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1113
    invoke-virtual {v9, v11, v12}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1115
    iget-object v13, v0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mTabMenuContainer:Landroid/view/ViewGroup;

    new-array v14, v3, [F

    fill-array-data v14, :array_116

    invoke-static {v13, v10, v14}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v13

    const-wide/16 v14, 0x96

    .line 1116
    invoke-virtual {v13, v14, v15}, Landroid/animation/Animator;->setStartDelay(J)V

    move/from16 v16, v6

    .line 1117
    iget-object v6, v0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mShowElementAlphaInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v13, v6}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1118
    invoke-virtual {v13, v11, v12}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1120
    iget-object v6, v0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mMainSwitch:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    move/from16 v17, v8

    new-array v8, v3, [F

    fill-array-data v8, :array_11e

    invoke-static {v6, v10, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    .line 1121
    invoke-virtual {v6, v11, v12}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1122
    invoke-virtual {v6, v14, v15}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 1123
    iget-object v8, v0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mShowElementAlphaInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v6, v8}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1125
    iget-object v8, v0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mHoverCollapsedTabContainer:Landroid/widget/LinearLayout;

    sget v14, Lcom/transsion/camera/featurelibs/commonwidget/R$id;->expand_arrow:I

    invoke-virtual {v8, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .line 1126
    new-array v14, v3, [F

    fill-array-data v14, :array_126

    invoke-static {v8, v10, v14}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    .line 1127
    iget-object v10, v0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mHideElementAlphaInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v8, v10}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1128
    invoke-virtual {v8, v11, v12}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    const/4 v10, 0x7

    .line 1130
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

    .line 1135
    new-instance v3, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5$17;

    invoke-direct {v3, v0, v2}, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5$17;-><init>(Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;Landroid/widget/TextView;)V

    invoke-virtual {v1, v3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1155
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

    .line 1166
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 1168
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mCollapsedScrollerBackground:Landroid/widget/FrameLayout;

    const/4 v2, 0x2

    new-array v3, v2, [F

    fill-array-data v3, :array_40

    const-string v4, "alpha"

    invoke-static {v1, v4, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 1169
    iget-object v3, p0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mFilterTopUI:Landroid/view/View;

    new-array v5, v2, [F

    fill-array-data v5, :array_48

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    const-wide/16 v4, 0xc8

    .line 1171
    invoke-virtual {v0, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1172
    iget-object v4, p0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mShowElementAlphaInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v4}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1173
    new-instance v4, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5$18;

    invoke-direct {v4, p0}, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5$18;-><init>(Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;)V

    invoke-virtual {v0, v4}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1192
    new-array p0, v2, [Landroid/animation/Animator;

    const/4 v2, 0x0

    aput-object v3, p0, v2

    const/4 v2, 0x1

    aput-object v1, p0, v2

    invoke-virtual {v0, p0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1194
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

    .line 1203
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 1205
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mCurrentSelectTabSwitch:Landroid/widget/LinearLayout;

    .line 1206
    sget v2, Lcom/transsion/camera/R$id;->tab_text:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const/4 v3, 0x2

    .line 1208
    new-array v4, v3, [I

    .line 1209
    invoke-virtual {v2, v4}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 1210
    new-array v5, v3, [I

    .line 1211
    iget-object v6, p0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mCollapsedTabTextView:Landroid/widget/TextView;

    invoke-virtual {v6, v5}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 v6, 0x0

    .line 1212
    aget v4, v4, v6

    aget v5, v5, v6

    sub-int/2addr v4, v5

    int-to-float v4, v4

    .line 1214
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

    .line 1217
    invoke-virtual {v5, v7, v8}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1218
    new-instance v7, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5$19;

    invoke-direct {v7, p0, v2, v1}, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5$19;-><init>(Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;Landroid/widget/TextView;Landroid/widget/LinearLayout;)V

    invoke-virtual {v5, v7}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1243
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mHoverCollapsedTabContainer:Landroid/widget/LinearLayout;

    sget v2, Lcom/transsion/camera/featurelibs/commonwidget/R$id;->expand_arrow:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 1244
    new-array v2, v3, [F

    fill-array-data v2, :array_100

    const-string v7, "alpha"

    invoke-static {v1, v7, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    const-wide/16 v8, 0xc8

    .line 1245
    invoke-virtual {v1, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1246
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mShowElementAlphaInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1248
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mHoverCollapsedTabContainer:Landroid/widget/LinearLayout;

    sget v10, Lcom/transsion/camera/featurelibs/commonwidget/R$id;->collapsed_tab_text:I

    invoke-virtual {v2, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 1249
    new-instance v10, Landroid/animation/ArgbEvaluator;

    invoke-direct {v10}, Landroid/animation/ArgbEvaluator;-><init>()V

    iget v11, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mSelectedColor:I

    .line 1250
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    iget v12, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mUnSelectedColor:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    filled-new-array {v11, v12}, [Ljava/lang/Object;

    move-result-object v11

    .line 1249
    const-string v12, "textColor"

    invoke-static {v2, v12, v10, v11}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    move-result-object v2

    const-wide/16 v10, 0x64

    .line 1251
    invoke-virtual {v2, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1253
    iget-object v10, p0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mFilterTopUI:Landroid/view/View;

    new-array v11, v3, [F

    fill-array-data v11, :array_108

    invoke-static {v10, v7, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v10

    const-wide/16 v11, 0x96

    .line 1254
    invoke-virtual {v10, v11, v12}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 1255
    invoke-virtual {v10, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1256
    iget-object v13, p0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mShowElementAlphaInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v10, v13}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1258
    iget-object v13, p0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mCollapsedTabContainer:Landroid/widget/LinearLayout;

    new-array v14, v3, [F

    fill-array-data v14, :array_110

    invoke-static {v13, v7, v14}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v13

    .line 1259
    invoke-virtual {v13, v11, v12}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 1260
    invoke-virtual {v13, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1261
    iget-object v11, p0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mShowElementAlphaInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v13, v11}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1263
    iget-object v11, p0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mTabMenuContainer:Landroid/view/ViewGroup;

    new-array v12, v3, [F

    fill-array-data v12, :array_118

    invoke-static {v11, v7, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v11

    .line 1264
    invoke-virtual {v11, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1265
    iget-object v12, p0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mHideElementAlphaInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v11, v12}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1267
    iget-object v12, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mMainSwitch:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    new-array v14, v3, [F

    fill-array-data v14, :array_120

    invoke-static {v12, v7, v14}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    .line 1268
    invoke-virtual {v7, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1269
    iget-object v8, p0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mHideElementAlphaInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v7, v8}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const/4 v8, 0x7

    .line 1271
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

    .line 1275
    new-instance v1, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5$20;

    invoke-direct {v1, p0}, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5$20;-><init>(Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1298
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

    .line 368
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mVideoSightShockMenuState:Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockMenuState;

    invoke-virtual {v0}, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockMenuState;->needShowTabBar()Z

    move-result v0

    .line 369
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mVideoSightShockMenuState:Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockMenuState;

    invoke-virtual {v1}, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockMenuState;->needShowCollapsedTab()Z

    move-result v1

    .line 370
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mVideoSightShockMenuState:Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockMenuState;

    invoke-virtual {v2}, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockMenuState;->needShowScrollerBackground()Z

    move-result v2

    .line 371
    iget-object v3, p0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mVideoSightShockMenuState:Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockMenuState;

    invoke-virtual {v3}, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockMenuState;->needShowScrollerBar()Z

    move-result v3

    .line 373
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

    .line 374
    iget-object v4, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mMainSwitch:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    if-eqz v0, :cond_2a

    move v0, v6

    goto :goto_2b

    :cond_2a
    move v0, v5

    :goto_2b
    invoke-virtual {v4, v0}, Landroid/view/View;->setVisibility(I)V

    .line 375
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mCollapsedTabContainer:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_34

    move v1, v6

    goto :goto_35

    :cond_34
    move v1, v5

    :goto_35
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 376
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mFilterTopUI:Landroid/view/View;

    if-eqz v3, :cond_3e

    move v1, v6

    goto :goto_3f

    :cond_3e
    move v1, v5

    :goto_3f
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 377
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mCollapsedScrollerBackground:Landroid/widget/FrameLayout;

    if-eqz v2, :cond_47

    move v5, v6

    :cond_47
    invoke-virtual {p0, v5}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private updateTabSwitchLayout(ZLjava/lang/Runnable;)V
    .registers 9

    .line 403
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mTabMenuContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 405
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mMainSwitch:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 406
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mVideoSightShockMenuState:Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockMenuState;

    sget-object v3, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockMenuState$TemplateState;->NO_EFFECT:Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockMenuState$TemplateState;

    invoke-virtual {v2, v3}, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockMenuState;->isSameState(Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockMenuState$TemplateState;)Z

    move-result v2

    if-eqz v2, :cond_24

    .line 407
    sget v2, Lcom/transsion/camera/featurelibs/commonwidget/R$dimen;->tab_internal_margin:I

    .line 408
    iget-object v3, p0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mResources:Landroid/content/res/Resources;

    sget v4, Lcom/transsion/camera/featurelibs/commonwidget/R$dimen;->tab_container_left_margin:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    :goto_22
    add-int/2addr v3, v1

    goto :goto_2f

    .line 411
    :cond_24
    sget v2, Lcom/transsion/camera/featurelibs/commonwidget/R$dimen;->tab_internal_margin_with_small_scroller_bar:I

    .line 412
    iget-object v3, p0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mResources:Landroid/content/res/Resources;

    sget v4, Lcom/transsion/camera/featurelibs/commonwidget/R$dimen;->tab_container_left_margin_with_small_scroller_bar:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    goto :goto_22

    :goto_2f
    if-eqz p1, :cond_81

    .line 417
    iget p1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    filled-new-array {p1, v3}, [I

    move-result-object p1

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 418
    new-instance p2, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5$$ExternalSyntheticLambda8;

    invoke-direct {p2, p0, v0}, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5$$ExternalSyntheticLambda8;-><init>(Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;Landroid/widget/FrameLayout$LayoutParams;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 422
    iget-object p2, p0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mTabMenu:Lcom/transsion/camera/app/ui/widget/menu/TabMenuCustomView;

    invoke-virtual {p2}, Lcom/transsion/camera/app/ui/widget/menu/TabMenuCustomView;->getCurrentTabInternalMargin()I

    move-result p2

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mResources:Landroid/content/res/Resources;

    .line 423
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    filled-new-array {p2, v1}, [I

    move-result-object p2

    .line 422
    invoke-static {p2}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p2

    .line 424
    new-instance v1, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5$$ExternalSyntheticLambda9;

    invoke-direct {v1, p0}, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5$$ExternalSyntheticLambda9;-><init>(Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;)V

    invoke-virtual {p2, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 427
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    const-wide/16 v4, 0xc8

    .line 428
    invoke-virtual {v1, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    const/4 v4, 0x2

    .line 429
    new-array v4, v4, [Landroid/animation/Animator;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 p1, 0x1

    aput-object p2, v4, p1

    invoke-virtual {v1, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 430
    new-instance p1, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5$1;

    invoke-direct {p1, p0, v2, v0, v3}, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5$1;-><init>(Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;ILandroid/widget/FrameLayout$LayoutParams;I)V

    invoke-virtual {v1, p1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 439
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    return-void

    .line 441
    :cond_81
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mTabMenu:Lcom/transsion/camera/app/ui/widget/menu/TabMenuCustomView;

    invoke-virtual {p1, v2}, Lcom/transsion/camera/app/ui/widget/menu/TabMenuCustomView;->updateTabSwitchLeftMarginByResId(I)V

    .line 442
    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 443
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mTabMenuContainer:Landroid/view/ViewGroup;

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 444
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mTabMenuContainer:Landroid/view/ViewGroup;

    new-instance p1, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5$$ExternalSyntheticLambda10;

    invoke-direct {p1, p2}, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5$$ExternalSyntheticLambda10;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p0, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public adjustControlView(IIIII)V
    .registers 12

    .line 339
    iget-object p2, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mControlViewContent:Landroid/view/ViewGroup;

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    .line 340
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

    .line 110
    invoke-super {p0}, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->init()V

    .line 111
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mVideoSightShockMenuState:Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockMenuState;

    invoke-virtual {v0}, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockMenuState;->getStateTransitionHandler()Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockMenuState$StateTransitionHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockMenuState$StateTransitionHandler;->builder()Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockMenuState$StateTransitionHandler$TransitionBuilder;

    move-result-object v0

    sget-object v1, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockMenuState$TemplateState;->NO_EFFECT:Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockMenuState$TemplateState;

    sget-object v2, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockMenuState$TemplateState;->EXPAND_SCROLLER_BAR:Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockMenuState$TemplateState;

    new-instance v3, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5$$ExternalSyntheticLambda2;

    invoke-direct {v3, p0}, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5$$ExternalSyntheticLambda2;-><init>(Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;)V

    .line 112
    invoke-virtual {v0, v1, v2, v3}, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockMenuState$StateTransitionHandler$TransitionBuilder;->add(Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockMenuState$TemplateState;Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockMenuState$TemplateState;Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockMenuState$TransitionAction;)Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockMenuState$StateTransitionHandler$TransitionBuilder;

    move-result-object v0

    sget-object v3, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockMenuState$TemplateState;->COLLAPSE_SCROLLER_BAR:Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockMenuState$TemplateState;

    new-instance v4, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5$$ExternalSyntheticLambda3;

    invoke-direct {v4, p0}, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5$$ExternalSyntheticLambda3;-><init>(Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;)V

    .line 114
    invoke-virtual {v0, v1, v3, v4}, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockMenuState$StateTransitionHandler$TransitionBuilder;->add(Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockMenuState$TemplateState;Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockMenuState$TemplateState;Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockMenuState$TransitionAction;)Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockMenuState$StateTransitionHandler$TransitionBuilder;

    move-result-object v0

    new-instance v4, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5$$ExternalSyntheticLambda4;

    invoke-direct {v4, p0}, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5$$ExternalSyntheticLambda4;-><init>(Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;)V

    .line 116
    invoke-virtual {v0, v2, v1, v4}, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockMenuState$StateTransitionHandler$TransitionBuilder;->add(Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockMenuState$TemplateState;Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockMenuState$TemplateState;Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockMenuState$TransitionAction;)Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockMenuState$StateTransitionHandler$TransitionBuilder;

    move-result-object v0

    new-instance v4, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5$$ExternalSyntheticLambda5;

    invoke-direct {v4, p0}, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5$$ExternalSyntheticLambda5;-><init>(Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;)V

    .line 118
    invoke-virtual {v0, v2, v3, v4}, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockMenuState$StateTransitionHandler$TransitionBuilder;->add(Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockMenuState$TemplateState;Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockMenuState$TemplateState;Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockMenuState$TransitionAction;)Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockMenuState$StateTransitionHandler$TransitionBuilder;

    move-result-object v0

    new-instance v4, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5$$ExternalSyntheticLambda6;

    invoke-direct {v4, p0}, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5$$ExternalSyntheticLambda6;-><init>(Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;)V

    .line 120
    invoke-virtual {v0, v3, v1, v4}, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockMenuState$StateTransitionHandler$TransitionBuilder;->add(Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockMenuState$TemplateState;Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockMenuState$TemplateState;Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockMenuState$TransitionAction;)Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockMenuState$StateTransitionHandler$TransitionBuilder;

    move-result-object v0

    new-instance v1, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0}, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5$$ExternalSyntheticLambda7;-><init>(Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;)V

    .line 122
    invoke-virtual {v0, v3, v2, v1}, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockMenuState$StateTransitionHandler$TransitionBuilder;->add(Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockMenuState$TemplateState;Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockMenuState$TemplateState;Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockMenuState$TransitionAction;)Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockMenuState$StateTransitionHandler$TransitionBuilder;

    move-result-object p0

    .line 124
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockMenuState$StateTransitionHandler$TransitionBuilder;->register()V

    return-void
.end method

.method protected initMainSwitchListener()V
    .registers 4

    .line 535
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mMainSwitch:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    const v1, 0x3f4ccccd    # 0.8f

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/transsion/camera/utils/MultiTouchManager;->pressSealAnimation(Landroid/view/View;FLandroid/animation/AnimatorListenerAdapter;)V

    .line 536
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mMainSwitch:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    new-instance v1, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5$$ExternalSyntheticLambda19;

    invoke-direct {v1, p0}, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5$$ExternalSyntheticLambda19;-><init>(Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected initVideoEffectView(Landroid/view/View;Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/view/View;ILcom/transsion/camera/app/common/IAppUI;)V
    .registers 16

    .line 234
    sget p5, Lcom/transsion/camera/R$layout;->tab_item_layout_ui5:I

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mTabViewSwitchContainer:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {p2, p5, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p5

    check-cast p5, Landroid/widget/LinearLayout;

    .line 235
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mTabViewSwitchContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 237
    sget v0, Lcom/transsion/camera/R$id;->tab_switch_item:I

    invoke-virtual {p5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mEffectSwitch:Landroid/widget/LinearLayout;

    .line 238
    sget v0, Lcom/transsion/camera/R$id;->tab_rotate_layout:I

    invoke-virtual {p5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/ui/widget/RotateLayout;

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mEffectRotateLayout:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    .line 239
    sget v0, Lcom/transsion/camera/R$id;->tab_indicator:I

    invoke-virtual {p5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mEffectSwitchDot:Landroid/view/View;

    .line 241
    sget v0, Lcom/transsion/camera/R$id;->tab_text:I

    invoke-virtual {p5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p5

    check-cast p5, Landroid/widget/TextView;

    iput-object p5, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mEffectSwitchText:Landroid/widget/TextView;

    .line 242
    sget v0, Lcom/transsion/camera/R$string;->video_effect:I

    invoke-virtual {p5, v0}, Landroid/widget/TextView;->setText(I)V

    .line 244
    iget-object p5, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mEffectSwitchText:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lcom/transsion/camera/R$color;->video_sight_shock_item_selected_shadow_color:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result p1

    const/high16 v0, 0x40800000    # 4.0f

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p5, v0, v1, v1, p1}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 245
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

    .line 247
    iget p1, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mSupportCount:I

    const/4 p2, 0x1

    if-ne p1, p2, :cond_74

    .line 248
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mEffectSwitchDot:Landroid/view/View;

    const/16 p3, 0x8

    invoke-virtual {p1, p3}, Landroid/view/View;->setVisibility(I)V

    .line 249
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mEffectSwitchText:Landroid/widget/TextView;

    invoke-virtual {p1, p3}, Landroid/view/View;->setVisibility(I)V

    .line 251
    :cond_74
    iget-boolean p1, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mSelected:Z

    if-nez p1, :cond_7d

    .line 252
    invoke-virtual {p0, p5}, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->setVideoSightMode(Ljava/lang/String;)V

    .line 253
    iput-boolean p2, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mSelected:Z

    :cond_7d
    return-void
.end method

.method protected initVideoFilterView(Landroid/view/View;Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/view/View;ILcom/transsion/camera/app/common/IAppUI;)V
    .registers 18

    .line 206
    sget v0, Lcom/transsion/camera/R$layout;->tab_item_layout_ui5:I

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mTabViewSwitchContainer:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {p2, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 207
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mTabViewSwitchContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 209
    sget v1, Lcom/transsion/camera/R$id;->tab_switch_item:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mFilterSwitch:Landroid/widget/LinearLayout;

    .line 210
    sget v1, Lcom/transsion/camera/R$id;->tab_rotate_layout:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/ui/widget/RotateLayout;

    iput-object v1, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mFilterRotateLayout:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    .line 211
    sget v1, Lcom/transsion/camera/R$id;->tab_indicator:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mFilterSwitchDot:Landroid/view/View;

    .line 213
    sget v1, Lcom/transsion/camera/R$id;->tab_text:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mFilterSwitchText:Landroid/widget/TextView;

    .line 214
    sget v1, Lcom/transsion/camera/R$string;->video_filter:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 215
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mFilterSwitchText:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v1, Lcom/transsion/camera/R$color;->video_sight_shock_item_selected_shadow_color:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getColor(I)I

    move-result p1

    const/high16 v1, 0x40800000    # 4.0f

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v2, v2, p1}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 217
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

    .line 218
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mVideoFilterUI:Lcom/transsion/camera/ui/setting/videosightshock/ui/VideoFilterUI;

    invoke-virtual {p1}, Lcom/transsion/camera/ui/setting/videosightshock/ui/VideoFilterUI;->getScrollerViewContainer()Landroid/widget/RelativeLayout;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mScrollerViewContainer:Landroid/widget/RelativeLayout;

    .line 220
    iget p1, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mSupportCount:I

    const/4 p2, 0x1

    if-ne p1, p2, :cond_7f

    .line 221
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mFilterSwitchDot:Landroid/view/View;

    const/16 p3, 0x8

    invoke-virtual {p1, p3}, Landroid/view/View;->setVisibility(I)V

    .line 222
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mFilterSwitchText:Landroid/widget/TextView;

    invoke-virtual {p1, p3}, Landroid/view/View;->setVisibility(I)V

    .line 224
    :cond_7f
    iget-boolean p1, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mSelected:Z

    if-nez p1, :cond_88

    .line 225
    invoke-virtual {p0, v0}, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->setVideoSightMode(Ljava/lang/String;)V

    .line 226
    iput-boolean p2, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mSelected:Z

    .line 229
    :cond_88
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mFilterSwitch:Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mCurrentSelectTabSwitch:Landroid/widget/LinearLayout;

    return-void
.end method

.method protected initVideoFrameView(Landroid/view/View;Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/view/View;ILcom/transsion/camera/app/common/IAppUI;)V
    .registers 14

    .line 259
    sget p5, Lcom/transsion/camera/R$layout;->tab_item_layout_ui5:I

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mTabViewSwitchContainer:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {p2, p5, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p5

    check-cast p5, Landroid/widget/LinearLayout;

    .line 260
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mTabViewSwitchContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 262
    sget v0, Lcom/transsion/camera/R$id;->tab_switch_item:I

    invoke-virtual {p5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mFrameSwitch:Landroid/widget/LinearLayout;

    .line 263
    sget v0, Lcom/transsion/camera/R$id;->tab_rotate_layout:I

    invoke-virtual {p5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/ui/widget/RotateLayout;

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mFrameRotateLayout:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    .line 265
    sget v0, Lcom/transsion/camera/R$id;->tab_text:I

    invoke-virtual {p5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mFrameSwitchText:Landroid/widget/TextView;

    .line 266
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v1, Lcom/transsion/camera/R$color;->video_sight_shock_item_selected_shadow_color:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getColor(I)I

    move-result p1

    const/high16 v1, 0x40800000    # 4.0f

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v2, v2, p1}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 267
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mFrameSwitchText:Landroid/widget/TextView;

    sget v0, Lcom/transsion/camera/R$string;->video_frame:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 269
    sget p1, Lcom/transsion/camera/R$id;->tab_indicator:I

    invoke-virtual {p5, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mFrameSwitchDot:Landroid/view/View;

    .line 270
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

    .line 272
    iget p1, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mSupportCount:I

    const/4 p2, 0x1

    if-ne p1, p2, :cond_74

    .line 273
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mFrameSwitchDot:Landroid/view/View;

    const/16 p3, 0x8

    invoke-virtual {p1, p3}, Landroid/view/View;->setVisibility(I)V

    .line 274
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mFrameSwitchText:Landroid/widget/TextView;

    invoke-virtual {p1, p3}, Landroid/view/View;->setVisibility(I)V

    .line 276
    :cond_74
    iget-boolean p1, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mSelected:Z

    if-nez p1, :cond_7d

    .line 277
    invoke-virtual {p0, p5}, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->setVideoSightMode(Ljava/lang/String;)V

    .line 278
    iput-boolean p2, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mSelected:Z

    :cond_7d
    return-void
.end method

.method public initView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/view/View;ILcom/transsion/camera/app/common/IAppUI;)V
    .registers 15

    .line 134
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mViewInitialized:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_3e

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mControlView:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_3e

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mInflatedRootView:Landroid/view/View;

    if-eqz v0, :cond_3e

    .line 136
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    .line 137
    instance-of p3, p1, Landroid/view/ViewGroup;

    if-eqz p3, :cond_1e

    if-eq p1, p2, :cond_1e

    .line 138
    check-cast p1, Landroid/view/ViewGroup;

    iget-object p3, p0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mInflatedRootView:Landroid/view/View;

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 140
    :cond_1e
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mInflatedRootView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-nez p1, :cond_2b

    .line 141
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mInflatedRootView:Landroid/view/View;

    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 144
    :cond_2b
    iput-object p5, p0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    .line 145
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mControlView:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mResources:Landroid/content/res/Resources;

    .line 146
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mControlView:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 147
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->updateMenuComponentVisible()V

    return-void

    .line 151
    :cond_3e
    iput-object p5, p0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    .line 152
    sget v0, Lcom/transsion/camera/R$layout;->video_sight_shock_control_panel_layout_ui5:I

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 153
    iput-object v3, p0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mInflatedRootView:Landroid/view/View;

    .line 154
    invoke-virtual {p2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 155
    sget p2, Lcom/transsion/camera/R$id;->tab_control_view_container:I

    invoke-virtual {v3, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/transsion/camera/app/ui/widget/RotateLayout;

    iput-object p2, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mControlViewContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    .line 156
    sget p2, Lcom/transsion/camera/R$id;->video_sight_shock_control:I

    invoke-virtual {v3, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/FrameLayout;

    iput-object p2, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mControlView:Landroid/widget/FrameLayout;

    .line 157
    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 158
    iget-object p2, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mControlViewContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {p2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mResources:Landroid/content/res/Resources;

    .line 160
    sget p2, Lcom/transsion/camera/R$id;->tab_control_view_container:I

    invoke-virtual {v3, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/transsion/camera/app/ui/widget/menu/TabMenuCustomView;

    iput-object p2, p0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mTabMenu:Lcom/transsion/camera/app/ui/widget/menu/TabMenuCustomView;

    .line 161
    invoke-virtual {p2}, Lcom/transsion/camera/app/ui/widget/menu/TabMenuCustomView;->getTabViewSwitchContainer()Landroid/widget/LinearLayout;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mTabViewSwitchContainer:Landroid/widget/LinearLayout;

    .line 162
    iget-object p2, p0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mTabMenu:Lcom/transsion/camera/app/ui/widget/menu/TabMenuCustomView;

    invoke-virtual {p2}, Lcom/transsion/camera/app/ui/widget/menu/TabMenuCustomView;->getTopUI()Landroid/widget/FrameLayout;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mTopUI:Landroid/widget/FrameLayout;

    .line 163
    iget-object p2, p0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mTabMenu:Lcom/transsion/camera/app/ui/widget/menu/TabMenuCustomView;

    invoke-virtual {p2}, Lcom/transsion/camera/app/ui/widget/menu/TabMenuCustomView;->getMenuContainer()Landroid/widget/LinearLayout;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mControlViewContent:Landroid/view/ViewGroup;

    .line 164
    iget-object p2, p0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mTabMenu:Lcom/transsion/camera/app/ui/widget/menu/TabMenuCustomView;

    invoke-virtual {p2}, Lcom/transsion/camera/app/ui/widget/menu/TabMenuCustomView;->getEffectListContainer()Landroid/widget/FrameLayout;

    move-result-object v5

    .line 165
    iget-object p2, p0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mTabMenu:Lcom/transsion/camera/app/ui/widget/menu/TabMenuCustomView;

    invoke-virtual {p2}, Lcom/transsion/camera/app/ui/widget/menu/TabMenuCustomView;->getTabMenuContainer()Landroid/view/ViewGroup;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mTabMenuContainer:Landroid/view/ViewGroup;

    .line 167
    iget-object p2, p0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mTabMenu:Lcom/transsion/camera/app/ui/widget/menu/TabMenuCustomView;

    invoke-virtual {p2}, Lcom/transsion/camera/app/ui/widget/menu/TabMenuCustomView;->getCollapsedTabContainer()Landroid/widget/LinearLayout;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mCollapsedTabContainer:Landroid/widget/LinearLayout;

    .line 168
    sget v0, Lcom/transsion/camera/featurelibs/commonwidget/R$id;->collapsed_tab_text:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mCollapsedTabTextView:Landroid/widget/TextView;

    .line 169
    sget v0, Lcom/transsion/camera/R$string;->video_filter:I

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(I)V

    .line 170
    iget-object p2, p0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mCollapsedTabContainer:Landroid/widget/LinearLayout;

    sget v0, Lcom/transsion/camera/featurelibs/commonwidget/R$id;->expand_arrow:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mCollapsedTabExpandArrow:Landroid/widget/ImageView;

    .line 172
    iget-object p2, p0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mTabMenu:Lcom/transsion/camera/app/ui/widget/menu/TabMenuCustomView;

    invoke-virtual {p2}, Lcom/transsion/camera/app/ui/widget/menu/TabMenuCustomView;->getHoverTabContainer()Landroid/widget/LinearLayout;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mHoverCollapsedTabContainer:Landroid/widget/LinearLayout;

    .line 173
    sget v0, Lcom/transsion/camera/featurelibs/commonwidget/R$id;->collapsed_tab_text:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mHoverTabTextView:Landroid/widget/TextView;

    .line 174
    sget v0, Lcom/transsion/camera/R$string;->video_filter:I

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(I)V

    .line 176
    iget-object p2, p0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mTabMenu:Lcom/transsion/camera/app/ui/widget/menu/TabMenuCustomView;

    invoke-virtual {p2}, Lcom/transsion/camera/app/ui/widget/menu/TabMenuCustomView;->getScrollerViewBackground()Landroid/widget/FrameLayout;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mCollapsedScrollerBackground:Landroid/widget/FrameLayout;

    .line 178
    iget-object p2, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mVideoFilterUI:Lcom/transsion/camera/ui/setting/videosightshock/ui/VideoFilterUI;

    move-object v2, p0

    move-object v4, p1

    move-object v6, p3

    move v7, p4

    move-object v8, p5

    if-eqz p2, :cond_f6

    .line 179
    invoke-virtual/range {v2 .. v8}, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->initVideoFilterView(Landroid/view/View;Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/view/View;ILcom/transsion/camera/app/common/IAppUI;)V

    .line 180
    iget-object p0, v2, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mVideoFilterUI:Lcom/transsion/camera/ui/setting/videosightshock/ui/VideoFilterUI;

    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/videosightshock/ui/VideoFilterUI;->getFilterTopUI()Landroid/view/View;

    move-result-object p0

    iput-object p0, v2, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mFilterTopUI:Landroid/view/View;

    .line 181
    iget-object p0, v2, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mVideoFilterUI:Lcom/transsion/camera/ui/setting/videosightshock/ui/VideoFilterUI;

    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/videosightshock/ui/VideoFilterUI;->getScrollerRulerView()Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;

    move-result-object p0

    iput-object p0, v2, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mScrollerRulerView:Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;

    .line 184
    :cond_f6
    iget-object p0, v2, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mVideoEffectUI:Lcom/transsion/camera/ui/setting/videosightshock/ui/IVssUI;

    if-eqz p0, :cond_fd

    .line 185
    invoke-virtual/range {v2 .. v8}, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->initVideoEffectView(Landroid/view/View;Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/view/View;ILcom/transsion/camera/app/common/IAppUI;)V

    .line 188
    :cond_fd
    iget-object p0, v2, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mVideoFrameUI:Lcom/transsion/camera/ui/setting/videosightshock/ui/VideoFrameUI;

    if-eqz p0, :cond_104

    .line 189
    invoke-virtual/range {v2 .. v8}, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->initVideoFrameView(Landroid/view/View;Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/view/View;ILcom/transsion/camera/app/common/IAppUI;)V

    .line 192
    :cond_104
    iget-object p0, v2, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mTabMenu:Lcom/transsion/camera/app/ui/widget/menu/TabMenuCustomView;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/widget/menu/TabMenuCustomView;->getNoEffectImageView()Lcom/transsion/camera/app/ui/widget/RotateImageView;

    move-result-object p0

    iput-object p0, v2, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mMainSwitch:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    .line 193
    iget p1, v2, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mSupportCount:I

    const/4 p2, 0x1

    if-ne p1, p2, :cond_116

    const/16 p1, 0x8

    .line 194
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 197
    :cond_116
    invoke-virtual {v2, v3}, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->initTabColor(Landroid/view/View;)V

    .line 198
    invoke-virtual {v2}, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->initViewListenerIfNeed()V

    .line 199
    iget-object p0, v2, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mResources:Landroid/content/res/Resources;

    sget p1, Lcom/transsion/camera/R$dimen;->video_filter_scroller_container_width:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p0

    iput p0, v2, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mScrollerRulerViewWidth:I

    .line 201
    iput-boolean p2, v2, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mViewInitialized:Z

    return-void
.end method

.method protected initViewListenerIfNeed()V
    .registers 5

    .line 454
    iget v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mSupportCount:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    return-void

    .line 457
    :cond_6
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->initMainSwitchListener()V

    .line 458
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mbSupportFilter:Z

    const/4 v1, 0x0

    const v2, 0x3f4ccccd    # 0.8f

    if-eqz v0, :cond_20

    .line 459
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mFilterSwitch:Landroid/widget/LinearLayout;

    new-instance v3, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5$$ExternalSyntheticLambda14;

    invoke-direct {v3, p0}, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5$$ExternalSyntheticLambda14;-><init>(Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 478
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mFilterSwitch:Landroid/widget/LinearLayout;

    invoke-static {v0, v2, v1}, Lcom/transsion/camera/utils/MultiTouchManager;->pressSealAnimation(Landroid/view/View;FLandroid/animation/AnimatorListenerAdapter;)V

    .line 481
    :cond_20
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mbSupportEffect:Z

    if-eqz v0, :cond_33

    .line 482
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mEffectSwitch:Landroid/widget/LinearLayout;

    new-instance v3, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5$$ExternalSyntheticLambda15;

    invoke-direct {v3, p0}, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5$$ExternalSyntheticLambda15;-><init>(Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 495
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mEffectSwitch:Landroid/widget/LinearLayout;

    invoke-static {v0, v2, v1}, Lcom/transsion/camera/utils/MultiTouchManager;->pressSealAnimation(Landroid/view/View;FLandroid/animation/AnimatorListenerAdapter;)V

    .line 498
    :cond_33
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mbSupportFrame:Z

    if-eqz v0, :cond_46

    .line 499
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mFrameSwitch:Landroid/widget/LinearLayout;

    new-instance v3, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5$$ExternalSyntheticLambda16;

    invoke-direct {v3, p0}, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5$$ExternalSyntheticLambda16;-><init>(Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 512
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mFrameSwitch:Landroid/widget/LinearLayout;

    invoke-static {v0, v2, v1}, Lcom/transsion/camera/utils/MultiTouchManager;->pressSealAnimation(Landroid/view/View;FLandroid/animation/AnimatorListenerAdapter;)V

    .line 515
    :cond_46
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mCollapsedTabContainer:Landroid/widget/LinearLayout;

    invoke-static {v0}, Lcom/transsion/camera/utils/MultiTouchManager;->pressSealWithoutAnimation(Landroid/view/View;)V

    .line 516
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mCollapsedTabContainer:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5$$ExternalSyntheticLambda17;

    invoke-direct {v1, p0}, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5$$ExternalSyntheticLambda17;-><init>(Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 523
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mCollapsedScrollerBackground:Landroid/widget/FrameLayout;

    invoke-static {v0}, Lcom/transsion/camera/utils/MultiTouchManager;->pressSealWithoutAnimation(Landroid/view/View;)V

    .line 524
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mCollapsedScrollerBackground:Landroid/widget/FrameLayout;

    new-instance v1, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5$$ExternalSyntheticLambda18;

    invoke-direct {v1, p0}, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5$$ExternalSyntheticLambda18;-><init>(Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public notifyCameraOperateAction(I)V
    .registers 4

    .line 345
    invoke-super {p0, p1}, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->notifyCameraOperateAction(I)V

    const/16 v0, 0x13

    if-eq p1, v0, :cond_8

    return-void

    .line 348
    :cond_8
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mVideoSightShockMenuState:Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockMenuState;

    sget-object v0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockMenuState$TemplateState;->NO_EFFECT:Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockMenuState$TemplateState;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockMenuState;->update(Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockMenuState$TemplateState;Z)V

    .line 349
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mVideoFilterUI:Lcom/transsion/camera/ui/setting/videosightshock/ui/VideoFilterUI;

    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/videosightshock/ui/VideoFilterUI;->resetCurrentItem()V

    return-void
.end method

.method public onItemSelectStateChanged(Lcom/transsion/camera/ui/setting/videosightshock/bean/VidSigShockItemBean;)V
    .registers 4

    .line 356
    invoke-super {p0, p1}, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->onItemSelectStateChanged(Lcom/transsion/camera/ui/setting/videosightshock/bean/VidSigShockItemBean;)V

    .line 358
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mCurrentSelectStyle:Ljava/lang/String;

    const-string v1, "key_video_filter_style"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_20

    iget-object p1, p1, Lcom/transsion/camera/ui/setting/videosightshock/bean/VidSigShockItemBean;->mValue:Ljava/lang/String;

    const-string v0, "0"

    .line 359
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_20

    .line 361
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mVideoSightShockMenuState:Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockMenuState;

    sget-object p1, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockMenuState$TemplateState;->EXPAND_SCROLLER_BAR:Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockMenuState$TemplateState;

    invoke-virtual {p0, p1, v1}, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockMenuState;->update(Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockMenuState$TemplateState;Z)V

    return-void

    .line 363
    :cond_20
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mVideoSightShockMenuState:Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockMenuState;

    sget-object p1, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockMenuState$TemplateState;->NO_EFFECT:Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockMenuState$TemplateState;

    invoke-virtual {p0, p1, v1}, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockMenuState;->update(Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockMenuState$TemplateState;Z)V

    return-void
.end method

.method public onOrientationChanged(I)V
    .registers 3

    .line 551
    invoke-super {p0, p1}, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->onOrientationChanged(I)V

    const/16 v0, 0x5a

    if-eq p1, v0, :cond_b

    const/16 v0, 0x10e

    if-ne p1, v0, :cond_c

    :cond_b
    const/4 p1, 0x0

    .line 555
    :cond_c
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mCollapsedTabTextView:Landroid/widget/TextView;

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/view/View;->setRotation(F)V

    .line 556
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mHoverTabTextView:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/view/View;->setRotation(F)V

    return-void
.end method

.method public recoverSettingValueAndUI()V
    .registers 2

    .line 586
    new-instance v0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5$$ExternalSyntheticLambda20;

    invoke-direct {v0, p0}, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5$$ExternalSyntheticLambda20;-><init>(Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;)V

    invoke-virtual {p0, v0}, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->updateScrollerViewLayout(Ljava/lang/Runnable;)V

    .line 587
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->updateMenuComponentVisible()V

    return-void
.end method

.method protected resetTabState()V
    .registers 3

    .line 580
    invoke-super {p0}, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->resetTabState()V

    .line 581
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mVideoSightShockMenuState:Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockMenuState;

    sget-object v0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockMenuState$TemplateState;->NO_EFFECT:Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockMenuState$TemplateState;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockMenuState;->update(Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockMenuState$TemplateState;Z)V

    return-void
.end method

.method public setEnable(Z)V
    .registers 3

    if-eqz p1, :cond_7

    .line 561
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mIsAnimationRunning:Z

    if-eqz v0, :cond_7

    return-void

    .line 564
    :cond_7
    invoke-super {p0, p1}, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->setEnable(Z)V

    .line 565
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mTabMenu:Lcom/transsion/camera/app/ui/widget/menu/TabMenuCustomView;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/ui/widget/menu/TabMenuCustomView;->setEnable(Z)V

    .line 566
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mMainSwitch:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method

.method protected updateControlViewLayout(II)V
    .registers 9

    .line 284
    invoke-virtual {p0, p1}, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->updateSwitchTextOrientation(I)V

    .line 285
    iget v1, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mDotsMarginBottom:I

    iget v2, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mDefaultControlViewHeight:I

    iget v3, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mControlPadding:I

    move-object v0, p0

    move v4, p1

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->adjustControlView(IIIII)V

    const/4 p0, 0x0

    .line 286
    invoke-virtual {v0, p0}, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->updateTabSwitchLayout(Z)V

    .line 288
    iget-object p1, v0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mControlViewContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    .line 289
    invoke-virtual {p1, p0, p0, p0, p0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    const/16 p2, 0x50

    .line 290
    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 291
    iget-object v1, v0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v1}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getBottomBarHeight()I

    move-result v1

    iget-object v2, v0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mResources:Landroid/content/res/Resources;

    sget v3, Lcom/transsion/camera/featurelibs/commonwidget/R$dimen;->common_menu_bottom_margin:I

    .line 292
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 293
    iget-object v1, v0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mControlViewContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v1, p0, p0}, Lcom/transsion/camera/app/ui/widget/RotateLayout;->setOrientation(IZ)V

    .line 294
    iget-object p0, v0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mControlViewContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {p0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 296
    iget-object p0, v0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mTopUI:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroid/widget/LinearLayout$LayoutParams;

    .line 297
    iget-object p1, v0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mResources:Landroid/content/res/Resources;

    sget v1, Lcom/transsion/camera/featurelibs/commonwidget/R$dimen;->top_ui_left_margin:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 298
    iget-object p1, v0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mResources:Landroid/content/res/Resources;

    sget v1, Lcom/transsion/camera/R$dimen;->video_sight_shock_top_ui_bottom_margin:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 299
    iget-object p1, v0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mTopUI:Landroid/widget/FrameLayout;

    invoke-virtual {p1, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 301
    iget-object p0, v0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mTabMenuContainer:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroid/widget/FrameLayout$LayoutParams;

    .line 302
    iget-object p1, v0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mResources:Landroid/content/res/Resources;

    sget v1, Lcom/transsion/camera/R$dimen;->video_sight_shock_tab_bottom_margin:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 303
    iput p2, p0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 304
    iget-object p1, v0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mTabMenuContainer:Landroid/view/ViewGroup;

    invoke-virtual {p1, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 306
    iget-object p0, v0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mMainSwitch:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroid/widget/FrameLayout$LayoutParams;

    .line 307
    iput p2, p0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 308
    iget-object p1, v0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mResources:Landroid/content/res/Resources;

    sget v1, Lcom/transsion/camera/R$dimen;->no_effect_bottom_margin:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 309
    iget-object p1, v0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mMainSwitch:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {p1, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 311
    iget-object p0, v0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mCollapsedTabContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroid/widget/FrameLayout$LayoutParams;

    .line 312
    iput p2, p0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 313
    iget-object p1, v0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mResources:Landroid/content/res/Resources;

    sget p2, Lcom/transsion/camera/R$dimen;->video_sight_shock_collapsed_tab_bottom_margin:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 314
    iget-object p1, v0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mCollapsedTabContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 315
    iget-object p1, v0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mHoverCollapsedTabContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 317
    iget-object p0, v0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mCollapsedScrollerBackground:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroid/widget/FrameLayout$LayoutParams;

    const/16 p1, 0x55

    .line 318
    iput p1, p0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 319
    iget-object p1, v0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mResources:Landroid/content/res/Resources;

    sget p2, Lcom/transsion/camera/featurelibs/commonwidget/R$dimen;->scroller_background_right_margin:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 320
    iget-object p1, v0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mResources:Landroid/content/res/Resources;

    sget p2, Lcom/transsion/camera/featurelibs/commonwidget/R$dimen;->scroller_background_bottom_margin:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 321
    iget-object p1, v0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mCollapsedScrollerBackground:Landroid/widget/FrameLayout;

    invoke-virtual {p1, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 323
    iget-object p0, v0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mVideoFilterUI:Lcom/transsion/camera/ui/setting/videosightshock/ui/VideoFilterUI;

    iget-object p1, v0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mCollapsedTabContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    sget p2, Lcom/transsion/camera/featurelibs/commonwidget/R$dimen;->scroller_left_margin:I

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/ui/setting/videosightshock/ui/VideoFilterUI;->updateScrollerViewLayout(II)V

    .line 324
    invoke-direct {v0}, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->updateMenuComponentVisible()V

    .line 326
    iget-boolean p0, v0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mbSupportFilter:Z

    const/4 p1, 0x0

    const/16 p2, 0xb4

    if-eqz p0, :cond_f7

    .line 327
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

    .line 329
    :cond_f7
    iget-boolean p0, v0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mbSupportEffect:Z

    if-eqz p0, :cond_108

    .line 330
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

    .line 332
    :cond_108
    iget-boolean p0, v0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mbSupportFrame:Z

    if-eqz p0, :cond_116

    .line 333
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

    .line 571
    invoke-super {p0, p1}, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->updateIndicatorRingScreenLight(Z)V

    .line 572
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mTabMenu:Lcom/transsion/camera/app/ui/widget/menu/TabMenuCustomView;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/ui/widget/menu/TabMenuCustomView;->updateRingScreenLight(Z)V

    if-eqz p1, :cond_d

    const/high16 v0, -0x1000000

    goto :goto_17

    .line 574
    :cond_d
    invoke-static {}, Lcom/transsion/camera/app_info/AppInfo;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/transsion/camera/R$color;->video_sight_shock_item_unselected_color:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    :goto_17
    iput v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mUnSelectedColor:I

    .line 575
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mVideoFilterUI:Lcom/transsion/camera/ui/setting/videosightshock/ui/VideoFilterUI;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/ui/setting/videosightshock/ui/VideoFilterUI;->updateLowLight(Z)V

    return-void
.end method

.method public updateScrollerViewLayout(Ljava/lang/Runnable;)V
    .registers 5

    .line 381
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mVideoFilterUI:Lcom/transsion/camera/ui/setting/videosightshock/ui/VideoFilterUI;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mCollapsedTabContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    sget v2, Lcom/transsion/camera/featurelibs/commonwidget/R$dimen;->scroller_left_margin:I

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/ui/setting/videosightshock/ui/VideoFilterUI;->updateScrollerViewLayout(II)V

    .line 383
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->resetScrollerRulerView()V

    .line 384
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->mScrollerViewContainer:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5$$ExternalSyntheticLambda21;

    invoke-direct {v1, p0, p1}, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5$$ExternalSyntheticLambda21;-><init>(Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public updateTabSwitchLayout(Z)V
    .registers 3

    const/4 v0, 0x0

    .line 397
    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->updateTabSwitchLayout(ZLjava/lang/Runnable;)V

    return-void
.end method
