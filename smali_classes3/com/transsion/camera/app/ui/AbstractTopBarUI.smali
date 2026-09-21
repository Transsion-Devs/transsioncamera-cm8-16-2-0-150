.class public abstract Lcom/transsion/camera/app/ui/AbstractTopBarUI;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/IAppUIListener$IPopupWindowListener;
.implements Lcom/transsion/camera/app/common/IAppUIListener$IOrientationListener;
.implements Lcom/transsion/camera/app/common/IScreenFormControl;
.implements Lcom/transsion/camera/app/common/ui/anim/UnionAnimatorHolder$UnionValueAnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/ui/AbstractTopBarUI$MyAnimationStrategy;
    }
.end annotation


# static fields
.field private static final PATH_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

.field private static lastClickTime:J


# instance fields
.field protected mAppUI:Lcom/transsion/camera/app/common/IAppUI;

.field private mCameraOperationControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

.field private mCelebritySceneShow:Z

.field private final mContext:Landroid/content/Context;

.field private mCurPreviewValue:Ljava/lang/String;

.field protected mCurrentScreenType:I

.field private mDirection:I

.field private mFilterUIShow:Z

.field private mFlashFacadeChanged:Z

.field private mHoverAnimator:Landroid/animation/ValueAnimator;

.field private final mIModuleTransfer:Lcom/transsion/camera/app/common/IModuleTransfer;

.field private mImageStyleShow:Z

.field protected mInflater:Landroid/view/LayoutInflater;

.field private mIsAnimationRunning:Z

.field private mIsDualDeviceItemShow:Z

.field private mIsPMasterBottomUIShow:Z

.field private mIsPopSettingAppearing:Z

.field private mIsPopSettingShow:Z

.field private mIsPreviewDown:Z

.field protected mIsTopBarAppearing:Z

.field private mIsZoomBegin:Z

.field protected mLeftTopBarContainer:Lcom/transsion/camera/app/ui/topbar/TopBarContainer;

.field protected mLeftTopBarItemUIs:Ljava/util/List;

.field private mNeedAnimation:Z

.field private mNeedHidePopSettingView:Z

.field protected final mOldValue:Ljava/util/concurrent/atomic/AtomicBoolean;

.field protected mOrientation:I

.field private mPopSettingEnable:Z

.field protected mPopSettingHideView:Lcom/airbnb/lottie/LottieAnimationView;

.field protected mPopSettingHideViewRotateLayout:Lcom/transsion/camera/app/ui/widget/RotateFrameLayout;

.field protected mPopSettingShowView:Lcom/airbnb/lottie/LottieAnimationView;

.field protected mPopSettingShowViewRotateLayout:Lcom/transsion/camera/app/ui/widget/RotateFrameLayout;

.field private final mPopSettingSupport:Z

.field private mPopSettingViewControl:Lcom/transsion/camera/app/common/IAppUIControl$IPopSettingViewControl;

.field protected mPopupOption:Lcom/transsion/camera/app/ui/setting/PopupOption;

.field protected mPopupOptionH:Lcom/transsion/camera/app/ui/setting/PopupOption;

.field public final mPopupOptionManager:Lcom/transsion/camera/app/ui/PopupOptionManager;

.field protected mPopupOptionV:Lcom/transsion/camera/app/ui/setting/PopupOption;

.field protected mRightTopBarContainer:Lcom/transsion/camera/app/ui/topbar/TopBarContainer;

.field protected mRightTopBarItemUIs:Ljava/util/List;

.field private mRoot:Landroid/view/View;

.field protected final mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

.field private mSupply:Z

.field protected mTopBarContainer:Lcom/transsion/camera/app/ui/topbar/TopBarContainer;

.field private mTopBarContainerAvailableWidth:I

.field private final mTopBarInterpolator:Landroid/view/animation/PathInterpolator;

.field protected mTopBarItemUIs:Ljava/util/List;

.field protected mTopBarVideoSizePoint:Lcom/transsion/camera/app/ui/widget/RotateImageView;

.field private final mTreasureBoxSupport:Z

.field popupOptionRoot:Lcom/transsion/camera/app/ui/widget/HorizontalAverageLayout;

.field popupOptionRootH:Lcom/transsion/camera/app/ui/widget/HorizontalAverageLayout;

.field popupOptionRootV:Lcom/transsion/camera/app/ui/widget/VerticalAverageLayout;


