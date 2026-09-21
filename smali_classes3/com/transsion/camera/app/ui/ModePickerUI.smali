.class public Lcom/transsion/camera/app/ui/ModePickerUI;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/IRootUI;
.implements Lcom/transsion/camera/app/common/IScreenFormControl;
.implements Lcom/transsion/camera/app/common/IAppUIListener$IOrientationListener;
.implements Landroid/view/GestureDetector$OnGestureListener;
.implements Lcom/transsion/camera/app/common/ui/anim/IRecordingAnimationManager;
.implements Lcom/transsion/camera/app/ui/ModeHorizontalScroll2$IModeScrollCallback;
.implements Lcom/transsion/camera/app/ui/ModeSwitchScroller$IModeScrollCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;,
        Lcom/transsion/camera/app/ui/ModePickerUI$CurrentModeUI;,
        Lcom/transsion/camera/app/ui/ModePickerUI$OnTabSelectedListenerImpl;,
        Lcom/transsion/camera/app/ui/ModePickerUI$OnTabScrollListenerImpl;,
        Lcom/transsion/camera/app/ui/ModePickerUI$ActionInterceptImpl;,
        Lcom/transsion/camera/app/ui/ModePickerUI$OnModeSelectedListenerImpl;,
        Lcom/transsion/camera/app/ui/ModePickerUI$ModeChangedListenerWrapper;,
        Lcom/transsion/camera/app/ui/ModePickerUI$UpdateArrowState;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mAlphaPathInterpolator:Landroid/view/animation/PathInterpolator;

.field private mAppUI:Lcom/transsion/camera/app/common/IAppUI;

.field private mCacheEnableMoreGuide:Z

.field private mCameraOperationControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

.field private mCelebrityUIShow:Z

.field private mContext:Landroid/content/Context;

.field private mCurrentModeName:Ljava/lang/String;

.field private mCurrentModeUI:Lcom/transsion/camera/app/ui/ModePickerUI$CurrentModeUI;

.field private mEnterGuideLeftAnimation:Landroid/animation/ObjectAnimator;

.field private mEnterGuideRightAnimation:Landroid/animation/ObjectAnimator;

.field private mEnterMoreMode:Z

.field private mExitGuideLeftAlphaAnimation:Landroid/animation/ObjectAnimator;

.field private mExitGuideRightAlphaAnimation:Landroid/animation/ObjectAnimator;

.field private mExitGuideRightTransXAnimation:Landroid/animation/ObjectAnimator;

.field private mFaceBeautyUIShow:Z

.field private mFilterUIShow:Z

.field private mFromResume:Z

.field private final mGuideAlphaInterpolator:Landroid/view/animation/PathInterpolator;

.field private mHoverTranslateAnimator:Landroid/animation/ValueAnimator;

.field private final mIModuleTransfer:Lcom/transsion/camera/app/common/IModuleTransfer;

.field private mIsAnimationCanceled:Z

.field private mIsAnimationRunning:Z

.field private mIsCameraSwitching:Z

.field private mIsConfigurationChanging:Z

.field private mIsDisableEnterMoreAnimation:Z

.field private mIsEditMode:Z

.field private mIsFocusable:Z

.field private mIsHALCaptureProcessing:Z

.field private mIsInstantZoomShow:Z

.field private mIsModeSwitching:Z

.field private mIsPaused:Z

.field private mIsPopSettingShow:Z

.field private mIsRecording:Z

.field private mIsResumeAfterEdit:Z

.field private mIsSelectMoreTabView:Z

.field private mIsVideoRecording:Z

.field private mLeftGuideRootMoveFollowTab:Z

.field private mMainHandler:Landroid/os/Handler;

.field private mMakeUpUIShow:Z

.field private mModeArrow:Landroid/widget/ImageView;

.field private mModeArrowRoot:Landroid/view/View;

.field private mModeArrowSvga:Lcom/opensource/svgaplayer/SVGAImageView;

.field private mModeChangedListener:Lcom/transsion/camera/app/common/IAppUIListener$IModeChangedListener;

.field private final mModeHorizontalScroll:Lcom/transsion/camera/app/ui/ModeHorizontalScroll2;

.field private final mModeInformation:Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;

.field private mModeModeGuideTranslateAnimation:Landroid/animation/ObjectAnimator;

.field private final mModeOrderProvider:Lcom/transsion/camera/app/mode/ModeOrderProvider;

.field private mModePickerAlphaAnimation:Landroid/animation/ObjectAnimator;

.field private mModePickerAnimatorSet:Landroid/animation/AnimatorSet;

.field private mModePickerContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

.field private mModePickerIn:Landroid/animation/ObjectAnimator;

.field private mModePickerLayout:Landroid/widget/FrameLayout;

.field private mModePickerOut:Landroid/animation/ObjectAnimator;

.field private mModePickerRoot:Landroid/view/ViewGroup;

.field private mModePickerRootAnimatorSet:Landroid/animation/AnimatorSet;

.field private final mModePickerRootAnimatorStartAction:Ljava/lang/Runnable;

.field private mModePickerTranslateAnimation:Landroid/animation/ObjectAnimator;

.field private mModeSelector:Lcom/transsion/camera/app/ui/widget/VerticalModeSelector;

.field protected final mModeSwitchScroller:Lcom/transsion/camera/app/ui/ModeSwitchScroller;

.field protected mModeTabLayout:Lcom/transsion/camera/app/ui/widget/TabLayout;

.field private final mModeVerticalScroll:Lcom/transsion/camera/app/ui/ModeVerticalScroll;

.field private mMoreModeCancelAlphaAnimation:Landroid/animation/ObjectAnimator;

.field private mMoreModeCancelIcon:Landroid/widget/ImageView;

.field private mMoreModeCancelRoot:Landroid/view/View;

.field private mMoreModeCancelTranslateAnimation:Landroid/animation/ObjectAnimator;

.field private mMoreModeGuideAlphaAnimation:Landroid/animation/ObjectAnimator;

.field private final mMoreModeGuideAnim:Landroid/animation/AnimatorSet;

.field private mMoreModeGuideLeftRoot:Landroid/view/View;

.field private mMoreModeGuideRightRoot:Landroid/view/View;

.field private mMoreModeGuideRootTranX:F

.field private mMoreModeRightGuide:Landroid/widget/ImageView;

.field private mMoreTabChangeListener:Lcom/transsion/camera/app/common/IAppUIListener$IMoreTabChangeListener;

.field private mMoreTabOriginalLocation:I

.field private mNeedSwitchMode:Z

.field private mNotifyClickGuideIconListener:Lcom/transsion/camera/app/common/IAppUIListener$INotifyClickGuideIconListener;

.field protected mOldValue:Z

.field private mOrderEditorFragmentControl:Lcom/transsion/camera/app/common/IAppUIControl$IOrderEditorFragmentControl;

.field private mOrientation:I

.field private mPanelShow:Z

.field private mPathInterpolator:Landroid/view/animation/PathInterpolator;

.field private mPortraitSpotUIShow:Z

.field private mRecordingAnimator:Landroid/animation/Animator;

.field private mRestoreSettingsBegin:Z

.field private mRootView:Landroid/view/View;

.field private mSVGACallback:Lcom/opensource/svgaplayer/SVGACallback;

.field private mSVGAParser:Lcom/opensource/svgaplayer/SVGAParser;

.field private mScreenFormType:I

.field private mScreenFormTypeChanged:Z

.field private final mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

.field private final mScreenWidth:I

.field private final mScrollConsumer:Lcom/transsion/camera/app/ui/ScrollConsumer;

.field private mSelfTimerBegin:Z

.field private mSellingPointItems:Ljava/util/List;

.field private mSpecifyMode:Ljava/lang/String;

.field private mStopScroll:Z

.field private mTBPathInterpolator:Landroid/view/animation/PathInterpolator;

.field private mTBTranslateDistance:I

.field private mTranslateDistance:I

.field private final mTranslationXInterpolator:Landroid/view/animation/PathInterpolator;

.field private mUpdateArrowState:Ljava/util/List;

.field private final mUpdateArrowStateLock:Ljava/lang/Object;

.field private mVipSelfieQuiting:Z


