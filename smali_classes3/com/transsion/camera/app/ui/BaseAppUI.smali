.class public abstract Lcom/transsion/camera/app/ui/BaseAppUI;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/IAppUI;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/ui/BaseAppUI$UIHandler;,
        Lcom/transsion/camera/app/ui/BaseAppUI$ThumbnailListenerWrap;,
        Lcom/transsion/camera/app/ui/BaseAppUI$ContinuousShotUIInflateStage;,
        Lcom/transsion/camera/app/ui/BaseAppUI$UIInflateStage;,
        Lcom/transsion/camera/app/ui/BaseAppUI$ToastUIInflateStage;,
        Lcom/transsion/camera/app/ui/BaseAppUI$HintUIInflateStage;,
        Lcom/transsion/camera/app/ui/BaseAppUI$OverlayUIInflateStage;,
        Lcom/transsion/camera/app/ui/BaseAppUI$WideCameraUIInflateStage;,
        Lcom/transsion/camera/app/ui/BaseAppUI$TopLayerUIInflateStage;,
        Lcom/transsion/camera/app/ui/BaseAppUI$HelpGuideStateListenerImpl;,
        Lcom/transsion/camera/app/ui/BaseAppUI$OnTouchListenerImpl;,
        Lcom/transsion/camera/app/ui/BaseAppUI$SellingPointGuideUIInflateStage;,
        Lcom/transsion/camera/app/ui/BaseAppUI$InteractUIInflateStage;,
        Lcom/transsion/camera/app/ui/BaseAppUI$PopSettingUIInflateStage;,
        Lcom/transsion/camera/app/ui/BaseAppUI$ModeSelectUIInflateStage;,
        Lcom/transsion/camera/app/ui/BaseAppUI$BottomBarUIInflateStage;,
        Lcom/transsion/camera/app/ui/BaseAppUI$TopBarUIInflateStage;,
        Lcom/transsion/camera/app/ui/BaseAppUI$FragmentListenerImpl;,
        Lcom/transsion/camera/app/ui/BaseAppUI$CameraSwitchListenerImpl;,
        Lcom/transsion/camera/app/ui/BaseAppUI$ModeChangedListenerImpl;,
        Lcom/transsion/camera/app/ui/BaseAppUI$SwitchDualAndMainCameraListenerImpl;,
        Lcom/transsion/camera/app/ui/BaseAppUI$RestartPreviewListenerImpl;,
        Lcom/transsion/camera/app/ui/BaseAppUI$ShutterResponseListener;
    }
.end annotation


# static fields
.field private static final SHOW_LOG_TRACE_ACTIONS:Ljava/util/List;

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private isCapturing:Z

.field protected mActionSound:Lcom/transsion/camera/utils/sound/IActionSound;

.field private final mActionTriggerTime:Ljava/util/Map;

.field private mAeAfLock:Lcom/transsion/camera/app/common/mode/IAeAfLock;

.field private final mAlphaPathInterpolator:Landroid/view/animation/PathInterpolator;

.field private mAlreadyGotoGoPro:Z

.field private mAppStorageManager:Lcom/transsion/camera/app/common/storage/AppStorageManager;

.field protected mAsyncInflater:Landroidx/asynclayoutinflater/view/AsyncLayoutInflater;

.field protected mBelowMainCtrlInflateRoot:Landroid/view/ViewGroup;

.field protected mBottomBarRootView:Landroid/view/View;

.field private mCShotByPhysicalKey:Z

.field protected mCameraFlashLayout:Landroid/view/ViewGroup;

.field protected mCameraOperateAction:Lcom/transsion/camera/app/common/mode/CameraOperateAction;

.field private mCameraSwitchFlag:Z

.field private mCameraSwitchListener:Lcom/transsion/camera/app/common/IAppUIListener$ICameraSwitchListener;

.field protected mCameraSwitcherUIManager:Lcom/transsion/camera/app/ui/manager/CameraSwitcherUIManager;

.field protected mCameraZoomLayout:Landroid/view/ViewGroup;

.field protected mContext:Landroid/content/Context;

.field protected mContinuousShotLightResponder:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

.field protected mContinuousShotUIManager:Lcom/transsion/camera/app/ui/manager/ContinuousShotUIManager;

.field private mCsViewAnimationStart:Z

.field private mCurShutterPriority:I

.field private mCurrentAppUIState:I

.field protected mCurrentModeName:Ljava/lang/String;

.field protected mCurrentModeSettingUISpec:Lcom/transsion/camera/app/common/ModeSettingUISpec;

.field private mCurrentPopupWindowKey:Ljava/lang/String;

.field protected mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

.field private mDelayTime:I

.field protected mEditWaterMarkManager:Lcom/transsion/camera/app/ui/manager/EditWaterMarkManager;

.field private mFirstSteadyFrameFlag:Z

.field protected mFloatingShutterLayout:Landroid/widget/FrameLayout;

.field protected mFloatingShutterUIManager:Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;

.field protected mFragmentManager:Landroid/app/FragmentManager;

.field private mFrameOnceCome:Z

.field protected mFromIntent:Z

.field protected mGoProActivityCoverLayout:Landroid/widget/FrameLayout;

.field protected mGoldWaterMarkManager:Lcom/transsion/camera/app/ui/manager/GoldWaterMarkManager;

.field protected mGotoActivityListener:Lcom/transsion/camera/app/common/IAppUIListener$IGotoActivityListener;

.field protected final mGpuAlgorithmManager:Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager;

.field private mGraduationViewIsMoving:Z

.field protected mHelpGuideUIManager:Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;

.field private mHideShutter:Z

.field private mHideShutterFromSelfTimer:Z

.field protected mHintRootLayout:Landroid/view/ViewGroup;

.field protected mHintUIManager:Lcom/transsion/camera/app/ui/manager/HintUIManager;

.field protected mImageryGuideManager:Lcom/transsion/camera/manager/BaseImageryGuideManager;

.field protected mInZoomChanging:Z

.field protected final mIntentProxy:Lcom/transsion/camera/app/common/IApp$IIntentProxy;

.field protected mInteractiveLayout:Landroid/widget/FrameLayout;

.field protected mInteractiveUIManager:Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;

.field private mIntercept:Z

.field private mInterruptPhysicalKey:Z

.field private mIsIntentFromNegativeScreen:Z

.field private mIsInteractiveListFocusable:Z

.field private mIsModePickerSink:Z

.field private mIsNegativeScreenAIGCMode:Z

.field protected volatile mIsPaused:Z

.field private mIsPreviewCoverUIShow:Z

.field private mIsSellingPointVideoPlaying:Z

.field private mIsShoulderKeyLongPress:Z

.field private mIsShoulderTipsShow:Z

.field protected mIsThumbnailAnimationNeed:Z

.field private mIsTopBarItemListFocusable:Z

.field protected mIsVideoRecording:Z

.field protected mLayoutInflater:Landroid/view/LayoutInflater;

.field protected mLivePhotoResponder:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

.field private final mLockObj:Ljava/lang/Object;

.field protected mMainCtrlLayerRootParent:Landroid/view/ViewGroup;

.field protected mMasterGuideUIManager:Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;

.field protected mModeAboveMainCtrlInflateRoot:Landroid/view/ViewGroup;

.field protected mModeChangeListener:Lcom/transsion/camera/app/common/IAppUIListener$IModeChangedListener;

.field protected mModeDataInfoListener:Lcom/transsion/camera/app/common/IAppUIListener$IModeDataInfoListener;

.field private mModeFeatureConfig:Lcom/transsion/camera/app/common/IModeFeatureConfig;

.field private mModeFeatureSupport:Lcom/transsion/camera/app/common/mode/IModeFeatureSupport;

.field protected mModeInflateRoot:Landroid/view/ViewGroup;

.field protected mModeInflateScrollRoot:Landroid/view/ViewGroup;

.field protected mModePanelRootParent:Landroid/view/ViewGroup;

.field private mModePickerContainer:Landroid/view/View;

.field private mModePickerLayout:Landroid/view/View;

.field protected mModePickerRootView:Landroid/view/ViewGroup;

.field protected mModePickerUIManager:Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;

.field private mModePikerArrowRoot:Landroid/view/View;

.field protected final mModeScrollListener:Lcom/transsion/camera/app/ui/IModeScrollUI$ModeScrollListener;

.field private mModeTabLayout:Lcom/transsion/camera/app/ui/widget/TabLayout;

.field protected mModeUIControl:Lcom/transsion/camera/app/common/IAppUIControl$IModeUIControl;

.field private mMoreModeGuideLeftRoot:Landroid/view/View;

.field private mMoreModeGuideRightRoot:Landroid/view/View;

.field private mOnCompleteAllowed:Z

.field private mOnceLensDirtyHint:Lcom/transsion/camera/app/common/ui/HintInfo;

.field private mOnceLowPowerHint:Lcom/transsion/camera/app/common/ui/HintInfo;

.field mOpenOnly:Z

.field protected mOrientation:I

.field private mOverlayManagerFinished:Z

.field protected mOverlayUIManager:Lcom/transsion/camera/app/ui/manager/OverlayUIManager;

.field protected mOverlayUIRoot:Landroid/view/ViewGroup;

.field protected final mPathInterpolator:Landroid/view/animation/PathInterpolator;

.field private final mPendingHints:Ljava/util/List;

.field private mPhotoIntent:Z

.field protected mPopSettingUIManager:Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;

.field protected final mPopSettingUISupport:Z

.field protected mPreviewBackgroundOperator:Lcom/transsion/camera/app/common/preview/IPreviewOperator;

.field protected mPreviewGestureManager:Lcom/transsion/camera/app/ui/gesture/PreviewGestureManager;

.field protected mPreviewGestureScrollAdapter:Lcom/transsion/camera/app/ui/PreviewGestureScrollAdapter;

.field protected mPreviewOperator:Lcom/transsion/camera/app/common/preview/IPreviewOperator;

.field private volatile mPreviewReadyForCurrentSession:Z

.field protected mPreviewUIManager:Lcom/transsion/camera/app/ui/manager/PreviewUIManager;

.field private final mPrivacyCallbacks:Ljava/util/List;

.field protected mProWatermarkManager:Lcom/transsion/camera/app/ui/manager/ProWatermarkManager;

.field protected final mRawActionCallback:Lcom/transsion/camera/app/common/mode/CameraOperateAction$RawActionHandleCallback;

.field private mRecentKeyMonitor:Lcom/transsion/camera/app/common/physicalkey/AbstractKeyMonitor;

.field protected mRecordingOrientation:I

.field protected mRemoteCaptureManager:Lcom/transsion/camera/app/ui/manager/RemoteCaptureManager;

.field private mRestartPreviewListener:Lcom/transsion/camera/app/common/IAppUIListener$IRestartPreviewListener;

.field protected mRingScreenLightResponder:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

.field protected mRingScreenLightUIManager:Lcom/transsion/camera/app/ui/manager/RingScreenLightUIManager;

.field protected mRootView:Landroid/view/ViewGroup;

.field protected mScreenFormResponder:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

.field protected final mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

.field protected mScrollConsumer:Lcom/transsion/camera/app/ui/ScrollConsumer;

.field protected mScrollModeIndex:I

.field protected mSecureCamera:Z

.field protected mSelfTimerResponder:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

.field protected mSellingPointGuideUIManager:Lcom/transsion/camera/app/ui/manager/SellingPointGuideUIManager;

.field private mSeparateCaptureNumber:I

.field protected mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

.field protected mSettingFragmentManager:Lcom/transsion/camera/app/ui/manager/SettingFragmentManager;

.field protected mSettingUIProvider:Lcom/transsion/camera/app/common/provider/SettingUIProvider;

.field private mShouldHideSwitcher:Z

.field private mShouldHideThumbnailUI:Z

.field private mShutterAnimatorFlag:Z

.field private mShutterAnimatorSet:Landroid/animation/AnimatorSet;

.field protected mShutterPanelRootView:Landroid/view/ViewGroup;

.field protected mShutterProcessingOrientation:I

.field protected mShutterSoundOptionalManager:Lcom/transsion/camera/app/ui/manager/ShutterSoundOptionalManager;

.field private mShutterType:I

.field protected mShutterUIManager:Lcom/transsion/camera/app/ui/manager/ShutterUIManager;

.field protected final mShutterUINewStyleSupport:Z

.field protected mShutterUIProcessing:Z

.field private mSinkAnimatorSet:Landroid/animation/AnimatorSet;

.field private mSkipInteractiveUpdate:Z

.field private mSkipUnbindOnPause:Z

.field private volatile mSkipUpdatePopSettingUIList:Z

.field private mSpecialCameraChange:Z

.field protected mSpecifyModePolicy:Lcom/transsion/camera/app/SpecifyModePolicy;

.field private final mSupportDebounceActionSet:Ljava/util/HashSet;

.field protected mSupportSuperAntiVideoV2:Z

.field private mSupportedBackModes:[Ljava/lang/String;

.field private mSupportedFrontModes:[Ljava/lang/String;

.field private mSwitchBlurCameraListener:Lcom/transsion/camera/app/common/IAppUIListener$ISwitchBlurCameraListener;

.field private mSwitchDualAndMainCameraListener:Lcom/transsion/camera/app/common/IAppUIListener$ISwitchDualAndMainCameraListener;

.field private mSwitchDualCamBWListener:Lcom/transsion/camera/app/common/IAppUIListener$ISwitchDualCamBWCameraListener;

.field private mSwitchPeriscopeCameraListener:Lcom/transsion/camera/app/common/IAppUIListener$ISwitchPeriscopeCameraListener;

.field private mSwitchSatCameraListener:Lcom/transsion/camera/app/common/IAppUIListener$ISwitchSatCameraListener;

.field private mSwitchTeleCameraListener:Lcom/transsion/camera/app/common/IAppUIListener$ISwitchLogicalCameraListener;

.field private mSwitchWideCameraListener:Lcom/transsion/camera/app/common/IAppUIListener$ISwitchWideCameraListener;

.field protected mThermalThrottleUIManager:Lcom/transsion/camera/app/ui/manager/ThermalThrottleUIManager;

.field protected mThumbnailTransitionManager:Lcom/transsion/camera/app/common/thumbnailtransition/IThumbnailTransition;

.field protected mThumbnailUIManager:Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;

.field protected mToastLayout:Landroid/widget/FrameLayout;

.field protected mToastUIManager:Lcom/transsion/camera/app/ui/manager/ToastUIManager;

.field protected mTopBarUIManager:Lcom/transsion/camera/app/ui/manager/TopBarUIManager;

.field private mTopLayerRoot:Landroid/view/ViewGroup;

.field private mTriggerSelfTimerPriority:I

.field protected mTuningFeatureManager:Lcom/transsion/camera/app/ui/manager/TuningFeatureManager;

.field private final mUIAnimatorController:Lcom/transsion/camera/app/common/IUIAnimatorController;

.field private final mUIHandler:Landroid/os/Handler;

.field protected final mUILayerRootParentList:Ljava/util/List;

.field protected mUIManagerSetup:Z

.field protected final mUIManagers:Ljava/util/List;

.field private mUISinkModeChange:Z

.field private mUserInteractionListener:Lcom/transsion/camera/app/common/IAppUIListener$IUserInteractionListener;

.field private mVerticalModeSelector:Lcom/transsion/camera/app/ui/widget/VerticalModeSelector;

.field private mVideoIntent:Z

.field private mVideoPowerSavingListener:Lcom/transsion/camera/app/common/IAppUIListener$VideoPowerSavingListener;

.field private mVideoThermalWarningSupport:Z

.field private mVoiceInteraction:Z

.field private mVoiceParameters:[Z

.field protected mWideCameraUIManager:Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;

.field private final mZoomKeyEventCallbacks:Ljava/util/List;

.field private modeNotifyCameraOperateActionCallback:Lcom/transsion/camera/app/common/mode/IModeNotifyCameraOperateActionCallback;


# direct methods
.method public static synthetic $r8$lambda$1bCca0cUI_AFIDt50HsP2XhC6BM(Lcom/transsion/camera/app/ui/BaseAppUI;)Z
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/BaseAppUI;->lambda$doDelayLoadUIManager$9()Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$Ej8cm1cuR_SL__I1UTb0MPlF_j8(Lcom/transsion/camera/app/ui/BaseAppUI;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/BaseAppUI;->doUpdatePopSettingUIInternal()V

    return-void
.end method

.method public static synthetic $r8$lambda$GjjGCr5J6AlocyAhX7hO_IBPRXk(ZLcom/transsion/camera/app/common/IAppUIControl$IZoomKeyEventCallback;)V
    .registers 2

    .line 1775
    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/IAppUIControl$IZoomKeyEventCallback;->onZoomScaling(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$HHJvkgwqIVXr7-LWWFufD_tcewI(Lcom/transsion/camera/app/ui/BaseAppUI;Ljava/lang/String;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/BaseAppUI;->switchModeByImageryGuide(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$HJFNdV5tvga1UyshoY_fjcAp1tE(Lcom/transsion/camera/app/ui/BaseAppUI;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/BaseAppUI;->lambda$updateCustomState$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$Lx9OKq1H059Is0s8SbsXTjKbmO0(Lcom/transsion/camera/app/ui/BaseAppUI;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/BaseAppUI;->doVoiceCapture()V

    return-void
.end method

.method public static synthetic $r8$lambda$SiZkRBNQGeTaZ65ZVbKAPrAqAdA(ZLcom/transsion/camera/app/common/IAppUIControl$IZoomKeyEventCallback;)V
    .registers 2

    .line 1753
    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/IAppUIControl$IZoomKeyEventCallback;->onZoomClick(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$WkKobk1LaAmtOyKom1tApmfVwtA(Lcom/transsion/camera/app/ui/BaseAppUI;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/BaseAppUI;->lambda$updateCustomState$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$YknlFHPyqwOtT5AD3dbe6_U9_sQ(Lcom/transsion/camera/app/ui/BaseAppUI;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/BaseAppUI;->lambda$doUpdateSettingUIList$12()V

    return-void
.end method

.method public static synthetic $r8$lambda$cn0ecSrFPUdbedIF_lGz8HTe2oA(Lcom/transsion/camera/app/ui/BaseAppUI;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/BaseAppUI;->lambda$doUpdateSettingUIList$11()V

    return-void
.end method

.method public static synthetic $r8$lambda$fvO6mTKW6KcgCUWL27eu6Ooa8bM(ZLcom/transsion/camera/app/common/IAppUIControl$IZoomKeyEventCallback;)V
    .registers 2

    .line 1785
    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/IAppUIControl$IZoomKeyEventCallback;->onZoomScaleEnd(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$ime2YoGnlYWS-2AqFunKY3BLgx4(ZLcom/transsion/camera/app/common/IAppUIControl$IZoomKeyEventCallback;)V
    .registers 2

    .line 1819
    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/IAppUIControl$IZoomKeyEventCallback;->onCriticalZoomSwitchSwiping(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$jkNOFQXRjoL_v7HGA5o4vGBiZrk(Lcom/transsion/camera/app/ui/BaseAppUI;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/BaseAppUI;->onUIManagerReady()V

    return-void
.end method

.method public static synthetic $r8$lambda$n8udKe8z4-PmjbcbnyPJlaSrxa8(Lcom/transsion/camera/app/ui/BaseAppUI;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/BaseAppUI;->lambda$finishUIInflateStage$14()V

    return-void
.end method

.method public static synthetic $r8$lambda$sQ3OsQe81LZH6_aAU-xqQtO-aXQ(ZILcom/transsion/camera/app/common/IAppUIControl$IZoomKeyEventCallback;)V
    .registers 3

    .line 1796
    invoke-interface {p2, p0, p1}, Lcom/transsion/camera/app/common/IAppUIControl$IZoomKeyEventCallback;->onContinuousZoomSwiping(ZI)V

    return-void
.end method

.method public static synthetic $r8$lambda$wtj9mosKbu2AuLIivjV5c4C3BX4(Lcom/transsion/camera/app/ui/BaseAppUI;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/BaseAppUI;->lambda$doUpdateSettingUIList$10()V

    return-void
.end method

.method public static synthetic $r8$lambda$xh-_eSDGO6B2Szd1ZQ_JkR9BnD8(Lcom/transsion/camera/app/common/IAppUIControl$IZoomKeyEventCallback;)V
    .registers 1

    .line 1807
    invoke-interface {p0}, Lcom/transsion/camera/app/common/IAppUIControl$IZoomKeyEventCallback;->onZoomSwipeEnd()V

    return-void
.end method

.method public static synthetic $r8$lambda$xu12l693zV3S3NUuqOtPBzHQdOY(Lcom/transsion/camera/app/ui/BaseAppUI;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/BaseAppUI;->lambda$finishUIInflateStage$13()V

    return-void
.end method

.method public static synthetic $r8$lambda$zM6gYOdzi0DHopH4acqy-WoHvT0(ZLcom/transsion/camera/app/common/IAppUIControl$IZoomKeyEventCallback;)V
    .registers 2

    .line 1764
    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/IAppUIControl$IZoomKeyEventCallback;->onZoomScaleStart(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmCameraSwitchListener(Lcom/transsion/camera/app/ui/BaseAppUI;)Lcom/transsion/camera/app/common/IAppUIListener$ICameraSwitchListener;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mCameraSwitchListener:Lcom/transsion/camera/app/common/IAppUIListener$ICameraSwitchListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLockObj(Lcom/transsion/camera/app/ui/BaseAppUI;)Ljava/lang/Object;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mLockObj:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmModePickerLayout(Lcom/transsion/camera/app/ui/BaseAppUI;)Landroid/view/View;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mModePickerLayout:Landroid/view/View;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSpecialCameraChange(Lcom/transsion/camera/app/ui/BaseAppUI;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mSpecialCameraChange:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmSwitchDualAndMainCameraListener(Lcom/transsion/camera/app/ui/BaseAppUI;)Lcom/transsion/camera/app/common/IAppUIListener$ISwitchDualAndMainCameraListener;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mSwitchDualAndMainCameraListener:Lcom/transsion/camera/app/common/IAppUIListener$ISwitchDualAndMainCameraListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTopLayerRoot(Lcom/transsion/camera/app/ui/BaseAppUI;)Landroid/view/ViewGroup;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mTopLayerRoot:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmUIHandler(Lcom/transsion/camera/app/ui/BaseAppUI;)Landroid/os/Handler;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mUIHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmCameraSwitchFlag(Lcom/transsion/camera/app/ui/BaseAppUI;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mCameraSwitchFlag:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmSkipInteractiveUpdate(Lcom/transsion/camera/app/ui/BaseAppUI;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mSkipInteractiveUpdate:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmSpecialCameraChange(Lcom/transsion/camera/app/ui/BaseAppUI;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mSpecialCameraChange:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mdoDelayLoadUIManager(Lcom/transsion/camera/app/ui/BaseAppUI;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/BaseAppUI;->doDelayLoadUIManager()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mdoHideCustomPreviewCover(Lcom/transsion/camera/app/ui/BaseAppUI;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/BaseAppUI;->doHideCustomPreviewCover()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mdoInflateBottomBar(Lcom/transsion/camera/app/ui/BaseAppUI;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/BaseAppUI;->doInflateBottomBar()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mdoInflateHelpUI(Lcom/transsion/camera/app/ui/BaseAppUI;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/BaseAppUI;->doInflateHelpUI()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mdoInflateInteractUI(Lcom/transsion/camera/app/ui/BaseAppUI;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/BaseAppUI;->doInflateInteractUI()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mdoInflateMasterGuideUI(Lcom/transsion/camera/app/ui/BaseAppUI;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/BaseAppUI;->doInflateMasterGuideUI()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mdoInflateModeSelectUI(Lcom/transsion/camera/app/ui/BaseAppUI;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/BaseAppUI;->doInflateModeSelectUI()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mdoInflateOverlayUI(Lcom/transsion/camera/app/ui/BaseAppUI;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/BaseAppUI;->doInflateOverlayUI()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mdoInflatePopSettingUI(Lcom/transsion/camera/app/ui/BaseAppUI;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/BaseAppUI;->doInflatePopSettingUI()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mdoInflateSellingPointGuideUI(Lcom/transsion/camera/app/ui/BaseAppUI;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/BaseAppUI;->doInflateSellingPointGuideUI()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mdoInflateTopBarUI(Lcom/transsion/camera/app/ui/BaseAppUI;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/BaseAppUI;->doInflateTopBarUI()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mdoInflateWideCameraUI(Lcom/transsion/camera/app/ui/BaseAppUI;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/BaseAppUI;->doInflateWideCameraUI()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mdoLoadHintUIManager(Lcom/transsion/camera/app/ui/BaseAppUI;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/BaseAppUI;->doLoadHintUIManager()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mdoShowCustomPreviewCover(Lcom/transsion/camera/app/ui/BaseAppUI;Landroid/graphics/Bitmap;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/BaseAppUI;->doShowCustomPreviewCover(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mdoUpdateHelpGuide(Lcom/transsion/camera/app/ui/BaseAppUI;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/BaseAppUI;->doUpdateHelpGuide()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mdoUpdateInteractUIList(Lcom/transsion/camera/app/ui/BaseAppUI;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/BaseAppUI;->doUpdateInteractUIList()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mdoUpdateOptionBar(Lcom/transsion/camera/app/ui/BaseAppUI;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/BaseAppUI;->doUpdateOptionBar()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mdoUpdateOverlaySettingUIList(Lcom/transsion/camera/app/ui/BaseAppUI;Z)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/BaseAppUI;->doUpdateOverlaySettingUIList(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mdoUpdatePopSettingUI(Lcom/transsion/camera/app/ui/BaseAppUI;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/BaseAppUI;->doUpdatePopSettingUI()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mdoUpdatePopSettingUIList(Lcom/transsion/camera/app/ui/BaseAppUI;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/BaseAppUI;->doUpdatePopSettingUIList()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mdoUpdateShutterType(Lcom/transsion/camera/app/ui/BaseAppUI;IZ)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/ui/BaseAppUI;->doUpdateShutterType(IZ)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mdoUpdateTopBarAndOptionBar(Lcom/transsion/camera/app/ui/BaseAppUI;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/BaseAppUI;->doUpdateTopBarAndOptionBar()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mdoUpdateTopBarSettingUIList(Lcom/transsion/camera/app/ui/BaseAppUI;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/BaseAppUI;->doUpdateTopBarSettingUIList()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mdoUpdateUIState(Lcom/transsion/camera/app/ui/BaseAppUI;IILjava/lang/String;)V
    .registers 4

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/camera/app/ui/BaseAppUI;->doUpdateUIState(IILjava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$menterGoProMode(Lcom/transsion/camera/app/ui/BaseAppUI;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/BaseAppUI;->enterGoProMode()V

    return-void
.end method

.method static bridge synthetic -$$Nest$menterSettingFragment(Lcom/transsion/camera/app/ui/BaseAppUI;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/BaseAppUI;->enterSettingFragment()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mfinishUIInflateStage(Lcom/transsion/camera/app/ui/BaseAppUI;Z)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/BaseAppUI;->finishUIInflateStage(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$misMainThread(Lcom/transsion/camera/app/ui/BaseAppUI;)Z
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/BaseAppUI;->isMainThread()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mnotifyCameraStateToUI(Lcom/transsion/camera/app/ui/BaseAppUI;I)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/BaseAppUI;->notifyCameraStateToUI(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$monCameraOperateAction(Lcom/transsion/camera/app/ui/BaseAppUI;I)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/BaseAppUI;->onCameraOperateAction(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;
    .registers 1

    .line 0
    sget-object v0, Lcom/transsion/camera/app/ui/BaseAppUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 199
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "BaseAppUI"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/ui/BaseAppUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const/16 v0, 0x1f

    .line 551
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0xe

    .line 552
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x9c

    .line 553
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/Integer;

    move-result-object v0

    .line 550
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/transsion/camera/app/ui/BaseAppUI;->SHOW_LOG_TRACE_ACTIONS:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/transsion/camera/app/ui/ScreenManager;Lcom/transsion/camera/app/common/IApp$IIntentProxy;)V
    .registers 11

    .line 531
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 226
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mPrivacyCallbacks:Ljava/util/List;

    .line 228
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mPendingHints:Ljava/util/List;

    .line 229
    new-instance v0, Lcom/transsion/camera/app/ui/animator/UIAnimatorController;

    invoke-direct {v0}, Lcom/transsion/camera/app/ui/animator/UIAnimatorController;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mUIAnimatorController:Lcom/transsion/camera/app/common/IUIAnimatorController;

    const/4 v0, 0x1

    .line 231
    iput v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mCurrentAppUIState:I

    const/4 v1, -0x1

    .line 232
    iput v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mOrientation:I

    const/4 v2, 0x0

    .line 239
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mFrameOnceCome:Z

    .line 240
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mSecureCamera:Z

    .line 241
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mVoiceInteraction:Z

    .line 242
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mCameraSwitchFlag:Z

    .line 243
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mInZoomChanging:Z

    .line 245
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mIsPaused:Z

    .line 246
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mSkipUnbindOnPause:Z

    .line 249
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mPhotoIntent:Z

    .line 250
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mVideoIntent:Z

    const/4 v3, 0x0

    .line 252
    iput-object v3, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mVoiceParameters:[Z

    .line 253
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mFromIntent:Z

    .line 255
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mUISinkModeChange:Z

    .line 256
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mOpenOnly:Z

    .line 257
    iput v2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mDelayTime:I

    .line 263
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mIntercept:Z

    .line 264
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mFirstSteadyFrameFlag:Z

    .line 266
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mIsModePickerSink:Z

    .line 267
    iput v2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mScrollModeIndex:I

    .line 269
    iput v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mShutterType:I

    .line 283
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mOnCompleteAllowed:Z

    .line 288
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mShouldHideThumbnailUI:Z

    .line 290
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mIsShoulderTipsShow:Z

    .line 292
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mIsSellingPointVideoPlaying:Z

    .line 293
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mIsPreviewCoverUIShow:Z

    .line 296
    iput v2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mSeparateCaptureNumber:I

    .line 300
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mLockObj:Ljava/lang/Object;

    .line 309
    iput-object v3, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mModeInflateRoot:Landroid/view/ViewGroup;

    .line 327
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mUILayerRootParentList:Ljava/util/List;

    .line 344
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mSupportSuperAntiVideoV2:Z

    .line 416
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mUIManagers:Ljava/util/List;

    .line 420
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const/high16 v3, 0x3e800000    # 0.25f

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v0, v3, v4, v4, v5}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mPathInterpolator:Landroid/view/animation/PathInterpolator;

    .line 422
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v3, 0x3ea8f5c3    # 0.33f

    const v6, 0x3f28f5c3    # 0.66f

    invoke-direct {v0, v3, v4, v6, v5}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mAlphaPathInterpolator:Landroid/view/animation/PathInterpolator;

    .line 425
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mZoomKeyEventCallbacks:Ljava/util/List;

    .line 429
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mIsVideoRecording:Z

    .line 430
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mVideoThermalWarningSupport:Z

    .line 431
    iput v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mRecordingOrientation:I

    .line 432
    iput v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mShutterProcessingOrientation:I

    .line 433
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->isCapturing:Z

    .line 434
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mGraduationViewIsMoving:Z

    .line 440
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mIsTopBarItemListFocusable:Z

    .line 441
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mIsInteractiveListFocusable:Z

    .line 443
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mActionTriggerTime:Ljava/util/Map;

    .line 451
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mPreviewReadyForCurrentSession:Z

    .line 453
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mSkipUpdatePopSettingUIList:Z

    .line 459
    new-instance v0, Lcom/transsion/camera/app/ui/BaseAppUI$1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/ui/BaseAppUI$1;-><init>(Lcom/transsion/camera/app/ui/BaseAppUI;)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mRawActionCallback:Lcom/transsion/camera/app/common/mode/CameraOperateAction$RawActionHandleCallback;

    .line 477
    new-instance v0, Lcom/transsion/camera/app/ui/BaseAppUI$2;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/ui/BaseAppUI$2;-><init>(Lcom/transsion/camera/app/ui/BaseAppUI;)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mModeScrollListener:Lcom/transsion/camera/app/ui/IModeScrollUI$ModeScrollListener;

    .line 532
    iput-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mContext:Landroid/content/Context;

    .line 533
    iput-object p2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    .line 534
    new-instance v0, Lcom/transsion/camera/app/ui/BaseAppUI$UIHandler;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/ui/BaseAppUI$UIHandler;-><init>(Lcom/transsion/camera/app/ui/BaseAppUI;)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mUIHandler:Landroid/os/Handler;

    .line 535
    iput-object p3, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mIntentProxy:Lcom/transsion/camera/app/common/IApp$IIntentProxy;

    .line 536
    new-instance p3, Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager;

    invoke-direct {p3, p1, p2}, Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager;-><init>(Landroid/content/Context;Lcom/transsion/camera/app/common/manager/IScreenManager;)V

    iput-object p3, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mGpuAlgorithmManager:Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager;

    .line 537
    sget-object p1, Lcom/transsion/camera/app/ui/BaseAppUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mGpuAlgorithmManager: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 538
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 539
    sget p2, Lcom/transsion/camera/R$bool;->thumbnail_view_animation_open:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p2

    iput-boolean p2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mIsThumbnailAnimationNeed:Z

    .line 540
    sget p2, Lcom/transsion/camera/R$bool;->support_shutter_ui_new_style:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p2

    iput-boolean p2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mShutterUINewStyleSupport:Z

    .line 541
    sget p2, Lcom/transsion/camera/R$bool;->pop_setting_support:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mPopSettingUISupport:Z

    .line 542
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mSkipInteractiveUpdate:Z

    .line 543
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/BaseAppUI;->createSupportDebounceActionSet()Ljava/util/HashSet;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mSupportDebounceActionSet:Ljava/util/HashSet;

    return-void
.end method

.method private checkIfNeedDebounce(I)Z
    .registers 6

    .line 643
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mSupportDebounceActionSet:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_22

    .line 644
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 645
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/BaseAppUI;->getActionTriggerTime(I)J

    move-result-wide p0

    sub-long/2addr v2, p0

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide p0

    const-wide/16 v2, 0x14

    cmp-long p0, p0, v2

    if-gtz p0, :cond_22

    const/4 p0, 0x1

    return p0

    :cond_22
    return v1
.end method

.method private createSupportDebounceActionSet()Ljava/util/HashSet;
    .registers 2

    .line 693
    new-instance p0, Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    const/16 v0, 0xd0

    .line 694
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const/16 v0, 0x31

    .line 695
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const/16 v0, 0x168

    .line 696
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method private delayLoadUIManager()V
    .registers 5

    .line 2856
    sget-object v0, Lcom/transsion/camera/app/ui/BaseAppUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "[delayLoadUIManager] start"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 2857
    new-instance v1, Lcom/transsion/camera/app/ui/BaseAppUI$ContinuousShotUIInflateStage;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v1, p0, v2, v3}, Lcom/transsion/camera/app/ui/BaseAppUI$ContinuousShotUIInflateStage;-><init>(Lcom/transsion/camera/app/ui/BaseAppUI;Lcom/transsion/camera/app/ui/BaseAppUI$UIInflateStage;Z)V

    .line 2858
    new-instance v2, Lcom/transsion/camera/app/ui/BaseAppUI$ToastUIInflateStage;

    invoke-direct {v2, p0, v1}, Lcom/transsion/camera/app/ui/BaseAppUI$ToastUIInflateStage;-><init>(Lcom/transsion/camera/app/ui/BaseAppUI;Lcom/transsion/camera/app/ui/BaseAppUI$UIInflateStage;)V

    .line 2859
    new-instance v1, Lcom/transsion/camera/app/ui/BaseAppUI$HintUIInflateStage;

    invoke-direct {v1, p0, v2}, Lcom/transsion/camera/app/ui/BaseAppUI$HintUIInflateStage;-><init>(Lcom/transsion/camera/app/ui/BaseAppUI;Lcom/transsion/camera/app/ui/BaseAppUI$UIInflateStage;)V

    .line 2860
    new-instance v2, Lcom/transsion/camera/app/ui/BaseAppUI$OverlayUIInflateStage;

    invoke-direct {v2, p0, v1}, Lcom/transsion/camera/app/ui/BaseAppUI$OverlayUIInflateStage;-><init>(Lcom/transsion/camera/app/ui/BaseAppUI;Lcom/transsion/camera/app/ui/BaseAppUI$UIInflateStage;)V

    .line 2861
    new-instance v1, Lcom/transsion/camera/app/ui/BaseAppUI$WideCameraUIInflateStage;

    invoke-direct {v1, p0, v2}, Lcom/transsion/camera/app/ui/BaseAppUI$WideCameraUIInflateStage;-><init>(Lcom/transsion/camera/app/ui/BaseAppUI;Lcom/transsion/camera/app/ui/BaseAppUI$UIInflateStage;)V

    .line 2862
    new-instance v2, Lcom/transsion/camera/app/ui/BaseAppUI$TopLayerUIInflateStage;

    invoke-direct {v2, p0, v1}, Lcom/transsion/camera/app/ui/BaseAppUI$TopLayerUIInflateStage;-><init>(Lcom/transsion/camera/app/ui/BaseAppUI;Lcom/transsion/camera/app/ui/BaseAppUI$UIInflateStage;)V

    .line 2863
    invoke-virtual {v2}, Lcom/transsion/camera/app/ui/BaseAppUI$TopLayerUIInflateStage;->process()V

    .line 2864
    const-string p0, "[delayLoadUIManager] end"

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private doDelayLoadUIManager()V
    .registers 5

    .line 2845
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mRootView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/View;->hasWindowFocus()Z

    move-result v0

    .line 2846
    sget-object v1, Lcom/transsion/camera/app/ui/BaseAppUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[doDelayLoadUIManager] mRootView hasWindowFocus: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 2848
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mUIHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getQueue()Landroid/os/MessageQueue;

    move-result-object v0

    new-instance v1, Lcom/transsion/camera/app/ui/BaseAppUI$$ExternalSyntheticLambda13;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/ui/BaseAppUI$$ExternalSyntheticLambda13;-><init>(Lcom/transsion/camera/app/ui/BaseAppUI;)V

    invoke-virtual {v0, v1}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    return-void
.end method

.method private doHideCustomPreviewCover()V
    .registers 1

    .line 798
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mPreviewUIManager:Lcom/transsion/camera/app/ui/manager/PreviewUIManager;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/PreviewUIManager;->hideCustomPreviewCover()V

    return-void
.end method

.method private doInflateBottomBar()V
    .registers 7

    .line 5412
    sget-object v0, Lcom/transsion/camera/app/ui/BaseAppUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "[PreviewPerformance] doLoadBottomUI start"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 5413
    const-string v1, "doLoadBottomUI"

    invoke-static {v1}, Lcom/transsion/camera/utils/debug/TraceUtil;->begin(Ljava/lang/String;)V

    .line 5414
    iget-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mThumbnailUIManager:Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;

    const/4 v2, 0x0

    if-eqz v1, :cond_23

    iget-object v3, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mShutterPanelRootView:Landroid/view/ViewGroup;

    if-eqz v3, :cond_23

    .line 5415
    iget-object v4, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mRootView:Landroid/view/ViewGroup;

    iget-object v5, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mLayoutInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v1, v4, v3, v5}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->inflateLayout(Landroid/view/ViewGroup;Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)V

    .line 5416
    iget-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mThumbnailUIManager:Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;

    iget v3, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mOrientation:I

    invoke-virtual {v1, v3, v2}, Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;->onOrientationChanged(IZ)V

    .line 5419
    :cond_23
    iget-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mCameraSwitcherUIManager:Lcom/transsion/camera/app/ui/manager/CameraSwitcherUIManager;

    if-eqz v1, :cond_42

    iget-object v3, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mShutterPanelRootView:Landroid/view/ViewGroup;

    if-eqz v3, :cond_42

    .line 5420
    iget-object v4, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mLayoutInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v1, v3, v4}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->inflateLayout(Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)V

    .line 5421
    iget-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mCameraSwitcherUIManager:Lcom/transsion/camera/app/ui/manager/CameraSwitcherUIManager;

    iget v3, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mOrientation:I

    invoke-virtual {v1, v3, v2}, Lcom/transsion/camera/app/ui/manager/CameraSwitcherUIManager;->onOrientationChanged(IZ)V

    .line 5422
    iget-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mCameraSwitcherUIManager:Lcom/transsion/camera/app/ui/manager/CameraSwitcherUIManager;

    new-instance v3, Lcom/transsion/camera/app/ui/BaseAppUI$CameraSwitchListenerImpl;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/transsion/camera/app/ui/BaseAppUI$CameraSwitchListenerImpl;-><init>(Lcom/transsion/camera/app/ui/BaseAppUI;Lcom/transsion/camera/app/ui/BaseAppUI-IA;)V

    invoke-virtual {v1, v3}, Lcom/transsion/camera/app/ui/manager/CameraSwitcherUIManager;->setCameraSwitchListener(Lcom/transsion/camera/app/common/IAppUIListener$ICameraSwitchListener;)V

    .line 5425
    :cond_42
    iget-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mShutterUIManager:Lcom/transsion/camera/app/ui/manager/ShutterUIManager;

    if-eqz v1, :cond_56

    iget-object v3, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mShutterPanelRootView:Landroid/view/ViewGroup;

    if-eqz v3, :cond_56

    .line 5426
    iget-object v4, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mLayoutInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v1, v3, v4}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->inflateLayout(Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)V

    .line 5427
    iget-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mShutterUIManager:Lcom/transsion/camera/app/ui/manager/ShutterUIManager;

    iget v3, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mOrientation:I

    invoke-virtual {v1, v3, v2}, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->onOrientationChanged(IZ)V

    .line 5430
    :cond_56
    iget-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mFloatingShutterUIManager:Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;

    if-eqz v1, :cond_63

    iget-object v2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mFloatingShutterLayout:Landroid/widget/FrameLayout;

    if-eqz v2, :cond_63

    .line 5431
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mLayoutInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v1, v2, p0}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->inflateLayout(Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)V

    .line 5433
    :cond_63
    invoke-static {}, Lcom/transsion/camera/utils/debug/TraceUtil;->end()V

    .line 5434
    const-string p0, "[PreviewPerformance] doLoadBottomUI end"

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private doInflateHelpUI()V
    .registers 5

    .line 5534
    sget-object v0, Lcom/transsion/camera/app/ui/BaseAppUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "[PreviewPerformance] doLoadHelpUI start"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 5535
    const-string v1, "doLoadHelpUI"

    invoke-static {v1}, Lcom/transsion/camera/utils/debug/TraceUtil;->begin(Ljava/lang/String;)V

    .line 5536
    iget-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mHelpGuideUIManager:Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;

    if-eqz v1, :cond_1c

    .line 5537
    iget-object v2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mBelowMainCtrlInflateRoot:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mLayoutInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v1, v2, v3}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->inflateLayout(Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)V

    .line 5538
    iget-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mHelpGuideUIManager:Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;

    invoke-virtual {p0, v1}, Lcom/transsion/camera/app/ui/BaseAppUI;->registerPreviewRectListener(Lcom/transsion/camera/app/common/IAppUIListener$IPreviewRectListener;)V

    .line 5540
    :cond_1c
    invoke-static {}, Lcom/transsion/camera/utils/debug/TraceUtil;->end()V

    .line 5541
    const-string p0, "[PreviewPerformance] doLoadHelpUI end"

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private doInflateInteractUI()V
    .registers 9

    .line 5464
    sget-object v0, Lcom/transsion/camera/app/ui/BaseAppUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "[PreviewPerformance] doInflateInteractUI start"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 5465
    const-string v1, "doInflateInteractUI"

    invoke-static {v1}, Lcom/transsion/camera/utils/debug/TraceUtil;->begin(Ljava/lang/String;)V

    .line 5467
    iget-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mInteractiveUIManager:Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;

    if-eqz v1, :cond_4c

    .line 5468
    new-instance v2, Lcom/transsion/camera/app/common/interactive/CommonInteractive;

    iget-object v3, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mModePickerLayout:Landroid/view/View;

    iget-object v4, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mModePikerArrowRoot:Landroid/view/View;

    iget-object v5, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mShutterPanelRootView:Landroid/view/ViewGroup;

    move-object v7, p0

    move-object v6, p0

    invoke-direct/range {v2 .. v7}, Lcom/transsion/camera/app/common/interactive/CommonInteractive;-><init>(Landroid/view/View;Landroid/view/View;Landroid/view/View;Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;Lcom/transsion/camera/app/common/IAppUI;)V

    .line 5470
    iget-object p0, v6, Lcom/transsion/camera/app/ui/BaseAppUI;->mModePickerUIManager:Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;

    invoke-virtual {v2, p0}, Lcom/transsion/camera/app/common/interactive/CommonInteractive;->setModeRegionControl(Lcom/transsion/camera/app/common/IModeRegionControl;)V

    .line 5471
    iget-object p0, v6, Lcom/transsion/camera/app/ui/BaseAppUI;->mInteractiveUIManager:Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;

    iget-object v1, v6, Lcom/transsion/camera/app/ui/BaseAppUI;->mBelowMainCtrlInflateRoot:Landroid/view/ViewGroup;

    iget-object v3, v6, Lcom/transsion/camera/app/ui/BaseAppUI;->mLayoutInflater:Landroid/view/LayoutInflater;

    invoke-virtual {p0, v1, v2, v3}, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->init(Landroid/view/ViewGroup;Lcom/transsion/camera/app/common/interactive/CommonInteractive;Landroid/view/LayoutInflater;)V

    .line 5472
    iget-object p0, v6, Lcom/transsion/camera/app/ui/BaseAppUI;->mInteractiveUIManager:Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;

    iget-object v1, v6, Lcom/transsion/camera/app/ui/BaseAppUI;->mSwitchWideCameraListener:Lcom/transsion/camera/app/common/IAppUIListener$ISwitchWideCameraListener;

    invoke-virtual {p0, v1}, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->setSwitchWideCameraListener(Lcom/transsion/camera/app/common/IAppUIListener$ISwitchWideCameraListener;)V

    .line 5473
    iget-object p0, v6, Lcom/transsion/camera/app/ui/BaseAppUI;->mInteractiveUIManager:Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;

    invoke-virtual {v6, p0}, Lcom/transsion/camera/app/ui/BaseAppUI;->registerPreviewRectListener(Lcom/transsion/camera/app/common/IAppUIListener$IPreviewRectListener;)V

    .line 5474
    iget-object p0, v6, Lcom/transsion/camera/app/ui/BaseAppUI;->mInteractiveUIManager:Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;

    new-instance v1, Lcom/transsion/camera/app/ui/BaseAppUI$SwitchDualAndMainCameraListenerImpl;

    const/4 v2, 0x0

    invoke-direct {v1, v6, v2}, Lcom/transsion/camera/app/ui/BaseAppUI$SwitchDualAndMainCameraListenerImpl;-><init>(Lcom/transsion/camera/app/ui/BaseAppUI;Lcom/transsion/camera/app/ui/BaseAppUI-IA;)V

    invoke-virtual {p0, v1}, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->setSwitchDualAndMainCameraListener(Lcom/transsion/camera/app/common/IAppUIListener$ISwitchDualAndMainCameraListener;)V

    .line 5475
    iget-object p0, v6, Lcom/transsion/camera/app/ui/BaseAppUI;->mInteractiveUIManager:Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;

    new-instance v1, Lcom/transsion/camera/app/ui/BaseAppUI$RestartPreviewListenerImpl;

    invoke-direct {v1, v6, v2}, Lcom/transsion/camera/app/ui/BaseAppUI$RestartPreviewListenerImpl;-><init>(Lcom/transsion/camera/app/ui/BaseAppUI;Lcom/transsion/camera/app/ui/BaseAppUI-IA;)V

    invoke-virtual {p0, v1}, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->setRestartPreviewListener(Lcom/transsion/camera/app/common/IAppUIListener$IRestartPreviewListener;)V

    .line 5477
    :cond_4c
    invoke-static {}, Lcom/transsion/camera/utils/debug/TraceUtil;->end()V

    .line 5478
    const-string p0, "[PreviewPerformance] doInflateInteractUI end"

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private doInflateMasterGuideUI()V
    .registers 4

    .line 5387
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mMasterGuideUIManager:Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;

    if-eqz v0, :cond_19

    .line 5388
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mRootView:Landroid/view/ViewGroup;

    sget v1, Lcom/transsion/camera/R$id;->master_guide_layer_root:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_19

    .line 5390
    iget-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mMasterGuideUIManager:Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mRootView:Landroid/view/ViewGroup;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mLayoutInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v1, v2, v0, p0}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->inflateLayout(Landroid/view/ViewGroup;Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)V

    :cond_19
    return-void
.end method

.method private doInflateModeSelectUI()V
    .registers 5

    .line 5438
    sget-object v0, Lcom/transsion/camera/app/ui/BaseAppUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "[PreviewPerformance] doLoadModeSelectUI start"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 5439
    const-string v1, "doLoadModeSelectUI"

    invoke-static {v1}, Lcom/transsion/camera/utils/debug/TraceUtil;->begin(Ljava/lang/String;)V

    .line 5440
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/BaseAppUI;->doSetupModePickerUIManager()V

    .line 5441
    iget-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mContext:Landroid/content/Context;

    if-nez v1, :cond_1c

    .line 5442
    const-string p0, "doLoadModeSelectUI mContext is null"

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 5443
    invoke-static {}, Lcom/transsion/camera/utils/debug/TraceUtil;->end()V

    return-void

    .line 5446
    :cond_1c
    iget-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mRootView:Landroid/view/ViewGroup;

    sget v2, Lcom/transsion/camera/R$id;->mode_picker_tab_frame:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mModePickerLayout:Landroid/view/View;

    .line 5447
    iget-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mRootView:Landroid/view/ViewGroup;

    sget v2, Lcom/transsion/camera/R$id;->mode_picker_tab_layout:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/ui/widget/TabLayout;

    iput-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mModeTabLayout:Lcom/transsion/camera/app/ui/widget/TabLayout;

    .line 5448
    iget-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mRootView:Landroid/view/ViewGroup;

    sget v2, Lcom/transsion/camera/R$id;->mode_picker_container:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mModePickerContainer:Landroid/view/View;

    .line 5449
    iget-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mRootView:Landroid/view/ViewGroup;

    sget v2, Lcom/transsion/camera/R$id;->top_layer_root:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mTopLayerRoot:Landroid/view/ViewGroup;

    .line 5450
    iget-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mRootView:Landroid/view/ViewGroup;

    sget v2, Lcom/transsion/camera/R$id;->mode_selector_layout:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/ui/widget/VerticalModeSelector;

    iput-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mVerticalModeSelector:Lcom/transsion/camera/app/ui/widget/VerticalModeSelector;

    .line 5451
    iget-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mRootView:Landroid/view/ViewGroup;

    sget v2, Lcom/transsion/camera/R$id;->more_mode_guide_left_root:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mMoreModeGuideLeftRoot:Landroid/view/View;

    .line 5452
    iget-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mRootView:Landroid/view/ViewGroup;

    sget v2, Lcom/transsion/camera/R$id;->more_mode_guide_right_root:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mMoreModeGuideRightRoot:Landroid/view/View;

    .line 5453
    iget-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mModePickerUIManager:Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;

    if-eqz v1, :cond_7e

    .line 5454
    iget-object v2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mPreviewGestureManager:Lcom/transsion/camera/app/ui/gesture/PreviewGestureManager;

    const/16 v3, 0x8

    invoke-virtual {v2, v1, v3}, Lcom/transsion/camera/app/ui/gesture/PreviewGestureManager;->registerGestureListener(Lcom/transsion/camera/app/common/IAppUIListener$IPreviewGestureListener;I)V

    .line 5456
    iget-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mModePickerUIManager:Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;

    new-instance v2, Lcom/transsion/camera/app/ui/BaseAppUI$ModeChangedListenerImpl;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/transsion/camera/app/ui/BaseAppUI$ModeChangedListenerImpl;-><init>(Lcom/transsion/camera/app/ui/BaseAppUI;Lcom/transsion/camera/app/ui/BaseAppUI-IA;)V

    invoke-virtual {v1, v2}, Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;->setModePickerListener(Lcom/transsion/camera/app/common/IAppUIListener$IModeChangedListener;)V

    .line 5458
    :cond_7e
    invoke-static {}, Lcom/transsion/camera/utils/debug/TraceUtil;->end()V

    .line 5459
    const-string p0, "[PreviewPerformance] doLoadModeSelectUI end"

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private doInflateOverlayUI()V
    .registers 9

    .line 5545
    sget-object v0, Lcom/transsion/camera/app/ui/BaseAppUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "[PreviewPerformance] doLoadOverlayUI start"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 5546
    const-string v1, "doLoadOverlayUI"

    invoke-static {v1}, Lcom/transsion/camera/utils/debug/TraceUtil;->begin(Ljava/lang/String;)V

    .line 5547
    iget-object v2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mOverlayUIManager:Lcom/transsion/camera/app/ui/manager/OverlayUIManager;

    if-eqz v2, :cond_32

    iget-object v4, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mOverlayUIRoot:Landroid/view/ViewGroup;

    if-eqz v4, :cond_32

    .line 5548
    iget-object v3, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mRootView:Landroid/view/ViewGroup;

    iget-object v5, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mLayoutInflater:Landroid/view/LayoutInflater;

    iget-object v6, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mCameraZoomLayout:Landroid/view/ViewGroup;

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->inflateLayout(Landroid/view/ViewGroup;Landroid/view/ViewGroup;Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/view/ViewGroup;)V

    .line 5549
    iget-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mOverlayUIManager:Lcom/transsion/camera/app/ui/manager/OverlayUIManager;

    invoke-virtual {p0, v1}, Lcom/transsion/camera/app/ui/BaseAppUI;->registerPreviewRectListener(Lcom/transsion/camera/app/common/IAppUIListener$IPreviewRectListener;)V

    .line 5550
    iget-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mOverlayUIManager:Lcom/transsion/camera/app/ui/manager/OverlayUIManager;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mSwitchWideCameraListener:Lcom/transsion/camera/app/common/IAppUIListener$ISwitchWideCameraListener;

    invoke-virtual {v1, v2}, Lcom/transsion/camera/app/ui/manager/OverlayUIManager;->setSwitchWideCameraListener(Lcom/transsion/camera/app/common/IAppUIListener$ISwitchWideCameraListener;)V

    .line 5551
    iget-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mPreviewGestureManager:Lcom/transsion/camera/app/ui/gesture/PreviewGestureManager;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mOverlayUIManager:Lcom/transsion/camera/app/ui/manager/OverlayUIManager;

    const/4 v2, 0x6

    invoke-virtual {v1, p0, v2}, Lcom/transsion/camera/app/ui/gesture/PreviewGestureManager;->registerGestureListener(Lcom/transsion/camera/app/common/IAppUIListener$IPreviewGestureListener;I)V

    .line 5554
    :cond_32
    invoke-static {}, Lcom/transsion/camera/utils/debug/TraceUtil;->end()V

    .line 5555
    const-string p0, "[PreviewPerformance] doLoadOverlayUI end"

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private doInflatePopSettingUI()V
    .registers 5

    .line 5370
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mPopSettingUISupport:Z

    if-eqz v0, :cond_48

    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mPopSettingUIManager:Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;

    if-eqz v0, :cond_48

    .line 5371
    sget-object v0, Lcom/transsion/camera/app/ui/BaseAppUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "[PreviewPerformance] doInflatePopSettingUI start"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 5372
    const-string v1, "doInflatePopSettingUI"

    invoke-static {v1}, Lcom/transsion/camera/utils/debug/TraceUtil;->begin(Ljava/lang/String;)V

    .line 5373
    iget-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mRootView:Landroid/view/ViewGroup;

    sget v2, Lcom/transsion/camera/R$id;->pop_setting_root:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_40

    .line 5375
    iget-object v2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mPopSettingUIManager:Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;

    iget-object v3, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mLayoutInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v2, v1, v3}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->inflateLayout(Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)V

    .line 5376
    iget-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mPopSettingUIManager:Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;

    invoke-virtual {p0, v1}, Lcom/transsion/camera/app/ui/BaseAppUI;->registerPreviewRectListener(Lcom/transsion/camera/app/common/IAppUIListener$IPreviewRectListener;)V

    .line 5377
    iget-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mPreviewGestureManager:Lcom/transsion/camera/app/ui/gesture/PreviewGestureManager;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mPopSettingUIManager:Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;

    const/16 v3, 0x8

    invoke-virtual {v1, v2, v3}, Lcom/transsion/camera/app/ui/gesture/PreviewGestureManager;->registerGestureListener(Lcom/transsion/camera/app/common/IAppUIListener$IPreviewGestureListener;I)V

    .line 5379
    iget-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mPopSettingUIManager:Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;

    new-instance v2, Lcom/transsion/camera/app/ui/BaseAppUI$FragmentListenerImpl;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/transsion/camera/app/ui/BaseAppUI$FragmentListenerImpl;-><init>(Lcom/transsion/camera/app/ui/BaseAppUI;Lcom/transsion/camera/app/ui/BaseAppUI-IA;)V

    invoke-virtual {v1, v2}, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->setSettingFragmentListener(Lcom/transsion/camera/app/common/IAppUIListener$IFragmentListener;)V

    .line 5381
    :cond_40
    invoke-static {}, Lcom/transsion/camera/utils/debug/TraceUtil;->end()V

    .line 5382
    const-string p0, "[PreviewPerformance] doInflatePopSettingUI end"

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :cond_48
    return-void
.end method

.method private doInflateSellingPointGuideUI()V
    .registers 5

    .line 5396
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportSellingPointGuide:Z

    if-eqz v0, :cond_41

    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mSellingPointGuideUIManager:Lcom/transsion/camera/app/ui/manager/SellingPointGuideUIManager;

    if-eqz v0, :cond_41

    .line 5397
    sget-object v0, Lcom/transsion/camera/app/ui/BaseAppUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "[PreviewPerformance] doInflateSellingPointGuideUI start"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 5398
    const-string v1, "doInflateSellingPointGuideUI"

    invoke-static {v1}, Lcom/transsion/camera/utils/debug/TraceUtil;->begin(Ljava/lang/String;)V

    .line 5399
    iget-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mRootView:Landroid/view/ViewGroup;

    sget v2, Lcom/transsion/camera/R$id;->below_main_control_layer_root:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_39

    .line 5401
    iget-object v2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mSellingPointGuideUIManager:Lcom/transsion/camera/app/ui/manager/SellingPointGuideUIManager;

    iget-object v3, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mLayoutInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v2, v1, v3}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->inflateLayout(Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)V

    .line 5402
    iget-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mSellingPointGuideUIManager:Lcom/transsion/camera/app/ui/manager/SellingPointGuideUIManager;

    invoke-virtual {p0, v1}, Lcom/transsion/camera/app/ui/BaseAppUI;->registerPreviewRectListener(Lcom/transsion/camera/app/common/IAppUIListener$IPreviewRectListener;)V

    .line 5403
    iget-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mPreviewGestureManager:Lcom/transsion/camera/app/ui/gesture/PreviewGestureManager;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mSellingPointGuideUIManager:Lcom/transsion/camera/app/ui/manager/SellingPointGuideUIManager;

    const/16 v2, 0x8

    invoke-virtual {v1, p0, v2}, Lcom/transsion/camera/app/ui/gesture/PreviewGestureManager;->registerGestureListener(Lcom/transsion/camera/app/common/IAppUIListener$IPreviewGestureListener;I)V

    .line 5406
    :cond_39
    invoke-static {}, Lcom/transsion/camera/utils/debug/TraceUtil;->end()V

    .line 5407
    const-string p0, "[PreviewPerformance] doInflateSellingPointGuideUI end"

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :cond_41
    return-void
.end method

.method private doInflateTopBarUI()V
    .registers 5

    .line 5348
    sget-object v0, Lcom/transsion/camera/app/ui/BaseAppUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "[PreviewPerformance] doInflateTopBarUI start"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 5349
    const-string v1, "doInflateTopBarUI"

    invoke-static {v1}, Lcom/transsion/camera/utils/debug/TraceUtil;->begin(Ljava/lang/String;)V

    .line 5350
    iget-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mRootView:Landroid/view/ViewGroup;

    sget v2, Lcom/transsion/camera/R$id;->top_bar_layout_root:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_62

    .line 5352
    iget-object v2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mTopBarUIManager:Lcom/transsion/camera/app/ui/manager/TopBarUIManager;

    if-eqz v2, :cond_62

    .line 5353
    iget-object v3, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mLayoutInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v2, v1, v3}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->inflateLayout(Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)V

    .line 5354
    iget-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mTopBarUIManager:Lcom/transsion/camera/app/ui/manager/TopBarUIManager;

    invoke-virtual {p0, v1}, Lcom/transsion/camera/app/ui/BaseAppUI;->registerPreviewRectListener(Lcom/transsion/camera/app/common/IAppUIListener$IPreviewRectListener;)V

    .line 5355
    iget-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mPreviewGestureManager:Lcom/transsion/camera/app/ui/gesture/PreviewGestureManager;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mTopBarUIManager:Lcom/transsion/camera/app/ui/manager/TopBarUIManager;

    const/16 v3, 0x8

    invoke-virtual {v1, v2, v3}, Lcom/transsion/camera/app/ui/gesture/PreviewGestureManager;->registerGestureListener(Lcom/transsion/camera/app/common/IAppUIListener$IPreviewGestureListener;I)V

    .line 5356
    iget-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mTopBarUIManager:Lcom/transsion/camera/app/ui/manager/TopBarUIManager;

    new-instance v2, Lcom/transsion/camera/app/ui/BaseAppUI$FragmentListenerImpl;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/transsion/camera/app/ui/BaseAppUI$FragmentListenerImpl;-><init>(Lcom/transsion/camera/app/ui/BaseAppUI;Lcom/transsion/camera/app/ui/BaseAppUI-IA;)V

    invoke-virtual {v1, v2}, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->setSettingFragmentListener(Lcom/transsion/camera/app/common/IAppUIListener$IFragmentListener;)V

    .line 5357
    iget-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mTopBarUIManager:Lcom/transsion/camera/app/ui/manager/TopBarUIManager;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mSwitchWideCameraListener:Lcom/transsion/camera/app/common/IAppUIListener$ISwitchWideCameraListener;

    invoke-virtual {v1, v2}, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->setSwitchWideCameraListener(Lcom/transsion/camera/app/common/IAppUIListener$ISwitchWideCameraListener;)V

    .line 5358
    iget-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mTopBarUIManager:Lcom/transsion/camera/app/ui/manager/TopBarUIManager;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mSwitchTeleCameraListener:Lcom/transsion/camera/app/common/IAppUIListener$ISwitchLogicalCameraListener;

    invoke-virtual {v1, v2}, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->setSwitchTeleCameraListener(Lcom/transsion/camera/app/common/IAppUIListener$ISwitchLogicalCameraListener;)V

    .line 5359
    iget-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mTopBarUIManager:Lcom/transsion/camera/app/ui/manager/TopBarUIManager;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mSwitchPeriscopeCameraListener:Lcom/transsion/camera/app/common/IAppUIListener$ISwitchPeriscopeCameraListener;

    invoke-virtual {v1, v2}, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->setSwitchPeriscopeCameraListener(Lcom/transsion/camera/app/common/IAppUIListener$ISwitchPeriscopeCameraListener;)V

    .line 5360
    iget-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mTopBarUIManager:Lcom/transsion/camera/app/ui/manager/TopBarUIManager;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mSwitchBlurCameraListener:Lcom/transsion/camera/app/common/IAppUIListener$ISwitchBlurCameraListener;

    invoke-virtual {v1, v2}, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->setSwitchBlurCameraListener(Lcom/transsion/camera/app/common/IAppUIListener$ISwitchBlurCameraListener;)V

    .line 5361
    iget-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mTopBarUIManager:Lcom/transsion/camera/app/ui/manager/TopBarUIManager;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mSwitchDualCamBWListener:Lcom/transsion/camera/app/common/IAppUIListener$ISwitchDualCamBWCameraListener;

    invoke-virtual {v1, v2}, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->setSwitchDualCamBWCameraListener(Lcom/transsion/camera/app/common/IAppUIListener$ISwitchDualCamBWCameraListener;)V

    .line 5362
    iget-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mTopBarUIManager:Lcom/transsion/camera/app/ui/manager/TopBarUIManager;

    invoke-virtual {v1, p0}, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->setPopupOptionControl(Lcom/transsion/camera/app/common/IAppUIControl$IPopupOptionControl;)V

    .line 5365
    :cond_62
    invoke-static {}, Lcom/transsion/camera/utils/debug/TraceUtil;->end()V

    .line 5366
    const-string p0, "[PreviewPerformance] doInflateTopBarUI end"

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private doInflateWideCameraUI()V
    .registers 5

    .line 5512
    sget-object v0, Lcom/transsion/camera/app/ui/BaseAppUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "[PreviewPerformance] doLoadWideCameraUI start"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 5513
    const-string v1, "doLoadWideCameraUI"

    invoke-static {v1}, Lcom/transsion/camera/utils/debug/TraceUtil;->begin(Ljava/lang/String;)V

    .line 5514
    iget-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mWideCameraUIManager:Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;

    if-eqz v1, :cond_37

    .line 5515
    iget-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mRootView:Landroid/view/ViewGroup;

    sget v2, Lcom/transsion/camera/R$id;->wide_camera_layer:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewStub;

    if-eqz v1, :cond_1f

    .line 5517
    invoke-virtual {v1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 5519
    :cond_1f
    iget-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mRootView:Landroid/view/ViewGroup;

    sget v2, Lcom/transsion/camera/R$id;->wide_camera_layer_root:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 5520
    iget-object v2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mWideCameraUIManager:Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;

    iget-object v3, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mLayoutInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v2, v1, v3}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->inflateLayout(Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)V

    .line 5521
    iget-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mWideCameraUIManager:Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mSwitchWideCameraListener:Lcom/transsion/camera/app/common/IAppUIListener$ISwitchWideCameraListener;

    invoke-virtual {v1, p0}, Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;->setSwitchWideCameraListener(Lcom/transsion/camera/app/common/IAppUIListener$ISwitchWideCameraListener;)V

    .line 5523
    :cond_37
    invoke-static {}, Lcom/transsion/camera/utils/debug/TraceUtil;->end()V

    .line 5524
    const-string p0, "[PreviewPerformance] doLoadWideCameraUI end"

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private doLoadHintUIManager()V
    .registers 8

    .line 2868
    sget-object v0, Lcom/transsion/camera/app/ui/BaseAppUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "[doLoadHintUIManager] start"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 2869
    const-string v0, "doLoadHintUIManager"

    invoke-static {v0}, Lcom/transsion/camera/utils/debug/TraceUtil;->begin(Ljava/lang/String;)V

    .line 2870
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mHintUIManager:Lcom/transsion/camera/app/ui/manager/HintUIManager;

    if-nez v0, :cond_a8

    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mHintRootLayout:Landroid/view/ViewGroup;

    if-eqz v0, :cond_a8

    .line 2871
    new-instance v0, Lcom/transsion/camera/app/ui/widget/adapter/UIAdapter$Builder;

    invoke-direct {v0}, Lcom/transsion/camera/app/ui/widget/adapter/UIAdapter$Builder;-><init>()V

    sget-object v1, Lcom/transsion/camera/app/ui/widget/adapter/UIAdapter$Version;->UI5:Lcom/transsion/camera/app/ui/widget/adapter/UIAdapter$Version;

    const-string v2, "com.transsion.camera.app.ui.manager.factory.HintUI5ManagerFactory"

    .line 2872
    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/ui/widget/adapter/UIAdapter$Builder;->add(Lcom/transsion/camera/app/ui/widget/adapter/UIAdapter$Version;Ljava/lang/String;)Lcom/transsion/camera/app/ui/widget/adapter/UIAdapter$Builder;

    move-result-object v0

    new-instance v1, Lcom/transsion/camera/app/ui/BaseAppUI$$ExternalSyntheticLambda18;

    invoke-direct {v1}, Lcom/transsion/camera/app/ui/BaseAppUI$$ExternalSyntheticLambda18;-><init>()V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    .line 2873
    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/ui/widget/adapter/UIAdapter$Builder;->build(Ljava/util/function/Supplier;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/transsion/camera/app/ui/manager/factory/HintUIManagerFactory;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    const/4 v6, 0x0

    move-object v4, p0

    move-object v5, p0

    move-object v3, p0

    .line 2874
    invoke-virtual/range {v1 .. v6}, Lcom/transsion/camera/app/ui/manager/factory/AbstractUIManagerFactory;->createHintUIManager(Lcom/transsion/camera/app/ui/ScreenManager;Lcom/transsion/camera/app/common/IAppUIControl$IModePickerControl;Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;)Lcom/transsion/camera/app/common/manager/AbstractViewManager;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/app/ui/manager/HintUIManager;

    iput-object p0, v3, Lcom/transsion/camera/app/ui/BaseAppUI;->mHintUIManager:Lcom/transsion/camera/app/ui/manager/HintUIManager;

    .line 2875
    iget-object v0, v3, Lcom/transsion/camera/app/ui/BaseAppUI;->mUIManagers:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2876
    iget-object p0, v3, Lcom/transsion/camera/app/ui/BaseAppUI;->mHintUIManager:Lcom/transsion/camera/app/ui/manager/HintUIManager;

    iget-object v0, v3, Lcom/transsion/camera/app/ui/BaseAppUI;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/manager/HintUIManager;->setSettingController(Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)V

    .line 2877
    iget-object p0, v3, Lcom/transsion/camera/app/ui/BaseAppUI;->mHintUIManager:Lcom/transsion/camera/app/ui/manager/HintUIManager;

    iget-object v0, v3, Lcom/transsion/camera/app/ui/BaseAppUI;->mHintRootLayout:Landroid/view/ViewGroup;

    iget-object v1, v3, Lcom/transsion/camera/app/ui/BaseAppUI;->mLayoutInflater:Landroid/view/LayoutInflater;

    invoke-virtual {p0, v0, v1}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->inflateLayout(Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)V

    .line 2878
    iget-object p0, v3, Lcom/transsion/camera/app/ui/BaseAppUI;->mHintUIManager:Lcom/transsion/camera/app/ui/manager/HintUIManager;

    iget v0, v3, Lcom/transsion/camera/app/ui/BaseAppUI;->mOrientation:I

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/transsion/camera/app/ui/manager/HintUIManager;->onOrientationChanged(IZ)V

    .line 2879
    iget-object p0, v3, Lcom/transsion/camera/app/ui/BaseAppUI;->mHintUIManager:Lcom/transsion/camera/app/ui/manager/HintUIManager;

    invoke-virtual {v3, p0}, Lcom/transsion/camera/app/ui/BaseAppUI;->registerScreenFormListener(Lcom/transsion/camera/app/common/IScreenFormControl;)V

    .line 2880
    iget-object p0, v3, Lcom/transsion/camera/app/ui/BaseAppUI;->mHintUIManager:Lcom/transsion/camera/app/ui/manager/HintUIManager;

    invoke-virtual {v3, p0}, Lcom/transsion/camera/app/ui/BaseAppUI;->registerPreviewRectListener(Lcom/transsion/camera/app/common/IAppUIListener$IPreviewRectListener;)V

    .line 2881
    iget-object p0, v3, Lcom/transsion/camera/app/ui/BaseAppUI;->mHintUIManager:Lcom/transsion/camera/app/ui/manager/HintUIManager;

    const/16 v0, 0xa

    invoke-virtual {v3, p0, v0}, Lcom/transsion/camera/app/ui/BaseAppUI;->registerPreviewGestureListener(Lcom/transsion/camera/app/common/IAppUIListener$IPreviewGestureListener;I)V

    .line 2883
    iget-object p0, v3, Lcom/transsion/camera/app/ui/BaseAppUI;->mOnceLowPowerHint:Lcom/transsion/camera/app/common/ui/HintInfo;

    const/4 v0, 0x0

    if-eqz p0, :cond_78

    .line 2884
    iget-object v1, v3, Lcom/transsion/camera/app/ui/BaseAppUI;->mHintUIManager:Lcom/transsion/camera/app/ui/manager/HintUIManager;

    invoke-virtual {v1, p0}, Lcom/transsion/camera/app/ui/manager/HintUIManager;->showLowPowerHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    .line 2885
    iput-object v0, v3, Lcom/transsion/camera/app/ui/BaseAppUI;->mOnceLowPowerHint:Lcom/transsion/camera/app/common/ui/HintInfo;

    .line 2887
    :cond_78
    iget-object p0, v3, Lcom/transsion/camera/app/ui/BaseAppUI;->mOnceLensDirtyHint:Lcom/transsion/camera/app/common/ui/HintInfo;

    if-eqz p0, :cond_83

    .line 2888
    iget-object v1, v3, Lcom/transsion/camera/app/ui/BaseAppUI;->mHintUIManager:Lcom/transsion/camera/app/ui/manager/HintUIManager;

    invoke-virtual {v1, p0}, Lcom/transsion/camera/app/ui/manager/HintUIManager;->showHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    .line 2889
    iput-object v0, v3, Lcom/transsion/camera/app/ui/BaseAppUI;->mOnceLensDirtyHint:Lcom/transsion/camera/app/common/ui/HintInfo;

    .line 2891
    :cond_83
    iget-object p0, v3, Lcom/transsion/camera/app/ui/BaseAppUI;->mPendingHints:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_a8

    .line 2892
    iget-object p0, v3, Lcom/transsion/camera/app/ui/BaseAppUI;->mPendingHints:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_91
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/common/ui/HintInfo;

    .line 2893
    iget-object v1, v3, Lcom/transsion/camera/app/ui/BaseAppUI;->mHintUIManager:Lcom/transsion/camera/app/ui/manager/HintUIManager;

    invoke-virtual {v1, v0}, Lcom/transsion/camera/app/ui/manager/HintUIManager;->showHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    goto :goto_91

    .line 2895
    :cond_a3
    iget-object p0, v3, Lcom/transsion/camera/app/ui/BaseAppUI;->mPendingHints:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    .line 2898
    :cond_a8
    invoke-static {}, Lcom/transsion/camera/utils/debug/TraceUtil;->end()V

    .line 2899
    sget-object p0, Lcom/transsion/camera/app/ui/BaseAppUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "[doLoadHintUIManager] end"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private doSetStateListener()V
    .registers 4

    .line 2944
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mHelpGuideUIManager:Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_d

    .line 2945
    new-instance v2, Lcom/transsion/camera/app/ui/BaseAppUI$HelpGuideStateListenerImpl;

    invoke-direct {v2, p0, v1}, Lcom/transsion/camera/app/ui/BaseAppUI$HelpGuideStateListenerImpl;-><init>(Lcom/transsion/camera/app/ui/BaseAppUI;Lcom/transsion/camera/app/ui/BaseAppUI-IA;)V

    invoke-virtual {v0, v2}, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;->setStateListener(Lcom/transsion/camera/app/common/IAppUIListener$IFragmentStateListener;)V

    .line 2947
    :cond_d
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mFloatingShutterUIManager:Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;

    if-eqz v0, :cond_19

    .line 2948
    new-instance v2, Lcom/transsion/camera/app/ui/BaseAppUI$HelpGuideStateListenerImpl;

    invoke-direct {v2, p0, v1}, Lcom/transsion/camera/app/ui/BaseAppUI$HelpGuideStateListenerImpl;-><init>(Lcom/transsion/camera/app/ui/BaseAppUI;Lcom/transsion/camera/app/ui/BaseAppUI-IA;)V

    invoke-virtual {v0, v2}, Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;->setStateListener(Lcom/transsion/camera/app/common/IAppUIListener$IFragmentStateListener;)V

    :cond_19
    return-void
.end method

.method private doShowCustomPreviewCover(Landroid/graphics/Bitmap;)V
    .registers 2

    .line 794
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mPreviewUIManager:Lcom/transsion/camera/app/ui/manager/PreviewUIManager;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/manager/PreviewUIManager;->showCustomPreviewCover(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method private doUpdateHelpGuide()V
    .registers 4

    .line 3022
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mCurrentModeSettingUISpec:Lcom/transsion/camera/app/common/ModeSettingUISpec;

    if-eqz v0, :cond_35

    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mHelpGuideUIManager:Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;

    if-eqz v0, :cond_35

    .line 3023
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mIsSupportImageryGuide:Z

    if-nez v0, :cond_35

    .line 3025
    const-string v0, "doUpdateHelpGuide"

    invoke-static {v0}, Lcom/transsion/camera/utils/debug/TraceUtil;->begin(Ljava/lang/String;)V

    .line 3027
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mCurrentModeSettingUISpec:Lcom/transsion/camera/app/common/ModeSettingUISpec;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->getModeGuideLayoutIdList()Ljava/util/List;

    move-result-object v0

    .line 3028
    iget-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mCurrentModeSettingUISpec:Lcom/transsion/camera/app/common/ModeSettingUISpec;

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->getSettingGuideLayoutIdList()[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2c

    .line 3031
    iget-object v2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mSettingUIProvider:Lcom/transsion/camera/app/common/provider/SettingUIProvider;

    if-eqz v2, :cond_2c

    .line 3032
    invoke-virtual {v2, v1}, Lcom/transsion/camera/app/common/provider/SettingUIProvider;->createSettingGuideItemUIList([Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    goto :goto_2d

    :cond_2c
    const/4 v1, 0x0

    .line 3035
    :goto_2d
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mHelpGuideUIManager:Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;

    invoke-virtual {p0, v0, v1}, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;->setGuideItemList(Ljava/util/List;Ljava/util/List;)V

    .line 3036
    invoke-static {}, Lcom/transsion/camera/utils/debug/TraceUtil;->end()V

    :cond_35
    return-void
.end method

.method private doUpdateInteractUIList()V
    .registers 3

    .line 5482
    const-string v0, "doUpdateInteractUIList"

    invoke-static {v0}, Lcom/transsion/camera/utils/debug/TraceUtil;->begin(Ljava/lang/String;)V

    .line 5483
    sget-object v0, Lcom/transsion/camera/app/ui/BaseAppUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "[PreviewPerformance] doUpdateInteractUIList start"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 5484
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/BaseAppUI;->doUpdateInteractiveUIList()V

    .line 5485
    const-string p0, "[PreviewPerformance] doUpdateInteractUIList end"

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 5486
    invoke-static {}, Lcom/transsion/camera/utils/debug/TraceUtil;->end()V

    return-void
.end method

.method private doUpdateInteractiveUIList()V
    .registers 11

    .line 3349
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mCurrentModeSettingUISpec:Lcom/transsion/camera/app/common/ModeSettingUISpec;

    if-eqz v0, :cond_125

    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mSettingUIProvider:Lcom/transsion/camera/app/common/provider/SettingUIProvider;

    if-eqz v0, :cond_125

    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mInteractiveUIManager:Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;

    if-eqz v0, :cond_125

    .line 3350
    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->getRootView()Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_125

    .line 3351
    const-string v0, "doUpdateInteractiveUIList"

    invoke-static {v0}, Lcom/transsion/camera/utils/debug/TraceUtil;->begin(Ljava/lang/String;)V

    .line 3353
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    if-eqz v0, :cond_20

    .line 3354
    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getCameraId()Ljava/lang/String;

    move-result-object v0

    goto :goto_22

    .line 3353
    :cond_20
    const-string v0, "0"

    .line 3356
    :goto_22
    sget-object v1, Lcom/transsion/camera/app/ui/BaseAppUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[PreviewPerformance] doUpdateInteractiveUIList start, currentCameraId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", mSpecialCameraChange: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mSpecialCameraChange:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", mSkipInteractiveUpdate: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mSkipInteractiveUpdate:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 3358
    iget-object v2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {v2}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenFormType()I

    move-result v2

    const/4 v3, 0x7

    if-ne v3, v2, :cond_5c

    .line 3359
    iget-object v2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mCurrentModeSettingUISpec:Lcom/transsion/camera/app/common/ModeSettingUISpec;

    invoke-virtual {v2}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->getFlipModeInteractiveSettingUIEntries()[Ljava/lang/String;

    move-result-object v2

    goto :goto_62

    .line 3360
    :cond_5c
    iget-object v2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mCurrentModeSettingUISpec:Lcom/transsion/camera/app/common/ModeSettingUISpec;

    invoke-virtual {v2}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->getModeInteractiveSettingUIEntries()[Ljava/lang/String;

    move-result-object v2

    .line 3361
    :goto_62
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/BaseAppUI;->isSecureCamera()Z

    move-result v4

    if-eqz v4, :cond_6e

    .line 3362
    const-string v4, "com.transsion.camera.feature.dv_template.entrance.DVTemplateEntranceSettingUIEntry"

    invoke-static {v2, v4}, Lcom/transsion/camera/utils/ArrayUtils;->removeString([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 3364
    :cond_6e
    iget-object v4, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mSettingUIProvider:Lcom/transsion/camera/app/common/provider/SettingUIProvider;

    invoke-virtual {v4, v2}, Lcom/transsion/camera/app/common/provider/SettingUIProvider;->getCommonSettingUIList([Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 3365
    iget-object v4, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mInteractiveUIManager:Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;

    invoke-virtual {v4, v2}, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->setDefaultCommonSettingUIList(Ljava/util/List;)V

    .line 3368
    iget-object v4, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const/4 v5, 0x0

    if-eqz v4, :cond_8b

    .line 3369
    const-string v6, "key_super_anti_video"

    invoke-interface {v4, v6}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 3370
    const-string v6, "super"

    invoke-static {v4, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    goto :goto_8c

    :cond_8b
    move v4, v5

    .line 3372
    :goto_8c
    iget-object v6, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mCurrentModeName:Ljava/lang/String;

    const-string v7, "com.transsion.camera.feature.mode.video.VideoModeEntry"

    invoke-static {v6, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    .line 3374
    iget-boolean v7, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mSpecialCameraChange:Z

    if-nez v7, :cond_c0

    iget-boolean v7, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mSkipInteractiveUpdate:Z

    if-eqz v7, :cond_a4

    iget-object v7, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mCurrentModeName:Ljava/lang/String;

    invoke-direct {p0, v7}, Lcom/transsion/camera/app/ui/BaseAppUI;->isVideoModeCategory(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_c0

    :cond_a4
    if-eqz v4, :cond_b9

    if-eqz v6, :cond_b9

    .line 3375
    iget-boolean v7, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mSupportSuperAntiVideoV2:Z

    if-eqz v7, :cond_b9

    .line 3376
    iget-object v7, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mInteractiveUIManager:Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iget-object v9, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mCurrentModeName:Ljava/lang/String;

    invoke-virtual {v7, v8, v0, v9}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->setCommonSettingUIList(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c0

    .line 3378
    :cond_b9
    iget-object v7, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mInteractiveUIManager:Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;

    iget-object v8, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mCurrentModeName:Ljava/lang/String;

    invoke-virtual {v7, v2, v0, v8}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->setCommonSettingUIList(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 3381
    :cond_c0
    :goto_c0
    iput-boolean v5, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mSpecialCameraChange:Z

    .line 3382
    iput-boolean v5, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mSkipInteractiveUpdate:Z

    .line 3384
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenFormType()I

    move-result v0

    if-ne v3, v0, :cond_d3

    .line 3385
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mCurrentModeSettingUISpec:Lcom/transsion/camera/app/common/ModeSettingUISpec;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->getFlipOptionSettingUIEntries()[Ljava/lang/String;

    move-result-object v0

    goto :goto_d9

    .line 3386
    :cond_d3
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mCurrentModeSettingUISpec:Lcom/transsion/camera/app/common/ModeSettingUISpec;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->getOptionSettingUIEntries()[Ljava/lang/String;

    move-result-object v0

    .line 3387
    :goto_d9
    iget-object v3, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mSettingUIProvider:Lcom/transsion/camera/app/common/provider/SettingUIProvider;

    const/4 v5, 0x0

    invoke-virtual {v3, v0, v5, v5}, Lcom/transsion/camera/app/common/provider/SettingUIProvider;->getTopBarItemUIList([Ljava/lang/String;Ljava/util/List;Landroid/graphics/drawable/Drawable;)Ljava/util/List;

    move-result-object v0

    .line 3388
    iget-object v3, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mInteractiveUIManager:Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;

    invoke-virtual {v3, v0}, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->setDefaultOptionSettingUIList(Ljava/util/List;)V

    if-eqz v4, :cond_f8

    if-eqz v6, :cond_f8

    .line 3389
    iget-boolean v3, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mSupportSuperAntiVideoV2:Z

    if-eqz v3, :cond_f8

    .line 3390
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mInteractiveUIManager:Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v3}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->setOptionSettingUIList(Ljava/util/List;)V

    goto :goto_fd

    .line 3392
    :cond_f8
    iget-object v3, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mInteractiveUIManager:Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;

    invoke-virtual {v3, v0}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->setOptionSettingUIList(Ljava/util/List;)V

    :goto_fd
    if-eqz v2, :cond_11d

    .line 3395
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_11d

    const-string v0, "com.transsion.camera.feature.mode.more.MoreModeEntry"

    iget-object v2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mCurrentModeName:Ljava/lang/String;

    .line 3396
    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_11d

    iget v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mCurrentAppUIState:I

    const/4 v2, 0x3

    if-eq v0, v2, :cond_11d

    const/16 v2, 0xb

    if-eq v0, v2, :cond_11d

    .line 3399
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mInteractiveUIManager:Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->show()V

    .line 3401
    :cond_11d
    const-string p0, "[PreviewPerformance] doUpdateInteractiveUIList end."

    invoke-static {v1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 3402
    invoke-static {}, Lcom/transsion/camera/utils/debug/TraceUtil;->end()V

    :cond_125
    return-void
.end method

.method private doUpdateOptionBar()V
    .registers 1

    .line 3016
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mInteractiveUIManager:Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;

    if-eqz p0, :cond_7

    .line 3017
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->updateOptionSettingUIs()V

    :cond_7
    return-void
.end method

.method private doUpdateOverlaySettingUIList(Z)V
    .registers 11

    .line 3241
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mOverlayUIManager:Lcom/transsion/camera/app/ui/manager/OverlayUIManager;

    if-eqz v0, :cond_16a

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->getRootView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_16a

    .line 3242
    const-string v0, "doUpdateOverlaySettingUIList"

    invoke-static {v0}, Lcom/transsion/camera/utils/debug/TraceUtil;->begin(Ljava/lang/String;)V

    .line 3243
    sget-object v0, Lcom/transsion/camera/app/ui/BaseAppUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "[PreviewPerformance] doUpdateOverlaySettingUIList start"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 3244
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mOverlayManagerFinished:Z

    .line 3245
    iget-object v2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mCurrentModeSettingUISpec:Lcom/transsion/camera/app/common/ModeSettingUISpec;

    const/4 v3, -0x1

    const/4 v4, 0x1

    if-eqz v2, :cond_139

    iget-object v2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mSettingUIProvider:Lcom/transsion/camera/app/common/provider/SettingUIProvider;

    if-eqz v2, :cond_139

    .line 3247
    iget-object v2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    if-eqz v2, :cond_40

    .line 3248
    invoke-interface {v2}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getCameraId()Ljava/lang/String;

    move-result-object v2

    .line 3249
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[doUpdateOverlaySettingUIList] currentCameraId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_42

    .line 3247
    :cond_40
    const-string v2, "0"

    .line 3252
    :goto_42
    iget-object v5, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mOverlayUIManager:Lcom/transsion/camera/app/ui/manager/OverlayUIManager;

    iget-object v6, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mModeFeatureSupport:Lcom/transsion/camera/app/common/mode/IModeFeatureSupport;

    invoke-virtual {v5, v6}, Lcom/transsion/camera/app/ui/manager/OverlayUIManager;->setModeFeatureSupport(Lcom/transsion/camera/app/common/mode/IModeFeatureSupport;)V

    .line 3253
    iget-object v5, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mOverlayUIManager:Lcom/transsion/camera/app/ui/manager/OverlayUIManager;

    iget-object v6, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mAeAfLock:Lcom/transsion/camera/app/common/mode/IAeAfLock;

    invoke-virtual {v5, v6}, Lcom/transsion/camera/app/ui/manager/OverlayUIManager;->setAeAfLock(Lcom/transsion/camera/app/common/mode/IAeAfLock;)V

    .line 3254
    iget-object v5, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mOverlayUIManager:Lcom/transsion/camera/app/ui/manager/OverlayUIManager;

    iget-object v6, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mModeFeatureConfig:Lcom/transsion/camera/app/common/IModeFeatureConfig;

    invoke-virtual {v5, v6}, Lcom/transsion/camera/app/ui/manager/OverlayUIManager;->setModeFeatureConfig(Lcom/transsion/camera/app/common/IModeFeatureConfig;)V

    .line 3256
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/BaseAppUI;->updateOverlayManagerSettingUIList()V

    .line 3257
    invoke-static {}, Lcom/transsion/camera/adapter/CameraAgentFactory;->getCameraAgent()Lcom/transsion/camera/adapter/CameraAgent;

    move-result-object v5

    invoke-virtual {v5}, Lcom/transsion/camera/adapter/CameraAgent;->getCameraDeviceInfo()Lcom/transsion/camera/adapter/ICameraDeviceInfo;

    move-result-object v5

    .line 3258
    invoke-interface {v5, v2}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->getCameraInfo(Ljava/lang/String;)Lcom/transsion/camera/adapter/ICameraInfo;

    move-result-object v5

    invoke-interface {v5}, Lcom/transsion/camera/adapter/ICameraInfo;->getFacing()I

    move-result v5

    if-nez v5, :cond_6e

    move v5, v4

    goto :goto_6f

    :cond_6e
    move v5, v1

    .line 3259
    :goto_6f
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result v6

    if-eqz v6, :cond_8e

    .line 3260
    iget-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mOverlayUIManager:Lcom/transsion/camera/app/ui/manager/OverlayUIManager;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mCurrentModeSettingUISpec:Lcom/transsion/camera/app/common/ModeSettingUISpec;

    invoke-virtual {v2}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->getModeOffsetPadding()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/transsion/camera/app/ui/manager/OverlayUIManager;->setZoomOffsetPadding(I)V

    .line 3261
    iget-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mOverlayUIManager:Lcom/transsion/camera/app/ui/manager/OverlayUIManager;

    new-instance v2, Lcom/transsion/camera/app/common/ModeConfig;

    iget-object v6, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mCurrentModeSettingUISpec:Lcom/transsion/camera/app/common/ModeSettingUISpec;

    invoke-direct {v2, v6, v5}, Lcom/transsion/camera/app/common/ModeConfig;-><init>(Lcom/transsion/camera/app/common/ModeSettingUISpec;Z)V

    invoke-virtual {v1, v2}, Lcom/transsion/camera/app/ui/manager/OverlayUIManager;->updateModeConfigToZoom(Lcom/transsion/camera/app/common/ModeConfig;)V

    goto/16 :goto_139

    .line 3262
    :cond_8e
    iget-object v6, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mWideCameraUIManager:Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;

    if-eqz v6, :cond_139

    if-eqz v5, :cond_e6

    .line 3267
    iget-object v6, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mCurrentModeSettingUISpec:Lcom/transsion/camera/app/common/ModeSettingUISpec;

    invoke-virtual {v6}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->getModeOffsetPadding()I

    move-result v6

    if-lez v6, :cond_a8

    .line 3268
    iget-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mWideCameraUIManager:Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;

    iget-object v6, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mCurrentModeSettingUISpec:Lcom/transsion/camera/app/common/ModeSettingUISpec;

    invoke-virtual {v6}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->getModeOffsetPadding()I

    move-result v6

    invoke-virtual {v1, v6}, Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;->setOffsetPadding(I)V

    goto :goto_ad

    .line 3270
    :cond_a8
    iget-object v6, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mWideCameraUIManager:Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;

    invoke-virtual {v6, v1}, Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;->setOffsetPadding(I)V

    .line 3272
    :goto_ad
    iget-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mCurrentModeSettingUISpec:Lcom/transsion/camera/app/common/ModeSettingUISpec;

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->getWideCameraSettingUIEntries()[Ljava/lang/String;

    move-result-object v1

    .line 3273
    iget-object v6, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mCurrentModeSettingUISpec:Lcom/transsion/camera/app/common/ModeSettingUISpec;

    invoke-virtual {v6}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->getFlipWideCameraSettingUIEntries()[Ljava/lang/String;

    move-result-object v6

    .line 3274
    iget-object v7, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {v7}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenFormType()I

    move-result v7

    const/4 v8, 0x7

    if-ne v7, v8, :cond_c9

    .line 3275
    iget-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mSettingUIProvider:Lcom/transsion/camera/app/common/provider/SettingUIProvider;

    invoke-virtual {v1, v6}, Lcom/transsion/camera/app/common/provider/SettingUIProvider;->createWideCameraItemUIList([Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    goto :goto_cf

    .line 3277
    :cond_c9
    iget-object v6, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mSettingUIProvider:Lcom/transsion/camera/app/common/provider/SettingUIProvider;

    invoke-virtual {v6, v1}, Lcom/transsion/camera/app/common/provider/SettingUIProvider;->createWideCameraItemUIList([Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 3279
    :goto_cf
    iget-object v6, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mWideCameraUIManager:Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;

    iget-object v7, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mCurrentModeSettingUISpec:Lcom/transsion/camera/app/common/ModeSettingUISpec;

    invoke-virtual {v7}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->getSecondDefaultZoomValue()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;->setSecondDefaultZoomValue(I)V

    .line 3280
    iget-object v6, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mWideCameraUIManager:Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;

    iget-object v7, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mCurrentModeSettingUISpec:Lcom/transsion/camera/app/common/ModeSettingUISpec;

    invoke-virtual {v7}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->getTeleSecondDefaultZoomValue()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;->setTeleSecondDefaultZoomValue(I)V

    goto :goto_f2

    .line 3282
    :cond_e6
    iget-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mCurrentModeSettingUISpec:Lcom/transsion/camera/app/common/ModeSettingUISpec;

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->getFrontWideCameraSettingUIEntries()[Ljava/lang/String;

    move-result-object v1

    .line 3283
    iget-object v6, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mSettingUIProvider:Lcom/transsion/camera/app/common/provider/SettingUIProvider;

    invoke-virtual {v6, v1}, Lcom/transsion/camera/app/common/provider/SettingUIProvider;->createWideCameraItemUIList([Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 3286
    :goto_f2
    iget v6, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mOrientation:I

    if-eq v6, v3, :cond_fb

    .line 3287
    iget-object v7, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mWideCameraUIManager:Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;

    invoke-virtual {v7, v6, v4}, Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;->onOrientationChanged(IZ)V

    .line 3289
    :cond_fb
    iget-object v6, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mWideCameraUIManager:Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;

    iget-object v7, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mCurrentModeName:Ljava/lang/String;

    invoke-virtual {v6, v1, v2, v7}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->setCommonSettingUIList(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 3291
    iget-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mCurrentModeName:Ljava/lang/String;

    const-string v2, "com.transsion.camera.feature.mode.video.TimeLapseVideoModeEntry"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    const/16 v2, 0x7b

    if-eqz v1, :cond_113

    .line 3292
    iget-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mWideCameraUIManager:Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;

    invoke-virtual {v1, v2}, Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;->notifyCameraOperateActionToUI(I)V

    .line 3295
    :cond_113
    iget-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mCurrentModeName:Ljava/lang/String;

    const-string v6, "com.transsion.camera.feature.mode.timelapsemode.TimelapsePhotoModeEntry"

    invoke-static {v1, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_122

    .line 3296
    iget-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mWideCameraUIManager:Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;

    invoke-virtual {v1, v2}, Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;->notifyCameraOperateActionToUI(I)V

    .line 3299
    :cond_122
    iget-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mOverlayUIManager:Lcom/transsion/camera/app/ui/manager/OverlayUIManager;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mCurrentModeSettingUISpec:Lcom/transsion/camera/app/common/ModeSettingUISpec;

    invoke-virtual {v2}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->getModeOffsetPadding()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/transsion/camera/app/ui/manager/OverlayUIManager;->setZoomOffsetPadding(I)V

    .line 3300
    iget-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mOverlayUIManager:Lcom/transsion/camera/app/ui/manager/OverlayUIManager;

    new-instance v2, Lcom/transsion/camera/app/common/ModeConfig;

    iget-object v6, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mCurrentModeSettingUISpec:Lcom/transsion/camera/app/common/ModeSettingUISpec;

    invoke-direct {v2, v6, v5}, Lcom/transsion/camera/app/common/ModeConfig;-><init>(Lcom/transsion/camera/app/common/ModeSettingUISpec;Z)V

    invoke-virtual {v1, v2}, Lcom/transsion/camera/app/ui/manager/OverlayUIManager;->updateModeConfigToZoom(Lcom/transsion/camera/app/common/ModeConfig;)V

    .line 3304
    :cond_139
    :goto_139
    iget v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mOrientation:I

    if-eq v1, v3, :cond_142

    .line 3305
    iget-object v2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mOverlayUIManager:Lcom/transsion/camera/app/ui/manager/OverlayUIManager;

    invoke-virtual {v2, v1, v4}, Lcom/transsion/camera/app/ui/manager/OverlayUIManager;->onOrientationChanged(IZ)V

    :cond_142
    if-eqz p1, :cond_160

    .line 3310
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mOverlayUIManager:Lcom/transsion/camera/app/ui/manager/OverlayUIManager;

    const/16 v1, 0x9

    invoke-virtual {p1, v1}, Lcom/transsion/camera/app/ui/manager/OverlayUIManager;->notifyCameraOperateActionToUI(I)V

    .line 3311
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mWideCameraUIManager:Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;

    if-eqz p1, :cond_152

    .line 3312
    invoke-virtual {p1, v1}, Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;->notifyCameraOperateActionToUI(I)V

    .line 3314
    :cond_152
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mOverlayUIManager:Lcom/transsion/camera/app/ui/manager/OverlayUIManager;

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Lcom/transsion/camera/app/ui/manager/OverlayUIManager;->notifyCameraOperateActionToUI(I)V

    .line 3315
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mWideCameraUIManager:Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;

    if-eqz p1, :cond_160

    .line 3316
    invoke-virtual {p1, v1}, Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;->notifyCameraOperateActionToUI(I)V

    .line 3320
    :cond_160
    iput-boolean v4, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mOverlayManagerFinished:Z

    .line 3321
    const-string p0, "[PreviewPerformance] doUpdateOverlaySettingUIList end."

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 3322
    invoke-static {}, Lcom/transsion/camera/utils/debug/TraceUtil;->end()V

    :cond_16a
    return-void
.end method

.method private doUpdatePopSettingUI()V
    .registers 5

    .line 3992
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mUIAnimatorController:Lcom/transsion/camera/app/common/IUIAnimatorController;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/IUIAnimatorController;->isRunning()Z

    move-result v0

    if-nez v0, :cond_c

    .line 3993
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/BaseAppUI;->doUpdatePopSettingUIInternal()V

    return-void

    .line 3995
    :cond_c
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mUIAnimatorController:Lcom/transsion/camera/app/common/IUIAnimatorController;

    new-instance v1, Lcom/transsion/camera/app/ui/BaseAppUI$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/ui/BaseAppUI$$ExternalSyntheticLambda7;-><init>(Lcom/transsion/camera/app/ui/BaseAppUI;)V

    const-wide/16 v2, 0x1f4

    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mUIHandler:Landroid/os/Handler;

    invoke-interface {v0, v1, v2, v3, p0}, Lcom/transsion/camera/app/common/IUIAnimatorController;->registerOnIdle(Ljava/lang/Runnable;JLandroid/os/Handler;)V

    return-void
.end method

.method private doUpdatePopSettingUIInternal()V
    .registers 3

    .line 4000
    sget-object v0, Lcom/transsion/camera/app/ui/BaseAppUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "doUpdatePopSettingUI: "

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 4001
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mPopSettingUIManager:Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;

    if-eqz p0, :cond_e

    .line 4002
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->updatePopSettingUIList()V

    :cond_e
    return-void
.end method

.method private doUpdatePopSettingUIList()V
    .registers 7

    .line 3041
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mPopSettingUIManager:Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;

    if-eqz v0, :cond_e5

    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_e5

    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mCurrentModeSettingUISpec:Lcom/transsion/camera/app/common/ModeSettingUISpec;

    if-nez v0, :cond_e

    goto/16 :goto_e5

    .line 3044
    :cond_e
    const-string v0, "doUpdatePopSettingUIList"

    invoke-static {v0}, Lcom/transsion/camera/utils/debug/TraceUtil;->begin(Ljava/lang/String;)V

    .line 3046
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    if-eqz v0, :cond_1c

    .line 3047
    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getCameraId()Ljava/lang/String;

    move-result-object v0

    goto :goto_1e

    .line 3046
    :cond_1c
    const-string v0, "0"

    .line 3049
    :goto_1e
    sget-object v1, Lcom/transsion/camera/app/ui/BaseAppUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[PreviewPerformance] doUpdatePopSettingUIList start. currentCameraId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 3051
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mRootView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 3052
    sget v2, Lcom/transsion/camera/R$array;->build_in_selling_points:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 3053
    sget v3, Lcom/transsion/camera/R$drawable;->background_selling_point:I

    invoke-static {v0, v3}, Lcom/transsion/camera/utils/ResCache;->getDrawable(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 3055
    iget-object v3, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mSettingUIProvider:Lcom/transsion/camera/app/common/provider/SettingUIProvider;

    if-eqz v3, :cond_d2

    .line 3056
    iget-object v3, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {v3}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenFormType()I

    move-result v3

    const/4 v4, 0x7

    if-ne v4, v3, :cond_7f

    .line 3057
    iget-object v3, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mCurrentModeSettingUISpec:Lcom/transsion/camera/app/common/ModeSettingUISpec;

    invoke-virtual {v3}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->getFlipPopSettingTopUIEntries()[Ljava/lang/String;

    move-result-object v3

    .line 3058
    iget-object v4, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mSettingUIProvider:Lcom/transsion/camera/app/common/provider/SettingUIProvider;

    .line 3059
    invoke-virtual {v4, v3, v2, v0}, Lcom/transsion/camera/app/common/provider/SettingUIProvider;->getPopSettingItemUIList([Ljava/lang/String;Ljava/util/List;Landroid/graphics/drawable/Drawable;)Ljava/util/List;

    move-result-object v3

    .line 3060
    iget-object v4, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mCurrentModeSettingUISpec:Lcom/transsion/camera/app/common/ModeSettingUISpec;

    invoke-virtual {v4}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->getFlipPopSettingDownUIEntries()[Ljava/lang/String;

    move-result-object v4

    .line 3061
    iget-object v5, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mSettingUIProvider:Lcom/transsion/camera/app/common/provider/SettingUIProvider;

    .line 3062
    invoke-virtual {v5, v4, v2, v0}, Lcom/transsion/camera/app/common/provider/SettingUIProvider;->getPopSettingItemUIList([Ljava/lang/String;Ljava/util/List;Landroid/graphics/drawable/Drawable;)Ljava/util/List;

    move-result-object v0

    .line 3063
    iget-object v2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mPopSettingUIManager:Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2, v4}, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->setSettingUIList(Ljava/util/List;)V

    .line 3064
    iget-object v2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mPopSettingUIManager:Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;

    invoke-virtual {v2, v3, v0}, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->setFlipSettingUIList(Ljava/util/List;Ljava/util/List;)V

    goto :goto_d2

    .line 3066
    :cond_7f
    iget-object v3, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mCurrentModeSettingUISpec:Lcom/transsion/camera/app/common/ModeSettingUISpec;

    invoke-virtual {v3}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->getPopSettingUIEntries()[Ljava/lang/String;

    move-result-object v3

    .line 3067
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v4

    iget-boolean v4, v4, Lcom/transsion/camera/utils/CustomConfigUtil;->mIsSupportImageryGuide:Z

    if-eqz v4, :cond_93

    .line 3068
    const-string v4, "[doUpdatePopSettingUIList] :don\'t remove HelpGuideSettingUIEntry"

    invoke-static {v1, v4}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_b8

    .line 3070
    :cond_93
    iget-object v4, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mCurrentModeSettingUISpec:Lcom/transsion/camera/app/common/ModeSettingUISpec;

    invoke-virtual {v4}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->getModeGuideLayoutIdList()Ljava/util/List;

    move-result-object v4

    .line 3071
    iget-object v5, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mCurrentModeSettingUISpec:Lcom/transsion/camera/app/common/ModeSettingUISpec;

    invoke-virtual {v5}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->getSettingGuideLayoutIdList()[Ljava/lang/String;

    move-result-object v5

    if-eqz v4, :cond_a7

    .line 3073
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_b8

    :cond_a7
    if-eqz v5, :cond_ac

    array-length v4, v5

    if-nez v4, :cond_b8

    .line 3076
    :cond_ac
    const-string v4, "com.transsion.camera.ui.setting.helpguide.HelpGuideSettingUIEntry"

    invoke-static {v3, v4}, Lcom/transsion/camera/utils/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b8

    .line 3078
    invoke-static {v3, v4}, Lcom/transsion/camera/utils/ArrayUtils;->removeString([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 3083
    :cond_b8
    :goto_b8
    iget-object v4, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mSettingUIProvider:Lcom/transsion/camera/app/common/provider/SettingUIProvider;

    invoke-virtual {v4, v3, v2, v0}, Lcom/transsion/camera/app/common/provider/SettingUIProvider;->getPopSettingItemUIList([Ljava/lang/String;Ljava/util/List;Landroid/graphics/drawable/Drawable;)Ljava/util/List;

    move-result-object v0

    .line 3084
    iget-object v2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mPopSettingUIManager:Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2, v3, v4}, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->setFlipSettingUIList(Ljava/util/List;Ljava/util/List;)V

    .line 3085
    iget-object v2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mPopSettingUIManager:Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;

    invoke-virtual {v2, v0}, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->setSettingUIList(Ljava/util/List;)V

    .line 3088
    :cond_d2
    :goto_d2
    iget v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mOrientation:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_dd

    .line 3089
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mPopSettingUIManager:Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v2}, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->onOrientationChanged(IZ)V

    .line 3091
    :cond_dd
    const-string p0, "[PreviewPerformance] doUpdatePopSettingUIList end"

    invoke-static {v1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 3092
    invoke-static {}, Lcom/transsion/camera/utils/debug/TraceUtil;->end()V

    :cond_e5
    :goto_e5
    return-void
.end method

.method private doUpdateShutterType(IZ)V
    .registers 3

    .line 1341
    iput p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mShutterType:I

    .line 1342
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mShutterUIManager:Lcom/transsion/camera/app/ui/manager/ShutterUIManager;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->updateShutterType(IZ)V

    return-void
.end method

.method private doUpdateTopBarAndOptionBar()V
    .registers 2

    .line 3007
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mTopBarUIManager:Lcom/transsion/camera/app/ui/manager/TopBarUIManager;

    if-eqz v0, :cond_7

    .line 3008
    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->updateSettingUIs()V

    .line 3010
    :cond_7
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mInteractiveUIManager:Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;

    if-eqz p0, :cond_e

    .line 3011
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->updateOptionSettingUIs()V

    :cond_e
    return-void
.end method

.method private doUpdateTopBarSettingUIList()V
    .registers 14

    .line 3096
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mTopBarUIManager:Lcom/transsion/camera/app/ui/manager/TopBarUIManager;

    if-eqz v0, :cond_22e

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->getRootView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_22e

    .line 3097
    const-string v0, "doUpdateTopBarSettingUIList"

    invoke-static {v0}, Lcom/transsion/camera/utils/debug/TraceUtil;->begin(Ljava/lang/String;)V

    .line 3098
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    if-eqz v0, :cond_18

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getCameraId()Ljava/lang/String;

    move-result-object v0

    goto :goto_1a

    :cond_18
    const-string v0, "0"

    .line 3099
    :goto_1a
    sget-object v1, Lcom/transsion/camera/app/ui/BaseAppUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[PreviewPerformance] doUpdateTopBarSettingUIList start. currentCameraId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 3101
    iget-object v2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mRootView:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 3102
    sget v3, Lcom/transsion/camera/R$array;->build_in_selling_points:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 3103
    sget v4, Lcom/transsion/camera/R$drawable;->background_selling_point:I

    invoke-static {v2, v4}, Lcom/transsion/camera/utils/ResCache;->getDrawable(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 3105
    iget-object v4, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mCurrentModeSettingUISpec:Lcom/transsion/camera/app/common/ModeSettingUISpec;

    if-eqz v4, :cond_224

    iget-object v5, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mSettingUIProvider:Lcom/transsion/camera/app/common/provider/SettingUIProvider;

    if-eqz v5, :cond_224

    .line 3106
    invoke-virtual {v4}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->getTopBarSettingUIEntries()[Ljava/lang/String;

    move-result-object v4

    .line 3107
    iget-object v5, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mCurrentModeSettingUISpec:Lcom/transsion/camera/app/common/ModeSettingUISpec;

    invoke-virtual {v5}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->getLeftTopBarSettingUIEntries()[Ljava/lang/String;

    move-result-object v5

    .line 3108
    iget-object v6, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mCurrentModeSettingUISpec:Lcom/transsion/camera/app/common/ModeSettingUISpec;

    invoke-virtual {v6}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->getRightTopBarSettingUIEntries()[Ljava/lang/String;

    move-result-object v6

    .line 3110
    iget-object v7, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/transsion/camera/utils/CameraUtil;->isRepairMode(Landroid/content/Context;)Z

    move-result v7

    .line 3111
    iget-boolean v8, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mFromIntent:Z

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-nez v8, :cond_7b

    iget-boolean v8, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mSecureCamera:Z

    if-nez v8, :cond_7b

    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v8

    iget-boolean v8, v8, Lcom/transsion/camera/utils/CustomConfigUtil;->mGoogleLensSupport:Z

    if-eqz v8, :cond_7b

    if-eqz v7, :cond_79

    goto :goto_7b

    :cond_79
    move v8, v9

    goto :goto_7c

    :cond_7b
    :goto_7b
    move v8, v10

    .line 3112
    :goto_7c
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[PreviewPerformance] doUpdateTopBarSettingUIList start. mFromIntent="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v12, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mFromIntent:Z

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v12, " mSecureCamera="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v12, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mSecureCamera:Z

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v12, " mGoogleLensSupport="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3113
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v12

    iget-boolean v12, v12, Lcom/transsion/camera/utils/CustomConfigUtil;->mGoogleLensSupport:Z

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v12, " mIsRepairMode="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 3112
    invoke-static {v1, v7}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 3114
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/BaseAppUI;->isGoogleLensSupport()Z

    move-result v7

    const-string v11, "com.transsion.camera.ui.setting.googlelens.GoogleLensSettingUIEntry"

    if-eqz v7, :cond_bc

    if-eqz v8, :cond_e5

    .line 3116
    :cond_bc
    invoke-static {v4, v11}, Lcom/transsion/camera/utils/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    const-string v8, "google lens do not support, no need to show lens icon!"

    if-eqz v7, :cond_cb

    .line 3117
    invoke-static {v1, v8}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 3118
    invoke-static {v4, v11}, Lcom/transsion/camera/utils/ArrayUtils;->removeString([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 3120
    :cond_cb
    invoke-static {v5, v11}, Lcom/transsion/camera/utils/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d8

    .line 3121
    invoke-static {v1, v8}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 3122
    invoke-static {v5, v11}, Lcom/transsion/camera/utils/ArrayUtils;->removeString([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 3125
    :cond_d8
    invoke-static {v6, v11}, Lcom/transsion/camera/utils/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_e5

    .line 3126
    invoke-static {v1, v8}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 3127
    invoke-static {v6, v11}, Lcom/transsion/camera/utils/ArrayUtils;->removeString([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 3131
    :cond_e5
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/BaseAppUI;->secureCameraTopBarSuperDefinitionSupport(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_11a

    .line 3133
    const-string v7, "com.transsion.camera.ui.setting.superdefinition.SuperDefinitionSettingUIEntry"

    invoke-static {v4, v7}, Lcom/transsion/camera/utils/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_fc

    .line 3134
    const-string v8, "super definition do not support,topBar no need to show icon!"

    invoke-static {v1, v8}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 3135
    invoke-static {v4, v7}, Lcom/transsion/camera/utils/ArrayUtils;->removeString([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 3137
    :cond_fc
    invoke-static {v5, v7}, Lcom/transsion/camera/utils/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_10b

    .line 3138
    const-string v8, "super definition do not support,left no need to show icon!"

    invoke-static {v1, v8}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 3139
    invoke-static {v5, v7}, Lcom/transsion/camera/utils/ArrayUtils;->removeString([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 3141
    :cond_10b
    invoke-static {v6, v7}, Lcom/transsion/camera/utils/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_11a

    .line 3142
    const-string v8, "super definition do not support,right no need to show icon!"

    invoke-static {v1, v8}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 3143
    invoke-static {v6, v7}, Lcom/transsion/camera/utils/ArrayUtils;->removeString([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 3147
    :cond_11a
    iget-object v7, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mCurrentModeSettingUISpec:Lcom/transsion/camera/app/common/ModeSettingUISpec;

    invoke-direct {p0, v7}, Lcom/transsion/camera/app/ui/BaseAppUI;->needHdrInTopbar(Lcom/transsion/camera/app/common/ModeSettingUISpec;)Z

    move-result v7

    if-eqz v7, :cond_14e

    if-eqz v5, :cond_14e

    .line 3148
    array-length v7, v5

    if-eqz v7, :cond_14e

    .line 3152
    invoke-static {v5, v11}, Lcom/transsion/camera/utils/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_136

    .line 3153
    const-string v7, "hdr do not support,left no need to show icon!"

    invoke-static {v1, v7}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 3154
    invoke-static {v5, v11}, Lcom/transsion/camera/utils/ArrayUtils;->removeString([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 3156
    :cond_136
    const-string v7, "com.transsion.camera.ui.setting.hdr.HdrSettingUIEntry"

    invoke-static {v5, v7}, Lcom/transsion/camera/utils/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_14e

    .line 3157
    const-string v8, "hdr do not support!"

    invoke-static {v1, v8}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 3158
    array-length v8, v5

    add-int/2addr v8, v10

    new-array v8, v8, [Ljava/lang/String;

    .line 3159
    array-length v11, v5

    invoke-static {v5, v9, v8, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3160
    aput-object v7, v8, v9

    move-object v5, v8

    .line 3166
    :cond_14e
    const-string v7, "getTopBarItemUIList start!"

    invoke-static {v1, v7}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 3168
    iget-boolean v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mPopSettingUISupport:Z

    if-eqz v1, :cond_15d

    .line 3169
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    goto :goto_163

    .line 3171
    :cond_15d
    iget-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mSettingUIProvider:Lcom/transsion/camera/app/common/provider/SettingUIProvider;

    invoke-virtual {v1, v4, v3, v2}, Lcom/transsion/camera/app/common/provider/SettingUIProvider;->getTopBarItemUIList([Ljava/lang/String;Ljava/util/List;Landroid/graphics/drawable/Drawable;)Ljava/util/List;

    move-result-object v1

    .line 3173
    :goto_163
    iget-object v4, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mSettingUIProvider:Lcom/transsion/camera/app/common/provider/SettingUIProvider;

    invoke-virtual {v4, v5, v3, v2}, Lcom/transsion/camera/app/common/provider/SettingUIProvider;->getTopBarItemUIList([Ljava/lang/String;Ljava/util/List;Landroid/graphics/drawable/Drawable;)Ljava/util/List;

    move-result-object v4

    .line 3174
    iget-object v5, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mSettingUIProvider:Lcom/transsion/camera/app/common/provider/SettingUIProvider;

    invoke-virtual {v5, v6, v3, v2}, Lcom/transsion/camera/app/common/provider/SettingUIProvider;->getTopBarItemUIList([Ljava/lang/String;Ljava/util/List;Landroid/graphics/drawable/Drawable;)Ljava/util/List;

    move-result-object v2

    .line 3176
    iget-object v3, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/transsion/camera/utils/CameraUtil;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1fb

    iget-boolean v3, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mIsTopBarItemListFocusable:Z

    if-nez v3, :cond_1fb

    .line 3177
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_17f
    :goto_17f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1a5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;

    if-eqz v5, :cond_17f

    .line 3178
    invoke-interface {v5}, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;->getOptionEntryView()Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_17f

    invoke-interface {v5}, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;->getOptionEntryView()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->isFocusable()Z

    move-result v6

    if-nez v6, :cond_17f

    .line 3179
    invoke-interface {v5}, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;->getOptionEntryView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v10}, Landroid/view/View;->setFocusable(Z)V

    goto :goto_17f

    .line 3182
    :cond_1a5
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1a9
    :goto_1a9
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1cf

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;

    if-eqz v5, :cond_1a9

    .line 3183
    invoke-interface {v5}, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;->getOptionEntryView()Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_1a9

    invoke-interface {v5}, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;->getOptionEntryView()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->isFocusable()Z

    move-result v6

    if-nez v6, :cond_1a9

    .line 3184
    invoke-interface {v5}, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;->getOptionEntryView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v10}, Landroid/view/View;->setFocusable(Z)V

    goto :goto_1a9

    .line 3187
    :cond_1cf
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1d3
    :goto_1d3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1f9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;

    if-eqz v5, :cond_1d3

    .line 3188
    invoke-interface {v5}, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;->getOptionEntryView()Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_1d3

    invoke-interface {v5}, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;->getOptionEntryView()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->isFocusable()Z

    move-result v6

    if-nez v6, :cond_1d3

    .line 3189
    invoke-interface {v5}, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;->getOptionEntryView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v10}, Landroid/view/View;->setFocusable(Z)V

    goto :goto_1d3

    .line 3192
    :cond_1f9
    iput-boolean v10, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mIsTopBarItemListFocusable:Z

    .line 3195
    :cond_1fb
    iget-object v3, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mTopBarUIManager:Lcom/transsion/camera/app/ui/manager/TopBarUIManager;

    iget-object v5, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mCurrentModeName:Ljava/lang/String;

    invoke-virtual {v3, v1, v0, v5}, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->setCommonSettingUIList(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 3196
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mTopBarUIManager:Lcom/transsion/camera/app/ui/manager/TopBarUIManager;

    invoke-virtual {v0, v4, v2}, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->setLeftAndRightSettingUIList(Ljava/util/List;Ljava/util/List;)V

    .line 3197
    iget v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mCurrentAppUIState:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_224

    const/4 v1, 0x3

    if-eq v0, v1, :cond_224

    const-string v0, "com.transsion.camera.feature.mode.more.MoreModeEntry"

    iget-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mCurrentModeName:Ljava/lang/String;

    .line 3199
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_224

    iget v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mCurrentAppUIState:I

    const/16 v1, 0xb

    if-eq v0, v1, :cond_224

    .line 3201
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mTopBarUIManager:Lcom/transsion/camera/app/ui/manager/TopBarUIManager;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->show()V

    .line 3205
    :cond_224
    sget-object p0, Lcom/transsion/camera/app/ui/BaseAppUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "[PreviewPerformance] doUpdateTopBarSettingUIList end"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 3206
    invoke-static {}, Lcom/transsion/camera/utils/debug/TraceUtil;->end()V

    :cond_22e
    return-void
.end method

.method private doUpdateUIState(IILjava/lang/String;)V
    .registers 11

    .line 3407
    iput p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mCurrentAppUIState:I

    .line 3408
    sget-object v0, Lcom/transsion/camera/app/ui/BaseAppUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doUpdateUIState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 3409
    iget-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mWideCameraUIManager:Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;

    if-eqz v1, :cond_1f

    .line 3410
    invoke-virtual {v1, p1}, Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;->setUIState(I)V

    :cond_1f
    const v1, 0x106000d

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    packed-switch p1, :pswitch_data_482

    goto/16 :goto_44d

    .line 3684
    :pswitch_2b
    invoke-direct {p0, v4, v3, v2}, Lcom/transsion/camera/app/ui/BaseAppUI;->doUpdateUIState(IILjava/lang/String;)V

    .line 3685
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mShutterUIManager:Lcom/transsion/camera/app/ui/manager/ShutterUIManager;

    const-string/jumbo p2, "true"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->transitionToPressed(Z)V

    goto/16 :goto_44d

    .line 3726
    :pswitch_3c
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mTopBarUIManager:Lcom/transsion/camera/app/ui/manager/TopBarUIManager;

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->hide()V

    .line 3727
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mHelpGuideUIManager:Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;

    if-eqz p1, :cond_48

    .line 3728
    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;->hide()V

    .line 3730
    :cond_48
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mInteractiveUIManager:Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->hide()V

    .line 3731
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mScrollConsumer:Lcom/transsion/camera/app/ui/ScrollConsumer;

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/ScrollConsumer;->onBackPressed()Z

    .line 3733
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mModePickerUIManager:Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;

    if-eqz p1, :cond_59

    .line 3734
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->hide()V

    .line 3737
    :cond_59
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mThumbnailUIManager:Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;

    if-eqz p1, :cond_60

    .line 3738
    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;->hide()V

    .line 3741
    :cond_60
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mHintUIManager:Lcom/transsion/camera/app/ui/manager/HintUIManager;

    if-eqz p1, :cond_6c

    .line 3742
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->show()V

    .line 3743
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mHintUIManager:Lcom/transsion/camera/app/ui/manager/HintUIManager;

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/manager/HintUIManager;->hideSavingDialog()V

    .line 3746
    :cond_6c
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mShutterUIManager:Lcom/transsion/camera/app/ui/manager/ShutterUIManager;

    if-eqz p1, :cond_73

    .line 3747
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->hide()V

    .line 3750
    :cond_73
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mIsVideoRecording:Z

    if-eqz p1, :cond_82

    .line 3751
    iget p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mOrientation:I

    iget-object p2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {p2}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenFormType()I

    move-result p2

    invoke-virtual {p0, p1, p2, v5}, Lcom/transsion/camera/app/ui/BaseAppUI;->updateBottomBarLayout(IIZ)V

    .line 3754
    :cond_82
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mCameraSwitcherUIManager:Lcom/transsion/camera/app/ui/manager/CameraSwitcherUIManager;

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/manager/CameraSwitcherUIManager;->hide()V

    .line 3755
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mOverlayUIManager:Lcom/transsion/camera/app/ui/manager/OverlayUIManager;

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/manager/OverlayUIManager;->show()V

    .line 3756
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mBottomBarRootView:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_44d

    .line 3688
    :pswitch_93
    invoke-direct {p0, v4, v3, v2}, Lcom/transsion/camera/app/ui/BaseAppUI;->doUpdateUIState(IILjava/lang/String;)V

    .line 3689
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mShutterUIManager:Lcom/transsion/camera/app/ui/manager/ShutterUIManager;

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->transitionToVoice()V

    goto/16 :goto_44d

    .line 3692
    :pswitch_9d
    invoke-direct {p0, v4, v3, v2}, Lcom/transsion/camera/app/ui/BaseAppUI;->doUpdateUIState(IILjava/lang/String;)V

    .line 3693
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mShutterUIManager:Lcom/transsion/camera/app/ui/manager/ShutterUIManager;

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->transitionToIdle()V

    goto/16 :goto_44d

    .line 3699
    :pswitch_a7
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mHelpGuideUIManager:Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;

    if-eqz p1, :cond_ae

    .line 3700
    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;->hide()V

    .line 3702
    :cond_ae
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mInteractiveUIManager:Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;

    if-eqz p1, :cond_b5

    .line 3703
    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->hide()V

    .line 3705
    :cond_b5
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mCameraSwitcherUIManager:Lcom/transsion/camera/app/ui/manager/CameraSwitcherUIManager;

    if-eqz p1, :cond_bc

    .line 3706
    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/manager/CameraSwitcherUIManager;->hide()V

    .line 3708
    :cond_bc
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mScrollConsumer:Lcom/transsion/camera/app/ui/ScrollConsumer;

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/ScrollConsumer;->onBackPressed()Z

    .line 3709
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mModePickerUIManager:Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;

    if-eqz p1, :cond_c8

    .line 3710
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->hide()V

    .line 3712
    :cond_c8
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mThumbnailUIManager:Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;

    if-eqz p1, :cond_cf

    .line 3713
    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;->hide()V

    .line 3715
    :cond_cf
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mHintUIManager:Lcom/transsion/camera/app/ui/manager/HintUIManager;

    if-eqz p1, :cond_db

    .line 3716
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->show()V

    .line 3717
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mHintUIManager:Lcom/transsion/camera/app/ui/manager/HintUIManager;

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/manager/HintUIManager;->hideSavingDialog()V

    .line 3719
    :cond_db
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mOverlayUIManager:Lcom/transsion/camera/app/ui/manager/OverlayUIManager;

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/manager/OverlayUIManager;->show()V

    .line 3720
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mBottomBarRootView:Landroid/view/View;

    if-eqz p1, :cond_44d

    .line 3721
    invoke-virtual {p1, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_44d

    .line 3680
    :pswitch_e9
    invoke-direct {p0, v4, v3, v2}, Lcom/transsion/camera/app/ui/BaseAppUI;->doUpdateUIState(IILjava/lang/String;)V

    .line 3681
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mShutterUIManager:Lcom/transsion/camera/app/ui/manager/ShutterUIManager;

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->transitionToSmile()V

    goto/16 :goto_44d

    .line 3642
    :pswitch_f3
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mCShotByPhysicalKey:Z

    if-eqz p1, :cond_102

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/BaseAppUI;->shutterUINewStyleSupport()Z

    move-result p1

    if-eqz p1, :cond_102

    .line 3643
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mShutterUIManager:Lcom/transsion/camera/app/ui/manager/ShutterUIManager;

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->showCShotNumber()V

    .line 3646
    :cond_102
    :pswitch_102
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mHelpGuideUIManager:Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;

    if-eqz p1, :cond_109

    .line 3647
    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;->hide()V

    .line 3649
    :cond_109
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mTopBarUIManager:Lcom/transsion/camera/app/ui/manager/TopBarUIManager;

    if-eqz p1, :cond_128

    .line 3650
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p2

    iget-boolean p2, p2, Lcom/transsion/camera/utils/CustomConfigUtil;->mLivePhotoSupport:Z

    .line 3651
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/BaseAppUI;->isLivePhotoOn()Z

    move-result p3

    if-eqz p3, :cond_124

    iget-object p3, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mShutterUIManager:Lcom/transsion/camera/app/ui/manager/ShutterUIManager;

    if-eqz p3, :cond_124

    .line 3652
    invoke-virtual {p3}, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->getCShotButtonViewVisible()I

    move-result p3

    if-nez p3, :cond_124

    goto :goto_125

    :cond_124
    move v4, v5

    .line 3650
    :goto_125
    invoke-virtual {p1, p2, v4}, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->hide(ZZ)V

    .line 3654
    :cond_128
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mInteractiveUIManager:Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;

    if-eqz p1, :cond_12f

    .line 3655
    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->hide()V

    .line 3657
    :cond_12f
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mWideCameraUIManager:Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;

    if-eqz p1, :cond_136

    .line 3658
    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;->hide()V

    .line 3660
    :cond_136
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mModePickerUIManager:Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;

    if-eqz p1, :cond_13d

    .line 3661
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->hide()V

    .line 3663
    :cond_13d
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mThumbnailUIManager:Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;

    if-eqz p1, :cond_144

    .line 3664
    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;->hide()V

    .line 3666
    :cond_144
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mOverlayUIManager:Lcom/transsion/camera/app/ui/manager/OverlayUIManager;

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/manager/OverlayUIManager;->hide()V

    .line 3667
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mHintUIManager:Lcom/transsion/camera/app/ui/manager/HintUIManager;

    if-eqz p1, :cond_155

    .line 3668
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->hide()V

    .line 3669
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mHintUIManager:Lcom/transsion/camera/app/ui/manager/HintUIManager;

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/manager/HintUIManager;->hideAllHint()V

    .line 3671
    :cond_155
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mCameraSwitcherUIManager:Lcom/transsion/camera/app/ui/manager/CameraSwitcherUIManager;

    if-eqz p1, :cond_15c

    .line 3672
    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/manager/CameraSwitcherUIManager;->hide()V

    .line 3674
    :cond_15c
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mShutterPanelRootView:Landroid/view/ViewGroup;

    if-eqz p1, :cond_163

    .line 3675
    invoke-virtual {p1, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 3677
    :cond_163
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/BaseAppUI;->doUpdateUIStateLongClickFoldFlip()V

    goto/16 :goto_44d

    .line 3622
    :pswitch_168
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mHintUIManager:Lcom/transsion/camera/app/ui/manager/HintUIManager;

    if-eqz p1, :cond_184

    if-nez p3, :cond_17a

    .line 3624
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p3, Lcom/transsion/camera/app/common/R$string;->saving_dialog_string:I

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    .line 3626
    :cond_17a
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mHintUIManager:Lcom/transsion/camera/app/ui/manager/HintUIManager;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->show()V

    .line 3627
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mHintUIManager:Lcom/transsion/camera/app/ui/manager/HintUIManager;

    invoke-virtual {p1, p3, p2}, Lcom/transsion/camera/app/ui/manager/HintUIManager;->showSavingDialog(Ljava/lang/String;I)V

    .line 3629
    :cond_184
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mShutterUIManager:Lcom/transsion/camera/app/ui/manager/ShutterUIManager;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->hide()V

    .line 3630
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mOverlayUIManager:Lcom/transsion/camera/app/ui/manager/OverlayUIManager;

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/manager/OverlayUIManager;->hide()V

    .line 3631
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mInteractiveUIManager:Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;

    if-eqz p1, :cond_195

    .line 3632
    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->hide()V

    .line 3634
    :cond_195
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mIsVideoRecording:Z

    if-eqz p1, :cond_1a4

    .line 3635
    iget p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mOrientation:I

    iget-object p2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {p2}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenFormType()I

    move-result p2

    invoke-virtual {p0, p1, p2, v5}, Lcom/transsion/camera/app/ui/BaseAppUI;->updateBottomBarLayout(IIZ)V

    .line 3637
    :cond_1a4
    iput-boolean v5, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mIsVideoRecording:Z

    .line 3638
    iput-boolean v5, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mInterruptPhysicalKey:Z

    .line 3639
    iput v3, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mRecordingOrientation:I

    goto/16 :goto_44d

    .line 3524
    :pswitch_1ac
    invoke-virtual {p0, p2}, Lcom/transsion/camera/app/ui/BaseAppUI;->beforeUpdateUIStateProcessingFoldFlip(I)V

    .line 3525
    iget-object p3, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mHelpGuideUIManager:Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;

    if-eqz p3, :cond_1b6

    .line 3526
    invoke-virtual {p3}, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;->hide()V

    .line 3528
    :cond_1b6
    iget-object p3, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mTopBarUIManager:Lcom/transsion/camera/app/ui/manager/TopBarUIManager;

    const/16 v2, 0x15e

    const/16 v3, 0xb

    if-eqz p3, :cond_1f1

    if-ne p1, v3, :cond_1d2

    .line 3529
    iget-boolean v6, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mIsVideoRecording:Z

    if-nez v6, :cond_1d2

    .line 3530
    invoke-virtual {p3}, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->hide()V

    .line 3531
    invoke-virtual {p0, v2}, Lcom/transsion/camera/app/ui/BaseAppUI;->notifyRawActionToAppUI(I)V

    .line 3532
    iget-object p3, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mPopSettingUIManager:Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;

    if-eqz p3, :cond_1f1

    .line 3533
    invoke-virtual {p3, v5}, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->hidePopSettingUI(Z)V

    goto :goto_1f1

    .line 3535
    :cond_1d2
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/BaseAppUI;->supportVideoFlashLightWhenRecording()Z

    move-result p3

    if-eqz p3, :cond_1d9

    goto :goto_1f1

    .line 3538
    :cond_1d9
    iget-object p3, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mTopBarUIManager:Lcom/transsion/camera/app/ui/manager/TopBarUIManager;

    invoke-virtual {p3}, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->hide()V

    const/4 p3, 0x2

    if-ne p2, p3, :cond_1e6

    const/16 v6, 0x15f

    .line 3540
    invoke-virtual {p0, v6}, Lcom/transsion/camera/app/ui/BaseAppUI;->notifyRawActionToAppUI(I)V

    .line 3542
    :cond_1e6
    iget-object v6, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mPopSettingUIManager:Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;

    if-eqz v6, :cond_1f1

    if-eq p2, p3, :cond_1ed

    goto :goto_1ee

    :cond_1ed
    move v4, v5

    .line 3543
    :goto_1ee
    invoke-virtual {v6, v4}, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->hidePopSettingUI(Z)V

    .line 3548
    :cond_1f1
    :goto_1f1
    iget-object p3, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mScrollConsumer:Lcom/transsion/camera/app/ui/ScrollConsumer;

    invoke-virtual {p3}, Lcom/transsion/camera/app/ui/ScrollConsumer;->onBackPressed()Z

    .line 3549
    iget-object p3, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mWideCameraUIManager:Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;

    if-eqz p3, :cond_20d

    .line 3550
    iget-object p3, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mCurrentModeName:Ljava/lang/String;

    const-string v4, "com.transsion.camera.feature.funvideo.mode.FunVideoModeEntry"

    invoke-static {p3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_20d

    .line 3551
    iget-boolean p3, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mIsVideoRecording:Z

    if-nez p3, :cond_20d

    .line 3552
    iget-object p3, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mWideCameraUIManager:Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;

    invoke-virtual {p3}, Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;->hide()V

    .line 3556
    :cond_20d
    iget-object p3, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mModePickerUIManager:Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;

    if-eqz p3, :cond_214

    .line 3557
    invoke-virtual {p3}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->hide()V

    .line 3559
    :cond_214
    iget-object p3, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mThumbnailUIManager:Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;

    if-eqz p3, :cond_21b

    .line 3560
    invoke-virtual {p3}, Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;->hide()V

    .line 3562
    :cond_21b
    iget-object p3, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mCameraSwitcherUIManager:Lcom/transsion/camera/app/ui/manager/CameraSwitcherUIManager;

    if-eqz p3, :cond_222

    .line 3563
    invoke-virtual {p3}, Lcom/transsion/camera/app/ui/manager/CameraSwitcherUIManager;->hide()V

    .line 3565
    :cond_222
    iget-object p3, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mFloatingShutterUIManager:Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;

    if-eqz p3, :cond_229

    .line 3566
    invoke-virtual {p3, v5}, Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;->hideFloatingShutterUI(Z)V

    .line 3568
    :cond_229
    iget-object p3, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mBottomBarRootView:Landroid/view/View;

    if-eqz p3, :cond_230

    .line 3569
    invoke-virtual {p3, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 3571
    :cond_230
    iget-object p3, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mShutterAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz p3, :cond_248

    invoke-virtual {p3}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result p3

    if-eqz p3, :cond_248

    iget-object p3, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mModePickerUIManager:Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;

    if-eqz p3, :cond_248

    .line 3572
    iget-object p3, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mShutterAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p3}, Landroid/animation/AnimatorSet;->cancel()V

    .line 3573
    iget-object p3, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mModePickerUIManager:Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;

    invoke-virtual {p3}, Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;->hideModeRegion()V

    .line 3575
    :cond_248
    iget-object p3, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mShutterPanelRootView:Landroid/view/ViewGroup;

    if-eqz p3, :cond_256

    .line 3576
    invoke-virtual {p3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 3577
    iget-object p3, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mShutterPanelRootView:Landroid/view/ViewGroup;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p3, v1}, Landroid/view/View;->setAlpha(F)V

    .line 3580
    :cond_256
    iget-boolean p3, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mShutterAnimatorFlag:Z

    iput-boolean p3, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mHideShutter:Z

    .line 3581
    iput-boolean v5, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mShutterAnimatorFlag:Z

    .line 3582
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result p3

    if-eqz p3, :cond_26d

    if-eq p1, v3, :cond_26d

    iget-boolean p3, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mIsVideoRecording:Z

    if-nez p3, :cond_26d

    .line 3585
    iget-object p3, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mOverlayUIManager:Lcom/transsion/camera/app/ui/manager/OverlayUIManager;

    invoke-virtual {p3}, Lcom/transsion/camera/app/ui/manager/OverlayUIManager;->hide()V

    :cond_26d
    if-ne p1, v3, :cond_281

    .line 3588
    iget-object p2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mShutterUIManager:Lcom/transsion/camera/app/ui/manager/ShutterUIManager;

    invoke-virtual {p2}, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->hideShutterButton()V

    .line 3589
    iget-object p2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mHintUIManager:Lcom/transsion/camera/app/ui/manager/HintUIManager;

    if-eqz p2, :cond_2a6

    .line 3590
    invoke-virtual {p2}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->hide()V

    .line 3591
    iget-object p2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mHintUIManager:Lcom/transsion/camera/app/ui/manager/HintUIManager;

    invoke-virtual {p2}, Lcom/transsion/camera/app/ui/manager/HintUIManager;->hideAllHint()V

    goto :goto_2a6

    :cond_281
    const/16 p3, 0x13

    if-eq p2, p3, :cond_295

    const/16 p3, 0x15

    if-ne p2, p3, :cond_28a

    goto :goto_295

    .line 3602
    :cond_28a
    iget-object p2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mShutterUIManager:Lcom/transsion/camera/app/ui/manager/ShutterUIManager;

    invoke-virtual {p2}, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->transitionToProcessing()V

    .line 3603
    iget-object p2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mShutterUIManager:Lcom/transsion/camera/app/ui/manager/ShutterUIManager;

    invoke-virtual {p2}, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->showShutterButton()V

    goto :goto_2a6

    .line 3596
    :cond_295
    :goto_295
    iget-object p2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mHintUIManager:Lcom/transsion/camera/app/ui/manager/HintUIManager;

    if-eqz p2, :cond_2a1

    .line 3597
    invoke-virtual {p2}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->hide()V

    .line 3598
    iget-object p2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mHintUIManager:Lcom/transsion/camera/app/ui/manager/HintUIManager;

    invoke-virtual {p2}, Lcom/transsion/camera/app/ui/manager/HintUIManager;->hideAllHint()V

    .line 3600
    :cond_2a1
    iget-object p2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mShutterUIManager:Lcom/transsion/camera/app/ui/manager/ShutterUIManager;

    invoke-virtual {p2}, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->hideShutterButton()V

    .line 3606
    :cond_2a6
    :goto_2a6
    iget-object p2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mInteractiveUIManager:Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;

    if-eqz p2, :cond_2ad

    .line 3607
    invoke-virtual {p2}, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->hide()V

    .line 3609
    :cond_2ad
    iget-object p2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mOverlayUIManager:Lcom/transsion/camera/app/ui/manager/OverlayUIManager;

    const/16 p3, 0x7f

    invoke-virtual {p2, p3}, Lcom/transsion/camera/app/ui/manager/OverlayUIManager;->notifyCameraOperateActionToUI(I)V

    .line 3610
    iget-object p2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mInteractiveUIManager:Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;

    if-eqz p2, :cond_2bb

    .line 3611
    invoke-virtual {p2, p3}, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->notifyCameraOperateActionToUI(I)V

    .line 3613
    :cond_2bb
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/BaseAppUI;->doUpdateUIStateProcessingFoldFlip()V

    .line 3614
    iget-object p2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mTopBarUIManager:Lcom/transsion/camera/app/ui/manager/TopBarUIManager;

    if-eqz p2, :cond_2c5

    .line 3615
    invoke-virtual {p2, p3}, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->notifyCameraOperateActionToUI(I)V

    .line 3617
    :cond_2c5
    iget-object p2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->modeNotifyCameraOperateActionCallback:Lcom/transsion/camera/app/common/mode/IModeNotifyCameraOperateActionCallback;

    if-eqz p2, :cond_44d

    if-ne p1, v3, :cond_44d

    .line 3618
    invoke-interface {p2, v2}, Lcom/transsion/camera/app/common/mode/IModeNotifyCameraOperateActionCallback;->notifyCameraOperateAction(I)V

    goto/16 :goto_44d

    .line 3415
    :pswitch_2d0
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mHelpGuideUIManager:Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;

    if-eqz p1, :cond_2d7

    .line 3416
    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;->show()V

    .line 3418
    :cond_2d7
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mTopBarUIManager:Lcom/transsion/camera/app/ui/manager/TopBarUIManager;

    const-string p2, "com.transsion.camera.feature.mode.vlog.VlogModeEntry"

    if-eqz p1, :cond_331

    const-string p1, "com.transsion.camera.feature.mode.more.MoreModeEntry"

    iget-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mCurrentModeName:Ljava/lang/String;

    .line 3419
    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_331

    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mCurrentModeName:Ljava/lang/String;

    .line 3420
    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_331

    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mCurrentModeSettingUISpec:Lcom/transsion/camera/app/common/ModeSettingUISpec;

    if-eqz p1, :cond_331

    .line 3423
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->getTopBarSettingUIEntries()[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_301

    .line 3424
    array-length p1, p1

    if-lez p1, :cond_301

    .line 3425
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mTopBarUIManager:Lcom/transsion/camera/app/ui/manager/TopBarUIManager;

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->show()V

    .line 3427
    :cond_301
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mCurrentModeSettingUISpec:Lcom/transsion/camera/app/common/ModeSettingUISpec;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->getLeftTopBarSettingUIEntries()[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_311

    .line 3428
    array-length p1, p1

    if-lez p1, :cond_311

    .line 3429
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mTopBarUIManager:Lcom/transsion/camera/app/ui/manager/TopBarUIManager;

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->show()V

    .line 3431
    :cond_311
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mCurrentModeSettingUISpec:Lcom/transsion/camera/app/common/ModeSettingUISpec;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->getRightTopBarSettingUIEntries()[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_321

    .line 3432
    array-length p1, p1

    if-lez p1, :cond_321

    .line 3433
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mTopBarUIManager:Lcom/transsion/camera/app/ui/manager/TopBarUIManager;

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->show()V

    .line 3435
    :cond_321
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mCurrentModeSettingUISpec:Lcom/transsion/camera/app/common/ModeSettingUISpec;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->getPopSettingUIEntries()[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_331

    .line 3436
    array-length p1, p1

    if-lez p1, :cond_331

    .line 3437
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mTopBarUIManager:Lcom/transsion/camera/app/ui/manager/TopBarUIManager;

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->show()V

    .line 3440
    :cond_331
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mWideCameraUIManager:Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;

    if-eqz p1, :cond_33c

    iget-boolean v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mGraduationViewIsMoving:Z

    if-nez v1, :cond_33c

    .line 3441
    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;->show()V

    .line 3443
    :cond_33c
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mModePickerUIManager:Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;

    if-eqz p1, :cond_348

    .line 3444
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->show()V

    .line 3445
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mModePickerUIManager:Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;

    invoke-virtual {p1, v4}, Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;->updatePanelItemClickable(Z)V

    .line 3447
    :cond_348
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mThumbnailUIManager:Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;

    if-eqz p1, :cond_35b

    iget-boolean v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mShouldHideThumbnailUI:Z

    if-nez v1, :cond_35b

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;->isUpdateThumbnail()Z

    move-result p1

    if-eqz p1, :cond_35b

    .line 3448
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mThumbnailUIManager:Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;->show()V

    .line 3450
    :cond_35b
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mOverlayUIManager:Lcom/transsion/camera/app/ui/manager/OverlayUIManager;

    if-eqz p1, :cond_362

    .line 3451
    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/manager/OverlayUIManager;->show()V

    .line 3453
    :cond_362
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/BaseAppUI;->shouldShowCameraSwitcher()Z

    move-result p1

    if-eqz p1, :cond_36d

    .line 3454
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mCameraSwitcherUIManager:Lcom/transsion/camera/app/ui/manager/CameraSwitcherUIManager;

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/manager/CameraSwitcherUIManager;->show()V

    .line 3457
    :cond_36d
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    if-nez p1, :cond_379

    .line 3458
    const-string p1, "mSettingController is null,return default empty string."

    invoke-static {v0, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const-string p1, ""

    goto :goto_37f

    .line 3460
    :cond_379
    const-string v1, "key_self_timer"

    invoke-interface {p1, v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3463
    :goto_37f
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_398

    const-string v1, "off"

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_38e

    goto :goto_398

    .line 3466
    :cond_38e
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mShutterUIManager:Lcom/transsion/camera/app/ui/manager/ShutterUIManager;

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->getShutterTypeSelftimerOn()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/BaseAppUI;->updateShutterType(I)V

    goto :goto_3a1

    .line 3464
    :cond_398
    :goto_398
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mShutterUIManager:Lcom/transsion/camera/app/ui/manager/ShutterUIManager;

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->getShutterTypeSelftimerOff()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/BaseAppUI;->updateShutterType(I)V

    .line 3468
    :goto_3a1
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mShutterUIManager:Lcom/transsion/camera/app/ui/manager/ShutterUIManager;

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->show()V

    .line 3469
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mShutterUIManager:Lcom/transsion/camera/app/ui/manager/ShutterUIManager;

    const-string v1, "on_video_recording_ui_changed"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    xor-int/2addr p3, v4

    invoke-virtual {p1, p3}, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->transitionToIdle(Z)V

    .line 3470
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mShutterPanelRootView:Landroid/view/ViewGroup;

    if-eqz p1, :cond_3cf

    iget-boolean p3, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mHideShutter:Z

    if-nez p3, :cond_3be

    iget-boolean p3, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mHideShutterFromSelfTimer:Z

    if-eqz p3, :cond_3cf

    :cond_3be
    const/16 p3, 0x8

    .line 3471
    invoke-virtual {p1, p3}, Landroid/view/View;->setVisibility(I)V

    .line 3472
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mShutterPanelRootView:Landroid/view/ViewGroup;

    const/4 p3, 0x0

    invoke-virtual {p1, p3}, Landroid/view/View;->setAlpha(F)V

    .line 3473
    iput-boolean v4, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mShutterAnimatorFlag:Z

    .line 3474
    iput-boolean v5, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mHideShutter:Z

    .line 3475
    iput-boolean v5, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mHideShutterFromSelfTimer:Z

    .line 3477
    :cond_3cf
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mModePickerUIManager:Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;

    if-eqz p1, :cond_3e6

    .line 3478
    iget-boolean p3, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mShutterAnimatorFlag:Z

    if-eqz p3, :cond_3db

    .line 3479
    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;->hideModeRegion()V

    goto :goto_3e6

    .line 3480
    :cond_3db
    iget-boolean p3, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mIsModePickerSink:Z

    if-eqz p3, :cond_3e3

    .line 3481
    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;->showModeRegionOnSinked()V

    goto :goto_3e6

    .line 3483
    :cond_3e3
    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;->showModeRegion()V

    .line 3486
    :cond_3e6
    :goto_3e6
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mHintUIManager:Lcom/transsion/camera/app/ui/manager/HintUIManager;

    if-eqz p1, :cond_3f2

    .line 3487
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->show()V

    .line 3488
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mHintUIManager:Lcom/transsion/camera/app/ui/manager/HintUIManager;

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/manager/HintUIManager;->hideSavingDialog()V

    .line 3490
    :cond_3f2
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mInteractiveUIManager:Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;

    if-eqz p1, :cond_403

    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mCurrentModeName:Ljava/lang/String;

    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_403

    .line 3491
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mInteractiveUIManager:Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->show()V

    .line 3493
    :cond_403
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mFloatingShutterUIManager:Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;

    if-eqz p1, :cond_410

    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mIsPaused:Z

    if-nez p1, :cond_410

    .line 3494
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mFloatingShutterUIManager:Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;

    invoke-virtual {p1, v5, v5, v5}, Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;->showFloatingShutterUI(ZZZ)V

    .line 3496
    :cond_410
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mInteractiveUIManager:Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;

    const/16 p2, 0x80

    if-eqz p1, :cond_419

    .line 3497
    invoke-virtual {p1, p2}, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->notifyCameraOperateActionToUI(I)V

    .line 3499
    :cond_419
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/BaseAppUI;->doUpdateUIStateIdleFoldFlip()V

    .line 3501
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mShutterUIProcessing:Z

    if-eqz p1, :cond_427

    .line 3502
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mShutterUIManager:Lcom/transsion/camera/app/ui/manager/ShutterUIManager;

    iget p3, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mShutterProcessingOrientation:I

    invoke-virtual {p1, v4, p3}, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->isUIProcessingAndOrientation(ZI)V

    .line 3504
    :cond_427
    iput-boolean v5, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mIsVideoRecording:Z

    .line 3505
    iput-boolean v5, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mShutterUIProcessing:Z

    .line 3506
    iput-boolean v5, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mInterruptPhysicalKey:Z

    .line 3507
    iput v3, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mRecordingOrientation:I

    .line 3508
    iput v3, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mShutterProcessingOrientation:I

    .line 3509
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mOverlayUIManager:Lcom/transsion/camera/app/ui/manager/OverlayUIManager;

    if-eqz p1, :cond_438

    .line 3510
    invoke-virtual {p1, p2}, Lcom/transsion/camera/app/ui/manager/OverlayUIManager;->notifyCameraOperateActionToUI(I)V

    .line 3512
    :cond_438
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mTopBarUIManager:Lcom/transsion/camera/app/ui/manager/TopBarUIManager;

    if-eqz p1, :cond_43f

    .line 3513
    invoke-virtual {p1, p2}, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->notifyCameraOperateActionToUI(I)V

    .line 3515
    :cond_43f
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mWideCameraUIManager:Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;

    if-eqz p1, :cond_446

    .line 3516
    invoke-virtual {p1, p2}, Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;->notifyCameraOperateActionToUI(I)V

    .line 3518
    :cond_446
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->modeNotifyCameraOperateActionCallback:Lcom/transsion/camera/app/common/mode/IModeNotifyCameraOperateActionCallback;

    if-eqz p1, :cond_44d

    .line 3519
    invoke-interface {p1, p2}, Lcom/transsion/camera/app/common/mode/IModeNotifyCameraOperateActionCallback;->notifyCameraOperateAction(I)V

    .line 3761
    :cond_44d
    :goto_44d
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "doUpdateUIState mIsVideoRecording: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mIsVideoRecording:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, ", mOrientation: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mOrientation:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", mRecordingOrientation: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mRecordingOrientation:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 3763
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mShutterUIManager:Lcom/transsion/camera/app/ui/manager/ShutterUIManager;

    iget-boolean p2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mShutterUIProcessing:Z

    iget p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mShutterProcessingOrientation:I

    invoke-virtual {p1, p2, p0}, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->isUIProcessingAndOrientation(ZI)V

    return-void

    nop

    :pswitch_data_482
    .packed-switch 0x1
        :pswitch_2d0
        :pswitch_1ac
        :pswitch_168
        :pswitch_f3
        :pswitch_e9
        :pswitch_a7
        :pswitch_9d
        :pswitch_93
        :pswitch_102
        :pswitch_3c
        :pswitch_1ac
        :pswitch_2b
    .end packed-switch
.end method

.method private doVoiceCapture()V
    .registers 4

    .line 4665
    sget-object v0, Lcom/transsion/camera/app/ui/BaseAppUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doVoiceCapture mVideoIntent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mVideoIntent:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mPhotoIntent:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mPhotoIntent:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mOpenOnly: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mOpenOnly:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mOverlayManagerFinished:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mOverlayManagerFinished:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 4668
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mOpenOnly:Z

    if-nez v0, :cond_66

    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mShutterUIManager:Lcom/transsion/camera/app/ui/manager/ShutterUIManager;

    if-eqz v0, :cond_66

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->isEnable()Z

    move-result v0

    if-eqz v0, :cond_66

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mOverlayManagerFinished:Z

    if-eqz v0, :cond_66

    .line 4669
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mVideoIntent:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_53

    .line 4670
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mVideoIntent:Z

    .line 4671
    invoke-virtual {p0, v1, v1}, Lcom/transsion/camera/app/ui/BaseAppUI;->onShutterClick(II)V

    return-void

    .line 4672
    :cond_53
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mPhotoIntent:Z

    if-eqz v0, :cond_66

    .line 4673
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mPhotoIntent:Z

    .line 4674
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mSelfTimerResponder:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    iget p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mDelayTime:I

    .line 4675
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    .line 4674
    const-string v1, "key_start_self_timer"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_66
    return-void
.end method

.method private enableViewTalkback(Landroid/view/View;Z)V
    .registers 3

    if-eqz p1, :cond_19

    .line 5888
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mContext:Landroid/content/Context;

    if-eqz p0, :cond_d

    invoke-static {p0}, Lcom/transsion/camera/utils/CameraUtil;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_d

    goto :goto_19

    :cond_d
    if-eqz p2, :cond_14

    const/4 p0, 0x1

    .line 5893
    invoke-static {p1, p0}, Landroidx/core/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    return-void

    :cond_14
    const/4 p0, 0x4

    .line 5895
    invoke-static {p1, p0}, Landroidx/core/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    return-void

    .line 5889
    :cond_19
    :goto_19
    sget-object p0, Lcom/transsion/camera/app/ui/BaseAppUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "[enableViewTalkback] view is null or talkback is not enabled"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private enableViewTalkbackForAllView(Z)V
    .registers 3

    .line 5863
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_12

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 5864
    sget-object p0, Lcom/transsion/camera/app/ui/BaseAppUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "[enableViewTalkbackForAllView] talkback is not enabled"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 5867
    :cond_12
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mBottomBarRootView:Landroid/view/View;

    if-eqz v0, :cond_19

    .line 5868
    invoke-direct {p0, v0, p1}, Lcom/transsion/camera/app/ui/BaseAppUI;->enableViewTalkback(Landroid/view/View;Z)V

    .line 5870
    :cond_19
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mModePickerRootView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_20

    .line 5871
    invoke-direct {p0, v0, p1}, Lcom/transsion/camera/app/ui/BaseAppUI;->enableViewTalkback(Landroid/view/View;Z)V

    .line 5873
    :cond_20
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mBelowMainCtrlInflateRoot:Landroid/view/ViewGroup;

    if-eqz v0, :cond_27

    .line 5874
    invoke-direct {p0, v0, p1}, Lcom/transsion/camera/app/ui/BaseAppUI;->enableViewTalkback(Landroid/view/View;Z)V

    .line 5876
    :cond_27
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mTopBarUIManager:Lcom/transsion/camera/app/ui/manager/TopBarUIManager;

    if-eqz v0, :cond_3a

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->getRootView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3a

    .line 5877
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mTopBarUIManager:Lcom/transsion/camera/app/ui/manager/TopBarUIManager;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->getRootView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/transsion/camera/app/ui/BaseAppUI;->enableViewTalkback(Landroid/view/View;Z)V

    .line 5879
    :cond_3a
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mWideCameraUIManager:Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;

    if-eqz v0, :cond_4d

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->getRootView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_4d

    .line 5880
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mWideCameraUIManager:Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->getRootView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/transsion/camera/app/ui/BaseAppUI;->enableViewTalkback(Landroid/view/View;Z)V

    .line 5882
    :cond_4d
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mHelpGuideUIManager:Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;

    if-eqz v0, :cond_60

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->getRootView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_60

    .line 5883
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mHelpGuideUIManager:Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->getRootView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/transsion/camera/app/ui/BaseAppUI;->enableViewTalkback(Landroid/view/View;Z)V

    :cond_60
    return-void
.end method

.method private enterGoProMode()V
    .registers 6

    .line 4178
    const-string v0, "com.unikie.gopro.ui.GoProActivity"

    invoke-static {v0}, Lcom/transsion/camera/utils/ReflectionUtils;->findClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_5c

    .line 4179
    iget-boolean v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mAlreadyGotoGoPro:Z

    if-eqz v1, :cond_d

    goto :goto_5c

    .line 4182
    :cond_d
    invoke-static {}, Lcom/transsion/camera/utils/MonkeyUtils;->isUserAMonkey()Z

    move-result v1

    if-eqz v1, :cond_14

    goto :goto_5c

    .line 4185
    :cond_14
    iget-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mGoProActivityCoverLayout:Landroid/widget/FrameLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 4186
    new-instance v1, Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mGoProActivityCoverLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 4187
    sget v3, Lcom/transsion/camera/R$drawable;->ic_gopro_cover:I

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 4188
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v4, -0x2

    invoke-direct {v3, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v4, 0x11

    .line 4189
    iput v4, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 4190
    invoke-virtual {v1, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 4191
    iget-object v3, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mGoProActivityCoverLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 4192
    new-instance v1, Landroid/content/Intent;

    iget-object v3, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mContext:Landroid/content/Context;

    invoke-direct {v1, v3, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 4193
    const-string v0, "com.unikie.gopro.EXTRA_ENABLE_FEATURE_FLOATING_WINDOW"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 4194
    const-string v0, "com.unikie.gopro.EXTRA_ENABLE_FEATURE_ALBUM"

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 4195
    const-string v0, "android.intent.action.VIEW"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 4196
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mAlreadyGotoGoPro:Z

    .line 4197
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mGotoActivityListener:Lcom/transsion/camera/app/common/IAppUIListener$IGotoActivityListener;

    const/16 v0, 0x1002

    invoke-interface {p0, v1, v0}, Lcom/transsion/camera/app/common/IAppUIListener$IGotoActivityListener;->onGotoActivity(Landroid/content/Intent;I)V

    :cond_5c
    :goto_5c
    return-void
.end method

.method private enterSettingFragment()V
    .registers 12

    .line 2438
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/16 v1, 0x11

    .line 2439
    invoke-virtual {p0, v1}, Lcom/transsion/camera/app/ui/BaseAppUI;->notifyRawActionToAppUI(I)V

    .line 2440
    iget-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mTopBarUIManager:Lcom/transsion/camera/app/ui/manager/TopBarUIManager;

    if-eqz v1, :cond_12

    .line 2441
    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->dismissPopupWithoutAnimation()Z

    .line 2443
    :cond_12
    iget-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mPopSettingUIManager:Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;

    if-eqz v1, :cond_19

    .line 2444
    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->dismissPopupWithoutAnimation()Z

    .line 2446
    :cond_19
    sget v1, Lcom/transsion/camera/R$array;->build_in_selling_points:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 2447
    iget-object v2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mSettingFragmentManager:Lcom/transsion/camera/app/ui/manager/SettingFragmentManager;

    invoke-virtual {v2}, Lcom/transsion/camera/app/ui/manager/SettingFragmentManager;->initSettingFragment()V

    .line 2448
    iget-object v2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mCurrentModeSettingUISpec:Lcom/transsion/camera/app/common/ModeSettingUISpec;

    if-eqz v2, :cond_6b

    .line 2449
    invoke-virtual {v2}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->getPreferenceSettingUIEntries()[Ljava/lang/String;

    move-result-object v2

    .line 2451
    invoke-static {}, Lcom/transsion/camera/utils/FeatureSupport;->isDeveloperMode()Z

    move-result v3

    if-eqz v3, :cond_3d

    .line 2452
    sget v3, Lcom/transsion/camera/R$array;->developer_preference_setting_ui_entries:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    goto :goto_3e

    :cond_3d
    const/4 v0, 0x0

    .line 2456
    :goto_3e
    iget-object v3, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mRootView:Landroid/view/ViewGroup;

    invoke-static {v3}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v3

    const/4 v4, 0x1

    if-ne v4, v3, :cond_48

    goto :goto_49

    :cond_48
    const/4 v4, 0x0

    .line 2459
    :goto_49
    iget-object v3, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mSettingFragmentManager:Lcom/transsion/camera/app/ui/manager/SettingFragmentManager;

    invoke-virtual {v3, v4}, Lcom/transsion/camera/app/ui/manager/SettingFragmentManager;->setRTLDirection(Z)V

    .line 2461
    iget-object v3, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mSettingUIProvider:Lcom/transsion/camera/app/common/provider/SettingUIProvider;

    .line 2462
    invoke-virtual {v3, v2, v0, v1}, Lcom/transsion/camera/app/common/provider/SettingUIProvider;->createPreferenceItemUIList([Ljava/lang/String;[Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    .line 2463
    iget-object v4, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mSettingFragmentManager:Lcom/transsion/camera/app/ui/manager/SettingFragmentManager;

    iget-object v6, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mCurrentModeName:Ljava/lang/String;

    iget-boolean v7, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mSecureCamera:Z

    iget-boolean v8, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mVoiceInteraction:Z

    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/transsion/camera/app/PermissionActivity;

    .line 2464
    invoke-virtual {v0}, Lcom/transsion/camera/app/PermissionActivity;->checkCameraLocationPermissions()Z

    move-result v9

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/BaseAppUI;->getScreenFormType()I

    move-result v10

    .line 2463
    invoke-virtual/range {v4 .. v10}, Lcom/transsion/camera/app/ui/manager/SettingFragmentManager;->setSettingUIList(Ljava/util/List;Ljava/lang/String;ZZZI)V

    .line 2466
    :cond_6b
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mSettingFragmentManager:Lcom/transsion/camera/app/ui/manager/SettingFragmentManager;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Lcom/transsion/camera/app/ui/manager/SettingFragmentManager;->enterSettingFragment(Landroid/content/Context;)V

    return-void
.end method

.method private enterSettingFragmentBottom()V
    .registers 1

    .line 2431
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/BaseAppUI;->enterSettingFragment()V

    .line 2432
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mSettingFragmentManager:Lcom/transsion/camera/app/ui/manager/SettingFragmentManager;

    if-eqz p0, :cond_a

    .line 2433
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/SettingFragmentManager;->enterSettingFragmentBottom()V

    :cond_a
    return-void
.end method

.method private finishUIInflateStage(Z)V
    .registers 3

    if-eqz p1, :cond_16

    .line 5560
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mUIHandler:Landroid/os/Handler;

    new-instance v0, Lcom/transsion/camera/app/ui/BaseAppUI$$ExternalSyntheticLambda16;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/ui/BaseAppUI$$ExternalSyntheticLambda16;-><init>(Lcom/transsion/camera/app/ui/BaseAppUI;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 5568
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mUIHandler:Landroid/os/Handler;

    new-instance v0, Lcom/transsion/camera/app/ui/BaseAppUI$$ExternalSyntheticLambda17;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/ui/BaseAppUI$$ExternalSyntheticLambda17;-><init>(Lcom/transsion/camera/app/ui/BaseAppUI;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_16
    return-void
.end method

.method private getAnimatorDuration()I
    .registers 2

    .line 5827
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result v0

    if-eqz v0, :cond_9

    const/16 p0, 0x96

    return p0

    .line 5830
    :cond_9
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/transsion/camera/R$integer;->sink_modepicker_duration:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    return p0
.end method

.method private getImageryGuideMode(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .line 1913
    const-string v0, "com.transsion.camera.feature.supernightfilter.mode.SuperNightFilterModeEntry"

    invoke-static {v0, p3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3e

    .line 1914
    iget-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getCameraId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/transsion/camera/adapter/CameraInfoUtil;->isCameraFacingBack(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 1915
    invoke-interface {p1, p3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    goto :goto_3f

    .line 1917
    :cond_1b
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getCameraId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/camera/adapter/CameraInfoUtil;->isCameraFacingBack(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "com.transsion.camera.feature.mode.supernight.SuperNightModeEntry"

    if-eqz v0, :cond_37

    .line 1918
    invoke-interface {p1, p3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_37

    .line 1919
    invoke-interface {p1, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_37

    :goto_35
    move-object v0, v1

    goto :goto_3f

    .line 1922
    :cond_37
    invoke-interface {p2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3e

    goto :goto_35

    :cond_3e
    move-object v0, p3

    .line 1926
    :goto_3f
    const-string p2, "com.transsion.camera.feature.burstpmk.BurstPMKModeEntry"

    invoke-static {p2, p3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5d

    .line 1927
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getCameraId()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/transsion/camera/adapter/CameraInfoUtil;->isCameraFacingBack(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_5a

    .line 1928
    invoke-interface {p1, p3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5a

    return-object p2

    .line 1931
    :cond_5a
    const-string p0, "com.transsion.camera.feature.wideselfie.WideSelfieModeEntry"

    return-object p0

    :cond_5d
    return-object v0
.end method

.method private getTranslateDistance()I
    .registers 2

    .line 5820
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p0, 0x0

    return p0

    .line 5823
    :cond_8
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/transsion/camera/R$dimen;->sink_modepicker:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p0

    return p0
.end method

.method private isMainThread()Z
    .registers 2

    .line 4412
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    if-ne p0, v0, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method private isVideoModeCategory(Ljava/lang/String;)Z
    .registers 2

    .line 3342
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_8

    const/4 p0, 0x0

    return p0

    .line 3345
    :cond_8
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p0

    iget-object p0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mVideoModesCategory:[Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$doDelayLoadUIManager$9()Z
    .registers 3

    .line 2849
    sget-object v0, Lcom/transsion/camera/app/ui/BaseAppUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "[PreviewPerformance] doDelayLoadUIManager queueIdle."

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 2850
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/BaseAppUI;->delayLoadUIManager()V

    const/4 p0, 0x0

    return p0
.end method

.method private synthetic lambda$doUpdateSettingUIList$10()V
    .registers 2

    const/4 v0, 0x0

    .line 2999
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/BaseAppUI;->doUpdateOverlaySettingUIList(Z)V

    .line 3000
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/BaseAppUI;->onOrientationChanged()V

    return-void
.end method

.method private synthetic lambda$doUpdateSettingUIList$11()V
    .registers 3

    .line 2997
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/BaseAppUI;->doUpdateTopBarSettingUIList()V

    .line 2998
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mUIHandler:Landroid/os/Handler;

    new-instance v1, Lcom/transsion/camera/app/ui/BaseAppUI$$ExternalSyntheticLambda15;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/ui/BaseAppUI$$ExternalSyntheticLambda15;-><init>(Lcom/transsion/camera/app/ui/BaseAppUI;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private synthetic lambda$doUpdateSettingUIList$12()V
    .registers 3

    .line 2991
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mPreviewUIManager:Lcom/transsion/camera/app/ui/manager/PreviewUIManager;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/manager/PreviewUIManager;->switchAnimIsRunning()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    .line 2992
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mSkipUpdatePopSettingUIList:Z

    goto :goto_f

    .line 2994
    :cond_c
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/BaseAppUI;->doUpdatePopSettingUIList()V

    .line 2996
    :goto_f
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mUIHandler:Landroid/os/Handler;

    new-instance v1, Lcom/transsion/camera/app/ui/BaseAppUI$$ExternalSyntheticLambda14;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/ui/BaseAppUI$$ExternalSyntheticLambda14;-><init>(Lcom/transsion/camera/app/ui/BaseAppUI;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private synthetic lambda$finishUIInflateStage$13()V
    .registers 2

    .line 5561
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mUIManagers:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_6
    :goto_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;

    if-eqz v0, :cond_6

    .line 5563
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->loadAfterPreviewStarted()V

    goto :goto_6

    :cond_18
    return-void
.end method

.method private synthetic lambda$finishUIInflateStage$14()V
    .registers 1

    .line 5569
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/BaseAppUI;->onUIManagerReady()V

    return-void
.end method

.method private synthetic lambda$updateCustomState$0()V
    .registers 2

    .line 1404
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mShutterUIManager:Lcom/transsion/camera/app/ui/manager/ShutterUIManager;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->setWritingState(Z)V

    return-void
.end method

.method private synthetic lambda$updateCustomState$1()V
    .registers 2

    .line 1407
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mShutterUIManager:Lcom/transsion/camera/app/ui/manager/ShutterUIManager;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->setWritingState(Z)V

    return-void
.end method

.method private needHdrInTopbar(Lcom/transsion/camera/app/common/ModeSettingUISpec;)Z
    .registers 7

    .line 3211
    invoke-static {}, Lcom/transsion/camera/utils/FeatureSupport;->isDeveloperMode()Z

    move-result p0

    const/4 v0, 0x0

    if-nez p0, :cond_8

    return v0

    .line 3214
    :cond_8
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->getTopBarSettingUIEntries()[Ljava/lang/String;

    move-result-object p0

    .line 3215
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->getLeftTopBarSettingUIEntries()[Ljava/lang/String;

    move-result-object v1

    .line 3216
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->getRightTopBarSettingUIEntries()[Ljava/lang/String;

    move-result-object v2

    .line 3217
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->getPopSettingUIEntries()[Ljava/lang/String;

    move-result-object v3

    .line 3218
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->getPreferenceSettingUIEntries()[Ljava/lang/String;

    move-result-object p1

    .line 3221
    const-string v4, "com.transsion.camera.ui.setting.hdr.HdrSettingUIEntry"

    invoke-static {p0, v4}, Lcom/transsion/camera/utils/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3e

    .line 3222
    invoke-static {v1, v4}, Lcom/transsion/camera/utils/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3e

    .line 3223
    invoke-static {v2, v4}, Lcom/transsion/camera/utils/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3e

    .line 3224
    invoke-static {v3, v4}, Lcom/transsion/camera/utils/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3e

    .line 3225
    invoke-static {p1, v4}, Lcom/transsion/camera/utils/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3d

    goto :goto_3e

    :cond_3d
    return v0

    :cond_3e
    :goto_3e
    const/4 p0, 0x1

    return p0
.end method

.method private notifyCameraStateToUI(I)V
    .registers 5

    .line 4010
    sget-object v0, Lcom/transsion/camera/app/ui/BaseAppUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyCameraStateToUI: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/transsion/camera/app/common/CameraState;->stateToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 4011
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mOverlayUIManager:Lcom/transsion/camera/app/ui/manager/OverlayUIManager;

    if-eqz v0, :cond_21

    .line 4012
    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/ui/manager/OverlayUIManager;->notifyCameraStateToUI(I)V

    .line 4015
    :cond_21
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mInteractiveUIManager:Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;

    if-eqz p0, :cond_28

    .line 4016
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->notifyCameraStateToUI(I)V

    :cond_28
    return-void
.end method

.method private onCameraOperateAction(I)V
    .registers 5

    .line 4416
    sget-object v0, Lcom/transsion/camera/app/ui/BaseAppUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCameraOperateAction action :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 4417
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mSettingFragmentManager:Lcom/transsion/camera/app/ui/manager/SettingFragmentManager;

    if-eqz v0, :cond_1d

    .line 4418
    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/ui/manager/SettingFragmentManager;->notifyCameraOperateActionToUI(I)V

    .line 4420
    :cond_1d
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mEditWaterMarkManager:Lcom/transsion/camera/app/ui/manager/EditWaterMarkManager;

    if-eqz v0, :cond_24

    .line 4421
    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/ui/manager/EditWaterMarkManager;->notifyCameraOperateActionToUI(I)V

    .line 4423
    :cond_24
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mProWatermarkManager:Lcom/transsion/camera/app/ui/manager/ProWatermarkManager;

    if-eqz v0, :cond_2b

    .line 4424
    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/ui/manager/ProWatermarkManager;->notifyCameraOperateActionToUI(I)V

    .line 4426
    :cond_2b
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mGoldWaterMarkManager:Lcom/transsion/camera/app/ui/manager/GoldWaterMarkManager;

    if-eqz v0, :cond_32

    .line 4427
    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/ui/manager/GoldWaterMarkManager;->notifyCameraOperateActionToUI(I)V

    .line 4429
    :cond_32
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mRemoteCaptureManager:Lcom/transsion/camera/app/ui/manager/RemoteCaptureManager;

    if-eqz v0, :cond_39

    .line 4430
    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/ui/manager/RemoteCaptureManager;->notifyCameraOperateActionToUI(I)V

    .line 4432
    :cond_39
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mShutterSoundOptionalManager:Lcom/transsion/camera/app/ui/manager/ShutterSoundOptionalManager;

    if-eqz v0, :cond_40

    .line 4433
    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/ui/manager/ShutterSoundOptionalManager;->notifyCameraOperateActionToUI(I)V

    .line 4435
    :cond_40
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mUIManagers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_46
    :goto_46
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_58

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/common/manager/AbstractViewManager;

    if-eqz v1, :cond_46

    .line 4437
    invoke-virtual {v1, p1}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->notifyCameraOperateActionToUI(I)V

    goto :goto_46

    .line 4441
    :cond_58
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mGpuAlgorithmManager:Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager;

    if-eqz v0, :cond_5f

    .line 4442
    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager;->notifyCameraOperateAction(I)V

    .line 4445
    :cond_5f
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/BaseAppUI;->notifyCameraOperateActionToUI(I)V

    .line 4447
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->modeNotifyCameraOperateActionCallback:Lcom/transsion/camera/app/common/mode/IModeNotifyCameraOperateActionCallback;

    if-eqz v0, :cond_69

    .line 4448
    invoke-interface {v0, p1}, Lcom/transsion/camera/app/common/mode/IModeNotifyCameraOperateActionCallback;->notifyCameraOperateAction(I)V

    :cond_69
    const/16 v0, 0xb

    const/4 v1, 0x0

    if-ne p1, v0, :cond_74

    .line 4451
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mShutterAnimatorFlag:Z

    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mHideShutterFromSelfTimer:Z

    .line 4452
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mShutterAnimatorFlag:Z

    :cond_74
    const/16 v0, 0x39

    if-ne p1, v0, :cond_7a

    .line 4455
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mHideShutterFromSelfTimer:Z

    :cond_7a
    return-void
.end method

.method private onUIManagerReady()V
    .registers 2

    const/16 v0, 0x6d

    .line 4681
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/BaseAppUI;->notifyRawActionToAppUI(I)V

    .line 4682
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/BaseAppUI;->onUIManagerReadyFoldFlip()V

    .line 4683
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mSpecifyModePolicy:Lcom/transsion/camera/app/SpecifyModePolicy;

    if-eqz v0, :cond_f

    .line 4684
    invoke-virtual {v0}, Lcom/transsion/camera/app/SpecifyModePolicy;->doActionAfterPreviewStarted()V

    .line 4686
    :cond_f
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mOnCompleteAllowed:Z

    if-eqz v0, :cond_1d

    const/4 v0, 0x0

    .line 4687
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mOnCompleteAllowed:Z

    .line 4688
    invoke-static {}, Lcom/transsion/camera/app/common/ModuleTransferManager;->getTransferManager()Lcom/transsion/camera/app/common/ModuleTransferManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ModuleTransferManager;->onComplete()V

    .line 4690
    :cond_1d
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/BaseAppUI;->doVoiceCapture()V

    return-void
.end method

.method private resetActionTriggerTime(I)V
    .registers 4

    const-wide/16 v0, 0x0

    .line 687
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    if-eqz p1, :cond_14

    const/4 v1, 0x2

    if-eq p1, v1, :cond_14

    const/16 v1, 0x1c

    if-eq p1, v1, :cond_14

    const/16 v1, 0x1a3

    if-eq p1, v1, :cond_14

    return-void

    :cond_14
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mActionTriggerTime:Ljava/util/Map;

    const/16 v1, 0xd

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 688
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mActionTriggerTime:Ljava/util/Map;

    const/16 p1, 0xe

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private resumeRootLayout()V
    .registers 3

    .line 2296
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mRootView:Landroid/view/ViewGroup;

    if-nez v0, :cond_5

    goto :goto_1d

    .line 2299
    :cond_5
    instance-of v1, v0, Lcom/transsion/camera/app/ui/widget/RootLayout;

    if-nez v1, :cond_a

    goto :goto_1d

    .line 2302
    :cond_a
    check-cast v0, Lcom/transsion/camera/app/ui/widget/RootLayout;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/widget/RootLayout;->resume()V

    .line 2307
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mGoProActivityCoverLayout:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_1d

    .line 2308
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 2309
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mGoProActivityCoverLayout:Landroid/widget/FrameLayout;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_1d
    :goto_1d
    return-void
.end method

.method private secureCameraTopBarSuperDefinitionSupport(Ljava/lang/String;)Z
    .registers 3

    .line 3230
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mSecureCamera:Z

    if-eqz v0, :cond_1a

    .line 3231
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/transsion/camera/R$bool;->secure_camera_topbar_super_definition_support:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    .line 3232
    invoke-static {p1}, Lcom/transsion/camera/adapter/CameraInfoUtil;->isCameraFacingBack(Ljava/lang/String;)Z

    move-result p1

    if-nez p0, :cond_1a

    if-eqz p1, :cond_1a

    const/4 p0, 0x0

    return p0

    :cond_1a
    const/4 p0, 0x1

    return p0
.end method

.method private shouldShowCameraSwitcher()Z
    .registers 4

    .line 3767
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mShouldHideSwitcher:Z

    const/4 v1, 0x0

    if-nez v0, :cond_20

    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mCameraSwitcherUIManager:Lcom/transsion/camera/app/ui/manager/CameraSwitcherUIManager;

    if-nez v0, :cond_a

    goto :goto_20

    .line 3770
    :cond_a
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportUI5MoreModeStyle:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_1f

    .line 3771
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mCurrentModeSettingUISpec:Lcom/transsion/camera/app/common/ModeSettingUISpec;

    if-eqz p0, :cond_1e

    .line 3772
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->isBothCameraSupport()Z

    move-result p0

    if-eqz p0, :cond_1e

    return v2

    :cond_1e
    return v1

    :cond_1f
    return v2

    :cond_20
    :goto_20
    return v1
.end method

.method private supportVideoFlashLightWhenRecording()Z
    .registers 3

    .line 4460
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isVideoFlashlightSupportWhenRecording()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 4461
    :cond_8
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mCurrentModeSettingUISpec:Lcom/transsion/camera/app/common/ModeSettingUISpec;

    if-nez p0, :cond_d

    return v1

    .line 4462
    :cond_d
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->isSupportChangeFlashWhenRecording()Z

    move-result p0

    if-nez p0, :cond_14

    return v1

    :cond_14
    const/4 p0, 0x1

    return p0
.end method

.method private switchModeByImageryGuide(Ljava/lang/String;)V
    .registers 6

    .line 1881
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    if-nez v0, :cond_5

    return-void

    .line 1885
    :cond_5
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/camera/R$array;->build_in_features_back_mode_order:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 1886
    iget-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/camera/R$array;->build_in_features_front_mode_order:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 1887
    iget-object v2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mSupportedBackModes:[Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 1888
    iget-object v3, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mSupportedFrontModes:[Ljava/lang/String;

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 1890
    invoke-direct {p0, v2, v3, p1}, Lcom/transsion/camera/app/ui/BaseAppUI;->getImageryGuideMode(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1892
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_41

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6d

    .line 1893
    :cond_41
    invoke-interface {v2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6d

    invoke-interface {v3, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6d

    .line 1894
    sget-object p1, Lcom/transsion/camera/app/ui/BaseAppUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "not support this mode, return"

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1895
    new-instance p1, Lcom/transsion/camera/app/common/ui/HintInfo;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Lcom/transsion/camera/app/common/ui/HintInfo;-><init>(I)V

    .line 1896
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/camera/R$string;->imagery_guide_go_mode_unlock_tips:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/common/ui/HintInfo;->setMessage(Ljava/lang/String;)V

    .line 1897
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/BaseAppUI;->showToast(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    return-void

    .line 1902
    :cond_6d
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getCameraId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/camera/adapter/CameraInfoUtil;->isCameraFacingBack(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7a

    goto :goto_7b

    :cond_7a
    move-object v2, v3

    .line 1904
    :goto_7b
    invoke-interface {v2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_87

    .line 1905
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mModePickerUIManager:Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;->onSwitchModeByAppUI(Ljava/lang/String;)V

    return-void

    .line 1907
    :cond_87
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/BaseAppUI;->switchCamera(Ljava/lang/String;)V

    return-void
.end method

.method private updateActionTriggerTime(I)V
    .registers 6

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1b

    const/16 v0, 0x8

    if-eq p1, v0, :cond_1b

    const/16 v0, 0xd

    if-eq p1, v0, :cond_1b

    const/16 v0, 0xe

    if-eq p1, v0, :cond_1b

    .line 661
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mSupportDebounceActionSet:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 667
    :cond_1b
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mActionTriggerTime:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 670
    :cond_2c
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/BaseAppUI;->resetActionTriggerTime(I)V

    return-void
.end method


# virtual methods
.method protected beforeUpdateUIStateProcessingFoldFlip(I)V
    .registers 2

    return-void
.end method

.method public calculateBottomPanelPaddingHeight(I)I
    .registers 4

    .line 2687
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/BaseAppUI;->getShutterPanelPaddingHeight()I

    move-result v0

    .line 2688
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v1

    iget-boolean v1, v1, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportUI5:Z

    if-eqz v1, :cond_d

    return v0

    :cond_d
    mul-int/lit8 v0, v0, 0x2

    sub-int/2addr p1, v0

    .line 2691
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/ScreenManager;->getShutterButtonHeight()I

    move-result p0

    sub-int/2addr p1, p0

    return p1
.end method

.method protected final calculateShutterPanelPaddingHeight(I)I
    .registers 4

    .line 2835
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/BaseAppUI;->getShutterPanelPaddingHeight()I

    move-result v0

    .line 2836
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v1

    iget-boolean v1, v1, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportUI5:Z

    if-eqz v1, :cond_d

    return v0

    .line 2839
    :cond_d
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/BaseAppUI;->getShutterButtonHeight()I

    move-result p0

    mul-int/lit8 v0, v0, 0x2

    sub-int/2addr p1, v0

    sub-int/2addr p1, p0

    return p1
.end method

.method public changeOrientation(I)I
    .registers 2

    return p1
.end method

.method public changeUIWhenSwitchModeAfter()V
    .registers 1

    return-void
.end method

.method public changeUIWhenSwitchModeBefore()V
    .registers 2

    const/4 v0, 0x1

    .line 2420
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mUISinkModeChange:Z

    .line 2421
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mInteractiveUIManager:Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;

    if-eqz p0, :cond_a

    .line 2422
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->changeUIWhenSwitchModeBefore()V

    :cond_a
    return-void
.end method

.method public couldShowWideCamera(Z)V
    .registers 2

    .line 5070
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mWideCameraUIManager:Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;

    if-eqz p0, :cond_7

    .line 5071
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;->couldShow(Z)V

    :cond_7
    return-void
.end method

.method public createGuideFragment(Ljava/util/List;)Landroid/app/Fragment;
    .registers 2

    .line 5901
    invoke-static {p1}, Lcom/transsion/camera/app/ui/GuidePagerRootFragment;->newInstance(Ljava/util/List;)Lcom/transsion/camera/app/ui/GuidePagerRootFragment;

    move-result-object p0

    return-object p0
.end method

.method public createImageryGuideManager()V
    .registers 5

    .line 1851
    sget-object v0, Lcom/transsion/camera/adapter/ImageryGuideAdapter;->INSTANCE:Lcom/transsion/camera/adapter/ImageryGuideAdapter;

    new-instance v1, Lcom/transsion/camera/app/ui/BaseAppUI$$ExternalSyntheticLambda19;

    invoke-direct {v1}, Lcom/transsion/camera/app/ui/BaseAppUI$$ExternalSyntheticLambda19;-><init>()V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    .line 1852
    const-class v3, Lcom/transsion/camera/manager/BaseImageryGuideManagerFactory;

    invoke-virtual {v0, v3, v1, v2}, Lcom/transsion/camera/adapter/ImageryGuideAdapter;->getHelpGuideManagerFactory(Ljava/lang/Class;Ljava/util/function/Supplier;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/manager/BaseImageryGuideManagerFactory;

    .line 1853
    invoke-virtual {v0}, Lcom/transsion/camera/manager/BaseImageryGuideManagerFactory;->createImageryGuideManager()Lcom/transsion/camera/manager/BaseImageryGuideManager;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mImageryGuideManager:Lcom/transsion/camera/manager/BaseImageryGuideManager;

    .line 1854
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/BaseAppUI;->initImageryGuideManager()V

    .line 1855
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mImageryGuideManager:Lcom/transsion/camera/manager/BaseImageryGuideManager;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/camera/R$array;->build_in_features_back_mode_order:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mContext:Landroid/content/Context;

    .line 1856
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/transsion/camera/R$array;->build_in_features_front_mode_order:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 1855
    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/manager/BaseImageryGuideManager;->supportModesEntry([Ljava/lang/String;[Ljava/lang/String;)V

    .line 1857
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mImageryGuideManager:Lcom/transsion/camera/manager/BaseImageryGuideManager;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mCurrentModeSettingUISpec:Lcom/transsion/camera/app/common/ModeSettingUISpec;

    if-nez p0, :cond_41

    .line 1858
    const-string p0, "com.transsion.camera.feature.mode.autoscenedetection.ASDModeEntry"

    goto :goto_45

    .line 1859
    :cond_41
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->getName()Ljava/lang/String;

    move-result-object p0

    .line 1857
    :goto_45
    invoke-virtual {v0, p0}, Lcom/transsion/camera/manager/BaseImageryGuideManager;->updateCurrentMode(Ljava/lang/String;)V

    return-void
.end method

.method public currentThreadIsMain()Z
    .registers 1

    .line 808
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/BaseAppUI;->isMainThread()Z

    move-result p0

    return p0
.end method

.method public destroyGalleryService()V
    .registers 2

    .line 2193
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mSkipUnbindOnPause:Z

    if-eqz v0, :cond_e

    const/4 v0, 0x0

    .line 2194
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mSkipUnbindOnPause:Z

    .line 2195
    sget-object v0, Lcom/transsion/camera/app/manager/OptimizeManager$Holder;->instance:Lcom/transsion/camera/app/manager/OptimizeManager;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Lcom/transsion/camera/app/manager/OptimizeManager;->unBindGalleryService(Landroid/content/Context;)V

    :cond_e
    return-void
.end method

.method public destroyPreviewUI()V
    .registers 1

    .line 2189
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mPreviewUIManager:Lcom/transsion/camera/app/ui/manager/PreviewUIManager;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/PreviewUIManager;->destroy()V

    return-void
.end method

.method protected doInflateTopLayerUI()V
    .registers 9

    .line 5490
    sget-object v0, Lcom/transsion/camera/app/ui/BaseAppUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "[PreviewPerformance] doLoadTopLayerUI start"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 5491
    const-string v1, "doLoadTopLayerUI"

    invoke-static {v1}, Lcom/transsion/camera/utils/debug/TraceUtil;->begin(Ljava/lang/String;)V

    .line 5492
    iget-object v2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mOverlayUIManager:Lcom/transsion/camera/app/ui/manager/OverlayUIManager;

    if-eqz v2, :cond_1c

    .line 5493
    iget-object v3, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mRootView:Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mOverlayUIRoot:Landroid/view/ViewGroup;

    iget-object v5, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mLayoutInflater:Landroid/view/LayoutInflater;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mCameraFlashLayout:Landroid/view/ViewGroup;

    invoke-virtual/range {v2 .. v7}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->inflateLayout(Landroid/view/ViewGroup;Landroid/view/ViewGroup;Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/view/ViewGroup;)V

    .line 5495
    :cond_1c
    iget-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mRingScreenLightUIManager:Lcom/transsion/camera/app/ui/manager/RingScreenLightUIManager;

    if-eqz v1, :cond_2c

    .line 5496
    iget-object v2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mRootView:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mLayoutInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v1, v2, v3}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->inflateLayout(Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)V

    .line 5497
    iget-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mRingScreenLightUIManager:Lcom/transsion/camera/app/ui/manager/RingScreenLightUIManager;

    invoke-virtual {p0, v1}, Lcom/transsion/camera/app/ui/BaseAppUI;->registerPreviewRectListener(Lcom/transsion/camera/app/common/IAppUIListener$IPreviewRectListener;)V

    .line 5500
    :cond_2c
    iget-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mRootView:Landroid/view/ViewGroup;

    sget v2, Lcom/transsion/camera/R$id;->temperature_root:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 5501
    iget-object v2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mThermalThrottleUIManager:Lcom/transsion/camera/app/ui/manager/ThermalThrottleUIManager;

    if-eqz v2, :cond_59

    if-eqz v1, :cond_59

    .line 5502
    iget-object v3, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mLayoutInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v2, v1, v3}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->inflateLayout(Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)V

    .line 5503
    iget-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mThermalThrottleUIManager:Lcom/transsion/camera/app/ui/manager/ThermalThrottleUIManager;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {v2}, Lcom/transsion/camera/app/ui/ScreenManager;->getCutoutHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/transsion/camera/app/ui/manager/ThermalThrottleUIManager;->setCutoutHeight(I)V

    .line 5504
    iget-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mThermalThrottleUIManager:Lcom/transsion/camera/app/ui/manager/ThermalThrottleUIManager;

    invoke-virtual {v1, p0}, Lcom/transsion/camera/app/ui/manager/ThermalThrottleUIManager;->setPopupOptionControl(Lcom/transsion/camera/app/common/IAppUIControl$IPopupOptionControl;)V

    .line 5505
    iget-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mThermalThrottleUIManager:Lcom/transsion/camera/app/ui/manager/ThermalThrottleUIManager;

    iget p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mOrientation:I

    const/4 v2, 0x1

    invoke-virtual {v1, p0, v2}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->onOrientationChanged(IZ)V

    .line 5507
    :cond_59
    invoke-static {}, Lcom/transsion/camera/utils/debug/TraceUtil;->end()V

    .line 5508
    const-string p0, "[PreviewPerformance] doLoadTopLayerUI end"

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method protected doLoadContinuousShotUIManager()V
    .registers 5

    .line 2920
    sget-object v0, Lcom/transsion/camera/app/ui/BaseAppUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "[doLoadContinuousShotUIManager] start"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 2921
    const-string v1, "doLoadContinuousShotUIManager"

    invoke-static {v1}, Lcom/transsion/camera/utils/debug/TraceUtil;->begin(Ljava/lang/String;)V

    .line 2922
    iget-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mContinuousShotUIManager:Lcom/transsion/camera/app/ui/manager/ContinuousShotUIManager;

    if-nez v1, :cond_30

    iget-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mOverlayUIRoot:Landroid/view/ViewGroup;

    if-eqz v1, :cond_30

    .line 2923
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/BaseAppUI;->initContinuousShotUIManager()Lcom/transsion/camera/app/ui/manager/ContinuousShotUIManager;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mContinuousShotUIManager:Lcom/transsion/camera/app/ui/manager/ContinuousShotUIManager;

    .line 2924
    iget-object v2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mUIManagers:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2925
    iget-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mContinuousShotUIManager:Lcom/transsion/camera/app/ui/manager/ContinuousShotUIManager;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mInteractiveLayout:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mLayoutInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v1, v2, v3}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->inflateLayout(Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)V

    .line 2926
    iget-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mContinuousShotUIManager:Lcom/transsion/camera/app/ui/manager/ContinuousShotUIManager;

    iget p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mOrientation:I

    const/4 v2, 0x1

    invoke-virtual {v1, p0, v2}, Lcom/transsion/camera/app/ui/manager/ContinuousShotUIManager;->onOrientationChanged(IZ)V

    .line 2928
    :cond_30
    invoke-static {}, Lcom/transsion/camera/utils/debug/TraceUtil;->end()V

    .line 2929
    const-string p0, "[doLoadContinuousShotUIManager] end"

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method protected doLoadToastUIManager()V
    .registers 5

    .line 2903
    sget-object v0, Lcom/transsion/camera/app/ui/BaseAppUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "[doLoadToastUIManager] start"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 2904
    const-string v1, "doLoadToastUIManager"

    invoke-static {v1}, Lcom/transsion/camera/utils/debug/TraceUtil;->begin(Ljava/lang/String;)V

    .line 2905
    iget-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mToastUIManager:Lcom/transsion/camera/app/ui/manager/ToastUIManager;

    if-nez v1, :cond_30

    iget-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mToastLayout:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_30

    .line 2906
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/BaseAppUI;->initToastUIManager()Lcom/transsion/camera/app/ui/manager/ToastUIManager;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mToastUIManager:Lcom/transsion/camera/app/ui/manager/ToastUIManager;

    .line 2907
    iget-object v2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mUIManagers:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2908
    iget-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mToastUIManager:Lcom/transsion/camera/app/ui/manager/ToastUIManager;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mToastLayout:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mLayoutInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v1, v2, v3}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->inflateLayout(Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)V

    .line 2909
    iget-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mToastUIManager:Lcom/transsion/camera/app/ui/manager/ToastUIManager;

    iget p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mOrientation:I

    const/4 v2, 0x1

    invoke-virtual {v1, p0, v2}, Lcom/transsion/camera/app/ui/manager/ToastUIManager;->onOrientationChanged(IZ)V

    .line 2911
    :cond_30
    invoke-static {}, Lcom/transsion/camera/utils/debug/TraceUtil;->end()V

    .line 2912
    const-string p0, "[doLoadToastUIManager] end"

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public doOnBGImageSaved(Landroid/net/Uri;[B)V
    .registers 4

    .line 2336
    iget-object p2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mThumbnailUIManager:Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;

    if-eqz p2, :cond_f

    .line 2337
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mCurrentModeSettingUISpec:Lcom/transsion/camera/app/common/ModeSettingUISpec;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->isSupportShare()Z

    move-result p0

    const/4 v0, 0x1

    invoke-virtual {p2, p1, v0, p0}, Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;->updateThumbnailUri(Landroid/net/Uri;ZZ)V

    return-void

    .line 2339
    :cond_f
    sget-object p0, Lcom/transsion/camera/app/ui/BaseAppUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "[doOnBGImageSaved] mThumbnailUIManager null."

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method protected doSetupModePickerUIManager()V
    .registers 5

    .line 2937
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mModePickerUIManager:Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;

    if-eqz v0, :cond_14

    iget-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mModePickerRootView:Landroid/view/ViewGroup;

    if-eqz v1, :cond_14

    .line 2938
    iget-object v2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mRootView:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mLayoutInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v0, v2, v1, v3}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->inflateLayout(Landroid/view/ViewGroup;Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)V

    .line 2939
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mModePickerUIManager:Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/BaseAppUI;->registerPreviewRectListener(Lcom/transsion/camera/app/common/IAppUIListener$IPreviewRectListener;)V

    :cond_14
    return-void
.end method

.method protected doSetupUIManagers()V
    .registers 5

    .line 2953
    sget-object v0, Lcom/transsion/camera/app/ui/BaseAppUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "[PreviewPerformance] doSetupUIManagers start"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 2954
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mShouldHideSwitcher:Z

    .line 2955
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mShouldHideThumbnailUI:Z

    .line 2957
    iget-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mPreviewUIManager:Lcom/transsion/camera/app/ui/manager/PreviewUIManager;

    const/4 v2, 0x0

    if-eqz v1, :cond_19

    .line 2958
    new-instance v3, Lcom/transsion/camera/app/ui/BaseAppUI$OnTouchListenerImpl;

    invoke-direct {v3, p0, v2}, Lcom/transsion/camera/app/ui/BaseAppUI$OnTouchListenerImpl;-><init>(Lcom/transsion/camera/app/ui/BaseAppUI;Lcom/transsion/camera/app/ui/BaseAppUI-IA;)V

    invoke-virtual {v1, v3}, Lcom/transsion/camera/app/ui/manager/PreviewUIManager;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 2963
    :cond_19
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v1

    iget-boolean v1, v1, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportSellingPointGuide:Z

    if-eqz v1, :cond_27

    new-instance v1, Lcom/transsion/camera/app/ui/BaseAppUI$SellingPointGuideUIInflateStage;

    invoke-direct {v1, p0, v2}, Lcom/transsion/camera/app/ui/BaseAppUI$SellingPointGuideUIInflateStage;-><init>(Lcom/transsion/camera/app/ui/BaseAppUI;Lcom/transsion/camera/app/ui/BaseAppUI$UIInflateStage;)V

    move-object v2, v1

    .line 2964
    :cond_27
    new-instance v1, Lcom/transsion/camera/app/ui/BaseAppUI$InteractUIInflateStage;

    invoke-direct {v1, p0, v2}, Lcom/transsion/camera/app/ui/BaseAppUI$InteractUIInflateStage;-><init>(Lcom/transsion/camera/app/ui/BaseAppUI;Lcom/transsion/camera/app/ui/BaseAppUI$UIInflateStage;)V

    .line 2965
    invoke-virtual {p0, v1}, Lcom/transsion/camera/app/ui/BaseAppUI;->getChangeScreenFormStage(Lcom/transsion/camera/app/ui/BaseAppUI$UIInflateStage;)Lcom/transsion/camera/app/ui/BaseAppUI$UIInflateStage;

    move-result-object v2

    if-eqz v2, :cond_38

    .line 2968
    new-instance v1, Lcom/transsion/camera/app/ui/BaseAppUI$PopSettingUIInflateStage;

    invoke-direct {v1, p0, v2}, Lcom/transsion/camera/app/ui/BaseAppUI$PopSettingUIInflateStage;-><init>(Lcom/transsion/camera/app/ui/BaseAppUI;Lcom/transsion/camera/app/ui/BaseAppUI$UIInflateStage;)V

    goto :goto_3e

    .line 2970
    :cond_38
    new-instance v2, Lcom/transsion/camera/app/ui/BaseAppUI$PopSettingUIInflateStage;

    invoke-direct {v2, p0, v1}, Lcom/transsion/camera/app/ui/BaseAppUI$PopSettingUIInflateStage;-><init>(Lcom/transsion/camera/app/ui/BaseAppUI;Lcom/transsion/camera/app/ui/BaseAppUI$UIInflateStage;)V

    move-object v1, v2

    .line 2973
    :goto_3e
    new-instance v2, Lcom/transsion/camera/app/ui/BaseAppUI$ModeSelectUIInflateStage;

    invoke-direct {v2, p0, v1}, Lcom/transsion/camera/app/ui/BaseAppUI$ModeSelectUIInflateStage;-><init>(Lcom/transsion/camera/app/ui/BaseAppUI;Lcom/transsion/camera/app/ui/BaseAppUI$UIInflateStage;)V

    .line 2974
    new-instance v1, Lcom/transsion/camera/app/ui/BaseAppUI$BottomBarUIInflateStage;

    invoke-direct {v1, p0, v2}, Lcom/transsion/camera/app/ui/BaseAppUI$BottomBarUIInflateStage;-><init>(Lcom/transsion/camera/app/ui/BaseAppUI;Lcom/transsion/camera/app/ui/BaseAppUI$UIInflateStage;)V

    .line 2975
    new-instance v2, Lcom/transsion/camera/app/ui/BaseAppUI$TopBarUIInflateStage;

    invoke-direct {v2, p0, v1}, Lcom/transsion/camera/app/ui/BaseAppUI$TopBarUIInflateStage;-><init>(Lcom/transsion/camera/app/ui/BaseAppUI;Lcom/transsion/camera/app/ui/BaseAppUI$UIInflateStage;)V

    .line 2976
    invoke-virtual {v2}, Lcom/transsion/camera/app/ui/BaseAppUI$TopBarUIInflateStage;->process()V

    .line 2978
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/BaseAppUI;->doSetStateListener()V

    .line 2979
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/BaseAppUI;->doUpdateCurrentModeUI()V

    .line 2980
    const-string p0, "[PreviewPerformance] doSetupUIManagers end"

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 2981
    invoke-static {}, Lcom/transsion/camera/utils/debug/TraceUtil;->end()V

    return-void
.end method

.method public doUpdateCurrentModeUI()V
    .registers 1

    .line 5191
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mModePickerUIManager:Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;

    if-eqz p0, :cond_7

    .line 5192
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;->flashModeListCurrentCamera()V

    :cond_7
    return-void
.end method

.method protected doUpdateSettingUIList()V
    .registers 3

    .line 2989
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/BaseAppUI;->doUpdateInteractiveUIList()V

    .line 2990
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mUIHandler:Landroid/os/Handler;

    new-instance v1, Lcom/transsion/camera/app/ui/BaseAppUI$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/ui/BaseAppUI$$ExternalSyntheticLambda5;-><init>(Lcom/transsion/camera/app/ui/BaseAppUI;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected doUpdateUIStateIdleFoldFlip()V
    .registers 1

    return-void
.end method

.method protected doUpdateUIStateLongClickFoldFlip()V
    .registers 1

    return-void
.end method

.method protected doUpdateUIStateProcessingFoldFlip()V
    .registers 1

    return-void
.end method

.method public endHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V
    .registers 2

    .line 1607
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mHintUIManager:Lcom/transsion/camera/app/ui/manager/HintUIManager;

    if-eqz p0, :cond_7

    .line 1608
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/manager/HintUIManager;->endHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    :cond_7
    return-void
.end method

.method public enterEditWaterMarkFragment()V
    .registers 2

    const/16 v0, 0x66

    .line 5150
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/BaseAppUI;->notifyRawActionToAppUI(I)V

    .line 5151
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mTopBarUIManager:Lcom/transsion/camera/app/ui/manager/TopBarUIManager;

    if-eqz p0, :cond_c

    .line 5152
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->dismissPopupWithoutAnimation()Z

    :cond_c
    return-void
.end method

.method public enterGoldWaterMarkFragment()V
    .registers 2

    const/16 v0, 0xb0

    .line 5176
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/BaseAppUI;->notifyRawActionToAppUI(I)V

    .line 5177
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mTopBarUIManager:Lcom/transsion/camera/app/ui/manager/TopBarUIManager;

    if-eqz p0, :cond_c

    .line 5178
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->dismissPopupWithoutAnimation()Z

    :cond_c
    return-void
.end method

.method public enterProWaterMarkFragment()V
    .registers 2

    const/16 v0, 0xf4

    .line 5184
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/BaseAppUI;->notifyRawActionToAppUI(I)V

    .line 5185
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mTopBarUIManager:Lcom/transsion/camera/app/ui/manager/TopBarUIManager;

    if-eqz p0, :cond_c

    .line 5186
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->dismissPopupWithoutAnimation()Z

    :cond_c
    return-void
.end method

.method public enterRemoteCaptureFragment()V
    .registers 2

    const/16 v0, 0x89

    .line 5287
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/BaseAppUI;->notifyRawActionToAppUI(I)V

    .line 5288
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mTopBarUIManager:Lcom/transsion/camera/app/ui/manager/TopBarUIManager;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->dismissPopupWithoutAnimation()Z

    return-void
.end method

.method public enterSettingUIBottom()V
    .registers 1

    .line 5906
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/BaseAppUI;->enterSettingFragmentBottom()V

    return-void
.end method

.method public enterShutterSoundOptionalFragment()V
    .registers 2

    const/16 v0, 0xef

    .line 5293
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/BaseAppUI;->notifyRawActionToAppUI(I)V

    .line 5294
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mTopBarUIManager:Lcom/transsion/camera/app/ui/manager/TopBarUIManager;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->dismissPopupWithoutAnimation()Z

    return-void
.end method

.method public exitAllFragments()V
    .registers 2

    .line 2476
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/BaseAppUI;->exitSettingFragment()V

    .line 2477
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mHelpGuideUIManager:Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;

    if-eqz v0, :cond_a

    .line 2478
    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;->exitGuideFragment()V

    .line 2480
    :cond_a
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mFloatingShutterUIManager:Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;

    if-eqz v0, :cond_11

    .line 2481
    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;->exitGuideFragment()V

    .line 2483
    :cond_11
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mEditWaterMarkManager:Lcom/transsion/camera/app/ui/manager/EditWaterMarkManager;

    if-eqz v0, :cond_18

    .line 2484
    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/manager/EditWaterMarkManager;->exitEditWaterMarkFragment()V

    .line 2486
    :cond_18
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mGoldWaterMarkManager:Lcom/transsion/camera/app/ui/manager/GoldWaterMarkManager;

    if-eqz v0, :cond_1f

    .line 2487
    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/manager/GoldWaterMarkManager;->exitGoldWaterMarkFragment()V

    .line 2490
    :cond_1f
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mProWatermarkManager:Lcom/transsion/camera/app/ui/manager/ProWatermarkManager;

    if-eqz v0, :cond_26

    .line 2491
    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/manager/ProWatermarkManager;->exitProWaterMarkFragment()V

    .line 2493
    :cond_26
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mRemoteCaptureManager:Lcom/transsion/camera/app/ui/manager/RemoteCaptureManager;

    if-eqz v0, :cond_2d

    .line 2494
    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/manager/RemoteCaptureManager;->exitRemoteCaptureFragment()V

    .line 2496
    :cond_2d
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mShutterSoundOptionalManager:Lcom/transsion/camera/app/ui/manager/ShutterSoundOptionalManager;

    if-eqz v0, :cond_34

    .line 2497
    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/manager/ShutterSoundOptionalManager;->exitShutterSoundOptionalFragment()V

    .line 2499
    :cond_34
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mTuningFeatureManager:Lcom/transsion/camera/app/ui/manager/TuningFeatureManager;

    if-eqz v0, :cond_3b

    .line 2500
    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/manager/TuningFeatureManager;->exitTuningFeatureFragment()V

    .line 2502
    :cond_3b
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mImageryGuideManager:Lcom/transsion/camera/manager/BaseImageryGuideManager;

    if-eqz p0, :cond_42

    .line 2503
    invoke-virtual {p0}, Lcom/transsion/camera/manager/BaseImageryGuideManager;->exitImageryGuideFragment()V

    :cond_42
    return-void
.end method

.method public exitModeOnMoreTab()V
    .registers 1

    .line 4998
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mModePickerUIManager:Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;

    if-eqz p0, :cond_7

    .line 4999
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;->exitModeOnMoreTab()V

    :cond_7
    return-void
.end method

.method public exitSettingFragment()V
    .registers 2

    .line 2470
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mSettingFragmentManager:Lcom/transsion/camera/app/ui/manager/SettingFragmentManager;

    if-eqz p0, :cond_8

    const/4 v0, 0x0

    .line 2471
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/manager/SettingFragmentManager;->exitSettingFragment(Ljava/lang/String;)V

    :cond_8
    return-void
.end method

.method public getAboveMainCtrlInflateRoot()Landroid/view/ViewGroup;
    .registers 1

    .line 2514
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mModeAboveMainCtrlInflateRoot:Landroid/view/ViewGroup;

    return-object p0
.end method

.method public getActionSound()Lcom/transsion/camera/utils/sound/IActionSound;
    .registers 1

    .line 2802
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mActionSound:Lcom/transsion/camera/utils/sound/IActionSound;

    return-object p0
.end method

.method public getActionTriggerTime(I)J
    .registers 4

    .line 5956
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mActionTriggerTime:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    return-wide p0
.end method

.method public getAodUIOrientation()I
    .registers 1

    const/4 p0, -0x1

    return p0
.end method

.method public getAsyncInflater()Landroidx/asynclayoutinflater/view/AsyncLayoutInflater;
    .registers 1

    .line 3917
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mAsyncInflater:Landroidx/asynclayoutinflater/view/AsyncLayoutInflater;

    return-object p0
.end method

.method public getBottomBarHeight()I
    .registers 1

    .line 2720
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/ScreenManager;->getBottomHeight()I

    move-result p0

    return p0
.end method

.method protected getChangeScreenFormStage(Lcom/transsion/camera/app/ui/BaseAppUI$UIInflateStage;)Lcom/transsion/camera/app/ui/BaseAppUI$UIInflateStage;
    .registers 2

    const/4 p0, 0x0

    return-object p0
.end method

.method public getCurrentActionState()I
    .registers 1

    .line 705
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mCameraOperateAction:Lcom/transsion/camera/app/common/mode/CameraOperateAction;

    if-eqz p0, :cond_9

    .line 706
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraOperateAction;->getCurrentActionState()I

    move-result p0

    return p0

    :cond_9
    const/4 p0, -0x1

    return p0
.end method

.method public getCurrentAsdHint()Lcom/transsion/camera/app/common/ui/HintInfo;
    .registers 1

    .line 1621
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mHintUIManager:Lcom/transsion/camera/app/ui/manager/HintUIManager;

    if-eqz p0, :cond_9

    .line 1622
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/HintUIManager;->getCurrentAsdHint()Lcom/transsion/camera/app/common/ui/HintInfo;

    move-result-object p0

    return-object p0

    :cond_9
    const/4 p0, 0x0

    return-object p0
.end method

.method public getCurrentMode()Ljava/lang/String;
    .registers 1

    .line 5576
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mCurrentModeName:Ljava/lang/String;

    return-object p0
.end method

.method public getCurrentModeSettingUISpec()Lcom/transsion/camera/app/common/ModeSettingUISpec;
    .registers 1

    .line 5530
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mCurrentModeSettingUISpec:Lcom/transsion/camera/app/common/ModeSettingUISpec;

    return-object p0
.end method

.method public getCurrentPopupWindowKey()Ljava/lang/String;
    .registers 1

    .line 944
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mCurrentPopupWindowKey:Ljava/lang/String;

    return-object p0
.end method

.method public getCurrentUIState()I
    .registers 1

    .line 1416
    iget p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mCurrentAppUIState:I

    return p0
.end method

.method public getCutoutHeight()I
    .registers 1

    .line 2702
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/ScreenManager;->getCutoutHeight()I

    move-result p0

    return p0
.end method

.method public getFloatingShutterRoot()Landroid/view/ViewGroup;
    .registers 1

    .line 2656
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mFloatingShutterLayout:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method public getGpuAlgorithmManager()Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager;
    .registers 1

    .line 768
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mGpuAlgorithmManager:Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager;

    return-object p0
.end method

.method public getHintState()Z
    .registers 1

    .line 1458
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mHintUIManager:Lcom/transsion/camera/app/ui/manager/HintUIManager;

    if-eqz p0, :cond_9

    .line 1459
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/HintUIManager;->getHintState()Z

    move-result p0

    return p0

    :cond_9
    const/4 p0, 0x0

    return p0
.end method

.method public getIMasterGuideUICommon()Lcom/transsion/camera/app/common/ui/setting/IMasterGuideUICommon;
    .registers 1

    .line 790
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mMasterGuideUIManager:Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;

    return-object p0
.end method

.method public getMainHandler()Landroid/os/Handler;
    .registers 1

    .line 803
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mUIHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public getModeInflateRoot()Landroid/view/ViewGroup;
    .registers 1

    .line 2509
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mModeInflateRoot:Landroid/view/ViewGroup;

    return-object p0
.end method

.method public getModeInflateScrollRoot()Landroid/view/ViewGroup;
    .registers 1

    .line 2651
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mModeInflateScrollRoot:Landroid/view/ViewGroup;

    return-object p0
.end method

.method public getModePickerContainer()Landroid/view/View;
    .registers 1

    .line 2573
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mModePickerContainer:Landroid/view/View;

    return-object p0
.end method

.method public getModePickerLayout()Landroid/view/View;
    .registers 1

    .line 2568
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mModeTabLayout:Lcom/transsion/camera/app/ui/widget/TabLayout;

    return-object p0
.end method

.method public getModePlusBottomBarHeight()I
    .registers 1

    .line 2725
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/ScreenManager;->getModePlusBottomBarHeight()I

    move-result p0

    return p0
.end method

.method public getMoreModeGuideLeftRoot()Landroid/view/View;
    .registers 1

    .line 2632
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mMoreModeGuideLeftRoot:Landroid/view/View;

    return-object p0
.end method

.method public getNavigationBarHeight()I
    .registers 1

    .line 2661
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/ScreenManager;->getNavigationHeight()I

    move-result p0

    return p0
.end method

.method public getOrientation()I
    .registers 1

    .line 1743
    iget p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mOrientation:I

    return p0
.end method

.method public getPreviewBackgroundOperator()Lcom/transsion/camera/app/common/preview/IPreviewOperator;
    .registers 1

    .line 763
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mPreviewBackgroundOperator:Lcom/transsion/camera/app/common/preview/IPreviewOperator;

    return-object p0
.end method

.method public getPreviewOperator()Lcom/transsion/camera/app/common/preview/IPreviewOperator;
    .registers 1

    .line 758
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mPreviewOperator:Lcom/transsion/camera/app/common/preview/IPreviewOperator;

    return-object p0
.end method

.method public getPreviewSurfaceType()I
    .registers 1

    .line 818
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mPreviewUIManager:Lcom/transsion/camera/app/ui/manager/PreviewUIManager;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/PreviewUIManager;->getPreviewSurfaceType()I

    move-result p0

    return p0
.end method

.method public getPrivacyCallback()Ljava/util/List;
    .registers 1

    .line 5951
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mPrivacyCallbacks:Ljava/util/List;

    return-object p0
.end method

.method public getRecentKeyMonitor()Lcom/transsion/camera/app/common/physicalkey/AbstractKeyMonitor;
    .registers 1

    .line 5987
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mRecentKeyMonitor:Lcom/transsion/camera/app/common/physicalkey/AbstractKeyMonitor;

    return-object p0
.end method

.method public getRecordingOrientation()I
    .registers 1

    .line 5266
    iget p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mRecordingOrientation:I

    return p0
.end method

.method public getScreenFormType()I
    .registers 1

    .line 1641
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    if-eqz p0, :cond_9

    .line 1642
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenFormType()I

    move-result p0

    return p0

    :cond_9
    const/4 p0, 0x0

    return p0
.end method

.method public getScreenManager()Lcom/transsion/camera/app/common/manager/IScreenManager;
    .registers 1

    .line 5835
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    return-object p0
.end method

.method public getScreenState()I
    .registers 2

    .line 4395
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mRootView:Landroid/view/ViewGroup;

    if-eqz p0, :cond_f

    instance-of v0, p0, Lcom/transsion/camera/app/ui/widget/RootLayout;

    if-eqz v0, :cond_f

    .line 4396
    check-cast p0, Lcom/transsion/camera/app/ui/widget/RootLayout;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/widget/RootLayout;->getScreenState()I

    move-result p0

    return p0

    :cond_f
    const/4 p0, 0x1

    return p0
.end method

.method public getSeparateCaptureNumber()I
    .registers 1

    .line 4656
    iget p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mSeparateCaptureNumber:I

    return p0
.end method

.method public getSettingController()Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;
    .registers 1

    .line 5325
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    return-object p0
.end method

.method public getSettingUIProvider()Lcom/transsion/camera/app/common/provider/SettingUIProvider;
    .registers 1

    .line 4403
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mSettingUIProvider:Lcom/transsion/camera/app/common/provider/SettingUIProvider;

    return-object p0
.end method

.method public getShutterBottomHeight()I
    .registers 3

    .line 2671
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mShutterPanelRootView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mShutterPanelRootView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    .line 2672
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/BaseAppUI;->getShutterButtonHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mShutterPanelRootView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/BaseAppUI;->getNavigationBarHeight()I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public getShutterButtonHeight()I
    .registers 1

    .line 2677
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/ScreenManager;->getShutterButtonHeight()I

    move-result p0

    return p0
.end method

.method public getShutterButtonLayout()Landroid/view/View;
    .registers 1

    .line 2248
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mShutterUIManager:Lcom/transsion/camera/app/ui/manager/ShutterUIManager;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->getShutterButtonLayout()Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public getShutterPanelPaddingHeight()I
    .registers 1

    .line 2666
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/ScreenManager;->getShutterPanelBasePaddingHeight()I

    move-result p0

    return p0
.end method

.method public getShutterPriority()I
    .registers 1

    .line 1718
    iget p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mCurShutterPriority:I

    return p0
.end method

.method public getShutterProcessingOrientation()I
    .registers 1

    .line 2614
    iget p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mShutterProcessingOrientation:I

    return p0
.end method

.method public getShutterSoundEffectList()[Ljava/lang/String;
    .registers 2

    .line 2807
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getSettingProvide()Lcom/transsion/camera/app/common/setting/ISettingManager$SettingProvide;

    move-result-object p0

    const-string v0, "key_shutter_sound_optional"

    .line 2808
    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingProvide;->findISettingByKey(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/ISetting;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/app/common/setting/SettingBase;

    if-eqz p0, :cond_15

    .line 2810
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getShutterSoundEffectList()[Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_15
    const/4 p0, 0x0

    .line 2812
    new-array p0, p0, [Ljava/lang/String;

    return-object p0
.end method

.method public getShutterSoundNameResIds()[I
    .registers 2

    .line 2817
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getSettingProvide()Lcom/transsion/camera/app/common/setting/ISettingManager$SettingProvide;

    move-result-object p0

    const-string v0, "key_shutter_sound_optional"

    .line 2818
    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingProvide;->findISettingByKey(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/ISetting;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/app/common/setting/SettingBase;

    if-eqz p0, :cond_15

    .line 2820
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getShutterSoundNameResIds()[I

    move-result-object p0

    return-object p0

    :cond_15
    const/4 p0, 0x0

    .line 2822
    new-array p0, p0, [I

    return-object p0
.end method

.method public getShutterTypeSelftimerOff()I
    .registers 1

    .line 1352
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mShutterUIManager:Lcom/transsion/camera/app/ui/manager/ShutterUIManager;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->getShutterTypeSelftimerOff()I

    move-result p0

    return p0
.end method

.method public getShutterTypeSelftimerOn()I
    .registers 1

    .line 1373
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mShutterUIManager:Lcom/transsion/camera/app/ui/manager/ShutterUIManager;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->getShutterTypeSelftimerOn()I

    move-result p0

    return p0
.end method

.method public getThumbnail()Landroid/graphics/Bitmap;
    .registers 1

    .line 969
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mThumbnailUIManager:Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;

    if-eqz p0, :cond_9

    .line 970
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;->getThumbnail()Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    :cond_9
    const/4 p0, 0x0

    return-object p0
.end method

.method public getThumbnailView()Landroid/view/View;
    .registers 1

    .line 5859
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mThumbnailUIManager:Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;->getThumbnailView()Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public getToolBarOriginPaddingHeight()I
    .registers 1

    .line 2682
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/ScreenManager;->getToolBarOriginPaddingHeight()I

    move-result p0

    return p0
.end method

.method public getTopLayerRoot()Landroid/view/ViewGroup;
    .registers 1

    .line 2531
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mTopLayerRoot:Landroid/view/ViewGroup;

    return-object p0
.end method

.method public getTopMargin()I
    .registers 9

    .line 2712
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenWidth()I

    move-result v0

    iget-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 2713
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenHeight()I

    move-result v4

    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    .line 2714
    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/ScreenManager;->getTopBarHeight()I

    move-result v5

    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    .line 2715
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/ScreenManager;->getModePlusBottomBarHeight()I

    move-result v6

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 2713
    invoke-static/range {v2 .. v7}, Lcom/transsion/camera/utils/CameraUtil;->getTopMargin(DIIII)I

    move-result p0

    return p0
.end method

.method public getTopRegionHeight()I
    .registers 1

    .line 2707
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/ScreenManager;->getTopBarHeight()I

    move-result p0

    return p0
.end method

.method public getTriggerSelfTimerPriority()I
    .registers 4

    .line 1367
    sget-object v0, Lcom/transsion/camera/app/ui/BaseAppUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getTriggerSelfTimerPriority: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mTriggerSelfTimerPriority:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1368
    iget p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mTriggerSelfTimerPriority:I

    return p0
.end method

.method public getTwinkleGuideMode()Ljava/lang/String;
    .registers 1

    .line 1497
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mHintUIManager:Lcom/transsion/camera/app/ui/manager/HintUIManager;

    if-eqz p0, :cond_9

    .line 1498
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/HintUIManager;->getTwinkleGuideMode()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1500
    :cond_9
    const-string p0, ""

    return-object p0
.end method

.method public getUIBusyController()Lcom/transsion/camera/app/common/IUIAnimatorController;
    .registers 1

    .line 2558
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mUIAnimatorController:Lcom/transsion/camera/app/common/IUIAnimatorController;

    return-object p0
.end method

.method public getVerticalModeSelector()Landroid/widget/FrameLayout;
    .registers 1

    .line 2578
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mVerticalModeSelector:Lcom/transsion/camera/app/ui/widget/VerticalModeSelector;

    return-object p0
.end method

.method public getVoiceIntent()[Z
    .registers 1

    .line 2212
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mVoiceParameters:[Z

    if-eqz p0, :cond_5

    return-object p0

    :cond_5
    const/4 p0, 0x0

    return-object p0
.end method

.method public getVolumeIntercept()Z
    .registers 1

    .line 3867
    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mIntercept:Z

    return p0
.end method

.method public gotoGallery(Landroid/view/View;)V
    .registers 2

    .line 2330
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mThumbnailUIManager:Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;

    if-eqz p0, :cond_7

    .line 2331
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;->performClick(Landroid/view/View;)V

    :cond_7
    return-void
.end method

.method public hideAllHints()V
    .registers 1

    .line 1589
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mHintUIManager:Lcom/transsion/camera/app/ui/manager/HintUIManager;

    if-eqz p0, :cond_7

    .line 1590
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/HintUIManager;->hideAllHint()V

    :cond_7
    return-void
.end method

.method public hideCustomPreviewCover()V
    .registers 3

    .line 779
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mUIHandler:Landroid/os/Handler;

    const/16 v1, 0x6f

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 780
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mUIHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public hideFloatingShutterUI()V
    .registers 2

    .line 2225
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mFloatingShutterUIManager:Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;

    if-eqz p0, :cond_8

    const/4 v0, 0x0

    .line 2226
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;->hideFloatingShutterUI(Z)V

    :cond_8
    return-void
.end method

.method public hideFrontDualFlashUI()V
    .registers 3

    .line 1488
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mHintUIManager:Lcom/transsion/camera/app/ui/manager/HintUIManager;

    if-eqz v0, :cond_8

    const/4 v1, 0x0

    .line 1489
    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/manager/HintUIManager;->updateFrontDualFlashUIState(Z)V

    :cond_8
    const/16 v0, 0xab

    .line 1491
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/BaseAppUI;->notifyRawActionToAppUI(I)V

    return-void
.end method

.method public hideHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V
    .registers 2

    .line 1582
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mHintUIManager:Lcom/transsion/camera/app/ui/manager/HintUIManager;

    if-eqz p0, :cond_9

    if-eqz p1, :cond_9

    .line 1583
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/manager/HintUIManager;->hideHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    :cond_9
    return-void
.end method

.method public hideInteractiveUI()V
    .registers 1

    .line 1547
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mInteractiveUIManager:Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;

    if-eqz p0, :cond_7

    .line 1548
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->hide()V

    :cond_7
    return-void
.end method

.method public hideMasterGuide(Lcom/transsion/camera/app/common/MasterGuideUIBean;)V
    .registers 2

    .line 5928
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mMasterGuideUIManager:Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;

    if-eqz p0, :cond_7

    .line 5929
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->hideMasterGuide(Lcom/transsion/camera/app/common/MasterGuideUIBean;)V

    :cond_7
    return-void
.end method

.method public hidePopSettingView()V
    .registers 1

    .line 5601
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mPopSettingUIManager:Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;

    if-eqz p0, :cond_7

    .line 5602
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->hidePopSettingUI()V

    :cond_7
    return-void
.end method

.method public hidePopupOption()V
    .registers 1

    .line 5122
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mTopBarUIManager:Lcom/transsion/camera/app/ui/manager/TopBarUIManager;

    if-eqz p0, :cond_7

    .line 5123
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->dismissPopup()Z

    :cond_7
    return-void
.end method

.method public hideToast()V
    .registers 1

    .line 1540
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mToastUIManager:Lcom/transsion/camera/app/ui/manager/ToastUIManager;

    if-eqz p0, :cond_7

    .line 1541
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/ToastUIManager;->hideToast()V

    :cond_7
    return-void
.end method

.method public hideTwinkleGuide()V
    .registers 1

    .line 1473
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mHintUIManager:Lcom/transsion/camera/app/ui/manager/HintUIManager;

    if-eqz p0, :cond_7

    .line 1474
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/HintUIManager;->hideTwinkleGuide()V

    :cond_7
    return-void
.end method

.method public hideWideCamera()V
    .registers 1

    .line 5084
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mWideCameraUIManager:Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;

    if-eqz p0, :cond_7

    .line 5085
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;->hideWideCamera()V

    :cond_7
    return-void
.end method

.method public init(ZLcom/transsion/camera/app/intent/IntentParser;Landroid/view/ViewGroup;Landroid/view/LayoutInflater;Landroid/app/FragmentManager;Landroid/content/ContentResolver;Lcom/transsion/camera/utils/sound/IActionSound;Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)V
    .registers 9

    .line 1827
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mFromIntent:Z

    .line 1828
    iput-object p3, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mRootView:Landroid/view/ViewGroup;

    .line 1829
    iput-object p7, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mActionSound:Lcom/transsion/camera/utils/sound/IActionSound;

    .line 1830
    iput-object p4, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 1831
    iput-object p5, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mFragmentManager:Landroid/app/FragmentManager;

    .line 1832
    new-instance p1, Landroidx/asynclayoutinflater/view/AsyncLayoutInflater;

    iget-object p2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Landroidx/asynclayoutinflater/view/AsyncLayoutInflater;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mAsyncInflater:Landroidx/asynclayoutinflater/view/AsyncLayoutInflater;

    .line 1833
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p1

    iget-boolean p1, p1, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportSuperAntiVideoV2:Z

    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mSupportSuperAntiVideoV2:Z

    .line 1835
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mRootView:Landroid/view/ViewGroup;

    sget p2, Lcom/transsion/camera/R$id;->overlay_ui_layer_root:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mOverlayUIRoot:Landroid/view/ViewGroup;

    .line 1836
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mRootView:Landroid/view/ViewGroup;

    sget p2, Lcom/transsion/camera/R$id;->camera_zoom_layout:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mCameraZoomLayout:Landroid/view/ViewGroup;

    .line 1837
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mRootView:Landroid/view/ViewGroup;

    sget p2, Lcom/transsion/camera/R$id;->camera_flash_layout:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mCameraFlashLayout:Landroid/view/ViewGroup;

    .line 1838
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mUILayerRootParentList:Ljava/util/List;

    iget-object p2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mCameraZoomLayout:Landroid/view/ViewGroup;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1839
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mUILayerRootParentList:Ljava/util/List;

    iget-object p2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mCameraFlashLayout:Landroid/view/ViewGroup;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1841
    new-instance p1, Lcom/transsion/camera/app/ui/ScrollConsumer;

    iget-object p2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lcom/transsion/camera/app/ui/ScrollConsumer;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mScrollConsumer:Lcom/transsion/camera/app/ui/ScrollConsumer;

    .line 1842
    new-instance p1, Lcom/transsion/camera/app/ui/gesture/PreviewGestureManager;

    iget-object p2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/BaseAppUI;->pocketScreen()Z

    move-result p3

    invoke-direct {p1, p2, p3, p0}, Lcom/transsion/camera/app/ui/gesture/PreviewGestureManager;-><init>(Landroid/content/Context;ZLcom/transsion/camera/app/common/IAppUI;)V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mPreviewGestureManager:Lcom/transsion/camera/app/ui/gesture/PreviewGestureManager;

    .line 1843
    new-instance p1, Lcom/transsion/camera/app/common/mode/CameraOperateAction;

    iget-object p2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mRawActionCallback:Lcom/transsion/camera/app/common/mode/CameraOperateAction$RawActionHandleCallback;

    invoke-direct {p1, p2, p0}, Lcom/transsion/camera/app/common/mode/CameraOperateAction;-><init>(Lcom/transsion/camera/app/common/mode/CameraOperateAction$RawActionHandleCallback;Lcom/transsion/camera/app/common/IAppUI;)V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mCameraOperateAction:Lcom/transsion/camera/app/common/mode/CameraOperateAction;

    .line 1844
    new-instance p1, Lcom/transsion/camera/app/ui/PreviewGestureScrollAdapter;

    iget-object p2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mScrollConsumer:Lcom/transsion/camera/app/ui/ScrollConsumer;

    invoke-direct {p1, p2}, Lcom/transsion/camera/app/ui/PreviewGestureScrollAdapter;-><init>(Lcom/transsion/camera/app/ui/IScroll;)V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mPreviewGestureScrollAdapter:Lcom/transsion/camera/app/ui/PreviewGestureScrollAdapter;

    const/16 p2, 0x8

    .line 1845
    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/ui/BaseAppUI;->registerPreviewGestureListener(Lcom/transsion/camera/app/common/IAppUIListener$IPreviewGestureListener;I)V

    .line 1847
    invoke-virtual {p8}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->getSettingManager()Lcom/transsion/camera/app/common/setting/SettingManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/setting/SettingManager;->getSettingController()Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    return-void
.end method

.method protected initContinuousShotUIManager()Lcom/transsion/camera/app/ui/manager/ContinuousShotUIManager;
    .registers 2

    .line 2933
    new-instance v0, Lcom/transsion/camera/app/ui/manager/ContinuousShotUIManager;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/ui/manager/ContinuousShotUIManager;-><init>(Lcom/transsion/camera/app/common/manager/IScreenManager;)V

    return-object v0
.end method

.method public initImageryGuideManager()V
    .registers 5

    .line 1863
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mImageryGuideManager:Lcom/transsion/camera/manager/BaseImageryGuideManager;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mFragmentManager:Landroid/app/FragmentManager;

    sget v3, Lcom/transsion/camera/R$id;->top_layer_root:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/transsion/camera/manager/BaseImageryGuideManager;->init(Landroid/content/Context;Landroid/app/FragmentManager;I)V

    .line 1864
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mImageryGuideManager:Lcom/transsion/camera/manager/BaseImageryGuideManager;

    new-instance v1, Lcom/transsion/camera/app/ui/BaseAppUI$$ExternalSyntheticLambda20;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/ui/BaseAppUI$$ExternalSyntheticLambda20;-><init>(Lcom/transsion/camera/app/ui/BaseAppUI;)V

    invoke-virtual {v0, v1}, Lcom/transsion/camera/manager/BaseImageryGuideManager;->setOnSwitchModeListener(Lcom/transsion/camera/manager/BaseImageryGuideManager$IInteractionCallBack;)V

    .line 1866
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mImageryGuideManager:Lcom/transsion/camera/manager/BaseImageryGuideManager;

    new-instance v1, Lcom/transsion/camera/app/ui/BaseAppUI$3;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/ui/BaseAppUI$3;-><init>(Lcom/transsion/camera/app/ui/BaseAppUI;)V

    invoke-virtual {v0, v1}, Lcom/transsion/camera/manager/BaseImageryGuideManager;->setOnFragmentListener(Lcom/transsion/camera/manager/BaseImageryGuideManager$IFragmentCallBack;)V

    return-void
.end method

.method protected initToastUIManager()Lcom/transsion/camera/app/ui/manager/ToastUIManager;
    .registers 2

    .line 2916
    new-instance v0, Lcom/transsion/camera/app/ui/manager/ToastUIManager;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/ui/manager/ToastUIManager;-><init>(Lcom/transsion/camera/app/common/manager/IScreenManager;)V

    return-object v0
.end method

.method public interruptPhysicalKey(Z)V
    .registers 2

    .line 4636
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mInterruptPhysicalKey:Z

    return-void
.end method

.method public isAIGCFromNegativeScreen()Z
    .registers 1

    .line 4980
    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mIsNegativeScreenAIGCMode:Z

    return p0
.end method

.method public isActivityPaused()Z
    .registers 1

    .line 2590
    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mIsPaused:Z

    return p0
.end method

.method public isCsShotByPhysicalKey()Z
    .registers 1

    .line 2600
    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mCShotByPhysicalKey:Z

    return p0
.end method

.method public isCsViewAnimationStart()Z
    .registers 1

    .line 2595
    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mCsViewAnimationStart:Z

    return p0
.end method

.method public isFromIntent()Z
    .registers 1

    .line 1637
    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mFromIntent:Z

    return p0
.end method

.method protected isGoogleLensSupport()Z
    .registers 2

    .line 4381
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mSecureCamera:Z

    if-nez v0, :cond_a

    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mVoiceInteraction:Z

    if-nez p0, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method public isIntentFromNegativeScreen()Z
    .registers 1

    .line 4976
    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mIsIntentFromNegativeScreen:Z

    return p0
.end method

.method public isLivePhotoOn()Z
    .registers 2

    .line 5168
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return p0

    .line 5171
    :cond_6
    const-string v0, "key_live_photo"

    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "on"

    invoke-static {v0, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public isModeTabScrolling()Z
    .registers 1

    .line 1190
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mModePickerUIManager:Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return p0

    .line 1193
    :cond_6
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;->isModeTabScrolling()Z

    move-result p0

    return p0
.end method

.method public isPhysicalKeyEnable()Z
    .registers 1

    .line 3872
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/BaseAppUI;->isModeTabScrolling()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public isPopupShowing()Z
    .registers 1

    .line 5129
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mTopBarUIManager:Lcom/transsion/camera/app/ui/manager/TopBarUIManager;

    if-eqz p0, :cond_9

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->isPopupShowing()Z

    move-result p0

    return p0

    :cond_9
    const/4 p0, 0x0

    return p0
.end method

.method public isPreviewReady()Z
    .registers 2

    .line 456
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mIsPaused:Z

    if-nez v0, :cond_e

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mPreviewReadyForCurrentSession:Z

    if-eqz v0, :cond_e

    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mIsPreviewCoverUIShow:Z

    if-nez p0, :cond_e

    const/4 p0, 0x1

    return p0

    :cond_e
    const/4 p0, 0x0

    return p0
.end method

.method public isSecureCamera()Z
    .registers 1

    .line 4386
    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mSecureCamera:Z

    return p0
.end method

.method public isSellingPointVideoPlaying()Z
    .registers 1

    .line 5969
    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mIsSellingPointVideoPlaying:Z

    return p0
.end method

.method public isShoulderKeyLongPress()Z
    .registers 1

    .line 5911
    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mIsShoulderKeyLongPress:Z

    return p0
.end method

.method public isSuperDefinition108MInLowPlatform()Z
    .registers 3

    .line 5158
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const/4 v0, 0x0

    if-eqz p0, :cond_1d

    .line 5159
    const-string v1, "key_super_definition"

    invoke-interface {p0, v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 5160
    const-string v1, "billion"

    invoke-static {p0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1d

    .line 5161
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p0

    iget-boolean p0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mSuperdefinition108mInLowPlatform:Z

    if-eqz p0, :cond_1d

    const/4 p0, 0x1

    return p0

    :cond_1d
    return v0
.end method

.method public isSupportDoubleClickVolumeDown()Z
    .registers 4

    .line 3903
    sget-object v0, Lcom/transsion/camera/app/ui/BaseAppUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isSupportDoubleClickVolumeDown mCurrentModeName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mCurrentModeName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 3904
    const-string v0, "com.transsion.camera.feature.mode.underwater.UnderwaterModeEntry"

    iget-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mCurrentModeName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2e

    const-string v0, "com.transsion.camera.feature.mode.underwater.UnderwaterVideoModeEntry"

    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mCurrentModeName:Ljava/lang/String;

    .line 3905
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2e

    const/4 p0, 0x1

    return p0

    :cond_2e
    const/4 p0, 0x0

    return p0
.end method

.method public isVideoRecording()Z
    .registers 1

    .line 1421
    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mIsVideoRecording:Z

    return p0
.end method

.method public isVoiceInteraction()Z
    .registers 1

    .line 5320
    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mVoiceInteraction:Z

    return p0
.end method

.method public loadLatestThumbnail()V
    .registers 2

    .line 1019
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mAppStorageManager:Lcom/transsion/camera/app/common/storage/AppStorageManager;

    if-nez v0, :cond_c

    .line 1020
    sget-object p0, Lcom/transsion/camera/app/ui/BaseAppUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "loadLatestThumbnail mAppStorageManager is null"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 1023
    :cond_c
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mThumbnailUIManager:Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;

    if-eqz p0, :cond_17

    .line 1024
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/storage/AppStorageManager;->getAllBucketIds()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;->loadLatestThumbnail(Ljava/util/ArrayList;)V

    :cond_17
    return-void
.end method

.method public loadLatestThumbnail(Ljava/util/ArrayList;)V
    .registers 3

    .line 2318
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mThumbnailUIManager:Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;

    if-eqz v0, :cond_b

    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mSecureCamera:Z

    if-nez p0, :cond_b

    .line 2319
    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;->loadLatestThumbnail(Ljava/util/ArrayList;)V

    :cond_b
    return-void
.end method

.method public loadThumbnailByUri(Ljava/util/ArrayList;Landroid/net/Uri;)V
    .registers 3

    .line 2324
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mThumbnailUIManager:Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;

    if-eqz p0, :cond_7

    .line 2325
    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;->loadThumbnailByUri(Ljava/util/ArrayList;Landroid/net/Uri;)V

    :cond_7
    return-void
.end method

.method public needBuildBlurCoverView(Z)V
    .registers 2

    .line 785
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mPreviewUIManager:Lcom/transsion/camera/app/ui/manager/PreviewUIManager;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/manager/PreviewUIManager;->needBuildBlurCoverView(Z)V

    return-void
.end method

.method protected notifyActionFirstSteadyFrameFoldFlip(I)V
    .registers 2

    return-void
.end method

.method public notifyCSNotSupport()V
    .registers 3

    .line 5586
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mShutterUIManager:Lcom/transsion/camera/app/ui/manager/ShutterUIManager;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mHintUIManager:Lcom/transsion/camera/app/ui/manager/HintUIManager;

    if-eqz v0, :cond_19

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/BaseAppUI;->shutterUINewStyleSupport()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 5587
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mHintUIManager:Lcom/transsion/camera/app/ui/manager/HintUIManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/manager/HintUIManager;->setEnableHintUI(Z)V

    .line 5588
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mShutterUIManager:Lcom/transsion/camera/app/ui/manager/ShutterUIManager;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->notifyCSNotSupport()V

    :cond_19
    return-void
.end method

.method protected notifyCameraOperateActionToUI(I)V
    .registers 7

    .line 4467
    const-string v0, "start"

    const-string v1, "key_live_photo_state"

    const/4 v2, -0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    sparse-switch p1, :sswitch_data_138

    goto/16 :goto_131

    .line 4621
    :sswitch_c
    iput-boolean v4, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mIsPreviewCoverUIShow:Z

    return-void

    .line 4618
    :sswitch_f
    iput-boolean v3, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mIsPreviewCoverUIShow:Z

    return-void

    .line 4627
    :sswitch_12
    iput-boolean v4, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mIsSellingPointVideoPlaying:Z

    return-void

    .line 4624
    :sswitch_15
    iput-boolean v3, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mIsSellingPointVideoPlaying:Z

    return-void

    .line 4583
    :sswitch_18
    iget p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mOrientation:I

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/BaseAppUI;->getScreenFormType()I

    move-result v0

    invoke-virtual {p0, p1, v0, v4}, Lcom/transsion/camera/app/ui/BaseAppUI;->updateBottomBarLayout(IIZ)V

    return-void

    .line 4476
    :sswitch_22
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mHintUIManager:Lcom/transsion/camera/app/ui/manager/HintUIManager;

    if-eqz p1, :cond_2e

    .line 4477
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->hide()V

    .line 4478
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mHintUIManager:Lcom/transsion/camera/app/ui/manager/HintUIManager;

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/manager/HintUIManager;->hideAllHint()V

    .line 4480
    :cond_2e
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/BaseAppUI;->shutterUINewStyleSupport()Z

    move-result p1

    if-eqz p1, :cond_f7

    .line 4481
    invoke-virtual {p0, v4}, Lcom/transsion/camera/app/ui/BaseAppUI;->setEnableHintUI(Z)V

    .line 4482
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mCShotByPhysicalKey:Z

    if-nez p1, :cond_f7

    .line 4483
    iput-boolean v3, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mInterruptPhysicalKey:Z

    goto/16 :goto_f7

    .line 4534
    :sswitch_3f
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mIsVideoRecording:Z

    if-nez p1, :cond_47

    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mShutterUIProcessing:Z

    if-eqz p1, :cond_52

    .line 4535
    :cond_47
    iget p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mOrientation:I

    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenFormType()I

    move-result v0

    invoke-virtual {p0, p1, v0, v4}, Lcom/transsion/camera/app/ui/BaseAppUI;->updateBottomBarLayout(IIZ)V

    .line 4537
    :cond_52
    iput v2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mShutterProcessingOrientation:I

    .line 4538
    iput-boolean v4, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mIsVideoRecording:Z

    .line 4539
    iput-boolean v4, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mShutterUIProcessing:Z

    return-void

    .line 4551
    :sswitch_59
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/BaseAppUI;->shutterUINewStyleSupport()Z

    move-result p1

    if-eqz p1, :cond_131

    .line 4552
    invoke-virtual {p0, v3}, Lcom/transsion/camera/app/ui/BaseAppUI;->setEnableHintUI(Z)V

    .line 4553
    iput-boolean v4, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mInterruptPhysicalKey:Z

    return-void

    .line 4587
    :sswitch_65
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/BaseAppUI;->showOrHideSystemUI()V

    return-void

    .line 4606
    :sswitch_69
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mLivePhotoResponder:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    if-eqz p0, :cond_131

    .line 4607
    const-string p1, "stop"

    invoke-virtual {p0, v1, p1}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    .line 4613
    :sswitch_73
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mLivePhotoResponder:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    if-eqz p0, :cond_131

    .line 4614
    invoke-virtual {p0, v1, v0}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    .line 4595
    :sswitch_7b
    invoke-direct {p0, v3}, Lcom/transsion/camera/app/ui/BaseAppUI;->enableViewTalkbackForAllView(Z)V

    .line 4596
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mLivePhotoResponder:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    if-eqz p0, :cond_131

    .line 4597
    invoke-virtual {p0, v1, v0}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    .line 4575
    :sswitch_86
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mIsVideoRecording:Z

    if-eqz p1, :cond_95

    .line 4576
    iget p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mOrientation:I

    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenFormType()I

    move-result v0

    invoke-virtual {p0, p1, v0, v4}, Lcom/transsion/camera/app/ui/BaseAppUI;->updateBottomBarLayout(IIZ)V

    .line 4578
    :cond_95
    iput-boolean v4, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mIsVideoRecording:Z

    .line 4579
    iput v2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mRecordingOrientation:I

    return-void

    .line 4542
    :sswitch_9a
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/BaseAppUI;->shutterUINewStyleSupport()Z

    move-result p1

    if-eqz p1, :cond_ab

    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mCShotByPhysicalKey:Z

    if-eqz p1, :cond_ab

    .line 4543
    iput-boolean v4, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mCShotByPhysicalKey:Z

    .line 4544
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mShutterUIManager:Lcom/transsion/camera/app/ui/manager/ShutterUIManager;

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->hideCShotNumber()V

    .line 4546
    :cond_ab
    invoke-virtual {p0, v3}, Lcom/transsion/camera/app/ui/BaseAppUI;->setEnableHintUI(Z)V

    .line 4547
    iput-boolean v4, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mInterruptPhysicalKey:Z

    return-void

    .line 4517
    :sswitch_b1
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/BaseAppUI;->shutterUINewStyleSupport()Z

    move-result v0

    if-eqz v0, :cond_131

    .line 4518
    iput-boolean v3, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mShutterUIProcessing:Z

    .line 4519
    iget v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mShutterProcessingOrientation:I

    if-ne v0, v2, :cond_c1

    .line 4520
    iget v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mOrientation:I

    iput v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mShutterProcessingOrientation:I

    :cond_c1
    const/16 v0, 0x24

    if-ne p1, v0, :cond_cf

    .line 4523
    invoke-virtual {p0, v3}, Lcom/transsion/camera/app/ui/BaseAppUI;->setEnableHintUI(Z)V

    .line 4524
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mCShotByPhysicalKey:Z

    if-nez p1, :cond_131

    .line 4525
    iput-boolean v3, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mInterruptPhysicalKey:Z

    return-void

    .line 4529
    :cond_cf
    invoke-virtual {p0, v4}, Lcom/transsion/camera/app/ui/BaseAppUI;->setEnableHintUI(Z)V

    .line 4530
    iput-boolean v3, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mInterruptPhysicalKey:Z

    return-void

    .line 4571
    :sswitch_d5
    invoke-direct {p0, v3}, Lcom/transsion/camera/app/ui/BaseAppUI;->enableViewTalkbackForAllView(Z)V

    return-void

    .line 4513
    :sswitch_d9
    iput-boolean v4, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mGraduationViewIsMoving:Z

    return-void

    .line 4510
    :sswitch_dc
    iput-boolean v3, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mGraduationViewIsMoving:Z

    return-void

    .line 4561
    :sswitch_df
    iput-boolean v4, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mInZoomChanging:Z

    goto :goto_e5

    .line 4557
    :sswitch_e2
    iput-boolean v3, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mInZoomChanging:Z

    return-void

    .line 4563
    :goto_e5
    :sswitch_e5
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/BaseAppUI;->showOrHideSystemUI()V

    .line 4564
    invoke-direct {p0, v3}, Lcom/transsion/camera/app/ui/BaseAppUI;->enableViewTalkbackForAllView(Z)V

    .line 4565
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mLivePhotoResponder:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    if-eqz p0, :cond_131

    .line 4566
    invoke-virtual {p0, v1, v0}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    .line 4592
    :sswitch_f3
    invoke-direct {p0, v4}, Lcom/transsion/camera/app/ui/BaseAppUI;->enableViewTalkbackForAllView(Z)V

    return-void

    .line 4490
    :cond_f7
    :goto_f7
    :sswitch_f7
    iput-boolean v3, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mIsVideoRecording:Z

    .line 4491
    iget p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mRecordingOrientation:I

    if-ne p1, v2, :cond_101

    .line 4492
    iget p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mOrientation:I

    iput p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mRecordingOrientation:I

    .line 4494
    :cond_101
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mHintUIManager:Lcom/transsion/camera/app/ui/manager/HintUIManager;

    if-eqz p1, :cond_10a

    .line 4495
    iget v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mRecordingOrientation:I

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/ui/manager/HintUIManager;->setRecorderOrientation(I)V

    .line 4497
    :cond_10a
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mTopBarUIManager:Lcom/transsion/camera/app/ui/manager/TopBarUIManager;

    if-eqz p1, :cond_131

    invoke-direct {p0}, Lcom/transsion/camera/app/ui/BaseAppUI;->supportVideoFlashLightWhenRecording()Z

    move-result p1

    if-eqz p1, :cond_131

    .line 4498
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mTopBarUIManager:Lcom/transsion/camera/app/ui/manager/TopBarUIManager;

    const-string p1, "key_flash_facade"

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, v4, p1}, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->tempShow(ZLjava/util/List;)V

    return-void

    .line 4503
    :sswitch_120
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mCurrentModeName:Ljava/lang/String;

    const-string v0, "com.transsion.camera.feature.funvideo.mode.FunVideoModeEntry"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_131

    .line 4504
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mWideCameraUIManager:Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;

    if-eqz p0, :cond_131

    .line 4505
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;->hide()V

    :cond_131
    :goto_131
    return-void

    .line 4473
    :sswitch_132
    iput-boolean v3, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mPreviewReadyForCurrentSession:Z

    return-void

    .line 4470
    :sswitch_135
    iput-boolean v4, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mPreviewReadyForCurrentSession:Z

    return-void

    :sswitch_data_138
    .sparse-switch
        0x0 -> :sswitch_135
        0x2 -> :sswitch_135
        0x8 -> :sswitch_132
        0xb -> :sswitch_120
        0xf -> :sswitch_f7
        0x11 -> :sswitch_f3
        0x12 -> :sswitch_e5
        0x17 -> :sswitch_e2
        0x18 -> :sswitch_df
        0x19 -> :sswitch_dc
        0x1a -> :sswitch_d9
        0x1c -> :sswitch_d5
        0x24 -> :sswitch_b1
        0x25 -> :sswitch_9a
        0x2e -> :sswitch_f7
        0x3a -> :sswitch_86
        0x4d -> :sswitch_f3
        0x4e -> :sswitch_7b
        0x52 -> :sswitch_f7
        0x67 -> :sswitch_73
        0x68 -> :sswitch_69
        0x6a -> :sswitch_69
        0x6b -> :sswitch_69
        0x85 -> :sswitch_65
        0x90 -> :sswitch_f7
        0x91 -> :sswitch_86
        0xb1 -> :sswitch_73
        0xb2 -> :sswitch_69
        0xd2 -> :sswitch_b1
        0xd3 -> :sswitch_59
        0xdc -> :sswitch_3f
        0xe9 -> :sswitch_22
        0xea -> :sswitch_59
        0xf5 -> :sswitch_73
        0xf6 -> :sswitch_69
        0x119 -> :sswitch_18
        0x173 -> :sswitch_15
        0x174 -> :sswitch_12
        0x17c -> :sswitch_f
        0x17d -> :sswitch_c
    .end sparse-switch
.end method

.method public notifyCsViewAnimationChange(Z)V
    .registers 5

    .line 2626
    sget-object v0, Lcom/transsion/camera/app/ui/BaseAppUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyCsViewAnimationChange, animationStart: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 2627
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mCsViewAnimationStart:Z

    return-void
.end method

.method public notifyFlashFacadeChanged()V
    .registers 2

    .line 5613
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_e

    .line 5616
    :cond_7
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mTopBarUIManager:Lcom/transsion/camera/app/ui/manager/TopBarUIManager;

    if-eqz p0, :cond_e

    .line 5617
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->notifyFlashFacadeChanged()V

    :cond_e
    :goto_e
    return-void
.end method

.method public notifyLowTemperature()V
    .registers 3

    .line 4641
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mHintUIManager:Lcom/transsion/camera/app/ui/manager/HintUIManager;

    if-eqz v0, :cond_12

    iget-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mShutterUIManager:Lcom/transsion/camera/app/ui/manager/ShutterUIManager;

    if-nez v1, :cond_9

    goto :goto_12

    :cond_9
    const/4 v1, 0x1

    .line 4644
    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/manager/HintUIManager;->setEnableHintUI(Z)V

    .line 4645
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mShutterUIManager:Lcom/transsion/camera/app/ui/manager/ShutterUIManager;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->notifyCSNotSupport()V

    :cond_12
    :goto_12
    return-void
.end method

.method public notifyRawActionToAppUI(I)V
    .registers 11

    .line 558
    sget-object v0, Lcom/transsion/camera/app/ui/BaseAppUI;->SHOW_LOG_TRACE_ACTIONS:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, ", mIsPaused = "

    const-string v2, "notifyRawActionToAppUI action = "

    if-eqz v0, :cond_31

    .line 559
    sget-object v0, Lcom/transsion/camera/app/ui/BaseAppUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/transsion/camera/app/common/mode/CameraOperateAction;->actionToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mIsPaused:Z

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->iTrace(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_51

    .line 561
    :cond_31
    sget-object v0, Lcom/transsion/camera/app/ui/BaseAppUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/transsion/camera/app/common/mode/CameraOperateAction;->actionToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mIsPaused:Z

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 563
    :goto_51
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/BaseAppUI;->checkIfNeedDebounce(I)Z

    move-result v0

    if-eqz v0, :cond_59

    goto/16 :goto_16d

    .line 566
    :cond_59
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/BaseAppUI;->updateActionTriggerTime(I)V

    const/16 v0, 0x9

    const/4 v1, 0x1

    if-ne p1, v0, :cond_67

    .line 568
    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mIsPaused:Z

    if-eqz v2, :cond_67

    .line 569
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mFirstSteadyFrameFlag:Z

    .line 571
    :cond_67
    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mIsPaused:Z

    if-eqz v2, :cond_6d

    goto/16 :goto_16d

    :cond_6d
    const/16 v2, 0x6a

    const/16 v3, 0x63

    if-ne p1, v3, :cond_8e

    .line 575
    iget-boolean v4, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mFrameOnceCome:Z

    if-nez v4, :cond_83

    .line 576
    iget-object v4, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mUIHandler:Landroid/os/Handler;

    invoke-virtual {v4, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 577
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mFrameOnceCome:Z

    goto :goto_9f

    .line 579
    :cond_83
    iget-object v2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mUIHandler:Landroid/os/Handler;

    new-instance v4, Lcom/transsion/camera/app/ui/BaseAppUI$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0}, Lcom/transsion/camera/app/ui/BaseAppUI$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/app/ui/BaseAppUI;)V

    invoke-virtual {v2, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_9f

    :cond_8e
    if-ne p1, v0, :cond_9f

    .line 582
    iget-boolean v4, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mFrameOnceCome:Z

    if-nez v4, :cond_9f

    .line 583
    iget-object v4, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mUIHandler:Landroid/os/Handler;

    invoke-virtual {v4, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 584
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mFrameOnceCome:Z

    .line 587
    :cond_9f
    :goto_9f
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/BaseAppUI;->notifyActionFirstSteadyFrameFoldFlip(I)V

    .line 588
    iget-object v2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mCameraOperateAction:Lcom/transsion/camera/app/common/mode/CameraOperateAction;

    if-eqz v2, :cond_a9

    .line 589
    invoke-virtual {v2, p1}, Lcom/transsion/camera/app/common/mode/CameraOperateAction;->rawActionHandle(I)V

    :cond_a9
    const/16 v2, 0x20

    const/4 v4, 0x0

    if-ne p1, v2, :cond_156

    .line 592
    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mFirstSteadyFrameFlag:Z

    if-eqz v2, :cond_b7

    .line 593
    iput-boolean v4, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mFirstSteadyFrameFlag:Z

    .line 594
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/BaseAppUI;->notifyRawActionToAppUI(I)V

    .line 597
    :cond_b7
    iget-object v2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/transsion/camera/utils/CameraUtil;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_156

    .line 598
    iget-object v2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mShutterUIManager:Lcom/transsion/camera/app/ui/manager/ShutterUIManager;

    if-eqz v2, :cond_de

    invoke-virtual {v2}, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->getShutterButtonLayout()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_de

    iget-object v2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mShutterUIManager:Lcom/transsion/camera/app/ui/manager/ShutterUIManager;

    invoke-virtual {v2}, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->getShutterButtonLayout()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->isFocusable()Z

    move-result v2

    if-nez v2, :cond_de

    .line 599
    iget-object v2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mShutterUIManager:Lcom/transsion/camera/app/ui/manager/ShutterUIManager;

    invoke-virtual {v2}, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->getShutterButtonLayout()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 601
    :cond_de
    iget-object v2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mCameraSwitcherUIManager:Lcom/transsion/camera/app/ui/manager/CameraSwitcherUIManager;

    if-eqz v2, :cond_fd

    invoke-virtual {v2}, Lcom/transsion/camera/app/ui/manager/CameraSwitcherUIManager;->getCameraSwitcherView()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_fd

    iget-object v2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mCameraSwitcherUIManager:Lcom/transsion/camera/app/ui/manager/CameraSwitcherUIManager;

    invoke-virtual {v2}, Lcom/transsion/camera/app/ui/manager/CameraSwitcherUIManager;->getCameraSwitcherView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->isFocusable()Z

    move-result v2

    if-nez v2, :cond_fd

    .line 602
    iget-object v2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mCameraSwitcherUIManager:Lcom/transsion/camera/app/ui/manager/CameraSwitcherUIManager;

    invoke-virtual {v2}, Lcom/transsion/camera/app/ui/manager/CameraSwitcherUIManager;->getCameraSwitcherView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 604
    :cond_fd
    iget-object v2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mThumbnailUIManager:Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;

    if-eqz v2, :cond_11c

    invoke-virtual {v2}, Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;->getThumbnailView()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_11c

    iget-object v2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mThumbnailUIManager:Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;

    invoke-virtual {v2}, Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;->getThumbnailView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->isFocusable()Z

    move-result v2

    if-nez v2, :cond_11c

    .line 605
    iget-object v2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mThumbnailUIManager:Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;

    invoke-virtual {v2}, Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;->getThumbnailView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 607
    :cond_11c
    iget-object v2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mInteractiveUIManager:Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;

    invoke-virtual {v2}, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->getInteractiveUILayout()Landroid/view/ViewGroup;

    move-result-object v2

    if-eqz v2, :cond_156

    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mIsInteractiveListFocusable:Z

    if-nez v2, :cond_156

    .line 608
    iget-object v2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mInteractiveUIManager:Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;

    invoke-virtual {v2}, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->getInteractiveUILayout()Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    move v5, v4

    move v6, v5

    :goto_134
    if-ge v5, v2, :cond_150

    .line 611
    iget-object v7, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mInteractiveUIManager:Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;

    invoke-virtual {v7}, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->getInteractiveUILayout()Landroid/view/ViewGroup;

    move-result-object v7

    invoke-virtual {v7, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    if-eqz v7, :cond_14d

    .line 612
    invoke-virtual {v7}, Landroid/view/View;->isFocusable()Z

    move-result v8

    if-nez v8, :cond_14d

    .line 613
    invoke-virtual {v7, v1}, Landroid/view/View;->setFocusable(Z)V

    add-int/lit8 v6, v6, 0x1

    :cond_14d
    add-int/lit8 v5, v5, 0x1

    goto :goto_134

    :cond_150
    if-lez v6, :cond_156

    if-ne v6, v2, :cond_156

    .line 618
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mIsInteractiveListFocusable:Z

    :cond_156
    if-eq p1, v3, :cond_15c

    const/16 v2, 0x21

    if-ne p1, v2, :cond_163

    .line 624
    :cond_15c
    sget-object v2, Lcom/transsion/camera/app/manager/OptimizeManager$Holder;->instance:Lcom/transsion/camera/app/manager/OptimizeManager;

    iget-object v3, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/transsion/camera/app/manager/OptimizeManager;->bindGalleryService(Landroid/content/Context;)V

    :cond_163
    if-eq p1, v0, :cond_174

    const/16 v0, 0xd

    if-eq p1, v0, :cond_171

    const/16 v0, 0xe

    if-eq p1, v0, :cond_16e

    :goto_16d
    return-void

    .line 631
    :cond_16e
    iput-boolean v4, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->isCapturing:Z

    return-void

    .line 628
    :cond_171
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->isCapturing:Z

    return-void

    .line 634
    :cond_174
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mUIHandler:Landroid/os/Handler;

    new-instance v0, Lcom/transsion/camera/app/ui/BaseAppUI$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/ui/BaseAppUI$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/app/ui/BaseAppUI;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onBackPressed()Z
    .registers 3

    .line 2745
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mTopBarUIManager:Lcom/transsion/camera/app/ui/manager/TopBarUIManager;

    const/4 v1, 0x1

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->onBackPressed()Z

    move-result v0

    if-nez v0, :cond_5c

    :cond_b
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mScrollConsumer:Lcom/transsion/camera/app/ui/ScrollConsumer;

    .line 2746
    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/ScrollConsumer;->onBackPressed()Z

    move-result v0

    if-nez v0, :cond_5c

    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mInteractiveUIManager:Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;

    if-eqz v0, :cond_1d

    .line 2747
    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->onBackPressed()Z

    move-result v0

    if-nez v0, :cond_5c

    :cond_1d
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mOverlayUIManager:Lcom/transsion/camera/app/ui/manager/OverlayUIManager;

    if-eqz v0, :cond_27

    .line 2748
    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/manager/OverlayUIManager;->onBackPressed(Z)Z

    move-result v0

    if-nez v0, :cond_5c

    :cond_27
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mModePickerUIManager:Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;

    if-eqz v0, :cond_31

    .line 2749
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->onBackPressed()Z

    move-result v0

    if-nez v0, :cond_5c

    :cond_31
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mFloatingShutterUIManager:Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;

    if-eqz v0, :cond_3b

    .line 2750
    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;->onBackPressed()Z

    move-result v0

    if-nez v0, :cond_5c

    :cond_3b
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mSellingPointGuideUIManager:Lcom/transsion/camera/app/ui/manager/SellingPointGuideUIManager;

    if-eqz v0, :cond_45

    .line 2751
    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/manager/SellingPointGuideUIManager;->onBackPressed()Z

    move-result v0

    if-nez v0, :cond_5c

    :cond_45
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mPopSettingUIManager:Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;

    if-eqz v0, :cond_4f

    .line 2752
    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->onBackPressed(Z)Z

    move-result v0

    if-nez v0, :cond_5c

    :cond_4f
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mMasterGuideUIManager:Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;

    if-eqz p0, :cond_5a

    .line 2753
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->onBackPressed()Z

    move-result p0

    if-eqz p0, :cond_5a

    goto :goto_5c

    :cond_5a
    const/4 p0, 0x0

    return p0

    :cond_5c
    :goto_5c
    return v1
.end method

.method public onBackPressedForThumbnailUiManager()Z
    .registers 1

    .line 2763
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mThumbnailUIManager:Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;

    if-eqz p0, :cond_7

    .line 2764
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;->onBackPressed()Z

    :cond_7
    const/4 p0, 0x0

    return p0
.end method

.method public onBatteryStatusChanged(ZII)V
    .registers 5

    .line 3858
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mUIManagers:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_6
    :goto_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;

    if-eqz v0, :cond_6

    .line 3860
    invoke-virtual {v0, p1, p2, p3}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->onBatteryStatusChanged(ZII)V

    goto :goto_6

    :cond_18
    return-void
.end method

.method public onContinuousShotProgress(II)V
    .registers 4

    .line 5022
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mContinuousShotUIManager:Lcom/transsion/camera/app/ui/manager/ContinuousShotUIManager;

    if-nez v0, :cond_c

    .line 5023
    sget-object p0, Lcom/transsion/camera/app/ui/BaseAppUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "mContinuousShotUIManager is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 5026
    :cond_c
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/BaseAppUI;->shutterUINewStyleSupport()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 5027
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mShutterUIManager:Lcom/transsion/camera/app/ui/manager/ShutterUIManager;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->onContinuousShotProgress(II)V

    return-void

    .line 5029
    :cond_18
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mContinuousShotUIManager:Lcom/transsion/camera/app/ui/manager/ContinuousShotUIManager;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/ui/manager/ContinuousShotUIManager;->onContinuousShotProgress(II)V

    return-void
.end method

.method public onContinuousShotStop()V
    .registers 2

    .line 5035
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mContinuousShotUIManager:Lcom/transsion/camera/app/ui/manager/ContinuousShotUIManager;

    if-nez v0, :cond_c

    .line 5036
    sget-object p0, Lcom/transsion/camera/app/ui/BaseAppUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "mContinuousShotUIManager is null"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 5039
    :cond_c
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/BaseAppUI;->shutterUINewStyleSupport()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 5040
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mShutterUIManager:Lcom/transsion/camera/app/ui/manager/ShutterUIManager;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->onContinuousShotStop()V

    return-void

    .line 5042
    :cond_18
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mContinuousShotUIManager:Lcom/transsion/camera/app/ui/manager/ContinuousShotUIManager;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/ContinuousShotUIManager;->onContinuousShotStop()V

    return-void
.end method

.method public onContinuousZoomSwiping(ZI)V
    .registers 5

    .line 1791
    iget v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mCurrentAppUIState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_21

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mInterruptPhysicalKey:Z

    if-nez v0, :cond_21

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mIsPreviewCoverUIShow:Z

    if-eqz v0, :cond_e

    goto :goto_21

    .line 1795
    :cond_e
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mZoomKeyEventCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_20

    .line 1796
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mZoomKeyEventCallbacks:Ljava/util/List;

    new-instance v0, Lcom/transsion/camera/app/ui/BaseAppUI$$ExternalSyntheticLambda4;

    invoke-direct {v0, p1, p2}, Lcom/transsion/camera/app/ui/BaseAppUI$$ExternalSyntheticLambda4;-><init>(ZI)V

    invoke-interface {p0, v0}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    :cond_20
    return-void

    .line 1792
    :cond_21
    :goto_21
    sget-object p1, Lcom/transsion/camera/app/ui/BaseAppUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[onContinuousZoomSwiping,return], mCurrentAppUIState:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mCurrentAppUIState:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", mInterruptPhysicalKey = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mInterruptPhysicalKey:Z

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", mIsPreviewCoverUIShow = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mIsPreviewCoverUIShow:Z

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public onCriticalZoomSwitchSwiping(Z)V
    .registers 4

    .line 1814
    iget v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mCurrentAppUIState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_21

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mInterruptPhysicalKey:Z

    if-nez v0, :cond_21

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mIsPreviewCoverUIShow:Z

    if-eqz v0, :cond_e

    goto :goto_21

    .line 1818
    :cond_e
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mZoomKeyEventCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_20

    .line 1819
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mZoomKeyEventCallbacks:Ljava/util/List;

    new-instance v0, Lcom/transsion/camera/app/ui/BaseAppUI$$ExternalSyntheticLambda9;

    invoke-direct {v0, p1}, Lcom/transsion/camera/app/ui/BaseAppUI$$ExternalSyntheticLambda9;-><init>(Z)V

    invoke-interface {p0, v0}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    :cond_20
    return-void

    .line 1815
    :cond_21
    :goto_21
    sget-object p1, Lcom/transsion/camera/app/ui/BaseAppUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[onCriticalZoomSwitchSwiping,return], mCurrentAppUIState:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mCurrentAppUIState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mInterruptPhysicalKey = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mInterruptPhysicalKey:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mIsPreviewCoverUIShow = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mIsPreviewCoverUIShow:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public onDoubleClickVolumeDown()V
    .registers 4

    .line 3910
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object v0

    const/16 v1, 0x2c

    const-string v2, "double_tap_volume_down_key"

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setClickIconId(ILjava/lang/String;)V

    .line 3911
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/BaseAppUI;->exitAllFragments()V

    .line 3912
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getCameraId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.transsion.camera.feature.mode.underwater.UnderwaterModeEntry"

    invoke-virtual {p0, v0, v1}, Lcom/transsion/camera/app/ui/BaseAppUI;->switchUnderwaterCamera(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onEnterAnimationComplete()V
    .registers 1

    .line 2314
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mPreviewUIManager:Lcom/transsion/camera/app/ui/manager/PreviewUIManager;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/PreviewUIManager;->onEnterAnimationComplete()V

    return-void
.end method

.method public onFloatingShutterButtonMove(II)V
    .registers 5

    .line 2232
    sget-object v0, Lcom/transsion/camera/app/ui/BaseAppUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "onFloatingShutterButtonMove"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 2233
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mFloatingShutterUIManager:Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;

    if-eqz v0, :cond_13

    .line 2234
    invoke-virtual {v0, p1, p2}, Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;->updateFloatingShutterUIPosition(II)V

    .line 2235
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mFloatingShutterUIManager:Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;->onFloatingShutterButtonMove()V

    :cond_13
    return-void
.end method

.method public onGuideFragmentBackPress()Z
    .registers 1

    .line 2758
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mImageryGuideManager:Lcom/transsion/camera/manager/BaseImageryGuideManager;

    if-eqz p0, :cond_c

    invoke-virtual {p0}, Lcom/transsion/camera/manager/BaseImageryGuideManager;->onBackPressed()Z

    move-result p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method public onLeaveAfterSwipeUp()V
    .registers 1

    .line 2241
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mFloatingShutterUIManager:Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;

    if-eqz p0, :cond_7

    .line 2242
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;->onLeaveAfterSwipeUp()V

    :cond_7
    return-void
.end method

.method public onModePanelDistanceChanged(FZ)V
    .registers 4

    .line 5112
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mWideCameraUIManager:Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;

    if-eqz v0, :cond_7

    .line 5113
    invoke-virtual {v0, p1, p2}, Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;->onModePanelDistanceChanged(FZ)V

    .line 5115
    :cond_7
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mOverlayUIManager:Lcom/transsion/camera/app/ui/manager/OverlayUIManager;

    if-eqz p0, :cond_e

    .line 5116
    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/ui/manager/OverlayUIManager;->onModePanelDistanceChanged(FZ)V

    :cond_e
    return-void
.end method

.method public onModePaused()V
    .registers 2

    .line 1034
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mWideCameraUIManager:Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;

    if-eqz v0, :cond_7

    .line 1035
    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;->pause()V

    .line 1038
    :cond_7
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mMasterGuideUIManager:Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;

    if-eqz p0, :cond_e

    .line 1039
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->onModePause()V

    :cond_e
    return-void
.end method

.method public onModeSettingReady()V
    .registers 4

    .line 1045
    sget-object v0, Lcom/transsion/camera/app/ui/BaseAppUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[PreviewPerformance] onModeSettingReady, mIsUIManagerSetuped: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mUIManagerSetup:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mSpecialCameraChange: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mSpecialCameraChange:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1047
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mUIManagerSetup:Z

    if-nez v0, :cond_36

    const/4 v0, 0x1

    .line 1048
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mUIManagerSetup:Z

    .line 1049
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mUIHandler:Landroid/os/Handler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1050
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mUIHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void

    .line 1052
    :cond_36
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mUIHandler:Landroid/os/Handler;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1053
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mUIHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1054
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mUIHandler:Landroid/os/Handler;

    const/16 v1, 0x70

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1055
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mUIHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public onOfflineSwitchFinish(I)V
    .registers 2

    .line 5608
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mPreviewOperator:Lcom/transsion/camera/app/common/preview/IPreviewOperator;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/preview/IPreviewOperator;->onOfflineSwitchFinish()V

    return-void
.end method

.method public onOrientationChanged()V
    .registers 3

    .line 3822
    iget v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mOrientation:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_9

    const/4 v1, 0x0

    .line 3823
    invoke-virtual {p0, v0, v1}, Lcom/transsion/camera/app/ui/BaseAppUI;->onOrientationChanged(IZ)V

    :cond_9
    return-void
.end method

.method public onOrientationChanged(I)V
    .registers 5

    .line 3829
    sget-object v0, Lcom/transsion/camera/app/ui/BaseAppUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onOrientationChanged,orientation:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",mOrientation:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mOrientation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 3830
    iget v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mOrientation:I

    if-eq v0, p1, :cond_28

    const/4 v0, 0x1

    .line 3831
    invoke-virtual {p0, p1, v0}, Lcom/transsion/camera/app/ui/BaseAppUI;->onOrientationChanged(IZ)V

    :cond_28
    return-void
.end method

.method public onOrientationChanged(IZ)V
    .registers 6

    .line 3836
    iput p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mOrientation:I

    .line 3837
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mGpuAlgorithmManager:Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager;->onOrientationChanged(I)V

    .line 3838
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mUIManagerSetup:Z

    if-eqz v0, :cond_3c

    .line 3839
    iget v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mOrientation:I

    iget-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenFormType()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/transsion/camera/app/ui/BaseAppUI;->updateBottomBarLayout(IIZ)V

    .line 3840
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mUIManagers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1d
    :goto_1d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_35

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/common/manager/AbstractViewManager;

    if-eqz v1, :cond_1d

    .line 3841
    invoke-virtual {v1}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->isOrientationChangedSpecial()Z

    move-result v2

    if-nez v2, :cond_1d

    .line 3842
    invoke-virtual {v1, p1, p2}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->onOrientationChanged(IZ)V

    goto :goto_1d

    .line 3845
    :cond_35
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mThermalThrottleUIManager:Lcom/transsion/camera/app/ui/manager/ThermalThrottleUIManager;

    if-eqz p0, :cond_3c

    .line 3846
    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->onOrientationChanged(IZ)V

    :cond_3c
    return-void
.end method

.method public onPopSettingHideViewClick()V
    .registers 1

    .line 905
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mPopSettingUIManager:Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;

    if-eqz p0, :cond_7

    .line 906
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->hidePopSettings()V

    :cond_7
    return-void
.end method

.method public onPopSettingShowViewClick(ZZ)V
    .registers 6

    .line 897
    sget-object v0, Lcom/transsion/camera/app/ui/BaseAppUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPopSettingShowViewClick: mPopSettingUIManager = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mPopSettingUIManager:Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 898
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mPopSettingUIManager:Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;

    if-eqz p0, :cond_1f

    .line 899
    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->showPopSettings(ZZ)V

    :cond_1f
    return-void
.end method

.method public onPreviewClick()Z
    .registers 3

    .line 2786
    sget-object v0, Lcom/transsion/camera/app/ui/BaseAppUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "[onPreviewClick]"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->v(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 2787
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mTopBarUIManager:Lcom/transsion/camera/app/ui/manager/TopBarUIManager;

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->onBackPressed()Z

    move-result v0

    if-nez v0, :cond_44

    :cond_11
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mScrollConsumer:Lcom/transsion/camera/app/ui/ScrollConsumer;

    .line 2788
    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/ScrollConsumer;->onBackPressed()Z

    move-result v0

    if-nez v0, :cond_44

    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mInteractiveUIManager:Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;

    if-eqz v0, :cond_23

    .line 2789
    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->onPreviewClick()Z

    move-result v0

    if-nez v0, :cond_44

    :cond_23
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mOverlayUIManager:Lcom/transsion/camera/app/ui/manager/OverlayUIManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_2e

    .line 2790
    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/manager/OverlayUIManager;->onBackPressed(Z)Z

    move-result v0

    if-nez v0, :cond_44

    :cond_2e
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mPopSettingUIManager:Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;

    if-eqz v0, :cond_38

    .line 2791
    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->onBackPressed(Z)Z

    move-result v0

    if-nez v0, :cond_44

    :cond_38
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mFloatingShutterUIManager:Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;

    if-eqz p0, :cond_43

    .line 2792
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;->onBackPressed()Z

    move-result p0

    if-eqz p0, :cond_43

    goto :goto_44

    :cond_43
    return v1

    :cond_44
    :goto_44
    const/4 p0, 0x1

    return p0
.end method

.method public onSatCameraChanged(I)V
    .registers 2

    .line 2619
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mSwitchSatCameraListener:Lcom/transsion/camera/app/common/IAppUIListener$ISwitchSatCameraListener;

    if-eqz p0, :cond_7

    .line 2620
    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/IAppUIListener$ISwitchSatCameraListener;->onSatCameraChanged(I)V

    :cond_7
    return-void
.end method

.method public onSettingOptionClick(Ljava/lang/String;)V
    .registers 5

    .line 883
    sget-object v0, Lcom/transsion/camera/app/ui/BaseAppUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSettingOptionClick: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 884
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mInteractiveUIManager:Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;

    if-eqz v0, :cond_1d

    .line 885
    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->onSettingOptionClick(Ljava/lang/String;)V

    .line 887
    :cond_1d
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mMasterGuideUIManager:Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;

    if-eqz v0, :cond_24

    .line 888
    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->onLeftSideItemClick()V

    .line 890
    :cond_24
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mModeUIControl:Lcom/transsion/camera/app/common/IAppUIControl$IModeUIControl;

    if-eqz p0, :cond_2b

    .line 891
    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/IAppUIControl$IModeUIControl;->onSettingOptionClick(Ljava/lang/String;)V

    :cond_2b
    return-void
.end method

.method public onShutterClick(II)V
    .registers 5

    .line 1700
    iget v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mCurrentAppUIState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1e

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mInterruptPhysicalKey:Z

    if-nez v0, :cond_1e

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mInZoomChanging:Z

    if-nez v0, :cond_1e

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mIsPreviewCoverUIShow:Z

    if-nez v0, :cond_1e

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mIsSellingPointVideoPlaying:Z

    if-eqz v0, :cond_16

    goto :goto_1e

    .line 1712
    :cond_16
    iput p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mCurShutterPriority:I

    .line 1713
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mShutterUIManager:Lcom/transsion/camera/app/ui/manager/ShutterUIManager;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->triggerShutterClick(II)V

    return-void

    .line 1705
    :cond_1e
    :goto_1e
    sget-object p1, Lcom/transsion/camera/app/ui/BaseAppUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[onShutterClick] interrupted, mCurrentAppUIState = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mCurrentAppUIState:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", mInterruptPhysicalKey = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mInterruptPhysicalKey:Z

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", mInZoomChanging = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mInZoomChanging:Z

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", mIsPreviewCoverUIShow ="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mIsPreviewCoverUIShow:Z

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", mIsSellingPointVideoPlaying = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mIsSellingPointVideoPlaying:Z

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public onShutterLongClickEnd()V
    .registers 2

    .line 1732
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mInterruptPhysicalKey:Z

    if-nez v0, :cond_17

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mIsSellingPointVideoPlaying:Z

    if-eqz v0, :cond_9

    goto :goto_17

    .line 1735
    :cond_9
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mCShotByPhysicalKey:Z

    if-eqz v0, :cond_12

    .line 1736
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mShutterUIManager:Lcom/transsion/camera/app/ui/manager/ShutterUIManager;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->hideCShotNumber()V

    .line 1738
    :cond_12
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mShutterUIManager:Lcom/transsion/camera/app/ui/manager/ShutterUIManager;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->triggerShutterUp()V

    :cond_17
    :goto_17
    return-void
.end method

.method public onShutterLongClickStart(II)V
    .registers 4

    .line 1723
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mInterruptPhysicalKey:Z

    if-nez v0, :cond_11

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mIsSellingPointVideoPlaying:Z

    if-eqz v0, :cond_9

    goto :goto_11

    :cond_9
    const/4 v0, 0x1

    .line 1726
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mCShotByPhysicalKey:Z

    .line 1727
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mShutterUIManager:Lcom/transsion/camera/app/ui/manager/ShutterUIManager;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->triggerShutterLongClick(II)V

    :cond_11
    :goto_11
    return-void
.end method

.method public onSwitchMode(Ljava/lang/String;)V
    .registers 2

    .line 5846
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mPreviewUIManager:Lcom/transsion/camera/app/ui/manager/PreviewUIManager;

    if-eqz p0, :cond_7

    .line 5847
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/manager/PreviewUIManager;->onSwitchMode(Ljava/lang/String;)V

    :cond_7
    return-void
.end method

.method public onThermalChanged(I)V
    .registers 2

    return-void
.end method

.method public onThermalThrottleChanged(I)V
    .registers 4

    .line 3805
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mThermalThrottleUIManager:Lcom/transsion/camera/app/ui/manager/ThermalThrottleUIManager;

    if-eqz v0, :cond_24

    const/4 v1, 0x3

    if-ne p1, v1, :cond_21

    .line 3807
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mIsVideoRecording:Z

    if-eqz v0, :cond_24

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mVideoThermalWarningSupport:Z

    if-eqz v0, :cond_24

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/BaseAppUI;->getCurrentMode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.transsion.camera.feature.mode.video.VideoModeEntry"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 3808
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mThermalThrottleUIManager:Lcom/transsion/camera/app/ui/manager/ThermalThrottleUIManager;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/manager/ThermalThrottleUIManager;->onVideoThermalWarning(I)V

    return-void

    .line 3811
    :cond_21
    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/ui/manager/ThermalThrottleUIManager;->onThermalThrottleReached(I)V

    :cond_24
    return-void
.end method

.method public onTopChanged(Z)V
    .registers 2

    .line 2165
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mPreviewUIManager:Lcom/transsion/camera/app/ui/manager/PreviewUIManager;

    if-eqz p0, :cond_7

    .line 2166
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/manager/PreviewUIManager;->onTopChanged(Z)V

    :cond_7
    return-void
.end method

.method protected onUIManagerReadyFoldFlip()V
    .registers 1

    return-void
.end method

.method public onUserInteraction()V
    .registers 3

    .line 3921
    sget-object v0, Lcom/transsion/camera/app/ui/BaseAppUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "onUserInteraction"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 3922
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mUserInteractionListener:Lcom/transsion/camera/app/common/IAppUIListener$IUserInteractionListener;

    if-eqz p0, :cond_e

    .line 3923
    invoke-interface {p0}, Lcom/transsion/camera/app/common/IAppUIListener$IUserInteractionListener;->onUserInteraction()V

    :cond_e
    return-void
.end method

.method public onZoomClick(Z)V
    .registers 4

    .line 1748
    iget v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mCurrentAppUIState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1d

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mInterruptPhysicalKey:Z

    if-eqz v0, :cond_a

    goto :goto_1d

    .line 1752
    :cond_a
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mZoomKeyEventCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1c

    .line 1753
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mZoomKeyEventCallbacks:Ljava/util/List;

    new-instance v0, Lcom/transsion/camera/app/ui/BaseAppUI$$ExternalSyntheticLambda11;

    invoke-direct {v0, p1}, Lcom/transsion/camera/app/ui/BaseAppUI$$ExternalSyntheticLambda11;-><init>(Z)V

    invoke-interface {p0, v0}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    :cond_1c
    return-void

    .line 1749
    :cond_1d
    :goto_1d
    sget-object p1, Lcom/transsion/camera/app/ui/BaseAppUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[onZoomClick,return], mCurrentAppUIState:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mCurrentAppUIState:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public onZoomScaleEnd(Z)V
    .registers 4

    .line 1781
    iget v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mCurrentAppUIState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1c

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mInterruptPhysicalKey:Z

    if-eqz v0, :cond_a

    goto :goto_1c

    .line 1784
    :cond_a
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mZoomKeyEventCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1c

    .line 1785
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mZoomKeyEventCallbacks:Ljava/util/List;

    new-instance v0, Lcom/transsion/camera/app/ui/BaseAppUI$$ExternalSyntheticLambda12;

    invoke-direct {v0, p1}, Lcom/transsion/camera/app/ui/BaseAppUI$$ExternalSyntheticLambda12;-><init>(Z)V

    invoke-interface {p0, v0}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    :cond_1c
    :goto_1c
    return-void
.end method

.method public onZoomScaleStart(Z)V
    .registers 4

    .line 1759
    iget v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mCurrentAppUIState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1d

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mInterruptPhysicalKey:Z

    if-eqz v0, :cond_a

    goto :goto_1d

    .line 1763
    :cond_a
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mZoomKeyEventCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1c

    .line 1764
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mZoomKeyEventCallbacks:Ljava/util/List;

    new-instance v0, Lcom/transsion/camera/app/ui/BaseAppUI$$ExternalSyntheticLambda6;

    invoke-direct {v0, p1}, Lcom/transsion/camera/app/ui/BaseAppUI$$ExternalSyntheticLambda6;-><init>(Z)V

    invoke-interface {p0, v0}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    :cond_1c
    return-void

    .line 1760
    :cond_1d
    :goto_1d
    sget-object p1, Lcom/transsion/camera/app/ui/BaseAppUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[onZoomScaleStart,return], mCurrentAppUIState:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mCurrentAppUIState:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public onZoomScaling(Z)V
    .registers 5

    .line 1770
    iget v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mCurrentAppUIState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1d

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mInterruptPhysicalKey:Z

    if-eqz v0, :cond_a

    goto :goto_1d

    .line 1774
    :cond_a
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mZoomKeyEventCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1c

    .line 1775
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mZoomKeyEventCallbacks:Ljava/util/List;

    new-instance v0, Lcom/transsion/camera/app/ui/BaseAppUI$$ExternalSyntheticLambda10;

    invoke-direct {v0, p1}, Lcom/transsion/camera/app/ui/BaseAppUI$$ExternalSyntheticLambda10;-><init>(Z)V

    invoke-interface {p0, v0}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    :cond_1c
    return-void

    .line 1771
    :cond_1d
    :goto_1d
    sget-object v0, Lcom/transsion/camera/app/ui/BaseAppUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onZoomScaling] isIncrease:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", mCurrentAppUIState:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mCurrentAppUIState:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public onZoomSwipeEnd()V
    .registers 4

    .line 1802
    iget v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mCurrentAppUIState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_21

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mInterruptPhysicalKey:Z

    if-nez v0, :cond_21

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mIsPreviewCoverUIShow:Z

    if-eqz v0, :cond_e

    goto :goto_21

    .line 1806
    :cond_e
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mZoomKeyEventCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_20

    .line 1807
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mZoomKeyEventCallbacks:Ljava/util/List;

    new-instance v0, Lcom/transsion/camera/app/ui/BaseAppUI$$ExternalSyntheticLambda8;

    invoke-direct {v0}, Lcom/transsion/camera/app/ui/BaseAppUI$$ExternalSyntheticLambda8;-><init>()V

    invoke-interface {p0, v0}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    :cond_20
    return-void

    .line 1803
    :cond_21
    :goto_21
    sget-object v0, Lcom/transsion/camera/app/ui/BaseAppUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onZoomSwipeEnd,return], mCurrentAppUIState:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mCurrentAppUIState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mInterruptPhysicalKey = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mInterruptPhysicalKey:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mIsPreviewCoverUIShow = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mIsPreviewCoverUIShow:Z

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public pause(Z)V
    .registers 7

    const/4 v0, 0x0

    .line 2076
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mPreviewReadyForCurrentSession:Z

    .line 2077
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mHideShutter:Z

    .line 2078
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mShutterAnimatorFlag:Z

    const/16 v1, 0x1c

    .line 2079
    invoke-virtual {p0, v1}, Lcom/transsion/camera/app/ui/BaseAppUI;->notifyRawActionToAppUI(I)V

    .line 2080
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mInZoomChanging:Z

    .line 2081
    iget-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mLockObj:Ljava/lang/Object;

    monitor-enter v1

    const/4 v2, 0x1

    .line 2082
    :try_start_12
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mIsPaused:Z

    .line 2083
    iget-object v3, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mUIHandler:Landroid/os/Handler;

    const/16 v4, 0x69

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 2084
    monitor-exit v1
    :try_end_1c
    .catchall {:try_start_12 .. :try_end_1c} :catchall_d5

    .line 2085
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->isCapturing:Z

    .line 2086
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mIsVideoRecording:Z

    .line 2087
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mSkipInteractiveUpdate:Z

    .line 2088
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mInterruptPhysicalKey:Z

    .line 2089
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mCsViewAnimationStart:Z

    .line 2090
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mShutterUIProcessing:Z

    .line 2091
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mIsShoulderKeyLongPress:Z

    .line 2092
    iget-boolean v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mCShotByPhysicalKey:Z

    if-eqz v1, :cond_35

    .line 2093
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mCShotByPhysicalKey:Z

    .line 2094
    iget-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mShutterUIManager:Lcom/transsion/camera/app/ui/manager/ShutterUIManager;

    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->hideCShotNumber()V

    :cond_35
    const/4 v1, -0x1

    .line 2096
    iput v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mRecordingOrientation:I

    .line 2097
    iput v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mShutterProcessingOrientation:I

    .line 2098
    iget-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mHintUIManager:Lcom/transsion/camera/app/ui/manager/HintUIManager;

    if-eqz v1, :cond_41

    .line 2099
    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/manager/HintUIManager;->pause()V

    .line 2101
    :cond_41
    iget-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mToastUIManager:Lcom/transsion/camera/app/ui/manager/ToastUIManager;

    if-eqz v1, :cond_48

    .line 2102
    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/manager/ToastUIManager;->pause()V

    .line 2104
    :cond_48
    iget-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mFloatingShutterUIManager:Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;

    if-eqz v1, :cond_4f

    .line 2105
    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;->pause()V

    .line 2107
    :cond_4f
    iget-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mInteractiveUIManager:Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;

    if-eqz v1, :cond_56

    .line 2108
    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->pause()V

    .line 2110
    :cond_56
    iget-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mShutterUIManager:Lcom/transsion/camera/app/ui/manager/ShutterUIManager;

    if-eqz v1, :cond_5d

    .line 2111
    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->pause()V

    .line 2113
    :cond_5d
    iget-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mWideCameraUIManager:Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;

    if-eqz v1, :cond_64

    .line 2114
    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;->pause()V

    .line 2116
    :cond_64
    iget-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mModePickerUIManager:Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;

    if-eqz v1, :cond_6b

    .line 2117
    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;->pause()V

    .line 2119
    :cond_6b
    iget-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mTopBarUIManager:Lcom/transsion/camera/app/ui/manager/TopBarUIManager;

    if-eqz v1, :cond_77

    .line 2120
    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->pause()V

    .line 2121
    iget-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mTopBarUIManager:Lcom/transsion/camera/app/ui/manager/TopBarUIManager;

    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->dismissPopup()Z

    .line 2123
    :cond_77
    iget-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mPopSettingUIManager:Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;

    if-eqz v1, :cond_83

    .line 2124
    invoke-virtual {v1}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->pause()V

    .line 2125
    iget-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mPopSettingUIManager:Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;

    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->dismissPopup()Z

    .line 2127
    :cond_83
    iget-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mSellingPointGuideUIManager:Lcom/transsion/camera/app/ui/manager/SellingPointGuideUIManager;

    if-eqz v1, :cond_8a

    .line 2128
    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/manager/SellingPointGuideUIManager;->pause()V

    .line 2130
    :cond_8a
    iget-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mPreviewGestureScrollAdapter:Lcom/transsion/camera/app/ui/PreviewGestureScrollAdapter;

    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/PreviewGestureScrollAdapter;->onPause()V

    .line 2132
    iget-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mThermalThrottleUIManager:Lcom/transsion/camera/app/ui/manager/ThermalThrottleUIManager;

    if-eqz v1, :cond_96

    .line 2133
    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/manager/ThermalThrottleUIManager;->pause()V

    .line 2135
    :cond_96
    iget-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mImageryGuideManager:Lcom/transsion/camera/manager/BaseImageryGuideManager;

    if-eqz v1, :cond_9d

    .line 2136
    invoke-virtual {v1}, Lcom/transsion/camera/manager/BaseImageryGuideManager;->pause()V

    :cond_9d
    const/4 v1, 0x0

    .line 2138
    iput-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mVoiceParameters:[Z

    .line 2139
    invoke-virtual {p0, v0, v0, v0, v0}, Lcom/transsion/camera/app/ui/BaseAppUI;->setStartParameters(ZZZI)V

    .line 2140
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/BaseAppUI;->pauseFoldFlip()V

    .line 2141
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/transsion/camera/R$bool;->need_close_aal_dre_func:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_b8

    const/4 v0, 0x6

    .line 2142
    invoke-static {v0}, Lcom/transsion/camera/utils/aal/AalUtil;->setCurrentAALFunction(I)V

    :cond_b8
    const/16 v0, 0x6e

    .line 2144
    invoke-static {v1, v0}, Lcom/transsion/camera/utils/CameraUtil;->hookDisturbStatus(Landroid/content/Context;I)V

    if-eqz p1, :cond_ca

    .line 2145
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/transsion/camera/app/manager/OptimizeManager;->isAiGallery(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_ca

    .line 2146
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mSkipUnbindOnPause:Z

    goto :goto_d1

    .line 2148
    :cond_ca
    sget-object p1, Lcom/transsion/camera/app/manager/OptimizeManager$Holder;->instance:Lcom/transsion/camera/app/manager/OptimizeManager;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p0}, Lcom/transsion/camera/app/manager/OptimizeManager;->unBindGalleryService(Landroid/content/Context;)V

    .line 2150
    :goto_d1
    invoke-static {}, Lcom/transsion/camera/utils/MultiTouchManager;->resetState()V

    return-void

    :catchall_d5
    move-exception p0

    .line 2084
    :try_start_d6
    monitor-exit v1
    :try_end_d7
    .catchall {:try_start_d6 .. :try_end_d7} :catchall_d5

    throw p0
.end method

.method protected pauseFoldFlip()V
    .registers 1

    return-void
.end method

.method public pausePreviewUI(Z)V
    .registers 4

    .line 2160
    sget-object v0, Lcom/transsion/camera/app/ui/BaseAppUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "pausePreviewUI"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 2161
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mPreviewUIManager:Lcom/transsion/camera/app/ui/manager/PreviewUIManager;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/manager/PreviewUIManager;->pause(Z)V

    return-void
.end method

.method public performTouchEvent(Landroid/view/MotionEvent;)V
    .registers 2

    .line 2583
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mModePickerUIManager:Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;

    if-eqz p0, :cond_7

    .line 2584
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;->performTouchEvent(Landroid/view/MotionEvent;)V

    :cond_7
    return-void
.end method

.method public playLivePhotoLottieAnimation()V
    .registers 1

    .line 3779
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mTopBarUIManager:Lcom/transsion/camera/app/ui/manager/TopBarUIManager;

    if-eqz p0, :cond_7

    .line 3780
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->playLivePhotoLottieAnimation()V

    :cond_7
    return-void
.end method

.method public playThumbLottieAnimation()V
    .registers 1

    .line 3786
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mThumbnailUIManager:Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;

    if-eqz p0, :cond_7

    .line 3787
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;->playThumbLottieAnimation()V

    :cond_7
    return-void
.end method

.method public pocketScreen()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public queryCameraModeState(Ljava/lang/String;)Lcom/transsion/camera/app/common/IAppUI$UIState;
    .registers 2

    .line 5853
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mModeChangeListener:Lcom/transsion/camera/app/common/IAppUIListener$IModeChangedListener;

    if-nez p0, :cond_7

    sget-object p0, Lcom/transsion/camera/app/common/IAppUI$UIState;->UNKNOWN:Lcom/transsion/camera/app/common/IAppUI$UIState;

    return-object p0

    .line 5854
    :cond_7
    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/IAppUIListener$IModeChangedListener;->queryCameraModeState(Ljava/lang/String;)Lcom/transsion/camera/app/common/IAppUI$UIState;

    move-result-object p0

    return-object p0
.end method

.method public querySettingUIState(Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/IAppUI$UIState;
    .registers 3

    .line 5840
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mInteractiveUIManager:Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;

    if-nez p0, :cond_7

    sget-object p0, Lcom/transsion/camera/app/common/IAppUI$UIState;->UNKNOWN:Lcom/transsion/camera/app/common/IAppUI$UIState;

    return-object p0

    .line 5841
    :cond_7
    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->queryState(Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/IAppUI$UIState;

    move-result-object p0

    return-object p0
.end method

.method public registerHintStateListener(Lcom/transsion/camera/app/common/IAppUIControl$HintStateChangeListener;)V
    .registers 2

    .line 1444
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mHintUIManager:Lcom/transsion/camera/app/ui/manager/HintUIManager;

    if-eqz p0, :cond_7

    .line 1445
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/manager/HintUIManager;->registerHintStateListener(Lcom/transsion/camera/app/common/IAppUIControl$HintStateChangeListener;)V

    :cond_7
    return-void
.end method

.method public registerPreviewGestureListener(Lcom/transsion/camera/app/common/IAppUIListener$IPreviewGestureListener;I)V
    .registers 3

    .line 844
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mPreviewGestureManager:Lcom/transsion/camera/app/ui/gesture/PreviewGestureManager;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/ui/gesture/PreviewGestureManager;->registerGestureListener(Lcom/transsion/camera/app/common/IAppUIListener$IPreviewGestureListener;I)V

    return-void
.end method

.method public registerPreviewRectListener(Lcom/transsion/camera/app/common/IAppUIListener$IPreviewRectListener;)V
    .registers 2

    .line 854
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mPreviewUIManager:Lcom/transsion/camera/app/ui/manager/PreviewUIManager;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/manager/PreviewUIManager;->registerPreviewRectListener(Lcom/transsion/camera/app/common/IAppUIListener$IPreviewRectListener;)V

    return-void
.end method

.method public registerPrivacyCallback(Lcom/transsion/camera/app/common/IPrivacyCallback;)V
    .registers 5

    if-eqz p1, :cond_1d

    .line 5936
    sget-object v0, Lcom/transsion/camera/app/ui/BaseAppUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerPrivacyCallback: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 5937
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mPrivacyCallbacks:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1d
    return-void
.end method

.method public registerScreenFormListener(Lcom/transsion/camera/app/common/IScreenFormControl;)V
    .registers 2

    return-void
.end method

.method public registerShutterListener(Lcom/transsion/camera/app/common/IAppUIListener$IShutterResponseListener;I)V
    .registers 3

    .line 1251
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mShutterUIManager:Lcom/transsion/camera/app/ui/manager/ShutterUIManager;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->registerOnShutterListener(Lcom/transsion/camera/app/common/IAppUIListener$IShutterResponseListener;I)V

    return-void
.end method

.method public registerZoomKeyEventCallback(Lcom/transsion/camera/app/common/IAppUIControl$IZoomKeyEventCallback;)V
    .registers 3

    .line 1688
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mZoomKeyEventCallbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 1689
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mZoomKeyEventCallbacks:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_d
    return-void
.end method

.method public resetMoreModeToNormal()V
    .registers 1

    .line 2644
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mModePickerUIManager:Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;

    if-eqz p0, :cond_7

    .line 2645
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;->resetMoreModeToNormal()V

    :cond_7
    return-void
.end method

.method public resetTBScrollerView()V
    .registers 1

    .line 4286
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mPopSettingUIManager:Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;

    if-eqz p0, :cond_7

    .line 4287
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->resetTBScrollerView()V

    :cond_7
    return-void
.end method

.method public resetTwinkleGuide()V
    .registers 1

    .line 1466
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mHintUIManager:Lcom/transsion/camera/app/ui/manager/HintUIManager;

    if-eqz p0, :cond_7

    .line 1467
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/HintUIManager;->resetTwinkleGuide()V

    :cond_7
    return-void
.end method

.method public restoreCurrentModeByFacing(I)V
    .registers 2

    .line 5198
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mModePickerUIManager:Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;

    if-eqz p0, :cond_7

    .line 5199
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;->restoreCurrentModeByFacing(I)V

    :cond_7
    return-void
.end method

.method public resume()V
    .registers 2

    const/4 v0, 0x0

    .line 2252
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mIsPaused:Z

    .line 2254
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->isCapturing:Z

    .line 2255
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mAlreadyGotoGoPro:Z

    .line 2256
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mIsShoulderKeyLongPress:Z

    .line 2257
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/BaseAppUI;->resumeRootLayout()V

    const/16 v0, 0x20

    .line 2258
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/BaseAppUI;->notifyRawActionToAppUI(I)V

    .line 2259
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mPreviewUIManager:Lcom/transsion/camera/app/ui/manager/PreviewUIManager;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/manager/PreviewUIManager;->resume()V

    .line 2260
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mHintUIManager:Lcom/transsion/camera/app/ui/manager/HintUIManager;

    if-eqz v0, :cond_1d

    .line 2261
    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/manager/HintUIManager;->resume()V

    .line 2263
    :cond_1d
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mToastUIManager:Lcom/transsion/camera/app/ui/manager/ToastUIManager;

    if-eqz v0, :cond_24

    .line 2264
    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/manager/ToastUIManager;->resume()V

    .line 2266
    :cond_24
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mFloatingShutterUIManager:Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;

    if-eqz v0, :cond_2b

    .line 2267
    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;->resume()V

    .line 2269
    :cond_2b
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mInteractiveUIManager:Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;

    if-eqz v0, :cond_32

    .line 2270
    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->resume()V

    .line 2272
    :cond_32
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mShutterUIManager:Lcom/transsion/camera/app/ui/manager/ShutterUIManager;

    if-eqz v0, :cond_39

    .line 2273
    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->resume()V

    .line 2275
    :cond_39
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mModePickerUIManager:Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;

    if-eqz v0, :cond_40

    .line 2276
    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;->resume()V

    .line 2278
    :cond_40
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mTopBarUIManager:Lcom/transsion/camera/app/ui/manager/TopBarUIManager;

    if-eqz v0, :cond_47

    .line 2279
    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->resume()V

    .line 2281
    :cond_47
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mPopSettingUIManager:Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;

    if-eqz v0, :cond_4e

    .line 2282
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->resume()V

    .line 2284
    :cond_4e
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mSellingPointGuideUIManager:Lcom/transsion/camera/app/ui/manager/SellingPointGuideUIManager;

    if-eqz v0, :cond_55

    .line 2285
    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/manager/SellingPointGuideUIManager;->resume()V

    .line 2287
    :cond_55
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mImageryGuideManager:Lcom/transsion/camera/manager/BaseImageryGuideManager;

    if-eqz v0, :cond_5c

    .line 2288
    invoke-virtual {v0}, Lcom/transsion/camera/manager/BaseImageryGuideManager;->resume()V

    .line 2290
    :cond_5c
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/transsion/camera/R$bool;->need_close_aal_dre_func:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    if-eqz p0, :cond_6e

    const/4 p0, 0x2

    .line 2291
    invoke-static {p0}, Lcom/transsion/camera/utils/aal/AalUtil;->setCurrentAALFunction(I)V

    :cond_6e
    return-void
.end method

.method public setAeAfLock(Lcom/transsion/camera/app/common/mode/IAeAfLock;)V
    .registers 2

    .line 5240
    iput-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mAeAfLock:Lcom/transsion/camera/app/common/mode/IAeAfLock;

    return-void
.end method

.method public setAuxPreviewLensSupport(ZLjava/lang/String;)V
    .registers 3

    .line 753
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mPreviewUIManager:Lcom/transsion/camera/app/ui/manager/PreviewUIManager;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/ui/manager/PreviewUIManager;->setAuxPreviewLensSupport(ZLjava/lang/String;)V

    return-void
.end method

.method public setAuxPreviewModeSupport(ZLjava/lang/String;)V
    .registers 3

    .line 5269
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mPreviewUIManager:Lcom/transsion/camera/app/ui/manager/PreviewUIManager;

    if-eqz p0, :cond_7

    .line 5270
    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/ui/manager/PreviewUIManager;->setAuxPreviewModeSupport(ZLjava/lang/String;)V

    :cond_7
    return-void
.end method

.method public setAuxPreviewSize(II)V
    .registers 3

    .line 743
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mPreviewUIManager:Lcom/transsion/camera/app/ui/manager/PreviewUIManager;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/ui/manager/PreviewUIManager;->setAuxPreviewSize(II)V

    return-void
.end method

.method public setBackgroundPreviewModeSupport(Z)V
    .registers 2

    .line 5280
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mPreviewUIManager:Lcom/transsion/camera/app/ui/manager/PreviewUIManager;

    if-eqz p0, :cond_7

    .line 5281
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/manager/PreviewUIManager;->setBackgroundPreviewModeSupport(Z)V

    :cond_7
    return-void
.end method

.method public setBackgroundPreviewSize(II)V
    .registers 3

    .line 748
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mPreviewUIManager:Lcom/transsion/camera/app/ui/manager/PreviewUIManager;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/ui/manager/PreviewUIManager;->setBackgroundPreviewSize(II)V

    return-void
.end method

.method public setCameraReConnectListener(Lcom/transsion/camera/app/common/IAppUIListener$ICameraReConnectListener;)V
    .registers 2

    return-void
.end method

.method public setCameraSwitchListener(Lcom/transsion/camera/app/common/IAppUIListener$ICameraSwitchListener;)V
    .registers 2

    .line 1266
    iput-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mCameraSwitchListener:Lcom/transsion/camera/app/common/IAppUIListener$ICameraSwitchListener;

    return-void
.end method

.method public setContinuousShotEnd(Z)V
    .registers 2

    .line 5978
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mShutterUIManager:Lcom/transsion/camera/app/ui/manager/ShutterUIManager;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->setContinuousShotEnd(Z)V

    return-void
.end method

.method public setEnableHintUI(Z)V
    .registers 5

    .line 1629
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mHintUIManager:Lcom/transsion/camera/app/ui/manager/HintUIManager;

    if-eqz v0, :cond_1f

    .line 1630
    sget-object v0, Lcom/transsion/camera/app/ui/BaseAppUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "If you turn on or off more mode,disabled hint ui or not,the value is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1631
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mHintUIManager:Lcom/transsion/camera/app/ui/manager/HintUIManager;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/manager/HintUIManager;->setEnableHintUI(Z)V

    :cond_1f
    return-void
.end method

.method public setGotoActivityListener(Lcom/transsion/camera/app/common/IAppUIListener$IGotoActivityListener;)V
    .registers 2

    .line 712
    iput-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mGotoActivityListener:Lcom/transsion/camera/app/common/IAppUIListener$IGotoActivityListener;

    return-void
.end method

.method public setModeChangedListener(Lcom/transsion/camera/app/common/IAppUIListener$IModeChangedListener;)V
    .registers 2

    .line 839
    iput-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mModeChangeListener:Lcom/transsion/camera/app/common/IAppUIListener$IModeChangedListener;

    return-void
.end method

.method public setModeDataInfoListener(Lcom/transsion/camera/app/common/IAppUIListener$IModeDataInfoListener;)V
    .registers 2

    .line 1554
    iput-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mModeDataInfoListener:Lcom/transsion/camera/app/common/IAppUIListener$IModeDataInfoListener;

    return-void
.end method

.method public setModeFeatureConfig(Lcom/transsion/camera/app/common/IModeFeatureConfig;)V
    .registers 2

    .line 5961
    iput-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mModeFeatureConfig:Lcom/transsion/camera/app/common/IModeFeatureConfig;

    .line 5962
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mOverlayUIManager:Lcom/transsion/camera/app/ui/manager/OverlayUIManager;

    if-eqz p0, :cond_9

    .line 5963
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/manager/OverlayUIManager;->setModeFeatureConfig(Lcom/transsion/camera/app/common/IModeFeatureConfig;)V

    :cond_9
    return-void
.end method

.method public setModeFeatureSupport(Lcom/transsion/camera/app/common/mode/IModeFeatureSupport;)V
    .registers 2

    .line 1261
    iput-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mModeFeatureSupport:Lcom/transsion/camera/app/common/mode/IModeFeatureSupport;

    return-void
.end method

.method public setModeList(Ljava/util/List;Lcom/transsion/camera/app/common/mode/IModeSwitchPolicy;)V
    .registers 5

    .line 827
    invoke-interface {p2}, Lcom/transsion/camera/app/common/mode/IModeSwitchPolicy;->getBackModes()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mSupportedBackModes:[Ljava/lang/String;

    .line 828
    invoke-interface {p2}, Lcom/transsion/camera/app/common/mode/IModeSwitchPolicy;->getFrontModes()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mSupportedFrontModes:[Ljava/lang/String;

    .line 829
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mModePickerUIManager:Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;

    if-eqz v0, :cond_17

    .line 830
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/BaseAppUI;->isSecureCamera()Z

    move-result v1

    invoke-virtual {v0, p1, p2, v1}, Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;->setModeList(Ljava/util/List;Lcom/transsion/camera/app/common/mode/IModeSwitchPolicy;Z)V

    .line 832
    :cond_17
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mSellingPointGuideUIManager:Lcom/transsion/camera/app/ui/manager/SellingPointGuideUIManager;

    if-eqz p0, :cond_1e

    .line 833
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/manager/SellingPointGuideUIManager;->setAllModeResources(Ljava/util/List;)V

    :cond_1e
    return-void
.end method

.method public setModeName(Ljava/lang/String;)V
    .registers 5

    .line 4650
    sget-object v0, Lcom/transsion/camera/app/ui/BaseAppUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setModeName, modeName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 4651
    iput-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mCurrentModeName:Ljava/lang/String;

    return-void
.end method

.method public setModeNotifyCameraOperateActionCallBack(Lcom/transsion/camera/app/common/mode/IModeNotifyCameraOperateActionCallback;)V
    .registers 2

    .line 4697
    iput-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->modeNotifyCameraOperateActionCallback:Lcom/transsion/camera/app/common/mode/IModeNotifyCameraOperateActionCallback;

    return-void
.end method

.method public setModePickerSink(Z)V
    .registers 2

    .line 4742
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mIsModePickerSink:Z

    return-void
.end method

.method public setModeUIControl(Lcom/transsion/camera/app/common/IAppUIControl$IModeUIControl;)V
    .registers 2

    .line 4408
    iput-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mModeUIControl:Lcom/transsion/camera/app/common/IAppUIControl$IModeUIControl;

    return-void
.end method

.method public setNeedPopSettingEntryAnimation(Z)V
    .registers 2

    .line 736
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mTopBarUIManager:Lcom/transsion/camera/app/ui/manager/TopBarUIManager;

    if-eqz p0, :cond_7

    .line 737
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->setNeedPopSettingEntryAnimation(Z)V

    :cond_7
    return-void
.end method

.method public setPopSettingContainerVisible(I)V
    .registers 2

    .line 912
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mPopSettingUIManager:Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;

    if-eqz p0, :cond_7

    .line 913
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->setPopSettingContainerVisible(I)V

    :cond_7
    return-void
.end method

.method public setPreviewSize(II)V
    .registers 4

    .line 717
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    if-eqz v0, :cond_22

    .line 718
    invoke-virtual {v0, p1, p2}, Lcom/transsion/camera/app/ui/ScreenManager;->updatePreviewSize(II)V

    .line 722
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mPreviewUIManager:Lcom/transsion/camera/app/ui/manager/PreviewUIManager;

    invoke-virtual {v0, p1, p2}, Lcom/transsion/camera/app/ui/manager/PreviewUIManager;->setPreviewSize(II)V

    .line 723
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mTopBarUIManager:Lcom/transsion/camera/app/ui/manager/TopBarUIManager;

    if-eqz v0, :cond_13

    .line 724
    invoke-virtual {v0, p1, p2}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->setPreviewSize(II)V

    .line 726
    :cond_13
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mRingScreenLightUIManager:Lcom/transsion/camera/app/ui/manager/RingScreenLightUIManager;

    if-eqz v0, :cond_1a

    .line 727
    invoke-virtual {v0, p1, p2}, Lcom/transsion/camera/app/ui/manager/RingScreenLightUIManager;->setPreviewSize(II)V

    .line 729
    :cond_1a
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mModePickerUIManager:Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;

    if-eqz p0, :cond_21

    .line 730
    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;->setPreviewSize(II)V

    :cond_21
    return-void

    .line 720
    :cond_22
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "must init mScreenManager"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setRecentKeyMonitor(Lcom/transsion/camera/app/common/physicalkey/AbstractKeyMonitor;)V
    .registers 2

    .line 5982
    iput-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mRecentKeyMonitor:Lcom/transsion/camera/app/common/physicalkey/AbstractKeyMonitor;

    return-void
.end method

.method public setRestartPreviewListener(Lcom/transsion/camera/app/common/IAppUIListener$IRestartPreviewListener;)V
    .registers 2

    .line 1310
    iput-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mRestartPreviewListener:Lcom/transsion/camera/app/common/IAppUIListener$IRestartPreviewListener;

    return-void
.end method

.method public setSecureCamera(Z)V
    .registers 2

    .line 4349
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mSecureCamera:Z

    return-void
.end method

.method public setSellingPointVideoPlaying(Z)V
    .registers 2

    .line 5974
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mIsSellingPointVideoPlaying:Z

    return-void
.end method

.method public setSeparateCaptureNumber(I)V
    .registers 2

    .line 4661
    iput p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mSeparateCaptureNumber:I

    return-void
.end method

.method public setSettingManager()V
    .registers 4

    .line 2344
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getStatusMonitor()Lcom/transsion/camera/app/common/setting/StatusMonitor;

    move-result-object v0

    .line 2345
    iget-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mShutterUIManager:Lcom/transsion/camera/app/ui/manager/ShutterUIManager;

    if-eqz v1, :cond_f

    .line 2346
    iget-object v2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-virtual {v1, v2}, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->setSettingController(Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)V

    .line 2348
    :cond_f
    iget-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mTopBarUIManager:Lcom/transsion/camera/app/ui/manager/TopBarUIManager;

    if-eqz v1, :cond_18

    .line 2349
    iget-object v2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-virtual {v1, v2}, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->setSettingController(Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)V

    .line 2351
    :cond_18
    iget-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mPopSettingUIManager:Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;

    if-eqz v1, :cond_21

    .line 2352
    iget-object v2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-virtual {v1, v2}, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->setSettingController(Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)V

    .line 2354
    :cond_21
    iget-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mSellingPointGuideUIManager:Lcom/transsion/camera/app/ui/manager/SellingPointGuideUIManager;

    if-eqz v1, :cond_2a

    .line 2355
    iget-object v2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-virtual {v1, v2}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->setSettingController(Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)V

    .line 2357
    :cond_2a
    iget-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mHelpGuideUIManager:Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;

    if-eqz v1, :cond_33

    .line 2358
    iget-object v2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-virtual {v1, v2}, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;->setSettingController(Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)V

    .line 2360
    :cond_33
    iget-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mWideCameraUIManager:Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;

    if-eqz v1, :cond_3c

    .line 2361
    iget-object v2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-virtual {v1, v2}, Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;->setSettingController(Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)V

    .line 2363
    :cond_3c
    iget-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mOverlayUIManager:Lcom/transsion/camera/app/ui/manager/OverlayUIManager;

    if-eqz v1, :cond_45

    .line 2364
    iget-object v2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-virtual {v1, v2}, Lcom/transsion/camera/app/ui/manager/OverlayUIManager;->setSettingController(Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)V

    .line 2366
    :cond_45
    iget-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mInteractiveUIManager:Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;

    if-eqz v1, :cond_4e

    .line 2367
    iget-object v2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-virtual {v1, v2}, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->setSettingController(Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)V

    .line 2369
    :cond_4e
    iget-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mFloatingShutterUIManager:Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;

    if-eqz v1, :cond_57

    .line 2370
    iget-object v2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-virtual {v1, v2}, Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;->setSettingController(Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)V

    .line 2372
    :cond_57
    iget-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mModePickerUIManager:Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;

    if-eqz v1, :cond_60

    .line 2373
    iget-object v2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-virtual {v1, v2}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->setSettingController(Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)V

    .line 2375
    :cond_60
    iget-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mCameraSwitcherUIManager:Lcom/transsion/camera/app/ui/manager/CameraSwitcherUIManager;

    if-eqz v1, :cond_69

    .line 2376
    iget-object v2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-virtual {v1, v2}, Lcom/transsion/camera/app/ui/manager/CameraSwitcherUIManager;->setSettingController(Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)V

    .line 2378
    :cond_69
    iget-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mPreviewUIManager:Lcom/transsion/camera/app/ui/manager/PreviewUIManager;

    if-eqz v1, :cond_72

    .line 2379
    iget-object v2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-virtual {v1, v2}, Lcom/transsion/camera/app/ui/manager/PreviewUIManager;->setSettingController(Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)V

    .line 2381
    :cond_72
    iget-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mMasterGuideUIManager:Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;

    if-eqz v1, :cond_7b

    .line 2382
    iget-object v2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-virtual {v1, v2}, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->setSettingController(Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)V

    .line 2384
    :cond_7b
    iget-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mThumbnailUIManager:Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;

    if-eqz v1, :cond_84

    .line 2385
    iget-object v2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-virtual {v1, v2}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->setSettingController(Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)V

    .line 2387
    :cond_84
    const-string v1, "key_start_self_timer"

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mSelfTimerResponder:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    .line 2388
    const-string v1, "screen_form_state"

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mScreenFormResponder:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    .line 2389
    const-string v1, "ring_screen_light_state"

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mRingScreenLightResponder:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    .line 2390
    const-string v1, "continuous_shot_light_state"

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mContinuousShotLightResponder:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    .line 2391
    const-string v1, "key_live_photo_state"

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mLivePhotoResponder:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    return-void
.end method

.method public setSettingStatusListener(Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;)V
    .registers 3

    .line 2402
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mOverlayUIManager:Lcom/transsion/camera/app/ui/manager/OverlayUIManager;

    if-eqz v0, :cond_7

    .line 2403
    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/ui/manager/OverlayUIManager;->setSettingStatusListener(Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;)V

    .line 2405
    :cond_7
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mInteractiveUIManager:Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;

    if-eqz v0, :cond_e

    .line 2406
    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->setSettingStatusListener(Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;)V

    .line 2408
    :cond_e
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mEditWaterMarkManager:Lcom/transsion/camera/app/ui/manager/EditWaterMarkManager;

    if-eqz v0, :cond_15

    .line 2409
    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/ui/manager/EditWaterMarkManager;->setSettingStatusListener(Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;)V

    .line 2411
    :cond_15
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mModePickerUIManager:Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;

    if-eqz v0, :cond_1c

    .line 2412
    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;->setSettingStatusListener(Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;)V

    .line 2414
    :cond_1c
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mProWatermarkManager:Lcom/transsion/camera/app/ui/manager/ProWatermarkManager;

    if-eqz p0, :cond_23

    .line 2415
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/manager/ProWatermarkManager;->setSettingStatusListener(Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;)V

    :cond_23
    return-void
.end method

.method public setShoulderKeyLongPressState(Z)V
    .registers 2

    .line 3877
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mIsShoulderKeyLongPress:Z

    return-void
.end method

.method public setShutterEnabled(Z)V
    .registers 2

    .line 5015
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mShutterUIManager:Lcom/transsion/camera/app/ui/manager/ShutterUIManager;

    if-eqz p0, :cond_7

    .line 5016
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->setEnable(Z)V

    :cond_7
    return-void
.end method

.method public setShutterTypeSelftimerOff(I)V
    .registers 2

    .line 1347
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mShutterUIManager:Lcom/transsion/camera/app/ui/manager/ShutterUIManager;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->setShutterTypeSelftimerOff(I)V

    return-void
.end method

.method public setShutterTypeSelftimerOn(I)V
    .registers 2

    .line 1357
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mShutterUIManager:Lcom/transsion/camera/app/ui/manager/ShutterUIManager;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->setShutterTypeSelftimerOn(I)V

    return-void
.end method

.method public setStartParameters(ZZZI)V
    .registers 5

    .line 2200
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mVideoIntent:Z

    .line 2201
    iput-boolean p2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mPhotoIntent:Z

    const/4 p3, 0x0

    .line 2202
    iput-boolean p3, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mOpenOnly:Z

    .line 2203
    iput p4, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mDelayTime:I

    const/4 p4, 0x3

    .line 2204
    new-array p4, p4, [Z

    iput-object p4, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mVoiceParameters:[Z

    .line 2205
    aput-boolean p1, p4, p3

    const/4 p0, 0x1

    .line 2206
    aput-boolean p2, p4, p0

    const/4 p0, 0x2

    .line 2207
    aput-boolean p3, p4, p0

    return-void
.end method

.method public setStorageSettingProvider(Lcom/transsion/camera/app/common/storage/AppStorageManager;)V
    .registers 2

    .line 2395
    iput-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mAppStorageManager:Lcom/transsion/camera/app/common/storage/AppStorageManager;

    .line 2396
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mSettingFragmentManager:Lcom/transsion/camera/app/ui/manager/SettingFragmentManager;

    if-eqz p0, :cond_9

    .line 2397
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/manager/SettingFragmentManager;->setStorageSettingProvider(Lcom/transsion/camera/app/common/storage/IStorage$IStorageSettingProvider;)V

    :cond_9
    return-void
.end method

.method public setSurfaceStatusListener(Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener;)V
    .registers 2

    .line 813
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mPreviewUIManager:Lcom/transsion/camera/app/ui/manager/PreviewUIManager;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/manager/PreviewUIManager;->setSurfaceStatusListener(Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener;)V

    return-void
.end method

.method public setSwitchBlurCameraListener(Lcom/transsion/camera/app/common/IAppUIListener$ISwitchBlurCameraListener;)V
    .registers 2

    .line 1286
    iput-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mSwitchBlurCameraListener:Lcom/transsion/camera/app/common/IAppUIListener$ISwitchBlurCameraListener;

    return-void
.end method

.method public setSwitchDualAndMainCameraListener(Lcom/transsion/camera/app/common/IAppUIListener$ISwitchDualAndMainCameraListener;)V
    .registers 2

    .line 1305
    iput-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mSwitchDualAndMainCameraListener:Lcom/transsion/camera/app/common/IAppUIListener$ISwitchDualAndMainCameraListener;

    return-void
.end method

.method public setSwitchDualCamBWCameraListener(Lcom/transsion/camera/app/common/IAppUIListener$ISwitchDualCamBWCameraListener;)V
    .registers 2

    .line 1291
    iput-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mSwitchDualCamBWListener:Lcom/transsion/camera/app/common/IAppUIListener$ISwitchDualCamBWCameraListener;

    return-void
.end method

.method public setSwitchPeriscopeCameraListener(Lcom/transsion/camera/app/common/IAppUIListener$ISwitchPeriscopeCameraListener;)V
    .registers 2

    .line 1281
    iput-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mSwitchPeriscopeCameraListener:Lcom/transsion/camera/app/common/IAppUIListener$ISwitchPeriscopeCameraListener;

    return-void
.end method

.method public setSwitchSatCameraListener(Lcom/transsion/camera/app/common/IAppUIListener$ISwitchSatCameraListener;)V
    .registers 2

    .line 1296
    iput-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mSwitchSatCameraListener:Lcom/transsion/camera/app/common/IAppUIListener$ISwitchSatCameraListener;

    return-void
.end method

.method public setSwitchTeleCameraListener(Lcom/transsion/camera/app/common/IAppUIListener$ISwitchLogicalCameraListener;)V
    .registers 2

    .line 1276
    iput-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mSwitchTeleCameraListener:Lcom/transsion/camera/app/common/IAppUIListener$ISwitchLogicalCameraListener;

    return-void
.end method

.method public setSwitchWideCameraListener(Lcom/transsion/camera/app/common/IAppUIListener$ISwitchWideCameraListener;)V
    .registers 2

    .line 1271
    iput-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mSwitchWideCameraListener:Lcom/transsion/camera/app/common/IAppUIListener$ISwitchWideCameraListener;

    return-void
.end method

.method public setThumbnail(Landroid/graphics/Bitmap;)V
    .registers 2

    .line 5992
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mThumbnailUIManager:Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;

    if-eqz p0, :cond_7

    .line 5993
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;->setThumbnail(Landroid/graphics/Bitmap;)V

    :cond_7
    return-void
.end method

.method public setThumbnailClickable(Z)V
    .registers 2

    .line 871
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mThumbnailUIManager:Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;

    if-eqz p0, :cond_7

    .line 872
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;->setThumbnailClickable(Z)V

    :cond_7
    return-void
.end method

.method public setThumbnailListener(Lcom/transsion/camera/app/common/IAppUIListener$IThumbnailListener;)V
    .registers 4

    .line 864
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mThumbnailUIManager:Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;

    if-eqz v0, :cond_c

    .line 865
    new-instance v1, Lcom/transsion/camera/app/ui/BaseAppUI$ThumbnailListenerWrap;

    invoke-direct {v1, p0, p1}, Lcom/transsion/camera/app/ui/BaseAppUI$ThumbnailListenerWrap;-><init>(Lcom/transsion/camera/app/ui/BaseAppUI;Lcom/transsion/camera/app/common/IAppUIListener$IThumbnailListener;)V

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;->setThumbnailListener(Lcom/transsion/camera/app/common/IAppUIListener$IThumbnailListener;)V

    :cond_c
    return-void
.end method

.method public setThumbnailTransitionManager(Lcom/transsion/camera/app/common/thumbnailtransition/IThumbnailTransition;)V
    .registers 2

    .line 878
    iput-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mThumbnailTransitionManager:Lcom/transsion/camera/app/common/thumbnailtransition/IThumbnailTransition;

    return-void
.end method

.method public setTreasureBoxBackViewVisible(I)V
    .registers 2

    .line 919
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mPopSettingUIManager:Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;

    if-eqz p0, :cond_7

    .line 920
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->setTreasureBoxBackViewVisible(I)V

    :cond_7
    return-void
.end method

.method public setUserInteractionListener(Lcom/transsion/camera/app/common/IAppUIListener$IUserInteractionListener;)V
    .registers 2

    .line 4362
    iput-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mUserInteractionListener:Lcom/transsion/camera/app/common/IAppUIListener$IUserInteractionListener;

    return-void
.end method

.method public setVideoPowerSavingListener(Lcom/transsion/camera/app/common/IAppUIListener$VideoPowerSavingListener;)V
    .registers 2

    .line 4367
    iput-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mVideoPowerSavingListener:Lcom/transsion/camera/app/common/IAppUIListener$VideoPowerSavingListener;

    return-void
.end method

.method public setVideoPowerSavingUIVisible(Z)V
    .registers 2

    .line 4371
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mVideoPowerSavingListener:Lcom/transsion/camera/app/common/IAppUIListener$VideoPowerSavingListener;

    if-eqz p0, :cond_7

    .line 4372
    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/IAppUIListener$VideoPowerSavingListener;->setVideoPowerSavingUIVisible(Z)V

    :cond_7
    return-void
.end method

.method public setVideoThermalWaringSupport(Z)V
    .registers 2

    .line 1426
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mVideoThermalWarningSupport:Z

    return-void
.end method

.method public setVoiceInteraction(Z)V
    .registers 5

    .line 4376
    sget-object v0, Lcom/transsion/camera/app/ui/BaseAppUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "voiceInteraction: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 4377
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mVoiceInteraction:Z

    return-void
.end method

.method public setVolumeIntercept(Z)V
    .registers 2

    .line 4391
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mIntercept:Z

    return-void
.end method

.method public shouldExitCameraOnBackPressed()Z
    .registers 1

    .line 2778
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mModePickerUIManager:Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;

    if-nez p0, :cond_6

    const/4 p0, 0x1

    return p0

    .line 2781
    :cond_6
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;->shouldExitCameraOnBackPressed()Z

    move-result p0

    return p0
.end method

.method public showCSNotSupportHint(Lcom/transsion/camera/app/common/ui/HintInfo;Ljava/lang/String;Z)V
    .registers 5

    if-eqz p2, :cond_4d

    .line 1559
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mHintUIManager:Lcom/transsion/camera/app/ui/manager/HintUIManager;

    if-nez v0, :cond_7

    goto :goto_4d

    .line 1563
    :cond_7
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 1564
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/BaseAppUI;->shutterUINewStyleSupport()Z

    move-result p2

    if-eqz p2, :cond_1f

    .line 1565
    iget-object p2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mContext:Landroid/content/Context;

    sget p3, Lcom/transsion/camera/R$string;->continuous_shot_and_quick_video_not_supported:I

    invoke-virtual {p2, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/transsion/camera/app/common/ui/HintInfo;->setMessage(Ljava/lang/String;)V

    goto :goto_44

    .line 1567
    :cond_1f
    iget-object p2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mContext:Landroid/content/Context;

    sget p3, Lcom/transsion/camera/R$string;->continuous_shot_not_supported:I

    invoke-virtual {p2, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/transsion/camera/app/common/ui/HintInfo;->setMessage(Ljava/lang/String;)V

    goto :goto_44

    :cond_2b
    if-eqz p3, :cond_41

    .line 1571
    iget-object p3, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mContext:Landroid/content/Context;

    sget v0, Lcom/transsion/camera/R$string;->some_feature_continuous_shot_not_supported:I

    invoke-virtual {p3, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-static {p3, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/transsion/camera/app/common/ui/HintInfo;->setMessage(Ljava/lang/String;)V

    goto :goto_44

    .line 1573
    :cond_41
    invoke-virtual {p1, p2}, Lcom/transsion/camera/app/common/ui/HintInfo;->setMessage(Ljava/lang/String;)V

    .line 1576
    :goto_44
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/BaseAppUI;->notifyCSNotSupport()V

    .line 1577
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mHintUIManager:Lcom/transsion/camera/app/ui/manager/HintUIManager;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/manager/HintUIManager;->showHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    return-void

    .line 1560
    :cond_4d
    :goto_4d
    sget-object p0, Lcom/transsion/camera/app/ui/BaseAppUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "don\'t show hint when msg or mHintUIManager is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public showCustomPreviewCover(Landroid/graphics/Bitmap;)V
    .registers 4

    .line 773
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mUIHandler:Landroid/os/Handler;

    const/16 v1, 0x6e

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 774
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mUIHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public showFloatingShutterUI(IIZZ)V
    .registers 7

    .line 2217
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mFloatingShutterUIManager:Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;

    if-eqz v0, :cond_d

    const/4 v1, 0x0

    .line 2218
    invoke-virtual {v0, v1, p3, p4}, Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;->showFloatingShutterUI(ZZZ)V

    .line 2219
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mFloatingShutterUIManager:Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;->updateFloatingShutterUIPosition(II)V

    :cond_d
    return-void
.end method

.method public showFrontDualFlashUI()V
    .registers 3

    .line 1480
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mHintUIManager:Lcom/transsion/camera/app/ui/manager/HintUIManager;

    if-eqz v0, :cond_8

    const/4 v1, 0x1

    .line 1481
    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/manager/HintUIManager;->updateFrontDualFlashUIState(Z)V

    :cond_8
    const/16 v0, 0xaa

    .line 1483
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/BaseAppUI;->notifyRawActionToAppUI(I)V

    return-void
.end method

.method public showHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V
    .registers 3

    if-nez p1, :cond_a

    .line 1432
    sget-object p0, Lcom/transsion/camera/app/ui/BaseAppUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "showHint: info is null, ignore"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 1435
    :cond_a
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mHintUIManager:Lcom/transsion/camera/app/ui/manager/HintUIManager;

    if-eqz v0, :cond_12

    .line 1436
    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/ui/manager/HintUIManager;->showHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    return-void

    .line 1438
    :cond_12
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mPendingHints:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public showLensDirtyHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V
    .registers 3

    .line 1504
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mHintUIManager:Lcom/transsion/camera/app/ui/manager/HintUIManager;

    if-eqz v0, :cond_8

    .line 1505
    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/ui/manager/HintUIManager;->showHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    return-void

    :cond_8
    if-eqz p1, :cond_c

    .line 1508
    iput-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mOnceLensDirtyHint:Lcom/transsion/camera/app/common/ui/HintInfo;

    :cond_c
    return-void
.end method

.method public showLowPowerHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V
    .registers 3

    .line 1515
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mHintUIManager:Lcom/transsion/camera/app/ui/manager/HintUIManager;

    if-eqz v0, :cond_8

    .line 1516
    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/ui/manager/HintUIManager;->showLowPowerHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    return-void

    :cond_8
    if-eqz p1, :cond_c

    .line 1519
    iput-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mOnceLowPowerHint:Lcom/transsion/camera/app/common/ui/HintInfo;

    :cond_c
    return-void
.end method

.method public showMasterGuide(Lcom/transsion/camera/app/common/MasterGuideUIBean;)V
    .registers 2

    .line 5921
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mMasterGuideUIManager:Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;

    if-eqz p0, :cond_7

    .line 5922
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->showMasterGuide(Lcom/transsion/camera/app/common/MasterGuideUIBean;)V

    :cond_7
    return-void
.end method

.method public showOrHideHintLayout(Z)V
    .registers 2

    .line 1596
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mHintRootLayout:Landroid/view/ViewGroup;

    if-eqz p0, :cond_10

    if-eqz p1, :cond_b

    const/4 p1, 0x0

    .line 1598
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_b
    const/16 p1, 0x8

    .line 1600
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_10
    return-void
.end method

.method public showOrHideModePickerFromUnderwater(Z)V
    .registers 2

    .line 4991
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mModePickerUIManager:Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;

    if-eqz p0, :cond_7

    .line 4992
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;->showOrHideModePickerFromUnderwater(Z)V

    :cond_7
    return-void
.end method

.method public showOrHideModePickerRootUI(ZZZ)V
    .registers 5

    .line 4984
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mModePickerUIManager:Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;

    if-eqz p0, :cond_8

    const/4 v0, 0x0

    .line 4985
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;->showOrHideModePickerRootUI(ZZZZ)V

    :cond_8
    return-void
.end method

.method public showOrHideShutterPanel(ZZIZ)V
    .registers 15

    .line 4881
    sget-object v0, Lcom/transsion/camera/app/ui/BaseAppUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[showOrHideShutterPanel] shouldShow: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", withAnim: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", translation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", needModePickerChange = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-eqz p1, :cond_40

    .line 4883
    const-string v1, "com.transsion.camera.feature.mode.more.MoreModeEntry"

    iget-object v2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mCurrentModeName:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_40

    .line 4884
    const-string p0, "MoreMode do not show shutterPanel!"

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 4888
    :cond_40
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mShutterPanelRootView:Landroid/view/ViewGroup;

    if-nez v0, :cond_45

    return-void

    .line 4891
    :cond_45
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mShutterAnimatorFlag:Z

    .line 4892
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mShutterAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz p1, :cond_56

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_56

    .line 4893
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mShutterAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_56
    const/4 p1, 0x1

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez p2, :cond_a5

    .line 4896
    iget-boolean p2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mShutterAnimatorFlag:Z

    if-eqz p2, :cond_82

    .line 4897
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mShutterPanelRootView:Landroid/view/ViewGroup;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 4898
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mShutterPanelRootView:Landroid/view/ViewGroup;

    invoke-virtual {p1, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 4899
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mShutterPanelRootView:Landroid/view/ViewGroup;

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 4900
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mModePickerUIManager:Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;

    if-eqz p1, :cond_7e

    if-eqz p4, :cond_7e

    .line 4901
    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;->showModeRegion()V

    .line 4902
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mModePickerUIManager:Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;->setModeOpaque()V

    .line 4904
    :cond_7e
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mShutterAnimatorFlag:Z

    goto/16 :goto_14f

    .line 4906
    :cond_82
    iget-object p2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mShutterPanelRootView:Landroid/view/ViewGroup;

    const/4 v0, 0x4

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 4907
    iget-object p2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mShutterPanelRootView:Landroid/view/ViewGroup;

    int-to-float p3, p3

    invoke-virtual {p2, p3}, Landroid/view/View;->setTranslationY(F)V

    .line 4908
    iget-object p2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mShutterPanelRootView:Landroid/view/ViewGroup;

    invoke-virtual {p2, v2}, Landroid/view/View;->setAlpha(F)V

    .line 4909
    iget-object p2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mModePickerUIManager:Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;

    if-eqz p2, :cond_a1

    if-eqz p4, :cond_a1

    .line 4910
    invoke-virtual {p2}, Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;->hideModeRegion()V

    .line 4911
    iget-object p2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mModePickerUIManager:Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;

    invoke-virtual {p2}, Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;->setModeUnOpaque()V

    .line 4913
    :cond_a1
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mShutterAnimatorFlag:Z

    goto/16 :goto_14f

    .line 4916
    :cond_a5
    new-instance p2, Landroid/animation/AnimatorSet;

    invoke-direct {p2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object p2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mShutterAnimatorSet:Landroid/animation/AnimatorSet;

    .line 4919
    new-instance p2, Landroid/animation/ObjectAnimator;

    invoke-direct {p2}, Landroid/animation/ObjectAnimator;-><init>()V

    .line 4920
    iget-boolean v3, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mShutterAnimatorFlag:Z

    const-string/jumbo v4, "translationY"

    const-string v5, "alpha"

    const/16 v6, 0x12c

    const-wide/16 v7, 0x12c

    if-eqz v3, :cond_ea

    .line 4921
    iget-object p3, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mShutterPanelRootView:Landroid/view/ViewGroup;

    invoke-virtual {p3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 4922
    iget-object p3, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mModePickerUIManager:Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;

    if-eqz p3, :cond_cb

    .line 4923
    invoke-virtual {p3, v6}, Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;->modePickerShowAlphaAnimator(I)Landroid/animation/ObjectAnimator;

    move-result-object p2

    .line 4925
    :cond_cb
    iget-object p3, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mShutterPanelRootView:Landroid/view/ViewGroup;

    new-array v3, p1, [F

    aput v0, v3, v1

    invoke-static {p3, v5, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p3

    .line 4927
    invoke-virtual {p3, v7, v8}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object p3

    .line 4928
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mShutterPanelRootView:Landroid/view/ViewGroup;

    new-array v3, p1, [F

    aput v2, v3, v1

    invoke-static {v0, v4, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 4930
    invoke-virtual {v0, v7, v8}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 4931
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mShutterAnimatorFlag:Z

    goto :goto_11e

    .line 4933
    :cond_ea
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mRootView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v0

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_fc

    .line 4934
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mModePickerUIManager:Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;

    if-eqz v0, :cond_fc

    .line 4935
    invoke-virtual {v0, v6}, Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;->modePickerHideAlphaAnimator(I)Landroid/animation/ObjectAnimator;

    move-result-object p2

    .line 4938
    :cond_fc
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mShutterPanelRootView:Landroid/view/ViewGroup;

    new-array v3, p1, [F

    aput v2, v3, v1

    invoke-static {v0, v5, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 4940
    invoke-virtual {v0, v7, v8}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 4941
    iget-object v2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mShutterPanelRootView:Landroid/view/ViewGroup;

    int-to-float p3, p3

    new-array v3, p1, [F

    aput p3, v3, v1

    invoke-static {v2, v4, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p3

    .line 4943
    invoke-virtual {p3, v7, v8}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object p3

    .line 4944
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mShutterAnimatorFlag:Z

    move-object v9, v0

    move-object v0, p3

    move-object p3, v9

    .line 4946
    :goto_11e
    iget-object v2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mShutterAnimatorSet:Landroid/animation/AnimatorSet;

    iget-object v3, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mPathInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const/4 v2, 0x2

    if-eqz p4, :cond_13f

    if-eqz p2, :cond_13f

    .line 4947
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getValues()[Landroid/animation/PropertyValuesHolder;

    move-result-object p4

    if-eqz p4, :cond_13f

    .line 4948
    iget-object p4, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mShutterAnimatorSet:Landroid/animation/AnimatorSet;

    const/4 v3, 0x3

    new-array v3, v3, [Landroid/animation/Animator;

    aput-object p3, v3, v1

    aput-object v0, v3, p1

    aput-object p2, v3, v2

    invoke-virtual {p4, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto :goto_14a

    .line 4950
    :cond_13f
    iget-object p2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mShutterAnimatorSet:Landroid/animation/AnimatorSet;

    new-array p4, v2, [Landroid/animation/Animator;

    aput-object p3, p4, v1

    aput-object v0, p4, p1

    invoke-virtual {p2, p4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 4952
    :goto_14a
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mShutterAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    .line 4954
    :goto_14f
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mShutterAnimatorFlag:Z

    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mHideShutter:Z

    return-void
.end method

.method public showOrHideSwitcher(Z)V
    .registers 4

    .line 5258
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mCameraSwitcherUIManager:Lcom/transsion/camera/app/ui/manager/CameraSwitcherUIManager;

    if-nez v0, :cond_5

    return-void

    :cond_5
    xor-int/lit8 v1, p1, 0x1

    .line 5261
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mShouldHideSwitcher:Z

    .line 5262
    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/ui/manager/CameraSwitcherUIManager;->showOrHide(Z)V

    return-void
.end method

.method protected showOrHideSystemUI()V
    .registers 1

    return-void
.end method

.method public showOrHideTopAndBottomView(Z)V
    .registers 5

    .line 5305
    sget-object v0, Lcom/transsion/camera/app/ui/BaseAppUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showOrHideTopAndBottomView isShow:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 5306
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mShutterPanelRootView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_38

    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mBottomBarRootView:Landroid/view/View;

    if-eqz v0, :cond_38

    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mTopBarUIManager:Lcom/transsion/camera/app/ui/manager/TopBarUIManager;

    if-eqz v0, :cond_38

    if-nez p1, :cond_2f

    .line 5309
    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->hide()V

    .line 5310
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mBottomBarRootView:Landroid/view/View;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 5312
    :cond_2f
    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->show()V

    .line 5313
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mBottomBarRootView:Landroid/view/View;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_38
    return-void
.end method

.method public showPopItem()V
    .registers 1

    .line 926
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mPopSettingUIManager:Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;

    if-eqz p0, :cond_7

    .line 927
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->showPopItem()V

    :cond_7
    return-void
.end method

.method public showPopSettingView()V
    .registers 1

    .line 5594
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mPopSettingUIManager:Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;

    if-eqz p0, :cond_7

    .line 5595
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->showPopSettingUI()V

    :cond_7
    return-void
.end method

.method public showShoulderTips()V
    .registers 6

    .line 3882
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mIsShoulderTipsShow:Z

    if-eqz v0, :cond_5

    goto :goto_3c

    :cond_5
    const/4 v0, 0x0

    .line 3885
    const-string v1, "debug.shoulder.tips.count"

    invoke-static {v1, v0}, Lcom/transsion/camera/utils/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x3

    if-ge v0, v2, :cond_3c

    .line 3887
    iget-object v2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mContext:Landroid/content/Context;

    sget v3, Lcom/transsion/camera/R$string;->gt_trigger_tips_text:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 3888
    iget-object v3, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mContext:Landroid/content/Context;

    sget v4, Lcom/transsion/camera/R$string;->gt_trigger_tips_button:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 3889
    iget-object v4, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mContext:Landroid/content/Context;

    invoke-static {v4, v2}, Lcom/transsion/widgetslib/dialog/OSSnackbar;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;)Lcom/transsion/widgetslib/dialog/OSSnackbar;

    move-result-object v2

    new-instance v4, Lcom/transsion/camera/app/ui/BaseAppUI$4;

    invoke-direct {v4, p0}, Lcom/transsion/camera/app/ui/BaseAppUI$4;-><init>(Lcom/transsion/camera/app/ui/BaseAppUI;)V

    invoke-virtual {v2, v3, v4}, Lcom/transsion/widgetslib/dialog/OSSnackbar;->setAction(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)Lcom/transsion/widgetslib/dialog/OSSnackbar;

    move-result-object v2

    .line 3895
    invoke-virtual {v2}, Lcom/transsion/widgetslib/dialog/OSSnackbar;->show()V

    const/4 v2, 0x1

    .line 3896
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mIsShoulderTipsShow:Z

    add-int/2addr v0, v2

    .line 3897
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/transsion/camera/utils/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3c
    :goto_3c
    return-void
.end method

.method public showToast(Lcom/transsion/camera/app/common/ui/HintInfo;)V
    .registers 2

    .line 1526
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mToastUIManager:Lcom/transsion/camera/app/ui/manager/ToastUIManager;

    if-eqz p0, :cond_7

    .line 1527
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/manager/ToastUIManager;->showToast(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    :cond_7
    return-void
.end method

.method public showToast(Lcom/transsion/camera/app/common/ui/HintInfo;I)V
    .registers 3

    .line 1533
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mToastUIManager:Lcom/transsion/camera/app/ui/manager/ToastUIManager;

    if-eqz p0, :cond_7

    .line 1534
    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/ui/manager/ToastUIManager;->showToast(Lcom/transsion/camera/app/common/ui/HintInfo;I)V

    :cond_7
    return-void
.end method

.method public showWideCamera()V
    .registers 1

    .line 5077
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mWideCameraUIManager:Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;

    if-eqz p0, :cond_7

    .line 5078
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;->showWideCamera()V

    :cond_7
    return-void
.end method

.method protected shutterUINewStyleSupport()Z
    .registers 1

    .line 547
    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mShutterUINewStyleSupport:Z

    return p0
.end method

.method public shutterUIProcessing()Z
    .registers 2

    .line 2605
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mShutterUIManager:Lcom/transsion/camera/app/ui/manager/ShutterUIManager;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->getCShotButtonViewVisible()I

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mShutterUIManager:Lcom/transsion/camera/app/ui/manager/ShutterUIManager;

    .line 2606
    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->getQVButtonViewVisible()I

    move-result v0

    if-nez v0, :cond_11

    goto :goto_14

    .line 2609
    :cond_11
    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mShutterUIProcessing:Z

    return p0

    :cond_14
    :goto_14
    const/4 p0, 0x1

    return p0
.end method

.method public sinkUI(ZIZ)V
    .registers 21

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p3

    .line 4757
    sget-object v3, Lcom/transsion/camera/app/ui/BaseAppUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[showOrHideModePicker] sink:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", mIsModePickerSink:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, v0, Lcom/transsion/camera/app/ui/BaseAppUI;->mIsModePickerSink:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", mUISinkModeChange:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, v0, Lcom/transsion/camera/app/ui/BaseAppUI;->mUISinkModeChange:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " , anim:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 4760
    iget-boolean v4, v0, Lcom/transsion/camera/app/ui/BaseAppUI;->mIsModePickerSink:Z

    const/4 v5, 0x0

    if-ne v4, v1, :cond_40

    .line 4761
    iput-boolean v5, v0, Lcom/transsion/camera/app/ui/BaseAppUI;->mUISinkModeChange:Z

    return-void

    .line 4764
    :cond_40
    iput-boolean v1, v0, Lcom/transsion/camera/app/ui/BaseAppUI;->mIsModePickerSink:Z

    .line 4765
    iget-object v4, v0, Lcom/transsion/camera/app/ui/BaseAppUI;->mModePickerUIManager:Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;

    if-eqz v4, :cond_4f

    iget-boolean v6, v0, Lcom/transsion/camera/app/ui/BaseAppUI;->isCapturing:Z

    if-nez v6, :cond_4f

    xor-int/lit8 v6, v1, 0x1

    .line 4766
    invoke-virtual {v4, v6}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->setEnable(Z)V

    .line 4769
    :cond_4f
    iget-object v4, v0, Lcom/transsion/camera/app/ui/BaseAppUI;->mSinkAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v4, :cond_5e

    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v4

    if-eqz v4, :cond_5e

    .line 4770
    iget-object v4, v0, Lcom/transsion/camera/app/ui/BaseAppUI;->mSinkAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_5e
    xor-int/lit8 v4, v1, 0x1

    if-eqz v1, :cond_67

    .line 4774
    invoke-direct {v0}, Lcom/transsion/camera/app/ui/BaseAppUI;->getTranslateDistance()I

    move-result v6

    goto :goto_68

    :cond_67
    move v6, v5

    .line 4775
    :goto_68
    invoke-direct {v0}, Lcom/transsion/camera/app/ui/BaseAppUI;->getAnimatorDuration()I

    move-result v7

    .line 4776
    iget-boolean v8, v0, Lcom/transsion/camera/app/ui/BaseAppUI;->mUISinkModeChange:Z

    if-eqz v8, :cond_73

    if-nez v1, :cond_73

    move v7, v5

    :cond_73
    const/4 v8, 0x1

    if-eqz v2, :cond_77

    goto :goto_78

    :cond_77
    move v7, v8

    .line 4778
    :goto_78
    iget-object v9, v0, Lcom/transsion/camera/app/ui/BaseAppUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {v9}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenFormType()I

    move-result v9

    const/4 v10, 0x4

    const/4 v11, 0x5

    if-eq v9, v11, :cond_8a

    iget-object v9, v0, Lcom/transsion/camera/app/ui/BaseAppUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    .line 4779
    invoke-virtual {v9}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenFormType()I

    move-result v9

    if-ne v9, v10, :cond_8b

    :cond_8a
    move v7, v5

    .line 4782
    :cond_8b
    new-instance v9, Landroid/animation/AnimatorSet;

    invoke-direct {v9}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v9, v0, Lcom/transsion/camera/app/ui/BaseAppUI;->mSinkAnimatorSet:Landroid/animation/AnimatorSet;

    .line 4783
    iget-object v12, v0, Lcom/transsion/camera/app/ui/BaseAppUI;->mPathInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v9, v12}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 4784
    iget-object v9, v0, Lcom/transsion/camera/app/ui/BaseAppUI;->mModePickerLayout:Landroid/view/View;

    if-eqz v9, :cond_1a0

    .line 4785
    iget-object v9, v0, Lcom/transsion/camera/app/ui/BaseAppUI;->mModePikerArrowRoot:Landroid/view/View;

    int-to-float v4, v4

    new-array v12, v8, [F

    aput v4, v12, v5

    .line 4786
    const-string v13, "alpha"

    invoke-static {v9, v13, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v9

    int-to-long v14, v7

    invoke-virtual {v9, v14, v15}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v7

    .line 4787
    iget-object v9, v0, Lcom/transsion/camera/app/ui/BaseAppUI;->mMoreModeGuideRightRoot:Landroid/view/View;

    new-array v12, v8, [F

    aput v4, v12, v5

    .line 4788
    invoke-static {v9, v13, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v9

    invoke-virtual {v9, v14, v15}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v9

    .line 4789
    iget-object v12, v0, Lcom/transsion/camera/app/ui/BaseAppUI;->mMoreModeGuideRightRoot:Landroid/view/View;

    int-to-float v6, v6

    move/from16 p2, v5

    new-array v5, v8, [F

    aput v6, v5, p2

    .line 4790
    const-string/jumbo v11, "translationY"

    invoke-static {v12, v11, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v5, v14, v15}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .line 4791
    iget-object v12, v0, Lcom/transsion/camera/app/ui/BaseAppUI;->mModePickerLayout:Landroid/view/View;

    new-array v10, v8, [F

    aput v4, v10, p2

    .line 4792
    invoke-static {v12, v13, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    invoke-virtual {v4, v14, v15}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 4793
    iget-object v10, v0, Lcom/transsion/camera/app/ui/BaseAppUI;->mModePickerLayout:Landroid/view/View;

    new-array v12, v8, [F

    aput v6, v12, p2

    .line 4794
    invoke-static {v10, v11, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    invoke-virtual {v6, v14, v15}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v6

    .line 4795
    const-string v10, "com.transsion.camera.feature.mode.more.MoreModeEntry"

    iget-object v11, v0, Lcom/transsion/camera/app/ui/BaseAppUI;->mCurrentModeName:Ljava/lang/String;

    invoke-static {v10, v11}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v10

    const/4 v11, 0x3

    const/4 v12, 0x2

    if-eqz v10, :cond_108

    .line 4796
    iget-object v9, v0, Lcom/transsion/camera/app/ui/BaseAppUI;->mSinkAnimatorSet:Landroid/animation/AnimatorSet;

    const/4 v10, 0x4

    new-array v13, v10, [Landroid/animation/Animator;

    aput-object v4, v13, p2

    aput-object v6, v13, v8

    aput-object v7, v13, v12

    aput-object v5, v13, v11

    invoke-virtual {v9, v13}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto :goto_11c

    .line 4799
    :cond_108
    iget-object v10, v0, Lcom/transsion/camera/app/ui/BaseAppUI;->mSinkAnimatorSet:Landroid/animation/AnimatorSet;

    const/4 v13, 0x5

    new-array v14, v13, [Landroid/animation/Animator;

    aput-object v4, v14, p2

    aput-object v6, v14, v8

    aput-object v7, v14, v12

    aput-object v9, v14, v11

    const/16 v16, 0x4

    aput-object v5, v14, v16

    invoke-virtual {v10, v14}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 4802
    :goto_11c
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v5

    iget v5, v5, Lcom/transsion/camera/utils/CustomConfigUtil;->mModePickerStyle:I

    if-ne v5, v12, :cond_125

    goto :goto_127

    :cond_125
    move/from16 v8, p2

    :goto_127
    if-eqz v1, :cond_15b

    if-eqz v2, :cond_140

    .line 4805
    iget-object v1, v0, Lcom/transsion/camera/app/ui/BaseAppUI;->mCameraSwitcherUIManager:Lcom/transsion/camera/app/ui/manager/CameraSwitcherUIManager;

    if-eqz v1, :cond_134

    move/from16 v2, p2

    .line 4806
    invoke-virtual {v1, v2}, Lcom/transsion/camera/app/ui/manager/CameraSwitcherUIManager;->setEnable(Z)V

    .line 4808
    :cond_134
    iget-object v1, v0, Lcom/transsion/camera/app/ui/BaseAppUI;->mSinkAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v2, Lcom/transsion/camera/app/ui/BaseAppUI$5;

    invoke-direct {v2, v0, v8}, Lcom/transsion/camera/app/ui/BaseAppUI$5;-><init>(Lcom/transsion/camera/app/ui/BaseAppUI;Z)V

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_13e
    :goto_13e
    const/4 v2, 0x0

    goto :goto_1a1

    .line 4837
    :cond_140
    const-string v1, "mode picker visibility: sink without anim, set mode picker gone"

    invoke-static {v3, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 4838
    iget-object v1, v0, Lcom/transsion/camera/app/ui/BaseAppUI;->mModePickerLayout:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 4839
    iget-object v1, v0, Lcom/transsion/camera/app/ui/BaseAppUI;->mModePickerUIManager:Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;

    if-eqz v1, :cond_13e

    .line 4840
    const-string v1, "more guide visibility: sink without anim, onAnimationEnd set more guide gone"

    invoke-static {v3, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 4841
    iget-object v1, v0, Lcom/transsion/camera/app/ui/BaseAppUI;->mModePickerUIManager:Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;

    invoke-virtual {v1, v2}, Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;->updateGuideRightRootVisibleState(I)V

    goto :goto_13e

    :cond_15b
    if-eqz v2, :cond_186

    .line 4846
    iget-object v1, v0, Lcom/transsion/camera/app/ui/BaseAppUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenFormType()I

    move-result v1

    const/4 v10, 0x4

    if-eq v1, v10, :cond_176

    iget-object v1, v0, Lcom/transsion/camera/app/ui/BaseAppUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    .line 4847
    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenFormType()I

    move-result v1

    const/4 v13, 0x5

    if-eq v1, v13, :cond_176

    .line 4848
    iget-object v1, v0, Lcom/transsion/camera/app/ui/BaseAppUI;->mSinkAnimatorSet:Landroid/animation/AnimatorSet;

    const-wide/16 v2, 0x64

    invoke-virtual {v1, v2, v3}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    .line 4850
    :cond_176
    iget-object v1, v0, Lcom/transsion/camera/app/ui/BaseAppUI;->mAlphaPathInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v4, v1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 4851
    iget-object v1, v0, Lcom/transsion/camera/app/ui/BaseAppUI;->mSinkAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v2, Lcom/transsion/camera/app/ui/BaseAppUI$6;

    invoke-direct {v2, v0}, Lcom/transsion/camera/app/ui/BaseAppUI$6;-><init>(Lcom/transsion/camera/app/ui/BaseAppUI;)V

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_13e

    .line 4864
    :cond_186
    const-string v1, "mode picker visibility: rise mode picker without anim, set mode picker visible"

    invoke-static {v3, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 4865
    iget-object v1, v0, Lcom/transsion/camera/app/ui/BaseAppUI;->mModePickerLayout:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 4866
    iget-object v1, v0, Lcom/transsion/camera/app/ui/BaseAppUI;->mModePickerUIManager:Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;

    if-eqz v1, :cond_1a1

    .line 4867
    const-string v1, "more guide visibility: rise with anim, onAnimationEnd set more guide visible"

    invoke-static {v3, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 4868
    iget-object v1, v0, Lcom/transsion/camera/app/ui/BaseAppUI;->mModePickerUIManager:Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;

    invoke-virtual {v1, v2}, Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;->updateGuideRightRootVisibleState(I)V

    goto :goto_1a1

    :cond_1a0
    move v2, v5

    .line 4874
    :cond_1a1
    :goto_1a1
    iget-object v1, v0, Lcom/transsion/camera/app/ui/BaseAppUI;->mSinkAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    .line 4875
    iput-boolean v2, v0, Lcom/transsion/camera/app/ui/BaseAppUI;->mUISinkModeChange:Z

    return-void
.end method

.method public skipInteractiveUpdate(Z)V
    .registers 2

    .line 3338
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mSkipInteractiveUpdate:Z

    return-void
.end method

.method public start()V
    .registers 1

    .line 2066
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mPreviewUIManager:Lcom/transsion/camera/app/ui/manager/PreviewUIManager;

    if-eqz p0, :cond_7

    .line 2067
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/PreviewUIManager;->start()V

    :cond_7
    return-void
.end method

.method public startPopSettingAnimation(ZZ)V
    .registers 3

    .line 933
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mPopSettingUIManager:Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;

    if-eqz p0, :cond_7

    .line 934
    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->startShowPopAnimation(ZZ)V

    :cond_7
    return-void
.end method

.method public stop()V
    .registers 2

    .line 2172
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mScrollConsumer:Lcom/transsion/camera/app/ui/ScrollConsumer;

    if-eqz v0, :cond_7

    .line 2173
    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/ScrollConsumer;->onBackPressed()Z

    .line 2179
    :cond_7
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mPreviewUIManager:Lcom/transsion/camera/app/ui/manager/PreviewUIManager;

    if-eqz v0, :cond_e

    .line 2180
    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/manager/PreviewUIManager;->stop()V

    .line 2182
    :cond_e
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mGoProActivityCoverLayout:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_1c

    .line 2183
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 2184
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mGoProActivityCoverLayout:Landroid/widget/FrameLayout;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_1c
    return-void
.end method

.method public supportExternalStorage()Z
    .registers 1

    .line 4747
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mAppStorageManager:Lcom/transsion/camera/app/common/storage/AppStorageManager;

    if-eqz p0, :cond_9

    .line 4748
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/storage/AppStorageManager;->supportExternalStorage()Z

    move-result p0

    return p0

    :cond_9
    const/4 p0, 0x0

    return p0
.end method

.method public switchAnimEnd()V
    .registers 2

    .line 1085
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mSkipUpdatePopSettingUIList:Z

    if-eqz v0, :cond_a

    .line 1086
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/BaseAppUI;->doUpdatePopSettingUIList()V

    const/4 v0, 0x0

    .line 1087
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mSkipUpdatePopSettingUIList:Z

    :cond_a
    return-void
.end method

.method public switchCamera(Ljava/lang/String;)V
    .registers 3

    .line 4266
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mCameraSwitchListener:Lcom/transsion/camera/app/common/IAppUIListener$ICameraSwitchListener;

    if-eqz p0, :cond_8

    const/4 v0, 0x1

    .line 4267
    invoke-interface {p0, v0, p1}, Lcom/transsion/camera/app/common/IAppUIListener$ICameraSwitchListener;->onCameraSwitch(ZLjava/lang/String;)V

    :cond_8
    return-void
.end method

.method public switchModeByOverlayGuide(Ljava/lang/String;)V
    .registers 2

    .line 5916
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mModePickerUIManager:Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;->onSwitchModeByAppUI(Ljava/lang/String;)V

    return-void
.end method

.method public switchSatCamera(Ljava/lang/String;)V
    .registers 2

    .line 5210
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mSwitchSatCameraListener:Lcom/transsion/camera/app/common/IAppUIListener$ISwitchSatCameraListener;

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/IAppUIListener$ISwitchSatCameraListener;->onSwitchSatCameraListener(Ljava/lang/String;)V

    return-void
.end method

.method public switchSatCamera(Ljava/lang/String;Z)V
    .registers 3

    .line 5215
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mSwitchSatCameraListener:Lcom/transsion/camera/app/common/IAppUIListener$ISwitchSatCameraListener;

    invoke-interface {p0, p1, p2}, Lcom/transsion/camera/app/common/IAppUIListener$ISwitchSatCameraListener;->onSwitchSatCameraListener(Ljava/lang/String;Z)V

    return-void
.end method

.method public switchUnderwaterCamera(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 5225
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mSwitchSatCameraListener:Lcom/transsion/camera/app/common/IAppUIListener$ISwitchSatCameraListener;

    if-eqz v0, :cond_c

    .line 5226
    invoke-interface {v0, p1, p2}, Lcom/transsion/camera/app/common/IAppUIListener$ISwitchSatCameraListener;->onSwitchUnderwaterCameraListener(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_c

    .line 5228
    iput-object p2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mCurrentModeName:Ljava/lang/String;

    :cond_c
    return-void
.end method

.method public switchWideCamera(Ljava/lang/String;)V
    .registers 3

    .line 5205
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mSwitchWideCameraListener:Lcom/transsion/camera/app/common/IAppUIListener$ISwitchWideCameraListener;

    const/4 v0, 0x0

    invoke-interface {p0, p1, v0}, Lcom/transsion/camera/app/common/IAppUIListener$ISwitchWideCameraListener;->onSwitchWideCamera(Ljava/lang/String;Z)V

    return-void
.end method

.method public translateWideCamera(IZ)V
    .registers 3

    .line 5098
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mWideCameraUIManager:Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;

    if-eqz p0, :cond_7

    .line 5099
    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;->translateWideCamera(IZ)V

    :cond_7
    return-void
.end method

.method public translateWideCamera(Z)V
    .registers 2

    .line 5091
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mWideCameraUIManager:Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;

    if-eqz p0, :cond_7

    .line 5092
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;->translateWideCamera(Z)V

    :cond_7
    return-void
.end method

.method public triggerShutterClick(I)V
    .registers 3

    .line 1682
    iput p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mCurShutterPriority:I

    .line 1683
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mShutterUIManager:Lcom/transsion/camera/app/ui/manager/ShutterUIManager;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->triggerShutterClick(II)V

    return-void
.end method

.method public unInit()V
    .registers 4

    .line 1942
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mUIHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1943
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mUIAnimatorController:Lcom/transsion/camera/app/common/IUIAnimatorController;

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IUIAnimatorController;->unregisterOnIdle(Ljava/lang/Runnable;)V

    .line 1944
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mShutterUIManager:Lcom/transsion/camera/app/ui/manager/ShutterUIManager;

    if-eqz v0, :cond_12

    .line 1945
    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->setShutterHook(Lcom/transsion/camera/app/common/IAppUIListener$IShutterResponseListener;)V

    .line 1947
    :cond_12
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mTopBarUIManager:Lcom/transsion/camera/app/ui/manager/TopBarUIManager;

    if-eqz v0, :cond_37

    .line 1948
    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->setItemSelectHook(Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI$ItemSelectHook;)V

    .line 1949
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mTopBarUIManager:Lcom/transsion/camera/app/ui/manager/TopBarUIManager;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->setSettingFragmentListener(Lcom/transsion/camera/app/common/IAppUIListener$IFragmentListener;)V

    .line 1950
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mTopBarUIManager:Lcom/transsion/camera/app/ui/manager/TopBarUIManager;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->setSwitchWideCameraListener(Lcom/transsion/camera/app/common/IAppUIListener$ISwitchWideCameraListener;)V

    .line 1951
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mTopBarUIManager:Lcom/transsion/camera/app/ui/manager/TopBarUIManager;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->setSwitchBlurCameraListener(Lcom/transsion/camera/app/common/IAppUIListener$ISwitchBlurCameraListener;)V

    .line 1952
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mTopBarUIManager:Lcom/transsion/camera/app/ui/manager/TopBarUIManager;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->setSwitchDualCamBWCameraListener(Lcom/transsion/camera/app/common/IAppUIListener$ISwitchDualCamBWCameraListener;)V

    .line 1953
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mTopBarUIManager:Lcom/transsion/camera/app/ui/manager/TopBarUIManager;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->setLottieAnimationListener(Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI$ILottieAnimationListener;)V

    .line 1954
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mTopBarUIManager:Lcom/transsion/camera/app/ui/manager/TopBarUIManager;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/BaseAppUI;->unregisterPreviewRectListener(Lcom/transsion/camera/app/common/IAppUIListener$IPreviewRectListener;)V

    .line 1956
    :cond_37
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mPopSettingUIManager:Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;

    if-eqz v0, :cond_48

    .line 1957
    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->setItemSelectHook(Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI$ItemSelectHook;)V

    .line 1958
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mPopSettingUIManager:Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->setSettingFragmentListener(Lcom/transsion/camera/app/common/IAppUIListener$IFragmentListener;)V

    .line 1959
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mPopSettingUIManager:Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/BaseAppUI;->unregisterPreviewRectListener(Lcom/transsion/camera/app/common/IAppUIListener$IPreviewRectListener;)V

    .line 1961
    :cond_48
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mWideCameraUIManager:Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;

    if-eqz v0, :cond_4f

    .line 1962
    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;->setSwitchWideCameraListener(Lcom/transsion/camera/app/common/IAppUIListener$ISwitchWideCameraListener;)V

    .line 1964
    :cond_4f
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mModePickerUIManager:Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;

    if-eqz v0, :cond_5b

    .line 1965
    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;->setModePickerListener(Lcom/transsion/camera/app/common/IAppUIListener$IModeChangedListener;)V

    .line 1966
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mModePickerUIManager:Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/BaseAppUI;->unregisterPreviewRectListener(Lcom/transsion/camera/app/common/IAppUIListener$IPreviewRectListener;)V

    .line 1968
    :cond_5b
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mCameraSwitcherUIManager:Lcom/transsion/camera/app/ui/manager/CameraSwitcherUIManager;

    if-eqz v0, :cond_62

    .line 1969
    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/manager/CameraSwitcherUIManager;->setCameraSwitchListener(Lcom/transsion/camera/app/common/IAppUIListener$ICameraSwitchListener;)V

    .line 1971
    :cond_62
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mThumbnailUIManager:Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;

    if-eqz v0, :cond_69

    .line 1972
    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;->setThumbnailListener(Lcom/transsion/camera/app/common/IAppUIListener$IThumbnailListener;)V

    .line 1974
    :cond_69
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mPreviewUIManager:Lcom/transsion/camera/app/ui/manager/PreviewUIManager;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/manager/PreviewUIManager;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1975
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mPreviewGestureManager:Lcom/transsion/camera/app/ui/gesture/PreviewGestureManager;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mPreviewUIManager:Lcom/transsion/camera/app/ui/manager/PreviewUIManager;

    invoke-virtual {v0, v2}, Lcom/transsion/camera/app/ui/gesture/PreviewGestureManager;->unregisterGestureListener(Lcom/transsion/camera/app/common/IAppUIListener$IPreviewGestureListener;)V

    .line 1976
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mOverlayUIManager:Lcom/transsion/camera/app/ui/manager/OverlayUIManager;

    if-eqz v0, :cond_83

    .line 1977
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/BaseAppUI;->unregisterPreviewRectListener(Lcom/transsion/camera/app/common/IAppUIListener$IPreviewRectListener;)V

    .line 1978
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mPreviewGestureManager:Lcom/transsion/camera/app/ui/gesture/PreviewGestureManager;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mOverlayUIManager:Lcom/transsion/camera/app/ui/manager/OverlayUIManager;

    invoke-virtual {v0, v2}, Lcom/transsion/camera/app/ui/gesture/PreviewGestureManager;->unregisterGestureListener(Lcom/transsion/camera/app/common/IAppUIListener$IPreviewGestureListener;)V

    .line 1980
    :cond_83
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mHelpGuideUIManager:Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;

    if-eqz v0, :cond_8a

    .line 1981
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/BaseAppUI;->unregisterPreviewRectListener(Lcom/transsion/camera/app/common/IAppUIListener$IPreviewRectListener;)V

    .line 1983
    :cond_8a
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mModePickerUIManager:Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;

    if-eqz v0, :cond_93

    .line 1984
    iget-object v2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mPreviewGestureManager:Lcom/transsion/camera/app/ui/gesture/PreviewGestureManager;

    invoke-virtual {v2, v0}, Lcom/transsion/camera/app/ui/gesture/PreviewGestureManager;->unregisterGestureListener(Lcom/transsion/camera/app/common/IAppUIListener$IPreviewGestureListener;)V

    .line 1986
    :cond_93
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mPopSettingUIManager:Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;

    if-eqz v0, :cond_9c

    .line 1987
    iget-object v2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mPreviewGestureManager:Lcom/transsion/camera/app/ui/gesture/PreviewGestureManager;

    invoke-virtual {v2, v0}, Lcom/transsion/camera/app/ui/gesture/PreviewGestureManager;->unregisterGestureListener(Lcom/transsion/camera/app/common/IAppUIListener$IPreviewGestureListener;)V

    .line 1989
    :cond_9c
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mSellingPointGuideUIManager:Lcom/transsion/camera/app/ui/manager/SellingPointGuideUIManager;

    if-eqz v0, :cond_aa

    .line 1990
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mPopSettingUIManager:Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/BaseAppUI;->unregisterPreviewRectListener(Lcom/transsion/camera/app/common/IAppUIListener$IPreviewRectListener;)V

    .line 1991
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mSellingPointGuideUIManager:Lcom/transsion/camera/app/ui/manager/SellingPointGuideUIManager;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/BaseAppUI;->unregisterPreviewGestureListener(Lcom/transsion/camera/app/common/IAppUIListener$IPreviewGestureListener;)V

    .line 1993
    :cond_aa
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mInteractiveUIManager:Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;

    if-eqz v0, :cond_c0

    .line 1994
    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->setSwitchWideCameraListener(Lcom/transsion/camera/app/common/IAppUIListener$ISwitchWideCameraListener;)V

    .line 1995
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mInteractiveUIManager:Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->setSwitchDualAndMainCameraListener(Lcom/transsion/camera/app/common/IAppUIListener$ISwitchDualAndMainCameraListener;)V

    .line 1996
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mInteractiveUIManager:Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/BaseAppUI;->unregisterPreviewGestureListener(Lcom/transsion/camera/app/common/IAppUIListener$IPreviewGestureListener;)V

    .line 1997
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mInteractiveUIManager:Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/BaseAppUI;->unregisterPreviewRectListener(Lcom/transsion/camera/app/common/IAppUIListener$IPreviewRectListener;)V

    .line 1999
    :cond_c0
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mHintUIManager:Lcom/transsion/camera/app/ui/manager/HintUIManager;

    if-eqz v0, :cond_cc

    .line 2000
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/BaseAppUI;->unregisterPreviewRectListener(Lcom/transsion/camera/app/common/IAppUIListener$IPreviewRectListener;)V

    .line 2001
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mHintUIManager:Lcom/transsion/camera/app/ui/manager/HintUIManager;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/BaseAppUI;->unregisterPreviewGestureListener(Lcom/transsion/camera/app/common/IAppUIListener$IPreviewGestureListener;)V

    .line 2003
    :cond_cc
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mRingScreenLightUIManager:Lcom/transsion/camera/app/ui/manager/RingScreenLightUIManager;

    if-eqz v0, :cond_d3

    .line 2004
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/BaseAppUI;->unregisterPreviewRectListener(Lcom/transsion/camera/app/common/IAppUIListener$IPreviewRectListener;)V

    .line 2006
    :cond_d3
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mSettingFragmentManager:Lcom/transsion/camera/app/ui/manager/SettingFragmentManager;

    if-eqz v0, :cond_e4

    .line 2007
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/BaseAppUI;->unregisterScreenFormListener(Lcom/transsion/camera/app/common/IScreenFormControl;)V

    .line 2008
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mSettingFragmentManager:Lcom/transsion/camera/app/ui/manager/SettingFragmentManager;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/manager/SettingFragmentManager;->setStateListener(Lcom/transsion/camera/app/common/IAppUIListener$IFragmentStateListener;)V

    .line 2009
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mSettingFragmentManager:Lcom/transsion/camera/app/ui/manager/SettingFragmentManager;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/manager/SettingFragmentManager;->unInit()V

    .line 2011
    :cond_e4
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mGoldWaterMarkManager:Lcom/transsion/camera/app/ui/manager/GoldWaterMarkManager;

    if-eqz v0, :cond_f0

    .line 2012
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/BaseAppUI;->unregisterScreenFormListener(Lcom/transsion/camera/app/common/IScreenFormControl;)V

    .line 2013
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mGoldWaterMarkManager:Lcom/transsion/camera/app/ui/manager/GoldWaterMarkManager;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/manager/GoldWaterMarkManager;->unInit()V

    .line 2015
    :cond_f0
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mProWatermarkManager:Lcom/transsion/camera/app/ui/manager/ProWatermarkManager;

    if-eqz v0, :cond_fc

    .line 2016
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/BaseAppUI;->unregisterScreenFormListener(Lcom/transsion/camera/app/common/IScreenFormControl;)V

    .line 2017
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mProWatermarkManager:Lcom/transsion/camera/app/ui/manager/ProWatermarkManager;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/manager/ProWatermarkManager;->unInit()V

    .line 2019
    :cond_fc
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mEditWaterMarkManager:Lcom/transsion/camera/app/ui/manager/EditWaterMarkManager;

    if-eqz v0, :cond_108

    .line 2020
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/BaseAppUI;->unregisterScreenFormListener(Lcom/transsion/camera/app/common/IScreenFormControl;)V

    .line 2021
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mEditWaterMarkManager:Lcom/transsion/camera/app/ui/manager/EditWaterMarkManager;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/manager/EditWaterMarkManager;->unInit()V

    .line 2023
    :cond_108
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mShutterSoundOptionalManager:Lcom/transsion/camera/app/ui/manager/ShutterSoundOptionalManager;

    if-eqz v0, :cond_114

    .line 2024
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/BaseAppUI;->unregisterScreenFormListener(Lcom/transsion/camera/app/common/IScreenFormControl;)V

    .line 2025
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mShutterSoundOptionalManager:Lcom/transsion/camera/app/ui/manager/ShutterSoundOptionalManager;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/manager/ShutterSoundOptionalManager;->unInit()V

    .line 2027
    :cond_114
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mRemoteCaptureManager:Lcom/transsion/camera/app/ui/manager/RemoteCaptureManager;

    if-eqz v0, :cond_120

    .line 2028
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/BaseAppUI;->unregisterScreenFormListener(Lcom/transsion/camera/app/common/IScreenFormControl;)V

    .line 2029
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mRemoteCaptureManager:Lcom/transsion/camera/app/ui/manager/RemoteCaptureManager;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/manager/RemoteCaptureManager;->unInit()V

    .line 2031
    :cond_120
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mTuningFeatureManager:Lcom/transsion/camera/app/ui/manager/TuningFeatureManager;

    if-eqz v0, :cond_12c

    .line 2032
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/BaseAppUI;->unregisterScreenFormListener(Lcom/transsion/camera/app/common/IScreenFormControl;)V

    .line 2033
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mTuningFeatureManager:Lcom/transsion/camera/app/ui/manager/TuningFeatureManager;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/manager/TuningFeatureManager;->unInit()V

    .line 2035
    :cond_12c
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mUIManagers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_132
    :goto_132
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_144

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/camera/app/common/manager/AbstractViewManager;

    if-eqz v2, :cond_132

    .line 2037
    invoke-virtual {v2}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->unInit()V

    goto :goto_132

    .line 2040
    :cond_144
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mThermalThrottleUIManager:Lcom/transsion/camera/app/ui/manager/ThermalThrottleUIManager;

    if-eqz v0, :cond_14b

    .line 2041
    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/manager/ThermalThrottleUIManager;->unInit()V

    .line 2043
    :cond_14b
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mImageryGuideManager:Lcom/transsion/camera/manager/BaseImageryGuideManager;

    if-eqz v0, :cond_152

    .line 2044
    invoke-virtual {v0}, Lcom/transsion/camera/manager/BaseImageryGuideManager;->unInit()V

    .line 2046
    :cond_152
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mUIManagers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2047
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mUILayerRootParentList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2048
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mPreviewGestureScrollAdapter:Lcom/transsion/camera/app/ui/PreviewGestureScrollAdapter;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/BaseAppUI;->unregisterPreviewGestureListener(Lcom/transsion/camera/app/common/IAppUIListener$IPreviewGestureListener;)V

    .line 2049
    iput-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mHintUIManager:Lcom/transsion/camera/app/ui/manager/HintUIManager;

    .line 2050
    iput-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mContinuousShotUIManager:Lcom/transsion/camera/app/ui/manager/ContinuousShotUIManager;

    const/4 v0, 0x0

    .line 2051
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mFrameOnceCome:Z

    .line 2052
    iput-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mSettingUIProvider:Lcom/transsion/camera/app/common/provider/SettingUIProvider;

    .line 2053
    iput-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mSpecifyModePolicy:Lcom/transsion/camera/app/SpecifyModePolicy;

    .line 2054
    iput-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mToastUIManager:Lcom/transsion/camera/app/ui/manager/ToastUIManager;

    .line 2055
    iput-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mFloatingShutterUIManager:Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;

    .line 2056
    iput-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mGoldWaterMarkManager:Lcom/transsion/camera/app/ui/manager/GoldWaterMarkManager;

    .line 2057
    iput-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mProWatermarkManager:Lcom/transsion/camera/app/ui/manager/ProWatermarkManager;

    .line 2058
    iput-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mEditWaterMarkManager:Lcom/transsion/camera/app/ui/manager/EditWaterMarkManager;

    .line 2059
    iput-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mSettingFragmentManager:Lcom/transsion/camera/app/ui/manager/SettingFragmentManager;

    .line 2060
    iput-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mShutterSoundOptionalManager:Lcom/transsion/camera/app/ui/manager/ShutterSoundOptionalManager;

    .line 2061
    iput-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mRemoteCaptureManager:Lcom/transsion/camera/app/ui/manager/RemoteCaptureManager;

    .line 2062
    iput-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mContext:Landroid/content/Context;

    return-void
.end method

.method public unRegisterHintStateListener()V
    .registers 1

    .line 1451
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mHintUIManager:Lcom/transsion/camera/app/ui/manager/HintUIManager;

    if-eqz p0, :cond_7

    .line 1452
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/HintUIManager;->unRegisterHintStateListener()V

    :cond_7
    return-void
.end method

.method public unRegisterShutterListener(Lcom/transsion/camera/app/common/IAppUIListener$IShutterResponseListener;)V
    .registers 2

    .line 1256
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mShutterUIManager:Lcom/transsion/camera/app/ui/manager/ShutterUIManager;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->unRegisterOnShutterListener(Lcom/transsion/camera/app/common/IAppUIListener$IShutterResponseListener;)V

    return-void
.end method

.method public unregisterPreviewGestureListener(Lcom/transsion/camera/app/common/IAppUIListener$IPreviewGestureListener;)V
    .registers 2

    .line 849
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mPreviewGestureManager:Lcom/transsion/camera/app/ui/gesture/PreviewGestureManager;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/gesture/PreviewGestureManager;->unregisterGestureListener(Lcom/transsion/camera/app/common/IAppUIListener$IPreviewGestureListener;)V

    return-void
.end method

.method public unregisterPreviewRectListener(Lcom/transsion/camera/app/common/IAppUIListener$IPreviewRectListener;)V
    .registers 2

    .line 859
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mPreviewUIManager:Lcom/transsion/camera/app/ui/manager/PreviewUIManager;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/manager/PreviewUIManager;->unregisterPreviewRectListener(Lcom/transsion/camera/app/common/IAppUIListener$IPreviewRectListener;)V

    return-void
.end method

.method public unregisterPrivacyCallback(Lcom/transsion/camera/app/common/IPrivacyCallback;)V
    .registers 5

    if-eqz p1, :cond_1e

    .line 5944
    sget-object v0, Lcom/transsion/camera/app/ui/BaseAppUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unregisterPrivacyCallback: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 5945
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mPrivacyCallbacks:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_1e
    return-void
.end method

.method public unregisterScreenFormListener(Lcom/transsion/camera/app/common/IScreenFormControl;)V
    .registers 2

    return-void
.end method

.method public unregisterZoomKeyEventCallback(Lcom/transsion/camera/app/common/IAppUIControl$IZoomKeyEventCallback;)V
    .registers 2

    .line 1695
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mZoomKeyEventCallbacks:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method protected updateBottomBarLayout(IIZ)V
    .registers 5

    .line 4701
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mContext:Landroid/content/Context;

    if-nez p1, :cond_c

    .line 4702
    sget-object p0, Lcom/transsion/camera/app/ui/BaseAppUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "[updateBottomBarLayout] mContext is null, return"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 4706
    :cond_c
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mBottomBarRootView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 p2, 0x0

    .line 4707
    invoke-virtual {p1, p2, p2, p2, p2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    const/4 p3, -0x1

    .line 4708
    iput p3, p1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 4709
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/BaseAppUI;->getBottomBarHeight()I

    move-result p3

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/BaseAppUI;->getNavigationBarHeight()I

    move-result v0

    sub-int/2addr p3, v0

    iput p3, p1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 4710
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/BaseAppUI;->getNavigationBarHeight()I

    move-result p3

    iput p3, p1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    const/16 p3, 0x51

    .line 4711
    iput p3, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 4712
    iget-object p3, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mBottomBarRootView:Landroid/view/View;

    invoke-virtual {p3, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 4713
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/BaseAppUI;->updateShutterPanelRootLayout()V

    .line 4714
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mModePickerRootView:Landroid/view/ViewGroup;

    const/4 p3, 0x1

    new-array p3, p3, [Landroid/view/View;

    aput-object p1, p3, p2

    invoke-virtual {p0, p3}, Lcom/transsion/camera/app/ui/BaseAppUI;->updateNavigationBarHeight([Landroid/view/View;)V

    return-void
.end method

.method public updateBrowserData(Landroid/net/Uri;)V
    .registers 2

    return-void
.end method

.method public updateBurstBrowserData(Landroid/net/Uri;Z)V
    .registers 3

    return-void
.end method

.method public updateCameraState(I)V
    .registers 5

    .line 1315
    sget-object v0, Lcom/transsion/camera/app/ui/BaseAppUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[updateCameraState] state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/transsion/camera/app/common/CameraState;->stateToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1317
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mUIHandler:Landroid/os/Handler;

    const/16 v0, 0x67

    invoke-virtual {p0, v0, p1, p1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public updateContinuousShotLightState(Z)V
    .registers 3

    .line 5339
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mContinuousShotLightResponder:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    if-eqz p0, :cond_d

    .line 5340
    const-string v0, "continuous_shot_light_state"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_d
    return-void
.end method

.method public updateCurrentCamera(Ljava/lang/String;Z)V
    .registers 4

    .line 1198
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mModePickerUIManager:Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;

    if-eqz v0, :cond_7

    .line 1199
    invoke-virtual {v0, p1, p2}, Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;->updateCurrentCamera(Ljava/lang/String;Z)V

    .line 1201
    :cond_7
    iget-object p2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mPreviewUIManager:Lcom/transsion/camera/app/ui/manager/PreviewUIManager;

    if-eqz p2, :cond_e

    .line 1202
    invoke-virtual {p2, p1}, Lcom/transsion/camera/app/ui/manager/PreviewUIManager;->updateCurrentCamera(Ljava/lang/String;)V

    .line 1204
    :cond_e
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mRingScreenLightUIManager:Lcom/transsion/camera/app/ui/manager/RingScreenLightUIManager;

    if-eqz p0, :cond_15

    .line 1205
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/manager/RingScreenLightUIManager;->updateCurrentCamera(Ljava/lang/String;)V

    :cond_15
    return-void
.end method

.method public updateCurrentMode(Ljava/lang/String;)V
    .registers 2

    .line 5581
    iput-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mCurrentModeName:Ljava/lang/String;

    return-void
.end method

.method protected updateCurrentModeFoldFlip(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public updateCurrentModes(Ljava/util/List;)V
    .registers 2

    .line 1211
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mModePickerUIManager:Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;

    if-eqz p0, :cond_7

    .line 1212
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;->updateCurrentModes(Ljava/util/List;)V

    :cond_7
    return-void
.end method

.method public updateCurrentPopWindowKey(Ljava/lang/String;)V
    .registers 2

    .line 940
    iput-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mCurrentPopupWindowKey:Ljava/lang/String;

    return-void
.end method

.method public updateCustomState(Ljava/lang/String;)V
    .registers 3

    .line 1402
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "VALUE_edit_watermark_state_done"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1f

    const-string v0, "VALUE_edit_watermark_state_writing"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_14

    return-void

    .line 1404
    :cond_14
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mUIHandler:Landroid/os/Handler;

    new-instance v0, Lcom/transsion/camera/app/ui/BaseAppUI$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/ui/BaseAppUI$$ExternalSyntheticLambda2;-><init>(Lcom/transsion/camera/app/ui/BaseAppUI;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 1407
    :cond_1f
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mUIHandler:Landroid/os/Handler;

    new-instance v0, Lcom/transsion/camera/app/ui/BaseAppUI$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/ui/BaseAppUI$$ExternalSyntheticLambda3;-><init>(Lcom/transsion/camera/app/ui/BaseAppUI;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public updateHelpGuide()V
    .registers 3

    .line 1073
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mUIHandler:Landroid/os/Handler;

    const/16 v1, 0x70

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1074
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mUIHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public updateHelpGuideIndex(I)V
    .registers 2

    .line 5298
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mHelpGuideUIManager:Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;

    if-eqz p0, :cond_7

    .line 5299
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;->updateGuideIndex(I)V

    :cond_7
    return-void
.end method

.method public updateIntentFromNegativeScreen(ZZ)V
    .registers 3

    .line 4971
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mIsIntentFromNegativeScreen:Z

    .line 4972
    iput-boolean p2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mIsNegativeScreenAIGCMode:Z

    return-void
.end method

.method public updateItemValue()V
    .registers 1

    .line 5105
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mWideCameraUIManager:Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;

    if-eqz p0, :cond_7

    .line 5106
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;->updateItemValue()V

    :cond_7
    return-void
.end method

.method public updateModeSettingUISpec(Lcom/transsion/camera/app/common/ModeSettingUISpec;Z)V
    .registers 8

    .line 1098
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mContext:Landroid/content/Context;

    if-nez v0, :cond_c

    .line 1099
    sget-object p0, Lcom/transsion/camera/app/ui/BaseAppUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "[updateModeSettingUISpec] mContext is null, return"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 1102
    :cond_c
    iput-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mCurrentModeSettingUISpec:Lcom/transsion/camera/app/common/ModeSettingUISpec;

    .line 1103
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mModePickerUIManager:Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_1a

    .line 1104
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, p2, v1, v1}, Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;->updateCurrentMode(Ljava/lang/String;ZZZ)V

    .line 1106
    :cond_1a
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/transsion/camera/app/ui/BaseAppUI;->updateCurrentModeFoldFlip(Ljava/lang/String;)V

    .line 1107
    iget-object p2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mFloatingShutterUIManager:Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;

    if-eqz p2, :cond_2c

    .line 1108
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;->updateCurrentMode(Ljava/lang/String;)V

    .line 1110
    :cond_2c
    iget-object p2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mMasterGuideUIManager:Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;

    if-eqz p2, :cond_33

    .line 1111
    invoke-virtual {p2, p1}, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->updateModeSettingUISpec(Lcom/transsion/camera/app/common/ModeSettingUISpec;)V

    .line 1113
    :cond_33
    iget-object p2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mOverlayUIManager:Lcom/transsion/camera/app/ui/manager/OverlayUIManager;

    if-eqz p2, :cond_3e

    .line 1114
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/transsion/camera/app/ui/manager/OverlayUIManager;->updateCurrentMode(Ljava/lang/String;)V

    .line 1116
    :cond_3e
    iget-object p2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mShutterUIManager:Lcom/transsion/camera/app/ui/manager/ShutterUIManager;

    if-eqz p2, :cond_49

    .line 1117
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->updateCurrentMode(Ljava/lang/String;)V

    .line 1119
    :cond_49
    iget-object p2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mPopSettingUIManager:Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;

    if-eqz p2, :cond_54

    .line 1120
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->updateCurrentMode(Ljava/lang/String;)V

    .line 1122
    :cond_54
    iget-object p2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mSellingPointGuideUIManager:Lcom/transsion/camera/app/ui/manager/SellingPointGuideUIManager;

    if-eqz p2, :cond_5f

    .line 1123
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/transsion/camera/app/ui/manager/SellingPointGuideUIManager;->updateCurrentMode(Ljava/lang/String;)V

    .line 1125
    :cond_5f
    iget-object p2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mHintUIManager:Lcom/transsion/camera/app/ui/manager/HintUIManager;

    if-eqz p2, :cond_6a

    .line 1126
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/transsion/camera/app/ui/manager/HintUIManager;->updateCurrentMode(Ljava/lang/String;)V

    .line 1128
    :cond_6a
    iget-object p2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mCameraSwitcherUIManager:Lcom/transsion/camera/app/ui/manager/CameraSwitcherUIManager;

    if-eqz p2, :cond_75

    .line 1129
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/transsion/camera/app/ui/manager/CameraSwitcherUIManager;->updateCurrentMode(Ljava/lang/String;)V

    .line 1131
    :cond_75
    iget-object p2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mTopBarUIManager:Lcom/transsion/camera/app/ui/manager/TopBarUIManager;

    if-eqz p2, :cond_80

    .line 1132
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->updateCurrentMode(Ljava/lang/String;)V

    .line 1134
    :cond_80
    iget-object p2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mImageryGuideManager:Lcom/transsion/camera/manager/BaseImageryGuideManager;

    if-eqz p2, :cond_8b

    .line 1135
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/transsion/camera/manager/BaseImageryGuideManager;->updateCurrentMode(Ljava/lang/String;)V

    .line 1138
    :cond_8b
    iget-object p2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mThumbnailUIManager:Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;

    if-eqz p2, :cond_96

    .line 1139
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;->updateCurrentMode(Ljava/lang/String;)V

    .line 1143
    :cond_96
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mCurrentModeSettingUISpec:Lcom/transsion/camera/app/common/ModeSettingUISpec;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->getTopBarSettingUIEntries()[Ljava/lang/String;

    move-result-object p1

    .line 1144
    iget-object p2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mCurrentModeSettingUISpec:Lcom/transsion/camera/app/common/ModeSettingUISpec;

    invoke-virtual {p2}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->getLeftTopBarSettingUIEntries()[Ljava/lang/String;

    move-result-object p2

    .line 1145
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mCurrentModeSettingUISpec:Lcom/transsion/camera/app/common/ModeSettingUISpec;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->getRightTopBarSettingUIEntries()[Ljava/lang/String;

    move-result-object v0

    .line 1146
    iget-object v2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mCurrentModeSettingUISpec:Lcom/transsion/camera/app/common/ModeSettingUISpec;

    invoke-virtual {v2}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->getPopSettingUIEntries()[Ljava/lang/String;

    move-result-object v2

    if-eqz p1, :cond_b3

    .line 1147
    array-length p1, p1

    if-nez p1, :cond_c2

    :cond_b3
    if-eqz p2, :cond_b8

    array-length p1, p2

    if-nez p1, :cond_c2

    :cond_b8
    if-eqz v0, :cond_bd

    array-length p1, v0

    if-nez p1, :cond_c2

    :cond_bd
    if-eqz v2, :cond_d5

    array-length p1, v2

    if-eqz p1, :cond_d5

    :cond_c2
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    .line 1151
    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenFormType()I

    move-result p1

    const/4 p2, 0x7

    if-ne p2, p1, :cond_cc

    goto :goto_d5

    .line 1157
    :cond_cc
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mTopBarUIManager:Lcom/transsion/camera/app/ui/manager/TopBarUIManager;

    if-eqz p1, :cond_e1

    const/4 p2, 0x1

    .line 1158
    invoke-virtual {p1, p2}, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->needShowTopBar(Z)V

    goto :goto_e1

    .line 1152
    :cond_d5
    :goto_d5
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mTopBarUIManager:Lcom/transsion/camera/app/ui/manager/TopBarUIManager;

    if-eqz p1, :cond_e1

    .line 1153
    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->hide()V

    .line 1154
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mTopBarUIManager:Lcom/transsion/camera/app/ui/manager/TopBarUIManager;

    invoke-virtual {p1, v1}, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->needShowTopBar(Z)V

    .line 1162
    :cond_e1
    :goto_e1
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mCurrentModeSettingUISpec:Lcom/transsion/camera/app/common/ModeSettingUISpec;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->getModeGuideLayoutIdList()Ljava/util/List;

    move-result-object p1

    .line 1163
    iget-object p2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mCurrentModeSettingUISpec:Lcom/transsion/camera/app/common/ModeSettingUISpec;

    invoke-virtual {p2}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->getSettingGuideLayoutIdList()[Ljava/lang/String;

    move-result-object p2

    if-eqz p1, :cond_f4

    .line 1164
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_f5

    :cond_f4
    move v0, v1

    :goto_f5
    if-eqz p2, :cond_f8

    .line 1165
    array-length v1, p2

    .line 1166
    :cond_f8
    sget-object v2, Lcom/transsion/camera/app/ui/BaseAppUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateModeSettingUISpec: modeGuidesLength: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", settingGuidesLength: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-eqz p1, :cond_11b

    if-nez v0, :cond_126

    :cond_11b
    if-eqz p2, :cond_11f

    if-nez v1, :cond_126

    .line 1170
    :cond_11f
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mHelpGuideUIManager:Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;

    if-eqz p1, :cond_126

    .line 1171
    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;->hide()V

    .line 1174
    :cond_126
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p1

    iget-boolean p1, p1, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportUI5MoreModeStyle:Z

    if-nez p1, :cond_134

    .line 1175
    invoke-static {}, Lcom/transsion/camera/utils/FeatureSupport;->isTabletDevice()Z

    move-result p1

    if-eqz p1, :cond_14c

    :cond_134
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mCameraSwitcherUIManager:Lcom/transsion/camera/app/ui/manager/CameraSwitcherUIManager;

    if-eqz p1, :cond_14c

    .line 1177
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mCurrentModeSettingUISpec:Lcom/transsion/camera/app/common/ModeSettingUISpec;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->isBothCameraSupport()Z

    move-result p1

    if-eqz p1, :cond_145

    .line 1178
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mInZoomChanging:Z

    if-eqz p1, :cond_145

    goto :goto_14c

    .line 1181
    :cond_145
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mCameraSwitcherUIManager:Lcom/transsion/camera/app/ui/manager/CameraSwitcherUIManager;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mCurrentModeSettingUISpec:Lcom/transsion/camera/app/common/ModeSettingUISpec;

    invoke-virtual {p1, p0}, Lcom/transsion/camera/app/ui/manager/CameraSwitcherUIManager;->showOrHide(Lcom/transsion/camera/app/common/ModeSettingUISpec;)V

    :cond_14c
    :goto_14c
    return-void
.end method

.method public updateMoreEditMode(Z)V
    .registers 2

    .line 2637
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mModePickerUIManager:Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;

    if-eqz p0, :cond_7

    .line 2638
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;->updateMoreEditMode(Z)V

    :cond_7
    return-void
.end method

.method protected varargs updateNavigationBarHeight([Landroid/view/View;)V
    .registers 7

    .line 2826
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    if-nez v0, :cond_5

    goto :goto_16

    .line 2829
    :cond_5
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_8
    if-ge v2, v0, :cond_16

    aget-object v3, p1, v2

    .line 2830
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/BaseAppUI;->getNavigationBarHeight()I

    move-result v4

    invoke-virtual {v3, v1, v1, v1, v4}, Landroid/view/View;->setPadding(IIII)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_16
    :goto_16
    return-void
.end method

.method public updateOnlyInteractiveUI()V
    .registers 3

    .line 1067
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mUIHandler:Landroid/os/Handler;

    const/16 v1, 0x73

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1068
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mUIHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method protected updateOverlayManagerSettingUIList()V
    .registers 4

    .line 3327
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mRootView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 3328
    sget v1, Lcom/transsion/camera/R$array;->common_setting_ui_entries:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 3329
    iget-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mCurrentModeSettingUISpec:Lcom/transsion/camera/app/common/ModeSettingUISpec;

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->getModeSettingUIEntries()[Ljava/lang/String;

    move-result-object v1

    .line 3330
    iget-object v2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mSettingUIProvider:Lcom/transsion/camera/app/common/provider/SettingUIProvider;

    .line 3331
    invoke-virtual {v2, v1}, Lcom/transsion/camera/app/common/provider/SettingUIProvider;->getCommonSettingUIList([Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 3332
    iget-object v2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mOverlayUIManager:Lcom/transsion/camera/app/ui/manager/OverlayUIManager;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mSettingUIProvider:Lcom/transsion/camera/app/common/provider/SettingUIProvider;

    .line 3333
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/provider/SettingUIProvider;->getCommonSettingUIList([Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    .line 3332
    invoke-virtual {v2, p0, v1}, Lcom/transsion/camera/app/ui/manager/OverlayUIManager;->setSettingUIList(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public updatePopSettingUI()V
    .registers 3

    .line 1079
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mUIHandler:Landroid/os/Handler;

    const/16 v1, 0x72

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1080
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mUIHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public updatePreviewViewType(Lcom/transsion/camera/utils/SettingInfo$PreviewViewType;)V
    .registers 5

    .line 2536
    sget-object v0, Lcom/transsion/camera/app/ui/BaseAppUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updatePreviewViewType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 2538
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mContext:Landroid/content/Context;

    instance-of v1, v0, Lcom/transsion/camera/app/QuickActivity;

    if-eqz v1, :cond_24

    .line 2539
    check-cast v0, Lcom/transsion/camera/app/QuickActivity;

    invoke-virtual {v0}, Lcom/transsion/camera/app/QuickActivity;->getScreenBrightnessManager()Lcom/transsion/camera/manager/ScreenBrightnessManager;

    move-result-object v0

    goto :goto_25

    :cond_24
    const/4 v0, 0x0

    .line 2541
    :goto_25
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mPreviewUIManager:Lcom/transsion/camera/app/ui/manager/PreviewUIManager;

    if-eqz p0, :cond_2c

    .line 2542
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/manager/PreviewUIManager;->updatePreviewViewType(Lcom/transsion/camera/utils/SettingInfo$PreviewViewType;)V

    :cond_2c
    if-nez v0, :cond_2f

    return-void

    .line 2547
    :cond_2f
    sget-object p0, Lcom/transsion/camera/utils/SettingInfo$PreviewViewType;->SURFACE_VIEW:Lcom/transsion/camera/utils/SettingInfo$PreviewViewType;

    if-ne p1, p0, :cond_3d

    const/4 p0, 0x1

    .line 2548
    invoke-virtual {v0, p0}, Lcom/transsion/camera/manager/ScreenBrightnessManager;->needCustomSetBrightness(Z)V

    const/high16 p0, 0x43160000    # 150.0f

    .line 2549
    invoke-virtual {v0, p0}, Lcom/transsion/camera/manager/ScreenBrightnessManager;->updateScreenBrightness(F)V

    return-void

    :cond_3d
    const/4 p0, 0x0

    .line 2551
    invoke-virtual {v0, p0}, Lcom/transsion/camera/manager/ScreenBrightnessManager;->needCustomSetBrightness(Z)V

    .line 2552
    invoke-virtual {v0}, Lcom/transsion/camera/manager/ScreenBrightnessManager;->resetToFollowSystem()V

    return-void
.end method

.method public updateProcessingThumbUri(Landroid/net/Uri;Z)V
    .registers 4

    .line 1005
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mThumbnailUIManager:Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;

    if-eqz v0, :cond_7

    .line 1006
    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;->updateProcessingThumbUri(Landroid/net/Uri;)V

    :cond_7
    if-eqz p2, :cond_e

    const/16 p1, 0x57

    .line 1010
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/BaseAppUI;->notifyRawActionToAppUI(I)V

    :cond_e
    return-void
.end method

.method public updateRingScreenLightState()V
    .registers 3

    .line 5333
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mRingScreenLightResponder:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    if-eqz p0, :cond_a

    .line 5334
    const-string v0, "ring_screen_light_state"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_a
    return-void
.end method

.method protected updateRootLayoutDisplaySize()V
    .registers 2

    .line 1660
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mRootView:Landroid/view/ViewGroup;

    instance-of v0, v0, Lcom/transsion/camera/app/ui/widget/RootLayout;

    if-nez v0, :cond_7

    goto :goto_d

    .line 1663
    :cond_7
    invoke-static {}, Lcom/transsion/camera/utils/ScreenUtils;->getMainScreenSize()Landroid/util/Size;

    move-result-object v0

    if-nez v0, :cond_e

    :goto_d
    return-void

    .line 1667
    :cond_e
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mRootView:Landroid/view/ViewGroup;

    check-cast p0, Lcom/transsion/camera/app/ui/widget/RootLayout;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/widget/RootLayout;->updateDisplaySize(Landroid/util/Size;)V

    return-void
.end method

.method protected updateShutterPanelRootLayout()V
    .registers 4

    .line 4718
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    if-eqz v0, :cond_34

    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mShutterPanelRootView:Landroid/view/ViewGroup;

    if-nez v0, :cond_9

    goto :goto_34

    .line 4721
    :cond_9
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/BaseAppUI;->getBottomBarHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/BaseAppUI;->getNavigationBarHeight()I

    move-result v1

    sub-int/2addr v0, v1

    .line 4722
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/BaseAppUI;->calculateShutterPanelPaddingHeight(I)I

    move-result v0

    const/4 v1, 0x0

    if-ltz v0, :cond_2b

    .line 4725
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/BaseAppUI;->getScreenManager()Lcom/transsion/camera/app/common/manager/IScreenManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/transsion/camera/app/common/manager/IScreenManager;->getBottomBarTopPadding()I

    move-result v2

    .line 4726
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mShutterPanelRootView:Landroid/view/ViewGroup;

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    invoke-virtual {p0, v1, v2, v1, v0}, Landroid/view/View;->setPadding(IIII)V

    return-void

    .line 4728
    :cond_2b
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mShutterPanelRootView:Landroid/view/ViewGroup;

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    invoke-virtual {p0, v1, v0, v1, v1}, Landroid/view/View;->setPadding(IIII)V

    :cond_34
    :goto_34
    return-void
.end method

.method public updateShutterType(I)V
    .registers 4

    .line 1322
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mUIHandler:Landroid/os/Handler;

    const/16 v1, 0x6d

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1323
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/BaseAppUI;->isMainThread()Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    .line 1324
    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/app/ui/BaseAppUI;->doUpdateShutterType(IZ)V

    return-void

    .line 1326
    :cond_12
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mUIHandler:Landroid/os/Handler;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, v1, p1, p1, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public updateShutterType(IZ)V
    .registers 5

    .line 1332
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mUIHandler:Landroid/os/Handler;

    const/16 v1, 0x6d

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1333
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/BaseAppUI;->isMainThread()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1334
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/ui/BaseAppUI;->doUpdateShutterType(IZ)V

    return-void

    .line 1336
    :cond_11
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mUIHandler:Landroid/os/Handler;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p0, v1, p1, p1, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public updateSpecifiedMode(Ljava/lang/String;Z)V
    .registers 6

    .line 1671
    sget-object v0, Lcom/transsion/camera/app/ui/BaseAppUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateSpecifiedMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1672
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mModePickerUIManager:Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;

    if-eqz v0, :cond_29

    .line 1673
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mWideCameraUIManager:Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;

    if-eqz v0, :cond_22

    .line 1674
    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;->hide()V

    .line 1676
    :cond_22
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mModePickerUIManager:Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, p2, v1}, Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;->updateCurrentMode(Ljava/lang/String;ZZZ)V

    :cond_29
    return-void
.end method

.method public updateSwitchCameraUI(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 5048
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mPreviewUIManager:Lcom/transsion/camera/app/ui/manager/PreviewUIManager;

    if-eqz p0, :cond_7

    .line 5049
    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/ui/manager/PreviewUIManager;->updateSwitchCameraUI(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    return-void
.end method

.method public updateThumbnail(Landroid/graphics/Bitmap;)V
    .registers 3

    .line 977
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mThumbnailUIManager:Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;

    if-eqz v0, :cond_9

    .line 978
    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mIsThumbnailAnimationNeed:Z

    invoke-virtual {v0, p1, p0}, Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;->updateThumbnail(Landroid/graphics/Bitmap;Z)V

    :cond_9
    return-void
.end method

.method public updateThumbnailUri(Landroid/net/Uri;)V
    .registers 3

    const/4 v0, 0x1

    .line 984
    invoke-virtual {p0, p1, v0}, Lcom/transsion/camera/app/ui/BaseAppUI;->updateThumbnailUri(Landroid/net/Uri;Z)V

    return-void
.end method

.method public updateThumbnailUri(Landroid/net/Uri;Z)V
    .registers 5

    .line 989
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mThumbnailUIManager:Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;

    if-eqz v0, :cond_f

    iget-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mCurrentModeSettingUISpec:Lcom/transsion/camera/app/common/ModeSettingUISpec;

    if-eqz v1, :cond_f

    .line 991
    invoke-virtual {v1}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->isSupportShare()Z

    move-result v1

    .line 990
    invoke-virtual {v0, p1, p2, v1}, Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;->updateThumbnailUri(Landroid/net/Uri;ZZ)V

    :cond_f
    const/16 p1, 0x21

    .line 993
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/BaseAppUI;->notifyRawActionToAppUI(I)V

    return-void
.end method

.method public updateTopBarUI()V
    .registers 3

    .line 1061
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mUIHandler:Landroid/os/Handler;

    const/16 v1, 0x6c

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1062
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mUIHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public updateTriggerSelfTimerPriority(I)V
    .registers 2

    .line 1362
    iput p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mTriggerSelfTimerPriority:I

    return-void
.end method

.method public updateUIState(IILjava/lang/String;)V
    .registers 7

    .line 1387
    sget-object v0, Lcom/transsion/camera/app/ui/BaseAppUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[updateUIState] state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/transsion/camera/app/common/AppUIState;->stateToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " progressType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1388
    iput p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mCurrentAppUIState:I

    .line 1389
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mModeUIControl:Lcom/transsion/camera/app/common/IAppUIControl$IModeUIControl;

    if-eqz v0, :cond_2b

    .line 1390
    invoke-interface {v0, p1}, Lcom/transsion/camera/app/common/IAppUIControl$IModeUIControl;->updateAppUIState(I)V

    .line 1392
    :cond_2b
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mUIHandler:Landroid/os/Handler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1393
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v2

    if-ne v0, v2, :cond_4a

    .line 1394
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mUIHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1, p1, p2, p3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    return-void

    .line 1396
    :cond_4a
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mUIHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1, p1, p2, p3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public updateWideCameraUI(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 5055
    invoke-virtual {p0, v0, v1}, Lcom/transsion/camera/app/ui/BaseAppUI;->onModePanelDistanceChanged(FZ)V

    .line 5056
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mWideCameraUIManager:Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;

    if-eqz p0, :cond_d

    .line 5057
    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;->updateWideCameraUI(Ljava/lang/String;Ljava/lang/String;)V

    :cond_d
    return-void
.end method

.method public updateWideCameraUIByMode(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 5063
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mWideCameraUIManager:Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;

    if-eqz p0, :cond_7

    .line 5064
    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;->updateWideCameraUIByMode(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    return-void
.end method

.method public updateZoomInfo(Ljava/util/List;Ljava/lang/String;II)V
    .registers 5

    .line 1093
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mOverlayUIManager:Lcom/transsion/camera/app/ui/manager/OverlayUIManager;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/transsion/camera/app/ui/manager/OverlayUIManager;->updateZoomInfoList(Ljava/util/List;Ljava/lang/String;II)V

    return-void
.end method