# direct methods
.method public static synthetic $r8$lambda$48ce_gNv14-xUJ05tm6JP1Dztgs(Lcom/transsion/camera/app/ui/AbstractTopBarUI;Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->lambda$updateRightTopBarLayout$5(Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;)V

    return-void
.end method

.method public static synthetic $r8$lambda$P9Elju5E3u7ALH8wslW2z-5auck(Lcom/transsion/camera/app/ui/AbstractTopBarUI;Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->lambda$updateTopBarLayout$3(Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;)V

    return-void
.end method

.method public static synthetic $r8$lambda$R5zCAtF1jhewsN6Keuamx4zJqcE(ZLcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;)V
    .registers 2

    .line 396
    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;->setItemClickDisable(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$TLPh2K_xGMO2G2a9Z8gGMlpAHtM(Lcom/transsion/camera/app/ui/AbstractTopBarUI;Z)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->lambda$new$6(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$XnqrdsYr9-FfKEdv8ZfxVRbFxNY(Lcom/transsion/camera/app/ui/AbstractTopBarUI;Landroid/view/View;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->onPopSettingShowViewClick(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$biOsHr9KZWLCmYQAdFG4ieXlps4(Lcom/transsion/camera/app/ui/AbstractTopBarUI;Landroid/animation/ValueAnimator;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->lambda$runTopBarTranslateAnimator$8(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$epPeUFIjT9-LXg09d3g0xVlEcLo(ZLcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;)V
    .registers 2

    .line 394
    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;->setItemClickDisable(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$frvREjP0x_-x1rpDNfIV6rs_lOw(Lcom/transsion/camera/app/ui/AbstractTopBarUI;Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->lambda$updateLeftTopBarLayout$4(Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;)V

    return-void
.end method

.method public static synthetic $r8$lambda$leaCveKyC_myAds3w1x9lAm-Jz0(Lcom/transsion/camera/app/ui/AbstractTopBarUI;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->lambda$ringScreenLightUpdateUI$7()V

    return-void
.end method

.method public static synthetic $r8$lambda$oLP_U_1hAeRigOstX3FLtVAtl-g(ZLcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;)V
    .registers 2

    .line 395
    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;->setItemClickDisable(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$v_-mn1eqsbyfVuRaMch8vvyuN4Q(Lcom/transsion/camera/app/ui/AbstractTopBarUI;Landroid/view/View;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->onPopSettingHideViewClick(Landroid/view/View;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmContext(Lcom/transsion/camera/app/ui/AbstractTopBarUI;)Landroid/content/Context;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCurPreviewValue(Lcom/transsion/camera/app/ui/AbstractTopBarUI;)Ljava/lang/String;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mCurPreviewValue:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDirection(Lcom/transsion/camera/app/ui/AbstractTopBarUI;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mDirection:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmPopSettingEnable(Lcom/transsion/camera/app/ui/AbstractTopBarUI;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mPopSettingEnable:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmPopSettingSupport(Lcom/transsion/camera/app/ui/AbstractTopBarUI;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mPopSettingSupport:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmRoot(Lcom/transsion/camera/app/ui/AbstractTopBarUI;)Landroid/view/View;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mRoot:Landroid/view/View;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTopBarContainerAvailableWidth(Lcom/transsion/camera/app/ui/AbstractTopBarUI;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mTopBarContainerAvailableWidth:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmTreasureBoxSupport(Lcom/transsion/camera/app/ui/AbstractTopBarUI;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mTreasureBoxSupport:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmDirection(Lcom/transsion/camera/app/ui/AbstractTopBarUI;I)V
    .registers 2

    .line 0
    iput p1, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mDirection:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmFlashFacadeChanged(Lcom/transsion/camera/app/ui/AbstractTopBarUI;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mFlashFacadeChanged:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIsAnimationRunning(Lcom/transsion/camera/app/ui/AbstractTopBarUI;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mIsAnimationRunning:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$msetLeftTopBarContainerVisible(Lcom/transsion/camera/app/ui/AbstractTopBarUI;I)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->setLeftTopBarContainerVisible(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetRightTopBarContainerVisible(Lcom/transsion/camera/app/ui/AbstractTopBarUI;I)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->setRightTopBarContainerVisible(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetTopBarContainerVisible(Lcom/transsion/camera/app/ui/AbstractTopBarUI;I)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->setTopBarContainerVisible(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;
    .registers 1

    .line 0
    sget-object v0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 4

    .line 81
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "AbstractTopBarUI"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    .line 82
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, 0x3e800000    # 0.25f

    invoke-direct {v0, v3, v1, v1, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->PATH_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    const-wide/16 v0, 0x0

    .line 143
    sput-wide v0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->lastClickTime:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/transsion/camera/app/ui/ScreenManager;Lcom/transsion/camera/app/ui/PopupOptionManager;)V
    .registers 9

    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3f28f5c3    # 0.66f

    const/high16 v2, 0x3f800000    # 1.0f

    const v3, 0x3ea8f5c3    # 0.33f

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4, v1, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mTopBarInterpolator:Landroid/view/animation/PathInterpolator;

    .line 112
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mOldValue:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 115
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mTreasureBoxSupport:Z

    const/4 v0, -0x1

    .line 133
    iput v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mOrientation:I

    const/4 v0, 0x1

    .line 158
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mNeedAnimation:Z

    .line 159
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mIsAnimationRunning:Z

    .line 1678
    new-instance v1, Lcom/transsion/camera/app/ui/AbstractTopBarUI$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/ui/AbstractTopBarUI$$ExternalSyntheticLambda7;-><init>(Lcom/transsion/camera/app/ui/AbstractTopBarUI;)V

    iput-object v1, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mIModuleTransfer:Lcom/transsion/camera/app/common/IModuleTransfer;

    .line 163
    iput-object p2, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    .line 164
    iput-object p3, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mPopupOptionManager:Lcom/transsion/camera/app/ui/PopupOptionManager;

    .line 165
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    .line 166
    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mContext:Landroid/content/Context;

    .line 167
    sget p1, Lcom/transsion/camera/R$bool;->pop_setting_support:I

    invoke-virtual {p2, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mPopSettingSupport:Z

    .line 168
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mPopSettingEnable:Z

    return-void
.end method

.method private getTopBarTranslationY()I
    .registers 4

    .line 1711
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mRoot:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1712
    iget v1, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mCurrentScreenType:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_49

    .line 1713
    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mCurPreviewValue:Ljava/lang/String;

    const-string v2, "on"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 1714
    sget p0, Lcom/transsion/camera/R$dimen;->top_bar_switch_preview_on_translate_distance:I

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0

    .line 1717
    :cond_1c
    iget-boolean v1, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mPopSettingSupport:Z

    if-eqz v1, :cond_32

    .line 1718
    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mLeftTopBarContainer:Lcom/transsion/camera/app/ui/topbar/TopBarContainer;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    if-gez v1, :cond_2f

    .line 1719
    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mRightTopBarContainer:Lcom/transsion/camera/app/ui/topbar/TopBarContainer;

    :goto_2a
    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    goto :goto_38

    :cond_2f
    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mLeftTopBarContainer:Lcom/transsion/camera/app/ui/topbar/TopBarContainer;

    goto :goto_2a

    .line 1721
    :cond_32
    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mTopBarContainer:Lcom/transsion/camera/app/ui/topbar/TopBarContainer;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    .line 1723
    :goto_38
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenHeight()I

    move-result p0

    div-int/lit8 p0, p0, 0x2

    sub-int/2addr p0, v1

    sget v1, Lcom/transsion/camera/R$dimen;->top_bar_middle_hover_gap:I

    .line 1724
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    add-int/2addr p0, v0

    return p0

    :cond_49
    const/4 p0, 0x0

    return p0
.end method

.method private initPopSettingControlView()V
    .registers 4

    .line 295
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mPopSettingHideView:Lcom/airbnb/lottie/LottieAnimationView;

    new-instance v1, Lcom/transsion/camera/app/ui/AbstractTopBarUI$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/ui/AbstractTopBarUI$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/app/ui/AbstractTopBarUI;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 296
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mPopSettingShowView:Lcom/airbnb/lottie/LottieAnimationView;

    new-instance v1, Lcom/transsion/camera/app/ui/AbstractTopBarUI$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/ui/AbstractTopBarUI$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/app/ui/AbstractTopBarUI;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v0, 0x0

    .line 298
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->setPopSettingShowViewAnimation(Z)V

    .line 299
    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v1}, Lcom/transsion/camera/app/common/IAppUI;->getCurrentMode()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->updatePopSettingViewBG(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mPopSettingShowView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 301
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mPopSettingHideView:Lcom/airbnb/lottie/LottieAnimationView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 302
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mPopSettingShowView:Lcom/airbnb/lottie/LottieAnimationView;

    new-instance v1, Lcom/transsion/camera/app/ui/AbstractTopBarUI$1;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/ui/AbstractTopBarUI$1;-><init>(Lcom/transsion/camera/app/ui/AbstractTopBarUI;)V

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->addAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 324
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mPopSettingHideView:Lcom/airbnb/lottie/LottieAnimationView;

    new-instance v1, Lcom/transsion/camera/app/ui/AbstractTopBarUI$2;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/ui/AbstractTopBarUI$2;-><init>(Lcom/transsion/camera/app/ui/AbstractTopBarUI;)V

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->addAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method private initVideoQualityPoint(Landroid/content/res/Resources;)V
    .registers 5

    .line 1043
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isSupportNewVideoSize()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 1046
    :cond_7
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mRoot:Landroid/view/View;

    sget v1, Lcom/transsion/camera/R$id;->top_bar_video_size_point:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/ui/widget/RotateImageView;

    iput-object v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mTopBarVideoSizePoint:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    .line 1047
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1048
    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v1}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getTopRegionHeight()I

    move-result v1

    sget v2, Lcom/transsion/camera/R$dimen;->top_bar_video_size_point_top_margin:I

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    sub-int/2addr v1, p1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 1049
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mTopBarVideoSizePoint:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public static isFastDoubleClick(J)Z
    .registers 8

    .line 1619
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1620
    sget-wide v2, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->lastClickTime:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x0

    cmp-long v4, v4, v2

    if-gez v4, :cond_14

    cmp-long p0, v2, p0

    if-gez p0, :cond_14

    const/4 p0, 0x1

    return p0

    .line 1626
    :cond_14
    sput-wide v0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->lastClickTime:J

    const/4 p0, 0x0

    return p0
.end method

.method private isSuperNightModeProcessing()Z
    .registers 4

    .line 264
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 265
    :cond_6
    const-string v2, "com.transsion.camera.feature.supernightfilter.mode.SuperNightFilterModeEntry"

    invoke-interface {v0}, Lcom/transsion/camera/app/common/IAppUI;->getCurrentMode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    return v1

    .line 266
    :cond_13
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;->getCurrentUIState()I

    move-result p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1d

    return v0

    :cond_1d
    return v1
.end method

.method private isSupportPopSettingUI()Z
    .registers 2

    .line 521
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/4 v0, 0x1

    if-eqz p0, :cond_15

    .line 522
    invoke-interface {p0}, Lcom/transsion/camera/app/common/IAppUI;->getCurrentModeSettingUISpec()Lcom/transsion/camera/app/common/ModeSettingUISpec;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->getPopSettingUIEntries()[Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_13

    .line 523
    array-length p0, p0

    if-lez p0, :cond_13

    return v0

    :cond_13
    const/4 p0, 0x0

    return p0

    :cond_15
    return v0
.end method

.method private synthetic lambda$new$6(Z)V
    .registers 3

    .line 1679
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mOldValue:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eq v0, p1, :cond_10

    .line 1680
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mOldValue:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1681
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->ringScreenLightUpdateUI()V

    :cond_10
    return-void
.end method

.method private synthetic lambda$ringScreenLightUpdateUI$7()V
    .registers 2

    .line 1690
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mOldValue:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->notifyScreenSupply(Z)V

    return-void
.end method

.method private synthetic lambda$runTopBarTranslateAnimator$8(Landroid/animation/ValueAnimator;)V
    .registers 4

    .line 1748
    const-string v0, "alpha"

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 1749
    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mRoot:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 1750
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mRoot:Landroid/view/View;

    const-string/jumbo v0, "translationY"

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method

.method private synthetic lambda$updateLeftTopBarLayout$4(Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;)V
    .registers 2

    .line 1138
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;->setIAppUI(Lcom/transsion/camera/app/common/IAppUI;)V

    return-void
.end method

.method private synthetic lambda$updateRightTopBarLayout$5(Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;)V
    .registers 2

    .line 1146
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;->setIAppUI(Lcom/transsion/camera/app/common/IAppUI;)V

    return-void
.end method

.method private synthetic lambda$updateTopBarLayout$3(Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;)V
    .registers 2

    .line 1130
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;->setIAppUI(Lcom/transsion/camera/app/common/IAppUI;)V

    return-void
.end method

.method private notifyScreenSupply(Z)V
    .registers 4

    .line 1568
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mSupply:Z

    .line 1569
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mTopBarItemUIs:Ljava/util/List;

    if-eqz v0, :cond_29

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_29

    .line 1570
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mTopBarItemUIs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_22

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;

    .line 1571
    invoke-interface {v1, p1}, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;->onScreenSupply(Z)V

    goto :goto_12

    .line 1573
    :cond_22
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mPopupOption:Lcom/transsion/camera/app/ui/setting/PopupOption;

    if-eqz v0, :cond_29

    .line 1574
    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/ui/setting/PopupOption;->onScreenSupply(Z)V

    .line 1578
    :cond_29
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mLeftTopBarItemUIs:Ljava/util/List;

    if-eqz v0, :cond_50

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_50

    .line 1579
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mLeftTopBarItemUIs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_39
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_49

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;

    .line 1580
    invoke-interface {v1, p1}, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;->onScreenSupply(Z)V

    goto :goto_39

    .line 1582
    :cond_49
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mPopupOption:Lcom/transsion/camera/app/ui/setting/PopupOption;

    if-eqz v0, :cond_50

    .line 1583
    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/ui/setting/PopupOption;->onScreenSupply(Z)V

    .line 1587
    :cond_50
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mRightTopBarItemUIs:Ljava/util/List;

    if-eqz v0, :cond_77

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_77

    .line 1588
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mRightTopBarItemUIs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_60
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_70

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;

    .line 1589
    invoke-interface {v1, p1}, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;->onScreenSupply(Z)V

    goto :goto_60

    .line 1591
    :cond_70
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mPopupOption:Lcom/transsion/camera/app/ui/setting/PopupOption;

    if-eqz v0, :cond_77

    .line 1592
    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/ui/setting/PopupOption;->onScreenSupply(Z)V

    .line 1595
    :cond_77
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mTopBarVideoSizePoint:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    if-eqz v0, :cond_88

    if-eqz p1, :cond_83

    .line 1597
    sget p1, Lcom/transsion/camera/R$drawable;->top_bar_video_size_point_low_light:I

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_88

    .line 1599
    :cond_83
    sget p1, Lcom/transsion/camera/R$drawable;->top_bar_video_size_point:I

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1604
    :cond_88
    :goto_88
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mPopSettingSupport:Z

    if-nez p1, :cond_8d

    goto :goto_b5

    :cond_8d
    const/4 p1, 0x0

    .line 1607
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->setPopSettingShowViewAnimation(Z)V

    .line 1608
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mPopSettingShowView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->isAnimating()Z

    move-result v0

    if-nez v0, :cond_b5

    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mPopSettingHideView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_a2

    goto :goto_b5

    .line 1611
    :cond_a2
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mFlashFacadeChanged:Z

    if-eqz v0, :cond_ab

    .line 1612
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mFlashFacadeChanged:Z

    .line 1613
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->playHidePopSettingAnimation(Z)V

    .line 1615
    :cond_ab
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p1}, Lcom/transsion/camera/app/common/IAppUI;->getCurrentMode()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->updatePopSettingViewBG(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b5
    :goto_b5
    return-void
.end method

.method private onPopSettingHideViewClick(Landroid/view/View;)V
    .registers 4

    const-wide/16 v0, 0x15e

    .line 252
    invoke-static {v0, v1}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->isFastDoubleClick(J)Z

    move-result v0

    if-nez v0, :cond_29

    invoke-static {p1}, Lcom/transsion/camera/utils/MultiTouchManager;->canPerformClick(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_29

    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz p1, :cond_19

    invoke-interface {p1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->shutterUIProcessing()Z

    move-result p1

    if-eqz p1, :cond_19

    goto :goto_29

    .line 255
    :cond_19
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mPopSettingViewControl:Lcom/transsion/camera/app/common/IAppUIControl$IPopSettingViewControl;

    if-eqz p1, :cond_20

    .line 256
    invoke-interface {p1}, Lcom/transsion/camera/app/common/IAppUIControl$IPopSettingViewControl;->onPopSettingHideViewClick()V

    .line 258
    :cond_20
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz p0, :cond_29

    const/16 p1, 0x14f

    .line 259
    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    :cond_29
    :goto_29
    return-void
.end method

.method private onPopSettingShowViewClick(Landroid/view/View;)V
    .registers 4

    const-wide/16 v0, 0x15e

    .line 270
    invoke-static {v0, v1}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->isFastDoubleClick(J)Z

    move-result v0

    if-nez v0, :cond_2f

    invoke-static {p1}, Lcom/transsion/camera/utils/MultiTouchManager;->canPerformClick(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_2f

    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz p1, :cond_18

    invoke-interface {p1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->shutterUIProcessing()Z

    move-result p1

    if-nez p1, :cond_2f

    :cond_18
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->isSuperNightModeProcessing()Z

    move-result p1

    if-eqz p1, :cond_1f

    goto :goto_2f

    .line 274
    :cond_1f
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mPopSettingViewControl:Lcom/transsion/camera/app/common/IAppUIControl$IPopSettingViewControl;

    if-eqz p1, :cond_2e

    const/4 v0, 0x1

    .line 275
    invoke-interface {p1, v0, v0}, Lcom/transsion/camera/app/common/IAppUIControl$IPopSettingViewControl;->onPopSettingShowViewClick(ZZ)V

    .line 276
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mCameraOperationControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    const/16 p1, 0x170

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    :cond_2e
    return-void

    .line 271
    :cond_2f
    :goto_2f
    sget-object p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "onPopSettingShowViewClick wrong status return"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private originPaddingTop()I
    .registers 1

    .line 1039
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/ScreenManager;->getToolBarOriginPaddingHeight()I

    move-result p0

    return p0
.end method

.method private originTopBarPadding()V
    .registers 6

    .line 1547
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/ScreenManager;->getToolBarOriginPaddingHeight()I

    move-result v0

    .line 1548
    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mTopBarContainer:Lcom/transsion/camera/app/ui/topbar/TopBarContainer;

    if-eqz v1, :cond_30

    .line 1549
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 1550
    iget-object v2, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {v2}, Lcom/transsion/camera/app/ui/ScreenManager;->getTopBarHeight()I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1551
    iget-object v2, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mTopBarContainer:Lcom/transsion/camera/app/ui/topbar/TopBarContainer;

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1552
    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mTopBarContainer:Lcom/transsion/camera/app/ui/topbar/TopBarContainer;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingStart()I

    move-result v2

    iget-object v3, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mTopBarContainer:Lcom/transsion/camera/app/ui/topbar/TopBarContainer;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingEnd()I

    move-result v3

    iget-object v4, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mTopBarContainer:Lcom/transsion/camera/app/ui/topbar/TopBarContainer;

    invoke-virtual {v4}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 1555
    :cond_30
    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mLeftTopBarContainer:Lcom/transsion/camera/app/ui/topbar/TopBarContainer;

    if-eqz v1, :cond_86

    iget-object v2, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mRightTopBarContainer:Lcom/transsion/camera/app/ui/topbar/TopBarContainer;

    if-eqz v2, :cond_86

    .line 1556
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 1557
    iget-object v2, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mRightTopBarContainer:Lcom/transsion/camera/app/ui/topbar/TopBarContainer;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 1558
    iget-object v3, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {v3}, Lcom/transsion/camera/app/ui/ScreenManager;->getTopBarHeight()I

    move-result v3

    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1559
    iget-object v3, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {v3}, Lcom/transsion/camera/app/ui/ScreenManager;->getTopBarHeight()I

    move-result v3

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1560
    iget-object v3, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mLeftTopBarContainer:Lcom/transsion/camera/app/ui/topbar/TopBarContainer;

    invoke-virtual {v3, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1561
    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mRightTopBarContainer:Lcom/transsion/camera/app/ui/topbar/TopBarContainer;

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1562
    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mLeftTopBarContainer:Lcom/transsion/camera/app/ui/topbar/TopBarContainer;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingStart()I

    move-result v2

    iget-object v3, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mLeftTopBarContainer:Lcom/transsion/camera/app/ui/topbar/TopBarContainer;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingEnd()I

    move-result v3

    iget-object v4, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mLeftTopBarContainer:Lcom/transsion/camera/app/ui/topbar/TopBarContainer;

    invoke-virtual {v4}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 1563
    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mRightTopBarContainer:Lcom/transsion/camera/app/ui/topbar/TopBarContainer;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingStart()I

    move-result v2

    iget-object v3, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mRightTopBarContainer:Lcom/transsion/camera/app/ui/topbar/TopBarContainer;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingEnd()I

    move-result v3

    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mRightTopBarContainer:Lcom/transsion/camera/app/ui/topbar/TopBarContainer;

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result p0

    invoke-virtual {v1, v2, v0, v3, p0}, Landroid/view/View;->setPadding(IIII)V

    :cond_86
    return-void
.end method

.method private releaseTopBarItemPressState(Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;)V
    .registers 3

    .line 668
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isVideoFlashlightSupportWhenRecording()Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_2d

    .line 669
    :cond_7
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-nez p0, :cond_c

    goto :goto_2d

    .line 670
    :cond_c
    invoke-interface {p0}, Lcom/transsion/camera/app/common/IAppUI;->getCurrentModeSettingUISpec()Lcom/transsion/camera/app/common/ModeSettingUISpec;

    move-result-object p0

    if-nez p0, :cond_13

    goto :goto_2d

    .line 672
    :cond_13
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->isSupportChangeFlashWhenRecording()Z

    move-result p0

    if-nez p0, :cond_1a

    goto :goto_2d

    .line 673
    :cond_1a
    const-string p0, "key_flash_facade"

    invoke-interface {p1}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_27

    goto :goto_2d

    .line 674
    :cond_27
    invoke-interface {p1}, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;->getEntryView()Landroid/view/View;

    move-result-object p0

    if-nez p0, :cond_2e

    :goto_2d
    return-void

    :cond_2e
    const/4 p1, 0x0

    .line 676
    invoke-virtual {p0, p1}, Landroid/view/View;->setPressed(Z)V

    return-void
.end method

.method private ringScreenLightUpdateUI()V
    .registers 3

    .line 1686
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mRoot:Landroid/view/View;

    if-nez v0, :cond_5

    return-void

    .line 1689
    :cond_5
    new-instance v1, Lcom/transsion/camera/app/ui/AbstractTopBarUI$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/ui/AbstractTopBarUI$$ExternalSyntheticLambda6;-><init>(Lcom/transsion/camera/app/ui/AbstractTopBarUI;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private runTopBarTranslateAnimator(I)V
    .registers 9

    .line 1731
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mRoot:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v0

    const/4 v1, 0x0

    .line 1732
    invoke-static {v1, v0}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v2

    const/high16 v3, 0x3f000000    # 0.5f

    .line 1733
    invoke-static {v3, v0}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v0

    int-to-float p1, p1

    .line 1734
    invoke-static {v3, p1}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v4

    const/high16 v5, 0x3f800000    # 1.0f

    .line 1735
    invoke-static {v5, p1}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object p1

    .line 1736
    const-string/jumbo v6, "translationY"

    filled-new-array {v2, v0, v4, p1}, [Landroid/animation/Keyframe;

    move-result-object p1

    invoke-static {v6, p1}, Landroid/animation/PropertyValuesHolder;->ofKeyframe(Ljava/lang/String;[Landroid/animation/Keyframe;)Landroid/animation/PropertyValuesHolder;

    move-result-object p1

    .line 1739
    invoke-static {v1, v5}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v0

    .line 1740
    invoke-static {v3, v1}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v1

    .line 1741
    invoke-static {v5, v5}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v2

    .line 1742
    const-string v3, "alpha"

    filled-new-array {v0, v1, v2}, [Landroid/animation/Keyframe;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/animation/PropertyValuesHolder;->ofKeyframe(Ljava/lang/String;[Landroid/animation/Keyframe;)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 1744
    filled-new-array {v0, p1}, [Landroid/animation/PropertyValuesHolder;

    move-result-object p1

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofPropertyValuesHolder([Landroid/animation/PropertyValuesHolder;)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mHoverAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0x190

    .line 1745
    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1746
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mHoverAnimator:Landroid/animation/ValueAnimator;

    sget-object v0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->PATH_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1747
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mHoverAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/transsion/camera/app/ui/AbstractTopBarUI$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/ui/AbstractTopBarUI$$ExternalSyntheticLambda5;-><init>(Lcom/transsion/camera/app/ui/AbstractTopBarUI;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1752
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mHoverAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/transsion/camera/app/ui/AbstractTopBarUI$8;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/ui/AbstractTopBarUI$8;-><init>(Lcom/transsion/camera/app/ui/AbstractTopBarUI;)V

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1769
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mHoverAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private setLeftTopBarContainerVisible(I)V
    .registers 3

    .line 1495
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mLeftTopBarContainer:Lcom/transsion/camera/app/ui/topbar/TopBarContainer;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, p1, :cond_f

    .line 1496
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mLeftTopBarContainer:Lcom/transsion/camera/app/ui/topbar/TopBarContainer;

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_f
    return-void
.end method

.method private setPopSettingControlViewOrientation(I)V
    .registers 4

    .line 797
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mPopSettingShowViewRotateLayout:Lcom/transsion/camera/app/ui/widget/RotateFrameLayout;

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 798
    invoke-virtual {v0, p1, v1}, Lcom/transsion/camera/app/ui/widget/RotateFrameLayout;->setOrientation(IZ)V

    .line 800
    :cond_8
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mPopSettingHideViewRotateLayout:Lcom/transsion/camera/app/ui/widget/RotateFrameLayout;

    if-eqz p0, :cond_f

    .line 801
    invoke-virtual {p0, p1, v1}, Lcom/transsion/camera/app/ui/widget/RotateFrameLayout;->setOrientation(IZ)V

    :cond_f
    return-void
.end method

.method private setRightTopBarContainerVisible(I)V
    .registers 3

    .line 1501
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mRightTopBarContainer:Lcom/transsion/camera/app/ui/topbar/TopBarContainer;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, p1, :cond_f

    .line 1502
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mRightTopBarContainer:Lcom/transsion/camera/app/ui/topbar/TopBarContainer;

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_f
    return-void
.end method

.method private setTopBarContainerVisible(I)V
    .registers 3

    .line 1489
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mTopBarContainer:Lcom/transsion/camera/app/ui/topbar/TopBarContainer;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, p1, :cond_f

    .line 1490
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mTopBarContainer:Lcom/transsion/camera/app/ui/topbar/TopBarContainer;

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_f
    return-void
.end method

.method private updateLayoutParams(I)V
    .registers 23

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 806
    iget-object v2, v0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mPopupOptionManager:Lcom/transsion/camera/app/ui/PopupOptionManager;

    invoke-virtual {v2}, Lcom/transsion/camera/app/ui/PopupOptionManager;->needShowPopUpOption()Z

    move-result v2

    if-nez v2, :cond_f

    .line 807
    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->dismissPopup()Z

    .line 809
    :cond_f
    iget-object v2, v0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 810
    iget-object v3, v0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {v3}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenFormType()I

    move-result v3

    .line 811
    sget v4, Lcom/transsion/camera/R$dimen;->top_bar_horizontal_padding:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 812
    sget v5, Lcom/transsion/camera/R$dimen;->left_and_right_top_bar_horizontal_padding:I

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 813
    sget v6, Lcom/transsion/camera/R$dimen;->left_and_right_top_bar_horizontal_margin:I

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    .line 814
    sget v7, Lcom/transsion/camera/R$dimen;->column_left_top_bar_horizontal_padding:I

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    .line 815
    sget v8, Lcom/transsion/camera/R$dimen;->top_bar_column_horizontal_padding:I

    invoke-virtual {v2, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    .line 816
    sget v9, Lcom/transsion/camera/R$dimen;->left_and_right_top_bar_width:I

    invoke-virtual {v2, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    .line 817
    sget v10, Lcom/transsion/camera/R$dimen;->left_and_right_top_bar_unAvailable_width:I

    invoke-virtual {v2, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    .line 818
    sget v11, Lcom/transsion/camera/R$dimen;->right_hover_left_margin:I

    invoke-virtual {v2, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    .line 819
    sget v12, Lcom/transsion/camera/R$dimen;->left_hover_left_margin:I

    invoke-virtual {v2, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    .line 820
    sget v13, Lcom/transsion/camera/R$dimen;->right_hover_top_margin:I

    invoke-virtual {v2, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v13

    .line 821
    sget v14, Lcom/transsion/camera/R$dimen;->left_hover_top_margin:I

    invoke-virtual {v2, v14}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v14

    .line 822
    iget-boolean v15, v0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mPopSettingSupport:Z

    move/from16 v16, v15

    if-eqz v16, :cond_29a

    .line 823
    iget-object v4, v0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mLeftTopBarContainer:Lcom/transsion/camera/app/ui/topbar/TopBarContainer;

    if-eqz v4, :cond_17e

    .line 825
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v17

    move-object/from16 v15, v17

    check-cast v15, Landroid/widget/FrameLayout$LayoutParams;

    move/from16 v17, v7

    .line 826
    iget-object v7, v0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {v7}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenWidth()I

    move-result v7

    sub-int/2addr v7, v5

    sub-int/2addr v7, v5

    move/from16 v18, v5

    const/4 v5, 0x1

    if-ne v3, v5, :cond_f2

    if-eqz v1, :cond_cd

    const/16 v5, 0x5a

    if-eq v1, v5, :cond_b8

    const/16 v5, 0xb4

    if-eq v1, v5, :cond_a3

    const/16 v5, 0x10e

    if-eq v1, v5, :cond_8e

    const/4 v5, 0x0

    goto :goto_e1

    :cond_8e
    const/4 v5, 0x0

    .line 835
    invoke-virtual {v15, v10, v5, v5, v5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 836
    sget v7, Lcom/transsion/camera/R$dimen;->pop_setting_top_bar_common_expand_width:I

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, v15, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 837
    sget v7, Lcom/transsion/camera/R$dimen;->top_bar_common_height:I

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, v15, Landroid/widget/FrameLayout$LayoutParams;->height:I

    goto :goto_e1

    :cond_a3
    const/4 v5, 0x0

    .line 845
    invoke-virtual {v15, v5, v10, v5, v5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 846
    sget v7, Lcom/transsion/camera/R$dimen;->top_bar_common_height:I

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, v15, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 847
    sget v7, Lcom/transsion/camera/R$dimen;->pop_setting_top_bar_common_expand_width:I

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, v15, Landroid/widget/FrameLayout$LayoutParams;->height:I

    goto :goto_e1

    :cond_b8
    const/4 v5, 0x0

    .line 830
    invoke-virtual {v15, v5, v5, v5, v5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 831
    sget v7, Lcom/transsion/camera/R$dimen;->pop_setting_top_bar_common_expand_width:I

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, v15, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 832
    sget v7, Lcom/transsion/camera/R$dimen;->top_bar_common_height:I

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, v15, Landroid/widget/FrameLayout$LayoutParams;->height:I

    goto :goto_e1

    :cond_cd
    const/4 v5, 0x0

    .line 840
    invoke-virtual {v15, v5, v5, v5, v5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 841
    sget v7, Lcom/transsion/camera/R$dimen;->top_bar_common_height:I

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, v15, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 842
    sget v7, Lcom/transsion/camera/R$dimen;->pop_setting_top_bar_common_expand_width:I

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, v15, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 852
    :goto_e1
    invoke-virtual {v4, v5, v5, v5, v5}, Lcom/transsion/camera/app/ui/topbar/TopBarContainer;->setPaddingByToolbarScroll(IIII)V

    .line 853
    iget v7, v15, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iget v5, v15, Landroid/widget/FrameLayout$LayoutParams;->height:I

    invoke-virtual {v4, v7, v5}, Lcom/transsion/camera/app/ui/topbar/TopBarContainer;->initWidthAndHeight(II)V

    move/from16 v19, v10

    :goto_ed
    move/from16 v20, v14

    :goto_ef
    move/from16 v14, v18

    goto :goto_15c

    .line 854
    :cond_f2
    iget v5, v0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mCurrentScreenType:I

    move/from16 v19, v10

    const/4 v10, 0x4

    if-ne v5, v10, :cond_111

    const/4 v10, 0x0

    .line 855
    invoke-virtual {v15, v12, v14, v10, v10}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 856
    invoke-virtual {v4, v10, v10, v10, v10}, Lcom/transsion/camera/app/ui/topbar/TopBarContainer;->setPaddingByToolbarScroll(IIII)V

    .line 857
    sget v4, Lcom/transsion/camera/R$dimen;->top_bar_common_height:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, v15, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 858
    sget v4, Lcom/transsion/camera/R$dimen;->pop_setting_top_bar_common_expand_width:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, v15, Landroid/widget/FrameLayout$LayoutParams;->height:I

    goto :goto_ed

    :cond_111
    move/from16 v20, v14

    const/4 v10, 0x0

    const/4 v14, 0x5

    if-ne v5, v14, :cond_12e

    .line 860
    invoke-virtual {v15, v11, v13, v10, v10}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 861
    sget v5, Lcom/transsion/camera/R$dimen;->top_bar_common_height:I

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, v15, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 862
    sget v5, Lcom/transsion/camera/R$dimen;->pop_setting_top_bar_common_expand_width:I

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, v15, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 863
    invoke-virtual {v4, v10, v10, v10, v10}, Lcom/transsion/camera/app/ui/topbar/TopBarContainer;->setPaddingByToolbarScroll(IIII)V

    goto :goto_ef

    :cond_12e
    const/4 v14, 0x2

    if-ne v5, v14, :cond_146

    .line 865
    iput v9, v15, Landroid/widget/FrameLayout$LayoutParams;->width:I

    const/4 v5, -0x2

    .line 866
    iput v5, v15, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 867
    invoke-virtual {v15, v10, v10, v10, v10}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 868
    invoke-direct {v0}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->originPaddingTop()I

    move-result v14

    invoke-virtual {v4, v8, v14, v10, v10}, Lcom/transsion/camera/app/ui/topbar/TopBarContainer;->setPaddingByToolbarScroll(IIII)V

    .line 869
    iget v14, v15, Landroid/widget/FrameLayout$LayoutParams;->height:I

    invoke-virtual {v4, v7, v14}, Lcom/transsion/camera/app/ui/topbar/TopBarContainer;->initWidthAndHeight(II)V

    goto :goto_ef

    :cond_146
    const/4 v5, -0x2

    .line 871
    iput v9, v15, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 872
    iput v5, v15, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 873
    invoke-virtual {v15, v6, v10, v10, v10}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 874
    invoke-direct {v0}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->originPaddingTop()I

    move-result v5

    move/from16 v14, v18

    invoke-virtual {v4, v14, v5, v14, v10}, Lcom/transsion/camera/app/ui/topbar/TopBarContainer;->setPaddingByToolbarScroll(IIII)V

    .line 875
    iget v5, v15, Landroid/widget/FrameLayout$LayoutParams;->height:I

    invoke-virtual {v4, v7, v5}, Lcom/transsion/camera/app/ui/topbar/TopBarContainer;->initWidthAndHeight(II)V

    .line 877
    :goto_15c
    iget-object v4, v0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mLeftTopBarContainer:Lcom/transsion/camera/app/ui/topbar/TopBarContainer;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    const/4 v5, 0x0

    :goto_163
    if-ge v5, v4, :cond_178

    .line 879
    iget-object v7, v0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mLeftTopBarContainer:Lcom/transsion/camera/app/ui/topbar/TopBarContainer;

    invoke-virtual {v7, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 880
    instance-of v10, v7, Lcom/transsion/camera/app/ui/widget/IRotatable;

    if-eqz v10, :cond_175

    .line 881
    check-cast v7, Lcom/transsion/camera/app/ui/widget/IRotatable;

    const/4 v10, 0x1

    invoke-interface {v7, v1, v10}, Lcom/transsion/camera/app/ui/widget/IRotatable;->setOrientation(IZ)V

    :cond_175
    add-int/lit8 v5, v5, 0x1

    goto :goto_163

    .line 884
    :cond_178
    iget-object v4, v0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mLeftTopBarContainer:Lcom/transsion/camera/app/ui/topbar/TopBarContainer;

    invoke-virtual {v4, v15}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_185

    :cond_17e
    move/from16 v17, v7

    move/from16 v19, v10

    move/from16 v20, v14

    move v14, v5

    .line 887
    :goto_185
    iget-object v4, v0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mRightTopBarContainer:Lcom/transsion/camera/app/ui/topbar/TopBarContainer;

    if-eqz v4, :cond_355

    .line 889
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/FrameLayout$LayoutParams;

    .line 890
    iget-object v7, v0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {v7}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenWidth()I

    move-result v7

    sub-int/2addr v7, v14

    sub-int/2addr v7, v14

    const/4 v10, 0x0

    .line 891
    iput v10, v5, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    const/4 v15, 0x1

    if-ne v3, v15, :cond_20a

    if-eqz v1, :cond_1ea

    const/16 v3, 0x5a

    if-eq v1, v3, :cond_1d4

    const/16 v3, 0xb4

    if-eq v1, v3, :cond_1c0

    const/16 v3, 0x10e

    if-eq v1, v3, :cond_1ac

    goto :goto_1ff

    .line 900
    :cond_1ac
    invoke-virtual {v5, v10, v10, v10, v10}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 901
    sget v3, Lcom/transsion/camera/R$dimen;->pop_setting_top_bar_common_expand_width:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v5, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 902
    sget v3, Lcom/transsion/camera/R$dimen;->top_bar_common_height:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v5, Landroid/widget/FrameLayout$LayoutParams;->height:I

    goto :goto_1ff

    .line 910
    :cond_1c0
    invoke-virtual {v5, v10, v10, v10, v10}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 911
    sget v3, Lcom/transsion/camera/R$dimen;->top_bar_common_height:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v5, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 912
    sget v3, Lcom/transsion/camera/R$dimen;->pop_setting_top_bar_common_expand_width:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v5, Landroid/widget/FrameLayout$LayoutParams;->height:I

    goto :goto_1ff

    :cond_1d4
    move/from16 v3, v19

    .line 895
    invoke-virtual {v5, v3, v10, v10, v10}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 896
    sget v3, Lcom/transsion/camera/R$dimen;->pop_setting_top_bar_common_expand_width:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v5, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 897
    sget v3, Lcom/transsion/camera/R$dimen;->top_bar_common_height:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v5, Landroid/widget/FrameLayout$LayoutParams;->height:I

    goto :goto_1ff

    :cond_1ea
    move/from16 v3, v19

    .line 905
    invoke-virtual {v5, v10, v3, v10, v10}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 906
    sget v3, Lcom/transsion/camera/R$dimen;->top_bar_common_height:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v5, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 907
    sget v3, Lcom/transsion/camera/R$dimen;->pop_setting_top_bar_common_expand_width:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v5, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 917
    :goto_1ff
    invoke-virtual {v4, v10, v10, v10, v10}, Lcom/transsion/camera/app/ui/topbar/TopBarContainer;->setPaddingByToolbarScroll(IIII)V

    .line 918
    iget v2, v5, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iget v3, v5, Landroid/widget/FrameLayout$LayoutParams;->height:I

    invoke-virtual {v4, v2, v3}, Lcom/transsion/camera/app/ui/topbar/TopBarContainer;->initWidthAndHeight(II)V

    goto :goto_277

    .line 919
    :cond_20a
    iget v3, v0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mCurrentScreenType:I

    const/4 v15, 0x4

    if-ne v3, v15, :cond_226

    .line 920
    invoke-virtual {v5, v12, v13, v10, v10}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 921
    sget v3, Lcom/transsion/camera/R$dimen;->top_bar_common_height:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v5, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 922
    sget v3, Lcom/transsion/camera/R$dimen;->pop_setting_top_bar_common_expand_width:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v5, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 923
    invoke-virtual {v4, v10, v10, v10, v10}, Lcom/transsion/camera/app/ui/topbar/TopBarContainer;->setPaddingByToolbarScroll(IIII)V

    goto :goto_277

    :cond_226
    const/4 v12, 0x5

    if-ne v3, v12, :cond_242

    move/from16 v12, v20

    .line 925
    invoke-virtual {v5, v11, v12, v10, v10}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 926
    sget v3, Lcom/transsion/camera/R$dimen;->top_bar_common_height:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v5, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 927
    sget v3, Lcom/transsion/camera/R$dimen;->pop_setting_top_bar_common_expand_width:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v5, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 928
    invoke-virtual {v4, v10, v10, v10, v10}, Lcom/transsion/camera/app/ui/topbar/TopBarContainer;->setPaddingByToolbarScroll(IIII)V

    goto :goto_277

    :cond_242
    const v2, 0x800005

    const/4 v11, 0x2

    if-ne v3, v11, :cond_261

    .line 930
    iput v9, v5, Landroid/widget/FrameLayout$LayoutParams;->width:I

    const/4 v3, -0x2

    .line 931
    iput v3, v5, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 932
    invoke-virtual {v5, v10, v10, v10, v10}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 933
    invoke-direct {v0}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->originPaddingTop()I

    move-result v3

    move/from16 v6, v17

    invoke-virtual {v4, v6, v3, v8, v10}, Lcom/transsion/camera/app/ui/topbar/TopBarContainer;->setPaddingByToolbarScroll(IIII)V

    .line 934
    iget v3, v5, Landroid/widget/FrameLayout$LayoutParams;->height:I

    invoke-virtual {v4, v7, v3}, Lcom/transsion/camera/app/ui/topbar/TopBarContainer;->initWidthAndHeight(II)V

    .line 935
    iput v2, v5, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto :goto_277

    :cond_261
    const/4 v3, -0x2

    .line 937
    iput v9, v5, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 938
    iput v3, v5, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 939
    invoke-virtual {v5, v10, v10, v6, v10}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 940
    invoke-direct {v0}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->originPaddingTop()I

    move-result v3

    invoke-virtual {v4, v14, v3, v14, v10}, Lcom/transsion/camera/app/ui/topbar/TopBarContainer;->setPaddingByToolbarScroll(IIII)V

    .line 941
    iget v3, v5, Landroid/widget/FrameLayout$LayoutParams;->height:I

    invoke-virtual {v4, v7, v3}, Lcom/transsion/camera/app/ui/topbar/TopBarContainer;->initWidthAndHeight(II)V

    .line 942
    iput v2, v5, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 944
    :goto_277
    iget-object v2, v0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mRightTopBarContainer:Lcom/transsion/camera/app/ui/topbar/TopBarContainer;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    const/4 v15, 0x0

    :goto_27e
    if-ge v15, v2, :cond_293

    .line 946
    iget-object v3, v0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mRightTopBarContainer:Lcom/transsion/camera/app/ui/topbar/TopBarContainer;

    invoke-virtual {v3, v15}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 947
    instance-of v4, v3, Lcom/transsion/camera/app/ui/widget/IRotatable;

    if-eqz v4, :cond_290

    .line 948
    check-cast v3, Lcom/transsion/camera/app/ui/widget/IRotatable;

    const/4 v10, 0x1

    invoke-interface {v3, v1, v10}, Lcom/transsion/camera/app/ui/widget/IRotatable;->setOrientation(IZ)V

    :cond_290
    add-int/lit8 v15, v15, 0x1

    goto :goto_27e

    .line 951
    :cond_293
    iget-object v1, v0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mRightTopBarContainer:Lcom/transsion/camera/app/ui/topbar/TopBarContainer;

    invoke-virtual {v1, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_355

    .line 954
    :cond_29a
    iget-object v5, v0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mTopBarContainer:Lcom/transsion/camera/app/ui/topbar/TopBarContainer;

    if-eqz v5, :cond_355

    .line 956
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v10, 0x0

    .line 957
    invoke-virtual {v5, v10, v10, v10, v10}, Lcom/transsion/camera/app/ui/topbar/TopBarContainer;->setPaddingByToolbarScroll(IIII)V

    const/4 v10, 0x1

    if-ne v3, v10, :cond_2dd

    const/16 v7, 0x5a

    if-eq v1, v7, :cond_2c4

    const/16 v4, 0x10e

    if-eq v1, v4, :cond_2c4

    .line 968
    sget v4, Lcom/transsion/camera/R$dimen;->top_bar_common_height:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, v6, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 969
    sget v4, Lcom/transsion/camera/R$dimen;->top_bar_common_expand_width:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v6, Landroid/widget/FrameLayout$LayoutParams;->height:I

    goto :goto_2d4

    .line 962
    :cond_2c4
    sget v4, Lcom/transsion/camera/R$dimen;->top_bar_common_expand_width:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, v6, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 963
    sget v4, Lcom/transsion/camera/R$dimen;->top_bar_common_height:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v6, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 972
    :goto_2d4
    iget v2, v6, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iget v4, v6, Landroid/widget/FrameLayout$LayoutParams;->height:I

    invoke-virtual {v5, v2, v4}, Lcom/transsion/camera/app/ui/topbar/TopBarContainer;->initWidthAndHeight(II)V

    const/4 v10, 0x0

    goto :goto_2fa

    .line 974
    :cond_2dd
    iget-object v2, v0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {v2}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenWidth()I

    move-result v2

    sub-int/2addr v2, v4

    sub-int/2addr v2, v4

    const/4 v7, -0x1

    .line 975
    iput v7, v6, Landroid/widget/FrameLayout$LayoutParams;->width:I

    const/4 v7, -0x2

    .line 976
    iput v7, v6, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 977
    iput v2, v0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mTopBarContainerAvailableWidth:I

    .line 978
    invoke-direct {v0}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->originPaddingTop()I

    move-result v7

    const/4 v10, 0x0

    invoke-virtual {v5, v4, v7, v4, v10}, Lcom/transsion/camera/app/ui/topbar/TopBarContainer;->setPaddingByToolbarScroll(IIII)V

    .line 979
    iget v4, v6, Landroid/widget/FrameLayout$LayoutParams;->height:I

    invoke-virtual {v5, v2, v4}, Lcom/transsion/camera/app/ui/topbar/TopBarContainer;->initWidthAndHeight(II)V

    .line 981
    :goto_2fa
    iget-object v2, v0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mTopBarContainer:Lcom/transsion/camera/app/ui/topbar/TopBarContainer;

    invoke-virtual {v2, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 982
    sget-object v2, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[updateLayoutParams] width: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v6, Landroid/widget/FrameLayout$LayoutParams;->width:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", height: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v6, Landroid/widget/FrameLayout$LayoutParams;->height:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", screenFormType: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", getRealScreenSize: "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mContext:Landroid/content/Context;

    .line 983
    invoke-static {v3}, Lcom/transsion/camera/utils/ScreenUtils;->getRealScreenSize(Landroid/content/Context;)Landroid/util/Size;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 982
    invoke-static {v2, v3}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 984
    iget-object v2, v0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mTopBarContainer:Lcom/transsion/camera/app/ui/topbar/TopBarContainer;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    move v15, v10

    :goto_33e
    if-ge v15, v2, :cond_355

    .line 986
    iget-object v3, v0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mTopBarContainer:Lcom/transsion/camera/app/ui/topbar/TopBarContainer;

    invoke-virtual {v3, v15}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 987
    instance-of v4, v3, Lcom/transsion/camera/app/ui/widget/IRotatable;

    if-eqz v4, :cond_351

    .line 988
    check-cast v3, Lcom/transsion/camera/app/ui/widget/IRotatable;

    const/4 v10, 0x1

    invoke-interface {v3, v1, v10}, Lcom/transsion/camera/app/ui/widget/IRotatable;->setOrientation(IZ)V

    goto :goto_352

    :cond_351
    const/4 v10, 0x1

    :goto_352
    add-int/lit8 v15, v15, 0x1

    goto :goto_33e

    .line 994
    :cond_355
    :goto_355
    iget-object v1, v0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mPopSettingHideView:Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz v1, :cond_35c

    .line 995
    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->updateSettingControlViewLayout(Landroid/view/View;)V

    .line 998
    :cond_35c
    iget-object v1, v0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mPopSettingShowView:Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz v1, :cond_363

    .line 999
    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->updateSettingControlViewLayout(Landroid/view/View;)V

    :cond_363
    return-void
.end method

.method private updatePopSettingControlViewLayout()V
    .registers 6

    .line 772
    iget v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mCurrentScreenType:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x10e

    const/16 v4, 0x5a

    if-ne v0, v1, :cond_27

    .line 773
    iget v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mOrientation:I

    if-eqz v0, :cond_23

    const/16 v1, 0xb4

    if-eq v0, v4, :cond_1f

    if-eq v0, v1, :cond_1b

    if-eq v0, v3, :cond_17

    return-void

    .line 784
    :cond_17
    invoke-direct {p0, v2}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->setPopSettingControlViewOrientation(I)V

    return-void

    .line 781
    :cond_1b
    invoke-direct {p0, v3}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->setPopSettingControlViewOrientation(I)V

    return-void

    .line 778
    :cond_1f
    invoke-direct {p0, v1}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->setPopSettingControlViewOrientation(I)V

    return-void

    .line 775
    :cond_23
    invoke-direct {p0, v4}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->setPopSettingControlViewOrientation(I)V

    return-void

    :cond_27
    const/4 v1, 0x4

    if-ne v0, v1, :cond_2e

    .line 788
    invoke-direct {p0, v4}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->setPopSettingControlViewOrientation(I)V

    return-void

    :cond_2e
    const/4 v1, 0x5

    if-ne v0, v1, :cond_35

    .line 790
    invoke-direct {p0, v3}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->setPopSettingControlViewOrientation(I)V

    return-void

    .line 792
    :cond_35
    invoke-direct {p0, v2}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->setPopSettingControlViewOrientation(I)V

    return-void
.end method


# virtual methods
.method public cancelPopSettingShowViewAnimation()V
    .registers 3

    .line 512
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mPopSettingShowView:Lcom/airbnb/lottie/LottieAnimationView;

    if-nez v0, :cond_5

    return-void

    .line 515
    :cond_5
    sget-object v0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "cancelPopSettingShowViewAnimation: "

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 516
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mPopSettingShowView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    return-void
.end method

.method protected createPopupOption(Landroid/view/LayoutInflater;Landroid/view/View;Landroid/view/View;IILcom/transsion/camera/app/ui/PopupOptionManager;ILcom/transsion/camera/app/ui/ScreenManager;Lcom/transsion/camera/app/common/IAppUI;)Lcom/transsion/camera/app/ui/setting/PopupOption;
    .registers 10

    .line 2229
    new-instance p0, Lcom/transsion/camera/app/ui/setting/PopupOption;

    invoke-direct/range {p0 .. p9}, Lcom/transsion/camera/app/ui/setting/PopupOption;-><init>(Landroid/view/LayoutInflater;Landroid/view/View;Landroid/view/View;IILcom/transsion/camera/app/ui/PopupOptionManager;ILcom/transsion/camera/app/ui/ScreenManager;Lcom/transsion/camera/app/common/IAppUI;)V

    return-object p0
.end method

.method public dismissPopup()Z
    .registers 1

    .line 698
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mPopupOptionManager:Lcom/transsion/camera/app/ui/PopupOptionManager;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/PopupOptionManager;->dismissAllPopupOption()Z

    move-result p0

    return p0
.end method

.method public dismissPopupWithoutAnimation()Z
    .registers 4

    .line 707
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mPopupOption:Lcom/transsion/camera/app/ui/setting/PopupOption;

    const/4 v1, 0x1

    const/16 v2, 0x1e

    if-eqz v0, :cond_18

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/setting/PopupOption;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 708
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mCameraOperationControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    invoke-interface {v0, v2}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 709
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mPopupOption:Lcom/transsion/camera/app/ui/setting/PopupOption;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/setting/PopupOption;->dismissPopupWithoutAnimation()V

    return v1

    .line 712
    :cond_18
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mPopupOptionH:Lcom/transsion/camera/app/ui/setting/PopupOption;

    if-eqz v0, :cond_2d

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/setting/PopupOption;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 713
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mCameraOperationControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    invoke-interface {v0, v2}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 714
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mPopupOptionH:Lcom/transsion/camera/app/ui/setting/PopupOption;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/setting/PopupOption;->dismissPopupWithoutAnimation()V

    return v1

    .line 717
    :cond_2d
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mPopupOptionV:Lcom/transsion/camera/app/ui/setting/PopupOption;

    if-eqz v0, :cond_42

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/setting/PopupOption;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_42

    .line 718
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mCameraOperationControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    invoke-interface {v0, v2}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 719
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mPopupOptionV:Lcom/transsion/camera/app/ui/setting/PopupOption;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/setting/PopupOption;->dismissPopupWithoutAnimation()V

    return v1

    :cond_42
    const/4 p0, 0x0

    return p0
.end method

.method public getAnimatorUpdateListener(Lcom/transsion/camera/app/common/ui/anim/UnionAnimatorHolder$AnimationDescription;)Lcom/transsion/camera/app/common/ui/anim/UnionAnimatorHolder$AnimatorUpdateListener;
    .registers 2

    const/4 p0, 0x0

    return-object p0
.end method

.method public getHeight()I
    .registers 3

    .line 689
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mPopSettingEnable:Z

    const/4 v1, -0x1

    if-eqz v0, :cond_f

    .line 690
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mLeftTopBarContainer:Lcom/transsion/camera/app/ui/topbar/TopBarContainer;

    if-eqz p0, :cond_e

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    return p0

    :cond_e
    return v1

    .line 692
    :cond_f
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mTopBarContainer:Lcom/transsion/camera/app/ui/topbar/TopBarContainer;

    if-eqz p0, :cond_18

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    return p0

    :cond_18
    return v1
.end method

.method protected getItemSelectPosition()I
    .registers 3

    .line 1534
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mPopupOption:Lcom/transsion/camera/app/ui/setting/PopupOption;

    if-eqz v0, :cond_9

    .line 1535
    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/setting/PopupOption;->getItemSelectPosition()I

    move-result v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    .line 1537
    :goto_a
    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mPopupOptionH:Lcom/transsion/camera/app/ui/setting/PopupOption;

    if-eqz v1, :cond_1a

    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/setting/PopupOption;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 1538
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mPopupOptionH:Lcom/transsion/camera/app/ui/setting/PopupOption;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/setting/PopupOption;->getItemSelectPosition()I

    move-result v0

    .line 1540
    :cond_1a
    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mPopupOptionV:Lcom/transsion/camera/app/ui/setting/PopupOption;

    if-eqz v1, :cond_2b

    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/setting/PopupOption;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 1541
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mPopupOptionV:Lcom/transsion/camera/app/ui/setting/PopupOption;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/setting/PopupOption;->getItemSelectPosition()I

    move-result p0

    return p0

    :cond_2b
    return v0
.end method

.method protected getPopupAnimationStrategy()Lcom/transsion/camera/app/common/ui/setting/IPopupOptionControl$IAnimationStrategy;
    .registers 2

    .line 1529
    new-instance v0, Lcom/transsion/camera/app/ui/AbstractTopBarUI$MyAnimationStrategy;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/ui/AbstractTopBarUI$MyAnimationStrategy;-><init>(Lcom/transsion/camera/app/ui/AbstractTopBarUI;)V

    return-object v0
.end method

.method protected getSettingControlViewMargins(I)Landroid/graphics/Rect;
    .registers 7

    .line 1019
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1020
    sget v1, Lcom/transsion/camera/R$dimen;->left_and_right_hover_control_view_top_margin:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 1021
    sget v2, Lcom/transsion/camera/R$dimen;->left_and_right_hover_control_view_left_margin:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 1023
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-ne p1, v3, :cond_23

    .line 1025
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->originPaddingTop()I

    move-result p0

    invoke-virtual {v2, v4, p0, v4, v4}, Landroid/graphics/Rect;->set(IIII)V

    return-object v2

    :cond_23
    const/4 v3, 0x4

    if-ne p1, v3, :cond_2a

    .line 1027
    invoke-virtual {v2, v4, v1, v0, v4}, Landroid/graphics/Rect;->set(IIII)V

    return-object v2

    :cond_2a
    const/4 v3, 0x5

    if-ne p1, v3, :cond_31

    .line 1029
    invoke-virtual {v2, v0, v1, v4, v4}, Landroid/graphics/Rect;->set(IIII)V

    return-object v2

    :cond_31
    const/4 v0, 0x1

    if-ne p1, v0, :cond_38

    .line 1031
    invoke-virtual {v2, v4, v4, v4, v4}, Landroid/graphics/Rect;->set(IIII)V

    return-object v2

    .line 1033
    :cond_38
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->originPaddingTop()I

    move-result p0

    invoke-virtual {v2, v4, p0, v4, v4}, Landroid/graphics/Rect;->set(IIII)V

    return-object v2
.end method

.method public hintInfo(Ljava/util/List;)V
    .registers 2

    .line 680
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_4
    :goto_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_16

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;

    if-eqz p1, :cond_4

    .line 682
    invoke-interface {p1}, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;->hintInfo()V

    goto :goto_4

    :cond_16
    return-void
.end method

.method public inflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 16

    .line 177
    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mInflater:Landroid/view/LayoutInflater;

    .line 178
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mPopSettingSupport:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_9f

    .line 179
    sget v0, Lcom/transsion/camera/R$layout;->top_bar_layout_pop:I

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mRoot:Landroid/view/View;

    .line 180
    sget v0, Lcom/transsion/camera/R$id;->left_top_bar_container:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/app/ui/topbar/TopBarContainer;

    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mLeftTopBarContainer:Lcom/transsion/camera/app/ui/topbar/TopBarContainer;

    .line 181
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mRoot:Landroid/view/View;

    sget v0, Lcom/transsion/camera/R$id;->right_top_bar_container:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/app/ui/topbar/TopBarContainer;

    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mRightTopBarContainer:Lcom/transsion/camera/app/ui/topbar/TopBarContainer;

    .line 182
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mLeftTopBarContainer:Lcom/transsion/camera/app/ui/topbar/TopBarContainer;

    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/ui/topbar/TopBarContainer;->initManager(Lcom/transsion/camera/app/ui/ScreenManager;)V

    .line 183
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mLeftTopBarContainer:Lcom/transsion/camera/app/ui/topbar/TopBarContainer;

    new-instance v0, Lcom/transsion/camera/app/ui/animator/UIAnimatorListener;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    sget-object v3, Lcom/transsion/camera/app/common/IUIAnimatorController$AnimatorType;->TOP_BAR_LEFT:Lcom/transsion/camera/app/common/IUIAnimatorController$AnimatorType;

    invoke-direct {v0, v2, v3}, Lcom/transsion/camera/app/ui/animator/UIAnimatorListener;-><init>(Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/app/common/IUIAnimatorController$AnimatorType;)V

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/ui/topbar/TopBarContainer;->addAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 185
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mRightTopBarContainer:Lcom/transsion/camera/app/ui/topbar/TopBarContainer;

    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/ui/topbar/TopBarContainer;->initManager(Lcom/transsion/camera/app/ui/ScreenManager;)V

    .line 186
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mRightTopBarContainer:Lcom/transsion/camera/app/ui/topbar/TopBarContainer;

    new-instance v0, Lcom/transsion/camera/app/ui/animator/UIAnimatorListener;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    sget-object v3, Lcom/transsion/camera/app/common/IUIAnimatorController$AnimatorType;->TOP_BAR_RIGHT:Lcom/transsion/camera/app/common/IUIAnimatorController$AnimatorType;

    invoke-direct {v0, v2, v3}, Lcom/transsion/camera/app/ui/animator/UIAnimatorListener;-><init>(Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/app/common/IUIAnimatorController$AnimatorType;)V

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/ui/topbar/TopBarContainer;->addAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 189
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mRoot:Landroid/view/View;

    sget v0, Lcom/transsion/camera/R$id;->top_bar_setting_hide_view_rotate_layout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/app/ui/widget/RotateFrameLayout;

    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mPopSettingHideViewRotateLayout:Lcom/transsion/camera/app/ui/widget/RotateFrameLayout;

    .line 190
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mRoot:Landroid/view/View;

    sget v0, Lcom/transsion/camera/R$id;->top_bar_setting_show_view_rotate_layout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/app/ui/widget/RotateFrameLayout;

    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mPopSettingShowViewRotateLayout:Lcom/transsion/camera/app/ui/widget/RotateFrameLayout;

    .line 192
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mRoot:Landroid/view/View;

    sget v0, Lcom/transsion/camera/R$id;->top_bar_setting_hide_view:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/airbnb/lottie/LottieAnimationView;

    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mPopSettingHideView:Lcom/airbnb/lottie/LottieAnimationView;

    .line 193
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mRoot:Landroid/view/View;

    sget v0, Lcom/transsion/camera/R$id;->top_bar_setting_show_view:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/airbnb/lottie/LottieAnimationView;

    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mPopSettingShowView:Lcom/airbnb/lottie/LottieAnimationView;

    .line 194
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/transsion/camera/utils/CameraUtil;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_91

    .line 195
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mPopSettingShowView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 196
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mPopSettingHideView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 199
    :cond_91
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->initPopSettingControlView()V

    .line 201
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mPopSettingHideView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-static {p1}, Lcom/transsion/camera/utils/MultiTouchManager;->pressSealWithoutAnimation(Landroid/view/View;)V

    .line 202
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mPopSettingShowView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-static {p1}, Lcom/transsion/camera/utils/MultiTouchManager;->pressSealWithoutAnimation(Landroid/view/View;)V

    goto :goto_c4

    .line 204
    :cond_9f
    sget v0, Lcom/transsion/camera/R$layout;->top_bar_layout:I

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mRoot:Landroid/view/View;

    .line 205
    sget v0, Lcom/transsion/camera/R$id;->top_bar_container:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/app/ui/topbar/TopBarContainer;

    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mTopBarContainer:Lcom/transsion/camera/app/ui/topbar/TopBarContainer;

    .line 206
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/ui/topbar/TopBarContainer;->initManager(Lcom/transsion/camera/app/ui/ScreenManager;)V

    .line 207
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mTopBarContainer:Lcom/transsion/camera/app/ui/topbar/TopBarContainer;

    new-instance v0, Lcom/transsion/camera/app/ui/animator/UIAnimatorListener;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    sget-object v2, Lcom/transsion/camera/app/common/IUIAnimatorController$AnimatorType;->TOP_BAR:Lcom/transsion/camera/app/common/IUIAnimatorController$AnimatorType;

    invoke-direct {v0, v1, v2}, Lcom/transsion/camera/app/ui/animator/UIAnimatorListener;-><init>(Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/app/common/IUIAnimatorController$AnimatorType;)V

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/ui/topbar/TopBarContainer;->addAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 211
    :goto_c4
    iget p1, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mOrientation:I

    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->updateLayoutParams(I)V

    .line 213
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 214
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mInflater:Landroid/view/LayoutInflater;

    sget v1, Lcom/transsion/camera/R$layout;->popup_option_layout:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/transsion/camera/app/ui/widget/HorizontalAverageLayout;

    iput-object v6, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->popupOptionRoot:Lcom/transsion/camera/app/ui/widget/HorizontalAverageLayout;

    .line 215
    iget-object v4, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mInflater:Landroid/view/LayoutInflater;

    iget-object v5, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mRoot:Landroid/view/View;

    sget v0, Lcom/transsion/camera/R$dimen;->top_bar_common_width:I

    .line 216
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    sget v0, Lcom/transsion/camera/R$dimen;->top_bar_height:I

    .line 217
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    iget-object v9, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mPopupOptionManager:Lcom/transsion/camera/app/ui/PopupOptionManager;

    iget-object v11, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    iget-object v12, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/4 v10, 0x0

    move-object v3, p0

    .line 215
    invoke-virtual/range {v3 .. v12}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->createPopupOption(Landroid/view/LayoutInflater;Landroid/view/View;Landroid/view/View;IILcom/transsion/camera/app/ui/PopupOptionManager;ILcom/transsion/camera/app/ui/ScreenManager;Lcom/transsion/camera/app/common/IAppUI;)Lcom/transsion/camera/app/ui/setting/PopupOption;

    move-result-object p0

    iput-object p0, v3, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mPopupOption:Lcom/transsion/camera/app/ui/setting/PopupOption;

    .line 218
    invoke-virtual {p0, v3}, Lcom/transsion/camera/app/ui/setting/PopupOption;->setPopupWindowListener(Lcom/transsion/camera/app/common/IAppUIListener$IPopupWindowListener;)V

    .line 219
    iget-object p0, v3, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mPopupOption:Lcom/transsion/camera/app/ui/setting/PopupOption;

    invoke-virtual {v3}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->getPopupAnimationStrategy()Lcom/transsion/camera/app/common/ui/setting/IPopupOptionControl$IAnimationStrategy;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/setting/PopupOption;->setAnimationStrategy(Lcom/transsion/camera/app/common/ui/setting/IPopupOptionControl$IAnimationStrategy;)V

    .line 220
    iget-object p0, v3, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mPopupOption:Lcom/transsion/camera/app/ui/setting/PopupOption;

    iget-object v0, v3, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenFormType()I

    move-result v0

    invoke-virtual {p0, v0, v2}, Lcom/transsion/camera/app/ui/setting/PopupOption;->initScreenForm(IZ)V

    .line 221
    iget-boolean p0, v3, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mTreasureBoxSupport:Z

    if-eqz p0, :cond_11e

    .line 222
    iget-object p0, v3, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->popupOptionRoot:Lcom/transsion/camera/app/ui/widget/HorizontalAverageLayout;

    const-string/jumbo v0, "type_i"

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/widget/HorizontalAverageLayout;->setTag(Ljava/lang/Object;)V

    .line 225
    :cond_11e
    iget-object p0, v3, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/transsion/camera/utils/FeatureSupport;->isSupportFoldUI(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_1a6

    iget-object p0, v3, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/transsion/camera/utils/FeatureSupport;->isOnlySupportTBHoverUI(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_1a6

    .line 226
    iget-object p0, v3, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mInflater:Landroid/view/LayoutInflater;

    sget v0, Lcom/transsion/camera/R$layout;->horizontal_popup_option_layout:I

    invoke-virtual {p0, v0, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    move-object v6, p0

    check-cast v6, Lcom/transsion/camera/app/ui/widget/HorizontalAverageLayout;

    iput-object v6, v3, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->popupOptionRootH:Lcom/transsion/camera/app/ui/widget/HorizontalAverageLayout;

    .line 227
    iget-object v4, v3, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mInflater:Landroid/view/LayoutInflater;

    iget-object v5, v3, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mRoot:Landroid/view/View;

    sget p0, Lcom/transsion/camera/R$dimen;->top_bar_common_expand_width:I

    .line 228
    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iget-object v9, v3, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mPopupOptionManager:Lcom/transsion/camera/app/ui/PopupOptionManager;

    iget-object v11, v3, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    iget-object v12, v3, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/4 v8, -0x2

    const/4 v10, 0x1

    .line 227
    invoke-virtual/range {v3 .. v12}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->createPopupOption(Landroid/view/LayoutInflater;Landroid/view/View;Landroid/view/View;IILcom/transsion/camera/app/ui/PopupOptionManager;ILcom/transsion/camera/app/ui/ScreenManager;Lcom/transsion/camera/app/common/IAppUI;)Lcom/transsion/camera/app/ui/setting/PopupOption;

    move-result-object p0

    iput-object p0, v3, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mPopupOptionH:Lcom/transsion/camera/app/ui/setting/PopupOption;

    .line 230
    invoke-virtual {p0, v3}, Lcom/transsion/camera/app/ui/setting/PopupOption;->setPopupWindowListener(Lcom/transsion/camera/app/common/IAppUIListener$IPopupWindowListener;)V

    .line 231
    iget-object p0, v3, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mPopupOptionH:Lcom/transsion/camera/app/ui/setting/PopupOption;

    invoke-virtual {v3}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->getPopupAnimationStrategy()Lcom/transsion/camera/app/common/ui/setting/IPopupOptionControl$IAnimationStrategy;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/setting/PopupOption;->setAnimationStrategy(Lcom/transsion/camera/app/common/ui/setting/IPopupOptionControl$IAnimationStrategy;)V

    .line 232
    iget-object p0, v3, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mPopupOptionH:Lcom/transsion/camera/app/ui/setting/PopupOption;

    iget-object v0, v3, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenFormType()I

    move-result v0

    invoke-virtual {p0, v0, v2}, Lcom/transsion/camera/app/ui/setting/PopupOption;->initScreenForm(IZ)V

    .line 234
    iget-object p0, v3, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mInflater:Landroid/view/LayoutInflater;

    sget v0, Lcom/transsion/camera/R$layout;->vertical_popup_option_layout:I

    invoke-virtual {p0, v0, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    move-object v6, p0

    check-cast v6, Lcom/transsion/camera/app/ui/widget/VerticalAverageLayout;

    iput-object v6, v3, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->popupOptionRootV:Lcom/transsion/camera/app/ui/widget/VerticalAverageLayout;

    .line 235
    iget-object v4, v3, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mInflater:Landroid/view/LayoutInflater;

    iget-object v5, v3, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mRoot:Landroid/view/View;

    sget p0, Lcom/transsion/camera/R$dimen;->top_bar_common_expand_width:I

    .line 236
    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    iget-object v9, v3, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mPopupOptionManager:Lcom/transsion/camera/app/ui/PopupOptionManager;

    iget-object v11, v3, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    iget-object v12, v3, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/4 v7, -0x2

    const/4 v10, 0x2

    .line 235
    invoke-virtual/range {v3 .. v12}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->createPopupOption(Landroid/view/LayoutInflater;Landroid/view/View;Landroid/view/View;IILcom/transsion/camera/app/ui/PopupOptionManager;ILcom/transsion/camera/app/ui/ScreenManager;Lcom/transsion/camera/app/common/IAppUI;)Lcom/transsion/camera/app/ui/setting/PopupOption;

    move-result-object p0

    iput-object p0, v3, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mPopupOptionV:Lcom/transsion/camera/app/ui/setting/PopupOption;

    .line 238
    invoke-virtual {p0, v3}, Lcom/transsion/camera/app/ui/setting/PopupOption;->setPopupWindowListener(Lcom/transsion/camera/app/common/IAppUIListener$IPopupWindowListener;)V

    .line 239
    iget-object p0, v3, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mPopupOptionV:Lcom/transsion/camera/app/ui/setting/PopupOption;

    invoke-virtual {v3}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->getPopupAnimationStrategy()Lcom/transsion/camera/app/common/ui/setting/IPopupOptionControl$IAnimationStrategy;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/transsion/camera/app/ui/setting/PopupOption;->setAnimationStrategy(Lcom/transsion/camera/app/common/ui/setting/IPopupOptionControl$IAnimationStrategy;)V

    .line 240
    iget-object p0, v3, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mPopupOptionV:Lcom/transsion/camera/app/ui/setting/PopupOption;

    iget-object p2, v3, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {p2}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenFormType()I

    move-result p2

    invoke-virtual {p0, p2, v2}, Lcom/transsion/camera/app/ui/setting/PopupOption;->initScreenForm(IZ)V

    .line 242
    :cond_1a6
    invoke-direct {v3, p1}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->initVideoQualityPoint(Landroid/content/res/Resources;)V

    .line 243
    invoke-direct {v3}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->updatePopSettingControlViewLayout()V

    .line 245
    invoke-static {}, Lcom/transsion/camera/app/common/ModuleTransferManager;->getTransferManager()Lcom/transsion/camera/app/common/ModuleTransferManager;

    move-result-object p0

    iget-object p1, v3, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mIModuleTransfer:Lcom/transsion/camera/app/common/IModuleTransfer;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/ModuleTransferManager;->registerTransferListener(Lcom/transsion/camera/app/common/IModuleTransfer;)V

    .line 246
    iget-object p0, v3, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mOldValue:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 247
    invoke-direct {v3}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->ringScreenLightUpdateUI()V

    .line 248
    iget-object p0, v3, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mRoot:Landroid/view/View;

    return-object p0
.end method

.method public isCelebritySceneShow(Z)V
    .registers 2

    .line 1451
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mCelebritySceneShow:Z

    return-void
.end method

.method public isDualDeviceItemUIShow(Z)V
    .registers 2

    .line 1447
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mIsDualDeviceItemShow:Z

    return-void
.end method

.method public isFilterUIShow(Z)V
    .registers 4

    .line 1442
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mFilterUIShow:Z

    .line 1443
    sget-object p1, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isFilterUIShow: mFilterUIShow = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mFilterUIShow:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public isImageStyleShow(Z)V
    .registers 2

    .line 1426
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mImageStyleShow:Z

    return-void
.end method

.method protected isNeedAnimation()Z
    .registers 1

    .line 479
    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mNeedAnimation:Z

    return p0
.end method

.method public isPMasterBottomUIShow(Z)V
    .registers 2

    .line 1430
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mIsPMasterBottomUIShow:Z

    return-void
.end method

.method public isPopOptionAppearing()Z
    .registers 1

    .line 1417
    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mIsPopSettingAppearing:Z

    return p0
.end method

.method public isPopSettingShow(Z)V
    .registers 2

    .line 1434
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mIsPopSettingShow:Z

    return-void
.end method

.method public isPopupShowing()Z
    .registers 3

    .line 727
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mPopupOption:Lcom/transsion/camera/app/ui/setting/PopupOption;

    const/4 v1, 0x1

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/setting/PopupOption;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_c

    return v1

    .line 728
    :cond_c
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mPopupOptionH:Lcom/transsion/camera/app/ui/setting/PopupOption;

    if-eqz v0, :cond_17

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/setting/PopupOption;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_17

    return v1

    .line 729
    :cond_17
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mPopupOptionV:Lcom/transsion/camera/app/ui/setting/PopupOption;

    if-eqz p0, :cond_22

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/setting/PopupOption;->isShowing()Z

    move-result p0

    if-eqz p0, :cond_22

    return v1

    :cond_22
    const/4 p0, 0x0

    return p0
.end method

.method public isPreviewDown(Z)V
    .registers 2

    .line 1421
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mIsPreviewDown:Z

    return-void
.end method

.method public isTopBarShowing()Z
    .registers 5

    .line 1407
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mTopBarContainer:Lcom/transsion/camera/app/ui/topbar/TopBarContainer;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v0, :cond_11

    .line 1408
    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result p0

    cmpl-float p0, p0, v2

    if-eqz p0, :cond_10

    return v1

    :cond_10
    return v3

    .line 1409
    :cond_11
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mLeftTopBarContainer:Lcom/transsion/camera/app/ui/topbar/TopBarContainer;

    if-eqz p0, :cond_1e

    .line 1410
    invoke-virtual {p0}, Landroid/view/View;->getAlpha()F

    move-result p0

    cmpl-float p0, p0, v2

    if-eqz p0, :cond_1e

    return v1

    :cond_1e
    return v3
.end method

.method public isZoomBegin(Z)V
    .registers 2

    .line 702
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mIsZoomBegin:Z

    return-void
.end method

.method public notifyCameraOperateAction(I)V
    .registers 4

    const/16 v0, 0x20

    if-eq p1, v0, :cond_19

    const/16 v0, 0x17a

    if-eq p1, v0, :cond_15

    const/16 v0, 0x188

    if-eq p1, v0, :cond_15

    const/16 v0, 0x169

    if-eq p1, v0, :cond_15

    const/16 v0, 0x16a

    if-eq p1, v0, :cond_15

    goto :goto_40

    .line 1636
    :cond_15
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->onNextUITypeChange(I)V

    goto :goto_40

    .line 1639
    :cond_19
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_40

    .line 1640
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mPopSettingShowView:Lcom/airbnb/lottie/LottieAnimationView;

    const/4 v1, 0x1

    if-eqz v0, :cond_31

    invoke-virtual {v0}, Landroid/view/View;->isFocusable()Z

    move-result v0

    if-nez v0, :cond_31

    .line 1641
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mPopSettingShowView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 1643
    :cond_31
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mPopSettingHideView:Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz v0, :cond_40

    invoke-virtual {v0}, Landroid/view/View;->isFocusable()Z

    move-result v0

    if-nez v0, :cond_40

    .line 1644
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mPopSettingHideView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 1650
    :cond_40
    :goto_40
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mTopBarItemUIs:Ljava/util/List;

    if-eqz v0, :cond_60

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_60

    .line 1651
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mTopBarItemUIs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_50
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_60

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;

    .line 1652
    invoke-interface {v1, p1}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->notifyCameraOperateAction(I)V

    goto :goto_50

    .line 1655
    :cond_60
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mLeftTopBarItemUIs:Ljava/util/List;

    if-eqz v0, :cond_80

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_80

    .line 1656
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mLeftTopBarItemUIs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_70
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_80

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;

    .line 1657
    invoke-interface {v1, p1}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->notifyCameraOperateAction(I)V

    goto :goto_70

    .line 1661
    :cond_80
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mRightTopBarItemUIs:Ljava/util/List;

    if-eqz v0, :cond_a0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_a0

    .line 1662
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mRightTopBarItemUIs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_90
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;

    .line 1663
    invoke-interface {v1, p1}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->notifyCameraOperateAction(I)V

    goto :goto_90

    .line 1667
    :cond_a0
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mPopupOption:Lcom/transsion/camera/app/ui/setting/PopupOption;

    if-eqz v0, :cond_a7

    .line 1668
    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/ui/setting/PopupOption;->notifyCameraOperateActionToUI(I)V

    .line 1670
    :cond_a7
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mPopupOptionV:Lcom/transsion/camera/app/ui/setting/PopupOption;

    if-eqz v0, :cond_ae

    .line 1671
    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/ui/setting/PopupOption;->notifyCameraOperateActionToUI(I)V

    .line 1673
    :cond_ae
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mPopupOptionH:Lcom/transsion/camera/app/ui/setting/PopupOption;

    if-eqz p0, :cond_b5

    .line 1674
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/setting/PopupOption;->notifyCameraOperateActionToUI(I)V

    :cond_b5
    return-void
.end method

.method public notifyCameraOperateActionToUI(I)V
    .registers 2

    return-void
.end method

.method public notifyFlashFacadeChanged()V
    .registers 2

    const/4 v0, 0x1

    .line 1784
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mFlashFacadeChanged:Z

    return-void
.end method

.method public onFoldSwitchPreview(Ljava/lang/String;)V
    .registers 5

    .line 1695
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/transsion/camera/utils/FeatureSupport;->isOnlySupportTBHoverUI(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_9

    return-void

    .line 1698
    :cond_9
    sget-object v0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onFoldSwitchPreview: value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1699
    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mCurPreviewValue:Ljava/lang/String;

    .line 1700
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mHoverAnimator:Landroid/animation/ValueAnimator;

    invoke-static {p1}, Lcom/transsion/camera/utils/AnimationUtils;->stopAnimator(Landroid/animation/Animator;)V

    .line 1701
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->getTopBarTranslationY()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->runTopBarTranslateAnimator(I)V

    return-void
.end method

.method protected onNextUITypeChange(I)V
    .registers 2

    return-void
.end method

.method public onOrientationChanged(I)V
    .registers 5

    .line 751
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mPopupOptionManager:Lcom/transsion/camera/app/ui/PopupOptionManager;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/PopupOptionManager;->updatePopupOptionShow()Z

    .line 752
    iput p1, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mOrientation:I

    .line 753
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->updateLayoutParams(I)V

    .line 754
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mPopupOption:Lcom/transsion/camera/app/ui/setting/PopupOption;

    const/4 v1, 0x0

    if-eqz v0, :cond_1d

    .line 755
    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/ui/setting/PopupOption;->onOrientationChanged(I)V

    .line 756
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mPopupOption:Lcom/transsion/camera/app/ui/setting/PopupOption;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {v2}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenFormType()I

    move-result v2

    invoke-virtual {v0, v2, v1}, Lcom/transsion/camera/app/ui/setting/PopupOption;->initScreenForm(IZ)V

    .line 758
    :cond_1d
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mPopupOptionH:Lcom/transsion/camera/app/ui/setting/PopupOption;

    if-eqz v0, :cond_36

    .line 759
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->popupOptionRootH:Lcom/transsion/camera/app/ui/widget/HorizontalAverageLayout;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/ui/widget/HorizontalAverageLayout;->setOrientation(I)V

    .line 760
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mPopupOptionH:Lcom/transsion/camera/app/ui/setting/PopupOption;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/ui/setting/PopupOption;->onOrientationChanged(I)V

    .line 761
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mPopupOptionH:Lcom/transsion/camera/app/ui/setting/PopupOption;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {v2}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenFormType()I

    move-result v2

    invoke-virtual {v0, v2, v1}, Lcom/transsion/camera/app/ui/setting/PopupOption;->initScreenForm(IZ)V

    .line 763
    :cond_36
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mPopupOptionV:Lcom/transsion/camera/app/ui/setting/PopupOption;

    if-eqz v0, :cond_4f

    .line 764
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->popupOptionRootV:Lcom/transsion/camera/app/ui/widget/VerticalAverageLayout;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/ui/widget/VerticalAverageLayout;->setOrientation(I)V

    .line 765
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mPopupOptionV:Lcom/transsion/camera/app/ui/setting/PopupOption;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/ui/setting/PopupOption;->onOrientationChanged(I)V

    .line 766
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mPopupOptionV:Lcom/transsion/camera/app/ui/setting/PopupOption;

    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenFormType()I

    move-result v0

    invoke-virtual {p1, v0, v1}, Lcom/transsion/camera/app/ui/setting/PopupOption;->initScreenForm(IZ)V

    .line 768
    :cond_4f
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->updatePopSettingControlViewLayout()V

    return-void
.end method

.method protected onPopSettingShowViewAnimationCancel(Landroid/animation/Animator;)V
    .registers 3

    .line 281
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mPopSettingHideView:Lcom/airbnb/lottie/LottieAnimationView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 282
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mPopSettingShowView:Lcom/airbnb/lottie/LottieAnimationView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setProgress(F)V

    .line 283
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mPopSettingShowView:Lcom/airbnb/lottie/LottieAnimationView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 284
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->updateItemClickDisable(Z)V

    return-void
.end method

.method protected onPopSettingShowViewAnimationEnd(Landroid/animation/Animator;)V
    .registers 4

    .line 288
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mPopSettingHideView:Lcom/airbnb/lottie/LottieAnimationView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 289
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mPopSettingShowView:Lcom/airbnb/lottie/LottieAnimationView;

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 290
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mPopSettingHideView:Lcom/airbnb/lottie/LottieAnimationView;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setProgress(F)V

    .line 291
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->updateItemClickDisable(Z)V

    return-void
.end method

.method public onPopupDismissCancel()V
    .registers 3

    .line 1299
    sget-object v0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "onPopupDismissCancel() called"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1300
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mIsTopBarAppearing:Z

    .line 1301
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mIsPopSettingAppearing:Z

    .line 1302
    iget-boolean v1, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mPopSettingSupport:Z

    if-eqz v1, :cond_1d

    iget-boolean v1, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mPopSettingEnable:Z

    if-eqz v1, :cond_1d

    iget-boolean v1, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mTreasureBoxSupport:Z

    if-nez v1, :cond_1d

    .line 1303
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mPopSettingShowView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_1d
    return-void
.end method

.method public onPopupDismissEnd()V
    .registers 4

    .line 1258
    sget-object v0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPopupDismissEnd() called "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mIsTopBarAppearing:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1259
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mIsTopBarAppearing:Z

    .line 1260
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mIsPopSettingAppearing:Z

    .line 1261
    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mCameraOperationControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    const/16 v2, 0x1e

    invoke-interface {v1, v2}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 1262
    invoke-static {}, Lcom/transsion/camera/utils/MultiTouchManager;->resetState()V

    .line 1263
    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz v1, :cond_4f

    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mTreasureBoxSupport:Z

    if-eqz v2, :cond_4f

    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mImageStyleShow:Z

    if-nez v2, :cond_4f

    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mIsPMasterBottomUIShow:Z

    if-nez v2, :cond_4f

    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mIsPopSettingAppearing:Z

    if-nez v2, :cond_4f

    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mIsPopSettingShow:Z

    if-nez v2, :cond_4f

    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mFilterUIShow:Z

    if-nez v2, :cond_4f

    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mIsDualDeviceItemShow:Z

    if-nez v2, :cond_4f

    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mCelebritySceneShow:Z

    if-nez v2, :cond_4f

    const/4 v2, 0x1

    .line 1266
    invoke-interface {v1, v2, v0}, Lcom/transsion/camera/app/common/IAppUI;->showOrHideModePickerRootUI(ZZ)V

    .line 1268
    :cond_4f
    iget-boolean v1, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mPopSettingSupport:Z

    if-eqz v1, :cond_60

    iget-boolean v1, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mPopSettingEnable:Z

    if-eqz v1, :cond_60

    iget-boolean v1, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mTreasureBoxSupport:Z

    if-nez v1, :cond_60

    .line 1269
    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mPopSettingShowView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1271
    :cond_60
    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mTopBarContainer:Lcom/transsion/camera/app/ui/topbar/TopBarContainer;

    if-eqz v1, :cond_67

    .line 1272
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->setTopBarContainerVisible(I)V

    .line 1274
    :cond_67
    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mLeftTopBarContainer:Lcom/transsion/camera/app/ui/topbar/TopBarContainer;

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz v1, :cond_7d

    .line 1275
    invoke-virtual {v1}, Landroid/view/View;->getAlpha()F

    move-result v1

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_7a

    .line 1276
    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mLeftTopBarContainer:Lcom/transsion/camera/app/ui/topbar/TopBarContainer;

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 1278
    :cond_7a
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->setLeftTopBarContainerVisible(I)V

    .line 1280
    :cond_7d
    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mRightTopBarContainer:Lcom/transsion/camera/app/ui/topbar/TopBarContainer;

    if-eqz v1, :cond_91

    .line 1281
    invoke-virtual {v1}, Landroid/view/View;->getAlpha()F

    move-result v1

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_8e

    .line 1282
    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mRightTopBarContainer:Lcom/transsion/camera/app/ui/topbar/TopBarContainer;

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 1284
    :cond_8e
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->setRightTopBarContainerVisible(I)V

    .line 1286
    :cond_91
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isVideoFlashlightSupportWhenRecording()Z

    move-result v1

    if-eqz v1, :cond_9e

    .line 1288
    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mCameraOperationControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    const/16 v2, 0xc8

    invoke-interface {v1, v2}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 1290
    :cond_9e
    iget-boolean v1, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mFlashFacadeChanged:Z

    if-eqz v1, :cond_ab

    .line 1291
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mFlashFacadeChanged:Z

    .line 1292
    iget-boolean v1, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mIsPopSettingShow:Z

    if-nez v1, :cond_ab

    .line 1293
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->playHidePopSettingAnimation(Z)V

    :cond_ab
    return-void
.end method

.method public onPopupDismissStart()V
    .registers 12

    .line 1309
    sget-object v0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPopupDismissStart() called "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mIsTopBarAppearing:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1310
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mIsTopBarAppearing:Z

    if-eqz v0, :cond_22

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mTreasureBoxSupport:Z

    if-nez v0, :cond_22

    goto/16 :goto_146

    .line 1313
    :cond_22
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mTopBarContainer:Lcom/transsion/camera/app/ui/topbar/TopBarContainer;

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-wide/16 v4, 0x46

    const-wide/16 v6, 0x118

    const-string v8, "alpha"

    if-eqz v0, :cond_55

    .line 1314
    invoke-direct {p0, v2}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->setTopBarContainerVisible(I)V

    .line 1315
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mTopBarContainer:Lcom/transsion/camera/app/ui/topbar/TopBarContainer;

    new-array v9, v1, [F

    fill-array-data v9, :array_148

    invoke-static {v0, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 1316
    new-instance v9, Landroid/animation/AnimatorSet;

    invoke-direct {v9}, Landroid/animation/AnimatorSet;-><init>()V

    .line 1317
    iget-object v10, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mTopBarInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v9, v10}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1318
    invoke-virtual {v9, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 1319
    invoke-virtual {v9, v6, v7}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    .line 1320
    invoke-virtual {v9, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1321
    invoke-virtual {v9}, Landroid/animation/AnimatorSet;->start()V

    .line 1322
    iput-boolean v3, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mIsTopBarAppearing:Z

    .line 1324
    :cond_55
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mLeftTopBarContainer:Lcom/transsion/camera/app/ui/topbar/TopBarContainer;

    if-eqz v0, :cond_83

    .line 1325
    invoke-direct {p0, v2}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->setLeftTopBarContainerVisible(I)V

    .line 1326
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mLeftTopBarContainer:Lcom/transsion/camera/app/ui/topbar/TopBarContainer;

    new-array v9, v1, [F

    fill-array-data v9, :array_150

    invoke-static {v0, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 1327
    new-instance v9, Landroid/animation/AnimatorSet;

    invoke-direct {v9}, Landroid/animation/AnimatorSet;-><init>()V

    .line 1328
    iget-object v10, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mTopBarInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v9, v10}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1329
    invoke-virtual {v9, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 1330
    invoke-virtual {v9, v6, v7}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    .line 1331
    invoke-virtual {v9, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1332
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mTreasureBoxSupport:Z

    if-nez v0, :cond_81

    .line 1333
    invoke-virtual {v9}, Landroid/animation/AnimatorSet;->start()V

    .line 1335
    :cond_81
    iput-boolean v3, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mIsTopBarAppearing:Z

    .line 1337
    :cond_83
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mRightTopBarContainer:Lcom/transsion/camera/app/ui/topbar/TopBarContainer;

    if-eqz v0, :cond_b1

    .line 1338
    invoke-direct {p0, v2}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->setRightTopBarContainerVisible(I)V

    .line 1339
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mRightTopBarContainer:Lcom/transsion/camera/app/ui/topbar/TopBarContainer;

    new-array v2, v1, [F

    fill-array-data v2, :array_158

    invoke-static {v0, v8, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 1340
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    .line 1341
    iget-object v9, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mTopBarInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v2, v9}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1342
    invoke-virtual {v2, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 1343
    invoke-virtual {v2, v6, v7}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    .line 1344
    invoke-virtual {v2, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1345
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mTreasureBoxSupport:Z

    if-nez v0, :cond_af

    .line 1346
    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    .line 1348
    :cond_af
    iput-boolean v3, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mIsTopBarAppearing:Z

    .line 1350
    :cond_b1
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mPopSettingShowView:Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz v0, :cond_e8

    const/4 v2, 0x0

    .line 1351
    invoke-virtual {v0, v2}, Lcom/airbnb/lottie/LottieAnimationView;->setProgress(F)V

    .line 1352
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mPopSettingShowView:Lcom/airbnb/lottie/LottieAnimationView;

    new-array v2, v1, [F

    fill-array-data v2, :array_160

    invoke-static {v0, v8, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 1353
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    .line 1354
    iget-object v9, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mTopBarInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v2, v9}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1355
    invoke-virtual {v2, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 1356
    invoke-virtual {v2, v6, v7}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    .line 1357
    invoke-virtual {v2, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1358
    new-instance v0, Lcom/transsion/camera/app/ui/AbstractTopBarUI$7;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/ui/AbstractTopBarUI$7;-><init>(Lcom/transsion/camera/app/ui/AbstractTopBarUI;)V

    invoke-virtual {v2, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1375
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mTreasureBoxSupport:Z

    if-nez v0, :cond_e6

    .line 1376
    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    .line 1378
    :cond_e6
    iput-boolean v3, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mIsTopBarAppearing:Z

    .line 1380
    :cond_e8
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mPopSettingHideView:Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz v0, :cond_111

    .line 1381
    new-array v1, v1, [F

    fill-array-data v1, :array_168

    invoke-static {v0, v8, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 1382
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 1383
    iget-object v2, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mTopBarInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1384
    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 1385
    invoke-virtual {v1, v6, v7}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    .line 1386
    invoke-virtual {v1, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1387
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mTreasureBoxSupport:Z

    if-nez v0, :cond_10f

    .line 1388
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    .line 1390
    :cond_10f
    iput-boolean v3, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mIsTopBarAppearing:Z

    .line 1392
    :cond_111
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mTreasureBoxSupport:Z

    const/16 v1, 0x8

    if-eqz v0, :cond_13b

    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz v0, :cond_13b

    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mImageStyleShow:Z

    if-nez v2, :cond_13b

    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mFilterUIShow:Z

    if-nez v2, :cond_13b

    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mCelebritySceneShow:Z

    if-nez v2, :cond_13b

    .line 1394
    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mNeedHidePopSettingView:Z

    if-nez v2, :cond_133

    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mIsPreviewDown:Z

    if-nez v2, :cond_133

    .line 1395
    invoke-interface {v0}, Lcom/transsion/camera/app/common/IAppUI;->showPopItem()V

    goto :goto_13b

    .line 1397
    :cond_133
    invoke-interface {v0}, Lcom/transsion/camera/app/common/IAppUIControl$IPopSettingViewControl;->onPopSettingHideViewClick()V

    .line 1398
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$IPopSettingViewControl;->setPopSettingContainerVisible(I)V

    .line 1401
    :cond_13b
    :goto_13b
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz v0, :cond_146

    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mTreasureBoxSupport:Z

    if-eqz p0, :cond_146

    .line 1402
    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$IPopSettingViewControl;->setTreasureBoxBackViewVisible(I)V

    :cond_146
    :goto_146
    return-void

    nop

    :array_148
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_150
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_158
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_160
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_168
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public onPopupShow()V
    .registers 9

    .line 1162
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mCameraOperationControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    const/16 v1, 0x1d

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    const/4 v0, 0x1

    .line 1163
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mIsPopSettingAppearing:Z

    .line 1164
    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mTopBarContainer:Lcom/transsion/camera/app/ui/topbar/TopBarContainer;

    const/4 v2, 0x2

    const-wide/16 v3, 0xaa

    const-string v5, "alpha"

    if-eqz v1, :cond_37

    .line 1165
    new-array v6, v2, [F

    fill-array-data v6, :array_10e

    invoke-static {v1, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 1166
    new-instance v6, Landroid/animation/AnimatorSet;

    invoke-direct {v6}, Landroid/animation/AnimatorSet;-><init>()V

    .line 1167
    iget-object v7, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mTopBarInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v6, v7}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1168
    invoke-virtual {v6, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 1169
    invoke-virtual {v6, v3, v4}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1171
    new-instance v1, Lcom/transsion/camera/app/ui/AbstractTopBarUI$4;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/ui/AbstractTopBarUI$4;-><init>(Lcom/transsion/camera/app/ui/AbstractTopBarUI;)V

    invoke-virtual {v6, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1188
    invoke-virtual {v6}, Landroid/animation/AnimatorSet;->start()V

    .line 1190
    :cond_37
    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mLeftTopBarContainer:Lcom/transsion/camera/app/ui/topbar/TopBarContainer;

    if-eqz v1, :cond_63

    .line 1191
    new-array v6, v2, [F

    fill-array-data v6, :array_116

    invoke-static {v1, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 1192
    new-instance v6, Landroid/animation/AnimatorSet;

    invoke-direct {v6}, Landroid/animation/AnimatorSet;-><init>()V

    .line 1193
    iget-object v7, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mTopBarInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v6, v7}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1194
    invoke-virtual {v6, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 1195
    invoke-virtual {v6, v3, v4}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1197
    new-instance v1, Lcom/transsion/camera/app/ui/AbstractTopBarUI$5;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/ui/AbstractTopBarUI$5;-><init>(Lcom/transsion/camera/app/ui/AbstractTopBarUI;)V

    invoke-virtual {v6, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1211
    iget-boolean v1, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mTreasureBoxSupport:Z

    if-nez v1, :cond_63

    .line 1212
    invoke-virtual {v6}, Landroid/animation/AnimatorSet;->start()V

    .line 1215
    :cond_63
    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mRightTopBarContainer:Lcom/transsion/camera/app/ui/topbar/TopBarContainer;

    if-eqz v1, :cond_91

    .line 1216
    new-array v2, v2, [F

    fill-array-data v2, :array_11e

    invoke-static {v1, v5, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 1217
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    .line 1218
    iget-object v3, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mTopBarInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1219
    invoke-virtual {v2, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    const-wide/16 v3, 0x1

    .line 1220
    invoke-virtual {v2, v3, v4}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1222
    new-instance v1, Lcom/transsion/camera/app/ui/AbstractTopBarUI$6;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/ui/AbstractTopBarUI$6;-><init>(Lcom/transsion/camera/app/ui/AbstractTopBarUI;)V

    invoke-virtual {v2, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1236
    iget-boolean v1, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mTreasureBoxSupport:Z

    if-nez v1, :cond_91

    .line 1237
    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    .line 1240
    :cond_91
    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/4 v2, 0x0

    if-eqz v1, :cond_9d

    iget-boolean v3, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mTreasureBoxSupport:Z

    if-eqz v3, :cond_9d

    .line 1241
    invoke-interface {v1, v2, v2}, Lcom/transsion/camera/app/common/IAppUI;->showOrHideModePickerRootUI(ZZ)V

    .line 1243
    :cond_9d
    iget-boolean v1, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mTreasureBoxSupport:Z

    if-nez v1, :cond_a6

    const/16 v1, 0x8

    .line 1244
    invoke-virtual {p0, v1}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->setTopBarControllerVisible(I)V

    .line 1246
    :cond_a6
    iget-boolean v1, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mIsPopSettingShow:Z

    xor-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mNeedHidePopSettingView:Z

    .line 1247
    sget-object v0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPopupShow: mTreasureBoxSupport = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mTreasureBoxSupport:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", mAppUI = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", mImageStyleShow = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mImageStyleShow:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", mFilterUIShow = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mFilterUIShow:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", mIsZoomBegin = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mIsZoomBegin:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1250
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mTreasureBoxSupport:Z

    if-eqz v0, :cond_10c

    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz v0, :cond_10c

    iget-boolean v1, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mImageStyleShow:Z

    if-nez v1, :cond_10c

    iget-boolean v1, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mFilterUIShow:Z

    if-nez v1, :cond_10c

    iget-boolean v1, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mIsZoomBegin:Z

    if-nez v1, :cond_10c

    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mCelebritySceneShow:Z

    if-nez p0, :cond_10c

    .line 1252
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p0

    iget-boolean p0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportUI5:Z

    invoke-interface {v0, p0, v2}, Lcom/transsion/camera/app/common/IAppUIControl$IPopSettingViewControl;->onPopSettingShowViewClick(ZZ)V

    :cond_10c
    return-void

    nop

    :array_10e
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_116
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_11e
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public onScreenFormChanged(IZ)V
    .registers 5

    .line 1062
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mRoot:Landroid/view/View;

    if-nez v0, :cond_c

    .line 1063
    sget-object p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "onScreenFormChanged mRoot is null."

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 1067
    :cond_c
    iget v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mCurrentScreenType:I

    if-ne v0, p1, :cond_12

    goto/16 :goto_9e

    .line 1070
    :cond_12
    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mPopupOptionManager:Lcom/transsion/camera/app/ui/PopupOptionManager;

    invoke-virtual {v1, v0}, Lcom/transsion/camera/app/ui/PopupOptionManager;->hasLastScreenType(I)V

    const/4 v0, 0x3

    if-ne p1, v0, :cond_1e

    .line 1072
    iget v1, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mCurrentScreenType:I

    if-eqz v1, :cond_24

    :cond_1e
    if-nez p1, :cond_2a

    iget v1, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mCurrentScreenType:I

    if-ne v1, v0, :cond_2a

    .line 1074
    :cond_24
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mPopupOptionManager:Lcom/transsion/camera/app/ui/PopupOptionManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/PopupOptionManager;->setNeedShowPopUpOption(Z)V

    .line 1077
    :cond_2a
    iput p1, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mCurrentScreenType:I

    .line 1079
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/transsion/camera/utils/FeatureSupport;->isSupportFoldUI(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4f

    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/transsion/camera/utils/FeatureSupport;->isOnlySupportTBHoverUI(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_4f

    .line 1080
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mPopupOptionManager:Lcom/transsion/camera/app/ui/PopupOptionManager;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/PopupOptionManager;->updatePopupOptionShow()Z

    .line 1082
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mPopupOptionH:Lcom/transsion/camera/app/ui/setting/PopupOption;

    if-eqz v0, :cond_48

    .line 1083
    invoke-virtual {v0, p1, p2}, Lcom/transsion/camera/app/ui/setting/PopupOption;->onScreenFormChanged(IZ)V

    .line 1085
    :cond_48
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mPopupOptionV:Lcom/transsion/camera/app/ui/setting/PopupOption;

    if-eqz v0, :cond_4f

    .line 1086
    invoke-virtual {v0, p1, p2}, Lcom/transsion/camera/app/ui/setting/PopupOption;->onScreenFormChanged(IZ)V

    .line 1089
    :cond_4f
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->updatePopSettingControlViewLayout()V

    .line 1090
    iget v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mOrientation:I

    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->updateLayoutParams(I)V

    .line 1091
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->getTopBarTranslationY()I

    move-result v0

    .line 1092
    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mHoverAnimator:Landroid/animation/ValueAnimator;

    invoke-static {v1}, Lcom/transsion/camera/utils/AnimationUtils;->stopAnimator(Landroid/animation/Animator;)V

    .line 1093
    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mPopupOption:Lcom/transsion/camera/app/ui/setting/PopupOption;

    if-eqz v1, :cond_6b

    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/setting/PopupOption;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_6b

    const/4 p2, 0x0

    .line 1096
    :cond_6b
    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/transsion/camera/utils/FeatureSupport;->isOnlySupportTBHoverUI(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_79

    if-eqz p2, :cond_79

    .line 1097
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->runTopBarTranslateAnimator(I)V

    goto :goto_86

    .line 1099
    :cond_79
    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mRoot:Landroid/view/View;

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 1100
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mPopupOption:Lcom/transsion/camera/app/ui/setting/PopupOption;

    if-eqz v0, :cond_86

    .line 1101
    invoke-virtual {v0, p1, p2}, Lcom/transsion/camera/app/ui/setting/PopupOption;->onScreenFormChanged(IZ)V

    .line 1104
    :cond_86
    :goto_86
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->popupOptionRootV:Lcom/transsion/camera/app/ui/widget/VerticalAverageLayout;

    if-eqz p0, :cond_9e

    const/4 p2, 0x5

    if-eq p1, p2, :cond_98

    const/4 p2, 0x4

    if-ne p1, p2, :cond_91

    goto :goto_98

    .line 1109
    :cond_91
    const-string/jumbo p1, "type_c"

    invoke-virtual {p0, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-void

    .line 1107
    :cond_98
    :goto_98
    const-string/jumbo p1, "type_b"

    invoke-virtual {p0, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :cond_9e
    :goto_9e
    return-void
.end method

.method public abstract pause()V
.end method

.method public pauseControlViewAnimation()V
    .registers 2

    .line 1773
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mPopSettingHideView:Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz v0, :cond_c

    .line 1774
    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->pauseAnimation()V

    .line 1775
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mPopSettingHideView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 1777
    :cond_c
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mPopSettingShowView:Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz v0, :cond_18

    .line 1778
    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->pauseAnimation()V

    .line 1779
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mPopSettingShowView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    :cond_18
    return-void
.end method

.method public playHidePopSettingAnimation(Z)V
    .registers 3

    const/4 v0, -0x1

    .line 420
    invoke-virtual {p0, p1, v0}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->playHidePopSettingAnimation(ZI)V

    return-void
.end method

.method public playHidePopSettingAnimation(ZI)V
    .registers 6

    .line 424
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mPopSettingHideView:Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz v0, :cond_68

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->isNeedAnimation()Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_68

    .line 428
    :cond_b
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mFlashFacadeChanged:Z

    if-eqz v0, :cond_17

    .line 429
    sget-object p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "playHidePopSettingAnimation mFlashFacadeChanged, return."

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 432
    :cond_17
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mPopSettingShowView:Lcom/airbnb/lottie/LottieAnimationView;

    const/4 v1, 0x1

    if-eqz v0, :cond_24

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_24

    move v0, v1

    goto :goto_25

    :cond_24
    const/4 v0, 0x0

    :goto_25
    if-eqz v0, :cond_2c

    .line 434
    iget-object v2, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mPopSettingShowView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v2}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    :cond_2c
    if-eqz v0, :cond_37

    const/16 v0, 0xd0

    if-ne p2, v0, :cond_37

    const/4 p2, 0x0

    .line 438
    invoke-virtual {p0, p2}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->onPopSettingShowViewAnimationEnd(Landroid/animation/Animator;)V

    goto :goto_47

    .line 440
    :cond_37
    iget-object p2, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mPopSettingHideView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result p2

    if-eqz p2, :cond_47

    .line 441
    sget-object p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "playHidePopSettingAnimation mPopSettingHideView VISIBLE, return."

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    :cond_47
    :goto_47
    if-eqz p1, :cond_4c

    .line 446
    invoke-virtual {p0, v1}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->setPopSettingShowViewAnimation(Z)V

    .line 448
    :cond_4c
    sget-object p2, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "playHidePopSettingAnimation: isSwitchCamera: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 449
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mPopSettingHideView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    return-void

    .line 425
    :cond_68
    :goto_68
    sget-object p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "playHidePopSettingAnimation mPopSettingHideView is null, return."

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public abstract playLivePhotoLottieAnimation(I)V
.end method

.method public playShowPopSettingAnimation()V
    .registers 2

    const/4 v0, -0x1

    .line 400
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->playShowPopSettingAnimation(I)V

    return-void
.end method

.method public playShowPopSettingAnimation(I)V
    .registers 3

    .line 404
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mPopSettingShowView:Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz p1, :cond_22

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_22

    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mIsTopBarAppearing:Z

    if-nez p1, :cond_22

    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mPopSettingShowView:Lcom/airbnb/lottie/LottieAnimationView;

    .line 405
    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result p1

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float p1, p1, v0

    if-eqz p1, :cond_22

    .line 406
    sget-object p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "playShowPopSettingAnimation: return"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 409
    :cond_22
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mPopSettingHideView:Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz p1, :cond_2e

    .line 410
    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->pauseAnimation()V

    .line 411
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mPopSettingHideView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 413
    :cond_2e
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mPopSettingShowView:Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz p1, :cond_3e

    .line 414
    sget-object p1, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "playShowPopSettingAnimation: "

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 415
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mPopSettingShowView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    :cond_3e
    return-void
.end method

.method public abstract recover()V
.end method

.method public resetTopBarContainerDisplay()V
    .registers 2

    .line 1115
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mLeftTopBarContainer:Lcom/transsion/camera/app/ui/topbar/TopBarContainer;

    if-eqz p0, :cond_8

    const/4 v0, 0x0

    .line 1116
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/topbar/TopBarContainer;->setDisplayLeftToRight(Z)V

    :cond_8
    return-void
.end method

.method public abstract resume()V
.end method

.method public setAppUI(Lcom/transsion/camera/app/common/IAppUI;)V
    .registers 2

    .line 172
    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    return-void
.end method

.method public setCameraOperateActionControl(Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;)V
    .registers 2

    .line 1525
    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mCameraOperationControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    return-void
.end method

.method public setDisplayLeftToRight(Z)V
    .registers 2

    .line 1121
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mLeftTopBarContainer:Lcom/transsion/camera/app/ui/topbar/TopBarContainer;

    if-eqz p0, :cond_7

    .line 1122
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/topbar/TopBarContainer;->setDisplayLeftToRight(Z)V

    :cond_7
    return-void
.end method

.method public setLeftSettingUIList(Ljava/util/List;)V
    .registers 3

    .line 620
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->dismissPopup()Z

    const/4 v0, 0x1

    .line 621
    invoke-virtual {p0, p1, v0}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->updateLeftTopBarLayout(Ljava/util/List;Z)V

    return-void
.end method

.method public setNeedHidePopSettingView(Z)V
    .registers 2

    .line 1438
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mNeedHidePopSettingView:Z

    return-void
.end method

.method public setNeedPopSettingEntryAnimation(Z)V
    .registers 4

    .line 474
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mNeedAnimation:Z

    .line 475
    sget-object p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setNeedPopSettingEntryAnimation: animation = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public setPopSettingControlViewEnable(Z)V
    .registers 5

    .line 1154
    sget-object v0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPopSettingControlViewEnable: enable = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1155
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mPopSettingSupport:Z

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mPopSettingHideView:Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz v0, :cond_26

    .line 1156
    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 1157
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mPopSettingShowView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    :cond_26
    return-void
.end method

.method public setPopSettingShowViewAnimation(Z)V
    .registers 6

    .line 453
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mPopSettingShowView:Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz v0, :cond_21

    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mPopSettingHideView:Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz v1, :cond_21

    .line 457
    iget-boolean v1, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mSupply:Z

    const-string v2, "hide_pop_setting_layout_anim.json"

    const-string v3, "show_pop_setting_layout_anim.json"

    if-eqz v1, :cond_13

    if-eqz p1, :cond_13

    goto :goto_19

    :cond_13
    if-eqz v1, :cond_19

    .line 462
    const-string v3, "show_pop_setting_layout_anim_black.json"

    const-string v2, "hide_pop_setting_layout_anim_black.json"

    .line 468
    :cond_19
    :goto_19
    invoke-virtual {v0, v3}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    .line 469
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mPopSettingHideView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p0, v2}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    :cond_21
    return-void
.end method

.method public setPopSettingShowViewVisible(I)V
    .registers 4

    .line 483
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mPopSettingShowView:Lcom/airbnb/lottie/LottieAnimationView;

    if-nez v0, :cond_5

    return-void

    .line 486
    :cond_5
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->isSupportPopSettingUI()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 488
    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mPopSettingShowView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 490
    :cond_10
    iget-boolean v1, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mPopSettingSupport:Z

    if-eqz v1, :cond_1c

    if-eqz v0, :cond_1c

    .line 491
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mPopSettingShowView:Lcom/airbnb/lottie/LottieAnimationView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 493
    :cond_1c
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mPopSettingShowView:Lcom/airbnb/lottie/LottieAnimationView;

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/LottieAnimationView;->setProgress(F)V

    .line 494
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mPopSettingHideView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 495
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mPopSettingHideView:Lcom/airbnb/lottie/LottieAnimationView;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public setPopSettingViewControl(Lcom/transsion/camera/app/common/IAppUIControl$IPopSettingViewControl;)V
    .registers 2

    .line 631
    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mPopSettingViewControl:Lcom/transsion/camera/app/common/IAppUIControl$IPopSettingViewControl;

    return-void
.end method

.method public setPopSettingVisibleEnable(Z)V
    .registers 2

    .line 615
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mPopSettingEnable:Z

    return-void
.end method

.method public setRightSettingUIList(Ljava/util/List;)V
    .registers 3

    .line 625
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->dismissPopup()Z

    const/4 v0, 0x1

    .line 626
    invoke-virtual {p0, p1, v0}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->updateRightTopBarLayout(Ljava/util/List;Z)V

    return-void
.end method

.method public setSettingUIList(Ljava/util/List;)V
    .registers 3

    .line 538
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->dismissPopup()Z

    const/4 v0, 0x1

    .line 539
    invoke-virtual {p0, p1, v0}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->updateTopBarLayout(Ljava/util/List;Z)V

    .line 540
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mPopSettingSupport:Z

    if-eqz p1, :cond_21

    .line 541
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz p1, :cond_21

    .line 542
    invoke-interface {p1}, Lcom/transsion/camera/app/common/IAppUI;->getCurrentModeSettingUISpec()Lcom/transsion/camera/app/common/ModeSettingUISpec;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->getPopSettingUIEntries()[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1d

    .line 543
    array-length p1, p1

    if-lez p1, :cond_1d

    goto :goto_1e

    :cond_1d
    const/4 v0, 0x0

    .line 544
    :goto_1e
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->updatePopSettingShowViewVisibility(Z)V

    :cond_21
    return-void
.end method

.method public setTopBarControllerVisible(I)V
    .registers 4

    .line 1507
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mPopSettingHideView:Lcom/airbnb/lottie/LottieAnimationView;

    const/16 v1, 0x8

    if-eqz v0, :cond_1d

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, p1, :cond_1d

    if-ne v1, p1, :cond_18

    .line 1509
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mPopSettingHideView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->pauseAnimation()V

    .line 1510
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mPopSettingHideView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 1512
    :cond_18
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mPopSettingHideView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 1514
    :cond_1d
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mPopSettingShowView:Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz v0, :cond_38

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, p1, :cond_38

    if-ne v1, p1, :cond_33

    .line 1516
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mPopSettingShowView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->pauseAnimation()V

    .line 1517
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mPopSettingShowView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 1519
    :cond_33
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mPopSettingShowView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_38
    return-void
.end method

.method public setupViews()V
    .registers 3

    .line 530
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenFormType()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->onScreenFormChanged(IZ)V

    .line 531
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenFormType()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_16

    .line 532
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->originTopBarPadding()V

    :cond_16
    return-void
.end method

.method public showTopBarContainer()V
    .registers 4

    .line 1456
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mTopBarContainer:Lcom/transsion/camera/app/ui/topbar/TopBarContainer;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz v0, :cond_17

    .line 1457
    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v0

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_14

    .line 1458
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mTopBarContainer:Lcom/transsion/camera/app/ui/topbar/TopBarContainer;

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 1460
    :cond_14
    invoke-direct {p0, v1}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->setTopBarContainerVisible(I)V

    .line 1462
    :cond_17
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mLeftTopBarContainer:Lcom/transsion/camera/app/ui/topbar/TopBarContainer;

    if-eqz v0, :cond_2b

    .line 1463
    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v0

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_28

    .line 1464
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mLeftTopBarContainer:Lcom/transsion/camera/app/ui/topbar/TopBarContainer;

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 1466
    :cond_28
    invoke-direct {p0, v1}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->setLeftTopBarContainerVisible(I)V

    .line 1468
    :cond_2b
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mRightTopBarContainer:Lcom/transsion/camera/app/ui/topbar/TopBarContainer;

    if-eqz v0, :cond_3f

    .line 1469
    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v0

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_3c

    .line 1470
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mRightTopBarContainer:Lcom/transsion/camera/app/ui/topbar/TopBarContainer;

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 1472
    :cond_3c
    invoke-direct {p0, v1}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->setRightTopBarContainerVisible(I)V

    .line 1474
    :cond_3f
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mPopSettingHideView:Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz v0, :cond_53

    .line 1475
    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v0

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_50

    .line 1476
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mPopSettingHideView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 1478
    :cond_50
    invoke-direct {p0, v1}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->setTopBarContainerVisible(I)V

    .line 1480
    :cond_53
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mPopSettingShowView:Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz v0, :cond_67

    .line 1481
    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v0

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_64

    .line 1482
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mPopSettingShowView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 1484
    :cond_64
    invoke-direct {p0, v1}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->setTopBarContainerVisible(I)V

    :cond_67
    return-void
.end method

.method public shrinkTopBar()V
    .registers 1

    return-void
.end method

.method public startVideoSizePointAnimation(Z)V
    .registers 15

    .line 564
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mTopBarVideoSizePoint:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    if-eqz v0, :cond_a8

    iget-boolean v1, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mIsAnimationRunning:Z

    if-nez v1, :cond_a8

    .line 565
    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_13

    if-eqz p1, :cond_a8

    :cond_13
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mTopBarVideoSizePoint:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    .line 566
    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v0

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v2

    if-nez v0, :cond_21

    if-nez p1, :cond_a8

    :cond_21
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isSupportNewVideoSize()Z

    move-result v0

    if-nez v0, :cond_29

    goto/16 :goto_a8

    .line 569
    :cond_29
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    const/high16 v3, 0x3f000000    # 0.5f

    if-eqz p1, :cond_34

    move v4, v3

    goto :goto_35

    :cond_34
    move v4, v2

    :goto_35
    if-eqz p1, :cond_38

    move v3, v2

    :cond_38
    if-eqz p1, :cond_3c

    move v5, v1

    goto :goto_3d

    :cond_3c
    move v5, v2

    :goto_3d
    if-eqz p1, :cond_40

    move v1, v2

    :cond_40
    if-eqz p1, :cond_45

    const-wide/16 v6, 0x64

    goto :goto_47

    :cond_45
    const-wide/16 v6, 0x0

    .line 576
    :goto_47
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mTopBarVideoSizePoint:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    const/4 v2, 0x2

    new-array v8, v2, [F

    const/4 v9, 0x0

    aput v5, v8, v9

    const/4 v5, 0x1

    aput v1, v8, v5

    const-string v1, "alpha"

    invoke-static {p1, v1, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    const-wide/16 v10, 0xc8

    .line 577
    invoke-virtual {p1, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 578
    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mTopBarInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {p1, v1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 580
    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mTopBarVideoSizePoint:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    new-array v8, v2, [F

    aput v4, v8, v9

    aput v3, v8, v5

    const-string v12, "scaleX"

    invoke-static {v1, v12, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 581
    invoke-virtual {v1, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 582
    iget-object v8, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mTopBarInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v1, v8}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 584
    iget-object v8, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mTopBarVideoSizePoint:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    new-array v12, v2, [F

    aput v4, v12, v9

    aput v3, v12, v5

    const-string v3, "scaleY"

    invoke-static {v8, v3, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 585
    invoke-virtual {v3, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 586
    iget-object v4, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mTopBarInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v3, v4}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 587
    invoke-virtual {v0, v6, v7}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    const/4 v4, 0x3

    .line 588
    new-array v4, v4, [Landroid/animation/Animator;

    aput-object p1, v4, v9

    aput-object v1, v4, v5

    aput-object v3, v4, v2

    invoke-virtual {v0, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 590
    new-instance p1, Lcom/transsion/camera/app/ui/AbstractTopBarUI$3;

    invoke-direct {p1, p0}, Lcom/transsion/camera/app/ui/AbstractTopBarUI$3;-><init>(Lcom/transsion/camera/app/ui/AbstractTopBarUI;)V

    invoke-virtual {v0, p1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 611
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    :cond_a8
    :goto_a8
    return-void
.end method

.method public unInit()V
    .registers 2

    .line 746
    invoke-static {}, Lcom/transsion/camera/app/common/ModuleTransferManager;->getTransferManager()Lcom/transsion/camera/app/common/ModuleTransferManager;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mIModuleTransfer:Lcom/transsion/camera/app/common/IModuleTransfer;

    invoke-virtual {v0, p0}, Lcom/transsion/camera/app/common/ModuleTransferManager;->unregisterTransferListener(Lcom/transsion/camera/app/common/IModuleTransfer;)V

    return-void
.end method

.method protected updateItemClickDisable(Z)V
    .registers 4

    .line 391
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mRightTopBarItemUIs:Ljava/util/List;

    if-eqz v0, :cond_29

    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mLeftTopBarItemUIs:Ljava/util/List;

    if-eqz v1, :cond_29

    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mTopBarItemUIs:Ljava/util/List;

    if-nez v1, :cond_d

    goto :goto_29

    .line 394
    :cond_d
    new-instance v1, Lcom/transsion/camera/app/ui/AbstractTopBarUI$$ExternalSyntheticLambda8;

    invoke-direct {v1, p1}, Lcom/transsion/camera/app/ui/AbstractTopBarUI$$ExternalSyntheticLambda8;-><init>(Z)V

    invoke-interface {v0, v1}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    .line 395
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mLeftTopBarItemUIs:Ljava/util/List;

    new-instance v1, Lcom/transsion/camera/app/ui/AbstractTopBarUI$$ExternalSyntheticLambda9;

    invoke-direct {v1, p1}, Lcom/transsion/camera/app/ui/AbstractTopBarUI$$ExternalSyntheticLambda9;-><init>(Z)V

    invoke-interface {v0, v1}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    .line 396
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mTopBarItemUIs:Ljava/util/List;

    new-instance v0, Lcom/transsion/camera/app/ui/AbstractTopBarUI$$ExternalSyntheticLambda10;

    invoke-direct {v0, p1}, Lcom/transsion/camera/app/ui/AbstractTopBarUI$$ExternalSyntheticLambda10;-><init>(Z)V

    invoke-interface {p0, v0}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    :cond_29
    :goto_29
    return-void
.end method

.method public updateLeftSettingUIs(Ljava/util/List;)V
    .registers 4

    .line 647
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;

    if-eqz v1, :cond_4

    .line 649
    invoke-interface {v1}, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;->updateSupportEntries()V

    goto :goto_4

    :cond_16
    const/4 v0, 0x1

    .line 652
    invoke-virtual {p0, p1, v0}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->updateLeftTopBarLayout(Ljava/util/List;Z)V

    return-void
.end method

.method protected updateLeftTopBarLayout(Ljava/util/List;Z)V
    .registers 3

    .line 1136
    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mLeftTopBarItemUIs:Ljava/util/List;

    .line 1137
    iget-object p2, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz p2, :cond_e

    .line 1138
    new-instance p2, Lcom/transsion/camera/app/ui/AbstractTopBarUI$$ExternalSyntheticLambda3;

    invoke-direct {p2, p0}, Lcom/transsion/camera/app/ui/AbstractTopBarUI$$ExternalSyntheticLambda3;-><init>(Lcom/transsion/camera/app/ui/AbstractTopBarUI;)V

    invoke-interface {p1, p2}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    :cond_e
    return-void
.end method

.method public updatePopSettingShowViewVisibility(Z)V
    .registers 3

    .line 550
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mPopSettingShowView:Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz v0, :cond_2f

    if-eqz p1, :cond_2a

    .line 552
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_2f

    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mPopSettingHideView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_2f

    .line 553
    sget-object p1, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string/jumbo v0, "updatePopSettingShowViewVisibility: VISIBLE"

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 554
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mPopSettingShowView:Lcom/airbnb/lottie/LottieAnimationView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 555
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mPopSettingShowView:Lcom/airbnb/lottie/LottieAnimationView;

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    return-void

    :cond_2a
    const/16 p0, 0x8

    .line 558
    invoke-virtual {v0, p0}, Landroid/view/View;->setVisibility(I)V

    :cond_2f
    return-void
.end method

.method public updatePopSettingViewBG(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 355
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mSupply:Z

    if-eqz v0, :cond_13

    .line 356
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mPopSettingShowView:Lcom/airbnb/lottie/LottieAnimationView;

    sget p2, Lcom/transsion/camera/R$drawable;->ic_pop_setting_control_view_background:I

    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/AppCompatImageView;->setBackgroundResource(I)V

    .line 357
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mPopSettingHideView:Lcom/airbnb/lottie/LottieAnimationView;

    sget p1, Lcom/transsion/camera/R$drawable;->ic_pop_setting_control_view_background:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setBackgroundResource(I)V

    return-void

    .line 360
    :cond_13
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportUI5:Z

    if-eqz v0, :cond_77

    if-nez p2, :cond_33

    .line 364
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz v0, :cond_33

    invoke-interface {v0}, Lcom/transsion/camera/app/common/IAppUI;->getSettingController()Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    move-result-object v0

    if-eqz v0, :cond_33

    .line 365
    iget-object p2, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p2}, Lcom/transsion/camera/app/common/IAppUI;->getSettingController()Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    move-result-object p2

    const-string v0, "key_picture_size"

    invoke-interface {p2, v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 369
    :cond_33
    const-string v0, "4:3"

    if-eqz p2, :cond_3c

    .line 370
    invoke-static {p2}, Lcom/transsion/camera/utils/PictureSizeHelper;->getStandardAspectRatioOfString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_3d

    :cond_3c
    move-object p2, v0

    .line 374
    :goto_3d
    invoke-static {p1}, Lcom/transsion/camera/utils/CameraUtil;->isInVideoMode(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_65

    const-string v1, "com.transsion.camera.feature.mode.doc.DocumentEntry"

    .line 375
    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_65

    .line 376
    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_65

    const-string p1, "1:1"

    .line 377
    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_65

    const-string p1, "16:9"

    .line 378
    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_62

    goto :goto_65

    .line 381
    :cond_62
    sget p1, Lcom/transsion/camera/R$drawable;->ic_pop_setting_control_view_background_black_light_ui5:I

    goto :goto_67

    .line 379
    :cond_65
    :goto_65
    sget p1, Lcom/transsion/camera/R$drawable;->ic_pop_setting_control_view_background_black_dark_ui5:I

    .line 383
    :goto_67
    iget-object p2, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mPopSettingShowView:Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz p2, :cond_77

    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mPopSettingHideView:Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz v0, :cond_77

    .line 384
    invoke-virtual {p2, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setBackgroundResource(I)V

    .line 385
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mPopSettingHideView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setBackgroundResource(I)V

    :cond_77
    return-void
.end method

.method public updateRightSettingUIs(Ljava/util/List;)V
    .registers 4

    .line 656
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;

    if-eqz v1, :cond_4

    .line 658
    invoke-interface {v1}, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;->updateSupportEntries()V

    goto :goto_4

    :cond_16
    const/4 v0, 0x1

    .line 661
    invoke-virtual {p0, p1, v0}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->updateRightTopBarLayout(Ljava/util/List;Z)V

    return-void
.end method

.method protected updateRightTopBarLayout(Ljava/util/List;Z)V
    .registers 3

    .line 1144
    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mRightTopBarItemUIs:Ljava/util/List;

    .line 1145
    iget-object p2, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz p2, :cond_e

    .line 1146
    new-instance p2, Lcom/transsion/camera/app/ui/AbstractTopBarUI$$ExternalSyntheticLambda2;

    invoke-direct {p2, p0}, Lcom/transsion/camera/app/ui/AbstractTopBarUI$$ExternalSyntheticLambda2;-><init>(Lcom/transsion/camera/app/ui/AbstractTopBarUI;)V

    invoke-interface {p1, p2}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    :cond_e
    return-void
.end method

.method protected updateSettingControlViewLayout(Landroid/view/View;)V
    .registers 6

    .line 1004
    sget-object v0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateSettingControlViewLayout: mCurrentScreenType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mCurrentScreenType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1005
    iget v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mCurrentScreenType:I

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->getSettingControlViewMargins(I)Landroid/graphics/Rect;

    move-result-object v0

    .line 1006
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 1007
    iget p0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mCurrentScreenType:I

    const/4 v2, 0x4

    const/4 v3, 0x1

    if-ne p0, v2, :cond_2e

    .line 1008
    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto :goto_38

    :cond_2e
    const/4 v2, 0x5

    if-ne p0, v2, :cond_34

    .line 1010
    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto :goto_38

    :cond_34
    const/16 p0, 0x31

    .line 1012
    iput p0, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 1014
    :goto_38
    iget p0, v0, Landroid/graphics/Rect;->left:I

    iget v2, v0, Landroid/graphics/Rect;->top:I

    iget v3, v0, Landroid/graphics/Rect;->right:I

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v1, p0, v2, v3, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 1015
    invoke-virtual {p1, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public updateSettingUIs(Ljava/util/List;)V
    .registers 4

    .line 636
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;

    if-eqz v1, :cond_4

    .line 638
    invoke-interface {v1}, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;->updateSupportEntries()V

    .line 639
    invoke-direct {p0, v1}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->releaseTopBarItemPressState(Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;)V

    goto :goto_4

    :cond_19
    const/4 v0, 0x1

    .line 642
    invoke-virtual {p0, p1, v0}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->updateTopBarLayout(Ljava/util/List;Z)V

    return-void
.end method

.method protected updateTopBarLayout(Ljava/util/List;Z)V
    .registers 3

    .line 1128
    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mTopBarItemUIs:Ljava/util/List;

    .line 1129
    iget-object p2, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz p2, :cond_e

    .line 1130
    new-instance p2, Lcom/transsion/camera/app/ui/AbstractTopBarUI$$ExternalSyntheticLambda4;

    invoke-direct {p2, p0}, Lcom/transsion/camera/app/ui/AbstractTopBarUI$$ExternalSyntheticLambda4;-><init>(Lcom/transsion/camera/app/ui/AbstractTopBarUI;)V

    invoke-interface {p1, p2}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    :cond_e
    return-void
.end method

.method public updateVideoRecordingState(Z)V
    .registers 3

    .line 499
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mPopupOption:Lcom/transsion/camera/app/ui/setting/PopupOption;

    if-eqz v0, :cond_7

    .line 500
    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/ui/setting/PopupOption;->updateVideoRecordingState(Z)V

    .line 502
    :cond_7
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mPopupOptionV:Lcom/transsion/camera/app/ui/setting/PopupOption;

    if-eqz v0, :cond_e

    .line 503
    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/ui/setting/PopupOption;->updateVideoRecordingState(Z)V

    .line 505
    :cond_e
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mPopupOptionH:Lcom/transsion/camera/app/ui/setting/PopupOption;

    if-eqz p0, :cond_15

    .line 506
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/setting/PopupOption;->updateVideoRecordingState(Z)V

    :cond_15
    return-void
.end method
