.class public Lcom/transsion/camera/app/ui/anim/AnimationManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/IAppUIListener$IPreviewRectListener;
.implements Lcom/transsion/camera/app/common/IPrivacyCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/ui/anim/AnimationManager$AnimationHandler;
    }
.end annotation


# static fields
.field private static final ACTION_HIDE_ANIM_DELAY_MS_MAP:Ljava/util/HashMap;

.field private static final ACTION_HIDE_ANIM_TYPE_MAP:Ljava/util/HashMap;

.field private static final ACTION_SHOW_ANIM_TYPE_MAP:Ljava/util/HashMap;

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mAnimationCount:I

.field private mAnimatorSwitchViewFadeAway:Landroid/animation/Animator;

.field private mAppUI:Lcom/transsion/camera/app/common/IAppUI;

.field private mCachedFlipAnimator:Landroid/animation/Animator;

.field private final mContext:Landroid/content/Context;

.field private mCurrentFlipPreviewView:Landroid/view/View;

.field protected mCurrentMode:Ljava/lang/String;

.field private mEnableStartBlur:Z

.field private volatile mFadeSwitchAnimState:I

.field private final mFlipAnimListener:Landroid/animation/Animator$AnimatorListener;

.field private mFlipAnimator:Landroid/animation/Animator;

.field private mGoingToGallery:Z

.field private mHandler:Landroid/os/Handler;

.field private final mIModuleTransfer:Lcom/transsion/camera/app/common/IModuleTransfer;

.field private volatile mIsAnimating:Z

.field private mIsPreviewBitmapCache:Z

.field private volatile mIsPreviewRendered:Z

.field private mIsSupportHideCoverAnimation:Z

.field private mIsSwitchAnim:Z

.field private mNeedBuildBlurCover:Z

.field private mNeedRectChangedAnim:Z

.field private volatile mNeedWideScaleAnim:Z

.field private mNextCameraId:Ljava/lang/String;

.field private mOldValue:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mPreCameraId:Ljava/lang/String;

.field private mPreMode:Ljava/lang/String;

.field private mPreviewBitmapCache:Landroid/graphics/Bitmap;

.field private mPreviewController:Lcom/transsion/camera/app/ui/preview/IPreviewController;

.field protected mPreviewRect:Landroid/graphics/Rect;

.field private final mPreviewRenderCallback:Lcom/transsion/camera/app/common/preview/IPreviewRenderedCallbacker;

.field private mRectAnimGeneration:I

.field private mRingScreenLightResponder:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

.field private mRootView:Landroid/view/View;

.field private mScreenFormType:I

.field private final mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

.field private mScreenSupplyColor:I

.field private mSlipStatus:Ljava/lang/String;

.field private final mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

.field private mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

.field private mSwitchAnimStart:Z

.field protected mSwitchAnimView:Lcom/transsion/camera/app/ui/view/SwitchAnimView;

.field private mUnifyCaptureAnimation:Z

.field private mViewSwitcherRoot:Lcom/transsion/camera/app/ui/view/ViewSwitcher;

.field private mViewSwitcherRootState:Lcom/transsion/camera/app/common/ui/helper/ViewState;


