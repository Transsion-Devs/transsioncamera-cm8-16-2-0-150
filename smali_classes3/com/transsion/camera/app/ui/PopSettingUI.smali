.class public Lcom/transsion/camera/app/ui/PopSettingUI;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/ui/IPopSettingUI;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/ui/PopSettingUI$MyAnimationStrategy;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field protected mAppUI:Lcom/transsion/camera/app/common/IAppUI;

.field private mCameraOperationControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

.field private final mContext:Landroid/content/Context;

.field private mCurrentScreenType:I

.field private mCurrentSize:Ljava/lang/String;

.field private mEnable:Z

.field private mExposeTimeCapture:Z

.field private mHidePopSettingAnimator:Landroid/animation/Animator;

.field private final mIModuleTransfer:Lcom/transsion/camera/app/common/IModuleTransfer;

.field private mIconLowLightColor:I

.field private mIconOffColor:I

.field private mIconOnColor:I

.field private mInflater:Landroid/view/LayoutInflater;

.field private mIsAnimationRunning:Z

.field private mIsCelebritySceneShow:Z

.field private mIsFilterUIShow:Z

.field private mIsImageStyleShow:Z

.field private mIsPopSettingFirstShow:Z

.field private mIsPopWindowAppearing:Z

.field private mIsResume:Z

.field private mIsZoomStart:Z

.field private final mItemHideScaleAnimatorList:Ljava/util/List;

.field private final mItemHideTranslateAnimatorList:Ljava/util/List;

.field private final mItemShowScaleAnimatorList:Ljava/util/List;

.field private final mItemShowTranslateAnimatorList:Ljava/util/List;

.field private mLottieAnimationEnd:Z

.field private mLottieAnimationProgress:F

.field private mNeedPopupItemAnimation:Z

.field private mNormalColorId:I

.field private final mOldValue:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mOrientation:I

.field protected mPopBackView:Lcom/transsion/camera/app/ui/widget/RotateImageView;

.field private mPopItemShowAnimatorList:Ljava/util/List;

.field private mPopSettingAnimationVersion:I

.field private mPopSettingContainer:Lcom/transsion/camera/app/ui/popsetting/PopSettingContainer;

.field private mPopSettingContainerHeight:I

.field private mPopSettingContainerRotateLayout:Lcom/transsion/camera/app/ui/widget/RotateLayout;

.field private mPopSettingIn:Landroid/animation/ObjectAnimator;

.field private final mPopSettingInterpolator:Landroid/view/animation/PathInterpolator;

.field private mPopSettingItemUIs:Ljava/util/List;

.field private mPopSettingOut:Landroid/animation/ObjectAnimator;

.field private final mPopSettingSupport:Z

.field private final mPopSettingUIList:Ljava/util/List;

.field private final mPopSettingUIManager:Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;

.field private mPopWindowRotateLayout:Lcom/transsion/camera/app/ui/widget/RotateLayout;

.field private mPopupOption:Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;

.field private final mPopupOptionManager:Lcom/transsion/camera/app/ui/PopSettingPopupOptionManager;

.field private mRoot:Landroid/view/View;

.field private final mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

.field private mShowPopSettingAnimator:Landroid/animation/Animator;

.field private mSupplyColorId:I

.field private final mTBItemHideAlphaAnimatorList:Ljava/util/List;

.field private final mTBPopHideAlphaAnimatorList:Ljava/util/List;

.field private mTranslateAnimator:Landroid/animation/ObjectAnimator;

.field private mTreasureBoxBackground:Landroid/widget/FrameLayout;

.field private mTreasureBoxBackgroundLayout:Landroid/view/ViewStub;

.field private mTreasureBoxScrollView:Lcom/transsion/camera/app/ui/widget/DampingHorizontalScrollView;

.field private final mTreasureBoxSupport:Z

.field private mViewMap:Ljava/util/Map;

.field private popupOptionRoot:Lcom/transsion/camera/app/ui/widget/HorizontalAverageLayout;


