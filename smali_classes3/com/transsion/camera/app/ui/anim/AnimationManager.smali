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

.field private mAnimatorSwitchViewScale:Landroid/animation/Animator;

.field private mAppUI:Lcom/transsion/camera/app/common/IAppUI;

.field private final mContext:Landroid/content/Context;

.field protected mCurrentMode:Ljava/lang/String;

.field private mEnableStartBlur:Z

.field private volatile mFadeSwitchAnimState:I

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

    .line 1192
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->setMaxRenderEffect()V

    const/4 v0, 0x0

    .line 1193
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

    .line 1181
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportUI4Animator:Z

    if-eqz v0, :cond_b

    .line 1182
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->setMaxRenderEffect()V

    :cond_b
    const/4 v0, 0x0

    .line 1184
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->setVisibility(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$QhQXSVg_oe3IyDuIfRJKa8IIQrw(Lcom/transsion/camera/app/ui/view/SwitchAnimView;)V
    .registers 2

    const/4 v0, 0x4

    .line 408
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

    .line 448
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

.method static bridge synthetic -$$Nest$fgetmIsPreviewRendered(Lcom/transsion/camera/app/ui/anim/AnimationManager;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mIsPreviewRendered:Z

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

    .line 177
    new-instance v0, Lcom/transsion/camera/app/ui/anim/AnimationManager$2;

    invoke-direct {v0}, Lcom/transsion/camera/app/ui/anim/AnimationManager$2;-><init>()V

    sput-object v0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->ACTION_SHOW_ANIM_TYPE_MAP:Ljava/util/HashMap;

    .line 198
    new-instance v0, Lcom/transsion/camera/app/ui/anim/AnimationManager$3;

    invoke-direct {v0}, Lcom/transsion/camera/app/ui/anim/AnimationManager$3;-><init>()V

    sput-object v0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->ACTION_HIDE_ANIM_TYPE_MAP:Ljava/util/HashMap;

    .line 212
    new-instance v0, Lcom/transsion/camera/app/ui/anim/AnimationManager$4;

    invoke-direct {v0}, Lcom/transsion/camera/app/ui/anim/AnimationManager$4;-><init>()V

    sput-object v0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->ACTION_HIDE_ANIM_DELAY_MS_MAP:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Lcom/transsion/camera/app/ui/ScreenManager;)V
    .registers 5

    .line 254
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

    .line 109
    iput v0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mScreenFormType:I

    .line 114
    const-string v1, "com.transsion.camera.feature.mode.autoscenedetection.ASDModeEntry"

    iput-object v1, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mCurrentMode:Ljava/lang/String;

    .line 115
    const-string v1, ""

    iput-object v1, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mPreMode:Ljava/lang/String;

    .line 117
    const-string v1, "0"

    iput-object v1, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mPreCameraId:Ljava/lang/String;

    .line 119
    iput-object v1, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mNextCameraId:Ljava/lang/String;

    .line 123
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mSwitchAnimStart:Z

    .line 124
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mIsSwitchAnim:Z

    const/4 v1, 0x0

    .line 126
    iput-object v1, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mAnimatorSwitchViewFadeAway:Landroid/animation/Animator;

    .line 128
    iput-object v1, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mAnimatorSwitchViewScale:Landroid/animation/Animator;

    .line 132
    iput-object v1, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mPreviewBitmapCache:Landroid/graphics/Bitmap;

    .line 135
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mPreviewRect:Landroid/graphics/Rect;

    .line 136
    new-instance v1, Lcom/transsion/camera/app/ui/anim/AnimationManager$AnimationHandler;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/ui/anim/AnimationManager$AnimationHandler;-><init>(Lcom/transsion/camera/app/ui/anim/AnimationManager;)V

    iput-object v1, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mHandler:Landroid/os/Handler;

    .line 137
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mOldValue:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 139
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mUnifyCaptureAnimation:Z

    .line 144
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v1

    iget-boolean v1, v1, Lcom/transsion/camera/utils/CustomConfigUtil;->mEnableStartBlur:Z

    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mEnableStartBlur:Z

    .line 148
    new-instance v1, Lcom/transsion/camera/app/ui/anim/AnimationManager$1;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/ui/anim/AnimationManager$1;-><init>(Lcom/transsion/camera/app/ui/anim/AnimationManager;)V

    iput-object v1, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mPreviewRenderCallback:Lcom/transsion/camera/app/common/preview/IPreviewRenderedCallbacker;

    .line 285
    const-string v1, "slip_ide"

    iput-object v1, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mSlipStatus:Ljava/lang/String;

    .line 286
    new-instance v1, Lcom/transsion/camera/app/ui/anim/AnimationManager$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/ui/anim/AnimationManager$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/app/ui/anim/AnimationManager;)V

    iput-object v1, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    .line 998
    new-instance v1, Lcom/transsion/camera/app/ui/anim/AnimationManager$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/ui/anim/AnimationManager$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/app/ui/anim/AnimationManager;)V

    iput-object v1, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mIModuleTransfer:Lcom/transsion/camera/app/common/IModuleTransfer;

    .line 255
    iput-object p2, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    .line 256
    invoke-virtual {p2}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenFormType()I

    move-result p2

    iput p2, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mScreenFormType:I

    .line 257
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mContext:Landroid/content/Context;

    .line 258
    iput-object p1, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mRootView:Landroid/view/View;

    .line 260
    sget p1, Lcom/transsion/camera/R$color;->screen_supply_color:I

    invoke-virtual {p2, p1}, Landroid/content/Context;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mScreenSupplyColor:I

    .line 261
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/anim/AnimationManager;->screenPocket()Z

    move-result p1

    if-nez p1, :cond_88

    .line 262
    invoke-static {}, Lcom/transsion/camera/app/common/ModuleTransferManager;->getTransferManager()Lcom/transsion/camera/app/common/ModuleTransferManager;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/transsion/camera/app/common/ModuleTransferManager;->registerTransferListener(Lcom/transsion/camera/app/common/IModuleTransfer;)V

    .line 264
    :cond_88
    iget-object p1, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mOldValue:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const/4 p1, 0x1

    .line 265
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mNeedBuildBlurCover:Z

    .line 266
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/transsion/camera/R$bool;->unify_capture_animation:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mUnifyCaptureAnimation:Z

    .line 267
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p1

    iget-boolean p1, p1, Lcom/transsion/camera/utils/CustomConfigUtil;->mIsSupportHideCoverAnimation:Z

    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mIsSupportHideCoverAnimation:Z

    return-void
.end method