# direct methods
.method public static synthetic $r8$lambda$-xt6p6UWipzbpd9VDJ8wAxKefGo(Lcom/transsion/camera/app/ui/view/SwitchAnimView;)V
    .registers 2

    .line 1244
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->setMaxRenderEffect()V

    const/4 v0, 0x0

    .line 1245
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->setVisibility(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$4AMWiPdc4AFLji2JU_ECEiX9u94(Lcom/transsion/camera/app/ui/anim/AnimationManager;IILjava/lang/Boolean;)Ljava/lang/Boolean;
    .registers 4

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/camera/app/ui/anim/AnimationManager;->lambda$judgePlayFadeSwitchAnim$4(IILjava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$CDPldOEw-UC4pQ6pWogBJXSYhik(Lcom/transsion/camera/app/ui/view/SwitchAnimView;)V
    .registers 2

    .line 1235
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->setMaxRenderEffect()V

    const/4 v0, 0x0

    .line 1236
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->setVisibility(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$QhQXSVg_oe3IyDuIfRJKa8IIQrw(Lcom/transsion/camera/app/ui/view/SwitchAnimView;)V
    .registers 2

    const/4 v0, 0x4

    .line 440
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->setVisibility(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$QxiW4NzY2xuNPHGovJHi10vkM3s(Lcom/transsion/camera/app/ui/anim/AnimationManager;Z)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/anim/AnimationManager;->lambda$new$3(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$_UUOJnIvlWCtmu-cFdg0hgjJEhc(Lcom/transsion/camera/app/ui/anim/AnimationManager;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/ui/anim/AnimationManager;->lambda$new$0(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$hysKXjk9lO4C0UKmlqCUi6icotk(Lcom/transsion/camera/app/ui/view/SwitchAnimView;)V
    .registers 2

    const/4 v0, 0x4

    .line 480
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->setVisibility(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$khhxghCOKgpZMbEHpYUhDFKSMig(Lcom/transsion/camera/app/ui/anim/AnimationManager;Ljava/lang/Boolean;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/anim/AnimationManager;->lambda$judgePlayFadeSwitchAnim$5(Ljava/lang/Boolean;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmAppUI(Lcom/transsion/camera/app/ui/anim/AnimationManager;)Lcom/transsion/camera/app/common/IAppUI;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCurrentFlipPreviewView(Lcom/transsion/camera/app/ui/anim/AnimationManager;)Landroid/view/View;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mCurrentFlipPreviewView:Landroid/view/View;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsPreviewRendered(Lcom/transsion/camera/app/ui/anim/AnimationManager;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mIsPreviewRendered:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmNeedRectChangedAnim(Lcom/transsion/camera/app/ui/anim/AnimationManager;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mNeedRectChangedAnim:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmNeedWideScaleAnim(Lcom/transsion/camera/app/ui/anim/AnimationManager;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mNeedWideScaleAnim:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmPreviewController(Lcom/transsion/camera/app/ui/anim/AnimationManager;)Lcom/transsion/camera/app/ui/preview/IPreviewController;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mPreviewController:Lcom/transsion/camera/app/ui/preview/IPreviewController;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmRootView(Lcom/transsion/camera/app/ui/anim/AnimationManager;)Landroid/view/View;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mRootView:Landroid/view/View;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSwitchAnimStart(Lcom/transsion/camera/app/ui/anim/AnimationManager;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mSwitchAnimStart:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmViewSwitcherRoot(Lcom/transsion/camera/app/ui/anim/AnimationManager;)Lcom/transsion/camera/app/ui/view/ViewSwitcher;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mViewSwitcherRoot:Lcom/transsion/camera/app/ui/view/ViewSwitcher;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmIsPreviewRendered(Lcom/transsion/camera/app/ui/anim/AnimationManager;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mIsPreviewRendered:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIsSwitchAnim(Lcom/transsion/camera/app/ui/anim/AnimationManager;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mIsSwitchAnim:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmSwitchAnimStart(Lcom/transsion/camera/app/ui/anim/AnimationManager;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mSwitchAnimStart:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmViewSwitcherRoot(Lcom/transsion/camera/app/ui/anim/AnimationManager;Lcom/transsion/camera/app/ui/view/ViewSwitcher;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mViewSwitcherRoot:Lcom/transsion/camera/app/ui/view/ViewSwitcher;

    return-void
.end method

.method static bridge synthetic -$$Nest$manimationHidePreviewCover(Lcom/transsion/camera/app/ui/anim/AnimationManager;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/anim/AnimationManager;->animationHidePreviewCover()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mdrawBlackPreviewCover(Lcom/transsion/camera/app/ui/anim/AnimationManager;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/anim/AnimationManager;->drawBlackPreviewCover()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mfadeOutPreviewCover(Lcom/transsion/camera/app/ui/anim/AnimationManager;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/anim/AnimationManager;->fadeOutPreviewCover()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhidePreviewCover(Lcom/transsion/camera/app/ui/anim/AnimationManager;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/anim/AnimationManager;->hidePreviewCover()V

    return-void
.end method

.method static bridge synthetic -$$Nest$misNeedSwitchAnim(Lcom/transsion/camera/app/ui/anim/AnimationManager;)Z
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/anim/AnimationManager;->isNeedSwitchAnim()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$misSwitchAnimNeedDoubleFrame(Lcom/transsion/camera/app/ui/anim/AnimationManager;)Z
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/anim/AnimationManager;->isSwitchAnimNeedDoubleFrame()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$misSwitchAnimTypeGoToGallery(Lcom/transsion/camera/app/ui/anim/AnimationManager;)Z
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/anim/AnimationManager;->isSwitchAnimTypeGoToGallery()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$monRectAnimFinish(Lcom/transsion/camera/app/ui/anim/AnimationManager;I)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/anim/AnimationManager;->onRectAnimFinish(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mstartFadeSwitchAnim(Lcom/transsion/camera/app/ui/anim/AnimationManager;Z)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/anim/AnimationManager;->startFadeSwitchAnim(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mstartFlipHideCoverAnim(Lcom/transsion/camera/app/ui/anim/AnimationManager;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/anim/AnimationManager;->startFlipHideCoverAnim()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mstartWideAnim(Lcom/transsion/camera/app/ui/anim/AnimationManager;Z)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/anim/AnimationManager;->startWideAnim(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateBlurBitmap(Lcom/transsion/camera/app/ui/anim/AnimationManager;Landroid/view/View;Lcom/transsion/camera/app/common/preview/IPreviewOperator;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/ui/anim/AnimationManager;->updateBlurBitmap(Landroid/view/View;Lcom/transsion/camera/app/common/preview/IPreviewOperator;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;
    .registers 1

    .line 0
    sget-object v0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 73
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "AnimationManager"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    .line 182
    new-instance v0, Lcom/transsion/camera/app/ui/anim/AnimationManager$2;

    invoke-direct {v0}, Lcom/transsion/camera/app/ui/anim/AnimationManager$2;-><init>()V

    sput-object v0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->ACTION_SHOW_ANIM_TYPE_MAP:Ljava/util/HashMap;

    .line 203
    new-instance v0, Lcom/transsion/camera/app/ui/anim/AnimationManager$3;

    invoke-direct {v0}, Lcom/transsion/camera/app/ui/anim/AnimationManager$3;-><init>()V

    sput-object v0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->ACTION_HIDE_ANIM_TYPE_MAP:Ljava/util/HashMap;

    .line 217
    new-instance v0, Lcom/transsion/camera/app/ui/anim/AnimationManager$4;

    invoke-direct {v0}, Lcom/transsion/camera/app/ui/anim/AnimationManager$4;-><init>()V

    sput-object v0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->ACTION_HIDE_ANIM_DELAY_MS_MAP:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Lcom/transsion/camera/app/ui/ScreenManager;)V
    .registers 5

    .line 259
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 99
    iput v0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mAnimationCount:I

    .line 100
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mIsAnimating:Z

    .line 101
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mNeedWideScaleAnim:Z

    .line 102
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mIsPreviewRendered:Z

    .line 103
    iput v0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mFadeSwitchAnimState:I

    .line 104
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mNeedRectChangedAnim:Z

    .line 105
    iput v0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mRectAnimGeneration:I

    .line 110
    iput v0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mScreenFormType:I

    .line 115
    const-string v1, "com.transsion.camera.feature.mode.autoscenedetection.ASDModeEntry"

    iput-object v1, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mCurrentMode:Ljava/lang/String;

    .line 116
    const-string v1, ""

    iput-object v1, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mPreMode:Ljava/lang/String;

    .line 118
    const-string v1, "0"

    iput-object v1, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mPreCameraId:Ljava/lang/String;

    .line 120
    iput-object v1, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mNextCameraId:Ljava/lang/String;

    .line 124
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mSwitchAnimStart:Z

    .line 125
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mIsSwitchAnim:Z

    const/4 v1, 0x0

    .line 127
    iput-object v1, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mAnimatorSwitchViewFadeAway:Landroid/animation/Animator;

    .line 128
    iput-object v1, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mFlipAnimator:Landroid/animation/Animator;

    .line 129
    iput-object v1, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mCachedFlipAnimator:Landroid/animation/Animator;

    .line 134
    iput-object v1, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mPreviewBitmapCache:Landroid/graphics/Bitmap;

    .line 137
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mPreviewRect:Landroid/graphics/Rect;

    .line 138
    new-instance v1, Lcom/transsion/camera/app/ui/anim/AnimationManager$AnimationHandler;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/ui/anim/AnimationManager$AnimationHandler;-><init>(Lcom/transsion/camera/app/ui/anim/AnimationManager;)V

    iput-object v1, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mHandler:Landroid/os/Handler;

    .line 139
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mOldValue:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 141
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mUnifyCaptureAnimation:Z

    .line 146
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v1

    iget-boolean v1, v1, Lcom/transsion/camera/utils/CustomConfigUtil;->mEnableStartBlur:Z

    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mEnableStartBlur:Z

    .line 150
    new-instance v1, Lcom/transsion/camera/app/ui/anim/AnimationManager$1;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/ui/anim/AnimationManager$1;-><init>(Lcom/transsion/camera/app/ui/anim/AnimationManager;)V

    iput-object v1, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mPreviewRenderCallback:Lcom/transsion/camera/app/common/preview/IPreviewRenderedCallbacker;

    .line 290
    const-string v1, "slip_ide"

    iput-object v1, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mSlipStatus:Ljava/lang/String;

    .line 291
    new-instance v1, Lcom/transsion/camera/app/ui/anim/AnimationManager$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/ui/anim/AnimationManager$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/app/ui/anim/AnimationManager;)V

    iput-object v1, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    .line 692
    new-instance v1, Lcom/transsion/camera/app/ui/anim/AnimationManager$7;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/ui/anim/AnimationManager$7;-><init>(Lcom/transsion/camera/app/ui/anim/AnimationManager;)V

    iput-object v1, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mFlipAnimListener:Landroid/animation/Animator$AnimatorListener;

    .line 1051
    new-instance v1, Lcom/transsion/camera/app/ui/anim/AnimationManager$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/ui/anim/AnimationManager$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/app/ui/anim/AnimationManager;)V

    iput-object v1, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mIModuleTransfer:Lcom/transsion/camera/app/common/IModuleTransfer;

    .line 260
    iput-object p2, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    .line 261
    invoke-virtual {p2}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenFormType()I

    move-result p2

    iput p2, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mScreenFormType:I

    .line 262
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mContext:Landroid/content/Context;

    .line 263
    iput-object p1, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mRootView:Landroid/view/View;

    .line 265
    sget p1, Lcom/transsion/camera/R$color;->screen_supply_color:I

    invoke-virtual {p2, p1}, Landroid/content/Context;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mScreenSupplyColor:I

    .line 266
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/anim/AnimationManager;->screenPocket()Z

    move-result p1

    if-nez p1, :cond_93

    .line 267
    invoke-static {}, Lcom/transsion/camera/app/common/ModuleTransferManager;->getTransferManager()Lcom/transsion/camera/app/common/ModuleTransferManager;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/transsion/camera/app/common/ModuleTransferManager;->registerTransferListener(Lcom/transsion/camera/app/common/IModuleTransfer;)V

    .line 269
    :cond_93
    iget-object p1, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mOldValue:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const/4 p1, 0x1

    .line 270
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mNeedBuildBlurCover:Z

    .line 271
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/transsion/camera/R$bool;->unify_capture_animation:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mUnifyCaptureAnimation:Z

    .line 272
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p1

    iget-boolean p1, p1, Lcom/transsion/camera/utils/CustomConfigUtil;->mIsSupportHideCoverAnimation:Z

    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mIsSupportHideCoverAnimation:Z

    return-void
.end method

.method private animationHidePreviewCover()V
    .registers 4

    .line 637
    sget-object v0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "animationHidePreviewCover"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 638
    invoke-static {v1}, Lcom/transsion/camera/utils/debug/TraceUtil;->begin(Ljava/lang/String;)V

    .line 639
    iget-object v1, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mViewSwitcherRoot:Lcom/transsion/camera/app/ui/view/ViewSwitcher;

    invoke-virtual {v1}, Landroid/view/View;->clearAnimation()V

    .line 640
    iget-object v1, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mSwitchAnimView:Lcom/transsion/camera/app/ui/view/SwitchAnimView;

    invoke-virtual {v1}, Landroid/view/View;->clearAnimation()V

    .line 641
    iget-object v1, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mSwitchAnimView:Lcom/transsion/camera/app/ui/view/SwitchAnimView;

    const/high16 v2, -0x1000000

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 642
    iget-object v1, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mSwitchAnimView:Lcom/transsion/camera/app/ui/view/SwitchAnimView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->setVisibility(I)V

    .line 643
    iget-object v1, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mSwitchAnimView:Lcom/transsion/camera/app/ui/view/SwitchAnimView;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 644
    iget-object v1, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mViewSwitcherRoot:Lcom/transsion/camera/app/ui/view/ViewSwitcher;

    invoke-virtual {v1, v2}, Landroid/view/View;->setScaleX(F)V

    .line 645
    iget-object v1, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mViewSwitcherRoot:Lcom/transsion/camera/app/ui/view/ViewSwitcher;

    invoke-virtual {v1, v2}, Landroid/view/View;->setScaleY(F)V

    .line 646
    iget-object v1, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mSwitchAnimView:Lcom/transsion/camera/app/ui/view/SwitchAnimView;

    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->clear()V

    const/4 v1, 0x0

    .line 647
    iput v1, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mAnimationCount:I

    .line 648
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mIsAnimating:Z

    .line 649
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mNeedWideScaleAnim:Z

    .line 650
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mNeedRectChangedAnim:Z

    .line 651
    iget-object v2, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mFlipAnimator:Landroid/animation/Animator;

    if-eqz v2, :cond_47

    .line 652
    invoke-virtual {v2}, Landroid/animation/Animator;->removeAllListeners()V

    .line 654
    :cond_47
    iget-object v2, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mAnimatorSwitchViewFadeAway:Landroid/animation/Animator;

    if-eqz v2, :cond_4e

    .line 655
    invoke-virtual {v2}, Landroid/animation/Animator;->removeAllListeners()V

    .line 657
    :cond_4e
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mIsSwitchAnim:Z

    .line 658
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/anim/AnimationManager;->releaseBlurBitmap()V

    .line 659
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/anim/AnimationManager;->clearFadeSwitchAnimState()V

    .line 661
    invoke-static {}, Lcom/transsion/camera/utils/dfx/mgr/ExManager;->get()Lcom/transsion/camera/utils/dfx/inter/IExDetection;

    move-result-object p0

    const/16 v1, 0x3ea

    invoke-interface {p0, v1}, Lcom/transsion/camera/utils/dfx/inter/IPerformanceDfx;->onActionEnd(I)V

    .line 662
    invoke-static {}, Lcom/transsion/camera/utils/debug/TraceUtil;->end()V

    .line 663
    const-string p0, "[PreviewPerformance] animationHidePreviewCover Done."

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private cacheBlurBitmap(Z)V
    .registers 9

    .line 836
    iget-object v0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mPreviewController:Lcom/transsion/camera/app/ui/preview/IPreviewController;

    if-eqz v0, :cond_83

    .line 837
    invoke-interface {v0}, Lcom/transsion/camera/app/ui/preview/IPreviewController;->getPreviewOperator()Lcom/transsion/camera/app/common/preview/IPreviewOperator;

    move-result-object v0

    .line 838
    iget-object v1, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mPreviewController:Lcom/transsion/camera/app/ui/preview/IPreviewController;

    invoke-interface {v1}, Lcom/transsion/camera/app/ui/preview/IPreviewController;->getPreviewView()Landroid/view/View;

    move-result-object v1

    .line 839
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v2

    .line 840
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 841
    sget-object v3, Lcom/transsion/camera/app/ui/anim/AnimationManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " updateBlurBitmap width = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " height = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-eqz v0, :cond_83

    .line 842
    iget-object v4, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mSwitchAnimView:Lcom/transsion/camera/app/ui/view/SwitchAnimView;

    if-eqz v4, :cond_83

    if-lez v2, :cond_83

    if-lez v1, :cond_83

    .line 843
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 844
    iget-boolean v6, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mEnableStartBlur:Z

    if-eqz v6, :cond_4b

    if-nez p1, :cond_4b

    const/16 p1, 0x8

    goto :goto_51

    :cond_4b
    iget-object v6, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mSwitchAnimView:Lcom/transsion/camera/app/ui/view/SwitchAnimView;

    invoke-virtual {v6, p1}, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->getPreferFactor(Z)I

    move-result p1

    .line 845
    :goto_51
    invoke-interface {v0, v2, v1, p1}, Lcom/transsion/camera/app/common/preview/IPreviewOperator;->getBitmap(III)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mPreviewBitmapCache:Landroid/graphics/Bitmap;

    .line 846
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateBlurBitmap getPreview-cache factor: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", bitmap spent time: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 847
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sub-long/2addr v1, v4

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " cacheBitmap = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mPreviewBitmapCache:Landroid/graphics/Bitmap;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 846
    invoke-static {v3, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :cond_83
    return-void
.end method

.method private static calculateAODDVVisibleArea(Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .registers 6

    .line 416
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x3f100000    # 0.5625f

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    float-to-int v0, v0

    .line 417
    new-instance v1, Landroid/graphics/Rect;

    iget v2, p0, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v0

    iget v3, p0, Landroid/graphics/Rect;->top:I

    iget v4, p0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v4, v0

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    invoke-direct {v1, v2, v3, v4, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v1
.end method

.method private cancelFlipAnim()V
    .registers 3

    .line 771
    sget-object v0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "cancelFlipAnim"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 772
    iget-object v0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mFlipAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_e

    .line 773
    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 775
    :cond_e
    iget-object p0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mAnimatorSwitchViewFadeAway:Landroid/animation/Animator;

    if-eqz p0, :cond_15

    .line 776
    invoke-virtual {p0}, Landroid/animation/Animator;->cancel()V

    :cond_15
    return-void
.end method

.method private changeFadeSwitchAnimState(IZ)V
    .registers 4

    .line 1222
    iget v0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mFadeSwitchAnimState:I

    if-nez p2, :cond_6

    or-int/2addr p1, v0

    goto :goto_8

    :cond_6
    not-int p1, p1

    and-int/2addr p1, v0

    .line 1228
    :goto_8
    iput p1, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mFadeSwitchAnimState:I

    return-void
.end method

.method private clearFadeSwitchAnimState()V
    .registers 3

    .line 1209
    sget-object v0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "clearFadeSwitchAnimState: "

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/16 v0, 0x40

    const/4 v1, 0x1

    .line 1210
    invoke-direct {p0, v0, v1}, Lcom/transsion/camera/app/ui/anim/AnimationManager;->changeFadeSwitchAnimState(IZ)V

    const/16 v0, 0x80

    .line 1211
    invoke-direct {p0, v0, v1}, Lcom/transsion/camera/app/ui/anim/AnimationManager;->changeFadeSwitchAnimState(IZ)V

    const/4 v0, 0x2

    .line 1212
    invoke-direct {p0, v0, v1}, Lcom/transsion/camera/app/ui/anim/AnimationManager;->changeFadeSwitchAnimState(IZ)V

    const/16 v0, 0x100

    .line 1213
    invoke-direct {p0, v0, v1}, Lcom/transsion/camera/app/ui/anim/AnimationManager;->changeFadeSwitchAnimState(IZ)V

    .line 1214
    invoke-direct {p0, v1, v1}, Lcom/transsion/camera/app/ui/anim/AnimationManager;->changeFadeSwitchAnimState(IZ)V

    const/4 v0, 0x4

    .line 1215
    invoke-direct {p0, v0, v1}, Lcom/transsion/camera/app/ui/anim/AnimationManager;->changeFadeSwitchAnimState(IZ)V

    const/16 v0, 0x8

    .line 1216
    invoke-direct {p0, v0, v1}, Lcom/transsion/camera/app/ui/anim/AnimationManager;->changeFadeSwitchAnimState(IZ)V

    const/16 v0, 0x20

    .line 1217
    invoke-direct {p0, v0, v1}, Lcom/transsion/camera/app/ui/anim/AnimationManager;->changeFadeSwitchAnimState(IZ)V

    const/16 v0, 0x800

    .line 1218
    invoke-direct {p0, v0, v1}, Lcom/transsion/camera/app/ui/anim/AnimationManager;->changeFadeSwitchAnimState(IZ)V

    return-void
.end method

.method private drawBlackPreviewCover()V
    .registers 3

    .line 969
    iget v0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mAnimationCount:I

    if-lez v0, :cond_9

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mIsAnimating:Z

    if-eqz v0, :cond_9

    goto :goto_21

    .line 970
    :cond_9
    iget-object v0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mSwitchAnimView:Lcom/transsion/camera/app/ui/view/SwitchAnimView;

    if-eqz v0, :cond_21

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_21

    .line 971
    iget-object v0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mSwitchAnimView:Lcom/transsion/camera/app/ui/view/SwitchAnimView;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 972
    iget-object p0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mSwitchAnimView:Lcom/transsion/camera/app/ui/view/SwitchAnimView;

    sget v0, Lcom/transsion/camera/R$color;->preview_cover_default_color:I

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->setSwitchAnimInfo(I)V

    :cond_21
    :goto_21
    return-void
.end method

.method private fadeOutPreviewCover()V
    .registers 4

    .line 946
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v1, 0x5a

    .line 947
    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 948
    new-instance v1, Lcom/transsion/camera/app/ui/anim/AnimationManager$9;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/ui/anim/AnimationManager$9;-><init>(Lcom/transsion/camera/app/ui/anim/AnimationManager;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 965
    iget-object p0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mSwitchAnimView:Lcom/transsion/camera/app/ui/view/SwitchAnimView;

    invoke-virtual {p0, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method private getCurrentMode()Ljava/lang/String;
    .registers 2

    .line 390
    iget-object v0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/IAppUI;->getCurrentModeSettingUISpec()Lcom/transsion/camera/app/common/ModeSettingUISpec;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 391
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 392
    :cond_d
    iget-object p0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mCurrentMode:Ljava/lang/String;

    return-object p0
.end method

.method private getIsSuportFilpAnimation()Z
    .registers 3

    .line 1061
    invoke-static {}, Lcom/transsion/camera/app/ui/anim/AnimationManager;->getPersistFlipFromProperty()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 1064
    :cond_8
    iget-object p0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/transsion/camera/R$bool;->camera_switch_flip:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    const/4 v0, 0x1

    if-nez p0, :cond_1f

    .line 1065
    invoke-static {}, Lcom/transsion/camera/app/ui/anim/AnimationManager;->getPersistFlipFromProperty()I

    move-result p0

    if-ne p0, v0, :cond_1e

    goto :goto_1f

    :cond_1e
    return v1

    :cond_1f
    :goto_1f
    return v0
.end method

.method private static getPersistFlipFromProperty()I
    .registers 2

    .line 1082
    const-string v0, "debug.camera.switchflip"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private hidePreviewCover()V
    .registers 5

    .line 902
    iget v0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mAnimationCount:I

    if-lez v0, :cond_8

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mIsAnimating:Z

    if-nez v0, :cond_12

    :cond_8
    iget-object v0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mSlipStatus:Ljava/lang/String;

    const-string v1, "slip_ide"

    .line 903
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3f

    .line 904
    :cond_12
    sget-object v0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hidePreviewCover mAnimationCount = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mAnimationCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mIsAnimating:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mIsAnimating:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mSlipStatus:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mSlipStatus:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 908
    :cond_3f
    iget-object v0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mSwitchAnimView:Lcom/transsion/camera/app/ui/view/SwitchAnimView;

    if-eqz v0, :cond_53

    .line 909
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 910
    instance-of v0, v0, Landroid/animation/Animator;

    if-eqz v0, :cond_53

    .line 911
    sget-object p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "hidePreviewCover: mFadeBlurAnimator is not finish."

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 915
    :cond_53
    sget-object v0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hidePreviewCover switchAnimView = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mSwitchAnimView:Lcom/transsion/camera/app/ui/view/SwitchAnimView;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 916
    iget-object v1, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mSwitchAnimView:Lcom/transsion/camera/app/ui/view/SwitchAnimView;

    const/4 v2, 0x0

    if-eqz v1, :cond_b8

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_b8

    .line 917
    const-string v1, "hidePreviewCover"

    invoke-static {v1}, Lcom/transsion/camera/utils/debug/TraceUtil;->begin(Ljava/lang/String;)V

    .line 918
    iget-boolean v1, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mIsSwitchAnim:Z

    if-eqz v1, :cond_8d

    .line 919
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mSwitchAnimStart:Z

    if-eqz v0, :cond_86

    .line 920
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mSwitchAnimStart:Z

    goto :goto_89

    .line 922
    :cond_86
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/anim/AnimationManager;->startFlipHideCoverAnim()V

    .line 924
    :goto_89
    invoke-static {}, Lcom/transsion/camera/utils/debug/TraceUtil;->end()V

    return-void

    .line 927
    :cond_8d
    iget-object v1, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mSwitchAnimView:Lcom/transsion/camera/app/ui/view/SwitchAnimView;

    invoke-virtual {v1}, Landroid/view/View;->clearAnimation()V

    .line 928
    iget-object v1, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mSwitchAnimView:Lcom/transsion/camera/app/ui/view/SwitchAnimView;

    const/high16 v3, -0x1000000

    invoke-virtual {v1, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 929
    iget-object v1, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mSwitchAnimView:Lcom/transsion/camera/app/ui/view/SwitchAnimView;

    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->setVisibility(I)V

    .line 930
    iget-object v1, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mSwitchAnimView:Lcom/transsion/camera/app/ui/view/SwitchAnimView;

    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->clear()V

    .line 931
    invoke-static {}, Lcom/transsion/camera/utils/dfx/mgr/ExManager;->get()Lcom/transsion/camera/utils/dfx/inter/IExDetection;

    move-result-object v1

    const/16 v3, 0x3eb

    invoke-interface {v1, v3}, Lcom/transsion/camera/utils/dfx/inter/IPerformanceDfx;->onActionEnd(I)V

    .line 932
    invoke-static {}, Lcom/transsion/camera/utils/debug/TraceUtil;->end()V

    .line 933
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/anim/AnimationManager;->releaseBlurBitmap()V

    .line 934
    const-string v1, "[PreviewPerformance] hidePreviewCover Done."

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 937
    :cond_b8
    iput v2, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mAnimationCount:I

    .line 938
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mIsAnimating:Z

    .line 939
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mNeedWideScaleAnim:Z

    .line 940
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mNeedRectChangedAnim:Z

    .line 941
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mIsPreviewRendered:Z

    .line 942
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/anim/AnimationManager;->clearFadeSwitchAnimState()V

    return-void
.end method

.method private isNeedFadeBlurAnim(II)Z
    .registers 7

    .line 1087
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportUI4Animator:Z

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return v1

    .line 1090
    :cond_a
    sget-object v0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isNeedFadeBlurAnim: action = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/transsion/camera/app/common/mode/CameraOperateAction;->actionToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", type = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x1

    if-ne p2, v0, :cond_37

    if-nez p1, :cond_37

    .line 1092
    invoke-direct {p0, p2}, Lcom/transsion/camera/app/ui/anim/AnimationManager;->isNeedFlipAnim(I)Z

    move-result p0

    xor-int/2addr p0, v0

    return p0

    :cond_37
    const/4 v2, 0x2

    if-ne p2, v2, :cond_3c

    if-eq p1, v2, :cond_5e

    :cond_3c
    const/4 v2, 0x4

    if-ne p2, v2, :cond_41

    if-eq p1, v2, :cond_5e

    :cond_41
    const/16 v2, 0x8

    if-ne p2, v2, :cond_4e

    const/4 v2, 0x6

    if-ne p1, v2, :cond_4e

    .line 1097
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/anim/AnimationManager;->isSwitchAnimByVideoQualityChangeEnable()Z

    move-result p0

    if-nez p0, :cond_5e

    :cond_4e
    const/16 p0, 0x20

    if-ne p2, p0, :cond_56

    const/16 p0, 0x12f

    if-eq p1, p0, :cond_5e

    :cond_56
    const/16 p0, 0x800

    if-ne p2, p0, :cond_5f

    const/16 p0, 0x1c

    if-ne p1, p0, :cond_5f

    :cond_5e
    return v0

    :cond_5f
    return v1
.end method

.method private isNeedFlipAnim(I)Z
    .registers 6

    .line 1104
    sget-object v0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startPreviewCoverAnim mPreCameraId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mPreCameraId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", mNextCameraId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mNextCameraId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1105
    iget-object v0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mPreCameraId:Ljava/lang/String;

    invoke-static {v0}, Lcom/transsion/camera/adapter/CameraInfoUtil;->isCameraFacingBack(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_34

    iget-object v0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mNextCameraId:Ljava/lang/String;

    invoke-static {v0}, Lcom/transsion/camera/adapter/CameraInfoUtil;->isCameraFacingFront(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_44

    :cond_34
    iget-object v0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mNextCameraId:Ljava/lang/String;

    .line 1106
    invoke-static {v0}, Lcom/transsion/camera/adapter/CameraInfoUtil;->isCameraFacingBack(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_46

    iget-object v0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mPreCameraId:Ljava/lang/String;

    invoke-static {v0}, Lcom/transsion/camera/adapter/CameraInfoUtil;->isCameraFacingFront(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_46

    :cond_44
    move v0, v2

    goto :goto_47

    :cond_46
    move v0, v1

    .line 1107
    :goto_47
    iget-object v3, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mPreCameraId:Ljava/lang/String;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mNextCameraId:Ljava/lang/String;

    invoke-static {v3, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_56

    if-eqz v0, :cond_56

    if-ne p1, v2, :cond_56

    return v2

    :cond_56
    return v1
.end method

.method private isNeedSwitchAnim()Z
    .registers 4

    .line 1150
    iget p0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mFadeSwitchAnimState:I

    const/16 v0, 0x40

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_9

    const/4 p0, 0x1

    goto :goto_a

    :cond_9
    const/4 p0, 0x0

    .line 1151
    :goto_a
    sget-object v0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isNeedSwitchAnim: enable = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return p0
.end method

.method private isSwitchAnimByVideoQualityChangeEnable()Z
    .registers 4

    .line 1202
    iget v0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mFadeSwitchAnimState:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x1

    if-eqz v0, :cond_e

    iget p0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mFadeSwitchAnimState:I

    and-int/2addr p0, v1

    if-nez p0, :cond_d

    goto :goto_e

    :cond_d
    const/4 v1, 0x0

    .line 1204
    :cond_e
    :goto_e
    sget-object p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isSwitchAnimByVideoQualityChangeEnable: enable = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v1
.end method

.method private isSwitchAnimNeedDoubleFrame()Z
    .registers 4

    .line 1156
    iget p0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mFadeSwitchAnimState:I

    const/16 v0, 0x80

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_9

    const/4 p0, 0x1

    goto :goto_a

    :cond_9
    const/4 p0, 0x0

    .line 1157
    :goto_a
    sget-object v0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isSwitchAnimNeedDoubleFrame: enable = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return p0
.end method

.method private isSwitchAnimTypeGoToGallery()Z
    .registers 4

    .line 1162
    iget p0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mFadeSwitchAnimState:I

    const/16 v0, 0x20

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_9

    const/4 p0, 0x1

    goto :goto_a

    :cond_9
    const/4 p0, 0x0

    .line 1163
    :goto_a
    sget-object v0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isSwitchAnimTypeGoToGallery: isType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return p0
.end method

.method private isSwitchAnimTypeStart()Z
    .registers 4

    .line 1168
    iget p0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mFadeSwitchAnimState:I

    const/16 v0, 0x800

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_9

    const/4 p0, 0x1

    goto :goto_a

    :cond_9
    const/4 p0, 0x0

    .line 1169
    :goto_a
    sget-object v0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isSwitchAnimTypeStart: isType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return p0
.end method

.method private judgePlayFadeSwitchAnim(II)V
    .registers 5

    .line 1111
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/anim/AnimationManager;->updateSwitchAnimType(I)V

    .line 1112
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/ui/anim/AnimationManager;->isNeedFadeBlurAnim(II)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/transsion/camera/app/ui/anim/AnimationManager$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0, p1, p2}, Lcom/transsion/camera/app/ui/anim/AnimationManager$$ExternalSyntheticLambda6;-><init>(Lcom/transsion/camera/app/ui/anim/AnimationManager;II)V

    .line 1113
    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p1

    new-instance p2, Lcom/transsion/camera/app/ui/anim/AnimationManager$$ExternalSyntheticLambda7;

    invoke-direct {p2, p0}, Lcom/transsion/camera/app/ui/anim/AnimationManager$$ExternalSyntheticLambda7;-><init>(Lcom/transsion/camera/app/ui/anim/AnimationManager;)V

    .line 1126
    invoke-virtual {p1, p2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private synthetic lambda$judgePlayFadeSwitchAnim$4(IILjava/lang/Boolean;)Ljava/lang/Boolean;
    .registers 8

    .line 1114
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_23

    const/16 v0, 0x12f

    if-eq p1, v0, :cond_13

    const/16 v0, 0x1c

    if-eq p1, v0, :cond_13

    .line 1116
    invoke-direct {p0, v2}, Lcom/transsion/camera/app/ui/anim/AnimationManager;->startFadeSwitchAnim(Z)V

    :cond_13
    const/4 v0, 0x4

    if-eq p2, v0, :cond_1d

    const/16 v0, 0x8

    if-ne p2, v0, :cond_1b

    goto :goto_1d

    :cond_1b
    move v0, v1

    goto :goto_1e

    :cond_1d
    :goto_1d
    move v0, v2

    :goto_1e
    const/16 v3, 0x80

    .line 1119
    invoke-direct {p0, v3, v0}, Lcom/transsion/camera/app/ui/anim/AnimationManager;->changeFadeSwitchAnimState(IZ)V

    .line 1122
    :cond_23
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-nez p0, :cond_39

    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p0

    iget-boolean p0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportUI4Animator:Z

    if-eqz p0, :cond_3a

    const/16 p0, 0x100

    if-ne p2, p0, :cond_3a

    const/16 p0, 0x35

    if-ne p1, p0, :cond_3a

    :cond_39
    move v1, v2

    :cond_3a
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$judgePlayFadeSwitchAnim$5(Ljava/lang/Boolean;)V
    .registers 3

    .line 1127
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    const/16 v0, 0x40

    invoke-direct {p0, v0, p1}, Lcom/transsion/camera/app/ui/anim/AnimationManager;->changeFadeSwitchAnimState(IZ)V

    return-void
.end method

.method private synthetic lambda$new$0(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 292
    const-string v0, "key_zoom_ui_state"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_48

    .line 293
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result p1

    const-string v0, "slip_sliping"

    const-string v1, "slip_ide"

    const/4 v2, -0x1

    sparse-switch p1, :sswitch_data_4a

    goto :goto_34

    :sswitch_18
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1f

    goto :goto_34

    :cond_1f
    const/4 v2, 0x2

    goto :goto_34

    :sswitch_21
    const-string p1, "slip_stop"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2a

    goto :goto_34

    :cond_2a
    const/4 v2, 0x1

    goto :goto_34

    :sswitch_2c
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_33

    goto :goto_34

    :cond_33
    const/4 v2, 0x0

    :goto_34
    packed-switch v2, :pswitch_data_58

    goto :goto_48

    .line 299
    :pswitch_38
    iget-object p1, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mSlipStatus:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_48

    .line 300
    iput-object v1, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mSlipStatus:Ljava/lang/String;

    .line 301
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/anim/AnimationManager;->hidePreviewCover()V

    return-void

    .line 296
    :pswitch_46
    iput-object p2, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mSlipStatus:Ljava/lang/String;

    :cond_48
    :goto_48
    return-void

    nop

    :sswitch_data_4a
    .sparse-switch
        -0x4b33f0d5 -> :sswitch_2c
        -0x1b45605f -> :sswitch_21
        0x639c76a3 -> :sswitch_18
    .end sparse-switch

    :pswitch_data_58
    .packed-switch 0x0
        :pswitch_46
        :pswitch_38
        :pswitch_46
    .end packed-switch
.end method

.method private synthetic lambda$new$3(Z)V
    .registers 3

    .line 1052
    iget-object v0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mOldValue:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eq v0, p1, :cond_1b

    .line 1053
    iget-object v0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mOldValue:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1054
    iget-object v0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mSwitchAnimView:Lcom/transsion/camera/app/ui/view/SwitchAnimView;

    if-eqz v0, :cond_1b

    if-nez p1, :cond_16

    const/high16 p0, -0x1000000

    goto :goto_18

    .line 1055
    :cond_16
    iget p0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mScreenSupplyColor:I

    :goto_18
    invoke-virtual {v0, p0}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_1b
    return-void
.end method

.method private onRectAnimFinish(I)V
    .registers 3

    .line 350
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mIsPreviewRendered:Z

    if-eqz v0, :cond_25

    iget v0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mRectAnimGeneration:I

    if-eq p1, v0, :cond_9

    goto :goto_25

    .line 353
    :cond_9
    iget-object p1, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mSwitchAnimView:Lcom/transsion/camera/app/ui/view/SwitchAnimView;

    if-eqz p1, :cond_1b

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->isRectAnimatorStarted()Z

    move-result p1

    if-eqz p1, :cond_1b

    .line 354
    sget-object p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "onRectAnimFinish: newer rect anim running, skip hidePreviewCover"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 357
    :cond_1b
    sget-object p1, Lcom/transsion/camera/app/ui/anim/AnimationManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "onRectAnimFinish: anim finish, preview already rendered, hidePreviewCover"

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 358
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/anim/AnimationManager;->hidePreviewCover()V

    :cond_25
    :goto_25
    return-void
.end method

.method private releaseBlurBitmap()V
    .registers 4

    .line 853
    iget-object v0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mPreviewBitmapCache:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_24

    .line 854
    sget-object v0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "releaseBlurBitmap: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mPreviewBitmapCache:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 855
    iget-object v0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mPreviewBitmapCache:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v0, 0x0

    .line 856
    iput-object v0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mPreviewBitmapCache:Landroid/graphics/Bitmap;

    :cond_24
    return-void
.end method

.method private screenPocket()Z
    .registers 2

    const/4 v0, 0x6

    .line 309
    iget p0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mScreenFormType:I

    if-ne v0, p0, :cond_7

    const/4 p0, 0x1

    return p0

    :cond_7
    const/4 p0, 0x0

    return p0
.end method

.method private setupFlipAnimListener()V
    .registers 2

    .line 688
    iget-object v0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mFlipAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->removeAllListeners()V

    .line 689
    iget-object v0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mFlipAnimator:Landroid/animation/Animator;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mFlipAnimListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, p0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method private showPreviewCover(I)V
    .registers 6

    .line 797
    iget-object v0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mSwitchAnimView:Lcom/transsion/camera/app/ui/view/SwitchAnimView;

    if-eqz v0, :cond_89

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_89

    iget-object v0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mPreviewController:Lcom/transsion/camera/app/ui/preview/IPreviewController;

    if-eqz v0, :cond_89

    .line 799
    invoke-interface {v0}, Lcom/transsion/camera/app/ui/preview/IPreviewController;->getPreviewView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_16

    goto/16 :goto_89

    :cond_16
    const/16 v1, 0x200

    const/16 v2, 0x10

    if-eq p1, v2, :cond_2e

    if-ne p1, v1, :cond_1f

    goto :goto_2e

    .line 826
    :cond_1f
    iget-object p1, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mPreviewController:Lcom/transsion/camera/app/ui/preview/IPreviewController;

    invoke-interface {p1}, Lcom/transsion/camera/app/ui/preview/IPreviewController;->getPreviewOperator()Lcom/transsion/camera/app/common/preview/IPreviewOperator;

    move-result-object p1

    if-eqz p1, :cond_2a

    .line 828
    invoke-interface {p1}, Lcom/transsion/camera/app/common/preview/IPreviewOperator;->stopRenderRequest()V

    .line 830
    :cond_2a
    invoke-direct {p0, v0, p1}, Lcom/transsion/camera/app/ui/anim/AnimationManager;->updateBlurBitmap(Landroid/view/View;Lcom/transsion/camera/app/common/preview/IPreviewOperator;)V

    return-void

    .line 805
    :cond_2e
    :goto_2e
    iget-object v0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mCurrentMode:Ljava/lang/String;

    const-string v3, "com.transsion.camera.feature.mode.timelapsemode.TimelapsePhotoModeEntry"

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_39

    goto :goto_89

    .line 808
    :cond_39
    iget-object v0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mSwitchAnimView:Lcom/transsion/camera/app/ui/view/SwitchAnimView;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->setVisibility(I)V

    .line 809
    iget-object v0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mSwitchAnimView:Lcom/transsion/camera/app/ui/view/SwitchAnimView;

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 810
    iget-object v0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mSwitchAnimView:Lcom/transsion/camera/app/ui/view/SwitchAnimView;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->clear()V

    .line 811
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mUnifyCaptureAnimation:Z

    if-nez v0, :cond_5d

    iget-object v0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mOldValue:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_5d

    .line 812
    iget-object v0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mSwitchAnimView:Lcom/transsion/camera/app/ui/view/SwitchAnimView;

    sget v2, Lcom/transsion/camera/R$color;->preview_cover_capture_color_white:I

    invoke-virtual {v0, v2}, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->setSwitchAnimInfo(I)V

    goto :goto_6e

    :cond_5d
    if-ne p1, v2, :cond_67

    .line 814
    iget-object v0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mSwitchAnimView:Lcom/transsion/camera/app/ui/view/SwitchAnimView;

    sget v2, Lcom/transsion/camera/R$color;->preview_cover_capture_color:I

    invoke-virtual {v0, v2}, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->setSwitchAnimInfo(I)V

    goto :goto_6e

    .line 816
    :cond_67
    iget-object v0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mSwitchAnimView:Lcom/transsion/camera/app/ui/view/SwitchAnimView;

    sget v2, Lcom/transsion/camera/R$color;->preview_cover_default_color:I

    invoke-virtual {v0, v2}, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->setSwitchAnimInfo(I)V

    :goto_6e
    const-wide/16 v2, 0x5a

    if-ne p1, v1, :cond_7e

    .line 819
    iget-object p1, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 820
    iget-object p0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void

    .line 822
    :cond_7e
    iget-object p1, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 823
    iget-object p0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_89
    :goto_89
    return-void
.end method

.method private startFadeSwitchAnim(Z)V
    .registers 5

    .line 1132
    iget-object v0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mSwitchAnimView:Lcom/transsion/camera/app/ui/view/SwitchAnimView;

    if-nez v0, :cond_5

    return-void

    .line 1135
    :cond_5
    new-instance v1, Lcom/transsion/camera/app/ui/anim/AnimationManager$11;

    invoke-direct {v1, p0, p1}, Lcom/transsion/camera/app/ui/anim/AnimationManager$11;-><init>(Lcom/transsion/camera/app/ui/anim/AnimationManager;Z)V

    const/4 p0, 0x1

    new-array p0, p0, [Landroid/animation/Animator$AnimatorListener;

    const/4 v2, 0x0

    aput-object v1, p0, v2

    invoke-virtual {v0, p1, p0}, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->startFadeSwitchAnim(Z[Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method private startFlipAnim()V
    .registers 4

    .line 667
    iget-object v0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mSwitchAnimView:Lcom/transsion/camera/app/ui/view/SwitchAnimView;

    if-eqz v0, :cond_4e

    iget-object v0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mViewSwitcherRoot:Lcom/transsion/camera/app/ui/view/ViewSwitcher;

    if-eqz v0, :cond_4e

    iget-object v0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mPreviewController:Lcom/transsion/camera/app/ui/preview/IPreviewController;

    if-eqz v0, :cond_4e

    .line 668
    invoke-interface {v0}, Lcom/transsion/camera/app/ui/preview/IPreviewController;->getPreviewView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_13

    goto :goto_4e

    .line 672
    :cond_13
    iget-object v1, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mSwitchAnimView:Lcom/transsion/camera/app/ui/view/SwitchAnimView;

    invoke-virtual {v1}, Landroid/view/View;->clearAnimation()V

    .line 673
    iget-object v1, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mViewSwitcherRoot:Lcom/transsion/camera/app/ui/view/ViewSwitcher;

    invoke-virtual {v1}, Landroid/view/View;->clearAnimation()V

    .line 674
    iput-object v0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mCurrentFlipPreviewView:Landroid/view/View;

    .line 675
    iget-object v0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mCachedFlipAnimator:Landroid/animation/Animator;

    if-nez v0, :cond_2d

    .line 676
    iget-object v0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mContext:Landroid/content/Context;

    sget v1, Lcom/transsion/camera/R$animator;->preview_cover_scale:I

    invoke-static {v0, v1}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mCachedFlipAnimator:Landroid/animation/Animator;

    .line 678
    :cond_2d
    iget-object v0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mCachedFlipAnimator:Landroid/animation/Animator;

    iput-object v0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mFlipAnimator:Landroid/animation/Animator;

    .line 679
    iget-object v0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mViewSwitcherRoot:Lcom/transsion/camera/app/ui/view/ViewSwitcher;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 680
    iget-object v0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mFlipAnimator:Landroid/animation/Animator;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mViewSwitcherRoot:Lcom/transsion/camera/app/ui/view/ViewSwitcher;

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 681
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/anim/AnimationManager;->setupFlipAnimListener()V

    .line 682
    iget-object p0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mFlipAnimator:Landroid/animation/Animator;

    invoke-virtual {p0}, Landroid/animation/Animator;->start()V

    .line 683
    sget-object p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "previewView.startAnimation"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :cond_4e
    :goto_4e
    return-void
.end method

.method private startFlipHideCoverAnim()V
    .registers 3

    .line 732
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mIsSupportHideCoverAnimation:Z

    if-eqz v0, :cond_3b

    .line 733
    iget-object v0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mAnimatorSwitchViewFadeAway:Landroid/animation/Animator;

    if-eqz v0, :cond_1a

    .line 735
    :try_start_8
    invoke-virtual {v0}, Landroid/animation/Animator;->clone()Landroid/animation/Animator;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mAnimatorSwitchViewFadeAway:Landroid/animation/Animator;
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_e} :catch_f

    goto :goto_24

    .line 737
    :catch_f
    iget-object v0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mContext:Landroid/content/Context;

    sget v1, Lcom/transsion/camera/R$animator;->preview_cover_fade_away:I

    invoke-static {v0, v1}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mAnimatorSwitchViewFadeAway:Landroid/animation/Animator;

    goto :goto_24

    .line 740
    :cond_1a
    iget-object v0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mContext:Landroid/content/Context;

    sget v1, Lcom/transsion/camera/R$animator;->preview_cover_fade_away:I

    invoke-static {v0, v1}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mAnimatorSwitchViewFadeAway:Landroid/animation/Animator;

    .line 742
    :goto_24
    iget-object v0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mAnimatorSwitchViewFadeAway:Landroid/animation/Animator;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mSwitchAnimView:Lcom/transsion/camera/app/ui/view/SwitchAnimView;

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 743
    iget-object v0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mAnimatorSwitchViewFadeAway:Landroid/animation/Animator;

    new-instance v1, Lcom/transsion/camera/app/ui/anim/AnimationManager$8;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/ui/anim/AnimationManager$8;-><init>(Lcom/transsion/camera/app/ui/anim/AnimationManager;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 764
    iget-object p0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mAnimatorSwitchViewFadeAway:Landroid/animation/Animator;

    invoke-virtual {p0}, Landroid/animation/Animator;->start()V

    return-void

    .line 766
    :cond_3b
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/anim/AnimationManager;->animationHidePreviewCover()V

    return-void
.end method

.method private startPreviewCoverAnim(II)V
    .registers 10

    .line 596
    iget v0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mAnimationCount:I

    if-nez v0, :cond_b

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mIsSwitchAnim:Z

    if-eqz v0, :cond_b

    .line 597
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/anim/AnimationManager;->cancelFlipAnim()V

    .line 599
    :cond_b
    const-string v0, ", type:"

    const-string v1, "startPreviewCoverAnim action:"

    const/16 v2, 0xa5

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-ne p2, v3, :cond_17

    if-eq p1, v3, :cond_33

    :cond_17
    const/16 v3, 0x100

    if-ne p2, v3, :cond_1f

    const/16 v3, 0x35

    if-eq p1, v3, :cond_33

    :cond_1f
    if-ne p2, v4, :cond_23

    if-eqz p1, :cond_33

    :cond_23
    const/16 v3, 0x8

    if-ne p2, v3, :cond_2a

    const/4 v3, 0x6

    if-eq p1, v3, :cond_33

    :cond_2a
    const/4 v3, 0x4

    if-ne p2, v3, :cond_2f

    if-eq p1, v3, :cond_33

    :cond_2f
    if-ne p2, v4, :cond_5c

    if-ne p1, v2, :cond_5c

    .line 605
    :cond_33
    iget v3, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mAnimationCount:I

    or-int/2addr v3, p2

    iput v3, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mAnimationCount:I

    .line 606
    sget-object v3, Lcom/transsion/camera/app/ui/anim/AnimationManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", change animationCount to :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mAnimationCount:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 608
    :cond_5c
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/ui/anim/AnimationManager;->judgePlayFadeSwitchAnim(II)V

    .line 609
    iget-boolean v3, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mIsAnimating:Z

    if-eqz v3, :cond_b2

    const/16 v0, 0x10

    if-eq p2, v0, :cond_6c

    .line 611
    iget-object v0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    :cond_6c
    const/16 v0, 0x3e

    if-ne p1, v0, :cond_72

    .line 614
    iput-boolean v4, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mNeedWideScaleAnim:Z

    :cond_72
    const/16 v0, 0x3f

    if-ne p1, v0, :cond_7a

    const/4 v0, 0x0

    .line 617
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/anim/AnimationManager;->startWideAnim(Z)V

    .line 619
    :cond_7a
    sget-object v0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startPreviewCoverAnim type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", action:"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", mIsAnimating :"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mIsAnimating:Z

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", animationCount:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mAnimationCount:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " return."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 623
    :cond_b2
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/anim/AnimationManager;->getIsSuportFilpAnimation()Z

    move-result v3

    if-eqz v3, :cond_ca

    if-eq p1, v2, :cond_ca

    .line 624
    invoke-direct {p0, p2}, Lcom/transsion/camera/app/ui/anim/AnimationManager;->isNeedFlipAnim(I)Z

    move-result v2

    if-eqz v2, :cond_ca

    .line 625
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/anim/AnimationManager;->updateRingScreenLightState()V

    .line 626
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/anim/AnimationManager;->startFlipAnim()V

    .line 627
    iget-object v2, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mNextCameraId:Ljava/lang/String;

    iput-object v2, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mPreCameraId:Ljava/lang/String;

    .line 630
    :cond_ca
    iput-boolean v4, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mIsAnimating:Z

    .line 631
    sget-object v2, Lcom/transsion/camera/app/ui/anim/AnimationManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ",animationCount:"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mAnimationCount:I

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", mNeedBuildBlurCover:"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mNeedBuildBlurCover:Z

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 633
    invoke-direct {p0, p2}, Lcom/transsion/camera/app/ui/anim/AnimationManager;->showPreviewCover(I)V

    return-void
.end method

.method private startWideAnim(Z)V
    .registers 5

    .line 977
    iget-object v0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mSwitchAnimView:Lcom/transsion/camera/app/ui/view/SwitchAnimView;

    if-eqz v0, :cond_27

    if-eqz p1, :cond_c

    .line 980
    new-instance v0, Lcom/transsion/camera/app/ui/anim/AnimationManager$10;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/ui/anim/AnimationManager$10;-><init>(Lcom/transsion/camera/app/ui/anim/AnimationManager;)V

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    if-eqz p1, :cond_22

    .line 988
    iget-object v1, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mPreviewController:Lcom/transsion/camera/app/ui/preview/IPreviewController;

    invoke-interface {v1}, Lcom/transsion/camera/app/ui/preview/IPreviewController;->getPreviewView()Landroid/view/View;

    move-result-object v1

    .line 989
    iget-object v2, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mPreviewController:Lcom/transsion/camera/app/ui/preview/IPreviewController;

    invoke-interface {v2}, Lcom/transsion/camera/app/ui/preview/IPreviewController;->getPreviewOperator()Lcom/transsion/camera/app/common/preview/IPreviewOperator;

    move-result-object v2

    if-eqz v1, :cond_22

    if-eqz v2, :cond_22

    .line 991
    invoke-direct {p0, v1, v2}, Lcom/transsion/camera/app/ui/anim/AnimationManager;->updateBlurBitmap(Landroid/view/View;Lcom/transsion/camera/app/common/preview/IPreviewOperator;)V

    .line 994
    :cond_22
    iget-object p0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mSwitchAnimView:Lcom/transsion/camera/app/ui/view/SwitchAnimView;

    invoke-virtual {p0, p1, v0}, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->startWideChangeAnim(ZLcom/transsion/camera/app/ui/view/SwitchAnimView$AnimEndCallback;)V

    :cond_27
    return-void
.end method

.method private stopPreviewCoverAnim(III)V
    .registers 16

    .line 531
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mIsAnimating:Z

    const-string v1, "stopPreviewCoverAnim action:"

    if-nez v0, :cond_20

    .line 532
    sget-object p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", return."

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    :cond_20
    const/4 v0, 0x1

    .line 536
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mNeedBuildBlurCover:Z

    const/4 v2, 0x2

    const/4 v3, 0x5

    .line 537
    const-string v4, ", type:"

    const/4 v5, 0x3

    if-ne p2, v2, :cond_2c

    if-eq p1, v5, :cond_44

    :cond_2c
    const/16 v2, 0x100

    if-ne p2, v2, :cond_34

    const/16 v2, 0x36

    if-eq p1, v2, :cond_44

    :cond_34
    if-ne p2, v0, :cond_38

    if-eq p1, v0, :cond_44

    :cond_38
    const/16 v2, 0x8

    if-ne p2, v2, :cond_3f

    const/4 v2, 0x7

    if-eq p1, v2, :cond_44

    :cond_3f
    const/4 v2, 0x4

    if-ne p2, v2, :cond_70

    if-ne p1, v3, :cond_70

    .line 542
    :cond_44
    iget v2, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mAnimationCount:I

    not-int v6, p2

    and-int/2addr v2, v6

    and-int/lit16 v2, v2, -0x101

    .line 543
    iput v2, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mAnimationCount:I

    .line 544
    sget-object v2, Lcom/transsion/camera/app/ui/anim/AnimationManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", change animationCount to :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mAnimationCount:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 546
    :cond_70
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/anim/AnimationManager;->isNeedSwitchAnim()Z

    move-result v2

    const/16 v6, 0x1c

    const/16 v7, 0x9

    if-nez v2, :cond_7c

    if-eq p1, v7, :cond_86

    :cond_7c
    if-eq p1, v6, :cond_86

    if-eq p1, v3, :cond_86

    .line 549
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/anim/AnimationManager;->isSwitchAnimTypeStart()Z

    move-result v2

    if-eqz v2, :cond_89

    :cond_86
    const/4 v2, 0x0

    .line 550
    iput v2, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mAnimationCount:I

    .line 552
    :cond_89
    iget v2, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mAnimationCount:I

    const-string v3, ", animationCount:"

    if-lez v2, :cond_b7

    .line 553
    sget-object p3, Lcom/transsion/camera/app/ui/anim/AnimationManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mAnimationCount:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " is not zero, return."

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p3, p0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 556
    :cond_b7
    iget-object v2, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mPreviewController:Lcom/transsion/camera/app/ui/preview/IPreviewController;

    invoke-interface {v2}, Lcom/transsion/camera/app/ui/preview/IPreviewController;->getPreviewOperator()Lcom/transsion/camera/app/common/preview/IPreviewOperator;

    move-result-object v2

    if-eqz v2, :cond_e9

    if-ne p1, v6, :cond_c6

    const/4 v8, 0x0

    .line 559
    invoke-interface {v2, v8, v8}, Lcom/transsion/camera/app/common/preview/IPreviewOperator;->startRenderRequest(Lcom/transsion/camera/app/common/preview/IPreviewRenderedCallbacker;Landroid/os/Handler;)V

    goto :goto_e9

    :cond_c6
    if-ne p1, v7, :cond_e2

    .line 561
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/anim/AnimationManager;->isSwitchAnimTypeStart()Z

    move-result v8

    if-eqz v8, :cond_da

    const-string v8, "com.transsion.camera.feature.mode.dualvideo.DualVideoModeEntry"

    invoke-direct {p0}, Lcom/transsion/camera/app/ui/anim/AnimationManager;->getCurrentMode()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_e9

    .line 562
    :cond_da
    iget-object v8, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mPreviewRenderCallback:Lcom/transsion/camera/app/common/preview/IPreviewRenderedCallbacker;

    iget-object v9, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mHandler:Landroid/os/Handler;

    invoke-interface {v2, v8, v9}, Lcom/transsion/camera/app/common/preview/IPreviewOperator;->startRenderRequest(Lcom/transsion/camera/app/common/preview/IPreviewRenderedCallbacker;Landroid/os/Handler;)V

    goto :goto_e9

    .line 565
    :cond_e2
    iget-object v8, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mPreviewRenderCallback:Lcom/transsion/camera/app/common/preview/IPreviewRenderedCallbacker;

    iget-object v9, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mHandler:Landroid/os/Handler;

    invoke-interface {v2, v8, v9}, Lcom/transsion/camera/app/common/preview/IPreviewOperator;->startRenderRequest(Lcom/transsion/camera/app/common/preview/IPreviewRenderedCallbacker;Landroid/os/Handler;)V

    .line 568
    :cond_e9
    :goto_e9
    iget-object v8, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mSwitchAnimView:Lcom/transsion/camera/app/ui/view/SwitchAnimView;

    if-eqz v8, :cond_111

    .line 569
    invoke-virtual {v8}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    .line 570
    sget-object v9, Lcom/transsion/camera/app/ui/anim/AnimationManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "stopPreviewCoverAnim: mSwitchAnimView.getTag() = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 571
    instance-of v8, v8, Landroid/animation/Animator;

    if-eqz v8, :cond_111

    .line 572
    const-string p0, "stopPreviewCoverAnim: mFadeBlurAnimator is not finish."

    invoke-static {v9, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 576
    :cond_111
    sget-object v8, Lcom/transsion/camera/app/ui/anim/AnimationManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mAnimationCount:I

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v8, p2}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-eqz v2, :cond_157

    if-ne p1, v6, :cond_13d

    .line 579
    iget-object p0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    return-void

    :cond_13d
    if-ne p1, v7, :cond_16b

    .line 581
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/anim/AnimationManager;->isNeedSwitchAnim()Z

    move-result p1

    if-nez p1, :cond_16b

    invoke-direct {p0}, Lcom/transsion/camera/app/ui/anim/AnimationManager;->isSwitchAnimTypeStart()Z

    move-result p1

    if-nez p1, :cond_16b

    .line 582
    iget-object p1, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 583
    iget-object p0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mHandler:Landroid/os/Handler;

    int-to-long p1, p3

    invoke-virtual {p0, v5, p1, p2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void

    .line 587
    :cond_157
    iget-object p1, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 588
    iget-object p1, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mHandler:Landroid/os/Handler;

    int-to-long p2, p3

    invoke-virtual {p1, v0, p2, p3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 589
    iget-object p1, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mPreviewController:Lcom/transsion/camera/app/ui/preview/IPreviewController;

    instance-of p1, p1, Lcom/transsion/camera/app/ui/preview/SurfaceViewController;

    if-eqz p1, :cond_16b

    .line 590
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/anim/AnimationManager;->hidePreviewCover()V

    :cond_16b
    return-void
.end method

.method private updateBlurBitmap(Landroid/view/View;Lcom/transsion/camera/app/common/preview/IPreviewOperator;)V
    .registers 11

    .line 861
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 862
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    if-eqz v0, :cond_fe

    if-nez p1, :cond_e

    goto/16 :goto_fe

    .line 866
    :cond_e
    sget-object v1, Lcom/transsion/camera/app/ui/anim/AnimationManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateBlurBitmap preview width "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " height "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", mNeedBuildBlurCover:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mNeedBuildBlurCover:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " mGoingTogallery = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mGoingToGallery:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " cache == null "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mPreviewBitmapCache:Landroid/graphics/Bitmap;

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v3, :cond_47

    move v3, v4

    goto :goto_48

    :cond_47
    move v3, v5

    :goto_48
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-eqz p2, :cond_d9

    .line 870
    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mNeedBuildBlurCover:Z

    if-nez v2, :cond_5a

    goto/16 :goto_d9

    .line 874
    :cond_5a
    iget-object v2, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mPreviewBitmapCache:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_69

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_69

    .line 875
    iget-object p1, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mPreviewBitmapCache:Landroid/graphics/Bitmap;

    .line 876
    iput-boolean v4, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mIsPreviewBitmapCache:Z

    goto :goto_bd

    .line 878
    :cond_69
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 879
    iget-object v4, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mSwitchAnimView:Lcom/transsion/camera/app/ui/view/SwitchAnimView;

    invoke-virtual {v4, v5}, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->getPreferFactor(Z)I

    move-result v4

    .line 880
    iput-boolean v5, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mIsPreviewBitmapCache:Z

    .line 882
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->getInstance()Lcom/transsion/camera/app/common/CommonConfigUtil;

    move-result-object v6

    iget-boolean v6, v6, Lcom/transsion/camera/app/common/CommonConfigUtil;->mEnableDVMode:Z

    if-eqz v6, :cond_96

    iget v6, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mScreenFormType:I

    const/4 v7, 0x7

    if-ne v6, v7, :cond_96

    const-string v6, "com.transsion.camera.feature.mode.video.DVVideoModeEntry"

    iget-object v7, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mCurrentMode:Ljava/lang/String;

    .line 884
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_96

    .line 885
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6, v5, v5, v0, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-static {v6}, Lcom/transsion/camera/app/ui/anim/AnimationManager;->calculateAODDVVisibleArea(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v6

    goto :goto_97

    :cond_96
    const/4 v6, 0x0

    .line 887
    :goto_97
    invoke-interface {p2, v0, p1, v4, v6}, Lcom/transsion/camera/app/common/preview/IPreviewOperator;->getBitmap(IIILandroid/graphics/Rect;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 888
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "updateBlurBitmap: getPreview factor = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", spent-time = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v2

    invoke-virtual {p2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :goto_bd
    if-eqz p1, :cond_d1

    .line 890
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p2

    if-nez p2, :cond_d1

    .line 891
    iget-object p2, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mSwitchAnimView:Lcom/transsion/camera/app/ui/view/SwitchAnimView;

    invoke-direct {p0}, Lcom/transsion/camera/app/ui/anim/AnimationManager;->isNeedSwitchAnim()Z

    move-result v0

    iget-boolean v1, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mIsPreviewBitmapCache:Z

    invoke-virtual {p2, p1, v0, v1}, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->setSwitchAnimInfo(Landroid/graphics/Bitmap;ZZ)V

    goto :goto_e0

    .line 893
    :cond_d1
    iget-object p1, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mSwitchAnimView:Lcom/transsion/camera/app/ui/view/SwitchAnimView;

    sget p2, Lcom/transsion/camera/R$drawable;->camera_default_gaussian_blur:I

    invoke-virtual {p1, p2}, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->setSwitchAnimInfo(I)V

    goto :goto_e0

    .line 871
    :cond_d9
    :goto_d9
    iget-object p1, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mSwitchAnimView:Lcom/transsion/camera/app/ui/view/SwitchAnimView;

    sget p2, Lcom/transsion/camera/R$color;->preview_cover_default_color:I

    invoke-virtual {p1, p2}, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->setSwitchAnimInfo(I)V

    .line 896
    :goto_e0
    iget-object p1, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mSwitchAnimView:Lcom/transsion/camera/app/ui/view/SwitchAnimView;

    invoke-virtual {p1, v5}, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->setVisibility(I)V

    .line 897
    iget-object p1, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mSwitchAnimView:Lcom/transsion/camera/app/ui/view/SwitchAnimView;

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    .line 898
    iget-object p1, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mSwitchAnimView:Lcom/transsion/camera/app/ui/view/SwitchAnimView;

    iget-object p2, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mOldValue:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p2

    if-nez p2, :cond_f9

    const/high16 p0, -0x1000000

    goto :goto_fb

    :cond_f9
    iget p0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mScreenSupplyColor:I

    :goto_fb
    invoke-virtual {p1, p0}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_fe
    :goto_fe
    return-void
.end method

.method private updateSwitchAnimType(I)V
    .registers 5

    const/4 v0, 0x0

    if-eqz p1, :cond_35

    const/4 v1, 0x2

    if-eq p1, v1, :cond_31

    const/4 v1, 0x4

    if-eq p1, v1, :cond_2d

    const/4 v1, 0x6

    if-eq p1, v1, :cond_27

    const/16 v1, 0x1c

    if-eq p1, v1, :cond_21

    const/16 v1, 0x20

    if-eq p1, v1, :cond_21

    const/16 v2, 0x12f

    if-eq p1, v2, :cond_1d

    const/16 v2, 0x130

    if-eq p1, v2, :cond_1d

    goto :goto_39

    .line 1189
    :cond_1d
    invoke-direct {p0, v1, v0}, Lcom/transsion/camera/app/ui/anim/AnimationManager;->changeFadeSwitchAnimState(IZ)V

    goto :goto_39

    :cond_21
    const/16 p1, 0x800

    .line 1193
    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/app/ui/anim/AnimationManager;->changeFadeSwitchAnimState(IZ)V

    goto :goto_39

    :cond_27
    const/16 p1, 0x8

    .line 1185
    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/app/ui/anim/AnimationManager;->changeFadeSwitchAnimState(IZ)V

    goto :goto_39

    .line 1182
    :cond_2d
    invoke-direct {p0, v1, v0}, Lcom/transsion/camera/app/ui/anim/AnimationManager;->changeFadeSwitchAnimState(IZ)V

    goto :goto_39

    .line 1176
    :cond_31
    invoke-direct {p0, v1, v0}, Lcom/transsion/camera/app/ui/anim/AnimationManager;->changeFadeSwitchAnimState(IZ)V

    goto :goto_39

    :cond_35
    const/4 p1, 0x1

    .line 1179
    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/app/ui/anim/AnimationManager;->changeFadeSwitchAnimState(IZ)V

    .line 1198
    :goto_39
    sget-object p1, Lcom/transsion/camera/app/ui/anim/AnimationManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateSwitchAnimType: mFadeSwitchAnimState = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mFadeSwitchAnimState:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public cameraOperateAction(I)V
    .registers 5

    const/16 v0, 0x1c

    const/4 v1, 0x0

    if-eq p1, v0, :cond_120

    const/16 v0, 0x20

    if-eq p1, v0, :cond_103

    const/16 v0, 0x197

    const/4 v2, 0x1

    if-eq p1, v0, :cond_100

    const/16 v0, 0x19d

    if-eq p1, v0, :cond_c6

    packed-switch p1, :pswitch_data_154

    .line 494
    sget-object v0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->ACTION_SHOW_ANIM_TYPE_MAP:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_35

    .line 495
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_152

    .line 497
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/app/ui/anim/AnimationManager;->startPreviewCoverAnim(II)V

    return-void

    .line 499
    :cond_35
    sget-object v0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->ACTION_HIDE_ANIM_DELAY_MS_MAP:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_152

    .line 500
    sget-object v1, Lcom/transsion/camera/app/ui/anim/AnimationManager;->ACTION_HIDE_ANIM_TYPE_MAP:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 501
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v1, :cond_152

    if-eqz v0, :cond_152

    .line 503
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, p1, v1, v0}, Lcom/transsion/camera/app/ui/anim/AnimationManager;->stopPreviewCoverAnim(III)V

    return-void

    .line 457
    :pswitch_67
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mGoingToGallery:Z

    .line 458
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/anim/AnimationManager;->releaseBlurBitmap()V

    return-void

    .line 448
    :pswitch_6d
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportUI4Animator:Z

    if-nez v0, :cond_8a

    .line 449
    sget-object v0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->ACTION_SHOW_ANIM_TYPE_MAP:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_8a

    .line 451
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/app/ui/anim/AnimationManager;->startPreviewCoverAnim(II)V

    .line 454
    :cond_8a
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mGoingToGallery:Z

    return-void

    .line 431
    :pswitch_8d
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mGoingToGallery:Z

    .line 432
    invoke-direct {p0, v2}, Lcom/transsion/camera/app/ui/anim/AnimationManager;->cacheBlurBitmap(Z)V

    .line 433
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportUI4Animator:Z

    if-nez v0, :cond_9e

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mEnableStartBlur:Z

    if-eqz v0, :cond_152

    .line 434
    :cond_9e
    sget-object v0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->ACTION_SHOW_ANIM_TYPE_MAP:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_b3

    .line 436
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/app/ui/anim/AnimationManager;->startPreviewCoverAnim(II)V

    .line 439
    :cond_b3
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mIsSwitchAnim:Z

    if-nez p1, :cond_152

    .line 440
    iget-object p0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mSwitchAnimView:Lcom/transsion/camera/app/ui/view/SwitchAnimView;

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    new-instance p1, Lcom/transsion/camera/app/ui/anim/AnimationManager$$ExternalSyntheticLambda4;

    invoke-direct {p1}, Lcom/transsion/camera/app/ui/anim/AnimationManager$$ExternalSyntheticLambda4;-><init>()V

    invoke-virtual {p0, p1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void

    .line 485
    :cond_c6
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/anim/AnimationManager;->isSwitchAnimTypeStart()Z

    move-result v0

    if-eqz v0, :cond_152

    const-string v0, "com.transsion.camera.feature.mode.dualvideo.DualVideoModeEntry"

    invoke-direct {p0}, Lcom/transsion/camera/app/ui/anim/AnimationManager;->getCurrentMode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_152

    .line 486
    sget-object v0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->ACTION_HIDE_ANIM_TYPE_MAP:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 487
    sget-object v1, Lcom/transsion/camera/app/ui/anim/AnimationManager;->ACTION_HIDE_ANIM_DELAY_MS_MAP:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-eqz v0, :cond_152

    if-eqz v1, :cond_152

    .line 489
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Lcom/transsion/camera/app/ui/anim/AnimationManager;->stopPreviewCoverAnim(III)V

    return-void

    .line 445
    :cond_100
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mGoingToGallery:Z

    return-void

    .line 461
    :cond_103
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mEnableStartBlur:Z

    if-eqz p1, :cond_10a

    .line 462
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mGoingToGallery:Z

    return-void

    .line 463
    :cond_10a
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p1

    iget-boolean p1, p1, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportUI4Animator:Z

    if-eqz p1, :cond_116

    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mGoingToGallery:Z

    if-nez p1, :cond_152

    .line 464
    :cond_116
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mGoingToGallery:Z

    .line 465
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mIsAnimating:Z

    .line 466
    iput v1, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mAnimationCount:I

    .line 467
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/anim/AnimationManager;->hidePreviewCover()V

    return-void

    .line 471
    :cond_120
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mEnableStartBlur:Z

    if-eqz v0, :cond_152

    .line 472
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mGoingToGallery:Z

    if-nez v0, :cond_12b

    .line 473
    invoke-direct {p0, v1}, Lcom/transsion/camera/app/ui/anim/AnimationManager;->cacheBlurBitmap(Z)V

    .line 475
    :cond_12b
    sget-object v0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->ACTION_SHOW_ANIM_TYPE_MAP:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_140

    .line 477
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/app/ui/anim/AnimationManager;->startPreviewCoverAnim(II)V

    .line 479
    :cond_140
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mIsSwitchAnim:Z

    if-nez p1, :cond_152

    .line 480
    iget-object p0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mSwitchAnimView:Lcom/transsion/camera/app/ui/view/SwitchAnimView;

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    new-instance p1, Lcom/transsion/camera/app/ui/anim/AnimationManager$$ExternalSyntheticLambda5;

    invoke-direct {p1}, Lcom/transsion/camera/app/ui/anim/AnimationManager$$ExternalSyntheticLambda5;-><init>()V

    invoke-virtual {p0, p1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_152
    return-void

    nop

    :pswitch_data_154
    .packed-switch 0x12f
        :pswitch_8d
        :pswitch_6d
        :pswitch_67
    .end packed-switch
.end method

.method protected getPreviewRectChangeAnimDuration()J
    .registers 3

    const-wide/16 v0, 0x12c

    return-wide v0
.end method

.method public hideCustomPreviewCover()V
    .registers 3

    .line 789
    iget-object v0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mSwitchAnimView:Lcom/transsion/camera/app/ui/view/SwitchAnimView;

    if-eqz v0, :cond_1c

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1c

    .line 790
    iget-object v0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mSwitchAnimView:Lcom/transsion/camera/app/ui/view/SwitchAnimView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->setVisibility(I)V

    .line 791
    iget-object v0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mSwitchAnimView:Lcom/transsion/camera/app/ui/view/SwitchAnimView;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 792
    iget-object p0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mSwitchAnimView:Lcom/transsion/camera/app/ui/view/SwitchAnimView;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->clear()V

    :cond_1c
    return-void
.end method

.method public inflate()V
    .registers 3

    .line 313
    iget-object v0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mSwitchAnimView:Lcom/transsion/camera/app/ui/view/SwitchAnimView;

    if-nez v0, :cond_10

    .line 314
    iget-object v0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/transsion/camera/app/ui/anim/AnimationManager$5;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/ui/anim/AnimationManager$5;-><init>(Lcom/transsion/camera/app/ui/anim/AnimationManager;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_10
    return-void
.end method

.method public needBuildBlurCoverView(Z)V
    .registers 2

    .line 366
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mNeedBuildBlurCover:Z

    return-void
.end method

.method public needRectChangedAnimation(Z)V
    .registers 5

    .line 1039
    sget-object v0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "needRectChangedAnimation needAnim: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1040
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mNeedRectChangedAnim:Z

    return-void
.end method

.method public onAbsolutePreviewRectChanged(Landroid/graphics/Rect;)V
    .registers 2

    return-void
.end method

.method public onPrivacyModeChange(ZF)V
    .registers 6

    .line 1259
    sget-object v0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPrivacyModeChange:  enable = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", degree = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-eqz p1, :cond_3a

    .line 1261
    iget-object p1, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mViewSwitcherRoot:Lcom/transsion/camera/app/ui/view/ViewSwitcher;

    if-eqz p1, :cond_48

    .line 1262
    iget-object p2, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mViewSwitcherRootState:Lcom/transsion/camera/app/common/ui/helper/ViewState;

    if-nez p2, :cond_33

    .line 1263
    new-instance p2, Lcom/transsion/camera/app/common/ui/helper/ViewState$Builder;

    invoke-direct {p2, p1}, Lcom/transsion/camera/app/common/ui/helper/ViewState$Builder;-><init>(Landroid/view/View;)V

    invoke-virtual {p2}, Lcom/transsion/camera/app/common/ui/helper/ViewState$Builder;->build()Lcom/transsion/camera/app/common/ui/helper/ViewState;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mViewSwitcherRootState:Lcom/transsion/camera/app/common/ui/helper/ViewState;

    .line 1265
    :cond_33
    iget-object p0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mViewSwitcherRoot:Lcom/transsion/camera/app/ui/view/ViewSwitcher;

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 1268
    :cond_3a
    iget-object p1, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mViewSwitcherRootState:Lcom/transsion/camera/app/common/ui/helper/ViewState;

    if-eqz p1, :cond_48

    iget-object p2, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mViewSwitcherRoot:Lcom/transsion/camera/app/ui/view/ViewSwitcher;

    if-eqz p2, :cond_48

    .line 1269
    invoke-virtual {p1, p2}, Lcom/transsion/camera/app/common/ui/helper/ViewState;->restore(Landroid/view/View;)V

    const/4 p1, 0x0

    .line 1270
    iput-object p1, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mViewSwitcherRootState:Lcom/transsion/camera/app/common/ui/helper/ViewState;

    :cond_48
    return-void
.end method

.method public onRelativePreviewRectChanged(Landroid/graphics/Rect;)V
    .registers 7

    .line 397
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/anim/AnimationManager;->screenPocket()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_16

    .line 399
    iget-object v2, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {v2}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenWidth()I

    move-result v2

    iget-object v3, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {v3}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenHeight()I

    move-result v3

    invoke-virtual {p1, v1, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 401
    :cond_16
    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mNeedRectChangedAnim:Z

    .line 402
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->getInstance()Lcom/transsion/camera/app/common/CommonConfigUtil;

    move-result-object v3

    iget-boolean v3, v3, Lcom/transsion/camera/app/common/CommonConfigUtil;->mEnableDVMode:Z

    if-eqz v3, :cond_3d

    iget v3, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mScreenFormType:I

    const/4 v4, 0x7

    if-ne v3, v4, :cond_3d

    .line 403
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/anim/AnimationManager;->getCurrentMode()Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.transsion.camera.feature.mode.video.DVVideoModeEntry"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_39

    iget-object v3, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mPreMode:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3d

    .line 404
    :cond_39
    invoke-static {p1}, Lcom/transsion/camera/app/ui/anim/AnimationManager;->calculateAODDVVisibleArea(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object p1

    .line 407
    :cond_3d
    iget-object v3, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mPreviewRect:Landroid/graphics/Rect;

    invoke-virtual {v3, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 408
    iget-object v3, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mSwitchAnimView:Lcom/transsion/camera/app/ui/view/SwitchAnimView;

    if-eqz v3, :cond_50

    if-nez v0, :cond_4c

    if-eqz v2, :cond_4c

    const/4 v0, 0x1

    goto :goto_4d

    :cond_4c
    move v0, v1

    .line 409
    :goto_4d
    invoke-virtual {p0, p1, v0, v1}, Lcom/transsion/camera/app/ui/anim/AnimationManager;->updateTargetRect(Landroid/graphics/Rect;ZZ)V

    :cond_50
    return-void
.end method

.method public onResume()V
    .registers 3

    .line 1232
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mEnableStartBlur:Z

    if-eqz v0, :cond_21

    invoke-direct {p0}, Lcom/transsion/camera/app/ui/anim/AnimationManager;->isSwitchAnimTypeStart()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 1233
    iget-object v0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mSwitchAnimView:Lcom/transsion/camera/app/ui/view/SwitchAnimView;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/transsion/camera/app/ui/anim/AnimationManager$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lcom/transsion/camera/app/ui/anim/AnimationManager$$ExternalSyntheticLambda2;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 1239
    iget-object p0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mViewSwitcherRoot:Lcom/transsion/camera/app/ui/view/ViewSwitcher;

    if-eqz p0, :cond_3d

    const/4 v0, 0x0

    .line 1240
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 1242
    :cond_21
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportUI4Animator:Z

    if-eqz v0, :cond_3d

    invoke-direct {p0}, Lcom/transsion/camera/app/ui/anim/AnimationManager;->isSwitchAnimTypeGoToGallery()Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 1243
    iget-object p0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mSwitchAnimView:Lcom/transsion/camera/app/ui/view/SwitchAnimView;

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    new-instance v0, Lcom/transsion/camera/app/ui/anim/AnimationManager$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Lcom/transsion/camera/app/ui/anim/AnimationManager$$ExternalSyntheticLambda3;-><init>()V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_3d
    return-void
.end method

.method public onScreenFormChanged(I)V
    .registers 2

    .line 370
    iput p1, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mScreenFormType:I

    return-void
.end method

.method public onSwitchMode(Ljava/lang/String;)V
    .registers 3

    .line 526
    iget-object v0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mCurrentMode:Ljava/lang/String;

    iput-object v0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mPreMode:Ljava/lang/String;

    .line 527
    iput-object p1, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mCurrentMode:Ljava/lang/String;

    return-void
.end method

.method public rectAnimationListener(Lcom/transsion/camera/app/ui/IAnimProgressListener;)V
    .registers 2

    .line 1044
    iget-object p0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mSwitchAnimView:Lcom/transsion/camera/app/ui/view/SwitchAnimView;

    if-eqz p0, :cond_8

    .line 1045
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->rectAnimationListener(Lcom/transsion/camera/app/ui/IAnimProgressListener;)V

    return-void

    :cond_8
    if-eqz p1, :cond_f

    const/high16 p0, 0x3f800000    # 1.0f

    .line 1047
    invoke-interface {p1, p0}, Lcom/transsion/camera/app/ui/IAnimProgressListener;->onAnimProgress(F)V

    :cond_f
    return-void
.end method

.method public resetRootParentLayout()V
    .registers 6

    .line 374
    iget-object v0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenWidth()I

    move-result v0

    iget-object v1, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 375
    iget-object v1, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenWidth()I

    move-result v1

    iget-object v2, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {v2}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenHeight()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 376
    iget-object v2, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {v2}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenFormType()I

    move-result v2

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-ne v2, v3, :cond_2c

    const/4 v2, 0x1

    goto :goto_2d

    :cond_2c
    move v2, v4

    .line 377
    :goto_2d
    iget-object v3, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mSwitchAnimView:Lcom/transsion/camera/app/ui/view/SwitchAnimView;

    if-eqz v3, :cond_4d

    .line 378
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz v2, :cond_40

    .line 379
    iget-object v2, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {v2}, Lcom/transsion/camera/app/ui/ScreenManager;->getColumnPreviewStartMargin()I

    move-result v2

    goto :goto_41

    :cond_40
    move v2, v4

    :goto_41
    invoke-virtual {v3, v2, v4, v4, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 380
    iput v1, v3, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 381
    iput v0, v3, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 382
    iget-object p0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mSwitchAnimView:Lcom/transsion/camera/app/ui/view/SwitchAnimView;

    invoke-virtual {p0, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_4d
    return-void
.end method

.method public resetTargetRect(IIII)V
    .registers 5

    .line 421
    iget-object p0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mSwitchAnimView:Lcom/transsion/camera/app/ui/view/SwitchAnimView;

    if-eqz p0, :cond_7

    .line 422
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->resetTargetRect(IIII)V

    :cond_7
    return-void
.end method

.method public setAppUI(Lcom/transsion/camera/app/common/IAppUI;)V
    .registers 2

    .line 284
    iput-object p1, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz p1, :cond_7

    .line 286
    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/IAppUIControl$IPrivacyControl;->registerPrivacyCallback(Lcom/transsion/camera/app/common/IPrivacyCallback;)V

    :cond_7
    return-void
.end method

.method public setCameraId(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 512
    iput-object p1, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mPreCameraId:Ljava/lang/String;

    .line 513
    iput-object p2, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mNextCameraId:Ljava/lang/String;

    return-void
.end method

.method public setPreviewController(Lcom/transsion/camera/app/ui/preview/IPreviewController;)V
    .registers 2

    .line 362
    iput-object p1, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mPreviewController:Lcom/transsion/camera/app/ui/preview/IPreviewController;

    return-void
.end method

.method public setPreviewMoveDistance(Ljava/util/function/ToIntFunction;)V
    .registers 2

    return-void
.end method

.method public setRingScreenLightResponderListener(Lcom/transsion/camera/app/common/setting/StatusMonitor;)V
    .registers 3

    .line 516
    const-string v0, "ring_screen_light_switch_state"

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mRingScreenLightResponder:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    return-void
.end method

.method public showCustomPreviewCover(Landroid/graphics/Bitmap;)V
    .registers 3

    if-eqz p1, :cond_21

    .line 781
    iget-object v0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mSwitchAnimView:Lcom/transsion/camera/app/ui/view/SwitchAnimView;

    if-eqz v0, :cond_21

    .line 782
    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->setSwitchAnimInfo(Landroid/graphics/Bitmap;)V

    .line 783
    iget-object p1, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mSwitchAnimView:Lcom/transsion/camera/app/ui/view/SwitchAnimView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->setVisibility(I)V

    .line 784
    iget-object p1, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mSwitchAnimView:Lcom/transsion/camera/app/ui/view/SwitchAnimView;

    iget-object v0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mOldValue:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_1c

    const/high16 p0, -0x1000000

    goto :goto_1e

    :cond_1c
    iget p0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mScreenSupplyColor:I

    :goto_1e
    invoke-virtual {p1, p0}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_21
    return-void
.end method

.method public switchAnimIsRunning()Z
    .registers 1

    .line 1276
    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mSwitchAnimStart:Z

    return p0
.end method

.method public unInit()V
    .registers 4

    const/4 v0, 0x0

    .line 1022
    iput-object v0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mFlipAnimator:Landroid/animation/Animator;

    .line 1023
    iput-object v0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mCachedFlipAnimator:Landroid/animation/Animator;

    .line 1024
    iput-object v0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mAnimatorSwitchViewFadeAway:Landroid/animation/Animator;

    .line 1025
    iget-object v1, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz v1, :cond_e

    .line 1026
    invoke-interface {v1, p0}, Lcom/transsion/camera/app/common/IAppUIControl$IPrivacyControl;->unregisterPrivacyCallback(Lcom/transsion/camera/app/common/IPrivacyCallback;)V

    .line 1028
    :cond_e
    iget-object v1, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1029
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/anim/AnimationManager;->screenPocket()Z

    move-result v0

    if-nez v0, :cond_22

    .line 1030
    invoke-static {}, Lcom/transsion/camera/app/common/ModuleTransferManager;->getTransferManager()Lcom/transsion/camera/app/common/ModuleTransferManager;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mIModuleTransfer:Lcom/transsion/camera/app/common/IModuleTransfer;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ModuleTransferManager;->unregisterTransferListener(Lcom/transsion/camera/app/common/IModuleTransfer;)V

    .line 1032
    :cond_22
    iget-object v0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz v0, :cond_2d

    .line 1033
    const-string v1, "key_zoom_ui_state"

    iget-object v2, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 1035
    :cond_2d
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/anim/AnimationManager;->releaseBlurBitmap()V

    return-void
.end method

.method public updateRingScreenLightState()V
    .registers 3

    .line 520
    iget-object p0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mRingScreenLightResponder:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    if-eqz p0, :cond_a

    .line 521
    const-string v0, "ring_screen_light_switch_state"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_a
    return-void
.end method

.method protected updateTargetRect(Landroid/graphics/Rect;ZZ)V
    .registers 11

    if-eqz p2, :cond_f

    .line 333
    iget p3, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mRectAnimGeneration:I

    add-int/lit8 p3, p3, 0x1

    iput p3, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mRectAnimGeneration:I

    .line 334
    new-instance v0, Lcom/transsion/camera/app/ui/anim/AnimationManager$6;

    invoke-direct {v0, p0, p3}, Lcom/transsion/camera/app/ui/anim/AnimationManager$6;-><init>(Lcom/transsion/camera/app/ui/anim/AnimationManager;I)V

    :goto_d
    move-object v6, v0

    goto :goto_11

    :cond_f
    const/4 v0, 0x0

    goto :goto_d

    .line 346
    :goto_11
    iget-object v1, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mSwitchAnimView:Lcom/transsion/camera/app/ui/view/SwitchAnimView;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/anim/AnimationManager;->getPreviewRectChangeAnimDuration()J

    move-result-wide v4

    move-object v2, p1

    move v3, p2

    invoke-virtual/range {v1 .. v6}, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->updateTargetRect(Landroid/graphics/Rect;ZJLandroid/animation/Animator$AnimatorListener;)V

    return-void
.end method
