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

.field private mBackgroundTranslateAnimator:Landroid/animation/ObjectAnimator;

.field private mCameraOperationControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

.field private final mContext:Landroid/content/Context;

.field private mCurrentScreenType:I

.field private mCurrentSize:Ljava/lang/String;

.field private mEnable:Z

.field private final mExpandItemHideScaleAnimatorList:Ljava/util/List;

.field private final mExpandItemHideTranslateAnimatorList:Ljava/util/List;

.field private final mExpandItemShowScaleAnimatorList:Ljava/util/List;

.field private final mExpandItemShowTranslateAnimatorList:Ljava/util/List;

.field private mExposeTimeCapture:Z

.field private mHidePopSettingAnimator:Landroid/animation/Animator;

.field private final mIModuleTransfer:Lcom/transsion/camera/app/common/IModuleTransfer;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mIsAnimationRunning:Z

.field private mIsCelebritySceneShow:Z

.field private mIsFilterUIShow:Z

.field private mIsImageStyleShow:Z

.field private mIsInVideoMode:Z

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

.field private final mOldValue:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mOrientation:I

.field protected mPopBackView:Lcom/transsion/camera/app/ui/widget/RotateImageView;

.field private mPopItemShowAnimatorList:Ljava/util/List;

.field private mPopOptionSelectedBackground:Lcom/transsion/camera/app/ui/popsetting/PopSettingContainer;

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

