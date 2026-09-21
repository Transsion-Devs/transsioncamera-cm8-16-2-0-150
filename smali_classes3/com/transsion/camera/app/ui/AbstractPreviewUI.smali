.class public abstract Lcom/transsion/camera/app/ui/AbstractPreviewUI;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/ui/IPreviewUI;
.implements Lcom/transsion/camera/app/common/IPrivacyCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/ui/AbstractPreviewUI$OnLayoutChangeListenerImpl;,
        Lcom/transsion/camera/app/ui/AbstractPreviewUI$UIHandler;,
        Lcom/transsion/camera/app/ui/AbstractPreviewUI$OnTouchListenerImpl;,
        Lcom/transsion/camera/app/ui/AbstractPreviewUI$SurfaceStatusListenerImpl;,
        Lcom/transsion/camera/app/ui/AbstractPreviewUI$Listener;
    }
.end annotation


# static fields
.field private static final DVMODE_PREVIEW_COVER_BOTTOM_SIZE:I

.field private static final DVMODE_PREVIEW_COVER_LEFT_SIZE:I

.field private static final DVMODE_PREVIEW_COVER_RIGHT_SIZE:I

.field private static final DVMODE_PREVIEW_COVER_ROUND_SIZE:I

.field private static final DVMODE_PREVIEW_COVER_TOP_SIZE:I

.field private static final FOLD_PATH_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

.field private static final PATH_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

.field private static final ZOOM_RATIO_UNIT:F


# instance fields
.field AuxFadeInListener:Landroid/view/animation/Animation$AnimationListener;

.field AuxFadeOutListener:Landroid/view/animation/Animation$AnimationListener;

.field ExpandFadeInListener:Landroid/view/animation/Animation$AnimationListener;

.field ExpandFadeOutListener:Landroid/view/animation/Animation$AnimationListener;

.field private mAbsolutePreviewRect:Landroid/graphics/Rect;

.field private final mAlgoRenderer:Lcom/transsion/camera/app/common/preview/algorithm/IAlgoRenderer;

.field protected mAnimationManager:Lcom/transsion/camera/app/ui/anim/AnimationManager;

.field private mAnimationType:Lcom/transsion/camera/app/common/IAppUI$AnimationType;

.field private mAnimatorSet:Landroid/animation/AnimatorSet;

.field private mAppUI:Lcom/transsion/camera/app/common/IAppUI;

.field private mAuxExpandView:Landroid/view/View;

.field private mAuxFadeInAnimator:Landroid/view/animation/Animation;

.field private mAuxFadeOutAnimator:Landroid/view/animation/Animation;

.field private mAuxPreviewHeight:I

.field private mAuxPreviewMarginLeft:I

.field private mAuxPreviewMarginTop:I

.field private mAuxPreviewMinSize:I

.field private mAuxPreviewNeedBigger:Z

.field private mAuxPreviewSatSupport:Z

.field private mAuxPreviewView:Landroid/view/View;

.field private mAuxPreviewWidth:I

.field private mAuxShowZoomValue:I

.field private mAuxSurfaceModeSupport:Z

.field private mAuxSurfaceShow:Z

.field private mBaseZoomRatio:I

.field private mBottomCover:Landroid/view/View;

.field private mBottomCoverHeight:I

.field private final mCameraRootView:Landroid/view/View;

.field private mCurrentCameraZoomRatio:F

.field private mDVModePreviewCover:Lcom/transsion/camera/app/ui/DVModePreviewCover;

.field private mExpandFadeInAnimator:Landroid/view/animation/Animation;

.field private mExpandFadeOutAnimator:Landroid/view/animation/Animation;

.field private mExpandViewShow:Z

.field private mForceHideCover:Z

.field private mFrameCallback:Landroid/view/Choreographer$FrameCallback;

.field private mGoingToGallery:Z

.field private final mIModuleTransfer:Lcom/transsion/camera/app/common/IModuleTransfer;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mIntentParser:Lcom/transsion/camera/app/intent/IntentParser;

.field private mIsFrontCamera:Z

.field private mIsLongFocusCamera:Z

.field private mIsPrivacyModeEnable:Z

.field private mIsSuperNightLiteUIShowing:Z

.field private mLastScreenFormType:I

.field private mLocateAuxView:Lcom/transsion/camera/app/ui/view/AuxLocateView;

.field private mMarginBottom:I

.field private mMarginLeft:I

.field private mMarginRight:I

.field private mMarginTop:I

.field private mNeedShowCover:Z

.field private mOnLayoutChangeListenerImpl:Lcom/transsion/camera/app/ui/AbstractPreviewUI$OnLayoutChangeListenerImpl;

.field private mOnTouchListener:Landroid/view/View$OnTouchListener;

.field private mParent:Landroid/view/ViewGroup;

.field private mPreviewAspectRatio:D

.field private mPreviewContainerView:Landroid/view/ViewGroup;

.field private mPreviewController:Lcom/transsion/camera/app/ui/preview/IPreviewController;

.field private mPreviewControllerMap:Ljava/util/HashMap;

.field private mPreviewCover:Landroid/view/View;

.field private mPreviewCoverState:Lcom/transsion/camera/app/common/ui/helper/ViewState;

.field private mPreviewHeight:I

.field private mPreviewOperator:Lcom/transsion/camera/app/common/preview/IPreviewOperator;

.field private final mPreviewRectListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

.field private mPreviewStyle:Lcom/transsion/camera/app/ui/PreviewStyle;

.field private mPreviewUIRectAnimator:Landroid/animation/ValueAnimator;

.field private mPreviewUITouchListener:Lcom/transsion/camera/app/ui/AbstractPreviewUI$OnTouchListenerImpl;

.field private mPreviewView:Landroid/view/View;

.field private mPreviewViewType:Lcom/transsion/camera/utils/SettingInfo$PreviewViewType;

.field private mPreviewWidth:I

.field private mProjectAuxSurfaceSupport:Z

.field private mRelativePreviewRect:Landroid/graphics/Rect;

.field private mReseFrameCallback:Z

.field private final mResetPrivacyMode:Ljava/lang/Runnable;

.field private mResources:Landroid/content/res/Resources;

.field private mRootView:Landroid/view/ViewGroup;

.field private mScreenFormType:I

.field private mScreenHeight:I

.field private mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

.field private mScreenWidth:I

.field private mSkipBottomCoverAnim:Z

.field private mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

.field private mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

.field private mSurfaceStatusListener:Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener;

.field private mSwitchPreviewValue:Ljava/lang/String;

.field private mTargetHeight:I

.field private mTargetWidth:I

.field private mTimerStatus:Ljava/lang/String;

.field protected final mUIHandler:Lcom/transsion/camera/app/ui/AbstractPreviewUI$UIHandler;

.field private mZoomValue:I


