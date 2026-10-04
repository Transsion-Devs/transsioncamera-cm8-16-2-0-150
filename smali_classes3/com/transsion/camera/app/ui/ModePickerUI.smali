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
        Lcom/transsion/camera/app/ui/ModePickerUI$ModeChangedListenerWrapper;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
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

.field private mOrientation:I

.field private mPanelShow:Z

.field private mPathInterpolator:Landroid/view/animation/PathInterpolator;

.field private mPortraitSpotUIShow:Z

.field private mRecordingAnimator:Landroid/animation/Animator;

.field private mRestoreSettingsBegin:Z

.field private mRootView:Landroid/view/View;

.field private mScreenFormType:I

.field private mScreenFormTypeChanged:Z

.field private final mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

.field private final mScreenWidth:I

.field private mSelfTimerBegin:Z

.field private mSellingPointItems:Ljava/util/List;

.field private mSpecifyMode:Ljava/lang/String;

.field private mStopScroll:Z

.field private mTBPathInterpolator:Landroid/view/animation/PathInterpolator;

.field private mTBTranslateDistance:I

.field private mTranslateDistance:I

.field private final mTranslationXInterpolator:Landroid/view/animation/PathInterpolator;

.field private mVipSelfieQuiting:Z


# direct methods
.method public static synthetic $r8$lambda$BCgltnmLP2HMrTKAed8A4-5274s(Lcom/transsion/camera/app/ui/ModePickerUI;Landroid/widget/FrameLayout$LayoutParams;Landroid/animation/ValueAnimator;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/ui/ModePickerUI;->lambda$updateLayoutParams$8(Landroid/widget/FrameLayout$LayoutParams;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$BvacuP0wq8E1IwxSM2qy12gNXWU(Lcom/transsion/camera/app/ui/ModePickerUI;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/ModePickerUI;->lambda$updateMoreCancelRootState$9()V

    return-void
.end method

.method public static synthetic $r8$lambda$FWHe_mX38Jn1YcdGHjyIcaf2M9c(Lcom/transsion/camera/app/ui/ModePickerUI;Landroid/view/View;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/ModePickerUI;->lambda$setupViews$4(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Syiv0l8djzZuGyO_JBWX2zV_000(Lcom/transsion/camera/app/ui/ModePickerUI;Landroid/animation/ValueAnimator;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/ModePickerUI;->lambda$exitMoreModeGuideAnimation$7(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$U-OWi2f85rbJDPiJZlLPiT_nhxQ(Lcom/transsion/camera/app/ui/ModePickerUI;Landroid/view/View;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/ModePickerUI;->switchDefaultMode(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$YXDv1TUGxPelR6rsk8rgOIQb00E(Lcom/transsion/camera/app/ui/ModePickerUI;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/ModePickerUI;->lambda$switchDefaultMode$5()V

    return-void
.end method

.method public static synthetic $r8$lambda$bLtayHaa2sLtAoFxJCPfmQfWQ-E(Lcom/transsion/camera/app/ui/ModePickerUI;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/ModePickerUI;->lambda$new$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$bhm4AJEQdIoC60A8zIb-36B_DVI(Lcom/transsion/camera/app/ui/ModePickerUI;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/ModePickerUI;->lambda$abortShowOrHideModePickerRootUI$10()V

    return-void
.end method

.method public static synthetic $r8$lambda$cKceh6GPfp7YueIlB7-SMXPhs1o(Lcom/transsion/camera/app/ui/ModePickerUI;Landroid/animation/ValueAnimator;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/ModePickerUI;->lambda$enterMoreModeGuideAnimation$6(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$dCdg17wz6BCkIRFEiBMAcN0bRKM(Lcom/transsion/camera/app/ui/ModePickerUI;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/ModePickerUI;->lambda$setupViews$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$jOCEg6MqA74Xi1QqfM8agslxLF8(Lcom/transsion/camera/app/ui/ModePickerUI;Lcom/transsion/camera/app/ui/widget/TabLayout$TabView;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/ModePickerUI;->lambda$selectMoreTabView$1(Lcom/transsion/camera/app/ui/widget/TabLayout$TabView;)V

    return-void
.end method

.method public static synthetic $r8$lambda$vx2dzLeACzhWFJjYZ1DfuFrPJik(Lcom/transsion/camera/app/ui/ModePickerUI;Lcom/transsion/camera/app/common/storage/DataStore;Landroid/view/View;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/ui/ModePickerUI;->lambda$setupViews$3(Lcom/transsion/camera/app/common/storage/DataStore;Landroid/view/View;)V

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

    .line 86
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "ModePickerUI"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/ui/ModePickerUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/transsion/camera/app/ui/ModeSwitchScroller;Lcom/transsion/camera/app/ui/ModeHorizontalScroll2;Landroid/content/Context;Lcom/transsion/camera/app/ui/ScrollConsumer;Lcom/transsion/camera/app/mode/ModeOrderProvider;Lcom/transsion/camera/app/ui/ScreenManager;)V
    .registers 12

    .line 260
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    new-instance p4, Landroid/view/animation/PathInterpolator;

    const v0, 0x3ea8f5c3    # 0.33f

    const/4 v1, 0x0

    const v2, 0x3f28f5c3    # 0.66f

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {p4, v0, v1, v2, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object p4, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mGuideAlphaInterpolator:Landroid/view/animation/PathInterpolator;

    .line 91
    new-instance p4, Landroid/view/animation/PathInterpolator;

    const/high16 v0, 0x3e800000    # 0.25f

    invoke-direct {p4, v0, v1, v1, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object p4, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mTranslationXInterpolator:Landroid/view/animation/PathInterpolator;

    const/4 p4, 0x0

    .line 98
    iput-boolean p4, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mIsModeSwitching:Z

    .line 99
    iput-boolean p4, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mIsAnimationRunning:Z

    const/4 v2, -0x1

    .line 113
    iput v2, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mOrientation:I

    .line 123
    iput-boolean p4, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mIsCameraSwitching:Z

    .line 124
    iput-boolean p4, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mSelfTimerBegin:Z

    .line 125
    iput-boolean p4, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mRestoreSettingsBegin:Z

    .line 126
    iput-boolean p4, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mFilterUIShow:Z

    .line 127
    iput-boolean p4, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mCelebrityUIShow:Z

    .line 128
    iput-boolean p4, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mPortraitSpotUIShow:Z

    .line 129
    iput-boolean p4, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mMakeUpUIShow:Z

    .line 130
    iput-boolean p4, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mFaceBeautyUIShow:Z

    .line 131
    iput-boolean p4, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mPanelShow:Z

    .line 132
    iput-boolean p4, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mIsDisableEnterMoreAnimation:Z

    .line 134
    iput-boolean p4, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mIsResumeAfterEdit:Z

    .line 135
    iput-boolean p4, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mFromResume:Z

    .line 137
    new-instance v2, Landroid/view/animation/PathInterpolator;

    invoke-direct {v2, v0, v1, v1, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v2, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mPathInterpolator:Landroid/view/animation/PathInterpolator;

    .line 138
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v2, 0x3e4ccccd    # 0.2f

    const v4, 0x3dcccccd    # 0.1f

    invoke-direct {v0, v2, v1, v4, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mTBPathInterpolator:Landroid/view/animation/PathInterpolator;

    const/4 v0, 0x1

    .line 140
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mLeftGuideRootMoveFollowTab:Z

    .line 165
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mMoreModeGuideAnim:Landroid/animation/AnimatorSet;

    .line 175
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mMainHandler:Landroid/os/Handler;

    .line 179
    iput-boolean p4, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mIsInstantZoomShow:Z

    .line 181
    iput-boolean p4, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mIsRecording:Z

    .line 186
    iput-boolean p4, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mIsAnimationCanceled:Z

    .line 187
    iput-boolean p4, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mIsFocusable:Z

    .line 188
    new-instance p4, Lcom/transsion/camera/app/ui/ModePickerUI$$ExternalSyntheticLambda5;

    invoke-direct {p4, p0}, Lcom/transsion/camera/app/ui/ModePickerUI$$ExternalSyntheticLambda5;-><init>(Lcom/transsion/camera/app/ui/ModePickerUI;)V

    iput-object p4, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModePickerRootAnimatorStartAction:Ljava/lang/Runnable;

    .line 2741
    new-instance p4, Lcom/transsion/camera/app/ui/ModePickerUI$16;

    invoke-direct {p4, p0}, Lcom/transsion/camera/app/ui/ModePickerUI$16;-><init>(Lcom/transsion/camera/app/ui/ModePickerUI;)V

    iput-object p4, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mIModuleTransfer:Lcom/transsion/camera/app/common/IModuleTransfer;

    .line 261
    iput-object p1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeSwitchScroller:Lcom/transsion/camera/app/ui/ModeSwitchScroller;

    .line 262
    iput-object p2, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeHorizontalScroll:Lcom/transsion/camera/app/ui/ModeHorizontalScroll2;

    .line 263
    iput-object p6, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    .line 264
    invoke-virtual {p6}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenFormType()I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mScreenFormType:I

    .line 265
    iput-object p3, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mContext:Landroid/content/Context;

    .line 266
    iput-object p5, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeOrderProvider:Lcom/transsion/camera/app/mode/ModeOrderProvider;

    .line 267
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/transsion/camera/R$array;->build_in_selling_points:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mSellingPointItems:Ljava/util/List;

    .line 268
    new-instance p1, Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;

    invoke-direct {p1, p0, p5}, Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;-><init>(Lcom/transsion/camera/app/ui/ModePickerUI;Lcom/transsion/camera/app/mode/ModeOrderProvider;)V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeInformation:Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;

    .line 269
    iget-object p1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/transsion/camera/utils/ScreenUtils;->getRealMetrics(Landroid/content/Context;)Landroid/util/DisplayMetrics;

    move-result-object p1

    .line 270
    iget p1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput p1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mScreenWidth:I

    .line 271
    iget-object p1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/transsion/camera/R$dimen;->sink_modepicker:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mTranslateDistance:I

    .line 272
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

    .line 2097
    invoke-virtual {p1}, Landroid/animation/Animator;->isStarted()Z

    move-result p0

    if-nez p0, :cond_e

    invoke-virtual {p1}, Landroid/animation/Animator;->isRunning()Z

    move-result p0

    if-eqz p0, :cond_22

    .line 2098
    :cond_e
    invoke-virtual {p1}, Landroid/animation/Animator;->cancel()V

    .line 2099
    invoke-virtual {p1}, Landroid/animation/Animator;->removeAllListeners()V

    if-eqz p2, :cond_22

    .line 2101
    array-length p0, p2

    const/4 p1, 0x0

    :goto_18
    if-ge p1, p0, :cond_22

    aget-object v0, p2, p1

    .line 2102
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    add-int/lit8 p1, p1, 0x1

    goto :goto_18

    :cond_22
    return-void
.end method

.method private cancelModePickerUIAnimation()V
    .registers 2

    .line 618
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModePickerIn:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 619
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModePickerIn:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 621
    :cond_f
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModePickerOut:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_1e

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 622
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModePickerOut:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Landroid/animation/Animator;->cancel()V

    :cond_1e
    return-void
.end method

.method private cannotUpdateCurrentTab()Z
    .registers 5

    .line 1043
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

    .line 1044
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

    .line 1045
    iget-object v2, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeInformation:Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;

    invoke-static {v2}, Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;->-$$Nest$mcurrentIsTabLayoutMode(Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;)Z

    move-result v2

    if-nez v2, :cond_45

    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mFromResume:Z

    if-nez v2, :cond_45

    .line 1046
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/ModePickerUI;->notifyModeSwitch()V

    :cond_45
    if-eqz v0, :cond_6c

    .line 1049
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

    .line 1937
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

    .line 1939
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

    .line 2378
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeTabLayout:Lcom/transsion/camera/app/ui/widget/TabLayout;

    if-eqz v0, :cond_120

    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mCurrentModeUI:Lcom/transsion/camera/app/ui/ModePickerUI$CurrentModeUI;

    if-nez v0, :cond_a

    goto/16 :goto_120

    .line 2383
    :cond_a
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/transsion/camera/utils/FeatureSupport;->isSupportFoldUI(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeSelector:Lcom/transsion/camera/app/ui/widget/VerticalModeSelector;

    if-nez v0, :cond_1e

    .line 2384
    sget-object p0, Lcom/transsion/camera/app/ui/ModePickerUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "chooseModeUIToShow, mModeSelector is null."

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 2388
    :cond_1e
    iget v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mScreenFormType:I

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/16 v4, 0x8

    if-eq v0, v2, :cond_c4

    const/4 v5, 0x7

    if-ne v0, v5, :cond_2d

    goto/16 :goto_c4

    .line 2402
    :cond_2d
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeSelector:Lcom/transsion/camera/app/ui/widget/VerticalModeSelector;

    if-eqz v0, :cond_34

    .line 2403
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 2405
    :cond_34
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/ModePickerUI;->currentIsIabLayoutMode()Z

    move-result v0

    if-eqz v0, :cond_8b

    .line 2406
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mIsEditMode:Z

    if-nez v0, :cond_52

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mIsPopSettingShow:Z

    if-nez v0, :cond_52

    invoke-direct {p0}, Lcom/transsion/camera/app/ui/ModePickerUI;->shouldHideModePickerUI()Z

    move-result v0

    if-nez v0, :cond_52

    .line 2407
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeTabLayout:Lcom/transsion/camera/app/ui/widget/TabLayout;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 2408
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeTabLayout:Lcom/transsion/camera/app/ui/widget/TabLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 2410
    :cond_52
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mMoreModeGuideRightRoot:Landroid/view/View;

    if-eqz v0, :cond_85

    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeOrderProvider:Lcom/transsion/camera/app/mode/ModeOrderProvider;

    .line 2411
    invoke-virtual {v0}, Lcom/transsion/camera/app/mode/ModeOrderProvider;->moreModeShow()Z

    move-result v0

    if-eqz v0, :cond_85

    .line 2412
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/ModePickerUI;->isShowMoreModeGuideView()Z

    move-result v0

    if-eqz v0, :cond_85

    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeInformation:Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;->-$$Nest$fgetmCurrentModeItem(Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;)Lcom/transsion/camera/app/common/FeatureResource;

    move-result-object v0

    iget-object v0, v0, Lcom/transsion/camera/app/common/FeatureResource;->mFeatureName:Ljava/lang/String;

    .line 2413
    const-string v1, "com.transsion.camera.feature.mode.more.MoreModeEntry"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_85

    if-nez p1, :cond_85

    iget-object p1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModePickerLayout:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_85

    .line 2416
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_85

    .line 2417
    iget-object p1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mMoreModeGuideRightRoot:Landroid/view/View;

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 2420
    :cond_85
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mCurrentModeUI:Lcom/transsion/camera/app/ui/ModePickerUI$CurrentModeUI;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/ModePickerUI$CurrentModeUI;->-$$Nest$mhide(Lcom/transsion/camera/app/ui/ModePickerUI$CurrentModeUI;)V

    return-void

    .line 2422
    :cond_8b
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/ModePickerUI;->isSupportUI5MoreModeStyle()Z

    move-result p1

    if-nez p1, :cond_b4

    .line 2423
    iget-object p1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeTabLayout:Lcom/transsion/camera/app/ui/widget/TabLayout;

    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 2424
    iget-object p1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mMoreModeGuideRightRoot:Landroid/view/View;

    if-eqz p1, :cond_a5

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_a5

    .line 2425
    iget-object p1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mMoreModeGuideRightRoot:Landroid/view/View;

    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 2427
    :cond_a5
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mIsInstantZoomShow:Z

    if-nez p1, :cond_b4

    .line 2428
    iget-object p1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mCurrentModeUI:Lcom/transsion/camera/app/ui/ModePickerUI$CurrentModeUI;

    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeInformation:Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;->-$$Nest$mcurrentModeShowName(Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/camera/app/ui/ModePickerUI$CurrentModeUI;->-$$Nest$mshow(Lcom/transsion/camera/app/ui/ModePickerUI$CurrentModeUI;Ljava/lang/String;)V

    .line 2431
    :cond_b4
    iget-object p1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mMoreModeGuideLeftRoot:Landroid/view/View;

    if-eqz p1, :cond_c3

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_c3

    .line 2432
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mMoreModeGuideLeftRoot:Landroid/view/View;

    invoke-virtual {p0, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_c3
    return-void

    .line 2390
    :cond_c4
    :goto_c4
    iget-object p1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeTabLayout:Lcom/transsion/camera/app/ui/widget/TabLayout;

    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 2391
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

    .line 2393
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mIsEditMode:Z

    if-nez p1, :cond_11a

    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mIsPopSettingShow:Z

    if-nez p1, :cond_11a

    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mIsRecording:Z

    if-nez p1, :cond_11a

    iget-object p1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeSelector:Lcom/transsion/camera/app/ui/widget/VerticalModeSelector;

    if-eqz p1, :cond_11a

    .line 2394
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mIsCameraSwitching:Z

    if-nez v0, :cond_110

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mVipSelfieQuiting:Z

    if-nez v0, :cond_110

    .line 2395
    invoke-virtual {p1, v2}, Lcom/transsion/camera/app/ui/widget/VerticalModeSelector;->setEnabled(Z)V

    .line 2397
    :cond_110
    iget-object p1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeSelector:Lcom/transsion/camera/app/ui/widget/VerticalModeSelector;

    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    .line 2398
    iget-object p1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeSelector:Lcom/transsion/camera/app/ui/widget/VerticalModeSelector;

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 2400
    :cond_11a
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mCurrentModeUI:Lcom/transsion/camera/app/ui/ModePickerUI$CurrentModeUI;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/ModePickerUI$CurrentModeUI;->-$$Nest$mhide(Lcom/transsion/camera/app/ui/ModePickerUI$CurrentModeUI;)V

    return-void

    .line 2379
    :cond_120
    :goto_120
    sget-object p0, Lcom/transsion/camera/app/ui/ModePickerUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "chooseModeUIToShow, mModeTabLayout, mCurrentModeUI is null."

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private enableModePickerUI()V
    .registers 4

    .line 2348
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

    .line 2353
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mIsVideoRecording:Z

    if-nez v0, :cond_4a

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mIsCameraSwitching:Z

    if-nez v0, :cond_4a

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mRestoreSettingsBegin:Z

    if-nez v0, :cond_4a

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mIsConfigurationChanging:Z

    if-nez v0, :cond_4a

    const/4 v0, 0x1

    .line 2354
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/ModePickerUI;->setEnable(Z)V

    :cond_4a
    return-void
.end method

.method private enterMoreModeGuideAnimation()V
    .registers 7

    .line 649
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/ModePickerUI;->isShowMoreModeGuideView()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 652
    :cond_7
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mIsDisableEnterMoreAnimation:Z

    if-eqz v0, :cond_13

    .line 653
    sget-object p0, Lcom/transsion/camera/app/ui/ModePickerUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "enterMoreModeGuideAnimation: disable animation, return"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 656
    :cond_13
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mMoreModeGuideRightRoot:Landroid/view/View;

    if-eqz v0, :cond_cd

    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mMoreModeGuideLeftRoot:Landroid/view/View;

    if-eqz v0, :cond_cd

    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mMoreModeRightGuide:Landroid/widget/ImageView;

    if-nez v0, :cond_21

    goto/16 :goto_cd

    .line 660
    :cond_21
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mExitGuideRightAlphaAnimation:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_30

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_30

    .line 661
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mExitGuideRightAlphaAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 663
    :cond_30
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mExitGuideRightTransXAnimation:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_3f

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 664
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mExitGuideRightTransXAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 666
    :cond_3f
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mExitGuideLeftAlphaAnimation:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_4e

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_4e

    .line 667
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mExitGuideLeftAlphaAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 669
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

    .line 670
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mEnterMoreMode:Z

    .line 671
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

    .line 672
    iget-object v2, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mGuideAlphaInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v2}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 673
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mEnterGuideRightAnimation:Landroid/animation/ObjectAnimator;

    new-instance v2, Lcom/transsion/camera/app/ui/ModePickerUI$2;

    invoke-direct {v2, p0}, Lcom/transsion/camera/app/ui/ModePickerUI$2;-><init>(Lcom/transsion/camera/app/ui/ModePickerUI;)V

    invoke-virtual {v0, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 687
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mEnterGuideRightAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 689
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mMoreModeGuideLeftRoot:Landroid/view/View;

    new-array v1, v1, [F

    fill-array-data v1, :array_de

    invoke-static {v0, v3, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mEnterGuideLeftAnimation:Landroid/animation/ObjectAnimator;

    const-wide/16 v1, 0x64

    .line 690
    invoke-virtual {v0, v1, v2}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 691
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mEnterGuideLeftAnimation:Landroid/animation/ObjectAnimator;

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 692
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mEnterGuideLeftAnimation:Landroid/animation/ObjectAnimator;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mGuideAlphaInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 693
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mEnterGuideLeftAnimation:Landroid/animation/ObjectAnimator;

    new-instance v1, Lcom/transsion/camera/app/ui/ModePickerUI$3;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/ui/ModePickerUI$3;-><init>(Lcom/transsion/camera/app/ui/ModePickerUI;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 714
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mEnterGuideLeftAnimation:Landroid/animation/ObjectAnimator;

    new-instance v1, Lcom/transsion/camera/app/ui/ModePickerUI$$ExternalSyntheticLambda9;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/ui/ModePickerUI$$ExternalSyntheticLambda9;-><init>(Lcom/transsion/camera/app/ui/ModePickerUI;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 717
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mEnterGuideLeftAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    return-void

    .line 657
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

    .line 721
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/ModePickerUI;->isShowMoreModeGuideView()Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_19

    .line 724
    :cond_7
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mMoreModeGuideRightRoot:Landroid/view/View;

    if-eqz v0, :cond_e4

    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mMoreModeGuideLeftRoot:Landroid/view/View;

    if-eqz v0, :cond_e4

    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mMoreModeRightGuide:Landroid/widget/ImageView;

    if-nez v0, :cond_15

    goto/16 :goto_e4

    .line 728
    :cond_15
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mEnterMoreMode:Z

    if-nez v0, :cond_1a

    :goto_19
    return-void

    .line 731
    :cond_1a
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mEnterGuideRightAnimation:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_29

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 732
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mEnterGuideRightAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 734
    :cond_29
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mEnterGuideLeftAnimation:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_38

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_38

    .line 735
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mEnterGuideLeftAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 737
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

    .line 738
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mEnterMoreMode:Z

    .line 739
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

    .line 740
    iget-object v3, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mGuideAlphaInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v1, v3}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 741
    iget-object v1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mExitGuideRightAlphaAnimation:Landroid/animation/ObjectAnimator;

    new-instance v3, Lcom/transsion/camera/app/ui/ModePickerUI$4;

    invoke-direct {v3, p0}, Lcom/transsion/camera/app/ui/ModePickerUI$4;-><init>(Lcom/transsion/camera/app/ui/ModePickerUI;)V

    invoke-virtual {v1, v3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 760
    iget-object v1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mMoreModeGuideRightRoot:Landroid/view/View;

    iget-object v3, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mContext:Landroid/content/Context;

    .line 761
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

    .line 760
    const-string/jumbo v0, "translationX"

    invoke-static {v1, v0, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 761
    invoke-virtual {v0, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mExitGuideRightTransXAnimation:Landroid/animation/ObjectAnimator;

    .line 762
    invoke-virtual {v0, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 763
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mExitGuideRightTransXAnimation:Landroid/animation/ObjectAnimator;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mTranslationXInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 764
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mExitGuideRightTransXAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 765
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mExitGuideRightAlphaAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 767
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mMoreModeGuideLeftRoot:Landroid/view/View;

    new-array v1, v2, [F

    fill-array-data v1, :array_f4

    invoke-static {v0, v4, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mExitGuideLeftAlphaAnimation:Landroid/animation/ObjectAnimator;

    const-wide/16 v1, 0x96

    .line 768
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 769
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mExitGuideLeftAlphaAnimation:Landroid/animation/ObjectAnimator;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mGuideAlphaInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 770
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mExitGuideLeftAlphaAnimation:Landroid/animation/ObjectAnimator;

    new-instance v1, Lcom/transsion/camera/app/ui/ModePickerUI$$ExternalSyntheticLambda11;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/ui/ModePickerUI$$ExternalSyntheticLambda11;-><init>(Lcom/transsion/camera/app/ui/ModePickerUI;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 774
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mExitGuideLeftAlphaAnimation:Landroid/animation/ObjectAnimator;

    new-instance v1, Lcom/transsion/camera/app/ui/ModePickerUI$5;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/ui/ModePickerUI$5;-><init>(Lcom/transsion/camera/app/ui/ModePickerUI;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 781
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mExitGuideLeftAlphaAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    return-void

    .line 725
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

    .line 2738
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

    .line 2731
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p0, 0x0

    return p0

    .line 2734
    :cond_8
    iget p0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mTranslateDistance:I

    return p0
.end method

.method private isModePickerVisible()Z
    .registers 2

    .line 977
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

    .line 969
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/transsion/camera/R$bool;->show_more_mode_guide_view:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$abortShowOrHideModePickerRootUI$10()V
    .registers 2

    .line 2088
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mMainHandler:Landroid/os/Handler;

    if-eqz v0, :cond_9

    .line 2089
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModePickerRootAnimatorStartAction:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_9
    return-void
.end method

.method private synthetic lambda$enterMoreModeGuideAnimation$6(Landroid/animation/ValueAnimator;)V
    .registers 2

    .line 715
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/ModePickerUI;->updateMoreModeGuideLeftRootLocation()V

    return-void
.end method

.method private synthetic lambda$exitMoreModeGuideAnimation$7(Landroid/animation/ValueAnimator;)V
    .registers 2

    .line 771
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/ModePickerUI;->updateMoreModeGuideLeftRootLocation()V

    return-void
.end method

.method private synthetic lambda$new$0()V
    .registers 4

    .line 189
    sget-object v0, Lcom/transsion/camera/app/ui/ModePickerUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "onAnimationStart[mModePickerRootAnimatorStartAction]: "

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 190
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/ModePickerUI;->isSupportUI5MoreModeStyle()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_30

    .line 191
    const-string v0, "com.transsion.camera.feature.mode.more.MoreModeEntry"

    iget-object v2, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mCurrentModeName:Ljava/lang/String;

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1d

    .line 192
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mMoreModeGuideRightRoot:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 194
    :cond_1d
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModePickerLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 195
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mCurrentModeName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/ModePickerUI;->isTabLayoutMode(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2f

    .line 196
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mMoreModeCancelRoot:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_2f
    return-void

    .line 199
    :cond_30
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModePickerLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private synthetic lambda$selectMoreTabView$1(Lcom/transsion/camera/app/ui/widget/TabLayout$TabView;)V
    .registers 6

    .line 241
    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/widget/TabLayout$TabView;->performClick()Z

    const/4 v0, 0x2

    .line 242
    new-array v0, v0, [I

    .line 243
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationInWindow([I)V

    .line 244
    iget-object v1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mMoreModeCancelRoot:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, 0x0

    .line 245
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

    .line 246
    iget-object p1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mMoreModeCancelRoot:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 247
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mMoreModeCancelRoot:Landroid/view/View;

    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private synthetic lambda$setupViews$2()V
    .registers 2

    const/4 v0, 0x1

    .line 379
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mIsSelectMoreTabView:Z

    .line 380
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mMoreTabChangeListener:Lcom/transsion/camera/app/common/IAppUIListener$IMoreTabChangeListener;

    if-eqz v0, :cond_c

    .line 381
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mCurrentModeName:Ljava/lang/String;

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/IAppUIListener$IMoreTabChangeListener;->onMoreTabChanged(Ljava/lang/String;)V

    :cond_c
    return-void
.end method

.method private synthetic lambda$setupViews$3(Lcom/transsion/camera/app/common/storage/DataStore;Landroid/view/View;)V
    .registers 7

    .line 348
    iget-object p2, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mMoreModeRightGuide:Landroid/widget/ImageView;

    invoke-static {p2}, Lcom/transsion/camera/utils/MultiTouchManager;->canPerformClick(Landroid/view/View;)Z

    move-result p2

    if-nez p2, :cond_9

    goto :goto_2d

    .line 351
    :cond_9
    iget-object p2, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz p2, :cond_1b

    invoke-interface {p2}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->shutterUIProcessing()Z

    move-result p2

    if-eqz p2, :cond_1b

    .line 352
    sget-object p0, Lcom/transsion/camera/app/ui/ModePickerUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "shutter ui is processing, return"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 355
    :cond_1b
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/ModePickerUI;->isSupportUI5MoreModeStyle()Z

    move-result p2

    if-eqz p2, :cond_2e

    iget-object p2, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mCurrentModeName:Ljava/lang/String;

    .line 356
    invoke-virtual {p0, p2}, Lcom/transsion/camera/app/ui/ModePickerUI;->isTabLayoutMode(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_2e

    iget-boolean p2, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mIsModeSwitching:Z

    if-eqz p2, :cond_2e

    :goto_2d
    return-void

    .line 359
    :cond_2e
    const-string p2, "0"

    .line 360
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v0

    .line 359
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

    .line 363
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, p2, v2, v3}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 365
    :cond_4f
    iget-object p1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mMoreModeGuideAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_5c

    .line 366
    iget-object p1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mMoreModeGuideAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->end()V

    .line 368
    :cond_5c
    iget-object p1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mNotifyClickGuideIconListener:Lcom/transsion/camera/app/common/IAppUIListener$INotifyClickGuideIconListener;

    if-eqz p1, :cond_63

    .line 369
    invoke-interface {p1}, Lcom/transsion/camera/app/common/IAppUIListener$INotifyClickGuideIconListener;->notifyClickGuideIcon()V

    .line 371
    :cond_63
    iput-boolean v3, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mIsDisableEnterMoreAnimation:Z

    .line 372
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/ModePickerUI;->isSupportUI5MoreModeStyle()Z

    move-result p1

    if-eqz p1, :cond_a5

    iget-object p1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mMoreModeCancelRoot:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_a5

    .line 373
    iput-boolean v3, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mIsSelectMoreTabView:Z

    .line 374
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/ModePickerUI;->updateSpecifiedMode(Z)V

    .line 375
    iget-object p1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeTabLayout:Lcom/transsion/camera/app/ui/widget/TabLayout;

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/widget/TabLayout;->getMoreTabView()Lcom/transsion/camera/app/ui/widget/TabLayout$TabView;

    move-result-object p1

    if-eqz p1, :cond_9d

    .line 377
    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/widget/TabLayout$TabView;->getTab()Lcom/transsion/camera/app/ui/widget/TabLayout$Tab;

    move-result-object p1

    iget-object p2, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/transsion/camera/R$string;->more_mode_title:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/transsion/camera/app/ui/widget/TabLayout$Tab;->setText(Ljava/lang/CharSequence;)Lcom/transsion/camera/app/ui/widget/TabLayout$Tab;

    .line 378
    iget-object p1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mMainHandler:Landroid/os/Handler;

    new-instance p2, Lcom/transsion/camera/app/ui/ModePickerUI$$ExternalSyntheticLambda12;

    invoke-direct {p2, p0}, Lcom/transsion/camera/app/ui/ModePickerUI$$ExternalSyntheticLambda12;-><init>(Lcom/transsion/camera/app/ui/ModePickerUI;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 385
    :cond_9d
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mMoreModeCancelRoot:Landroid/view/View;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 387
    :cond_a5
    invoke-direct {p0, v3}, Lcom/transsion/camera/app/ui/ModePickerUI;->updateSpecifiedMode(Z)V

    return-void
.end method

.method private synthetic lambda$setupViews$4(Landroid/view/View;)V
    .registers 3

    .line 395
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mIsCameraSwitching:Z

    if-nez v0, :cond_37

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mSelfTimerBegin:Z

    if-nez v0, :cond_37

    .line 396
    invoke-static {p1}, Lcom/transsion/camera/utils/MultiTouchManager;->canPerformClick(Landroid/view/View;)Z

    move-result p1

    if-nez p1, :cond_f

    goto :goto_37

    .line 399
    :cond_f
    iget-object p1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeInformation:Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;->currentIsDVMode()Z

    move-result p1

    if-eqz p1, :cond_27

    .line 400
    iget-object p1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz p1, :cond_20

    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mIsModeSwitching:Z

    if-eqz p1, :cond_20

    goto :goto_37

    .line 403
    :cond_20
    invoke-static {}, Lcom/transsion/camera/utils/manager/GlobalClickManager;->checkCanClick()Z

    move-result p1

    if-nez p1, :cond_27

    goto :goto_37

    .line 407
    :cond_27
    iget-object p1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeInformation:Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;->-$$Nest$mupdateCurrentMode(Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;)V

    .line 408
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/ModePickerUI;->updateCurrentModeAndNotify()V

    .line 409
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz p0, :cond_37

    const/4 p1, 0x0

    .line 410
    invoke-interface {p0, p1, p1}, Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;->updateIntentFromNegativeScreen(ZZ)V

    :cond_37
    :goto_37
    return-void
.end method

.method private synthetic lambda$switchDefaultMode$5()V
    .registers 5

    .line 468
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeTabLayout:Lcom/transsion/camera/app/ui/widget/TabLayout;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/widget/TabLayout;->getTabCount()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/widget/TabLayout;->getTabAt(I)Lcom/transsion/camera/app/ui/widget/TabLayout$Tab;

    move-result-object v0

    if-eqz v0, :cond_1d

    .line 470
    iget-object v1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/transsion/camera/R$string;->more_mode_title:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/widget/TabLayout$Tab;->setText(Ljava/lang/CharSequence;)Lcom/transsion/camera/app/ui/widget/TabLayout$Tab;

    .line 472
    :cond_1d
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mIsSelectMoreTabView:Z

    .line 473
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mMoreTabChangeListener:Lcom/transsion/camera/app/common/IAppUIListener$IMoreTabChangeListener;

    if-eqz v0, :cond_28

    .line 474
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mCurrentModeName:Ljava/lang/String;

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/IAppUIListener$IMoreTabChangeListener;->onMoreTabChanged(Ljava/lang/String;)V

    :cond_28
    return-void
.end method

.method private synthetic lambda$updateLayoutParams$8(Landroid/widget/FrameLayout$LayoutParams;Landroid/animation/ValueAnimator;)V
    .registers 3

    .line 1668
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 1669
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModePickerRoot:Landroid/view/ViewGroup;

    invoke-virtual {p0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private synthetic lambda$updateMoreCancelRootState$9()V
    .registers 2

    .line 1773
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mMoreModeCancelRoot:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private notifyModeSwitch()V
    .registers 2

    .line 1405
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeChangedListener:Lcom/transsion/camera/app/common/IAppUIListener$IModeChangedListener;

    if-eqz v0, :cond_d

    .line 1406
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeInformation:Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;->-$$Nest$mcurrentModeFeatureName(Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/IAppUIListener$IModeChangedListener;->onSwitchMode(Ljava/lang/String;)V

    :cond_d
    return-void
.end method

.method private shouldHideModePickerUI()Z
    .registers 3

    .line 2371
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

    .line 578
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/ModePickerUI;->cancelModePickerUIAnimation()V

    const/4 v0, 0x0

    if-eqz p2, :cond_3c

    .line 580
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

    .line 581
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3f28f5c3    # 0.66f

    const/high16 v3, 0x3f800000    # 1.0f

    const v4, 0x3ea8f5c3    # 0.33f

    invoke-direct {v0, v4, v2, v1, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {p2, v0}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 582
    iget-object p2, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModePickerOut:Landroid/animation/ObjectAnimator;

    new-instance v0, Lcom/transsion/camera/app/ui/ModePickerUI$1;

    invoke-direct {v0, p0, p1}, Lcom/transsion/camera/app/ui/ModePickerUI$1;-><init>(Lcom/transsion/camera/app/ui/ModePickerUI;I)V

    invoke-virtual {p2, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 610
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModePickerOut:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    return-void

    .line 612
    :cond_3c
    iget p2, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mScreenFormType:I

    invoke-direct {p0, p1, p2, v0}, Lcom/transsion/camera/app/ui/ModePickerUI;->updateLayoutParams(IIZ)V

    .line 613
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/ModePickerUI;->chooseModeUIToShow(Z)V

    return-void
.end method

.method private switchDefaultMode(Landroid/view/View;)V
    .registers 4

    .line 455
    invoke-static {p1}, Lcom/transsion/camera/utils/MultiTouchManager;->canPerformClick(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_50

    .line 456
    invoke-static {}, Lcom/transsion/camera/utils/manager/GlobalClickManager;->checkCanClick()Z

    move-result p1

    if-nez p1, :cond_d

    goto :goto_50

    .line 459
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

    .line 461
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mIsModeSwitching:Z

    if-nez p1, :cond_50

    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mIsPaused:Z

    if-eqz p1, :cond_38

    goto :goto_50

    .line 464
    :cond_38
    iget-object p1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz p1, :cond_46

    .line 465
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeInformation:Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;->-$$Nest$fgetmDefaultModeFeatureName(Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$IModePickerControl;->updateSpecifiedMode(Ljava/lang/String;Z)V

    .line 467
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

    .line 1398
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/ModePickerUI;->updateCurrentTab(Z)V

    .line 1399
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/ModePickerUI;->updateCurrentModeSelector()V

    .line 1400
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/ModePickerUI;->updateCurrentModeUI()V

    .line 1401
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/ModePickerUI;->notifyModeSwitch()V

    return-void
.end method

.method private updateCurrentModeSelector()V
    .registers 3

    .line 1055
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeSelector:Lcom/transsion/camera/app/ui/widget/VerticalModeSelector;

    if-eqz v0, :cond_18

    .line 1056
    iget-object v1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeInformation:Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;

    invoke-static {v1}, Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;->-$$Nest$mgetDefaultModeTitle(Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/widget/VerticalModeSelector;->updateDefaultValue(Ljava/lang/String;)V

    .line 1057
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeSelector:Lcom/transsion/camera/app/ui/widget/VerticalModeSelector;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeInformation:Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;->-$$Nest$mcurrentModeShowName(Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/transsion/camera/app/ui/widget/VerticalModeSelector;->updateIndexByValue(Ljava/lang/String;)V

    :cond_18
    return-void
.end method

.method private updateCurrentModeUI()V
    .registers 3

    .line 1421
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeTabLayout:Lcom/transsion/camera/app/ui/widget/TabLayout;

    if-nez v0, :cond_d

    .line 1422
    sget-object p0, Lcom/transsion/camera/app/ui/ModePickerUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string/jumbo v0, "updateCurrentModeUI: mModeTabLayout is null"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 1425
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

    .line 1427
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2e

    goto :goto_2f

    :cond_2e
    return-void

    :cond_2f
    :goto_2f
    const/4 v0, 0x0

    .line 1428
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/ModePickerUI;->chooseModeUIToShow(Z)V

    return-void
.end method

.method private updateLayoutParams(IIZ)V
    .registers 23

    move-object/from16 v0, p0

    move/from16 v1, p2

    .line 1504
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

    .line 1511
    :cond_15
    iget-object v5, v0, Lcom/transsion/camera/app/ui/ModePickerUI;->mHoverTranslateAnimator:Landroid/animation/ValueAnimator;

    invoke-static {v5}, Lcom/transsion/camera/utils/AnimationUtils;->stopAnimator(Landroid/animation/Animator;)V

    .line 1512
    iget-object v5, v0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModePickerRoot:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 1513
    sget v6, Lcom/transsion/camera/R$dimen;->mode_picker_width_expanded_ui:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v6

    .line 1514
    sget v7, Lcom/transsion/camera/R$dimen;->mode_picker_margin_port_expanded_ui:I

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v7

    .line 1515
    sget v8, Lcom/transsion/camera/R$dimen;->mode_picker_margin_land_expanded_ui:I

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v8

    .line 1516
    sget v9, Lcom/transsion/camera/R$dimen;->mode_picker_margin_bottom_port_expanded_ui:I

    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v9

    .line 1517
    sget v10, Lcom/transsion/camera/R$dimen;->mode_picker_margin_bottom_land_expanded_ui:I

    invoke-virtual {v5, v10}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v10

    .line 1518
    iget-object v11, v0, Lcom/transsion/camera/app/ui/ModePickerUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {v11}, Lcom/transsion/camera/app/ui/ScreenManager;->getModePlusBottomBarHeight()I

    move-result v11

    .line 1519
    sget v12, Lcom/transsion/camera/R$dimen;->mode_tab_layout_left_right_margin:I

    invoke-virtual {v5, v12}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v12

    .line 1520
    sget v13, Lcom/transsion/camera/R$dimen;->mode_picker_horizontal_margin_left_right_hover_ui:I

    invoke-virtual {v5, v13}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v13

    .line 1521
    iget-object v14, v0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModePickerRoot:Landroid/view/ViewGroup;

    invoke-virtual {v14}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Landroid/widget/FrameLayout$LayoutParams;

    .line 1522
    invoke-virtual {v14, v3, v3, v3, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 1524
    iget v15, v14, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 1527
    iget-object v2, v0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModePickerContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 1528
    invoke-virtual {v2, v3, v3, v3, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 1529
    sget v3, Lcom/transsion/camera/R$dimen;->mode_selector_height:I

    invoke-virtual {v5, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    move/from16 p1, v15

    .line 1531
    iget-object v15, v0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeTabLayout:Lcom/transsion/camera/app/ui/widget/TabLayout;

    invoke-virtual {v15}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    check-cast v15, Landroid/widget/FrameLayout$LayoutParams;

    move/from16 v16, v11

    const/4 v11, 0x0

    .line 1532
    invoke-virtual {v15, v11, v11, v11, v11}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 1533
    iget-object v11, v0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeOrderProvider:Lcom/transsion/camera/app/mode/ModeOrderProvider;

    invoke-virtual {v11}, Lcom/transsion/camera/app/mode/ModeOrderProvider;->getConfig()Lcom/transsion/camera/app/mode/ModePickerConfig;

    move-result-object v11

    invoke-virtual {v11}, Lcom/transsion/camera/app/mode/ModePickerConfig;->modePickerStyleMore()Z

    move-result v11

    move/from16 v17, v11

    const/16 v11, 0x11

    if-eqz v17, :cond_9f

    .line 1534
    iput v11, v15, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 1535
    sget v11, Lcom/transsion/camera/R$dimen;->more_mode_picker_list_margin:I

    invoke-virtual {v5, v11}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v11

    iput v11, v15, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    iput v11, v15, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 1536
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

    .line 1565
    iput v6, v14, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 1566
    iput v3, v14, Landroid/widget/FrameLayout$LayoutParams;->height:I

    const/16 v2, 0x55

    .line 1567
    iput v2, v14, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 1568
    iput v7, v14, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 1569
    iput v9, v14, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    goto :goto_e3

    .line 1556
    :cond_bd
    iput v3, v14, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 1557
    iput v6, v14, Landroid/widget/FrameLayout$LayoutParams;->height:I

    const/16 v2, 0x53

    .line 1558
    iput v2, v14, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 1559
    iput v8, v14, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 1560
    iput v10, v14, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    goto :goto_e3

    .line 1549
    :cond_ca
    iput v6, v14, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 1550
    iput v3, v14, Landroid/widget/FrameLayout$LayoutParams;->height:I

    const/16 v2, 0x33

    .line 1551
    iput v2, v14, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 1552
    iput v7, v14, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 1553
    iput v9, v14, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto :goto_e3

    .line 1542
    :cond_d7
    iput v3, v14, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 1543
    iput v6, v14, Landroid/widget/FrameLayout$LayoutParams;->height:I

    const/16 v2, 0x35

    .line 1544
    iput v2, v14, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 1545
    iput v8, v14, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 1546
    iput v10, v14, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 1572
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

    .line 1574
    iput v3, v14, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 1575
    iput v3, v14, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 1576
    iput v13, v2, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    const/16 v3, 0x15

    .line 1577
    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 1578
    iget-object v3, v0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModePickerContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    const/4 v7, 0x0

    invoke-virtual {v3, v11, v7}, Lcom/transsion/camera/app/ui/widget/RotateLayout;->setOrientation(IZ)V

    .line 1579
    iput v12, v15, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    iput v12, v15, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 1580
    iget-object v3, v0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeTabLayout:Lcom/transsion/camera/app/ui/widget/TabLayout;

    invoke-virtual {v3, v15}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1581
    iget-object v3, v0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModePickerRoot:Landroid/view/ViewGroup;

    invoke-virtual {v3, v14}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1582
    iget-object v3, v0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModePickerContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v3, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1583
    iput-boolean v5, v0, Lcom/transsion/camera/app/ui/ModePickerUI;->mScreenFormTypeChanged:Z

    .line 1584
    invoke-direct {v0, v6, v7}, Lcom/transsion/camera/app/ui/ModePickerUI;->updateModeTabLayout(Ljava/lang/String;Z)V

    goto :goto_e8

    :cond_11a
    const/4 v7, 0x0

    const/4 v3, 0x5

    if-ne v1, v3, :cond_149

    const/4 v3, -0x1

    .line 1586
    iput v3, v14, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 1587
    iput v3, v14, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 1588
    iput v13, v2, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    const/16 v3, 0x13

    .line 1589
    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 1590
    iget-object v3, v0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModePickerContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    const/16 v8, 0x10e

    invoke-virtual {v3, v8, v7}, Lcom/transsion/camera/app/ui/widget/RotateLayout;->setOrientation(IZ)V

    .line 1591
    iput v12, v15, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    iput v12, v15, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 1592
    iget-object v3, v0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeTabLayout:Lcom/transsion/camera/app/ui/widget/TabLayout;

    invoke-virtual {v3, v15}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1593
    iget-object v3, v0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModePickerRoot:Landroid/view/ViewGroup;

    invoke-virtual {v3, v14}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1594
    iget-object v3, v0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModePickerContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v3, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1595
    iput-boolean v5, v0, Lcom/transsion/camera/app/ui/ModePickerUI;->mScreenFormTypeChanged:Z

    .line 1596
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

    .line 1611
    sget v2, Lcom/transsion/camera/R$dimen;->mode_picker_width_flip:I

    move-object/from16 v3, v18

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v14, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 1612
    sget v2, Lcom/transsion/camera/R$dimen;->mode_picker_height_flip:I

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v14, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 1613
    sget v2, Lcom/transsion/camera/R$dimen;->mode_picker_left_margin_flip:I

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v14, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 1614
    sget v2, Lcom/transsion/camera/R$dimen;->mode_picker_bottom_margin_flip:I

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v14, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    const/16 v2, 0x53

    .line 1615
    iput v2, v14, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 1616
    iget-object v2, v0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModePickerRoot:Landroid/view/ViewGroup;

    invoke-virtual {v2, v14}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_183
    move/from16 v7, p1

    const/4 v9, 0x0

    goto :goto_1aa

    .line 1601
    :goto_187
    iput v7, v14, Landroid/widget/FrameLayout$LayoutParams;->width:I

    move/from16 v7, v16

    .line 1602
    iput v7, v14, Landroid/widget/FrameLayout$LayoutParams;->height:I

    const/16 v8, 0x51

    .line 1603
    iput v8, v14, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    const/16 v8, 0x31

    .line 1604
    iput v8, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 1605
    iget-object v8, v0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModePickerContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    const/4 v9, 0x0

    invoke-virtual {v8, v9, v9}, Lcom/transsion/camera/app/ui/widget/RotateLayout;->setOrientation(IZ)V

    .line 1606
    iget-object v8, v0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModePickerRoot:Landroid/view/ViewGroup;

    invoke-virtual {v8, v14}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1607
    iget-object v8, v0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModePickerContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v8, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1608
    iput-boolean v5, v0, Lcom/transsion/camera/app/ui/ModePickerUI;->mScreenFormTypeChanged:Z

    .line 1609
    invoke-direct {v0, v6, v9}, Lcom/transsion/camera/app/ui/ModePickerUI;->updateModeTabLayout(Ljava/lang/String;Z)V

    .line 1619
    :goto_1aa
    iget-object v2, v0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeSelector:Lcom/transsion/camera/app/ui/widget/VerticalModeSelector;

    if-eqz v2, :cond_243

    .line 1621
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 1622
    invoke-virtual {v2, v9, v9, v9, v9}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 1624
    iget v6, v0, Lcom/transsion/camera/app/ui/ModePickerUI;->mScreenFormType:I

    const/4 v8, 0x7

    if-ne v6, v8, :cond_1e1

    .line 1625
    sget v6, Lcom/transsion/camera/R$dimen;->mode_selector_width_for_flip:I

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, v2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 1626
    iget-object v6, v0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeSelector:Lcom/transsion/camera/app/ui/widget/VerticalModeSelector;

    sget v8, Lcom/transsion/camera/R$dimen;->mode_picker_item_height_flip:I

    .line 1627
    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    sget v9, Lcom/transsion/camera/R$dimen;->mode_picker_item_text_size_flip:I

    .line 1628
    invoke-virtual {v3, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    .line 1626
    invoke-virtual {v6, v8, v9}, Lcom/transsion/camera/app/ui/widget/VerticalModeSelector;->setItemSize(II)V

    .line 1629
    iget-object v6, v0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeSelector:Lcom/transsion/camera/app/ui/widget/VerticalModeSelector;

    sget v8, Lcom/transsion/camera/R$dimen;->mode_picker_item_fading_edge_length_flip:I

    .line 1630
    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    .line 1629
    invoke-virtual {v6, v8}, Lcom/transsion/camera/app/ui/widget/VerticalModeSelector;->setInsideFadingEdgeLength(I)V

    goto :goto_1fd

    .line 1632
    :cond_1e1
    iget-object v6, v0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeSelector:Lcom/transsion/camera/app/ui/widget/VerticalModeSelector;

    sget v8, Lcom/transsion/camera/R$dimen;->mode_picker_item_height_normal:I

    .line 1633
    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    sget v9, Lcom/transsion/camera/R$dimen;->mode_picker_item_text_size_normal:I

    .line 1634
    invoke-virtual {v3, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    .line 1632
    invoke-virtual {v6, v8, v9}, Lcom/transsion/camera/app/ui/widget/VerticalModeSelector;->setItemSize(II)V

    .line 1635
    iget-object v6, v0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeSelector:Lcom/transsion/camera/app/ui/widget/VerticalModeSelector;

    sget v8, Lcom/transsion/camera/R$dimen;->mode_picker_item_fading_edge_length_normal:I

    .line 1636
    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    .line 1635
    invoke-virtual {v6, v8}, Lcom/transsion/camera/app/ui/widget/VerticalModeSelector;->setInsideFadingEdgeLength(I)V

    :goto_1fd
    if-ne v1, v5, :cond_211

    const/16 v5, 0x11

    .line 1640
    iput v5, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 1641
    iget-object v1, v0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeSelector:Lcom/transsion/camera/app/ui/widget/VerticalModeSelector;

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1642
    iget-object v1, v0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeSelector:Lcom/transsion/camera/app/ui/widget/VerticalModeSelector;

    rsub-int v2, v4, 0x168

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setRotation(F)V

    goto :goto_243

    :cond_211
    const/4 v8, 0x7

    if-ne v1, v8, :cond_243

    .line 1644
    sget v1, Lcom/transsion/camera/R$dimen;->mode_picker_selector_height_flip:I

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    const/16 v5, 0x11

    .line 1645
    iput v5, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    if-eq v4, v11, :cond_237

    const/16 v8, 0x10e

    if-eq v4, v8, :cond_22f

    .line 1656
    iget-object v1, v0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeSelector:Lcom/transsion/camera/app/ui/widget/VerticalModeSelector;

    rsub-int v3, v4, 0x168

    int-to-float v3, v3

    invoke-virtual {v1, v3}, Landroid/view/View;->setRotation(F)V

    goto :goto_23e

    .line 1651
    :cond_22f
    iget-object v1, v0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeSelector:Lcom/transsion/camera/app/ui/widget/VerticalModeSelector;

    sub-int/2addr v4, v11

    int-to-float v3, v4

    invoke-virtual {v1, v3}, Landroid/view/View;->setRotation(F)V

    goto :goto_23e

    .line 1648
    :cond_237
    iget-object v1, v0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeSelector:Lcom/transsion/camera/app/ui/widget/VerticalModeSelector;

    add-int/2addr v4, v11

    int-to-float v3, v4

    invoke-virtual {v1, v3}, Landroid/view/View;->setRotation(F)V

    .line 1659
    :goto_23e
    iget-object v1, v0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeSelector:Lcom/transsion/camera/app/ui/widget/VerticalModeSelector;

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1663
    :cond_243
    :goto_243
    iget-object v1, v0, Lcom/transsion/camera/app/ui/ModePickerUI;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/transsion/camera/utils/FeatureSupport;->isOnlySupportTBHoverUI(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_274

    if-eqz p3, :cond_274

    move/from16 v1, p1

    .line 1664
    filled-new-array {v1, v7}, [I

    move-result-object v1

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, v0, Lcom/transsion/camera/app/ui/ModePickerUI;->mHoverTranslateAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x190

    .line 1665
    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1666
    iget-object v1, v0, Lcom/transsion/camera/app/ui/ModePickerUI;->mHoverTranslateAnimator:Landroid/animation/ValueAnimator;

    iget-object v2, v0, Lcom/transsion/camera/app/ui/ModePickerUI;->mPathInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1667
    iget-object v1, v0, Lcom/transsion/camera/app/ui/ModePickerUI;->mHoverTranslateAnimator:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/transsion/camera/app/ui/ModePickerUI$$ExternalSyntheticLambda8;

    invoke-direct {v2, v0, v14}, Lcom/transsion/camera/app/ui/ModePickerUI$$ExternalSyntheticLambda8;-><init>(Lcom/transsion/camera/app/ui/ModePickerUI;Landroid/widget/FrameLayout$LayoutParams;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1671
    iget-object v0, v0, Lcom/transsion/camera/app/ui/ModePickerUI;->mHoverTranslateAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    :cond_274
    return-void

    .line 1505
    :cond_275
    :goto_275
    sget-object v0, Lcom/transsion/camera/app/ui/ModePickerUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string/jumbo v1, "updateLayoutParams mModePickerRoot, mModeTabLayout is null."

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private updateModePickerRotation(I)V
    .registers 3

    .line 567
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 568
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeTabLayout:Lcom/transsion/camera/app/ui/widget/TabLayout;

    if-eqz v0, :cond_d

    .line 569
    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/ui/widget/TabLayout;->updateRotation(I)V

    .line 571
    :cond_d
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mCurrentModeUI:Lcom/transsion/camera/app/ui/ModePickerUI$CurrentModeUI;

    if-eqz p0, :cond_14

    .line 572
    invoke-static {p0, p1}, Lcom/transsion/camera/app/ui/ModePickerUI$CurrentModeUI;->-$$Nest$mupdateRotation(Lcom/transsion/camera/app/ui/ModePickerUI$CurrentModeUI;I)V

    :cond_14
    return-void
.end method

.method private updateModeSelectorLayout()V
    .registers 12

    .line 1991
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/ModePickerUI;->cannotUpdateModeTabLayout()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 1994
    :cond_7
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeSelector:Lcom/transsion/camera/app/ui/widget/VerticalModeSelector;

    if-nez v0, :cond_14

    .line 1995
    sget-object p0, Lcom/transsion/camera/app/ui/ModePickerUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string/jumbo v0, "updateModeSelectorLayout mModeSelector is null."

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 1998
    :cond_14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1999
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2002
    iget-object v2, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeInformation:Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;

    invoke-static {v2}, Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;->-$$Nest$mgetAllMode(Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;)Ljava/util/List;

    move-result-object v2

    .line 2003
    invoke-interface {v2}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lcom/transsion/camera/app/ui/ModePickerUI$$ExternalSyntheticLambda10;

    invoke-direct {v3}, Lcom/transsion/camera/app/ui/ModePickerUI$$ExternalSyntheticLambda10;-><init>()V

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v2

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Ljava/util/List;

    .line 2004
    iget-object v2, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeInformation:Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;

    invoke-static {v2}, Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;->-$$Nest$fgetmIsSupportMoreMode(Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;)Z

    move-result v2

    if-eqz v2, :cond_81

    .line 2005
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeOrderProvider:Lcom/transsion/camera/app/mode/ModeOrderProvider;

    invoke-virtual {v0}, Lcom/transsion/camera/app/mode/ModeOrderProvider;->getTabModeList()Ljava/util/List;

    move-result-object v0

    .line 2006
    iget-object v1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeOrderProvider:Lcom/transsion/camera/app/mode/ModeOrderProvider;

    invoke-virtual {v1}, Lcom/transsion/camera/app/mode/ModeOrderProvider;->getPanelModeList()Ljava/util/List;

    move-result-object v1

    .line 2007
    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lcom/transsion/camera/app/ui/ModePickerUI$$ExternalSyntheticLambda10;

    invoke-direct {v3}, Lcom/transsion/camera/app/ui/ModePickerUI$$ExternalSyntheticLambda10;-><init>()V

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v2

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 2008
    invoke-interface {v1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v3

    new-instance v4, Lcom/transsion/camera/app/ui/ModePickerUI$$ExternalSyntheticLambda10;

    invoke-direct {v4}, Lcom/transsion/camera/app/ui/ModePickerUI$$ExternalSyntheticLambda10;-><init>()V

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

    .line 2010
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

    .line 2011
    invoke-static {p0}, Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;->-$$Nest$mgetDefaultModeTitle(Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x6

    .line 2010
    invoke-virtual/range {v3 .. v10}, Lcom/transsion/camera/app/ui/widget/VerticalModeSelector;->setItemList(ZLjava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/String;I)V

    return-void
.end method

.method private updateModeTabLayout(Ljava/lang/String;Z)V
    .registers 13

    .line 1945
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/ModePickerUI;->cannotUpdateModeTabLayout()Z

    move-result v0

    if-eqz v0, :cond_8

    goto/16 :goto_f6

    .line 1948
    :cond_8
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeTabLayout:Lcom/transsion/camera/app/ui/widget/TabLayout;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/widget/TabLayout;->removeAllTabs()V

    .line 1949
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeInformation:Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;->-$$Nest$mgetTabLayoutMode(Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;)Ljava/util/List;

    move-result-object v0

    .line 1952
    iget-object v1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/transsion/camera/utils/CameraUtil;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_21

    .line 1954
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mIsFocusable:Z

    move v1, v2

    goto :goto_22

    :cond_21
    move v1, v3

    .line 1956
    :goto_22
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move v4, v3

    :goto_27
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_d8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/transsion/camera/app/common/FeatureResource;

    .line 1957
    iget-object v6, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeTabLayout:Lcom/transsion/camera/app/ui/widget/TabLayout;

    invoke-virtual {v6, v1}, Lcom/transsion/camera/app/ui/widget/TabLayout;->newTab(Z)Lcom/transsion/camera/app/ui/widget/TabLayout$Tab;

    move-result-object v6

    .line 1958
    iget-object v7, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mSellingPointItems:Ljava/util/List;

    iget-object v8, v5, Lcom/transsion/camera/app/common/FeatureResource;->mFeatureName:Ljava/lang/String;

    invoke-interface {v7, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4f

    iget-object v7, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mContext:Landroid/content/Context;

    iget-object v8, v5, Lcom/transsion/camera/app/common/FeatureResource;->mFeatureName:Ljava/lang/String;

    .line 1959
    invoke-static {v7, v8}, Lcom/transsion/camera/app/ui/mode/ModeUIItem;->getVal(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4f

    move v7, v2

    goto :goto_50

    :cond_4f
    move v7, v3

    .line 1960
    :goto_50
    iget-object v8, v5, Lcom/transsion/camera/app/common/FeatureResource;->mFeatureTitle:Ljava/lang/String;

    invoke-virtual {v6, v8}, Lcom/transsion/camera/app/ui/widget/TabLayout$Tab;->setTextWithoutUpdate(Ljava/lang/CharSequence;)Lcom/transsion/camera/app/ui/widget/TabLayout$Tab;

    move-result-object v8

    const-string v9, "AbstractModePickerUI"

    .line 1961
    invoke-virtual {v8, v9}, Lcom/transsion/camera/app/ui/widget/TabLayout$Tab;->setContentDescriptionWithoutUpdate(Ljava/lang/CharSequence;)Lcom/transsion/camera/app/ui/widget/TabLayout$Tab;

    move-result-object v8

    .line 1962
    invoke-virtual {v8, v7}, Lcom/transsion/camera/app/ui/widget/TabLayout$Tab;->setShowPointIconWithoutUpdate(Z)Lcom/transsion/camera/app/ui/widget/TabLayout$Tab;

    move-result-object v7

    iget-object v8, v5, Lcom/transsion/camera/app/common/FeatureResource;->mFeatureName:Ljava/lang/String;

    .line 1963
    invoke-virtual {v7, v8}, Lcom/transsion/camera/app/ui/widget/TabLayout$Tab;->setFeatureNameWithoutUpdate(Ljava/lang/String;)Lcom/transsion/camera/app/ui/widget/TabLayout$Tab;

    move-result-object v7

    .line 1964
    invoke-virtual {v7}, Lcom/transsion/camera/app/ui/widget/TabLayout$Tab;->updateView()V

    .line 1966
    iget-object v7, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeInformation:Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;

    invoke-static {v7, v5, p2}, Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;->-$$Nest$mdefaultSelectedMode(Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;Lcom/transsion/camera/app/common/FeatureResource;Z)Z

    move-result v5

    .line 1967
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

    .line 1971
    :goto_86
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->getInstance()Lcom/transsion/camera/app/common/CommonConfigUtil;

    move-result-object v7

    iget-boolean v7, v7, Lcom/transsion/camera/app/common/CommonConfigUtil;->mEnableDVMode:Z

    if-eqz v7, :cond_a6

    iget v7, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mScreenFormType:I

    const/4 v8, 0x7

    if-ne v7, v8, :cond_a6

    .line 1972
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

    .line 1974
    :cond_a6
    iget-object v7, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeTabLayout:Lcom/transsion/camera/app/ui/widget/TabLayout;

    invoke-virtual {v7, v6, v5}, Lcom/transsion/camera/app/ui/widget/TabLayout;->addTab(Lcom/transsion/camera/app/ui/widget/TabLayout$Tab;Z)V

    .line 1976
    :goto_ab
    invoke-virtual {v6}, Lcom/transsion/camera/app/ui/widget/TabLayout$Tab;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    .line 1977
    iget-object v7, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mCurrentModeName:Ljava/lang/String;

    invoke-virtual {p0, v7}, Lcom/transsion/camera/app/ui/ModePickerUI;->isTabLayoutMode(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_d3

    const-string v7, "com.transsion.camera.feature.mode.more.MoreModeEntry"

    invoke-virtual {v6}, Lcom/transsion/camera/app/ui/widget/TabLayout$Tab;->getFeatureName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_d3

    iget-object v7, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeInformation:Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;

    invoke-static {v7}, Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;->-$$Nest$fgetmCurrentModeItem(Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;)Lcom/transsion/camera/app/common/FeatureResource;

    move-result-object v7

    if-eqz v7, :cond_d3

    .line 1978
    iget-object v5, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeInformation:Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;

    invoke-static {v5}, Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;->-$$Nest$fgetmCurrentModeItem(Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;)Lcom/transsion/camera/app/common/FeatureResource;

    move-result-object v5

    iget-object v5, v5, Lcom/transsion/camera/app/common/FeatureResource;->mFeatureTitle:Ljava/lang/String;

    .line 1980
    :cond_d3
    invoke-virtual {v6, v5}, Lcom/transsion/camera/app/ui/widget/TabLayout$Tab;->setContentDescription(Ljava/lang/CharSequence;)Lcom/transsion/camera/app/ui/widget/TabLayout$Tab;

    goto/16 :goto_27

    .line 1982
    :cond_d8
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p2

    iget-boolean p2, p2, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportUI5MoreModeStyle:Z

    if-eqz p2, :cond_e8

    iget-object p2, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mCurrentModeName:Ljava/lang/String;

    invoke-virtual {p0, p2}, Lcom/transsion/camera/app/ui/ModePickerUI;->isTabLayoutMode(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_ed

    .line 1983
    :cond_e8
    iget-object p2, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeTabLayout:Lcom/transsion/camera/app/ui/widget/TabLayout;

    invoke-virtual {p2}, Lcom/transsion/camera/app/ui/widget/TabLayout;->updateHeadFootPadding()V

    :cond_ed
    if-eqz p1, :cond_f6

    if-nez v4, :cond_f6

    .line 1986
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeInformation:Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;

    invoke-static {p0, p1}, Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;->-$$Nest$mupdateCurrentMode(Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;Ljava/lang/String;)V

    :cond_f6
    :goto_f6
    return-void
.end method

.method private updateMoreCancelRootParams()V
    .registers 5

    .line 1780
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeTabLayout:Lcom/transsion/camera/app/ui/widget/TabLayout;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/widget/TabLayout;->getMoreTabView()Lcom/transsion/camera/app/ui/widget/TabLayout$TabView;

    move-result-object v0

    if-nez v0, :cond_9

    return-void

    :cond_9
    const/4 v0, 0x2

    .line 1783
    new-array v0, v0, [I

    .line 1784
    iget-object v1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeTabLayout:Lcom/transsion/camera/app/ui/widget/TabLayout;

    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/widget/TabLayout;->getMoreTabView()Lcom/transsion/camera/app/ui/widget/TabLayout$TabView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->getLocationInWindow([I)V

    .line 1785
    iget-object v1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mMoreModeCancelRoot:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, 0x0

    .line 1786
    aget v0, v0, v2

    iget-object v2, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeTabLayout:Lcom/transsion/camera/app/ui/widget/TabLayout;

    invoke-virtual {v2}, Lcom/transsion/camera/app/ui/widget/TabLayout;->getMoreTabView()Lcom/transsion/camera/app/ui/widget/TabLayout$TabView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    add-int/2addr v0, v2

    iget-object v2, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeTabLayout:Lcom/transsion/camera/app/ui/widget/TabLayout;

    .line 1787
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/16 v3, 0xc

    invoke-static {v2, v3}, Lcom/transsion/camera/utils/UIUtils;->dp2Px(Landroid/content/res/Resources;I)I

    move-result v2

    sub-int/2addr v0, v2

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 1788
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mMoreModeCancelRoot:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private updateMoreCancelRootState()V
    .registers 3

    .line 1771
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mCurrentModeName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/ModePickerUI;->isTabLayoutMode(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_14

    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mMainHandler:Landroid/os/Handler;

    if-eqz v0, :cond_14

    .line 1772
    new-instance v1, Lcom/transsion/camera/app/ui/ModePickerUI$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/ui/ModePickerUI$$ExternalSyntheticLambda3;-><init>(Lcom/transsion/camera/app/ui/ModePickerUI;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1776
    :cond_14
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/ModePickerUI;->updateMoreCancelRootParams()V

    return-void
.end method

.method private updateMoreModeGuideLeftRootLocation()V
    .registers 6

    const/4 v0, 0x2

    .line 785
    new-array v0, v0, [I

    .line 786
    iget-object v1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeTabLayout:Lcom/transsion/camera/app/ui/widget/TabLayout;

    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/widget/TabLayout;->getMoreTabView()Lcom/transsion/camera/app/ui/widget/TabLayout$TabView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->getLocationInWindow([I)V

    .line 787
    iget-object v1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mMoreModeGuideLeftRoot:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 788
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

    .line 789
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

    .line 791
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    sub-int/2addr v2, v0

    .line 792
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mMoreModeGuideLeftRoot:Landroid/view/View;

    neg-int v0, v2

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 793
    invoke-static {}, Lcom/transsion/camera/utils/MultiTouchManager;->resetState()V

    return-void
.end method

.method private updateMoreModeGuideUI(Ljava/lang/String;)V
    .registers 3

    .line 1792
    const-string v0, "com.transsion.camera.feature.mode.more.MoreModeEntry"

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_c

    .line 1793
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/ModePickerUI;->enterMoreModeGuideAnimation()V

    return-void

    .line 1795
    :cond_c
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/ModePickerUI;->exitMoreModeGuideAnimation()V

    return-void
.end method

.method private updateMoreModeGuideView(Z)V
    .registers 2

    .line 2720
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mMoreModeRightGuide:Landroid/widget/ImageView;

    if-nez p0, :cond_5

    return-void

    :cond_5
    if-eqz p1, :cond_d

    .line 2724
    sget p1, Lcom/transsion/camera/R$drawable;->ic_more_mode_guide_right_black_icon:I

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void

    .line 2726
    :cond_d
    sget p1, Lcom/transsion/camera/R$drawable;->ic_more_mode_guide_right_icon:I

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method private updateScrollHotArea()V
    .registers 10

    .line 981
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v1, 0x4

    .line 982
    new-array v2, v1, [F

    .line 983
    iget-object v3, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {v3}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenFormType()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x1

    if-ne v3, v8, :cond_7a

    .line 984
    iget v1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mOrientation:I

    const/16 v3, 0x5a

    if-eq v1, v3, :cond_4d

    const/16 v3, 0x10e

    if-eq v1, v3, :cond_4d

    .line 995
    sget v1, Lcom/transsion/camera/R$dimen;->mode_switch_scroll_hot_area_margin:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    aput v1, v2, v5

    .line 996
    iget-object v1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenWidth()I

    move-result v1

    sget v3, Lcom/transsion/camera/R$dimen;->mode_switch_scroll_hot_area_margin:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sub-int/2addr v1, v0

    int-to-float v0, v1

    aput v0, v2, v7

    .line 997
    aput v4, v2, v8

    .line 998
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

    .line 987
    :cond_4d
    aput v4, v2, v5

    .line 988
    iget-object v1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenWidth()I

    move-result v1

    iget-object v3, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {v3}, Lcom/transsion/camera/app/ui/ScreenManager;->getNavigationHeight()I

    move-result v3

    sub-int/2addr v1, v3

    int-to-float v1, v1

    aput v1, v2, v7

    .line 989
    sget v1, Lcom/transsion/camera/R$dimen;->mode_switch_scroll_hot_area_margin:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    aput v1, v2, v8

    .line 990
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

    .line 1001
    :cond_7a
    iget-object v3, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {v3}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenFormType()I

    move-result v3

    if-ne v3, v7, :cond_c5

    .line 1002
    iget-object v1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/ScreenManager;->getColumnPreviewStartMargin()I

    move-result v1

    int-to-float v1, v1

    aput v1, v2, v5

    .line 1003
    iget-object v1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/ScreenManager;->getColumnPreviewStartMargin()I

    move-result v1

    iget-object v3, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {v3}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenWidth()I

    move-result v3

    add-int/2addr v1, v3

    int-to-float v1, v1

    aput v1, v2, v7

    .line 1004
    iget-object v1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/ScreenManager;->getTopBarHeight()I

    move-result v1

    int-to-float v1, v1

    aput v1, v2, v8

    .line 1005
    iget-object v1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenHeight()I

    move-result v1

    iget-object v3, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {v3}, Lcom/transsion/camera/app/ui/ScreenManager;->getBottomHeight()I

    move-result v3

    sub-int/2addr v1, v3

    iget-object v3, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    .line 1006
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

    .line 1007
    :cond_c5
    iget-object v3, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {v3}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenFormType()I

    move-result v3

    if-ne v3, v1, :cond_f2

    .line 1008
    sget v1, Lcom/transsion/camera/R$dimen;->mode_switch_scroll_hot_area_margin:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    aput v0, v2, v5

    .line 1009
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenWidth()I

    move-result v0

    int-to-float v0, v0

    aput v0, v2, v7

    .line 1010
    aput v4, v2, v8

    .line 1011
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

    .line 1012
    :cond_f2
    iget-object v1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenFormType()I

    move-result v1

    const/4 v3, 0x5

    if-ne v1, v3, :cond_119

    .line 1013
    aput v4, v2, v5

    .line 1014
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenWidth()I

    move-result v0

    int-to-float v0, v0

    aput v0, v2, v7

    .line 1015
    aput v4, v2, v8

    .line 1016
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

    .line 1017
    :cond_119
    iget-object v1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenFormType()I

    move-result v1

    if-eqz v1, :cond_129

    iget-object v1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    .line 1018
    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenFormType()I

    move-result v1

    if-ne v1, v6, :cond_15c

    .line 1019
    :cond_129
    aput v4, v2, v5

    .line 1020
    iget-object v1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenWidth()I

    move-result v1

    int-to-float v1, v1

    aput v1, v2, v7

    .line 1021
    iget-object v1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/ScreenManager;->getTopBarHeight()I

    move-result v1

    int-to-float v1, v1

    aput v1, v2, v8

    .line 1022
    iget-object v1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenHeight()I

    move-result v1

    iget-object v3, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {v3}, Lcom/transsion/camera/app/ui/ScreenManager;->getBottomHeight()I

    move-result v3

    sub-int/2addr v1, v3

    iget-object v3, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    .line 1023
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

    .line 1025
    :cond_15c
    :goto_15c
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeTabLayout:Lcom/transsion/camera/app/ui/widget/TabLayout;

    invoke-virtual {p0, v2}, Lcom/transsion/camera/app/ui/widget/TabLayout;->updateScrollHotArea([F)V

    return-void
.end method

.method private updateSpecifiedMode(Z)V
    .registers 3

    .line 802
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeTabLayout:Lcom/transsion/camera/app/ui/widget/TabLayout;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/widget/TabLayout;->getMoreTabView()Lcom/transsion/camera/app/ui/widget/TabLayout$TabView;

    move-result-object p0

    if-eqz p0, :cond_c

    const/4 v0, 0x1

    .line 804
    invoke-virtual {p0, v0, p1}, Lcom/transsion/camera/app/ui/widget/TabLayout$TabView;->moreModeIconClick(ZZ)V

    :cond_c
    return-void
.end method


# virtual methods
.method public abortShowOrHideModePickerRootUI()V
    .registers 2

    const/4 v0, 0x0

    .line 2076
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/ModePickerUI;->abortShowOrHideModePickerRootUI(Z)V

    return-void
.end method

.method public abortShowOrHideModePickerRootUI(Z)V
    .registers 5

    .line 2080
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

    .line 2084
    :cond_19
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p1

    iget-boolean p1, p1, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportUI5MoreModeStyle:Z

    const/4 v0, 0x0

    if-nez p1, :cond_2a

    .line 2085
    iget-object p1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModePickerRootAnimatorSet:Landroid/animation/AnimatorSet;

    new-array v0, v0, [Ljava/lang/Runnable;

    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/app/ui/ModePickerUI;->abortAnimator(Landroid/animation/Animator;[Ljava/lang/Runnable;)V

    return-void

    .line 2087
    :cond_2a
    iget-object p1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModePickerRootAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v1, Lcom/transsion/camera/app/ui/ModePickerUI$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/ui/ModePickerUI$$ExternalSyntheticLambda6;-><init>(Lcom/transsion/camera/app/ui/ModePickerUI;)V

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Runnable;

    aput-object v1, v2, v0

    invoke-direct {p0, p1, v2}, Lcom/transsion/camera/app/ui/ModePickerUI;->abortAnimator(Landroid/animation/Animator;[Ljava/lang/Runnable;)V

    .line 2092
    iget-object p1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModePickerAnimatorSet:Landroid/animation/AnimatorSet;

    new-array v0, v0, [Ljava/lang/Runnable;

    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/app/ui/ModePickerUI;->abortAnimator(Landroid/animation/Animator;[Ljava/lang/Runnable;)V

    return-void
.end method

.method public canScrollToNext()Z
    .registers 2

    .line 906
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/ModePickerUI;->isSupportUI5MoreModeStyle()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 907
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeTabLayout:Lcom/transsion/camera/app/ui/widget/TabLayout;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/widget/TabLayout;->canScrollToNext()Z

    move-result p0

    return p0

    .line 909
    :cond_d
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeInformation:Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;->-$$Nest$mcurrentIsTabLayoutMode(Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 910
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

    .line 918
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/ModePickerUI;->isSupportUI5MoreModeStyle()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 919
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeTabLayout:Lcom/transsion/camera/app/ui/widget/TabLayout;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/widget/TabLayout;->canScrollToPrevious()Z

    move-result p0

    return p0

    .line 921
    :cond_d
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeInformation:Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;->-$$Nest$mcurrentIsTabLayoutMode(Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 922
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

    .line 930
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/ModePickerUI;->isSupportUI5MoreModeStyle()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 931
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeTabLayout:Lcom/transsion/camera/app/ui/widget/TabLayout;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/widget/TabLayout;->canScrolling()Z

    move-result p0

    return p0

    .line 933
    :cond_d
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeInformation:Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;->-$$Nest$mcurrentIsTabLayoutMode(Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 934
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

    .line 1311
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModePickerAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1312
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModePickerAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_f
    return-void
.end method

.method public currentIsIabLayoutMode()Z
    .registers 1

    .line 1118
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeInformation:Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;->-$$Nest$mcurrentIsTabLayoutMode(Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;)Z

    move-result p0

    return p0
.end method

.method public down(FF)V
    .registers 3

    .line 810
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeTabLayout:Lcom/transsion/camera/app/ui/widget/TabLayout;

    if-eqz p0, :cond_7

    .line 811
    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/ui/widget/TabLayout;->down(FF)V

    :cond_7
    return-void
.end method

.method public exitModeOnMoreTab()V
    .registers 2

    .line 2365
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mMoreModeCancelRoot:Landroid/view/View;

    if-eqz v0, :cond_7

    .line 2366
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

    .line 2703
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mContext:Landroid/content/Context;

    sget v0, Lcom/transsion/camera/R$anim;->tab_animation_interpolator:I

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object p0

    return-object p0
.end method

.method public hideModePicker()V
    .registers 12

    .line 1278
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/ModePickerUI;->cancelAnimation()V

    .line 1279
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModePickerLayout:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_d5

    const/4 v1, 0x2

    .line 1280
    new-array v2, v1, [F

    fill-array-data v2, :array_d6

    const-string v3, "alpha"

    invoke-static {v0, v3, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModePickerAlphaAnimation:Landroid/animation/ObjectAnimator;

    .line 1281
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

    .line 1282
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mMoreModeCancelRoot:Landroid/view/View;

    new-array v4, v1, [F

    fill-array-data v4, :array_de

    invoke-static {v0, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mMoreModeCancelAlphaAnimation:Landroid/animation/ObjectAnimator;

    .line 1283
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

    .line 1284
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mMoreModeGuideRightRoot:Landroid/view/View;

    new-array v4, v1, [F

    fill-array-data v4, :array_e6

    invoke-static {v0, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mMoreModeGuideAlphaAnimation:Landroid/animation/ObjectAnimator;

    .line 1285
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

    .line 1286
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModePickerAnimatorSet:Landroid/animation/AnimatorSet;

    .line 1287
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/ModePickerUI;->isSupportUI5MoreModeStyle()Z

    move-result v0

    if-eqz v0, :cond_a7

    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mCurrentModeName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/ModePickerUI;->isTabLayoutMode(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a7

    .line 1288
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

    .line 1292
    :cond_a7
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModePickerAnimatorSet:Landroid/animation/AnimatorSet;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModePickerAlphaAnimation:Landroid/animation/ObjectAnimator;

    iget-object v3, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModePickerTranslateAnimation:Landroid/animation/ObjectAnimator;

    new-array v1, v1, [Landroid/animation/Animator;

    aput-object v2, v1, v5

    aput-object v3, v1, v7

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1294
    :goto_b6
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModePickerAnimatorSet:Landroid/animation/AnimatorSet;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mPathInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1295
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModePickerAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v1, Lcom/transsion/camera/app/ui/ModePickerUI$8;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/ui/ModePickerUI$8;-><init>(Lcom/transsion/camera/app/ui/ModePickerUI;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1306
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

    .line 277
    iput-object p2, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModePickerRoot:Landroid/view/ViewGroup;

    .line 279
    sget v0, Lcom/transsion/camera/R$layout;->mode_picker_layout:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mRootView:Landroid/view/View;

    .line 280
    sget p2, Lcom/transsion/camera/R$id;->more_mode_layout_guide_right_ui:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewStub;

    .line 281
    invoke-virtual {p1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 282
    iget-object p1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mRootView:Landroid/view/View;

    sget p2, Lcom/transsion/camera/R$id;->more_mode_guide_right_root:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mMoreModeGuideRightRoot:Landroid/view/View;

    .line 283
    iget-object p1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mRootView:Landroid/view/View;

    sget p2, Lcom/transsion/camera/R$id;->more_mode_guide_right_icon:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mMoreModeRightGuide:Landroid/widget/ImageView;

    .line 285
    iget-object p1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mRootView:Landroid/view/View;

    sget p2, Lcom/transsion/camera/R$id;->more_mode_layout_guide_left_ui:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewStub;

    .line 286
    invoke-virtual {p1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 287
    iget-object p1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mRootView:Landroid/view/View;

    sget p2, Lcom/transsion/camera/R$id;->more_mode_guide_left_root:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mMoreModeGuideLeftRoot:Landroid/view/View;

    .line 289
    iget-object p1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mRootView:Landroid/view/View;

    sget p2, Lcom/transsion/camera/R$id;->more_mode_cancel_ui:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewStub;

    .line 290
    invoke-virtual {p1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 291
    iget-object p1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mRootView:Landroid/view/View;

    sget p2, Lcom/transsion/camera/R$id;->more_mode_cancel_root:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mMoreModeCancelRoot:Landroid/view/View;

    .line 292
    iget-object p1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mRootView:Landroid/view/View;

    sget p2, Lcom/transsion/camera/R$id;->more_mode_cancel_icon:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mMoreModeCancelIcon:Landroid/widget/ImageView;

    .line 293
    new-instance p1, Lcom/transsion/camera/app/ui/ModePickerUI$CurrentModeUI;

    iget-object p2, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mRootView:Landroid/view/View;

    sget v0, Lcom/transsion/camera/R$id;->current_mode_root:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mRootView:Landroid/view/View;

    sget v2, Lcom/transsion/camera/R$id;->current_mode_name:I

    .line 294
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mRootView:Landroid/view/View;

    sget v3, Lcom/transsion/camera/R$id;->current_mode_cancel:I

    .line 295
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-direct {p1, p2, v0, v2, v3}, Lcom/transsion/camera/app/ui/ModePickerUI$CurrentModeUI;-><init>(Landroid/view/View;Landroid/widget/TextView;Landroid/widget/ImageView;Lcom/transsion/camera/app/ui/ModePickerUI-IA;)V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mCurrentModeUI:Lcom/transsion/camera/app/ui/ModePickerUI$CurrentModeUI;

    .line 296
    iget-object p1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mRootView:Landroid/view/View;

    sget p2, Lcom/transsion/camera/R$id;->mode_picker_tab_frame:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModePickerLayout:Landroid/widget/FrameLayout;

    .line 297
    iget-object p1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mRootView:Landroid/view/View;

    sget p2, Lcom/transsion/camera/R$id;->mode_picker_container:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/app/ui/widget/RotateLayout;

    iput-object p1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModePickerContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    .line 298
    iget-object p1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mRootView:Landroid/view/View;

    sget p2, Lcom/transsion/camera/R$id;->mode_picker_tab_layout:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/app/ui/widget/TabLayout;

    iput-object p1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeTabLayout:Lcom/transsion/camera/app/ui/widget/TabLayout;

    .line 299
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/ModePickerUI;->getTabAnimationDuration()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/transsion/camera/app/ui/widget/TabLayout;->setTabAnimationDuration(I)V

    .line 300
    iget-object p1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeTabLayout:Lcom/transsion/camera/app/ui/widget/TabLayout;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/ModePickerUI;->getTabAnimationInterpolator()Landroid/view/animation/Interpolator;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/transsion/camera/app/ui/widget/TabLayout;->setTabAnimationInterpolator(Landroid/view/animation/Interpolator;)V

    .line 301
    iget-object p1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeTabLayout:Lcom/transsion/camera/app/ui/widget/TabLayout;

    invoke-virtual {p1, v1}, Landroid/view/View;->setHorizontalFadingEdgeEnabled(Z)V

    .line 302
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

    .line 303
    iget-object p1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/transsion/camera/utils/CameraUtil;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_e6

    .line 304
    iget-object p1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeTabLayout:Lcom/transsion/camera/app/ui/widget/TabLayout;

    invoke-virtual {p1, v1}, Landroid/view/View;->setFocusable(Z)V

    goto :goto_eb

    .line 306
    :cond_e6
    iget-object p1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeTabLayout:Lcom/transsion/camera/app/ui/widget/TabLayout;

    invoke-virtual {p1, p2}, Landroid/view/View;->setFocusable(Z)V

    .line 308
    :goto_eb
    iget-object p1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/transsion/camera/utils/FeatureSupport;->isSupportFoldUI(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_111

    .line 309
    iget-object p1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mRootView:Landroid/view/View;

    sget v0, Lcom/transsion/camera/R$id;->mode_selector_layout_stub:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewStub;

    .line 310
    invoke-virtual {p1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 311
    iget-object p1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mRootView:Landroid/view/View;

    sget v0, Lcom/transsion/camera/R$id;->mode_selector_layout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/app/ui/widget/VerticalModeSelector;

    iput-object p1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeSelector:Lcom/transsion/camera/app/ui/widget/VerticalModeSelector;

    const/high16 v0, 0x60000

    .line 312
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    .line 315
    :cond_111
    iget-object p1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeSwitchScroller:Lcom/transsion/camera/app/ui/ModeSwitchScroller;

    invoke-virtual {p1, p0}, Lcom/transsion/camera/app/ui/ModeSwitchScroller;->setModeScroll(Lcom/transsion/camera/app/ui/ModeSwitchScroller$IModeScrollCallback;)V

    .line 316
    iget-object p1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeTabLayout:Lcom/transsion/camera/app/ui/widget/TabLayout;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v0, 0x11

    .line 317
    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 318
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/camera/R$dimen;->more_mode_picker_list_margin:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 319
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeTabLayout:Lcom/transsion/camera/app/ui/widget/TabLayout;

    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 321
    iget-object p1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mRootView:Landroid/view/View;

    sget v0, Lcom/transsion/camera/R$id;->current_mode_root:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 322
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 323
    iput p2, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 324
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 325
    iget-object p1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeHorizontalScroll:Lcom/transsion/camera/app/ui/ModeHorizontalScroll2;

    invoke-virtual {p1, p0}, Lcom/transsion/camera/app/ui/ModeHorizontalScroll2;->setModeScroll(Lcom/transsion/camera/app/ui/ModeHorizontalScroll2$IModeScrollCallback;)V

    .line 327
    iget-object p1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeOrderProvider:Lcom/transsion/camera/app/mode/ModeOrderProvider;

    invoke-virtual {p1}, Lcom/transsion/camera/app/mode/ModeOrderProvider;->getConfig()Lcom/transsion/camera/app/mode/ModePickerConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/camera/app/mode/ModePickerConfig;->modePickerStyleMore()Z

    move-result p1

    if-eqz p1, :cond_19c

    .line 328
    iget-object p1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mMoreModeGuideRightRoot:Landroid/view/View;

    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeOrderProvider:Lcom/transsion/camera/app/mode/ModeOrderProvider;

    invoke-virtual {v0}, Lcom/transsion/camera/app/mode/ModeOrderProvider;->moreModeShow()Z

    move-result v0

    if-eqz v0, :cond_16d

    invoke-direct {p0}, Lcom/transsion/camera/app/ui/ModePickerUI;->isShowMoreModeGuideView()Z

    move-result v0

    if-eqz v0, :cond_16d

    move v0, p2

    goto :goto_16f

    :cond_16d
    const/16 v0, 0x8

    :goto_16f
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 329
    sget-object p1, Lcom/transsion/camera/app/ui/ModePickerUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "more guide visibility: inflateView, set "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeOrderProvider:Lcom/transsion/camera/app/mode/ModeOrderProvider;

    invoke-virtual {v1}, Lcom/transsion/camera/app/mode/ModeOrderProvider;->moreModeShow()Z

    move-result v1

    if-eqz v1, :cond_190

    invoke-direct {p0}, Lcom/transsion/camera/app/ui/ModePickerUI;->isShowMoreModeGuideView()Z

    move-result v1

    if-eqz v1, :cond_190

    const-string/jumbo v1, "visble"

    goto :goto_192

    :cond_190
    const-string v1, "gone"

    :goto_192
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 332
    :cond_19c
    invoke-static {}, Lcom/transsion/camera/app/common/ModuleTransferManager;->getTransferManager()Lcom/transsion/camera/app/common/ModuleTransferManager;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mIModuleTransfer:Lcom/transsion/camera/app/common/IModuleTransfer;

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/common/ModuleTransferManager;->registerTransferListener(Lcom/transsion/camera/app/common/IModuleTransfer;)V

    .line 333
    iput-boolean p2, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mOldValue:Z

    .line 334
    iget p1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mOrientation:I

    iget v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mScreenFormType:I

    invoke-direct {p0, p1, v0, p2}, Lcom/transsion/camera/app/ui/ModePickerUI;->updateLayoutParams(IIZ)V

    .line 335
    invoke-direct {p0, p2}, Lcom/transsion/camera/app/ui/ModePickerUI;->chooseModeUIToShow(Z)V

    .line 336
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mRootView:Landroid/view/View;

    return-object p0
.end method

.method public isEnabled()Z
    .registers 1

    .line 961
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

    .line 2161
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

.method public isModeTabScrolling()Z
    .registers 7

    .line 1101
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeTabLayout:Lcom/transsion/camera/app/ui/widget/TabLayout;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_f

    iget v3, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mScreenFormType:I

    if-eq v3, v1, :cond_f

    .line 1102
    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/widget/TabLayout;->isScrolling()Z

    move-result v0

    goto :goto_10

    :cond_f
    move v0, v2

    .line 1106
    :goto_10
    iget-object v3, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeSelector:Lcom/transsion/camera/app/ui/widget/VerticalModeSelector;

    if-eqz v3, :cond_20

    .line 1107
    invoke-virtual {v3}, Lcom/transsion/camera/app/ui/widget/VerticalModeSelector;->isScrolling()Z

    move-result v3

    if-eqz v3, :cond_20

    iget p0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mScreenFormType:I

    if-ne p0, v1, :cond_20

    move p0, v1

    goto :goto_21

    :cond_20
    move p0, v2

    .line 1109
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

    .line 1243
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportUI5MoreModeStyle:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_23

    .line 1244
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModePickerLayout:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_22

    .line 1245
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

    .line 1247
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

    .line 2470
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportUI5MoreModeStyle:Z

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeOrderProvider:Lcom/transsion/camera/app/mode/ModeOrderProvider;

    .line 2471
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

    .line 1114
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeInformation:Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;

    invoke-static {p0, p1}, Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;->-$$Nest$misTabLayoutMode(Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public modePickerHideAlphaAnimator(I)Landroid/animation/ObjectAnimator;
    .registers 5

    .line 1394
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

    .line 1384
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModePickerLayout:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    if-eqz v0, :cond_f

    .line 1385
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1386
    sget-object v0, Lcom/transsion/camera/app/ui/ModePickerUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v2, "mode picker visibility: modePickerShowAlphaAnimator set mode picker visible"

    invoke-static {v0, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1388
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

    .line 2802
    :pswitch_1d
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mIsVideoRecording:Z

    .line 2803
    invoke-virtual {p0, v1}, Lcom/transsion/camera/app/ui/ModePickerUI;->setEnable(Z)V

    return-void

    .line 2799
    :pswitch_23
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mIsVideoRecording:Z

    return-void

    .line 2806
    :pswitch_26
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mIsHALCaptureProcessing:Z

    return-void

    .line 2824
    :pswitch_29
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mIsConfigurationChanging:Z

    return-void

    .line 2820
    :pswitch_2c
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mIsConfigurationChanging:Z

    return-void

    .line 2762
    :pswitch_2f
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mIsModeSwitching:Z

    .line 2763
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mIsHALCaptureProcessing:Z

    .line 2764
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/ModePickerUI;->isSupportUI5MoreModeStyle()Z

    move-result p1

    if-eqz p1, :cond_86

    .line 2765
    iget-object p1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mCurrentModeName:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/ModePickerUI;->isTabLayoutMode(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_45

    .line 2766
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/ModePickerUI;->updateMoreCancelRootState()V

    return-void

    .line 2768
    :cond_45
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mMoreModeCancelRoot:Landroid/view/View;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 2759
    :pswitch_4d
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mIsModeSwitching:Z

    return-void

    .line 2810
    :cond_50
    :pswitch_50
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mIsHALCaptureProcessing:Z

    return-void

    .line 2773
    :cond_53
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mIsPaused:Z

    .line 2774
    iget-object p1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/transsion/camera/utils/CameraUtil;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_86

    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mIsFocusable:Z

    if-nez p1, :cond_86

    .line 2775
    iget-object p1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeTabLayout:Lcom/transsion/camera/app/ui/widget/TabLayout;

    if-eqz p1, :cond_86

    .line 2776
    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/widget/TabLayout;->getTabCount()I

    move-result p1

    :goto_69
    if-ge v2, p1, :cond_84

    .line 2778
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeTabLayout:Lcom/transsion/camera/app/ui/widget/TabLayout;

    invoke-virtual {v0, v2}, Lcom/transsion/camera/app/ui/widget/TabLayout;->getTabAt(I)Lcom/transsion/camera/app/ui/widget/TabLayout$Tab;

    move-result-object v0

    if-eqz v0, :cond_86

    .line 2779
    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/widget/TabLayout$Tab;->getView()Lcom/transsion/camera/app/ui/widget/TabLayout$TabView;

    move-result-object v3

    if-nez v3, :cond_7a

    goto :goto_86

    .line 2782
    :cond_7a
    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/widget/TabLayout$Tab;->getView()Lcom/transsion/camera/app/ui/widget/TabLayout$TabView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_69

    .line 2784
    :cond_84
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mIsFocusable:Z

    :cond_86
    :goto_86
    return-void

    .line 2789
    :cond_87
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mIsModeSwitching:Z

    .line 2790
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mIsVideoRecording:Z

    .line 2791
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mIsHALCaptureProcessing:Z

    .line 2792
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mIsSelectMoreTabView:Z

    .line 2793
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mRestoreSettingsBegin:Z

    .line 2794
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mIsDisableEnterMoreAnimation:Z

    .line 2795
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mIsConfigurationChanging:Z

    .line 2796
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mIsPaused:Z

    return-void

    .line 2816
    :cond_98
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mRestoreSettingsBegin:Z

    return-void

    .line 2813
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

    .line 204
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mNeedSwitchMode:Z

    return-void
.end method

.method public onBackPressed()Z
    .registers 4

    .line 1435
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

    .line 1436
    invoke-static {v0}, Lcom/transsion/camera/app/ui/ModePickerUI$CurrentModeUI;->-$$Nest$misVisible(Lcom/transsion/camera/app/ui/ModePickerUI$CurrentModeUI;)Z

    move-result v0

    if-eqz v0, :cond_51

    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mRootView:Landroid/view/View;

    if-eqz v0, :cond_51

    .line 1437
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_51

    .line 1438
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/ModePickerUI;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_51

    .line 1439
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeInformation:Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;->currentIsDVMode()Z

    move-result v0

    if-eqz v0, :cond_48

    .line 1440
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz v0, :cond_3a

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mIsModeSwitching:Z

    if-eqz v0, :cond_3a

    return v1

    .line 1443
    :cond_3a
    invoke-static {}, Lcom/transsion/camera/utils/manager/GlobalClickManager;->checkCanClick()Z

    move-result v0

    if-nez v0, :cond_41

    return v1

    .line 1446
    :cond_41
    invoke-static {}, Lcom/transsion/camera/utils/manager/GlobalClickManager;->isModeReseting()Z

    move-result v0

    if-eqz v0, :cond_48

    return v1

    .line 1450
    :cond_48
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeInformation:Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;->-$$Nest$mupdateCurrentMode(Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;)V

    .line 1451
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/ModePickerUI;->updateCurrentModeAndNotify()V

    return v1

    .line 1454
    :cond_51
    invoke-static {}, Lcom/transsion/camera/utils/FeatureSupport;->isSupportColumnOrBoth()Z

    move-result v0

    if-eqz v0, :cond_74

    iget v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mScreenFormType:I

    if-ne v0, v1, :cond_74

    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeSelector:Lcom/transsion/camera/app/ui/widget/VerticalModeSelector;

    if-eqz v0, :cond_74

    .line 1457
    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_74

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mIsVideoRecording:Z

    if-nez v0, :cond_74

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mVipSelfieQuiting:Z

    if-nez v0, :cond_74

    .line 1460
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeSelector:Lcom/transsion/camera/app/ui/widget/VerticalModeSelector;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/widget/VerticalModeSelector;->onBackPressed()Z

    move-result p0

    return p0

    .line 1462
    :cond_74
    iget v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mScreenFormType:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_8e

    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeSelector:Lcom/transsion/camera/app/ui/widget/VerticalModeSelector;

    if-eqz v0, :cond_8e

    .line 1464
    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_8e

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mVipSelfieQuiting:Z

    if-nez v0, :cond_8e

    .line 1466
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

    .line 212
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeSelector:Lcom/transsion/camera/app/ui/widget/VerticalModeSelector;

    if-eqz p0, :cond_7

    .line 213
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

    .line 550
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeSwitchScroller:Lcom/transsion/camera/app/ui/ModeSwitchScroller;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/ui/ModeSwitchScroller;->onOrientationChanged(I)V

    .line 551
    iget v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mOrientation:I

    if-eq v0, p1, :cond_2a

    .line 553
    iput p1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mOrientation:I

    .line 554
    iget-object v1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenFormType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_18

    .line 555
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/ui/ModePickerUI;->startModePickerUIAnimation(IZ)V

    goto :goto_2a

    .line 556
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

    .line 557
    :cond_27
    :goto_27
    invoke-direct {p0, p1, v2}, Lcom/transsion/camera/app/ui/ModePickerUI;->startModePickerUIAnimation(IZ)V

    .line 560
    :cond_2a
    :goto_2a
    iget-object p1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeTabLayout:Lcom/transsion/camera/app/ui/widget/TabLayout;

    if-eqz p1, :cond_31

    .line 561
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/ModePickerUI;->updateScrollHotArea()V

    .line 563
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

    .line 2038
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mMoreModeRightGuide:Landroid/widget/ImageView;

    if-nez v0, :cond_5

    return-void

    .line 2041
    :cond_5
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mMoreModeGuideAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 2042
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mMoreModeGuideAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    :cond_12
    const/4 v0, 0x3

    .line 2044
    new-array v1, v0, [F

    fill-array-data v1, :array_58

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 2045
    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    const/4 v0, 0x1

    .line 2046
    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    .line 2047
    new-instance v0, Lcom/transsion/camera/app/ui/ModePickerUI$11;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/ui/ModePickerUI$11;-><init>(Lcom/transsion/camera/app/ui/ModePickerUI;)V

    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 2062
    new-instance v0, Lcom/transsion/camera/app/ui/ModePickerUI$12;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/ui/ModePickerUI$12;-><init>(Lcom/transsion/camera/app/ui/ModePickerUI;)V

    invoke-virtual {v1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2069
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mMoreModeGuideAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 2070
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mMoreModeGuideAnim:Landroid/animation/AnimatorSet;

    const-wide/16 v1, 0x320

    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 2071
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mMoreModeGuideAnim:Landroid/animation/AnimatorSet;

    new-instance v1, Landroid/view/animation/PathInterpolator;

    const/4 v2, 0x0

    const v3, 0x3f28f5c3    # 0.66f

    const v4, 0x3ea8f5c3    # 0.33f

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v1, v4, v2, v3, v5}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2072
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mMoreModeGuideAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    return-void

    :array_58
    .array-data 4
        0x3f800000    # 1.0f
        0x3f99999a    # 1.2f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public resetRecordingUI()V
    .registers 3

    .line 2848
    sget-object v0, Lcom/transsion/camera/app/ui/ModePickerUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "resetRecordingUI: "

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 2849
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mRecordingAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_16

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 2850
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mRecordingAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 2852
    :cond_16
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mRootView:Landroid/view/View;

    if-eqz v0, :cond_2c

    .line 2853
    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 2854
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mRootView:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 2855
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mRootView:Landroid/view/View;

    sget v0, Lcom/transsion/camera/app/common/R$id;->key_video_recording_state:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    :cond_2c
    return-void
.end method

.method protected ringScreenLightUpdateUI()V
    .registers 3

    .line 2712
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeSelector:Lcom/transsion/camera/app/ui/widget/VerticalModeSelector;

    if-eqz v0, :cond_9

    .line 2713
    iget-boolean v1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mOldValue:Z

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/widget/VerticalModeSelector;->updateRingScreenLight(Z)V

    .line 2715
    :cond_9
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeTabLayout:Lcom/transsion/camera/app/ui/widget/TabLayout;

    iget-boolean v1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mOldValue:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/widget/TabLayout;->setTabNormalTextColorState(Z)V

    .line 2716
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mOldValue:Z

    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/ModePickerUI;->updateMoreModeGuideView(Z)V

    return-void
.end method

.method public scrollToNext()V
    .registers 4

    .line 864
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

    .line 865
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/ModePickerUI;->isModePickerVisible()Z

    move-result v0

    if-nez v0, :cond_29

    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result v0

    if-eqz v0, :cond_50

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mIsPopSettingShow:Z

    if-nez v0, :cond_29

    goto :goto_50

    .line 868
    :cond_29
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result v0

    if-eqz v0, :cond_34

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mIsHALCaptureProcessing:Z

    if-eqz v0, :cond_34

    goto :goto_50

    :cond_34
    const/4 v0, 0x1

    .line 871
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mNeedSwitchMode:Z

    .line 872
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/ModePickerUI;->isSupportUI5MoreModeStyle()Z

    move-result v0

    if-eqz v0, :cond_43

    .line 873
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeTabLayout:Lcom/transsion/camera/app/ui/widget/TabLayout;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/widget/TabLayout;->scrollToNext()V

    return-void

    .line 875
    :cond_43
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeInformation:Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;->-$$Nest$mcurrentIsTabLayoutMode(Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;)Z

    move-result v0

    if-eqz v0, :cond_50

    .line 876
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeTabLayout:Lcom/transsion/camera/app/ui/widget/TabLayout;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/widget/TabLayout;->scrollToNext()V

    :cond_50
    :goto_50
    return-void
.end method

.method public scrollToPrevious()V
    .registers 4

    .line 845
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

    .line 846
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/ModePickerUI;->isModePickerVisible()Z

    move-result v0

    if-nez v0, :cond_29

    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result v0

    if-eqz v0, :cond_50

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mIsPopSettingShow:Z

    if-nez v0, :cond_29

    goto :goto_50

    .line 849
    :cond_29
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result v0

    if-eqz v0, :cond_34

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mIsHALCaptureProcessing:Z

    if-eqz v0, :cond_34

    goto :goto_50

    :cond_34
    const/4 v0, 0x1

    .line 852
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mNeedSwitchMode:Z

    .line 853
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/ModePickerUI;->isSupportUI5MoreModeStyle()Z

    move-result v0

    if-eqz v0, :cond_43

    .line 854
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeTabLayout:Lcom/transsion/camera/app/ui/widget/TabLayout;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/widget/TabLayout;->scrollToPrevious()V

    return-void

    .line 856
    :cond_43
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeInformation:Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;->-$$Nest$mcurrentIsTabLayoutMode(Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;)Z

    move-result v0

    if-eqz v0, :cond_50

    .line 857
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeTabLayout:Lcom/transsion/camera/app/ui/widget/TabLayout;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/widget/TabLayout;->scrollToPrevious()V

    :cond_50
    :goto_50
    return-void
.end method

.method public scrolling(FF)V
    .registers 5

    .line 831
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mIsEditMode:Z

    if-nez v0, :cond_2d

    invoke-direct {p0}, Lcom/transsion/camera/app/ui/ModePickerUI;->isModePickerVisible()Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_2d

    .line 834
    :cond_b
    iget v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mScreenFormType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2d

    .line 835
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/ModePickerUI;->isSupportUI5MoreModeStyle()Z

    move-result v0

    if-nez v0, :cond_1e

    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeInformation:Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;->-$$Nest$mcurrentIsTabLayoutMode(Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;)Z

    move-result v0

    if-eqz v0, :cond_2d

    :cond_1e
    const/4 v0, 0x0

    .line 837
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mStopScroll:Z

    .line 838
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeTabLayout:Lcom/transsion/camera/app/ui/widget/TabLayout;

    invoke-virtual {v0, p1, p2}, Lcom/transsion/camera/app/ui/widget/TabLayout;->scrolling(FF)V

    .line 839
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mCameraOperationControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    const/16 p1, 0xb8

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    :cond_2d
    :goto_2d
    return-void
.end method

.method public selectMoreTabView(Ljava/lang/String;)V
    .registers 5

    .line 218
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/ModePickerUI;->isTabLayoutMode(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 219
    sget-object p0, Lcom/transsion/camera/app/ui/ModePickerUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "selectMoreTabView: mode is tab layout mode, return"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 222
    :cond_e
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeTabLayout:Lcom/transsion/camera/app/ui/widget/TabLayout;

    if-nez v0, :cond_1a

    .line 223
    sget-object p0, Lcom/transsion/camera/app/ui/ModePickerUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "selectMoreTabView mModeTabLayout is null!"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 226
    :cond_1a
    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/widget/TabLayout;->getMoreTabView()Lcom/transsion/camera/app/ui/widget/TabLayout$TabView;

    move-result-object v0

    if-eqz v0, :cond_58

    .line 228
    iget-object v1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mCurrentModeName:Ljava/lang/String;

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2b

    const/4 p1, 0x1

    .line 229
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mIsSelectMoreTabView:Z

    :cond_2b
    const/4 p1, 0x0

    .line 231
    invoke-virtual {v0, p1, p1}, Lcom/transsion/camera/app/ui/widget/TabLayout$TabView;->moreModeIconClick(ZZ)V

    .line 232
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mIsSelectMoreTabView:Z

    .line 233
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/ModePickerUI;->isSupportUI5MoreModeStyle()Z

    move-result v1

    if-eqz v1, :cond_58

    .line 234
    iget-object v1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeTabLayout:Lcom/transsion/camera/app/ui/widget/TabLayout;

    if-nez v1, :cond_3c

    goto :goto_58

    .line 237
    :cond_3c
    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/widget/TabLayout$TabView;->getTab()Lcom/transsion/camera/app/ui/widget/TabLayout$Tab;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeInformation:Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;

    invoke-static {v2}, Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;->-$$Nest$mcurrentModeShowName(Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/transsion/camera/app/ui/widget/TabLayout$Tab;->setText(Ljava/lang/CharSequence;)Lcom/transsion/camera/app/ui/widget/TabLayout$Tab;

    .line 239
    iget-object v1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mMoreModeGuideRightRoot:Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->setVisibility(I)V

    .line 240
    iget-object p1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/transsion/camera/app/ui/ModePickerUI$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, v0}, Lcom/transsion/camera/app/ui/ModePickerUI$$ExternalSyntheticLambda4;-><init>(Lcom/transsion/camera/app/ui/ModePickerUI;Lcom/transsion/camera/app/ui/widget/TabLayout$TabView;)V

    invoke-virtual {p1, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_58
    :goto_58
    return-void
.end method

.method public setAlpha(F)V
    .registers 5

    .line 480
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeTabLayout:Lcom/transsion/camera/app/ui/widget/TabLayout;

    if-eqz v0, :cond_44

    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mMoreModeRightGuide:Landroid/widget/ImageView;

    if-eqz v0, :cond_44

    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mMoreModeCancelRoot:Landroid/view/View;

    if-eqz v0, :cond_44

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mFaceBeautyUIShow:Z

    if-eqz v0, :cond_19

    const/high16 v0, 0x3f800000    # 1.0f

    .line 481
    invoke-static {p1, v0}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_19

    goto :goto_44

    .line 484
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

    .line 485
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeTabLayout:Lcom/transsion/camera/app/ui/widget/TabLayout;

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 486
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mMoreModeRightGuide:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 487
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/ModePickerUI;->isSupportUI5MoreModeStyle()Z

    move-result v0

    if-eqz v0, :cond_44

    .line 488
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mMoreModeCancelIcon:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    :cond_44
    :goto_44
    return-void
.end method

.method public setAppUI(Lcom/transsion/camera/app/common/IAppUI;)V
    .registers 2

    .line 1805
    iput-object p1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    return-void
.end method

.method public setCameraOperateActionControl(Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;)V
    .registers 2

    .line 1801
    iput-object p1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mCameraOperationControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    return-void
.end method

.method public setCelebrityUIShow(Z)V
    .registers 2

    .line 2136
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mCelebrityUIShow:Z

    .line 2137
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/ModePickerUI;->isFilterPanelShow()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/ModePickerUI;->chooseModeUIToShow(Z)V

    return-void
.end method

.method public setCurrentModeUIAlpha(F)V
    .registers 2

    .line 493
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mCurrentModeUI:Lcom/transsion/camera/app/ui/ModePickerUI$CurrentModeUI;

    if-eqz p0, :cond_7

    .line 494
    invoke-static {p0, p1}, Lcom/transsion/camera/app/ui/ModePickerUI$CurrentModeUI;->-$$Nest$msetAlpha(Lcom/transsion/camera/app/ui/ModePickerUI$CurrentModeUI;F)V

    :cond_7
    return-void
.end method

.method public setEnable(Z)V
    .registers 4

    .line 942
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeTabLayout:Lcom/transsion/camera/app/ui/widget/TabLayout;

    if-eqz v0, :cond_7

    .line 943
    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 945
    :cond_7
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mCurrentModeUI:Lcom/transsion/camera/app/ui/ModePickerUI$CurrentModeUI;

    if-eqz v0, :cond_e

    .line 946
    invoke-static {v0, p1}, Lcom/transsion/camera/app/ui/ModePickerUI$CurrentModeUI;->-$$Nest$msetEnable(Lcom/transsion/camera/app/ui/ModePickerUI$CurrentModeUI;Z)V

    .line 948
    :cond_e
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeSelector:Lcom/transsion/camera/app/ui/widget/VerticalModeSelector;

    if-eqz v0, :cond_1e

    if-eqz p1, :cond_1a

    .line 949
    iget-boolean v1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mVipSelfieQuiting:Z

    if-nez v1, :cond_1a

    const/4 v1, 0x1

    goto :goto_1b

    :cond_1a
    const/4 v1, 0x0

    :goto_1b
    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/widget/VerticalModeSelector;->setEnabled(Z)V

    .line 951
    :cond_1e
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mMoreModeCancelRoot:Landroid/view/View;

    if-eqz v0, :cond_25

    .line 952
    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 954
    :cond_25
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mMoreModeRightGuide:Landroid/widget/ImageView;

    if-eqz p0, :cond_2c

    .line 955
    invoke-virtual {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    :cond_2c
    return-void
.end method

.method public setFaceBeautyUIShow(Z)V
    .registers 2

    .line 2151
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mFaceBeautyUIShow:Z

    .line 2152
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/ModePickerUI;->isFilterPanelShow()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/ModePickerUI;->chooseModeUIToShow(Z)V

    return-void
.end method

.method public setFilterUIShow(Z)V
    .registers 2

    .line 2131
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mFilterUIShow:Z

    .line 2132
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/ModePickerUI;->isFilterPanelShow()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/ModePickerUI;->chooseModeUIToShow(Z)V

    return-void
.end method

.method public setInstantZoomShow(ZZ)V
    .registers 4

    .line 2116
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mIsInstantZoomShow:Z

    .line 2117
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/ModePickerUI;->chooseModeUIToShow(Z)V

    const/4 v0, 0x0

    if-eqz p2, :cond_c

    .line 2119
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/ModePickerUI;->setAlpha(F)V

    return-void

    :cond_c
    if-eqz p1, :cond_f

    goto :goto_11

    :cond_f
    const/high16 v0, 0x3f800000    # 1.0f

    .line 2121
    :goto_11
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/ModePickerUI;->setAlpha(F)V

    return-void
.end method

.method public setIsCameraSwitching(Z)V
    .registers 2

    .line 1370
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mIsCameraSwitching:Z

    if-nez p1, :cond_7

    const/4 p1, 0x0

    .line 1373
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mFromResume:Z

    :cond_7
    return-void
.end method

.method public setIsPopSettingShow(Z)V
    .registers 2

    .line 2126
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mIsPopSettingShow:Z

    .line 2127
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/ModePickerUI;->isFilterPanelShow()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/ModePickerUI;->chooseModeUIToShow(Z)V

    return-void
.end method

.method public setMakeUpUIShow(Z)V
    .registers 2

    .line 2146
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mMakeUpUIShow:Z

    .line 2147
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/ModePickerUI;->isFilterPanelShow()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/ModePickerUI;->chooseModeUIToShow(Z)V

    return-void
.end method

.method public setModeChangedListener(Lcom/transsion/camera/app/common/IAppUIListener$IModeChangedListener;)V
    .registers 3

    if-nez p1, :cond_6

    const/4 p1, 0x0

    .line 1709
    iput-object p1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeChangedListener:Lcom/transsion/camera/app/common/IAppUIListener$IModeChangedListener;

    return-void

    .line 1711
    :cond_6
    new-instance v0, Lcom/transsion/camera/app/ui/ModePickerUI$ModeChangedListenerWrapper;

    invoke-direct {v0, p0, p1}, Lcom/transsion/camera/app/ui/ModePickerUI$ModeChangedListenerWrapper;-><init>(Lcom/transsion/camera/app/ui/ModePickerUI;Lcom/transsion/camera/app/common/IAppUIListener$IModeChangedListener;)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeChangedListener:Lcom/transsion/camera/app/common/IAppUIListener$IModeChangedListener;

    return-void
.end method

.method public setModePickerOpaque()V
    .registers 2

    .line 1266
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModePickerLayout:Landroid/widget/FrameLayout;

    if-eqz p0, :cond_9

    const/high16 v0, 0x3f800000    # 1.0f

    .line 1267
    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    :cond_9
    return-void
.end method

.method public setModePickerUnOpaque()V
    .registers 2

    .line 1272
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModePickerLayout:Landroid/widget/FrameLayout;

    if-eqz p0, :cond_8

    const/4 v0, 0x0

    .line 1273
    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    :cond_8
    return-void
.end method

.method public setModePolicy(Lcom/transsion/camera/app/common/mode/IModeSwitchPolicy;)V
    .registers 2

    .line 254
    invoke-interface {p1}, Lcom/transsion/camera/app/common/mode/IModeSwitchPolicy;->getSpecifyMode()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mSpecifyMode:Ljava/lang/String;

    return-void
.end method

.method public setModeSelectorEnable(Z)V
    .registers 3

    .line 1490
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeSelector:Lcom/transsion/camera/app/ui/widget/VerticalModeSelector;

    if-eqz v0, :cond_10

    if-eqz p1, :cond_c

    .line 1491
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

    .line 2109
    sget-object v0, Lcom/transsion/camera/app/ui/ModePickerUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setModeSelectorVisibility visibility: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 2110
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeSelector:Lcom/transsion/camera/app/ui/widget/VerticalModeSelector;

    if-eqz p0, :cond_1d

    .line 2111
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_1d
    return-void
.end method

.method public setMoreModeGuideEnable(Z)V
    .registers 5

    .line 1839
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mCacheEnableMoreGuide:Z

    .line 1840
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mMoreModeRightGuide:Landroid/widget/ImageView;

    if-eqz v0, :cond_30

    .line 1841
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

    .line 1842
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mMoreModeRightGuide:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    return-void

    .line 1844
    :cond_30
    sget-object p0, Lcom/transsion/camera/app/ui/ModePickerUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "setMoreModeGuideEnable: mMoreModeRightGuide is null!"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public setMoreModeGuideRightRootOpaque()V
    .registers 3

    .line 1716
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mMoreModeGuideRightRoot:Landroid/view/View;

    if-eqz v0, :cond_f

    const/high16 v1, 0x3f800000    # 1.0f

    .line 1717
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 1718
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mMoreModeGuideRightRoot:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setTranslationY(F)V

    :cond_f
    return-void
.end method

.method public setNotifyClickMoreModeGuideIconListener(Lcom/transsion/camera/app/common/IAppUIListener$INotifyClickGuideIconListener;)V
    .registers 2

    .line 798
    iput-object p1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mNotifyClickGuideIconListener:Lcom/transsion/camera/app/common/IAppUIListener$INotifyClickGuideIconListener;

    return-void
.end method

.method public setOnMoreTabChangeListener(Lcom/transsion/camera/app/common/IAppUIListener$IMoreTabChangeListener;)V
    .registers 2

    .line 2439
    iput-object p1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mMoreTabChangeListener:Lcom/transsion/camera/app/common/IAppUIListener$IMoreTabChangeListener;

    return-void
.end method

.method public setPanelShow(Z)V
    .registers 2

    .line 2156
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mPanelShow:Z

    .line 2157
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/ModePickerUI;->isFilterPanelShow()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/ModePickerUI;->chooseModeUIToShow(Z)V

    return-void
.end method

.method public setPortraitSpotUIShow(Z)V
    .registers 2

    .line 2141
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mPortraitSpotUIShow:Z

    .line 2142
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/ModePickerUI;->isFilterPanelShow()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/ModePickerUI;->chooseModeUIToShow(Z)V

    return-void
.end method

.method public setProSeekUIShow(Z)V
    .registers 2

    .line 1473
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeSelector:Lcom/transsion/camera/app/ui/widget/VerticalModeSelector;

    if-eqz p0, :cond_7

    .line 1474
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/widget/VerticalModeSelector;->setProSeekUIShow(Z)V

    :cond_7
    return-void
.end method

.method public setSelfTimerBegin(Z)V
    .registers 2

    .line 1378
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mSelfTimerBegin:Z

    return-void
.end method

.method public setVipSelfieQuiting(Z)V
    .registers 2

    .line 208
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mVipSelfieQuiting:Z

    return-void
.end method

.method public setupViews()V
    .registers 6

    .line 341
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeTabLayout:Lcom/transsion/camera/app/ui/widget/TabLayout;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 342
    new-instance v1, Lcom/transsion/camera/app/common/storage/DataStore;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/transsion/camera/app/common/storage/DataStore;-><init>(Landroid/content/Context;)V

    .line 343
    new-instance v2, Landroid/view/GestureDetector;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {v2, v0, p0, v4, v3}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;Z)V

    .line 345
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mMoreModeRightGuide:Landroid/widget/ImageView;

    if-eqz v0, :cond_2a

    .line 346
    new-instance v3, Lcom/transsion/camera/app/ui/ModePickerUI$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, v1}, Lcom/transsion/camera/app/ui/ModePickerUI$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/app/ui/ModePickerUI;Lcom/transsion/camera/app/common/storage/DataStore;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 390
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mMoreModeRightGuide:Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/transsion/camera/utils/MultiTouchManager;->pressSealWithoutAnimation(Landroid/view/View;)V

    .line 391
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mCacheEnableMoreGuide:Z

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/ModePickerUI;->setMoreModeGuideEnable(Z)V

    .line 394
    :cond_2a
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mCurrentModeUI:Lcom/transsion/camera/app/ui/ModePickerUI$CurrentModeUI;

    new-instance v1, Lcom/transsion/camera/app/ui/ModePickerUI$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/ui/ModePickerUI$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/app/ui/ModePickerUI;)V

    invoke-static {v0, v1}, Lcom/transsion/camera/app/ui/ModePickerUI$CurrentModeUI;->-$$Nest$msetOnClickListener(Lcom/transsion/camera/app/ui/ModePickerUI$CurrentModeUI;Landroid/view/View$OnClickListener;)V

    .line 416
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mMoreModeCancelRoot:Landroid/view/View;

    if-eqz v0, :cond_40

    .line 417
    new-instance v1, Lcom/transsion/camera/app/ui/ModePickerUI$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/ui/ModePickerUI$$ExternalSyntheticLambda2;-><init>(Lcom/transsion/camera/app/ui/ModePickerUI;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 419
    :cond_40
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeTabLayout:Lcom/transsion/camera/app/ui/widget/TabLayout;

    invoke-virtual {v0, v2}, Lcom/transsion/camera/app/ui/widget/TabLayout;->setGestureDetector(Landroid/view/GestureDetector;)V

    .line 420
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeTabLayout:Lcom/transsion/camera/app/ui/widget/TabLayout;

    new-instance v1, Lcom/transsion/camera/app/ui/ModePickerUI$OnTabSelectedListenerImpl;

    invoke-direct {v1, p0, v4}, Lcom/transsion/camera/app/ui/ModePickerUI$OnTabSelectedListenerImpl;-><init>(Lcom/transsion/camera/app/ui/ModePickerUI;Lcom/transsion/camera/app/ui/ModePickerUI-IA;)V

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/widget/TabLayout;->setOnTabSelectedListener(Lcom/transsion/camera/app/ui/widget/TabLayout$OnTabSelectedListener;)V

    .line 421
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeTabLayout:Lcom/transsion/camera/app/ui/widget/TabLayout;

    new-instance v1, Lcom/transsion/camera/app/ui/ModePickerUI$OnTabScrollListenerImpl;

    invoke-direct {v1, p0, v4}, Lcom/transsion/camera/app/ui/ModePickerUI$OnTabScrollListenerImpl;-><init>(Lcom/transsion/camera/app/ui/ModePickerUI;Lcom/transsion/camera/app/ui/ModePickerUI-IA;)V

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/widget/TabLayout;->setOnTabScrollListener(Lcom/transsion/camera/app/ui/widget/TabLayout$OnTabScrollListener;)V

    .line 422
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeTabLayout:Lcom/transsion/camera/app/ui/widget/TabLayout;

    new-instance v1, Lcom/transsion/camera/app/ui/ModePickerUI$ActionInterceptImpl;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/ui/ModePickerUI$ActionInterceptImpl;-><init>(Lcom/transsion/camera/app/ui/ModePickerUI;)V

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/widget/TabLayout;->setActionIntercept(Lcom/transsion/camera/app/ui/widget/TabLayout$ActionIntercept;)V

    .line 423
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeTabLayout:Lcom/transsion/camera/app/ui/widget/TabLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 424
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeSelector:Lcom/transsion/camera/app/ui/widget/VerticalModeSelector;

    if-eqz v0, :cond_75

    .line 425
    new-instance v2, Lcom/transsion/camera/app/ui/ModePickerUI$OnModeSelectedListenerImpl;

    invoke-direct {v2, p0, v4}, Lcom/transsion/camera/app/ui/ModePickerUI$OnModeSelectedListenerImpl;-><init>(Lcom/transsion/camera/app/ui/ModePickerUI;Lcom/transsion/camera/app/ui/ModePickerUI-IA;)V

    invoke-virtual {v0, v2}, Lcom/transsion/camera/app/ui/widget/VerticalModeSelector;->setOnModeSelectedListener(Lcom/transsion/camera/app/ui/widget/VerticalModeSelector$OnModeSelectedListener;)V

    .line 427
    :cond_75
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/ModePickerUI;->updateModeSelectorLayout()V

    .line 428
    invoke-direct {p0, v4, v1}, Lcom/transsion/camera/app/ui/ModePickerUI;->updateModeTabLayout(Ljava/lang/String;Z)V

    .line 429
    invoke-virtual {p0, v1}, Lcom/transsion/camera/app/ui/ModePickerUI;->updateCurrentTab(Z)V

    .line 430
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/ModePickerUI;->updateCurrentModeSelector()V

    .line 431
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/ModePickerUI;->ringScreenLightUpdateUI()V

    .line 432
    invoke-direct {p0, v1}, Lcom/transsion/camera/app/ui/ModePickerUI;->chooseModeUIToShow(Z)V

    .line 433
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/ModePickerUI;->updateScrollHotArea()V

    .line 434
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeInformation:Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;->-$$Nest$mcurrentIsTabLayoutMode(Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;)Z

    move-result v0

    if-nez v0, :cond_e2

    .line 435
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/ModePickerUI;->isSupportUI5MoreModeStyle()Z

    move-result v0

    if-eqz v0, :cond_c5

    .line 436
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mSpecifyMode:Ljava/lang/String;

    if-eqz v0, :cond_e2

    .line 437
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/camera/R$string;->back_cam_mode_default:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 438
    iget-object v1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/camera/R$string;->front_cam_mode_default:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 439
    iget-object v2, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeOrderProvider:Lcom/transsion/camera/app/mode/ModeOrderProvider;

    invoke-virtual {v2, v0, v0, v1, v1}, Lcom/transsion/camera/app/mode/ModeOrderProvider;->setDefaultMode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 441
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeInformation:Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;->-$$Nest$fgetmCurrentModeItem(Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;)Lcom/transsion/camera/app/common/FeatureResource;

    move-result-object v0

    iget-object v0, v0, Lcom/transsion/camera/app/common/FeatureResource;->mFeatureName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/ModePickerUI;->selectMoreTabView(Ljava/lang/String;)V

    return-void

    .line 444
    :cond_c5
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeTabLayout:Lcom/transsion/camera/app/ui/widget/TabLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 445
    iget v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mScreenFormType:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_d7

    .line 446
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mCurrentModeUI:Lcom/transsion/camera/app/ui/ModePickerUI$CurrentModeUI;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/ModePickerUI$CurrentModeUI;->-$$Nest$mhide(Lcom/transsion/camera/app/ui/ModePickerUI$CurrentModeUI;)V

    return-void

    .line 448
    :cond_d7
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mCurrentModeUI:Lcom/transsion/camera/app/ui/ModePickerUI$CurrentModeUI;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeInformation:Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;->-$$Nest$mcurrentModeShowName(Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/app/ui/ModePickerUI$CurrentModeUI;->-$$Nest$mshow(Lcom/transsion/camera/app/ui/ModePickerUI$CurrentModeUI;Ljava/lang/String;)V

    :cond_e2
    return-void
.end method

.method public shouldExitCameraOnBackPressed()Z
    .registers 2

    .line 1479
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/ModePickerUI;->isSupportUI5MoreModeStyle()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 1480
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeInformation:Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;->-$$Nest$mcurrentIsTabLayoutMode(Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;)Z

    move-result v0

    if-nez v0, :cond_10

    const/4 p0, 0x1

    return p0

    .line 1483
    :cond_10
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeInformation:Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;->-$$Nest$mcurrentIsTabLayoutMode(Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;)Z

    move-result p0

    return p0

    .line 1486
    :cond_17
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeInformation:Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;->-$$Nest$mcurrentIsTabLayoutMode(Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;)Z

    move-result p0

    return p0
.end method

.method public showModePicker()V
    .registers 12

    .line 1130
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/ModePickerUI;->cancelAnimation()V

    .line 1131
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModePickerLayout:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_e4

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_e4

    .line 1132
    sget-object v0, Lcom/transsion/camera/app/ui/ModePickerUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "showModePicker: "

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1133
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModePickerLayout:Landroid/widget/FrameLayout;

    const/4 v1, 0x2

    new-array v2, v1, [F

    fill-array-data v2, :array_e8

    const-string v3, "alpha"

    invoke-static {v0, v3, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModePickerAlphaAnimation:Landroid/animation/ObjectAnimator;

    .line 1134
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

    .line 1135
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mMoreModeCancelRoot:Landroid/view/View;

    new-array v4, v1, [F

    fill-array-data v4, :array_f0

    invoke-static {v0, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mMoreModeCancelAlphaAnimation:Landroid/animation/ObjectAnimator;

    .line 1136
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

    .line 1137
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mMoreModeGuideRightRoot:Landroid/view/View;

    new-array v4, v1, [F

    fill-array-data v4, :array_f8

    invoke-static {v0, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mMoreModeGuideAlphaAnimation:Landroid/animation/ObjectAnimator;

    .line 1138
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

    .line 1139
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModePickerAnimatorSet:Landroid/animation/AnimatorSet;

    .line 1140
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/ModePickerUI;->isSupportUI5MoreModeStyle()Z

    move-result v0

    if-eqz v0, :cond_b6

    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mCurrentModeName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/ModePickerUI;->isTabLayoutMode(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b6

    .line 1141
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

    .line 1145
    :cond_b6
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModePickerAnimatorSet:Landroid/animation/AnimatorSet;

    iget-object v3, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModePickerAlphaAnimation:Landroid/animation/ObjectAnimator;

    iget-object v4, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModePickerTranslateAnimation:Landroid/animation/ObjectAnimator;

    new-array v1, v1, [Landroid/animation/Animator;

    aput-object v3, v1, v5

    aput-object v4, v1, v2

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1147
    :goto_c5
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModePickerAnimatorSet:Landroid/animation/AnimatorSet;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mPathInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1148
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModePickerAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v1, Lcom/transsion/camera/app/ui/ModePickerUI$6;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/ui/ModePickerUI$6;-><init>(Lcom/transsion/camera/app/ui/ModePickerUI;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1169
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModePickerAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-direct {p0}, Lcom/transsion/camera/app/ui/ModePickerUI;->getAnimatorDuration()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 1171
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

    .line 1179
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportUI5MoreModeStyle:Z

    if-eqz v0, :cond_34

    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModePickerAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_34

    .line 1180
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_34

    .line 1181
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

    .line 1182
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mIsModeSwitching:Z

    if-eqz v0, :cond_33

    .line 1183
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModePickerAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_33
    return-void

    .line 1187
    :cond_34
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/ModePickerUI;->cancelAnimation()V

    .line 1188
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModePickerLayout:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_65

    .line 1189
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

    .line 1191
    :cond_65
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/ModePickerUI;->isNeedShowModePickerAnim()Z

    move-result v0

    if-eqz v0, :cond_135

    .line 1192
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModePickerLayout:Landroid/widget/FrameLayout;

    const/4 v1, 0x2

    new-array v2, v1, [F

    fill-array-data v2, :array_13a

    const-string v3, "alpha"

    invoke-static {v0, v3, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModePickerAlphaAnimation:Landroid/animation/ObjectAnimator;

    .line 1193
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

    .line 1194
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mMoreModeGuideRightRoot:Landroid/view/View;

    new-array v4, v1, [F

    fill-array-data v4, :array_142

    invoke-static {v0, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 1195
    iget-object v4, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mMoreModeGuideRightRoot:Landroid/view/View;

    iget v8, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mTBTranslateDistance:I

    int-to-float v8, v8

    new-array v9, v1, [F

    aput v8, v9, v5

    aput v6, v9, v2

    invoke-static {v4, v7, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 1196
    iget-object v8, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mMoreModeCancelRoot:Landroid/view/View;

    new-array v9, v1, [F

    fill-array-data v9, :array_14a

    invoke-static {v8, v3, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 1197
    iget-object v8, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mMoreModeCancelRoot:Landroid/view/View;

    iget v9, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mTBTranslateDistance:I

    int-to-float v9, v9

    new-array v10, v1, [F

    aput v9, v10, v5

    aput v6, v10, v2

    invoke-static {v8, v7, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    .line 1198
    new-instance v7, Landroid/animation/AnimatorSet;

    invoke-direct {v7}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v7, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModePickerAnimatorSet:Landroid/animation/AnimatorSet;

    .line 1199
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/ModePickerUI;->isSupportUI5MoreModeStyle()Z

    move-result v7

    const/4 v8, 0x4

    const/4 v9, 0x3

    if-eqz v7, :cond_f7

    iget-object v7, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mCurrentModeName:Ljava/lang/String;

    invoke-virtual {p0, v7}, Lcom/transsion/camera/app/ui/ModePickerUI;->isTabLayoutMode(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_f7

    .line 1200
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

    .line 1203
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

    .line 1206
    :goto_10a
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModePickerAnimatorSet:Landroid/animation/AnimatorSet;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mTBPathInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1207
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModePickerAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v1, Lcom/transsion/camera/app/ui/ModePickerUI$7;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/ui/ModePickerUI$7;-><init>(Lcom/transsion/camera/app/ui/ModePickerUI;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1234
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportUI5MoreModeStyle:Z

    if-eqz v0, :cond_12a

    .line 1235
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModePickerAnimatorSet:Landroid/animation/AnimatorSet;

    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    .line 1237
    :cond_12a
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModePickerAnimatorSet:Landroid/animation/AnimatorSet;

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 1239
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

    .line 1256
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeSelector:Lcom/transsion/camera/app/ui/widget/VerticalModeSelector;

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_b

    goto :goto_f

    .line 1259
    :cond_b
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeTabLayout:Lcom/transsion/camera/app/ui/widget/TabLayout;

    if-nez v0, :cond_10

    :goto_f
    return-void

    .line 1262
    :cond_10
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/ModePickerUI;->chooseModeUIToShow(Z)V

    return-void
.end method

.method public showOrHideModePickerFromUnderwater(Z)V
    .registers 2

    .line 2359
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mRootView:Landroid/view/View;

    if-eqz p0, :cond_c

    if-eqz p1, :cond_8

    const/4 p1, 0x0

    goto :goto_9

    :cond_8
    const/4 p1, 0x4

    .line 2360
    :goto_9
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_c
    return-void
.end method

.method public showOrHideModePickerRootUI(ZZZZ)V
    .registers 30

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    .line 2175
    iget-object v5, v0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModePickerLayout:Landroid/widget/FrameLayout;

    if-nez v5, :cond_16

    .line 2176
    sget-object v0, Lcom/transsion/camera/app/ui/ModePickerUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "showOrHideModePickerRootUI: mModePickerLayout is null, return"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 2179
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

    .line 2181
    iget-boolean v6, v0, Lcom/transsion/camera/app/ui/ModePickerUI;->mIsAnimationRunning:Z

    if-eqz v6, :cond_55

    if-eqz v1, :cond_55

    .line 2182
    const-string v0, "showOrHideModePickerRootUI: AnimationIsRunning, return"

    invoke-static {v5, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 2185
    :cond_55
    iget-object v6, v0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModePickerRootAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v6, :cond_5c

    .line 2186
    invoke-virtual {v6}, Landroid/animation/AnimatorSet;->cancel()V

    .line 2188
    :cond_5c
    iget-object v6, v0, Lcom/transsion/camera/app/ui/ModePickerUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    xor-int/lit8 v7, v1, 0x1

    invoke-interface {v6, v7}, Lcom/transsion/camera/app/common/IAppUI;->setModePickerSink(Z)V

    if-eqz v2, :cond_6b

    .line 2195
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

    .line 2197
    :cond_72
    invoke-direct {v0}, Lcom/transsion/camera/app/ui/ModePickerUI;->getTranslateDistance()I

    move-result v10

    .line 2198
    :goto_76
    iget v11, v0, Lcom/transsion/camera/app/ui/ModePickerUI;->mScreenFormType:I

    const/4 v12, 0x4

    const-string v14, "com.transsion.camera.feature.mode.more.MoreModeEntry"

    if-eq v11, v12, :cond_80

    const/4 v15, 0x5

    if-ne v11, v15, :cond_84

    :cond_80
    move/from16 v19, v2

    goto/16 :goto_230

    .line 2220
    :cond_84
    iget-object v11, v0, Lcom/transsion/camera/app/ui/ModePickerUI;->mCurrentModeName:Ljava/lang/String;

    invoke-static {v14, v11}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_92

    .line 2221
    const-string v0, "no need to operate ModePickerLayout in MoreMode!"

    invoke-static {v5, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 2225
    :cond_92
    new-instance v11, Landroid/animation/AnimatorSet;

    invoke-direct {v11}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v11, v0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModePickerRootAnimatorSet:Landroid/animation/AnimatorSet;

    .line 2226
    iget-object v11, v0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModePickerLayout:Landroid/widget/FrameLayout;

    int-to-float v10, v10

    const-wide/16 v16, 0x0

    const/4 v6, 0x1

    new-array v7, v6, [F

    aput v10, v7, v2

    const-string/jumbo v13, "translationY"

    invoke-static {v11, v13, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    invoke-virtual {v7, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v7

    .line 2227
    iget-object v11, v0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModePickerLayout:Landroid/widget/FrameLayout;

    move/from16 v18, v15

    int-to-float v15, v1

    move/from16 v19, v2

    new-array v2, v6, [F

    aput v15, v2, v19

    const-string v12, "alpha"

    invoke-static {v11, v12, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v2, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 2228
    iget-object v11, v0, Lcom/transsion/camera/app/ui/ModePickerUI;->mMoreModeGuideRightRoot:Landroid/view/View;

    move-object/from16 v21, v2

    new-array v2, v6, [F

    aput v15, v2, v19

    invoke-static {v11, v12, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v2, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 2229
    iget-object v11, v0, Lcom/transsion/camera/app/ui/ModePickerUI;->mMoreModeGuideRightRoot:Landroid/view/View;

    move-object/from16 v22, v2

    new-array v2, v6, [F

    aput v10, v2, v19

    invoke-static {v11, v13, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v2, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 2230
    iget-object v11, v0, Lcom/transsion/camera/app/ui/ModePickerUI;->mMoreModeCancelRoot:Landroid/view/View;

    move-object/from16 v23, v2

    new-array v2, v6, [F

    aput v10, v2, v19

    invoke-static {v11, v13, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v2, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 2231
    iget-object v11, v0, Lcom/transsion/camera/app/ui/ModePickerUI;->mMoreModeCancelRoot:Landroid/view/View;

    new-array v13, v6, [F

    aput v15, v13, v19

    invoke-static {v11, v12, v13}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v11

    invoke-virtual {v11, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v11

    .line 2232
    iget-object v12, v0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeOrderProvider:Lcom/transsion/camera/app/mode/ModeOrderProvider;

    invoke-virtual {v12}, Lcom/transsion/camera/app/mode/ModeOrderProvider;->getConfig()Lcom/transsion/camera/app/mode/ModePickerConfig;

    move-result-object v12

    invoke-virtual {v12}, Lcom/transsion/camera/app/mode/ModePickerConfig;->modePickerStyleMore()Z

    move-result v12

    const/4 v13, 0x6

    const/4 v15, 0x3

    move/from16 v24, v6

    const/4 v6, 0x2

    if-eqz v12, :cond_1c9

    .line 2233
    iget-object v12, v0, Lcom/transsion/camera/app/ui/ModePickerUI;->mMoreModeGuideRightRoot:Landroid/view/View;

    if-eqz v12, :cond_199

    iget-object v12, v0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeInformation:Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;

    .line 2234
    invoke-static {v12}, Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;->-$$Nest$mcurrentIsTabLayoutMode(Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;)Z

    move-result v12

    if-eqz v12, :cond_199

    iget-object v12, v0, Lcom/transsion/camera/app/ui/ModePickerUI;->mCurrentModeName:Ljava/lang/String;

    .line 2235
    invoke-static {v14, v12}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_199

    iget-object v12, v0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeOrderProvider:Lcom/transsion/camera/app/mode/ModeOrderProvider;

    .line 2236
    invoke-virtual {v12}, Lcom/transsion/camera/app/mode/ModeOrderProvider;->moreModeShow()Z

    move-result v12

    if-eqz v12, :cond_199

    .line 2237
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v2

    iget-boolean v2, v2, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportUI5MoreModeStyle:Z

    if-eqz v2, :cond_154

    if-eqz v1, :cond_154

    if-eqz v4, :cond_154

    cmp-long v2, v8, v16

    if-nez v2, :cond_154

    .line 2238
    iget-object v2, v0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModePickerLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v10}, Landroid/view/View;->setTranslationY(F)V

    .line 2239
    iget-object v2, v0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModePickerLayout:Landroid/widget/FrameLayout;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/view/View;->setAlpha(F)V

    .line 2240
    iget-object v2, v0, Lcom/transsion/camera/app/ui/ModePickerUI;->mMoreModeGuideRightRoot:Landroid/view/View;

    invoke-virtual {v2, v10}, Landroid/view/View;->setTranslationY(F)V

    .line 2241
    iget-object v2, v0, Lcom/transsion/camera/app/ui/ModePickerUI;->mMoreModeGuideRightRoot:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setAlpha(F)V

    goto :goto_164

    .line 2243
    :cond_154
    iget-object v2, v0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModePickerRootAnimatorSet:Landroid/animation/AnimatorSet;

    const/4 v4, 0x4

    new-array v4, v4, [Landroid/animation/Animator;

    aput-object v22, v4, v19

    aput-object v23, v4, v24

    aput-object v7, v4, v6

    aput-object v21, v4, v15

    invoke-virtual {v2, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 2245
    :goto_164
    iget-object v2, v0, Lcom/transsion/camera/app/ui/ModePickerUI;->mMoreModeGuideRightRoot:Landroid/view/View;

    if-eqz v1, :cond_171

    invoke-direct {v0}, Lcom/transsion/camera/app/ui/ModePickerUI;->isShowMoreModeGuideView()Z

    move-result v4

    if-eqz v4, :cond_171

    move/from16 v4, v19

    goto :goto_173

    :cond_171
    const/16 v4, 0x8

    :goto_173
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 2246
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "more guide visibility: showOrHideModePickerRootUI: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_18c

    invoke-direct {v0}, Lcom/transsion/camera/app/ui/ModePickerUI;->isShowMoreModeGuideView()Z

    move-result v4

    if-eqz v4, :cond_18c

    const-string/jumbo v4, "visible"

    goto :goto_18e

    :cond_18c
    const-string v4, "gone"

    :goto_18e
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_1f8

    .line 2248
    :cond_199
    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/ModePickerUI;->isSupportUI5MoreModeStyle()Z

    move-result v4

    if-eqz v4, :cond_1bd

    iget-object v4, v0, Lcom/transsion/camera/app/ui/ModePickerUI;->mCurrentModeName:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/transsion/camera/app/ui/ModePickerUI;->isTabLayoutMode(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1bd

    .line 2249
    iget-object v4, v0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModePickerRootAnimatorSet:Landroid/animation/AnimatorSet;

    new-array v5, v13, [Landroid/animation/Animator;

    aput-object v7, v5, v19

    aput-object v21, v5, v24

    aput-object v22, v5, v6

    aput-object v23, v5, v15

    const/16 v20, 0x4

    aput-object v2, v5, v20

    aput-object v11, v5, v18

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto :goto_1f8

    .line 2252
    :cond_1bd
    iget-object v2, v0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModePickerRootAnimatorSet:Landroid/animation/AnimatorSet;

    new-array v4, v6, [Landroid/animation/Animator;

    aput-object v7, v4, v19

    aput-object v21, v4, v24

    invoke-virtual {v2, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto :goto_1f8

    .line 2256
    :cond_1c9
    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/ModePickerUI;->isSupportUI5MoreModeStyle()Z

    move-result v4

    if-eqz v4, :cond_1ed

    iget-object v4, v0, Lcom/transsion/camera/app/ui/ModePickerUI;->mCurrentModeName:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/transsion/camera/app/ui/ModePickerUI;->isTabLayoutMode(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1ed

    .line 2257
    iget-object v4, v0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModePickerRootAnimatorSet:Landroid/animation/AnimatorSet;

    new-array v5, v13, [Landroid/animation/Animator;

    aput-object v7, v5, v19

    aput-object v21, v5, v24

    aput-object v22, v5, v6

    aput-object v23, v5, v15

    const/16 v20, 0x4

    aput-object v2, v5, v20

    aput-object v11, v5, v18

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto :goto_1f8

    .line 2260
    :cond_1ed
    iget-object v2, v0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModePickerRootAnimatorSet:Landroid/animation/AnimatorSet;

    new-array v4, v6, [Landroid/animation/Animator;

    aput-object v7, v4, v19

    aput-object v21, v4, v24

    invoke-virtual {v2, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 2263
    :goto_1f8
    iget-object v2, v0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModePickerRootAnimatorSet:Landroid/animation/AnimatorSet;

    iget-object v4, v0, Lcom/transsion/camera/app/ui/ModePickerUI;->mPathInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v2, v4}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    if-eqz v1, :cond_220

    if-eqz v3, :cond_215

    .line 2266
    iget-object v1, v0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModePickerRootAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v2

    iget-boolean v2, v2, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportUI5MoreModeStyle:Z

    if-eqz v2, :cond_210

    const-wide/16 v4, 0xfa

    goto :goto_212

    :cond_210
    const-wide/16 v4, 0x64

    :goto_212
    invoke-virtual {v1, v4, v5}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    .line 2268
    :cond_215
    iget-object v1, v0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModePickerRootAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v2, Lcom/transsion/camera/app/ui/ModePickerUI$13;

    invoke-direct {v2, v0, v3}, Lcom/transsion/camera/app/ui/ModePickerUI$13;-><init>(Lcom/transsion/camera/app/ui/ModePickerUI;Z)V

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_22a

    .line 2300
    :cond_220
    iget-object v1, v0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModePickerRootAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v2, Lcom/transsion/camera/app/ui/ModePickerUI$14;

    invoke-direct {v2, v0}, Lcom/transsion/camera/app/ui/ModePickerUI$14;-><init>(Lcom/transsion/camera/app/ui/ModePickerUI;)V

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2344
    :goto_22a
    iget-object v0, v0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModePickerRootAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void

    .line 2200
    :goto_230
    iget-object v2, v0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeOrderProvider:Lcom/transsion/camera/app/mode/ModeOrderProvider;

    invoke-virtual {v2}, Lcom/transsion/camera/app/mode/ModeOrderProvider;->getConfig()Lcom/transsion/camera/app/mode/ModePickerConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/transsion/camera/app/mode/ModePickerConfig;->modePickerStyleMore()Z

    move-result v2

    if-eqz v2, :cond_27b

    .line 2201
    iget-object v2, v0, Lcom/transsion/camera/app/ui/ModePickerUI;->mMoreModeGuideRightRoot:Landroid/view/View;

    if-eqz v2, :cond_274

    iget-object v2, v0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeInformation:Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;

    invoke-static {v2}, Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;->-$$Nest$mcurrentIsTabLayoutMode(Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;)Z

    move-result v2

    if-eqz v2, :cond_274

    iget-object v2, v0, Lcom/transsion/camera/app/ui/ModePickerUI;->mCurrentModeName:Ljava/lang/String;

    .line 2202
    invoke-static {v14, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_274

    iget-object v2, v0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeOrderProvider:Lcom/transsion/camera/app/mode/ModeOrderProvider;

    .line 2203
    invoke-virtual {v2}, Lcom/transsion/camera/app/mode/ModeOrderProvider;->moreModeShow()Z

    move-result v2

    if-eqz v2, :cond_274

    .line 2204
    iget-object v2, v0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModePickerLayout:Landroid/widget/FrameLayout;

    int-to-float v3, v1

    invoke-virtual {v2, v3}, Landroid/view/View;->setAlpha(F)V

    .line 2205
    iget-object v2, v0, Lcom/transsion/camera/app/ui/ModePickerUI;->mMoreModeGuideRightRoot:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setAlpha(F)V

    .line 2206
    iget-object v2, v0, Lcom/transsion/camera/app/ui/ModePickerUI;->mMoreModeGuideRightRoot:Landroid/view/View;

    invoke-direct {v0}, Lcom/transsion/camera/app/ui/ModePickerUI;->isShowMoreModeGuideView()Z

    move-result v3

    if-eqz v3, :cond_26e

    move/from16 v13, v19

    goto :goto_270

    :cond_26e
    const/16 v13, 0x8

    :goto_270
    invoke-virtual {v2, v13}, Landroid/view/View;->setVisibility(I)V

    goto :goto_281

    .line 2208
    :cond_274
    iget-object v2, v0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModePickerLayout:Landroid/widget/FrameLayout;

    int-to-float v3, v1

    invoke-virtual {v2, v3}, Landroid/view/View;->setAlpha(F)V

    goto :goto_281

    .line 2211
    :cond_27b
    iget-object v2, v0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModePickerLayout:Landroid/widget/FrameLayout;

    int-to-float v3, v1

    invoke-virtual {v2, v3}, Landroid/view/View;->setAlpha(F)V

    :goto_281
    if-eqz v1, :cond_28f

    .line 2214
    iget-object v0, v0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModePickerLayout:Landroid/widget/FrameLayout;

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2215
    const-string v0, "mode picker visibility: showOrHideModePickerRootUI set mode picker visible"

    invoke-static {v5, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :cond_28f
    return-void
.end method

.method public startRecordingAnimation(ZLandroid/animation/Animator$AnimatorListener;)V
    .registers 7

    .line 2833
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

    .line 2834
    iget-object v1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mRootView:Landroid/view/View;

    invoke-interface {p0, v1, p1}, Lcom/transsion/camera/app/common/ui/anim/IRecordingAnimationManager;->isNextRecordingAnimationEnable(Landroid/view/View;Z)Z

    move-result v1

    if-eqz v1, :cond_69

    .line 2835
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startRecordingAnimation: isRecordBegin = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mRootView:Landroid/view/View;

    .line 2836
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

    .line 2835
    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 2837
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mRecordingAnimator:Landroid/animation/Animator;

    invoke-static {v0}, Lcom/transsion/camera/utils/AnimationUtils;->stopAnimator(Landroid/animation/Animator;)V

    .line 2838
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mRootView:Landroid/view/View;

    invoke-interface {p0, v0, p1}, Lcom/transsion/camera/app/common/ui/anim/IRecordingAnimationManager;->createRecordingAnimationWithState(Landroid/view/View;Z)Landroid/animation/Animator;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mRecordingAnimator:Landroid/animation/Animator;

    if-eqz p2, :cond_64

    .line 2840
    invoke-virtual {p1, p2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2842
    :cond_64
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mRecordingAnimator:Landroid/animation/Animator;

    invoke-virtual {p0}, Landroid/animation/Animator;->start()V

    :cond_69
    return-void
.end method

.method public stopScroll()V
    .registers 4

    .line 883
    const-string v0, "com.transsion.camera.feature.mode.more.MoreModeEntry"

    iget-object v1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mCurrentModeName:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_25

    .line 884
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeTabLayout:Lcom/transsion/camera/app/ui/widget/TabLayout;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/widget/TabLayout;->getCenterNearestIndex()I

    move-result v0

    .line 885
    iget-object v2, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeTabLayout:Lcom/transsion/camera/app/ui/widget/TabLayout;

    invoke-virtual {v2}, Lcom/transsion/camera/app/ui/widget/TabLayout;->getTabCount()I

    move-result v2

    sub-int/2addr v2, v1

    if-ne v0, v2, :cond_21

    .line 886
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mLeftGuideRootMoveFollowTab:Z

    if-nez v0, :cond_21

    .line 887
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/ModePickerUI;->enterMoreModeGuideAnimation()V

    .line 890
    :cond_21
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mLeftGuideRootMoveFollowTab:Z

    .line 891
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mStopScroll:Z

    .line 893
    :cond_25
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/ModePickerUI;->isSupportUI5MoreModeStyle()Z

    move-result v0

    if-eqz v0, :cond_35

    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mCurrentModeName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/ModePickerUI;->isTabLayoutMode(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_35

    .line 894
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mStopScroll:Z

    .line 896
    :cond_35
    iget v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mScreenFormType:I

    if-eq v0, v1, :cond_53

    .line 897
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/ModePickerUI;->isSupportUI5MoreModeStyle()Z

    move-result v0

    if-nez v0, :cond_47

    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeInformation:Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;->-$$Nest$mcurrentIsTabLayoutMode(Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;)Z

    move-result v0

    if-eqz v0, :cond_53

    .line 899
    :cond_47
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeTabLayout:Lcom/transsion/camera/app/ui/widget/TabLayout;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/widget/TabLayout;->stopScroll()V

    .line 900
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mCameraOperationControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    const/16 v0, 0xb9

    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    :cond_53
    return-void
.end method

.method public unInit()V
    .registers 2

    .line 1497
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportUI4Animator:Z

    if-eqz v0, :cond_d

    .line 1498
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mRecordingAnimator:Landroid/animation/Animator;

    invoke-static {v0}, Lcom/transsion/camera/utils/AnimationUtils;->stopAnimator(Landroid/animation/Animator;)V

    .line 1500
    :cond_d
    invoke-static {}, Lcom/transsion/camera/app/common/ModuleTransferManager;->getTransferManager()Lcom/transsion/camera/app/common/ModuleTransferManager;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mIModuleTransfer:Lcom/transsion/camera/app/common/IModuleTransfer;

    invoke-virtual {v0, p0}, Lcom/transsion/camera/app/common/ModuleTransferManager;->unregisterTransferListener(Lcom/transsion/camera/app/common/IModuleTransfer;)V

    return-void
.end method

.method public updateCurrentCamera(Ljava/lang/String;)V
    .registers 4

    .line 1412
    iget-object p1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeOrderProvider:Lcom/transsion/camera/app/mode/ModeOrderProvider;

    invoke-virtual {p1}, Lcom/transsion/camera/app/mode/ModeOrderProvider;->getConfig()Lcom/transsion/camera/app/mode/ModePickerConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/camera/app/mode/ModePickerConfig;->modePickerStyleMore()Z

    move-result p1

    if-eqz p1, :cond_4f

    .line 1413
    iget-object p1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mMoreModeGuideRightRoot:Landroid/view/View;

    if-eqz p1, :cond_4f

    .line 1414
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

    .line 1415
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

    .line 1082
    iput-object p1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mCurrentModeName:Ljava/lang/String;

    .line 1083
    const-string v0, "com.transsion.camera.feature.mode.more.MoreModeEntry"

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 1084
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/ModePickerUI;->exitMoreModeGuideAnimation()V

    .line 1086
    :cond_d
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeInformation:Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;

    invoke-static {v0, p1}, Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;->-$$Nest$mupdateCurrentMode(Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;Ljava/lang/String;)V

    .line 1087
    invoke-virtual {p0, p2}, Lcom/transsion/camera/app/ui/ModePickerUI;->updateCurrentTab(Z)V

    .line 1088
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/ModePickerUI;->updateCurrentModeSelector()V

    .line 1089
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/ModePickerUI;->updateCurrentModeUI()V

    .line 1090
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/ModePickerUI;->isSupportUI5MoreModeStyle()Z

    move-result p1

    if-eqz p1, :cond_2e

    iget-object p1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mCurrentModeName:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/ModePickerUI;->isTabLayoutMode(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2e

    if-eqz p3, :cond_2e

    .line 1092
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/ModePickerUI;->updateMoreTabView()V

    :cond_2e
    const/4 p1, 0x0

    .line 1095
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mIsSelectMoreTabView:Z

    return-void
.end method

.method public updateCurrentTab(Z)V
    .registers 4

    .line 1029
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/ModePickerUI;->cannotUpdateCurrentTab()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1030
    sget-object p0, Lcom/transsion/camera/app/ui/ModePickerUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string/jumbo p1, "updateCurrentTab: cannot update currentTab "

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 1033
    :cond_f
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/ModePickerUI;->isSupportUI5MoreModeStyle()Z

    move-result v0

    if-eqz v0, :cond_2f

    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mCurrentModeName:Ljava/lang/String;

    .line 1034
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/ModePickerUI;->isTabLayoutMode(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2f

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mRestoreSettingsBegin:Z

    if-nez v0, :cond_2f

    const/4 v0, 0x1

    .line 1035
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mIsDisableEnterMoreAnimation:Z

    .line 1036
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeTabLayout:Lcom/transsion/camera/app/ui/widget/TabLayout;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/widget/TabLayout;->getTabCount()I

    move-result v1

    sub-int/2addr v1, v0

    invoke-virtual {p0, v1, p1}, Lcom/transsion/camera/app/ui/widget/TabLayout;->selectTabIndex(IZ)Z

    return-void

    .line 1039
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

    .line 628
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/ModePickerUI;->isShowMoreModeGuideView()Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_46

    .line 631
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

    .line 639
    :cond_14
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeOrderProvider:Lcom/transsion/camera/app/mode/ModeOrderProvider;

    invoke-virtual {v0}, Lcom/transsion/camera/app/mode/ModeOrderProvider;->getConfig()Lcom/transsion/camera/app/mode/ModePickerConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/app/mode/ModePickerConfig;->modePickerStyleMore()Z

    move-result v0

    if-eqz v0, :cond_46

    const-string v0, "com.transsion.camera.feature.mode.more.MoreModeEntry"

    iget-object v1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mCurrentModeName:Ljava/lang/String;

    .line 640
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_46

    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeInformation:Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;

    .line 641
    invoke-static {v0}, Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;->-$$Nest$mcurrentIsTabLayoutMode(Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;)Z

    move-result v0

    if-eqz v0, :cond_46

    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeOrderProvider:Lcom/transsion/camera/app/mode/ModeOrderProvider;

    .line 642
    invoke-virtual {v0}, Lcom/transsion/camera/app/mode/ModeOrderProvider;->moreModeShow()Z

    move-result v0

    if-eqz v0, :cond_46

    .line 643
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mMoreModeGuideRightRoot:Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 644
    sget-object p0, Lcom/transsion/camera/app/ui/ModePickerUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "more guide visibility: updateGuideRightRootVisibleState: state = visible"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :cond_46
    :goto_46
    return-void

    .line 635
    :cond_47
    :goto_47
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 636
    sget-object p0, Lcom/transsion/camera/app/ui/ModePickerUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "more guide visibility: updateGuideRightRootVisibleState: state = gone or invisible"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public updateMode(Ljava/lang/String;)V
    .registers 3

    if-eqz p1, :cond_16

    .line 1123
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeInformation:Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;->-$$Nest$mcurrentModeFeatureName(Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    .line 1124
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeInformation:Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;

    invoke-static {v0, p1}, Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;->-$$Nest$mupdateCurrentMode(Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;Ljava/lang/String;)V

    .line 1125
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/ModePickerUI;->updateCurrentModeAndNotify()V

    :cond_16
    return-void
.end method

.method public updateModes(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 6

    .line 1063
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeInformation:Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;

    invoke-static {v0, p1, p2, p3}, Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;->-$$Nest$mupdateModeListAndDefaultMode(Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p4, :cond_8

    move-object p2, p3

    .line 1064
    :cond_8
    invoke-direct {p0, p2, p4}, Lcom/transsion/camera/app/ui/ModePickerUI;->updateModeTabLayout(Ljava/lang/String;Z)V

    .line 1065
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/ModePickerUI;->updateModeSelectorLayout()V

    const/4 p1, 0x0

    .line 1066
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/ModePickerUI;->updateCurrentTab(Z)V

    .line 1067
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/ModePickerUI;->updateCurrentModeSelector()V

    .line 1068
    iget p1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mOrientation:I

    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/ModePickerUI;->updateModePickerRotation(I)V

    return-void
.end method

.method public updateMoreEditMode(Z)V
    .registers 2

    .line 1809
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mIsEditMode:Z

    return-void
.end method

.method public updateMoreGuideState(Z)V
    .registers 7

    .line 1813
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mMoreModeGuideRightRoot:Landroid/view/View;

    if-eqz v0, :cond_ca

    .line 1814
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/ModePickerUI;->isShowMoreModeGuideView()Z

    move-result v0

    if-nez v0, :cond_c

    goto/16 :goto_ca

    .line 1817
    :cond_c
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeOrderProvider:Lcom/transsion/camera/app/mode/ModeOrderProvider;

    invoke-virtual {v0}, Lcom/transsion/camera/app/mode/ModeOrderProvider;->moreModeShow()Z

    move-result v0

    const/4 v1, 0x1

    const-string v2, "com.transsion.camera.feature.mode.more.MoreModeEntry"

    const/4 v3, 0x0

    if-eqz v0, :cond_36

    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mCurrentModeUI:Lcom/transsion/camera/app/ui/ModePickerUI$CurrentModeUI;

    .line 1818
    invoke-static {v0}, Lcom/transsion/camera/app/ui/ModePickerUI$CurrentModeUI;->-$$Nest$misVisible(Lcom/transsion/camera/app/ui/ModePickerUI$CurrentModeUI;)Z

    move-result v0

    if-nez v0, :cond_36

    .line 1819
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/ModePickerUI;->isFilterPanelShow()Z

    move-result v0

    if-nez v0, :cond_36

    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeInformation:Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;->-$$Nest$fgetmCurrentModeItem(Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;)Lcom/transsion/camera/app/common/FeatureResource;

    move-result-object v0

    iget-object v0, v0, Lcom/transsion/camera/app/common/FeatureResource;->mFeatureName:Ljava/lang/String;

    .line 1820
    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_36

    move v0, v1

    goto :goto_37

    :cond_36
    move v0, v3

    .line 1822
    :goto_37
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result v4

    if-eqz v4, :cond_46

    if-eqz v0, :cond_44

    .line 1823
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mIsInstantZoomShow:Z

    if-nez v0, :cond_44

    goto :goto_45

    :cond_44
    move v1, v3

    :goto_45
    move v0, v1

    .line 1826
    :cond_46
    iget-object v1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mMoreModeGuideRightRoot:Landroid/view/View;

    if-eqz v0, :cond_4b

    goto :goto_4d

    :cond_4b
    const/16 v3, 0x8

    :goto_4d
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1827
    sget-object v0, Lcom/transsion/camera/app/ui/ModePickerUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "more guide visibility: moreModeShow: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeOrderProvider:Lcom/transsion/camera/app/mode/ModeOrderProvider;

    .line 1828
    invoke-virtual {v3}, Lcom/transsion/camera/app/mode/ModeOrderProvider;->moreModeShow()Z

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", mCurrentModeUI visibility: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mCurrentModeUI:Lcom/transsion/camera/app/ui/ModePickerUI$CurrentModeUI;

    .line 1829
    invoke-static {v3}, Lcom/transsion/camera/app/ui/ModePickerUI$CurrentModeUI;->-$$Nest$misVisible(Lcom/transsion/camera/app/ui/ModePickerUI$CurrentModeUI;)Z

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", isfilterPanelShow: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1830
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

    .line 1832
    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1827
    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1833
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

    .line 1834
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mMoreModeRightGuide:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Landroid/view/View;->setClickable(Z)V

    :cond_ca
    :goto_ca
    return-void
.end method

.method public updateMoreTabView()V
    .registers 3

    .line 2443
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/ModePickerUI;->isSupportUI5MoreModeStyle()Z

    move-result v0

    if-eqz v0, :cond_40

    .line 2444
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeTabLayout:Lcom/transsion/camera/app/ui/widget/TabLayout;

    if-nez v0, :cond_b

    goto :goto_40

    .line 2447
    :cond_b
    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/widget/TabLayout;->getMoreTabView()Lcom/transsion/camera/app/ui/widget/TabLayout$TabView;

    move-result-object v0

    if-nez v0, :cond_12

    goto :goto_40

    .line 2451
    :cond_12
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mMoreModeCancelRoot:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2452
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mCurrentModeName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/ModePickerUI;->isTabLayoutMode(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2d

    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mMoreTabChangeListener:Lcom/transsion/camera/app/common/IAppUIListener$IMoreTabChangeListener;

    if-eqz v0, :cond_2d

    const/4 v1, 0x1

    .line 2453
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mIsSelectMoreTabView:Z

    .line 2454
    iget-object v1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mCurrentModeName:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUIListener$IMoreTabChangeListener;->onMoreTabChanged(Ljava/lang/String;)V

    .line 2456
    :cond_2d
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeTabLayout:Lcom/transsion/camera/app/ui/widget/TabLayout;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/widget/TabLayout;->updateHeadFootPadding()V

    .line 2457
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

    .line 2166
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mIsRecording:Z

    const/4 p1, 0x0

    .line 2167
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/ModePickerUI;->chooseModeUIToShow(Z)V

    return-void
.end method

.method public updateTabFeatureName()V
    .registers 4

    .line 2026
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeTabLayout:Lcom/transsion/camera/app/ui/widget/TabLayout;

    if-eqz v0, :cond_23

    const/4 v0, 0x0

    .line 2027
    :goto_5
    iget-object v1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeTabLayout:Lcom/transsion/camera/app/ui/widget/TabLayout;

    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/widget/TabLayout;->getTabCount()I

    move-result v1

    if-ge v0, v1, :cond_23

    .line 2028
    iget-object v1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeInformation:Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;

    invoke-static {v1, v0}, Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;->-$$Nest$mgetTabLayoutMode(Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;I)Lcom/transsion/camera/app/common/FeatureResource;

    move-result-object v1

    .line 2029
    iget-object v2, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeTabLayout:Lcom/transsion/camera/app/ui/widget/TabLayout;

    invoke-virtual {v2, v0}, Lcom/transsion/camera/app/ui/widget/TabLayout;->getTabAt(I)Lcom/transsion/camera/app/ui/widget/TabLayout$Tab;

    move-result-object v2

    if-eqz v2, :cond_20

    .line 2031
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

    .line 2486
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeInformation:Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;->-$$Nest$mcurrentModeFeatureName(Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1f

    .line 2487
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeInformation:Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;

    invoke-static {v0, p1}, Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;->-$$Nest$mupdateCurrentMode(Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;Ljava/lang/String;)V

    .line 2488
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

    .line 2475
    sget-object v0, Lcom/transsion/camera/app/ui/ModePickerUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateTabIndexOnResume currentMode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", currentModeFeatureName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeInformation:Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;

    .line 2476
    invoke-static {v2}, Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;->-$$Nest$mcurrentModeFeatureName(Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2475
    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 2477
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mFromResume:Z

    .line 2479
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeTabLayout:Lcom/transsion/camera/app/ui/widget/TabLayout;

    if-eqz v0, :cond_3d

    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeInformation:Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;->-$$Nest$mcurrentModeFeatureName(Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3d

    .line 2480
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeTabLayout:Lcom/transsion/camera/app/ui/widget/TabLayout;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/widget/TabLayout;->checkTabIndex()V

    :cond_3d
    return-void
.end method

.method public updateTabSellingPointState()V
    .registers 6

    .line 2015
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeTabLayout:Lcom/transsion/camera/app/ui/widget/TabLayout;

    if-eqz v0, :cond_38

    const/4 v0, 0x0

    move v1, v0

    .line 2016
    :goto_6
    iget-object v2, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeTabLayout:Lcom/transsion/camera/app/ui/widget/TabLayout;

    invoke-virtual {v2}, Lcom/transsion/camera/app/ui/widget/TabLayout;->getTabCount()I

    move-result v2

    if-ge v1, v2, :cond_38

    .line 2017
    iget-object v2, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeInformation:Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;

    invoke-static {v2, v1}, Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;->-$$Nest$mgetTabLayoutMode(Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;I)Lcom/transsion/camera/app/common/FeatureResource;

    move-result-object v2

    .line 2018
    iget-object v3, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mSellingPointItems:Ljava/util/List;

    iget-object v4, v2, Lcom/transsion/camera/app/common/FeatureResource;->mFeatureName:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_2b

    iget-object v3, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mContext:Landroid/content/Context;

    iget-object v2, v2, Lcom/transsion/camera/app/common/FeatureResource;->mFeatureName:Ljava/lang/String;

    .line 2019
    invoke-static {v3, v2}, Lcom/transsion/camera/app/ui/mode/ModeUIItem;->getVal(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2b

    const/4 v2, 0x1

    goto :goto_2c

    :cond_2b
    move v2, v0

    .line 2020
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