.method public static synthetic $r8$lambda$LCGSkSiZdB-9bpIDb6nKBwxbfiA(Landroid/widget/FrameLayout$LayoutParams;Landroid/view/View;)V
    .registers 5

    .line 1407
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    neg-int v0, v0

    mul-int/lit8 v0, v0, 0x4

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 1408
    invoke-virtual {p1, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

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

.method static bridge synthetic -$$Nest$fgetmPopOptionSelectedBackground(Lcom/transsion/camera/app/ui/PopSettingUI;)Lcom/transsion/camera/app/ui/popsetting/PopSettingContainer;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopOptionSelectedBackground:Lcom/transsion/camera/app/ui/popsetting/PopSettingContainer;

    return-object p0
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
    .registers 10

    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopSettingUIList:Ljava/util/List;

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mItemShowTranslateAnimatorList:Ljava/util/List;

    .line 80
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mItemHideTranslateAnimatorList:Ljava/util/List;

    .line 81
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mItemHideScaleAnimatorList:Ljava/util/List;

    .line 82
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mItemShowScaleAnimatorList:Ljava/util/List;

    .line 83
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mTBItemHideAlphaAnimatorList:Ljava/util/List;

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mTBPopHideAlphaAnimatorList:Ljava/util/List;

    .line 85
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mExpandItemShowTranslateAnimatorList:Ljava/util/List;

    .line 86
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mExpandItemShowScaleAnimatorList:Ljava/util/List;

    .line 87
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mExpandItemHideTranslateAnimatorList:Ljava/util/List;

    .line 88
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mExpandItemHideScaleAnimatorList:Ljava/util/List;

    .line 91
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mTreasureBoxSupport:Z

    .line 92
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mOldValue:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 97
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3f28f5c3    # 0.66f

    const/high16 v2, 0x3f800000    # 1.0f

    const v3, 0x3ea8f5c3    # 0.33f

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4, v1, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopSettingInterpolator:Landroid/view/animation/PathInterpolator;

    const/4 v0, 0x1

    .line 112
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mEnable:Z

    .line 115
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mIsPopSettingFirstShow:Z

    const/4 v0, -0x1

    .line 132
    iput v0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mOrientation:I

    .line 139
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopItemShowAnimatorList:Ljava/util/List;

    .line 410
    new-instance v0, Lcom/transsion/camera/app/ui/PopSettingUI$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/ui/PopSettingUI$$ExternalSyntheticLambda2;-><init>(Lcom/transsion/camera/app/ui/PopSettingUI;)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mIModuleTransfer:Lcom/transsion/camera/app/common/IModuleTransfer;

    .line 144
    iput-object p1, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mContext:Landroid/content/Context;

    .line 145
    iput-object p2, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    .line 146
    iput-object p3, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopupOptionManager:Lcom/transsion/camera/app/ui/PopSettingPopupOptionManager;

    .line 147
    iput-object p4, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopSettingUIManager:Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;

    .line 148
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/transsion/camera/R$bool;->pop_setting_support:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopSettingSupport:Z

    return-void
.end method

.method private animateTranslation(FF)V
    .registers 9

    .line 812
    iget-object v0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mTreasureBoxScrollView:Lcom/transsion/camera/app/ui/widget/DampingHorizontalScrollView;

    const/4 v1, 0x2

    new-array v2, v1, [F

    const/4 v3, 0x0

    aput p1, v2, v3

    const/4 v4, 0x1

    aput p2, v2, v4

    const-string/jumbo v5, "translationY"

    invoke-static {v0, v5, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mTranslateAnimator:Landroid/animation/ObjectAnimator;

    .line 813
    iget-object v0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopOptionSelectedBackground:Lcom/transsion/camera/app/ui/popsetting/PopSettingContainer;

    new-array v1, v1, [F

    aput p1, v1, v3

    aput p2, v1, v4

    invoke-static {v0, v5, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mBackgroundTranslateAnimator:Landroid/animation/ObjectAnimator;

    .line 814
    iget-object p1, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mTranslateAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v0, 0x118

    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 815
    iget-object p1, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mTranslateAnimator:Landroid/animation/ObjectAnimator;

    iget-object p2, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopSettingInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {p1, p2}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 816
    iget-object p1, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mTranslateAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    .line 817
    iget-object p1, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mBackgroundTranslateAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 818
    iget-object p1, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mBackgroundTranslateAnimator:Landroid/animation/ObjectAnimator;

    iget-object p2, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopSettingInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {p1, p2}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 819
    iget-object p1, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mBackgroundTranslateAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    .line 820
    iget-object p1, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mTranslateAnimator:Landroid/animation/ObjectAnimator;

    new-instance p2, Lcom/transsion/camera/app/ui/PopSettingUI$3;

    invoke-direct {p2, p0}, Lcom/transsion/camera/app/ui/PopSettingUI$3;-><init>(Lcom/transsion/camera/app/ui/PopSettingUI;)V

    invoke-virtual {p1, p2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 827
    iget-object p1, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mBackgroundTranslateAnimator:Landroid/animation/ObjectAnimator;

    new-instance p2, Lcom/transsion/camera/app/ui/PopSettingUI$4;

    invoke-direct {p2, p0}, Lcom/transsion/camera/app/ui/PopSettingUI$4;-><init>(Lcom/transsion/camera/app/ui/PopSettingUI;)V

    invoke-virtual {p1, p2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method private synthetic lambda$new$0(Z)V
    .registers 3

    .line 411
    iget-object v0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mOldValue:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eq v0, p1, :cond_10

    .line 412
    iget-object v0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mOldValue:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 413
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/PopSettingUI;->ringScreenLightUpdateUI()V

    :cond_10
    return-void
.end method

.method private synthetic lambda$ringScreenLightUpdateUI$1()V
    .registers 2

    .line 472
    iget-object v0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mOldValue:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/PopSettingUI;->notifyScreenSupply(Z)V

    return-void
.end method

.method private notifyScreenSupply(Z)V
    .registers 4

    .line 477
    iget-object v0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopSettingItemUIs:Ljava/util/List;

    if-eqz v0, :cond_27

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_27

    .line 478
    iget-object v0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopSettingItemUIs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_20

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/common/ui/setting/IPopSettingItemUI;

    .line 479
    invoke-interface {v1, p1}, Lcom/transsion/camera/app/common/ui/setting/IPopSettingItemUI;->onScreenSupply(Z)V

    goto :goto_10

    .line 481
    :cond_20
    iget-object v0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopupOption:Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;

    if-eqz v0, :cond_27

    .line 482
    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->onScreenSupply(Z)V

    :cond_27
    if-eqz p1, :cond_69

    .line 486
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mTreasureBoxSupport:Z

    if-eqz p1, :cond_4c

    .line 487
    iget-object p1, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mTreasureBoxBackground:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_3a

    .line 488
    const-string v0, "#00000000"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 490
    :cond_3a
    iget-object p1, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopBackView:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 491
    iget-object p0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopBackView:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    sget v0, Lcom/transsion/camera/R$drawable;->ic_treasure_box_item_back_black:I

    .line 492
    invoke-static {p1, v0}, Lcom/transsion/camera/utils/ResCache;->getDrawable(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 491
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void

    .line 494
    :cond_4c
    iget-object p1, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopSettingContainer:Lcom/transsion/camera/app/ui/popsetting/PopSettingContainer;

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 495
    iget-object v0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopSettingContainer:Lcom/transsion/camera/app/ui/popsetting/PopSettingContainer;

    sget v1, Lcom/transsion/camera/R$drawable;->background_pop_setting_black:I

    invoke-static {p1, v1}, Lcom/transsion/camera/utils/ResCache;->getDrawable(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 497
    iget-object p0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopOptionSelectedBackground:Lcom/transsion/camera/app/ui/popsetting/PopSettingContainer;

    sget v0, Lcom/transsion/camera/R$drawable;->background_pop_option_selected_background_black:I

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/ResCache;->getDrawable(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void

    .line 501
    :cond_69
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mTreasureBoxSupport:Z

    if-eqz p1, :cond_9a

    .line 502
    iget-object p1, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mTreasureBoxBackground:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_7a

    .line 503
    const-string v0, "#33000000"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 505
    :cond_7a
    iget-object p1, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopBackView:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 506
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportUI5:Z

    if-nez v0, :cond_94

    .line 507
    iget-object p0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopBackView:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    sget v0, Lcom/transsion/camera/R$drawable;->ic_treasure_box_item_back:I

    .line 508
    invoke-static {p1, v0}, Lcom/transsion/camera/utils/ResCache;->getDrawable(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 507
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void

    :cond_94
    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 510
    invoke-virtual {p0, p1, v0}, Lcom/transsion/camera/app/ui/PopSettingUI;->updateTreasureBoxBG(Ljava/lang/String;Z)V

    return-void

    .line 513
    :cond_9a
    iget-object p1, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopSettingContainer:Lcom/transsion/camera/app/ui/popsetting/PopSettingContainer;

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 514
    iget-object v0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopSettingContainer:Lcom/transsion/camera/app/ui/popsetting/PopSettingContainer;

    sget v1, Lcom/transsion/camera/R$drawable;->background_pop_setting:I

    invoke-static {p1, v1}, Lcom/transsion/camera/utils/ResCache;->getDrawable(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 516
    iget-object p0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopOptionSelectedBackground:Lcom/transsion/camera/app/ui/popsetting/PopSettingContainer;

    sget v0, Lcom/transsion/camera/R$drawable;->background_pop_option_selected_background:I

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/ResCache;->getDrawable(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private onPopSettingContainerClick(Landroid/view/View;)V
    .registers 2

    return-void
.end method

.method private resetTranslation()V
    .registers 3

    .line 587
    iget-object v0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopSettingContainer:Lcom/transsion/camera/app/ui/popsetting/PopSettingContainer;

    if-eqz v0, :cond_11

    iget-object v1, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopOptionSelectedBackground:Lcom/transsion/camera/app/ui/popsetting/PopSettingContainer;

    if-eqz v1, :cond_11

    const/4 v1, 0x0

    .line 588
    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 589
    iget-object p0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopOptionSelectedBackground:Lcom/transsion/camera/app/ui/popsetting/PopSettingContainer;

    invoke-virtual {p0, v1}, Landroid/view/View;->setTranslationY(F)V

    :cond_11
    return-void
.end method

.method private ringScreenLightUpdateUI()V
    .registers 3

    .line 468
    iget-object v0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mRoot:Landroid/view/View;

    if-nez v0, :cond_5

    return-void

    .line 471
    :cond_5
    new-instance v1, Lcom/transsion/camera/app/ui/PopSettingUI$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/ui/PopSettingUI$$ExternalSyntheticLambda4;-><init>(Lcom/transsion/camera/app/ui/PopSettingUI;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private runPopSettingRootAnimator()V
    .registers 9

    .line 225
    iget-object v0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopSettingIn:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 226
    iget-object v0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopSettingIn:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 228
    :cond_f
    iget-object v0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopSettingOut:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_1e

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 229
    iget-object v0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopSettingOut:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 233
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

    .line 234
    iget-object v0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopSettingContainer:Lcom/transsion/camera/app/ui/popsetting/PopSettingContainer;

    new-array v1, v1, [F

    const/high16 v2, 0x3f800000    # 1.0f

    aput v2, v1, v3

    invoke-static {v0, v5, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopSettingIn:Landroid/animation/ObjectAnimator;

    .line 235
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3ecccccd    # 0.4f

    const v3, 0x3dcccccd    # 0.1f

    invoke-direct {v0, v1, v4, v3, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 236
    new-instance v1, Landroid/view/animation/PathInterpolator;

    const v3, 0x3ea8f5c3    # 0.33f

    const v5, 0x3f28f5c3    # 0.66f

    invoke-direct {v1, v3, v4, v5, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 237
    iget-object v2, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopSettingIn:Landroid/animation/ObjectAnimator;

    invoke-virtual {v2, v1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 238
    iget-object v1, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopSettingOut:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1, v0}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 239
    iget-object v0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopSettingOut:Landroid/animation/ObjectAnimator;

    new-instance v1, Lcom/transsion/camera/app/ui/PopSettingUI$1;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/ui/PopSettingUI$1;-><init>(Lcom/transsion/camera/app/ui/PopSettingUI;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 247
    iget-object p0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopSettingOut:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method private setOrientationForPopSettingUIList(IZ)V
    .registers 5

    const/4 v0, 0x0

    .line 579
    :goto_1
    iget-object v1, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopSettingUIList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1f

    .line 580
    iget-object v1, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopSettingUIList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1c

    .line 581
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
    .registers 9

    .line 1561
    iget-object v0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mCurrentSize:Ljava/lang/String;

    if-eqz v0, :cond_93

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mTreasureBoxSupport:Z

    if-nez v0, :cond_93

    .line 1562
    iget-object v0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1563
    iget-object v1, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mCurrentSize:Ljava/lang/String;

    invoke-static {v1}, Landroid/util/Size;->parseSize(Ljava/lang/String;)Landroid/util/Size;

    move-result-object v1

    .line 1564
    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v2

    int-to-double v2, v2

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v1

    int-to-double v4, v1

    div-double/2addr v2, v4

    .line 1566
    sget v1, Lcom/transsion/camera/R$dimen;->column_pop_setting_full_ratio_changed_translation:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    neg-int v1, v1

    .line 1567
    iget v4, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mCurrentScreenType:I

    const/4 v5, 0x2

    const/4 v6, 0x0

    if-nez v4, :cond_35

    .line 1568
    sget v4, Lcom/transsion/camera/R$dimen;->pop_setting_ratio_changed_translation:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    :goto_32
    neg-int v0, v0

    int-to-float v0, v0

    goto :goto_3f

    :cond_35
    if-ne v4, v5, :cond_3e

    .line 1570
    sget v4, Lcom/transsion/camera/R$dimen;->column_pop_setting_ratio_changed_translation:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_32

    :cond_3e
    move v0, v6

    .line 1572
    :goto_3f
    iget-object v4, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mTreasureBoxScrollView:Lcom/transsion/camera/app/ui/widget/DampingHorizontalScrollView;

    if-eqz v4, :cond_93

    iget-object v4, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopOptionSelectedBackground:Lcom/transsion/camera/app/ui/popsetting/PopSettingContainer;

    if-eqz v4, :cond_93

    .line 1573
    invoke-static {v2, v3}, Lcom/transsion/camera/utils/PictureSizeHelper;->isSmallRatio(D)Z

    move-result v4

    const/4 v7, 0x0

    if-eqz v4, :cond_5e

    .line 1574
    iget-object v1, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mTreasureBoxScrollView:Lcom/transsion/camera/app/ui/widget/DampingHorizontalScrollView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 1575
    iget-object v1, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopOptionSelectedBackground:Lcom/transsion/camera/app/ui/popsetting/PopSettingContainer;

    invoke-virtual {v1, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 1576
    iget-object p0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopupOption:Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;

    invoke-virtual {p0, v7, v2, v3}, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->onModeSwitch(ZD)V

    return-void

    .line 1577
    :cond_5e
    invoke-static {v2, v3}, Lcom/transsion/camera/utils/PictureSizeHelper;->isFullRatio(D)Z

    move-result v0

    if-eqz v0, :cond_84

    .line 1578
    iget v0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mCurrentScreenType:I

    if-ne v0, v5, :cond_74

    .line 1579
    iget-object v0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mTreasureBoxScrollView:Lcom/transsion/camera/app/ui/widget/DampingHorizontalScrollView;

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 1580
    iget-object v0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopOptionSelectedBackground:Lcom/transsion/camera/app/ui/popsetting/PopSettingContainer;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_7e

    .line 1582
    :cond_74
    iget-object v0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mTreasureBoxScrollView:Lcom/transsion/camera/app/ui/widget/DampingHorizontalScrollView;

    invoke-virtual {v0, v6}, Landroid/view/View;->setTranslationY(F)V

    .line 1583
    iget-object v0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopOptionSelectedBackground:Lcom/transsion/camera/app/ui/popsetting/PopSettingContainer;

    invoke-virtual {v0, v6}, Landroid/view/View;->setTranslationY(F)V

    .line 1585
    :goto_7e
    iget-object p0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopupOption:Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;

    invoke-virtual {p0, v7, v2, v3}, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->onModeSwitch(ZD)V

    return-void

    .line 1587
    :cond_84
    iget-object v0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mTreasureBoxScrollView:Lcom/transsion/camera/app/ui/widget/DampingHorizontalScrollView;

    invoke-virtual {v0, v6}, Landroid/view/View;->setTranslationY(F)V

    .line 1588
    iget-object v0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopOptionSelectedBackground:Lcom/transsion/camera/app/ui/popsetting/PopSettingContainer;

    invoke-virtual {v0, v6}, Landroid/view/View;->setTranslationY(F)V

    .line 1589
    iget-object p0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopupOption:Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;

    invoke-virtual {p0, v7, v2, v3}, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->onModeSwitch(ZD)V

    :cond_93
    return-void
.end method

.method private translateContainer()V
    .registers 7

    .line 594
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mIsInVideoMode:Z

    if-nez v0, :cond_9e

    iget-object v0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mCurrentSize:Ljava/lang/String;

    if-eqz v0, :cond_9e

    iget-object v0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopSettingContainer:Lcom/transsion/camera/app/ui/popsetting/PopSettingContainer;

    if-eqz v0, :cond_9e

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mTreasureBoxSupport:Z

    if-eqz v0, :cond_12

    goto/16 :goto_9e

    .line 597
    :cond_12
    iget-object v0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 598
    sget v1, Lcom/transsion/camera/R$dimen;->column_pop_setting_ratio_changed_translation:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    neg-int v0, v0

    .line 599
    iget-object v1, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mCurrentSize:Ljava/lang/String;

    invoke-static {v1}, Landroid/util/Size;->parseSize(Ljava/lang/String;)Landroid/util/Size;

    move-result-object v1

    .line 600
    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v2

    int-to-double v2, v2

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v1

    int-to-double v4, v1

    div-double/2addr v2, v4

    .line 602
    iget-object v1, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopupOption:Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;

    if-eqz v1, :cond_37

    .line 603
    invoke-virtual {v1, v2, v3}, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->onPreViewSizeChanged(D)V

    .line 605
    :cond_37
    invoke-static {v2, v3}, Lcom/transsion/camera/utils/PictureSizeHelper;->isCommonRatio(D)Z

    move-result v1

    const/4 v4, 0x0

    if-nez v1, :cond_60

    invoke-static {v2, v3}, Lcom/transsion/camera/utils/PictureSizeHelper;->isVideoRatio(D)Z

    move-result v1

    if-eqz v1, :cond_45

    goto :goto_60

    .line 607
    :cond_45
    invoke-static {v2, v3}, Lcom/transsion/camera/utils/PictureSizeHelper;->isFullRatio(D)Z

    move-result v1

    const/4 v5, 0x2

    if-eqz v1, :cond_62

    .line 608
    iget v1, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mCurrentScreenType:I

    if-ne v1, v5, :cond_5e

    .line 609
    iget-object v0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopSettingContainer:Lcom/transsion/camera/app/ui/popsetting/PopSettingContainer;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/camera/R$dimen;->column_pop_setting_full_ratio_changed_translation:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    :goto_5c
    neg-int v0, v0

    goto :goto_8e

    :cond_5e
    if-nez v1, :cond_8e

    :cond_60
    :goto_60
    move v0, v4

    goto :goto_8e

    .line 614
    :cond_62
    invoke-static {v2, v3}, Lcom/transsion/camera/utils/PictureSizeHelper;->isSmallRatio(D)Z

    move-result v1

    if-nez v1, :cond_6e

    invoke-static {v2, v3}, Lcom/transsion/camera/utils/PictureSizeHelper;->isVideoRatio(D)Z

    move-result v1

    if-eqz v1, :cond_8e

    .line 615
    :cond_6e
    iget v1, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mCurrentScreenType:I

    if-ne v1, v5, :cond_7f

    .line 616
    iget-object v0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopSettingContainer:Lcom/transsion/camera/app/ui/popsetting/PopSettingContainer;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/camera/R$dimen;->column_pop_setting_ratio_changed_translation:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_5c

    :cond_7f
    if-nez v1, :cond_8e

    .line 618
    iget-object v0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopSettingContainer:Lcom/transsion/camera/app/ui/popsetting/PopSettingContainer;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/camera/R$dimen;->pop_setting_ratio_changed_translation:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_5c

    .line 622
    :cond_8e
    :goto_8e
    iget-object v1, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopSettingContainer:Lcom/transsion/camera/app/ui/popsetting/PopSettingContainer;

    if-eqz v1, :cond_96

    int-to-float v2, v0

    .line 623
    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 626
    :cond_96
    iget-object p0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopOptionSelectedBackground:Lcom/transsion/camera/app/ui/popsetting/PopSettingContainer;

    if-eqz p0, :cond_9e

    int-to-float v0, v0

    .line 627
    invoke-virtual {p0, v0}, Landroid/view/View;->setTranslationY(F)V

    :cond_9e
    :goto_9e
    return-void
.end method

.method private visibilityToString(I)Ljava/lang/String;
    .registers 3

    if-eqz p1, :cond_26

    const/4 p0, 0x4

    if-eq p1, p0, :cond_23

    const/16 p0, 0x8

    if-eq p1, p0, :cond_20

    .line 2210
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

    .line 2208
    :cond_20
    const-string p0, "GONE"

    return-object p0

    .line 2206
    :cond_23
    const-string p0, "INVISIBLE"

    return-object p0

    .line 2204
    :cond_26
    const-string p0, "VISIBLE"

    return-object p0
.end method


# virtual methods
.method protected createHidePopSettingAnimation()Landroid/animation/Animator;
    .registers 5

    const/4 v0, 0x2

    .line 2053
    new-array v1, v0, [F

    fill-array-data v1, :array_60

    const-string v2, "alpha"

    invoke-static {v2, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    .line 2054
    iget v2, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mCurrentScreenType:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_42

    .line 2055
    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mTreasureBoxSupport:Z

    if-eqz v2, :cond_2c

    .line 2056
    new-array v0, v0, [F

    fill-array-data v0, :array_68

    const-string/jumbo v2, "translationY"

    invoke-static {v2, v0}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 2057
    iget-object v2, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopSettingContainer:Lcom/transsion/camera/app/ui/popsetting/PopSettingContainer;

    filled-new-array {v0, v1}, [Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    goto :goto_57

    .line 2059
    :cond_2c
    new-array v0, v0, [F

    fill-array-data v0, :array_70

    const-string v2, "scaleY"

    invoke-static {v2, v0}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 2060
    iget-object v2, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopSettingContainer:Lcom/transsion/camera/app/ui/popsetting/PopSettingContainer;

    filled-new-array {v0, v1}, [Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    goto :goto_57

    .line 2063
    :cond_42
    new-array v0, v0, [F

    fill-array-data v0, :array_78

    const-string v2, "scaleX"

    invoke-static {v2, v0}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 2064
    iget-object v2, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopSettingContainer:Lcom/transsion/camera/app/ui/popsetting/PopSettingContainer;

    filled-new-array {v0, v1}, [Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 2066
    :goto_57
    new-instance v1, Lcom/transsion/camera/app/ui/PopSettingUI$11;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/ui/PopSettingUI$11;-><init>(Lcom/transsion/camera/app/ui/PopSettingUI;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object v0

    :array_60
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_68
    .array-data 4
        0x0
        0x41f00000    # 30.0f
    .end array-data

    :array_70
    .array-data 4
        0x3f800000    # 1.0f
        0x3f451eb8    # 0.77f
    .end array-data

    :array_78
    .array-data 4
        0x3f800000    # 1.0f
        0x3f451eb8    # 0.77f
    .end array-data
.end method

.method protected createShowPopSettingAnimation(Z)Landroid/animation/Animator;
    .registers 6

    const/4 v0, 0x0

    if-eqz p1, :cond_6

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_7

    :cond_6
    move p1, v0

    :goto_7
    const/4 v1, 0x2

    .line 1954
    new-array v2, v1, [F

    const/4 v3, 0x0

    aput v0, v2, v3

    const/4 v0, 0x1

    aput p1, v2, v0

    const-string p1, "Alpha"

    invoke-static {p1, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object p1

    .line 1955
    iget v2, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mCurrentScreenType:I

    if-eq v2, v0, :cond_30

    .line 1956
    new-array v0, v1, [F

    fill-array-data v0, :array_4e

    const-string v1, "scaleY"

    invoke-static {v1, v0}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 1957
    iget-object v1, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopSettingContainer:Lcom/transsion/camera/app/ui/popsetting/PopSettingContainer;

    filled-new-array {v0, p1}, [Landroid/animation/PropertyValuesHolder;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object p1

    goto :goto_45

    .line 1959
    :cond_30
    new-array v0, v1, [F

    fill-array-data v0, :array_56

    const-string v1, "scaleX"

    invoke-static {v1, v0}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 1960
    iget-object v1, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopSettingContainer:Lcom/transsion/camera/app/ui/popsetting/PopSettingContainer;

    filled-new-array {v0, p1}, [Landroid/animation/PropertyValuesHolder;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 1962
    :goto_45
    new-instance v0, Lcom/transsion/camera/app/ui/PopSettingUI$10;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/ui/PopSettingUI$10;-><init>(Lcom/transsion/camera/app/ui/PopSettingUI;)V

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object p1

    :array_4e
    .array-data 4
        0x3f451eb8    # 0.77f
        0x3f800000    # 1.0f
    .end array-data

    :array_56
    .array-data 4
        0x3f451eb8    # 0.77f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public dismissPopup()Z
    .registers 3

    .line 268
    iget-object v0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopupOptionManager:Lcom/transsion/camera/app/ui/PopSettingPopupOptionManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/PopSettingPopupOptionManager;->setNeedShowPopUpOption(Z)V

    .line 269
    iget-object p0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopupOptionManager:Lcom/transsion/camera/app/ui/PopSettingPopupOptionManager;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/PopSettingPopupOptionManager;->dismissAllPopupOption()Z

    move-result p0

    return p0
.end method

.method public dismissPopupWithoutAnimation()Z
    .registers 3

    .line 978
    iget-object v0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopupOptionManager:Lcom/transsion/camera/app/ui/PopSettingPopupOptionManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/PopSettingPopupOptionManager;->setNeedShowPopUpOption(Z)V

    .line 979
    iget-object v0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopupOption:Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;

    if-eqz v0, :cond_1e

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 980
    iget-object v0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mCameraOperationControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    const/16 v1, 0x1e

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 981
    iget-object p0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopupOption:Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->dismissPopupWithoutAnimation()V

    const/4 p0, 0x1

    return p0

    :cond_1e
    return v1
.end method

.method public getAppUI()Lcom/transsion/camera/app/common/IAppUI;
    .registers 1

    .line 2221
    iget-object p0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    return-object p0
.end method

.method protected getItemSelectPosition()I
    .registers 1

    .line 1602
    iget-object p0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopupOption:Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;

    if-eqz p0, :cond_9

    .line 1603
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->getItemSelectPosition()I

    move-result p0

    return p0

    :cond_9
    const/4 p0, 0x0

    return p0
.end method

.method protected getPopBackViewMarginBottom(Landroid/content/res/Resources;)I
    .registers 3

    .line 1546
    iget-object v0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopBackView:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    if-eqz v0, :cond_14

    iget-object p0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz p0, :cond_14

    .line 1547
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

    .line 2041
    new-instance p1, Landroid/view/animation/PathInterpolator;

    const/high16 v1, 0x3e800000    # 0.25f

    invoke-direct {p1, v1, v0, v0, p0}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    return-object p1

    .line 2043
    :cond_d
    new-instance p1, Landroid/view/animation/PathInterpolator;

    const v1, 0x3e4ccccd    # 0.2f

    const v2, 0x3dcccccd    # 0.1f

    invoke-direct {p1, v1, v0, v2, p0}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    return-object p1
.end method

.method public getPopSettingContainer()Lcom/transsion/camera/app/ui/popsetting/PopSettingContainer;
    .registers 1

    .line 2245
    iget-object p0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopSettingContainer:Lcom/transsion/camera/app/ui/popsetting/PopSettingContainer;

    return-object p0
.end method

.method protected getPopSettingHorizontalTopPadding(Landroid/content/res/Resources;)I
    .registers 2

    .line 1212
    sget p0, Lcom/transsion/camera/R$dimen;->tb_pop_setting_horizontal_padding:I

    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0
.end method

.method public getPopSettingVisible()I
    .registers 1

    .line 948
    iget-object p0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopSettingContainer:Lcom/transsion/camera/app/ui/popsetting/PopSettingContainer;

    if-nez p0, :cond_7

    const/16 p0, 0x8

    return p0

    .line 951
    :cond_7
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p0

    return p0
.end method

.method protected getPopupAnimationStrategy()Lcom/transsion/camera/app/common/ui/setting/IPopupOptionControl$IAnimationStrategy;
    .registers 2

    .line 1597
    new-instance v0, Lcom/transsion/camera/app/ui/PopSettingUI$MyAnimationStrategy;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/ui/PopSettingUI$MyAnimationStrategy;-><init>(Lcom/transsion/camera/app/ui/PopSettingUI;)V

    return-object v0
.end method

.method public hidePopSettingByFilter()V
    .registers 2

    .line 913
    iget-object p0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mCameraOperationControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    const/16 v0, 0x15c

    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    return-void
.end method

.method public hidePopSettingView(ZZZ)V
    .registers 4

    .line 918
    iget-boolean p2, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mEnable:Z

    if-nez p2, :cond_6

    if-eqz p1, :cond_a

    :cond_6
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mIsAnimationRunning:Z

    if-eqz p1, :cond_b

    :cond_a
    return-void

    .line 922
    :cond_b
    iget-object p1, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopSettingContainer:Lcom/transsion/camera/app/ui/popsetting/PopSettingContainer;

    if-eqz p1, :cond_26

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_26

    .line 923
    iget-object p1, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mCameraOperationControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    const/16 p2, 0xd0

    invoke-interface {p1, p2}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    if-eqz p3, :cond_22

    .line 925
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/PopSettingUI;->startHidePopSettingAnimation()V

    goto :goto_26

    :cond_22
    const/4 p1, 0x1

    .line 927
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/PopSettingUI;->onHidePopSettingFinish(Z)V

    .line 931
    :cond_26
    :goto_26
    iget-object p1, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopOptionSelectedBackground:Lcom/transsion/camera/app/ui/popsetting/PopSettingContainer;

    const/16 p2, 0x8

    if-eqz p1, :cond_37

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_37

    .line 932
    iget-object p1, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopOptionSelectedBackground:Lcom/transsion/camera/app/ui/popsetting/PopSettingContainer;

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 934
    :cond_37
    iget-object p1, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopOptionSelectedBackground:Lcom/transsion/camera/app/ui/popsetting/PopSettingContainer;

    if-eqz p1, :cond_46

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_46

    .line 935
    iget-object p1, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopOptionSelectedBackground:Lcom/transsion/camera/app/ui/popsetting/PopSettingContainer;

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 937
    :cond_46
    iget-object p1, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mTreasureBoxBackground:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_4d

    .line 938
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 940
    :cond_4d
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mIsZoomStart:Z

    if-nez p1, :cond_54

    .line 941
    invoke-static {}, Lcom/transsion/camera/utils/MultiTouchManager;->resetState()V

    .line 943
    :cond_54
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/PopSettingUI;->dismissPopup()Z

    return-void
.end method

.method public inflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 15

    .line 153
    iput-object p1, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mInflater:Landroid/view/LayoutInflater;

    .line 154
    sget v0, Lcom/transsion/camera/R$layout;->pop_settting_layout:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mRoot:Landroid/view/View;

    .line 155
    sget v0, Lcom/transsion/camera/R$id;->pop_setting_container:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/app/ui/popsetting/PopSettingContainer;

    iput-object p1, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopSettingContainer:Lcom/transsion/camera/app/ui/popsetting/PopSettingContainer;

    .line 156
    iget-object p1, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mRoot:Landroid/view/View;

    sget v0, Lcom/transsion/camera/R$id;->pop_option_selected_background:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/app/ui/popsetting/PopSettingContainer;

    iput-object p1, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopOptionSelectedBackground:Lcom/transsion/camera/app/ui/popsetting/PopSettingContainer;

    .line 157
    iget-object p1, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mRoot:Landroid/view/View;

    sget v0, Lcom/transsion/camera/R$id;->pop_setting_container_rotateLayout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/app/ui/widget/RotateLayout;

    iput-object p1, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopSettingContainerRotateLayout:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    .line 158
    iget-object p1, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mRoot:Landroid/view/View;

    sget v0, Lcom/transsion/camera/R$id;->treasure_box_scroll_view:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/app/ui/widget/DampingHorizontalScrollView;

    iput-object p1, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mTreasureBoxScrollView:Lcom/transsion/camera/app/ui/widget/DampingHorizontalScrollView;

    .line 159
    iget-object p1, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mRoot:Landroid/view/View;

    sget v0, Lcom/transsion/camera/R$id;->treasure_box_scroll_background_layout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewStub;

    iput-object p1, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mTreasureBoxBackgroundLayout:Landroid/view/ViewStub;

    .line 160
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/PopSettingUI;->onInflateTreasureBoxBackgroundLayout()V

    .line 161
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mTreasureBoxSupport:Z

    const/16 v0, 0x8

    if-eqz p1, :cond_75

    .line 162
    iget-object p1, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mRoot:Landroid/view/View;

    sget v1, Lcom/transsion/camera/R$id;->treasure_box_pop_back:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/app/ui/widget/RotateImageView;

    iput-object p1, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopBackView:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    .line 163
    new-instance v1, Lcom/transsion/camera/app/ui/PopSettingUI$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/ui/PopSettingUI$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/app/ui/PopSettingUI;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 164
    iget-object p1, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopBackView:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 165
    iget-object p1, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopBackView:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    const v1, 0x3f4ccccd    # 0.8f

    const/4 v2, 0x0

    invoke-static {p1, v1, v2}, Lcom/transsion/camera/utils/MultiTouchManager;->pressSealAnimation(Landroid/view/View;FLandroid/animation/AnimatorListenerAdapter;)V

    .line 166
    iget-object p1, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mTreasureBoxScrollView:Lcom/transsion/camera/app/ui/widget/DampingHorizontalScrollView;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/widget/OverScrollDecoratorHelper;->setUpOverScroll(Landroid/widget/HorizontalScrollView;)V

    .line 168
    :cond_75
    iget-object p1, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mInflater:Landroid/view/LayoutInflater;

    sget v1, Lcom/transsion/camera/R$layout;->pop_option_layout:I

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/app/ui/widget/RotateLayout;

    iput-object p1, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopWindowRotateLayout:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    .line 169
    sget p2, Lcom/transsion/camera/R$id;->popup_option_container:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/app/ui/widget/HorizontalAverageLayout;

    iput-object p1, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->popupOptionRoot:Lcom/transsion/camera/app/ui/widget/HorizontalAverageLayout;

    .line 170
    iget-boolean p2, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mTreasureBoxSupport:Z

    if-eqz p2, :cond_96

    .line 171
    const-string/jumbo p2, "type_i"

    invoke-virtual {p1, p2}, Lcom/transsion/camera/app/ui/widget/HorizontalAverageLayout;->setTag(Ljava/lang/Object;)V

    .line 173
    :cond_96
    iget-object p1, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 174
    new-instance v3, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;

    iget-object v4, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mInflater:Landroid/view/LayoutInflater;

    iget-object v5, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mRoot:Landroid/view/View;

    iget-object v6, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->popupOptionRoot:Lcom/transsion/camera/app/ui/widget/HorizontalAverageLayout;

    iget-object v7, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopWindowRotateLayout:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    sget p2, Lcom/transsion/camera/R$dimen;->pop_option_item_common_width:I

    .line 175
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    iget-object v9, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopupOptionManager:Lcom/transsion/camera/app/ui/PopSettingPopupOptionManager;

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-direct/range {v3 .. v11}, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;-><init>(Landroid/view/LayoutInflater;Landroid/view/View;Landroid/view/View;Lcom/transsion/camera/app/ui/widget/RotateLayout;ILcom/transsion/camera/app/ui/PopSettingPopupOptionManager;ILcom/transsion/camera/app/common/IAppUI;)V

    iput-object v3, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopupOption:Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;

    .line 176
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/PopSettingUI;->getPopupAnimationStrategy()Lcom/transsion/camera/app/common/ui/setting/IPopupOptionControl$IAnimationStrategy;

    move-result-object p1

    invoke-virtual {v3, p1}, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->setAnimationStrategy(Lcom/transsion/camera/app/common/ui/setting/IPopupOptionControl$IAnimationStrategy;)V

    .line 177
    iget-object p1, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopSettingContainer:Lcom/transsion/camera/app/ui/popsetting/PopSettingContainer;

    iget-object p2, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopSettingUIManager:Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;

    invoke-virtual {p1, p2, v1}, Lcom/transsion/camera/app/ui/popsetting/PopSettingContainer;->initManager(Lcom/transsion/camera/app/ui/ScreenManager;Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;)V

    .line 178
    iget-object p1, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopSettingContainer:Lcom/transsion/camera/app/ui/popsetting/PopSettingContainer;

    new-instance p2, Lcom/transsion/camera/app/ui/PopSettingUI$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0}, Lcom/transsion/camera/app/ui/PopSettingUI$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/app/ui/PopSettingUI;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 179
    iget-object p1, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopOptionSelectedBackground:Lcom/transsion/camera/app/ui/popsetting/PopSettingContainer;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 180
    iget-object p1, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopupOption:Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;

    invoke-virtual {p1, p0}, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->setPopupWindowListener(Lcom/transsion/camera/app/common/IAppUIListener$IPopupWindowListener;)V

    .line 181
    iget p1, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mOrientation:I

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/PopSettingUI;->updateLayoutParams(I)V

    .line 182
    invoke-static {}, Lcom/transsion/camera/app/common/ModuleTransferManager;->getTransferManager()Lcom/transsion/camera/app/common/ModuleTransferManager;

    move-result-object p1

    iget-object p2, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mIModuleTransfer:Lcom/transsion/camera/app/common/IModuleTransfer;

    invoke-virtual {p1, p2}, Lcom/transsion/camera/app/common/ModuleTransferManager;->registerTransferListener(Lcom/transsion/camera/app/common/IModuleTransfer;)V

    .line 183
    iget-object p1, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mOldValue:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 184
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/PopSettingUI;->ringScreenLightUpdateUI()V

    .line 185
    iget-object p0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mRoot:Landroid/view/View;

    return-object p0
.end method

.method public isCelebritySceneShow(Z)V
    .registers 2

    .line 973
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mIsCelebritySceneShow:Z

    return-void
.end method

.method public isFilterUIShow(Z)V
    .registers 2

    .line 969
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mIsFilterUIShow:Z

    return-void
.end method

.method public isImageStyleShow(Z)V
    .registers 2

    .line 965
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mIsImageStyleShow:Z

    return-void
.end method

.method public isPopSettingPopAppearing()Z
    .registers 1

    .line 1175
    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mIsPopWindowAppearing:Z

    return p0
.end method

.method public isZoomStart(Z)V
    .registers 2

    .line 961
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mIsZoomStart:Z

    return-void
.end method

.method public needPopupItemAnimation(Z)V
    .registers 2

    .line 1183
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

    .line 422
    invoke-static {p1}, Lcom/transsion/camera/utils/MultiTouchManager;->canPerformClick(Landroid/view/View;)Z

    move-result p1

    if-nez p1, :cond_7

    return-void

    .line 425
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

    .line 426
    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 428
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

    .line 429
    invoke-virtual {p0, v0, v0, p1}, Lcom/transsion/camera/app/ui/PopSettingUI;->showPopSettingView(ZZZ)V

    :cond_2d
    const/16 p1, 0x8

    .line 431
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/PopSettingUI;->setPopWindowBackViewVisible(I)V

    .line 432
    iget-object p1, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mShowPopSettingAnimator:Landroid/animation/Animator;

    if-eqz p1, :cond_39

    .line 433
    invoke-virtual {p1}, Landroid/animation/Animator;->cancel()V

    .line 435
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

    .line 2121
    iget-object v0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopSettingContainer:Lcom/transsion/camera/app/ui/popsetting/PopSettingContainer;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2122
    iget-object v0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mTreasureBoxScrollView:Lcom/transsion/camera/app/ui/widget/DampingHorizontalScrollView;

    if-eqz v0, :cond_e

    .line 2123
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_e
    const/4 v0, 0x0

    if-eqz p1, :cond_16

    .line 2126
    iget-object p1, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopSettingContainer:Lcom/transsion/camera/app/ui/popsetting/PopSettingContainer;

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 2128
    :cond_16
    iget-object p1, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopSettingContainer:Lcom/transsion/camera/app/ui/popsetting/PopSettingContainer;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p1, v1}, Landroid/view/View;->setScaleX(F)V

    .line 2129
    iget-object p1, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopSettingContainer:Lcom/transsion/camera/app/ui/popsetting/PopSettingContainer;

    invoke-virtual {p1, v1}, Landroid/view/View;->setScaleY(F)V

    const/4 p1, 0x0

    .line 2130
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mIsAnimationRunning:Z

    .line 2131
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mExposeTimeCapture:Z

    const/4 v2, 0x1

    if-nez p1, :cond_2d

    .line 2132
    invoke-virtual {p0, v2}, Lcom/transsion/camera/app/ui/PopSettingUI;->setEnable(Z)V

    .line 2134
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

    .line 2135
    sget v4, Lcom/transsion/camera/R$id;->pop_setting_item_text:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    if-eqz v4, :cond_57

    .line 2137
    iget-boolean v5, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mTreasureBoxSupport:Z

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setSelected(Z)V

    .line 2138
    iget-boolean v5, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mTreasureBoxSupport:Z

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 2140
    :cond_57
    invoke-virtual {v3, v0}, Landroid/view/View;->setAlpha(F)V

    .line 2141
    invoke-virtual {v3, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 2142
    invoke-virtual {v3, v1}, Landroid/view/View;->setScaleY(F)V

    .line 2143
    invoke-virtual {v3, v1}, Landroid/view/View;->setScaleX(F)V

    goto :goto_37

    :cond_64
    return-void
.end method

.method protected onInflateTreasureBoxBackgroundLayout()V
    .registers 3

    .line 189
    iget-object v0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mTreasureBoxBackgroundLayout:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 190
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

    .line 1618
    sget-object v0, Lcom/transsion/camera/app/ui/PopSettingUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "onLottieAnimationEnd"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 1619
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mLottieAnimationEnd:Z

    return-void
.end method

.method public onLottieAnimationStart()V
    .registers 3

    .line 1609
    sget-object v0, Lcom/transsion/camera/app/ui/PopSettingUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "onLottieAnimationStart"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1610
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mLottieAnimationEnd:Z

    return-void
.end method

.method public onLottieAnimationUpdate(F)V
    .registers 2

    .line 1614
    iput p1, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mLottieAnimationProgress:F

    return-void
.end method

.method public onModeSwitch(Z)V
    .registers 10

    .line 716
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mIsInVideoMode:Z

    .line 717
    iget-object v0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mCurrentSize:Ljava/lang/String;

    if-eqz v0, :cond_83

    iget v0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mCurrentScreenType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_83

    const/4 v2, 0x5

    if-eq v0, v2, :cond_83

    const/4 v2, 0x4

    if-eq v0, v2, :cond_83

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mTreasureBoxSupport:Z

    if-eqz v0, :cond_17

    goto/16 :goto_83

    .line 723
    :cond_17
    iget-object v0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 724
    iget-object v2, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mCurrentSize:Ljava/lang/String;

    invoke-static {v2}, Landroid/util/Size;->parseSize(Ljava/lang/String;)Landroid/util/Size;

    move-result-object v2

    .line 725
    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v3

    int-to-double v3, v3

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v2

    int-to-double v5, v2

    div-double/2addr v3, v5

    .line 727
    sget v2, Lcom/transsion/camera/R$dimen;->column_pop_setting_full_ratio_changed_translation:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    neg-int v2, v2

    .line 728
    iget v5, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mCurrentScreenType:I

    const/4 v6, 0x2

    const/4 v7, 0x0

    if-nez v5, :cond_44

    .line 729
    sget v5, Lcom/transsion/camera/R$dimen;->pop_setting_ratio_changed_translation:I

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    :goto_41
    neg-int v0, v0

    int-to-float v0, v0

    goto :goto_4e

    :cond_44
    if-ne v5, v6, :cond_4d

    .line 731
    sget v5, Lcom/transsion/camera/R$dimen;->column_pop_setting_ratio_changed_translation:I

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_41

    :cond_4d
    move v0, v7

    :goto_4e
    const/4 v5, 0x0

    if-eqz p1, :cond_5a

    .line 734
    invoke-direct {p0, v0, v7}, Lcom/transsion/camera/app/ui/PopSettingUI;->animateTranslation(FF)V

    .line 735
    iget-object p1, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopupOption:Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;

    invoke-virtual {p1, v1, v3, v4}, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->onModeSwitch(ZD)V

    goto :goto_80

    .line 736
    :cond_5a
    invoke-static {v3, v4}, Lcom/transsion/camera/utils/PictureSizeHelper;->isSmallRatio(D)Z

    move-result p1

    if-eqz p1, :cond_69

    .line 737
    invoke-direct {p0, v7, v0}, Lcom/transsion/camera/app/ui/PopSettingUI;->animateTranslation(FF)V

    .line 738
    iget-object p1, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopupOption:Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;

    invoke-virtual {p1, v5, v3, v4}, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->onModeSwitch(ZD)V

    goto :goto_80

    .line 739
    :cond_69
    invoke-static {v3, v4}, Lcom/transsion/camera/utils/PictureSizeHelper;->isFullRatio(D)Z

    move-result p1

    if-eqz p1, :cond_80

    .line 740
    iget p1, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mCurrentScreenType:I

    if-ne p1, v6, :cond_78

    int-to-float p1, v2

    .line 741
    invoke-direct {p0, v7, p1}, Lcom/transsion/camera/app/ui/PopSettingUI;->animateTranslation(FF)V

    goto :goto_7b

    .line 743
    :cond_78
    invoke-direct {p0, v7, v0}, Lcom/transsion/camera/app/ui/PopSettingUI;->animateTranslation(FF)V

    .line 745
    :goto_7b
    iget-object p1, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopupOption:Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;

    invoke-virtual {p1, v5, v3, v4}, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->onModeSwitch(ZD)V

    .line 747
    :cond_80
    :goto_80
    iput-boolean v5, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mIsPopSettingFirstShow:Z

    return-void

    .line 720
    :cond_83
    :goto_83
    sget-object p0, Lcom/transsion/camera/app/ui/PopSettingUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "onModeSwitch mCurrentSize is null, return"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public onOrientationChanged(I)V
    .registers 5

    .line 195
    iget-object v0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopupOptionManager:Lcom/transsion/camera/app/ui/PopSettingPopupOptionManager;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/PopSettingPopupOptionManager;->updatePopupOptionShow()Z

    .line 196
    iput p1, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mOrientation:I

    .line 198
    iget-object v0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopupOption:Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;

    if-eqz v0, :cond_e

    .line 199
    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->onOrientationChanged(I)V

    .line 201
    :cond_e
    iget v0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mCurrentScreenType:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_32

    .line 202
    :goto_14
    iget-object v0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopSettingUIList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_55

    .line 203
    iget-object v0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopSettingUIList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2f

    .line 204
    iget-object v0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopSettingUIList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/ui/widget/IRotatable;

    invoke-interface {v0, p1, v2}, Lcom/transsion/camera/app/ui/widget/IRotatable;->setOrientation(IZ)V

    :cond_2f
    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    .line 208
    :cond_32
    iget-object v0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopSettingContainerRotateLayout:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    if-eqz v0, :cond_39

    .line 209
    invoke-virtual {v0, p1, v1}, Lcom/transsion/camera/app/ui/widget/RotateLayout;->setOrientation(IZ)V

    .line 211
    :cond_39
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/PopSettingUI;->runPopSettingRootAnimator()V

    .line 212
    iget-object v0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopupOption:Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;

    if-eqz v0, :cond_52

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_52

    .line 213
    iget-object v0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mCameraOperationControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    const/16 v1, 0x1e

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 214
    iget-object v0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopupOption:Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->dismissPopupWithoutAnimation()V

    .line 216
    :cond_52
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/PopSettingUI;->updateLayoutParams(I)V

    .line 218
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

    .line 219
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_74

    .line 220
    iget-object p1, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopSettingItemUIs:Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/PopSettingUI;->updatePopSettingLayout(Ljava/util/List;)V

    :cond_74
    return-void
.end method

.method public onPause()V
    .registers 4

    .line 989
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

    .line 990
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mIsResume:Z

    const/4 v0, 0x1

    .line 991
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mIsPopSettingFirstShow:Z

    .line 992
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mLottieAnimationEnd:Z

    .line 993
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mIsPopWindowAppearing:Z

    if-eqz v0, :cond_2a

    .line 994
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/PopSettingUI;->onPopupDismissStart()V

    .line 995
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/PopSettingUI;->onPopupDismissEnd()V

    .line 997
    :cond_2a
    iget-object v0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopSettingContainer:Lcom/transsion/camera/app/ui/popsetting/PopSettingContainer;

    const/16 v1, 0x8

    if-eqz v0, :cond_42

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_42

    .line 998
    iget-object v0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopSettingContainer:Lcom/transsion/camera/app/ui/popsetting/PopSettingContainer;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 999
    iget-object v0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mCameraOperationControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    const/16 v2, 0xd0

    invoke-interface {v0, v2}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 1001
    :cond_42
    iget-object v0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopOptionSelectedBackground:Lcom/transsion/camera/app/ui/popsetting/PopSettingContainer;

    if-eqz v0, :cond_51

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_51

    .line 1002
    iget-object v0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopOptionSelectedBackground:Lcom/transsion/camera/app/ui/popsetting/PopSettingContainer;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1004
    :cond_51
    iget-object v0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mTreasureBoxScrollView:Lcom/transsion/camera/app/ui/widget/DampingHorizontalScrollView;

    if-eqz v0, :cond_60

    .line 1005
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_60

    .line 1006
    iget-object v0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mTreasureBoxScrollView:Lcom/transsion/camera/app/ui/widget/DampingHorizontalScrollView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1009
    :cond_60
    iget-object v0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopSettingItemUIs:Ljava/util/List;

    if-eqz v0, :cond_80

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_80

    .line 1010
    iget-object p0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopSettingItemUIs:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_70
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_80

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/common/ui/setting/IPopSettingItemUI;

    .line 1011
    invoke-interface {v0}, Lcom/transsion/camera/app/common/ui/setting/IPopSettingItemUI;->cancelAnimation()V

    goto :goto_70

    :cond_80
    return-void
.end method

.method public onPopupDismissCancel()V
    .registers 5

    .line 1154
    sget-object v0, Lcom/transsion/camera/app/ui/PopSettingUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "onPopupDismissCancel() called"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1155
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mIsPopWindowAppearing:Z

    .line 1156
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/transsion/camera/app/ui/PopSettingUI$9;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/ui/PopSettingUI$9;-><init>(Lcom/transsion/camera/app/ui/PopSettingUI;)V

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onPopupDismissEnd()V
    .registers 5

    .line 1090
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

    .line 1091
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mIsPopWindowAppearing:Z

    .line 1092
    iget-object v1, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mCameraOperationControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    const/16 v2, 0x1e

    invoke-interface {v1, v2}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 1093
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

    .line 1094
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2c

    .line 1096
    :cond_3c
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/transsion/camera/app/ui/PopSettingUI$7;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/ui/PopSettingUI$7;-><init>(Lcom/transsion/camera/app/ui/PopSettingUI;)V

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onPopupDismissStart()V
    .registers 10

    .line 1108
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mIsResume:Z

    if-nez v0, :cond_1b

    .line 1109
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

    .line 1112
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/PopSettingUI;->setPopWindowBackViewVisible(I)V

    .line 1114
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mTreasureBoxSupport:Z

    if-eqz v0, :cond_2b

    .line 1115
    iget-object v0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopSettingContainer:Lcom/transsion/camera/app/ui/popsetting/PopSettingContainer;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    goto :goto_2c

    :cond_2b
    const/4 v0, 0x4

    :goto_2c
    const/4 v1, 0x0

    move v2, v1

    :goto_2e
    const/4 v3, 0x2

    const-wide/16 v4, 0x96

    .line 1119
    const-string v6, "alpha"

    if-ge v2, v0, :cond_6a

    .line 1120
    iget-object v7, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopSettingContainer:Lcom/transsion/camera/app/ui/popsetting/PopSettingContainer;

    invoke-virtual {v7, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 1121
    invoke-virtual {p0, v1}, Lcom/transsion/camera/app/ui/PopSettingUI;->setPopSettingContainerVisible(I)V

    .line 1122
    new-array v3, v3, [F

    fill-array-data v3, :array_86

    invoke-static {v7, v6, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 1123
    new-instance v6, Landroid/animation/AnimatorSet;

    invoke-direct {v6}, Landroid/animation/AnimatorSet;-><init>()V

    .line 1124
    iget-object v8, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopSettingInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v6, v8}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1125
    invoke-virtual {v6, v3}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 1126
    invoke-virtual {v6, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1127
    new-instance v3, Lcom/transsion/camera/app/ui/PopSettingUI$8;

    invoke-direct {v3, p0, v7}, Lcom/transsion/camera/app/ui/PopSettingUI$8;-><init>(Lcom/transsion/camera/app/ui/PopSettingUI;Landroid/view/View;)V

    invoke-virtual {v6, v3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1134
    iget-object v3, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mTBPopHideAlphaAnimatorList:Ljava/util/List;

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1135
    invoke-virtual {v6}, Landroid/animation/AnimatorSet;->start()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2e

    .line 1137
    :cond_6a
    iget-object v0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopOptionSelectedBackground:Lcom/transsion/camera/app/ui/popsetting/PopSettingContainer;

    new-array v1, v3, [F

    fill-array-data v1, :array_8e

    invoke-static {v0, v6, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 1138
    iget-object v1, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopSettingInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1139
    invoke-virtual {v0, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1140
    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mTreasureBoxSupport:Z

    if-nez p0, :cond_84

    .line 1141
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    :cond_84
    return-void

    nop

    :array_86
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_8e
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public onPopupShow()V
    .registers 2

    const/4 v0, 0x1

    .line 1025
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/PopSettingUI;->showPopOptionAnimation(Z)V

    .line 1026
    iget-object p0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mCameraOperationControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    const/16 v0, 0x1d

    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    return-void
.end method

.method public onPreViewSizeChanged(Ljava/lang/String;)V
    .registers 11

    .line 752
    iget-object v0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mCurrentSize:Ljava/lang/String;

    if-eqz v0, :cond_10e

    iget v1, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mCurrentScreenType:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_10e

    const/4 v2, 0x5

    if-eq v1, v2, :cond_10e

    const/4 v2, 0x4

    if-eq v1, v2, :cond_10e

    iget-boolean v1, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mTreasureBoxSupport:Z

    if-eqz v1, :cond_15

    goto/16 :goto_10e

    .line 758
    :cond_15
    invoke-static {v0}, Landroid/util/Size;->parseSize(Ljava/lang/String;)Landroid/util/Size;

    move-result-object v0

    .line 759
    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v1

    int-to-double v1, v1

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    int-to-double v3, v0

    div-double/2addr v1, v3

    .line 760
    invoke-static {p1}, Landroid/util/Size;->parseSize(Ljava/lang/String;)Landroid/util/Size;

    move-result-object v0

    .line 761
    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v3

    int-to-double v3, v3

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    int-to-double v5, v0

    div-double/2addr v3, v5

    .line 762
    iget-object v0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 764
    sget v5, Lcom/transsion/camera/R$dimen;->column_pop_setting_full_ratio_changed_translation:I

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    neg-int v5, v5

    .line 766
    iget v6, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mCurrentScreenType:I

    const/4 v7, 0x0

    if-nez v6, :cond_7d

    .line 767
    sget v5, Lcom/transsion/camera/R$dimen;->pop_setting_ratio_changed_translation:I

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    .line 769
    invoke-static {v1, v2}, Lcom/transsion/camera/utils/PictureSizeHelper;->isCommonRatio(D)Z

    move-result v5

    if-nez v5, :cond_5f

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/PictureSizeHelper;->isVideoRatio(D)Z

    move-result v5

    if-nez v5, :cond_5f

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/PictureSizeHelper;->isFullRatio(D)Z

    move-result v5

    if-eqz v5, :cond_6d

    .line 770
    :cond_5f
    invoke-static {v3, v4}, Lcom/transsion/camera/utils/PictureSizeHelper;->isSmallRatio(D)Z

    move-result v5

    if-eqz v5, :cond_6d

    .line 771
    invoke-direct {p0, v7, v0}, Lcom/transsion/camera/app/ui/PopSettingUI;->animateTranslation(FF)V

    .line 772
    iget-object v5, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopupOption:Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;

    invoke-virtual {v5, v3, v4}, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->onPreViewSizeChanged(D)V

    .line 775
    :cond_6d
    invoke-static {v1, v2}, Lcom/transsion/camera/utils/PictureSizeHelper;->isSmallRatio(D)Z

    move-result v1

    if-eqz v1, :cond_10b

    .line 776
    invoke-direct {p0, v0, v7}, Lcom/transsion/camera/app/ui/PopSettingUI;->animateTranslation(FF)V

    .line 777
    iget-object v0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopupOption:Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;

    invoke-virtual {v0, v3, v4}, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->onPreViewSizeChanged(D)V

    goto/16 :goto_10b

    :cond_7d
    const/4 v8, 0x2

    if-ne v6, v8, :cond_10b

    .line 780
    sget v6, Lcom/transsion/camera/R$dimen;->column_pop_setting_ratio_changed_translation:I

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    .line 782
    invoke-static {v1, v2}, Lcom/transsion/camera/utils/PictureSizeHelper;->isCommonRatio(D)Z

    move-result v6

    if-nez v6, :cond_ed

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/PictureSizeHelper;->isVideoRatio(D)Z

    move-result v6

    if-eqz v6, :cond_95

    goto :goto_ed

    .line 790
    :cond_95
    invoke-static {v1, v2}, Lcom/transsion/camera/utils/PictureSizeHelper;->isFullRatio(D)Z

    move-result v6

    if-eqz v6, :cond_c1

    .line 791
    invoke-static {v3, v4}, Lcom/transsion/camera/utils/PictureSizeHelper;->isSmallRatio(D)Z

    move-result v6

    if-eqz v6, :cond_ab

    int-to-float v1, v5

    .line 792
    invoke-direct {p0, v1, v0}, Lcom/transsion/camera/app/ui/PopSettingUI;->animateTranslation(FF)V

    .line 793
    iget-object v0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopupOption:Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;

    invoke-virtual {v0, v3, v4}, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->onPreViewSizeChanged(D)V

    goto :goto_10b

    .line 794
    :cond_ab
    invoke-static {v3, v4}, Lcom/transsion/camera/utils/PictureSizeHelper;->isCommonRatio(D)Z

    move-result v0

    if-nez v0, :cond_b7

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/PictureSizeHelper;->isVideoRatio(D)Z

    move-result v0

    if-eqz v0, :cond_10b

    :cond_b7
    int-to-float v0, v5

    .line 795
    invoke-direct {p0, v0, v7}, Lcom/transsion/camera/app/ui/PopSettingUI;->animateTranslation(FF)V

    .line 796
    iget-object v0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopupOption:Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;

    invoke-virtual {v0, v3, v4}, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->onPreViewSizeChanged(D)V

    goto :goto_10b

    .line 798
    :cond_c1
    invoke-static {v1, v2}, Lcom/transsion/camera/utils/PictureSizeHelper;->isSmallRatio(D)Z

    move-result v6

    if-eqz v6, :cond_10b

    .line 799
    invoke-static {v3, v4}, Lcom/transsion/camera/utils/PictureSizeHelper;->isCommonRatio(D)Z

    move-result v6

    if-nez v6, :cond_e4

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/PictureSizeHelper;->isVideoRatio(D)Z

    move-result v1

    if-eqz v1, :cond_d4

    goto :goto_e4

    .line 802
    :cond_d4
    invoke-static {v3, v4}, Lcom/transsion/camera/utils/PictureSizeHelper;->isFullRatio(D)Z

    move-result v1

    if-eqz v1, :cond_10b

    int-to-float v1, v5

    .line 803
    invoke-direct {p0, v0, v1}, Lcom/transsion/camera/app/ui/PopSettingUI;->animateTranslation(FF)V

    .line 804
    iget-object v0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopupOption:Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;

    invoke-virtual {v0, v3, v4}, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->onPreViewSizeChanged(D)V

    goto :goto_10b

    .line 800
    :cond_e4
    :goto_e4
    invoke-direct {p0, v0, v7}, Lcom/transsion/camera/app/ui/PopSettingUI;->animateTranslation(FF)V

    .line 801
    iget-object v0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopupOption:Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;

    invoke-virtual {v0, v3, v4}, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->onPreViewSizeChanged(D)V

    goto :goto_10b

    .line 783
    :cond_ed
    :goto_ed
    invoke-static {v3, v4}, Lcom/transsion/camera/utils/PictureSizeHelper;->isSmallRatio(D)Z

    move-result v1

    if-eqz v1, :cond_fc

    .line 784
    invoke-direct {p0, v7, v0}, Lcom/transsion/camera/app/ui/PopSettingUI;->animateTranslation(FF)V

    .line 785
    iget-object v0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopupOption:Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;

    invoke-virtual {v0, v3, v4}, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->onPreViewSizeChanged(D)V

    goto :goto_10b

    .line 786
    :cond_fc
    invoke-static {v3, v4}, Lcom/transsion/camera/utils/PictureSizeHelper;->isFullRatio(D)Z

    move-result v0

    if-eqz v0, :cond_10b

    int-to-float v0, v5

    .line 787
    invoke-direct {p0, v7, v0}, Lcom/transsion/camera/app/ui/PopSettingUI;->animateTranslation(FF)V

    .line 788
    iget-object v0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopupOption:Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;

    invoke-virtual {v0, v3, v4}, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->onPreViewSizeChanged(D)V

    .line 808
    :cond_10b
    :goto_10b
    iput-object p1, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mCurrentSize:Ljava/lang/String;

    return-void

    .line 755
    :cond_10e
    :goto_10e
    sget-object p0, Lcom/transsion/camera/app/ui/PopSettingUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "onPreViewSizeChanged mCurrentSize is null, return"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public onResume()V
    .registers 4

    const/4 v0, 0x1

    .line 1018
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mIsResume:Z

    .line 1019
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

    .line 1020
    invoke-interface {p0, v0}, Lcom/transsion/camera/app/ui/IPopSettingUI;->hidePopSettingView(Z)V

    return-void
.end method

.method public onScreenFormChanged(IZ)V
    .registers 6

    .line 524
    iget v0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mCurrentScreenType:I

    if-ne v0, p1, :cond_5

    return-void

    .line 528
    :cond_5
    iget-object v0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopupOption:Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;

    if-eqz v0, :cond_c

    .line 529
    invoke-virtual {v0, p1, p2}, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->onScreenFormChanged(IZ)V

    :cond_c
    const/4 p2, 0x1

    const/4 v0, 0x0

    if-ne p1, p2, :cond_1e

    .line 533
    iget v1, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mOrientation:I

    invoke-direct {p0, v1, p2}, Lcom/transsion/camera/app/ui/PopSettingUI;->setOrientationForPopSettingUIList(IZ)V

    .line 534
    iget-object p2, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopSettingContainerRotateLayout:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    if-eqz p2, :cond_1e

    .line 535
    iget v1, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mOrientation:I

    invoke-virtual {p2, v1, v0}, Lcom/transsion/camera/app/ui/widget/RotateLayout;->setOrientation(IZ)V

    :cond_1e
    if-nez p1, :cond_27

    .line 540
    iget-object p2, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopSettingContainerRotateLayout:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    if-eqz p2, :cond_27

    .line 541
    invoke-virtual {p2, v0, v0}, Lcom/transsion/camera/app/ui/widget/RotateLayout;->setOrientation(IZ)V

    .line 545
    :cond_27
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/PopSettingUI;->resetTranslation()V

    .line 547
    iget-object p2, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopSettingContainer:Lcom/transsion/camera/app/ui/popsetting/PopSettingContainer;

    const/4 v1, 0x2

    if-eqz p2, :cond_3f

    .line 548
    iget v2, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mCurrentScreenType:I

    if-eq v2, v1, :cond_38

    const/4 v2, 0x0

    .line 549
    invoke-virtual {p2, v2}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_3f

    :cond_38
    if-nez p1, :cond_3f

    .line 551
    iget-object p2, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mCurrentSize:Ljava/lang/String;

    invoke-virtual {p0, p2}, Lcom/transsion/camera/app/ui/PopSettingUI;->onPreViewSizeChanged(Ljava/lang/String;)V

    :cond_3f
    :goto_3f
    if-ne p1, v1, :cond_46

    .line 556
    iget p2, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mOrientation:I

    invoke-direct {p0, p2, v0}, Lcom/transsion/camera/app/ui/PopSettingUI;->setOrientationForPopSettingUIList(IZ)V

    .line 559
    :cond_46
    iput p1, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mCurrentScreenType:I

    if-eqz p1, :cond_4c

    if-ne p1, v1, :cond_4f

    .line 562
    :cond_4c
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/PopSettingUI;->translateContainer()V

    .line 565
    :cond_4f
    iget p1, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mCurrentScreenType:I

    const/4 p2, 0x5

    if-eq p1, p2, :cond_57

    const/4 p2, 0x4

    if-ne p1, p2, :cond_65

    .line 567
    :cond_57
    iget-object p1, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mTranslateAnimator:Landroid/animation/ObjectAnimator;

    if-eqz p1, :cond_5e

    .line 568
    invoke-virtual {p1}, Landroid/animation/Animator;->cancel()V

    .line 570
    :cond_5e
    iget-object p1, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mBackgroundTranslateAnimator:Landroid/animation/ObjectAnimator;

    if-eqz p1, :cond_65

    .line 571
    invoke-virtual {p1}, Landroid/animation/Animator;->cancel()V

    .line 574
    :cond_65
    iget-object p1, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopupOptionManager:Lcom/transsion/camera/app/ui/PopSettingPopupOptionManager;

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/ui/PopSettingPopupOptionManager;->setNeedShowPopUpOption(Z)V

    .line 575
    iget p1, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mOrientation:I

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/PopSettingUI;->updateLayoutParams(I)V

    return-void
.end method

.method protected final prepareHidePopSettingAnimation(Landroid/animation/Animator;)V
    .registers 4

    const/4 v0, 0x0

    .line 2034
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/PopSettingUI;->getPopSettingAnimationInterpolator(Z)Landroid/view/animation/PathInterpolator;

    move-result-object v1

    .line 2035
    invoke-virtual {p1, v1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2036
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/PopSettingUI;->getPopSettingAnimationDuration(Z)I

    move-result p0

    int-to-long v0, p0

    invoke-virtual {p1, v0, v1}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    return-void
.end method

.method public resetTBScrollerView()V
    .registers 2

    .line 2215
    iget-object v0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mTreasureBoxScrollView:Lcom/transsion/camera/app/ui/widget/DampingHorizontalScrollView;

    if-eqz v0, :cond_c

    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mTreasureBoxSupport:Z

    if-eqz p0, :cond_c

    const/4 p0, 0x0

    .line 2216
    invoke-virtual {v0, p0, p0}, Landroid/view/View;->scrollTo(II)V

    :cond_c
    return-void
.end method

.method public restoreSetting(Ljava/lang/String;)V
    .registers 7

    .line 1188
    invoke-static {p1}, Landroid/util/Size;->parseSize(Ljava/lang/String;)Landroid/util/Size;

    move-result-object v0

    .line 1189
    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v1

    int-to-double v1, v1

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    int-to-double v3, v0

    div-double/2addr v1, v3

    .line 1190
    iget-object v0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1191
    sget v3, Lcom/transsion/camera/R$dimen;->pop_setting_ratio_changed_translation:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    const/4 v3, 0x0

    .line 1192
    invoke-direct {p0, v0, v3}, Lcom/transsion/camera/app/ui/PopSettingUI;->animateTranslation(FF)V

    .line 1193
    iget-object v0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopupOption:Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->onPreViewSizeChanged(D)V

    .line 1194
    iput-object p1, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mCurrentSize:Ljava/lang/String;

    return-void
.end method

.method public scrollPopSettingItemToCenter(Ljava/lang/String;)V
    .registers 7

    .line 2250
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

    .line 2251
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

    .line 2257
    iget-object p1, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopSettingItemUIs:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    .line 2258
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

    .line 2260
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/PopSettingUI;->resetTBScrollerView()V

    .line 2261
    const-string p0, "scrollPopSettingItemToCenter resetTBScrollerView"

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 2264
    :cond_48
    iget-object v1, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenWidth()I

    move-result v1

    .line 2265
    iget-object v2, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/transsion/camera/R$dimen;->treasure_box_container_translate:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 2266
    iget-object v3, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/transsion/camera/R$dimen;->pop_setting_horizontal_padding:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    add-int/lit8 p1, p1, 0x1

    mul-int/2addr p1, v2

    add-int/2addr p1, v3

    .line 2267
    div-int/lit8 v2, v2, 0x2

    sub-int/2addr p1, v2

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr p1, v1

    .line 2268
    iget-object v1, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mTreasureBoxScrollView:Lcom/transsion/camera/app/ui/widget/DampingHorizontalScrollView;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    if-lez v1, :cond_7f

    .line 2269
    iget-object p0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mTreasureBoxScrollView:Lcom/transsion/camera/app/ui/widget/DampingHorizontalScrollView;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Landroid/view/View;->scrollTo(II)V

    goto :goto_8d

    .line 2271
    :cond_7f
    iget-object v1, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mTreasureBoxScrollView:Lcom/transsion/camera/app/ui/widget/DampingHorizontalScrollView;

    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    new-instance v2, Lcom/transsion/camera/app/ui/PopSettingUI$13;

    invoke-direct {v2, p0, p1}, Lcom/transsion/camera/app/ui/PopSettingUI$13;-><init>(Lcom/transsion/camera/app/ui/PopSettingUI;I)V

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 2281
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

    .line 842
    iput-object p1, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    return-void
.end method

.method public setCameraOperateActionControl(Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;)V
    .registers 2

    .line 838
    iput-object p1, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mCameraOperationControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    return-void
.end method

.method public setEnable(Z)V
    .registers 2

    .line 956
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mEnable:Z

    return-void
.end method

.method public setExposerTimeCapture(Z)V
    .registers 2

    .line 1199
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mExposeTimeCapture:Z

    return-void
.end method

.method public setFlipSettingUIList(Ljava/util/List;Ljava/util/List;)V
    .registers 3

    return-void
.end method

.method public setPictureRatio(Ljava/lang/String;)V
    .registers 2

    .line 2148
    iput-object p1, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mCurrentSize:Ljava/lang/String;

    return-void
.end method

.method public setPopSettingContainerVisible(I)V
    .registers 3

    .line 1168
    iget-object v0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopSettingContainer:Lcom/transsion/camera/app/ui/popsetting/PopSettingContainer;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, p1, :cond_f

    .line 1169
    iget-object p0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopSettingContainer:Lcom/transsion/camera/app/ui/popsetting/PopSettingContainer;

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_f
    return-void
.end method

.method public setPopWindowAppearing(Z)V
    .registers 2

    .line 1179
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mIsPopWindowAppearing:Z

    return-void
.end method

.method public setPopWindowBackViewVisible(I)V
    .registers 13

    .line 2152
    iget-object v0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopBackView:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    if-eqz v0, :cond_25

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-ne v0, p1, :cond_25

    .line 2153
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

    .line 2156
    :cond_25
    iget-object v0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopBackView:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    if-eqz v0, :cond_a4

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mTreasureBoxSupport:Z

    if-eqz v0, :cond_a4

    .line 2157
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3e4ccccd    # 0.2f

    const v2, 0x3dcccccd    # 0.1f

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v3, v2, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 2158
    iget-object v1, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopBackView:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {v1, p1}, Landroid/view/View;->setVisibility(I)V

    .line 2159
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 2160
    new-instance v2, Lcom/transsion/camera/app/ui/PopSettingUI$12;

    invoke-direct {v2, p0}, Lcom/transsion/camera/app/ui/PopSettingUI$12;-><init>(Lcom/transsion/camera/app/ui/PopSettingUI;)V

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

    .line 2189
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

    .line 2190
    iget-object v7, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopBackView:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    new-array v10, v6, [F

    aput v2, v10, v8

    aput v4, v10, v9

    const-string v2, "scaleY"

    invoke-static {v7, v2, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 2191
    iget-object p0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopBackView:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    new-array v4, v6, [F

    aput v5, v4, v8

    aput v3, v4, v9

    const-string v3, "alpha"

    invoke-static {p0, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    .line 2192
    invoke-virtual {p1, v0}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2193
    invoke-virtual {v2, v0}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2194
    invoke-virtual {p0, v0}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v3, 0xfa

    .line 2195
    invoke-virtual {v1, v3, v4}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 2196
    invoke-virtual {v1, p1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 2197
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    :cond_a4
    return-void
.end method

.method public setSettingUIList(Ljava/util/List;)V
    .registers 2

    .line 257
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/PopSettingUI;->dismissPopup()Z

    .line 258
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/PopSettingUI;->updatePopSettingLayout(Ljava/util/List;)V

    return-void
.end method

.method public setupViews()V
    .registers 3

    .line 252
    iget-object v0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenFormType()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/transsion/camera/app/ui/PopSettingUI;->onScreenFormChanged(IZ)V

    return-void
.end method

.method public showPopItem()V
    .registers 8

    .line 439
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/PopSettingUI;->dismissPopup()Z

    .line 440
    iget-object v0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopItemShowAnimatorList:Ljava/util/List;

    if-eqz v0, :cond_a

    .line 441
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 443
    :cond_a
    iget-object v0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopSettingContainer:Lcom/transsion/camera/app/ui/popsetting/PopSettingContainer;

    if-eqz v0, :cond_57

    .line 444
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_13
    if-ge v1, v0, :cond_50

    .line 446
    iget-object v2, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopSettingContainer:Lcom/transsion/camera/app/ui/popsetting/PopSettingContainer;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x2

    .line 447
    new-array v3, v3, [F

    fill-array-data v3, :array_58

    const-string v4, "alpha"

    invoke-static {v2, v4, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 448
    new-instance v4, Lcom/transsion/camera/app/ui/PopSettingUI$2;

    invoke-direct {v4, p0, v2}, Lcom/transsion/camera/app/ui/PopSettingUI$2;-><init>(Lcom/transsion/camera/app/ui/PopSettingUI;Landroid/view/View;)V

    invoke-virtual {v3, v4}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 455
    iget-object v4, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopItemShowAnimatorList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 456
    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    .line 457
    iget-object v5, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopSettingInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 458
    invoke-virtual {v4, v3}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    const-wide/16 v5, 0x96

    .line 459
    invoke-virtual {v4, v5, v6}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 460
    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->start()V

    const/4 v3, 0x1

    .line 461
    invoke-virtual {v2, v3}, Landroid/view/View;->setEnabled(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    .line 463
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
    .registers 12

    const/4 v0, 0x1

    .line 1031
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mIsPopWindowAppearing:Z

    .line 1032
    iget-object v0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopOptionSelectedBackground:Lcom/transsion/camera/app/ui/popsetting/PopSettingContainer;

    const/4 v1, 0x0

    if-eqz v0, :cond_f

    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mTreasureBoxSupport:Z

    if-nez v2, :cond_f

    .line 1033
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1035
    :cond_f
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mTreasureBoxSupport:Z

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopSettingContainer:Lcom/transsion/camera/app/ui/popsetting/PopSettingContainer;

    if-eqz v0, :cond_21

    .line 1036
    invoke-virtual {p0, v1}, Lcom/transsion/camera/app/ui/PopSettingUI;->setPopWindowBackViewVisible(I)V

    .line 1037
    iget-object v0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopSettingContainer:Lcom/transsion/camera/app/ui/popsetting/PopSettingContainer;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    goto :goto_22

    :cond_21
    const/4 v0, 0x4

    .line 1041
    :goto_22
    iget-object v2, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mTBPopHideAlphaAnimatorList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_28
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_38

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/animation/AnimatorSet;

    .line 1042
    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->cancel()V

    goto :goto_28

    .line 1044
    :cond_38
    iget-object v2, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mTBPopHideAlphaAnimatorList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 1045
    iget-object v2, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopOptionSelectedBackground:Lcom/transsion/camera/app/ui/popsetting/PopSettingContainer;

    const/4 v3, 0x2

    new-array v4, v3, [F

    fill-array-data v4, :array_ba

    const-string v5, "alpha"

    invoke-static {v2, v5, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 1046
    iget-object v4, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopSettingInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v2, v4}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v6, 0x96

    .line 1047
    invoke-virtual {v2, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1048
    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->start()V

    .line 1049
    iget-object v2, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopItemShowAnimatorList:Ljava/util/List;

    if-eqz v2, :cond_73

    move v2, v1

    .line 1050
    :goto_5d
    iget-object v4, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopItemShowAnimatorList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_73

    .line 1051
    iget-object v4, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopItemShowAnimatorList:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/animation/ObjectAnimator;

    invoke-virtual {v4}, Landroid/animation/Animator;->cancel()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_5d

    .line 1054
    :cond_73
    iget-object v2, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopSettingContainer:Lcom/transsion/camera/app/ui/popsetting/PopSettingContainer;

    if-eqz v2, :cond_b9

    move v2, v1

    .line 1055
    :goto_78
    iget-object v4, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopSettingContainer:Lcom/transsion/camera/app/ui/popsetting/PopSettingContainer;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-ge v2, v4, :cond_b9

    .line 1056
    iget-object v4, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopSettingContainer:Lcom/transsion/camera/app/ui/popsetting/PopSettingContainer;

    invoke-virtual {v4, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1057
    invoke-virtual {v4, v1}, Landroid/view/View;->setEnabled(Z)V

    if-eqz p1, :cond_8e

    const-wide/16 v6, 0x64

    goto :goto_90

    :cond_8e
    const-wide/16 v6, 0x0

    :goto_90
    if-ge v2, v0, :cond_b6

    .line 1060
    new-array v8, v3, [F

    fill-array-data v8, :array_c2

    invoke-static {v4, v5, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 1061
    new-instance v8, Landroid/animation/AnimatorSet;

    invoke-direct {v8}, Landroid/animation/AnimatorSet;-><init>()V

    .line 1062
    iget-object v9, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopSettingInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v8, v9}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1063
    invoke-virtual {v8, v4}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 1064
    invoke-virtual {v8, v6, v7}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1066
    new-instance v4, Lcom/transsion/camera/app/ui/PopSettingUI$6;

    invoke-direct {v4, p0}, Lcom/transsion/camera/app/ui/PopSettingUI$6;-><init>(Lcom/transsion/camera/app/ui/PopSettingUI;)V

    invoke-virtual {v8, v4}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1082
    invoke-virtual {v8}, Landroid/animation/AnimatorSet;->start()V

    :cond_b6
    add-int/lit8 v2, v2, 0x1

    goto :goto_78

    :cond_b9
    return-void

    :array_ba
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_c2
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public showPopSettingView(ZZZ)V
    .registers 10

    .line 847
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopSettingSupport:Z

    if-nez v0, :cond_c

    .line 848
    sget-object p0, Lcom/transsion/camera/app/ui/PopSettingUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "showPopSettingView: mPopSettingSupport = false"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 851
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

    .line 853
    iget-object v0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mCameraOperationControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    const/16 v1, 0x17a

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 856
    :cond_3f
    iget-object v0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopSettingItemUIs:Ljava/util/List;

    if-eqz v0, :cond_7b

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7b

    .line 857
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

    .line 858
    invoke-interface {v1}, Lcom/transsion/camera/app/common/ui/setting/IPopSettingItemUI;->getSettingUISpec()Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    move-result-object v4

    invoke-virtual {v4}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getKey()Ljava/lang/String;

    move-result-object v4

    const-string v5, "key_live_photo"

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_6c

    goto :goto_4f

    .line 861
    :cond_6c
    iget-boolean v4, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mLottieAnimationEnd:Z

    if-eqz v4, :cond_74

    .line 862
    invoke-interface {v1}, Lcom/transsion/camera/app/common/ui/setting/IPopSettingItemUI;->cancelAnimation()V

    goto :goto_4f

    :cond_74
    const/4 v4, 0x1

    .line 864
    iget v5, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mLottieAnimationProgress:F

    invoke-interface {v1, v4, v5}, Lcom/transsion/camera/app/common/ui/setting/IPopSettingItemUI;->playAnimation(ZF)V

    goto :goto_4f

    .line 869
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

    .line 870
    iget-object v0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mViewMap:Ljava/util/Map;

    if-eqz v0, :cond_130

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_130

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mEnable:Z

    if-eqz v0, :cond_130

    iget-object v0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopSettingContainer:Lcom/transsion/camera/app/ui/popsetting/PopSettingContainer;

    if-eqz v0, :cond_b9

    .line 871
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_130

    :cond_b9
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mIsZoomStart:Z

    if-eqz v0, :cond_c0

    if-nez p1, :cond_c0

    goto :goto_130

    .line 878
    :cond_c0
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object v0

    const/16 v1, 0x18

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setClickIconId(ILjava/lang/String;)V

    .line 879
    iget p1, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mOrientation:I

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/PopSettingUI;->updateLayoutParams(I)V

    .line 880
    iget-object p1, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopSettingContainer:Lcom/transsion/camera/app/ui/popsetting/PopSettingContainer;

    if-eqz p1, :cond_119

    .line 881
    invoke-virtual {p0, p2, p3}, Lcom/transsion/camera/app/ui/PopSettingUI;->startShowPopSettingAnimation(ZZ)V

    .line 882
    iget-object p1, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mCameraOperationControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    const/16 p2, 0xcf

    invoke-interface {p1, p2}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 883
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

    .line 884
    sget p3, Lcom/transsion/camera/R$id;->pop_setting_item_text:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    .line 885
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mTreasureBoxSupport:Z

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 886
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mTreasureBoxSupport:Z

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setSelected(Z)V

    .line 887
    invoke-virtual {p3}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/transsion/camera/app/ui/PopSettingUI$5;

    invoke-direct {v1, p0, p3}, Lcom/transsion/camera/app/ui/PopSettingUI$5;-><init>(Lcom/transsion/camera/app/ui/PopSettingUI;Landroid/widget/TextView;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    const/4 p3, 0x0

    .line 899
    invoke-virtual {p2, p3}, Landroid/view/View;->setAlpha(F)V

    goto :goto_ea

    .line 903
    :cond_119
    iget-object p1, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mTreasureBoxScrollView:Lcom/transsion/camera/app/ui/widget/DampingHorizontalScrollView;

    const/4 p2, 0x0

    if-eqz p1, :cond_121

    .line 904
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 906
    :cond_121
    iget-object p1, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mTreasureBoxBackground:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_12c

    iget-boolean p3, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mTreasureBoxSupport:Z

    if-eqz p3, :cond_12c

    .line 907
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 909
    :cond_12c
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/PopSettingUI;->setPopSettingViewTranslate()V

    return-void

    :cond_130
    :goto_130
    if-nez p3, :cond_13b

    .line 873
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mTreasureBoxSupport:Z

    if-eqz p1, :cond_13b

    .line 874
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mNeedPopupItemAnimation:Z

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/PopSettingUI;->showPopOptionAnimation(Z)V

    :cond_13b
    return-void
.end method

.method public startHidePopSettingAnimation()V
    .registers 5

    .line 1993
    iget-object v0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mHidePopSettingAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Landroid/animation/Animator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_b

    return-void

    .line 1996
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

    .line 1997
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/PopSettingUI;->createHidePopSettingAnimation()Landroid/animation/Animator;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mHidePopSettingAnimator:Landroid/animation/Animator;

    .line 1998
    iget v0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mCurrentScreenType:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v3, :cond_82

    .line 1999
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mTreasureBoxSupport:Z

    if-eqz v0, :cond_4d

    .line 2000
    iget-object v0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopSettingContainer:Lcom/transsion/camera/app/ui/popsetting/PopSettingContainer;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 2001
    :goto_37
    iget-object v0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mTBItemHideAlphaAnimatorList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_b4

    .line 2002
    iget-object v0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mTBItemHideAlphaAnimatorList:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_37

    .line 2005
    :cond_4d
    iget-object v0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopSettingContainer:Lcom/transsion/camera/app/ui/popsetting/PopSettingContainer;

    iget v3, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopSettingContainerHeight:I

    int-to-float v3, v3

    invoke-virtual {v0, v3}, Landroid/view/View;->setPivotY(F)V

    move v0, v2

    .line 2006
    :goto_56
    iget-object v3, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mItemHideScaleAnimatorList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_6c

    .line 2007
    iget-object v3, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mItemHideScaleAnimatorList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/animation/ObjectAnimator;

    invoke-virtual {v3}, Landroid/animation/ObjectAnimator;->start()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_56

    .line 2009
    :cond_6c
    :goto_6c
    iget-object v0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mItemHideTranslateAnimatorList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_b4

    .line 2010
    iget-object v0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mItemHideTranslateAnimatorList:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_6c

    .line 2014
    :cond_82
    iget-object v0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopSettingContainer:Lcom/transsion/camera/app/ui/popsetting/PopSettingContainer;

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotX(F)V

    move v0, v2

    .line 2015
    :goto_88
    iget-object v3, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mExpandItemHideScaleAnimatorList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_9e

    .line 2016
    iget-object v3, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mExpandItemHideScaleAnimatorList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/animation/ObjectAnimator;

    invoke-virtual {v3}, Landroid/animation/ObjectAnimator;->start()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_88

    .line 2018
    :cond_9e
    :goto_9e
    iget-object v0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mExpandItemHideTranslateAnimatorList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_b4

    .line 2019
    iget-object v0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mExpandItemHideTranslateAnimatorList:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_9e

    .line 2023
    :cond_b4
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mTreasureBoxSupport:Z

    if-eqz v0, :cond_be

    .line 2024
    iget-object v0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mHidePopSettingAnimator:Landroid/animation/Animator;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/PopSettingUI;->prepareHidePopSettingAnimation(Landroid/animation/Animator;)V

    goto :goto_d4

    .line 2026
    :cond_be
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v2, 0x3ecccccd    # 0.4f

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v0, v2, v1, v1, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 2027
    iget-object v1, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mHidePopSettingAnimator:Landroid/animation/Animator;

    invoke-virtual {v1, v0}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2028
    iget-object v0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mHidePopSettingAnimator:Landroid/animation/Animator;

    const-wide/16 v1, 0x15e

    invoke-virtual {v0, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 2030
    :goto_d4
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

    .line 1892
    :goto_7
    iget-object v2, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopSettingContainer:Lcom/transsion/camera/app/ui/popsetting/PopSettingContainer;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    .line 1893
    invoke-virtual {p0, p2}, Lcom/transsion/camera/app/ui/PopSettingUI;->createShowPopSettingAnimation(Z)Landroid/animation/Animator;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mShowPopSettingAnimator:Landroid/animation/Animator;

    .line 1894
    iget-object p2, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopSettingContainer:Lcom/transsion/camera/app/ui/popsetting/PopSettingContainer;

    invoke-virtual {p2, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 1895
    iget-object p2, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mHidePopSettingAnimator:Landroid/animation/Animator;

    const/4 v3, 0x0

    if-eqz p2, :cond_31

    .line 1896
    iget-boolean v4, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mTreasureBoxSupport:Z

    if-eqz v4, :cond_31

    invoke-virtual {p2}, Landroid/animation/Animator;->isRunning()Z

    move-result p2

    if-eqz p2, :cond_31

    .line 1897
    iget-object p2, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mHidePopSettingAnimator:Landroid/animation/Animator;

    invoke-virtual {p2}, Landroid/animation/Animator;->cancel()V

    .line 1898
    iget-object p2, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopSettingContainer:Lcom/transsion/camera/app/ui/popsetting/PopSettingContainer;

    invoke-virtual {p2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1901
    :cond_31
    iget p2, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mCurrentScreenType:I

    const-wide/16 v4, 0x0

    const/4 v6, 0x1

    if-eq p2, v6, :cond_d5

    .line 1902
    iget-object p2, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopSettingContainer:Lcom/transsion/camera/app/ui/popsetting/PopSettingContainer;

    iget v7, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopSettingContainerHeight:I

    int-to-float v7, v7

    invoke-virtual {p2, v7}, Landroid/view/View;->setPivotY(F)V

    move p2, v3

    .line 1903
    :goto_41
    iget-object v7, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mItemShowScaleAnimatorList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    const-wide/16 v8, 0x15e

    if-ge p2, v7, :cond_72

    if-nez p1, :cond_59

    .line 1905
    iget-object v7, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mItemShowScaleAnimatorList:Ljava/util/List;

    invoke-interface {v7, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/animation/ObjectAnimator;

    invoke-virtual {v7, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    goto :goto_64

    .line 1907
    :cond_59
    iget-object v7, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mItemShowScaleAnimatorList:Ljava/util/List;

    invoke-interface {v7, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/animation/ObjectAnimator;

    invoke-virtual {v7, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1909
    :goto_64
    iget-object v7, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mItemShowScaleAnimatorList:Ljava/util/List;

    invoke-interface {v7, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/animation/ObjectAnimator;

    invoke-virtual {v7}, Landroid/animation/ObjectAnimator;->start()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_41

    :cond_72
    move p2, v3

    .line 1911
    :goto_73
    iget-object v7, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mItemShowTranslateAnimatorList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge p2, v7, :cond_a2

    if-nez p1, :cond_89

    .line 1913
    iget-object v7, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mItemShowTranslateAnimatorList:Ljava/util/List;

    invoke-interface {v7, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/animation/ObjectAnimator;

    invoke-virtual {v7, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    goto :goto_94

    .line 1915
    :cond_89
    iget-object v7, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mItemShowTranslateAnimatorList:Ljava/util/List;

    invoke-interface {v7, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/animation/ObjectAnimator;

    invoke-virtual {v7, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1917
    :goto_94
    iget-object v7, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mItemShowTranslateAnimatorList:Ljava/util/List;

    invoke-interface {v7, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/animation/ObjectAnimator;

    invoke-virtual {v7}, Landroid/animation/ObjectAnimator;->start()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_73

    :cond_a2
    if-nez p1, :cond_107

    move p2, v3

    :goto_a5
    if-ge p2, v2, :cond_107

    .line 1921
    iget-object v7, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopSettingContainer:Lcom/transsion/camera/app/ui/popsetting/PopSettingContainer;

    invoke-virtual {v7, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 1922
    invoke-virtual {p0, v3}, Lcom/transsion/camera/app/ui/PopSettingUI;->setPopSettingContainerVisible(I)V

    const/4 v8, 0x2

    .line 1923
    new-array v8, v8, [F

    aput v0, v8, v3

    aput v1, v8, v6

    const-string v9, "alpha"

    invoke-static {v7, v9, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    .line 1924
    new-instance v8, Landroid/animation/AnimatorSet;

    invoke-direct {v8}, Landroid/animation/AnimatorSet;-><init>()V

    .line 1925
    iget-object v9, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopSettingInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v8, v9}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1926
    invoke-virtual {v8, v7}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    const-wide/16 v9, 0x96

    .line 1927
    invoke-virtual {v8, v9, v10}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1928
    invoke-virtual {v8}, Landroid/animation/AnimatorSet;->start()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_a5

    .line 1932
    :cond_d5
    iget-object p2, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopSettingContainer:Lcom/transsion/camera/app/ui/popsetting/PopSettingContainer;

    invoke-virtual {p2, v0}, Landroid/view/View;->setPivotX(F)V

    move p2, v3

    .line 1933
    :goto_db
    iget-object v0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mExpandItemShowScaleAnimatorList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p2, v0, :cond_f1

    .line 1934
    iget-object v0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mExpandItemShowScaleAnimatorList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_db

    .line 1936
    :cond_f1
    :goto_f1
    iget-object p2, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mExpandItemShowTranslateAnimatorList:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-ge v3, p2, :cond_107

    .line 1937
    iget-object p2, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mExpandItemShowTranslateAnimatorList:Ljava/util/List;

    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/animation/ObjectAnimator;

    invoke-virtual {p2}, Landroid/animation/ObjectAnimator;->start()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_f1

    .line 1941
    :cond_107
    invoke-virtual {p0, v6}, Lcom/transsion/camera/app/ui/PopSettingUI;->getPopSettingAnimationInterpolator(Z)Landroid/view/animation/PathInterpolator;

    move-result-object p2

    .line 1942
    iget-object v0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mShowPopSettingAnimator:Landroid/animation/Animator;

    invoke-virtual {v0, p2}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    if-eqz p1, :cond_11d

    .line 1944
    iget-object p1, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mShowPopSettingAnimator:Landroid/animation/Animator;

    invoke-virtual {p0, v6}, Lcom/transsion/camera/app/ui/PopSettingUI;->getPopSettingAnimationDuration(Z)I

    move-result p2

    int-to-long v0, p2

    invoke-virtual {p1, v0, v1}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    goto :goto_122

    .line 1946
    :cond_11d
    iget-object p1, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mShowPopSettingAnimator:Landroid/animation/Animator;

    invoke-virtual {p1, v4, v5}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 1948
    :goto_122
    iget-object p0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mShowPopSettingAnimator:Landroid/animation/Animator;

    invoke-virtual {p0}, Landroid/animation/Animator;->start()V

    return-void
.end method

.method public unInit()V
    .registers 4

    .line 633
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

    .line 634
    invoke-virtual {v1}, Landroid/animation/Animator;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 635
    invoke-virtual {v1}, Landroid/animation/Animator;->cancel()V

    goto :goto_6

    .line 638
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

    .line 639
    invoke-virtual {v1}, Landroid/animation/Animator;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_24

    .line 640
    invoke-virtual {v1}, Landroid/animation/Animator;->cancel()V

    goto :goto_24

    .line 643
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

    .line 644
    invoke-virtual {v1}, Landroid/animation/Animator;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_42

    .line 645
    invoke-virtual {v1}, Landroid/animation/Animator;->cancel()V

    goto :goto_42

    .line 648
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

    .line 649
    invoke-virtual {v1}, Landroid/animation/Animator;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_60

    .line 650
    invoke-virtual {v1}, Landroid/animation/Animator;->cancel()V

    goto :goto_60

    .line 653
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

    .line 654
    invoke-virtual {v1}, Landroid/animation/Animator;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_7e

    .line 655
    invoke-virtual {v1}, Landroid/animation/Animator;->cancel()V

    goto :goto_7e

    .line 658
    :cond_96
    iget-object v0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mExpandItemShowTranslateAnimatorList:Ljava/util/List;

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

    .line 659
    invoke-virtual {v1}, Landroid/animation/Animator;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_9c

    .line 660
    invoke-virtual {v1}, Landroid/animation/Animator;->cancel()V

    goto :goto_9c

    .line 663
    :cond_b4
    iget-object v0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mExpandItemHideScaleAnimatorList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_ba
    :goto_ba
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_d2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/ObjectAnimator;

    if-eqz v1, :cond_ba

    .line 664
    invoke-virtual {v1}, Landroid/animation/Animator;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_ba

    .line 665
    invoke-virtual {v1}, Landroid/animation/Animator;->cancel()V

    goto :goto_ba

    .line 668
    :cond_d2
    iget-object v0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mExpandItemHideTranslateAnimatorList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_d8
    :goto_d8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_f0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/ObjectAnimator;

    if-eqz v1, :cond_d8

    .line 669
    invoke-virtual {v1}, Landroid/animation/Animator;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_d8

    .line 670
    invoke-virtual {v1}, Landroid/animation/Animator;->cancel()V

    goto :goto_d8

    .line 673
    :cond_f0
    iget-object v0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mExpandItemShowScaleAnimatorList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_f6
    :goto_f6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_10e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/ObjectAnimator;

    if-eqz v1, :cond_f6

    .line 674
    invoke-virtual {v1}, Landroid/animation/Animator;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_f6

    .line 675
    invoke-virtual {v1}, Landroid/animation/Animator;->cancel()V

    goto :goto_f6

    .line 678
    :cond_10e
    iget-object v0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopItemShowAnimatorList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_114
    :goto_114
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_12c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/ObjectAnimator;

    if-eqz v1, :cond_114

    .line 679
    invoke-virtual {v1}, Landroid/animation/Animator;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_114

    .line 680
    invoke-virtual {v1}, Landroid/animation/Animator;->cancel()V

    goto :goto_114

    .line 683
    :cond_12c
    iget-object v0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mItemShowTranslateAnimatorList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 684
    iget-object v0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mItemHideScaleAnimatorList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 685
    iget-object v0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mItemHideTranslateAnimatorList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 686
    iget-object v0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mItemShowScaleAnimatorList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 687
    iget-object v0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopItemShowAnimatorList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 688
    iget-object v0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mTBItemHideAlphaAnimatorList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 689
    iget-object v0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mExpandItemShowTranslateAnimatorList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 690
    iget-object v0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mExpandItemHideScaleAnimatorList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 691
    iget-object v0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mExpandItemHideTranslateAnimatorList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 692
    iget-object v0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mExpandItemShowScaleAnimatorList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 693
    iget-object v0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mTranslateAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_165

    .line 694
    invoke-virtual {v0}, Landroid/animation/Animator;->removeAllListeners()V

    .line 696
    :cond_165
    iget-object v0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mBackgroundTranslateAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_16c

    .line 697
    invoke-virtual {v0}, Landroid/animation/Animator;->removeAllListeners()V

    .line 699
    :cond_16c
    iget-object v0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopSettingItemUIs:Ljava/util/List;

    if-eqz v0, :cond_173

    .line 700
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 702
    :cond_173
    invoke-static {}, Lcom/transsion/camera/app/common/ModuleTransferManager;->getTransferManager()Lcom/transsion/camera/app/common/ModuleTransferManager;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mIModuleTransfer:Lcom/transsion/camera/app/common/IModuleTransfer;

    invoke-virtual {v0, p0}, Lcom/transsion/camera/app/common/ModuleTransferManager;->unregisterTransferListener(Lcom/transsion/camera/app/common/IModuleTransfer;)V

    return-void
.end method

.method public updateLayoutParams(I)V
    .registers 35

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 1216
    iget-object v2, v0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopupOptionManager:Lcom/transsion/camera/app/ui/PopSettingPopupOptionManager;

    invoke-virtual {v2}, Lcom/transsion/camera/app/ui/PopSettingPopupOptionManager;->needShowPopUpOption()Z

    move-result v2

    if-nez v2, :cond_f

    .line 1217
    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/PopSettingUI;->dismissPopup()Z

    .line 1220
    :cond_f
    iget-object v2, v0, Lcom/transsion/camera/app/ui/PopSettingUI;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 1221
    sget v3, Lcom/transsion/camera/R$dimen;->pop_setting_horizontal_padding:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 1222
    sget v4, Lcom/transsion/camera/R$dimen;->pop_setting_top_margin:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 1223
    sget v5, Lcom/transsion/camera/R$dimen;->pop_setting_few_count_top_margin:I

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 1224
    sget v6, Lcom/transsion/camera/R$dimen;->pop_setting_horizontal_margin:I

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    .line 1225
    sget v7, Lcom/transsion/camera/R$dimen;->pop_setting_common_width:I

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    .line 1226
    sget v8, Lcom/transsion/camera/R$dimen;->pop_setting_column_width:I

    invoke-virtual {v2, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    .line 1227
    sget v9, Lcom/transsion/camera/R$dimen;->expand_pop_setting_90_270_left_margin:I

    invoke-virtual {v2, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    .line 1228
    sget v10, Lcom/transsion/camera/R$dimen;->expand_pop_setting_90_270_top_margin:I

    invoke-virtual {v2, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    .line 1229
    sget v11, Lcom/transsion/camera/R$dimen;->expand_pop_setting_0_left_margin:I

    invoke-virtual {v2, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    .line 1230
    sget v12, Lcom/transsion/camera/R$dimen;->expand_pop_setting_0_top_margin:I

    invoke-virtual {v2, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    .line 1231
    sget v13, Lcom/transsion/camera/R$dimen;->expand_pop_setting_90_half_top_margin:I

    invoke-virtual {v2, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v13

    .line 1232
    sget v14, Lcom/transsion/camera/R$dimen;->expand_pop_setting_0_half_top_margin:I

    invoke-virtual {v2, v14}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v14

    .line 1233
    sget v15, Lcom/transsion/camera/R$dimen;->column_pop_setting_right_and_left_margin:I

    invoke-virtual {v2, v15}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v15

    move/from16 v16, v4

    .line 1234
    sget v4, Lcom/transsion/camera/R$dimen;->column_pop_setting_top_margin:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    move/from16 v17, v5

    .line 1235
    sget v5, Lcom/transsion/camera/R$dimen;->column_pop_setting_half_top_margin:I

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    move/from16 v18, v3

    .line 1236
    sget v3, Lcom/transsion/camera/R$dimen;->right_and_left_hover_pop_setting_left_margin:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    move/from16 v19, v3

    .line 1237
    sget v3, Lcom/transsion/camera/R$dimen;->right_and_left_hover_pop_setting_top_margin:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    move/from16 v20, v3

    .line 1238
    sget v3, Lcom/transsion/camera/R$dimen;->right_and_left_hover_pop_setting_half_top_margin:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    move/from16 v21, v3

    .line 1239
    sget v3, Lcom/transsion/camera/R$dimen;->hover_pop_setting_top_margin:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    move/from16 v22, v5

    .line 1240
    sget v5, Lcom/transsion/camera/R$dimen;->hover_pop_setting_few_count_top_margin:I

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    move/from16 v23, v4

    .line 1241
    iget-object v4, v0, Lcom/transsion/camera/app/ui/PopSettingUI;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/transsion/camera/utils/FeatureSupport;->isOnlySupportTBHoverUI(Landroid/content/Context;)Z

    move-result v4

    move/from16 v24, v4

    .line 1243
    iget-boolean v4, v0, Lcom/transsion/camera/app/ui/PopSettingUI;->mTreasureBoxSupport:Z

    if-eqz v4, :cond_b2

    .line 1244
    sget v4, Lcom/transsion/camera/R$dimen;->pop_setting_vertical_padding_ui4:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    :goto_af
    move/from16 v25, v4

    goto :goto_b9

    .line 1246
    :cond_b2
    sget v4, Lcom/transsion/camera/R$dimen;->pop_setting_vertical_padding_ui3:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    goto :goto_af

    .line 1249
    :goto_b9
    iget-object v4, v0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopSettingContainer:Lcom/transsion/camera/app/ui/popsetting/PopSettingContainer;

    move-object/from16 v26, v4

    if-eqz v26, :cond_3d4

    .line 1250
    iget-object v4, v0, Lcom/transsion/camera/app/ui/PopSettingUI;->mTreasureBoxScrollView:Lcom/transsion/camera/app/ui/widget/DampingHorizontalScrollView;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout$LayoutParams;

    move/from16 v28, v15

    .line 1251
    iget-boolean v15, v0, Lcom/transsion/camera/app/ui/PopSettingUI;->mTreasureBoxSupport:Z

    if-eqz v15, :cond_e2

    .line 1252
    iget-object v15, v0, Lcom/transsion/camera/app/ui/PopSettingUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v15}, Lcom/transsion/camera/app/common/IAppUI;->getScreenManager()Lcom/transsion/camera/app/common/manager/IScreenManager;

    move-result-object v15

    move/from16 v29, v8

    sget v8, Lcom/transsion/camera/R$dimen;->pop_setting_half_height:I

    .line 1253
    invoke-virtual {v2, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    invoke-interface {v15, v8}, Lcom/transsion/camera/app/common/manager/IScreenManager;->getPopSettingUIHeight(I)I

    move-result v8

    iput v8, v4, Landroid/widget/FrameLayout$LayoutParams;->height:I

    goto :goto_e4

    :cond_e2
    move/from16 v29, v8

    .line 1255
    :goto_e4
    iget-object v8, v0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopSettingContainer:Lcom/transsion/camera/app/ui/popsetting/PopSettingContainer;

    invoke-virtual {v8}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v8

    .line 1256
    iget-object v15, v0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopSettingContainer:Lcom/transsion/camera/app/ui/popsetting/PopSettingContainer;

    invoke-virtual {v15}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    check-cast v15, Landroid/widget/FrameLayout$LayoutParams;

    move/from16 v30, v14

    .line 1257
    sget v14, Lcom/transsion/camera/R$dimen;->pop_setting_half_height:I

    invoke-virtual {v2, v14}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v14

    iput v14, v15, Landroid/widget/FrameLayout$LayoutParams;->height:I

    const/4 v14, 0x4

    if-le v8, v14, :cond_108

    .line 1260
    sget v14, Lcom/transsion/camera/R$dimen;->pop_setting_height:I

    invoke-virtual {v2, v14}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v14

    iput v14, v15, Landroid/widget/FrameLayout$LayoutParams;->height:I

    goto :goto_110

    .line 1262
    :cond_108
    sget v14, Lcom/transsion/camera/R$dimen;->pop_setting_half_height:I

    invoke-virtual {v2, v14}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v14

    iput v14, v15, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 1264
    :goto_110
    iget v14, v0, Lcom/transsion/camera/app/ui/PopSettingUI;->mCurrentScreenType:I

    if-nez v14, :cond_1b0

    .line 1265
    iget-boolean v14, v0, Lcom/transsion/camera/app/ui/PopSettingUI;->mTreasureBoxSupport:Z

    if-eqz v14, :cond_151

    .line 1266
    sget v14, Lcom/transsion/camera/R$dimen;->treasure_box_few_count_top_margin:I

    invoke-virtual {v2, v14}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v14

    move/from16 v31, v13

    const/4 v13, 0x6

    if-ge v8, v13, :cond_12b

    const/4 v13, 0x1

    .line 1268
    iput v13, v15, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    const/4 v13, 0x0

    .line 1269
    invoke-virtual {v15, v13, v13, v13, v13}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    goto :goto_131

    :cond_12b
    const/4 v13, 0x0

    .line 1271
    iput v13, v15, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 1272
    invoke-virtual {v15, v13, v13, v13, v13}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    :goto_131
    const/16 v13, 0x50

    .line 1274
    iput v13, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 1275
    iget-object v13, v0, Lcom/transsion/camera/app/ui/PopSettingUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {v13, v14}, Lcom/transsion/camera/app/ui/ScreenManager;->getPopSettingUIMarginBottom(I)I

    move-result v13

    move/from16 v17, v14

    const/4 v14, 0x0

    invoke-virtual {v4, v14, v14, v14, v13}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    :goto_141
    move/from16 v4, v21

    move/from16 v21, v12

    move/from16 v12, v20

    move/from16 v20, v4

    :goto_149
    move/from16 v4, v19

    move/from16 v32, v31

    :goto_14d
    move/from16 v19, v11

    goto/16 :goto_358

    :cond_151
    move/from16 v31, v13

    .line 1277
    iput v7, v15, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 1278
    iput v7, v4, Landroid/widget/FrameLayout$LayoutParams;->width:I

    const/4 v14, 0x4

    if-le v8, v14, :cond_185

    .line 1280
    sget v13, Lcom/transsion/camera/R$dimen;->pop_setting_height:I

    invoke-virtual {v2, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v13

    iput v13, v15, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 1281
    sget v13, Lcom/transsion/camera/R$dimen;->pop_setting_height:I

    invoke-virtual {v2, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v13

    iput v13, v4, Landroid/widget/FrameLayout$LayoutParams;->height:I

    if-eqz v24, :cond_174

    .line 1283
    sget v13, Lcom/transsion/camera/R$dimen;->pop_setting_tb_hover_top_margin:I

    invoke-virtual {v2, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v13

    :goto_172
    const/4 v14, 0x0

    goto :goto_177

    :cond_174
    move/from16 v13, v16

    goto :goto_172

    .line 1285
    :goto_177
    invoke-virtual {v4, v6, v13, v6, v14}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    move/from16 v4, v21

    move/from16 v21, v12

    move/from16 v12, v20

    move/from16 v20, v4

    move/from16 v16, v13

    goto :goto_149

    .line 1287
    :cond_185
    sget v13, Lcom/transsion/camera/R$dimen;->pop_setting_half_height:I

    invoke-virtual {v2, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v13

    iput v13, v15, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 1288
    sget v13, Lcom/transsion/camera/R$dimen;->pop_setting_half_height:I

    invoke-virtual {v2, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v13

    iput v13, v4, Landroid/widget/FrameLayout$LayoutParams;->height:I

    if-eqz v24, :cond_19f

    .line 1290
    sget v13, Lcom/transsion/camera/R$dimen;->pop_setting_few_count_tb_hover_top_margin:I

    invoke-virtual {v2, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v13

    :goto_19d
    const/4 v14, 0x0

    goto :goto_1a2

    :cond_19f
    move/from16 v13, v17

    goto :goto_19d

    .line 1292
    :goto_1a2
    invoke-virtual {v4, v6, v13, v6, v14}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    move/from16 v4, v21

    move/from16 v21, v12

    move/from16 v12, v20

    move/from16 v20, v4

    move/from16 v17, v13

    goto :goto_149

    :cond_1b0
    move/from16 v31, v13

    const/4 v4, 0x3

    const/4 v13, 0x0

    if-ne v14, v4, :cond_1d5

    .line 1296
    iput v7, v15, Landroid/widget/FrameLayout$LayoutParams;->width:I

    const/4 v14, 0x4

    if-le v8, v14, :cond_1c8

    .line 1298
    sget v4, Lcom/transsion/camera/R$dimen;->pop_setting_height:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, v15, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 1299
    invoke-virtual {v15, v6, v3, v6, v13}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    goto/16 :goto_141

    .line 1301
    :cond_1c8
    sget v4, Lcom/transsion/camera/R$dimen;->pop_setting_half_height:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, v15, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 1302
    invoke-virtual {v15, v6, v5, v6, v13}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    goto/16 :goto_141

    :cond_1d5
    const/4 v4, 0x1

    if-ne v14, v4, :cond_26e

    .line 1305
    iput v7, v15, Landroid/widget/FrameLayout$LayoutParams;->width:I

    const/4 v14, 0x4

    if-le v8, v14, :cond_205

    .line 1307
    sget v4, Lcom/transsion/camera/R$dimen;->pop_setting_height:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, v15, Landroid/widget/FrameLayout$LayoutParams;->height:I

    const/16 v4, 0x5a

    if-ne v1, v4, :cond_1f1

    .line 1309
    invoke-virtual {v15, v9, v10, v13, v13}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    :goto_1ec
    move/from16 v14, v30

    move/from16 v4, v31

    goto :goto_232

    :cond_1f1
    const/16 v4, 0x10e

    if-ne v1, v4, :cond_1f9

    .line 1311
    invoke-virtual {v15, v9, v10, v13, v13}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    goto :goto_1ec

    :cond_1f9
    const/16 v4, 0xb4

    if-ne v1, v4, :cond_201

    .line 1313
    invoke-virtual {v15, v11, v12, v13, v13}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    goto :goto_1ec

    .line 1315
    :cond_201
    invoke-virtual {v15, v11, v12, v13, v13}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    goto :goto_1ec

    .line 1318
    :cond_205
    sget v4, Lcom/transsion/camera/R$dimen;->pop_setting_half_height:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, v15, Landroid/widget/FrameLayout$LayoutParams;->height:I

    const/16 v4, 0x5a

    if-ne v1, v4, :cond_219

    move/from16 v4, v31

    .line 1320
    invoke-virtual {v15, v9, v4, v13, v13}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    :goto_216
    move/from16 v14, v30

    goto :goto_232

    :cond_219
    move/from16 v4, v31

    const/16 v14, 0x10e

    if-ne v1, v14, :cond_223

    .line 1322
    invoke-virtual {v15, v9, v4, v13, v13}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    goto :goto_216

    :cond_223
    const/16 v14, 0xb4

    if-ne v1, v14, :cond_22d

    move/from16 v14, v30

    .line 1324
    invoke-virtual {v15, v11, v14, v13, v13}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    goto :goto_232

    :cond_22d
    move/from16 v14, v30

    .line 1326
    invoke-virtual {v15, v11, v14, v6, v13}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    :goto_232
    move/from16 v30, v14

    const/4 v13, 0x0

    .line 1329
    :goto_235
    iget-object v14, v0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopSettingUIList:Ljava/util/List;

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v14

    if-ge v13, v14, :cond_260

    .line 1330
    iget-object v14, v0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopSettingUIList:Ljava/util/List;

    invoke-interface {v14, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    if-eqz v14, :cond_257

    .line 1331
    iget-object v14, v0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopSettingUIList:Ljava/util/List;

    invoke-interface {v14, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/transsion/camera/app/ui/widget/IRotatable;

    move/from16 v32, v4

    move/from16 v31, v13

    const/4 v4, 0x0

    const/4 v13, 0x1

    invoke-interface {v14, v4, v13}, Lcom/transsion/camera/app/ui/widget/IRotatable;->setOrientation(IZ)V

    goto :goto_25b

    :cond_257
    move/from16 v32, v4

    move/from16 v31, v13

    :goto_25b
    add-int/lit8 v13, v31, 0x1

    move/from16 v4, v32

    goto :goto_235

    :cond_260
    move/from16 v32, v4

    move/from16 v4, v21

    move/from16 v21, v12

    move/from16 v12, v20

    move/from16 v20, v4

    :goto_26a
    move/from16 v4, v19

    goto/16 :goto_14d

    :cond_26e
    move/from16 v4, v30

    move/from16 v32, v31

    const/4 v13, 0x2

    if-ne v14, v13, :cond_2ba

    move/from16 v13, v29

    .line 1335
    iput v13, v15, Landroid/widget/FrameLayout$LayoutParams;->width:I

    const/4 v14, 0x4

    if-le v8, v14, :cond_292

    .line 1337
    sget v14, Lcom/transsion/camera/R$dimen;->pop_setting_height:I

    invoke-virtual {v2, v14}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v14

    iput v14, v15, Landroid/widget/FrameLayout$LayoutParams;->height:I

    move/from16 v30, v4

    move/from16 v29, v13

    move/from16 v4, v23

    move/from16 v13, v28

    const/4 v14, 0x0

    .line 1338
    invoke-virtual {v15, v13, v4, v13, v14}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    move v4, v14

    goto :goto_2a8

    :cond_292
    move/from16 v30, v4

    move/from16 v29, v13

    move/from16 v4, v23

    move/from16 v13, v28

    .line 1340
    sget v14, Lcom/transsion/camera/R$dimen;->pop_setting_half_height:I

    invoke-virtual {v2, v14}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v14

    iput v14, v15, Landroid/widget/FrameLayout$LayoutParams;->height:I

    move/from16 v14, v22

    const/4 v4, 0x0

    .line 1341
    invoke-virtual {v15, v13, v14, v13, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 1343
    :goto_2a8
    iget-object v14, v0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopSettingContainerRotateLayout:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    if-eqz v14, :cond_2af

    .line 1344
    invoke-virtual {v14, v4, v4}, Lcom/transsion/camera/app/ui/widget/RotateLayout;->setOrientation(IZ)V

    :cond_2af
    move/from16 v4, v21

    move/from16 v21, v12

    move/from16 v12, v20

    move/from16 v20, v4

    move/from16 v28, v13

    goto :goto_26a

    :cond_2ba
    move/from16 v30, v4

    const/4 v4, 0x4

    const/4 v13, 0x0

    if-ne v14, v4, :cond_30e

    .line 1347
    iput v7, v15, Landroid/widget/FrameLayout$LayoutParams;->width:I

    if-le v8, v4, :cond_2d0

    move/from16 v4, v19

    move/from16 v14, v20

    .line 1349
    invoke-virtual {v15, v4, v14, v13, v13}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    move/from16 v19, v11

    move/from16 v11, v21

    goto :goto_2db

    :cond_2d0
    move/from16 v4, v19

    move/from16 v14, v20

    move/from16 v19, v11

    move/from16 v11, v21

    .line 1351
    invoke-virtual {v15, v4, v11, v13, v13}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 1353
    :goto_2db
    iget-object v14, v0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopSettingContainerRotateLayout:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    move/from16 v21, v12

    const/16 v12, 0x5a

    invoke-virtual {v14, v12, v13}, Lcom/transsion/camera/app/ui/widget/RotateLayout;->setOrientation(IZ)V

    move v12, v13

    .line 1354
    :goto_2e5
    iget-object v14, v0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopSettingUIList:Ljava/util/List;

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v14

    if-ge v12, v14, :cond_309

    .line 1355
    iget-object v14, v0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopSettingUIList:Ljava/util/List;

    invoke-interface {v14, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    if-eqz v14, :cond_304

    .line 1356
    iget-object v14, v0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopSettingUIList:Ljava/util/List;

    invoke-interface {v14, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/transsion/camera/app/ui/widget/IRotatable;

    move/from16 v26, v12

    const/4 v12, 0x1

    invoke-interface {v14, v13, v12}, Lcom/transsion/camera/app/ui/widget/IRotatable;->setOrientation(IZ)V

    goto :goto_306

    :cond_304
    move/from16 v26, v12

    :goto_306
    add-int/lit8 v12, v26, 0x1

    goto :goto_2e5

    :cond_309
    move/from16 v12, v20

    :cond_30b
    move/from16 v20, v11

    goto :goto_358

    :cond_30e
    move/from16 v4, v19

    const/4 v13, 0x5

    move/from16 v19, v11

    move/from16 v11, v21

    move/from16 v21, v12

    move/from16 v12, v20

    if-ne v14, v13, :cond_30b

    .line 1360
    iput v7, v15, Landroid/widget/FrameLayout$LayoutParams;->width:I

    const/4 v14, 0x4

    if-le v8, v14, :cond_325

    const/4 v14, 0x0

    .line 1362
    invoke-virtual {v15, v4, v12, v14, v14}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    goto :goto_329

    :cond_325
    const/4 v14, 0x0

    .line 1364
    invoke-virtual {v15, v4, v11, v14, v14}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 1366
    :goto_329
    iget-object v13, v0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopSettingContainerRotateLayout:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    move/from16 v20, v11

    const/16 v11, 0x10e

    invoke-virtual {v13, v11, v14}, Lcom/transsion/camera/app/ui/widget/RotateLayout;->setOrientation(IZ)V

    move v11, v14

    .line 1367
    :goto_333
    iget-object v13, v0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopSettingUIList:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v13

    if-ge v11, v13, :cond_358

    .line 1368
    iget-object v13, v0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopSettingUIList:Ljava/util/List;

    invoke-interface {v13, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    if-eqz v13, :cond_352

    .line 1369
    iget-object v13, v0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopSettingUIList:Ljava/util/List;

    invoke-interface {v13, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/transsion/camera/app/ui/widget/IRotatable;

    move/from16 v31, v11

    const/4 v11, 0x1

    invoke-interface {v13, v14, v11}, Lcom/transsion/camera/app/ui/widget/IRotatable;->setOrientation(IZ)V

    goto :goto_354

    :cond_352
    move/from16 v31, v11

    :goto_354
    add-int/lit8 v11, v31, 0x1

    const/4 v14, 0x0

    goto :goto_333

    .line 1374
    :cond_358
    :goto_358
    iget-boolean v11, v0, Lcom/transsion/camera/app/ui/PopSettingUI;->mTreasureBoxSupport:Z

    if-eqz v11, :cond_361

    .line 1375
    invoke-virtual {v0, v2}, Lcom/transsion/camera/app/ui/PopSettingUI;->getPopSettingHorizontalTopPadding(Landroid/content/res/Resources;)I

    move-result v11

    goto :goto_363

    :cond_361
    move/from16 v11, v25

    .line 1378
    :goto_363
    iget v13, v0, Lcom/transsion/camera/app/ui/PopSettingUI;->mCurrentScreenType:I

    const/4 v14, 0x2

    if-eq v13, v14, :cond_373

    .line 1379
    iget-object v13, v0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopSettingContainer:Lcom/transsion/camera/app/ui/popsetting/PopSettingContainer;

    move/from16 v14, v18

    move/from16 v18, v4

    const/4 v4, 0x0

    invoke-virtual {v13, v14, v11, v14, v4}, Lcom/transsion/camera/app/ui/popsetting/PopSettingContainer;->setPaddingByToolbarScroll(IIII)V

    goto :goto_37d

    :cond_373
    move/from16 v14, v18

    move/from16 v18, v4

    const/4 v4, 0x0

    .line 1381
    iget-object v13, v0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopSettingContainer:Lcom/transsion/camera/app/ui/popsetting/PopSettingContainer;

    invoke-virtual {v13, v4, v11, v4, v4}, Lcom/transsion/camera/app/ui/popsetting/PopSettingContainer;->setPaddingByToolbarScroll(IIII)V

    .line 1383
    :goto_37d
    iget-object v4, v0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopSettingContainer:Lcom/transsion/camera/app/ui/popsetting/PopSettingContainer;

    iget v11, v15, Landroid/widget/FrameLayout$LayoutParams;->height:I

    invoke-virtual {v4, v7, v11}, Lcom/transsion/camera/app/ui/popsetting/PopSettingContainer;->initWidthAndHeight(II)V

    .line 1384
    iget-object v4, v0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopSettingContainer:Lcom/transsion/camera/app/ui/popsetting/PopSettingContainer;

    invoke-virtual {v4, v15}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1385
    iget v4, v15, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iput v4, v0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopSettingContainerHeight:I

    .line 1390
    iget-boolean v4, v0, Lcom/transsion/camera/app/ui/PopSettingUI;->mTreasureBoxSupport:Z

    if-eqz v4, :cond_393

    move v11, v8

    goto :goto_398

    :cond_393
    const/4 v4, 0x4

    .line 1393
    invoke-static {v4, v8}, Ljava/lang/Math;->min(II)I

    move-result v11

    :goto_398
    const/4 v4, 0x0

    :goto_399
    if-ge v4, v11, :cond_3b3

    .line 1396
    iget-object v13, v0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopSettingContainer:Lcom/transsion/camera/app/ui/popsetting/PopSettingContainer;

    invoke-virtual {v13, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    .line 1397
    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    check-cast v15, Landroid/widget/FrameLayout$LayoutParams;

    move/from16 v25, v4

    const/4 v4, 0x0

    .line 1398
    invoke-virtual {v15, v4, v4, v4, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 1399
    invoke-virtual {v13, v15}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v4, v25, 0x1

    goto :goto_399

    .line 1402
    :cond_3b3
    iget-boolean v4, v0, Lcom/transsion/camera/app/ui/PopSettingUI;->mTreasureBoxSupport:Z

    if-nez v4, :cond_3d1

    const/4 v4, 0x4

    :goto_3b8
    if-ge v4, v8, :cond_3d1

    .line 1404
    iget-object v11, v0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopSettingContainer:Lcom/transsion/camera/app/ui/popsetting/PopSettingContainer;

    invoke-virtual {v11, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 1405
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Landroid/widget/FrameLayout$LayoutParams;

    .line 1406
    new-instance v15, Lcom/transsion/camera/app/ui/PopSettingUI$$ExternalSyntheticLambda3;

    invoke-direct {v15, v13, v11}, Lcom/transsion/camera/app/ui/PopSettingUI$$ExternalSyntheticLambda3;-><init>(Landroid/widget/FrameLayout$LayoutParams;Landroid/view/View;)V

    invoke-virtual {v11, v15}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_3b8

    :cond_3d1
    :goto_3d1
    move/from16 v4, v16

    goto :goto_3ec

    :cond_3d4
    move/from16 v28, v21

    move/from16 v21, v12

    move/from16 v12, v20

    move/from16 v20, v28

    move/from16 v29, v8

    move/from16 v32, v13

    move/from16 v30, v14

    move/from16 v28, v15

    move/from16 v14, v18

    move/from16 v18, v19

    move/from16 v19, v11

    const/4 v8, 0x0

    goto :goto_3d1

    .line 1415
    :goto_3ec
    iget-object v11, v0, Lcom/transsion/camera/app/ui/PopSettingUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v11}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getModePlusBottomBarHeight()I

    move-result v11

    invoke-virtual {v0, v11}, Lcom/transsion/camera/app/ui/PopSettingUI;->updateTreasureBoxBackground(I)V

    .line 1417
    iget-object v11, v0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopOptionSelectedBackground:Lcom/transsion/camera/app/ui/popsetting/PopSettingContainer;

    if-eqz v11, :cond_5a1

    .line 1418
    iget-object v11, v0, Lcom/transsion/camera/app/ui/PopSettingUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {v11}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenWidth()I

    move-result v11

    sub-int/2addr v11, v14

    sub-int/2addr v11, v14

    .line 1419
    iget-object v13, v0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopOptionSelectedBackground:Lcom/transsion/camera/app/ui/popsetting/PopSettingContainer;

    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v14, 0x4

    if-le v8, v14, :cond_415

    .line 1421
    sget v14, Lcom/transsion/camera/R$dimen;->pop_setting_height:I

    invoke-virtual {v2, v14}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v14

    iput v14, v13, Landroid/widget/FrameLayout$LayoutParams;->height:I

    goto :goto_41d

    .line 1423
    :cond_415
    sget v14, Lcom/transsion/camera/R$dimen;->pop_setting_half_height:I

    invoke-virtual {v2, v14}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v14

    iput v14, v13, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 1425
    :goto_41d
    iget v14, v0, Lcom/transsion/camera/app/ui/PopSettingUI;->mCurrentScreenType:I

    if-nez v14, :cond_455

    const/4 v1, -0x1

    .line 1426
    iput v1, v13, Landroid/widget/FrameLayout$LayoutParams;->width:I

    const/4 v14, 0x4

    if-le v8, v14, :cond_43d

    .line 1428
    sget v1, Lcom/transsion/camera/R$dimen;->pop_setting_height:I

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v13, Landroid/widget/FrameLayout$LayoutParams;->height:I

    if-eqz v24, :cond_437

    .line 1430
    sget v1, Lcom/transsion/camera/R$dimen;->pop_setting_tb_hover_top_margin:I

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    :cond_437
    const/4 v15, 0x0

    .line 1432
    invoke-virtual {v13, v6, v4, v6, v15}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    goto/16 :goto_595

    :cond_43d
    const/4 v15, 0x0

    .line 1434
    sget v1, Lcom/transsion/camera/R$dimen;->pop_setting_half_height:I

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v13, Landroid/widget/FrameLayout$LayoutParams;->height:I

    if-eqz v24, :cond_44e

    .line 1436
    sget v1, Lcom/transsion/camera/R$dimen;->pop_setting_few_count_tb_hover_top_margin:I

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v17

    :cond_44e
    move/from16 v1, v17

    .line 1438
    invoke-virtual {v13, v6, v1, v6, v15}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    goto/16 :goto_595

    :cond_455
    const/4 v4, 0x3

    const/4 v15, 0x0

    if-ne v14, v4, :cond_478

    .line 1441
    iput v7, v13, Landroid/widget/FrameLayout$LayoutParams;->width:I

    const/4 v14, 0x4

    if-le v8, v14, :cond_46b

    .line 1443
    sget v1, Lcom/transsion/camera/R$dimen;->pop_setting_height:I

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v13, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 1444
    invoke-virtual {v13, v6, v3, v6, v15}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    goto/16 :goto_595

    .line 1446
    :cond_46b
    sget v1, Lcom/transsion/camera/R$dimen;->pop_setting_half_height:I

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v13, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 1447
    invoke-virtual {v13, v6, v5, v6, v15}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    goto/16 :goto_595

    :cond_478
    const/4 v4, 0x1

    if-ne v14, v4, :cond_4e2

    .line 1450
    iput v7, v13, Landroid/widget/FrameLayout$LayoutParams;->width:I

    const/4 v14, 0x4

    if-le v8, v14, :cond_4b0

    .line 1452
    sget v3, Lcom/transsion/camera/R$dimen;->pop_setting_height:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v13, Landroid/widget/FrameLayout$LayoutParams;->height:I

    const/16 v4, 0x5a

    if-ne v1, v4, :cond_491

    .line 1454
    invoke-virtual {v13, v9, v10, v15, v15}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    goto/16 :goto_595

    :cond_491
    const/16 v14, 0x10e

    if-ne v1, v14, :cond_49a

    .line 1456
    invoke-virtual {v13, v9, v10, v15, v15}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    goto/16 :goto_595

    :cond_49a
    const/16 v14, 0xb4

    if-ne v1, v14, :cond_4a7

    move/from16 v3, v19

    move/from16 v1, v21

    .line 1458
    invoke-virtual {v13, v3, v1, v15, v15}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    goto/16 :goto_595

    :cond_4a7
    move/from16 v3, v19

    move/from16 v1, v21

    .line 1460
    invoke-virtual {v13, v3, v1, v6, v15}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    goto/16 :goto_595

    :cond_4b0
    move/from16 v3, v19

    .line 1463
    sget v4, Lcom/transsion/camera/R$dimen;->pop_setting_half_height:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, v13, Landroid/widget/FrameLayout$LayoutParams;->height:I

    const/16 v4, 0x5a

    if-ne v1, v4, :cond_4c5

    move/from16 v4, v32

    .line 1465
    invoke-virtual {v13, v9, v4, v15, v15}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    goto/16 :goto_595

    :cond_4c5
    move/from16 v4, v32

    const/16 v14, 0x10e

    if-ne v1, v14, :cond_4d0

    .line 1467
    invoke-virtual {v13, v9, v4, v15, v15}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    goto/16 :goto_595

    :cond_4d0
    const/16 v14, 0xb4

    if-ne v1, v14, :cond_4db

    move/from16 v14, v30

    .line 1469
    invoke-virtual {v13, v3, v14, v15, v15}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    goto/16 :goto_595

    :cond_4db
    move/from16 v14, v30

    .line 1471
    invoke-virtual {v13, v3, v14, v6, v15}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    goto/16 :goto_595

    :cond_4e2
    const/4 v1, 0x2

    if-ne v14, v1, :cond_514

    move/from16 v1, v29

    .line 1475
    iput v1, v13, Landroid/widget/FrameLayout$LayoutParams;->width:I

    const/4 v14, 0x4

    if-le v8, v14, :cond_4fc

    .line 1477
    sget v1, Lcom/transsion/camera/R$dimen;->pop_setting_height:I

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v13, Landroid/widget/FrameLayout$LayoutParams;->height:I

    move/from16 v4, v23

    move/from16 v1, v28

    .line 1478
    invoke-virtual {v13, v1, v4, v1, v15}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    goto :goto_50b

    :cond_4fc
    move/from16 v1, v28

    .line 1480
    sget v3, Lcom/transsion/camera/R$dimen;->pop_setting_half_height:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v13, Landroid/widget/FrameLayout$LayoutParams;->height:I

    move/from16 v14, v22

    .line 1481
    invoke-virtual {v13, v1, v14, v1, v15}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 1483
    :goto_50b
    iget-object v1, v0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopSettingContainerRotateLayout:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    if-eqz v1, :cond_595

    .line 1484
    invoke-virtual {v1, v15, v15}, Lcom/transsion/camera/app/ui/widget/RotateLayout;->setOrientation(IZ)V

    goto/16 :goto_595

    :cond_514
    const/4 v4, 0x4

    if-ne v14, v4, :cond_556

    .line 1487
    iput v7, v13, Landroid/widget/FrameLayout$LayoutParams;->width:I

    if-le v8, v4, :cond_521

    move/from16 v4, v18

    .line 1489
    invoke-virtual {v13, v4, v12, v15, v15}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    goto :goto_528

    :cond_521
    move/from16 v4, v18

    move/from16 v1, v20

    .line 1491
    invoke-virtual {v13, v4, v1, v15, v15}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 1493
    :goto_528
    iget-object v1, v0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopSettingContainerRotateLayout:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    const/16 v4, 0x5a

    invoke-virtual {v1, v4, v15}, Lcom/transsion/camera/app/ui/widget/RotateLayout;->setOrientation(IZ)V

    const/4 v1, 0x0

    .line 1494
    :goto_530
    iget-object v3, v0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopSettingUIList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_595

    .line 1495
    iget-object v3, v0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopSettingUIList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_552

    iget v3, v0, Lcom/transsion/camera/app/ui/PopSettingUI;->mCurrentScreenType:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_552

    .line 1496
    iget-object v3, v0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopSettingUIList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/camera/app/ui/widget/IRotatable;

    const/4 v15, 0x0

    invoke-interface {v3, v15, v4}, Lcom/transsion/camera/app/ui/widget/IRotatable;->setOrientation(IZ)V

    goto :goto_553

    :cond_552
    const/4 v15, 0x0

    :goto_553
    add-int/lit8 v1, v1, 0x1

    goto :goto_530

    :cond_556
    move/from16 v4, v18

    move/from16 v1, v20

    const/4 v3, 0x5

    if-ne v14, v3, :cond_595

    .line 1500
    iput v7, v13, Landroid/widget/FrameLayout$LayoutParams;->width:I

    const/4 v14, 0x4

    if-le v8, v14, :cond_566

    .line 1502
    invoke-virtual {v13, v4, v12, v15, v15}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    goto :goto_569

    .line 1504
    :cond_566
    invoke-virtual {v13, v4, v1, v15, v15}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 1506
    :goto_569
    iget-object v1, v0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopSettingContainerRotateLayout:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    const/16 v14, 0x10e

    invoke-virtual {v1, v14, v15}, Lcom/transsion/camera/app/ui/widget/RotateLayout;->setOrientation(IZ)V

    const/4 v1, 0x0

    .line 1507
    :goto_571
    iget-object v3, v0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopSettingUIList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_595

    .line 1508
    iget-object v3, v0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopSettingUIList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_592

    iget v3, v0, Lcom/transsion/camera/app/ui/PopSettingUI;->mCurrentScreenType:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_592

    .line 1509
    iget-object v3, v0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopSettingUIList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/camera/app/ui/widget/IRotatable;

    const/4 v14, 0x0

    invoke-interface {v3, v14, v4}, Lcom/transsion/camera/app/ui/widget/IRotatable;->setOrientation(IZ)V

    :cond_592
    add-int/lit8 v1, v1, 0x1

    goto :goto_571

    .line 1513
    :cond_595
    :goto_595
    iget-object v1, v0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopOptionSelectedBackground:Lcom/transsion/camera/app/ui/popsetting/PopSettingContainer;

    iget v3, v13, Landroid/widget/FrameLayout$LayoutParams;->height:I

    invoke-virtual {v1, v11, v3}, Lcom/transsion/camera/app/ui/popsetting/PopSettingContainer;->initWidthAndHeight(II)V

    .line 1514
    iget-object v1, v0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopOptionSelectedBackground:Lcom/transsion/camera/app/ui/popsetting/PopSettingContainer;

    invoke-virtual {v1, v13}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1517
    :cond_5a1
    iget-object v1, v0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopBackView:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    if-eqz v1, :cond_5b5

    iget-object v3, v0, Lcom/transsion/camera/app/ui/PopSettingUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz v3, :cond_5b5

    .line 1518
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 1519
    invoke-virtual {v0, v2}, Lcom/transsion/camera/app/ui/PopSettingUI;->getPopBackViewMarginBottom(Landroid/content/res/Resources;)I

    move-result v3

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 1522
    :cond_5b5
    iget-object v1, v0, Lcom/transsion/camera/app/ui/PopSettingUI;->mCurrentSize:Ljava/lang/String;

    if-eqz v1, :cond_625

    iget-boolean v3, v0, Lcom/transsion/camera/app/ui/PopSettingUI;->mIsPopSettingFirstShow:Z

    if-eqz v3, :cond_625

    iget v3, v0, Lcom/transsion/camera/app/ui/PopSettingUI;->mCurrentScreenType:I

    if-nez v3, :cond_625

    .line 1523
    invoke-static {v1}, Landroid/util/Size;->parseSize(Ljava/lang/String;)Landroid/util/Size;

    move-result-object v1

    .line 1524
    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v3

    int-to-double v3, v3

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v1

    int-to-double v5, v1

    div-double/2addr v3, v5

    .line 1526
    iget v1, v0, Lcom/transsion/camera/app/ui/PopSettingUI;->mCurrentScreenType:I

    if-nez v1, :cond_5dd

    .line 1527
    sget v1, Lcom/transsion/camera/R$dimen;->pop_setting_ratio_changed_translation:I

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    :goto_5da
    neg-int v1, v1

    int-to-float v1, v1

    goto :goto_5e4

    .line 1529
    :cond_5dd
    sget v1, Lcom/transsion/camera/R$dimen;->column_pop_setting_ratio_changed_translation:I

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    goto :goto_5da

    .line 1531
    :goto_5e4
    invoke-static {v3, v4}, Lcom/transsion/camera/utils/PictureSizeHelper;->isSmallRatio(D)Z

    move-result v2

    if-eqz v2, :cond_622

    iget-boolean v2, v0, Lcom/transsion/camera/app/ui/PopSettingUI;->mTreasureBoxSupport:Z

    if-nez v2, :cond_622

    .line 1532
    iget-object v2, v0, Lcom/transsion/camera/app/ui/PopSettingUI;->mTreasureBoxScrollView:Lcom/transsion/camera/app/ui/widget/DampingHorizontalScrollView;

    const/4 v14, 0x2

    new-array v5, v14, [F

    const/4 v6, 0x0

    const/16 v26, 0x0

    aput v6, v5, v26

    const/16 v27, 0x1

    aput v1, v5, v27

    const-string/jumbo v7, "translationY"

    invoke-static {v2, v7, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 1533
    iget-object v5, v0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopOptionSelectedBackground:Lcom/transsion/camera/app/ui/popsetting/PopSettingContainer;

    new-array v8, v14, [F

    aput v6, v8, v26

    aput v1, v8, v27

    invoke-static {v5, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    const-wide/16 v5, 0x96

    .line 1534
    invoke-virtual {v2, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1535
    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->start()V

    .line 1536
    invoke-virtual {v1, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1537
    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    .line 1538
    iget-object v1, v0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopupOption:Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;

    invoke-virtual {v1, v3, v4}, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->onPreViewSizeChanged(D)V

    :cond_622
    const/4 v14, 0x0

    .line 1540
    iput-boolean v14, v0, Lcom/transsion/camera/app/ui/PopSettingUI;->mIsPopSettingFirstShow:Z

    .line 1542
    :cond_625
    invoke-direct {v0}, Lcom/transsion/camera/app/ui/PopSettingUI;->setPopSettingViewTranslate()V

    return-void
.end method

.method public updatePopBackViewBackground()V
    .registers 3

    .line 2239
    iget-object v0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopupOption:Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;

    if-eqz v0, :cond_a

    .line 2240
    iget-object p0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopBackView:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1, v1}, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->updateItemBackground(Lcom/transsion/camera/app/ui/widget/RotateImageView;Landroid/widget/ImageView;Ljava/lang/String;)V

    :cond_a
    return-void
.end method

.method protected updatePopSettingLayout(Ljava/util/List;)V
    .registers 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 274
    iput-object v1, v0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopSettingItemUIs:Ljava/util/List;

    .line 276
    iget-object v2, v0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopSettingContainer:Lcom/transsion/camera/app/ui/popsetting/PopSettingContainer;

    if-nez v2, :cond_b

    return-void

    .line 280
    :cond_b
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    .line 281
    iget-object v3, v0, Lcom/transsion/camera/app/ui/PopSettingUI;->mItemShowTranslateAnimatorList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 282
    iget-object v3, v0, Lcom/transsion/camera/app/ui/PopSettingUI;->mItemHideScaleAnimatorList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 283
    iget-object v3, v0, Lcom/transsion/camera/app/ui/PopSettingUI;->mTBItemHideAlphaAnimatorList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 284
    iget-object v3, v0, Lcom/transsion/camera/app/ui/PopSettingUI;->mItemHideTranslateAnimatorList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 285
    iget-object v3, v0, Lcom/transsion/camera/app/ui/PopSettingUI;->mItemShowScaleAnimatorList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 286
    iget-object v3, v0, Lcom/transsion/camera/app/ui/PopSettingUI;->mExpandItemShowTranslateAnimatorList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 287
    iget-object v3, v0, Lcom/transsion/camera/app/ui/PopSettingUI;->mExpandItemHideScaleAnimatorList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 288
    iget-object v3, v0, Lcom/transsion/camera/app/ui/PopSettingUI;->mExpandItemHideTranslateAnimatorList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 289
    iget-object v3, v0, Lcom/transsion/camera/app/ui/PopSettingUI;->mExpandItemShowScaleAnimatorList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 291
    iget-object v3, v0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopSettingUIList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_49

    .line 292
    iget-object v3, v0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopSettingUIList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 295
    :cond_49
    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3, v2}, Ljava/util/LinkedHashMap;-><init>(I)V

    const/4 v5, 0x0

    :goto_4f
    if-ge v5, v2, :cond_2db

    .line 297
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    move-object v7, v6

    check-cast v7, Lcom/transsion/camera/app/common/ui/setting/IPopSettingItemUI;

    .line 298
    iget-object v6, v0, Lcom/transsion/camera/app/ui/PopSettingUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v7, v6}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->setAppUI(Lcom/transsion/camera/app/common/IAppUI;)V

    .line 299
    iget-object v6, v0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopupOption:Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;

    invoke-interface {v7, v6}, Lcom/transsion/camera/app/common/ui/setting/IPopSettingItemUI;->setPopupOptionsControl(Lcom/transsion/camera/app/common/ui/setting/IPopupOptionControl;)V

    .line 300
    invoke-interface {v7}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->getKey()Ljava/lang/String;

    move-result-object v6

    .line 301
    invoke-interface {v7}, Lcom/transsion/camera/app/common/ui/setting/IPopSettingItemUI;->getEntryView()Landroid/view/View;

    move-result-object v8

    if-nez v8, :cond_86

    .line 303
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

    .line 310
    :cond_86
    iget-object v9, v0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopSettingUIList:Ljava/util/List;

    invoke-interface {v9, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 311
    iget-object v9, v0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopupOption:Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;

    iget-object v10, v0, Lcom/transsion/camera/app/ui/PopSettingUI;->mOldValue:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v10

    invoke-virtual {v9, v10}, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->onScreenSupply(Z)V

    .line 312
    iget-object v9, v0, Lcom/transsion/camera/app/ui/PopSettingUI;->mOldValue:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v9

    invoke-interface {v7, v9}, Lcom/transsion/camera/app/common/ui/setting/IPopSettingItemUI;->onScreenSupply(Z)V

    .line 313
    invoke-interface {v7}, Lcom/transsion/camera/app/common/ui/setting/IPopSettingItemUI;->setupEntryView()V

    .line 315
    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v9

    const/4 v10, 0x1

    if-nez v9, :cond_ba

    invoke-interface {v7}, Lcom/transsion/camera/app/common/ui/setting/IPopSettingItemUI;->getIsShouldGone()Z

    move-result v9

    if-nez v9, :cond_ba

    .line 316
    invoke-interface {v3, v6, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 317
    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v9

    sub-int/2addr v9, v10

    invoke-interface {v7, v9}, Lcom/transsion/camera/app/common/ui/setting/IPopSettingItemUI;->setPositionInPopSetting(I)V

    :cond_ba
    const/4 v9, 0x2

    .line 320
    new-array v11, v9, [F

    fill-array-data v11, :array_2e8

    const-string/jumbo v12, "translationY"

    invoke-static {v12, v11}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v11

    .line 321
    new-array v13, v9, [F

    fill-array-data v13, :array_2f0

    const-string v14, "alpha"

    invoke-static {v14, v13}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v13

    .line 322
    filled-new-array {v11, v13}, [Landroid/animation/PropertyValuesHolder;

    move-result-object v11

    invoke-static {v8, v11}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v11

    .line 323
    new-instance v13, Landroid/view/animation/PathInterpolator;

    const v15, 0x3e4ccccd    # 0.2f

    move/from16 v16, v10

    const/4 v10, 0x0

    const/16 v17, 0x0

    const v4, 0x3dcccccd    # 0.1f

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-direct {v13, v15, v10, v4, v9}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 324
    invoke-virtual {v11, v13}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    move v13, v5

    const-wide/16 v4, 0x190

    .line 325
    invoke-virtual {v11, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move/from16 v4, v17

    .line 326
    :goto_f7
    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v5

    const/4 v9, 0x3

    if-ge v4, v5, :cond_114

    if-le v4, v9, :cond_10b

    .line 327
    iget-boolean v5, v0, Lcom/transsion/camera/app/ui/PopSettingUI;->mTreasureBoxSupport:Z

    if-nez v5, :cond_10b

    move v5, v2

    const-wide/16 v1, 0x64

    .line 328
    invoke-virtual {v11, v1, v2}, Landroid/animation/Animator;->setStartDelay(J)V

    goto :goto_10c

    :cond_10b
    move v5, v2

    :goto_10c
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v1, p1

    move v2, v5

    const/high16 v9, 0x3f800000    # 1.0f

    goto :goto_f7

    :cond_114
    move v5, v2

    .line 331
    iget-object v1, v0, Lcom/transsion/camera/app/ui/PopSettingUI;->mItemShowTranslateAnimatorList:Ljava/util/List;

    invoke-interface {v1, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x2

    .line 333
    new-array v2, v1, [F

    fill-array-data v2, :array_2f8

    invoke-static {v12, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    .line 334
    filled-new-array {v1}, [Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    invoke-static {v8, v1}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 335
    new-instance v2, Landroid/view/animation/PathInterpolator;

    const v4, 0x3dcccccd    # 0.1f

    const/high16 v12, 0x3f800000    # 1.0f

    invoke-direct {v2, v15, v10, v4, v12}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 336
    invoke-virtual {v1, v2}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    move-object v2, v11

    const-wide/16 v10, 0x15e

    .line 337
    invoke-virtual {v1, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move/from16 v12, v17

    .line 338
    :goto_141
    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v4

    if-ge v12, v4, :cond_151

    if-le v12, v9, :cond_14e

    .line 340
    iget-object v4, v0, Lcom/transsion/camera/app/ui/PopSettingUI;->mItemHideTranslateAnimatorList:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_14e
    add-int/lit8 v12, v12, 0x1

    goto :goto_141

    :cond_151
    const/4 v4, 0x2

    .line 344
    new-array v9, v4, [F

    fill-array-data v9, :array_300

    const-string v12, "scaleY"

    invoke-static {v12, v9}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v4

    .line 345
    filled-new-array {v4}, [Landroid/animation/PropertyValuesHolder;

    move-result-object v4

    invoke-static {v8, v4}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v9

    .line 346
    new-instance v4, Landroid/view/animation/PathInterpolator;

    const v15, 0x3ecccccd    # 0.4f

    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v11, 0x0

    invoke-direct {v4, v15, v11, v11, v10}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 347
    invoke-virtual {v9, v4}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v10, 0x15e

    .line 348
    invoke-virtual {v9, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 349
    iget-object v10, v0, Lcom/transsion/camera/app/ui/PopSettingUI;->mItemHideScaleAnimatorList:Ljava/util/List;

    invoke-interface {v10, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v10, 0x2

    .line 351
    new-array v11, v10, [F

    fill-array-data v11, :array_308

    invoke-static {v14, v11}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v10

    .line 352
    filled-new-array {v10}, [Landroid/animation/PropertyValuesHolder;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v10

    .line 353
    new-instance v11, Landroid/view/animation/PathInterpolator;

    move-object/from16 v19, v2

    move/from16 v20, v5

    const/high16 v2, 0x3f800000    # 1.0f

    const v4, 0x3dcccccd    # 0.1f

    const/4 v5, 0x0

    const v15, 0x3e4ccccd    # 0.2f

    invoke-direct {v11, v15, v5, v4, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 354
    invoke-virtual {v9, v11}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v4, 0x12c

    .line 355
    invoke-virtual {v9, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 356
    iget-object v2, v0, Lcom/transsion/camera/app/ui/PopSettingUI;->mTBItemHideAlphaAnimatorList:Ljava/util/List;

    invoke-interface {v2, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v4, 0x2

    .line 358
    new-array v2, v4, [F

    fill-array-data v2, :array_310

    invoke-static {v12, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    .line 359
    filled-new-array {v2}, [Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    invoke-static {v8, v2}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 360
    new-instance v4, Landroid/view/animation/PathInterpolator;

    const v5, 0x3ecccccd    # 0.4f

    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v11, 0x0

    invoke-direct {v4, v5, v11, v11, v10}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 361
    invoke-virtual {v2, v4}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v4, 0x15e

    .line 362
    invoke-virtual {v2, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 363
    iget-object v4, v0, Lcom/transsion/camera/app/ui/PopSettingUI;->mItemShowScaleAnimatorList:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    mul-int/lit16 v5, v13, 0xf0

    int-to-float v2, v5

    const/4 v10, 0x2

    .line 365
    new-array v4, v10, [F

    aput v11, v4, v17

    aput v2, v4, v16

    const-string/jumbo v2, "translationX"

    invoke-static {v2, v4}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    .line 366
    new-array v4, v10, [F

    fill-array-data v4, :array_318

    invoke-static {v14, v4}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v4

    .line 367
    filled-new-array {v4}, [Landroid/animation/PropertyValuesHolder;

    move-result-object v4

    invoke-static {v8, v4}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .line 368
    new-instance v12, Landroid/view/animation/PathInterpolator;

    const v4, 0x3dcccccd    # 0.1f

    const/high16 v10, 0x3f800000    # 1.0f

    const v15, 0x3e4ccccd    # 0.2f

    invoke-direct {v12, v15, v11, v4, v10}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 369
    invoke-virtual {v5, v12}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v10, 0x190

    .line 370
    invoke-virtual {v5, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 371
    iget-object v10, v0, Lcom/transsion/camera/app/ui/PopSettingUI;->mExpandItemShowTranslateAnimatorList:Ljava/util/List;

    invoke-interface {v10, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v10, 0x2

    .line 373
    new-array v5, v10, [F

    fill-array-data v5, :array_320

    const-string v10, "scaleX"

    invoke-static {v10, v5}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v5

    .line 374
    filled-new-array {v5}, [Landroid/animation/PropertyValuesHolder;

    move-result-object v5

    invoke-static {v8, v5}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .line 375
    new-instance v11, Landroid/view/animation/PathInterpolator;

    const v4, 0x3ecccccd    # 0.4f

    const/high16 v12, 0x3f800000    # 1.0f

    const/4 v15, 0x0

    invoke-direct {v11, v4, v15, v15, v12}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 376
    invoke-virtual {v5, v11}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v11, 0x15e

    .line 377
    invoke-virtual {v5, v11, v12}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 378
    iget-object v11, v0, Lcom/transsion/camera/app/ui/PopSettingUI;->mExpandItemShowScaleAnimatorList:Ljava/util/List;

    invoke-interface {v11, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v5, 0x2

    .line 380
    new-array v11, v5, [F

    fill-array-data v11, :array_328

    invoke-static {v2, v11}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    .line 381
    new-array v2, v5, [F

    fill-array-data v2, :array_330

    invoke-static {v14, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    .line 382
    filled-new-array {v2}, [Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    invoke-static {v8, v2}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 383
    new-instance v11, Landroid/view/animation/PathInterpolator;

    const v4, 0x3dcccccd    # 0.1f

    const/high16 v12, 0x3f800000    # 1.0f

    const/4 v14, 0x0

    const v15, 0x3e4ccccd    # 0.2f

    invoke-direct {v11, v15, v14, v4, v12}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 384
    invoke-virtual {v1, v11}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    move v4, v13

    const-wide/16 v12, 0x15e

    .line 385
    invoke-virtual {v1, v12, v13}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 386
    iget-object v1, v0, Lcom/transsion/camera/app/ui/PopSettingUI;->mExpandItemHideTranslateAnimatorList:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 388
    new-array v1, v5, [F

    fill-array-data v1, :array_338

    invoke-static {v10, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    .line 389
    filled-new-array {v1}, [Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    invoke-static {v8, v1}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 390
    new-instance v2, Landroid/view/animation/PathInterpolator;

    const v5, 0x3ecccccd    # 0.4f

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-direct {v2, v5, v14, v14, v10}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 391
    invoke-virtual {v9, v2}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 392
    invoke-virtual {v9, v12, v13}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 393
    iget-object v2, v0, Lcom/transsion/camera/app/ui/PopSettingUI;->mExpandItemHideScaleAnimatorList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 396
    iget-object v1, v0, Lcom/transsion/camera/app/ui/PopSettingUI;->mItemShowTranslateAnimatorList:Ljava/util/List;

    move-object/from16 v2, v19

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 397
    iget-object v1, v0, Lcom/transsion/camera/app/ui/PopSettingUI;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/transsion/camera/utils/FeatureSupport;->isSupportFoldUI(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2d1

    iget-object v1, v0, Lcom/transsion/camera/app/ui/PopSettingUI;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/transsion/camera/utils/FeatureSupport;->isOnlySupportTBHoverUI(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2d1

    iget-object v1, v0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopupOptionManager:Lcom/transsion/camera/app/ui/PopSettingPopupOptionManager;

    .line 398
    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/PopSettingPopupOptionManager;->getCurrentShowView()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2d1

    iget-object v1, v0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopupOptionManager:Lcom/transsion/camera/app/ui/PopSettingPopupOptionManager;

    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/PopSettingPopupOptionManager;->needShowPopUpOption()Z

    move-result v1

    if-eqz v1, :cond_2d1

    .line 399
    invoke-interface {v7, v8}, Lcom/transsion/camera/app/common/ui/setting/IPopSettingItemUI;->onEntryViewClick(Landroid/view/View;)V

    .line 400
    iget-object v1, v0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopupOptionManager:Lcom/transsion/camera/app/ui/PopSettingPopupOptionManager;

    move/from16 v2, v17

    invoke-virtual {v1, v2}, Lcom/transsion/camera/app/ui/PopSettingPopupOptionManager;->setNeedShowPopUpOption(Z)V

    goto :goto_2d3

    :cond_2d1
    move/from16 v2, v17

    :goto_2d3
    add-int/lit8 v5, v4, 0x1

    move-object/from16 v1, p1

    move/from16 v2, v20

    goto/16 :goto_4f

    .line 404
    :cond_2db
    iput-object v3, v0, Lcom/transsion/camera/app/ui/PopSettingUI;->mViewMap:Ljava/util/Map;

    .line 405
    iget-object v1, v0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopSettingContainer:Lcom/transsion/camera/app/ui/popsetting/PopSettingContainer;

    .line 406
    invoke-virtual {v1, v3}, Lcom/transsion/camera/app/ui/popsetting/PopSettingContainer;->updatePopSetting(Ljava/util/Map;)V

    .line 407
    iget v1, v0, Lcom/transsion/camera/app/ui/PopSettingUI;->mOrientation:I

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/PopSettingUI;->updateLayoutParams(I)V

    return-void

    :array_2e8
    .array-data 4
        0x41f00000    # 30.0f
        0x0
    .end array-data

    :array_2f0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_2f8
    .array-data 4
        0x0
        0x41f00000    # 30.0f
    .end array-data

    :array_300
    .array-data 4
        0x3f800000    # 1.0f
        0x3faa3d71    # 1.33f
    .end array-data

    :array_308
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_310
    .array-data 4
        0x3f99999a    # 1.2f
        0x3f800000    # 1.0f
    .end array-data

    :array_318
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_320
    .array-data 4
        0x3f99999a    # 1.2f
        0x3f800000    # 1.0f
    .end array-data

    :array_328
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_330
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_338
    .array-data 4
        0x3f800000    # 1.0f
        0x3faa3d71    # 1.33f
    .end array-data
.end method

.method public updatePopSettingUIList(Ljava/util/List;)V
    .registers 4

    .line 707
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

    .line 709
    invoke-interface {v1}, Lcom/transsion/camera/app/common/ui/setting/IPopSettingItemUI;->updateSupportEntries()V

    goto :goto_4

    .line 712
    :cond_16
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/PopSettingUI;->updatePopSettingLayout(Ljava/util/List;)V

    return-void
.end method

.method public updateTreasureBoxBG(Ljava/lang/String;Z)V
    .registers 6

    .line 2225
    iget-object v0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopupOption:Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;

    if-eqz v0, :cond_3b

    iget-object v0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopSettingItemUIs:Ljava/util/List;

    if-eqz v0, :cond_3b

    if-nez p1, :cond_1d

    .line 2227
    new-instance p1, Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-static {}, Lcom/transsion/camera/app_info/AppInfo;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/transsion/camera/app/common/storage/DataStore;-><init>(Landroid/content/Context;)V

    .line 2228
    const-string v0, "4:3"

    const-string v1, "_global_scope"

    const-string v2, "key_picture_ratio"

    invoke-virtual {p1, v2, v0, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2231
    :cond_1d
    iget-object v0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopupOption:Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopBackView:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1}, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->updateItemBackground(Lcom/transsion/camera/app/ui/widget/RotateImageView;Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 2232
    iget-object p0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopSettingItemUIs:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2b
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/common/ui/setting/IPopSettingItemUI;

    .line 2233
    invoke-interface {v0, p1, p2}, Lcom/transsion/camera/app/common/ui/setting/IPopSettingItemUI;->updateTreasureBoxItemBackground(Ljava/lang/String;Z)V

    goto :goto_2b

    :cond_3b
    return-void
.end method

.method protected updateTreasureBoxBackground(I)V
    .registers 3

    .line 1553
    iget-object v0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mTreasureBoxBackground:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_14

    iget-object p0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz p0, :cond_14

    .line 1554
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroid/widget/FrameLayout$LayoutParams;

    .line 1555
    iput p1, p0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    const/16 p1, 0x50

    .line 1556
    iput p1, p0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    :cond_14
    return-void
.end method