.method private animationHidePreviewCover()V
    .registers 5

    .line 605
    sget-object v0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "animationHidePreviewCover"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 606
    invoke-static {v1}, Lcom/transsion/camera/utils/debug/TraceUtil;->begin(Ljava/lang/String;)V

    .line 607
    iget-object v1, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mViewSwitcherRoot:Lcom/transsion/camera/app/ui/view/ViewSwitcher;

    invoke-virtual {v1}, Landroid/view/View;->clearAnimation()V

    .line 608
    iget-object v1, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mSwitchAnimView:Lcom/transsion/camera/app/ui/view/SwitchAnimView;

    invoke-virtual {v1}, Landroid/view/View;->clearAnimation()V

    .line 609
    iget-object v1, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mSwitchAnimView:Lcom/transsion/camera/app/ui/view/SwitchAnimView;

    const/high16 v2, -0x1000000

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 610
    iget-object v1, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mSwitchAnimView:Lcom/transsion/camera/app/ui/view/SwitchAnimView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->setVisibility(I)V

    .line 611
    iget-object v1, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mSwitchAnimView:Lcom/transsion/camera/app/ui/view/SwitchAnimView;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 612
    iget-object v1, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mViewSwitcherRoot:Lcom/transsion/camera/app/ui/view/ViewSwitcher;

    invoke-virtual {v1, v2}, Landroid/view/View;->setScaleX(F)V

    .line 613
    iget-object v1, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mViewSwitcherRoot:Lcom/transsion/camera/app/ui/view/ViewSwitcher;

    invoke-virtual {v1, v2}, Landroid/view/View;->setScaleY(F)V

    .line 614
    iget-object v1, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mSwitchAnimView:Lcom/transsion/camera/app/ui/view/SwitchAnimView;

    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->clear()V

    const/4 v1, 0x0

    .line 615
    iput v1, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mAnimationCount:I

    .line 616
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mIsAnimating:Z

    .line 617
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mNeedWideScaleAnim:Z

    .line 618
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mNeedRectChangedAnim:Z

    .line 619
    iget-object v2, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mAnimatorSwitchViewScale:Landroid/animation/Animator;

    const/4 v3, 0x0

    if-eqz v2, :cond_47

    .line 620
    iput-object v3, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mAnimatorSwitchViewScale:Landroid/animation/Animator;

    .line 622
    :cond_47
    iget-object v2, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mAnimatorSwitchViewFadeAway:Landroid/animation/Animator;

    if-eqz v2, :cond_50

    .line 623
    invoke-virtual {v2}, Landroid/animation/Animator;->removeAllListeners()V

    .line 624
    iput-object v3, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mAnimatorSwitchViewFadeAway:Landroid/animation/Animator;

    .line 626
    :cond_50
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mIsSwitchAnim:Z

    .line 627
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/anim/AnimationManager;->releaseBlurBitmap()V

    .line 628
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/anim/AnimationManager;->clearFadeSwitchAnimState()V

    .line 630
    invoke-static {}, Lcom/transsion/camera/utils/dfx/mgr/ExManager;->get()Lcom/transsion/camera/utils/dfx/inter/IExDetection;

    move-result-object p0

    const/16 v1, 0x3ea

    invoke-interface {p0, v1}, Lcom/transsion/camera/utils/dfx/inter/IPerformanceDfx;->onActionEnd(I)V

    .line 631
    invoke-static {}, Lcom/transsion/camera/utils/debug/TraceUtil;->end()V

    .line 632
    const-string p0, "[PreviewPerformance] animationHidePreviewCover Done."

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private cacheBlurBitmap(Z)V
    .registers 9

    .line 786
    iget-object v0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mPreviewController:Lcom/transsion/camera/app/ui/preview/IPreviewController;

    if-eqz v0, :cond_83

    .line 787
    invoke-interface {v0}, Lcom/transsion/camera/app/ui/preview/IPreviewController;->getPreviewOperator()Lcom/transsion/camera/app/common/preview/IPreviewOperator;

    move-result-object v0

    .line 788
    iget-object v1, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mPreviewController:Lcom/transsion/camera/app/ui/preview/IPreviewController;

    invoke-interface {v1}, Lcom/transsion/camera/app/ui/preview/IPreviewController;->getPreviewView()Landroid/view/View;

    move-result-object v1

    .line 789
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v2

    .line 790
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 791
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

    .line 792
    iget-object v4, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mSwitchAnimView:Lcom/transsion/camera/app/ui/view/SwitchAnimView;

    if-eqz v4, :cond_83

    if-lez v2, :cond_83

    if-lez v1, :cond_83

    .line 793
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 794
    iget-boolean v6, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mEnableStartBlur:Z

    if-eqz v6, :cond_4b

    if-nez p1, :cond_4b

    const/16 p1, 0x8

    goto :goto_51

    :cond_4b
    iget-object v6, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mSwitchAnimView:Lcom/transsion/camera/app/ui/view/SwitchAnimView;

    invoke-virtual {v6, p1}, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->getPreferFactor(Z)I

    move-result p1

    .line 795
    :goto_51
    invoke-interface {v0, v2, v1, p1}, Lcom/transsion/camera/app/common/preview/IPreviewOperator;->getBitmap(III)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mPreviewBitmapCache:Landroid/graphics/Bitmap;

    .line 796
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateBlurBitmap getPreview-cache factor: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", bitmap spent time: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 797
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

    .line 796
    invoke-static {v3, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :cond_83
    return-void
.end method

.method private static calculateAODDVVisibleArea(Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .registers 6

    .line 384
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

    .line 385
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

    .line 721
    sget-object v0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "cancelFlipAnim"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 722
    iget-object v0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mAnimatorSwitchViewScale:Landroid/animation/Animator;

    if-eqz v0, :cond_e

    .line 723
    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 725
    :cond_e
    iget-object p0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mAnimatorSwitchViewFadeAway:Landroid/animation/Animator;

    if-eqz p0, :cond_15

    .line 726
    invoke-virtual {p0}, Landroid/animation/Animator;->cancel()V

    :cond_15
    return-void
.end method

.method private changeFadeSwitchAnimState(IZ)V
    .registers 4

    .line 1169
    iget v0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mFadeSwitchAnimState:I

    if-nez p2, :cond_6

    or-int/2addr p1, v0

    goto :goto_8

    :cond_6
    not-int p1, p1

    and-int/2addr p1, v0

    .line 1175
    :goto_8
    iput p1, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mFadeSwitchAnimState:I

    return-void
.end method

.method private clearFadeSwitchAnimState()V
    .registers 3

    .line 1156
    sget-object v0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "clearFadeSwitchAnimState: "

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/16 v0, 0x40

    const/4 v1, 0x1

    .line 1157
    invoke-direct {p0, v0, v1}, Lcom/transsion/camera/app/ui/anim/AnimationManager;->changeFadeSwitchAnimState(IZ)V

    const/16 v0, 0x80

    .line 1158
    invoke-direct {p0, v0, v1}, Lcom/transsion/camera/app/ui/anim/AnimationManager;->changeFadeSwitchAnimState(IZ)V

    const/4 v0, 0x2

    .line 1159
    invoke-direct {p0, v0, v1}, Lcom/transsion/camera/app/ui/anim/AnimationManager;->changeFadeSwitchAnimState(IZ)V

    const/16 v0, 0x100

    .line 1160
    invoke-direct {p0, v0, v1}, Lcom/transsion/camera/app/ui/anim/AnimationManager;->changeFadeSwitchAnimState(IZ)V

    .line 1161
    invoke-direct {p0, v1, v1}, Lcom/transsion/camera/app/ui/anim/AnimationManager;->changeFadeSwitchAnimState(IZ)V

    const/4 v0, 0x4

    .line 1162
    invoke-direct {p0, v0, v1}, Lcom/transsion/camera/app/ui/anim/AnimationManager;->changeFadeSwitchAnimState(IZ)V

    const/16 v0, 0x8

    .line 1163
    invoke-direct {p0, v0, v1}, Lcom/transsion/camera/app/ui/anim/AnimationManager;->changeFadeSwitchAnimState(IZ)V

    const/16 v0, 0x20

    .line 1164
    invoke-direct {p0, v0, v1}, Lcom/transsion/camera/app/ui/anim/AnimationManager;->changeFadeSwitchAnimState(IZ)V

    const/16 v0, 0x800

    .line 1165
    invoke-direct {p0, v0, v1}, Lcom/transsion/camera/app/ui/anim/AnimationManager;->changeFadeSwitchAnimState(IZ)V

    return-void
.end method

.method private drawBlackPreviewCover()V
    .registers 3

    .line 919
    iget v0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mAnimationCount:I

    if-lez v0, :cond_9

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mIsAnimating:Z

    if-eqz v0, :cond_9

    goto :goto_21

    .line 920
    :cond_9
    iget-object v0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mSwitchAnimView:Lcom/transsion/camera/app/ui/view/SwitchAnimView;

    if-eqz v0, :cond_21

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_21

    .line 921
    iget-object v0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mSwitchAnimView:Lcom/transsion/camera/app/ui/view/SwitchAnimView;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 922
    iget-object p0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mSwitchAnimView:Lcom/transsion/camera/app/ui/view/SwitchAnimView;

    sget v0, Lcom/transsion/camera/R$color;->preview_cover_default_color:I

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->setSwitchAnimInfo(I)V

    :cond_21
    :goto_21
    return-void
.end method

.method private fadeOutPreviewCover()V
    .registers 4

    .line 896
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v1, 0x5a

    .line 897
    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 898
    new-instance v1, Lcom/transsion/camera/app/ui/anim/AnimationManager$8;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/ui/anim/AnimationManager$8;-><init>(Lcom/transsion/camera/app/ui/anim/AnimationManager;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 915
    iget-object p0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mSwitchAnimView:Lcom/transsion/camera/app/ui/view/SwitchAnimView;

    invoke-virtual {p0, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method private getCurrentMode()Ljava/lang/String;
    .registers 2

    .line 358
    iget-object v0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/IAppUI;->getCurrentModeSettingUISpec()Lcom/transsion/camera/app/common/ModeSettingUISpec;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 359
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 360
    :cond_d
    iget-object p0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mCurrentMode:Ljava/lang/String;

    return-object p0
.end method

.method private getIsSuportFilpAnimation()Z
    .registers 3

    .line 1008
    invoke-static {}, Lcom/transsion/camera/app/ui/anim/AnimationManager;->getPersistFlipFromProperty()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 1011
    :cond_8
    iget-object p0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/transsion/camera/R$bool;->camera_switch_flip:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    const/4 v0, 0x1

    if-nez p0, :cond_1f

    .line 1012
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

    .line 1029
    const-string v0, "debug.camera.switchflip"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private hidePreviewCover()V
    .registers 5

    .line 852
    iget v0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mAnimationCount:I

    if-lez v0, :cond_8

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mIsAnimating:Z

    if-nez v0, :cond_12

    :cond_8
    iget-object v0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mSlipStatus:Ljava/lang/String;

    const-string v1, "slip_ide"

    .line 853
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3f

    .line 854
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

    .line 858
    :cond_3f
    iget-object v0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mSwitchAnimView:Lcom/transsion/camera/app/ui/view/SwitchAnimView;

    if-eqz v0, :cond_53

    .line 859
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 860
    instance-of v0, v0, Landroid/animation/Animator;

    if-eqz v0, :cond_53

    .line 861
    sget-object p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "hidePreviewCover: mFadeBlurAnimator is not finish."

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 865
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

    .line 866
    iget-object v1, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mSwitchAnimView:Lcom/transsion/camera/app/ui/view/SwitchAnimView;

    const/4 v2, 0x0

    if-eqz v1, :cond_b8

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_b8

    .line 867
    const-string v1, "hidePreviewCover"

    invoke-static {v1}, Lcom/transsion/camera/utils/debug/TraceUtil;->begin(Ljava/lang/String;)V

    .line 868
    iget-boolean v1, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mIsSwitchAnim:Z

    if-eqz v1, :cond_8d

    .line 869
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mSwitchAnimStart:Z

    if-eqz v0, :cond_86

    .line 870
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mSwitchAnimStart:Z

    goto :goto_89

    .line 872
    :cond_86
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/anim/AnimationManager;->startFlipHideCoverAnim()V

    .line 874
    :goto_89
    invoke-static {}, Lcom/transsion/camera/utils/debug/TraceUtil;->end()V

    return-void

    .line 877
    :cond_8d
    iget-object v1, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mSwitchAnimView:Lcom/transsion/camera/app/ui/view/SwitchAnimView;

    invoke-virtual {v1}, Landroid/view/View;->clearAnimation()V

    .line 878
    iget-object v1, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mSwitchAnimView:Lcom/transsion/camera/app/ui/view/SwitchAnimView;

    const/high16 v3, -0x1000000

    invoke-virtual {v1, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 879
    iget-object v1, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mSwitchAnimView:Lcom/transsion/camera/app/ui/view/SwitchAnimView;

    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->setVisibility(I)V

    .line 880
    iget-object v1, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mSwitchAnimView:Lcom/transsion/camera/app/ui/view/SwitchAnimView;

    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->clear()V

    .line 881
    invoke-static {}, Lcom/transsion/camera/utils/dfx/mgr/ExManager;->get()Lcom/transsion/camera/utils/dfx/inter/IExDetection;

    move-result-object v1

    const/16 v3, 0x3eb

    invoke-interface {v1, v3}, Lcom/transsion/camera/utils/dfx/inter/IPerformanceDfx;->onActionEnd(I)V

    .line 882
    invoke-static {}, Lcom/transsion/camera/utils/debug/TraceUtil;->end()V

    .line 883
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/anim/AnimationManager;->releaseBlurBitmap()V

    .line 884
    const-string v1, "[PreviewPerformance] hidePreviewCover Done."

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 887
    :cond_b8
    iput v2, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mAnimationCount:I

    .line 888
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mIsAnimating:Z

    .line 889
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mNeedWideScaleAnim:Z

    .line 890
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mNeedRectChangedAnim:Z

    .line 891
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mIsPreviewRendered:Z

    .line 892
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/anim/AnimationManager;->clearFadeSwitchAnimState()V

    return-void
.end method

.method private isNeedFadeBlurAnim(II)Z
    .registers 7

    .line 1034
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportUI4Animator:Z

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return v1

    .line 1037
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

    .line 1039
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

    .line 1044
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

    .line 1051
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

    .line 1052
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

    .line 1053
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

    .line 1054
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

    .line 1097
    iget p0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mFadeSwitchAnimState:I

    const/16 v0, 0x40

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_9

    const/4 p0, 0x1

    goto :goto_a

    :cond_9
    const/4 p0, 0x0

    .line 1098
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

    .line 1149
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

    .line 1151
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

    .line 1103
    iget p0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mFadeSwitchAnimState:I

    const/16 v0, 0x80

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_9

    const/4 p0, 0x1

    goto :goto_a

    :cond_9
    const/4 p0, 0x0

    .line 1104
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

    .line 1109
    iget p0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mFadeSwitchAnimState:I

    const/16 v0, 0x20

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_9

    const/4 p0, 0x1

    goto :goto_a

    :cond_9
    const/4 p0, 0x0

    .line 1110
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

    .line 1115
    iget p0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mFadeSwitchAnimState:I

    const/16 v0, 0x800

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_9

    const/4 p0, 0x1

    goto :goto_a

    :cond_9
    const/4 p0, 0x0

    .line 1116
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

    .line 1058
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/anim/AnimationManager;->updateSwitchAnimType(I)V

    .line 1059
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/ui/anim/AnimationManager;->isNeedFadeBlurAnim(II)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/transsion/camera/app/ui/anim/AnimationManager$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0, p1, p2}, Lcom/transsion/camera/app/ui/anim/AnimationManager$$ExternalSyntheticLambda6;-><init>(Lcom/transsion/camera/app/ui/anim/AnimationManager;II)V

    .line 1060
    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p1

    new-instance p2, Lcom/transsion/camera/app/ui/anim/AnimationManager$$ExternalSyntheticLambda7;

    invoke-direct {p2, p0}, Lcom/transsion/camera/app/ui/anim/AnimationManager$$ExternalSyntheticLambda7;-><init>(Lcom/transsion/camera/app/ui/anim/AnimationManager;)V

    .line 1073
    invoke-virtual {p1, p2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private synthetic lambda$judgePlayFadeSwitchAnim$4(IILjava/lang/Boolean;)Ljava/lang/Boolean;
    .registers 8

    .line 1061
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_23

    const/16 v0, 0x12f

    if-eq p1, v0, :cond_13

    const/16 v0, 0x1c

    if-eq p1, v0, :cond_13

    .line 1063
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

    .line 1066
    invoke-direct {p0, v3, v0}, Lcom/transsion/camera/app/ui/anim/AnimationManager;->changeFadeSwitchAnimState(IZ)V

    .line 1069
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

    .line 1074
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    const/16 v0, 0x40

    invoke-direct {p0, v0, p1}, Lcom/transsion/camera/app/ui/anim/AnimationManager;->changeFadeSwitchAnimState(IZ)V

    return-void
.end method

.method private synthetic lambda$new$0(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 287
    const-string v0, "key_zoom_ui_state"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_48

    .line 288
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

    .line 294
    :pswitch_38
    iget-object p1, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mSlipStatus:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_48

    .line 295
    iput-object v1, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mSlipStatus:Ljava/lang/String;

    .line 296
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/anim/AnimationManager;->hidePreviewCover()V

    return-void

    .line 291
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

    .line 999
    iget-object v0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mOldValue:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eq v0, p1, :cond_1b

    .line 1000
    iget-object v0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mOldValue:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1001
    iget-object v0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mSwitchAnimView:Lcom/transsion/camera/app/ui/view/SwitchAnimView;

    if-eqz v0, :cond_1b

    if-nez p1, :cond_16

    const/high16 p0, -0x1000000

    goto :goto_18

    .line 1002
    :cond_16
    iget p0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mScreenSupplyColor:I

    :goto_18
    invoke-virtual {v0, p0}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_1b
    return-void
.end method

.method private releaseBlurBitmap()V
    .registers 4

    .line 803
    iget-object v0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mPreviewBitmapCache:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_24

    .line 804
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

    .line 805
    iget-object v0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mPreviewBitmapCache:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v0, 0x0

    .line 806
    iput-object v0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mPreviewBitmapCache:Landroid/graphics/Bitmap;

    :cond_24
    return-void
.end method

.method private screenPocket()Z
    .registers 2

    const/4 v0, 0x6

    .line 304
    iget p0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mScreenFormType:I

    if-ne v0, p0, :cond_7

    const/4 p0, 0x1

    return p0

    :cond_7
    const/4 p0, 0x0

    return p0
.end method

.method private showPreviewCover(I)V
    .registers 6

    .line 747
    iget-object v0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mSwitchAnimView:Lcom/transsion/camera/app/ui/view/SwitchAnimView;

    if-eqz v0, :cond_89

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_89

    iget-object v0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mPreviewController:Lcom/transsion/camera/app/ui/preview/IPreviewController;

    if-eqz v0, :cond_89

    .line 749
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

    .line 776
    :cond_1f
    iget-object p1, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mPreviewController:Lcom/transsion/camera/app/ui/preview/IPreviewController;

    invoke-interface {p1}, Lcom/transsion/camera/app/ui/preview/IPreviewController;->getPreviewOperator()Lcom/transsion/camera/app/common/preview/IPreviewOperator;

    move-result-object p1

    if-eqz p1, :cond_2a

    .line 778
    invoke-interface {p1}, Lcom/transsion/camera/app/common/preview/IPreviewOperator;->stopRenderRequest()V

    .line 780
    :cond_2a
    invoke-direct {p0, v0, p1}, Lcom/transsion/camera/app/ui/anim/AnimationManager;->updateBlurBitmap(Landroid/view/View;Lcom/transsion/camera/app/common/preview/IPreviewOperator;)V

    return-void

    .line 755
    :cond_2e
    :goto_2e
    iget-object v0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mCurrentMode:Ljava/lang/String;

    const-string v3, "com.transsion.camera.feature.mode.timelapsemode.TimelapsePhotoModeEntry"

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_39

    goto :goto_89

    .line 758
    :cond_39
    iget-object v0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mSwitchAnimView:Lcom/transsion/camera/app/ui/view/SwitchAnimView;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->setVisibility(I)V

    .line 759
    iget-object v0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mSwitchAnimView:Lcom/transsion/camera/app/ui/view/SwitchAnimView;

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 760
    iget-object v0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mSwitchAnimView:Lcom/transsion/camera/app/ui/view/SwitchAnimView;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->clear()V

    .line 761
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mUnifyCaptureAnimation:Z

    if-nez v0, :cond_5d

    iget-object v0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mOldValue:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_5d

    .line 762
    iget-object v0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mSwitchAnimView:Lcom/transsion/camera/app/ui/view/SwitchAnimView;

    sget v2, Lcom/transsion/camera/R$color;->preview_cover_capture_color_white:I

    invoke-virtual {v0, v2}, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->setSwitchAnimInfo(I)V

    goto :goto_6e

    :cond_5d
    if-ne p1, v2, :cond_67

    .line 764
    iget-object v0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mSwitchAnimView:Lcom/transsion/camera/app/ui/view/SwitchAnimView;

    sget v2, Lcom/transsion/camera/R$color;->preview_cover_capture_color:I

    invoke-virtual {v0, v2}, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->setSwitchAnimInfo(I)V

    goto :goto_6e

    .line 766
    :cond_67
    iget-object v0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mSwitchAnimView:Lcom/transsion/camera/app/ui/view/SwitchAnimView;

    sget v2, Lcom/transsion/camera/R$color;->preview_cover_default_color:I

    invoke-virtual {v0, v2}, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->setSwitchAnimInfo(I)V

    :goto_6e
    const-wide/16 v2, 0x5a

    if-ne p1, v1, :cond_7e

    .line 769
    iget-object p1, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 770
    iget-object p0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void

    .line 772
    :cond_7e
    iget-object p1, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 773
    iget-object p0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_89
    :goto_89
    return-void
.end method

.method private startFadeSwitchAnim(Z)V
    .registers 5

    .line 1079
    iget-object v0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mSwitchAnimView:Lcom/transsion/camera/app/ui/view/SwitchAnimView;

    if-nez v0, :cond_5

    return-void

    .line 1082
    :cond_5
    new-instance v1, Lcom/transsion/camera/app/ui/anim/AnimationManager$10;

    invoke-direct {v1, p0, p1}, Lcom/transsion/camera/app/ui/anim/AnimationManager$10;-><init>(Lcom/transsion/camera/app/ui/anim/AnimationManager;Z)V

    const/4 p0, 0x1

    new-array p0, p0, [Landroid/animation/Animator$AnimatorListener;

    const/4 v2, 0x0

    aput-object v1, p0, v2

    invoke-virtual {v0, p1, p0}, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->startFadeSwitchAnim(Z[Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method private startFlipAnim()V
    .registers 4

    .line 636
    iget-object v0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mSwitchAnimView:Lcom/transsion/camera/app/ui/view/SwitchAnimView;

    if-eqz v0, :cond_4a

    iget-object v0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mViewSwitcherRoot:Lcom/transsion/camera/app/ui/view/ViewSwitcher;

    if-eqz v0, :cond_4a

    iget-object v0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mPreviewController:Lcom/transsion/camera/app/ui/preview/IPreviewController;

    if-eqz v0, :cond_4a

    .line 637
    invoke-interface {v0}, Lcom/transsion/camera/app/ui/preview/IPreviewController;->getPreviewView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_13

    goto :goto_4a

    .line 641
    :cond_13
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 642
    invoke-virtual {v0, v1}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 643
    iget-object v1, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mSwitchAnimView:Lcom/transsion/camera/app/ui/view/SwitchAnimView;

    invoke-virtual {v1}, Landroid/view/View;->clearAnimation()V

    .line 644
    iget-object v1, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mViewSwitcherRoot:Lcom/transsion/camera/app/ui/view/ViewSwitcher;

    invoke-virtual {v1}, Landroid/view/View;->clearAnimation()V

    .line 645
    iget-object v1, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mContext:Landroid/content/Context;

    sget v2, Lcom/transsion/camera/R$animator;->preview_cover_scale:I

    invoke-static {v1, v2}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mAnimatorSwitchViewScale:Landroid/animation/Animator;

    .line 646
    iget-object v2, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mViewSwitcherRoot:Lcom/transsion/camera/app/ui/view/ViewSwitcher;

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 647
    iget-object v1, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mAnimatorSwitchViewScale:Landroid/animation/Animator;

    new-instance v2, Lcom/transsion/camera/app/ui/anim/AnimationManager$6;

    invoke-direct {v2, p0, v0}, Lcom/transsion/camera/app/ui/anim/AnimationManager$6;-><init>(Lcom/transsion/camera/app/ui/anim/AnimationManager;Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 684
    iget-object p0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mAnimatorSwitchViewScale:Landroid/animation/Animator;

    invoke-virtual {p0}, Landroid/animation/Animator;->start()V

    .line 685
    sget-object p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "previewView.startAnimation"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :cond_4a
    :goto_4a
    return-void
.end method

.method private startFlipHideCoverAnim()V
    .registers 3

    .line 690
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mIsSupportHideCoverAnimation:Z

    if-eqz v0, :cond_23

    .line 691
    iget-object v0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mContext:Landroid/content/Context;

    sget v1, Lcom/transsion/camera/R$animator;->preview_cover_fade_away:I

    invoke-static {v0, v1}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mAnimatorSwitchViewFadeAway:Landroid/animation/Animator;

    .line 692
    iget-object v1, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mSwitchAnimView:Lcom/transsion/camera/app/ui/view/SwitchAnimView;

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 693
    iget-object v0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mAnimatorSwitchViewFadeAway:Landroid/animation/Animator;

    new-instance v1, Lcom/transsion/camera/app/ui/anim/AnimationManager$7;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/ui/anim/AnimationManager$7;-><init>(Lcom/transsion/camera/app/ui/anim/AnimationManager;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 714
    iget-object p0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mAnimatorSwitchViewFadeAway:Landroid/animation/Animator;

    invoke-virtual {p0}, Landroid/animation/Animator;->start()V

    return-void

    .line 716
    :cond_23
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/anim/AnimationManager;->animationHidePreviewCover()V

    return-void
.end method

.method private startPreviewCoverAnim(II)V
    .registers 10

    .line 564
    iget v0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mAnimationCount:I

    if-nez v0, :cond_b

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mIsSwitchAnim:Z

    if-eqz v0, :cond_b

    .line 565
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/anim/AnimationManager;->cancelFlipAnim()V

    .line 567
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

    .line 573
    :cond_33
    iget v3, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mAnimationCount:I

    or-int/2addr v3, p2

    iput v3, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mAnimationCount:I

    .line 574
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

    .line 576
    :cond_5c
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/ui/anim/AnimationManager;->judgePlayFadeSwitchAnim(II)V

    .line 577
    iget-boolean v3, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mIsAnimating:Z

    if-eqz v3, :cond_b2

    const/16 v0, 0x10

    if-eq p2, v0, :cond_6c

    .line 579
    iget-object v0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    :cond_6c
    const/16 v0, 0x3e

    if-ne p1, v0, :cond_72

    .line 582
    iput-boolean v4, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mNeedWideScaleAnim:Z

    :cond_72
    const/16 v0, 0x3f

    if-ne p1, v0, :cond_7a

    const/4 v0, 0x0

    .line 585
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/anim/AnimationManager;->startWideAnim(Z)V

    .line 587
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

    .line 591
    :cond_b2
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/anim/AnimationManager;->getIsSuportFilpAnimation()Z

    move-result v3

    if-eqz v3, :cond_ca

    if-eq p1, v2, :cond_ca

    .line 592
    invoke-direct {p0, p2}, Lcom/transsion/camera/app/ui/anim/AnimationManager;->isNeedFlipAnim(I)Z

    move-result v2

    if-eqz v2, :cond_ca

    .line 593
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/anim/AnimationManager;->updateRingScreenLightState()V

    .line 594
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/anim/AnimationManager;->startFlipAnim()V

    .line 595
    iget-object v2, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mNextCameraId:Ljava/lang/String;

    iput-object v2, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mPreCameraId:Ljava/lang/String;

    .line 598
    :cond_ca
    iput-boolean v4, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mIsAnimating:Z

    .line 599
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

    .line 601
    invoke-direct {p0, p2}, Lcom/transsion/camera/app/ui/anim/AnimationManager;->showPreviewCover(I)V

    return-void
.end method

.method private startWideAnim(Z)V
    .registers 5

    .line 927
    iget-object v0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mSwitchAnimView:Lcom/transsion/camera/app/ui/view/SwitchAnimView;

    if-eqz v0, :cond_27

    if-eqz p1, :cond_c

    .line 930
    new-instance v0, Lcom/transsion/camera/app/ui/anim/AnimationManager$9;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/ui/anim/AnimationManager$9;-><init>(Lcom/transsion/camera/app/ui/anim/AnimationManager;)V

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    if-eqz p1, :cond_22

    .line 938
    iget-object v1, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mPreviewController:Lcom/transsion/camera/app/ui/preview/IPreviewController;

    invoke-interface {v1}, Lcom/transsion/camera/app/ui/preview/IPreviewController;->getPreviewView()Landroid/view/View;

    move-result-object v1

    .line 939
    iget-object v2, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mPreviewController:Lcom/transsion/camera/app/ui/preview/IPreviewController;

    invoke-interface {v2}, Lcom/transsion/camera/app/ui/preview/IPreviewController;->getPreviewOperator()Lcom/transsion/camera/app/common/preview/IPreviewOperator;

    move-result-object v2

    if-eqz v1, :cond_22

    if-eqz v2, :cond_22

    .line 941
    invoke-direct {p0, v1, v2}, Lcom/transsion/camera/app/ui/anim/AnimationManager;->updateBlurBitmap(Landroid/view/View;Lcom/transsion/camera/app/common/preview/IPreviewOperator;)V

    .line 944
    :cond_22
    iget-object p0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mSwitchAnimView:Lcom/transsion/camera/app/ui/view/SwitchAnimView;

    invoke-virtual {p0, p1, v0}, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->startWideChangeAnim(ZLcom/transsion/camera/app/ui/view/SwitchAnimView$AnimEndCallback;)V

    :cond_27
    return-void
.end method

.method private stopPreviewCoverAnim(III)V
    .registers 16

    .line 499
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mIsAnimating:Z

    const-string v1, "stopPreviewCoverAnim action:"

    if-nez v0, :cond_20

    .line 500
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

    .line 504
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mNeedBuildBlurCover:Z

    const/4 v2, 0x2

    const/4 v3, 0x5

    .line 505
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

    .line 510
    :cond_44
    iget v2, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mAnimationCount:I

    not-int v6, p2

    and-int/2addr v2, v6

    and-int/lit16 v2, v2, -0x101

    .line 511
    iput v2, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mAnimationCount:I

    .line 512
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

    .line 514
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

    .line 517
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/anim/AnimationManager;->isSwitchAnimTypeStart()Z

    move-result v2

    if-eqz v2, :cond_89

    :cond_86
    const/4 v2, 0x0

    .line 518
    iput v2, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mAnimationCount:I

    .line 520
    :cond_89
    iget v2, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mAnimationCount:I

    const-string v3, ", animationCount:"

    if-lez v2, :cond_b7

    .line 521
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

    .line 524
    :cond_b7
    iget-object v2, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mPreviewController:Lcom/transsion/camera/app/ui/preview/IPreviewController;

    invoke-interface {v2}, Lcom/transsion/camera/app/ui/preview/IPreviewController;->getPreviewOperator()Lcom/transsion/camera/app/common/preview/IPreviewOperator;

    move-result-object v2

    if-eqz v2, :cond_e9

    if-ne p1, v6, :cond_c6

    const/4 v8, 0x0

    .line 527
    invoke-interface {v2, v8, v8}, Lcom/transsion/camera/app/common/preview/IPreviewOperator;->startRenderRequest(Lcom/transsion/camera/app/common/preview/IPreviewRenderedCallbacker;Landroid/os/Handler;)V

    goto :goto_e9

    :cond_c6
    if-ne p1, v7, :cond_e2

    .line 529
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/anim/AnimationManager;->isSwitchAnimTypeStart()Z

    move-result v8

    if-eqz v8, :cond_da

    const-string v8, "com.transsion.camera.feature.mode.dualvideo.DualVideoModeEntry"

    invoke-direct {p0}, Lcom/transsion/camera/app/ui/anim/AnimationManager;->getCurrentMode()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_e9

    .line 530
    :cond_da
    iget-object v8, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mPreviewRenderCallback:Lcom/transsion/camera/app/common/preview/IPreviewRenderedCallbacker;

    iget-object v9, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mHandler:Landroid/os/Handler;

    invoke-interface {v2, v8, v9}, Lcom/transsion/camera/app/common/preview/IPreviewOperator;->startRenderRequest(Lcom/transsion/camera/app/common/preview/IPreviewRenderedCallbacker;Landroid/os/Handler;)V

    goto :goto_e9

    .line 533
    :cond_e2
    iget-object v8, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mPreviewRenderCallback:Lcom/transsion/camera/app/common/preview/IPreviewRenderedCallbacker;

    iget-object v9, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mHandler:Landroid/os/Handler;

    invoke-interface {v2, v8, v9}, Lcom/transsion/camera/app/common/preview/IPreviewOperator;->startRenderRequest(Lcom/transsion/camera/app/common/preview/IPreviewRenderedCallbacker;Landroid/os/Handler;)V

    .line 536
    :cond_e9
    :goto_e9
    iget-object v8, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mSwitchAnimView:Lcom/transsion/camera/app/ui/view/SwitchAnimView;

    if-eqz v8, :cond_111

    .line 537
    invoke-virtual {v8}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    .line 538
    sget-object v9, Lcom/transsion/camera/app/ui/anim/AnimationManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "stopPreviewCoverAnim: mSwitchAnimView.getTag() = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 539
    instance-of v8, v8, Landroid/animation/Animator;

    if-eqz v8, :cond_111

    .line 540
    const-string p0, "stopPreviewCoverAnim: mFadeBlurAnimator is not finish."

    invoke-static {v9, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 544
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

    .line 547
    iget-object p0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    return-void

    :cond_13d
    if-ne p1, v7, :cond_16b

    .line 549
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/anim/AnimationManager;->isNeedSwitchAnim()Z

    move-result p1

    if-nez p1, :cond_16b

    invoke-direct {p0}, Lcom/transsion/camera/app/ui/anim/AnimationManager;->isSwitchAnimTypeStart()Z

    move-result p1

    if-nez p1, :cond_16b

    .line 550
    iget-object p1, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 551
    iget-object p0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mHandler:Landroid/os/Handler;

    int-to-long p1, p3

    invoke-virtual {p0, v5, p1, p2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void

    .line 555
    :cond_157
    iget-object p1, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 556
    iget-object p1, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mHandler:Landroid/os/Handler;

    int-to-long p2, p3

    invoke-virtual {p1, v0, p2, p3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 557
    iget-object p1, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mPreviewController:Lcom/transsion/camera/app/ui/preview/IPreviewController;

    instance-of p1, p1, Lcom/transsion/camera/app/ui/preview/SurfaceViewController;

    if-eqz p1, :cond_16b

    .line 558
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/anim/AnimationManager;->hidePreviewCover()V

    :cond_16b
    return-void
.end method

.method private updateBlurBitmap(Landroid/view/View;Lcom/transsion/camera/app/common/preview/IPreviewOperator;)V
    .registers 11

    .line 811
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 812
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    if-eqz v0, :cond_fe

    if-nez p1, :cond_e

    goto/16 :goto_fe

    .line 816
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

    .line 820
    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mNeedBuildBlurCover:Z

    if-nez v2, :cond_5a

    goto/16 :goto_d9

    .line 824
    :cond_5a
    iget-object v2, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mPreviewBitmapCache:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_69

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_69

    .line 825
    iget-object p1, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mPreviewBitmapCache:Landroid/graphics/Bitmap;

    .line 826
    iput-boolean v4, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mIsPreviewBitmapCache:Z

    goto :goto_bd

    .line 828
    :cond_69
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 829
    iget-object v4, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mSwitchAnimView:Lcom/transsion/camera/app/ui/view/SwitchAnimView;

    invoke-virtual {v4, v5}, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->getPreferFactor(Z)I

    move-result v4

    .line 830
    iput-boolean v5, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mIsPreviewBitmapCache:Z

    .line 832
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->getInstance()Lcom/transsion/camera/app/common/CommonConfigUtil;

    move-result-object v6

    iget-boolean v6, v6, Lcom/transsion/camera/app/common/CommonConfigUtil;->mEnableDVMode:Z

    if-eqz v6, :cond_96

    iget v6, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mScreenFormType:I

    const/4 v7, 0x7

    if-ne v6, v7, :cond_96

    const-string v6, "com.transsion.camera.feature.mode.video.DVVideoModeEntry"

    iget-object v7, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mCurrentMode:Ljava/lang/String;

    .line 834
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_96

    .line 835
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6, v5, v5, v0, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-static {v6}, Lcom/transsion/camera/app/ui/anim/AnimationManager;->calculateAODDVVisibleArea(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v6

    goto :goto_97

    :cond_96
    const/4 v6, 0x0

    .line 837
    :goto_97
    invoke-interface {p2, v0, p1, v4, v6}, Lcom/transsion/camera/app/common/preview/IPreviewOperator;->getBitmap(IIILandroid/graphics/Rect;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 838
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

    .line 840
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p2

    if-nez p2, :cond_d1

    .line 841
    iget-object p2, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mSwitchAnimView:Lcom/transsion/camera/app/ui/view/SwitchAnimView;

    invoke-direct {p0}, Lcom/transsion/camera/app/ui/anim/AnimationManager;->isNeedSwitchAnim()Z

    move-result v0

    iget-boolean v1, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mIsPreviewBitmapCache:Z

    invoke-virtual {p2, p1, v0, v1}, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->setSwitchAnimInfo(Landroid/graphics/Bitmap;ZZ)V

    goto :goto_e0

    .line 843
    :cond_d1
    iget-object p1, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mSwitchAnimView:Lcom/transsion/camera/app/ui/view/SwitchAnimView;

    sget p2, Lcom/transsion/camera/R$drawable;->camera_default_gaussian_blur:I

    invoke-virtual {p1, p2}, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->setSwitchAnimInfo(I)V

    goto :goto_e0

    .line 821
    :cond_d9
    :goto_d9
    iget-object p1, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mSwitchAnimView:Lcom/transsion/camera/app/ui/view/SwitchAnimView;

    sget p2, Lcom/transsion/camera/R$color;->preview_cover_default_color:I

    invoke-virtual {p1, p2}, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->setSwitchAnimInfo(I)V

    .line 846
    :goto_e0
    iget-object p1, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mSwitchAnimView:Lcom/transsion/camera/app/ui/view/SwitchAnimView;

    invoke-virtual {p1, v5}, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->setVisibility(I)V

    .line 847
    iget-object p1, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mSwitchAnimView:Lcom/transsion/camera/app/ui/view/SwitchAnimView;

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    .line 848
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

    .line 1136
    :cond_1d
    invoke-direct {p0, v1, v0}, Lcom/transsion/camera/app/ui/anim/AnimationManager;->changeFadeSwitchAnimState(IZ)V

    goto :goto_39

    :cond_21
    const/16 p1, 0x800

    .line 1140
    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/app/ui/anim/AnimationManager;->changeFadeSwitchAnimState(IZ)V

    goto :goto_39

    :cond_27
    const/16 p1, 0x8

    .line 1132
    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/app/ui/anim/AnimationManager;->changeFadeSwitchAnimState(IZ)V

    goto :goto_39

    .line 1129
    :cond_2d
    invoke-direct {p0, v1, v0}, Lcom/transsion/camera/app/ui/anim/AnimationManager;->changeFadeSwitchAnimState(IZ)V

    goto :goto_39

    .line 1123
    :cond_31
    invoke-direct {p0, v1, v0}, Lcom/transsion/camera/app/ui/anim/AnimationManager;->changeFadeSwitchAnimState(IZ)V

    goto :goto_39

    :cond_35
    const/4 p1, 0x1

    .line 1126
    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/app/ui/anim/AnimationManager;->changeFadeSwitchAnimState(IZ)V

    .line 1145
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

    .line 462
    sget-object v0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->ACTION_SHOW_ANIM_TYPE_MAP:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_35

    .line 463
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_152

    .line 465
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/app/ui/anim/AnimationManager;->startPreviewCoverAnim(II)V

    return-void

    .line 467
    :cond_35
    sget-object v0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->ACTION_HIDE_ANIM_DELAY_MS_MAP:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_152

    .line 468
    sget-object v1, Lcom/transsion/camera/app/ui/anim/AnimationManager;->ACTION_HIDE_ANIM_TYPE_MAP:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 469
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v1, :cond_152

    if-eqz v0, :cond_152

    .line 471
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, p1, v1, v0}, Lcom/transsion/camera/app/ui/anim/AnimationManager;->stopPreviewCoverAnim(III)V

    return-void

    .line 425
    :pswitch_67
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mGoingToGallery:Z

    .line 426
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/anim/AnimationManager;->releaseBlurBitmap()V

    return-void

    .line 416
    :pswitch_6d
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportUI4Animator:Z

    if-nez v0, :cond_8a

    .line 417
    sget-object v0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->ACTION_SHOW_ANIM_TYPE_MAP:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_8a

    .line 419
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/app/ui/anim/AnimationManager;->startPreviewCoverAnim(II)V

    .line 422
    :cond_8a
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mGoingToGallery:Z

    return-void

    .line 399
    :pswitch_8d
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mGoingToGallery:Z

    .line 400
    invoke-direct {p0, v2}, Lcom/transsion/camera/app/ui/anim/AnimationManager;->cacheBlurBitmap(Z)V

    .line 401
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportUI4Animator:Z

    if-nez v0, :cond_9e

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mEnableStartBlur:Z

    if-eqz v0, :cond_152

    .line 402
    :cond_9e
    sget-object v0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->ACTION_SHOW_ANIM_TYPE_MAP:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_b3

    .line 404
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/app/ui/anim/AnimationManager;->startPreviewCoverAnim(II)V

    .line 407
    :cond_b3
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mIsAnimating:Z

    if-nez p1, :cond_152

    .line 408
    iget-object p0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mSwitchAnimView:Lcom/transsion/camera/app/ui/view/SwitchAnimView;

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    new-instance p1, Lcom/transsion/camera/app/ui/anim/AnimationManager$$ExternalSyntheticLambda4;

    invoke-direct {p1}, Lcom/transsion/camera/app/ui/anim/AnimationManager$$ExternalSyntheticLambda4;-><init>()V

    invoke-virtual {p0, p1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void

    .line 453
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

    .line 454
    sget-object v0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->ACTION_HIDE_ANIM_TYPE_MAP:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 455
    sget-object v1, Lcom/transsion/camera/app/ui/anim/AnimationManager;->ACTION_HIDE_ANIM_DELAY_MS_MAP:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-eqz v0, :cond_152

    if-eqz v1, :cond_152

    .line 457
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Lcom/transsion/camera/app/ui/anim/AnimationManager;->stopPreviewCoverAnim(III)V

    return-void

    .line 413
    :cond_100
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mGoingToGallery:Z

    return-void

    .line 429
    :cond_103
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mEnableStartBlur:Z

    if-eqz p1, :cond_10a

    .line 430
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mGoingToGallery:Z

    return-void

    .line 431
    :cond_10a
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p1

    iget-boolean p1, p1, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportUI4Animator:Z

    if-eqz p1, :cond_116

    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mGoingToGallery:Z

    if-nez p1, :cond_152

    .line 432
    :cond_116
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mGoingToGallery:Z

    .line 433
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mIsAnimating:Z

    .line 434
    iput v1, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mAnimationCount:I

    .line 435
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/anim/AnimationManager;->hidePreviewCover()V

    return-void

    .line 439
    :cond_120
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mEnableStartBlur:Z

    if-eqz v0, :cond_152

    .line 440
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mGoingToGallery:Z

    if-nez v0, :cond_12b

    .line 441
    invoke-direct {p0, v1}, Lcom/transsion/camera/app/ui/anim/AnimationManager;->cacheBlurBitmap(Z)V

    .line 443
    :cond_12b
    sget-object v0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->ACTION_SHOW_ANIM_TYPE_MAP:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_140

    .line 445
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/app/ui/anim/AnimationManager;->startPreviewCoverAnim(II)V

    .line 447
    :cond_140
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mIsAnimating:Z

    if-nez p1, :cond_152

    .line 448
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

    .line 739
    iget-object v0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mSwitchAnimView:Lcom/transsion/camera/app/ui/view/SwitchAnimView;

    if-eqz v0, :cond_1c

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1c

    .line 740
    iget-object v0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mSwitchAnimView:Lcom/transsion/camera/app/ui/view/SwitchAnimView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->setVisibility(I)V

    .line 741
    iget-object v0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mSwitchAnimView:Lcom/transsion/camera/app/ui/view/SwitchAnimView;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 742
    iget-object p0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mSwitchAnimView:Lcom/transsion/camera/app/ui/view/SwitchAnimView;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->clear()V

    :cond_1c
    return-void
.end method

.method public inflate()V
    .registers 3

    .line 308
    iget-object v0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mSwitchAnimView:Lcom/transsion/camera/app/ui/view/SwitchAnimView;

    if-nez v0, :cond_10

    .line 309
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

    .line 334
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mNeedBuildBlurCover:Z

    return-void
.end method

.method public needRectChangedAnimation(Z)V
    .registers 5

    .line 986
    sget-object v0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "needRectChangedAnimation needAnim: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 987
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mNeedRectChangedAnim:Z

    return-void
.end method

.method public onAbsolutePreviewRectChanged(Landroid/graphics/Rect;)V
    .registers 2

    return-void
.end method

.method public onPrivacyModeChange(ZF)V
    .registers 6

    .line 1207
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

    .line 1209
    iget-object p1, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mViewSwitcherRoot:Lcom/transsion/camera/app/ui/view/ViewSwitcher;

    if-eqz p1, :cond_48

    .line 1210
    iget-object p2, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mViewSwitcherRootState:Lcom/transsion/camera/app/common/ui/helper/ViewState;

    if-nez p2, :cond_33

    .line 1211
    new-instance p2, Lcom/transsion/camera/app/common/ui/helper/ViewState$Builder;

    invoke-direct {p2, p1}, Lcom/transsion/camera/app/common/ui/helper/ViewState$Builder;-><init>(Landroid/view/View;)V

    invoke-virtual {p2}, Lcom/transsion/camera/app/common/ui/helper/ViewState$Builder;->build()Lcom/transsion/camera/app/common/ui/helper/ViewState;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mViewSwitcherRootState:Lcom/transsion/camera/app/common/ui/helper/ViewState;

    .line 1213
    :cond_33
    iget-object p0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mViewSwitcherRoot:Lcom/transsion/camera/app/ui/view/ViewSwitcher;

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 1216
    :cond_3a
    iget-object p1, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mViewSwitcherRootState:Lcom/transsion/camera/app/common/ui/helper/ViewState;

    if-eqz p1, :cond_48

    iget-object p2, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mViewSwitcherRoot:Lcom/transsion/camera/app/ui/view/ViewSwitcher;

    if-eqz p2, :cond_48

    .line 1217
    invoke-virtual {p1, p2}, Lcom/transsion/camera/app/common/ui/helper/ViewState;->restore(Landroid/view/View;)V

    const/4 p1, 0x0

    .line 1218
    iput-object p1, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mViewSwitcherRootState:Lcom/transsion/camera/app/common/ui/helper/ViewState;

    :cond_48
    return-void
.end method

.method public onRelativePreviewRectChanged(Landroid/graphics/Rect;)V
    .registers 7

    .line 365
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/anim/AnimationManager;->screenPocket()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_16

    .line 367
    iget-object v2, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {v2}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenWidth()I

    move-result v2

    iget-object v3, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {v3}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenHeight()I

    move-result v3

    invoke-virtual {p1, v1, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 369
    :cond_16
    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mNeedRectChangedAnim:Z

    .line 370
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->getInstance()Lcom/transsion/camera/app/common/CommonConfigUtil;

    move-result-object v3

    iget-boolean v3, v3, Lcom/transsion/camera/app/common/CommonConfigUtil;->mEnableDVMode:Z

    if-eqz v3, :cond_3d

    iget v3, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mScreenFormType:I

    const/4 v4, 0x7

    if-ne v3, v4, :cond_3d

    .line 371
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

    .line 372
    :cond_39
    invoke-static {p1}, Lcom/transsion/camera/app/ui/anim/AnimationManager;->calculateAODDVVisibleArea(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object p1

    .line 375
    :cond_3d
    iget-object v3, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mPreviewRect:Landroid/graphics/Rect;

    invoke-virtual {v3, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 376
    iget-object v3, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mSwitchAnimView:Lcom/transsion/camera/app/ui/view/SwitchAnimView;

    if-eqz v3, :cond_50

    if-nez v0, :cond_4c

    if-eqz v2, :cond_4c

    const/4 v0, 0x1

    goto :goto_4d

    :cond_4c
    move v0, v1

    .line 377
    :goto_4d
    invoke-virtual {p0, p1, v0, v1}, Lcom/transsion/camera/app/ui/anim/AnimationManager;->updateTargetRect(Landroid/graphics/Rect;ZZ)V

    :cond_50
    return-void
.end method

.method public onResume()V
    .registers 3

    .line 1179
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mEnableStartBlur:Z

    if-eqz v0, :cond_21

    invoke-direct {p0}, Lcom/transsion/camera/app/ui/anim/AnimationManager;->isSwitchAnimTypeStart()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 1180
    iget-object v0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mSwitchAnimView:Lcom/transsion/camera/app/ui/view/SwitchAnimView;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/transsion/camera/app/ui/anim/AnimationManager$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lcom/transsion/camera/app/ui/anim/AnimationManager$$ExternalSyntheticLambda2;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 1187
    iget-object p0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mViewSwitcherRoot:Lcom/transsion/camera/app/ui/view/ViewSwitcher;

    if-eqz p0, :cond_3d

    const/4 v0, 0x0

    .line 1188
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 1190
    :cond_21
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportUI4Animator:Z

    if-eqz v0, :cond_3d

    invoke-direct {p0}, Lcom/transsion/camera/app/ui/anim/AnimationManager;->isSwitchAnimTypeGoToGallery()Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 1191
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

    .line 338
    iput p1, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mScreenFormType:I

    return-void
.end method

.method public onSwitchMode(Ljava/lang/String;)V
    .registers 3

    .line 494
    iget-object v0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mCurrentMode:Ljava/lang/String;

    iput-object v0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mPreMode:Ljava/lang/String;

    .line 495
    iput-object p1, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mCurrentMode:Ljava/lang/String;

    return-void
.end method

.method public rectAnimationListener(Lcom/transsion/camera/app/ui/IAnimProgressListener;)V
    .registers 2

    .line 991
    iget-object p0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mSwitchAnimView:Lcom/transsion/camera/app/ui/view/SwitchAnimView;

    if-eqz p0, :cond_8

    .line 992
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->rectAnimationListener(Lcom/transsion/camera/app/ui/IAnimProgressListener;)V

    return-void

    :cond_8
    if-eqz p1, :cond_f

    const/high16 p0, 0x3f800000    # 1.0f

    .line 994
    invoke-interface {p1, p0}, Lcom/transsion/camera/app/ui/IAnimProgressListener;->onAnimProgress(F)V

    :cond_f
    return-void
.end method

.method public resetRootParentLayout()V
    .registers 6

    .line 342
    iget-object v0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenWidth()I

    move-result v0

    iget-object v1, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 343
    iget-object v1, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenWidth()I

    move-result v1

    iget-object v2, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {v2}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenHeight()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 344
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

    .line 345
    :goto_2d
    iget-object v3, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mSwitchAnimView:Lcom/transsion/camera/app/ui/view/SwitchAnimView;

    if-eqz v3, :cond_4d

    .line 346
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz v2, :cond_40

    .line 347
    iget-object v2, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {v2}, Lcom/transsion/camera/app/ui/ScreenManager;->getColumnPreviewStartMargin()I

    move-result v2

    goto :goto_41

    :cond_40
    move v2, v4

    :goto_41
    invoke-virtual {v3, v2, v4, v4, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 348
    iput v1, v3, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 349
    iput v0, v3, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 350
    iget-object p0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mSwitchAnimView:Lcom/transsion/camera/app/ui/view/SwitchAnimView;

    invoke-virtual {p0, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_4d
    return-void
.end method

.method public resetTargetRect(IIII)V
    .registers 5

    .line 389
    iget-object p0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mSwitchAnimView:Lcom/transsion/camera/app/ui/view/SwitchAnimView;

    if-eqz p0, :cond_7

    .line 390
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->resetTargetRect(IIII)V

    :cond_7
    return-void
.end method

.method public setAppUI(Lcom/transsion/camera/app/common/IAppUI;)V
    .registers 2

    .line 279
    iput-object p1, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz p1, :cond_7

    .line 281
    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/IAppUIControl$IPrivacyControl;->registerPrivacyCallback(Lcom/transsion/camera/app/common/IPrivacyCallback;)V

    :cond_7
    return-void
.end method

.method public setCameraId(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 480
    iput-object p1, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mPreCameraId:Ljava/lang/String;

    .line 481
    iput-object p2, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mNextCameraId:Ljava/lang/String;

    return-void
.end method

.method public setPreviewController(Lcom/transsion/camera/app/ui/preview/IPreviewController;)V
    .registers 2

    .line 330
    iput-object p1, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mPreviewController:Lcom/transsion/camera/app/ui/preview/IPreviewController;

    return-void
.end method

.method public setPreviewMoveDistance(Ljava/util/function/ToIntFunction;)V
    .registers 2

    return-void
.end method

.method public setRingScreenLightResponderListener(Lcom/transsion/camera/app/common/setting/StatusMonitor;)V
    .registers 3

    .line 484
    const-string v0, "ring_screen_light_switch_state"

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mRingScreenLightResponder:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    return-void
.end method

.method public showCustomPreviewCover(Landroid/graphics/Bitmap;)V
    .registers 3

    if-eqz p1, :cond_21

    .line 731
    iget-object v0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mSwitchAnimView:Lcom/transsion/camera/app/ui/view/SwitchAnimView;

    if-eqz v0, :cond_21

    .line 732
    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->setSwitchAnimInfo(Landroid/graphics/Bitmap;)V

    .line 733
    iget-object p1, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mSwitchAnimView:Lcom/transsion/camera/app/ui/view/SwitchAnimView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->setVisibility(I)V

    .line 734
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

    .line 1224
    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mSwitchAnimStart:Z

    return p0
.end method

.method public unInit()V
    .registers 4

    .line 972
    iget-object v0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz v0, :cond_7

    .line 973
    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/IAppUIControl$IPrivacyControl;->unregisterPrivacyCallback(Lcom/transsion/camera/app/common/IPrivacyCallback;)V

    .line 975
    :cond_7
    iget-object v0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 976
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/anim/AnimationManager;->screenPocket()Z

    move-result v0

    if-nez v0, :cond_1c

    .line 977
    invoke-static {}, Lcom/transsion/camera/app/common/ModuleTransferManager;->getTransferManager()Lcom/transsion/camera/app/common/ModuleTransferManager;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mIModuleTransfer:Lcom/transsion/camera/app/common/IModuleTransfer;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ModuleTransferManager;->unregisterTransferListener(Lcom/transsion/camera/app/common/IModuleTransfer;)V

    .line 979
    :cond_1c
    iget-object v0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz v0, :cond_27

    .line 980
    const-string v1, "key_zoom_ui_state"

    iget-object v2, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 982
    :cond_27
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/anim/AnimationManager;->releaseBlurBitmap()V

    return-void
.end method

.method public updateRingScreenLightState()V
    .registers 3

    .line 488
    iget-object p0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mRingScreenLightResponder:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    if-eqz p0, :cond_a

    .line 489
    const-string v0, "ring_screen_light_switch_state"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_a
    return-void
.end method

.method protected updateTargetRect(Landroid/graphics/Rect;ZZ)V
    .registers 10

    .line 326
    iget-object v0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mSwitchAnimView:Lcom/transsion/camera/app/ui/view/SwitchAnimView;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/anim/AnimationManager;->getPreviewRectChangeAnimDuration()J

    move-result-wide v3

    const/4 v5, 0x0

    move-object v1, p1

    move v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->updateTargetRect(Landroid/graphics/Rect;ZJLandroid/animation/Animator$AnimatorListener;)V

    return-void
.end method