# direct methods
.method public static synthetic $r8$lambda$AMKVbJB0GxUzwxpZbv1lq89I0C4(Lcom/transsion/camera/app/ui/ModePickerUI;Landroid/view/View;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/ModePickerUI;->lambda$setupViews$5(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$AkseECoxLpUSTK5zTKcYkp92bpw(Lcom/transsion/camera/app/ui/ModePickerUI;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/ModePickerUI;->lambda$switchDefaultMode$6()V

    return-void
.end method

.method public static synthetic $r8$lambda$DTf8ahXCuBYVZcxVMzKuWSbmUyM(Lcom/transsion/camera/app/ui/ModePickerUI;Lcom/transsion/camera/app/common/storage/DataStore;Landroid/view/View;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/ui/ModePickerUI;->lambda$setupViews$4(Lcom/transsion/camera/app/common/storage/DataStore;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$O3AYEZl5Gdsf5AZn3oPgRD3dUxI(Lcom/transsion/camera/app/ui/ModePickerUI;Landroid/animation/ValueAnimator;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/ModePickerUI;->lambda$exitMoreModeGuideAnimation$8(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$U-OWi2f85rbJDPiJZlLPiT_nhxQ(Lcom/transsion/camera/app/ui/ModePickerUI;Landroid/view/View;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/ModePickerUI;->switchDefaultMode(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$V0SthDVVDxeIoBY_OnuXtdbmCaM(Lcom/transsion/camera/app/ui/ModePickerUI;Landroid/widget/FrameLayout$LayoutParams;Landroid/animation/ValueAnimator;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/ui/ModePickerUI;->lambda$updateLayoutParams$9(Landroid/widget/FrameLayout$LayoutParams;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$bLtayHaa2sLtAoFxJCPfmQfWQ-E(Lcom/transsion/camera/app/ui/ModePickerUI;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/ModePickerUI;->lambda$new$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$hXwKUueXoxQVk9ta-PD5gPeR0VM(Lcom/transsion/camera/app/ui/ModePickerUI;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/ModePickerUI;->lambda$setupViews$3()V

    return-void
.end method

.method public static synthetic $r8$lambda$jBLuCKthnkYGSY74ciLm4c5oYas(Lcom/transsion/camera/app/ui/ModePickerUI;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/ModePickerUI;->lambda$abortShowOrHideModePickerRootUI$11()V

    return-void
.end method

.method public static synthetic $r8$lambda$jOCEg6MqA74Xi1QqfM8agslxLF8(Lcom/transsion/camera/app/ui/ModePickerUI;Lcom/transsion/camera/app/ui/widget/TabLayout$TabView;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/ModePickerUI;->lambda$selectMoreTabView$1(Lcom/transsion/camera/app/ui/widget/TabLayout$TabView;)V

    return-void
.end method

.method public static synthetic $r8$lambda$n3kYEq_2UW3dXOTH0dzv7rYpBt0(Lcom/transsion/camera/app/ui/ModePickerUI;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/ModePickerUI;->lambda$updateMoreCancelRootState$10()V

    return-void
.end method

.method public static synthetic $r8$lambda$uJ_qfOsYMqjepni1M47y28o3WMs(Lcom/transsion/camera/app/ui/ModePickerUI;Landroid/view/View;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/ModePickerUI;->lambda$setupViews$2(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$xba2D5GhDKuLjqOjy7njj_-tDHo(Lcom/transsion/camera/app/ui/ModePickerUI;Landroid/animation/ValueAnimator;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/ModePickerUI;->lambda$enterMoreModeGuideAnimation$7(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmCameraOperationControl(Lcom/transsion/camera/app/ui/ModePickerUI;)Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mCameraOperationControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmContext(Lcom/transsion/camera/app/ui/ModePickerUI;)Landroid/content/Context;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCurrentModeName(Lcom/transsion/camera/app/ui/ModePickerUI;)Ljava/lang/String;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mCurrentModeName:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsAnimationCanceled(Lcom/transsion/camera/app/ui/ModePickerUI;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mIsAnimationCanceled:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsEditMode(Lcom/transsion/camera/app/ui/ModePickerUI;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mIsEditMode:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsHALCaptureProcessing(Lcom/transsion/camera/app/ui/ModePickerUI;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mIsHALCaptureProcessing:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsResumeAfterEdit(Lcom/transsion/camera/app/ui/ModePickerUI;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mIsResumeAfterEdit:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsSelectMoreTabView(Lcom/transsion/camera/app/ui/ModePickerUI;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mIsSelectMoreTabView:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmLeftGuideRootMoveFollowTab(Lcom/transsion/camera/app/ui/ModePickerUI;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mLeftGuideRootMoveFollowTab:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmMainHandler(Lcom/transsion/camera/app/ui/ModePickerUI;)Landroid/os/Handler;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mMainHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmModeArrow(Lcom/transsion/camera/app/ui/ModePickerUI;)Landroid/widget/ImageView;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeArrow:Landroid/widget/ImageView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmModeArrowSvga(Lcom/transsion/camera/app/ui/ModePickerUI;)Lcom/opensource/svgaplayer/SVGAImageView;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeArrowSvga:Lcom/opensource/svgaplayer/SVGAImageView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmModeInformation(Lcom/transsion/camera/app/ui/ModePickerUI;)Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeInformation:Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmModeOrderProvider(Lcom/transsion/camera/app/ui/ModePickerUI;)Lcom/transsion/camera/app/mode/ModeOrderProvider;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeOrderProvider:Lcom/transsion/camera/app/mode/ModeOrderProvider;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmModePickerIn(Lcom/transsion/camera/app/ui/ModePickerUI;)Landroid/animation/ObjectAnimator;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModePickerIn:Landroid/animation/ObjectAnimator;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmModePickerLayout(Lcom/transsion/camera/app/ui/ModePickerUI;)Landroid/widget/FrameLayout;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModePickerLayout:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmModePickerRoot(Lcom/transsion/camera/app/ui/ModePickerUI;)Landroid/view/ViewGroup;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModePickerRoot:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmModePickerRootAnimatorStartAction(Lcom/transsion/camera/app/ui/ModePickerUI;)Ljava/lang/Runnable;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModePickerRootAnimatorStartAction:Ljava/lang/Runnable;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmModeSelector(Lcom/transsion/camera/app/ui/ModePickerUI;)Lcom/transsion/camera/app/ui/widget/VerticalModeSelector;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeSelector:Lcom/transsion/camera/app/ui/widget/VerticalModeSelector;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmMoreModeCancelRoot(Lcom/transsion/camera/app/ui/ModePickerUI;)Landroid/view/View;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mMoreModeCancelRoot:Landroid/view/View;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmMoreModeGuideLeftRoot(Lcom/transsion/camera/app/ui/ModePickerUI;)Landroid/view/View;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mMoreModeGuideLeftRoot:Landroid/view/View;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmMoreModeGuideRightRoot(Lcom/transsion/camera/app/ui/ModePickerUI;)Landroid/view/View;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mMoreModeGuideRightRoot:Landroid/view/View;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmMoreModeGuideRootTranX(Lcom/transsion/camera/app/ui/ModePickerUI;)F
    .registers 1

    .line 0
    iget p0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mMoreModeGuideRootTranX:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmMoreModeRightGuide(Lcom/transsion/camera/app/ui/ModePickerUI;)Landroid/widget/ImageView;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mMoreModeRightGuide:Landroid/widget/ImageView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmMoreTabChangeListener(Lcom/transsion/camera/app/ui/ModePickerUI;)Lcom/transsion/camera/app/common/IAppUIListener$IMoreTabChangeListener;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mMoreTabChangeListener:Lcom/transsion/camera/app/common/IAppUIListener$IMoreTabChangeListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmMoreTabOriginalLocation(Lcom/transsion/camera/app/ui/ModePickerUI;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mMoreTabOriginalLocation:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmNeedSwitchMode(Lcom/transsion/camera/app/ui/ModePickerUI;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mNeedSwitchMode:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmOrderEditorFragmentControl(Lcom/transsion/camera/app/ui/ModePickerUI;)Lcom/transsion/camera/app/common/IAppUIControl$IOrderEditorFragmentControl;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mOrderEditorFragmentControl:Lcom/transsion/camera/app/common/IAppUIControl$IOrderEditorFragmentControl;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSVGACallback(Lcom/transsion/camera/app/ui/ModePickerUI;)Lcom/opensource/svgaplayer/SVGACallback;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mSVGACallback:Lcom/opensource/svgaplayer/SVGACallback;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmScreenFormType(Lcom/transsion/camera/app/ui/ModePickerUI;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mScreenFormType:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmScreenFormTypeChanged(Lcom/transsion/camera/app/ui/ModePickerUI;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mScreenFormTypeChanged:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmStopScroll(Lcom/transsion/camera/app/ui/ModePickerUI;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mStopScroll:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmUpdateArrowState(Lcom/transsion/camera/app/ui/ModePickerUI;)Ljava/util/List;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mUpdateArrowState:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmUpdateArrowStateLock(Lcom/transsion/camera/app/ui/ModePickerUI;)Ljava/lang/Object;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mUpdateArrowStateLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmCurrentModeName(Lcom/transsion/camera/app/ui/ModePickerUI;Ljava/lang/String;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mCurrentModeName:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIsAnimationCanceled(Lcom/transsion/camera/app/ui/ModePickerUI;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mIsAnimationCanceled:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIsAnimationRunning(Lcom/transsion/camera/app/ui/ModePickerUI;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mIsAnimationRunning:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIsDisableEnterMoreAnimation(Lcom/transsion/camera/app/ui/ModePickerUI;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mIsDisableEnterMoreAnimation:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmLeftGuideRootMoveFollowTab(Lcom/transsion/camera/app/ui/ModePickerUI;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mLeftGuideRootMoveFollowTab:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmModePickerIn(Lcom/transsion/camera/app/ui/ModePickerUI;Landroid/animation/ObjectAnimator;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModePickerIn:Landroid/animation/ObjectAnimator;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmMoreModeGuideRootTranX(Lcom/transsion/camera/app/ui/ModePickerUI;F)V
    .registers 2

    .line 0
    iput p1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mMoreModeGuideRootTranX:F

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmMoreTabOriginalLocation(Lcom/transsion/camera/app/ui/ModePickerUI;I)V
    .registers 2

    .line 0
    iput p1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mMoreTabOriginalLocation:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmNeedSwitchMode(Lcom/transsion/camera/app/ui/ModePickerUI;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mNeedSwitchMode:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmSVGAParser(Lcom/transsion/camera/app/ui/ModePickerUI;Lcom/opensource/svgaplayer/SVGAParser;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mSVGAParser:Lcom/opensource/svgaplayer/SVGAParser;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmScreenFormTypeChanged(Lcom/transsion/camera/app/ui/ModePickerUI;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mScreenFormTypeChanged:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mchooseModeUIToShow(Lcom/transsion/camera/app/ui/ModePickerUI;Z)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/ModePickerUI;->chooseModeUIToShow(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$menableModePickerUI(Lcom/transsion/camera/app/ui/ModePickerUI;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/ModePickerUI;->enableModePickerUI()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mexitMoreModeGuideAnimation(Lcom/transsion/camera/app/ui/ModePickerUI;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/ModePickerUI;->exitMoreModeGuideAnimation()V

    return-void
.end method

.method static bridge synthetic -$$Nest$misShowMoreModeGuideView(Lcom/transsion/camera/app/ui/ModePickerUI;)Z
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/ModePickerUI;->isShowMoreModeGuideView()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mnotifyModeSwitch(Lcom/transsion/camera/app/ui/ModePickerUI;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/ModePickerUI;->notifyModeSwitch()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateCurrentModeSelector(Lcom/transsion/camera/app/ui/ModePickerUI;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/ModePickerUI;->updateCurrentModeSelector()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateCurrentModeUI(Lcom/transsion/camera/app/ui/ModePickerUI;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/ModePickerUI;->updateCurrentModeUI()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateLayoutParams(Lcom/transsion/camera/app/ui/ModePickerUI;IIZ)V
    .registers 4

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/camera/app/ui/ModePickerUI;->updateLayoutParams(IIZ)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateMoreCancelRootParams(Lcom/transsion/camera/app/ui/ModePickerUI;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/ModePickerUI;->updateMoreCancelRootParams()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateMoreCancelRootState(Lcom/transsion/camera/app/ui/ModePickerUI;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/ModePickerUI;->updateMoreCancelRootState()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateMoreModeGuideLeftRootLocation(Lcom/transsion/camera/app/ui/ModePickerUI;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/ModePickerUI;->updateMoreModeGuideLeftRootLocation()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateMoreModeGuideUI(Lcom/transsion/camera/app/ui/ModePickerUI;Ljava/lang/String;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/ModePickerUI;->updateMoreModeGuideUI(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;
    .registers 1

    .line 0
    sget-object v0, Lcom/transsion/camera/app/ui/ModePickerUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 92
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "ModePickerUI"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/ui/ModePickerUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/transsion/camera/app/ui/ModeSwitchScroller;Lcom/transsion/camera/app/ui/ModeVerticalScroll;Lcom/transsion/camera/app/ui/ModeHorizontalScroll2;Landroid/content/Context;Lcom/transsion/camera/app/ui/ScrollConsumer;Lcom/transsion/camera/app/common/IAppUIControl$IOrderEditorFragmentControl;Lcom/transsion/camera/app/mode/ModeOrderProvider;Lcom/transsion/camera/app/ui/ScreenManager;)V
    .registers 18

    move-object/from16 v0, p7

    .line 292
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    new-instance v1, Landroid/view/animation/PathInterpolator;

    const v2, 0x3ea8f5c3    # 0.33f

    const/4 v3, 0x0

    const v4, 0x3f28f5c3    # 0.66f

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mGuideAlphaInterpolator:Landroid/view/animation/PathInterpolator;

    .line 99
    new-instance v1, Landroid/view/animation/PathInterpolator;

    const/high16 v6, 0x3e800000    # 0.25f

    invoke-direct {v1, v6, v3, v3, v5}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mTranslationXInterpolator:Landroid/view/animation/PathInterpolator;

    const/4 v1, 0x0

    .line 107
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mIsModeSwitching:Z

    .line 108
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mIsAnimationRunning:Z

    const/4 v7, -0x1

    .line 126
    iput v7, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mOrientation:I

    .line 140
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mIsCameraSwitching:Z

    .line 141
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mSelfTimerBegin:Z

    .line 142
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mRestoreSettingsBegin:Z

    .line 143
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mFilterUIShow:Z

    .line 144
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mCelebrityUIShow:Z

    .line 145
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mPortraitSpotUIShow:Z

    .line 146
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mMakeUpUIShow:Z

    .line 147
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mFaceBeautyUIShow:Z

    .line 148
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mPanelShow:Z

    .line 149
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mIsDisableEnterMoreAnimation:Z

    .line 151
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mIsResumeAfterEdit:Z

    .line 152
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mFromResume:Z

    .line 154
    new-instance v7, Landroid/view/animation/PathInterpolator;

    invoke-direct {v7, v6, v3, v3, v5}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v7, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mPathInterpolator:Landroid/view/animation/PathInterpolator;

    .line 155
    new-instance v6, Landroid/view/animation/PathInterpolator;

    const v7, 0x3e4ccccd    # 0.2f

    const v8, 0x3dcccccd    # 0.1f

    invoke-direct {v6, v7, v3, v8, v5}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v6, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mTBPathInterpolator:Landroid/view/animation/PathInterpolator;

    .line 156
    new-instance v6, Landroid/view/animation/PathInterpolator;

    invoke-direct {v6, v2, v3, v4, v5}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v6, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mAlphaPathInterpolator:Landroid/view/animation/PathInterpolator;

    const/4 v2, 0x1

    .line 158
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mLeftGuideRootMoveFollowTab:Z

    .line 183
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v2, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mMoreModeGuideAnim:Landroid/animation/AnimatorSet;

    .line 193
    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mMainHandler:Landroid/os/Handler;

    .line 194
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mUpdateArrowState:Ljava/util/List;

    .line 195
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mUpdateArrowStateLock:Ljava/lang/Object;

    .line 199
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mIsInstantZoomShow:Z

    .line 201
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mIsRecording:Z

    .line 206
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mIsAnimationCanceled:Z

    .line 207
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mIsFocusable:Z

    .line 208
    new-instance v1, Lcom/transsion/camera/app/ui/ModePickerUI$$ExternalSyntheticLambda9;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/ui/ModePickerUI$$ExternalSyntheticLambda9;-><init>(Lcom/transsion/camera/app/ui/ModePickerUI;)V

    iput-object v1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModePickerRootAnimatorStartAction:Ljava/lang/Runnable;

    .line 2661
    new-instance v1, Lcom/transsion/camera/app/ui/ModePickerUI$16;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/ui/ModePickerUI$16;-><init>(Lcom/transsion/camera/app/ui/ModePickerUI;)V

    iput-object v1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mSVGACallback:Lcom/opensource/svgaplayer/SVGACallback;

    .line 2963
    new-instance v1, Lcom/transsion/camera/app/ui/ModePickerUI$17;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/ui/ModePickerUI$17;-><init>(Lcom/transsion/camera/app/ui/ModePickerUI;)V

    iput-object v1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mIModuleTransfer:Lcom/transsion/camera/app/common/IModuleTransfer;

    .line 293
    iput-object p1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeSwitchScroller:Lcom/transsion/camera/app/ui/ModeSwitchScroller;

    .line 294
    iput-object p2, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeVerticalScroll:Lcom/transsion/camera/app/ui/ModeVerticalScroll;

    .line 295
    iput-object p3, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeHorizontalScroll:Lcom/transsion/camera/app/ui/ModeHorizontalScroll2;

    .line 296
    iput-object p5, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mScrollConsumer:Lcom/transsion/camera/app/ui/ScrollConsumer;

    move-object/from16 p1, p8

    .line 298
    iput-object p1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    .line 299
    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenFormType()I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mScreenFormType:I

    .line 300
    iput-object p6, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mOrderEditorFragmentControl:Lcom/transsion/camera/app/common/IAppUIControl$IOrderEditorFragmentControl;

    .line 301
    iput-object p4, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mContext:Landroid/content/Context;

    .line 302
    iput-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeOrderProvider:Lcom/transsion/camera/app/mode/ModeOrderProvider;

    .line 303
    invoke-virtual {p4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/transsion/camera/R$array;->build_in_selling_points:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mSellingPointItems:Ljava/util/List;

    .line 304
    new-instance p1, Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;

    invoke-direct {p1, p0, v0}, Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;-><init>(Lcom/transsion/camera/app/ui/ModePickerUI;Lcom/transsion/camera/app/mode/ModeOrderProvider;)V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeInformation:Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;

    .line 305
    iget-object p1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/transsion/camera/utils/ScreenUtils;->getRealMetrics(Landroid/content/Context;)Landroid/util/DisplayMetrics;

    move-result-object p1

    .line 306
    iget p1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput p1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mScreenWidth:I

    .line 307
    iget-object p1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/transsion/camera/R$dimen;->sink_modepicker:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mTranslateDistance:I

    .line 308
    iget-object p1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/transsion/camera/R$dimen;->tb_sink_modepicker:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mTBTranslateDistance:I

    return-void
.end method

.method private varargs abortAnimator(Landroid/animation/Animator;[Ljava/lang/Runnable;)V
    .registers 4

    if-eqz p1, :cond_22

    .line 2245
    invoke-virtual {p1}, Landroid/animation/Animator;->isStarted()Z

    move-result p0

    if-nez p0, :cond_e

    invoke-virtual {p1}, Landroid/animation/Animator;->isRunning()Z

    move-result p0

    if-eqz p0, :cond_22

    .line 2246
    :cond_e
    invoke-virtual {p1}, Landroid/animation/Animator;->cancel()V

    .line 2247
    invoke-virtual {p1}, Landroid/animation/Animator;->removeAllListeners()V

    if-eqz p2, :cond_22

    .line 2249
    array-length p0, p2

    const/4 p1, 0x0

    :goto_18
    if-ge p1, p0, :cond_22

    aget-object v0, p2, p1

    .line 2250
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    add-int/lit8 p1, p1, 0x1

    goto :goto_18

    :cond_22
    return-void
.end method

.method private cancelModePickerUIAnimation()V
    .registers 2

    .line 713
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModePickerIn:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 714
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModePickerIn:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 716
    :cond_f
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModePickerOut:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_1e

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 717
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModePickerOut:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Landroid/animation/Animator;->cancel()V

    :cond_1e
    return-void
.end method

.method private cannotUpdateCurrentTab()Z
    .registers 5

    .line 1151
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeInformation:Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;->-$$Nest$mcurrentIsTabLayoutMode(Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;)Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeTabLayout:Lcom/transsion/camera/app/ui/widget/TabLayout;

    if-nez v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    .line 1152
    :goto_10
    sget-object v1, Lcom/transsion/camera/app/ui/ModePickerUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cannotUpdateCurrentTab mFromResume: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mFromResume:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", mModeInformation.currentIsTabLayoutMode() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeInformation:Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;

    invoke-static {v3}, Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;->-$$Nest$mcurrentIsTabLayoutMode(Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1153
    iget-object v2, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeInformation:Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;

    invoke-static {v2}, Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;->-$$Nest$mcurrentIsTabLayoutMode(Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;)Z

    move-result v2

    if-nez v2, :cond_45

    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mFromResume:Z

    if-nez v2, :cond_45

    .line 1154
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/ModePickerUI;->notifyModeSwitch()V

    :cond_45
    if-eqz v0, :cond_6c

    .line 1157
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateCurrentTab currentIsTabLayoutMode:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeInformation:Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;

    invoke-static {v3}, Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;->-$$Nest$mcurrentIsTabLayoutMode(Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " ModeTabLayout:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeTabLayout:Lcom/transsion/camera/app/ui/widget/TabLayout;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :cond_6c
    return v0
.end method

.method private cannotUpdateModeTabLayout()Z
    .registers 5

    .line 2053
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeInformation:Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;->-$$Nest$mvalidModeList(Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;)Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeTabLayout:Lcom/transsion/camera/app/ui/widget/TabLayout;

    if-nez v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    :goto_10
    if-eqz v0, :cond_39

    .line 2055
    sget-object v1, Lcom/transsion/camera/app/ui/ModePickerUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateModeTabLayout mModeTabLayout:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeTabLayout:Lcom/transsion/camera/app/ui/widget/TabLayout;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " validModeList:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeInformation:Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;->-$$Nest$mvalidModeList(Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;)Z

    move-result p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :cond_39
    return v0
.end method

.method private chooseModeUIToShow(Z)V
    .registers 8

    .line 2563
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeTabLayout:Lcom/transsion/camera/app/ui/widget/TabLayout;

    if-eqz v0, :cond_126

    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mCurrentModeUI:Lcom/transsion/camera/app/ui/ModePickerUI$CurrentModeUI;

    if-nez v0, :cond_a

    goto/16 :goto_126

    .line 2568
    :cond_a
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/transsion/camera/utils/FeatureSupport;->isSupportFoldUI(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeSelector:Lcom/transsion/camera/app/ui/widget/VerticalModeSelector;

    if-nez v0, :cond_1e

    .line 2569
    sget-object p0, Lcom/transsion/camera/app/ui/ModePickerUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "chooseModeUIToShow, mModeSelector is null."

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 2573
    :cond_1e
    iget v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mScreenFormType:I

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/16 v4, 0x8

    if-eq v0, v2, :cond_ca

    const/4 v5, 0x7

    if-ne v0, v5, :cond_2d

    goto/16 :goto_ca

    .line 2587
    :cond_2d
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeSelector:Lcom/transsion/camera/app/ui/widget/VerticalModeSelector;

    if-eqz v0, :cond_34

    .line 2588
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 2590
    :cond_34
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/ModePickerUI;->currentIsIabLayoutMode()Z

    move-result v0

    if-eqz v0, :cond_8e

    .line 2591
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mIsEditMode:Z

    if-nez v0, :cond_52

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mIsPopSettingShow:Z

    if-nez v0, :cond_52

    invoke-direct {p0}, Lcom/transsion/camera/app/ui/ModePickerUI;->shouldHideModePickerUI()Z

    move-result v0

    if-nez v0, :cond_52

    .line 2592
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeTabLayout:Lcom/transsion/camera/app/ui/widget/TabLayout;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 2593
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeTabLayout:Lcom/transsion/camera/app/ui/widget/TabLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 2595
    :cond_52
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mMoreModeGuideRightRoot:Landroid/view/View;

    if-eqz v0, :cond_85

    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeOrderProvider:Lcom/transsion/camera/app/mode/ModeOrderProvider;

    .line 2596
    invoke-virtual {v0}, Lcom/transsion/camera/app/mode/ModeOrderProvider;->moreModeShow()Z

    move-result v0

    if-eqz v0, :cond_85

    .line 2597
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/ModePickerUI;->isShowMoreModeGuideView()Z

    move-result v0

    if-eqz v0, :cond_85

    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeInformation:Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;->-$$Nest$fgetmCurrentModeItem(Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;)Lcom/transsion/camera/app/common/FeatureResource;

    move-result-object v0

    iget-object v0, v0, Lcom/transsion/camera/app/common/FeatureResource;->mFeatureName:Ljava/lang/String;

    .line 2598
    const-string v1, "com.transsion.camera.feature.mode.more.MoreModeEntry"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_85

    if-nez p1, :cond_85

    iget-object p1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModePickerLayout:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_85

    .line 2601
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_85

    .line 2602
    iget-object p1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mMoreModeGuideRightRoot:Landroid/view/View;

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 2605
    :cond_85
    iget-object p1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mCurrentModeUI:Lcom/transsion/camera/app/ui/ModePickerUI$CurrentModeUI;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/ModePickerUI$CurrentModeUI;->-$$Nest$mhide(Lcom/transsion/camera/app/ui/ModePickerUI$CurrentModeUI;)V

    .line 2606
    invoke-virtual {p0, v2}, Lcom/transsion/camera/app/ui/ModePickerUI;->updateModeArrowVisibility(Z)V

    return-void

    .line 2608
    :cond_8e
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/ModePickerUI;->isSupportUI5MoreModeStyle()Z

    move-result p1

    if-nez p1, :cond_b7

    .line 2609
    iget-object p1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeTabLayout:Lcom/transsion/camera/app/ui/widget/TabLayout;

    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 2610
    iget-object p1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mMoreModeGuideRightRoot:Landroid/view/View;

    if-eqz p1, :cond_a8

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_a8

    .line 2611
    iget-object p1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mMoreModeGuideRightRoot:Landroid/view/View;

    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 2613
    :cond_a8
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mIsInstantZoomShow:Z

    if-nez p1, :cond_b7

    .line 2614
    iget-object p1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mCurrentModeUI:Lcom/transsion/camera/app/ui/ModePickerUI$CurrentModeUI;

    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeInformation:Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;->-$$Nest$mcurrentModeShowName(Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/camera/app/ui/ModePickerUI$CurrentModeUI;->-$$Nest$mshow(Lcom/transsion/camera/app/ui/ModePickerUI$CurrentModeUI;Ljava/lang/String;)V

    .line 2617
    :cond_b7
    iget-object p1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mMoreModeGuideLeftRoot:Landroid/view/View;

    if-eqz p1, :cond_c6

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_c6

    .line 2618
    iget-object p1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mMoreModeGuideLeftRoot:Landroid/view/View;

    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 2620
    :cond_c6
    invoke-virtual {p0, v3}, Lcom/transsion/camera/app/ui/ModePickerUI;->updateModeArrowVisibility(Z)V

    return-void

    .line 2575
    :cond_ca
    :goto_ca
    iget-object p1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeTabLayout:Lcom/transsion/camera/app/ui/widget/TabLayout;

    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 2576
    sget-object p1, Lcom/transsion/camera/app/ui/ModePickerUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "chooseModeUIToShow, mIsEditMode: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mIsEditMode:Z

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", mIsPopSettingShow: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mIsPopSettingShow:Z

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", mIsRecording: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mIsRecording:Z

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 2578
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mIsEditMode:Z

    if-nez p1, :cond_120

    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mIsPopSettingShow:Z

    if-nez p1, :cond_120

    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mIsRecording:Z

    if-nez p1, :cond_120

    iget-object p1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeSelector:Lcom/transsion/camera/app/ui/widget/VerticalModeSelector;

    if-eqz p1, :cond_120

    .line 2579
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mIsCameraSwitching:Z

    if-nez v0, :cond_116

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mVipSelfieQuiting:Z

    if-nez v0, :cond_116

    .line 2580
    invoke-virtual {p1, v2}, Lcom/transsion/camera/app/ui/widget/VerticalModeSelector;->setEnabled(Z)V

    .line 2582
    :cond_116
    iget-object p1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeSelector:Lcom/transsion/camera/app/ui/widget/VerticalModeSelector;

    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    .line 2583
    iget-object p1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeSelector:Lcom/transsion/camera/app/ui/widget/VerticalModeSelector;

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 2585
    :cond_120
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mCurrentModeUI:Lcom/transsion/camera/app/ui/ModePickerUI$CurrentModeUI;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/ModePickerUI$CurrentModeUI;->-$$Nest$mhide(Lcom/transsion/camera/app/ui/ModePickerUI$CurrentModeUI;)V

    return-void

    .line 2564
    :cond_126
    :goto_126
    sget-object p0, Lcom/transsion/camera/app/ui/ModePickerUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "chooseModeUIToShow, mModeTabLayout, mCurrentModeUI is null."

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private enableModePickerUI()V
    .registers 4

    .line 2509
    sget-object v0, Lcom/transsion/camera/app/ui/ModePickerUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enableModePickerUI, mIsVideoRecording: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mIsVideoRecording:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mIsCameraSwitching: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mIsCameraSwitching:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mRestoreSettingsBegin: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mRestoreSettingsBegin:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mIsConfigurationChanging: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mIsConfigurationChanging:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 2514
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mIsVideoRecording:Z

    if-nez v0, :cond_4a

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mIsCameraSwitching:Z

    if-nez v0, :cond_4a

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mRestoreSettingsBegin:Z

    if-nez v0, :cond_4a

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mIsConfigurationChanging:Z

    if-nez v0, :cond_4a

    const/4 v0, 0x1

    .line 2515
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/ModePickerUI;->setEnable(Z)V

    :cond_4a
    return-void
.end method

.method private enterMoreModeGuideAnimation()V
    .registers 7

    .line 744
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/ModePickerUI;->isShowMoreModeGuideView()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 747
    :cond_7
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mIsDisableEnterMoreAnimation:Z

    if-eqz v0, :cond_13

    .line 748
    sget-object p0, Lcom/transsion/camera/app/ui/ModePickerUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "enterMoreModeGuideAnimation: disable animation, return"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 751
    :cond_13
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mMoreModeGuideRightRoot:Landroid/view/View;

    if-eqz v0, :cond_cd

    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mMoreModeGuideLeftRoot:Landroid/view/View;

    if-eqz v0, :cond_cd

    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mMoreModeRightGuide:Landroid/widget/ImageView;

    if-nez v0, :cond_21

    goto/16 :goto_cd

    .line 755
    :cond_21
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mExitGuideRightAlphaAnimation:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_30

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_30

    .line 756
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mExitGuideRightAlphaAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 758
    :cond_30
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mExitGuideRightTransXAnimation:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_3f

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 759
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mExitGuideRightTransXAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 761
    :cond_3f
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mExitGuideLeftAlphaAnimation:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_4e

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_4e

    .line 762
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mExitGuideLeftAlphaAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 764
    :cond_4e
    sget-object v0, Lcom/transsion/camera/app/ui/ModePickerUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enterMoreModeGuideAnimation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mEnterMoreMode:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 765
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mEnterMoreMode:Z

    .line 766
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mMoreModeGuideRightRoot:Landroid/view/View;

    const/4 v1, 0x2

    new-array v2, v1, [F

    fill-array-data v2, :array_d6

    const-string v3, "alpha"

    invoke-static {v0, v3, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v4, 0x96

    invoke-virtual {v0, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mEnterGuideRightAnimation:Landroid/animation/ObjectAnimator;

    .line 767
    iget-object v2, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mGuideAlphaInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v2}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 768
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mEnterGuideRightAnimation:Landroid/animation/ObjectAnimator;

    new-instance v2, Lcom/transsion/camera/app/ui/ModePickerUI$3;

    invoke-direct {v2, p0}, Lcom/transsion/camera/app/ui/ModePickerUI$3;-><init>(Lcom/transsion/camera/app/ui/ModePickerUI;)V

    invoke-virtual {v0, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 782
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mEnterGuideRightAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 784
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mMoreModeGuideLeftRoot:Landroid/view/View;

    new-array v1, v1, [F

    fill-array-data v1, :array_de

    invoke-static {v0, v3, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mEnterGuideLeftAnimation:Landroid/animation/ObjectAnimator;

    const-wide/16 v1, 0x64

    .line 785
    invoke-virtual {v0, v1, v2}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 786
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mEnterGuideLeftAnimation:Landroid/animation/ObjectAnimator;

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 787
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mEnterGuideLeftAnimation:Landroid/animation/ObjectAnimator;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mGuideAlphaInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 788
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mEnterGuideLeftAnimation:Landroid/animation/ObjectAnimator;

    new-instance v1, Lcom/transsion/camera/app/ui/ModePickerUI$4;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/ui/ModePickerUI$4;-><init>(Lcom/transsion/camera/app/ui/ModePickerUI;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 809
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mEnterGuideLeftAnimation:Landroid/animation/ObjectAnimator;

    new-instance v1, Lcom/transsion/camera/app/ui/ModePickerUI$$ExternalSyntheticLambda10;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/ui/ModePickerUI$$ExternalSyntheticLambda10;-><init>(Lcom/transsion/camera/app/ui/ModePickerUI;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 812
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mEnterGuideLeftAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    return-void

    .line 752
    :cond_cd
    :goto_cd
    sget-object p0, Lcom/transsion/camera/app/ui/ModePickerUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "mMoreModeGuideRightRoot, mMoreModeGuideLeftRoot or mMoreModeRightGuide is null"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    nop

    :array_d6
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_de
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private exitMoreModeGuideAnimation()V
    .registers 9

    .line 816
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/ModePickerUI;->isShowMoreModeGuideView()Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_19

    .line 819
    :cond_7
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mMoreModeGuideRightRoot:Landroid/view/View;

    if-eqz v0, :cond_e4

    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mMoreModeGuideLeftRoot:Landroid/view/View;

    if-eqz v0, :cond_e4

    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mMoreModeRightGuide:Landroid/widget/ImageView;

    if-nez v0, :cond_15

    goto/16 :goto_e4

    .line 823
    :cond_15
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mEnterMoreMode:Z

    if-nez v0, :cond_1a

    :goto_19
    return-void

    .line 826
    :cond_1a
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mEnterGuideRightAnimation:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_29

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 827
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mEnterGuideRightAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 829
    :cond_29
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mEnterGuideLeftAnimation:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_38

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_38

    .line 830
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mEnterGuideLeftAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 832
    :cond_38
    sget-object v0, Lcom/transsion/camera/app/ui/ModePickerUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "exitMoreModeGuideAnimation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mEnterMoreMode:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 833
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mEnterMoreMode:Z

    .line 834
    iget-object v1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mMoreModeGuideRightRoot:Landroid/view/View;

    const/4 v2, 0x2

    new-array v3, v2, [F

    fill-array-data v3, :array_ec

    const-string v4, "alpha"

    invoke-static {v1, v4, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    const-wide/16 v5, 0x12c

    invoke-virtual {v1, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mExitGuideRightAlphaAnimation:Landroid/animation/ObjectAnimator;

    .line 835
    iget-object v3, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mGuideAlphaInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v1, v3}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 836
    iget-object v1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mExitGuideRightAlphaAnimation:Landroid/animation/ObjectAnimator;

    new-instance v3, Lcom/transsion/camera/app/ui/ModePickerUI$5;

    invoke-direct {v3, p0}, Lcom/transsion/camera/app/ui/ModePickerUI$5;-><init>(Lcom/transsion/camera/app/ui/ModePickerUI;)V

    invoke-virtual {v1, v3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 855
    iget-object v1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mMoreModeGuideRightRoot:Landroid/view/View;

    iget-object v3, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mContext:Landroid/content/Context;

    .line 856
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/16 v7, 0xa

    invoke-static {v3, v7}, Lcom/transsion/camera/utils/UIUtils;->dp2Px(Landroid/content/res/Resources;I)I

    move-result v3

    neg-int v3, v3

    int-to-float v3, v3

    new-array v7, v2, [F

    aput v3, v7, v0

    const/4 v0, 0x1

    const/4 v3, 0x0

    aput v3, v7, v0

    .line 855
    const-string/jumbo v0, "translationX"

    invoke-static {v1, v0, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 856
    invoke-virtual {v0, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mExitGuideRightTransXAnimation:Landroid/animation/ObjectAnimator;

    .line 857
    invoke-virtual {v0, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 858
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mExitGuideRightTransXAnimation:Landroid/animation/ObjectAnimator;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mTranslationXInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 859
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mExitGuideRightTransXAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 860
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mExitGuideRightAlphaAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 862
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mMoreModeGuideLeftRoot:Landroid/view/View;

    new-array v1, v2, [F

    fill-array-data v1, :array_f4

    invoke-static {v0, v4, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mExitGuideLeftAlphaAnimation:Landroid/animation/ObjectAnimator;

    const-wide/16 v1, 0x96

    .line 863
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 864
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mExitGuideLeftAlphaAnimation:Landroid/animation/ObjectAnimator;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mGuideAlphaInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 865
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mExitGuideLeftAlphaAnimation:Landroid/animation/ObjectAnimator;

    new-instance v1, Lcom/transsion/camera/app/ui/ModePickerUI$$ExternalSyntheticLambda12;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/ui/ModePickerUI$$ExternalSyntheticLambda12;-><init>(Lcom/transsion/camera/app/ui/ModePickerUI;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 869
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mExitGuideLeftAlphaAnimation:Landroid/animation/ObjectAnimator;

    new-instance v1, Lcom/transsion/camera/app/ui/ModePickerUI$6;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/ui/ModePickerUI$6;-><init>(Lcom/transsion/camera/app/ui/ModePickerUI;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 876
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mExitGuideLeftAlphaAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    return-void

    .line 820
    :cond_e4
    :goto_e4
    sget-object p0, Lcom/transsion/camera/app/ui/ModePickerUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "mMoreModeGuideRightRoot, mMoreModeGuideLeftRoot or mMoreModeRightGuide is null"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    :array_ec
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_f4
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private getAnimatorDuration()I
    .registers 1

    .line 2960
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result p0

    if-eqz p0, :cond_9

    const/16 p0, 0x96

    return p0

    :cond_9
    const/16 p0, 0x12c

    return p0
.end method

.method private getTranslateDistance()I
    .registers 2

    .line 2953
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p0, 0x0

    return p0

    .line 2956
    :cond_8
    iget p0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mTranslateDistance:I

    return p0
.end method

.method private isModePickerVisible()Z
    .registers 2

    .line 1085
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModePickerLayout:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_19

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_19

    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModePickerLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Landroid/view/View;->getAlpha()F

    move-result p0

    const/4 v0, 0x0

    invoke-static {p0, v0}, Ljava/lang/Float;->compare(FF)I

    move-result p0

    if-eqz p0, :cond_19

    const/4 p0, 0x1

    return p0

    :cond_19
    const/4 p0, 0x0

    return p0
.end method

.method private isShowMoreModeGuideView()Z
    .registers 2

    .line 1077
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/transsion/camera/R$bool;->show_more_mode_guide_view:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$abortShowOrHideModePickerRootUI$11()V
    .registers 2

    .line 2236
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mMainHandler:Landroid/os/Handler;

    if-eqz v0, :cond_9

    .line 2237
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModePickerRootAnimatorStartAction:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_9
    return-void
.end method

.method private synthetic lambda$enterMoreModeGuideAnimation$7(Landroid/animation/ValueAnimator;)V
    .registers 2

    .line 810
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/ModePickerUI;->updateMoreModeGuideLeftRootLocation()V

    return-void
.end method

.method private synthetic lambda$exitMoreModeGuideAnimation$8(Landroid/animation/ValueAnimator;)V
    .registers 2

    .line 866
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/ModePickerUI;->updateMoreModeGuideLeftRootLocation()V

    return-void
.end method

.method private synthetic lambda$new$0()V
    .registers 4

    .line 209
    sget-object v0, Lcom/transsion/camera/app/ui/ModePickerUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "onAnimationStart[mModePickerRootAnimatorStartAction]: "

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 210
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/ModePickerUI;->isSupportUI5MoreModeStyle()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_30

    .line 211
    const-string v0, "com.transsion.camera.feature.mode.more.MoreModeEntry"

    iget-object v2, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mCurrentModeName:Ljava/lang/String;

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1d

    .line 212
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mMoreModeGuideRightRoot:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 214
    :cond_1d
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModePickerLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 215
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mCurrentModeName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/ModePickerUI;->isTabLayoutMode(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2f

    .line 216
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mMoreModeCancelRoot:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_2f
    return-void

    .line 219
    :cond_30
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModePickerLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private synthetic lambda$selectMoreTabView$1(Lcom/transsion/camera/app/ui/widget/TabLayout$TabView;)V
    .registers 6

    .line 261
    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/widget/TabLayout$TabView;->performClick()Z

    const/4 v0, 0x2

    .line 262
    new-array v0, v0, [I

    .line 263
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationInWindow([I)V

    .line 264
    iget-object v1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mMoreModeCancelRoot:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, 0x0

    .line 265
    aget v0, v0, v2

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    add-int/2addr v0, p1

    iget-object p1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeTabLayout:Lcom/transsion/camera/app/ui/widget/TabLayout;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const/16 v3, 0xc

    invoke-static {p1, v3}, Lcom/transsion/camera/utils/UIUtils;->dp2Px(Landroid/content/res/Resources;I)I

    move-result p1

    sub-int/2addr v0, p1

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 266
    iget-object p1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mMoreModeCancelRoot:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 267
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mMoreModeCancelRoot:Landroid/view/View;

    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private synthetic lambda$setupViews$2(Landroid/view/View;)V
    .registers 2

    .line 429
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/ModePickerUI;->startPullingModePanel()V

    return-void
.end method

.method private synthetic lambda$setupViews$3()V
    .registers 2

    const/4 v0, 0x1

    .line 467
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mIsSelectMoreTabView:Z

    .line 468
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mMoreTabChangeListener:Lcom/transsion/camera/app/common/IAppUIListener$IMoreTabChangeListener;

    if-eqz v0, :cond_c

    .line 469
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mCurrentModeName:Ljava/lang/String;

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/IAppUIListener$IMoreTabChangeListener;->onMoreTabChanged(Ljava/lang/String;)V

    :cond_c
    return-void
.end method

.method private synthetic lambda$setupViews$4(Lcom/transsion/camera/app/common/storage/DataStore;Landroid/view/View;)V
    .registers 7

    .line 436
    iget-object p2, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mMoreModeRightGuide:Landroid/widget/ImageView;

    invoke-static {p2}, Lcom/transsion/camera/utils/MultiTouchManager;->canPerformClick(Landroid/view/View;)Z

    move-result p2

    if-nez p2, :cond_9

    goto :goto_2d

    .line 439
    :cond_9
    iget-object p2, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz p2, :cond_1b

    invoke-interface {p2}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->shutterUIProcessing()Z

    move-result p2

    if-eqz p2, :cond_1b

    .line 440
    sget-object p0, Lcom/transsion/camera/app/ui/ModePickerUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "shutter ui is processing, return"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 443
    :cond_1b
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/ModePickerUI;->isSupportUI5MoreModeStyle()Z

    move-result p2

    if-eqz p2, :cond_2e

    iget-object p2, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mCurrentModeName:Ljava/lang/String;

    .line 444
    invoke-virtual {p0, p2}, Lcom/transsion/camera/app/ui/ModePickerUI;->isTabLayoutMode(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_2e

    iget-boolean p2, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mIsModeSwitching:Z

    if-eqz p2, :cond_2e

    :goto_2d
    return-void

    .line 447
    :cond_2e
    const-string p2, "0"

    .line 448
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v0

    .line 447
    const-string v1, "key_more_mode_guide_click_time"

    invoke-virtual {p1, v1, p2, v0}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    const/4 v0, 0x1

    add-int/2addr p2, v0

    const/4 v2, 0x3

    const/4 v3, 0x0

    if-gt p2, v2, :cond_4f

    .line 451
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, p2, v2, v3}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 453
    :cond_4f
    iget-object p1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mMoreModeGuideAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_5c

    .line 454
    iget-object p1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mMoreModeGuideAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->end()V

    .line 456
    :cond_5c
    iget-object p1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mNotifyClickGuideIconListener:Lcom/transsion/camera/app/common/IAppUIListener$INotifyClickGuideIconListener;

    if-eqz p1, :cond_63

    .line 457
    invoke-interface {p1}, Lcom/transsion/camera/app/common/IAppUIListener$INotifyClickGuideIconListener;->notifyClickGuideIcon()V

    .line 459
    :cond_63
    iput-boolean v3, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mIsDisableEnterMoreAnimation:Z

    .line 460
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/ModePickerUI;->isSupportUI5MoreModeStyle()Z

    move-result p1

    if-eqz p1, :cond_a5

    iget-object p1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mMoreModeCancelRoot:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_a5

    .line 461
    iput-boolean v3, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mIsSelectMoreTabView:Z

    .line 462
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/ModePickerUI;->updateSpecifiedMode(Z)V

    .line 463
    iget-object p1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeTabLayout:Lcom/transsion/camera/app/ui/widget/TabLayout;

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/widget/TabLayout;->getMoreTabView()Lcom/transsion/camera/app/ui/widget/TabLayout$TabView;

    move-result-object p1

    if-eqz p1, :cond_9d

    .line 465
    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/widget/TabLayout$TabView;->getTab()Lcom/transsion/camera/app/ui/widget/TabLayout$Tab;

    move-result-object p1

    iget-object p2, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/transsion/camera/R$string;->more_mode_title:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/transsion/camera/app/ui/widget/TabLayout$Tab;->setText(Ljava/lang/CharSequence;)Lcom/transsion/camera/app/ui/widget/TabLayout$Tab;

    .line 466
    iget-object p1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mMainHandler:Landroid/os/Handler;

    new-instance p2, Lcom/transsion/camera/app/ui/ModePickerUI$$ExternalSyntheticLambda13;

    invoke-direct {p2, p0}, Lcom/transsion/camera/app/ui/ModePickerUI$$ExternalSyntheticLambda13;-><init>(Lcom/transsion/camera/app/ui/ModePickerUI;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 473
    :cond_9d
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mMoreModeCancelRoot:Landroid/view/View;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 475
    :cond_a5
    invoke-direct {p0, v3}, Lcom/transsion/camera/app/ui/ModePickerUI;->updateSpecifiedMode(Z)V

    return-void
.end method

.method private synthetic lambda$setupViews$5(Landroid/view/View;)V
    .registers 3

    .line 483
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mIsCameraSwitching:Z

    if-nez v0, :cond_37

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mSelfTimerBegin:Z

    if-nez v0, :cond_37

    .line 484
    invoke-static {p1}, Lcom/transsion/camera/utils/MultiTouchManager;->canPerformClick(Landroid/view/View;)Z

    move-result p1

    if-nez p1, :cond_f

    goto :goto_37

    .line 487
    :cond_f
    iget-object p1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeInformation:Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;->currentIsDVMode()Z

    move-result p1

    if-eqz p1, :cond_27

    .line 488
    iget-object p1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz p1, :cond_20

    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mIsModeSwitching:Z

    if-eqz p1, :cond_20

    goto :goto_37

    .line 491
    :cond_20
    invoke-static {}, Lcom/transsion/camera/utils/manager/GlobalClickManager;->checkCanClick()Z

    move-result p1

    if-nez p1, :cond_27

    goto :goto_37

    .line 495
    :cond_27
    iget-object p1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeInformation:Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;->-$$Nest$mupdateCurrentMode(Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;)V

    .line 496
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/ModePickerUI;->updateCurrentModeAndNotify()V

    .line 497
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz p0, :cond_37

    const/4 p1, 0x0

    .line 498
    invoke-interface {p0, p1, p1}, Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;->updateIntentFromNegativeScreen(ZZ)V

    :cond_37
    :goto_37
    return-void
.end method

.method private synthetic lambda$switchDefaultMode$6()V
    .registers 5

    .line 557
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeTabLayout:Lcom/transsion/camera/app/ui/widget/TabLayout;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/widget/TabLayout;->getTabCount()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/widget/TabLayout;->getTabAt(I)Lcom/transsion/camera/app/ui/widget/TabLayout$Tab;

    move-result-object v0

    if-eqz v0, :cond_1d

    .line 559
    iget-object v1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/transsion/camera/R$string;->more_mode_title:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/widget/TabLayout$Tab;->setText(Ljava/lang/CharSequence;)Lcom/transsion/camera/app/ui/widget/TabLayout$Tab;

    .line 561
    :cond_1d
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mIsSelectMoreTabView:Z

    .line 562
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mMoreTabChangeListener:Lcom/transsion/camera/app/common/IAppUIListener$IMoreTabChangeListener;

    if-eqz v0, :cond_28

    .line 563
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mCurrentModeName:Ljava/lang/String;

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/IAppUIListener$IMoreTabChangeListener;->onMoreTabChanged(Ljava/lang/String;)V

    :cond_28
    return-void
.end method

.method private synthetic lambda$updateLayoutParams$9(Landroid/widget/FrameLayout$LayoutParams;Landroid/animation/ValueAnimator;)V
    .registers 3

    .line 1781
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 1782
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModePickerRoot:Landroid/view/ViewGroup;

    invoke-virtual {p0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private synthetic lambda$updateMoreCancelRootState$10()V
    .registers 2

    .line 1886
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mMoreModeCancelRoot:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private notifyModeSwitch()V
    .registers 2

    .line 1515
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeChangedListener:Lcom/transsion/camera/app/common/IAppUIListener$IModeChangedListener;

    if-eqz v0, :cond_d

    .line 1516
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeInformation:Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;->-$$Nest$mcurrentModeFeatureName(Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/IAppUIListener$IModeChangedListener;->onSwitchMode(Ljava/lang/String;)V

    :cond_d
    return-void
.end method

.method private playSvgaAnimation(Ljava/lang/String;)V
    .registers 5

    .line 2532
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mUpdateArrowStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2533
    :try_start_3
    sget-object v1, Lcom/transsion/camera/app/ui/ModePickerUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v2, "[playSvgaAnimation] stopAnimation "

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 2534
    iget-object v1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeArrowSvga:Lcom/opensource/svgaplayer/SVGAImageView;

    invoke-virtual {v1}, Lcom/opensource/svgaplayer/SVGAImageView;->stopAnimation()V

    .line 2535
    iget-object v1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mSVGAParser:Lcom/opensource/svgaplayer/SVGAParser;

    new-instance v2, Lcom/transsion/camera/app/ui/ModePickerUI$14;

    invoke-direct {v2, p0}, Lcom/transsion/camera/app/ui/ModePickerUI$14;-><init>(Lcom/transsion/camera/app/ui/ModePickerUI;)V

    invoke-virtual {v1, p1, v2}, Lcom/opensource/svgaplayer/SVGAParser;->parse(Ljava/lang/String;Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;)V

    .line 2552
    monitor-exit v0

    return-void

    :catchall_1b
    move-exception p0

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_1b

    throw p0
.end method

.method private shouldHideModePickerUI()Z
    .registers 3

    .line 2556
    iget v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mScreenFormType:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_8

    const/4 v1, 0x5

    if-ne v0, v1, :cond_21

    :cond_8
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mFilterUIShow:Z

    if-nez v0, :cond_23

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mPortraitSpotUIShow:Z

    if-nez v0, :cond_23

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mMakeUpUIShow:Z

    if-nez v0, :cond_23

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mFaceBeautyUIShow:Z

    if-nez v0, :cond_23

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mPanelShow:Z

    if-nez v0, :cond_23

    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mCelebrityUIShow:Z

    if-eqz p0, :cond_21

    goto :goto_23

    :cond_21
    const/4 p0, 0x0

    return p0

    :cond_23
    :goto_23
    const/4 p0, 0x1

    return p0
.end method

.method private startModePickerUIAnimation(IZ)V
    .registers 8

    .line 673
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/ModePickerUI;->cancelModePickerUIAnimation()V

    const/4 v0, 0x0

    if-eqz p2, :cond_3c

    .line 675
    iget-object p2, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModePickerRoot:Landroid/view/ViewGroup;

    const/4 v1, 0x1

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput v2, v1, v0

    const-string v0, "alpha"

    invoke-static {p2, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p2

    const-wide/16 v0, 0x15e

    invoke-virtual {p2, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModePickerOut:Landroid/animation/ObjectAnimator;

    .line 676
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3f28f5c3    # 0.66f

    const/high16 v3, 0x3f800000    # 1.0f

    const v4, 0x3ea8f5c3    # 0.33f

    invoke-direct {v0, v4, v2, v1, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {p2, v0}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 677
    iget-object p2, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModePickerOut:Landroid/animation/ObjectAnimator;

    new-instance v0, Lcom/transsion/camera/app/ui/ModePickerUI$2;

    invoke-direct {v0, p0, p1}, Lcom/transsion/camera/app/ui/ModePickerUI$2;-><init>(Lcom/transsion/camera/app/ui/ModePickerUI;I)V

    invoke-virtual {p2, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 705
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModePickerOut:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    return-void

    .line 707
    :cond_3c
    iget p2, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mScreenFormType:I

    invoke-direct {p0, p1, p2, v0}, Lcom/transsion/camera/app/ui/ModePickerUI;->updateLayoutParams(IIZ)V

    .line 708
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/ModePickerUI;->chooseModeUIToShow(Z)V

    return-void
.end method

.method private startPullingModePanel()V
    .registers 2

    .line 904
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/ModePickerUI;->isModePickerVisible()Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_15

    .line 907
    :cond_7
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mScrollConsumer:Lcom/transsion/camera/app/ui/ScrollConsumer;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/ScrollConsumer;->spreadModePanel()V

    .line 908
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mCameraOperationControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    if-eqz p0, :cond_15

    const/16 v0, 0x48

    .line 909
    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    :cond_15
    :goto_15
    return-void
.end method

.method private switchDefaultMode(Landroid/view/View;)V
    .registers 4

    .line 544
    invoke-static {p1}, Lcom/transsion/camera/utils/MultiTouchManager;->canPerformClick(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_50

    .line 545
    invoke-static {}, Lcom/transsion/camera/utils/manager/GlobalClickManager;->checkCanClick()Z

    move-result p1

    if-nez p1, :cond_d

    goto :goto_50

    .line 548
    :cond_d
    sget-object p1, Lcom/transsion/camera/app/ui/ModePickerUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "switchDefaultMode, mIsModeSwitching: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mIsModeSwitching:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mIsPaused: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mIsPaused:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 550
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mIsModeSwitching:Z

    if-nez p1, :cond_50

    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mIsPaused:Z

    if-eqz p1, :cond_38

    goto :goto_50

    .line 553
    :cond_38
    iget-object p1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz p1, :cond_46

    .line 554
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeInformation:Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;->-$$Nest$fgetmDefaultModeFeatureName(Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$IModePickerControl;->updateSpecifiedMode(Ljava/lang/String;Z)V

    .line 556
    :cond_46
    iget-object p1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mMainHandler:Landroid/os/Handler;

    new-instance v0, Lcom/transsion/camera/app/ui/ModePickerUI$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/ui/ModePickerUI$$ExternalSyntheticLambda7;-><init>(Lcom/transsion/camera/app/ui/ModePickerUI;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_50
    :goto_50
    return-void
.end method

.method private updateCurrentModeAndNotify()V
    .registers 2

    const/4 v0, 0x0

    .line 1508
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/ModePickerUI;->updateCurrentTab(Z)V

    .line 1509
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/ModePickerUI;->updateCurrentModeSelector()V

    .line 1510
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/ModePickerUI;->updateCurrentModeUI()V

    .line 1511
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/ModePickerUI;->notifyModeSwitch()V

    return-void
.end method

.method private updateCurrentModeSelector()V
    .registers 3

    .line 1163
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeSelector:Lcom/transsion/camera/app/ui/widget/VerticalModeSelector;

    if-eqz v0, :cond_23

    .line 1164
    iget-object v1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeInformation:Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;

    invoke-static {v1}, Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;->-$$Nest$mgetDefaultModeTitle(Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/widget/VerticalModeSelector;->updateDefaultValue(Ljava/lang/String;)V

    .line 1165
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeSelector:Lcom/transsion/camera/app/ui/widget/VerticalModeSelector;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeInformation:Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;

    invoke-static {v1}, Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;->-$$Nest$mcurrentModeShowName(Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/widget/VerticalModeSelector;->updateIndexByValue(Ljava/lang/String;)V

    .line 1166
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeSelector:Lcom/transsion/camera/app/ui/widget/VerticalModeSelector;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/widget/VerticalModeSelector;->isOutSideShown()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/ModePickerUI;->updateModeArrowVisibility(Z)V

    :cond_23
    return-void
.end method

.method private updateCurrentModeUI()V
    .registers 3

    .line 1531
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeTabLayout:Lcom/transsion/camera/app/ui/widget/TabLayout;

    if-nez v0, :cond_d

    .line 1532
    sget-object p0, Lcom/transsion/camera/app/ui/ModePickerUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string/jumbo v0, "updateCurrentModeUI: mModeTabLayout is null"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 1535
    :cond_d
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeInformation:Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;->-$$Nest$mcurrentIsTabLayoutMode(Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;)Z

    move-result v0

    if-nez v0, :cond_2f

    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeInformation:Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;->-$$Nest$fgetmCurrentModeItem(Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;)Lcom/transsion/camera/app/common/FeatureResource;

    move-result-object v0

    if-eqz v0, :cond_2e

    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeInformation:Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;->-$$Nest$fgetmCurrentModeItem(Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;)Lcom/transsion/camera/app/common/FeatureResource;

    move-result-object v0

    iget-object v0, v0, Lcom/transsion/camera/app/common/FeatureResource;->mFeatureName:Ljava/lang/String;

    const-string v1, "com.transsion.camera.feature.arcore.ARCoreModeEntry"

    .line 1537
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2e

    goto :goto_2f

    :cond_2e
    return-void

    :cond_2f
    :goto_2f
    const/4 v0, 0x0

    .line 1538
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/ModePickerUI;->chooseModeUIToShow(Z)V

    return-void
.end method

.method private updateLayoutParams(IIZ)V
    .registers 23

    move-object/from16 v0, p0

    move/from16 v1, p2

    .line 1617
    iget-object v2, v0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModePickerRoot:Landroid/view/ViewGroup;

    if-eqz v2, :cond_275

    iget-object v2, v0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeTabLayout:Lcom/transsion/camera/app/ui/widget/TabLayout;

    if-nez v2, :cond_e

    goto/16 :goto_275

    :cond_e
    const/4 v2, -0x1

    const/4 v3, 0x0

    move/from16 v4, p1

    if-ne v4, v2, :cond_15

    move v4, v3

    .line 1624
    :cond_15
    iget-object v5, v0, Lcom/transsion/camera/app/ui/ModePickerUI;->mHoverTranslateAnimator:Landroid/animation/ValueAnimator;

    invoke-static {v5}, Lcom/transsion/camera/utils/AnimationUtils;->stopAnimator(Landroid/animation/Animator;)V

    .line 1625
    iget-object v5, v0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModePickerRoot:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 1626
    sget v6, Lcom/transsion/camera/R$dimen;->mode_picker_width_expanded_ui:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v6

    .line 1627
    sget v7, Lcom/transsion/camera/R$dimen;->mode_picker_margin_port_expanded_ui:I

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v7

    .line 1628
    sget v8, Lcom/transsion/camera/R$dimen;->mode_picker_margin_land_expanded_ui:I

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v8

    .line 1629
    sget v9, Lcom/transsion/camera/R$dimen;->mode_picker_margin_bottom_port_expanded_ui:I

    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v9

    .line 1630
    sget v10, Lcom/transsion/camera/R$dimen;->mode_picker_margin_bottom_land_expanded_ui:I

    invoke-virtual {v5, v10}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v10

    .line 1631
    iget-object v11, v0, Lcom/transsion/camera/app/ui/ModePickerUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {v11}, Lcom/transsion/camera/app/ui/ScreenManager;->getModePlusBottomBarHeight()I

    move-result v11

    .line 1632
    sget v12, Lcom/transsion/camera/R$dimen;->mode_tab_layout_left_right_margin:I

    invoke-virtual {v5, v12}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v12

    .line 1633
    sget v13, Lcom/transsion/camera/R$dimen;->mode_picker_horizontal_margin_left_right_hover_ui:I

    invoke-virtual {v5, v13}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v13

    .line 1634
    iget-object v14, v0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModePickerRoot:Landroid/view/ViewGroup;

    invoke-virtual {v14}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Landroid/widget/FrameLayout$LayoutParams;

    .line 1635
    invoke-virtual {v14, v3, v3, v3, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 1637
    iget v15, v14, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 1640
    iget-object v2, v0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModePickerContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 1641
    invoke-virtual {v2, v3, v3, v3, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 1642
    sget v3, Lcom/transsion/camera/R$dimen;->mode_selector_height:I

    invoke-virtual {v5, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    move/from16 p1, v15

    .line 1644
    iget-object v15, v0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeTabLayout:Lcom/transsion/camera/app/ui/widget/TabLayout;

    invoke-virtual {v15}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    check-cast v15, Landroid/widget/FrameLayout$LayoutParams;

    move/from16 v16, v11

    const/4 v11, 0x0

    .line 1645
    invoke-virtual {v15, v11, v11, v11, v11}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 1646
    iget-object v11, v0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeOrderProvider:Lcom/transsion/camera/app/mode/ModeOrderProvider;

    invoke-virtual {v11}, Lcom/transsion/camera/app/mode/ModeOrderProvider;->getConfig()Lcom/transsion/camera/app/mode/ModePickerConfig;

    move-result-object v11

    invoke-virtual {v11}, Lcom/transsion/camera/app/mode/ModePickerConfig;->modePickerStyleMore()Z

    move-result v11

    move/from16 v17, v11

    const/16 v11, 0x11

    if-eqz v17, :cond_9f

    .line 1647
    iput v11, v15, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 1648
    sget v11, Lcom/transsion/camera/R$dimen;->more_mode_picker_list_margin:I

    invoke-virtual {v5, v11}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v11

    iput v11, v15, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    iput v11, v15, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 1649
    iget-object v11, v0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeTabLayout:Lcom/transsion/camera/app/ui/widget/TabLayout;

    invoke-virtual {v11, v15}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_9f
    const/16 v11, 0x5a

    move-object/from16 v18, v5

    const/4 v5, 0x1

    if-ne v1, v5, :cond_ec

    if-eq v4, v11, :cond_d7

    const/16 v2, 0xb4

    if-eq v4, v2, :cond_ca

    const/16 v2, 0x10e

    if-eq v4, v2, :cond_bd

    .line 1678
    iput v6, v14, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 1679
    iput v3, v14, Landroid/widget/FrameLayout$LayoutParams;->height:I

    const/16 v2, 0x55

    .line 1680
    iput v2, v14, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 1681
    iput v7, v14, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 1682
    iput v9, v14, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    goto :goto_e3

    .line 1669
    :cond_bd
    iput v3, v14, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 1670
    iput v6, v14, Landroid/widget/FrameLayout$LayoutParams;->height:I

    const/16 v2, 0x53

    .line 1671
    iput v2, v14, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 1672
    iput v8, v14, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 1673
    iput v10, v14, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    goto :goto_e3

    .line 1662
    :cond_ca
    iput v6, v14, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 1663
    iput v3, v14, Landroid/widget/FrameLayout$LayoutParams;->height:I

    const/16 v2, 0x33

    .line 1664
    iput v2, v14, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 1665
    iput v7, v14, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 1666
    iput v9, v14, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto :goto_e3

    .line 1655
    :cond_d7
    iput v3, v14, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 1656
    iput v6, v14, Landroid/widget/FrameLayout$LayoutParams;->height:I

    const/16 v2, 0x35

    .line 1657
    iput v2, v14, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 1658
    iput v8, v14, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 1659
    iput v10, v14, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 1685
    :goto_e3
    iget-object v2, v0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModePickerRoot:Landroid/view/ViewGroup;

    invoke-virtual {v2, v14}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_e8
    :goto_e8
    move-object/from16 v3, v18

    goto/16 :goto_183

    :cond_ec
    const/4 v3, 0x4

    const/4 v6, 0x0

    if-ne v1, v3, :cond_11a

    const/4 v3, -0x1

    .line 1687
    iput v3, v14, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 1688
    iput v3, v14, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 1689
    iput v13, v2, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    const/16 v3, 0x15

    .line 1690
    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 1691
    iget-object v3, v0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModePickerContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    const/4 v7, 0x0

    invoke-virtual {v3, v11, v7}, Lcom/transsion/camera/app/ui/widget/RotateLayout;->setOrientation(IZ)V

    .line 1692
    iput v12, v15, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    iput v12, v15, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 1693
    iget-object v3, v0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeTabLayout:Lcom/transsion/camera/app/ui/widget/TabLayout;

    invoke-virtual {v3, v15}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1694
    iget-object v3, v0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModePickerRoot:Landroid/view/ViewGroup;

    invoke-virtual {v3, v14}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1695
    iget-object v3, v0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModePickerContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v3, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1696
    iput-boolean v5, v0, Lcom/transsion/camera/app/ui/ModePickerUI;->mScreenFormTypeChanged:Z

    .line 1697
    invoke-direct {v0, v6, v7}, Lcom/transsion/camera/app/ui/ModePickerUI;->updateModeTabLayout(Ljava/lang/String;Z)V

    goto :goto_e8

    :cond_11a
    const/4 v7, 0x0

    const/4 v3, 0x5

    if-ne v1, v3, :cond_149

    const/4 v3, -0x1

    .line 1699
    iput v3, v14, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 1700
    iput v3, v14, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 1701
    iput v13, v2, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    const/16 v3, 0x13

    .line 1702
    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 1703
    iget-object v3, v0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModePickerContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    const/16 v8, 0x10e

    invoke-virtual {v3, v8, v7}, Lcom/transsion/camera/app/ui/widget/RotateLayout;->setOrientation(IZ)V

    .line 1704
    iput v12, v15, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    iput v12, v15, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 1705
    iget-object v3, v0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeTabLayout:Lcom/transsion/camera/app/ui/widget/TabLayout;

    invoke-virtual {v3, v15}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1706
    iget-object v3, v0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModePickerRoot:Landroid/view/ViewGroup;

    invoke-virtual {v3, v14}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1707
    iget-object v3, v0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModePickerContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v3, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1708
    iput-boolean v5, v0, Lcom/transsion/camera/app/ui/ModePickerUI;->mScreenFormTypeChanged:Z

    .line 1709
    invoke-direct {v0, v6, v7}, Lcom/transsion/camera/app/ui/ModePickerUI;->updateModeTabLayout(Ljava/lang/String;Z)V

    goto :goto_e8

    :cond_149
    if-eqz v1, :cond_151

    const/4 v3, 0x2

    if-eq v1, v3, :cond_151

    const/4 v3, 0x3

    if-ne v1, v3, :cond_155

    :cond_151
    move-object/from16 v3, v18

    const/4 v7, -0x1

    goto :goto_187

    :cond_155
    const/4 v3, 0x7

    if-ne v1, v3, :cond_e8

    .line 1724
    sget v2, Lcom/transsion/camera/R$dimen;->mode_picker_width_flip:I

    move-object/from16 v3, v18

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v14, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 1725
    sget v2, Lcom/transsion/camera/R$dimen;->mode_picker_height_flip:I

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v14, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 1726
    sget v2, Lcom/transsion/camera/R$dimen;->mode_picker_left_margin_flip:I

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v14, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 1727
    sget v2, Lcom/transsion/camera/R$dimen;->mode_picker_bottom_margin_flip:I

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v14, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    const/16 v2, 0x53

    .line 1728
    iput v2, v14, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 1729
    iget-object v2, v0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModePickerRoot:Landroid/view/ViewGroup;

    invoke-virtual {v2, v14}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_183
    move/from16 v7, p1

    const/4 v9, 0x0

    goto :goto_1aa

    .line 1714
    :goto_187
    iput v7, v14, Landroid/widget/FrameLayout$LayoutParams;->width:I

    move/from16 v7, v16

    .line 1715
    iput v7, v14, Landroid/widget/FrameLayout$LayoutParams;->height:I

    const/16 v8, 0x51

    .line 1716
    iput v8, v14, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    const/16 v8, 0x31

    .line 1717
    iput v8, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 1718
    iget-object v8, v0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModePickerContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    const/4 v9, 0x0

    invoke-virtual {v8, v9, v9}, Lcom/transsion/camera/app/ui/widget/RotateLayout;->setOrientation(IZ)V

    .line 1719
    iget-object v8, v0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModePickerRoot:Landroid/view/ViewGroup;

    invoke-virtual {v8, v14}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1720
    iget-object v8, v0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModePickerContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v8, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1721
    iput-boolean v5, v0, Lcom/transsion/camera/app/ui/ModePickerUI;->mScreenFormTypeChanged:Z

    .line 1722
    invoke-direct {v0, v6, v9}, Lcom/transsion/camera/app/ui/ModePickerUI;->updateModeTabLayout(Ljava/lang/String;Z)V

    .line 1732
    :goto_1aa
    iget-object v2, v0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeSelector:Lcom/transsion/camera/app/ui/widget/VerticalModeSelector;

    if-eqz v2, :cond_243

    .line 1734
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 1735
    invoke-virtual {v2, v9, v9, v9, v9}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 1737
    iget v6, v0, Lcom/transsion/camera/app/ui/ModePickerUI;->mScreenFormType:I

    const/4 v8, 0x7

    if-ne v6, v8, :cond_1e1

    .line 1738
    sget v6, Lcom/transsion/camera/R$dimen;->mode_selector_width_for_flip:I

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, v2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 1739
    iget-object v6, v0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeSelector:Lcom/transsion/camera/app/ui/widget/VerticalModeSelector;

    sget v8, Lcom/transsion/camera/R$dimen;->mode_picker_item_height_flip:I

    .line 1740
    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    sget v9, Lcom/transsion/camera/R$dimen;->mode_picker_item_text_size_flip:I

    .line 1741
    invoke-virtual {v3, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    .line 1739
    invoke-virtual {v6, v8, v9}, Lcom/transsion/camera/app/ui/widget/VerticalModeSelector;->setItemSize(II)V

    .line 1742
    iget-object v6, v0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeSelector:Lcom/transsion/camera/app/ui/widget/VerticalModeSelector;

    sget v8, Lcom/transsion/camera/R$dimen;->mode_picker_item_fading_edge_length_flip:I

    .line 1743
    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    .line 1742
    invoke-virtual {v6, v8}, Lcom/transsion/camera/app/ui/widget/VerticalModeSelector;->setInsideFadingEdgeLength(I)V

    goto :goto_1fd

    .line 1745
    :cond_1e1
    iget-object v6, v0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeSelector:Lcom/transsion/camera/app/ui/widget/VerticalModeSelector;

    sget v8, Lcom/transsion/camera/R$dimen;->mode_picker_item_height_normal:I

    .line 1746
    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    sget v9, Lcom/transsion/camera/R$dimen;->mode_picker_item_text_size_normal:I

    .line 1747
    invoke-virtual {v3, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    .line 1745
    invoke-virtual {v6, v8, v9}, Lcom/transsion/camera/app/ui/widget/VerticalModeSelector;->setItemSize(II)V

    .line 1748
    iget-object v6, v0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeSelector:Lcom/transsion/camera/app/ui/widget/VerticalModeSelector;

    sget v8, Lcom/transsion/camera/R$dimen;->mode_picker_item_fading_edge_length_normal:I

    .line 1749
    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    .line 1748
    invoke-virtual {v6, v8}, Lcom/transsion/camera/app/ui/widget/VerticalModeSelector;->setInsideFadingEdgeLength(I)V

    :goto_1fd
    if-ne v1, v5, :cond_211

    const/16 v5, 0x11

    .line 1753
    iput v5, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 1754
    iget-object v1, v0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeSelector:Lcom/transsion/camera/app/ui/widget/VerticalModeSelector;

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1755
    iget-object v1, v0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeSelector:Lcom/transsion/camera/app/ui/widget/VerticalModeSelector;

    rsub-int v2, v4, 0x168

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setRotation(F)V

    goto :goto_243

    :cond_211
    const/4 v8, 0x7

    if-ne v1, v8, :cond_243

    .line 1757
    sget v1, Lcom/transsion/camera/R$dimen;->mode_picker_selector_height_flip:I

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    const/16 v5, 0x11

    .line 1758
    iput v5, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    if-eq v4, v11, :cond_237

    const/16 v8, 0x10e

    if-eq v4, v8, :cond_22f

    .line 1769
    iget-object v1, v0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeSelector:Lcom/transsion/camera/app/ui/widget/VerticalModeSelector;

    rsub-int v3, v4, 0x168

    int-to-float v3, v3

    invoke-virtual {v1, v3}, Landroid/view/View;->setRotation(F)V

    goto :goto_23e

    .line 1764
    :cond_22f
    iget-object v1, v0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeSelector:Lcom/transsion/camera/app/ui/widget/VerticalModeSelector;

    sub-int/2addr v4, v11

    int-to-float v3, v4

    invoke-virtual {v1, v3}, Landroid/view/View;->setRotation(F)V

    goto :goto_23e

    .line 1761
    :cond_237
    iget-object v1, v0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeSelector:Lcom/transsion/camera/app/ui/widget/VerticalModeSelector;

    add-int/2addr v4, v11

    int-to-float v3, v4

    invoke-virtual {v1, v3}, Landroid/view/View;->setRotation(F)V

    .line 1772
    :goto_23e
    iget-object v1, v0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeSelector:Lcom/transsion/camera/app/ui/widget/VerticalModeSelector;

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1776
    :cond_243
    :goto_243
    iget-object v1, v0, Lcom/transsion/camera/app/ui/ModePickerUI;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/transsion/camera/utils/FeatureSupport;->isOnlySupportTBHoverUI(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_274

    if-eqz p3, :cond_274

    move/from16 v1, p1

    .line 1777
    filled-new-array {v1, v7}, [I

    move-result-object v1

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, v0, Lcom/transsion/camera/app/ui/ModePickerUI;->mHoverTranslateAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x190

    .line 1778
    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1779
    iget-object v1, v0, Lcom/transsion/camera/app/ui/ModePickerUI;->mHoverTranslateAnimator:Landroid/animation/ValueAnimator;

    iget-object v2, v0, Lcom/transsion/camera/app/ui/ModePickerUI;->mPathInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1780
    iget-object v1, v0, Lcom/transsion/camera/app/ui/ModePickerUI;->mHoverTranslateAnimator:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/transsion/camera/app/ui/ModePickerUI$$ExternalSyntheticLambda8;

    invoke-direct {v2, v0, v14}, Lcom/transsion/camera/app/ui/ModePickerUI$$ExternalSyntheticLambda8;-><init>(Lcom/transsion/camera/app/ui/ModePickerUI;Landroid/widget/FrameLayout$LayoutParams;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1784
    iget-object v0, v0, Lcom/transsion/camera/app/ui/ModePickerUI;->mHoverTranslateAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    :cond_274
    return-void

    .line 1618
    :cond_275
    :goto_275
    sget-object v0, Lcom/transsion/camera/app/ui/ModePickerUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string/jumbo v1, "updateLayoutParams mModePickerRoot, mModeTabLayout is null."

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private updateModeArrowView(Z)V
    .registers 2

    .line 2942
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeArrow:Landroid/widget/ImageView;

    if-nez p0, :cond_5

    return-void

    :cond_5
    if-eqz p1, :cond_d

    .line 2946
    sget p1, Lcom/transsion/camera/R$drawable;->ic_panel_up_arrow_black:I

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void

    .line 2948
    :cond_d
    sget p1, Lcom/transsion/camera/R$drawable;->ic_panel_up_arrow:I

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method private updateModePickerRotation(I)V
    .registers 3

    .line 662
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 663
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeTabLayout:Lcom/transsion/camera/app/ui/widget/TabLayout;

    if-eqz v0, :cond_d

    .line 664
    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/ui/widget/TabLayout;->updateRotation(I)V

    .line 666
    :cond_d
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mCurrentModeUI:Lcom/transsion/camera/app/ui/ModePickerUI$CurrentModeUI;

    if-eqz p0, :cond_14

    .line 667
    invoke-static {p0, p1}, Lcom/transsion/camera/app/ui/ModePickerUI$CurrentModeUI;->-$$Nest$mupdateRotation(Lcom/transsion/camera/app/ui/ModePickerUI$CurrentModeUI;I)V

    :cond_14
    return-void
.end method

.method private updateModeSelectorLayout()V
    .registers 12

    .line 2103
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/ModePickerUI;->cannotUpdateModeTabLayout()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 2106
    :cond_7
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeSelector:Lcom/transsion/camera/app/ui/widget/VerticalModeSelector;

    if-nez v0, :cond_14

    .line 2107
    sget-object p0, Lcom/transsion/camera/app/ui/ModePickerUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string/jumbo v0, "updateModeSelectorLayout mModeSelector is null."

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 2110
    :cond_14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2111
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2114
    iget-object v2, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeInformation:Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;

    invoke-static {v2}, Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;->-$$Nest$mgetAllMode(Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;)Ljava/util/List;

    move-result-object v2

    .line 2115
    invoke-interface {v2}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lcom/transsion/camera/app/ui/ModePickerUI$$ExternalSyntheticLambda11;

    invoke-direct {v3}, Lcom/transsion/camera/app/ui/ModePickerUI$$ExternalSyntheticLambda11;-><init>()V

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v2

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Ljava/util/List;

    .line 2116
    iget-object v2, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeInformation:Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;

    invoke-static {v2}, Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;->-$$Nest$fgetmIsSupportMoreMode(Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;)Z

    move-result v2

    if-eqz v2, :cond_81

    .line 2117
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeOrderProvider:Lcom/transsion/camera/app/mode/ModeOrderProvider;

    invoke-virtual {v0}, Lcom/transsion/camera/app/mode/ModeOrderProvider;->getTabModeList()Ljava/util/List;

    move-result-object v0

    .line 2118
    iget-object v1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeOrderProvider:Lcom/transsion/camera/app/mode/ModeOrderProvider;

    invoke-virtual {v1}, Lcom/transsion/camera/app/mode/ModeOrderProvider;->getPanelModeList()Ljava/util/List;

    move-result-object v1

    .line 2119
    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lcom/transsion/camera/app/ui/ModePickerUI$$ExternalSyntheticLambda11;

    invoke-direct {v3}, Lcom/transsion/camera/app/ui/ModePickerUI$$ExternalSyntheticLambda11;-><init>()V

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v2

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 2120
    invoke-interface {v1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v3

    new-instance v4, Lcom/transsion/camera/app/ui/ModePickerUI$$ExternalSyntheticLambda11;

    invoke-direct {v4}, Lcom/transsion/camera/app/ui/ModePickerUI$$ExternalSyntheticLambda11;-><init>()V

    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v3

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    move-object v7, v2

    move-object v8, v3

    goto :goto_84

    :cond_81
    const/4 v2, 0x0

    move-object v7, v2

    move-object v8, v7

    .line 2122
    :goto_84
    iget-object v3, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeSelector:Lcom/transsion/camera/app/ui/widget/VerticalModeSelector;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeInformation:Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;

    invoke-static {v2}, Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;->-$$Nest$fgetmIsSupportMoreMode(Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;)Z

    move-result v4

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/util/List;

    const/4 v5, 0x0

    aput-object v0, v2, v5

    const/4 v0, 0x1

    aput-object v1, v2, v0

    invoke-static {v2}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/transsion/camera/app/common/ai/AIRequestHolder$$ExternalSyntheticLambda10;

    invoke-direct {v1}, Lcom/transsion/camera/app/common/ai/AIRequestHolder$$ExternalSyntheticLambda10;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->flatMap(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Ljava/util/List;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeInformation:Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;

    .line 2123
    invoke-static {p0}, Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;->-$$Nest$mgetDefaultModeTitle(Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x6

    .line 2122
    invoke-virtual/range {v3 .. v10}, Lcom/transsion/camera/app/ui/widget/VerticalModeSelector;->setItemList(ZLjava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/String;I)V

    return-void
.end method

.method private updateModeTabLayout(Ljava/lang/String;Z)V
    .registers 13

    .line 2061
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/ModePickerUI;->cannotUpdateModeTabLayout()Z

    move-result v0

    if-eqz v0, :cond_8

    goto/16 :goto_d2

    .line 2064
    :cond_8
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeTabLayout:Lcom/transsion/camera/app/ui/widget/TabLayout;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/widget/TabLayout;->removeAllTabs()V

    .line 2065
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeInformation:Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;->-$$Nest$mgetTabLayoutMode(Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;)Ljava/util/List;

    move-result-object v0

    .line 2068
    iget-object v1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/transsion/camera/utils/CameraUtil;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_21

    .line 2070
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mIsFocusable:Z

    move v1, v2

    goto :goto_22

    :cond_21
    move v1, v3

    .line 2072
    :goto_22
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move v4, v3

    :goto_27
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_b4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/transsion/camera/app/common/FeatureResource;

    .line 2073
    iget-object v6, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeTabLayout:Lcom/transsion/camera/app/ui/widget/TabLayout;

    invoke-virtual {v6, v1}, Lcom/transsion/camera/app/ui/widget/TabLayout;->newTab(Z)Lcom/transsion/camera/app/ui/widget/TabLayout$Tab;

    move-result-object v6

    .line 2074
    iget-object v7, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mSellingPointItems:Ljava/util/List;

    iget-object v8, v5, Lcom/transsion/camera/app/common/FeatureResource;->mFeatureName:Ljava/lang/String;

    invoke-interface {v7, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4f

    iget-object v7, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mContext:Landroid/content/Context;

    iget-object v8, v5, Lcom/transsion/camera/app/common/FeatureResource;->mFeatureName:Ljava/lang/String;

    .line 2075
    invoke-static {v7, v8}, Lcom/transsion/camera/app/ui/mode/ModeUIItem;->getVal(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4f

    move v7, v2

    goto :goto_50

    :cond_4f
    move v7, v3

    .line 2076
    :goto_50
    iget-object v8, v5, Lcom/transsion/camera/app/common/FeatureResource;->mFeatureTitle:Ljava/lang/String;

    invoke-virtual {v6, v8}, Lcom/transsion/camera/app/ui/widget/TabLayout$Tab;->setTextWithoutUpdate(Ljava/lang/CharSequence;)Lcom/transsion/camera/app/ui/widget/TabLayout$Tab;

    move-result-object v8

    const-string v9, "AbstractModePickerUI"

    .line 2077
    invoke-virtual {v8, v9}, Lcom/transsion/camera/app/ui/widget/TabLayout$Tab;->setContentDescriptionWithoutUpdate(Ljava/lang/CharSequence;)Lcom/transsion/camera/app/ui/widget/TabLayout$Tab;

    move-result-object v8

    .line 2078
    invoke-virtual {v8, v7}, Lcom/transsion/camera/app/ui/widget/TabLayout$Tab;->setShowPointIconWithoutUpdate(Z)Lcom/transsion/camera/app/ui/widget/TabLayout$Tab;

    move-result-object v7

    iget-object v8, v5, Lcom/transsion/camera/app/common/FeatureResource;->mFeatureName:Ljava/lang/String;

    .line 2079
    invoke-virtual {v7, v8}, Lcom/transsion/camera/app/ui/widget/TabLayout$Tab;->setFeatureNameWithoutUpdate(Ljava/lang/String;)Lcom/transsion/camera/app/ui/widget/TabLayout$Tab;

    move-result-object v7

    .line 2080
    invoke-virtual {v7}, Lcom/transsion/camera/app/ui/widget/TabLayout$Tab;->updateView()V

    .line 2082
    iget-object v7, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeInformation:Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;

    invoke-static {v7, v5, p2}, Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;->-$$Nest$mdefaultSelectedMode(Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;Lcom/transsion/camera/app/common/FeatureResource;Z)Z

    move-result v5

    .line 2083
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/ModePickerUI;->isSupportUI5MoreModeStyle()Z

    move-result v7

    if-eqz v7, :cond_7e

    iget-object v7, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mCurrentModeName:Ljava/lang/String;

    invoke-virtual {p0, v7}, Lcom/transsion/camera/app/ui/ModePickerUI;->isTabLayoutMode(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_7e

    move v5, v3

    :cond_7e
    if-nez v4, :cond_85

    if-eqz v5, :cond_83

    goto :goto_85

    :cond_83
    move v4, v3

    goto :goto_86

    :cond_85
    :goto_85
    move v4, v2

    .line 2087
    :goto_86
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->getInstance()Lcom/transsion/camera/app/common/CommonConfigUtil;

    move-result-object v7

    iget-boolean v7, v7, Lcom/transsion/camera/app/common/CommonConfigUtil;->mEnableDVMode:Z

    if-eqz v7, :cond_a6

    iget v7, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mScreenFormType:I

    const/4 v8, 0x7

    if-ne v7, v8, :cond_a6

    .line 2088
    iget-object v7, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeTabLayout:Lcom/transsion/camera/app/ui/widget/TabLayout;

    if-eqz v5, :cond_a1

    iget-object v5, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeInformation:Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;

    invoke-static {v5}, Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;->-$$Nest$fgetmCurrentIsTabLayoutMode(Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;)Z

    move-result v5

    if-eqz v5, :cond_a1

    move v5, v2

    goto :goto_a2

    :cond_a1
    move v5, v3

    :goto_a2
    invoke-virtual {v7, v6, v5}, Lcom/transsion/camera/app/ui/widget/TabLayout;->addTab(Lcom/transsion/camera/app/ui/widget/TabLayout$Tab;Z)V

    goto :goto_ab

    .line 2090
    :cond_a6
    iget-object v7, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeTabLayout:Lcom/transsion/camera/app/ui/widget/TabLayout;

    invoke-virtual {v7, v6, v5}, Lcom/transsion/camera/app/ui/widget/TabLayout;->addTab(Lcom/transsion/camera/app/ui/widget/TabLayout$Tab;Z)V

    .line 2092
    :goto_ab
    invoke-virtual {v6}, Lcom/transsion/camera/app/ui/widget/TabLayout$Tab;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v6, v5}, Lcom/transsion/camera/app/ui/widget/TabLayout$Tab;->setContentDescription(Ljava/lang/CharSequence;)Lcom/transsion/camera/app/ui/widget/TabLayout$Tab;

    goto/16 :goto_27

    .line 2094
    :cond_b4
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p2

    iget-boolean p2, p2, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportUI5MoreModeStyle:Z

    if-eqz p2, :cond_c4

    iget-object p2, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mCurrentModeName:Ljava/lang/String;

    invoke-virtual {p0, p2}, Lcom/transsion/camera/app/ui/ModePickerUI;->isTabLayoutMode(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_c9

    .line 2095
    :cond_c4
    iget-object p2, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeTabLayout:Lcom/transsion/camera/app/ui/widget/TabLayout;

    invoke-virtual {p2}, Lcom/transsion/camera/app/ui/widget/TabLayout;->updateHeadFootPadding()V

    :cond_c9
    if-eqz p1, :cond_d2

    if-nez v4, :cond_d2

    .line 2098
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeInformation:Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;

    invoke-static {p0, p1}, Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;->-$$Nest$mupdateCurrentMode(Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;Ljava/lang/String;)V

    :cond_d2
    :goto_d2
    return-void
.end method

.method private updateMoreCancelRootParams()V
    .registers 5

    .line 1893
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeTabLayout:Lcom/transsion/camera/app/ui/widget/TabLayout;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/widget/TabLayout;->getMoreTabView()Lcom/transsion/camera/app/ui/widget/TabLayout$TabView;

    move-result-object v0

    if-nez v0, :cond_9

    return-void

    :cond_9
    const/4 v0, 0x2

    .line 1896
    new-array v0, v0, [I

    .line 1897
    iget-object v1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeTabLayout:Lcom/transsion/camera/app/ui/widget/TabLayout;

    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/widget/TabLayout;->getMoreTabView()Lcom/transsion/camera/app/ui/widget/TabLayout$TabView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->getLocationInWindow([I)V

    .line 1898
    iget-object v1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mMoreModeCancelRoot:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, 0x0

    .line 1899
    aget v0, v0, v2

    iget-object v2, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeTabLayout:Lcom/transsion/camera/app/ui/widget/TabLayout;

    invoke-virtual {v2}, Lcom/transsion/camera/app/ui/widget/TabLayout;->getMoreTabView()Lcom/transsion/camera/app/ui/widget/TabLayout$TabView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    add-int/2addr v0, v2

    iget-object v2, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeTabLayout:Lcom/transsion/camera/app/ui/widget/TabLayout;

    .line 1900
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/16 v3, 0xc

    invoke-static {v2, v3}, Lcom/transsion/camera/utils/UIUtils;->dp2Px(Landroid/content/res/Resources;I)I

    move-result v2

    sub-int/2addr v0, v2

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 1901
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mMoreModeCancelRoot:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private updateMoreCancelRootState()V
    .registers 3

    .line 1884
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mCurrentModeName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/ModePickerUI;->isTabLayoutMode(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_14

    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mMainHandler:Landroid/os/Handler;

    if-eqz v0, :cond_14

    .line 1885
    new-instance v1, Lcom/transsion/camera/app/ui/ModePickerUI$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/ui/ModePickerUI$$ExternalSyntheticLambda4;-><init>(Lcom/transsion/camera/app/ui/ModePickerUI;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1889
    :cond_14
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/ModePickerUI;->updateMoreCancelRootParams()V

    return-void
.end method

.method private updateMoreModeGuideLeftRootLocation()V
    .registers 6

    const/4 v0, 0x2

    .line 880
    new-array v0, v0, [I

    .line 881
    iget-object v1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeTabLayout:Lcom/transsion/camera/app/ui/widget/TabLayout;

    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/widget/TabLayout;->getMoreTabView()Lcom/transsion/camera/app/ui/widget/TabLayout$TabView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->getLocationInWindow([I)V

    .line 882
    iget-object v1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mMoreModeGuideLeftRoot:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 883
    iget v2, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mScreenWidth:I

    const/4 v3, 0x0

    aget v0, v0, v3

    sub-int/2addr v2, v0

    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeTabLayout:Lcom/transsion/camera/app/ui/widget/TabLayout;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/widget/TabLayout;->getMoreTabView()Lcom/transsion/camera/app/ui/widget/TabLayout$TabView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    iget-object v3, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeTabLayout:Lcom/transsion/camera/app/ui/widget/TabLayout;

    .line 884
    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/16 v4, 0xc

    invoke-static {v3, v4}, Lcom/transsion/camera/utils/UIUtils;->dp2Px(Landroid/content/res/Resources;I)I

    move-result v3

    sub-int/2addr v0, v3

    sub-int/2addr v2, v0

    iget v0, v1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    sub-int/2addr v2, v0

    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mMoreModeGuideRightRoot:Landroid/view/View;

    .line 886
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    sub-int/2addr v2, v0

    .line 887
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mMoreModeGuideLeftRoot:Landroid/view/View;

    neg-int v0, v2

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 888
    invoke-static {}, Lcom/transsion/camera/utils/MultiTouchManager;->resetState()V

    return-void
.end method

.method private updateMoreModeGuideUI(Ljava/lang/String;)V
    .registers 3

    .line 1905
    const-string v0, "com.transsion.camera.feature.mode.more.MoreModeEntry"

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_c

    .line 1906
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/ModePickerUI;->enterMoreModeGuideAnimation()V

    return-void

    .line 1908
    :cond_c
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/ModePickerUI;->exitMoreModeGuideAnimation()V

    return-void
.end method

.method private updateMoreModeGuideView(Z)V
    .registers 2

    .line 2931
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mMoreModeRightGuide:Landroid/widget/ImageView;

    if-nez p0, :cond_5

    return-void

    :cond_5
    if-eqz p1, :cond_d

    .line 2935
    sget p1, Lcom/transsion/camera/R$drawable;->ic_more_mode_guide_right_black_icon:I

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void

    .line 2937
    :cond_d
    sget p1, Lcom/transsion/camera/R$drawable;->ic_more_mode_guide_right_icon:I

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method private updateScrollHotArea()V
    .registers 10

    .line 1089
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v1, 0x4

    .line 1090
    new-array v2, v1, [F

    .line 1091
    iget-object v3, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {v3}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenFormType()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x1

    if-ne v3, v8, :cond_7a

    .line 1092
    iget v1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mOrientation:I

    const/16 v3, 0x5a

    if-eq v1, v3, :cond_4d

    const/16 v3, 0x10e

    if-eq v1, v3, :cond_4d

    .line 1103
    sget v1, Lcom/transsion/camera/R$dimen;->mode_switch_scroll_hot_area_margin:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    aput v1, v2, v5

    .line 1104
    iget-object v1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenWidth()I

    move-result v1

    sget v3, Lcom/transsion/camera/R$dimen;->mode_switch_scroll_hot_area_margin:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sub-int/2addr v1, v0

    int-to-float v0, v1

    aput v0, v2, v7

    .line 1105
    aput v4, v2, v8

    .line 1106
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenHeight()I

    move-result v0

    iget-object v1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/ScreenManager;->getNavigationHeight()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    aput v0, v2, v6

    goto/16 :goto_15c

    .line 1095
    :cond_4d
    aput v4, v2, v5

    .line 1096
    iget-object v1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenWidth()I

    move-result v1

    iget-object v3, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {v3}, Lcom/transsion/camera/app/ui/ScreenManager;->getNavigationHeight()I

    move-result v3

    sub-int/2addr v1, v3

    int-to-float v1, v1

    aput v1, v2, v7

    .line 1097
    sget v1, Lcom/transsion/camera/R$dimen;->mode_switch_scroll_hot_area_margin:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    aput v1, v2, v8

    .line 1098
    iget-object v1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenHeight()I

    move-result v1

    sget v3, Lcom/transsion/camera/R$dimen;->mode_switch_scroll_hot_area_margin:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sub-int/2addr v1, v0

    int-to-float v0, v1

    aput v0, v2, v6

    goto/16 :goto_15c

    .line 1109
    :cond_7a
    iget-object v3, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {v3}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenFormType()I

    move-result v3

    if-ne v3, v7, :cond_c5

    .line 1110
    iget-object v1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/ScreenManager;->getColumnPreviewStartMargin()I

    move-result v1

    int-to-float v1, v1

    aput v1, v2, v5

    .line 1111
    iget-object v1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/ScreenManager;->getColumnPreviewStartMargin()I

    move-result v1

    iget-object v3, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {v3}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenWidth()I

    move-result v3

    add-int/2addr v1, v3

    int-to-float v1, v1

    aput v1, v2, v7

    .line 1112
    iget-object v1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/ScreenManager;->getTopBarHeight()I

    move-result v1

    int-to-float v1, v1

    aput v1, v2, v8

    .line 1113
    iget-object v1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenHeight()I

    move-result v1

    iget-object v3, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {v3}, Lcom/transsion/camera/app/ui/ScreenManager;->getBottomHeight()I

    move-result v3

    sub-int/2addr v1, v3

    iget-object v3, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    .line 1114
    invoke-virtual {v3}, Lcom/transsion/camera/app/ui/ScreenManager;->getBottomHeight()I

    move-result v3

    sget v4, Lcom/transsion/camera/R$dimen;->shutter_button_size:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sub-int/2addr v3, v0

    div-int/2addr v3, v7

    add-int/2addr v1, v3

    int-to-float v0, v1

    aput v0, v2, v6

    goto/16 :goto_15c

    .line 1115
    :cond_c5
    iget-object v3, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {v3}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenFormType()I

    move-result v3

    if-ne v3, v1, :cond_f2

    .line 1116
    sget v1, Lcom/transsion/camera/R$dimen;->mode_switch_scroll_hot_area_margin:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    aput v0, v2, v5

    .line 1117
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenWidth()I

    move-result v0

    int-to-float v0, v0

    aput v0, v2, v7

    .line 1118
    aput v4, v2, v8

    .line 1119
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenHeight()I

    move-result v0

    iget-object v1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/ScreenManager;->getNavigationHeight()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    aput v0, v2, v6

    goto :goto_15c

    .line 1120
    :cond_f2
    iget-object v1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenFormType()I

    move-result v1

    const/4 v3, 0x5

    if-ne v1, v3, :cond_119

    .line 1121
    aput v4, v2, v5

    .line 1122
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenWidth()I

    move-result v0

    int-to-float v0, v0

    aput v0, v2, v7

    .line 1123
    aput v4, v2, v8

    .line 1124
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenHeight()I

    move-result v0

    iget-object v1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/ScreenManager;->getNavigationHeight()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    aput v0, v2, v6

    goto :goto_15c

    .line 1125
    :cond_119
    iget-object v1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenFormType()I

    move-result v1

    if-eqz v1, :cond_129

    iget-object v1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    .line 1126
    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenFormType()I

    move-result v1

    if-ne v1, v6, :cond_15c

    .line 1127
    :cond_129
    aput v4, v2, v5

    .line 1128
    iget-object v1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenWidth()I

    move-result v1

    int-to-float v1, v1

    aput v1, v2, v7

    .line 1129
    iget-object v1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/ScreenManager;->getTopBarHeight()I

    move-result v1

    int-to-float v1, v1

    aput v1, v2, v8

    .line 1130
    iget-object v1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenHeight()I

    move-result v1

    iget-object v3, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {v3}, Lcom/transsion/camera/app/ui/ScreenManager;->getBottomHeight()I

    move-result v3

    sub-int/2addr v1, v3

    iget-object v3, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    .line 1131
    invoke-virtual {v3}, Lcom/transsion/camera/app/ui/ScreenManager;->getBottomHeight()I

    move-result v3

    sget v4, Lcom/transsion/camera/R$dimen;->shutter_button_size:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sub-int/2addr v3, v0

    div-int/2addr v3, v7

    add-int/2addr v1, v3

    int-to-float v0, v1

    aput v0, v2, v6

    .line 1133
    :cond_15c
    :goto_15c
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeTabLayout:Lcom/transsion/camera/app/ui/widget/TabLayout;

    invoke-virtual {p0, v2}, Lcom/transsion/camera/app/ui/widget/TabLayout;->updateScrollHotArea([F)V

    return-void
.end method

.method private updateSpecifiedMode(Z)V
    .registers 3

    .line 897
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeTabLayout:Lcom/transsion/camera/app/ui/widget/TabLayout;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/widget/TabLayout;->getMoreTabView()Lcom/transsion/camera/app/ui/widget/TabLayout$TabView;

    move-result-object p0

    if-eqz p0, :cond_c

    const/4 v0, 0x1

    .line 899
    invoke-virtual {p0, v0, p1}, Lcom/transsion/camera/app/ui/widget/TabLayout$TabView;->moreModeIconClick(ZZ)V

    :cond_c
    return-void
.end method


# virtual methods
.method public abortShowOrHideModePickerRootUI()V
    .registers 2

    const/4 v0, 0x0

    .line 2224
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/ModePickerUI;->abortShowOrHideModePickerRootUI(Z)V

    return-void
.end method

.method public abortShowOrHideModePickerRootUI(Z)V
    .registers 5

    .line 2228
    sget-object v0, Lcom/transsion/camera/app/ui/ModePickerUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "abortShowOrHideModePickerRootUI: isCameraSwitch = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-eqz p1, :cond_19

    return-void

    .line 2232
    :cond_19
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p1

    iget-boolean p1, p1, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportUI5MoreModeStyle:Z

    const/4 v0, 0x0

    if-nez p1, :cond_2a

    .line 2233
    iget-object p1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModePickerRootAnimatorSet:Landroid/animation/AnimatorSet;

    new-array v0, v0, [Ljava/lang/Runnable;

    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/app/ui/ModePickerUI;->abortAnimator(Landroid/animation/Animator;[Ljava/lang/Runnable;)V

    return-void

    .line 2235
    :cond_2a
    iget-object p1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModePickerRootAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v1, Lcom/transsion/camera/app/ui/ModePickerUI$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/ui/ModePickerUI$$ExternalSyntheticLambda6;-><init>(Lcom/transsion/camera/app/ui/ModePickerUI;)V

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Runnable;

    aput-object v1, v2, v0

    invoke-direct {p0, p1, v2}, Lcom/transsion/camera/app/ui/ModePickerUI;->abortAnimator(Landroid/animation/Animator;[Ljava/lang/Runnable;)V

    .line 2240
    iget-object p1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModePickerAnimatorSet:Landroid/animation/AnimatorSet;

    new-array v0, v0, [Ljava/lang/Runnable;

    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/app/ui/ModePickerUI;->abortAnimator(Landroid/animation/Animator;[Ljava/lang/Runnable;)V

    return-void
.end method

.method public canScrollToNext()Z
    .registers 2

    .line 1011
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/ModePickerUI;->isSupportUI5MoreModeStyle()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1012
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeTabLayout:Lcom/transsion/camera/app/ui/widget/TabLayout;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/widget/TabLayout;->canScrollToNext()Z

    move-result p0

    return p0

    .line 1014
    :cond_d
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeInformation:Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;->-$$Nest$mcurrentIsTabLayoutMode(Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 1015
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeTabLayout:Lcom/transsion/camera/app/ui/widget/TabLayout;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/widget/TabLayout;->canScrollToNext()Z

    move-result p0

    return p0

    :cond_1c
    const/4 p0, 0x0

    return p0
.end method

.method public canScrollToPrevious()Z
    .registers 2

    .line 1023
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/ModePickerUI;->isSupportUI5MoreModeStyle()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1024
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeTabLayout:Lcom/transsion/camera/app/ui/widget/TabLayout;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/widget/TabLayout;->canScrollToPrevious()Z

    move-result p0

    return p0

    .line 1026
    :cond_d
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeInformation:Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;->-$$Nest$mcurrentIsTabLayoutMode(Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 1027
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeTabLayout:Lcom/transsion/camera/app/ui/widget/TabLayout;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/widget/TabLayout;->canScrollToPrevious()Z

    move-result p0

    return p0

    :cond_1c
    const/4 p0, 0x0

    return p0
.end method

.method public canScrolling()Z
    .registers 2

    .line 1035
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/ModePickerUI;->isSupportUI5MoreModeStyle()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1036
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeTabLayout:Lcom/transsion/camera/app/ui/widget/TabLayout;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/widget/TabLayout;->canScrolling()Z

    move-result p0

    return p0

    .line 1038
    :cond_d
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeInformation:Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;->-$$Nest$mcurrentIsTabLayoutMode(Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 1039
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeTabLayout:Lcom/transsion/camera/app/ui/widget/TabLayout;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/widget/TabLayout;->canScrolling()Z

    move-result p0

    return p0

    :cond_1c
    const/4 p0, 0x0

    return p0
.end method

.method public cancelAnimation()V
    .registers 2

    .line 1421
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModePickerAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1422
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModePickerAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_f
    return-void
.end method

.method public currentIsIabLayoutMode()Z
    .registers 1

    .line 1227
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeInformation:Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;->-$$Nest$mcurrentIsTabLayoutMode(Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;)Z

    move-result p0

    return p0
.end method

.method public down(FF)V
    .registers 3

    .line 915
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeTabLayout:Lcom/transsion/camera/app/ui/widget/TabLayout;

    if-eqz p0, :cond_7

    .line 916
    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/ui/widget/TabLayout;->down(FF)V

    :cond_7
    return-void
.end method

.method public exitModeOnMoreTab()V
    .registers 2

    .line 2526
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mMoreModeCancelRoot:Landroid/view/View;

    if-eqz v0, :cond_7

    .line 2527
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/ModePickerUI;->switchDefaultMode(Landroid/view/View;)V

    :cond_7
    return-void
.end method

.method protected getTabAnimationDuration()I
    .registers 1

    const/16 p0, 0x96

    return p0
.end method

.method protected getTabAnimationInterpolator()Landroid/view/animation/Interpolator;
    .registers 2

    .line 2913
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mContext:Landroid/content/Context;

    sget v0, Lcom/transsion/camera/R$anim;->tab_animation_interpolator:I

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object p0

    return-object p0
.end method

.method public hideModePicker()V
    .registers 12

    .line 1388
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/ModePickerUI;->cancelAnimation()V

    .line 1389
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModePickerLayout:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_d5

    const/4 v1, 0x2

    .line 1390
    new-array v2, v1, [F

    fill-array-data v2, :array_d6

    const-string v3, "alpha"

    invoke-static {v0, v3, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModePickerAlphaAnimation:Landroid/animation/ObjectAnimator;

    .line 1391
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModePickerLayout:Landroid/widget/FrameLayout;

    invoke-direct {p0}, Lcom/transsion/camera/app/ui/ModePickerUI;->getTranslateDistance()I

    move-result v2

    int-to-float v2, v2

    new-array v4, v1, [F

    const/4 v5, 0x0

    const/4 v6, 0x0

    aput v6, v4, v5

    const/4 v7, 0x1

    aput v2, v4, v7

    const-string/jumbo v2, "translationY"

    invoke-static {v0, v2, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModePickerTranslateAnimation:Landroid/animation/ObjectAnimator;

    .line 1392
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mMoreModeCancelRoot:Landroid/view/View;

    new-array v4, v1, [F

    fill-array-data v4, :array_de

    invoke-static {v0, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mMoreModeCancelAlphaAnimation:Landroid/animation/ObjectAnimator;

    .line 1393
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mMoreModeCancelRoot:Landroid/view/View;

    invoke-direct {p0}, Lcom/transsion/camera/app/ui/ModePickerUI;->getTranslateDistance()I

    move-result v4

    int-to-float v4, v4

    new-array v8, v1, [F

    aput v6, v8, v5

    aput v4, v8, v7

    invoke-static {v0, v2, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mMoreModeCancelTranslateAnimation:Landroid/animation/ObjectAnimator;

    .line 1394
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mMoreModeGuideRightRoot:Landroid/view/View;

    new-array v4, v1, [F

    fill-array-data v4, :array_e6

    invoke-static {v0, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mMoreModeGuideAlphaAnimation:Landroid/animation/ObjectAnimator;

    .line 1395
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mMoreModeGuideRightRoot:Landroid/view/View;

    invoke-direct {p0}, Lcom/transsion/camera/app/ui/ModePickerUI;->getTranslateDistance()I

    move-result v3

    int-to-float v3, v3

    new-array v4, v1, [F

    aput v6, v4, v5

    aput v3, v4, v7

    invoke-static {v0, v2, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeModeGuideTranslateAnimation:Landroid/animation/ObjectAnimator;

    .line 1396
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModePickerAnimatorSet:Landroid/animation/AnimatorSet;

    .line 1397
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/ModePickerUI;->isSupportUI5MoreModeStyle()Z

    move-result v0

    if-eqz v0, :cond_a7

    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mCurrentModeName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/ModePickerUI;->isTabLayoutMode(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a7

    .line 1398
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModePickerAnimatorSet:Landroid/animation/AnimatorSet;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModePickerAlphaAnimation:Landroid/animation/ObjectAnimator;

    iget-object v3, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModePickerTranslateAnimation:Landroid/animation/ObjectAnimator;

    iget-object v4, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mMoreModeCancelAlphaAnimation:Landroid/animation/ObjectAnimator;

    iget-object v6, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mMoreModeCancelTranslateAnimation:Landroid/animation/ObjectAnimator;

    iget-object v8, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mMoreModeGuideAlphaAnimation:Landroid/animation/ObjectAnimator;

    iget-object v9, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeModeGuideTranslateAnimation:Landroid/animation/ObjectAnimator;

    const/4 v10, 0x6

    new-array v10, v10, [Landroid/animation/Animator;

    aput-object v2, v10, v5

    aput-object v3, v10, v7

    aput-object v4, v10, v1

    const/4 v1, 0x3

    aput-object v6, v10, v1

    const/4 v1, 0x4

    aput-object v8, v10, v1

    const/4 v1, 0x5

    aput-object v9, v10, v1

    invoke-virtual {v0, v10}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto :goto_b6

    .line 1402
    :cond_a7
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModePickerAnimatorSet:Landroid/animation/AnimatorSet;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModePickerAlphaAnimation:Landroid/animation/ObjectAnimator;

    iget-object v3, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModePickerTranslateAnimation:Landroid/animation/ObjectAnimator;

    new-array v1, v1, [Landroid/animation/Animator;

    aput-object v2, v1, v5

    aput-object v3, v1, v7

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1404
    :goto_b6
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModePickerAnimatorSet:Landroid/animation/AnimatorSet;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mPathInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1405
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModePickerAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v1, Lcom/transsion/camera/app/ui/ModePickerUI$9;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/ui/ModePickerUI$9;-><init>(Lcom/transsion/camera/app/ui/ModePickerUI;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1416
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModePickerAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-direct {p0}, Lcom/transsion/camera/app/ui/ModePickerUI;->getAnimatorDuration()I

    move-result p0

    int-to-long v1, p0

    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    move-result-object p0

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    :cond_d5
    return-void

    :array_d6
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_de
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_e6
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public inflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 7

    .line 313
    iput-object p2, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModePickerRoot:Landroid/view/ViewGroup;

    .line 315
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeVerticalScroll:Lcom/transsion/camera/app/ui/ModeVerticalScroll;

    invoke-virtual {v0, p2}, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->setModePickerLayout(Landroid/view/ViewGroup;)V

    .line 316
    sget v0, Lcom/transsion/camera/R$layout;->mode_picker_layout:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mRootView:Landroid/view/View;

    .line 318
    iget-object p1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeOrderProvider:Lcom/transsion/camera/app/mode/ModeOrderProvider;

    invoke-virtual {p1}, Lcom/transsion/camera/app/mode/ModeOrderProvider;->getConfig()Lcom/transsion/camera/app/mode/ModePickerConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/camera/app/mode/ModePickerConfig;->modePickerStyleMore()Z

    move-result p1

    if-eqz p1, :cond_7a

    .line 319
    iget-object p1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mRootView:Landroid/view/View;

    sget p2, Lcom/transsion/camera/R$id;->more_mode_layout_guide_right_ui:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewStub;

    .line 320
    invoke-virtual {p1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 321
    iget-object p1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mRootView:Landroid/view/View;

    sget p2, Lcom/transsion/camera/R$id;->more_mode_guide_right_root:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mMoreModeGuideRightRoot:Landroid/view/View;

    .line 322
    iget-object p1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mRootView:Landroid/view/View;

    sget p2, Lcom/transsion/camera/R$id;->more_mode_guide_right_icon:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mMoreModeRightGuide:Landroid/widget/ImageView;

    .line 324
    iget-object p1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mRootView:Landroid/view/View;

    sget p2, Lcom/transsion/camera/R$id;->more_mode_layout_guide_left_ui:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewStub;

    .line 325
    invoke-virtual {p1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 326
    iget-object p1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mRootView:Landroid/view/View;

    sget p2, Lcom/transsion/camera/R$id;->more_mode_guide_left_root:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mMoreModeGuideLeftRoot:Landroid/view/View;

    .line 328
    iget-object p1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mRootView:Landroid/view/View;

    sget p2, Lcom/transsion/camera/R$id;->more_mode_cancel_ui:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewStub;

    .line 329
    invoke-virtual {p1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 330
    iget-object p1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mRootView:Landroid/view/View;

    sget p2, Lcom/transsion/camera/R$id;->more_mode_cancel_root:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mMoreModeCancelRoot:Landroid/view/View;

    .line 331
    iget-object p1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mRootView:Landroid/view/View;

    sget p2, Lcom/transsion/camera/R$id;->more_mode_cancel_icon:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mMoreModeCancelIcon:Landroid/widget/ImageView;

    goto :goto_b8

    .line 333
    :cond_7a
    iget-object p1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mRootView:Landroid/view/View;

    sget p2, Lcom/transsion/camera/R$id;->mode_picker_arrow_ui:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewStub;

    .line 334
    invoke-virtual {p1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 336
    iget-object p1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mRootView:Landroid/view/View;

    sget p2, Lcom/transsion/camera/R$id;->mode_picker_arrow_root:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeArrowRoot:Landroid/view/View;

    .line 337
    iget-object p1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mRootView:Landroid/view/View;

    sget p2, Lcom/transsion/camera/R$id;->mode_picker_arrow_icon:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeArrow:Landroid/widget/ImageView;

    .line 338
    iget-object p1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mRootView:Landroid/view/View;

    sget p2, Lcom/transsion/camera/R$id;->mode_picker_arrow_svga:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/opensource/svgaplayer/SVGAImageView;

    iput-object p1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeArrowSvga:Lcom/opensource/svgaplayer/SVGAImageView;

    .line 340
    new-instance p1, Lcom/transsion/camera/app/ui/ModePickerUI$1;

    const-string/jumbo p2, "updateModeArrowState"

    invoke-direct {p1, p0, p2}, Lcom/transsion/camera/app/ui/ModePickerUI$1;-><init>(Lcom/transsion/camera/app/ui/ModePickerUI;Ljava/lang/String;)V

    .line 360
    invoke-static {}, Lcom/transsion/camera/utils/threads/WorkThreadPools;->getInstance()Lcom/transsion/camera/utils/threads/WorkThreadPools;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/transsion/camera/utils/threads/WorkThreadPools;->execute(Lcom/transsion/camera/utils/threads/WorkTask;)V

    .line 362
    :goto_b8
    new-instance p1, Lcom/transsion/camera/app/ui/ModePickerUI$CurrentModeUI;

    iget-object p2, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mRootView:Landroid/view/View;

    sget v0, Lcom/transsion/camera/R$id;->current_mode_root:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mRootView:Landroid/view/View;

    sget v2, Lcom/transsion/camera/R$id;->current_mode_name:I

    .line 363
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mRootView:Landroid/view/View;

    sget v3, Lcom/transsion/camera/R$id;->current_mode_cancel:I

    .line 364
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-direct {p1, p2, v0, v2, v3}, Lcom/transsion/camera/app/ui/ModePickerUI$CurrentModeUI;-><init>(Landroid/view/View;Landroid/widget/TextView;Landroid/widget/ImageView;Lcom/transsion/camera/app/ui/ModePickerUI-IA;)V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mCurrentModeUI:Lcom/transsion/camera/app/ui/ModePickerUI$CurrentModeUI;

    .line 365
    iget-object p1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mRootView:Landroid/view/View;

    sget p2, Lcom/transsion/camera/R$id;->mode_picker_tab_frame:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModePickerLayout:Landroid/widget/FrameLayout;

    .line 366
    iget-object p1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mRootView:Landroid/view/View;

    sget p2, Lcom/transsion/camera/R$id;->mode_picker_container:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/app/ui/widget/RotateLayout;

    iput-object p1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModePickerContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    .line 367
    iget-object p1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mRootView:Landroid/view/View;

    sget p2, Lcom/transsion/camera/R$id;->mode_picker_tab_layout:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/app/ui/widget/TabLayout;

    iput-object p1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeTabLayout:Lcom/transsion/camera/app/ui/widget/TabLayout;

    .line 368
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/ModePickerUI;->getTabAnimationDuration()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/transsion/camera/app/ui/widget/TabLayout;->setTabAnimationDuration(I)V

    .line 369
    iget-object p1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeTabLayout:Lcom/transsion/camera/app/ui/widget/TabLayout;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/ModePickerUI;->getTabAnimationInterpolator()Landroid/view/animation/Interpolator;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/transsion/camera/app/ui/widget/TabLayout;->setTabAnimationInterpolator(Landroid/view/animation/Interpolator;)V

    .line 370
    iget-object p1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeTabLayout:Lcom/transsion/camera/app/ui/widget/TabLayout;

    invoke-virtual {p1, v1}, Landroid/view/View;->setHorizontalFadingEdgeEnabled(Z)V

    .line 371
    iget-object p1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeTabLayout:Lcom/transsion/camera/app/ui/widget/TabLayout;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const/high16 v0, 0x42a00000    # 80.0f

    invoke-static {p2, v0}, Lcom/transsion/camera/utils/UIUtils;->dp2Px(Landroid/content/res/Resources;F)F

    move-result p2

    float-to-int p2, p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setFadingEdgeLength(I)V

    .line 372
    iget-object p1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/transsion/camera/utils/CameraUtil;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_138

    .line 373
    iget-object p1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeTabLayout:Lcom/transsion/camera/app/ui/widget/TabLayout;

    invoke-virtual {p1, v1}, Landroid/view/View;->setFocusable(Z)V

    goto :goto_13d

    .line 375
    :cond_138
    iget-object p1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeTabLayout:Lcom/transsion/camera/app/ui/widget/TabLayout;

    invoke-virtual {p1, p2}, Landroid/view/View;->setFocusable(Z)V

    .line 377
    :goto_13d
    iget-object p1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/transsion/camera/utils/FeatureSupport;->isSupportFoldUI(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_163

    .line 378
    iget-object p1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mRootView:Landroid/view/View;

    sget v0, Lcom/transsion/camera/R$id;->mode_selector_layout_stub:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewStub;

    .line 379
    invoke-virtual {p1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 380
    iget-object p1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mRootView:Landroid/view/View;

    sget v0, Lcom/transsion/camera/R$id;->mode_selector_layout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/app/ui/widget/VerticalModeSelector;

    iput-object p1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeSelector:Lcom/transsion/camera/app/ui/widget/VerticalModeSelector;

    const/high16 v0, 0x60000

    .line 381
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    .line 384
    :cond_163
    iget-object p1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeSwitchScroller:Lcom/transsion/camera/app/ui/ModeSwitchScroller;

    invoke-virtual {p1, p0}, Lcom/transsion/camera/app/ui/ModeSwitchScroller;->setModeScroll(Lcom/transsion/camera/app/ui/ModeSwitchScroller$IModeScrollCallback;)V

    .line 385
    iget-object p1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeOrderProvider:Lcom/transsion/camera/app/mode/ModeOrderProvider;

    invoke-virtual {p1}, Lcom/transsion/camera/app/mode/ModeOrderProvider;->getConfig()Lcom/transsion/camera/app/mode/ModePickerConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/camera/app/mode/ModePickerConfig;->modePickerStyleMore()Z

    move-result p1

    if-eqz p1, :cond_1a8

    .line 386
    iget-object p1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeTabLayout:Lcom/transsion/camera/app/ui/widget/TabLayout;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v0, 0x11

    .line 387
    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 388
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/camera/R$dimen;->more_mode_picker_list_margin:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 389
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeTabLayout:Lcom/transsion/camera/app/ui/widget/TabLayout;

    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 391
    iget-object p1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mRootView:Landroid/view/View;

    sget v0, Lcom/transsion/camera/R$id;->current_mode_root:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 392
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 393
    iput p2, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 394
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 396
    :cond_1a8
    iget-object p1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeHorizontalScroll:Lcom/transsion/camera/app/ui/ModeHorizontalScroll2;

    invoke-virtual {p1, p0}, Lcom/transsion/camera/app/ui/ModeHorizontalScroll2;->setModeScroll(Lcom/transsion/camera/app/ui/ModeHorizontalScroll2$IModeScrollCallback;)V

    .line 398
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/ModePickerUI;->isModePanelGuideSupported()Z

    move-result p1

    const/16 v0, 0x8

    if-nez p1, :cond_1e5

    .line 399
    iget-object p1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcom/transsion/camera/R$array;->build_in_features_back_mode_order:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    .line 400
    iget-object v1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/camera/R$array;->build_in_features_front_mode_order:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 401
    iget-object v2, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeArrow:Landroid/widget/ImageView;

    if-eqz v2, :cond_1e5

    .line 402
    array-length p1, p1

    array-length v1, v1

    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    const/4 v1, 0x6

    if-ge p1, v1, :cond_1e0

    .line 403
    iget-object p1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeArrow:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1e5

    .line 405
    :cond_1e0
    iget-object p1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeArrow:Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 410
    :cond_1e5
    :goto_1e5
    iget-object p1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeOrderProvider:Lcom/transsion/camera/app/mode/ModeOrderProvider;

    invoke-virtual {p1}, Lcom/transsion/camera/app/mode/ModeOrderProvider;->getConfig()Lcom/transsion/camera/app/mode/ModePickerConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/camera/app/mode/ModePickerConfig;->modePickerStyleMore()Z

    move-result p1

    if-eqz p1, :cond_22f

    .line 411
    iget-object p1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mMoreModeGuideRightRoot:Landroid/view/View;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeOrderProvider:Lcom/transsion/camera/app/mode/ModeOrderProvider;

    invoke-virtual {v1}, Lcom/transsion/camera/app/mode/ModeOrderProvider;->moreModeShow()Z

    move-result v1

    if-eqz v1, :cond_202

    invoke-direct {p0}, Lcom/transsion/camera/app/ui/ModePickerUI;->isShowMoreModeGuideView()Z

    move-result v1

    if-eqz v1, :cond_202

    move v0, p2

    :cond_202
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 412
    sget-object p1, Lcom/transsion/camera/app/ui/ModePickerUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "more guide visibility: inflateView, set "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeOrderProvider:Lcom/transsion/camera/app/mode/ModeOrderProvider;

    invoke-virtual {v1}, Lcom/transsion/camera/app/mode/ModeOrderProvider;->moreModeShow()Z

    move-result v1

    if-eqz v1, :cond_223

    invoke-direct {p0}, Lcom/transsion/camera/app/ui/ModePickerUI;->isShowMoreModeGuideView()Z

    move-result v1

    if-eqz v1, :cond_223

    const-string/jumbo v1, "visble"

    goto :goto_225

    :cond_223
    const-string v1, "gone"

    :goto_225
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 415
    :cond_22f
    invoke-static {}, Lcom/transsion/camera/app/common/ModuleTransferManager;->getTransferManager()Lcom/transsion/camera/app/common/ModuleTransferManager;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mIModuleTransfer:Lcom/transsion/camera/app/common/IModuleTransfer;

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/common/ModuleTransferManager;->registerTransferListener(Lcom/transsion/camera/app/common/IModuleTransfer;)V

    .line 416
    iput-boolean p2, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mOldValue:Z

    .line 417
    iget p1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mOrientation:I

    iget v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mScreenFormType:I

    invoke-direct {p0, p1, v0, p2}, Lcom/transsion/camera/app/ui/ModePickerUI;->updateLayoutParams(IIZ)V

    .line 418
    invoke-direct {p0, p2}, Lcom/transsion/camera/app/ui/ModePickerUI;->chooseModeUIToShow(Z)V

    .line 419
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mRootView:Landroid/view/View;

    return-object p0
.end method

.method public isEnabled()Z
    .registers 1

    .line 1069
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeTabLayout:Lcom/transsion/camera/app/ui/widget/TabLayout;

    if-eqz p0, :cond_c

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method public isFilterPanelShow()Z
    .registers 2

    .line 2309
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mFilterUIShow:Z

    if-nez v0, :cond_1b

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mPortraitSpotUIShow:Z

    if-nez v0, :cond_1b

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mMakeUpUIShow:Z

    if-nez v0, :cond_1b

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mPanelShow:Z

    if-nez v0, :cond_1b

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mIsPopSettingShow:Z

    if-nez v0, :cond_1b

    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mCelebrityUIShow:Z

    if-eqz p0, :cond_19

    goto :goto_1b

    :cond_19
    const/4 p0, 0x0

    return p0

    :cond_1b
    :goto_1b
    const/4 p0, 0x1

    return p0
.end method

.method public isModePanelGuideSupported()Z
    .registers 2

    .line 1073
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/transsion/camera/R$bool;->camera_mode_panel_guide_support:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    return p0
.end method

.method public isModeTabScrolling()Z
    .registers 7

    .line 1210
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeTabLayout:Lcom/transsion/camera/app/ui/widget/TabLayout;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_f

    iget v3, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mScreenFormType:I

    if-eq v3, v1, :cond_f

    .line 1211
    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/widget/TabLayout;->isScrolling()Z

    move-result v0

    goto :goto_10

    :cond_f
    move v0, v2

    .line 1215
    :goto_10
    iget-object v3, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeSelector:Lcom/transsion/camera/app/ui/widget/VerticalModeSelector;

    if-eqz v3, :cond_20

    .line 1216
    invoke-virtual {v3}, Lcom/transsion/camera/app/ui/widget/VerticalModeSelector;->isScrolling()Z

    move-result v3

    if-eqz v3, :cond_20

    iget p0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mScreenFormType:I

    if-ne p0, v1, :cond_20

    move p0, v1

    goto :goto_21

    :cond_20
    move p0, v2

    .line 1218
    :goto_21
    sget-object v3, Lcom/transsion/camera/app/ui/ModePickerUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[isModeTabScrolling] isTabScrolling: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ",isSelectorScrolling:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-nez v0, :cond_45

    if-eqz p0, :cond_44

    goto :goto_45

    :cond_44
    return v2

    :cond_45
    :goto_45
    return v1
.end method

.method public isNeedShowModePickerAnim()Z
    .registers 4

    .line 1353
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportUI5MoreModeStyle:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_23

    .line 1354
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModePickerLayout:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_22

    .line 1355
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_21

    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModePickerLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Landroid/view/View;->getAlpha()F

    move-result p0

    const/4 v0, 0x0

    invoke-static {p0, v0}, Ljava/lang/Float;->compare(FF)I

    move-result p0

    if-nez p0, :cond_22

    :cond_21
    return v2

    :cond_22
    return v1

    .line 1357
    :cond_23
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModePickerLayout:Landroid/widget/FrameLayout;

    if-eqz p0, :cond_2e

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p0

    if-eqz p0, :cond_2e

    return v2

    :cond_2e
    return v1
.end method

.method public isSupportUI5MoreModeStyle()Z
    .registers 2

    .line 2657
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportUI5MoreModeStyle:Z

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeOrderProvider:Lcom/transsion/camera/app/mode/ModeOrderProvider;

    .line 2658
    invoke-virtual {v0}, Lcom/transsion/camera/app/mode/ModeOrderProvider;->getConfig()Lcom/transsion/camera/app/mode/ModePickerConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/app/mode/ModePickerConfig;->modePickerStyleMore()Z

    move-result v0

    if-eqz v0, :cond_1e

    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeOrderProvider:Lcom/transsion/camera/app/mode/ModeOrderProvider;

    invoke-virtual {p0}, Lcom/transsion/camera/app/mode/ModeOrderProvider;->moreModeShow()Z

    move-result p0

    if-eqz p0, :cond_1e

    const/4 p0, 0x1

    return p0

    :cond_1e
    const/4 p0, 0x0

    return p0
.end method

.method public isTabLayoutMode(Ljava/lang/String;)Z
    .registers 2

    .line 1223
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeInformation:Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;

    invoke-static {p0, p1}, Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;->-$$Nest$misTabLayoutMode(Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public modePickerHideAlphaAnimator(I)Landroid/animation/ObjectAnimator;
    .registers 5

    .line 1504
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModePickerLayout:Landroid/widget/FrameLayout;

    const/4 v0, 0x1

    new-array v0, v0, [F

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput v1, v0, v2

    const-string v1, "alpha"

    invoke-static {p0, v1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object p0

    return-object p0
.end method

.method public modePickerShowAlphaAnimator(I)Landroid/animation/ObjectAnimator;
    .registers 5

    .line 1494
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModePickerLayout:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    if-eqz v0, :cond_f

    .line 1495
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1496
    sget-object v0, Lcom/transsion/camera/app/ui/ModePickerUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v2, "mode picker visibility: modePickerShowAlphaAnimator set mode picker visible"

    invoke-static {v0, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1498
    :cond_f
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModePickerLayout:Landroid/widget/FrameLayout;

    const/4 v0, 0x1

    new-array v0, v0, [F

    const/high16 v2, 0x3f800000    # 1.0f

    aput v2, v0, v1

    const-string v1, "alpha"

    invoke-static {p0, v1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object p0

    return-object p0
.end method

.method public notifyCameraOperateAction(I)V
    .registers 6

    const/16 v0, 0x13

    const/4 v1, 0x1

    if-eq p1, v0, :cond_9b

    const/16 v0, 0x14

    const/4 v2, 0x0

    if-eq p1, v0, :cond_98

    const/16 v0, 0x1c

    if-eq p1, v0, :cond_87

    const/16 v0, 0x20

    if-eq p1, v0, :cond_53

    const/16 v0, 0x9c

    if-eq p1, v0, :cond_50

    packed-switch p1, :pswitch_data_9e

    packed-switch p1, :pswitch_data_ae

    goto :goto_86

    .line 3024
    :pswitch_1d
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mIsVideoRecording:Z

    .line 3025
    invoke-virtual {p0, v1}, Lcom/transsion/camera/app/ui/ModePickerUI;->setEnable(Z)V

    return-void

    .line 3021
    :pswitch_23
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mIsVideoRecording:Z

    return-void

    .line 3028
    :pswitch_26
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mIsHALCaptureProcessing:Z

    return-void

    .line 3046
    :pswitch_29
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mIsConfigurationChanging:Z

    return-void

    .line 3042
    :pswitch_2c
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mIsConfigurationChanging:Z

    return-void

    .line 2984
    :pswitch_2f
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mIsModeSwitching:Z

    .line 2985
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mIsHALCaptureProcessing:Z

    .line 2986
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/ModePickerUI;->isSupportUI5MoreModeStyle()Z

    move-result p1

    if-eqz p1, :cond_86

    .line 2987
    iget-object p1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mCurrentModeName:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/ModePickerUI;->isTabLayoutMode(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_45

    .line 2988
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/ModePickerUI;->updateMoreCancelRootState()V

    return-void

    .line 2990
    :cond_45
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mMoreModeCancelRoot:Landroid/view/View;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 2981
    :pswitch_4d
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mIsModeSwitching:Z

    return-void

    .line 3032
    :cond_50
    :pswitch_50
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mIsHALCaptureProcessing:Z

    return-void

    .line 2995
    :cond_53
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mIsPaused:Z

    .line 2996
    iget-object p1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/transsion/camera/utils/CameraUtil;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_86

    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mIsFocusable:Z

    if-nez p1, :cond_86

    .line 2997
    iget-object p1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeTabLayout:Lcom/transsion/camera/app/ui/widget/TabLayout;

    if-eqz p1, :cond_86

    .line 2998
    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/widget/TabLayout;->getTabCount()I

    move-result p1

    :goto_69
    if-ge v2, p1, :cond_84

    .line 3000
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeTabLayout:Lcom/transsion/camera/app/ui/widget/TabLayout;

    invoke-virtual {v0, v2}, Lcom/transsion/camera/app/ui/widget/TabLayout;->getTabAt(I)Lcom/transsion/camera/app/ui/widget/TabLayout$Tab;

    move-result-object v0

    if-eqz v0, :cond_86

    .line 3001
    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/widget/TabLayout$Tab;->getView()Lcom/transsion/camera/app/ui/widget/TabLayout$TabView;

    move-result-object v3

    if-nez v3, :cond_7a

    goto :goto_86

    .line 3004
    :cond_7a
    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/widget/TabLayout$Tab;->getView()Lcom/transsion/camera/app/ui/widget/TabLayout$TabView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_69

    .line 3006
    :cond_84
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mIsFocusable:Z

    :cond_86
    :goto_86
    return-void

    .line 3011
    :cond_87
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mIsModeSwitching:Z

    .line 3012
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mIsVideoRecording:Z

    .line 3013
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mIsHALCaptureProcessing:Z

    .line 3014
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mIsSelectMoreTabView:Z

    .line 3015
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mRestoreSettingsBegin:Z

    .line 3016
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mIsDisableEnterMoreAnimation:Z

    .line 3017
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mIsConfigurationChanging:Z

    .line 3018
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mIsPaused:Z

    return-void

    .line 3038
    :cond_98
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mRestoreSettingsBegin:Z

    return-void

    .line 3035
    :cond_9b
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mRestoreSettingsBegin:Z

    return-void

    :pswitch_data_9e
    .packed-switch 0x2
        :pswitch_4d
        :pswitch_2f
        :pswitch_2c
        :pswitch_29
        :pswitch_2c
        :pswitch_29
    .end packed-switch

    :pswitch_data_ae
    .packed-switch 0xd
        :pswitch_26
        :pswitch_50
        :pswitch_23
        :pswitch_1d
    .end packed-switch
.end method

.method public notifyNeedSwitchMode(Z)V
    .registers 2

    .line 224
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mNeedSwitchMode:Z

    return-void
.end method

.method public onBackPressed()Z
    .registers 4

    .line 1545
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModePickerLayout:Landroid/widget/FrameLayout;

    const/4 v1, 0x1

    if-eqz v0, :cond_51

    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v0

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v2

    if-nez v0, :cond_51

    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mCurrentModeUI:Lcom/transsion/camera/app/ui/ModePickerUI$CurrentModeUI;

    if-eqz v0, :cond_51

    .line 1546
    invoke-static {v0}, Lcom/transsion/camera/app/ui/ModePickerUI$CurrentModeUI;->-$$Nest$misVisible(Lcom/transsion/camera/app/ui/ModePickerUI$CurrentModeUI;)Z

    move-result v0

    if-eqz v0, :cond_51

    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mRootView:Landroid/view/View;

    if-eqz v0, :cond_51

    .line 1547
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_51

    .line 1548
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/ModePickerUI;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_51

    .line 1549
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeInformation:Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;->currentIsDVMode()Z

    move-result v0

    if-eqz v0, :cond_48

    .line 1550
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz v0, :cond_3a

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mIsModeSwitching:Z

    if-eqz v0, :cond_3a

    return v1

    .line 1553
    :cond_3a
    invoke-static {}, Lcom/transsion/camera/utils/manager/GlobalClickManager;->checkCanClick()Z

    move-result v0

    if-nez v0, :cond_41

    return v1

    .line 1556
    :cond_41
    invoke-static {}, Lcom/transsion/camera/utils/manager/GlobalClickManager;->isModeReseting()Z

    move-result v0

    if-eqz v0, :cond_48

    return v1

    .line 1560
    :cond_48
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeInformation:Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;->-$$Nest$mupdateCurrentMode(Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;)V

    .line 1561
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/ModePickerUI;->updateCurrentModeAndNotify()V

    return v1

    .line 1564
    :cond_51
    invoke-static {}, Lcom/transsion/camera/utils/FeatureSupport;->isSupportColumnOrBoth()Z

    move-result v0

    if-eqz v0, :cond_74

    iget v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mScreenFormType:I

    if-ne v0, v1, :cond_74

    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeSelector:Lcom/transsion/camera/app/ui/widget/VerticalModeSelector;

    if-eqz v0, :cond_74

    .line 1567
    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_74

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mIsVideoRecording:Z

    if-nez v0, :cond_74

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mVipSelfieQuiting:Z

    if-nez v0, :cond_74

    .line 1570
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeSelector:Lcom/transsion/camera/app/ui/widget/VerticalModeSelector;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/widget/VerticalModeSelector;->onBackPressed()Z

    move-result p0

    return p0

    .line 1572
    :cond_74
    iget v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mScreenFormType:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_8e

    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeSelector:Lcom/transsion/camera/app/ui/widget/VerticalModeSelector;

    if-eqz v0, :cond_8e

    .line 1574
    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_8e

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mVipSelfieQuiting:Z

    if-nez v0, :cond_8e

    .line 1576
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeSelector:Lcom/transsion/camera/app/ui/widget/VerticalModeSelector;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/widget/VerticalModeSelector;->onBackPressed()Z

    move-result p0

    return p0

    :cond_8e
    const/4 p0, 0x0

    return p0
.end method

.method public onConfigurationChanged()V
    .registers 1

    .line 232
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeSelector:Lcom/transsion/camera/app/ui/widget/VerticalModeSelector;

    if-eqz p0, :cond_7

    .line 233
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/widget/VerticalModeSelector;->onConfigurationChanged()V

    :cond_7
    return-void
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .registers 2

    const/4 p0, 0x0

    return p0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 5

    const/4 p0, 0x0

    return p0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .registers 2

    return-void
.end method

.method public onOrientationChanged(I)V
    .registers 2

    .line 0
    return-void
.end method

.method public onOrientationChanged(IZ)V
    .registers 6

    .line 645
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeSwitchScroller:Lcom/transsion/camera/app/ui/ModeSwitchScroller;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/ui/ModeSwitchScroller;->onOrientationChanged(I)V

    .line 646
    iget v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mOrientation:I

    if-eq v0, p1, :cond_2a

    .line 648
    iput p1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mOrientation:I

    .line 649
    iget-object v1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenFormType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_18

    .line 650
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/ui/ModePickerUI;->startModePickerUIAnimation(IZ)V

    goto :goto_2a

    .line 651
    :cond_18
    iget-object p2, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {p2}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenFormType()I

    move-result p2

    const/4 v1, 0x7

    if-ne v1, p2, :cond_2a

    if-eqz v0, :cond_27

    if-nez p1, :cond_26

    goto :goto_27

    :cond_26
    const/4 v2, 0x0

    .line 652
    :cond_27
    :goto_27
    invoke-direct {p0, p1, v2}, Lcom/transsion/camera/app/ui/ModePickerUI;->startModePickerUIAnimation(IZ)V

    .line 655
    :cond_2a
    :goto_2a
    iget-object p1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeTabLayout:Lcom/transsion/camera/app/ui/widget/TabLayout;

    if-eqz p1, :cond_31

    .line 656
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/ModePickerUI;->updateScrollHotArea()V

    .line 658
    :cond_31
    iget p1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mOrientation:I

    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/ModePickerUI;->updateModePickerRotation(I)V

    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 5

    const/4 p0, 0x0

    return p0
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .registers 2

    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .registers 2

    const/4 p0, 0x0

    return p0
.end method

.method public playMoreModeGuideAnim()V
    .registers 7

    .line 2204
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mMoreModeRightGuide:Landroid/widget/ImageView;

    if-nez v0, :cond_5

    return-void

    .line 2207
    :cond_5
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mMoreModeGuideAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 2208
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mMoreModeGuideAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    .line 2210
    :cond_12
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mMoreModeRightGuide:Landroid/widget/ImageView;

    const/4 v1, 0x3

    new-array v2, v1, [F

    fill-array-data v2, :array_64

    const-string v3, "scaleX"

    invoke-static {v0, v3, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 2211
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    const/4 v2, 0x1

    .line 2212
    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    .line 2213
    iget-object v3, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mMoreModeRightGuide:Landroid/widget/ImageView;

    new-array v4, v1, [F

    fill-array-data v4, :array_6e

    const-string v5, "scaleY"

    invoke-static {v3, v5, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 2214
    invoke-virtual {v3, v1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 2215
    invoke-virtual {v3, v2}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    .line 2217
    iget-object v1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mMoreModeGuideAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 2218
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mMoreModeGuideAnim:Landroid/animation/AnimatorSet;

    const-wide/16 v1, 0x320

    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 2219
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mMoreModeGuideAnim:Landroid/animation/AnimatorSet;

    new-instance v1, Landroid/view/animation/PathInterpolator;

    const/4 v2, 0x0

    const v3, 0x3f28f5c3    # 0.66f

    const v4, 0x3ea8f5c3    # 0.33f

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v1, v4, v2, v3, v5}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2220
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mMoreModeGuideAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    return-void

    nop

    :array_64
    .array-data 4
        0x3f800000    # 1.0f
        0x3f99999a    # 1.2f
        0x3f800000    # 1.0f
    .end array-data

    :array_6e
    .array-data 4
        0x3f800000    # 1.0f
        0x3f99999a    # 1.2f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public resetRecordingUI()V
    .registers 3

    .line 3070
    sget-object v0, Lcom/transsion/camera/app/ui/ModePickerUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "resetRecordingUI: "

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 3071
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mRecordingAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_16

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 3072
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mRecordingAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 3074
    :cond_16
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mRootView:Landroid/view/View;

    if-eqz v0, :cond_2c

    .line 3075
    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 3076
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mRootView:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 3077
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mRootView:Landroid/view/View;

    sget v0, Lcom/transsion/camera/app/common/R$id;->key_video_recording_state:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    :cond_2c
    return-void
.end method

.method protected ringScreenLightUpdateUI()V
    .registers 3

    .line 2922
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeSelector:Lcom/transsion/camera/app/ui/widget/VerticalModeSelector;

    if-eqz v0, :cond_9

    .line 2923
    iget-boolean v1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mOldValue:Z

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/widget/VerticalModeSelector;->updateRingScreenLight(Z)V

    .line 2925
    :cond_9
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeTabLayout:Lcom/transsion/camera/app/ui/widget/TabLayout;

    iget-boolean v1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mOldValue:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/widget/TabLayout;->setTabNormalTextColorState(Z)V

    .line 2926
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mOldValue:Z

    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/ModePickerUI;->updateModeArrowView(Z)V

    .line 2927
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mOldValue:Z

    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/ModePickerUI;->updateMoreModeGuideView(Z)V

    return-void
.end method

.method public scrollToNext()V
    .registers 4

    .line 969
    sget-object v0, Lcom/transsion/camera/app/ui/ModePickerUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "scrollToNext() called: mIsHALCaptureProcessing = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mIsHALCaptureProcessing:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 970
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/ModePickerUI;->isModePickerVisible()Z

    move-result v0

    if-nez v0, :cond_29

    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result v0

    if-eqz v0, :cond_50

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mIsPopSettingShow:Z

    if-nez v0, :cond_29

    goto :goto_50

    .line 973
    :cond_29
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result v0

    if-eqz v0, :cond_34

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mIsHALCaptureProcessing:Z

    if-eqz v0, :cond_34

    goto :goto_50

    :cond_34
    const/4 v0, 0x1

    .line 976
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mNeedSwitchMode:Z

    .line 977
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/ModePickerUI;->isSupportUI5MoreModeStyle()Z

    move-result v0

    if-eqz v0, :cond_43

    .line 978
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeTabLayout:Lcom/transsion/camera/app/ui/widget/TabLayout;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/widget/TabLayout;->scrollToNext()V

    return-void

    .line 980
    :cond_43
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeInformation:Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;->-$$Nest$mcurrentIsTabLayoutMode(Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;)Z

    move-result v0

    if-eqz v0, :cond_50

    .line 981
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeTabLayout:Lcom/transsion/camera/app/ui/widget/TabLayout;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/widget/TabLayout;->scrollToNext()V

    :cond_50
    :goto_50
    return-void
.end method

.method public scrollToPrevious()V
    .registers 4

    .line 950
    sget-object v0, Lcom/transsion/camera/app/ui/ModePickerUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "scrollToPrevious() called: mIsHALCaptureProcessing = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mIsHALCaptureProcessing:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 951
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/ModePickerUI;->isModePickerVisible()Z

    move-result v0

    if-nez v0, :cond_29

    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result v0

    if-eqz v0, :cond_50

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mIsPopSettingShow:Z

    if-nez v0, :cond_29

    goto :goto_50

    .line 954
    :cond_29
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result v0

    if-eqz v0, :cond_34

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mIsHALCaptureProcessing:Z

    if-eqz v0, :cond_34

    goto :goto_50

    :cond_34
    const/4 v0, 0x1

    .line 957
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mNeedSwitchMode:Z

    .line 958
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/ModePickerUI;->isSupportUI5MoreModeStyle()Z

    move-result v0

    if-eqz v0, :cond_43

    .line 959
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeTabLayout:Lcom/transsion/camera/app/ui/widget/TabLayout;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/widget/TabLayout;->scrollToPrevious()V

    return-void

    .line 961
    :cond_43
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeInformation:Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;->-$$Nest$mcurrentIsTabLayoutMode(Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;)Z

    move-result v0

    if-eqz v0, :cond_50

    .line 962
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeTabLayout:Lcom/transsion/camera/app/ui/widget/TabLayout;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/widget/TabLayout;->scrollToPrevious()V

    :cond_50
    :goto_50
    return-void
.end method

.method public scrolling(FF)V
    .registers 5

    .line 936
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mIsEditMode:Z

    if-nez v0, :cond_2d

    invoke-direct {p0}, Lcom/transsion/camera/app/ui/ModePickerUI;->isModePickerVisible()Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_2d

    .line 939
    :cond_b
    iget v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mScreenFormType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2d

    .line 940
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/ModePickerUI;->isSupportUI5MoreModeStyle()Z

    move-result v0

    if-nez v0, :cond_1e

    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeInformation:Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;->-$$Nest$mcurrentIsTabLayoutMode(Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;)Z

    move-result v0

    if-eqz v0, :cond_2d

    :cond_1e
    const/4 v0, 0x0

    .line 942
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mStopScroll:Z

    .line 943
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeTabLayout:Lcom/transsion/camera/app/ui/widget/TabLayout;

    invoke-virtual {v0, p1, p2}, Lcom/transsion/camera/app/ui/widget/TabLayout;->scrolling(FF)V

    .line 944
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mCameraOperationControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    const/16 p1, 0xb8

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    :cond_2d
    :goto_2d
    return-void
.end method

.method public selectMoreTabView(Ljava/lang/String;)V
    .registers 5

    .line 238
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/ModePickerUI;->isTabLayoutMode(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 239
    sget-object p0, Lcom/transsion/camera/app/ui/ModePickerUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "selectMoreTabView: mode is tab layout mode, return"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 242
    :cond_e
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeTabLayout:Lcom/transsion/camera/app/ui/widget/TabLayout;

    if-nez v0, :cond_1a

    .line 243
    sget-object p0, Lcom/transsion/camera/app/ui/ModePickerUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "selectMoreTabView mModeTabLayout is null!"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 246
    :cond_1a
    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/widget/TabLayout;->getMoreTabView()Lcom/transsion/camera/app/ui/widget/TabLayout$TabView;

    move-result-object v0

    if-eqz v0, :cond_58

    .line 248
    iget-object v1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mCurrentModeName:Ljava/lang/String;

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2b

    const/4 p1, 0x1

    .line 249
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mIsSelectMoreTabView:Z

    :cond_2b
    const/4 p1, 0x0

    .line 251
    invoke-virtual {v0, p1, p1}, Lcom/transsion/camera/app/ui/widget/TabLayout$TabView;->moreModeIconClick(ZZ)V

    .line 252
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mIsSelectMoreTabView:Z

    .line 253
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/ModePickerUI;->isSupportUI5MoreModeStyle()Z

    move-result v1

    if-eqz v1, :cond_58

    .line 254
    iget-object v1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeTabLayout:Lcom/transsion/camera/app/ui/widget/TabLayout;

    if-nez v1, :cond_3c

    goto :goto_58

    .line 257
    :cond_3c
    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/widget/TabLayout$TabView;->getTab()Lcom/transsion/camera/app/ui/widget/TabLayout$Tab;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeInformation:Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;

    invoke-static {v2}, Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;->-$$Nest$mcurrentModeShowName(Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/transsion/camera/app/ui/widget/TabLayout$Tab;->setText(Ljava/lang/CharSequence;)Lcom/transsion/camera/app/ui/widget/TabLayout$Tab;

    .line 259
    iget-object v1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mMoreModeGuideRightRoot:Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->setVisibility(I)V

    .line 260
    iget-object p1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/transsion/camera/app/ui/ModePickerUI$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, v0}, Lcom/transsion/camera/app/ui/ModePickerUI$$ExternalSyntheticLambda5;-><init>(Lcom/transsion/camera/app/ui/ModePickerUI;Lcom/transsion/camera/app/ui/widget/TabLayout$TabView;)V

    invoke-virtual {p1, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_58
    :goto_58
    return-void
.end method

.method public setAlpha(F)V
    .registers 5

    .line 569
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeTabLayout:Lcom/transsion/camera/app/ui/widget/TabLayout;

    if-eqz v0, :cond_44

    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mMoreModeRightGuide:Landroid/widget/ImageView;

    if-eqz v0, :cond_44

    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mMoreModeCancelRoot:Landroid/view/View;

    if-eqz v0, :cond_44

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mFaceBeautyUIShow:Z

    if-eqz v0, :cond_19

    const/high16 v0, 0x3f800000    # 1.0f

    .line 570
    invoke-static {p1, v0}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_19

    goto :goto_44

    .line 573
    :cond_19
    sget-object v0, Lcom/transsion/camera/app/ui/ModePickerUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAlpha: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 574
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeTabLayout:Lcom/transsion/camera/app/ui/widget/TabLayout;

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 575
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mMoreModeRightGuide:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 576
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/ModePickerUI;->isSupportUI5MoreModeStyle()Z

    move-result v0

    if-eqz v0, :cond_44

    .line 577
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mMoreModeCancelIcon:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    :cond_44
    :goto_44
    return-void
.end method

.method public setAppUI(Lcom/transsion/camera/app/common/IAppUI;)V
    .registers 2

    .line 1918
    iput-object p1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    return-void
.end method

.method public setCameraOperateActionControl(Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;)V
    .registers 2

    .line 1914
    iput-object p1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mCameraOperationControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    return-void
.end method

.method public setCelebrityUIShow(Z)V
    .registers 2

    .line 2284
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mCelebrityUIShow:Z

    .line 2285
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/ModePickerUI;->isFilterPanelShow()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/ModePickerUI;->chooseModeUIToShow(Z)V

    return-void
.end method

.method public setCurrentModeUIAlpha(F)V
    .registers 2

    .line 582
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mCurrentModeUI:Lcom/transsion/camera/app/ui/ModePickerUI$CurrentModeUI;

    if-eqz p0, :cond_7

    .line 583
    invoke-static {p0, p1}, Lcom/transsion/camera/app/ui/ModePickerUI$CurrentModeUI;->-$$Nest$msetAlpha(Lcom/transsion/camera/app/ui/ModePickerUI$CurrentModeUI;F)V

    :cond_7
    return-void
.end method

.method public setEnable(Z)V
    .registers 4

    .line 1047
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeTabLayout:Lcom/transsion/camera/app/ui/widget/TabLayout;

    if-eqz v0, :cond_7

    .line 1048
    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 1050
    :cond_7
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mCurrentModeUI:Lcom/transsion/camera/app/ui/ModePickerUI$CurrentModeUI;

    if-eqz v0, :cond_e

    .line 1051
    invoke-static {v0, p1}, Lcom/transsion/camera/app/ui/ModePickerUI$CurrentModeUI;->-$$Nest$msetEnable(Lcom/transsion/camera/app/ui/ModePickerUI$CurrentModeUI;Z)V

    .line 1053
    :cond_e
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeSelector:Lcom/transsion/camera/app/ui/widget/VerticalModeSelector;

    if-eqz v0, :cond_1e

    if-eqz p1, :cond_1a

    .line 1054
    iget-boolean v1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mVipSelfieQuiting:Z

    if-nez v1, :cond_1a

    const/4 v1, 0x1

    goto :goto_1b

    :cond_1a
    const/4 v1, 0x0

    :goto_1b
    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/widget/VerticalModeSelector;->setEnabled(Z)V

    .line 1056
    :cond_1e
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeArrow:Landroid/widget/ImageView;

    if-eqz v0, :cond_25

    .line 1057
    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 1059
    :cond_25
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mMoreModeCancelRoot:Landroid/view/View;

    if-eqz v0, :cond_2c

    .line 1060
    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 1062
    :cond_2c
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mMoreModeRightGuide:Landroid/widget/ImageView;

    if-eqz p0, :cond_33

    .line 1063
    invoke-virtual {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    :cond_33
    return-void
.end method

.method public setFaceBeautyUIShow(Z)V
    .registers 2

    .line 2299
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mFaceBeautyUIShow:Z

    .line 2300
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/ModePickerUI;->isFilterPanelShow()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/ModePickerUI;->chooseModeUIToShow(Z)V

    return-void
.end method

.method public setFilterUIShow(Z)V
    .registers 2

    .line 2279
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mFilterUIShow:Z

    .line 2280
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/ModePickerUI;->isFilterPanelShow()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/ModePickerUI;->chooseModeUIToShow(Z)V

    return-void
.end method

.method public setInstantZoomShow(ZZ)V
    .registers 4

    .line 2264
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mIsInstantZoomShow:Z

    .line 2265
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/ModePickerUI;->chooseModeUIToShow(Z)V

    const/4 v0, 0x0

    if-eqz p2, :cond_c

    .line 2267
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/ModePickerUI;->setAlpha(F)V

    return-void

    :cond_c
    if-eqz p1, :cond_f

    goto :goto_11

    :cond_f
    const/high16 v0, 0x3f800000    # 1.0f

    .line 2269
    :goto_11
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/ModePickerUI;->setAlpha(F)V

    return-void
.end method

.method public setIsCameraSwitching(Z)V
    .registers 2

    .line 1480
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mIsCameraSwitching:Z

    if-nez p1, :cond_7

    const/4 p1, 0x0

    .line 1483
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mFromResume:Z

    :cond_7
    return-void
.end method

.method public setIsPopSettingShow(Z)V
    .registers 2

    .line 2274
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mIsPopSettingShow:Z

    .line 2275
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/ModePickerUI;->isFilterPanelShow()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/ModePickerUI;->chooseModeUIToShow(Z)V

    return-void
.end method

.method public setIsResumeAfterEdit(Z)V
    .registers 2

    .line 2918
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mIsResumeAfterEdit:Z

    return-void
.end method

.method public setMakeUpUIShow(Z)V
    .registers 2

    .line 2294
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mMakeUpUIShow:Z

    .line 2295
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/ModePickerUI;->isFilterPanelShow()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/ModePickerUI;->chooseModeUIToShow(Z)V

    return-void
.end method

.method public setModeChangedListener(Lcom/transsion/camera/app/common/IAppUIListener$IModeChangedListener;)V
    .registers 3

    if-nez p1, :cond_6

    const/4 p1, 0x0

    .line 1822
    iput-object p1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeChangedListener:Lcom/transsion/camera/app/common/IAppUIListener$IModeChangedListener;

    return-void

    .line 1824
    :cond_6
    new-instance v0, Lcom/transsion/camera/app/ui/ModePickerUI$ModeChangedListenerWrapper;

    invoke-direct {v0, p0, p1}, Lcom/transsion/camera/app/ui/ModePickerUI$ModeChangedListenerWrapper;-><init>(Lcom/transsion/camera/app/ui/ModePickerUI;Lcom/transsion/camera/app/common/IAppUIListener$IModeChangedListener;)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeChangedListener:Lcom/transsion/camera/app/common/IAppUIListener$IModeChangedListener;

    return-void
.end method

.method public setModePickerOpaque()V
    .registers 2

    .line 1376
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModePickerLayout:Landroid/widget/FrameLayout;

    if-eqz p0, :cond_9

    const/high16 v0, 0x3f800000    # 1.0f

    .line 1377
    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    :cond_9
    return-void
.end method

.method public setModePickerUnOpaque()V
    .registers 2

    .line 1382
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModePickerLayout:Landroid/widget/FrameLayout;

    if-eqz p0, :cond_8

    const/4 v0, 0x0

    .line 1383
    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    :cond_8
    return-void
.end method

.method public setModePolicy(Lcom/transsion/camera/app/common/mode/IModeSwitchPolicy;)V
    .registers 2

    .line 274
    invoke-interface {p1}, Lcom/transsion/camera/app/common/mode/IModeSwitchPolicy;->getSpecifyMode()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mSpecifyMode:Ljava/lang/String;

    return-void
.end method

.method public setModeSelectorEnable(Z)V
    .registers 3

    .line 1600
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeSelector:Lcom/transsion/camera/app/ui/widget/VerticalModeSelector;

    if-eqz v0, :cond_10

    if-eqz p1, :cond_c

    .line 1601
    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mVipSelfieQuiting:Z

    if-nez p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    invoke-virtual {v0, p0}, Lcom/transsion/camera/app/ui/widget/VerticalModeSelector;->setEnabled(Z)V

    :cond_10
    return-void
.end method

.method public setModeSelectorVisibility(I)V
    .registers 5

    .line 2257
    sget-object v0, Lcom/transsion/camera/app/ui/ModePickerUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setModeSelectorVisibility visibility: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 2258
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeSelector:Lcom/transsion/camera/app/ui/widget/VerticalModeSelector;

    if-eqz p0, :cond_1d

    .line 2259
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_1d
    return-void
.end method

.method public setMoreModeGuideEnable(Z)V
    .registers 5

    .line 1952
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mCacheEnableMoreGuide:Z

    .line 1953
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mMoreModeRightGuide:Landroid/widget/ImageView;

    if-eqz v0, :cond_30

    .line 1954
    sget-object v0, Lcom/transsion/camera/app/ui/ModePickerUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setMoreModeGuideEnable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " , previous state is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mMoreModeRightGuide:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/view/View;->isEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1955
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mMoreModeRightGuide:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    return-void

    .line 1957
    :cond_30
    sget-object p0, Lcom/transsion/camera/app/ui/ModePickerUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "setMoreModeGuideEnable: mMoreModeRightGuide is null!"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public setMoreModeGuideRightRootOpaque()V
    .registers 3

    .line 1829
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mMoreModeGuideRightRoot:Landroid/view/View;

    if-eqz v0, :cond_f

    const/high16 v1, 0x3f800000    # 1.0f

    .line 1830
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 1831
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mMoreModeGuideRightRoot:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setTranslationY(F)V

    :cond_f
    return-void
.end method

.method public setNotifyClickMoreModeGuideIconListener(Lcom/transsion/camera/app/common/IAppUIListener$INotifyClickGuideIconListener;)V
    .registers 2

    .line 893
    iput-object p1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mNotifyClickGuideIconListener:Lcom/transsion/camera/app/common/IAppUIListener$INotifyClickGuideIconListener;

    return-void
.end method

.method public setOnMoreTabChangeListener(Lcom/transsion/camera/app/common/IAppUIListener$IMoreTabChangeListener;)V
    .registers 2

    .line 2626
    iput-object p1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mMoreTabChangeListener:Lcom/transsion/camera/app/common/IAppUIListener$IMoreTabChangeListener;

    return-void
.end method

.method public setPanelShow(Z)V
    .registers 2

    .line 2304
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mPanelShow:Z

    .line 2305
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/ModePickerUI;->isFilterPanelShow()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/ModePickerUI;->chooseModeUIToShow(Z)V

    return-void
.end method

.method public setPortraitSpotUIShow(Z)V
    .registers 2

    .line 2289
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mPortraitSpotUIShow:Z

    .line 2290
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/ModePickerUI;->isFilterPanelShow()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/ModePickerUI;->chooseModeUIToShow(Z)V

    return-void
.end method

.method public setProSeekUIShow(Z)V
    .registers 2

    .line 1583
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeSelector:Lcom/transsion/camera/app/ui/widget/VerticalModeSelector;

    if-eqz p0, :cond_7

    .line 1584
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/widget/VerticalModeSelector;->setProSeekUIShow(Z)V

    :cond_7
    return-void
.end method

.method public setSelfTimerBegin(Z)V
    .registers 2

    .line 1488
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mSelfTimerBegin:Z

    return-void
.end method

.method public setVipSelfieQuiting(Z)V
    .registers 2

    .line 228
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mVipSelfieQuiting:Z

    return-void
.end method

.method public setupViews()V
    .registers 6

    .line 424
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeTabLayout:Lcom/transsion/camera/app/ui/widget/TabLayout;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 425
    new-instance v1, Lcom/transsion/camera/app/common/storage/DataStore;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/transsion/camera/app/common/storage/DataStore;-><init>(Landroid/content/Context;)V

    .line 426
    new-instance v2, Landroid/view/GestureDetector;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {v2, v0, p0, v4, v3}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;Z)V

    .line 427
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeArrow:Landroid/widget/ImageView;

    if-eqz v0, :cond_20

    .line 428
    new-instance v3, Lcom/transsion/camera/app/ui/ModePickerUI$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Lcom/transsion/camera/app/ui/ModePickerUI$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/app/ui/ModePickerUI;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 433
    :cond_20
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mMoreModeRightGuide:Landroid/widget/ImageView;

    if-eqz v0, :cond_36

    .line 434
    new-instance v3, Lcom/transsion/camera/app/ui/ModePickerUI$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0, v1}, Lcom/transsion/camera/app/ui/ModePickerUI$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/app/ui/ModePickerUI;Lcom/transsion/camera/app/common/storage/DataStore;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 478
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mMoreModeRightGuide:Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/transsion/camera/utils/MultiTouchManager;->pressSealWithoutAnimation(Landroid/view/View;)V

    .line 479
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mCacheEnableMoreGuide:Z

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/ModePickerUI;->setMoreModeGuideEnable(Z)V

    .line 482
    :cond_36
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mCurrentModeUI:Lcom/transsion/camera/app/ui/ModePickerUI$CurrentModeUI;

    new-instance v1, Lcom/transsion/camera/app/ui/ModePickerUI$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/ui/ModePickerUI$$ExternalSyntheticLambda2;-><init>(Lcom/transsion/camera/app/ui/ModePickerUI;)V

    invoke-static {v0, v1}, Lcom/transsion/camera/app/ui/ModePickerUI$CurrentModeUI;->-$$Nest$msetOnClickListener(Lcom/transsion/camera/app/ui/ModePickerUI$CurrentModeUI;Landroid/view/View$OnClickListener;)V

    .line 504
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mMoreModeCancelRoot:Landroid/view/View;

    if-eqz v0, :cond_4c

    .line 505
    new-instance v1, Lcom/transsion/camera/app/ui/ModePickerUI$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/ui/ModePickerUI$$ExternalSyntheticLambda3;-><init>(Lcom/transsion/camera/app/ui/ModePickerUI;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 507
    :cond_4c
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeTabLayout:Lcom/transsion/camera/app/ui/widget/TabLayout;

    invoke-virtual {v0, v2}, Lcom/transsion/camera/app/ui/widget/TabLayout;->setGestureDetector(Landroid/view/GestureDetector;)V

    .line 508
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeTabLayout:Lcom/transsion/camera/app/ui/widget/TabLayout;

    new-instance v1, Lcom/transsion/camera/app/ui/ModePickerUI$OnTabSelectedListenerImpl;

    invoke-direct {v1, p0, v4}, Lcom/transsion/camera/app/ui/ModePickerUI$OnTabSelectedListenerImpl;-><init>(Lcom/transsion/camera/app/ui/ModePickerUI;Lcom/transsion/camera/app/ui/ModePickerUI-IA;)V

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/widget/TabLayout;->setOnTabSelectedListener(Lcom/transsion/camera/app/ui/widget/TabLayout$OnTabSelectedListener;)V

    .line 509
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeTabLayout:Lcom/transsion/camera/app/ui/widget/TabLayout;

    new-instance v1, Lcom/transsion/camera/app/ui/ModePickerUI$OnTabScrollListenerImpl;

    invoke-direct {v1, p0, v4}, Lcom/transsion/camera/app/ui/ModePickerUI$OnTabScrollListenerImpl;-><init>(Lcom/transsion/camera/app/ui/ModePickerUI;Lcom/transsion/camera/app/ui/ModePickerUI-IA;)V

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/widget/TabLayout;->setOnTabScrollListener(Lcom/transsion/camera/app/ui/widget/TabLayout$OnTabScrollListener;)V

    .line 510
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeTabLayout:Lcom/transsion/camera/app/ui/widget/TabLayout;

    new-instance v1, Lcom/transsion/camera/app/ui/ModePickerUI$ActionInterceptImpl;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/ui/ModePickerUI$ActionInterceptImpl;-><init>(Lcom/transsion/camera/app/ui/ModePickerUI;)V

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/widget/TabLayout;->setActionIntercept(Lcom/transsion/camera/app/ui/widget/TabLayout$ActionIntercept;)V

    .line 511
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeTabLayout:Lcom/transsion/camera/app/ui/widget/TabLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 512
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeSelector:Lcom/transsion/camera/app/ui/widget/VerticalModeSelector;

    if-eqz v0, :cond_81

    .line 513
    new-instance v2, Lcom/transsion/camera/app/ui/ModePickerUI$OnModeSelectedListenerImpl;

    invoke-direct {v2, p0, v4}, Lcom/transsion/camera/app/ui/ModePickerUI$OnModeSelectedListenerImpl;-><init>(Lcom/transsion/camera/app/ui/ModePickerUI;Lcom/transsion/camera/app/ui/ModePickerUI-IA;)V

    invoke-virtual {v0, v2}, Lcom/transsion/camera/app/ui/widget/VerticalModeSelector;->setOnModeSelectedListener(Lcom/transsion/camera/app/ui/widget/VerticalModeSelector$OnModeSelectedListener;)V

    .line 515
    :cond_81
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/ModePickerUI;->updateModeSelectorLayout()V

    .line 516
    invoke-direct {p0, v4, v1}, Lcom/transsion/camera/app/ui/ModePickerUI;->updateModeTabLayout(Ljava/lang/String;Z)V

    .line 517
    invoke-virtual {p0, v1}, Lcom/transsion/camera/app/ui/ModePickerUI;->updateCurrentTab(Z)V

    .line 518
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/ModePickerUI;->updateCurrentModeSelector()V

    .line 519
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/ModePickerUI;->ringScreenLightUpdateUI()V

    .line 520
    invoke-direct {p0, v1}, Lcom/transsion/camera/app/ui/ModePickerUI;->chooseModeUIToShow(Z)V

    .line 521
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/ModePickerUI;->updateScrollHotArea()V

    .line 522
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeInformation:Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;->-$$Nest$mcurrentIsTabLayoutMode(Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;)Z

    move-result v0

    if-nez v0, :cond_f1

    .line 523
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/ModePickerUI;->isSupportUI5MoreModeStyle()Z

    move-result v0

    if-eqz v0, :cond_d1

    .line 524
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mSpecifyMode:Ljava/lang/String;

    if-eqz v0, :cond_ee

    .line 525
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/transsion/camera/R$string;->back_cam_mode_default:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 526
    iget-object v2, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/transsion/camera/R$string;->front_cam_mode_default:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 527
    iget-object v3, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeOrderProvider:Lcom/transsion/camera/app/mode/ModeOrderProvider;

    invoke-virtual {v3, v0, v0, v2, v2}, Lcom/transsion/camera/app/mode/ModeOrderProvider;->setDefaultMode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 529
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeInformation:Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;->-$$Nest$fgetmCurrentModeItem(Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;)Lcom/transsion/camera/app/common/FeatureResource;

    move-result-object v0

    iget-object v0, v0, Lcom/transsion/camera/app/common/FeatureResource;->mFeatureName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/ModePickerUI;->selectMoreTabView(Ljava/lang/String;)V

    goto :goto_ee

    .line 532
    :cond_d1
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeTabLayout:Lcom/transsion/camera/app/ui/widget/TabLayout;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 533
    iget v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mScreenFormType:I

    const/4 v2, 0x7

    if-ne v0, v2, :cond_e3

    .line 534
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mCurrentModeUI:Lcom/transsion/camera/app/ui/ModePickerUI$CurrentModeUI;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/ModePickerUI$CurrentModeUI;->-$$Nest$mhide(Lcom/transsion/camera/app/ui/ModePickerUI$CurrentModeUI;)V

    goto :goto_ee

    .line 536
    :cond_e3
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mCurrentModeUI:Lcom/transsion/camera/app/ui/ModePickerUI$CurrentModeUI;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeInformation:Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;

    invoke-static {v2}, Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;->-$$Nest$mcurrentModeShowName(Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/transsion/camera/app/ui/ModePickerUI$CurrentModeUI;->-$$Nest$mshow(Lcom/transsion/camera/app/ui/ModePickerUI$CurrentModeUI;Ljava/lang/String;)V

    .line 539
    :cond_ee
    :goto_ee
    invoke-virtual {p0, v1}, Lcom/transsion/camera/app/ui/ModePickerUI;->updateModeArrowVisibility(Z)V

    :cond_f1
    return-void
.end method

.method public shouldExitCameraOnBackPressed()Z
    .registers 2

    .line 1589
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/ModePickerUI;->isSupportUI5MoreModeStyle()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 1590
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeInformation:Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;->-$$Nest$mcurrentIsTabLayoutMode(Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;)Z

    move-result v0

    if-nez v0, :cond_10

    const/4 p0, 0x1

    return p0

    .line 1593
    :cond_10
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeInformation:Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;->-$$Nest$mcurrentIsTabLayoutMode(Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;)Z

    move-result p0

    return p0

    .line 1596
    :cond_17
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeInformation:Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;->-$$Nest$mcurrentIsTabLayoutMode(Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;)Z

    move-result p0

    return p0
.end method

.method public showModePicker()V
    .registers 12

    .line 1239
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/ModePickerUI;->cancelAnimation()V

    .line 1240
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModePickerLayout:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_e4

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_e4

    .line 1241
    sget-object v0, Lcom/transsion/camera/app/ui/ModePickerUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "showModePicker: "

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1242
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModePickerLayout:Landroid/widget/FrameLayout;

    const/4 v1, 0x2

    new-array v2, v1, [F

    fill-array-data v2, :array_e8

    const-string v3, "alpha"

    invoke-static {v0, v3, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModePickerAlphaAnimation:Landroid/animation/ObjectAnimator;

    .line 1243
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModePickerLayout:Landroid/widget/FrameLayout;

    invoke-direct {p0}, Lcom/transsion/camera/app/ui/ModePickerUI;->getTranslateDistance()I

    move-result v2

    int-to-float v2, v2

    new-array v4, v1, [F

    const/4 v5, 0x0

    aput v2, v4, v5

    const/4 v2, 0x1

    const/4 v6, 0x0

    aput v6, v4, v2

    const-string/jumbo v7, "translationY"

    invoke-static {v0, v7, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModePickerTranslateAnimation:Landroid/animation/ObjectAnimator;

    .line 1244
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mMoreModeCancelRoot:Landroid/view/View;

    new-array v4, v1, [F

    fill-array-data v4, :array_f0

    invoke-static {v0, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mMoreModeCancelAlphaAnimation:Landroid/animation/ObjectAnimator;

    .line 1245
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModePickerLayout:Landroid/widget/FrameLayout;

    invoke-direct {p0}, Lcom/transsion/camera/app/ui/ModePickerUI;->getTranslateDistance()I

    move-result v4

    int-to-float v4, v4

    new-array v8, v1, [F

    aput v4, v8, v5

    aput v6, v8, v2

    invoke-static {v0, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mMoreModeCancelTranslateAnimation:Landroid/animation/ObjectAnimator;

    .line 1246
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mMoreModeGuideRightRoot:Landroid/view/View;

    new-array v4, v1, [F

    fill-array-data v4, :array_f8

    invoke-static {v0, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mMoreModeGuideAlphaAnimation:Landroid/animation/ObjectAnimator;

    .line 1247
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModePickerLayout:Landroid/widget/FrameLayout;

    invoke-direct {p0}, Lcom/transsion/camera/app/ui/ModePickerUI;->getTranslateDistance()I

    move-result v3

    int-to-float v3, v3

    new-array v4, v1, [F

    aput v3, v4, v5

    aput v6, v4, v2

    invoke-static {v0, v7, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeModeGuideTranslateAnimation:Landroid/animation/ObjectAnimator;

    .line 1248
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModePickerAnimatorSet:Landroid/animation/AnimatorSet;

    .line 1249
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/ModePickerUI;->isSupportUI5MoreModeStyle()Z

    move-result v0

    if-eqz v0, :cond_b6

    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mCurrentModeName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/ModePickerUI;->isTabLayoutMode(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b6

    .line 1250
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModePickerAnimatorSet:Landroid/animation/AnimatorSet;

    iget-object v3, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModePickerAlphaAnimation:Landroid/animation/ObjectAnimator;

    iget-object v4, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModePickerTranslateAnimation:Landroid/animation/ObjectAnimator;

    iget-object v6, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mMoreModeCancelAlphaAnimation:Landroid/animation/ObjectAnimator;

    iget-object v7, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mMoreModeCancelTranslateAnimation:Landroid/animation/ObjectAnimator;

    iget-object v8, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mMoreModeGuideAlphaAnimation:Landroid/animation/ObjectAnimator;

    iget-object v9, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeModeGuideTranslateAnimation:Landroid/animation/ObjectAnimator;

    const/4 v10, 0x6

    new-array v10, v10, [Landroid/animation/Animator;

    aput-object v3, v10, v5

    aput-object v4, v10, v2

    aput-object v6, v10, v1

    const/4 v1, 0x3

    aput-object v7, v10, v1

    const/4 v1, 0x4

    aput-object v8, v10, v1

    const/4 v1, 0x5

    aput-object v9, v10, v1

    invoke-virtual {v0, v10}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto :goto_c5

    .line 1254
    :cond_b6
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModePickerAnimatorSet:Landroid/animation/AnimatorSet;

    iget-object v3, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModePickerAlphaAnimation:Landroid/animation/ObjectAnimator;

    iget-object v4, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModePickerTranslateAnimation:Landroid/animation/ObjectAnimator;

    new-array v1, v1, [Landroid/animation/Animator;

    aput-object v3, v1, v5

    aput-object v4, v1, v2

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1256
    :goto_c5
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModePickerAnimatorSet:Landroid/animation/AnimatorSet;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mPathInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1257
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModePickerAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v1, Lcom/transsion/camera/app/ui/ModePickerUI$7;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/ui/ModePickerUI$7;-><init>(Lcom/transsion/camera/app/ui/ModePickerUI;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1278
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModePickerAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-direct {p0}, Lcom/transsion/camera/app/ui/ModePickerUI;->getAnimatorDuration()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 1280
    :cond_e4
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/ModePickerUI;->updateCurrentModeUI()V

    return-void

    :array_e8
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_f0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_f8
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public showModePickerFromTBox()V
    .registers 14

    .line 1288
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportUI5MoreModeStyle:Z

    if-eqz v0, :cond_34

    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModePickerAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_34

    .line 1289
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_34

    .line 1290
    sget-object v0, Lcom/transsion/camera/app/ui/ModePickerUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showModePickerFromTBox: isStarted, mIsModeSwitching:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mIsModeSwitching:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1291
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mIsModeSwitching:Z

    if-eqz v0, :cond_33

    .line 1292
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModePickerAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_33
    return-void

    .line 1296
    :cond_34
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/ModePickerUI;->cancelAnimation()V

    .line 1297
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModePickerLayout:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_65

    .line 1298
    sget-object v0, Lcom/transsion/camera/app/ui/ModePickerUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showModePickerFromTBox: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModePickerLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModePickerLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/view/View;->getAlpha()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1300
    :cond_65
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/ModePickerUI;->isNeedShowModePickerAnim()Z

    move-result v0

    if-eqz v0, :cond_135

    .line 1301
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModePickerLayout:Landroid/widget/FrameLayout;

    const/4 v1, 0x2

    new-array v2, v1, [F

    fill-array-data v2, :array_13a

    const-string v3, "alpha"

    invoke-static {v0, v3, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModePickerAlphaAnimation:Landroid/animation/ObjectAnimator;

    .line 1302
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModePickerLayout:Landroid/widget/FrameLayout;

    iget v2, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mTBTranslateDistance:I

    int-to-float v2, v2

    new-array v4, v1, [F

    const/4 v5, 0x0

    aput v2, v4, v5

    const/4 v2, 0x1

    const/4 v6, 0x0

    aput v6, v4, v2

    const-string/jumbo v7, "translationY"

    invoke-static {v0, v7, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModePickerTranslateAnimation:Landroid/animation/ObjectAnimator;

    .line 1303
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mMoreModeGuideRightRoot:Landroid/view/View;

    new-array v4, v1, [F

    fill-array-data v4, :array_142

    invoke-static {v0, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 1304
    iget-object v4, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mMoreModeGuideRightRoot:Landroid/view/View;

    iget v8, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mTBTranslateDistance:I

    int-to-float v8, v8

    new-array v9, v1, [F

    aput v8, v9, v5

    aput v6, v9, v2

    invoke-static {v4, v7, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 1305
    iget-object v8, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mMoreModeCancelRoot:Landroid/view/View;

    new-array v9, v1, [F

    fill-array-data v9, :array_14a

    invoke-static {v8, v3, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 1306
    iget-object v8, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mMoreModeCancelRoot:Landroid/view/View;

    iget v9, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mTBTranslateDistance:I

    int-to-float v9, v9

    new-array v10, v1, [F

    aput v9, v10, v5

    aput v6, v10, v2

    invoke-static {v8, v7, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    .line 1307
    new-instance v7, Landroid/animation/AnimatorSet;

    invoke-direct {v7}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v7, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModePickerAnimatorSet:Landroid/animation/AnimatorSet;

    .line 1308
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/ModePickerUI;->isSupportUI5MoreModeStyle()Z

    move-result v7

    const/4 v8, 0x4

    const/4 v9, 0x3

    if-eqz v7, :cond_f7

    iget-object v7, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mCurrentModeName:Ljava/lang/String;

    invoke-virtual {p0, v7}, Lcom/transsion/camera/app/ui/ModePickerUI;->isTabLayoutMode(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_f7

    .line 1309
    iget-object v7, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModePickerAnimatorSet:Landroid/animation/AnimatorSet;

    iget-object v10, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModePickerAlphaAnimation:Landroid/animation/ObjectAnimator;

    iget-object v11, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModePickerTranslateAnimation:Landroid/animation/ObjectAnimator;

    const/4 v12, 0x6

    new-array v12, v12, [Landroid/animation/Animator;

    aput-object v10, v12, v5

    aput-object v11, v12, v2

    aput-object v0, v12, v1

    aput-object v4, v12, v9

    aput-object v3, v12, v8

    const/4 v0, 0x5

    aput-object v6, v12, v0

    invoke-virtual {v7, v12}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto :goto_10a

    .line 1312
    :cond_f7
    iget-object v3, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModePickerAnimatorSet:Landroid/animation/AnimatorSet;

    iget-object v6, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModePickerAlphaAnimation:Landroid/animation/ObjectAnimator;

    iget-object v7, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModePickerTranslateAnimation:Landroid/animation/ObjectAnimator;

    new-array v8, v8, [Landroid/animation/Animator;

    aput-object v6, v8, v5

    aput-object v7, v8, v2

    aput-object v0, v8, v1

    aput-object v4, v8, v9

    invoke-virtual {v3, v8}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1315
    :goto_10a
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModePickerAnimatorSet:Landroid/animation/AnimatorSet;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mTBPathInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1316
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModePickerAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v1, Lcom/transsion/camera/app/ui/ModePickerUI$8;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/ui/ModePickerUI$8;-><init>(Lcom/transsion/camera/app/ui/ModePickerUI;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1344
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportUI5MoreModeStyle:Z

    if-eqz v0, :cond_12a

    .line 1345
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModePickerAnimatorSet:Landroid/animation/AnimatorSet;

    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    .line 1347
    :cond_12a
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModePickerAnimatorSet:Landroid/animation/AnimatorSet;

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 1349
    :cond_135
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/ModePickerUI;->updateCurrentModeUI()V

    return-void

    nop

    :array_13a
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_142
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_14a
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public showModeRegionOnSinked(Z)V
    .registers 3

    .line 1366
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeSelector:Lcom/transsion/camera/app/ui/widget/VerticalModeSelector;

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_b

    goto :goto_f

    .line 1369
    :cond_b
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeTabLayout:Lcom/transsion/camera/app/ui/widget/TabLayout;

    if-nez v0, :cond_10

    :goto_f
    return-void

    .line 1372
    :cond_10
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/ModePickerUI;->chooseModeUIToShow(Z)V

    return-void
.end method

.method public showOrHideModePickerFromUnderwater(Z)V
    .registers 2

    .line 2520
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mRootView:Landroid/view/View;

    if-eqz p0, :cond_c

    if-eqz p1, :cond_8

    const/4 p1, 0x0

    goto :goto_9

    :cond_8
    const/4 p1, 0x4

    .line 2521
    :goto_9
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_c
    return-void
.end method

.method public showOrHideModePickerRootUI(ZZZZ)V
    .registers 31

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    .line 2323
    iget-object v5, v0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModePickerLayout:Landroid/widget/FrameLayout;

    if-nez v5, :cond_16

    .line 2324
    sget-object v0, Lcom/transsion/camera/app/ui/ModePickerUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "showOrHideModePickerRootUI: mModePickerLayout is null, return"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 2327
    :cond_16
    sget-object v5, Lcom/transsion/camera/app/ui/ModePickerUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[showOrHideModePickerRootUI] show: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", withAnim: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", isNeedStartDelay = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", hasNextShowAnim = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/Throwable;

    invoke-direct {v7}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v5, v6, v7}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2329
    iget-boolean v6, v0, Lcom/transsion/camera/app/ui/ModePickerUI;->mIsAnimationRunning:Z

    if-eqz v6, :cond_55

    if-eqz v1, :cond_55

    .line 2330
    const-string v0, "showOrHideModePickerRootUI: AnimationIsRunning, return"

    invoke-static {v5, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 2333
    :cond_55
    iget-object v6, v0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModePickerRootAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v6, :cond_5c

    .line 2334
    invoke-virtual {v6}, Landroid/animation/AnimatorSet;->cancel()V

    .line 2336
    :cond_5c
    iget-object v6, v0, Lcom/transsion/camera/app/ui/ModePickerUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    xor-int/lit8 v7, v1, 0x1

    invoke-interface {v6, v7}, Lcom/transsion/camera/app/common/IAppUI;->setModePickerSink(Z)V

    if-eqz v2, :cond_6b

    .line 2344
    invoke-direct {v0}, Lcom/transsion/camera/app/ui/ModePickerUI;->getAnimatorDuration()I

    move-result v2

    int-to-long v8, v2

    goto :goto_6d

    :cond_6b
    const-wide/16 v8, 0x0

    :goto_6d
    const/4 v2, 0x0

    if-eqz v1, :cond_72

    move v10, v2

    goto :goto_76

    .line 2346
    :cond_72
    invoke-direct {v0}, Lcom/transsion/camera/app/ui/ModePickerUI;->getTranslateDistance()I

    move-result v10

    .line 2347
    :goto_76
    iget v11, v0, Lcom/transsion/camera/app/ui/ModePickerUI;->mScreenFormType:I

    const/4 v12, 0x4

    const-string v14, "com.transsion.camera.feature.mode.more.MoreModeEntry"

    if-eq v11, v12, :cond_80

    const/4 v15, 0x5

    if-ne v11, v15, :cond_84

    :cond_80
    move/from16 v18, v2

    goto/16 :goto_259

    .line 2378
    :cond_84
    iget-object v11, v0, Lcom/transsion/camera/app/ui/ModePickerUI;->mCurrentModeName:Ljava/lang/String;

    invoke-static {v14, v11}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_92

    .line 2379
    const-string v0, "no need to operate ModePickerLayout in MoreMode!"

    invoke-static {v5, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 2383
    :cond_92
    new-instance v11, Landroid/animation/AnimatorSet;

    invoke-direct {v11}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v11, v0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModePickerRootAnimatorSet:Landroid/animation/AnimatorSet;

    .line 2384
    iget-object v11, v0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeArrow:Landroid/widget/ImageView;

    const-wide/16 v16, 0x0

    int-to-float v6, v1

    const/4 v7, 0x1

    move/from16 p2, v12

    new-array v12, v7, [F

    aput v6, v12, v2

    const-string v13, "alpha"

    invoke-static {v11, v13, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v11

    invoke-virtual {v11, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v11

    .line 2385
    iget-object v12, v0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModePickerLayout:Landroid/widget/FrameLayout;

    int-to-float v10, v10

    move/from16 v18, v2

    new-array v2, v7, [F

    aput v10, v2, v18

    const-string/jumbo v15, "translationY"

    invoke-static {v12, v15, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v2, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 2386
    iget-object v12, v0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModePickerLayout:Landroid/widget/FrameLayout;

    move-object/from16 v20, v2

    new-array v2, v7, [F

    aput v6, v2, v18

    invoke-static {v12, v13, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v2, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 2387
    iget-object v12, v0, Lcom/transsion/camera/app/ui/ModePickerUI;->mMoreModeGuideRightRoot:Landroid/view/View;

    move-object/from16 v21, v2

    new-array v2, v7, [F

    aput v6, v2, v18

    invoke-static {v12, v13, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v2, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 2388
    iget-object v12, v0, Lcom/transsion/camera/app/ui/ModePickerUI;->mMoreModeGuideRightRoot:Landroid/view/View;

    move-object/from16 v22, v2

    new-array v2, v7, [F

    aput v10, v2, v18

    invoke-static {v12, v15, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v2, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 2389
    iget-object v12, v0, Lcom/transsion/camera/app/ui/ModePickerUI;->mMoreModeCancelRoot:Landroid/view/View;

    move-object/from16 v23, v2

    new-array v2, v7, [F

    aput v10, v2, v18

    invoke-static {v12, v15, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v2, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 2390
    iget-object v12, v0, Lcom/transsion/camera/app/ui/ModePickerUI;->mMoreModeCancelRoot:Landroid/view/View;

    new-array v15, v7, [F

    aput v6, v15, v18

    invoke-static {v12, v13, v15}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    invoke-virtual {v6, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v6

    .line 2391
    iget-object v12, v0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeOrderProvider:Lcom/transsion/camera/app/mode/ModeOrderProvider;

    invoke-virtual {v12}, Lcom/transsion/camera/app/mode/ModeOrderProvider;->getConfig()Lcom/transsion/camera/app/mode/ModePickerConfig;

    move-result-object v12

    invoke-virtual {v12}, Lcom/transsion/camera/app/mode/ModePickerConfig;->modePickerStyleMore()Z

    move-result v12

    const/4 v15, 0x7

    const/16 v24, 0x6

    const/4 v13, 0x3

    const/16 v25, 0x2

    if-eqz v12, :cond_1e9

    .line 2392
    iget-object v12, v0, Lcom/transsion/camera/app/ui/ModePickerUI;->mMoreModeGuideRightRoot:Landroid/view/View;

    if-eqz v12, :cond_1b5

    iget-object v12, v0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeInformation:Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;

    .line 2393
    invoke-static {v12}, Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;->-$$Nest$mcurrentIsTabLayoutMode(Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;)Z

    move-result v12

    if-eqz v12, :cond_1b5

    iget-object v12, v0, Lcom/transsion/camera/app/ui/ModePickerUI;->mCurrentModeName:Ljava/lang/String;

    .line 2394
    invoke-static {v14, v12}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_1b5

    iget-object v12, v0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeOrderProvider:Lcom/transsion/camera/app/mode/ModeOrderProvider;

    .line 2395
    invoke-virtual {v12}, Lcom/transsion/camera/app/mode/ModeOrderProvider;->moreModeShow()Z

    move-result v12

    if-eqz v12, :cond_1b5

    .line 2396
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v2

    iget-boolean v2, v2, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportUI5MoreModeStyle:Z

    if-eqz v2, :cond_16e

    if-eqz v1, :cond_16e

    if-eqz v4, :cond_16e

    cmp-long v2, v8, v16

    if-nez v2, :cond_16e

    .line 2397
    iget-object v2, v0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModePickerRootAnimatorSet:Landroid/animation/AnimatorSet;

    new-array v4, v7, [Landroid/animation/Animator;

    aput-object v11, v4, v18

    invoke-virtual {v2, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 2398
    iget-object v2, v0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModePickerLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v10}, Landroid/view/View;->setTranslationY(F)V

    .line 2399
    iget-object v2, v0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModePickerLayout:Landroid/widget/FrameLayout;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/view/View;->setAlpha(F)V

    .line 2400
    iget-object v2, v0, Lcom/transsion/camera/app/ui/ModePickerUI;->mMoreModeGuideRightRoot:Landroid/view/View;

    invoke-virtual {v2, v10}, Landroid/view/View;->setTranslationY(F)V

    .line 2401
    iget-object v2, v0, Lcom/transsion/camera/app/ui/ModePickerUI;->mMoreModeGuideRightRoot:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setAlpha(F)V

    goto :goto_180

    .line 2403
    :cond_16e
    iget-object v2, v0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModePickerRootAnimatorSet:Landroid/animation/AnimatorSet;

    const/4 v4, 0x5

    new-array v4, v4, [Landroid/animation/Animator;

    aput-object v11, v4, v18

    aput-object v22, v4, v7

    aput-object v23, v4, v25

    aput-object v20, v4, v13

    aput-object v21, v4, p2

    invoke-virtual {v2, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 2405
    :goto_180
    iget-object v2, v0, Lcom/transsion/camera/app/ui/ModePickerUI;->mMoreModeGuideRightRoot:Landroid/view/View;

    if-eqz v1, :cond_18d

    invoke-direct {v0}, Lcom/transsion/camera/app/ui/ModePickerUI;->isShowMoreModeGuideView()Z

    move-result v4

    if-eqz v4, :cond_18d

    move/from16 v4, v18

    goto :goto_18f

    :cond_18d
    const/16 v4, 0x8

    :goto_18f
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 2406
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "more guide visibility: showOrHideModePickerRootUI: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_1a8

    invoke-direct {v0}, Lcom/transsion/camera/app/ui/ModePickerUI;->isShowMoreModeGuideView()Z

    move-result v4

    if-eqz v4, :cond_1a8

    const-string/jumbo v4, "visible"

    goto :goto_1aa

    :cond_1a8
    const-string v4, "gone"

    :goto_1aa
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_21c

    .line 2408
    :cond_1b5
    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/ModePickerUI;->isSupportUI5MoreModeStyle()Z

    move-result v4

    if-eqz v4, :cond_1db

    iget-object v4, v0, Lcom/transsion/camera/app/ui/ModePickerUI;->mCurrentModeName:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/transsion/camera/app/ui/ModePickerUI;->isTabLayoutMode(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1db

    .line 2409
    iget-object v4, v0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModePickerRootAnimatorSet:Landroid/animation/AnimatorSet;

    new-array v5, v15, [Landroid/animation/Animator;

    aput-object v11, v5, v18

    aput-object v20, v5, v7

    aput-object v21, v5, v25

    aput-object v22, v5, v13

    aput-object v23, v5, p2

    const/16 v19, 0x5

    aput-object v2, v5, v19

    aput-object v6, v5, v24

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto :goto_21c

    .line 2412
    :cond_1db
    iget-object v2, v0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModePickerRootAnimatorSet:Landroid/animation/AnimatorSet;

    new-array v4, v13, [Landroid/animation/Animator;

    aput-object v11, v4, v18

    aput-object v20, v4, v7

    aput-object v21, v4, v25

    invoke-virtual {v2, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto :goto_21c

    .line 2416
    :cond_1e9
    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/ModePickerUI;->isSupportUI5MoreModeStyle()Z

    move-result v4

    if-eqz v4, :cond_20f

    iget-object v4, v0, Lcom/transsion/camera/app/ui/ModePickerUI;->mCurrentModeName:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/transsion/camera/app/ui/ModePickerUI;->isTabLayoutMode(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_20f

    .line 2417
    iget-object v4, v0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModePickerRootAnimatorSet:Landroid/animation/AnimatorSet;

    new-array v5, v15, [Landroid/animation/Animator;

    aput-object v11, v5, v18

    aput-object v20, v5, v7

    aput-object v21, v5, v25

    aput-object v22, v5, v13

    aput-object v23, v5, p2

    const/16 v19, 0x5

    aput-object v2, v5, v19

    aput-object v6, v5, v24

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto :goto_21c

    .line 2420
    :cond_20f
    iget-object v2, v0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModePickerRootAnimatorSet:Landroid/animation/AnimatorSet;

    new-array v4, v13, [Landroid/animation/Animator;

    aput-object v11, v4, v18

    aput-object v20, v4, v7

    aput-object v21, v4, v25

    invoke-virtual {v2, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 2423
    :goto_21c
    iget-object v2, v0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModePickerRootAnimatorSet:Landroid/animation/AnimatorSet;

    iget-object v4, v0, Lcom/transsion/camera/app/ui/ModePickerUI;->mPathInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v2, v4}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    if-eqz v1, :cond_249

    .line 2425
    iget-object v1, v0, Lcom/transsion/camera/app/ui/ModePickerUI;->mAlphaPathInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v11, v1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    if-eqz v3, :cond_23e

    .line 2427
    iget-object v1, v0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModePickerRootAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v2

    iget-boolean v2, v2, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportUI5MoreModeStyle:Z

    if-eqz v2, :cond_239

    const-wide/16 v4, 0xfa

    goto :goto_23b

    :cond_239
    const-wide/16 v4, 0x64

    :goto_23b
    invoke-virtual {v1, v4, v5}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    .line 2429
    :cond_23e
    iget-object v1, v0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModePickerRootAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v2, Lcom/transsion/camera/app/ui/ModePickerUI$12;

    invoke-direct {v2, v0, v3}, Lcom/transsion/camera/app/ui/ModePickerUI$12;-><init>(Lcom/transsion/camera/app/ui/ModePickerUI;Z)V

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_253

    .line 2461
    :cond_249
    iget-object v1, v0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModePickerRootAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v2, Lcom/transsion/camera/app/ui/ModePickerUI$13;

    invoke-direct {v2, v0}, Lcom/transsion/camera/app/ui/ModePickerUI$13;-><init>(Lcom/transsion/camera/app/ui/ModePickerUI;)V

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2505
    :goto_253
    iget-object v0, v0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModePickerRootAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void

    .line 2349
    :goto_259
    iget-object v2, v0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeOrderProvider:Lcom/transsion/camera/app/mode/ModeOrderProvider;

    invoke-virtual {v2}, Lcom/transsion/camera/app/mode/ModeOrderProvider;->getConfig()Lcom/transsion/camera/app/mode/ModePickerConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/transsion/camera/app/mode/ModePickerConfig;->modePickerStyleMore()Z

    move-result v2

    if-eqz v2, :cond_2b2

    .line 2350
    iget-object v2, v0, Lcom/transsion/camera/app/ui/ModePickerUI;->mMoreModeGuideRightRoot:Landroid/view/View;

    if-eqz v2, :cond_2a4

    iget-object v2, v0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeInformation:Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;

    invoke-static {v2}, Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;->-$$Nest$mcurrentIsTabLayoutMode(Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;)Z

    move-result v2

    if-eqz v2, :cond_2a4

    iget-object v2, v0, Lcom/transsion/camera/app/ui/ModePickerUI;->mCurrentModeName:Ljava/lang/String;

    .line 2351
    invoke-static {v14, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2a4

    iget-object v2, v0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeOrderProvider:Lcom/transsion/camera/app/mode/ModeOrderProvider;

    .line 2352
    invoke-virtual {v2}, Lcom/transsion/camera/app/mode/ModeOrderProvider;->moreModeShow()Z

    move-result v2

    if-eqz v2, :cond_2a4

    .line 2353
    iget-object v2, v0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeArrow:Landroid/widget/ImageView;

    if-eqz v2, :cond_288

    .line 2354
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 2356
    :cond_288
    iget-object v2, v0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModePickerLayout:Landroid/widget/FrameLayout;

    int-to-float v3, v1

    invoke-virtual {v2, v3}, Landroid/view/View;->setAlpha(F)V

    .line 2357
    iget-object v2, v0, Lcom/transsion/camera/app/ui/ModePickerUI;->mMoreModeGuideRightRoot:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setAlpha(F)V

    .line 2358
    iget-object v2, v0, Lcom/transsion/camera/app/ui/ModePickerUI;->mMoreModeGuideRightRoot:Landroid/view/View;

    invoke-direct {v0}, Lcom/transsion/camera/app/ui/ModePickerUI;->isShowMoreModeGuideView()Z

    move-result v3

    if-eqz v3, :cond_29e

    move/from16 v13, v18

    goto :goto_2a0

    :cond_29e
    const/16 v13, 0x8

    :goto_2a0
    invoke-virtual {v2, v13}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2bf

    .line 2360
    :cond_2a4
    iget-object v2, v0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeArrow:Landroid/widget/ImageView;

    if-eqz v2, :cond_2ab

    .line 2361
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 2363
    :cond_2ab
    iget-object v2, v0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModePickerLayout:Landroid/widget/FrameLayout;

    int-to-float v3, v1

    invoke-virtual {v2, v3}, Landroid/view/View;->setAlpha(F)V

    goto :goto_2bf

    .line 2366
    :cond_2b2
    iget-object v2, v0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeArrow:Landroid/widget/ImageView;

    if-eqz v2, :cond_2b9

    .line 2367
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 2369
    :cond_2b9
    iget-object v2, v0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModePickerLayout:Landroid/widget/FrameLayout;

    int-to-float v3, v1

    invoke-virtual {v2, v3}, Landroid/view/View;->setAlpha(F)V

    :goto_2bf
    if-eqz v1, :cond_2cd

    .line 2372
    iget-object v0, v0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModePickerLayout:Landroid/widget/FrameLayout;

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2373
    const-string v0, "mode picker visibility: showOrHideModePickerRootUI set mode picker visible"

    invoke-static {v5, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :cond_2cd
    return-void
.end method

.method public startRecordingAnimation(ZLandroid/animation/Animator$AnimatorListener;)V
    .registers 7

    .line 3055
    sget-object v0, Lcom/transsion/camera/app/ui/ModePickerUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startRecordingAnimation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mRootView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 3056
    iget-object v1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mRootView:Landroid/view/View;

    invoke-interface {p0, v1, p1}, Lcom/transsion/camera/app/common/ui/anim/IRecordingAnimationManager;->isNextRecordingAnimationEnable(Landroid/view/View;Z)Z

    move-result v1

    if-eqz v1, :cond_69

    .line 3057
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startRecordingAnimation: isRecordBegin = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mRootView:Landroid/view/View;

    .line 3058
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mRootView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getAlpha()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3057
    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 3059
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mRecordingAnimator:Landroid/animation/Animator;

    invoke-static {v0}, Lcom/transsion/camera/utils/AnimationUtils;->stopAnimator(Landroid/animation/Animator;)V

    .line 3060
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mRootView:Landroid/view/View;

    invoke-interface {p0, v0, p1}, Lcom/transsion/camera/app/common/ui/anim/IRecordingAnimationManager;->createRecordingAnimationWithState(Landroid/view/View;Z)Landroid/animation/Animator;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mRecordingAnimator:Landroid/animation/Animator;

    if-eqz p2, :cond_64

    .line 3062
    invoke-virtual {p1, p2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 3064
    :cond_64
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mRecordingAnimator:Landroid/animation/Animator;

    invoke-virtual {p0}, Landroid/animation/Animator;->start()V

    :cond_69
    return-void
.end method

.method public stopScroll()V
    .registers 4

    .line 988
    const-string v0, "com.transsion.camera.feature.mode.more.MoreModeEntry"

    iget-object v1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mCurrentModeName:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_25

    .line 989
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeTabLayout:Lcom/transsion/camera/app/ui/widget/TabLayout;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/widget/TabLayout;->getCenterNearestIndex()I

    move-result v0

    .line 990
    iget-object v2, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeTabLayout:Lcom/transsion/camera/app/ui/widget/TabLayout;

    invoke-virtual {v2}, Lcom/transsion/camera/app/ui/widget/TabLayout;->getTabCount()I

    move-result v2

    sub-int/2addr v2, v1

    if-ne v0, v2, :cond_21

    .line 991
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mLeftGuideRootMoveFollowTab:Z

    if-nez v0, :cond_21

    .line 992
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/ModePickerUI;->enterMoreModeGuideAnimation()V

    .line 995
    :cond_21
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mLeftGuideRootMoveFollowTab:Z

    .line 996
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mStopScroll:Z

    .line 998
    :cond_25
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/ModePickerUI;->isSupportUI5MoreModeStyle()Z

    move-result v0

    if-eqz v0, :cond_35

    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mCurrentModeName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/ModePickerUI;->isTabLayoutMode(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_35

    .line 999
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mStopScroll:Z

    .line 1001
    :cond_35
    iget v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mScreenFormType:I

    if-eq v0, v1, :cond_53

    .line 1002
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/ModePickerUI;->isSupportUI5MoreModeStyle()Z

    move-result v0

    if-nez v0, :cond_47

    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeInformation:Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;->-$$Nest$mcurrentIsTabLayoutMode(Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;)Z

    move-result v0

    if-eqz v0, :cond_53

    .line 1004
    :cond_47
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeTabLayout:Lcom/transsion/camera/app/ui/widget/TabLayout;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/widget/TabLayout;->stopScroll()V

    .line 1005
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mCameraOperationControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    const/16 v0, 0xb9

    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    :cond_53
    return-void
.end method

.method public unInit()V
    .registers 3

    .line 1607
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportUI4Animator:Z

    if-eqz v0, :cond_d

    .line 1608
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mRecordingAnimator:Landroid/animation/Animator;

    invoke-static {v0}, Lcom/transsion/camera/utils/AnimationUtils;->stopAnimator(Landroid/animation/Animator;)V

    .line 1610
    :cond_d
    invoke-static {}, Lcom/transsion/camera/app/common/ModuleTransferManager;->getTransferManager()Lcom/transsion/camera/app/common/ModuleTransferManager;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mIModuleTransfer:Lcom/transsion/camera/app/common/IModuleTransfer;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ModuleTransferManager;->unregisterTransferListener(Lcom/transsion/camera/app/common/IModuleTransfer;)V

    .line 1611
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeArrowSvga:Lcom/opensource/svgaplayer/SVGAImageView;

    if-eqz p0, :cond_1d

    .line 1612
    invoke-virtual {p0}, Lcom/opensource/svgaplayer/SVGAImageView;->clear()V

    :cond_1d
    return-void
.end method

.method public updateArrowEnableState(Z)V
    .registers 2

    .line 2150
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeArrow:Landroid/widget/ImageView;

    if-eqz p0, :cond_7

    .line 2151
    invoke-virtual {p0, p1}, Landroid/view/View;->setClickable(Z)V

    :cond_7
    return-void
.end method

.method public updateCurrentCamera(Ljava/lang/String;)V
    .registers 4

    .line 1522
    iget-object p1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeOrderProvider:Lcom/transsion/camera/app/mode/ModeOrderProvider;

    invoke-virtual {p1}, Lcom/transsion/camera/app/mode/ModeOrderProvider;->getConfig()Lcom/transsion/camera/app/mode/ModePickerConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/camera/app/mode/ModePickerConfig;->modePickerStyleMore()Z

    move-result p1

    if-eqz p1, :cond_4f

    .line 1523
    iget-object p1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mMoreModeGuideRightRoot:Landroid/view/View;

    if-eqz p1, :cond_4f

    .line 1524
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeOrderProvider:Lcom/transsion/camera/app/mode/ModeOrderProvider;

    invoke-virtual {v0}, Lcom/transsion/camera/app/mode/ModeOrderProvider;->moreModeShow()Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-direct {p0}, Lcom/transsion/camera/app/ui/ModePickerUI;->isShowMoreModeGuideView()Z

    move-result v0

    if-eqz v0, :cond_20

    const/4 v0, 0x0

    goto :goto_22

    :cond_20
    const/16 v0, 0x8

    :goto_22
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1525
    sget-object p1, Lcom/transsion/camera/app/ui/ModePickerUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "more guide visibility: updateCurrentCamera: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeOrderProvider:Lcom/transsion/camera/app/mode/ModeOrderProvider;

    invoke-virtual {v1}, Lcom/transsion/camera/app/mode/ModeOrderProvider;->moreModeShow()Z

    move-result v1

    if-eqz v1, :cond_43

    invoke-direct {p0}, Lcom/transsion/camera/app/ui/ModePickerUI;->isShowMoreModeGuideView()Z

    move-result p0

    if-eqz p0, :cond_43

    const-string/jumbo p0, "visible"

    goto :goto_45

    :cond_43
    const-string p0, "gone"

    :goto_45
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :cond_4f
    return-void
.end method

.method public updateCurrentMode(Ljava/lang/String;ZZ)V
    .registers 5

    .line 1191
    iput-object p1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mCurrentModeName:Ljava/lang/String;

    .line 1192
    const-string v0, "com.transsion.camera.feature.mode.more.MoreModeEntry"

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 1193
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/ModePickerUI;->exitMoreModeGuideAnimation()V

    .line 1195
    :cond_d
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeInformation:Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;

    invoke-static {v0, p1}, Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;->-$$Nest$mupdateCurrentMode(Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;Ljava/lang/String;)V

    .line 1196
    invoke-virtual {p0, p2}, Lcom/transsion/camera/app/ui/ModePickerUI;->updateCurrentTab(Z)V

    .line 1197
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/ModePickerUI;->updateCurrentModeSelector()V

    .line 1198
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/ModePickerUI;->updateCurrentModeUI()V

    .line 1199
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/ModePickerUI;->isSupportUI5MoreModeStyle()Z

    move-result p1

    if-eqz p1, :cond_2e

    iget-object p1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mCurrentModeName:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/ModePickerUI;->isTabLayoutMode(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2e

    if-eqz p3, :cond_2e

    .line 1201
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/ModePickerUI;->updateMoreTabView()V

    :cond_2e
    const/4 p1, 0x0

    .line 1204
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mIsSelectMoreTabView:Z

    return-void
.end method

.method public updateCurrentTab(Z)V
    .registers 4

    .line 1137
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/ModePickerUI;->cannotUpdateCurrentTab()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1138
    sget-object p0, Lcom/transsion/camera/app/ui/ModePickerUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string/jumbo p1, "updateCurrentTab: cannot update currentTab "

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 1141
    :cond_f
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/ModePickerUI;->isSupportUI5MoreModeStyle()Z

    move-result v0

    if-eqz v0, :cond_2f

    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mCurrentModeName:Ljava/lang/String;

    .line 1142
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/ModePickerUI;->isTabLayoutMode(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2f

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mRestoreSettingsBegin:Z

    if-nez v0, :cond_2f

    const/4 v0, 0x1

    .line 1143
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mIsDisableEnterMoreAnimation:Z

    .line 1144
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeTabLayout:Lcom/transsion/camera/app/ui/widget/TabLayout;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/widget/TabLayout;->getTabCount()I

    move-result v1

    sub-int/2addr v1, v0

    invoke-virtual {p0, v1, p1}, Lcom/transsion/camera/app/ui/widget/TabLayout;->selectTabIndex(IZ)Z

    return-void

    .line 1147
    :cond_2f
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeTabLayout:Lcom/transsion/camera/app/ui/widget/TabLayout;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeInformation:Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;->-$$Nest$mcurrentModeIndexInTabLayout(Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;)I

    move-result p0

    invoke-virtual {v0, p0, p1}, Lcom/transsion/camera/app/ui/widget/TabLayout;->selectTabIndex(IZ)Z

    return-void
.end method

.method public updateGuideRightRootVisibleState(I)V
    .registers 4

    .line 723
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/ModePickerUI;->isShowMoreModeGuideView()Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_46

    .line 726
    :cond_7
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mMoreModeGuideRightRoot:Landroid/view/View;

    if-nez v0, :cond_c

    goto :goto_46

    :cond_c
    const/16 v1, 0x8

    if-eq p1, v1, :cond_47

    const/4 v1, 0x4

    if-ne p1, v1, :cond_14

    goto :goto_47

    .line 734
    :cond_14
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeOrderProvider:Lcom/transsion/camera/app/mode/ModeOrderProvider;

    invoke-virtual {v0}, Lcom/transsion/camera/app/mode/ModeOrderProvider;->getConfig()Lcom/transsion/camera/app/mode/ModePickerConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/app/mode/ModePickerConfig;->modePickerStyleMore()Z

    move-result v0

    if-eqz v0, :cond_46

    const-string v0, "com.transsion.camera.feature.mode.more.MoreModeEntry"

    iget-object v1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mCurrentModeName:Ljava/lang/String;

    .line 735
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_46

    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeInformation:Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;

    .line 736
    invoke-static {v0}, Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;->-$$Nest$mcurrentIsTabLayoutMode(Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;)Z

    move-result v0

    if-eqz v0, :cond_46

    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeOrderProvider:Lcom/transsion/camera/app/mode/ModeOrderProvider;

    .line 737
    invoke-virtual {v0}, Lcom/transsion/camera/app/mode/ModeOrderProvider;->moreModeShow()Z

    move-result v0

    if-eqz v0, :cond_46

    .line 738
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mMoreModeGuideRightRoot:Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 739
    sget-object p0, Lcom/transsion/camera/app/ui/ModePickerUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "more guide visibility: updateGuideRightRootVisibleState: state = visible"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :cond_46
    :goto_46
    return-void

    .line 730
    :cond_47
    :goto_47
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 731
    sget-object p0, Lcom/transsion/camera/app/ui/ModePickerUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "more guide visibility: updateGuideRightRootVisibleState: state = gone or invisible"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public updateMode(Ljava/lang/String;)V
    .registers 3

    if-eqz p1, :cond_16

    .line 1232
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeInformation:Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;->-$$Nest$mcurrentModeFeatureName(Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    .line 1233
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeInformation:Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;

    invoke-static {v0, p1}, Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;->-$$Nest$mupdateCurrentMode(Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;Ljava/lang/String;)V

    .line 1234
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/ModePickerUI;->updateCurrentModeAndNotify()V

    :cond_16
    return-void
.end method

.method public updateModeArrowState(ZZ)V
    .registers 5

    .line 2177
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeArrow:Landroid/widget/ImageView;

    if-eqz v0, :cond_4c

    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeArrowSvga:Lcom/opensource/svgaplayer/SVGAImageView;

    if-nez v0, :cond_9

    goto :goto_4c

    .line 2181
    :cond_9
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mUpdateArrowStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2182
    :try_start_c
    iget-object v1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mSVGAParser:Lcom/opensource/svgaplayer/SVGAParser;

    if-nez v1, :cond_1e

    .line 2183
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mUpdateArrowState:Ljava/util/List;

    new-instance v1, Lcom/transsion/camera/app/ui/ModePickerUI$UpdateArrowState;

    invoke-direct {v1, p1, p2}, Lcom/transsion/camera/app/ui/ModePickerUI$UpdateArrowState;-><init>(ZZ)V

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2184
    monitor-exit v0

    return-void

    :catchall_1c
    move-exception p0

    goto :goto_4a

    .line 2186
    :cond_1e
    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_c .. :try_end_1f} :catchall_1c

    if-eqz p1, :cond_35

    .line 2189
    iget-object p1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeArrow:Landroid/widget/ImageView;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    if-eqz p2, :cond_2f

    .line 2191
    const-string p1, "mode_picker_arrow_min_anim.svga"

    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/ModePickerUI;->playSvgaAnimation(Ljava/lang/String;)V

    return-void

    .line 2193
    :cond_2f
    const-string p1, "mode_picker_arrow_anim.svga"

    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/ModePickerUI;->playSvgaAnimation(Ljava/lang/String;)V

    return-void

    .line 2196
    :cond_35
    iget-object p1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeArrowSvga:Lcom/opensource/svgaplayer/SVGAImageView;

    invoke-virtual {p1}, Lcom/opensource/svgaplayer/SVGAImageView;->isAnimating()Z

    move-result p1

    if-eqz p1, :cond_4c

    .line 2197
    sget-object p1, Lcom/transsion/camera/app/ui/ModePickerUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p2, "[updateModeArrowState] stopAnimation."

    invoke-static {p1, p2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 2198
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeArrowSvga:Lcom/opensource/svgaplayer/SVGAImageView;

    invoke-virtual {p0}, Lcom/opensource/svgaplayer/SVGAImageView;->stopAnimation()V

    return-void

    .line 2186
    :goto_4a
    :try_start_4a
    monitor-exit v0
    :try_end_4b
    .catchall {:try_start_4a .. :try_end_4b} :catchall_1c

    throw p0

    :cond_4c
    :goto_4c
    return-void
.end method

.method public updateModeArrowVisibility(Z)V
    .registers 7

    .line 2156
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeArrowSvga:Lcom/opensource/svgaplayer/SVGAImageView;

    if-eqz v0, :cond_16

    invoke-virtual {v0}, Lcom/opensource/svgaplayer/SVGAImageView;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 2157
    sget-object v0, Lcom/transsion/camera/app/ui/ModePickerUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "[updateModeArrowVisibility] stopAnimation."

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 2158
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeArrowSvga:Lcom/opensource/svgaplayer/SVGAImageView;

    invoke-virtual {v0}, Lcom/opensource/svgaplayer/SVGAImageView;->stopAnimation()V

    .line 2161
    :cond_16
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeArrowRoot:Landroid/view/View;

    const/4 v1, 0x4

    const/4 v2, 0x0

    if-eqz v0, :cond_2c

    if-eqz p1, :cond_28

    .line 2162
    iget-object v3, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeInformation:Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;

    invoke-static {v3}, Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;->-$$Nest$fgetmCurrentIsTabLayoutMode(Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;)Z

    move-result v3

    if-eqz v3, :cond_28

    move v3, v2

    goto :goto_29

    :cond_28
    move v3, v1

    :goto_29
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 2165
    :cond_2c
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeArrow:Landroid/widget/ImageView;

    if-eqz v0, :cond_67

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/ModePickerUI;->isModePanelGuideSupported()Z

    move-result v0

    if-nez v0, :cond_67

    .line 2166
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/transsion/camera/R$array;->build_in_features_back_mode_order:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 2167
    iget-object v3, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/transsion/camera/R$array;->build_in_features_front_mode_order:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 2168
    array-length v0, v0

    array-length v3, v3

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/4 v3, 0x6

    if-ge v0, v3, :cond_5f

    .line 2169
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeArrow:Landroid/widget/ImageView;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void

    .line 2171
    :cond_5f
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeArrow:Landroid/widget/ImageView;

    if-eqz p1, :cond_64

    move v1, v2

    :cond_64
    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_67
    return-void
.end method

.method public updateModes(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 6

    .line 1182
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeInformation:Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;->-$$Nest$mupdateModeListAndDefaultMode(Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;I)V

    const/4 p1, 0x0

    .line 1183
    invoke-direct {p0, p2, p1}, Lcom/transsion/camera/app/ui/ModePickerUI;->updateModeTabLayout(Ljava/lang/String;Z)V

    .line 1184
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/ModePickerUI;->updateModeSelectorLayout()V

    .line 1185
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/ModePickerUI;->updateCurrentTab(Z)V

    .line 1186
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/ModePickerUI;->updateCurrentModeSelector()V

    return-void
.end method

.method public updateModes(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 6

    .line 1172
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeInformation:Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;

    invoke-static {v0, p1, p2, p3}, Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;->-$$Nest$mupdateModeListAndDefaultMode(Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p4, :cond_8

    move-object p2, p3

    .line 1173
    :cond_8
    invoke-direct {p0, p2, p4}, Lcom/transsion/camera/app/ui/ModePickerUI;->updateModeTabLayout(Ljava/lang/String;Z)V

    .line 1174
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/ModePickerUI;->updateModeSelectorLayout()V

    const/4 p1, 0x0

    .line 1175
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/ModePickerUI;->updateCurrentTab(Z)V

    .line 1176
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/ModePickerUI;->updateCurrentModeSelector()V

    .line 1177
    iget p1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mOrientation:I

    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/ModePickerUI;->updateModePickerRotation(I)V

    return-void
.end method

.method public updateMoreEditMode(Z)V
    .registers 2

    .line 1922
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mIsEditMode:Z

    return-void
.end method

.method public updateMoreGuideState(Z)V
    .registers 7

    .line 1926
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mMoreModeGuideRightRoot:Landroid/view/View;

    if-eqz v0, :cond_ca

    .line 1927
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/ModePickerUI;->isShowMoreModeGuideView()Z

    move-result v0

    if-nez v0, :cond_c

    goto/16 :goto_ca

    .line 1930
    :cond_c
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeOrderProvider:Lcom/transsion/camera/app/mode/ModeOrderProvider;

    invoke-virtual {v0}, Lcom/transsion/camera/app/mode/ModeOrderProvider;->moreModeShow()Z

    move-result v0

    const/4 v1, 0x1

    const-string v2, "com.transsion.camera.feature.mode.more.MoreModeEntry"

    const/4 v3, 0x0

    if-eqz v0, :cond_36

    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mCurrentModeUI:Lcom/transsion/camera/app/ui/ModePickerUI$CurrentModeUI;

    .line 1931
    invoke-static {v0}, Lcom/transsion/camera/app/ui/ModePickerUI$CurrentModeUI;->-$$Nest$misVisible(Lcom/transsion/camera/app/ui/ModePickerUI$CurrentModeUI;)Z

    move-result v0

    if-nez v0, :cond_36

    .line 1932
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/ModePickerUI;->isFilterPanelShow()Z

    move-result v0

    if-nez v0, :cond_36

    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeInformation:Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;->-$$Nest$fgetmCurrentModeItem(Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;)Lcom/transsion/camera/app/common/FeatureResource;

    move-result-object v0

    iget-object v0, v0, Lcom/transsion/camera/app/common/FeatureResource;->mFeatureName:Ljava/lang/String;

    .line 1933
    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_36

    move v0, v1

    goto :goto_37

    :cond_36
    move v0, v3

    .line 1935
    :goto_37
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result v4

    if-eqz v4, :cond_46

    if-eqz v0, :cond_44

    .line 1936
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mIsInstantZoomShow:Z

    if-nez v0, :cond_44

    goto :goto_45

    :cond_44
    move v1, v3

    :goto_45
    move v0, v1

    .line 1939
    :cond_46
    iget-object v1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mMoreModeGuideRightRoot:Landroid/view/View;

    if-eqz v0, :cond_4b

    goto :goto_4d

    :cond_4b
    const/16 v3, 0x8

    :goto_4d
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1940
    sget-object v0, Lcom/transsion/camera/app/ui/ModePickerUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "more guide visibility: moreModeShow: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeOrderProvider:Lcom/transsion/camera/app/mode/ModeOrderProvider;

    .line 1941
    invoke-virtual {v3}, Lcom/transsion/camera/app/mode/ModeOrderProvider;->moreModeShow()Z

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", mCurrentModeUI visibility: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mCurrentModeUI:Lcom/transsion/camera/app/ui/ModePickerUI$CurrentModeUI;

    .line 1942
    invoke-static {v3}, Lcom/transsion/camera/app/ui/ModePickerUI$CurrentModeUI;->-$$Nest$misVisible(Lcom/transsion/camera/app/ui/ModePickerUI$CurrentModeUI;)Z

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", isfilterPanelShow: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1943
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/ModePickerUI;->isFilterPanelShow()Z

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", mIsInstantZoomShow: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mIsInstantZoomShow:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", mModeInformation.mCurrentModeItem.mFeatureName: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeInformation:Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;

    invoke-static {v3}, Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;->-$$Nest$fgetmCurrentModeItem(Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;)Lcom/transsion/camera/app/common/FeatureResource;

    move-result-object v3

    iget-object v3, v3, Lcom/transsion/camera/app/common/FeatureResource;->mFeatureName:Ljava/lang/String;

    .line 1945
    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1940
    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1946
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "more guide visibility: updateMoreGuideState set  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mMoreModeGuideRightRoot:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_b9

    const-string v2, "VISIBLE"

    goto :goto_bb

    :cond_b9
    const-string v2, "GONE"

    :goto_bb
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1947
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mMoreModeRightGuide:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Landroid/view/View;->setClickable(Z)V

    :cond_ca
    :goto_ca
    return-void
.end method

.method public updateMoreTabView()V
    .registers 3

    .line 2630
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/ModePickerUI;->isSupportUI5MoreModeStyle()Z

    move-result v0

    if-eqz v0, :cond_40

    .line 2631
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeTabLayout:Lcom/transsion/camera/app/ui/widget/TabLayout;

    if-nez v0, :cond_b

    goto :goto_40

    .line 2634
    :cond_b
    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/widget/TabLayout;->getMoreTabView()Lcom/transsion/camera/app/ui/widget/TabLayout$TabView;

    move-result-object v0

    if-nez v0, :cond_12

    goto :goto_40

    .line 2638
    :cond_12
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mMoreModeCancelRoot:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2639
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mCurrentModeName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/ModePickerUI;->isTabLayoutMode(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2d

    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mMoreTabChangeListener:Lcom/transsion/camera/app/common/IAppUIListener$IMoreTabChangeListener;

    if-eqz v0, :cond_2d

    const/4 v1, 0x1

    .line 2640
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mIsSelectMoreTabView:Z

    .line 2641
    iget-object v1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mCurrentModeName:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUIListener$IMoreTabChangeListener;->onMoreTabChanged(Ljava/lang/String;)V

    .line 2643
    :cond_2d
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeTabLayout:Lcom/transsion/camera/app/ui/widget/TabLayout;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/widget/TabLayout;->updateHeadFootPadding()V

    .line 2644
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeTabLayout:Lcom/transsion/camera/app/ui/widget/TabLayout;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/transsion/camera/app/ui/ModePickerUI$15;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/ui/ModePickerUI$15;-><init>(Lcom/transsion/camera/app/ui/ModePickerUI;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :cond_40
    :goto_40
    return-void
.end method

.method public updatePreviewRect(Landroid/graphics/Rect;)V
    .registers 2

    return-void
.end method

.method public updateRecordingState(Z)V
    .registers 2

    .line 2314
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mIsRecording:Z

    const/4 p1, 0x0

    .line 2315
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/ModePickerUI;->chooseModeUIToShow(Z)V

    return-void
.end method

.method public updateTabFeatureName()V
    .registers 4

    .line 2138
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeTabLayout:Lcom/transsion/camera/app/ui/widget/TabLayout;

    if-eqz v0, :cond_23

    const/4 v0, 0x0

    .line 2139
    :goto_5
    iget-object v1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeTabLayout:Lcom/transsion/camera/app/ui/widget/TabLayout;

    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/widget/TabLayout;->getTabCount()I

    move-result v1

    if-ge v0, v1, :cond_23

    .line 2140
    iget-object v1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeInformation:Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;

    invoke-static {v1, v0}, Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;->-$$Nest$mgetTabLayoutMode(Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;I)Lcom/transsion/camera/app/common/FeatureResource;

    move-result-object v1

    .line 2141
    iget-object v2, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeTabLayout:Lcom/transsion/camera/app/ui/widget/TabLayout;

    invoke-virtual {v2, v0}, Lcom/transsion/camera/app/ui/widget/TabLayout;->getTabAt(I)Lcom/transsion/camera/app/ui/widget/TabLayout$Tab;

    move-result-object v2

    if-eqz v2, :cond_20

    .line 2143
    iget-object v1, v1, Lcom/transsion/camera/app/common/FeatureResource;->mFeatureName:Ljava/lang/String;

    invoke-virtual {v2, v1}, Lcom/transsion/camera/app/ui/widget/TabLayout$Tab;->setFeatureName(Ljava/lang/String;)Lcom/transsion/camera/app/ui/widget/TabLayout$Tab;

    :cond_20
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_23
    return-void
.end method

.method public updateTabIndexOnPause(Ljava/lang/String;)V
    .registers 3

    if-eqz p1, :cond_1f

    .line 2696
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeInformation:Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;->-$$Nest$mcurrentModeFeatureName(Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1f

    .line 2697
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeInformation:Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;

    invoke-static {v0, p1}, Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;->-$$Nest$mupdateCurrentMode(Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;Ljava/lang/String;)V

    .line 2698
    iget-object p1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeTabLayout:Lcom/transsion/camera/app/ui/widget/TabLayout;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeInformation:Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;->-$$Nest$mcurrentModeIndexInTabLayout(Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;)I

    move-result p0

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Lcom/transsion/camera/app/ui/widget/TabLayout;->selectTabIndex(IZ)Z

    :cond_1f
    return-void
.end method

.method public updateTabIndexOnResume(Ljava/lang/String;)V
    .registers 5

    .line 2685
    sget-object v0, Lcom/transsion/camera/app/ui/ModePickerUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateTabIndexOnResume currentMode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", currentModeFeatureName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeInformation:Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;

    .line 2686
    invoke-static {v2}, Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;->-$$Nest$mcurrentModeFeatureName(Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2685
    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 2687
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mFromResume:Z

    .line 2689
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeTabLayout:Lcom/transsion/camera/app/ui/widget/TabLayout;

    if-eqz v0, :cond_3d

    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeInformation:Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;->-$$Nest$mcurrentModeFeatureName(Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3d

    .line 2690
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeTabLayout:Lcom/transsion/camera/app/ui/widget/TabLayout;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/widget/TabLayout;->checkTabIndex()V

    :cond_3d
    return-void
.end method

.method public updateTabSellingPointState()V
    .registers 6

    .line 2127
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeTabLayout:Lcom/transsion/camera/app/ui/widget/TabLayout;

    if-eqz v0, :cond_38

    const/4 v0, 0x0

    move v1, v0

    .line 2128
    :goto_6
    iget-object v2, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeTabLayout:Lcom/transsion/camera/app/ui/widget/TabLayout;

    invoke-virtual {v2}, Lcom/transsion/camera/app/ui/widget/TabLayout;->getTabCount()I

    move-result v2

    if-ge v1, v2, :cond_38

    .line 2129
    iget-object v2, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeInformation:Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;

    invoke-static {v2, v1}, Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;->-$$Nest$mgetTabLayoutMode(Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;I)Lcom/transsion/camera/app/common/FeatureResource;

    move-result-object v2

    .line 2130
    iget-object v3, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mSellingPointItems:Ljava/util/List;

    iget-object v4, v2, Lcom/transsion/camera/app/common/FeatureResource;->mFeatureName:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_2b

    iget-object v3, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mContext:Landroid/content/Context;

    iget-object v2, v2, Lcom/transsion/camera/app/common/FeatureResource;->mFeatureName:Ljava/lang/String;

    .line 2131
    invoke-static {v3, v2}, Lcom/transsion/camera/app/ui/mode/ModeUIItem;->getVal(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2b

    const/4 v2, 0x1

    goto :goto_2c

    :cond_2b
    move v2, v0

    .line 2132
    :goto_2c
    iget-object v3, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeTabLayout:Lcom/transsion/camera/app/ui/widget/TabLayout;

    invoke-virtual {v3, v1}, Lcom/transsion/camera/app/ui/widget/TabLayout;->getTabAt(I)Lcom/transsion/camera/app/ui/widget/TabLayout$Tab;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/transsion/camera/app/ui/widget/TabLayout$Tab;->setShowPointIcon(Z)Lcom/transsion/camera/app/ui/widget/TabLayout$Tab;

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_38
    return-void
.end method