# direct methods
.method public static synthetic $r8$lambda$88KIWNtgti6AzUDiMOMPq2r2jDE(Lcom/transsion/camera/app/ui/PopSettingUI;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/PopSettingUI;->lambda$ringScreenLightUpdateUI$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$QxcoNCkWxcIeBIkhkvyJbxDnrww(Lcom/transsion/camera/app/ui/PopSettingUI;Landroid/view/View;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/PopSettingUI;->onPopSettingContainerClick(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$XUGJ46TWRf7TBamQJGfk61oCTfs(Lcom/transsion/camera/app/ui/PopSettingUI;Z)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/PopSettingUI;->lambda$new$0(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmCameraOperationControl(Lcom/transsion/camera/app/ui/PopSettingUI;)Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mCameraOperationControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmContext(Lcom/transsion/camera/app/ui/PopSettingUI;)Landroid/content/Context;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmOrientation(Lcom/transsion/camera/app/ui/PopSettingUI;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mOrientation:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmPopSettingAnimationVersion(Lcom/transsion/camera/app/ui/PopSettingUI;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopSettingAnimationVersion:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmPopSettingContainer(Lcom/transsion/camera/app/ui/PopSettingUI;)Lcom/transsion/camera/app/ui/popsetting/PopSettingContainer;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopSettingContainer:Lcom/transsion/camera/app/ui/popsetting/PopSettingContainer;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPopSettingContainerRotateLayout(Lcom/transsion/camera/app/ui/PopSettingUI;)Lcom/transsion/camera/app/ui/widget/RotateLayout;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopSettingContainerRotateLayout:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPopSettingIn(Lcom/transsion/camera/app/ui/PopSettingUI;)Landroid/animation/ObjectAnimator;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopSettingIn:Landroid/animation/ObjectAnimator;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPopSettingUIList(Lcom/transsion/camera/app/ui/PopSettingUI;)Ljava/util/List;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopSettingUIList:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmRoot(Lcom/transsion/camera/app/ui/PopSettingUI;)Landroid/view/View;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mRoot:Landroid/view/View;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTreasureBoxScrollView(Lcom/transsion/camera/app/ui/PopSettingUI;)Lcom/transsion/camera/app/ui/widget/DampingHorizontalScrollView;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mTreasureBoxScrollView:Lcom/transsion/camera/app/ui/widget/DampingHorizontalScrollView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTreasureBoxSupport(Lcom/transsion/camera/app/ui/PopSettingUI;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mTreasureBoxSupport:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmViewMap(Lcom/transsion/camera/app/ui/PopSettingUI;)Ljava/util/Map;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mViewMap:Ljava/util/Map;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetpopupOptionRoot(Lcom/transsion/camera/app/ui/PopSettingUI;)Lcom/transsion/camera/app/ui/widget/HorizontalAverageLayout;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->popupOptionRoot:Lcom/transsion/camera/app/ui/widget/HorizontalAverageLayout;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmIsAnimationRunning(Lcom/transsion/camera/app/ui/PopSettingUI;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mIsAnimationRunning:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;
    .registers 1

    .line 0
    sget-object v0, Lcom/transsion/camera/app/ui/PopSettingUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 75
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "PopSettingUI"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/ui/PopSettingUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/transsion/camera/app/ui/ScreenManager;Lcom/transsion/camera/app/ui/PopSettingPopupOptionManager;Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;)V
    .registers 11

    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopSettingUIList:Ljava/util/List;

    .line 77
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mItemShowTranslateAnimatorList:Ljava/util/List;

    .line 78
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mItemHideTranslateAnimatorList:Ljava/util/List;

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mItemHideScaleAnimatorList:Ljava/util/List;

    .line 80
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mItemShowScaleAnimatorList:Ljava/util/List;

    .line 81
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mTBItemHideAlphaAnimatorList:Ljava/util/List;

    .line 82
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mTBPopHideAlphaAnimatorList:Ljava/util/List;

    .line 85
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mTreasureBoxSupport:Z

    .line 86
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mOldValue:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 91
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v2, 0x3f28f5c3    # 0.66f

    const/high16 v3, 0x3f800000    # 1.0f

    const v4, 0x3ea8f5c3    # 0.33f

    const/4 v5, 0x0

    invoke-direct {v0, v4, v5, v2, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopSettingInterpolator:Landroid/view/animation/PathInterpolator;

    const/4 v0, 0x1

    .line 105
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mEnable:Z

    .line 108
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mIsPopSettingFirstShow:Z

    const/4 v0, -0x1

    .line 124
    iput v0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mOrientation:I

    .line 130
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopItemShowAnimatorList:Ljava/util/List;

    .line 139
    iput v1, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopSettingAnimationVersion:I

    .line 372
    new-instance v0, Lcom/transsion/camera/app/ui/PopSettingUI$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/ui/PopSettingUI$$ExternalSyntheticLambda2;-><init>(Lcom/transsion/camera/app/ui/PopSettingUI;)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mIModuleTransfer:Lcom/transsion/camera/app/common/IModuleTransfer;

    .line 142
    iput-object p1, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mContext:Landroid/content/Context;

    .line 143
    iput-object p2, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    .line 144
    iput-object p3, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopupOptionManager:Lcom/transsion/camera/app/ui/PopSettingPopupOptionManager;

    .line 145
    iput-object p4, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopSettingUIManager:Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;

    .line 146
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/transsion/camera/R$bool;->pop_setting_support:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p2

    iput-boolean p2, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopSettingSupport:Z

    .line 147
    sget p2, Lcom/transsion/camera/R$color;->top_bar_animation_icon_on:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getColor(I)I

    move-result p2

    iput p2, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mIconOnColor:I

    .line 148
    sget p2, Lcom/transsion/camera/R$color;->top_bar_animation_icon_off:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getColor(I)I

    move-result p2

    iput p2, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mIconOffColor:I

    .line 149
    sget p2, Lcom/transsion/camera/R$color;->top_bar_animation_icon_low_light:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mIconLowLightColor:I

    .line 150
    sget p1, Lcom/transsion/camera/R$color;->pop_setting_item_supply_color:I

    iput p1, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mSupplyColorId:I

    .line 151
    sget p1, Lcom/transsion/camera/R$color;->pop_setting_item_normal_color:I

    iput p1, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mNormalColorId:I

    return-void
.end method

.method private animateTranslation(FF)V
    .registers 6

    .line 592
    iget-object v0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mTreasureBoxScrollView:Lcom/transsion/camera/app/ui/widget/DampingHorizontalScrollView;

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p1, v1, v2

    const/4 p1, 0x1

    aput p2, v1, p1

    const-string/jumbo p1, "translationY"

    invoke-static {v0, p1, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mTranslateAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v0, 0x118

    .line 593
    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 594
    iget-object p1, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mTranslateAnimator:Landroid/animation/ObjectAnimator;

    iget-object p2, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopSettingInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {p1, p2}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 595
    iget-object p1, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mTranslateAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    .line 596
    iget-object p1, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mTranslateAnimator:Landroid/animation/ObjectAnimator;

    new-instance p2, Lcom/transsion/camera/app/ui/PopSettingUI$3;

    invoke-direct {p2, p0}, Lcom/transsion/camera/app/ui/PopSettingUI$3;-><init>(Lcom/transsion/camera/app/ui/PopSettingUI;)V

    invoke-virtual {p1, p2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method private synthetic lambda$new$0(Z)V
    .registers 3

    .line 373
    iget-object v0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mOldValue:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eq v0, p1, :cond_10

    .line 374
    iget-object v0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mOldValue:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 375
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/PopSettingUI;->ringScreenLightUpdateUI()V

    :cond_10
    return-void
.end method

.method private synthetic lambda$ringScreenLightUpdateUI$1()V
    .registers 2

    .line 434
    iget-object v0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mOldValue:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/PopSettingUI;->notifyScreenSupply(Z)V

    return-void
.end method

.method private notifyScreenSupply(Z)V
    .registers 5

    .line 439
    iget-object v0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopSettingItemUIs:Ljava/util/List;

    if-eqz v0, :cond_28

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_28

    .line 440
    iget-object v0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopSettingItemUIs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_21

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/common/ui/setting/IPopSettingItemUI;

    const/4 v2, 0x1

    .line 441
    invoke-interface {v1, p1, v2}, Lcom/transsion/camera/app/common/ui/setting/IPopSettingItemUI;->onScreenSupply(ZZ)V

    goto :goto_10

    .line 443
    :cond_21
    iget-object v0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopupOption:Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;

    if-eqz v0, :cond_28

    .line 444
    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->onScreenSupply(Z)V

    :cond_28
    if-eqz p1, :cond_4d

    .line 448
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mTreasureBoxSupport:Z

    if-eqz p1, :cond_7d

    .line 449
    iget-object p1, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mTreasureBoxBackground:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_3b

    .line 450
    const-string v0, "#00000000"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 452
    :cond_3b
    iget-object p1, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopBackView:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 453
    iget-object p0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopBackView:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    sget v0, Lcom/transsion/camera/R$drawable;->ic_treasure_box_item_back_black:I

    .line 454
    invoke-static {p1, v0}, Lcom/transsion/camera/utils/ResCache;->getDrawable(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 453
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void

    .line 457
    :cond_4d
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mTreasureBoxSupport:Z

    if-eqz p1, :cond_7d

    .line 458
    iget-object p1, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mTreasureBoxBackground:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_5e

    .line 459
    const-string v0, "#33000000"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 461
    :cond_5e
    iget-object p1, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopBackView:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 462
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportUI5:Z

    if-nez v0, :cond_78

    .line 463
    iget-object p0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopBackView:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    sget v0, Lcom/transsion/camera/R$drawable;->ic_treasure_box_item_back:I

    .line 464
    invoke-static {p1, v0}, Lcom/transsion/camera/utils/ResCache;->getDrawable(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 463
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void

    :cond_78
    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 466
    invoke-virtual {p0, p1, v0}, Lcom/transsion/camera/app/ui/PopSettingUI;->updateTreasureBoxBG(Ljava/lang/String;Z)V

    :cond_7d
    return-void
.end method

.method private onPopSettingContainerClick(Landroid/view/View;)V
    .registers 2

    return-void
.end method

.method private ringScreenLightUpdateUI()V
    .registers 3

    .line 430
    iget-object v0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mRoot:Landroid/view/View;

    if-nez v0, :cond_5

    return-void

    .line 433
    :cond_5
    new-instance v1, Lcom/transsion/camera/app/ui/PopSettingUI$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/ui/PopSettingUI$$ExternalSyntheticLambda3;-><init>(Lcom/transsion/camera/app/ui/PopSettingUI;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private runPopSettingRootAnimator()V
    .registers 9

    .line 226
    iget-object v0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopSettingIn:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 227
    iget-object v0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopSettingIn:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 229
    :cond_f
    iget-object v0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopSettingOut:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_1e

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 230
    iget-object v0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopSettingOut:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 234
    :cond_1e
    iget-object v0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopSettingContainer:Lcom/transsion/camera/app/ui/popsetting/PopSettingContainer;

    const/4 v1, 0x1

    new-array v2, v1, [F

    const/4 v3, 0x0

    const/4 v4, 0x0

    aput v4, v2, v3

    const-string v5, "alpha"

    invoke-static {v0, v5, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v6, 0x15e

    invoke-virtual {v0, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopSettingOut:Landroid/animation/ObjectAnimator;

    .line 235
    iget-object v0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopSettingContainer:Lcom/transsion/camera/app/ui/popsetting/PopSettingContainer;

    new-array v1, v1, [F

    const/high16 v2, 0x3f800000    # 1.0f

    aput v2, v1, v3

    invoke-static {v0, v5, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopSettingIn:Landroid/animation/ObjectAnimator;

    .line 236
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3ecccccd    # 0.4f

    const v3, 0x3dcccccd    # 0.1f

    invoke-direct {v0, v1, v4, v3, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 237
    new-instance v1, Landroid/view/animation/PathInterpolator;

    const v3, 0x3ea8f5c3    # 0.33f

    const v5, 0x3f28f5c3    # 0.66f

    invoke-direct {v1, v3, v4, v5, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 238
    iget-object v2, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopSettingIn:Landroid/animation/ObjectAnimator;

    invoke-virtual {v2, v1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 239
    iget-object v1, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopSettingOut:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1, v0}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 240
    iget-object v0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopSettingOut:Landroid/animation/ObjectAnimator;

    new-instance v1, Lcom/transsion/camera/app/ui/PopSettingUI$1;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/ui/PopSettingUI$1;-><init>(Lcom/transsion/camera/app/ui/PopSettingUI;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 248
    iget-object p0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopSettingOut:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method private setOrientationForPopSettingUIList(IZ)V
    .registers 5

    const/4 v0, 0x0

    .line 518
    :goto_1
    iget-object v1, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopSettingUIList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1f

    .line 519
    iget-object v1, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopSettingUIList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1c

    .line 520
    iget-object v1, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopSettingUIList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/ui/widget/IRotatable;

    invoke-interface {v1, p1, p2}, Lcom/transsion/camera/app/ui/widget/IRotatable;->setOrientation(IZ)V

    :cond_1c
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1f
    return-void
.end method

.method private setPopSettingViewTranslate()V
    .registers 8

    .line 1074
    iget-object v0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mCurrentSize:Ljava/lang/String;

    if-eqz v0, :cond_6b

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mTreasureBoxSupport:Z

    if-nez v0, :cond_6b

    .line 1075
    iget-object v0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1076
    iget-object v1, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mCurrentSize:Ljava/lang/String;

    invoke-static {v1}, Landroid/util/Size;->parseSize(Ljava/lang/String;)Landroid/util/Size;

    move-result-object v1

    .line 1077
    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v2

    int-to-double v2, v2

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v1

    int-to-double v4, v1

    div-double/2addr v2, v4

    .line 1079
    sget v1, Lcom/transsion/camera/R$dimen;->column_pop_setting_full_ratio_changed_translation:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    neg-int v1, v1

    .line 1080
    iget v4, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mCurrentScreenType:I

    const/4 v5, 0x2

    const/4 v6, 0x0

    if-nez v4, :cond_35

    .line 1081
    sget v4, Lcom/transsion/camera/R$dimen;->pop_setting_ratio_changed_translation:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    :goto_32
    neg-int v0, v0

    int-to-float v0, v0

    goto :goto_3f

    :cond_35
    if-ne v4, v5, :cond_3e

    .line 1083
    sget v4, Lcom/transsion/camera/R$dimen;->column_pop_setting_ratio_changed_translation:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_32

    :cond_3e
    move v0, v6

    .line 1085
    :goto_3f
    iget-object v4, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mTreasureBoxScrollView:Lcom/transsion/camera/app/ui/widget/DampingHorizontalScrollView;

    if-eqz v4, :cond_6b

    .line 1086
    invoke-static {v2, v3}, Lcom/transsion/camera/utils/PictureSizeHelper;->isSmallRatio(D)Z

    move-result v4

    if-eqz v4, :cond_4f

    .line 1087
    iget-object p0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mTreasureBoxScrollView:Lcom/transsion/camera/app/ui/widget/DampingHorizontalScrollView;

    invoke-virtual {p0, v0}, Landroid/view/View;->setTranslationY(F)V

    return-void

    .line 1088
    :cond_4f
    invoke-static {v2, v3}, Lcom/transsion/camera/utils/PictureSizeHelper;->isFullRatio(D)Z

    move-result v0

    if-eqz v0, :cond_66

    .line 1089
    iget v0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mCurrentScreenType:I

    if-ne v0, v5, :cond_60

    .line 1090
    iget-object p0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mTreasureBoxScrollView:Lcom/transsion/camera/app/ui/widget/DampingHorizontalScrollView;

    int-to-float v0, v1

    invoke-virtual {p0, v0}, Landroid/view/View;->setTranslationY(F)V

    return-void

    .line 1092
    :cond_60
    iget-object p0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mTreasureBoxScrollView:Lcom/transsion/camera/app/ui/widget/DampingHorizontalScrollView;

    invoke-virtual {p0, v6}, Landroid/view/View;->setTranslationY(F)V

    return-void

    .line 1095
    :cond_66
    iget-object p0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mTreasureBoxScrollView:Lcom/transsion/camera/app/ui/widget/DampingHorizontalScrollView;

    invoke-virtual {p0, v6}, Landroid/view/View;->setTranslationY(F)V

    :cond_6b
    return-void
.end method

.method private visibilityToString(I)Ljava/lang/String;
    .registers 3

    if-eqz p1, :cond_26

    const/4 p0, 0x4

    if-eq p1, p0, :cond_23

    const/16 p0, 0x8

    if-eq p1, p0, :cond_20

    .line 1704
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown ("

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1702
    :cond_20
    const-string p0, "GONE"

    return-object p0

    .line 1700
    :cond_23
    const-string p0, "INVISIBLE"

    return-object p0

    .line 1698
    :cond_26
    const-string p0, "VISIBLE"

    return-object p0
.end method


# virtual methods
.method protected createHidePopSettingAnimation()Landroid/animation/Animator;
    .registers 6

    .line 1535
    iget v0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopSettingAnimationVersion:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopSettingAnimationVersion:I

    const/4 v2, 0x2

    .line 1537
    new-array v3, v2, [F

    fill-array-data v3, :array_4c

    const-string v4, "alpha"

    invoke-static {v4, v3}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    .line 1538
    iget v4, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mCurrentScreenType:I

    if-eq v4, v1, :cond_2d

    .line 1539
    new-array v1, v2, [F

    fill-array-data v1, :array_54

    const-string/jumbo v2, "translationY"

    invoke-static {v2, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    .line 1540
    iget-object v2, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopSettingContainer:Lcom/transsion/camera/app/ui/popsetting/PopSettingContainer;

    filled-new-array {v1, v3}, [Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    goto :goto_42

    .line 1542
    :cond_2d
    new-array v1, v2, [F

    fill-array-data v1, :array_5c

    const-string v2, "scaleX"

    invoke-static {v2, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    .line 1543
    iget-object v2, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopSettingContainer:Lcom/transsion/camera/app/ui/popsetting/PopSettingContainer;

    filled-new-array {v1, v3}, [Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 1545
    :goto_42
    new-instance v2, Lcom/transsion/camera/app/ui/PopSettingUI$10;

    invoke-direct {v2, p0, v0}, Lcom/transsion/camera/app/ui/PopSettingUI$10;-><init>(Lcom/transsion/camera/app/ui/PopSettingUI;I)V

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object v1

    nop

    :array_4c
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_54
    .array-data 4
        0x0
        0x41f00000    # 30.0f
    .end array-data

    :array_5c
    .array-data 4
        0x3f800000    # 1.0f
        0x3f451eb8    # 0.77f
    .end array-data
.end method

.method protected createShowPopSettingAnimation(Z)Landroid/animation/Animator;
    .registers 8

    .line 1442
    iget v0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopSettingAnimationVersion:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopSettingAnimationVersion:I

    const/4 v2, 0x0

    if-eqz p1, :cond_c

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_d

    :cond_c
    move p1, v2

    :goto_d
    const/4 v3, 0x2

    .line 1445
    new-array v4, v3, [F

    const/4 v5, 0x0

    aput v2, v4, v5

    aput p1, v4, v1

    const-string p1, "Alpha"

    invoke-static {p1, v4}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object p1

    .line 1446
    iget v2, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mCurrentScreenType:I

    if-eq v2, v1, :cond_35

    .line 1447
    new-array v1, v3, [F

    fill-array-data v1, :array_54

    const-string v2, "scaleY"

    invoke-static {v2, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    .line 1448
    iget-object v2, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopSettingContainer:Lcom/transsion/camera/app/ui/popsetting/PopSettingContainer;

    filled-new-array {v1, p1}, [Landroid/animation/PropertyValuesHolder;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object p1

    goto :goto_4a

    .line 1450
    :cond_35
    new-array v1, v3, [F

    fill-array-data v1, :array_5c

    const-string v2, "scaleX"

    invoke-static {v2, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    .line 1451
    iget-object v2, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopSettingContainer:Lcom/transsion/camera/app/ui/popsetting/PopSettingContainer;

    filled-new-array {v1, p1}, [Landroid/animation/PropertyValuesHolder;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 1453
    :goto_4a
    new-instance v1, Lcom/transsion/camera/app/ui/PopSettingUI$9;

    invoke-direct {v1, p0, v0}, Lcom/transsion/camera/app/ui/PopSettingUI$9;-><init>(Lcom/transsion/camera/app/ui/PopSettingUI;I)V

    invoke-virtual {p1, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object p1

    nop

    :array_54
    .array-data 4
        0x3f451eb8    # 0.77f
        0x3f800000    # 1.0f
    .end array-data

    :array_5c
    .array-data 4
        0x3f451eb8    # 0.77f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public dismissPopup()Z
    .registers 3

    .line 269
    iget-object v0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopupOptionManager:Lcom/transsion/camera/app/ui/PopSettingPopupOptionManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/PopSettingPopupOptionManager;->setNeedShowPopUpOption(Z)V

    .line 270
    iget-object p0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopupOptionManager:Lcom/transsion/camera/app/ui/PopSettingPopupOptionManager;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/PopSettingPopupOptionManager;->dismissAllPopupOption()Z

    move-result p0

    return p0
.end method

.method public dismissPopupWithoutAnimation()Z
    .registers 3

    .line 741
    iget-object v0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopupOptionManager:Lcom/transsion/camera/app/ui/PopSettingPopupOptionManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/PopSettingPopupOptionManager;->setNeedShowPopUpOption(Z)V

    .line 742
    iget-object v0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopupOption:Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;

    if-eqz v0, :cond_1e

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 743
    iget-object v0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mCameraOperationControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    const/16 v1, 0x1e

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 744
    iget-object p0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopupOption:Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->dismissPopupWithoutAnimation()V

    const/4 p0, 0x1

    return p0

    :cond_1e
    return v1
.end method

.method public getAppUI()Lcom/transsion/camera/app/common/IAppUI;
    .registers 1

    .line 1715
    iget-object p0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    return-object p0
.end method

.method protected getPopBackViewMarginBottom(Landroid/content/res/Resources;)I
    .registers 3

    .line 1059
    iget-object v0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopBackView:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    if-eqz v0, :cond_14

    iget-object p0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz p0, :cond_14

    .line 1060
    invoke-interface {p0}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getModePlusBottomBarHeight()I

    move-result p0

    sget v0, Lcom/transsion/camera/R$dimen;->treasure_box_back_view_bottom_margin:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    sub-int/2addr p0, p1

    return p0

    :cond_14
    const/4 p0, 0x0

    return p0
.end method

.method protected getPopSettingAnimationDuration(Z)I
    .registers 2

    const/16 p0, 0x15e

    return p0
.end method

.method protected getPopSettingAnimationInterpolator(Z)Landroid/view/animation/PathInterpolator;
    .registers 5

    const/high16 p0, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    if-eqz p1, :cond_d

    .line 1524
    new-instance p1, Landroid/view/animation/PathInterpolator;

    const/high16 v1, 0x3e800000    # 0.25f

    invoke-direct {p1, v1, v0, v0, p0}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    return-object p1

    .line 1526
    :cond_d
    new-instance p1, Landroid/view/animation/PathInterpolator;

    const v1, 0x3e4ccccd    # 0.2f

    const v2, 0x3dcccccd    # 0.1f

    invoke-direct {p1, v1, v0, v2, p0}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    return-object p1
.end method

.method public getPopSettingContainer()Lcom/transsion/camera/app/ui/popsetting/PopSettingContainer;
    .registers 1

    .line 1741
    iget-object p0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopSettingContainer:Lcom/transsion/camera/app/ui/popsetting/PopSettingContainer;

    return-object p0
.end method

.method protected getPopSettingHorizontalTopPadding(Landroid/content/res/Resources;)I
    .registers 2

    .line 951
    sget p0, Lcom/transsion/camera/R$dimen;->tb_pop_setting_horizontal_padding:I

    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0
.end method

.method public getPopSettingVisible()I
    .registers 1

    .line 711
    iget-object p0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopSettingContainer:Lcom/transsion/camera/app/ui/popsetting/PopSettingContainer;

    if-nez p0, :cond_7

    const/16 p0, 0x8

    return p0

    .line 714
    :cond_7
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p0

    return p0
.end method

.method protected getPopupAnimationStrategy()Lcom/transsion/camera/app/common/ui/setting/IPopupOptionControl$IAnimationStrategy;
    .registers 2

    .line 1103
    new-instance v0, Lcom/transsion/camera/app/ui/PopSettingUI$MyAnimationStrategy;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/ui/PopSettingUI$MyAnimationStrategy;-><init>(Lcom/transsion/camera/app/ui/PopSettingUI;)V

    return-object v0
.end method

.method public hidePopSettingByFilter()V
    .registers 2

    .line 682
    iget-object p0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mCameraOperationControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    const/16 v0, 0x15c

    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    return-void
.end method

.method public hidePopSettingView(ZZZ)V
    .registers 4

    .line 687
    iget-boolean p2, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mEnable:Z

    if-nez p2, :cond_6

    if-eqz p1, :cond_a

    :cond_6
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mIsAnimationRunning:Z

    if-eqz p1, :cond_b

    :cond_a
    return-void

    .line 691
    :cond_b
    iget-object p1, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopSettingContainer:Lcom/transsion/camera/app/ui/popsetting/PopSettingContainer;

    if-eqz p1, :cond_26

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_26

    .line 692
    iget-object p1, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mCameraOperationControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    const/16 p2, 0xd0

    invoke-interface {p1, p2}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    if-eqz p3, :cond_22

    .line 694
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/PopSettingUI;->startHidePopSettingAnimation()V

    goto :goto_26

    :cond_22
    const/4 p1, 0x1

    .line 696
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/PopSettingUI;->onHidePopSettingFinish(Z)V

    .line 700
    :cond_26
    :goto_26
    iget-object p1, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mTreasureBoxBackground:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_2f

    const/16 p2, 0x8

    .line 701
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 703
    :cond_2f
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mIsZoomStart:Z

    if-nez p1, :cond_36

    .line 704
    invoke-static {}, Lcom/transsion/camera/utils/MultiTouchManager;->resetState()V

    .line 706
    :cond_36
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/PopSettingUI;->dismissPopup()Z

    return-void
.end method

.method public inflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 14

    .line 156
    iput-object p1, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mInflater:Landroid/view/LayoutInflater;

    .line 157
    sget v0, Lcom/transsion/camera/R$layout;->pop_settting_layout:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mRoot:Landroid/view/View;

    .line 158
    sget v0, Lcom/transsion/camera/R$id;->pop_setting_container:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/app/ui/popsetting/PopSettingContainer;

    iput-object p1, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopSettingContainer:Lcom/transsion/camera/app/ui/popsetting/PopSettingContainer;

    .line 159
    iget-object p1, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mRoot:Landroid/view/View;

    sget v0, Lcom/transsion/camera/R$id;->pop_setting_container_rotateLayout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/app/ui/widget/RotateLayout;

    iput-object p1, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopSettingContainerRotateLayout:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    .line 160
    iget-object p1, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mRoot:Landroid/view/View;

    sget v0, Lcom/transsion/camera/R$id;->treasure_box_scroll_view:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/app/ui/widget/DampingHorizontalScrollView;

    iput-object p1, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mTreasureBoxScrollView:Lcom/transsion/camera/app/ui/widget/DampingHorizontalScrollView;

    .line 161
    iget-object p1, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mRoot:Landroid/view/View;

    sget v0, Lcom/transsion/camera/R$id;->treasure_box_scroll_background_layout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewStub;

    iput-object p1, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mTreasureBoxBackgroundLayout:Landroid/view/ViewStub;

    .line 162
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/PopSettingUI;->onInflateTreasureBoxBackgroundLayout()V

    .line 163
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mTreasureBoxSupport:Z

    if-eqz p1, :cond_69

    .line 164
    iget-object p1, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mRoot:Landroid/view/View;

    sget v0, Lcom/transsion/camera/R$id;->treasure_box_pop_back:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/app/ui/widget/RotateImageView;

    iput-object p1, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopBackView:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    .line 165
    new-instance v0, Lcom/transsion/camera/app/ui/PopSettingUI$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/ui/PopSettingUI$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/app/ui/PopSettingUI;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 166
    iget-object p1, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopBackView:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 167
    iget-object p1, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopBackView:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    const v0, 0x3f4ccccd    # 0.8f

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/transsion/camera/utils/MultiTouchManager;->pressSealAnimation(Landroid/view/View;FLandroid/animation/AnimatorListenerAdapter;)V

    .line 168
    iget-object p1, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mTreasureBoxScrollView:Lcom/transsion/camera/app/ui/widget/DampingHorizontalScrollView;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/widget/OverScrollDecoratorHelper;->setUpOverScroll(Landroid/widget/HorizontalScrollView;)V

    .line 170
    :cond_69
    iget-object p1, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mInflater:Landroid/view/LayoutInflater;

    sget v0, Lcom/transsion/camera/R$layout;->pop_option_layout:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/app/ui/widget/RotateLayout;

    iput-object p1, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopWindowRotateLayout:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    .line 171
    sget p2, Lcom/transsion/camera/R$id;->popup_option_container:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/app/ui/widget/HorizontalAverageLayout;

    iput-object p1, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->popupOptionRoot:Lcom/transsion/camera/app/ui/widget/HorizontalAverageLayout;

    .line 172
    iget-boolean p2, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mTreasureBoxSupport:Z

    if-eqz p2, :cond_8a

    .line 173
    const-string/jumbo p2, "type_i"

    invoke-virtual {p1, p2}, Lcom/transsion/camera/app/ui/widget/HorizontalAverageLayout;->setTag(Ljava/lang/Object;)V

    .line 175
    :cond_8a
    iget-object p1, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 176
    new-instance v2, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;

    iget-object v3, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mInflater:Landroid/view/LayoutInflater;

    iget-object v4, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mRoot:Landroid/view/View;

    iget-object v5, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->popupOptionRoot:Lcom/transsion/camera/app/ui/widget/HorizontalAverageLayout;

    iget-object v6, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopWindowRotateLayout:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    sget p2, Lcom/transsion/camera/R$dimen;->pop_option_item_common_width:I

    .line 177
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iget-object v8, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopupOptionManager:Lcom/transsion/camera/app/ui/PopSettingPopupOptionManager;

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-direct/range {v2 .. v10}, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;-><init>(Landroid/view/LayoutInflater;Landroid/view/View;Landroid/view/View;Lcom/transsion/camera/app/ui/widget/RotateLayout;ILcom/transsion/camera/app/ui/PopSettingPopupOptionManager;ILcom/transsion/camera/app/common/IAppUI;)V

    iput-object v2, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopupOption:Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;

    .line 178
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/PopSettingUI;->getPopupAnimationStrategy()Lcom/transsion/camera/app/common/ui/setting/IPopupOptionControl$IAnimationStrategy;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->setAnimationStrategy(Lcom/transsion/camera/app/common/ui/setting/IPopupOptionControl$IAnimationStrategy;)V

    .line 179
    iget-object p1, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopSettingContainer:Lcom/transsion/camera/app/ui/popsetting/PopSettingContainer;

    iget-object p2, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    iget-object v0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopSettingUIManager:Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;

    invoke-virtual {p1, p2, v0}, Lcom/transsion/camera/app/ui/popsetting/PopSettingContainer;->initManager(Lcom/transsion/camera/app/ui/ScreenManager;Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;)V

    .line 180
    iget-object p1, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopSettingContainer:Lcom/transsion/camera/app/ui/popsetting/PopSettingContainer;

    new-instance p2, Lcom/transsion/camera/app/ui/PopSettingUI$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0}, Lcom/transsion/camera/app/ui/PopSettingUI$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/app/ui/PopSettingUI;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 181
    iget-object p1, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopupOption:Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;

    invoke-virtual {p1, p0}, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->setPopupWindowListener(Lcom/transsion/camera/app/common/IAppUIListener$IPopupWindowListener;)V

    .line 182
    iget p1, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mOrientation:I

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/PopSettingUI;->updateLayoutParams(I)V

    .line 183
    invoke-static {}, Lcom/transsion/camera/app/common/ModuleTransferManager;->getTransferManager()Lcom/transsion/camera/app/common/ModuleTransferManager;

    move-result-object p1

    iget-object p2, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mIModuleTransfer:Lcom/transsion/camera/app/common/IModuleTransfer;

    invoke-virtual {p1, p2}, Lcom/transsion/camera/app/common/ModuleTransferManager;->registerTransferListener(Lcom/transsion/camera/app/common/IModuleTransfer;)V

    .line 184
    iget-object p1, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mOldValue:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 185
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/PopSettingUI;->ringScreenLightUpdateUI()V

    .line 186
    iget-object p0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mRoot:Landroid/view/View;

    return-object p0
.end method

.method public isCelebritySceneShow(Z)V
    .registers 2

    .line 736
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mIsCelebritySceneShow:Z

    return-void
.end method

.method public isFilterUIShow(Z)V
    .registers 2

    .line 732
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mIsFilterUIShow:Z

    return-void
.end method

.method public isImageStyleShow(Z)V
    .registers 2

    .line 728
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mIsImageStyleShow:Z

    return-void
.end method

.method public isPopSettingPopAppearing()Z
    .registers 1

    .line 917
    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mIsPopWindowAppearing:Z

    return p0
.end method

.method public isZoomStart(Z)V
    .registers 2

    .line 724
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mIsZoomStart:Z

    return-void
.end method

.method public needPopupItemAnimation(Z)V
    .registers 2

    .line 925
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mNeedPopupItemAnimation:Z

    return-void
.end method

.method public onBackPressed()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public onBackViewClick(Landroid/view/View;)V
    .registers 3

    .line 384
    invoke-static {p1}, Lcom/transsion/camera/utils/MultiTouchManager;->canPerformClick(Landroid/view/View;)Z

    move-result p1

    if-nez p1, :cond_7

    return-void

    .line 387
    :cond_7
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mIsFilterUIShow:Z

    if-nez p1, :cond_13

    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mIsPopWindowAppearing:Z

    if-nez p1, :cond_13

    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mIsCelebritySceneShow:Z

    if-eqz p1, :cond_1c

    :cond_13
    iget-object p1, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz p1, :cond_1c

    const/16 v0, 0x14a

    .line 388
    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 390
    :cond_1c
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mIsFilterUIShow:Z

    if-nez p1, :cond_28

    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mIsImageStyleShow:Z

    if-nez p1, :cond_28

    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mIsCelebritySceneShow:Z

    if-eqz p1, :cond_2d

    :cond_28
    const/4 p1, 0x1

    const/4 v0, 0x0

    .line 391
    invoke-virtual {p0, v0, v0, p1}, Lcom/transsion/camera/app/ui/PopSettingUI;->showPopSettingView(ZZZ)V

    :cond_2d
    const/16 p1, 0x8

    .line 393
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/PopSettingUI;->setPopWindowBackViewVisible(I)V

    .line 394
    iget-object p1, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mShowPopSettingAnimator:Landroid/animation/Animator;

    if-eqz p1, :cond_39

    .line 395
    invoke-virtual {p1}, Landroid/animation/Animator;->cancel()V

    .line 397
    :cond_39
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/PopSettingUI;->showPopItem()V

    return-void
.end method

.method public onCameraOperateAction(I)V
    .registers 2

    return-void
.end method

.method protected onHidePopSettingFinish(Z)V
    .registers 8

    .line 1615
    iget-object v0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopSettingContainer:Lcom/transsion/camera/app/ui/popsetting/PopSettingContainer;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1616
    iget-object v0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mTreasureBoxScrollView:Lcom/transsion/camera/app/ui/widget/DampingHorizontalScrollView;

    if-eqz v0, :cond_e

    .line 1617
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_e
    const/4 v0, 0x0

    if-eqz p1, :cond_16

    .line 1620
    iget-object p1, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopSettingContainer:Lcom/transsion/camera/app/ui/popsetting/PopSettingContainer;

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 1622
    :cond_16
    iget-object p1, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopSettingContainer:Lcom/transsion/camera/app/ui/popsetting/PopSettingContainer;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p1, v1}, Landroid/view/View;->setScaleX(F)V

    .line 1623
    iget-object p1, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopSettingContainer:Lcom/transsion/camera/app/ui/popsetting/PopSettingContainer;

    invoke-virtual {p1, v1}, Landroid/view/View;->setScaleY(F)V

    const/4 p1, 0x0

    .line 1624
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mIsAnimationRunning:Z

    .line 1625
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mExposeTimeCapture:Z

    const/4 v2, 0x1

    if-nez p1, :cond_2d

    .line 1626
    invoke-virtual {p0, v2}, Lcom/transsion/camera/app/ui/PopSettingUI;->setEnable(Z)V

    .line 1628
    :cond_2d
    iget-object p1, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mViewMap:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_37
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_64

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 1629
    sget v4, Lcom/transsion/camera/R$id;->pop_setting_item_text:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    if-eqz v4, :cond_57

    .line 1631
    iget-boolean v5, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mTreasureBoxSupport:Z

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setSelected(Z)V

    .line 1632
    iget-boolean v5, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mTreasureBoxSupport:Z

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 1634
    :cond_57
    invoke-virtual {v3, v0}, Landroid/view/View;->setAlpha(F)V

    .line 1635
    invoke-virtual {v3, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 1636
    invoke-virtual {v3, v1}, Landroid/view/View;->setScaleY(F)V

    .line 1637
    invoke-virtual {v3, v1}, Landroid/view/View;->setScaleX(F)V

    goto :goto_37

    :cond_64
    return-void
.end method

.method protected onInflateTreasureBoxBackgroundLayout()V
    .registers 3

    .line 190
    iget-object v0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mTreasureBoxBackgroundLayout:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 191
    iget-object v0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mRoot:Landroid/view/View;

    sget v1, Lcom/transsion/camera/R$id;->treasure_box_scroll_view_background:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mTreasureBoxBackground:Landroid/widget/FrameLayout;

    return-void
.end method

.method public onLottieAnimationEnd()V
    .registers 3

    .line 1124
    sget-object v0, Lcom/transsion/camera/app/ui/PopSettingUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "onLottieAnimationEnd"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 1125
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mLottieAnimationEnd:Z

    return-void
.end method

.method public onLottieAnimationStart()V
    .registers 3

    .line 1115
    sget-object v0, Lcom/transsion/camera/app/ui/PopSettingUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "onLottieAnimationStart"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1116
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mLottieAnimationEnd:Z

    return-void
.end method

.method public onLottieAnimationUpdate(F)V
    .registers 2

    .line 1120
    iput p1, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mLottieAnimationProgress:F

    return-void
.end method

.method public onOrientationChanged(I)V
    .registers 5

    .line 196
    iget-object v0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopupOptionManager:Lcom/transsion/camera/app/ui/PopSettingPopupOptionManager;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/PopSettingPopupOptionManager;->updatePopupOptionShow()Z

    .line 197
    iput p1, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mOrientation:I

    .line 199
    iget-object v0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopupOption:Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;

    if-eqz v0, :cond_e

    .line 200
    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->onOrientationChanged(I)V

    .line 202
    :cond_e
    iget v0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mCurrentScreenType:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_32

    .line 203
    :goto_14
    iget-object v0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopSettingUIList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_55

    .line 204
    iget-object v0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopSettingUIList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2f

    .line 205
    iget-object v0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopSettingUIList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/ui/widget/IRotatable;

    invoke-interface {v0, p1, v2}, Lcom/transsion/camera/app/ui/widget/IRotatable;->setOrientation(IZ)V

    :cond_2f
    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    .line 209
    :cond_32
    iget-object v0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopSettingContainerRotateLayout:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    if-eqz v0, :cond_39

    .line 210
    invoke-virtual {v0, p1, v1}, Lcom/transsion/camera/app/ui/widget/RotateLayout;->setOrientation(IZ)V

    .line 212
    :cond_39
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/PopSettingUI;->runPopSettingRootAnimator()V

    .line 213
    iget-object v0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopupOption:Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;

    if-eqz v0, :cond_52

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_52

    .line 214
    iget-object v0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mCameraOperationControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    const/16 v1, 0x1e

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 215
    iget-object v0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopupOption:Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->dismissPopupWithoutAnimation()V

    .line 217
    :cond_52
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/PopSettingUI;->updateLayoutParams(I)V

    .line 219
    :cond_55
    iget-object p1, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/transsion/camera/utils/FeatureSupport;->isSupportFoldUI(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_74

    iget-object p1, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/transsion/camera/utils/FeatureSupport;->isOnlySupportTBHoverUI(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_74

    iget-object p1, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopSettingItemUIs:Ljava/util/List;

    if-eqz p1, :cond_74

    .line 220
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_74

    .line 221
    iget-object p1, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopSettingItemUIs:Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/PopSettingUI;->updatePopSettingLayout(Ljava/util/List;)V

    :cond_74
    return-void
.end method

.method public onPause()V
    .registers 4

    .line 752
    sget-object v0, Lcom/transsion/camera/app/ui/PopSettingUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPopupDismissStart() called "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mIsPopWindowAppearing:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 753
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mIsResume:Z

    const/4 v0, 0x1

    .line 754
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mIsPopSettingFirstShow:Z

    .line 755
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mLottieAnimationEnd:Z

    .line 756
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mIsPopWindowAppearing:Z

    if-eqz v0, :cond_2a

    .line 757
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/PopSettingUI;->onPopupDismissStart()V

    .line 758
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/PopSettingUI;->onPopupDismissEnd()V

    .line 760
    :cond_2a
    iget-object v0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopSettingContainer:Lcom/transsion/camera/app/ui/popsetting/PopSettingContainer;

    const/16 v1, 0x8

    if-eqz v0, :cond_42

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_42

    .line 761
    iget-object v0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopSettingContainer:Lcom/transsion/camera/app/ui/popsetting/PopSettingContainer;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 762
    iget-object v0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mCameraOperationControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    const/16 v2, 0xd0

    invoke-interface {v0, v2}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 764
    :cond_42
    iget-object v0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mTreasureBoxScrollView:Lcom/transsion/camera/app/ui/widget/DampingHorizontalScrollView;

    if-eqz v0, :cond_51

    .line 765
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_51

    .line 766
    iget-object v0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mTreasureBoxScrollView:Lcom/transsion/camera/app/ui/widget/DampingHorizontalScrollView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 769
    :cond_51
    iget-object v0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopSettingItemUIs:Ljava/util/List;

    if-eqz v0, :cond_71

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_71

    .line 770
    iget-object p0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopSettingItemUIs:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_61
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_71

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/common/ui/setting/IPopSettingItemUI;

    .line 771
    invoke-interface {v0}, Lcom/transsion/camera/app/common/ui/setting/IPopSettingItemUI;->cancelAnimation()V

    goto :goto_61

    :cond_71
    return-void
.end method

.method public onPopupDismissCancel()V
    .registers 5

    .line 896
    sget-object v0, Lcom/transsion/camera/app/ui/PopSettingUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "onPopupDismissCancel() called"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 897
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mIsPopWindowAppearing:Z

    .line 898
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/transsion/camera/app/ui/PopSettingUI$8;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/ui/PopSettingUI$8;-><init>(Lcom/transsion/camera/app/ui/PopSettingUI;)V

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onPopupDismissEnd()V
    .registers 5

    .line 840
    sget-object v0, Lcom/transsion/camera/app/ui/PopSettingUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPopupDismissEnd() called "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mIsPopWindowAppearing:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 841
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mIsPopWindowAppearing:Z

    .line 842
    iget-object v1, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mCameraOperationControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    const/16 v2, 0x1e

    invoke-interface {v1, v2}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 843
    iget-object v1, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mViewMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 844
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2c

    .line 846
    :cond_3c
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/transsion/camera/app/ui/PopSettingUI$6;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/ui/PopSettingUI$6;-><init>(Lcom/transsion/camera/app/ui/PopSettingUI;)V

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onPopupDismissStart()V
    .registers 8

    .line 859
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mIsResume:Z

    if-nez v0, :cond_1b

    .line 860
    sget-object v0, Lcom/transsion/camera/app/ui/PopSettingUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPopupDismissStart PopSettingUI: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    :cond_1b
    const/16 v0, 0x8

    .line 863
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/PopSettingUI;->setPopWindowBackViewVisible(I)V

    .line 864
    iget-object v0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopSettingContainer:Lcom/transsion/camera/app/ui/popsetting/PopSettingContainer;

    if-eqz v0, :cond_67

    const/4 v0, 0x0

    .line 865
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/PopSettingUI;->setPopSettingContainerVisible(I)V

    .line 866
    iget-object v1, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopSettingContainer:Lcom/transsion/camera/app/ui/popsetting/PopSettingContainer;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    :goto_2e
    if-ge v0, v1, :cond_67

    .line 868
    iget-object v2, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopSettingContainer:Lcom/transsion/camera/app/ui/popsetting/PopSettingContainer;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x2

    .line 869
    new-array v3, v3, [F

    fill-array-data v3, :array_68

    const-string v4, "alpha"

    invoke-static {v2, v4, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 870
    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    .line 871
    iget-object v5, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopSettingInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 872
    invoke-virtual {v4, v3}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    const-wide/16 v5, 0x96

    .line 873
    invoke-virtual {v4, v5, v6}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 874
    new-instance v3, Lcom/transsion/camera/app/ui/PopSettingUI$7;

    invoke-direct {v3, p0, v2}, Lcom/transsion/camera/app/ui/PopSettingUI$7;-><init>(Lcom/transsion/camera/app/ui/PopSettingUI;Landroid/view/View;)V

    invoke-virtual {v4, v3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 881
    iget-object v2, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mTBPopHideAlphaAnimatorList:Ljava/util/List;

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 882
    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->start()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2e

    :cond_67
    return-void

    :array_68
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public onPopupShow()V
    .registers 2

    const/4 v0, 0x1

    .line 785
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/PopSettingUI;->showPopOptionAnimation(Z)V

    .line 786
    iget-object p0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mCameraOperationControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    const/16 v0, 0x1d

    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    return-void
.end method

.method public onResume()V
    .registers 4

    const/4 v0, 0x1

    .line 778
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mIsResume:Z

    .line 779
    sget-object v0, Lcom/transsion/camera/app/ui/PopSettingUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onResume PopSettingUI: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 780
    invoke-interface {p0, v0}, Lcom/transsion/camera/app/ui/IPopSettingUI;->hidePopSettingView(Z)V

    return-void
.end method

.method public onScreenFormChanged(IZ)V
    .registers 6

    .line 474
    iget v0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mCurrentScreenType:I

    if-ne v0, p1, :cond_5

    return-void

    .line 478
    :cond_5
    iget-object v0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopupOption:Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;

    if-eqz v0, :cond_c

    .line 479
    invoke-virtual {v0, p1, p2}, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->onScreenFormChanged(IZ)V

    :cond_c
    const/4 p2, 0x1

    const/4 v0, 0x0

    if-ne p1, p2, :cond_1e

    .line 483
    iget v1, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mOrientation:I

    invoke-direct {p0, v1, p2}, Lcom/transsion/camera/app/ui/PopSettingUI;->setOrientationForPopSettingUIList(IZ)V

    .line 484
    iget-object p2, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopSettingContainerRotateLayout:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    if-eqz p2, :cond_1e

    .line 485
    iget v1, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mOrientation:I

    invoke-virtual {p2, v1, v0}, Lcom/transsion/camera/app/ui/widget/RotateLayout;->setOrientation(IZ)V

    :cond_1e
    if-nez p1, :cond_27

    .line 490
    iget-object p2, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopSettingContainerRotateLayout:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    if-eqz p2, :cond_27

    .line 491
    invoke-virtual {p2, v0, v0}, Lcom/transsion/camera/app/ui/widget/RotateLayout;->setOrientation(IZ)V

    .line 495
    :cond_27
    iget-object p2, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopSettingContainer:Lcom/transsion/camera/app/ui/popsetting/PopSettingContainer;

    const/4 v1, 0x2

    if-eqz p2, :cond_34

    .line 496
    iget v2, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mCurrentScreenType:I

    if-eq v2, v1, :cond_34

    const/4 v2, 0x0

    .line 497
    invoke-virtual {p2, v2}, Landroid/view/View;->setTranslationY(F)V

    :cond_34
    if-ne p1, v1, :cond_3b

    .line 502
    iget p2, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mOrientation:I

    invoke-direct {p0, p2, v0}, Lcom/transsion/camera/app/ui/PopSettingUI;->setOrientationForPopSettingUIList(IZ)V

    .line 505
    :cond_3b
    iput p1, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mCurrentScreenType:I

    const/4 p2, 0x5

    if-eq p1, p2, :cond_43

    const/4 p2, 0x4

    if-ne p1, p2, :cond_4a

    .line 509
    :cond_43
    iget-object p1, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mTranslateAnimator:Landroid/animation/ObjectAnimator;

    if-eqz p1, :cond_4a

    .line 510
    invoke-virtual {p1}, Landroid/animation/Animator;->cancel()V

    .line 513
    :cond_4a
    iget-object p1, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopupOptionManager:Lcom/transsion/camera/app/ui/PopSettingPopupOptionManager;

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/ui/PopSettingPopupOptionManager;->setNeedShowPopUpOption(Z)V

    .line 514
    iget p1, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mOrientation:I

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/PopSettingUI;->updateLayoutParams(I)V

    return-void
.end method

.method protected final prepareHidePopSettingAnimation(Landroid/animation/Animator;)V
    .registers 4

    const/4 v0, 0x0

    .line 1517
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/PopSettingUI;->getPopSettingAnimationInterpolator(Z)Landroid/view/animation/PathInterpolator;

    move-result-object v1

    .line 1518
    invoke-virtual {p1, v1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1519
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/PopSettingUI;->getPopSettingAnimationDuration(Z)I

    move-result p0

    int-to-long v0, p0

    invoke-virtual {p1, v0, v1}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    return-void
.end method

.method public resetTBScrollerView()V
    .registers 2

    .line 1709
    iget-object v0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mTreasureBoxScrollView:Lcom/transsion/camera/app/ui/widget/DampingHorizontalScrollView;

    if-eqz v0, :cond_c

    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mTreasureBoxSupport:Z

    if-eqz p0, :cond_c

    const/4 p0, 0x0

    .line 1710
    invoke-virtual {v0, p0, p0}, Landroid/view/View;->scrollTo(II)V

    :cond_c
    return-void
.end method

.method public restoreSetting(Ljava/lang/String;)V
    .registers 4

    .line 930
    iget-object v0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 931
    sget v1, Lcom/transsion/camera/R$dimen;->pop_setting_ratio_changed_translation:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    const/4 v1, 0x0

    .line 932
    invoke-direct {p0, v0, v1}, Lcom/transsion/camera/app/ui/PopSettingUI;->animateTranslation(FF)V

    .line 933
    iput-object p1, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mCurrentSize:Ljava/lang/String;

    return-void
.end method

.method public scrollPopSettingItemToCenter(Ljava/lang/String;)V
    .registers 7

    .line 1746
    iget-object v0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopSettingItemUIs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/common/ui/setting/IPopSettingItemUI;

    .line 1747
    invoke-interface {v1}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    goto :goto_1e

    :cond_1d
    const/4 v1, 0x0

    :goto_1e
    if-eqz v1, :cond_a1

    .line 1753
    iget-object p1, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopSettingItemUIs:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    .line 1754
    sget-object v0, Lcom/transsion/camera/app/ui/PopSettingUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "scrollPopSettingItemToCenter targetItem index : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v1, 0x3

    if-ge p1, v1, :cond_48

    .line 1756
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/PopSettingUI;->resetTBScrollerView()V

    .line 1757
    const-string p0, "scrollPopSettingItemToCenter resetTBScrollerView"

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 1760
    :cond_48
    iget-object v1, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenWidth()I

    move-result v1

    .line 1761
    iget-object v2, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/transsion/camera/R$dimen;->treasure_box_container_translate:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 1762
    iget-object v3, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/transsion/camera/R$dimen;->pop_setting_horizontal_padding:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    add-int/lit8 p1, p1, 0x1

    mul-int/2addr p1, v2

    add-int/2addr p1, v3

    .line 1763
    div-int/lit8 v2, v2, 0x2

    sub-int/2addr p1, v2

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr p1, v1

    .line 1764
    iget-object v1, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mTreasureBoxScrollView:Lcom/transsion/camera/app/ui/widget/DampingHorizontalScrollView;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    if-lez v1, :cond_7f

    .line 1765
    iget-object p0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mTreasureBoxScrollView:Lcom/transsion/camera/app/ui/widget/DampingHorizontalScrollView;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Landroid/view/View;->scrollTo(II)V

    goto :goto_8d

    .line 1767
    :cond_7f
    iget-object v1, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mTreasureBoxScrollView:Lcom/transsion/camera/app/ui/widget/DampingHorizontalScrollView;

    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    new-instance v2, Lcom/transsion/camera/app/ui/PopSettingUI$12;

    invoke-direct {v2, p0, p1}, Lcom/transsion/camera/app/ui/PopSettingUI$12;-><init>(Lcom/transsion/camera/app/ui/PopSettingUI;I)V

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 1777
    :goto_8d
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "scrollPopSettingItemToCenter scroll to "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :cond_a1
    return-void
.end method

.method public setAppUI(Lcom/transsion/camera/app/common/IAppUI;)V
    .registers 2

    .line 611
    iput-object p1, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    return-void
.end method

.method public setCameraOperateActionControl(Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;)V
    .registers 2

    .line 607
    iput-object p1, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mCameraOperationControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    return-void
.end method

.method public setEnable(Z)V
    .registers 2

    .line 719
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mEnable:Z

    return-void
.end method

.method public setExposerTimeCapture(Z)V
    .registers 2

    .line 938
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mExposeTimeCapture:Z

    return-void
.end method

.method public setFlipSettingUIList(Ljava/util/List;Ljava/util/List;)V
    .registers 3

    return-void
.end method

.method public setPictureRatio(Ljava/lang/String;)V
    .registers 2

    .line 1642
    iput-object p1, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mCurrentSize:Ljava/lang/String;

    return-void
.end method

.method public setPopSettingContainerVisible(I)V
    .registers 3

    .line 910
    iget-object v0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopSettingContainer:Lcom/transsion/camera/app/ui/popsetting/PopSettingContainer;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, p1, :cond_f

    .line 911
    iget-object p0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopSettingContainer:Lcom/transsion/camera/app/ui/popsetting/PopSettingContainer;

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_f
    return-void
.end method

.method public setPopWindowAppearing(Z)V
    .registers 2

    .line 921
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mIsPopWindowAppearing:Z

    return-void
.end method

.method public setPopWindowBackViewVisible(I)V
    .registers 13

    .line 1646
    iget-object v0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopBackView:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    if-eqz v0, :cond_25

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-ne v0, p1, :cond_25

    .line 1647
    sget-object v0, Lcom/transsion/camera/app/ui/PopSettingUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mPopBackView is already "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/PopSettingUI;->visibilityToString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 1650
    :cond_25
    iget-object v0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopBackView:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    if-eqz v0, :cond_a4

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mTreasureBoxSupport:Z

    if-eqz v0, :cond_a4

    .line 1651
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3e4ccccd    # 0.2f

    const v2, 0x3dcccccd    # 0.1f

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v3, v2, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 1652
    iget-object v1, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopBackView:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {v1, p1}, Landroid/view/View;->setVisibility(I)V

    .line 1653
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 1654
    new-instance v2, Lcom/transsion/camera/app/ui/PopSettingUI$11;

    invoke-direct {v2, p0}, Lcom/transsion/camera/app/ui/PopSettingUI$11;-><init>(Lcom/transsion/camera/app/ui/PopSettingUI;)V

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    if-nez p1, :cond_52

    const/high16 v2, 0x3f000000    # 0.5f

    goto :goto_53

    :cond_52
    move v2, v4

    :goto_53
    if-nez p1, :cond_57

    move v5, v3

    goto :goto_58

    :cond_57
    move v5, v4

    :goto_58
    if-nez p1, :cond_5b

    move v3, v4

    .line 1683
    :cond_5b
    iget-object p1, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopBackView:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    const/4 v6, 0x2

    new-array v7, v6, [F

    const/4 v8, 0x0

    aput v2, v7, v8

    const/4 v9, 0x1

    aput v4, v7, v9

    const-string v10, "scaleX"

    invoke-static {p1, v10, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 1684
    iget-object v7, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopBackView:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    new-array v10, v6, [F

    aput v2, v10, v8

    aput v4, v10, v9

    const-string v2, "scaleY"

    invoke-static {v7, v2, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 1685
    iget-object p0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopBackView:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    new-array v4, v6, [F

    aput v5, v4, v8

    aput v3, v4, v9

    const-string v3, "alpha"

    invoke-static {p0, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    .line 1686
    invoke-virtual {p1, v0}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1687
    invoke-virtual {v2, v0}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1688
    invoke-virtual {p0, v0}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v3, 0xfa

    .line 1689
    invoke-virtual {v1, v3, v4}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1690
    invoke-virtual {v1, p1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 1691
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    :cond_a4
    return-void
.end method

.method public setSettingUIList(Ljava/util/List;)V
    .registers 2

    .line 258
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/PopSettingUI;->dismissPopup()Z

    .line 259
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/PopSettingUI;->updatePopSettingLayout(Ljava/util/List;)V

    return-void
.end method

.method public setupViews()V
    .registers 3

    .line 253
    iget-object v0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenFormType()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/transsion/camera/app/ui/PopSettingUI;->onScreenFormChanged(IZ)V

    return-void
.end method

.method public showPopItem()V
    .registers 8

    .line 401
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/PopSettingUI;->dismissPopup()Z

    .line 402
    iget-object v0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopItemShowAnimatorList:Ljava/util/List;

    if-eqz v0, :cond_a

    .line 403
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 405
    :cond_a
    iget-object v0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopSettingContainer:Lcom/transsion/camera/app/ui/popsetting/PopSettingContainer;

    if-eqz v0, :cond_57

    .line 406
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_13
    if-ge v1, v0, :cond_50

    .line 408
    iget-object v2, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopSettingContainer:Lcom/transsion/camera/app/ui/popsetting/PopSettingContainer;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x2

    .line 409
    new-array v3, v3, [F

    fill-array-data v3, :array_58

    const-string v4, "alpha"

    invoke-static {v2, v4, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 410
    new-instance v4, Lcom/transsion/camera/app/ui/PopSettingUI$2;

    invoke-direct {v4, p0, v2}, Lcom/transsion/camera/app/ui/PopSettingUI$2;-><init>(Lcom/transsion/camera/app/ui/PopSettingUI;Landroid/view/View;)V

    invoke-virtual {v3, v4}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 417
    iget-object v4, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopItemShowAnimatorList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 418
    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    .line 419
    iget-object v5, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopSettingInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 420
    invoke-virtual {v4, v3}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    const-wide/16 v5, 0x96

    .line 421
    invoke-virtual {v4, v5, v6}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 422
    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->start()V

    const/4 v3, 0x1

    .line 423
    invoke-virtual {v2, v3}, Landroid/view/View;->setEnabled(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    .line 425
    :cond_50
    iget-object p0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopSettingContainer:Lcom/transsion/camera/app/ui/popsetting/PopSettingContainer;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    :cond_57
    return-void

    :array_58
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public showPopOptionAnimation(Z)V
    .registers 10

    const/4 v0, 0x1

    .line 791
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mIsPopWindowAppearing:Z

    .line 792
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mTreasureBoxSupport:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopSettingContainer:Lcom/transsion/camera/app/ui/popsetting/PopSettingContainer;

    if-eqz v0, :cond_f

    .line 793
    invoke-virtual {p0, v1}, Lcom/transsion/camera/app/ui/PopSettingUI;->setPopWindowBackViewVisible(I)V

    .line 795
    :cond_f
    iget-object v0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mTBPopHideAlphaAnimatorList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_15
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_25

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/animation/AnimatorSet;

    .line 796
    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->cancel()V

    goto :goto_15

    .line 798
    :cond_25
    iget-object v0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mTBPopHideAlphaAnimatorList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 799
    iget-object v0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopItemShowAnimatorList:Ljava/util/List;

    if-eqz v0, :cond_45

    move v0, v1

    .line 800
    :goto_2f
    iget-object v2, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopItemShowAnimatorList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_45

    .line 801
    iget-object v2, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopItemShowAnimatorList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/animation/ObjectAnimator;

    invoke-virtual {v2}, Landroid/animation/Animator;->cancel()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2f

    .line 804
    :cond_45
    iget-object v0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopSettingContainer:Lcom/transsion/camera/app/ui/popsetting/PopSettingContainer;

    if-eqz v0, :cond_8a

    .line 805
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    move v2, v1

    :goto_4e
    if-ge v2, v0, :cond_8a

    .line 807
    iget-object v3, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopSettingContainer:Lcom/transsion/camera/app/ui/popsetting/PopSettingContainer;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 808
    invoke-virtual {v3, v1}, Landroid/view/View;->setEnabled(Z)V

    if-eqz p1, :cond_5e

    const-wide/16 v4, 0x64

    goto :goto_60

    :cond_5e
    const-wide/16 v4, 0x0

    :goto_60
    const/4 v6, 0x2

    .line 810
    new-array v6, v6, [F

    fill-array-data v6, :array_8c

    const-string v7, "alpha"

    invoke-static {v3, v7, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 811
    new-instance v6, Landroid/animation/AnimatorSet;

    invoke-direct {v6}, Landroid/animation/AnimatorSet;-><init>()V

    .line 812
    iget-object v7, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopSettingInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v6, v7}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 813
    invoke-virtual {v6, v3}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 814
    invoke-virtual {v6, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 816
    new-instance v3, Lcom/transsion/camera/app/ui/PopSettingUI$5;

    invoke-direct {v3, p0}, Lcom/transsion/camera/app/ui/PopSettingUI$5;-><init>(Lcom/transsion/camera/app/ui/PopSettingUI;)V

    invoke-virtual {v6, v3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 832
    invoke-virtual {v6}, Landroid/animation/AnimatorSet;->start()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4e

    :cond_8a
    return-void

    nop

    :array_8c
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public showPopSettingView(ZZZ)V
    .registers 10

    .line 616
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopSettingSupport:Z

    if-nez v0, :cond_c

    .line 617
    sget-object p0, Lcom/transsion/camera/app/ui/PopSettingUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "showPopSettingView: mPopSettingSupport = false"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 620
    :cond_c
    sget-object v0, Lcom/transsion/camera/app/ui/PopSettingUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showPopSettingView: mEnable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mEnable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mIsZoomStart:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mIsZoomStart:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", isClick: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-nez p1, :cond_3f

    .line 622
    iget-object v0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mCameraOperationControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    const/16 v1, 0x17a

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 625
    :cond_3f
    iget-object v0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopSettingItemUIs:Ljava/util/List;

    if-eqz v0, :cond_7b

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7b

    .line 626
    iget-object v0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopSettingItemUIs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/common/ui/setting/IPopSettingItemUI;

    .line 627
    invoke-interface {v1}, Lcom/transsion/camera/app/common/ui/setting/IPopSettingItemUI;->getSettingUISpec()Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    move-result-object v4

    invoke-virtual {v4}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getKey()Ljava/lang/String;

    move-result-object v4

    const-string v5, "key_live_photo"

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_6c

    goto :goto_4f

    .line 630
    :cond_6c
    iget-boolean v4, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mLottieAnimationEnd:Z

    if-eqz v4, :cond_74

    .line 631
    invoke-interface {v1}, Lcom/transsion/camera/app/common/ui/setting/IPopSettingItemUI;->cancelAnimation()V

    goto :goto_4f

    :cond_74
    const/4 v4, 0x1

    .line 633
    iget v5, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mLottieAnimationProgress:F

    invoke-interface {v1, v4, v5}, Lcom/transsion/camera/app/common/ui/setting/IPopSettingItemUI;->playAnimation(ZF)V

    goto :goto_4f

    .line 638
    :cond_7b
    sget-object v0, Lcom/transsion/camera/app/ui/PopSettingUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mEnable: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mEnable:Z

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mIsZoomStart:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 639
    iget-object v0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mViewMap:Ljava/util/Map;

    if-eqz v0, :cond_130

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_130

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mEnable:Z

    if-eqz v0, :cond_130

    iget-object v0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopSettingContainer:Lcom/transsion/camera/app/ui/popsetting/PopSettingContainer;

    if-eqz v0, :cond_b9

    .line 640
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_130

    :cond_b9
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mIsZoomStart:Z

    if-eqz v0, :cond_c0

    if-nez p1, :cond_c0

    goto :goto_130

    .line 647
    :cond_c0
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object v0

    const/16 v1, 0x18

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setClickIconId(ILjava/lang/String;)V

    .line 648
    iget p1, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mOrientation:I

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/PopSettingUI;->updateLayoutParams(I)V

    .line 649
    iget-object p1, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopSettingContainer:Lcom/transsion/camera/app/ui/popsetting/PopSettingContainer;

    if-eqz p1, :cond_119

    .line 650
    invoke-virtual {p0, p2, p3}, Lcom/transsion/camera/app/ui/PopSettingUI;->startShowPopSettingAnimation(ZZ)V

    .line 651
    iget-object p1, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mCameraOperationControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    const/16 p2, 0xcf

    invoke-interface {p1, p2}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 652
    iget-object p1, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mViewMap:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_ea
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_119

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    .line 653
    sget p3, Lcom/transsion/camera/R$id;->pop_setting_item_text:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    .line 654
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mTreasureBoxSupport:Z

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 655
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mTreasureBoxSupport:Z

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setSelected(Z)V

    .line 656
    invoke-virtual {p3}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/transsion/camera/app/ui/PopSettingUI$4;

    invoke-direct {v1, p0, p3}, Lcom/transsion/camera/app/ui/PopSettingUI$4;-><init>(Lcom/transsion/camera/app/ui/PopSettingUI;Landroid/widget/TextView;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    const/4 p3, 0x0

    .line 668
    invoke-virtual {p2, p3}, Landroid/view/View;->setAlpha(F)V

    goto :goto_ea

    .line 672
    :cond_119
    iget-object p1, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mTreasureBoxScrollView:Lcom/transsion/camera/app/ui/widget/DampingHorizontalScrollView;

    const/4 p2, 0x0

    if-eqz p1, :cond_121

    .line 673
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 675
    :cond_121
    iget-object p1, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mTreasureBoxBackground:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_12c

    iget-boolean p3, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mTreasureBoxSupport:Z

    if-eqz p3, :cond_12c

    .line 676
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 678
    :cond_12c
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/PopSettingUI;->setPopSettingViewTranslate()V

    return-void

    :cond_130
    :goto_130
    if-nez p3, :cond_13b

    .line 642
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mTreasureBoxSupport:Z

    if-eqz p1, :cond_13b

    .line 643
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mNeedPopupItemAnimation:Z

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/PopSettingUI;->showPopOptionAnimation(Z)V

    :cond_13b
    return-void
.end method

.method public startHidePopSettingAnimation()V
    .registers 4

    .line 1494
    iget-object v0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mHidePopSettingAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Landroid/animation/Animator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_b

    return-void

    .line 1497
    :cond_b
    sget-object v0, Lcom/transsion/camera/app/ui/PopSettingUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startHidePopSettingAnimation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1498
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/PopSettingUI;->createHidePopSettingAnimation()Landroid/animation/Animator;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mHidePopSettingAnimator:Landroid/animation/Animator;

    .line 1499
    iget v0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mCurrentScreenType:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_4d

    .line 1500
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mTreasureBoxSupport:Z

    if-eqz v0, :cond_52

    .line 1501
    iget-object v0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopSettingContainer:Lcom/transsion/camera/app/ui/popsetting/PopSettingContainer;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    const/4 v0, 0x0

    .line 1502
    :goto_37
    iget-object v1, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mTBItemHideAlphaAnimatorList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_52

    .line 1503
    iget-object v1, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mTBItemHideAlphaAnimatorList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_37

    .line 1507
    :cond_4d
    iget-object v0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopSettingContainer:Lcom/transsion/camera/app/ui/popsetting/PopSettingContainer;

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotX(F)V

    .line 1510
    :cond_52
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mTreasureBoxSupport:Z

    if-eqz v0, :cond_5b

    .line 1511
    iget-object v0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mHidePopSettingAnimator:Landroid/animation/Animator;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/PopSettingUI;->prepareHidePopSettingAnimation(Landroid/animation/Animator;)V

    .line 1513
    :cond_5b
    iget-object p0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mHidePopSettingAnimator:Landroid/animation/Animator;

    invoke-virtual {p0}, Landroid/animation/Animator;->start()V

    return-void
.end method

.method public startShowPopSettingAnimation(ZZ)V
    .registers 14

    const/4 v0, 0x0

    if-eqz p2, :cond_6

    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_7

    :cond_6
    move v1, v0

    .line 1387
    :goto_7
    iget-object v2, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopSettingContainer:Lcom/transsion/camera/app/ui/popsetting/PopSettingContainer;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    .line 1388
    invoke-virtual {p0, p2}, Lcom/transsion/camera/app/ui/PopSettingUI;->createShowPopSettingAnimation(Z)Landroid/animation/Animator;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mShowPopSettingAnimator:Landroid/animation/Animator;

    .line 1389
    iget-object p2, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopSettingContainer:Lcom/transsion/camera/app/ui/popsetting/PopSettingContainer;

    invoke-virtual {p2, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 1390
    iget-object p2, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mHidePopSettingAnimator:Landroid/animation/Animator;

    const/4 v3, 0x0

    if-eqz p2, :cond_33

    .line 1391
    iget-boolean v4, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mTreasureBoxSupport:Z

    if-eqz v4, :cond_33

    invoke-virtual {p2}, Landroid/animation/Animator;->isRunning()Z

    move-result p2

    if-eqz p2, :cond_33

    .line 1392
    iget-object p2, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mHidePopSettingAnimator:Landroid/animation/Animator;

    invoke-virtual {p2}, Landroid/animation/Animator;->cancel()V

    .line 1393
    iget-object p2, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopSettingContainer:Lcom/transsion/camera/app/ui/popsetting/PopSettingContainer;

    invoke-virtual {p2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1394
    iput-boolean v3, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mIsAnimationRunning:Z

    .line 1397
    :cond_33
    iget p2, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mCurrentScreenType:I

    const-wide/16 v4, 0x0

    const/4 v6, 0x1

    if-eq p2, v6, :cond_d7

    .line 1398
    iget-object p2, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopSettingContainer:Lcom/transsion/camera/app/ui/popsetting/PopSettingContainer;

    iget v7, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopSettingContainerHeight:I

    int-to-float v7, v7

    invoke-virtual {p2, v7}, Landroid/view/View;->setPivotY(F)V

    move p2, v3

    .line 1399
    :goto_43
    iget-object v7, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mItemShowScaleAnimatorList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    const-wide/16 v8, 0x15e

    if-ge p2, v7, :cond_74

    if-nez p1, :cond_5b

    .line 1401
    iget-object v7, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mItemShowScaleAnimatorList:Ljava/util/List;

    invoke-interface {v7, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/animation/ObjectAnimator;

    invoke-virtual {v7, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    goto :goto_66

    .line 1403
    :cond_5b
    iget-object v7, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mItemShowScaleAnimatorList:Ljava/util/List;

    invoke-interface {v7, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/animation/ObjectAnimator;

    invoke-virtual {v7, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1405
    :goto_66
    iget-object v7, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mItemShowScaleAnimatorList:Ljava/util/List;

    invoke-interface {v7, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/animation/ObjectAnimator;

    invoke-virtual {v7}, Landroid/animation/ObjectAnimator;->start()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_43

    :cond_74
    move p2, v3

    .line 1407
    :goto_75
    iget-object v7, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mItemShowTranslateAnimatorList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge p2, v7, :cond_a4

    if-nez p1, :cond_8b

    .line 1409
    iget-object v7, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mItemShowTranslateAnimatorList:Ljava/util/List;

    invoke-interface {v7, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/animation/ObjectAnimator;

    invoke-virtual {v7, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    goto :goto_96

    .line 1411
    :cond_8b
    iget-object v7, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mItemShowTranslateAnimatorList:Ljava/util/List;

    invoke-interface {v7, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/animation/ObjectAnimator;

    invoke-virtual {v7, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1413
    :goto_96
    iget-object v7, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mItemShowTranslateAnimatorList:Ljava/util/List;

    invoke-interface {v7, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/animation/ObjectAnimator;

    invoke-virtual {v7}, Landroid/animation/ObjectAnimator;->start()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_75

    :cond_a4
    if-nez p1, :cond_dc

    move p2, v3

    :goto_a7
    if-ge p2, v2, :cond_dc

    .line 1417
    iget-object v7, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopSettingContainer:Lcom/transsion/camera/app/ui/popsetting/PopSettingContainer;

    invoke-virtual {v7, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 1418
    invoke-virtual {p0, v3}, Lcom/transsion/camera/app/ui/PopSettingUI;->setPopSettingContainerVisible(I)V

    const/4 v8, 0x2

    .line 1419
    new-array v8, v8, [F

    aput v0, v8, v3

    aput v1, v8, v6

    const-string v9, "alpha"

    invoke-static {v7, v9, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    .line 1420
    new-instance v8, Landroid/animation/AnimatorSet;

    invoke-direct {v8}, Landroid/animation/AnimatorSet;-><init>()V

    .line 1421
    iget-object v9, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopSettingInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v8, v9}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1422
    invoke-virtual {v8, v7}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    const-wide/16 v9, 0x96

    .line 1423
    invoke-virtual {v8, v9, v10}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1424
    invoke-virtual {v8}, Landroid/animation/AnimatorSet;->start()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_a7

    .line 1428
    :cond_d7
    iget-object p2, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopSettingContainer:Lcom/transsion/camera/app/ui/popsetting/PopSettingContainer;

    invoke-virtual {p2, v0}, Landroid/view/View;->setPivotX(F)V

    .line 1431
    :cond_dc
    invoke-virtual {p0, v6}, Lcom/transsion/camera/app/ui/PopSettingUI;->getPopSettingAnimationInterpolator(Z)Landroid/view/animation/PathInterpolator;

    move-result-object p2

    .line 1432
    iget-object v0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mShowPopSettingAnimator:Landroid/animation/Animator;

    invoke-virtual {v0, p2}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    if-eqz p1, :cond_f2

    .line 1434
    iget-object p1, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mShowPopSettingAnimator:Landroid/animation/Animator;

    invoke-virtual {p0, v6}, Lcom/transsion/camera/app/ui/PopSettingUI;->getPopSettingAnimationDuration(Z)I

    move-result p2

    int-to-long v0, p2

    invoke-virtual {p1, v0, v1}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    goto :goto_f7

    .line 1436
    :cond_f2
    iget-object p1, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mShowPopSettingAnimator:Landroid/animation/Animator;

    invoke-virtual {p1, v4, v5}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 1438
    :goto_f7
    iget-object p0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mShowPopSettingAnimator:Landroid/animation/Animator;

    invoke-virtual {p0}, Landroid/animation/Animator;->start()V

    return-void
.end method

.method public unInit()V
    .registers 4

    .line 527
    iget-object v0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mItemShowTranslateAnimatorList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/ObjectAnimator;

    if-eqz v1, :cond_6

    .line 528
    invoke-virtual {v1}, Landroid/animation/Animator;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 529
    invoke-virtual {v1}, Landroid/animation/Animator;->cancel()V

    goto :goto_6

    .line 532
    :cond_1e
    iget-object v0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mItemHideScaleAnimatorList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_24
    :goto_24
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/ObjectAnimator;

    if-eqz v1, :cond_24

    .line 533
    invoke-virtual {v1}, Landroid/animation/Animator;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_24

    .line 534
    invoke-virtual {v1}, Landroid/animation/Animator;->cancel()V

    goto :goto_24

    .line 537
    :cond_3c
    iget-object v0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mItemHideTranslateAnimatorList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_42
    :goto_42
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/ObjectAnimator;

    if-eqz v1, :cond_42

    .line 538
    invoke-virtual {v1}, Landroid/animation/Animator;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_42

    .line 539
    invoke-virtual {v1}, Landroid/animation/Animator;->cancel()V

    goto :goto_42

    .line 542
    :cond_5a
    iget-object v0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mItemShowScaleAnimatorList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_60
    :goto_60
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_78

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/ObjectAnimator;

    if-eqz v1, :cond_60

    .line 543
    invoke-virtual {v1}, Landroid/animation/Animator;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_60

    .line 544
    invoke-virtual {v1}, Landroid/animation/Animator;->cancel()V

    goto :goto_60

    .line 547
    :cond_78
    iget-object v0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mTBItemHideAlphaAnimatorList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_7e
    :goto_7e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_96

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/ObjectAnimator;

    if-eqz v1, :cond_7e

    .line 548
    invoke-virtual {v1}, Landroid/animation/Animator;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_7e

    .line 549
    invoke-virtual {v1}, Landroid/animation/Animator;->cancel()V

    goto :goto_7e

    .line 552
    :cond_96
    iget-object v0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopItemShowAnimatorList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_9c
    :goto_9c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/ObjectAnimator;

    if-eqz v1, :cond_9c

    .line 553
    invoke-virtual {v1}, Landroid/animation/Animator;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_9c

    .line 554
    invoke-virtual {v1}, Landroid/animation/Animator;->cancel()V

    goto :goto_9c

    .line 557
    :cond_b4
    iget-object v0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mItemShowTranslateAnimatorList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 558
    iget-object v0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mItemHideScaleAnimatorList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 559
    iget-object v0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mItemHideTranslateAnimatorList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 560
    iget-object v0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mItemShowScaleAnimatorList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 561
    iget-object v0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopItemShowAnimatorList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 562
    iget-object v0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mTBItemHideAlphaAnimatorList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 563
    iget-object v0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mTranslateAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_d9

    .line 564
    invoke-virtual {v0}, Landroid/animation/Animator;->removeAllListeners()V

    .line 566
    :cond_d9
    iget-object v0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopSettingItemUIs:Ljava/util/List;

    if-eqz v0, :cond_e0

    .line 567
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 569
    :cond_e0
    invoke-static {}, Lcom/transsion/camera/app/common/ModuleTransferManager;->getTransferManager()Lcom/transsion/camera/app/common/ModuleTransferManager;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mIModuleTransfer:Lcom/transsion/camera/app/common/IModuleTransfer;

    invoke-virtual {v0, p0}, Lcom/transsion/camera/app/common/ModuleTransferManager;->unregisterTransferListener(Lcom/transsion/camera/app/common/IModuleTransfer;)V

    return-void
.end method

.method public updateLayoutParams(I)V
    .registers 13

    .line 955
    iget-object p1, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopupOptionManager:Lcom/transsion/camera/app/ui/PopSettingPopupOptionManager;

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/PopSettingPopupOptionManager;->needShowPopUpOption()Z

    move-result p1

    if-nez p1, :cond_b

    .line 956
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/PopSettingUI;->dismissPopup()Z

    .line 959
    :cond_b
    iget-object p1, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 960
    sget v0, Lcom/transsion/camera/R$dimen;->pop_setting_horizontal_padding:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 961
    sget v1, Lcom/transsion/camera/R$dimen;->pop_setting_few_count_top_margin:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 962
    sget v1, Lcom/transsion/camera/R$dimen;->pop_setting_common_width:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 963
    sget v2, Lcom/transsion/camera/R$dimen;->pop_setting_column_width:I

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 964
    sget v3, Lcom/transsion/camera/R$dimen;->pop_setting_vertical_padding_ui4:I

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 966
    iget-object v4, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopSettingContainer:Lcom/transsion/camera/app/ui/popsetting/PopSettingContainer;

    const/4 v5, 0x0

    if-eqz v4, :cond_15f

    .line 967
    iget-object v4, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mTreasureBoxScrollView:Lcom/transsion/camera/app/ui/widget/DampingHorizontalScrollView;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout$LayoutParams;

    .line 968
    iget-boolean v6, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mTreasureBoxSupport:Z

    if-eqz v6, :cond_51

    .line 969
    iget-object v6, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v6}, Lcom/transsion/camera/app/common/IAppUI;->getScreenManager()Lcom/transsion/camera/app/common/manager/IScreenManager;

    move-result-object v6

    sget v7, Lcom/transsion/camera/R$dimen;->pop_setting_half_height:I

    .line 970
    invoke-virtual {p1, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    invoke-interface {v6, v7}, Lcom/transsion/camera/app/common/manager/IScreenManager;->getPopSettingUIHeight(I)I

    move-result v6

    iput v6, v4, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 972
    :cond_51
    iget-object v6, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopSettingContainer:Lcom/transsion/camera/app/ui/popsetting/PopSettingContainer;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    .line 973
    iget-object v7, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopSettingContainer:Lcom/transsion/camera/app/ui/popsetting/PopSettingContainer;

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/widget/FrameLayout$LayoutParams;

    .line 974
    sget v8, Lcom/transsion/camera/R$dimen;->pop_setting_half_height:I

    invoke-virtual {p1, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    iput v8, v7, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 976
    iget v8, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mCurrentScreenType:I

    const/4 v9, 0x2

    const/4 v10, 0x1

    if-nez v8, :cond_94

    .line 977
    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mTreasureBoxSupport:Z

    if-eqz v2, :cond_120

    .line 978
    sget v2, Lcom/transsion/camera/R$dimen;->treasure_box_few_count_top_margin:I

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    const/4 v8, 0x6

    if-ge v6, v8, :cond_80

    .line 980
    iput v10, v7, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 981
    invoke-virtual {v7, v5, v5, v5, v5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    goto :goto_85

    .line 983
    :cond_80
    iput v5, v7, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 984
    invoke-virtual {v7, v5, v5, v5, v5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    :goto_85
    const/16 v8, 0x50

    .line 986
    iput v8, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 987
    iget-object v8, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {v8, v2}, Lcom/transsion/camera/app/ui/ScreenManager;->getPopSettingUIMarginBottom(I)I

    move-result v2

    invoke-virtual {v4, v5, v5, v5, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    goto/16 :goto_120

    :cond_94
    const/4 v4, 0x3

    if-ne v8, v4, :cond_9b

    .line 990
    iput v1, v7, Landroid/widget/FrameLayout$LayoutParams;->width:I

    goto/16 :goto_120

    :cond_9b
    if-ne v8, v10, :cond_be

    .line 992
    iput v1, v7, Landroid/widget/FrameLayout$LayoutParams;->width:I

    move v2, v5

    .line 993
    :goto_a0
    iget-object v4, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopSettingUIList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_120

    .line 994
    iget-object v4, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopSettingUIList:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_bb

    .line 995
    iget-object v4, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopSettingUIList:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/transsion/camera/app/ui/widget/IRotatable;

    invoke-interface {v4, v5, v10}, Lcom/transsion/camera/app/ui/widget/IRotatable;->setOrientation(IZ)V

    :cond_bb
    add-int/lit8 v2, v2, 0x1

    goto :goto_a0

    :cond_be
    if-ne v8, v9, :cond_ca

    .line 999
    iput v2, v7, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 1000
    iget-object v2, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopSettingContainerRotateLayout:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    if-eqz v2, :cond_120

    .line 1001
    invoke-virtual {v2, v5, v5}, Lcom/transsion/camera/app/ui/widget/RotateLayout;->setOrientation(IZ)V

    goto :goto_120

    :cond_ca
    const/4 v2, 0x4

    if-ne v8, v2, :cond_f5

    .line 1004
    iput v1, v7, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 1005
    iget-object v2, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopSettingContainerRotateLayout:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    const/16 v4, 0x5a

    invoke-virtual {v2, v4, v5}, Lcom/transsion/camera/app/ui/widget/RotateLayout;->setOrientation(IZ)V

    move v2, v5

    .line 1006
    :goto_d7
    iget-object v4, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopSettingUIList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_120

    .line 1007
    iget-object v4, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopSettingUIList:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_f2

    .line 1008
    iget-object v4, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopSettingUIList:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/transsion/camera/app/ui/widget/IRotatable;

    invoke-interface {v4, v5, v10}, Lcom/transsion/camera/app/ui/widget/IRotatable;->setOrientation(IZ)V

    :cond_f2
    add-int/lit8 v2, v2, 0x1

    goto :goto_d7

    :cond_f5
    const/4 v2, 0x5

    if-ne v8, v2, :cond_120

    .line 1012
    iput v1, v7, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 1013
    iget-object v2, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopSettingContainerRotateLayout:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    const/16 v4, 0x10e

    invoke-virtual {v2, v4, v5}, Lcom/transsion/camera/app/ui/widget/RotateLayout;->setOrientation(IZ)V

    move v2, v5

    .line 1014
    :goto_102
    iget-object v4, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopSettingUIList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_120

    .line 1015
    iget-object v4, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopSettingUIList:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_11d

    .line 1016
    iget-object v4, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopSettingUIList:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/transsion/camera/app/ui/widget/IRotatable;

    invoke-interface {v4, v5, v10}, Lcom/transsion/camera/app/ui/widget/IRotatable;->setOrientation(IZ)V

    :cond_11d
    add-int/lit8 v2, v2, 0x1

    goto :goto_102

    .line 1021
    :cond_120
    :goto_120
    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mTreasureBoxSupport:Z

    if-eqz v2, :cond_128

    .line 1022
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/PopSettingUI;->getPopSettingHorizontalTopPadding(Landroid/content/res/Resources;)I

    move-result v3

    .line 1025
    :cond_128
    iget v2, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mCurrentScreenType:I

    if-eq v2, v9, :cond_132

    .line 1026
    iget-object v2, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopSettingContainer:Lcom/transsion/camera/app/ui/popsetting/PopSettingContainer;

    invoke-virtual {v2, v0, v3, v0, v5}, Lcom/transsion/camera/app/ui/popsetting/PopSettingContainer;->setPaddingByToolbarScroll(IIII)V

    goto :goto_137

    .line 1028
    :cond_132
    iget-object v0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopSettingContainer:Lcom/transsion/camera/app/ui/popsetting/PopSettingContainer;

    invoke-virtual {v0, v5, v3, v5, v5}, Lcom/transsion/camera/app/ui/popsetting/PopSettingContainer;->setPaddingByToolbarScroll(IIII)V

    .line 1030
    :goto_137
    iget-object v0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopSettingContainer:Lcom/transsion/camera/app/ui/popsetting/PopSettingContainer;

    iget v2, v7, Landroid/widget/FrameLayout$LayoutParams;->height:I

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/ui/popsetting/PopSettingContainer;->initWidthAndHeight(II)V

    .line 1031
    iget-object v0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopSettingContainer:Lcom/transsion/camera/app/ui/popsetting/PopSettingContainer;

    invoke-virtual {v0, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1032
    iget v0, v7, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iput v0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopSettingContainerHeight:I

    move v0, v5

    :goto_148
    if-ge v0, v6, :cond_15f

    .line 1038
    iget-object v1, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopSettingContainer:Lcom/transsion/camera/app/ui/popsetting/PopSettingContainer;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1039
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 1040
    invoke-virtual {v2, v5, v5, v5, v5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 1041
    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_148

    .line 1045
    :cond_15f
    iget-object v0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getModePlusBottomBarHeight()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/PopSettingUI;->updateTreasureBoxBackground(I)V

    .line 1047
    iget-object v0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopBackView:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    if-eqz v0, :cond_17c

    iget-object v1, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz v1, :cond_17c

    .line 1048
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 1049
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/PopSettingUI;->getPopBackViewMarginBottom(Landroid/content/res/Resources;)I

    move-result p1

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 1052
    :cond_17c
    iget-object p1, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mCurrentSize:Ljava/lang/String;

    if-eqz p1, :cond_18a

    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mIsPopSettingFirstShow:Z

    if-eqz p1, :cond_18a

    iget p1, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mCurrentScreenType:I

    if-nez p1, :cond_18a

    .line 1053
    iput-boolean v5, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mIsPopSettingFirstShow:Z

    .line 1055
    :cond_18a
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/PopSettingUI;->setPopSettingViewTranslate()V

    return-void
.end method

.method public updatePopBackViewBackground()V
    .registers 3

    .line 1735
    iget-object v0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopupOption:Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;

    if-eqz v0, :cond_a

    .line 1736
    iget-object p0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopBackView:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1, v1}, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->updateItemBackground(Lcom/transsion/camera/app/ui/widget/RotateImageView;Landroid/widget/ImageView;Ljava/lang/String;)V

    :cond_a
    return-void
.end method

.method protected updatePopSettingLayout(Ljava/util/List;)V
    .registers 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 275
    iput-object v1, v0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopSettingItemUIs:Ljava/util/List;

    .line 277
    iget-object v2, v0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopSettingContainer:Lcom/transsion/camera/app/ui/popsetting/PopSettingContainer;

    if-nez v2, :cond_b

    return-void

    .line 281
    :cond_b
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    .line 282
    iget-object v3, v0, Lcom/transsion/camera/app/ui/PopSettingUI;->mItemShowTranslateAnimatorList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 283
    iget-object v3, v0, Lcom/transsion/camera/app/ui/PopSettingUI;->mItemHideScaleAnimatorList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 284
    iget-object v3, v0, Lcom/transsion/camera/app/ui/PopSettingUI;->mTBItemHideAlphaAnimatorList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 285
    iget-object v3, v0, Lcom/transsion/camera/app/ui/PopSettingUI;->mItemHideTranslateAnimatorList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 286
    iget-object v3, v0, Lcom/transsion/camera/app/ui/PopSettingUI;->mItemShowScaleAnimatorList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 288
    iget-object v3, v0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopSettingUIList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_35

    .line 289
    iget-object v3, v0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopSettingUIList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 292
    :cond_35
    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3, v2}, Ljava/util/LinkedHashMap;-><init>(I)V

    const/4 v4, 0x0

    move v5, v4

    :goto_3c
    if-ge v5, v2, :cond_1d9

    .line 294
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    move-object v7, v6

    check-cast v7, Lcom/transsion/camera/app/common/ui/setting/IPopSettingItemUI;

    .line 295
    iget-object v6, v0, Lcom/transsion/camera/app/ui/PopSettingUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v7, v6}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->setAppUI(Lcom/transsion/camera/app/common/IAppUI;)V

    .line 296
    iget-object v6, v0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopupOption:Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;

    invoke-interface {v7, v6}, Lcom/transsion/camera/app/common/ui/setting/IPopSettingItemUI;->setPopupOptionsControl(Lcom/transsion/camera/app/common/ui/setting/IPopupOptionControl;)V

    .line 297
    iget v6, v0, Lcom/transsion/camera/app/ui/PopSettingUI;->mIconOnColor:I

    iget v8, v0, Lcom/transsion/camera/app/ui/PopSettingUI;->mIconOffColor:I

    iget v9, v0, Lcom/transsion/camera/app/ui/PopSettingUI;->mIconLowLightColor:I

    invoke-interface {v7, v6, v8, v9}, Lcom/transsion/camera/app/common/ui/setting/IPopSettingItemUI;->initColor(III)V

    .line 298
    iget v6, v0, Lcom/transsion/camera/app/ui/PopSettingUI;->mSupplyColorId:I

    iget v8, v0, Lcom/transsion/camera/app/ui/PopSettingUI;->mNormalColorId:I

    invoke-interface {v7, v6, v8}, Lcom/transsion/camera/app/common/ui/setting/IPopSettingItemUI;->initColorId(II)V

    .line 299
    invoke-interface {v7}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->getKey()Ljava/lang/String;

    move-result-object v6

    .line 300
    invoke-interface {v7}, Lcom/transsion/camera/app/common/ui/setting/IPopSettingItemUI;->getEntryView()Landroid/view/View;

    move-result-object v8

    if-nez v8, :cond_83

    .line 302
    iget-object v8, v0, Lcom/transsion/camera/app/ui/PopSettingUI;->mInflater:Landroid/view/LayoutInflater;

    iget-object v9, v0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopSettingContainer:Lcom/transsion/camera/app/ui/popsetting/PopSettingContainer;

    sget v10, Lcom/transsion/camera/R$layout;->pop_setting_item:I

    sget v11, Lcom/transsion/camera/R$id;->pop_setting_root_view:I

    sget v12, Lcom/transsion/camera/R$id;->pop_setting_item_img:I

    sget v13, Lcom/transsion/camera/R$id;->pop_setting_item_text:I

    sget v14, Lcom/transsion/camera/R$id;->pop_setting_img_selling_point:I

    sget v15, Lcom/transsion/camera/R$drawable;->ic_pop_selling_point:I

    sget v16, Lcom/transsion/camera/R$id;->treasure_box_item_background:I

    sget v17, Lcom/transsion/camera/R$id;->pop_setting_item_container:I

    sget v18, Lcom/transsion/camera/R$id;->pop_setting_selling_point_layer:I

    invoke-interface/range {v7 .. v18}, Lcom/transsion/camera/app/common/ui/setting/IPopSettingItemUI;->createEntryView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;IIIIIIIII)Landroid/view/View;

    move-result-object v8

    .line 309
    :cond_83
    iget-object v9, v0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopSettingUIList:Ljava/util/List;

    invoke-interface {v9, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 310
    iget-object v9, v0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopupOption:Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;

    iget-object v10, v0, Lcom/transsion/camera/app/ui/PopSettingUI;->mOldValue:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v10

    invoke-virtual {v9, v10}, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->onScreenSupply(Z)V

    .line 311
    iget-object v9, v0, Lcom/transsion/camera/app/ui/PopSettingUI;->mOldValue:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v9

    invoke-interface {v7, v9, v4}, Lcom/transsion/camera/app/common/ui/setting/IPopSettingItemUI;->onScreenSupply(ZZ)V

    .line 312
    invoke-interface {v7}, Lcom/transsion/camera/app/common/ui/setting/IPopSettingItemUI;->setupEntryView()V

    .line 314
    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v9

    if-nez v9, :cond_b7

    invoke-interface {v7}, Lcom/transsion/camera/app/common/ui/setting/IPopSettingItemUI;->getIsShouldGone()Z

    move-result v9

    if-nez v9, :cond_b7

    .line 315
    invoke-interface {v3, v6, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 316
    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-interface {v7, v9}, Lcom/transsion/camera/app/common/ui/setting/IPopSettingItemUI;->setPositionInPopSetting(I)V

    :cond_b7
    const/4 v9, 0x2

    .line 319
    new-array v10, v9, [F

    fill-array-data v10, :array_1e6

    const-string/jumbo v11, "translationY"

    invoke-static {v11, v10}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v10

    .line 320
    new-array v12, v9, [F

    fill-array-data v12, :array_1ee

    const-string v13, "alpha"

    invoke-static {v13, v12}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v12

    .line 321
    filled-new-array {v10, v12}, [Landroid/animation/PropertyValuesHolder;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v10

    .line 322
    new-instance v12, Landroid/view/animation/PathInterpolator;

    const v14, 0x3e4ccccd    # 0.2f

    const/4 v15, 0x0

    const v4, 0x3dcccccd    # 0.1f

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-direct {v12, v14, v15, v4, v9}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 323
    invoke-virtual {v10, v12}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    move v12, v5

    const-wide/16 v4, 0x190

    .line 324
    invoke-virtual {v10, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 325
    iget-object v4, v0, Lcom/transsion/camera/app/ui/PopSettingUI;->mItemShowTranslateAnimatorList:Ljava/util/List;

    invoke-interface {v4, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v4, 0x2

    .line 327
    new-array v5, v4, [F

    fill-array-data v5, :array_1f6

    invoke-static {v11, v5}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v4

    .line 328
    filled-new-array {v4}, [Landroid/animation/PropertyValuesHolder;

    move-result-object v4

    invoke-static {v8, v4}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 329
    new-instance v5, Landroid/view/animation/PathInterpolator;

    const v10, 0x3dcccccd    # 0.1f

    invoke-direct {v5, v14, v15, v10, v9}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 330
    invoke-virtual {v4, v5}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v10, 0x15e

    .line 331
    invoke-virtual {v4, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    const/4 v5, 0x0

    .line 332
    :goto_116
    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v14

    if-ge v5, v14, :cond_127

    const/4 v14, 0x3

    if-le v5, v14, :cond_124

    .line 334
    iget-object v14, v0, Lcom/transsion/camera/app/ui/PopSettingUI;->mItemHideTranslateAnimatorList:Ljava/util/List;

    invoke-interface {v14, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_124
    add-int/lit8 v5, v5, 0x1

    goto :goto_116

    :cond_127
    const/4 v5, 0x2

    .line 338
    new-array v4, v5, [F

    fill-array-data v4, :array_1fe

    const-string v5, "scaleY"

    invoke-static {v5, v4}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v4

    .line 339
    filled-new-array {v4}, [Landroid/animation/PropertyValuesHolder;

    move-result-object v4

    invoke-static {v8, v4}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 340
    new-instance v14, Landroid/view/animation/PathInterpolator;

    const v10, 0x3ecccccd    # 0.4f

    invoke-direct {v14, v10, v15, v15, v9}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 341
    invoke-virtual {v4, v14}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v10, 0x15e

    .line 342
    invoke-virtual {v4, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 343
    iget-object v10, v0, Lcom/transsion/camera/app/ui/PopSettingUI;->mItemHideScaleAnimatorList:Ljava/util/List;

    invoke-interface {v10, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v4, 0x2

    .line 345
    new-array v10, v4, [F

    fill-array-data v10, :array_206

    invoke-static {v13, v10}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v4

    .line 346
    filled-new-array {v4}, [Landroid/animation/PropertyValuesHolder;

    move-result-object v4

    invoke-static {v8, v4}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 347
    new-instance v10, Landroid/view/animation/PathInterpolator;

    const v11, 0x3dcccccd    # 0.1f

    const v13, 0x3e4ccccd    # 0.2f

    invoke-direct {v10, v13, v15, v11, v9}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 348
    invoke-virtual {v4, v10}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v10, 0x12c

    .line 349
    invoke-virtual {v4, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 350
    iget-object v10, v0, Lcom/transsion/camera/app/ui/PopSettingUI;->mTBItemHideAlphaAnimatorList:Ljava/util/List;

    invoke-interface {v10, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v4, 0x2

    .line 352
    new-array v4, v4, [F

    fill-array-data v4, :array_20e

    invoke-static {v5, v4}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v4

    .line 353
    filled-new-array {v4}, [Landroid/animation/PropertyValuesHolder;

    move-result-object v4

    invoke-static {v8, v4}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 354
    new-instance v5, Landroid/view/animation/PathInterpolator;

    const v14, 0x3ecccccd    # 0.4f

    invoke-direct {v5, v14, v15, v15, v9}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 355
    invoke-virtual {v4, v5}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v10, 0x15e

    .line 356
    invoke-virtual {v4, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 357
    iget-object v5, v0, Lcom/transsion/camera/app/ui/PopSettingUI;->mItemShowScaleAnimatorList:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 359
    iget-object v4, v0, Lcom/transsion/camera/app/ui/PopSettingUI;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/transsion/camera/utils/FeatureSupport;->isSupportFoldUI(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_1cf

    iget-object v4, v0, Lcom/transsion/camera/app/ui/PopSettingUI;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/transsion/camera/utils/FeatureSupport;->isOnlySupportTBHoverUI(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_1cf

    iget-object v4, v0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopupOptionManager:Lcom/transsion/camera/app/ui/PopSettingPopupOptionManager;

    .line 360
    invoke-virtual {v4}, Lcom/transsion/camera/app/ui/PopSettingPopupOptionManager;->getCurrentShowView()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1cf

    iget-object v4, v0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopupOptionManager:Lcom/transsion/camera/app/ui/PopSettingPopupOptionManager;

    invoke-virtual {v4}, Lcom/transsion/camera/app/ui/PopSettingPopupOptionManager;->needShowPopUpOption()Z

    move-result v4

    if-eqz v4, :cond_1cf

    .line 361
    invoke-interface {v7, v8}, Lcom/transsion/camera/app/common/ui/setting/IPopSettingItemUI;->onEntryViewClick(Landroid/view/View;)V

    .line 362
    iget-object v4, v0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopupOptionManager:Lcom/transsion/camera/app/ui/PopSettingPopupOptionManager;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/transsion/camera/app/ui/PopSettingPopupOptionManager;->setNeedShowPopUpOption(Z)V

    goto :goto_1d0

    :cond_1cf
    const/4 v5, 0x0

    :goto_1d0
    add-int/lit8 v4, v12, 0x1

    move/from16 v19, v5

    move v5, v4

    move/from16 v4, v19

    goto/16 :goto_3c

    .line 366
    :cond_1d9
    iput-object v3, v0, Lcom/transsion/camera/app/ui/PopSettingUI;->mViewMap:Ljava/util/Map;

    .line 367
    iget-object v1, v0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopSettingContainer:Lcom/transsion/camera/app/ui/popsetting/PopSettingContainer;

    .line 368
    invoke-virtual {v1, v3}, Lcom/transsion/camera/app/ui/popsetting/PopSettingContainer;->updatePopSetting(Ljava/util/Map;)V

    .line 369
    iget v1, v0, Lcom/transsion/camera/app/ui/PopSettingUI;->mOrientation:I

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/PopSettingUI;->updateLayoutParams(I)V

    return-void

    :array_1e6
    .array-data 4
        0x41f00000    # 30.0f
        0x0
    .end array-data

    :array_1ee
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1f6
    .array-data 4
        0x0
        0x41f00000    # 30.0f
    .end array-data

    :array_1fe
    .array-data 4
        0x3f800000    # 1.0f
        0x3faa3d71    # 1.33f
    .end array-data

    :array_206
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_20e
    .array-data 4
        0x3f99999a    # 1.2f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public updatePopSettingUIList(Ljava/util/List;)V
    .registers 4

    .line 574
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/common/ui/setting/IPopSettingItemUI;

    if-eqz v1, :cond_4

    .line 576
    invoke-interface {v1}, Lcom/transsion/camera/app/common/ui/setting/IPopSettingItemUI;->updateSupportEntries()V

    goto :goto_4

    .line 579
    :cond_16
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/PopSettingUI;->updatePopSettingLayout(Ljava/util/List;)V

    return-void
.end method

.method public updateTreasureBoxBG(Ljava/lang/String;Z)V
    .registers 6

    .line 1719
    iget-object v0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopupOption:Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;

    if-eqz v0, :cond_43

    iget-object v0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopSettingItemUIs:Ljava/util/List;

    if-eqz v0, :cond_43

    if-nez p1, :cond_25

    .line 1721
    new-instance p1, Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-static {}, Lcom/transsion/camera/app_info/AppInfo;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/transsion/camera/app/common/storage/DataStore;-><init>(Landroid/content/Context;)V

    .line 1724
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mIsPictureRatioCustomizedIndia:Z

    .line 1723
    invoke-static {v0}, Lcom/transsion/camera/utils/PictureSizeHelper;->getPictureRatioDefaultForStore(Z)Ljava/lang/String;

    move-result-object v0

    const-string v1, "_global_scope"

    .line 1722
    const-string v2, "key_picture_ratio"

    invoke-virtual {p1, v2, v0, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1727
    :cond_25
    iget-object v0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopupOption:Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopBackView:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1}, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->updateItemBackground(Lcom/transsion/camera/app/ui/widget/RotateImageView;Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 1728
    iget-object p0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopSettingItemUIs:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_33
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_43

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/common/ui/setting/IPopSettingItemUI;

    .line 1729
    invoke-interface {v0, p1, p2}, Lcom/transsion/camera/app/common/ui/setting/IPopSettingItemUI;->updateTreasureBoxItemBackground(Ljava/lang/String;Z)V

    goto :goto_33

    :cond_43
    return-void
.end method

.method protected updateTreasureBoxBackground(I)V
    .registers 3

    .line 1066
    iget-object v0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mTreasureBoxBackground:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_14

    iget-object p0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz p0, :cond_14

    .line 1067
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroid/widget/FrameLayout$LayoutParams;

    .line 1068
    iput p1, p0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    const/16 p1, 0x50

    .line 1069
    iput p1, p0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    :cond_14
    return-void
.end method