# direct methods
.method public static synthetic $r8$lambda$-CNWKEPq_YcV-cYz_tT2CseYo5Q(Lcom/transsion/camera/app/ui/AbstractPreviewUI;Z)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->lambda$new$0(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$D8orulN7JOzE_cRSdepH3KzQ07k(Lcom/transsion/camera/app/ui/AbstractPreviewUI;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->lambda$setAuxPreviewModeSupport$5()V

    return-void
.end method

.method public static synthetic $r8$lambda$DSvkpu9WaT473-ISkROZtBRn_Mo(Lcom/transsion/camera/app/ui/AbstractPreviewUI;J)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->lambda$initAuxViews$2(J)V

    return-void
.end method

.method public static synthetic $r8$lambda$EKxf6qwqhfDoVvSnUkt2NgQMc1I(Lcom/transsion/camera/app/ui/AbstractPreviewUI;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->lambda$screenShot$13()V

    return-void
.end method

.method public static synthetic $r8$lambda$GhZncl-_kbnNupjutjSNw_hdJPk(Lcom/transsion/camera/app/ui/AbstractPreviewUI;Landroid/animation/ValueAnimator;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->lambda$runUpdatePreviewAnimator$8(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$N8Qu3njZNE4bj4tK5enXoXAopkk(Lcom/transsion/camera/app/ui/AbstractPreviewUI;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->lambda$updateSwitchCameraUI$4()V

    return-void
.end method

.method public static synthetic $r8$lambda$V-c5rk65DHx4cEHzlNIQZkvxvc0(Lcom/transsion/camera/app/ui/AbstractPreviewUI;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->lambda$new$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$ZLcoxU-QLeGEYh89Cr67AB9Re5Q(Lcom/transsion/camera/app/ui/AbstractPreviewUI;IIIIF)V
    .registers 6

    .line 0
    invoke-direct/range {p0 .. p5}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->lambda$doUpdatePreviewLayoutForRatio$6(IIIIF)V

    return-void
.end method

.method public static synthetic $r8$lambda$gl3TMcSWHRUhkCmkncuQevNSmB8(Lcom/transsion/camera/app/ui/AbstractPreviewUI;Landroid/animation/ValueAnimator;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->lambda$runUpdatePreviewAnimator$9(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$idlLig7DC8gYM93EcGpjnUNrHYY(Lcom/transsion/camera/app/ui/AbstractPreviewUI;Landroid/animation/ValueAnimator;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->lambda$runUpdatePreviewAnimator$11(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ikeMPWhqzQhrnvN1YmDahzsTAZs(Lcom/transsion/camera/app/ui/AbstractPreviewUI;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->lambda$setAuxPreviewLensSupport$3()V

    return-void
.end method

.method public static synthetic $r8$lambda$jN9MoLy2JvsuYTJ58ITuhQmu0Lw(Lcom/transsion/camera/app/ui/AbstractPreviewUI;Lcom/transsion/camera/app/common/IAppUI$AnimationType;Landroid/graphics/RectF;Landroid/animation/ValueAnimator;)V
    .registers 4

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->lambda$runUpdatePreviewHoverAnimator$12(Lcom/transsion/camera/app/common/IAppUI$AnimationType;Landroid/graphics/RectF;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$vUr5eCmNbzRX2PKNaJi98xmZihU(Lcom/transsion/camera/app/ui/AbstractPreviewUI;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->lambda$screenShot$14()V

    return-void
.end method

.method public static synthetic $r8$lambda$z6gxl3E8gmQDoEMIebfGzY63Ovo(Lcom/transsion/camera/app/ui/AbstractPreviewUI;Landroid/animation/ValueAnimator;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->lambda$runUpdatePreviewAnimator$7(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$zVbt3VgMXSiYEWGdcn6QX5wnrXo(Lcom/transsion/camera/app/ui/AbstractPreviewUI;Landroid/animation/ValueAnimator;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->lambda$runUpdatePreviewAnimator$10(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmAbsolutePreviewRect(Lcom/transsion/camera/app/ui/AbstractPreviewUI;)Landroid/graphics/Rect;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mAbsolutePreviewRect:Landroid/graphics/Rect;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmAuxExpandView(Lcom/transsion/camera/app/ui/AbstractPreviewUI;)Landroid/view/View;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mAuxExpandView:Landroid/view/View;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmAuxPreviewView(Lcom/transsion/camera/app/ui/AbstractPreviewUI;)Landroid/view/View;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mAuxPreviewView:Landroid/view/View;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmAuxSurfaceModeSupport(Lcom/transsion/camera/app/ui/AbstractPreviewUI;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mAuxSurfaceModeSupport:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmAuxSurfaceShow(Lcom/transsion/camera/app/ui/AbstractPreviewUI;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mAuxSurfaceShow:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmExpandViewShow(Lcom/transsion/camera/app/ui/AbstractPreviewUI;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mExpandViewShow:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsSuperNightLiteUIShowing(Lcom/transsion/camera/app/ui/AbstractPreviewUI;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mIsSuperNightLiteUIShowing:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmOnTouchListener(Lcom/transsion/camera/app/ui/AbstractPreviewUI;)Landroid/view/View$OnTouchListener;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPreviewContainerView(Lcom/transsion/camera/app/ui/AbstractPreviewUI;)Landroid/view/ViewGroup;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mPreviewContainerView:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPreviewController(Lcom/transsion/camera/app/ui/AbstractPreviewUI;)Lcom/transsion/camera/app/ui/preview/IPreviewController;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mPreviewController:Lcom/transsion/camera/app/ui/preview/IPreviewController;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPreviewView(Lcom/transsion/camera/app/ui/AbstractPreviewUI;)Landroid/view/View;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mPreviewView:Landroid/view/View;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmRelativePreviewRect(Lcom/transsion/camera/app/ui/AbstractPreviewUI;)Landroid/graphics/Rect;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mRelativePreviewRect:Landroid/graphics/Rect;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmResetPrivacyMode(Lcom/transsion/camera/app/ui/AbstractPreviewUI;)Ljava/lang/Runnable;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mResetPrivacyMode:Ljava/lang/Runnable;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmScreenFormType(Lcom/transsion/camera/app/ui/AbstractPreviewUI;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mScreenFormType:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmSurfaceStatusListener(Lcom/transsion/camera/app/ui/AbstractPreviewUI;)Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mSurfaceStatusListener:Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTimerStatus(Lcom/transsion/camera/app/ui/AbstractPreviewUI;)Ljava/lang/String;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mTimerStatus:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmAuxSurfaceShow(Lcom/transsion/camera/app/ui/AbstractPreviewUI;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mAuxSurfaceShow:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmSwitchPreviewValue(Lcom/transsion/camera/app/ui/AbstractPreviewUI;Ljava/lang/String;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mSwitchPreviewValue:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmTimerStatus(Lcom/transsion/camera/app/ui/AbstractPreviewUI;Ljava/lang/String;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mTimerStatus:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmZoomValue(Lcom/transsion/camera/app/ui/AbstractPreviewUI;I)V
    .registers 2

    .line 0
    iput p1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mZoomValue:I

    return-void
.end method

.method static bridge synthetic -$$Nest$mdoSetAuxPreviewSize(Lcom/transsion/camera/app/ui/AbstractPreviewUI;II)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->doSetAuxPreviewSize(II)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mdoSetBackgroundPreviewSize(Lcom/transsion/camera/app/ui/AbstractPreviewUI;II)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->doSetBackgroundPreviewSize(II)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mdoSetPreviewSize(Lcom/transsion/camera/app/ui/AbstractPreviewUI;II)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->doSetPreviewSize(II)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mdoUpdatePreviewLayout(Lcom/transsion/camera/app/ui/AbstractPreviewUI;IZZD)V
    .registers 6

    .line 0
    invoke-direct/range {p0 .. p5}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->doUpdatePreviewLayout(IZZD)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mfadeInAuxPreview(Lcom/transsion/camera/app/ui/AbstractPreviewUI;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->fadeInAuxPreview()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mfadeInExpandPreview(Lcom/transsion/camera/app/ui/AbstractPreviewUI;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->fadeInExpandPreview()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mfadeOutAuxPreview(Lcom/transsion/camera/app/ui/AbstractPreviewUI;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->fadeOutAuxPreview()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mfadeOutExpandPreview(Lcom/transsion/camera/app/ui/AbstractPreviewUI;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->fadeOutExpandPreview()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetAuxPreviewModeSupport(Lcom/transsion/camera/app/ui/AbstractPreviewUI;)Z
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->getAuxPreviewModeSupport()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mgetAuxPreviewSurface(Lcom/transsion/camera/app/ui/AbstractPreviewUI;)Landroid/view/View;
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->getAuxPreviewSurface()Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetExpandView(Lcom/transsion/camera/app/ui/AbstractPreviewUI;)Landroid/view/View;
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->getExpandView()Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetExpandViewShow(Lcom/transsion/camera/app/ui/AbstractPreviewUI;)Z
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->getExpandViewShow()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mhandleUpdatePreviewEnd(Lcom/transsion/camera/app/ui/AbstractPreviewUI;I)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->handleUpdatePreviewEnd(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mnotifyPreviewRectChanged(Lcom/transsion/camera/app/ui/AbstractPreviewUI;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->notifyPreviewRectChanged()V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetExpandViewShow(Lcom/transsion/camera/app/ui/AbstractPreviewUI;Z)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->setExpandViewShow(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateAuxPreview(Lcom/transsion/camera/app/ui/AbstractPreviewUI;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->updateAuxPreview()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateAuxPreviewByZoom(Lcom/transsion/camera/app/ui/AbstractPreviewUI;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->updateAuxPreviewByZoom()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateLocateViewSize(Lcom/transsion/camera/app/ui/AbstractPreviewUI;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->updateLocateViewSize()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateShowZoomValue(Lcom/transsion/camera/app/ui/AbstractPreviewUI;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->updateShowZoomValue()V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;
    .registers 1

    .line 0
    sget-object v0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 5

    .line 107
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "AbstractPreviewUI"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const/16 v0, 0xc

    .line 108
    invoke-static {v0}, Lcom/transsion/camera/utils/UIUtils;->dp(I)I

    move-result v0

    sput v0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->DVMODE_PREVIEW_COVER_ROUND_SIZE:I

    const/16 v0, 0x13

    .line 109
    invoke-static {v0}, Lcom/transsion/camera/utils/UIUtils;->dp(I)I

    move-result v1

    sput v1, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->DVMODE_PREVIEW_COVER_LEFT_SIZE:I

    .line 110
    invoke-static {v0}, Lcom/transsion/camera/utils/UIUtils;->dp(I)I

    move-result v0

    sput v0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->DVMODE_PREVIEW_COVER_RIGHT_SIZE:I

    const/16 v0, 0x28

    .line 111
    invoke-static {v0}, Lcom/transsion/camera/utils/UIUtils;->dp(I)I

    move-result v0

    sput v0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->DVMODE_PREVIEW_COVER_TOP_SIZE:I

    const/16 v0, 0x14

    .line 112
    invoke-static {v0}, Lcom/transsion/camera/utils/UIUtils;->dp(I)I

    move-result v0

    sput v0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->DVMODE_PREVIEW_COVER_BOTTOM_SIZE:I

    .line 154
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mZoomAccuracyEnlarged:Z

    if-eqz v0, :cond_3b

    const v0, 0x461c4000    # 10000.0f

    goto :goto_3d

    :cond_3b
    const/high16 v0, 0x42c80000    # 100.0f

    :goto_3d
    sput v0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->ZOOM_RATIO_UNIT:F

    .line 199
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const/high16 v1, 0x3e800000    # 0.25f

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v2, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->PATH_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    .line 200
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3ecccccd    # 0.4f

    const v4, 0x3e4ccccd    # 0.2f

    invoke-direct {v0, v1, v2, v4, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->FOLD_PATH_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Lcom/transsion/camera/app/ui/ScreenManager;Lcom/transsion/camera/app/common/preview/algorithm/IAlgoRenderer;)V
    .registers 9

    .line 249
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 128
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mProjectAuxSurfaceSupport:Z

    .line 130
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mIsSuperNightLiteUIShowing:Z

    .line 136
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mAbsolutePreviewRect:Landroid/graphics/Rect;

    .line 140
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mRelativePreviewRect:Landroid/graphics/Rect;

    .line 162
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mAuxSurfaceShow:Z

    .line 164
    iput v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mZoomValue:I

    const/16 v1, 0x140

    .line 166
    iput v1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mAuxPreviewWidth:I

    const/16 v1, 0xf0

    .line 167
    iput v1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mAuxPreviewHeight:I

    .line 168
    iput v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mAuxPreviewMarginLeft:I

    .line 169
    iput v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mAuxPreviewMarginTop:I

    const/4 v1, -0x1

    .line 170
    iput v1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mAuxPreviewMinSize:I

    .line 171
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mAuxPreviewNeedBigger:Z

    const/4 v1, 0x1

    .line 172
    iput v1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mBaseZoomRatio:I

    const/high16 v2, 0x3f800000    # 1.0f

    .line 173
    iput v2, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mCurrentCameraZoomRatio:F

    .line 174
    sget v2, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->ZOOM_RATIO_UNIT:F

    float-to-int v2, v2

    mul-int/lit8 v2, v2, 0x14

    iput v2, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mAuxShowZoomValue:I

    .line 177
    sget-object v2, Lcom/transsion/camera/app/common/IAppUI$AnimationType;->NORMAL:Lcom/transsion/camera/app/common/IAppUI$AnimationType;

    iput-object v2, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mAnimationType:Lcom/transsion/camera/app/common/IAppUI$AnimationType;

    .line 179
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mAuxPreviewSatSupport:Z

    .line 180
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mAuxSurfaceModeSupport:Z

    .line 181
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mExpandViewShow:Z

    .line 182
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mIsLongFocusCamera:Z

    .line 183
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mIsFrontCamera:Z

    .line 189
    iput v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mMarginTop:I

    .line 190
    iput v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mMarginBottom:I

    .line 191
    iput v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mMarginLeft:I

    .line 192
    iput v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mMarginRight:I

    .line 193
    iput v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mTargetWidth:I

    .line 194
    iput v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mTargetHeight:I

    .line 195
    iput v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mScreenWidth:I

    .line 196
    iput v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mScreenHeight:I

    .line 201
    iput v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mScreenFormType:I

    .line 202
    iput v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mLastScreenFormType:I

    .line 209
    sget-object v2, Lcom/transsion/camera/utils/SettingInfo$PreviewViewType;->GL_SURFACE_VIEW:Lcom/transsion/camera/utils/SettingInfo$PreviewViewType;

    iput-object v2, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mPreviewViewType:Lcom/transsion/camera/utils/SettingInfo$PreviewViewType;

    .line 213
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mNeedShowCover:Z

    .line 214
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mForceHideCover:Z

    .line 219
    const-string v1, "off"

    iput-object v1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mSwitchPreviewValue:Ljava/lang/String;

    .line 220
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mReseFrameCallback:Z

    .line 224
    new-instance v1, Ljava/util/HashMap;

    const/4 v3, 0x2

    invoke-direct {v1, v3}, Ljava/util/HashMap;-><init>(I)V

    iput-object v1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mPreviewControllerMap:Ljava/util/HashMap;

    .line 235
    new-instance v1, Lcom/transsion/camera/app/ui/AbstractPreviewUI$$ExternalSyntheticLambda12;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/ui/AbstractPreviewUI$$ExternalSyntheticLambda12;-><init>(Lcom/transsion/camera/app/ui/AbstractPreviewUI;)V

    iput-object v1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mIModuleTransfer:Lcom/transsion/camera/app/common/IModuleTransfer;

    .line 247
    new-instance v1, Lcom/transsion/camera/app/ui/AbstractPreviewUI$$ExternalSyntheticLambda13;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/ui/AbstractPreviewUI$$ExternalSyntheticLambda13;-><init>(Lcom/transsion/camera/app/ui/AbstractPreviewUI;)V

    iput-object v1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mResetPrivacyMode:Ljava/lang/Runnable;

    .line 1483
    new-instance v1, Lcom/transsion/camera/app/ui/AbstractPreviewUI$6;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/ui/AbstractPreviewUI$6;-><init>(Lcom/transsion/camera/app/ui/AbstractPreviewUI;)V

    iput-object v1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->AuxFadeInListener:Landroid/view/animation/Animation$AnimationListener;

    .line 1502
    new-instance v1, Lcom/transsion/camera/app/ui/AbstractPreviewUI$7;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/ui/AbstractPreviewUI$7;-><init>(Lcom/transsion/camera/app/ui/AbstractPreviewUI;)V

    iput-object v1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->AuxFadeOutListener:Landroid/view/animation/Animation$AnimationListener;

    .line 1522
    new-instance v1, Lcom/transsion/camera/app/ui/AbstractPreviewUI$8;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/ui/AbstractPreviewUI$8;-><init>(Lcom/transsion/camera/app/ui/AbstractPreviewUI;)V

    iput-object v1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->ExpandFadeInListener:Landroid/view/animation/Animation$AnimationListener;

    .line 1539
    new-instance v1, Lcom/transsion/camera/app/ui/AbstractPreviewUI$9;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/ui/AbstractPreviewUI$9;-><init>(Lcom/transsion/camera/app/ui/AbstractPreviewUI;)V

    iput-object v1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->ExpandFadeOutListener:Landroid/view/animation/Animation$AnimationListener;

    .line 1653
    new-instance v1, Lcom/transsion/camera/app/ui/AbstractPreviewUI$10;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/ui/AbstractPreviewUI$10;-><init>(Lcom/transsion/camera/app/ui/AbstractPreviewUI;)V

    iput-object v1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    .line 250
    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mCameraRootView:Landroid/view/View;

    .line 251
    iput-object p2, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    .line 252
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mResources:Landroid/content/res/Resources;

    const/4 v1, 0x0

    if-eqz p2, :cond_f3

    .line 254
    invoke-virtual {p2}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenFormType()I

    move-result v3

    iput v3, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mScreenFormType:I

    .line 255
    invoke-virtual {p2}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenFormType()I

    move-result v3

    iput v3, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mLastScreenFormType:I

    .line 256
    iget v3, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mScreenFormType:I

    const/4 v4, 0x7

    if-ne v4, v3, :cond_cc

    .line 257
    new-instance v3, Lcom/transsion/camera/app/ui/PreviewStyle;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4, p2}, Lcom/transsion/camera/app/ui/PreviewStyle;-><init>(Landroid/content/Context;Lcom/transsion/camera/app/ui/ScreenManager;)V

    iput-object v3, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mPreviewStyle:Lcom/transsion/camera/app/ui/PreviewStyle;

    goto :goto_f3

    :cond_cc
    const/4 v4, 0x6

    if-ne v4, v3, :cond_f3

    .line 261
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    filled-new-array {v3, p2}, [Ljava/lang/Object;

    move-result-object v3

    .line 259
    const-string v4, "com.transsion.camera.app.ui.PreviewBackground"

    invoke-static {v4, v3}, Lcom/transsion/camera/utils/ReflectionUtils;->instance(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Landroidx/appcompat/app/ToolbarActionBar$$ExternalSyntheticThrowCCEIfNotNull0;->m(Ljava/lang/Object;)V

    .line 262
    new-instance v3, Lcom/transsion/camera/app/ui/PreviewStyle;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4, p2}, Lcom/transsion/camera/app/ui/PreviewStyle;-><init>(Landroid/content/Context;Lcom/transsion/camera/app/ui/ScreenManager;)V

    iput-object v3, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mPreviewStyle:Lcom/transsion/camera/app/ui/PreviewStyle;

    .line 263
    invoke-virtual {v3, v1}, Lcom/transsion/camera/app/ui/PreviewStyle;->setModeTypeListener(Lcom/transsion/camera/app/ui/PreviewStyle$IModeTypeListener;)V

    .line 264
    iget-object v3, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mPreviewStyle:Lcom/transsion/camera/app/ui/PreviewStyle;

    invoke-virtual {v3, v1}, Lcom/transsion/camera/app/ui/PreviewStyle;->setPreviewStyleListener(Lcom/transsion/camera/app/ui/PreviewStyle$IPreviewStyleListener;)V

    .line 267
    :cond_f3
    :goto_f3
    iput-object p3, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mAlgoRenderer:Lcom/transsion/camera/app/common/preview/algorithm/IAlgoRenderer;

    .line 268
    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->createAnimationManager(Landroid/view/View;Lcom/transsion/camera/app/ui/ScreenManager;)Lcom/transsion/camera/app/ui/anim/AnimationManager;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mAnimationManager:Lcom/transsion/camera/app/ui/anim/AnimationManager;

    .line 269
    new-instance p1, Lcom/transsion/camera/app/ui/AbstractPreviewUI$OnLayoutChangeListenerImpl;

    invoke-direct {p1, p0, v1}, Lcom/transsion/camera/app/ui/AbstractPreviewUI$OnLayoutChangeListenerImpl;-><init>(Lcom/transsion/camera/app/ui/AbstractPreviewUI;Lcom/transsion/camera/app/ui/AbstractPreviewUI-IA;)V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mOnLayoutChangeListenerImpl:Lcom/transsion/camera/app/ui/AbstractPreviewUI$OnLayoutChangeListenerImpl;

    .line 270
    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mPreviewRectListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 271
    new-instance p1, Lcom/transsion/camera/app/ui/AbstractPreviewUI$UIHandler;

    invoke-direct {p1, p0}, Lcom/transsion/camera/app/ui/AbstractPreviewUI$UIHandler;-><init>(Lcom/transsion/camera/app/ui/AbstractPreviewUI;)V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mUIHandler:Lcom/transsion/camera/app/ui/AbstractPreviewUI$UIHandler;

    .line 272
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mAnimationManager:Lcom/transsion/camera/app/ui/anim/AnimationManager;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->registerPreviewRectListener(Lcom/transsion/camera/app/common/IAppUIListener$IPreviewRectListener;)V

    .line 276
    new-instance p1, Lcom/transsion/camera/app/ui/AbstractPreviewUI$OnTouchListenerImpl;

    invoke-direct {p1, p0, v1}, Lcom/transsion/camera/app/ui/AbstractPreviewUI$OnTouchListenerImpl;-><init>(Lcom/transsion/camera/app/ui/AbstractPreviewUI;Lcom/transsion/camera/app/ui/AbstractPreviewUI-IA;)V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mPreviewUITouchListener:Lcom/transsion/camera/app/ui/AbstractPreviewUI$OnTouchListenerImpl;

    .line 277
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mPreviewControllerMap:Ljava/util/HashMap;

    new-instance p2, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;

    invoke-direct {p2, p3, v0}, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;-><init>(Lcom/transsion/camera/app/common/preview/algorithm/IAlgoRenderer;Z)V

    invoke-virtual {p1, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/camera/utils/CustomConfigUtil;->getHdr10PlusSupport()Z

    move-result p1

    if-nez p1, :cond_13a

    .line 280
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p1

    iget-boolean p1, p1, Lcom/transsion/camera/utils/CustomConfigUtil;->mProductConfigHLGSupport:Z

    if-eqz p1, :cond_139

    goto :goto_13a

    :cond_139
    return-void

    .line 281
    :cond_13a
    :goto_13a
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mPreviewControllerMap:Ljava/util/HashMap;

    sget-object p1, Lcom/transsion/camera/utils/SettingInfo$PreviewViewType;->SURFACE_VIEW:Lcom/transsion/camera/utils/SettingInfo$PreviewViewType;

    new-instance p2, Lcom/transsion/camera/app/ui/preview/SurfaceViewController;

    invoke-direct {p2}, Lcom/transsion/camera/app/ui/preview/SurfaceViewController;-><init>()V

    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private doSetAuxPreviewSize(II)V
    .registers 6

    .line 902
    sget-object v0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doSetAuxPreviewSize width: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", height: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 904
    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mAuxPreviewView:Landroid/view/View;

    if-eqz v1, :cond_33

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_33

    .line 905
    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mAuxPreviewView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 906
    const-string v1, "doSetAuxPreviewSize auxPreview visible"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 908
    :cond_33
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mAuxPreviewNeedBigger:Z

    if-eqz v0, :cond_3b

    .line 909
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->makeAuxPreviewLarger(II)V

    goto :goto_3f

    .line 911
    :cond_3b
    iput p1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mAuxPreviewWidth:I

    .line 912
    iput p2, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mAuxPreviewHeight:I

    .line 915
    :goto_3f
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->updateAuxPreviewLayout()V

    .line 916
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mPreviewController:Lcom/transsion/camera/app/ui/preview/IPreviewController;

    invoke-interface {v0, p1, p2}, Lcom/transsion/camera/app/ui/preview/IPreviewController;->setAuxPreviewSize(II)V

    .line 917
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->updateLocateViewSize()V

    return-void
.end method

.method private doSetBackgroundPreviewSize(II)V
    .registers 5

    .line 996
    sget-object p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "doSetBackgroundPreviewSize width: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", height: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private doSetPreviewSize(II)V
    .registers 7

    .line 969
    iput p1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mPreviewWidth:I

    .line 970
    iput p2, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mPreviewHeight:I

    .line 971
    sget-object v0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doSetPreviewSize width: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", height: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    int-to-double v0, p1

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    mul-double/2addr v0, v2

    int-to-double v2, p2

    div-double/2addr v0, v2

    .line 973
    iget-wide v2, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mPreviewAspectRatio:D

    invoke-static {v0, v1, v2, v3}, Lcom/transsion/camera/utils/CameraUtil;->isSameAspectRatio(DD)Z

    move-result v2

    if-nez v2, :cond_3a

    .line 974
    invoke-virtual {p0, v0, v1}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->setPreviewAspectRatio(D)V

    const/4 v2, 0x1

    .line 975
    invoke-virtual {p0, v2}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->needRectChangedAnimation(Z)V

    .line 976
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->doUpdatePreviewLayoutForRatio()V

    .line 979
    :cond_3a
    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mNeedShowCover:Z

    if-eqz v2, :cond_42

    .line 980
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->showCover()V

    goto :goto_45

    .line 982
    :cond_42
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->hidePreviewCover()V

    .line 985
    :goto_45
    iget-object v2, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mPreviewController:Lcom/transsion/camera/app/ui/preview/IPreviewController;

    invoke-interface {v2, p1, p2}, Lcom/transsion/camera/app/ui/preview/IPreviewController;->setPreviewSize(II)V

    .line 986
    iget-object v2, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mUIHandler:Lcom/transsion/camera/app/ui/AbstractPreviewUI$UIHandler;

    new-instance v3, Lcom/transsion/camera/app/ui/AbstractPreviewUI$3;

    invoke-direct {v3, p0, p1, p2}, Lcom/transsion/camera/app/ui/AbstractPreviewUI$3;-><init>(Lcom/transsion/camera/app/ui/AbstractPreviewUI;II)V

    const-wide/16 p0, 0x32

    invoke-virtual {v2, v3, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 992
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p0

    sget-object p1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    const-string v0, "%.3f"

    invoke-static {p1, v0, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setPictureRatioValue(Ljava/lang/String;)V

    return-void
.end method

.method private doUpdatePreviewLayout(IZZD)V
    .registers 22

    move-object/from16 v0, p0

    move/from16 v7, p1

    move-wide/from16 v1, p4

    .line 1087
    iget v3, v0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mMarginLeft:I

    .line 1088
    iget v4, v0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mLastScreenFormType:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_16

    .line 1089
    iget-object v3, v0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {v3}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenWidth()I

    move-result v3

    iget v4, v0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mScreenWidth:I

    sub-int/2addr v3, v4

    :cond_16
    move v8, v3

    .line 1091
    iget v9, v0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mMarginTop:I

    .line 1092
    iget v10, v0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mMarginRight:I

    .line 1093
    iget v11, v0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mMarginBottom:I

    .line 1094
    iget v12, v0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mTargetWidth:I

    .line 1095
    iget v3, v0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mScreenWidth:I

    sub-int v13, v3, v10

    const-wide/16 v3, 0x0

    cmpl-double v3, v1, v3

    if-eqz v3, :cond_34

    .line 1097
    iget-wide v3, v0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mPreviewAspectRatio:D

    invoke-static {v1, v2, v3, v4}, Lcom/transsion/camera/utils/CameraUtil;->isSameAspectRatio(DD)Z

    move-result v3

    if-nez v3, :cond_34

    .line 1098
    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->setPreviewAspectRatio(D)V

    .line 1101
    :cond_34
    iget v1, v0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mScreenFormType:I

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->getPreviewMarginInfo(I)V

    .line 1103
    iget v1, v0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mMarginLeft:I

    if-ne v7, v5, :cond_43

    .line 1105
    iget-object v1, v0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/ScreenManager;->getColumnPreviewStartMargin()I

    move-result v1

    :cond_43
    move v14, v1

    .line 1108
    sget-object v1, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doUpdatePreviewLayout targetWidth:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mTargetWidth:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",targetHeight:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mTargetHeight:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",screenFormType:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",mLastScreenFormType:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mLastScreenFormType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",mPreviewAspectRatio:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, v0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mPreviewAspectRatio:D

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1110
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doUpdatePreviewLayout srcMarginLeft:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",srcMarginTop:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",srcMarginRight:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",srcMarginBottom:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1112
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doUpdatePreviewLayout targetLeft:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",targetTop:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mMarginTop:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",targetRight:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mMarginRight:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",targetBottom:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mMarginBottom:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-eq v7, v5, :cond_f4

    .line 1116
    iget v1, v0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mScreenWidth:I

    iget v2, v0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mScreenHeight:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->updatePreviewContainerViewLayoutParams(IIIIII)V

    .line 1119
    iget-object v1, v0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mAnimationManager:Lcom/transsion/camera/app/ui/anim/AnimationManager;

    if-eqz v1, :cond_f4

    .line 1120
    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/anim/AnimationManager;->resetRootParentLayout()V

    :cond_f4
    if-eqz p3, :cond_132

    const/4 v15, 0x1

    .line 1125
    invoke-virtual {v0, v15}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->needRectChangedAnimation(Z)V

    .line 1126
    iget-object v1, v0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mPreviewView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 1127
    invoke-static {v1}, Lcom/transsion/camera/utils/FeatureSupport;->isOnlySupportTBHoverUI(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_112

    move v1, v8

    .line 1128
    iget-object v8, v0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mAnimationType:Lcom/transsion/camera/app/common/IAppUI$AnimationType;

    move v2, v9

    move v3, v10

    move v4, v11

    move v5, v12

    move v6, v14

    invoke-virtual/range {v0 .. v8}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->runUpdatePreviewHoverAnimator(IIIIIIILcom/transsion/camera/app/common/IAppUI$AnimationType;)V

    return-void

    :cond_112
    move v1, v8

    move v2, v9

    move v3, v10

    move v4, v11

    move v5, v12

    move v6, v14

    .line 1131
    invoke-virtual/range {v0 .. v7}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->runUpdatePreviewAnimator(IIIIIII)V

    if-eqz p2, :cond_131

    .line 1133
    iget-object v5, v0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mAnimationManager:Lcom/transsion/camera/app/ui/anim/AnimationManager;

    if-eqz v5, :cond_131

    if-ne v7, v15, :cond_127

    .line 1135
    iget v6, v0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mScreenWidth:I

    sub-int v13, v6, v3

    .line 1137
    :cond_127
    iget-object v0, v0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    .line 1138
    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenHeight()I

    move-result v0

    sub-int/2addr v0, v4

    .line 1137
    invoke-virtual {v5, v1, v2, v13, v0}, Lcom/transsion/camera/app/ui/anim/AnimationManager;->resetTargetRect(IIII)V

    :cond_131
    return-void

    .line 1142
    :cond_132
    invoke-direct/range {p0 .. p1}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->handleUpdatePreviewEnd(I)V

    return-void
.end method

.method private ensureInitDVModeCoverView()V
    .registers 3

    .line 1855
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mDVModePreviewCover:Lcom/transsion/camera/app/ui/DVModePreviewCover;

    if-eqz v0, :cond_5

    return-void

    .line 1856
    :cond_5
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mCameraRootView:Landroid/view/View;

    sget v1, Lcom/transsion/camera/R$id;->dvmode_preview_cover:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/ui/DVModePreviewCover;

    iput-object v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mDVModePreviewCover:Lcom/transsion/camera/app/ui/DVModePreviewCover;

    return-void
.end method

.method private fadeInAuxPreview()V
    .registers 2

    .line 579
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mAuxPreviewView:Landroid/view/View;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mAuxFadeInAnimator:Landroid/view/animation/Animation;

    invoke-virtual {v0, p0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 580
    sget-object p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "[fadeInAuxPreview]"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private fadeInExpandPreview()V
    .registers 2

    .line 589
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mAuxExpandView:Landroid/view/View;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mExpandFadeInAnimator:Landroid/view/animation/Animation;

    invoke-virtual {v0, p0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method private fadeOutAuxPreview()V
    .registers 2

    .line 584
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mAuxPreviewView:Landroid/view/View;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mAuxFadeOutAnimator:Landroid/view/animation/Animation;

    invoke-virtual {v0, p0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 585
    sget-object p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "[fadeOutAuxPreview]"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private fadeOutExpandPreview()V
    .registers 2

    .line 593
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mAuxExpandView:Landroid/view/View;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mExpandFadeOutAnimator:Landroid/view/animation/Animation;

    invoke-virtual {v0, p0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method private getAuxPreviewModeSupport()Z
    .registers 1

    .line 1480
    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mAuxSurfaceModeSupport:Z

    return p0
.end method

.method private getAuxPreviewSurface()Landroid/view/View;
    .registers 1

    .line 1460
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mAuxPreviewView:Landroid/view/View;

    return-object p0
.end method

.method private getCameraPreviewType(Landroid/content/res/Resources;)I
    .registers 2

    .line 1003
    sget p0, Lcom/transsion/camera/R$integer;->camera_preview_type:I

    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    return p0
.end method

.method private getExpandView()Landroid/view/View;
    .registers 1

    .line 1464
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mAuxExpandView:Landroid/view/View;

    return-object p0
.end method

.method private getExpandViewShow()Z
    .registers 1

    .line 1468
    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mExpandViewShow:Z

    return p0
.end method

.method private handleUpdatePreviewEnd(I)V
    .registers 10

    .line 1147
    sget-object v2, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleUpdatePreviewEnd screenFormType:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ",left:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mMarginLeft:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ",top:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mMarginTop:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ",right:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mMarginRight:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ",bottom:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mMarginBottom:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", mPreviewContainerView.getLeft():"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mRootView:Landroid/view/ViewGroup;

    .line 1151
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", mPreviewContainerView.getRight():"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mPreviewContainerView:Landroid/view/ViewGroup;

    .line 1152
    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1147
    invoke-static {v2, v3}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1154
    iget-object v2, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mPreviewView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/transsion/camera/utils/FeatureSupport;->isOnlySupportTBHoverUI(Landroid/content/Context;)Z

    move-result v2

    const/4 v7, 0x0

    if-nez v2, :cond_6a

    .line 1155
    invoke-virtual {p0, v7}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->needRectChangedAnimation(Z)V

    :cond_6a
    const/4 v2, 0x2

    if-ne p1, v2, :cond_7e

    .line 1158
    iget v1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mScreenWidth:I

    iget v2, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mScreenHeight:I

    iget-object v3, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    .line 1159
    invoke-virtual {v3}, Lcom/transsion/camera/app/ui/ScreenManager;->getColumnPreviewStartMargin()I

    move-result v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    .line 1158
    invoke-direct/range {v0 .. v6}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->updatePreviewContainerViewLayoutParams(IIIIII)V

    .line 1161
    :cond_7e
    iget v1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mTargetWidth:I

    iget v2, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mMarginLeft:I

    iget v3, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mMarginTop:I

    iget v4, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mMarginRight:I

    iget v5, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mMarginBottom:I

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->updatePreviewViewLayoutParams(IIIII)V

    .line 1163
    iget v1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mMarginTop:I

    neg-int v1, v1

    invoke-static {v7, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1164
    const-string v2, "on"

    iget-object v3, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mSwitchPreviewValue:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_a4

    .line 1165
    iget v1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mMarginBottom:I

    neg-int v1, v1

    invoke-static {v7, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    :cond_a4
    move v6, v1

    .line 1167
    iget v1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mMarginLeft:I

    iget v2, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mMarginTop:I

    iget v3, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mMarginRight:I

    iget v4, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mMarginBottom:I

    iget v5, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mTargetWidth:I

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->updatePreviewBottomCover(IIIIII)V

    .line 1169
    iget v1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mMarginLeft:I

    iget v2, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mMarginTop:I

    iget v3, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mMarginRight:I

    iget v4, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mMarginBottom:I

    iget v5, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mTargetWidth:I

    invoke-virtual/range {v0 .. v5}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->setPreViewCoverLayout(IIIII)V

    .line 1171
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mAnimationManager:Lcom/transsion/camera/app/ui/anim/AnimationManager;

    if-eqz v0, :cond_c7

    .line 1172
    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/anim/AnimationManager;->resetRootParentLayout()V

    :cond_c7
    return-void
.end method

.method private hidePreviewCover()V
    .registers 3

    .line 897
    sget-object v0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "hideCover"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x4

    .line 898
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->setPreviewCoverVisibility(I)V

    return-void
.end method

.method private initAuxViews()V
    .registers 3

    .line 521
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mPreviewController:Lcom/transsion/camera/app/ui/preview/IPreviewController;

    invoke-interface {v0}, Lcom/transsion/camera/app/ui/preview/IPreviewController;->getAuxPreviewView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mAuxPreviewView:Landroid/view/View;

    .line 522
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mPreviewController:Lcom/transsion/camera/app/ui/preview/IPreviewController;

    invoke-interface {v0}, Lcom/transsion/camera/app/ui/preview/IPreviewController;->getAuxExpandView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mAuxExpandView:Landroid/view/View;

    .line 523
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mPreviewController:Lcom/transsion/camera/app/ui/preview/IPreviewController;

    invoke-interface {v0}, Lcom/transsion/camera/app/ui/preview/IPreviewController;->getLocateAuxView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/ui/view/AuxLocateView;

    iput-object v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mLocateAuxView:Lcom/transsion/camera/app/ui/view/AuxLocateView;

    .line 524
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->needForceDoFrame()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 525
    new-instance v0, Lcom/transsion/camera/app/ui/AbstractPreviewUI$$ExternalSyntheticLambda14;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/ui/AbstractPreviewUI$$ExternalSyntheticLambda14;-><init>(Lcom/transsion/camera/app/ui/AbstractPreviewUI;)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mFrameCallback:Landroid/view/Choreographer$FrameCallback;

    .line 535
    :cond_27
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mAuxExpandView:Landroid/view/View;

    new-instance v1, Lcom/transsion/camera/app/ui/AbstractPreviewUI$1;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/ui/AbstractPreviewUI$1;-><init>(Lcom/transsion/camera/app/ui/AbstractPreviewUI;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 546
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mAuxPreviewView:Landroid/view/View;

    new-instance v1, Lcom/transsion/camera/app/ui/AbstractPreviewUI$2;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/ui/AbstractPreviewUI$2;-><init>(Lcom/transsion/camera/app/ui/AbstractPreviewUI;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 557
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mAuxPreviewView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/transsion/camera/R$anim;->aux_preview_fade_in:I

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mAuxFadeInAnimator:Landroid/view/animation/Animation;

    .line 558
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mAuxPreviewView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/transsion/camera/R$anim;->aux_preview_fade_out:I

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mAuxFadeOutAnimator:Landroid/view/animation/Animation;

    .line 559
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mAuxPreviewView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/transsion/camera/R$anim;->expand_fade_in:I

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mExpandFadeInAnimator:Landroid/view/animation/Animation;

    .line 560
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mAuxPreviewView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/transsion/camera/R$anim;->expand_fade_out:I

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mExpandFadeOutAnimator:Landroid/view/animation/Animation;

    .line 562
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mAuxFadeInAnimator:Landroid/view/animation/Animation;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->AuxFadeInListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 563
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mAuxFadeOutAnimator:Landroid/view/animation/Animation;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->AuxFadeOutListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 564
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mExpandFadeInAnimator:Landroid/view/animation/Animation;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->ExpandFadeInListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 565
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mExpandFadeOutAnimator:Landroid/view/animation/Animation;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->ExpandFadeOutListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, p0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    return-void
.end method

.method private initPreviewUI(Lcom/transsion/camera/utils/SettingInfo$PreviewViewType;)V
    .registers 6

    .line 730
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mPreviewControllerMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/app/ui/preview/IPreviewController;

    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mPreviewController:Lcom/transsion/camera/app/ui/preview/IPreviewController;

    .line 731
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mProjectAuxSurfaceSupport:Z

    invoke-interface {p1, v0}, Lcom/transsion/camera/app/ui/preview/IPreviewController;->setProjectAuxSupport(Z)V

    .line 732
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mPreviewController:Lcom/transsion/camera/app/ui/preview/IPreviewController;

    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mInflater:Landroid/view/LayoutInflater;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mParent:Landroid/view/ViewGroup;

    new-instance v2, Lcom/transsion/camera/app/ui/AbstractPreviewUI$SurfaceStatusListenerImpl;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/transsion/camera/app/ui/AbstractPreviewUI$SurfaceStatusListenerImpl;-><init>(Lcom/transsion/camera/app/ui/AbstractPreviewUI;Lcom/transsion/camera/app/ui/AbstractPreviewUI-IA;)V

    invoke-interface {p1, v0, v1, v2}, Lcom/transsion/camera/app/ui/preview/IPreviewController;->inflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mRootView:Landroid/view/ViewGroup;

    .line 733
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mPreviewController:Lcom/transsion/camera/app/ui/preview/IPreviewController;

    invoke-interface {p1}, Lcom/transsion/camera/app/ui/preview/IPreviewController;->getPreviewView()Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mPreviewView:Landroid/view/View;

    .line 734
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mRootView:Landroid/view/ViewGroup;

    sget v0, Lcom/transsion/camera/R$id;->preview_content_container:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mPreviewContainerView:Landroid/view/ViewGroup;

    .line 735
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mPreviewController:Lcom/transsion/camera/app/ui/preview/IPreviewController;

    invoke-interface {p1}, Lcom/transsion/camera/app/ui/preview/IPreviewController;->getPreviewOperator()Lcom/transsion/camera/app/common/preview/IPreviewOperator;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mPreviewOperator:Lcom/transsion/camera/app/common/preview/IPreviewOperator;

    .line 736
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mPreviewController:Lcom/transsion/camera/app/ui/preview/IPreviewController;

    iget v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mPreviewWidth:I

    iget v1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mPreviewHeight:I

    invoke-interface {p1, v0, v1}, Lcom/transsion/camera/app/ui/preview/IPreviewController;->setPreviewSize(II)V

    .line 737
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mPreviewController:Lcom/transsion/camera/app/ui/preview/IPreviewController;

    iget v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mPreviewWidth:I

    iget v1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mPreviewHeight:I

    invoke-interface {p1, v0, v1}, Lcom/transsion/camera/app/ui/preview/IPreviewController;->setFixedSize(II)V

    .line 738
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mAnimationManager:Lcom/transsion/camera/app/ui/anim/AnimationManager;

    if-eqz p1, :cond_5a

    .line 739
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mPreviewController:Lcom/transsion/camera/app/ui/preview/IPreviewController;

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/ui/anim/AnimationManager;->setPreviewController(Lcom/transsion/camera/app/ui/preview/IPreviewController;)V

    .line 741
    :cond_5a
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mPreviewController:Lcom/transsion/camera/app/ui/preview/IPreviewController;

    invoke-interface {p1}, Lcom/transsion/camera/app/ui/preview/IPreviewController;->getProjectAuxSupport()Z

    move-result p1

    if-eqz p1, :cond_69

    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mProjectAuxSurfaceSupport:Z

    if-eqz p1, :cond_69

    .line 742
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->initAuxViews()V

    :cond_69
    return-void
.end method

.method private isScreen16by10With16by9Preview()Z
    .registers 5

    .line 1177
    invoke-static {}, Lcom/transsion/camera/utils/ScreenUtils;->getScreenRatio()D

    move-result-wide v0

    const-wide v2, 0x3ff999999999999aL    # 1.6

    cmpl-double v0, v0, v2

    if-nez v0, :cond_1c

    iget-wide v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mPreviewAspectRatio:D

    const-wide v2, 0x3ffc71c720000000L    # 1.7777777910232544

    invoke-static {v0, v1, v2, v3}, Lcom/transsion/camera/utils/CameraUtil;->isSameAspectRatio(DD)Z

    move-result p0

    if-eqz p0, :cond_1c

    const/4 p0, 0x1

    return p0

    :cond_1c
    const/4 p0, 0x0

    return p0
.end method

.method private synthetic lambda$doUpdatePreviewLayoutForRatio$6(IIIIF)V
    .registers 14

    int-to-float v0, p1

    sub-int p1, p2, p1

    int-to-float p1, p1

    mul-float/2addr p1, p5

    add-float/2addr v0, p1

    float-to-int v7, v0

    int-to-float p1, p3

    .line 1066
    iget v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mMarginTop:I

    sub-int/2addr v0, p3

    int-to-float p3, v0

    mul-float/2addr p3, p5

    add-float/2addr p1, p3

    float-to-int v3, p1

    int-to-float p1, p4

    .line 1067
    iget p3, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mMarginBottom:I

    sub-int/2addr p3, p4

    int-to-float p3, p3

    mul-float/2addr p3, p5

    add-float/2addr p1, p3

    float-to-int v5, p1

    .line 1068
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenWidth()I

    move-result v6

    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->updatePreviewBottomCover(IIIIII)V

    .line 1069
    iput p2, v1, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mBottomCoverHeight:I

    return-void
.end method

.method private synthetic lambda$initAuxViews$2(J)V
    .registers 3

    .line 526
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "mAuxPreviewView doFrame "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mReseFrameCallback:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/transsion/camera/utils/debug/TraceUtil;->begin(Ljava/lang/String;)V

    .line 527
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mReseFrameCallback:Z

    if-eqz p1, :cond_22

    .line 528
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mAuxPreviewView:Landroid/view/View;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_28

    .line 530
    :cond_22
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mAuxPreviewView:Landroid/view/View;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 532
    :goto_28
    invoke-static {}, Lcom/transsion/camera/utils/debug/TraceUtil;->end()V

    return-void
.end method

.method private synthetic lambda$new$0(Z)V
    .registers 3

    .line 236
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mPreviewController:Lcom/transsion/camera/app/ui/preview/IPreviewController;

    invoke-interface {v0}, Lcom/transsion/camera/app/ui/preview/IPreviewController;->getPreviewViewCover()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_9

    return-void

    :cond_9
    if-eqz p1, :cond_1d

    .line 241
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 242
    sget v0, Lcom/transsion/camera/R$color;->screen_supply_color:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result p1

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->setPreviewCoverBackgroundTintList(Landroid/content/res/ColorStateList;)V

    return-void

    :cond_1d
    const/4 p1, 0x0

    .line 244
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->setPreviewCoverBackgroundTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method private synthetic lambda$new$1()V
    .registers 2

    const/4 v0, 0x0

    .line 247
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->notifyPrivacyModeChange(Z)V

    return-void
.end method

.method private synthetic lambda$runUpdatePreviewAnimator$10(Landroid/animation/ValueAnimator;)V
    .registers 2

    .line 1320
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mPreviewView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    return-void
.end method

.method private synthetic lambda$runUpdatePreviewAnimator$11(Landroid/animation/ValueAnimator;)V
    .registers 3

    .line 1324
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mPreviewView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 1325
    sget-object p1, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "runUpdatePreviewAnimator: "

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1326
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mPreviewView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method private synthetic lambda$runUpdatePreviewAnimator$7(Landroid/animation/ValueAnimator;)V
    .registers 2

    .line 1308
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mPreviewView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    return-void
.end method

.method private synthetic lambda$runUpdatePreviewAnimator$8(Landroid/animation/ValueAnimator;)V
    .registers 2

    .line 1312
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mPreviewView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    return-void
.end method

.method private synthetic lambda$runUpdatePreviewAnimator$9(Landroid/animation/ValueAnimator;)V
    .registers 2

    .line 1316
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mPreviewView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    return-void
.end method

.method private synthetic lambda$runUpdatePreviewHoverAnimator$12(Lcom/transsion/camera/app/common/IAppUI$AnimationType;Landroid/graphics/RectF;Landroid/animation/ValueAnimator;)V
    .registers 15

    .line 1389
    const-string v0, "leftMargin"

    invoke-virtual {p3, v0}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1390
    const-string/jumbo v0, "topMargin"

    invoke-virtual {p3, v0}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 1391
    const-string v0, "rightMargin"

    invoke-virtual {p3, v0}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 1392
    const-string v0, "bottomMargin"

    invoke-virtual {p3, v0}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 1393
    const-string/jumbo v0, "width"

    invoke-virtual {p3, v0}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 1394
    const-string v0, "bottomCoverHeight"

    invoke-virtual {p3, v0}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v7

    move v1, v3

    move v3, v2

    move v2, v6

    move v6, v5

    move v5, v4

    move v4, v1

    move-object v1, p0

    .line 1395
    invoke-direct/range {v1 .. v6}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->updatePreviewViewLayoutParams(IIIII)V

    move v10, v6

    move v6, v2

    move v2, v3

    move v3, v4

    move v4, v5

    move v5, v10

    .line 1397
    sget-object p0, Lcom/transsion/camera/app/common/IAppUI$AnimationType;->NORMAL:Lcom/transsion/camera/app/common/IAppUI$AnimationType;

    if-eq p1, p0, :cond_af

    .line 1398
    const-string p0, "leftSize"

    invoke-virtual {p3, p0}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    int-to-float p1, v2

    add-float/2addr p0, p1

    .line 1399
    const-string p1, "rightSize"

    invoke-virtual {p3, p1}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    int-to-float v0, v4

    add-float/2addr p1, v0

    .line 1400
    const-string/jumbo v0, "topSize"

    invoke-virtual {p3, v0}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    int-to-float v8, v3

    add-float/2addr v0, v8

    .line 1401
    const-string v8, "bottomSize"

    invoke-virtual {p3, v8}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Float;

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v8

    int-to-float v9, v5

    add-float/2addr v8, v9

    int-to-float v9, v7

    add-float/2addr v8, v9

    .line 1402
    invoke-virtual {p2, p0, v0, p1, v8}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1403
    iget-object p0, v1, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mDVModePreviewCover:Lcom/transsion/camera/app/ui/DVModePreviewCover;

    if-eqz p0, :cond_af

    .line 1404
    const-string p1, "roundSize"

    invoke-virtual {p3, p1}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/ui/DVModePreviewCover;->updateParams(FLandroid/graphics/RectF;)V

    .line 1408
    :cond_af
    invoke-direct/range {v1 .. v7}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->updatePreviewBottomCover(IIIIII)V

    .line 1410
    invoke-virtual/range {v1 .. v6}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->setPreViewCoverLayout(IIIII)V

    return-void
.end method

.method private synthetic lambda$screenShot$13()V
    .registers 5

    .line 1892
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mPreviewOperator:Lcom/transsion/camera/app/common/preview/IPreviewOperator;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/preview/IPreviewOperator;->shotScreen(Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1893
    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mPreviewView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mPreviewView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1895
    new-instance v2, Lcom/transsion/camera/app/ui/AbstractPreviewUI$11;

    invoke-direct {v2, p0, v0, v1}, Lcom/transsion/camera/app/ui/AbstractPreviewUI$11;-><init>(Lcom/transsion/camera/app/ui/AbstractPreviewUI;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    .line 1926
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mPreviewView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    new-instance v3, Lcom/transsion/camera/app/ui/AbstractPreviewUI$Listener;

    invoke-direct {v3, p0, v1, v2}, Lcom/transsion/camera/app/ui/AbstractPreviewUI$Listener;-><init>(Lcom/transsion/camera/app/ui/AbstractPreviewUI;Landroid/graphics/Bitmap;Ljava/lang/Runnable;)V

    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mUIHandler:Lcom/transsion/camera/app/ui/AbstractPreviewUI$UIHandler;

    invoke-static {v0, v1, v3, p0}, Landroid/view/PixelCopy;->request(Landroid/view/Window;Landroid/graphics/Bitmap;Landroid/view/PixelCopy$OnPixelCopyFinishedListener;Landroid/os/Handler;)V

    return-void
.end method

.method private synthetic lambda$screenShot$14()V
    .registers 3

    .line 1931
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mPreviewOperator:Lcom/transsion/camera/app/common/preview/IPreviewOperator;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/preview/IPreviewOperator;->shotScreen(Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1932
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mPreviewView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/BitmapUtils;->saveBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method private synthetic lambda$setAuxPreviewLensSupport$3()V
    .registers 2

    .line 715
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mAuxPreviewView:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method private synthetic lambda$setAuxPreviewModeSupport$5()V
    .registers 2

    .line 782
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mAuxPreviewView:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method private synthetic lambda$updateSwitchCameraUI$4()V
    .registers 2

    .line 770
    sget-object v0, Lcom/transsion/camera/utils/SettingInfo$PreviewViewType;->GL_SURFACE_VIEW:Lcom/transsion/camera/utils/SettingInfo$PreviewViewType;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->updatePreviewViewType(Lcom/transsion/camera/utils/SettingInfo$PreviewViewType;)V

    return-void
.end method

.method private makeAuxPreviewLarger(II)V
    .registers 7

    int-to-double v0, p1

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    mul-double/2addr v0, v2

    int-to-double v2, p2

    div-double/2addr v0, v2

    .line 922
    iget v2, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mAuxPreviewMinSize:I

    if-ge p2, v2, :cond_12

    .line 923
    iput v2, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mAuxPreviewHeight:I

    int-to-double p1, v2

    mul-double/2addr p1, v0

    double-to-int p1, p1

    .line 924
    iput p1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mAuxPreviewWidth:I

    return-void

    .line 926
    :cond_12
    iput p2, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mAuxPreviewHeight:I

    .line 927
    iput p1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mAuxPreviewWidth:I

    return-void
.end method

.method private needForceDoFrame()Z
    .registers 4

    .line 513
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mIntentParser:Lcom/transsion/camera/app/intent/IntentParser;

    if-eqz v0, :cond_2a

    .line 514
    sget-object v0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "needForceDoFrame mIntentParser.mLaunchSource = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mIntentParser:Lcom/transsion/camera/app/intent/IntentParser;

    iget-object v2, v2, Lcom/transsion/camera/app/intent/IntentParser;->mLaunchSource:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 515
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mIntentParser:Lcom/transsion/camera/app/intent/IntentParser;

    iget-object p0, p0, Lcom/transsion/camera/app/intent/IntentParser;->mLaunchSource:Ljava/lang/String;

    const-string/jumbo v0, "volume_double_tap"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_2a
    const/4 p0, 0x0

    return p0
.end method

.method private notifyPreviewRectChanged()V
    .registers 3

    .line 1007
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mPreviewRectListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/common/IAppUIListener$IPreviewRectListener;

    .line 1008
    invoke-direct {p0, v1}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->notifyPreviewRectChanged(Lcom/transsion/camera/app/common/IAppUIListener$IPreviewRectListener;)V

    goto :goto_6

    :cond_16
    return-void
.end method

.method private notifyPreviewRectChanged(Lcom/transsion/camera/app/common/IAppUIListener$IPreviewRectListener;)V
    .registers 8

    .line 1013
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mAbsolutePreviewRect:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 1014
    new-instance v1, Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mRelativePreviewRect:Landroid/graphics/Rect;

    invoke-direct {v1, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 1015
    iget-wide v2, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mPreviewAspectRatio:D

    const-wide v4, 0x3ff5555555555555L    # 1.3333333333333333

    invoke-static {v2, v3, v4, v5}, Lcom/transsion/camera/utils/CameraUtil;->isSameAspectRatio(DD)Z

    move-result v2

    if-eqz v2, :cond_42

    .line 1016
    iget v2, v1, Landroid/graphics/Rect;->top:I

    iget v3, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mBottomCoverHeight:I

    add-int/2addr v2, v3

    iput v2, v0, Landroid/graphics/Rect;->top:I

    .line 1017
    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, v3

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    .line 1018
    iget v2, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->top:I

    .line 1019
    iget v2, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    .line 1020
    const-string v2, "on"

    iget-object v3, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mSwitchPreviewValue:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_42

    .line 1021
    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    iget p0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mBottomCoverHeight:I

    add-int/2addr v2, p0

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    .line 1024
    :cond_42
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result p0

    if-nez p0, :cond_4e

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result p0

    if-eqz p0, :cond_51

    .line 1025
    :cond_4e
    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/IAppUIListener$IPreviewRectListener;->onAbsolutePreviewRectChanged(Landroid/graphics/Rect;)V

    .line 1027
    :cond_51
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result p0

    if-nez p0, :cond_5f

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result p0

    if-eqz p0, :cond_5e

    goto :goto_5f

    :cond_5e
    return-void

    .line 1028
    :cond_5f
    :goto_5f
    invoke-interface {p1, v1}, Lcom/transsion/camera/app/common/IAppUIListener$IPreviewRectListener;->onRelativePreviewRectChanged(Landroid/graphics/Rect;)V

    return-void
.end method

.method private notifyPrivacyModeChange(Z)V
    .registers 5

    .line 2020
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mIsPrivacyModeEnable:Z

    if-ne v0, p1, :cond_5

    return-void

    .line 2023
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyPrivacyModeChange["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/camera/utils/debug/TraceUtil;->begin(Ljava/lang/String;)V

    .line 2024
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->setPrivacyModeEnable(Z)V

    .line 2029
    sget-object v0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyPrivacyModeChange: enable\uff1a "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mIsSupportPrivacyAlphaAnimator: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/high16 v0, 0x3f800000    # 1.0f

    if-eqz p1, :cond_64

    const/4 p1, 0x1

    .line 2035
    invoke-virtual {p0, p1, v0}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->onPrivacyModeChange(ZF)V

    .line 2036
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->getAppUI()Lcom/transsion/camera/app/common/IAppUI;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/camera/app/common/IAppUIControl$IPrivacyControl;->getPrivacyCallback()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_54
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_83

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/common/IPrivacyCallback;

    .line 2037
    invoke-interface {v1, p1, v0}, Lcom/transsion/camera/app/common/IPrivacyCallback;->onPrivacyModeChange(ZF)V

    goto :goto_54

    .line 2041
    :cond_64
    invoke-virtual {p0, v2, v0}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->onPrivacyModeChange(ZF)V

    .line 2042
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->getAppUI()Lcom/transsion/camera/app/common/IAppUI;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/camera/app/common/IAppUIControl$IPrivacyControl;->getPrivacyCallback()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_73
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_83

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/app/common/IPrivacyCallback;

    .line 2043
    invoke-interface {p1, v2, v0}, Lcom/transsion/camera/app/common/IPrivacyCallback;->onPrivacyModeChange(ZF)V

    goto :goto_73

    .line 2046
    :cond_83
    invoke-static {}, Lcom/transsion/camera/utils/debug/TraceUtil;->end()V

    return-void
.end method

.method private onInterceptPrivacyModeChangeAction(I)Z
    .registers 6

    .line 2097
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportUI5PrivacyMode:Z

    const/4 v1, 0x1

    if-nez v0, :cond_11

    .line 2098
    sget-object p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "onInterceptPrivacyModeChangeAction: not support privacy mode"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v1

    .line 2101
    :cond_11
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportPauseImmediately:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_23

    const/4 v0, 0x3

    .line 2102
    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil$PlatformLevel;->isHigherPlatform(I)Z

    move-result v0

    if-eqz v0, :cond_22

    goto :goto_23

    :cond_22
    return v2

    :cond_23
    :goto_23
    const/16 v0, 0x9

    .line 2103
    const-string v3, "onInterceptPrivacyModeChangeAction: intercept "

    if-eq p1, v0, :cond_47

    const/16 p0, 0x1a0

    if-eq p1, p0, :cond_32

    const/16 p0, 0x1a1

    if-eq p1, p0, :cond_32

    return v2

    .line 2106
    :cond_32
    sget-object p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v1

    .line 2109
    :cond_47
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz p0, :cond_71

    .line 2110
    invoke-interface {p0}, Lcom/transsion/camera/app/common/IAppUI;->getRecentKeyMonitor()Lcom/transsion/camera/app/common/physicalkey/AbstractKeyMonitor;

    move-result-object p0

    if-eqz p0, :cond_71

    .line 2111
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/physicalkey/AbstractKeyMonitor;->isInvalidKeyEventFromSetting()Z

    move-result p0

    if-nez p0, :cond_71

    .line 2112
    sget-object p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", recent key has clicked"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v1

    :cond_71
    return v2
.end method

.method private onPrivacyModeChange(I)V
    .registers 5

    .line 2061
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->onInterceptPrivacyModeChangeAction(I)Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_54

    .line 2064
    :cond_7
    sget-object v0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPrivacyModeChange: action = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v2

    iget-boolean v2, v2, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportUI5PrivacyMode:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/16 v0, 0x9

    const/4 v1, 0x0

    if-eq p1, v0, :cond_66

    const/16 v0, 0x1c

    const/4 v2, 0x1

    if-eq p1, v0, :cond_5c

    const/16 v0, 0xd4

    if-eq p1, v0, :cond_66

    const/16 v0, 0x126

    if-eq p1, v0, :cond_58

    const/16 v0, 0x12f

    if-eq p1, v0, :cond_55

    const/16 v0, 0x176

    if-eq p1, v0, :cond_58

    const/16 v0, 0x197

    if-eq p1, v0, :cond_55

    packed-switch p1, :pswitch_data_6a

    goto :goto_54

    .line 2071
    :pswitch_4d
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mGoingToGallery:Z

    if-nez p1, :cond_54

    .line 2072
    invoke-direct {p0, v2}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->notifyPrivacyModeChange(Z)V

    :cond_54
    :goto_54
    return-void

    .line 2068
    :cond_55
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mGoingToGallery:Z

    return-void

    .line 2084
    :cond_58
    :pswitch_58
    invoke-direct {p0, v2}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->notifyPrivacyModeChange(Z)V

    return-void

    .line 2076
    :cond_5c
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mGoingToGallery:Z

    if-nez p1, :cond_63

    .line 2077
    invoke-direct {p0, v2}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->notifyPrivacyModeChange(Z)V

    .line 2079
    :cond_63
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mGoingToGallery:Z

    return-void

    .line 2089
    :cond_66
    :pswitch_66
    invoke-direct {p0, v1}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->notifyPrivacyModeChange(Z)V

    return-void

    :pswitch_data_6a
    .packed-switch 0x1a0
        :pswitch_4d
        :pswitch_66
        :pswitch_58
    .end packed-switch
.end method

.method private setExpandViewShow(Z)V
    .registers 2

    .line 1472
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mExpandViewShow:Z

    return-void
.end method

.method private setPreviewCoverBackgroundTintList(Landroid/content/res/ColorStateList;)V
    .registers 4

    .line 2179
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mPreviewCoverState:Lcom/transsion/camera/app/common/ui/helper/ViewState;

    if-eqz v0, :cond_17

    .line 2180
    new-instance v1, Lcom/transsion/camera/app/common/ui/helper/ViewState$Builder;

    invoke-direct {v1, v0}, Lcom/transsion/camera/app/common/ui/helper/ViewState$Builder;-><init>(Lcom/transsion/camera/app/common/ui/helper/ViewState;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Runnable;

    .line 2181
    invoke-virtual {v1, p1, v0}, Lcom/transsion/camera/app/common/ui/helper/ViewState$Builder;->setBackgroundTintList(Landroid/content/res/ColorStateList;[Ljava/lang/Runnable;)Lcom/transsion/camera/app/common/ui/helper/ViewState$Builder;

    move-result-object p1

    .line 2182
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ui/helper/ViewState$Builder;->build()Lcom/transsion/camera/app/common/ui/helper/ViewState;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mPreviewCoverState:Lcom/transsion/camera/app/common/ui/helper/ViewState;

    return-void

    .line 2185
    :cond_17
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->getPreviewController()Lcom/transsion/camera/app/ui/preview/IPreviewController;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/camera/app/ui/preview/IPreviewController;->getPreviewViewCover()Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_24

    .line 2187
    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    :cond_24
    return-void
.end method

.method private setPreviewCoverVisibility(I)V
    .registers 5

    .line 2157
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mPreviewCoverState:Lcom/transsion/camera/app/common/ui/helper/ViewState;

    if-eqz v0, :cond_17

    .line 2158
    new-instance v1, Lcom/transsion/camera/app/common/ui/helper/ViewState$Builder;

    invoke-direct {v1, v0}, Lcom/transsion/camera/app/common/ui/helper/ViewState$Builder;-><init>(Lcom/transsion/camera/app/common/ui/helper/ViewState;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Runnable;

    .line 2159
    invoke-virtual {v1, p1, v0}, Lcom/transsion/camera/app/common/ui/helper/ViewState$Builder;->setVisibility(I[Ljava/lang/Runnable;)Lcom/transsion/camera/app/common/ui/helper/ViewState$Builder;

    move-result-object p1

    .line 2160
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ui/helper/ViewState$Builder;->build()Lcom/transsion/camera/app/common/ui/helper/ViewState;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mPreviewCoverState:Lcom/transsion/camera/app/common/ui/helper/ViewState;

    return-void

    .line 2163
    :cond_17
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->getPreviewController()Lcom/transsion/camera/app/ui/preview/IPreviewController;

    move-result-object v0

    invoke-interface {v0}, Lcom/transsion/camera/app/ui/preview/IPreviewController;->getPreviewViewCover()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_40

    if-eqz p1, :cond_3d

    .line 2165
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/camera/utils/CustomConfigUtil;->isQcomCaptureFlow()Z

    move-result v1

    if-eqz v1, :cond_3d

    .line 2166
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/transsion/camera/app/ui/AbstractPreviewUI$12;

    invoke-direct {v2, p0, v0, p1}, Lcom/transsion/camera/app/ui/AbstractPreviewUI$12;-><init>(Lcom/transsion/camera/app/ui/AbstractPreviewUI;Landroid/view/View;I)V

    const-wide/16 p0, 0x32

    invoke-virtual {v1, v2, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    .line 2173
    :cond_3d
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_40
    return-void
.end method

.method private setPrivacyModeEnable(Z)V
    .registers 5

    .line 2126
    sget-object v0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPrivacyModeEnable: enable = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 2127
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mIsPrivacyModeEnable:Z

    return-void
.end method

.method private showCover()V
    .registers 10

    .line 863
    sget-object v0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "showCover"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 864
    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenFormType()I

    move-result v1

    const/4 v2, 0x6

    if-eq v2, v1, :cond_3a

    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    .line 865
    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenFormType()I

    move-result v1

    const/4 v2, 0x7

    if-ne v2, v1, :cond_1a

    goto :goto_3a

    .line 869
    :cond_1a
    iget v4, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mMarginLeft:I

    iget v5, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mMarginTop:I

    iget v6, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mMarginRight:I

    iget v7, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mMarginBottom:I

    iget v8, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mTargetWidth:I

    move-object v3, p0

    invoke-virtual/range {v3 .. v8}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->setPreViewCoverLayout(IIIII)V

    const/4 p0, 0x0

    .line 870
    invoke-direct {v3, p0}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->setPreviewCoverVisibility(I)V

    .line 871
    iget-object v0, v3, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mPreviewController:Lcom/transsion/camera/app/ui/preview/IPreviewController;

    invoke-interface {v0}, Lcom/transsion/camera/app/ui/preview/IPreviewController;->getPreviewViewCover()Landroid/view/View;

    move-result-object v0

    iput-object v0, v3, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mPreviewCover:Landroid/view/View;

    if-eqz v0, :cond_39

    .line 873
    invoke-virtual {v0, p0}, Landroid/view/View;->setVisibility(I)V

    :cond_39
    return-void

    .line 866
    :cond_3a
    :goto_3a
    const-string p0, "showCover not need"

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private updateAuxPreview()V
    .registers 3

    .line 1649
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mUIHandler:Lcom/transsion/camera/app/ui/AbstractPreviewUI$UIHandler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1650
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mUIHandler:Lcom/transsion/camera/app/ui/AbstractPreviewUI$UIHandler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method private updateAuxPreviewByZoom()V
    .registers 4

    .line 1699
    iget v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mZoomValue:I

    iget v1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mAuxShowZoomValue:I

    if-lt v0, v1, :cond_2b

    .line 1700
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mAuxSurfaceShow:Z

    const/4 v1, 0x1

    if-nez v0, :cond_11

    .line 1701
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mAuxSurfaceShow:Z

    .line 1702
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->updateAuxPreview()V

    goto :goto_21

    .line 1704
    :cond_11
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mUIHandler:Lcom/transsion/camera/app/ui/AbstractPreviewUI$UIHandler;

    const/16 v2, 0x67

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1705
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mUIHandler:Lcom/transsion/camera/app/ui/AbstractPreviewUI$UIHandler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1707
    :goto_21
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mSurfaceStatusListener:Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener;

    if-eqz p0, :cond_40

    .line 1708
    sget-object v0, Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener$SurfaceType;->AUX:Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener$SurfaceType;

    invoke-interface {p0, v0, v1}, Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener;->surfaceShow(Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener$SurfaceType;Z)V

    return-void

    :cond_2b
    if-ge v0, v1, :cond_40

    .line 1711
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mAuxSurfaceShow:Z

    if-eqz v0, :cond_40

    .line 1712
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mSurfaceStatusListener:Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener;

    const/4 v1, 0x0

    if-eqz v0, :cond_3b

    .line 1713
    sget-object v2, Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener$SurfaceType;->AUX:Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener$SurfaceType;

    invoke-interface {v0, v2, v1}, Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener;->surfaceShow(Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener$SurfaceType;Z)V

    .line 1715
    :cond_3b
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mAuxSurfaceShow:Z

    .line 1716
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->updateAuxPreview()V

    :cond_40
    return-void
.end method

.method private updateAuxPreviewLayout()V
    .registers 6

    .line 932
    new-instance v0, Lcom/transsion/camera/app/ui/layout/LayoutParamsUpdater;

    invoke-direct {v0}, Lcom/transsion/camera/app/ui/layout/LayoutParamsUpdater;-><init>()V

    .line 933
    iget v1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mMarginTop:I

    const/4 v2, 0x0

    if-nez v1, :cond_19

    .line 934
    iget v1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mAuxPreviewMarginLeft:I

    iget-object v3, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {v3}, Lcom/transsion/camera/app/ui/ScreenManager;->getTopBarHeight()I

    move-result v3

    iget v4, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mAuxPreviewMarginTop:I

    add-int/2addr v3, v4

    invoke-virtual {v0, v1, v3, v2, v2}, Lcom/transsion/camera/app/ui/layout/LayoutParamsUpdater;->setMargins(IIII)Lcom/transsion/camera/app/ui/layout/LayoutParamsUpdater;

    goto :goto_21

    .line 936
    :cond_19
    iget v3, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mAuxPreviewMarginLeft:I

    iget v4, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mAuxPreviewMarginTop:I

    add-int/2addr v1, v4

    invoke-virtual {v0, v3, v1, v2, v2}, Lcom/transsion/camera/app/ui/layout/LayoutParamsUpdater;->setMargins(IIII)Lcom/transsion/camera/app/ui/layout/LayoutParamsUpdater;

    .line 938
    :goto_21
    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mAuxPreviewView:Landroid/view/View;

    if-eqz v1, :cond_32

    .line 939
    iget v1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mAuxPreviewHeight:I

    iget v2, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mAuxPreviewWidth:I

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/ui/layout/LayoutParamsUpdater;->setSize(II)Lcom/transsion/camera/app/ui/layout/LayoutParamsUpdater;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mAuxPreviewView:Landroid/view/View;

    invoke-virtual {v1, v2}, Lcom/transsion/camera/app/ui/layout/LayoutParamsUpdater;->update(Landroid/view/View;)V

    .line 941
    :cond_32
    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mAuxExpandView:Landroid/view/View;

    if-eqz v1, :cond_42

    const v1, 0x7fffffff

    .line 942
    invoke-virtual {v0, v1, v1}, Lcom/transsion/camera/app/ui/layout/LayoutParamsUpdater;->setSize(II)Lcom/transsion/camera/app/ui/layout/LayoutParamsUpdater;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mAuxExpandView:Landroid/view/View;

    invoke-virtual {v0, p0}, Lcom/transsion/camera/app/ui/layout/LayoutParamsUpdater;->update(Landroid/view/View;)V

    :cond_42
    return-void
.end method

.method private updateLocateViewSize()V
    .registers 7

    .line 947
    iget v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mZoomValue:I

    if-eqz v0, :cond_a3

    .line 949
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mAuxPreviewSatSupport:Z

    if-nez v0, :cond_1a

    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_1a

    .line 952
    :cond_f
    iget v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mZoomValue:I

    int-to-float v0, v0

    iget v1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mBaseZoomRatio:I

    int-to-float v1, v1

    sget v2, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->ZOOM_RATIO_UNIT:F

    :goto_17
    mul-float/2addr v1, v2

    div-float/2addr v0, v1

    goto :goto_26

    .line 950
    :cond_1a
    :goto_1a
    iget v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mZoomValue:I

    int-to-float v0, v0

    iget v1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mBaseZoomRatio:I

    int-to-float v1, v1

    iget v2, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mCurrentCameraZoomRatio:F

    mul-float/2addr v1, v2

    sget v2, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->ZOOM_RATIO_UNIT:F

    goto :goto_17

    .line 955
    :goto_26
    iget v1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mAuxPreviewHeight:I

    int-to-float v1, v1

    div-float/2addr v1, v0

    .line 956
    iget v2, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mAuxPreviewWidth:I

    int-to-float v2, v2

    div-float/2addr v2, v0

    .line 957
    sget-object v3, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[updateLocateViewSize] mAuxPreviewSatSupport:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mAuxPreviewSatSupport:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " auxZoomRatio:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, " mZoomValue:"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mZoomValue:I

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " showZoomValue:"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mAuxShowZoomValue:I

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 959
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mLocateAuxView:Lcom/transsion/camera/app/ui/view/AuxLocateView;

    if-eqz v0, :cond_7e

    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mAuxPreviewView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_7e

    .line 960
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mLocateAuxView:Lcom/transsion/camera/app/ui/view/AuxLocateView;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 961
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mLocateAuxView:Lcom/transsion/camera/app/ui/view/AuxLocateView;

    iget v3, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mAuxPreviewWidth:I

    iget p0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mAuxPreviewHeight:I

    invoke-virtual {v0, v3, p0, v1, v2}, Lcom/transsion/camera/app/ui/view/AuxLocateView;->setAuxLocateViewSize(IIFF)V

    return-void

    .line 963
    :cond_7e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[updateLocateViewSize] visible:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mAuxPreviewView:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9e

    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mAuxPreviewView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_a0

    :cond_9e
    const-string p0, "mAuxPreviewView is null"

    :goto_a0
    invoke-static {v3, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :cond_a3
    return-void
.end method

.method private updatePreviewBottomCover(IIIIII)V
    .registers 11

    .line 1439
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mBottomCover:Landroid/view/View;

    if-eqz v0, :cond_46

    .line 1440
    iput p6, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mBottomCoverHeight:I

    .line 1441
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 1442
    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mSwitchPreviewValue:Ljava/lang/String;

    const-string v2, "on"

    invoke-static {v2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_1b

    .line 1443
    invoke-virtual {v0, p1, p2, p3, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    goto :goto_1e

    .line 1445
    :cond_1b
    invoke-virtual {v0, p1, v3, p3, p4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 1447
    :goto_1e
    iput p5, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 1448
    invoke-static {p6, v3}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 1449
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mSwitchPreviewValue:Ljava/lang/String;

    invoke-static {v2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_33

    const/16 p1, 0x31

    .line 1450
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto :goto_37

    :cond_33
    const/16 p1, 0x51

    .line 1452
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 1454
    :goto_37
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mBottomCover:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1455
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mBottomCover:Landroid/view/View;

    if-lez p6, :cond_41

    goto :goto_43

    :cond_41
    const/16 v3, 0x8

    :goto_43
    invoke-virtual {p0, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_46
    return-void
.end method

.method private updatePreviewContainerViewLayoutParams(IIIIII)V
    .registers 8

    .line 1950
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mPreviewContainerView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1e

    .line 1951
    new-instance v0, Lcom/transsion/camera/app/ui/layout/LayoutParamsUpdater;

    invoke-direct {v0}, Lcom/transsion/camera/app/ui/layout/LayoutParamsUpdater;-><init>()V

    .line 1952
    invoke-virtual {v0, p1, p2}, Lcom/transsion/camera/app/ui/layout/LayoutParamsUpdater;->setSize(II)Lcom/transsion/camera/app/ui/layout/LayoutParamsUpdater;

    move-result-object p1

    .line 1953
    invoke-virtual {p1, p3, p4, p5, p6}, Lcom/transsion/camera/app/ui/layout/LayoutParamsUpdater;->setMargins(IIII)Lcom/transsion/camera/app/ui/layout/LayoutParamsUpdater;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mPreviewContainerView:Landroid/view/ViewGroup;

    .line 1954
    invoke-virtual {p1, p0}, Lcom/transsion/camera/app/ui/layout/LayoutParamsUpdater;->update(Landroid/view/View;)V

    .line 1955
    sget-object p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string/jumbo p1, "updatePreviewContainerViewLayoutParams: "

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :cond_1e
    return-void
.end method

.method private updatePreviewController(Lcom/transsion/camera/utils/SettingInfo$PreviewViewType;)V
    .registers 4

    .line 721
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mParent:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 722
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->initPreviewUI(Lcom/transsion/camera/utils/SettingInfo$PreviewViewType;)V

    .line 723
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->doUpdatePreviewLayoutForRatio()V

    .line 724
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->setupViews()V

    .line 725
    sget-object p1, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " updatePreviewViewType previewOperator = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mPreviewOperator:Lcom/transsion/camera/app/common/preview/IPreviewOperator;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " mPreviewView = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mPreviewView:Landroid/view/View;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private updatePreviewViewLayoutParams(IIIII)V
    .registers 7

    .line 1939
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mPreviewView:Landroid/view/View;

    if-eqz v0, :cond_35

    .line 1940
    new-instance v0, Lcom/transsion/camera/app/ui/layout/LayoutParamsUpdater;

    invoke-direct {v0}, Lcom/transsion/camera/app/ui/layout/LayoutParamsUpdater;-><init>()V

    .line 1941
    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/ui/layout/LayoutParamsUpdater;->setWidth(I)Lcom/transsion/camera/app/ui/layout/LayoutParamsUpdater;

    move-result-object p1

    .line 1942
    invoke-virtual {p1, p2, p3, p4, p5}, Lcom/transsion/camera/app/ui/layout/LayoutParamsUpdater;->setMargins(IIII)Lcom/transsion/camera/app/ui/layout/LayoutParamsUpdater;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mPreviewView:Landroid/view/View;

    .line 1943
    invoke-virtual {p1, p0}, Lcom/transsion/camera/app/ui/layout/LayoutParamsUpdater;->update(Landroid/view/View;)V

    .line 1944
    sget-object p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "updatePreviewViewLayoutParams: topMargin = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", bottomMargin = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :cond_35
    return-void
.end method

.method private updateShowZoomValue()V
    .registers 4

    .line 569
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result v0

    if-nez v0, :cond_16

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mIsLongFocusCamera:Z

    if-eqz v0, :cond_16

    const/high16 v0, 0x41a00000    # 20.0f

    .line 570
    sget v1, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->ZOOM_RATIO_UNIT:F

    mul-float/2addr v1, v0

    iget v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mCurrentCameraZoomRatio:F

    div-float/2addr v1, v0

    float-to-int v0, v1

    iput v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mAuxShowZoomValue:I

    goto :goto_1d

    .line 572
    :cond_16
    sget v0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->ZOOM_RATIO_UNIT:F

    float-to-int v0, v0

    mul-int/lit8 v0, v0, 0x14

    iput v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mAuxShowZoomValue:I

    .line 574
    :goto_1d
    sget-object v0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[updateShowZoomValue] mAuxPreviewSatSupport:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mAuxPreviewSatSupport:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mIsLongFocusCamera:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mIsLongFocusCamera:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mAuxShowZoomValue:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mAuxShowZoomValue:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mZoomValue:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mZoomValue:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public cameraOperateAction(I)V
    .registers 5

    .line 391
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->onPrivacyModeChange(I)V

    const/16 v0, 0x6d

    const/4 v1, 0x0

    if-eq p1, v0, :cond_1d

    const/16 v0, 0x9

    if-eq p1, v0, :cond_1d

    const/16 v0, 0x63

    if-ne p1, v0, :cond_11

    goto :goto_1d

    :cond_11
    const/16 v0, 0x126

    if-eq p1, v0, :cond_19

    const/16 v0, 0xd5

    if-ne p1, v0, :cond_28

    .line 402
    :cond_19
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->showCover()V

    goto :goto_28

    .line 395
    :cond_1d
    :goto_1d
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mNeedShowCover:Z

    .line 396
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mForceHideCover:Z

    if-eqz v0, :cond_28

    .line 397
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->hidePreviewCover()V

    .line 398
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mForceHideCover:Z

    .line 404
    :cond_28
    :goto_28
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mAnimationManager:Lcom/transsion/camera/app/ui/anim/AnimationManager;

    if-eqz v0, :cond_2f

    .line 405
    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/ui/anim/AnimationManager;->cameraOperateAction(I)V

    .line 407
    :cond_2f
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mPreviewController:Lcom/transsion/camera/app/ui/preview/IPreviewController;

    if-eqz v0, :cond_36

    .line 408
    invoke-interface {v0, p1}, Lcom/transsion/camera/app/ui/preview/IPreviewController;->cameraOperateAction(I)V

    :cond_36
    const/16 v0, 0x1c

    if-eq p1, v0, :cond_5c

    const/16 v0, 0x25

    const/4 v2, 0x1

    if-eq p1, v0, :cond_4e

    const/16 v0, 0xed

    if-eq p1, v0, :cond_4b

    const/16 v0, 0xee

    if-eq p1, v0, :cond_48

    goto :goto_5b

    .line 418
    :cond_48
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mIsSuperNightLiteUIShowing:Z

    return-void

    .line 415
    :cond_4b
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mIsSuperNightLiteUIShowing:Z

    return-void

    .line 424
    :cond_4e
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz p1, :cond_5b

    invoke-interface {p1}, Lcom/transsion/camera/app/common/IAppUI;->isShoulderKeyLongPress()Z

    move-result p1

    if-eqz p1, :cond_5b

    .line 425
    invoke-virtual {p0, v2}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->setEnable(Z)V

    :cond_5b
    :goto_5b
    return-void

    .line 421
    :cond_5c
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mIsSuperNightLiteUIShowing:Z

    return-void
.end method

.method protected final checkUsage(II)Z
    .registers 3

    and-int p0, p1, p2

    if-ne p0, p2, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method protected createAnimationManager(Landroid/view/View;Lcom/transsion/camera/app/ui/ScreenManager;)Lcom/transsion/camera/app/ui/anim/AnimationManager;
    .registers 3

    .line 287
    new-instance p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;

    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/ui/anim/AnimationManager;-><init>(Landroid/view/View;Lcom/transsion/camera/app/ui/ScreenManager;)V

    return-object p0
.end method

.method public currentDisplayStyle()I
    .registers 1

    .line 840
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mPreviewStyle:Lcom/transsion/camera/app/ui/PreviewStyle;

    if-eqz p0, :cond_9

    .line 841
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/PreviewStyle;->currentStyle()I

    move-result p0

    return p0

    :cond_9
    const/4 p0, -0x1

    return p0
.end method

.method protected doUpdatePreviewLayoutForRatio()V
    .registers 11

    .line 1033
    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mPreviewUIRectAnimator:Landroid/animation/ValueAnimator;

    invoke-static {v1}, Lcom/transsion/camera/utils/AnimationUtils;->stopAnimator(Landroid/animation/Animator;)V

    .line 1034
    iget v1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mScreenFormType:I

    invoke-virtual {p0, v1}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->getPreviewMarginInfo(I)V

    .line 1036
    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mPreviewView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1037
    iget v6, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 1038
    iget v7, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 1039
    iget v1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mTargetWidth:I

    iget v2, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mMarginLeft:I

    iget v3, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mMarginTop:I

    iget v4, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mMarginRight:I

    iget v5, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mMarginBottom:I

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->updatePreviewViewLayoutParams(IIIII)V

    .line 1041
    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mPreviewStyle:Lcom/transsion/camera/app/ui/PreviewStyle;

    if-eqz v1, :cond_2f

    .line 1042
    iget v2, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mTargetWidth:I

    iget v3, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mTargetHeight:I

    invoke-virtual {v1, v2, v3}, Lcom/transsion/camera/app/ui/PreviewStyle;->setPreviewSize(II)V

    .line 1045
    :cond_2f
    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mPreviewView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/transsion/camera/utils/FeatureSupport;->isOnlySupportTBHoverUI(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_a0

    .line 1046
    iget-boolean v1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mSkipBottomCoverAnim:Z

    const-string v2, "on"

    const/4 v8, 0x0

    if-eqz v1, :cond_6e

    .line 1047
    iget v1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mMarginTop:I

    if-ltz v1, :cond_4a

    iget v3, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mMarginBottom:I

    if-gez v3, :cond_9e

    .line 1048
    :cond_4a
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 1049
    iget-object v3, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mSwitchPreviewValue:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5c

    .line 1050
    iget v1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mMarginBottom:I

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    :cond_5c
    move v6, v1

    .line 1052
    iget v2, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mMarginTop:I

    iget v4, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mMarginBottom:I

    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    .line 1053
    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenWidth()I

    move-result v5

    const/4 v1, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    .line 1052
    invoke-direct/range {v0 .. v6}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->updatePreviewBottomCover(IIIIII)V

    goto :goto_9e

    :cond_6e
    if-gez v6, :cond_72

    neg-int v1, v6

    goto :goto_73

    :cond_72
    move v1, v8

    .line 1057
    :goto_73
    iget v3, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mMarginTop:I

    if-gez v3, :cond_79

    neg-int v3, v3

    goto :goto_7a

    :cond_79
    move v3, v8

    .line 1058
    :goto_7a
    iget-object v4, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mSwitchPreviewValue:Ljava/lang/String;

    invoke-static {v2, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_8f

    if-gez v7, :cond_86

    neg-int v1, v7

    goto :goto_87

    :cond_86
    move v1, v8

    .line 1060
    :goto_87
    iget v2, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mMarginBottom:I

    if-gez v2, :cond_8e

    neg-int v2, v2

    move v3, v2

    goto :goto_8f

    :cond_8e
    move v3, v8

    :cond_8f
    :goto_8f
    move v2, v1

    .line 1064
    iget-object v9, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mAnimationManager:Lcom/transsion/camera/app/ui/anim/AnimationManager;

    new-instance v0, Lcom/transsion/camera/app/ui/AbstractPreviewUI$$ExternalSyntheticLambda6;

    move-object v1, p0

    move v4, v6

    move v5, v7

    invoke-direct/range {v0 .. v5}, Lcom/transsion/camera/app/ui/AbstractPreviewUI$$ExternalSyntheticLambda6;-><init>(Lcom/transsion/camera/app/ui/AbstractPreviewUI;IIII)V

    move-object v1, v0

    invoke-virtual {v9, v1}, Lcom/transsion/camera/app/ui/anim/AnimationManager;->rectAnimationListener(Lcom/transsion/camera/app/ui/IAnimProgressListener;)V

    .line 1072
    :cond_9e
    :goto_9e
    iput-boolean v8, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mSkipBottomCoverAnim:Z

    .line 1074
    :cond_a0
    iget v1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mMarginLeft:I

    iget v2, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mMarginTop:I

    iget v3, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mMarginRight:I

    iget v4, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mMarginBottom:I

    iget v5, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mTargetWidth:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->setPreViewCoverLayout(IIIII)V

    .line 1075
    sget-object v1, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doUpdatePreviewLayoutForRatio targetWidth:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mTargetWidth:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",targetHeight:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mTargetHeight:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",topOffset:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    .line 1076
    invoke-virtual {v3}, Lcom/transsion/camera/app/ui/ScreenManager;->getTopBarHeight()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",bottomOffset:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    .line 1077
    invoke-virtual {v3}, Lcom/transsion/camera/app/ui/ScreenManager;->getModePlusBottomBarHeight()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",left:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mMarginLeft:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",top:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mMarginTop:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",right:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mMarginRight:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",bottom:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mMarginBottom:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",mPreviewAspectRatio:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mPreviewAspectRatio:D

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v3, " mPreview Width = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mPreviewView:Landroid/view/View;

    .line 1082
    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " mPreview Height = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mPreviewView:Landroid/view/View;

    .line 1083
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1075
    invoke-static {v1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public getAppUI()Lcom/transsion/camera/app/common/IAppUI;
    .registers 1

    .line 2004
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    return-object p0
.end method

.method protected getAuxSurfaceShow()Z
    .registers 1

    .line 1476
    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mAuxSurfaceShow:Z

    return p0
.end method

.method public getPreviewBackgroundOperator()Lcom/transsion/camera/app/common/preview/IPreviewOperator;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method public getPreviewController()Lcom/transsion/camera/app/ui/preview/IPreviewController;
    .registers 1

    .line 1968
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mPreviewController:Lcom/transsion/camera/app/ui/preview/IPreviewController;

    return-object p0
.end method

.method public getPreviewLayoutRatio()D
    .registers 3

    .line 691
    iget-wide v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mPreviewAspectRatio:D

    return-wide v0
.end method

.method protected getPreviewMarginInfo(I)V
    .registers 15

    .line 1181
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenWidth()I

    move-result v0

    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mScreenHeight:I

    .line 1182
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenWidth()I

    move-result v0

    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mScreenWidth:I

    .line 1183
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenFormType()I

    move-result v0

    const/4 v1, 0x6

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-eq v1, v0, :cond_213

    const/4 v1, 0x7

    if-eq v1, v0, :cond_213

    .line 1186
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->isScreen16by10With16by9Preview()Z

    move-result v0

    if-eqz v0, :cond_3a

    goto/16 :goto_213

    .line 1195
    :cond_3a
    iget v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mScreenWidth:I

    iput v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mTargetWidth:I

    int-to-double v4, v0

    .line 1196
    iget-wide v6, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mPreviewAspectRatio:D

    mul-double/2addr v4, v6

    double-to-int v1, v4

    iput v1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mTargetHeight:I

    const/4 v1, 0x1

    const/4 v4, 0x5

    const/4 v5, 0x4

    if-ne p1, v1, :cond_7b

    .line 1198
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenWidth()I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mScreenWidth:I

    .line 1199
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenHeight()I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mScreenHeight:I

    .line 1200
    iget v6, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mScreenWidth:I

    if-ge v6, v0, :cond_71

    .line 1201
    iput v6, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mTargetWidth:I

    int-to-double v6, v6

    .line 1202
    iget-wide v8, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mPreviewAspectRatio:D

    mul-double/2addr v6, v8

    double-to-int v6, v6

    iput v6, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mTargetHeight:I

    if-le v6, v0, :cond_87

    .line 1204
    iput v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mTargetHeight:I

    int-to-double v6, v0

    div-double/2addr v6, v8

    double-to-int v0, v6

    .line 1205
    iput v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mTargetWidth:I

    goto :goto_87

    .line 1208
    :cond_71
    iput v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mTargetHeight:I

    int-to-double v6, v0

    .line 1209
    iget-wide v8, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mPreviewAspectRatio:D

    div-double/2addr v6, v8

    double-to-int v0, v6

    iput v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mTargetWidth:I

    goto :goto_87

    :cond_7b
    if-eq p1, v5, :cond_7f

    if-ne p1, v4, :cond_87

    .line 1213
    :cond_7f
    div-int/2addr v0, v3

    iput v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mTargetWidth:I

    int-to-double v8, v0

    mul-double/2addr v8, v6

    double-to-int v0, v8

    .line 1214
    iput v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mTargetHeight:I

    .line 1217
    :cond_87
    :goto_87
    iget-wide v6, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mPreviewAspectRatio:D

    iget v8, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mScreenHeight:I

    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    .line 1218
    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/ScreenManager;->getTopBarHeight()I

    move-result v9

    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    .line 1219
    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/ScreenManager;->getModePlusBottomBarHeight()I

    move-result v10

    iget v11, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mTargetHeight:I

    .line 1217
    invoke-static/range {v6 .. v11}, Lcom/transsion/camera/utils/CameraUtil;->getTopMargin(DIIII)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->setMarginTop(I)V

    .line 1220
    iput v2, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mMarginLeft:I

    .line 1221
    iput v2, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mMarginRight:I

    const/4 v0, 0x3

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    .line 1222
    const-string v8, "on"

    if-ne p1, v0, :cond_102

    .line 1223
    iget v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mScreenHeight:I

    div-int/2addr v0, v3

    int-to-double v9, v0

    mul-double/2addr v9, v6

    .line 1224
    iget v6, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mScreenWidth:I

    int-to-double v11, v6

    div-double/2addr v9, v11

    .line 1225
    iget-wide v11, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mPreviewAspectRatio:D

    cmpl-double v7, v11, v9

    if-lez v7, :cond_e3

    const-wide v6, 0x3ff5555560000000L    # 1.3333333730697632

    .line 1226
    invoke-static {v11, v12, v6, v7}, Lcom/transsion/camera/utils/CameraUtil;->isSameAspectRatio(DD)Z

    move-result v6

    if-eqz v6, :cond_ce

    .line 1227
    iget v6, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mTargetHeight:I

    sub-int v6, v0, v6

    div-int/2addr v6, v3

    invoke-virtual {p0, v6}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->setMarginTop(I)V

    goto :goto_f2

    .line 1229
    :cond_ce
    iput v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mTargetHeight:I

    int-to-double v6, v0

    .line 1230
    iget-wide v9, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mPreviewAspectRatio:D

    div-double/2addr v6, v9

    double-to-int v6, v6

    iput v6, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mTargetWidth:I

    .line 1231
    invoke-virtual {p0, v2}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->setMarginTop(I)V

    .line 1232
    iget v6, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mScreenWidth:I

    iget v7, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mTargetWidth:I

    sub-int/2addr v6, v7

    div-int/2addr v6, v3

    iput v6, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mMarginLeft:I

    goto :goto_f2

    .line 1235
    :cond_e3
    iput v6, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mTargetWidth:I

    int-to-double v6, v6

    mul-double/2addr v6, v11

    double-to-int v6, v6

    .line 1236
    iput v6, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mTargetHeight:I

    .line 1237
    iput v2, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mMarginLeft:I

    sub-int v6, v0, v6

    .line 1238
    div-int/2addr v6, v3

    invoke-virtual {p0, v6}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->setMarginTop(I)V

    .line 1240
    :goto_f2
    iget-object v6, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mSwitchPreviewValue:Ljava/lang/String;

    invoke-static {v8, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_183

    .line 1241
    iget v6, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mMarginTop:I

    add-int/2addr v6, v0

    invoke-virtual {p0, v6}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->setMarginTop(I)V

    goto/16 :goto_183

    :cond_102
    if-ne p1, v3, :cond_123

    .line 1244
    iget-wide v9, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mPreviewAspectRatio:D

    const-wide v11, 0x3ff25d4c3b2a1908L    # 1.1477777777777778

    invoke-static {v9, v10, v11, v12}, Lcom/transsion/camera/utils/CameraUtil;->isSameAspectRatio(DD)Z

    move-result v0

    if-nez v0, :cond_119

    iget-wide v9, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mPreviewAspectRatio:D

    .line 1245
    invoke-static {v9, v10, v6, v7}, Lcom/transsion/camera/utils/CameraUtil;->isSameAspectRatio(DD)Z

    move-result v0

    if-eqz v0, :cond_183

    .line 1246
    :cond_119
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/ScreenManager;->getTopBarHeight()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->setMarginTop(I)V

    goto :goto_183

    :cond_123
    if-ne p1, v5, :cond_140

    .line 1249
    iput v2, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mMarginLeft:I

    .line 1250
    iget v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mScreenWidth:I

    iget v6, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mTargetWidth:I

    sub-int/2addr v0, v6

    iput v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mMarginRight:I

    .line 1251
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mSwitchPreviewValue:Ljava/lang/String;

    invoke-static {v8, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_183

    .line 1252
    iget v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mScreenWidth:I

    iget v6, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mTargetWidth:I

    sub-int/2addr v0, v6

    iput v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mMarginLeft:I

    .line 1253
    iput v2, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mMarginRight:I

    goto :goto_183

    :cond_140
    if-ne p1, v4, :cond_15d

    .line 1256
    iget v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mScreenWidth:I

    iget v6, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mTargetWidth:I

    sub-int/2addr v0, v6

    iput v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mMarginLeft:I

    .line 1257
    iput v2, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mMarginRight:I

    .line 1258
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mSwitchPreviewValue:Ljava/lang/String;

    invoke-static {v8, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_183

    .line 1259
    iput v2, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mMarginLeft:I

    .line 1260
    iget v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mScreenWidth:I

    iget v6, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mTargetWidth:I

    sub-int/2addr v0, v6

    iput v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mMarginRight:I

    goto :goto_183

    :cond_15d
    if-nez p1, :cond_183

    .line 1263
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportUI5:Z

    if-nez v0, :cond_183

    .line 1264
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result v0

    if-eqz v0, :cond_183

    iget-wide v9, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mPreviewAspectRatio:D

    invoke-static {v9, v10, v6, v7}, Lcom/transsion/camera/utils/CameraUtil;->isSameAspectRatio(DD)Z

    move-result v0

    if-eqz v0, :cond_183

    .line 1265
    iget v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mMarginTop:I

    iget-object v6, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mResources:Landroid/content/res/Resources;

    sget v7, Lcom/transsion/camera/R$dimen;->normal_1_1_preview_margin_offset:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    sub-int/2addr v0, v6

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->setMarginTop(I)V

    .line 1269
    :cond_183
    :goto_183
    iget v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mScreenHeight:I

    iget v6, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mTargetHeight:I

    sub-int/2addr v0, v6

    iget v6, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mMarginTop:I

    sub-int/2addr v0, v6

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->setMarginBottom(I)V

    if-ne p1, v1, :cond_1b8

    .line 1271
    invoke-virtual {p0, v2}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->setMarginTop(I)V

    .line 1272
    iget p1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mScreenWidth:I

    iget v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mTargetWidth:I

    sub-int v1, p1, v0

    div-int/2addr v1, v3

    iput v1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mMarginLeft:I

    sub-int/2addr p1, v0

    .line 1273
    div-int/2addr p1, v3

    iput p1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mMarginRight:I

    .line 1274
    invoke-virtual {p0, v2}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->setMarginBottom(I)V

    .line 1275
    iget p1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mTargetHeight:I

    iget v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mScreenHeight:I

    if-ge p1, v0, :cond_212

    sub-int/2addr v0, p1

    .line 1276
    div-int/2addr v0, v3

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->setMarginTop(I)V

    .line 1277
    iget p1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mScreenHeight:I

    iget v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mTargetHeight:I

    sub-int/2addr p1, v0

    div-int/2addr p1, v3

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->setMarginBottom(I)V

    return-void

    :cond_1b8
    if-eq p1, v5, :cond_1bc

    if-ne p1, v4, :cond_212

    .line 1281
    :cond_1bc
    iget v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mScreenHeight:I

    iget v1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mTargetHeight:I

    sub-int/2addr v0, v1

    div-int/2addr v0, v3

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->setMarginTop(I)V

    .line 1282
    iget v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mScreenHeight:I

    iget v1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mTargetHeight:I

    sub-int/2addr v0, v1

    div-int/2addr v0, v3

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->setMarginBottom(I)V

    .line 1283
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mSwitchPreviewValue:Ljava/lang/String;

    invoke-static {v8, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_212

    iget-wide v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mPreviewAspectRatio:D

    const-wide v2, 0x3ffc71c71c71c71cL    # 1.7777777777777777

    .line 1284
    invoke-static {v0, v1, v2, v3}, Lcom/transsion/camera/utils/CameraUtil;->isSameAspectRatio(DD)Z

    move-result v0

    if-eqz v0, :cond_212

    if-ne p1, v5, :cond_1fc

    .line 1286
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mResources:Landroid/content/res/Resources;

    sget v0, Lcom/transsion/camera/R$dimen;->lf_hover_16_9_preview_top_margin:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->setMarginBottom(I)V

    .line 1287
    iget p1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mScreenHeight:I

    iget v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mTargetHeight:I

    sub-int/2addr p1, v0

    iget v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mMarginBottom:I

    sub-int/2addr p1, v0

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->setMarginTop(I)V

    return-void

    .line 1289
    :cond_1fc
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mResources:Landroid/content/res/Resources;

    sget v0, Lcom/transsion/camera/R$dimen;->lf_hover_16_9_preview_top_margin:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->setMarginTop(I)V

    .line 1290
    iget p1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mScreenHeight:I

    iget v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mTargetHeight:I

    sub-int/2addr p1, v0

    iget v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mMarginTop:I

    sub-int/2addr p1, v0

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->setMarginBottom(I)V

    :cond_212
    return-void

    .line 1187
    :cond_213
    :goto_213
    iget p1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mScreenHeight:I

    iput p1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mTargetHeight:I

    int-to-double v0, p1

    .line 1188
    iget-wide v4, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mPreviewAspectRatio:D

    div-double/2addr v0, v4

    double-to-int p1, v0

    iput p1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mTargetWidth:I

    .line 1189
    invoke-virtual {p0, v2}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->setMarginTop(I)V

    .line 1190
    invoke-virtual {p0, v2}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->setMarginBottom(I)V

    .line 1191
    iget p1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mScreenWidth:I

    iget v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mTargetWidth:I

    sub-int/2addr p1, v0

    div-int/2addr p1, v3

    iput p1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mMarginRight:I

    iput p1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mMarginLeft:I

    return-void
.end method

.method public getPreviewOperator()Lcom/transsion/camera/app/common/preview/IPreviewOperator;
    .registers 2

    .line 298
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mPreviewControllerMap:Ljava/util/HashMap;

    sget-object v0, Lcom/transsion/camera/utils/SettingInfo$PreviewViewType;->GL_SURFACE_VIEW:Lcom/transsion/camera/utils/SettingInfo$PreviewViewType;

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/app/ui/preview/IPreviewController;

    invoke-interface {p0}, Lcom/transsion/camera/app/ui/preview/IPreviewController;->getPreviewOperator()Lcom/transsion/camera/app/common/preview/IPreviewOperator;

    move-result-object p0

    return-object p0
.end method

.method public getPreviewSurfaceType()I
    .registers 1

    .line 292
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mPreviewController:Lcom/transsion/camera/app/ui/preview/IPreviewController;

    invoke-interface {p0}, Lcom/transsion/camera/app/ui/preview/IPreviewController;->getPreviewSurfaceType()I

    move-result p0

    return p0
.end method

.method public getPreviewView()Landroid/view/View;
    .registers 1

    .line 1960
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mPreviewView:Landroid/view/View;

    return-object p0
.end method

.method protected getScreenManager()Lcom/transsion/camera/app/common/manager/IScreenManager;
    .registers 1

    .line 2012
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    return-object p0
.end method

.method public hideCustomPreviewCover()V
    .registers 1

    .line 816
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mAnimationManager:Lcom/transsion/camera/app/ui/anim/AnimationManager;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/anim/AnimationManager;->hideCustomPreviewCover()V

    return-void
.end method

.method public inflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 7

    .line 447
    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mInflater:Landroid/view/LayoutInflater;

    .line 448
    iput-object p2, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mParent:Landroid/view/ViewGroup;

    .line 449
    invoke-virtual {p2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 450
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->getCameraPreviewType(Landroid/content/res/Resources;)I

    move-result v1

    .line 451
    sget v2, Lcom/transsion/camera/R$dimen;->aux_preview_left_margin:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mAuxPreviewMarginLeft:I

    .line 452
    sget v2, Lcom/transsion/camera/R$dimen;->aux_preview_top_margin:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mAuxPreviewMarginTop:I

    .line 453
    sget v2, Lcom/transsion/camera/R$integer;->aux_base_zoom_ratio:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mBaseZoomRatio:I

    .line 454
    sget v2, Lcom/transsion/camera/R$integer;->aux_preview_min_size:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mAuxPreviewMinSize:I

    const/4 v2, 0x1

    if-lez v0, :cond_31

    move v0, v2

    goto :goto_32

    :cond_31
    const/4 v0, 0x0

    .line 455
    :goto_32
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mAuxPreviewNeedBigger:Z

    .line 456
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/CameraRepository;->getBackLongFocusRatio()F

    move-result v0

    iput v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mCurrentCameraZoomRatio:F

    if-eq v1, v2, :cond_5d

    const/4 v0, 0x2

    if-eq v1, v0, :cond_50

    .line 465
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mPreviewControllerMap:Ljava/util/HashMap;

    sget-object v1, Lcom/transsion/camera/utils/SettingInfo$PreviewViewType;->SURFACE_VIEW:Lcom/transsion/camera/utils/SettingInfo$PreviewViewType;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/ui/preview/IPreviewController;

    iput-object v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mPreviewController:Lcom/transsion/camera/app/ui/preview/IPreviewController;

    goto :goto_64

    .line 459
    :cond_50
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mPreviewControllerMap:Ljava/util/HashMap;

    sget-object v1, Lcom/transsion/camera/utils/SettingInfo$PreviewViewType;->GL_SURFACE_VIEW:Lcom/transsion/camera/utils/SettingInfo$PreviewViewType;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/ui/preview/IPreviewController;

    iput-object v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mPreviewController:Lcom/transsion/camera/app/ui/preview/IPreviewController;

    goto :goto_64

    .line 462
    :cond_5d
    new-instance v0, Lcom/transsion/camera/app/ui/preview/TextureViewController;

    invoke-direct {v0}, Lcom/transsion/camera/app/ui/preview/TextureViewController;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mPreviewController:Lcom/transsion/camera/app/ui/preview/IPreviewController;

    .line 468
    :goto_64
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mProjectAuxSupported:Z

    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mProjectAuxSurfaceSupport:Z

    .line 469
    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mPreviewController:Lcom/transsion/camera/app/ui/preview/IPreviewController;

    invoke-interface {v1, v0}, Lcom/transsion/camera/app/ui/preview/IPreviewController;->setProjectAuxSupport(Z)V

    .line 470
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mPreviewController:Lcom/transsion/camera/app/ui/preview/IPreviewController;

    new-instance v1, Lcom/transsion/camera/app/ui/AbstractPreviewUI$SurfaceStatusListenerImpl;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/transsion/camera/app/ui/AbstractPreviewUI$SurfaceStatusListenerImpl;-><init>(Lcom/transsion/camera/app/ui/AbstractPreviewUI;Lcom/transsion/camera/app/ui/AbstractPreviewUI-IA;)V

    invoke-interface {v0, p1, p2, v1}, Lcom/transsion/camera/app/ui/preview/IPreviewController;->inflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener;)Landroid/view/View;

    move-result-object p1

    .line 471
    move-object p2, p1

    check-cast p2, Landroid/view/ViewGroup;

    iput-object p2, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mRootView:Landroid/view/ViewGroup;

    .line 472
    sget v0, Lcom/transsion/camera/R$id;->preview_content_container:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    iput-object p2, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mPreviewContainerView:Landroid/view/ViewGroup;

    .line 473
    iget-object p2, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mPreviewController:Lcom/transsion/camera/app/ui/preview/IPreviewController;

    invoke-interface {p2}, Lcom/transsion/camera/app/ui/preview/IPreviewController;->getPreviewView()Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mPreviewView:Landroid/view/View;

    .line 475
    iget-object p2, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {p2}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenFormType()I

    move-result p2

    const/4 v0, 0x7

    if-ne v0, p2, :cond_a5

    .line 476
    iget-object p2, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mPreviewStyle:Lcom/transsion/camera/app/ui/PreviewStyle;

    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mPreviewView:Landroid/view/View;

    invoke-virtual {p2, v0}, Lcom/transsion/camera/app/ui/PreviewStyle;->setPreviewView(Landroid/view/View;)V

    goto :goto_ae

    .line 477
    :cond_a5
    iget-object p2, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {p2}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenFormType()I

    move-result p2

    const/4 v0, 0x6

    if-eq v0, p2, :cond_104

    .line 483
    :goto_ae
    iget-object p2, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mPreviewController:Lcom/transsion/camera/app/ui/preview/IPreviewController;

    invoke-interface {p2}, Lcom/transsion/camera/app/ui/preview/IPreviewController;->getPreviewOperator()Lcom/transsion/camera/app/common/preview/IPreviewOperator;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mPreviewOperator:Lcom/transsion/camera/app/common/preview/IPreviewOperator;

    .line 485
    iget-boolean p2, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mProjectAuxSurfaceSupport:Z

    if-eqz p2, :cond_bd

    .line 486
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->initAuxViews()V

    .line 489
    :cond_bd
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/transsion/camera/utils/FeatureSupport;->isOnlySupportTBHoverUI(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_e2

    .line 490
    iget-object p2, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mCameraRootView:Landroid/view/View;

    sget v0, Lcom/transsion/camera/R$id;->preview_bottom_cover:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/ViewStub;

    if-eqz p2, :cond_e2

    .line 492
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mSkipBottomCoverAnim:Z

    .line 493
    invoke-virtual {p2}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 494
    iget-object p2, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mCameraRootView:Landroid/view/View;

    sget v0, Lcom/transsion/camera/R$id;->preview_bottom_cover_view:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mBottomCover:Landroid/view/View;

    .line 498
    :cond_e2
    iget-object p2, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mAnimationManager:Lcom/transsion/camera/app/ui/anim/AnimationManager;

    if-eqz p2, :cond_f2

    .line 499
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mPreviewController:Lcom/transsion/camera/app/ui/preview/IPreviewController;

    invoke-virtual {p2, v0}, Lcom/transsion/camera/app/ui/anim/AnimationManager;->setPreviewController(Lcom/transsion/camera/app/ui/preview/IPreviewController;)V

    .line 500
    iget-object p2, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mAnimationManager:Lcom/transsion/camera/app/ui/anim/AnimationManager;

    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-virtual {p2, v0}, Lcom/transsion/camera/app/ui/anim/AnimationManager;->setAppUI(Lcom/transsion/camera/app/common/IAppUI;)V

    .line 502
    :cond_f2
    iget-object p2, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mPreviewController:Lcom/transsion/camera/app/ui/preview/IPreviewController;

    invoke-interface {p2}, Lcom/transsion/camera/app/ui/preview/IPreviewController;->getPreviewViewCover()Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_103

    .line 503
    invoke-static {}, Lcom/transsion/camera/app/common/ModuleTransferManager;->getTransferManager()Lcom/transsion/camera/app/common/ModuleTransferManager;

    move-result-object p2

    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mIModuleTransfer:Lcom/transsion/camera/app/common/IModuleTransfer;

    invoke-virtual {p2, p0}, Lcom/transsion/camera/app/common/ModuleTransferManager;->registerTransferListener(Lcom/transsion/camera/app/common/IModuleTransfer;)V

    :cond_103
    return-object p1

    .line 478
    :cond_104
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mPreviewStyle:Lcom/transsion/camera/app/ui/PreviewStyle;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mPreviewView:Landroid/view/View;

    invoke-virtual {p1, p0}, Lcom/transsion/camera/app/ui/PreviewStyle;->setPreviewView(Landroid/view/View;)V

    .line 479
    throw v3
.end method

.method public needBuildBlurCoverView(Z)V
    .registers 2

    .line 804
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mAnimationManager:Lcom/transsion/camera/app/ui/anim/AnimationManager;

    if-eqz p0, :cond_7

    .line 805
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/anim/AnimationManager;->needBuildBlurCoverView(Z)V

    :cond_7
    return-void
.end method

.method public needRectChangedAnimation(Z)V
    .registers 2

    .line 696
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mAnimationManager:Lcom/transsion/camera/app/ui/anim/AnimationManager;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/anim/AnimationManager;->needRectChangedAnimation(Z)V

    return-void
.end method

.method public onDestroy()V
    .registers 3

    .line 381
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mPreviewView:Landroid/view/View;

    instance-of v1, v0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;

    if-eqz v1, :cond_b

    .line 382
    check-cast v0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->releaseResource()V

    .line 384
    :cond_b
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mPreviewControllerMap:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_15
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/ui/preview/IPreviewController;

    .line 385
    invoke-interface {v0}, Lcom/transsion/camera/app/ui/preview/IPreviewController;->getPreviewOperator()Lcom/transsion/camera/app/common/preview/IPreviewOperator;

    move-result-object v0

    invoke-interface {v0}, Lcom/transsion/camera/app/common/preview/IPreviewOperator;->onDestroy()V

    goto :goto_15

    :cond_29
    return-void
.end method

.method public onDoubleTap()Z
    .registers 4

    .line 827
    sget-object v0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDoubleTap, type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {v2}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenFormType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 828
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenFormType()I

    move-result v0

    const/4 v1, 0x6

    if-eq v1, v0, :cond_30

    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    .line 829
    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenFormType()I

    move-result v0

    const/4 v1, 0x7

    if-eq v1, v0, :cond_30

    const/4 p0, 0x0

    return p0

    .line 832
    :cond_30
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mPreviewStyle:Lcom/transsion/camera/app/ui/PreviewStyle;

    if-eqz p0, :cond_37

    .line 833
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/PreviewStyle;->changeStyle()V

    :cond_37
    const/4 p0, 0x1

    return p0
.end method

.method public onEnterAnimationComplete()V
    .registers 2

    .line 821
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->hidePreviewCover()V

    const/4 v0, 0x0

    .line 822
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mNeedShowCover:Z

    return-void
.end method

.method public onPause(Z)V
    .registers 4

    .line 340
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mPreviewOperator:Lcom/transsion/camera/app/common/preview/IPreviewOperator;

    if-eqz v0, :cond_7

    .line 341
    invoke-interface {v0, p1}, Lcom/transsion/camera/app/common/preview/IPreviewOperator;->onPause(Z)V

    .line 346
    :cond_7
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mAuxPreviewView:Landroid/view/View;

    const/16 v0, 0x8

    if-eqz p1, :cond_1e

    iget-boolean v1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mAuxSurfaceShow:Z

    if-eqz v1, :cond_1e

    .line 347
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    const/4 p1, 0x0

    .line 348
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mAuxSurfaceShow:Z

    .line 349
    sget-object p1, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "[onPause] mAuxPreviewView gone"

    invoke-static {p1, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 351
    :cond_1e
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mAuxExpandView:Landroid/view/View;

    if-eqz p1, :cond_25

    .line 352
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_25
    const/4 p1, 0x1

    .line 354
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mNeedShowCover:Z

    .line 356
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz p1, :cond_43

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_43

    .line 357
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->cancel()V

    .line 358
    sget-object p1, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "onPause onAnimationCancel"

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 359
    iget p1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mScreenFormType:I

    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->handleUpdatePreviewEnd(I)V

    :cond_43
    const/4 p1, 0x0

    .line 361
    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mAnimatorSet:Landroid/animation/AnimatorSet;

    .line 362
    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mTimerStatus:Ljava/lang/String;

    return-void
.end method

.method public onPrivacyModeChange(ZF)V
    .registers 6

    .line 2132
    sget-object v0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPrivacyModeChange:  enable = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", degree = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 2133
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mPreviewView:Landroid/view/View;

    instance-of v1, v0, Lcom/transsion/camera/app/common/IPrivacyCallback;

    if-eqz v1, :cond_29

    .line 2134
    check-cast v0, Lcom/transsion/camera/app/common/IPrivacyCallback;

    invoke-interface {v0, p1, p2}, Lcom/transsion/camera/app/common/IPrivacyCallback;->onPrivacyModeChange(ZF)V

    .line 2136
    :cond_29
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->getPreviewController()Lcom/transsion/camera/app/ui/preview/IPreviewController;

    move-result-object v0

    invoke-interface {v0}, Lcom/transsion/camera/app/ui/preview/IPreviewController;->getPreviewViewCover()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_5f

    const/4 v1, 0x0

    if-eqz p1, :cond_55

    .line 2139
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mPreviewCoverState:Lcom/transsion/camera/app/common/ui/helper/ViewState;

    if-nez p1, :cond_45

    .line 2140
    new-instance p1, Lcom/transsion/camera/app/common/ui/helper/ViewState$Builder;

    invoke-direct {p1, v0}, Lcom/transsion/camera/app/common/ui/helper/ViewState$Builder;-><init>(Landroid/view/View;)V

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ui/helper/ViewState$Builder;->build()Lcom/transsion/camera/app/common/ui/helper/ViewState;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mPreviewCoverState:Lcom/transsion/camera/app/common/ui/helper/ViewState;

    .line 2142
    :cond_45
    invoke-virtual {v0, p2}, Landroid/view/View;->setAlpha(F)V

    const/4 p0, 0x0

    .line 2143
    invoke-virtual {v0, p0}, Landroid/view/View;->setVisibility(I)V

    const/high16 p0, -0x1000000

    .line 2144
    invoke-virtual {v0, p0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 2145
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    return-void

    .line 2147
    :cond_55
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mPreviewCoverState:Lcom/transsion/camera/app/common/ui/helper/ViewState;

    if-nez p1, :cond_5a

    goto :goto_5f

    .line 2150
    :cond_5a
    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/common/ui/helper/ViewState;->restore(Landroid/view/View;)V

    .line 2151
    iput-object v1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mPreviewCoverState:Lcom/transsion/camera/app/common/ui/helper/ViewState;

    :cond_5f
    :goto_5f
    return-void
.end method

.method public onResume()V
    .registers 3

    .line 323
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->needForceDoFrame()Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mFrameCallback:Landroid/view/Choreographer$FrameCallback;

    if-eqz v0, :cond_16

    const/4 v0, 0x1

    .line 324
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mReseFrameCallback:Z

    .line 325
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mFrameCallback:Landroid/view/Choreographer$FrameCallback;

    invoke-virtual {v0, v1}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 327
    :cond_16
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mPreviewOperator:Lcom/transsion/camera/app/common/preview/IPreviewOperator;

    if-eqz v0, :cond_1d

    .line 328
    invoke-interface {v0}, Lcom/transsion/camera/app/common/preview/IPreviewOperator;->onResume()V

    .line 333
    :cond_1d
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mAnimationManager:Lcom/transsion/camera/app/ui/anim/AnimationManager;

    if-eqz p0, :cond_24

    .line 334
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/anim/AnimationManager;->onResume()V

    :cond_24
    return-void
.end method

.method public onScreenFormChanged(I)V
    .registers 5

    .line 673
    sget-object v0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onScreenFormChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mScreenFormType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " --> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 674
    iput p1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mScreenFormType:I

    const/4 v0, 0x1

    .line 675
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mForceHideCover:Z

    .line 676
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mAnimationManager:Lcom/transsion/camera/app/ui/anim/AnimationManager;

    if-eqz p0, :cond_2c

    .line 677
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/anim/AnimationManager;->onScreenFormChanged(I)V

    :cond_2c
    return-void
.end method

.method public onStart()V
    .registers 3

    .line 311
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->needForceDoFrame()Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mFrameCallback:Landroid/view/Choreographer$FrameCallback;

    if-eqz v0, :cond_16

    const/4 v0, 0x0

    .line 312
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mReseFrameCallback:Z

    .line 313
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mFrameCallback:Landroid/view/Choreographer$FrameCallback;

    invoke-virtual {v0, v1}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 315
    :cond_16
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mPreviewOperator:Lcom/transsion/camera/app/common/preview/IPreviewOperator;

    if-eqz p0, :cond_1d

    .line 316
    invoke-interface {p0}, Lcom/transsion/camera/app/common/preview/IPreviewOperator;->onStart()V

    :cond_1d
    return-void
.end method

.method public onStop()V
    .registers 1

    .line 367
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mPreviewOperator:Lcom/transsion/camera/app/common/preview/IPreviewOperator;

    if-eqz p0, :cond_7

    .line 368
    invoke-interface {p0}, Lcom/transsion/camera/app/common/preview/IPreviewOperator;->onStop()V

    :cond_7
    return-void
.end method

.method public onSwitchMode(Ljava/lang/String;I)V
    .registers 4

    const/4 v0, 0x1

    .line 748
    invoke-virtual {p0, p2, v0}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->checkUsage(II)Z

    move-result p2

    if-eqz p2, :cond_28

    const/4 p2, 0x0

    .line 749
    iput p2, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mZoomValue:I

    .line 750
    iget-object p2, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mAnimationManager:Lcom/transsion/camera/app/ui/anim/AnimationManager;

    if-eqz p2, :cond_11

    .line 751
    invoke-virtual {p2, p1}, Lcom/transsion/camera/app/ui/anim/AnimationManager;->onSwitchMode(Ljava/lang/String;)V

    .line 753
    :cond_11
    iget-object p2, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {p2}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenFormType()I

    move-result p2

    const/4 v0, 0x6

    if-eq v0, p2, :cond_23

    iget-object p2, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    .line 754
    invoke-virtual {p2}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenFormType()I

    move-result p2

    const/4 v0, 0x7

    if-ne v0, p2, :cond_28

    .line 755
    :cond_23
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mPreviewStyle:Lcom/transsion/camera/app/ui/PreviewStyle;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/PreviewStyle;->switchMode(Ljava/lang/String;)V

    :cond_28
    return-void
.end method

.method public onTopChanged(Z)V
    .registers 2

    .line 374
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mPreviewOperator:Lcom/transsion/camera/app/common/preview/IPreviewOperator;

    if-eqz p0, :cond_7

    .line 375
    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/preview/IPreviewOperator;->onTopChanged(Z)V

    :cond_7
    return-void
.end method

.method public registerPreviewRectListener(Lcom/transsion/camera/app/common/IAppUIListener$IPreviewRectListener;)V
    .registers 3

    if-eqz p1, :cond_12

    .line 650
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mPreviewRectListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 651
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mPreviewRectListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 652
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->notifyPreviewRectChanged(Lcom/transsion/camera/app/common/IAppUIListener$IPreviewRectListener;)V

    :cond_12
    return-void
.end method

.method public resetRootParentLayout()V
    .registers 10

    .line 852
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenWidth()I

    move-result v0

    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 853
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenWidth()I

    move-result v0

    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 854
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenFormType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_31

    .line 856
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/ScreenManager;->getColumnPreviewStartMargin()I

    move-result v0

    :goto_2f
    move v5, v0

    goto :goto_33

    :cond_31
    const/4 v0, 0x0

    goto :goto_2f

    :goto_33
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v6, 0x0

    move-object v2, p0

    .line 855
    invoke-direct/range {v2 .. v8}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->updatePreviewContainerViewLayoutParams(IIIIII)V

    .line 857
    iget-object p0, v2, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mAnimationManager:Lcom/transsion/camera/app/ui/anim/AnimationManager;

    if-eqz p0, :cond_41

    .line 858
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/anim/AnimationManager;->resetRootParentLayout()V

    :cond_41
    return-void
.end method

.method public runUpdatePreviewAnimator(IIIIIII)V
    .registers 11

    .line 1298
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_1b

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 1299
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/Animator;->removeAllListeners()V

    .line 1300
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 1301
    sget-object v0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "runUpdatePreviewAnimator onAnimationCancel, not handleUpdatePreviewEnd"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :cond_1b
    const/4 v0, 0x0

    .line 1303
    iput-object v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mAnimatorSet:Landroid/animation/AnimatorSet;

    .line 1305
    sget-object v0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "runUpdatePreviewAnimator in, screenFormType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1306
    filled-new-array {p1, p6}, [I

    move-result-object p1

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 1307
    new-instance p6, Lcom/transsion/camera/app/ui/AbstractPreviewUI$$ExternalSyntheticLambda0;

    invoke-direct {p6, p0}, Lcom/transsion/camera/app/ui/AbstractPreviewUI$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/app/ui/AbstractPreviewUI;)V

    invoke-virtual {p1, p6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1310
    iget p6, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mMarginTop:I

    filled-new-array {p2, p6}, [I

    move-result-object p2

    invoke-static {p2}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p2

    .line 1311
    new-instance p6, Lcom/transsion/camera/app/ui/AbstractPreviewUI$$ExternalSyntheticLambda1;

    invoke-direct {p6, p0}, Lcom/transsion/camera/app/ui/AbstractPreviewUI$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/app/ui/AbstractPreviewUI;)V

    invoke-virtual {p2, p6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1314
    iget p6, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mMarginRight:I

    filled-new-array {p3, p6}, [I

    move-result-object p3

    invoke-static {p3}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p3

    .line 1315
    new-instance p6, Lcom/transsion/camera/app/ui/AbstractPreviewUI$$ExternalSyntheticLambda2;

    invoke-direct {p6, p0}, Lcom/transsion/camera/app/ui/AbstractPreviewUI$$ExternalSyntheticLambda2;-><init>(Lcom/transsion/camera/app/ui/AbstractPreviewUI;)V

    invoke-virtual {p3, p6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1318
    iget p6, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mMarginBottom:I

    filled-new-array {p4, p6}, [I

    move-result-object p4

    invoke-static {p4}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p4

    .line 1319
    new-instance p6, Lcom/transsion/camera/app/ui/AbstractPreviewUI$$ExternalSyntheticLambda3;

    invoke-direct {p6, p0}, Lcom/transsion/camera/app/ui/AbstractPreviewUI$$ExternalSyntheticLambda3;-><init>(Lcom/transsion/camera/app/ui/AbstractPreviewUI;)V

    invoke-virtual {p4, p6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1322
    iget p6, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mTargetWidth:I

    filled-new-array {p5, p6}, [I

    move-result-object p5

    invoke-static {p5}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p5

    .line 1323
    new-instance p6, Lcom/transsion/camera/app/ui/AbstractPreviewUI$$ExternalSyntheticLambda4;

    invoke-direct {p6, p0}, Lcom/transsion/camera/app/ui/AbstractPreviewUI$$ExternalSyntheticLambda4;-><init>(Lcom/transsion/camera/app/ui/AbstractPreviewUI;)V

    invoke-virtual {p5, p6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1328
    new-instance p6, Landroid/animation/AnimatorSet;

    invoke-direct {p6}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object p6, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mAnimatorSet:Landroid/animation/AnimatorSet;

    const-wide/16 v1, 0x190

    .line 1329
    invoke-virtual {p6, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1330
    iget-object p6, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mAnimatorSet:Landroid/animation/AnimatorSet;

    sget-object v1, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->FOLD_PATH_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    invoke-virtual {p6, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1331
    iget-object p6, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mAnimatorSet:Landroid/animation/AnimatorSet;

    const/4 v1, 0x5

    new-array v1, v1, [Landroid/animation/Animator;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    aput-object p2, v1, p1

    const/4 p1, 0x2

    aput-object p3, v1, p1

    const/4 p1, 0x3

    aput-object p4, v1, p1

    const/4 p1, 0x4

    aput-object p5, v1, p1

    invoke-virtual {p6, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1332
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance p2, Lcom/transsion/camera/app/ui/AbstractPreviewUI$4;

    invoke-direct {p2, p0, p7}, Lcom/transsion/camera/app/ui/AbstractPreviewUI$4;-><init>(Lcom/transsion/camera/app/ui/AbstractPreviewUI;I)V

    invoke-virtual {p1, p2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1345
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    .line 1346
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "runUpdatePreviewAnimator out isRunning:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public runUpdatePreviewHoverAnimator(IIIIIIILcom/transsion/camera/app/common/IAppUI$AnimationType;)V
    .registers 26

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p4

    move/from16 v3, p6

    move-object/from16 v4, p8

    .line 1352
    iget-object v5, v0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mPreviewUIRectAnimator:Landroid/animation/ValueAnimator;

    invoke-static {v5}, Lcom/transsion/camera/utils/AnimationUtils;->stopAnimator(Landroid/animation/Animator;)V

    const/4 v5, 0x0

    .line 1353
    iput-object v5, v0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mPreviewUIRectAnimator:Landroid/animation/ValueAnimator;

    .line 1354
    sget-object v5, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "runUpdatePreviewHoverAnimator in, left:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", top:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mMarginTop:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", right:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mMarginRight:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", bottom:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mMarginBottom:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", mTargetWidth: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mTargetWidth:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", animationType = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1357
    const-string v5, "leftMargin"

    move/from16 v6, p1

    filled-new-array {v6, v3}, [I

    move-result-object v3

    invoke-static {v5, v3}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v6

    .line 1358
    iget v3, v0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mMarginTop:I

    filled-new-array {v1, v3}, [I

    move-result-object v3

    const-string/jumbo v5, "topMargin"

    invoke-static {v5, v3}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v7

    .line 1359
    iget v3, v0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mMarginRight:I

    move/from16 v5, p3

    filled-new-array {v5, v3}, [I

    move-result-object v3

    const-string v5, "rightMargin"

    invoke-static {v5, v3}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v8

    .line 1360
    iget v3, v0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mMarginBottom:I

    filled-new-array {v2, v3}, [I

    move-result-object v3

    const-string v5, "bottomMargin"

    invoke-static {v5, v3}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v9

    .line 1361
    iget v3, v0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mTargetWidth:I

    move/from16 v5, p5

    filled-new-array {v5, v3}, [I

    move-result-object v3

    const-string/jumbo v5, "width"

    invoke-static {v5, v3}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v10

    if-gez v1, :cond_9e

    neg-int v1, v1

    goto :goto_9f

    :cond_9e
    const/4 v1, 0x0

    .line 1363
    :goto_9f
    iget v5, v0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mMarginTop:I

    if-gez v5, :cond_a5

    neg-int v5, v5

    goto :goto_a6

    :cond_a5
    const/4 v5, 0x0

    .line 1364
    :goto_a6
    const-string v11, "on"

    iget-object v12, v0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mSwitchPreviewValue:Ljava/lang/String;

    invoke-static {v11, v12}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_bd

    if-gez v2, :cond_b4

    neg-int v1, v2

    goto :goto_b5

    :cond_b4
    const/4 v1, 0x0

    .line 1366
    :goto_b5
    iget v2, v0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mMarginBottom:I

    if-gez v2, :cond_bc

    neg-int v2, v2

    move v5, v2

    goto :goto_bd

    :cond_bc
    const/4 v5, 0x0

    .line 1368
    :cond_bd
    :goto_bd
    const-string v2, "bottomCoverHeight"

    filled-new-array {v1, v5}, [I

    move-result-object v1

    invoke-static {v2, v1}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v11

    .line 1369
    sget-object v1, Lcom/transsion/camera/app/common/IAppUI$AnimationType;->ENTER_DV:Lcom/transsion/camera/app/common/IAppUI$AnimationType;

    const/4 v5, 0x2

    const-string v12, "bottomSize"

    const-string v13, "rightSize"

    const-string/jumbo v14, "topSize"

    const-string v15, "leftSize"

    const/16 p1, 0x1

    const-string v2, "roundSize"

    const/16 v16, 0x0

    if-ne v4, v1, :cond_12b

    .line 1370
    sget v1, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->DVMODE_PREVIEW_COVER_ROUND_SIZE:I

    int-to-float v1, v1

    const/16 p3, 0x0

    new-array v3, v5, [F

    aput v16, v3, p3

    aput v1, v3, p1

    invoke-static {v2, v3}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    .line 1371
    sget v2, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->DVMODE_PREVIEW_COVER_LEFT_SIZE:I

    int-to-float v2, v2

    new-array v3, v5, [F

    aput v16, v3, p3

    aput v2, v3, p1

    invoke-static {v15, v3}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    .line 1372
    sget v3, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->DVMODE_PREVIEW_COVER_TOP_SIZE:I

    int-to-float v3, v3

    new-array v15, v5, [F

    aput v16, v15, p3

    aput v3, v15, p1

    invoke-static {v14, v15}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v14

    .line 1373
    sget v3, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->DVMODE_PREVIEW_COVER_RIGHT_SIZE:I

    int-to-float v3, v3

    new-array v15, v5, [F

    aput v16, v15, p3

    aput v3, v15, p1

    invoke-static {v13, v15}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v15

    .line 1374
    sget v3, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->DVMODE_PREVIEW_COVER_BOTTOM_SIZE:I

    int-to-float v3, v3

    new-array v5, v5, [F

    aput v16, v5, p3

    aput v3, v5, p1

    invoke-static {v12, v5}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v16

    move-object v12, v1

    move-object v13, v2

    .line 1375
    filled-new-array/range {v6 .. v16}, [Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofPropertyValuesHolder([Landroid/animation/PropertyValuesHolder;)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, v0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mPreviewUIRectAnimator:Landroid/animation/ValueAnimator;

    goto :goto_195

    :cond_12b
    const/16 p3, 0x0

    .line 1376
    sget-object v1, Lcom/transsion/camera/app/common/IAppUI$AnimationType;->EXIT_DV:Lcom/transsion/camera/app/common/IAppUI$AnimationType;

    if-ne v4, v1, :cond_17f

    .line 1377
    sget v1, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->DVMODE_PREVIEW_COVER_ROUND_SIZE:I

    int-to-float v1, v1

    new-array v3, v5, [F

    aput v1, v3, p3

    aput v16, v3, p1

    invoke-static {v2, v3}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    .line 1378
    sget v2, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->DVMODE_PREVIEW_COVER_LEFT_SIZE:I

    int-to-float v2, v2

    new-array v3, v5, [F

    aput v2, v3, p3

    aput v16, v3, p1

    invoke-static {v15, v3}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    .line 1379
    sget v3, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->DVMODE_PREVIEW_COVER_TOP_SIZE:I

    int-to-float v3, v3

    new-array v15, v5, [F

    aput v3, v15, p3

    aput v16, v15, p1

    invoke-static {v14, v15}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v14

    .line 1380
    sget v3, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->DVMODE_PREVIEW_COVER_RIGHT_SIZE:I

    int-to-float v3, v3

    new-array v15, v5, [F

    aput v3, v15, p3

    aput v16, v15, p1

    invoke-static {v13, v15}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v15

    .line 1381
    sget v3, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->DVMODE_PREVIEW_COVER_BOTTOM_SIZE:I

    int-to-float v3, v3

    new-array v5, v5, [F

    aput v3, v5, p3

    aput v16, v5, p1

    invoke-static {v12, v5}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v16

    move-object v12, v1

    move-object v13, v2

    .line 1382
    filled-new-array/range {v6 .. v16}, [Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofPropertyValuesHolder([Landroid/animation/PropertyValuesHolder;)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, v0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mPreviewUIRectAnimator:Landroid/animation/ValueAnimator;

    goto :goto_195

    :cond_17f
    move-object/from16 p1, v6

    move-object/from16 p2, v7

    move-object/from16 p3, v8

    move-object/from16 p4, v9

    move-object/from16 p5, v10

    move-object/from16 p6, v11

    .line 1384
    filled-new-array/range {p1 .. p6}, [Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofPropertyValuesHolder([Landroid/animation/PropertyValuesHolder;)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, v0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mPreviewUIRectAnimator:Landroid/animation/ValueAnimator;

    .line 1386
    :goto_195
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    .line 1387
    invoke-direct {v0}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->ensureInitDVModeCoverView()V

    .line 1388
    iget-object v2, v0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mPreviewUIRectAnimator:Landroid/animation/ValueAnimator;

    new-instance v3, Lcom/transsion/camera/app/ui/AbstractPreviewUI$$ExternalSyntheticLambda7;

    invoke-direct {v3, v0, v4, v1}, Lcom/transsion/camera/app/ui/AbstractPreviewUI$$ExternalSyntheticLambda7;-><init>(Lcom/transsion/camera/app/ui/AbstractPreviewUI;Lcom/transsion/camera/app/common/IAppUI$AnimationType;Landroid/graphics/RectF;)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1412
    iget-object v1, v0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mPreviewUIRectAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x190

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1413
    iget-object v1, v0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mPreviewUIRectAnimator:Landroid/animation/ValueAnimator;

    sget-object v2, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->PATH_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1414
    iget-object v1, v0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mPreviewUIRectAnimator:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/transsion/camera/app/ui/AbstractPreviewUI$5;

    invoke-direct {v2, v0, v4}, Lcom/transsion/camera/app/ui/AbstractPreviewUI$5;-><init>(Lcom/transsion/camera/app/ui/AbstractPreviewUI;Lcom/transsion/camera/app/common/IAppUI$AnimationType;)V

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1435
    iget-object v0, v0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mPreviewUIRectAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public screenShot()V
    .registers 5

    .line 1879
    invoke-static {}, Lcom/transsion/camera/utils/FeatureSupport;->isLaunchWithDeveloperMode()Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_40

    .line 1882
    :cond_7
    invoke-static {}, Lcom/transsion/camera/utils/tuning/TuningFeatureApi;->getInstance()Lcom/transsion/camera/utils/tuning/TuningFeatureApi;

    move-result-object v0

    .line 1883
    invoke-interface {v0}, Lcom/transsion/camera/utils/tuning/ITuningFeatureApi$IScreenShot;->isEnable()Z

    move-result v1

    if-eqz v1, :cond_41

    invoke-static {}, Lcom/transsion/camera/utils/MonkeyUtils;->isUserAMonkey()Z

    move-result v1

    if-eqz v1, :cond_18

    goto :goto_41

    .line 1888
    :cond_18
    invoke-interface {v0}, Lcom/transsion/camera/utils/tuning/ITuningFeatureApi$IScreenShot;->isScreen()Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 1889
    invoke-static {}, Lcom/transsion/camera/utils/threads/WorkThreadPools;->getInstance()Lcom/transsion/camera/utils/threads/WorkThreadPools;

    move-result-object v1

    new-instance v2, Lcom/transsion/camera/app/ui/AbstractPreviewUI$$ExternalSyntheticLambda10;

    invoke-direct {v2, p0}, Lcom/transsion/camera/app/ui/AbstractPreviewUI$$ExternalSyntheticLambda10;-><init>(Lcom/transsion/camera/app/ui/AbstractPreviewUI;)V

    const-string v3, "Screen"

    invoke-virtual {v1, v2, v3}, Lcom/transsion/camera/utils/threads/WorkThreadPools;->execute(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 1929
    :cond_2c
    invoke-interface {v0}, Lcom/transsion/camera/utils/tuning/ITuningFeatureApi$IScreenShot;->isPreview()Z

    move-result v0

    if-eqz v0, :cond_40

    .line 1930
    invoke-static {}, Lcom/transsion/camera/utils/threads/WorkThreadPools;->getInstance()Lcom/transsion/camera/utils/threads/WorkThreadPools;

    move-result-object v0

    new-instance v1, Lcom/transsion/camera/app/ui/AbstractPreviewUI$$ExternalSyntheticLambda11;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/ui/AbstractPreviewUI$$ExternalSyntheticLambda11;-><init>(Lcom/transsion/camera/app/ui/AbstractPreviewUI;)V

    const-string p0, "Preview"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/camera/utils/threads/WorkThreadPools;->execute(Ljava/lang/Runnable;Ljava/lang/String;)V

    :cond_40
    :goto_40
    return-void

    .line 1884
    :cond_41
    :goto_41
    sget-object p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "screenShot is not enable or monkeyUtils is user a monkey"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public setAnimationType(Lcom/transsion/camera/app/common/IAppUI$AnimationType;)V
    .registers 2

    .line 1844
    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mAnimationType:Lcom/transsion/camera/app/common/IAppUI$AnimationType;

    return-void
.end method

.method public setAppUI(Lcom/transsion/camera/app/common/IAppUI;)V
    .registers 2

    .line 509
    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    return-void
.end method

.method public setAuxPreviewLensSupport(ZLjava/lang/String;)V
    .registers 3

    .line 709
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mAuxPreviewSatSupport:Z

    .line 710
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/transsion/camera/app/common/CameraRepository;->isBackLongFocusCamera(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mIsLongFocusCamera:Z

    .line 711
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->updateShowZoomValue()V

    .line 712
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->updateAuxPreviewByZoom()V

    .line 713
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mAuxSurfaceShow:Z

    if-nez p1, :cond_24

    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mAuxPreviewView:Landroid/view/View;

    if-eqz p1, :cond_24

    .line 714
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mUIHandler:Lcom/transsion/camera/app/ui/AbstractPreviewUI$UIHandler;

    new-instance p2, Lcom/transsion/camera/app/ui/AbstractPreviewUI$$ExternalSyntheticLambda5;

    invoke-direct {p2, p0}, Lcom/transsion/camera/app/ui/AbstractPreviewUI$$ExternalSyntheticLambda5;-><init>(Lcom/transsion/camera/app/ui/AbstractPreviewUI;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_24
    return-void
.end method

.method public setAuxPreviewModeSupport(ZLjava/lang/String;)V
    .registers 3

    .line 776
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mAuxSurfaceModeSupport:Z

    .line 777
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/transsion/camera/app/common/CameraRepository;->isBackLongFocusCamera(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mIsLongFocusCamera:Z

    .line 778
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->updateShowZoomValue()V

    .line 779
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->updateAuxPreviewByZoom()V

    .line 780
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mAuxSurfaceShow:Z

    if-nez p1, :cond_24

    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mAuxPreviewView:Landroid/view/View;

    if-eqz p1, :cond_24

    .line 781
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mUIHandler:Lcom/transsion/camera/app/ui/AbstractPreviewUI$UIHandler;

    new-instance p2, Lcom/transsion/camera/app/ui/AbstractPreviewUI$$ExternalSyntheticLambda9;

    invoke-direct {p2, p0}, Lcom/transsion/camera/app/ui/AbstractPreviewUI$$ExternalSyntheticLambda9;-><init>(Lcom/transsion/camera/app/ui/AbstractPreviewUI;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_24
    return-void
.end method

.method public setAuxPreviewSize(II)V
    .registers 6

    .line 701
    sget-object v0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAuxPreviewSize through message width: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", height: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 703
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mUIHandler:Lcom/transsion/camera/app/ui/AbstractPreviewUI$UIHandler;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 704
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mUIHandler:Lcom/transsion/camera/app/ui/AbstractPreviewUI$UIHandler;

    invoke-virtual {p0, v1, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public setBackgroundPreviewModeSupport(Z)V
    .registers 2

    return-void
.end method

.method public setBackgroundPreviewSize(II)V
    .registers 6

    .line 789
    sget-object v0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setBackgroundPreviewSize through message width: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", height: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 791
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mUIHandler:Lcom/transsion/camera/app/ui/AbstractPreviewUI$UIHandler;

    const/16 v1, 0x69

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 792
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mUIHandler:Lcom/transsion/camera/app/ui/AbstractPreviewUI$UIHandler;

    invoke-virtual {p0, v1, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public setDVModeCoverVisible(Z)V
    .registers 2

    .line 1849
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->ensureInitDVModeCoverView()V

    .line 1850
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mDVModePreviewCover:Lcom/transsion/camera/app/ui/DVModePreviewCover;

    if-nez p0, :cond_8

    return-void

    :cond_8
    if-eqz p1, :cond_c

    const/4 p1, 0x0

    goto :goto_e

    :cond_c
    const/16 p1, 0x8

    .line 1851
    :goto_e
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public setEnable(Z)V
    .registers 2

    .line 435
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mPreviewContainerView:Landroid/view/ViewGroup;

    if-eqz p0, :cond_7

    .line 436
    invoke-virtual {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    :cond_7
    return-void
.end method

.method public setIntentParser(Lcom/transsion/camera/app/intent/IntentParser;)V
    .registers 2

    .line 442
    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mIntentParser:Lcom/transsion/camera/app/intent/IntentParser;

    return-void
.end method

.method public setMarginBottom(I)V
    .registers 2

    .line 1984
    iput p1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mMarginBottom:I

    return-void
.end method

.method public setMarginTop(I)V
    .registers 2

    .line 1976
    iput p1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mMarginTop:I

    return-void
.end method

.method public setOnTouchListener(Landroid/view/View$OnTouchListener;)V
    .registers 2

    .line 645
    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    return-void
.end method

.method protected setPreViewCoverLayout(IIIII)V
    .registers 7

    .line 887
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mPreviewController:Lcom/transsion/camera/app/ui/preview/IPreviewController;

    invoke-interface {p0}, Lcom/transsion/camera/app/ui/preview/IPreviewController;->getPreviewViewCover()Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_18

    .line 889
    new-instance v0, Lcom/transsion/camera/app/ui/layout/LayoutParamsUpdater;

    invoke-direct {v0}, Lcom/transsion/camera/app/ui/layout/LayoutParamsUpdater;-><init>()V

    .line 890
    invoke-virtual {v0, p5}, Lcom/transsion/camera/app/ui/layout/LayoutParamsUpdater;->setWidth(I)Lcom/transsion/camera/app/ui/layout/LayoutParamsUpdater;

    move-result-object p5

    .line 891
    invoke-virtual {p5, p1, p2, p3, p4}, Lcom/transsion/camera/app/ui/layout/LayoutParamsUpdater;->setMargins(IIII)Lcom/transsion/camera/app/ui/layout/LayoutParamsUpdater;

    move-result-object p1

    .line 892
    invoke-virtual {p1, p0}, Lcom/transsion/camera/app/ui/layout/LayoutParamsUpdater;->update(Landroid/view/View;)V

    :cond_18
    return-void
.end method

.method protected setPreviewAspectRatio(D)V
    .registers 3

    .line 2016
    iput-wide p1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mPreviewAspectRatio:D

    return-void
.end method

.method public setPreviewSize(II)V
    .registers 6

    .line 665
    sget-object v0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPreviewSize through message width: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", height: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 667
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mUIHandler:Lcom/transsion/camera/app/ui/AbstractPreviewUI$UIHandler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 668
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mUIHandler:Lcom/transsion/camera/app/ui/AbstractPreviewUI$UIHandler;

    invoke-virtual {p0, v1, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public setSettingController(Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)V
    .registers 4

    .line 598
    invoke-interface {p1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getStatusMonitor()Lcom/transsion/camera/app/common/setting/StatusMonitor;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    .line 599
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mAnimationManager:Lcom/transsion/camera/app/ui/anim/AnimationManager;

    if-eqz v0, :cond_f

    if-eqz p1, :cond_f

    .line 600
    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/ui/anim/AnimationManager;->setRingScreenLightResponderListener(Lcom/transsion/camera/app/common/setting/StatusMonitor;)V

    .line 602
    :cond_f
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz p1, :cond_30

    .line 603
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mProjectAuxSurfaceSupport:Z

    if-eqz v0, :cond_1e

    .line 604
    const-string v0, "key_camera_zoom"

    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {p1, v0, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 606
    :cond_1e
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v0, "key_self_timer_status"

    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {p1, v0, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 607
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v0, "key_fold_switch_preview"

    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {p1, v0, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    :cond_30
    return-void
.end method

.method public setSurfaceStatusListener(Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener;)V
    .registers 2

    .line 637
    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mSurfaceStatusListener:Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener;

    return-void
.end method

.method public setupViews()V
    .registers 3

    .line 613
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mRootView:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mPreviewUITouchListener:Lcom/transsion/camera/app/ui/AbstractPreviewUI$OnTouchListenerImpl;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 614
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mPreviewView:Landroid/view/View;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mOnLayoutChangeListenerImpl:Lcom/transsion/camera/app/ui/AbstractPreviewUI$OnLayoutChangeListenerImpl;

    invoke-virtual {v0, p0}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return-void
.end method

.method public showCustomPreviewCover(Landroid/graphics/Bitmap;)V
    .registers 2

    .line 811
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mAnimationManager:Lcom/transsion/camera/app/ui/anim/AnimationManager;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/anim/AnimationManager;->showCustomPreviewCover(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public switchAnimIsRunning()Z
    .registers 1

    .line 2193
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mAnimationManager:Lcom/transsion/camera/app/ui/anim/AnimationManager;

    if-eqz p0, :cond_c

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/anim/AnimationManager;->switchAnimIsRunning()Z

    move-result p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method public unInit()V
    .registers 4

    .line 619
    invoke-static {}, Lcom/transsion/camera/app/common/ModuleTransferManager;->getTransferManager()Lcom/transsion/camera/app/common/ModuleTransferManager;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mIModuleTransfer:Lcom/transsion/camera/app/common/IModuleTransfer;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ModuleTransferManager;->unregisterTransferListener(Lcom/transsion/camera/app/common/IModuleTransfer;)V

    .line 620
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz v0, :cond_2a

    .line 621
    iget-boolean v1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mProjectAuxSurfaceSupport:Z

    if-eqz v1, :cond_18

    .line 622
    const-string v1, "key_camera_zoom"

    iget-object v2, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 624
    :cond_18
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v1, "key_self_timer_status"

    iget-object v2, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 625
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v1, "key_fold_switch_preview"

    iget-object v2, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 627
    :cond_2a
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mUIHandler:Lcom/transsion/camera/app/ui/AbstractPreviewUI$UIHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 628
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mPreviewView:Landroid/view/View;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mOnLayoutChangeListenerImpl:Lcom/transsion/camera/app/ui/AbstractPreviewUI$OnLayoutChangeListenerImpl;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 629
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mAnimationManager:Lcom/transsion/camera/app/ui/anim/AnimationManager;

    if-eqz v0, :cond_43

    .line 630
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->unregisterPreviewRectListener(Lcom/transsion/camera/app/common/IAppUIListener$IPreviewRectListener;)V

    .line 631
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mAnimationManager:Lcom/transsion/camera/app/ui/anim/AnimationManager;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/anim/AnimationManager;->unInit()V

    :cond_43
    return-void
.end method

.method public unregisterPreviewRectListener(Lcom/transsion/camera/app/common/IAppUIListener$IPreviewRectListener;)V
    .registers 3

    if-eqz p1, :cond_f

    .line 658
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mPreviewRectListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 659
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mPreviewRectListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    :cond_f
    return-void
.end method

.method public updateCurrentCamera(Ljava/lang/String;)V
    .registers 2

    .line 847
    invoke-static {p1}, Lcom/transsion/camera/adapter/CameraInfoUtil;->isCameraFacingFront(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mIsFrontCamera:Z

    return-void
.end method

.method public updatePreviewLayout(ZZD)V
    .registers 13

    .line 683
    sget-object v0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updatePreviewLayout, type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mScreenFormType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", showCover:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "+animation:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", previewRatio:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 685
    iget v3, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mScreenFormType:I

    move-object v2, p0

    move v4, p1

    move v5, p2

    move-wide v6, p3

    invoke-direct/range {v2 .. v7}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->doUpdatePreviewLayout(IZZD)V

    .line 686
    iget p0, v2, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mScreenFormType:I

    iput p0, v2, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mLastScreenFormType:I

    return-void
.end method

.method public updatePreviewViewType(Lcom/transsion/camera/utils/SettingInfo$PreviewViewType;)V
    .registers 5

    .line 879
    sget-object v0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " updatePreviewViewType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " currentPreviewType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mPreviewViewType:Lcom/transsion/camera/utils/SettingInfo$PreviewViewType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 880
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mPreviewViewType:Lcom/transsion/camera/utils/SettingInfo$PreviewViewType;

    if-eq v0, p1, :cond_29

    .line 881
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->updatePreviewController(Lcom/transsion/camera/utils/SettingInfo$PreviewViewType;)V

    .line 882
    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mPreviewViewType:Lcom/transsion/camera/utils/SettingInfo$PreviewViewType;

    :cond_29
    return-void
.end method

.method public updateSwitchCameraUI(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 766
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mAnimationManager:Lcom/transsion/camera/app/ui/anim/AnimationManager;

    if-eqz v0, :cond_7

    .line 767
    invoke-virtual {v0, p1, p2}, Lcom/transsion/camera/app/ui/anim/AnimationManager;->setCameraId(Ljava/lang/String;Ljava/lang/String;)V

    .line 769
    :cond_7
    invoke-static {p2}, Lcom/transsion/camera/adapter/CameraInfoUtil;->isCameraFacingFront(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_17

    .line 770
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mUIHandler:Lcom/transsion/camera/app/ui/AbstractPreviewUI$UIHandler;

    new-instance p2, Lcom/transsion/camera/app/ui/AbstractPreviewUI$$ExternalSyntheticLambda8;

    invoke-direct {p2, p0}, Lcom/transsion/camera/app/ui/AbstractPreviewUI$$ExternalSyntheticLambda8;-><init>(Lcom/transsion/camera/app/ui/AbstractPreviewUI;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_17
    return-void
.end method
