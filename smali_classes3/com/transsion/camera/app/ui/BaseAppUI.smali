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
        Lcom/transsion/camera/app/ui/BaseAppUI$OnEditorFragmentStateListenerImpl;,
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

.field protected mModeOrderEditorManager:Lcom/transsion/camera/app/ui/manager/ModeOrderEditorManager;

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

.field private mShouldHideGoogleLensUI:Z

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
.method public static synthetic $r8$lambda$95tfOti77112OuUQpMKXLVhQ5lA(Lcom/transsion/camera/app/ui/BaseAppUI;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/BaseAppUI;->lambda$finishUIInflateStage$12()V

    return-void
.end method

.method public static synthetic $r8$lambda$AzmjWiWEdQMbEhNO2xGlA10tY64(ZILcom/transsion/camera/app/common/IAppUIControl$IZoomKeyEventCallback;)V
    .registers 3

    .line 1816
    invoke-interface {p2, p0, p1}, Lcom/transsion/camera/app/common/IAppUIControl$IZoomKeyEventCallback;->onShoulderButtonZoomSwiping(ZI)V

    return-void
.end method

.method public static synthetic $r8$lambda$Ej8cm1cuR_SL__I1UTb0MPlF_j8(Lcom/transsion/camera/app/ui/BaseAppUI;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/BaseAppUI;->doUpdatePopSettingUIInternal()V

    return-void
.end method

.method public static synthetic $r8$lambda$Gcy9UCr0JLrTrZPSjbRj55BbBOg(Lcom/transsion/camera/app/ui/BaseAppUI;)Z
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/BaseAppUI;->lambda$doDelayLoadUIManager$8()Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$GjjGCr5J6AlocyAhX7hO_IBPRXk(ZLcom/transsion/camera/app/common/IAppUIControl$IZoomKeyEventCallback;)V
    .registers 2

    .line 1795
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

.method public static synthetic $r8$lambda$Q9EVzlyy_4SUbjHT_ZC25mLt7Hg(Lcom/transsion/camera/app/common/IAppUIControl$IZoomKeyEventCallback;)V
    .registers 1

    .line 1827
    invoke-interface {p0}, Lcom/transsion/camera/app/common/IAppUIControl$IZoomKeyEventCallback;->onShoulderButtonZoomSwipeEnd()V

    return-void
.end method

.method public static synthetic $r8$lambda$SiZkRBNQGeTaZ65ZVbKAPrAqAdA(ZLcom/transsion/camera/app/common/IAppUIControl$IZoomKeyEventCallback;)V
    .registers 2

    .line 1773
    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/IAppUIControl$IZoomKeyEventCallback;->onZoomClick(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$WkKobk1LaAmtOyKom1tApmfVwtA(Lcom/transsion/camera/app/ui/BaseAppUI;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/BaseAppUI;->lambda$updateCustomState$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$ZwyvyzS00kDg0RGTPc47coZSluI(Lcom/transsion/camera/app/ui/BaseAppUI;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/BaseAppUI;->lambda$doUpdateSettingUIList$9()V

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

    .line 1805
    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/IAppUIControl$IZoomKeyEventCallback;->onZoomScaleEnd(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$jkNOFQXRjoL_v7HGA5o4vGBiZrk(Lcom/transsion/camera/app/ui/BaseAppUI;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/BaseAppUI;->onUIManagerReady()V

    return-void
.end method

.method public static synthetic $r8$lambda$wtj9mosKbu2AuLIivjV5c4C3BX4(Lcom/transsion/camera/app/ui/BaseAppUI;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/BaseAppUI;->lambda$doUpdateSettingUIList$10()V

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

    .line 1784
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

    .line 201
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "BaseAppUI"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/ui/BaseAppUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const/16 v0, 0x1f

    .line 555
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0xe

    .line 556
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x9c

    .line 557
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/Integer;

    move-result-object v0

    .line 554
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/transsion/camera/app/ui/BaseAppUI;->SHOW_LOG_TRACE_ACTIONS:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/transsion/camera/app/ui/ScreenManager;Lcom/transsion/camera/app/common/IApp$IIntentProxy;)V
    .registers 11

    .line 535
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 228
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mPrivacyCallbacks:Ljava/util/List;

    .line 230
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mPendingHints:Ljava/util/List;

    .line 231
    new-instance v0, Lcom/transsion/camera/app/ui/animator/UIAnimatorController;

    invoke-direct {v0}, Lcom/transsion/camera/app/ui/animator/UIAnimatorController;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mUIAnimatorController:Lcom/transsion/camera/app/common/IUIAnimatorController;

    const/4 v0, 0x1

    .line 233
    iput v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mCurrentAppUIState:I

    const/4 v1, -0x1

    .line 234
    iput v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mOrientation:I

    const/4 v2, 0x0

    .line 241
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mFrameOnceCome:Z

    .line 242
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mSecureCamera:Z

    .line 243
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mVoiceInteraction:Z

    .line 244
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mCameraSwitchFlag:Z

    .line 245
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mInZoomChanging:Z

    .line 247
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mIsPaused:Z

    .line 250
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mPhotoIntent:Z

    .line 251
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mVideoIntent:Z

    const/4 v3, 0x0

    .line 253
    iput-object v3, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mVoiceParameters:[Z

    .line 254
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mFromIntent:Z

    .line 256
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mUISinkModeChange:Z

    .line 257
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mOpenOnly:Z

    .line 258
    iput v2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mDelayTime:I

    .line 264
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mIntercept:Z

    .line 265
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mFirstSteadyFrameFlag:Z

    .line 267
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mIsModePickerSink:Z

    .line 268
    iput v2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mScrollModeIndex:I

    .line 270
    iput v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mShutterType:I

    .line 284
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mOnCompleteAllowed:Z

    .line 289
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mShouldHideThumbnailUI:Z

    .line 290
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mShouldHideGoogleLensUI:Z

    .line 292
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mIsShoulderTipsShow:Z

    .line 294
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mIsSellingPointVideoPlaying:Z

    .line 295
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mIsPreviewCoverUIShow:Z

    .line 298
    iput v2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mSeparateCaptureNumber:I

    .line 302
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mLockObj:Ljava/lang/Object;

    .line 311
    iput-object v3, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mModeInflateRoot:Landroid/view/ViewGroup;

    .line 329
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mUILayerRootParentList:Ljava/util/List;

    .line 346
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mSupportSuperAntiVideoV2:Z

    .line 420
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mUIManagers:Ljava/util/List;

    .line 424
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const/high16 v3, 0x3e800000    # 0.25f

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v0, v3, v4, v4, v5}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mPathInterpolator:Landroid/view/animation/PathInterpolator;

    .line 426
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v3, 0x3ea8f5c3    # 0.33f

    const v6, 0x3f28f5c3    # 0.66f

    invoke-direct {v0, v3, v4, v6, v5}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mAlphaPathInterpolator:Landroid/view/animation/PathInterpolator;

    .line 429
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mZoomKeyEventCallbacks:Ljava/util/List;

    .line 433
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mIsVideoRecording:Z

    .line 434
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mVideoThermalWarningSupport:Z

    .line 435
    iput v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mRecordingOrientation:I

    .line 436
    iput v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mShutterProcessingOrientation:I

    .line 437
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->isCapturing:Z

    .line 438
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mGraduationViewIsMoving:Z

    .line 444
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mIsTopBarItemListFocusable:Z

    .line 445
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mIsInteractiveListFocusable:Z

    .line 447
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mActionTriggerTime:Ljava/util/Map;

    .line 455
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mPreviewReadyForCurrentSession:Z

    .line 457
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mSkipUpdatePopSettingUIList:Z

    .line 463
    new-instance v0, Lcom/transsion/camera/app/ui/BaseAppUI$1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/ui/BaseAppUI$1;-><init>(Lcom/transsion/camera/app/ui/BaseAppUI;)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mRawActionCallback:Lcom/transsion/camera/app/common/mode/CameraOperateAction$RawActionHandleCallback;

    .line 481
    new-instance v0, Lcom/transsion/camera/app/ui/BaseAppUI$2;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/ui/BaseAppUI$2;-><init>(Lcom/transsion/camera/app/ui/BaseAppUI;)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mModeScrollListener:Lcom/transsion/camera/app/ui/IModeScrollUI$ModeScrollListener;

    .line 536
    iput-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mContext:Landroid/content/Context;

    .line 537
    iput-object p2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    .line 538
    new-instance v0, Lcom/transsion/camera/app/ui/BaseAppUI$UIHandler;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/ui/BaseAppUI$UIHandler;-><init>(Lcom/transsion/camera/app/ui/BaseAppUI;)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mUIHandler:Landroid/os/Handler;

    .line 539
    iput-object p3, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mIntentProxy:Lcom/transsion/camera/app/common/IApp$IIntentProxy;

    .line 540
    new-instance p3, Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager;

    invoke-direct {p3, p1, p2}, Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager;-><init>(Landroid/content/Context;Lcom/transsion/camera/app/common/manager/IScreenManager;)V

    iput-object p3, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mGpuAlgorithmManager:Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager;

    .line 541
    sget-object p1, Lcom/transsion/camera/app/ui/BaseAppUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mGpuAlgorithmManager: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 542
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 543
    sget p2, Lcom/transsion/camera/R$bool;->thumbnail_view_animation_open:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p2

    iput-boolean p2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mIsThumbnailAnimationNeed:Z

    .line 544
    sget p2, Lcom/transsion/camera/R$bool;->support_shutter_ui_new_style:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p2

    iput-boolean p2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mShutterUINewStyleSupport:Z

    .line 545
    sget p2, Lcom/transsion/camera/R$bool;->pop_setting_support:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mPopSettingUISupport:Z

    .line 546
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mSkipInteractiveUpdate:Z

    .line 547
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/BaseAppUI;->createSupportDebounceActionSet()Ljava/util/HashSet;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mSupportDebounceActionSet:Ljava/util/HashSet;

    return-void
.end method

.method private checkIfNeedDebounce(I)Z
    .registers 6

    .line 647
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mSupportDebounceActionSet:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_22

    .line 648
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 649
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

    .line 697
    new-instance p0, Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    const/16 v0, 0xd0

    .line 698
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const/16 v0, 0x31

    .line 699
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const/16 v0, 0x168

    .line 700
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method private delayLoadUIManager()V
    .registers 5

    .line 2859
    sget-object v0, Lcom/transsion/camera/app/ui/BaseAppUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "[delayLoadUIManager] start"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 2860
    new-instance v1, Lcom/transsion/camera/app/ui/BaseAppUI$ContinuousShotUIInflateStage;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v1, p0, v2, v3}, Lcom/transsion/camera/app/ui/BaseAppUI$ContinuousShotUIInflateStage;-><init>(Lcom/transsion/camera/app/ui/BaseAppUI;Lcom/transsion/camera/app/ui/BaseAppUI$UIInflateStage;Z)V

    .line 2861
    new-instance v2, Lcom/transsion/camera/app/ui/BaseAppUI$ToastUIInflateStage;

    invoke-direct {v2, p0, v1}, Lcom/transsion/camera/app/ui/BaseAppUI$ToastUIInflateStage;-><init>(Lcom/transsion/camera/app/ui/BaseAppUI;Lcom/transsion/camera/app/ui/BaseAppUI$UIInflateStage;)V

    .line 2862
    new-instance v1, Lcom/transsion/camera/app/ui/BaseAppUI$HintUIInflateStage;

    invoke-direct {v1, p0, v2}, Lcom/transsion/camera/app/ui/BaseAppUI$HintUIInflateStage;-><init>(Lcom/transsion/camera/app/ui/BaseAppUI;Lcom/transsion/camera/app/ui/BaseAppUI$UIInflateStage;)V

    .line 2863
    new-instance v2, Lcom/transsion/camera/app/ui/BaseAppUI$OverlayUIInflateStage;

    invoke-direct {v2, p0, v1}, Lcom/transsion/camera/app/ui/BaseAppUI$OverlayUIInflateStage;-><init>(Lcom/transsion/camera/app/ui/BaseAppUI;Lcom/transsion/camera/app/ui/BaseAppUI$UIInflateStage;)V

    .line 2864
    new-instance v1, Lcom/transsion/camera/app/ui/BaseAppUI$WideCameraUIInflateStage;

    invoke-direct {v1, p0, v2}, Lcom/transsion/camera/app/ui/BaseAppUI$WideCameraUIInflateStage;-><init>(Lcom/transsion/camera/app/ui/BaseAppUI;Lcom/transsion/camera/app/ui/BaseAppUI$UIInflateStage;)V

    .line 2865
    new-instance v2, Lcom/transsion/camera/app/ui/BaseAppUI$TopLayerUIInflateStage;

    invoke-direct {v2, p0, v1}, Lcom/transsion/camera/app/ui/BaseAppUI$TopLayerUIInflateStage;-><init>(Lcom/transsion/camera/app/ui/BaseAppUI;Lcom/transsion/camera/app/ui/BaseAppUI$UIInflateStage;)V

    .line 2866
    invoke-virtual {v2}, Lcom/transsion/camera/app/ui/BaseAppUI$TopLayerUIInflateStage;->process()V

    .line 2867
    const-string p0, "[delayLoadUIManager] end"

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private doDelayLoadUIManager()V
    .registers 5

    .line 2848
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mRootView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/View;->hasWindowFocus()Z

    move-result v0

    .line 2849
    sget-object v1, Lcom/transsion/camera/app/ui/BaseAppUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[doDelayLoadUIManager] mRootView hasWindowFocus: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 2851
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mUIHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getQueue()Landroid/os/MessageQueue;

    move-result-object v0

    new-instance v1, Lcom/transsion/camera/app/ui/BaseAppUI$$ExternalSyntheticLambda12;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/ui/BaseAppUI$$ExternalSyntheticLambda12;-><init>(Lcom/transsion/camera/app/ui/BaseAppUI;)V

    invoke-virtual {v0, v1}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    return-void
.end method

.method private doHideCustomPreviewCover()V
    .registers 1

    .line 802
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mPreviewUIManager:Lcom/transsion/camera/app/ui/manager/PreviewUIManager;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/PreviewUIManager;->hideCustomPreviewCover()V

    return-void
.end method

.method private doInflateBottomBar()V
    .registers 7

    .line 5537
    sget-object v0, Lcom/transsion/camera/app/ui/BaseAppUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "[PreviewPerformance] doLoadBottomUI start"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 5538
    const-string v1, "doLoadBottomUI"

    invoke-static {v1}, Lcom/transsion/camera/utils/debug/TraceUtil;->begin(Ljava/lang/String;)V

    .line 5539
    iget-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mThumbnailUIManager:Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;

    const/4 v2, 0x0

    if-eqz v1, :cond_23

    iget-object v3, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mShutterPanelRootView:Landroid/view/ViewGroup;

    if-eqz v3, :cond_23

    .line 5540
    iget-object v4, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mRootView:Landroid/view/ViewGroup;

    iget-object v5, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mLayoutInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v1, v4, v3, v5}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->inflateLayout(Landroid/view/ViewGroup;Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)V

    .line 5541
    iget-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mThumbnailUIManager:Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;

    iget v3, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mOrientation:I

    invoke-virtual {v1, v3, v2}, Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;->onOrientationChanged(IZ)V

    .line 5544
    :cond_23
    iget-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mCameraSwitcherUIManager:Lcom/transsion/camera/app/ui/manager/CameraSwitcherUIManager;

    if-eqz v1, :cond_42

    iget-object v3, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mShutterPanelRootView:Landroid/view/ViewGroup;

    if-eqz v3, :cond_42

    .line 5545
    iget-object v4, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mLayoutInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v1, v3, v4}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->inflateLayout(Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)V

    .line 5546
    iget-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mCameraSwitcherUIManager:Lcom/transsion/camera/app/ui/manager/CameraSwitcherUIManager;

    iget v3, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mOrientation:I

    invoke-virtual {v1, v3, v2}, Lcom/transsion/camera/app/ui/manager/CameraSwitcherUIManager;->onOrientationChanged(IZ)V

    .line 5547
    iget-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mCameraSwitcherUIManager:Lcom/transsion/camera/app/ui/manager/CameraSwitcherUIManager;

    new-instance v3, Lcom/transsion/camera/app/ui/BaseAppUI$CameraSwitchListenerImpl;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/transsion/camera/app/ui/BaseAppUI$CameraSwitchListenerImpl;-><init>(Lcom/transsion/camera/app/ui/BaseAppUI;Lcom/transsion/camera/app/ui/BaseAppUI-IA;)V

    invoke-virtual {v1, v3}, Lcom/transsion/camera/app/ui/manager/CameraSwitcherUIManager;->setCameraSwitchListener(Lcom/transsion/camera/app/common/IAppUIListener$ICameraSwitchListener;)V

    .line 5550
    :cond_42
    iget-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mShutterUIManager:Lcom/transsion/camera/app/ui/manager/ShutterUIManager;

    if-eqz v1, :cond_56

    iget-object v3, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mShutterPanelRootView:Landroid/view/ViewGroup;

    if-eqz v3, :cond_56

    .line 5551
    iget-object v4, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mLayoutInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v1, v3, v4}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->inflateLayout(Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)V

    .line 5552
    iget-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mShutterUIManager:Lcom/transsion/camera/app/ui/manager/ShutterUIManager;

    iget v3, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mOrientation:I

    invoke-virtual {v1, v3, v2}, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->onOrientationChanged(IZ)V

    .line 5558
    :cond_56
    iget-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mFloatingShutterUIManager:Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;

    if-eqz v1, :cond_63

    iget-object v2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mFloatingShutterLayout:Landroid/widget/FrameLayout;

    if-eqz v2, :cond_63

    .line 5559
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mLayoutInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v1, v2, p0}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->inflateLayout(Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)V

    .line 5561
    :cond_63
    invoke-static {}, Lcom/transsion/camera/utils/debug/TraceUtil;->end()V

    .line 5562
    const-string p0, "[PreviewPerformance] doLoadBottomUI end"

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private doInflateHelpUI()V
    .registers 5

    .line 5668
    sget-object v0, Lcom/transsion/camera/app/ui/BaseAppUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "[PreviewPerformance] doLoadHelpUI start"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 5669
    const-string v1, "doLoadHelpUI"

    invoke-static {v1}, Lcom/transsion/camera/utils/debug/TraceUtil;->begin(Ljava/lang/String;)V

    .line 5670
    iget-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mHelpGuideUIManager:Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;

    if-eqz v1, :cond_1c

    .line 5671
    iget-object v2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mBelowMainCtrlInflateRoot:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mLayoutInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v1, v2, v3}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->inflateLayout(Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)V

    .line 5672
    iget-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mHelpGuideUIManager:Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;

    invoke-virtual {p0, v1}, Lcom/transsion/camera/app/ui/BaseAppUI;->registerPreviewRectListener(Lcom/transsion/camera/app/common/IAppUIListener$IPreviewRectListener;)V

    .line 5674
    :cond_1c
    invoke-static {}, Lcom/transsion/camera/utils/debug/TraceUtil;->end()V

    .line 5675
    const-string p0, "[PreviewPerformance] doLoadHelpUI end"

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private doInflateInteractUI()V
    .registers 9

    .line 5598
    sget-object v0, Lcom/transsion/camera/app/ui/BaseAppUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "[PreviewPerformance] doInflateInteractUI start"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 5599
    const-string v1, "doInflateInteractUI"

    invoke-static {v1}, Lcom/transsion/camera/utils/debug/TraceUtil;->begin(Ljava/lang/String;)V

    .line 5601
    iget-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mInteractiveUIManager:Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;

    if-eqz v1, :cond_4c

    .line 5602
    new-instance v2, Lcom/transsion/camera/app/common/interactive/CommonInteractive;

    iget-object v3, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mModePickerLayout:Landroid/view/View;

    iget-object v4, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mModePikerArrowRoot:Landroid/view/View;

    iget-object v5, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mShutterPanelRootView:Landroid/view/ViewGroup;

    move-object v7, p0

    move-object v6, p0

    invoke-direct/range {v2 .. v7}, Lcom/transsion/camera/app/common/interactive/CommonInteractive;-><init>(Landroid/view/View;Landroid/view/View;Landroid/view/View;Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;Lcom/transsion/camera/app/common/IAppUI;)V

    .line 5604
    iget-object p0, v6, Lcom/transsion/camera/app/ui/BaseAppUI;->mModePickerUIManager:Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;

    invoke-virtual {v2, p0}, Lcom/transsion/camera/app/common/interactive/CommonInteractive;->setModeRegionControl(Lcom/transsion/camera/app/common/IModeRegionControl;)V

    .line 5605
    iget-object p0, v6, Lcom/transsion/camera/app/ui/BaseAppUI;->mInteractiveUIManager:Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;

    iget-object v1, v6, Lcom/transsion/camera/app/ui/BaseAppUI;->mBelowMainCtrlInflateRoot:Landroid/view/ViewGroup;

    iget-object v3, v6, Lcom/transsion/camera/app/ui/BaseAppUI;->mLayoutInflater:Landroid/view/LayoutInflater;

    invoke-virtual {p0, v1, v2, v3}, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->init(Landroid/view/ViewGroup;Lcom/transsion/camera/app/common/interactive/CommonInteractive;Landroid/view/LayoutInflater;)V

    .line 5606
    iget-object p0, v6, Lcom/transsion/camera/app/ui/BaseAppUI;->mInteractiveUIManager:Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;

    iget-object v1, v6, Lcom/transsion/camera/app/ui/BaseAppUI;->mSwitchWideCameraListener:Lcom/transsion/camera/app/common/IAppUIListener$ISwitchWideCameraListener;

    invoke-virtual {p0, v1}, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->setSwitchWideCameraListener(Lcom/transsion/camera/app/common/IAppUIListener$ISwitchWideCameraListener;)V

    .line 5607
    iget-object p0, v6, Lcom/transsion/camera/app/ui/BaseAppUI;->mInteractiveUIManager:Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;

    invoke-virtual {v6, p0}, Lcom/transsion/camera/app/ui/BaseAppUI;->registerPreviewRectListener(Lcom/transsion/camera/app/common/IAppUIListener$IPreviewRectListener;)V

    .line 5608
    iget-object p0, v6, Lcom/transsion/camera/app/ui/BaseAppUI;->mInteractiveUIManager:Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;

    new-instance v1, Lcom/transsion/camera/app/ui/BaseAppUI$SwitchDualAndMainCameraListenerImpl;

    const/4 v2, 0x0

    invoke-direct {v1, v6, v2}, Lcom/transsion/camera/app/ui/BaseAppUI$SwitchDualAndMainCameraListenerImpl;-><init>(Lcom/transsion/camera/app/ui/BaseAppUI;Lcom/transsion/camera/app/ui/BaseAppUI-IA;)V

    invoke-virtual {p0, v1}, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->setSwitchDualAndMainCameraListener(Lcom/transsion/camera/app/common/IAppUIListener$ISwitchDualAndMainCameraListener;)V

    .line 5609
    iget-object p0, v6, Lcom/transsion/camera/app/ui/BaseAppUI;->mInteractiveUIManager:Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;

    new-instance v1, Lcom/transsion/camera/app/ui/BaseAppUI$RestartPreviewListenerImpl;

    invoke-direct {v1, v6, v2}, Lcom/transsion/camera/app/ui/BaseAppUI$RestartPreviewListenerImpl;-><init>(Lcom/transsion/camera/app/ui/BaseAppUI;Lcom/transsion/camera/app/ui/BaseAppUI-IA;)V

    invoke-virtual {p0, v1}, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->setRestartPreviewListener(Lcom/transsion/camera/app/common/IAppUIListener$IRestartPreviewListener;)V

    .line 5611
    :cond_4c
    invoke-static {}, Lcom/transsion/camera/utils/debug/TraceUtil;->end()V

    .line 5612
    const-string p0, "[PreviewPerformance] doInflateInteractUI end"

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private doInflateMasterGuideUI()V
    .registers 4

    .line 5512
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mMasterGuideUIManager:Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;

    if-eqz v0, :cond_19

    .line 5513
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mRootView:Landroid/view/ViewGroup;

    sget v1, Lcom/transsion/camera/R$id;->master_guide_layer_root:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_19

    .line 5515
    iget-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mMasterGuideUIManager:Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mRootView:Landroid/view/ViewGroup;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mLayoutInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v1, v2, v0, p0}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->inflateLayout(Landroid/view/ViewGroup;Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)V

    :cond_19
    return-void
.end method

.method private doInflateModeSelectUI()V
    .registers 5

    .line 5566
    sget-object v0, Lcom/transsion/camera/app/ui/BaseAppUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "[PreviewPerformance] doLoadModeSelectUI start"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 5567
    const-string v1, "doLoadModeSelectUI"

    invoke-static {v1}, Lcom/transsion/camera/utils/debug/TraceUtil;->begin(Ljava/lang/String;)V

    .line 5568
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/BaseAppUI;->doSetupModePickerUIManager()V

    .line 5569
    iget-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mContext:Landroid/content/Context;

    if-nez v1, :cond_1c

    .line 5570
    const-string p0, "doLoadModeSelectUI mContext is null"

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 5571
    invoke-static {}, Lcom/transsion/camera/utils/debug/TraceUtil;->end()V

    return-void

    .line 5574
    :cond_1c
    iget-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mRootView:Landroid/view/ViewGroup;

    sget v2, Lcom/transsion/camera/R$id;->mode_picker_tab_frame:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mModePickerLayout:Landroid/view/View;

    .line 5575
    iget-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mRootView:Landroid/view/ViewGroup;

    sget v2, Lcom/transsion/camera/R$id;->mode_picker_tab_layout:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/ui/widget/TabLayout;

    iput-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mModeTabLayout:Lcom/transsion/camera/app/ui/widget/TabLayout;

    .line 5576
    iget-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mRootView:Landroid/view/ViewGroup;

    sget v2, Lcom/transsion/camera/R$id;->mode_picker_container:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mModePickerContainer:Landroid/view/View;

    .line 5577
    iget-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mRootView:Landroid/view/ViewGroup;

    sget v2, Lcom/transsion/camera/R$id;->top_layer_root:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mTopLayerRoot:Landroid/view/ViewGroup;

    .line 5578
    iget-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mRootView:Landroid/view/ViewGroup;

    sget v2, Lcom/transsion/camera/R$id;->mode_selector_layout:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/ui/widget/VerticalModeSelector;

    iput-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mVerticalModeSelector:Lcom/transsion/camera/app/ui/widget/VerticalModeSelector;

    .line 5579
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v1

    iget v1, v1, Lcom/transsion/camera/utils/CustomConfigUtil;->mModePickerStyle:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_72

    .line 5581
    iget-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mRootView:Landroid/view/ViewGroup;

    sget v2, Lcom/transsion/camera/R$id;->more_mode_guide_left_root:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mMoreModeGuideLeftRoot:Landroid/view/View;

    .line 5582
    iget-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mRootView:Landroid/view/ViewGroup;

    sget v2, Lcom/transsion/camera/R$id;->more_mode_guide_right_root:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mMoreModeGuideRightRoot:Landroid/view/View;

    goto :goto_7c

    .line 5584
    :cond_72
    iget-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mRootView:Landroid/view/ViewGroup;

    sget v2, Lcom/transsion/camera/R$id;->mode_picker_arrow_root:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mModePikerArrowRoot:Landroid/view/View;

    .line 5587
    :goto_7c
    iget-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mModePickerUIManager:Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;

    if-eqz v1, :cond_92

    .line 5588
    iget-object v2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mPreviewGestureManager:Lcom/transsion/camera/app/ui/gesture/PreviewGestureManager;

    const/16 v3, 0x8

    invoke-virtual {v2, v1, v3}, Lcom/transsion/camera/app/ui/gesture/PreviewGestureManager;->registerGestureListener(Lcom/transsion/camera/app/common/IAppUIListener$IPreviewGestureListener;I)V

    .line 5590
    iget-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mModePickerUIManager:Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;

    new-instance v2, Lcom/transsion/camera/app/ui/BaseAppUI$ModeChangedListenerImpl;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/transsion/camera/app/ui/BaseAppUI$ModeChangedListenerImpl;-><init>(Lcom/transsion/camera/app/ui/BaseAppUI;Lcom/transsion/camera/app/ui/BaseAppUI-IA;)V

    invoke-virtual {v1, v2}, Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;->setModePickerListener(Lcom/transsion/camera/app/common/IAppUIListener$IModeChangedListener;)V

    .line 5592
    :cond_92
    invoke-static {}, Lcom/transsion/camera/utils/debug/TraceUtil;->end()V

    .line 5593
    const-string p0, "[PreviewPerformance] doLoadModeSelectUI end"

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private doInflateOverlayUI()V
    .registers 9

    .line 5679
    sget-object v0, Lcom/transsion/camera/app/ui/BaseAppUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "[PreviewPerformance] doLoadOverlayUI start"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 5680
    const-string v1, "doLoadOverlayUI"

    invoke-static {v1}, Lcom/transsion/camera/utils/debug/TraceUtil;->begin(Ljava/lang/String;)V

    .line 5681
    iget-object v2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mOverlayUIManager:Lcom/transsion/camera/app/ui/manager/OverlayUIManager;

    if-eqz v2, :cond_32

    iget-object v4, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mOverlayUIRoot:Landroid/view/ViewGroup;

    if-eqz v4, :cond_32

    .line 5682
    iget-object v3, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mRootView:Landroid/view/ViewGroup;

    iget-object v5, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mLayoutInflater:Landroid/view/LayoutInflater;

    iget-object v6, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mCameraZoomLayout:Landroid/view/ViewGroup;

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->inflateLayout(Landroid/view/ViewGroup;Landroid/view/ViewGroup;Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/view/ViewGroup;)V

    .line 5683
    iget-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mOverlayUIManager:Lcom/transsion/camera/app/ui/manager/OverlayUIManager;

    invoke-virtual {p0, v1}, Lcom/transsion/camera/app/ui/BaseAppUI;->registerPreviewRectListener(Lcom/transsion/camera/app/common/IAppUIListener$IPreviewRectListener;)V

    .line 5684
    iget-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mOverlayUIManager:Lcom/transsion/camera/app/ui/manager/OverlayUIManager;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mSwitchWideCameraListener:Lcom/transsion/camera/app/common/IAppUIListener$ISwitchWideCameraListener;

    invoke-virtual {v1, v2}, Lcom/transsion/camera/app/ui/manager/OverlayUIManager;->setSwitchWideCameraListener(Lcom/transsion/camera/app/common/IAppUIListener$ISwitchWideCameraListener;)V

    .line 5685
    iget-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mPreviewGestureManager:Lcom/transsion/camera/app/ui/gesture/PreviewGestureManager;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mOverlayUIManager:Lcom/transsion/camera/app/ui/manager/OverlayUIManager;

    const/4 v2, 0x6

    invoke-virtual {v1, p0, v2}, Lcom/transsion/camera/app/ui/gesture/PreviewGestureManager;->registerGestureListener(Lcom/transsion/camera/app/common/IAppUIListener$IPreviewGestureListener;I)V

    .line 5688
    :cond_32
    invoke-static {}, Lcom/transsion/camera/utils/debug/TraceUtil;->end()V

    .line 5689
    const-string p0, "[PreviewPerformance] doLoadOverlayUI end"

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private doInflatePopSettingUI()V
    .registers 5

    .line 5495
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mPopSettingUISupport:Z

    if-eqz v0, :cond_48

    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mPopSettingUIManager:Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;

    if-eqz v0, :cond_48

    .line 5496
    sget-object v0, Lcom/transsion/camera/app/ui/BaseAppUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "[PreviewPerformance] doInflatePopSettingUI start"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 5497
    const-string v1, "doInflatePopSettingUI"

    invoke-static {v1}, Lcom/transsion/camera/utils/debug/TraceUtil;->begin(Ljava/lang/String;)V

    .line 5498
    iget-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mRootView:Landroid/view/ViewGroup;

    sget v2, Lcom/transsion/camera/R$id;->pop_setting_root:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_40

    .line 5500
    iget-object v2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mPopSettingUIManager:Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;

    iget-object v3, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mLayoutInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v2, v1, v3}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->inflateLayout(Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)V

    .line 5501
    iget-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mPopSettingUIManager:Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;

    invoke-virtual {p0, v1}, Lcom/transsion/camera/app/ui/BaseAppUI;->registerPreviewRectListener(Lcom/transsion/camera/app/common/IAppUIListener$IPreviewRectListener;)V

    .line 5502
    iget-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mPreviewGestureManager:Lcom/transsion/camera/app/ui/gesture/PreviewGestureManager;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mPopSettingUIManager:Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;

    const/16 v3, 0x8

    invoke-virtual {v1, v2, v3}, Lcom/transsion/camera/app/ui/gesture/PreviewGestureManager;->registerGestureListener(Lcom/transsion/camera/app/common/IAppUIListener$IPreviewGestureListener;I)V

    .line 5504
    iget-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mPopSettingUIManager:Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;

    new-instance v2, Lcom/transsion/camera/app/ui/BaseAppUI$FragmentListenerImpl;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/transsion/camera/app/ui/BaseAppUI$FragmentListenerImpl;-><init>(Lcom/transsion/camera/app/ui/BaseAppUI;Lcom/transsion/camera/app/ui/BaseAppUI-IA;)V

    invoke-virtual {v1, v2}, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->setSettingFragmentListener(Lcom/transsion/camera/app/common/IAppUIListener$IFragmentListener;)V

    .line 5506
    :cond_40
    invoke-static {}, Lcom/transsion/camera/utils/debug/TraceUtil;->end()V

    .line 5507
    const-string p0, "[PreviewPerformance] doInflatePopSettingUI end"

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :cond_48
    return-void
.end method

.method private doInflateSellingPointGuideUI()V
    .registers 5

    .line 5521
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportSellingPointGuide:Z

    if-eqz v0, :cond_41

    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mSellingPointGuideUIManager:Lcom/transsion/camera/app/ui/manager/SellingPointGuideUIManager;

    if-eqz v0, :cond_41

    .line 5522
    sget-object v0, Lcom/transsion/camera/app/ui/BaseAppUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "[PreviewPerformance] doInflateSellingPointGuideUI start"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 5523
    const-string v1, "doInflateSellingPointGuideUI"

    invoke-static {v1}, Lcom/transsion/camera/utils/debug/TraceUtil;->begin(Ljava/lang/String;)V

    .line 5524
    iget-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mRootView:Landroid/view/ViewGroup;

    sget v2, Lcom/transsion/camera/R$id;->below_main_control_layer_root:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_39

    .line 5526
    iget-object v2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mSellingPointGuideUIManager:Lcom/transsion/camera/app/ui/manager/SellingPointGuideUIManager;

    iget-object v3, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mLayoutInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v2, v1, v3}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->inflateLayout(Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)V

    .line 5527
    iget-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mSellingPointGuideUIManager:Lcom/transsion/camera/app/ui/manager/SellingPointGuideUIManager;

    invoke-virtual {p0, v1}, Lcom/transsion/camera/app/ui/BaseAppUI;->registerPreviewRectListener(Lcom/transsion/camera/app/common/IAppUIListener$IPreviewRectListener;)V

    .line 5528
    iget-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mPreviewGestureManager:Lcom/transsion/camera/app/ui/gesture/PreviewGestureManager;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mSellingPointGuideUIManager:Lcom/transsion/camera/app/ui/manager/SellingPointGuideUIManager;

    const/16 v2, 0x8

    invoke-virtual {v1, p0, v2}, Lcom/transsion/camera/app/ui/gesture/PreviewGestureManager;->registerGestureListener(Lcom/transsion/camera/app/common/IAppUIListener$IPreviewGestureListener;I)V

    .line 5531
    :cond_39
    invoke-static {}, Lcom/transsion/camera/utils/debug/TraceUtil;->end()V

    .line 5532
    const-string p0, "[PreviewPerformance] doInflateSellingPointGuideUI end"

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :cond_41
    return-void
.end method

.method private doInflateTopBarUI()V
    .registers 5

    .line 5473
    sget-object v0, Lcom/transsion/camera/app/ui/BaseAppUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "[PreviewPerformance] doInflateTopBarUI start"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 5474
    const-string v1, "doInflateTopBarUI"

    invoke-static {v1}, Lcom/transsion/camera/utils/debug/TraceUtil;->begin(Ljava/lang/String;)V

    .line 5475
    iget-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mRootView:Landroid/view/ViewGroup;

    sget v2, Lcom/transsion/camera/R$id;->top_bar_layout_root:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_62

    .line 5477
    iget-object v2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mTopBarUIManager:Lcom/transsion/camera/app/ui/manager/TopBarUIManager;

    if-eqz v2, :cond_62

    .line 5478
    iget-object v3, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mLayoutInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v2, v1, v3}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->inflateLayout(Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)V

    .line 5479
    iget-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mTopBarUIManager:Lcom/transsion/camera/app/ui/manager/TopBarUIManager;

    invoke-virtual {p0, v1}, Lcom/transsion/camera/app/ui/BaseAppUI;->registerPreviewRectListener(Lcom/transsion/camera/app/common/IAppUIListener$IPreviewRectListener;)V

    .line 5480
    iget-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mPreviewGestureManager:Lcom/transsion/camera/app/ui/gesture/PreviewGestureManager;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mTopBarUIManager:Lcom/transsion/camera/app/ui/manager/TopBarUIManager;

    const/16 v3, 0x8

    invoke-virtual {v1, v2, v3}, Lcom/transsion/camera/app/ui/gesture/PreviewGestureManager;->registerGestureListener(Lcom/transsion/camera/app/common/IAppUIListener$IPreviewGestureListener;I)V

    .line 5481
    iget-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mTopBarUIManager:Lcom/transsion/camera/app/ui/manager/TopBarUIManager;

    new-instance v2, Lcom/transsion/camera/app/ui/BaseAppUI$FragmentListenerImpl;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/transsion/camera/app/ui/BaseAppUI$FragmentListenerImpl;-><init>(Lcom/transsion/camera/app/ui/BaseAppUI;Lcom/transsion/camera/app/ui/BaseAppUI-IA;)V

    invoke-virtual {v1, v2}, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->setSettingFragmentListener(Lcom/transsion/camera/app/common/IAppUIListener$IFragmentListener;)V

    .line 5482
    iget-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mTopBarUIManager:Lcom/transsion/camera/app/ui/manager/TopBarUIManager;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mSwitchWideCameraListener:Lcom/transsion/camera/app/common/IAppUIListener$ISwitchWideCameraListener;

    invoke-virtual {v1, v2}, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->setSwitchWideCameraListener(Lcom/transsion/camera/app/common/IAppUIListener$ISwitchWideCameraListener;)V

    .line 5483
    iget-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mTopBarUIManager:Lcom/transsion/camera/app/ui/manager/TopBarUIManager;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mSwitchTeleCameraListener:Lcom/transsion/camera/app/common/IAppUIListener$ISwitchLogicalCameraListener;

    invoke-virtual {v1, v2}, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->setSwitchTeleCameraListener(Lcom/transsion/camera/app/common/IAppUIListener$ISwitchLogicalCameraListener;)V

    .line 5484
    iget-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mTopBarUIManager:Lcom/transsion/camera/app/ui/manager/TopBarUIManager;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mSwitchPeriscopeCameraListener:Lcom/transsion/camera/app/common/IAppUIListener$ISwitchPeriscopeCameraListener;

    invoke-virtual {v1, v2}, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->setSwitchPeriscopeCameraListener(Lcom/transsion/camera/app/common/IAppUIListener$ISwitchPeriscopeCameraListener;)V

    .line 5485
    iget-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mTopBarUIManager:Lcom/transsion/camera/app/ui/manager/TopBarUIManager;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mSwitchBlurCameraListener:Lcom/transsion/camera/app/common/IAppUIListener$ISwitchBlurCameraListener;

    invoke-virtual {v1, v2}, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->setSwitchBlurCameraListener(Lcom/transsion/camera/app/common/IAppUIListener$ISwitchBlurCameraListener;)V

    .line 5486
    iget-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mTopBarUIManager:Lcom/transsion/camera/app/ui/manager/TopBarUIManager;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mSwitchDualCamBWListener:Lcom/transsion/camera/app/common/IAppUIListener$ISwitchDualCamBWCameraListener;

    invoke-virtual {v1, v2}, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->setSwitchDualCamBWCameraListener(Lcom/transsion/camera/app/common/IAppUIListener$ISwitchDualCamBWCameraListener;)V

    .line 5487
    iget-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mTopBarUIManager:Lcom/transsion/camera/app/ui/manager/TopBarUIManager;

    invoke-virtual {v1, p0}, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->setPopupOptionControl(Lcom/transsion/camera/app/common/IAppUIControl$IPopupOptionControl;)V

    .line 5490
    :cond_62
    invoke-static {}, Lcom/transsion/camera/utils/debug/TraceUtil;->end()V

    .line 5491
    const-string p0, "[PreviewPerformance] doInflateTopBarUI end"

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private doInflateWideCameraUI()V
    .registers 5

    .line 5646
    sget-object v0, Lcom/transsion/camera/app/ui/BaseAppUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "[PreviewPerformance] doLoadWideCameraUI start"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 5647
    const-string v1, "doLoadWideCameraUI"

    invoke-static {v1}, Lcom/transsion/camera/utils/debug/TraceUtil;->begin(Ljava/lang/String;)V

    .line 5648
    iget-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mWideCameraUIManager:Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;

    if-eqz v1, :cond_37

    .line 5649
    iget-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mRootView:Landroid/view/ViewGroup;

    sget v2, Lcom/transsion/camera/R$id;->wide_camera_layer:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewStub;

    if-eqz v1, :cond_1f

    .line 5651
    invoke-virtual {v1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 5653
    :cond_1f
    iget-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mRootView:Landroid/view/ViewGroup;

    sget v2, Lcom/transsion/camera/R$id;->wide_camera_layer_root:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 5654
    iget-object v2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mWideCameraUIManager:Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;

    iget-object v3, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mLayoutInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v2, v1, v3}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->inflateLayout(Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)V

    .line 5655
    iget-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mWideCameraUIManager:Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mSwitchWideCameraListener:Lcom/transsion/camera/app/common/IAppUIListener$ISwitchWideCameraListener;

    invoke-virtual {v1, p0}, Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;->setSwitchWideCameraListener(Lcom/transsion/camera/app/common/IAppUIListener$ISwitchWideCameraListener;)V

    .line 5657
    :cond_37
    invoke-static {}, Lcom/transsion/camera/utils/debug/TraceUtil;->end()V

    .line 5658
    const-string p0, "[PreviewPerformance] doLoadWideCameraUI end"

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private doLoadHintUIManager()V
    .registers 8

    .line 2871
    sget-object v0, Lcom/transsion/camera/app/ui/BaseAppUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "[doLoadHintUIManager] start"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 2872
    const-string v0, "doLoadHintUIManager"

    invoke-static {v0}, Lcom/transsion/camera/utils/debug/TraceUtil;->begin(Ljava/lang/String;)V

    .line 2873
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mHintUIManager:Lcom/transsion/camera/app/ui/manager/HintUIManager;

    if-nez v0, :cond_a8

    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mHintRootLayout:Landroid/view/ViewGroup;

    if-eqz v0, :cond_a8

    .line 2874
    new-instance v0, Lcom/transsion/camera/app/ui/widget/adapter/UIAdapter$Builder;

    invoke-direct {v0}, Lcom/transsion/camera/app/ui/widget/adapter/UIAdapter$Builder;-><init>()V

    sget-object v1, Lcom/transsion/camera/app/ui/widget/adapter/UIAdapter$Version;->UI5:Lcom/transsion/camera/app/ui/widget/adapter/UIAdapter$Version;

    const-string v2, "com.transsion.camera.app.ui.manager.factory.HintUI5ManagerFactory"

    .line 2875
    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/ui/widget/adapter/UIAdapter$Builder;->add(Lcom/transsion/camera/app/ui/widget/adapter/UIAdapter$Version;Ljava/lang/String;)Lcom/transsion/camera/app/ui/widget/adapter/UIAdapter$Builder;

    move-result-object v0

    new-instance v1, Lcom/transsion/camera/app/ui/BaseAppUI$$ExternalSyntheticLambda17;

    invoke-direct {v1}, Lcom/transsion/camera/app/ui/BaseAppUI$$ExternalSyntheticLambda17;-><init>()V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    .line 2876
    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/ui/widget/adapter/UIAdapter$Builder;->build(Ljava/util/function/Supplier;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/transsion/camera/app/ui/manager/factory/HintUIManagerFactory;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    const/4 v6, 0x0

    move-object v4, p0

    move-object v5, p0

    move-object v3, p0

    .line 2877
    invoke-virtual/range {v1 .. v6}, Lcom/transsion/camera/app/ui/manager/factory/AbstractUIManagerFactory;->createHintUIManager(Lcom/transsion/camera/app/ui/ScreenManager;Lcom/transsion/camera/app/common/IAppUIControl$IModePickerControl;Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;)Lcom/transsion/camera/app/common/manager/AbstractViewManager;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/app/ui/manager/HintUIManager;

    iput-object p0, v3, Lcom/transsion/camera/app/ui/BaseAppUI;->mHintUIManager:Lcom/transsion/camera/app/ui/manager/HintUIManager;

    .line 2878
    iget-object v0, v3, Lcom/transsion/camera/app/ui/BaseAppUI;->mUIManagers:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2879
    iget-object p0, v3, Lcom/transsion/camera/app/ui/BaseAppUI;->mHintUIManager:Lcom/transsion/camera/app/ui/manager/HintUIManager;

    iget-object v0, v3, Lcom/transsion/camera/app/ui/BaseAppUI;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/manager/HintUIManager;->setSettingController(Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)V

    .line 2880
    iget-object p0, v3, Lcom/transsion/camera/app/ui/BaseAppUI;->mHintUIManager:Lcom/transsion/camera/app/ui/manager/HintUIManager;

    iget-object v0, v3, Lcom/transsion/camera/app/ui/BaseAppUI;->mHintRootLayout:Landroid/view/ViewGroup;

    iget-object v1, v3, Lcom/transsion/camera/app/ui/BaseAppUI;->mLayoutInflater:Landroid/view/LayoutInflater;

    invoke-virtual {p0, v0, v1}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->inflateLayout(Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)V

    .line 2881
    iget-object p0, v3, Lcom/transsion/camera/app/ui/BaseAppUI;->mHintUIManager:Lcom/transsion/camera/app/ui/manager/HintUIManager;

    iget v0, v3, Lcom/transsion/camera/app/ui/BaseAppUI;->mOrientation:I

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/transsion/camera/app/ui/manager/HintUIManager;->onOrientationChanged(IZ)V

    .line 2882
    iget-object p0, v3, Lcom/transsion/camera/app/ui/BaseAppUI;->mHintUIManager:Lcom/transsion/camera/app/ui/manager/HintUIManager;

    invoke-virtual {v3, p0}, Lcom/transsion/camera/app/ui/BaseAppUI;->registerScreenFormListener(Lcom/transsion/camera/app/common/IScreenFormControl;)V

    .line 2883
    iget-object p0, v3, Lcom/transsion/camera/app/ui/BaseAppUI;->mHintUIManager:Lcom/transsion/camera/app/ui/manager/HintUIManager;

    invoke-virtual {v3, p0}, Lcom/transsion/camera/app/ui/BaseAppUI;->registerPreviewRectListener(Lcom/transsion/camera/app/common/IAppUIListener$IPreviewRectListener;)V

    .line 2884
    iget-object p0, v3, Lcom/transsion/camera/app/ui/BaseAppUI;->mHintUIManager:Lcom/transsion/camera/app/ui/manager/HintUIManager;

    const/16 v0, 0xa

    invoke-virtual {v3, p0, v0}, Lcom/transsion/camera/app/ui/BaseAppUI;->registerPreviewGestureListener(Lcom/transsion/camera/app/common/IAppUIListener$IPreviewGestureListener;I)V

    .line 2886
    iget-object p0, v3, Lcom/transsion/camera/app/ui/BaseAppUI;->mOnceLowPowerHint:Lcom/transsion/camera/app/common/ui/HintInfo;

    const/4 v0, 0x0

    if-eqz p0, :cond_78

    .line 2887
    iget-object v1, v3, Lcom/transsion/camera/app/ui/BaseAppUI;->mHintUIManager:Lcom/transsion/camera/app/ui/manager/HintUIManager;

    invoke-virtual {v1, p0}, Lcom/transsion/camera/app/ui/manager/HintUIManager;->showLowPowerHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    .line 2888
    iput-object v0, v3, Lcom/transsion/camera/app/ui/BaseAppUI;->mOnceLowPowerHint:Lcom/transsion/camera/app/common/ui/HintInfo;

    .line 2890
    :cond_78
    iget-object p0, v3, Lcom/transsion/camera/app/ui/BaseAppUI;->mOnceLensDirtyHint:Lcom/transsion/camera/app/common/ui/HintInfo;

    if-eqz p0, :cond_83

    .line 2891
    iget-object v1, v3, Lcom/transsion/camera/app/ui/BaseAppUI;->mHintUIManager:Lcom/transsion/camera/app/ui/manager/HintUIManager;

    invoke-virtual {v1, p0}, Lcom/transsion/camera/app/ui/manager/HintUIManager;->showHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    .line 2892
    iput-object v0, v3, Lcom/transsion/camera/app/ui/BaseAppUI;->mOnceLensDirtyHint:Lcom/transsion/camera/app/common/ui/HintInfo;

    .line 2894
    :cond_83
    iget-object p0, v3, Lcom/transsion/camera/app/ui/BaseAppUI;->mPendingHints:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_a8

    .line 2895
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

    .line 2896
    iget-object v1, v3, Lcom/transsion/camera/app/ui/BaseAppUI;->mHintUIManager:Lcom/transsion/camera/app/ui/manager/HintUIManager;

    invoke-virtual {v1, v0}, Lcom/transsion/camera/app/ui/manager/HintUIManager;->showHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    goto :goto_91

    .line 2898
    :cond_a3
    iget-object p0, v3, Lcom/transsion/camera/app/ui/BaseAppUI;->mPendingHints:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    .line 2901
    :cond_a8
    invoke-static {}, Lcom/transsion/camera/utils/debug/TraceUtil;->end()V

    .line 2902
    sget-object p0, Lcom/transsion/camera/app/ui/BaseAppUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "[doLoadHintUIManager] end"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private doSetStateListener()V
    .registers 4

    .line 2947
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mModeOrderEditorManager:Lcom/transsion/camera/app/ui/manager/ModeOrderEditorManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_d

    .line 2948
    new-instance v2, Lcom/transsion/camera/app/ui/BaseAppUI$OnEditorFragmentStateListenerImpl;

    invoke-direct {v2, p0, v1}, Lcom/transsion/camera/app/ui/BaseAppUI$OnEditorFragmentStateListenerImpl;-><init>(Lcom/transsion/camera/app/ui/BaseAppUI;Lcom/transsion/camera/app/ui/BaseAppUI-IA;)V

    invoke-virtual {v0, v2}, Lcom/transsion/camera/app/ui/manager/ModeOrderEditorManager;->setStateListener(Lcom/transsion/camera/app/common/IAppUIListener$IFragmentStateListener;)V

    .line 2950
    :cond_d
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mHelpGuideUIManager:Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;

    if-eqz v0, :cond_19

    .line 2951
    new-instance v2, Lcom/transsion/camera/app/ui/BaseAppUI$HelpGuideStateListenerImpl;

    invoke-direct {v2, p0, v1}, Lcom/transsion/camera/app/ui/BaseAppUI$HelpGuideStateListenerImpl;-><init>(Lcom/transsion/camera/app/ui/BaseAppUI;Lcom/transsion/camera/app/ui/BaseAppUI-IA;)V

    invoke-virtual {v0, v2}, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;->setStateListener(Lcom/transsion/camera/app/common/IAppUIListener$IFragmentStateListener;)V

    .line 2953
    :cond_19
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mFloatingShutterUIManager:Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;

    if-eqz v0, :cond_25

    .line 2954
    new-instance v2, Lcom/transsion/camera/app/ui/BaseAppUI$HelpGuideStateListenerImpl;

    invoke-direct {v2, p0, v1}, Lcom/transsion/camera/app/ui/BaseAppUI$HelpGuideStateListenerImpl;-><init>(Lcom/transsion/camera/app/ui/BaseAppUI;Lcom/transsion/camera/app/ui/BaseAppUI-IA;)V

    invoke-virtual {v0, v2}, Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;->setStateListener(Lcom/transsion/camera/app/common/IAppUIListener$IFragmentStateListener;)V

    :cond_25
    return-void
.end method

.method private doShowCustomPreviewCover(Landroid/graphics/Bitmap;)V
    .registers 2

    .line 798
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mPreviewUIManager:Lcom/transsion/camera/app/ui/manager/PreviewUIManager;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/manager/PreviewUIManager;->showCustomPreviewCover(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method private doUpdateHelpGuide()V
    .registers 4

    .line 3029
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mCurrentModeSettingUISpec:Lcom/transsion/camera/app/common/ModeSettingUISpec;

    if-eqz v0, :cond_35

    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mHelpGuideUIManager:Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;

    if-eqz v0, :cond_35

    .line 3030
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mIsSupportImageryGuide:Z

    if-nez v0, :cond_35

    .line 3032
    const-string v0, "doUpdateHelpGuide"

    invoke-static {v0}, Lcom/transsion/camera/utils/debug/TraceUtil;->begin(Ljava/lang/String;)V

    .line 3034
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mCurrentModeSettingUISpec:Lcom/transsion/camera/app/common/ModeSettingUISpec;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->getModeGuideLayoutIdList()Ljava/util/List;

    move-result-object v0

    .line 3035
    iget-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mCurrentModeSettingUISpec:Lcom/transsion/camera/app/common/ModeSettingUISpec;

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->getSettingGuideLayoutIdList()[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2c

    .line 3038
    iget-object v2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mSettingUIProvider:Lcom/transsion/camera/app/common/provider/SettingUIProvider;

    if-eqz v2, :cond_2c

    .line 3039
    invoke-virtual {v2, v1}, Lcom/transsion/camera/app/common/provider/SettingUIProvider;->createSettingGuideItemUIList([Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    goto :goto_2d

    :cond_2c
    const/4 v1, 0x0

    .line 3042
    :goto_2d
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mHelpGuideUIManager:Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;

    invoke-virtual {p0, v0, v1}, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;->setGuideItemList(Ljava/util/List;Ljava/util/List;)V

    .line 3043
    invoke-static {}, Lcom/transsion/camera/utils/debug/TraceUtil;->end()V

    :cond_35
    return-void
.end method

.method private doUpdateInteractUIList()V
    .registers 3

    .line 5616
    const-string v0, "doUpdateInteractUIList"

    invoke-static {v0}, Lcom/transsion/camera/utils/debug/TraceUtil;->begin(Ljava/lang/String;)V

    .line 5617
    sget-object v0, Lcom/transsion/camera/app/ui/BaseAppUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "[PreviewPerformance] doUpdateInteractUIList start"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 5618
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/BaseAppUI;->doUpdateInteractiveUIList()V

    .line 5619
    const-string p0, "[PreviewPerformance] doUpdateInteractUIList end"

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 5620
    invoke-static {}, Lcom/transsion/camera/utils/debug/TraceUtil;->end()V

    return-void
.end method

.method private doUpdateInteractiveUIList()V
    .registers 11

    .line 3352
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mCurrentModeSettingUISpec:Lcom/transsion/camera/app/common/ModeSettingUISpec;

    if-eqz v0, :cond_125

    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mSettingUIProvider:Lcom/transsion/camera/app/common/provider/SettingUIProvider;

    if-eqz v0, :cond_125

    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mInteractiveUIManager:Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;

    if-eqz v0, :cond_125

    .line 3353
    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->getRootView()Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_125

    .line 3354
    const-string v0, "doUpdateInteractiveUIList"

    invoke-static {v0}, Lcom/transsion/camera/utils/debug/TraceUtil;->begin(Ljava/lang/String;)V

    .line 3356
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    if-eqz v0, :cond_20

    .line 3357
    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getCameraId()Ljava/lang/String;

    move-result-object v0

    goto :goto_22

    .line 3356
    :cond_20
    const-string v0, "0"

    .line 3359
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

    .line 3361
    iget-object v2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {v2}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenFormType()I

    move-result v2

    const/4 v3, 0x7

    if-ne v3, v2, :cond_5c

    .line 3362
    iget-object v2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mCurrentModeSettingUISpec:Lcom/transsion/camera/app/common/ModeSettingUISpec;

    invoke-virtual {v2}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->getFlipModeInteractiveSettingUIEntries()[Ljava/lang/String;

    move-result-object v2

    goto :goto_62

    .line 3363
    :cond_5c
    iget-object v2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mCurrentModeSettingUISpec:Lcom/transsion/camera/app/common/ModeSettingUISpec;

    invoke-virtual {v2}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->getModeInteractiveSettingUIEntries()[Ljava/lang/String;

    move-result-object v2

    .line 3364
    :goto_62
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/BaseAppUI;->isSecureCamera()Z

    move-result v4

    if-eqz v4, :cond_6e

    .line 3365
    const-string v4, "com.transsion.camera.feature.dv_template.entrance.DVTemplateEntranceSettingUIEntry"

    invoke-static {v2, v4}, Lcom/transsion/camera/utils/ArrayUtils;->removeString([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 3367
    :cond_6e
    iget-object v4, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mSettingUIProvider:Lcom/transsion/camera/app/common/provider/SettingUIProvider;

    invoke-virtual {v4, v2}, Lcom/transsion/camera/app/common/provider/SettingUIProvider;->getCommonSettingUIList([Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 3368
    iget-object v4, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mInteractiveUIManager:Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;

    invoke-virtual {v4, v2}, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->setDefaultCommonSettingUIList(Ljava/util/List;)V

    .line 3371
    iget-object v4, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const/4 v5, 0x0

    if-eqz v4, :cond_8b

    .line 3372
    const-string v6, "key_super_anti_video"

    invoke-interface {v4, v6}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 3373
    const-string v6, "super"

    invoke-static {v4, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    goto :goto_8c

    :cond_8b
    move v4, v5

    .line 3375
    :goto_8c
    iget-object v6, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mCurrentModeName:Ljava/lang/String;

    const-string v7, "com.transsion.camera.feature.mode.video.VideoModeEntry"

    invoke-static {v6, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    .line 3377
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

    .line 3378
    iget-boolean v7, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mSupportSuperAntiVideoV2:Z

    if-eqz v7, :cond_b9

    .line 3379
    iget-object v7, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mInteractiveUIManager:Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iget-object v9, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mCurrentModeName:Ljava/lang/String;

    invoke-virtual {v7, v8, v0, v9}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->setCommonSettingUIList(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c0

    .line 3381
    :cond_b9
    iget-object v7, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mInteractiveUIManager:Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;

    iget-object v8, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mCurrentModeName:Ljava/lang/String;

    invoke-virtual {v7, v2, v0, v8}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->setCommonSettingUIList(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 3384
    :cond_c0
    :goto_c0
    iput-boolean v5, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mSpecialCameraChange:Z

    .line 3385
    iput-boolean v5, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mSkipInteractiveUpdate:Z

    .line 3387
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenFormType()I

    move-result v0

    if-ne v3, v0, :cond_d3

    .line 3388
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mCurrentModeSettingUISpec:Lcom/transsion/camera/app/common/ModeSettingUISpec;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->getFlipOptionSettingUIEntries()[Ljava/lang/String;

    move-result-object v0

    goto :goto_d9

    .line 3389
    :cond_d3
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mCurrentModeSettingUISpec:Lcom/transsion/camera/app/common/ModeSettingUISpec;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->getOptionSettingUIEntries()[Ljava/lang/String;

    move-result-object v0

    .line 3390
    :goto_d9
    iget-object v3, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mSettingUIProvider:Lcom/transsion/camera/app/common/provider/SettingUIProvider;

    const/4 v5, 0x0

    invoke-virtual {v3, v0, v5, v5}, Lcom/transsion/camera/app/common/provider/SettingUIProvider;->getTopBarItemUIList([Ljava/lang/String;Ljava/util/List;Landroid/graphics/drawable/Drawable;)Ljava/util/List;

    move-result-object v0

    .line 3391
    iget-object v3, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mInteractiveUIManager:Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;

    invoke-virtual {v3, v0}, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->setDefaultOptionSettingUIList(Ljava/util/List;)V

    if-eqz v4, :cond_f8

    if-eqz v6, :cond_f8

    .line 3392
    iget-boolean v3, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mSupportSuperAntiVideoV2:Z

    if-eqz v3, :cond_f8

    .line 3393
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mInteractiveUIManager:Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v3}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->setOptionSettingUIList(Ljava/util/List;)V

    goto :goto_fd

    .line 3395
    :cond_f8
    iget-object v3, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mInteractiveUIManager:Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;

    invoke-virtual {v3, v0}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->setOptionSettingUIList(Ljava/util/List;)V

    :goto_fd
    if-eqz v2, :cond_11d

    .line 3398
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_11d

    const-string v0, "com.transsion.camera.feature.mode.more.MoreModeEntry"

    iget-object v2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mCurrentModeName:Ljava/lang/String;

    .line 3399
    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_11d

    iget v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mCurrentAppUIState:I

    const/4 v2, 0x3

    if-eq v0, v2, :cond_11d

    const/16 v2, 0xb

    if-eq v0, v2, :cond_11d

    .line 3402
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mInteractiveUIManager:Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->show()V

    .line 3404
    :cond_11d
    const-string p0, "[PreviewPerformance] doUpdateInteractiveUIList end."

    invoke-static {v1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 3405
    invoke-static {}, Lcom/transsion/camera/utils/debug/TraceUtil;->end()V

    :cond_125
    return-void
.end method

.method private doUpdateOptionBar()V
    .registers 1

    .line 3023
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mInteractiveUIManager:Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;

    if-eqz p0, :cond_7

    .line 3024
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->updateOptionSettingUIs()V

    :cond_7
    return-void
.end method

.method private doUpdateOverlaySettingUIList(Z)V
    .registers 11

    .line 3244
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mOverlayUIManager:Lcom/transsion/camera/app/ui/manager/OverlayUIManager;

    if-eqz v0, :cond_16a

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->getRootView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_16a

    .line 3245
    const-string v0, "doUpdateOverlaySettingUIList"

    invoke-static {v0}, Lcom/transsion/camera/utils/debug/TraceUtil;->begin(Ljava/lang/String;)V

    .line 3246
    sget-object v0, Lcom/transsion/camera/app/ui/BaseAppUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "[PreviewPerformance] doUpdateOverlaySettingUIList start"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 3247
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mOverlayManagerFinished:Z

    .line 3248
    iget-object v2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mCurrentModeSettingUISpec:Lcom/transsion/camera/app/common/ModeSettingUISpec;

    const/4 v3, -0x1

    const/4 v4, 0x1

    if-eqz v2, :cond_139

    iget-object v2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mSettingUIProvider:Lcom/transsion/camera/app/common/provider/SettingUIProvider;

    if-eqz v2, :cond_139

    .line 3250
    iget-object v2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    if-eqz v2, :cond_40

    .line 3251
    invoke-interface {v2}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getCameraId()Ljava/lang/String;

    move-result-object v2

    .line 3252
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[doUpdateOverlaySettingUIList] currentCameraId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_42

    .line 3250
    :cond_40
    const-string v2, "0"

    .line 3255
    :goto_42
    iget-object v5, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mOverlayUIManager:Lcom/transsion/camera/app/ui/manager/OverlayUIManager;

    iget-object v6, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mModeFeatureSupport:Lcom/transsion/camera/app/common/mode/IModeFeatureSupport;

    invoke-virtual {v5, v6}, Lcom/transsion/camera/app/ui/manager/OverlayUIManager;->setModeFeatureSupport(Lcom/transsion/camera/app/common/mode/IModeFeatureSupport;)V

    .line 3256
    iget-object v5, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mOverlayUIManager:Lcom/transsion/camera/app/ui/manager/OverlayUIManager;

    iget-object v6, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mAeAfLock:Lcom/transsion/camera/app/common/mode/IAeAfLock;

    invoke-virtual {v5, v6}, Lcom/transsion/camera/app/ui/manager/OverlayUIManager;->setAeAfLock(Lcom/transsion/camera/app/common/mode/IAeAfLock;)V

    .line 3257
    iget-object v5, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mOverlayUIManager:Lcom/transsion/camera/app/ui/manager/OverlayUIManager;

    iget-object v6, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mModeFeatureConfig:Lcom/transsion/camera/app/common/IModeFeatureConfig;

    invoke-virtual {v5, v6}, Lcom/transsion/camera/app/ui/manager/OverlayUIManager;->setModeFeatureConfig(Lcom/transsion/camera/app/common/IModeFeatureConfig;)V

    .line 3259
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/BaseAppUI;->updateOverlayManagerSettingUIList()V

    .line 3260
    invoke-static {}, Lcom/transsion/camera/adapter/CameraAgentFactory;->getCameraAgent()Lcom/transsion/camera/adapter/CameraAgent;

    move-result-object v5

    invoke-virtual {v5}, Lcom/transsion/camera/adapter/CameraAgent;->getCameraDeviceInfo()Lcom/transsion/camera/adapter/ICameraDeviceInfo;

    move-result-object v5

    .line 3261
    invoke-interface {v5, v2}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->getCameraInfo(Ljava/lang/String;)Lcom/transsion/camera/adapter/ICameraInfo;

    move-result-object v5

    invoke-interface {v5}, Lcom/transsion/camera/adapter/ICameraInfo;->getFacing()I

    move-result v5

    if-nez v5, :cond_6e

    move v5, v4

    goto :goto_6f

    :cond_6e
    move v5, v1

    .line 3262
    :goto_6f
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result v6

    if-eqz v6, :cond_8e

    .line 3263
    iget-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mOverlayUIManager:Lcom/transsion/camera/app/ui/manager/OverlayUIManager;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mCurrentModeSettingUISpec:Lcom/transsion/camera/app/common/ModeSettingUISpec;

    invoke-virtual {v2}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->getModeOffsetPadding()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/transsion/camera/app/ui/manager/OverlayUIManager;->setZoomOffsetPadding(I)V

    .line 3264
    iget-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mOverlayUIManager:Lcom/transsion/camera/app/ui/manager/OverlayUIManager;

    new-instance v2, Lcom/transsion/camera/app/common/ModeConfig;

    iget-object v6, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mCurrentModeSettingUISpec:Lcom/transsion/camera/app/common/ModeSettingUISpec;

    invoke-direct {v2, v6, v5}, Lcom/transsion/camera/app/common/ModeConfig;-><init>(Lcom/transsion/camera/app/common/ModeSettingUISpec;Z)V

    invoke-virtual {v1, v2}, Lcom/transsion/camera/app/ui/manager/OverlayUIManager;->updateModeConfigToZoom(Lcom/transsion/camera/app/common/ModeConfig;)V

    goto/16 :goto_139

    .line 3265
    :cond_8e
    iget-object v6, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mWideCameraUIManager:Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;

    if-eqz v6, :cond_139

    if-eqz v5, :cond_e6

    .line 3270
    iget-object v6, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mCurrentModeSettingUISpec:Lcom/transsion/camera/app/common/ModeSettingUISpec;

    invoke-virtual {v6}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->getModeOffsetPadding()I

    move-result v6

    if-lez v6, :cond_a8

    .line 3271
    iget-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mWideCameraUIManager:Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;

    iget-object v6, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mCurrentModeSettingUISpec:Lcom/transsion/camera/app/common/ModeSettingUISpec;

    invoke-virtual {v6}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->getModeOffsetPadding()I

    move-result v6

    invoke-virtual {v1, v6}, Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;->setOffsetPadding(I)V

    goto :goto_ad

    .line 3273
    :cond_a8
    iget-object v6, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mWideCameraUIManager:Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;

    invoke-virtual {v6, v1}, Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;->setOffsetPadding(I)V

    .line 3275
    :goto_ad
    iget-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mCurrentModeSettingUISpec:Lcom/transsion/camera/app/common/ModeSettingUISpec;

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->getWideCameraSettingUIEntries()[Ljava/lang/String;

    move-result-object v1

    .line 3276
    iget-object v6, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mCurrentModeSettingUISpec:Lcom/transsion/camera/app/common/ModeSettingUISpec;

    invoke-virtual {v6}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->getFlipWideCameraSettingUIEntries()[Ljava/lang/String;

    move-result-object v6

    .line 3277
    iget-object v7, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {v7}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenFormType()I

    move-result v7

    const/4 v8, 0x7

    if-ne v7, v8, :cond_c9

    .line 3278
    iget-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mSettingUIProvider:Lcom/transsion/camera/app/common/provider/SettingUIProvider;

    invoke-virtual {v1, v6}, Lcom/transsion/camera/app/common/provider/SettingUIProvider;->createWideCameraItemUIList([Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    goto :goto_cf

    .line 3280
    :cond_c9
    iget-object v6, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mSettingUIProvider:Lcom/transsion/camera/app/common/provider/SettingUIProvider;

    invoke-virtual {v6, v1}, Lcom/transsion/camera/app/common/provider/SettingUIProvider;->createWideCameraItemUIList([Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 3282
    :goto_cf
    iget-object v6, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mWideCameraUIManager:Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;

    iget-object v7, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mCurrentModeSettingUISpec:Lcom/transsion/camera/app/common/ModeSettingUISpec;

    invoke-virtual {v7}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->getSecondDefaultZoomValue()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;->setSecondDefaultZoomValue(I)V

    .line 3283
    iget-object v6, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mWideCameraUIManager:Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;

    iget-object v7, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mCurrentModeSettingUISpec:Lcom/transsion/camera/app/common/ModeSettingUISpec;

    invoke-virtual {v7}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->getTeleSecondDefaultZoomValue()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;->setTeleSecondDefaultZoomValue(I)V

    goto :goto_f2

    .line 3285
    :cond_e6
    iget-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mCurrentModeSettingUISpec:Lcom/transsion/camera/app/common/ModeSettingUISpec;

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->getFrontWideCameraSettingUIEntries()[Ljava/lang/String;

    move-result-object v1

    .line 3286
    iget-object v6, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mSettingUIProvider:Lcom/transsion/camera/app/common/provider/SettingUIProvider;

    invoke-virtual {v6, v1}, Lcom/transsion/camera/app/common/provider/SettingUIProvider;->createWideCameraItemUIList([Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 3289
    :goto_f2
    iget v6, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mOrientation:I

    if-eq v6, v3, :cond_fb

    .line 3290
    iget-object v7, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mWideCameraUIManager:Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;

    invoke-virtual {v7, v6, v4}, Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;->onOrientationChanged(IZ)V

    .line 3292
    :cond_fb
    iget-object v6, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mWideCameraUIManager:Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;

    iget-object v7, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mCurrentModeName:Ljava/lang/String;

    invoke-virtual {v6, v1, v2, v7}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->setCommonSettingUIList(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 3294
    iget-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mCurrentModeName:Ljava/lang/String;

    const-string v2, "com.transsion.camera.feature.mode.video.TimeLapseVideoModeEntry"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    const/16 v2, 0x7b

    if-eqz v1, :cond_113

    .line 3295
    iget-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mWideCameraUIManager:Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;

    invoke-virtual {v1, v2}, Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;->notifyCameraOperateActionToUI(I)V

    .line 3298
    :cond_113
    iget-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mCurrentModeName:Ljava/lang/String;

    const-string v6, "com.transsion.camera.feature.mode.timelapsemode.TimelapsePhotoModeEntry"

    invoke-static {v1, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_122

    .line 3299
    iget-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mWideCameraUIManager:Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;

    invoke-virtual {v1, v2}, Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;->notifyCameraOperateActionToUI(I)V

    .line 3302
    :cond_122
    iget-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mOverlayUIManager:Lcom/transsion/camera/app/ui/manager/OverlayUIManager;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mCurrentModeSettingUISpec:Lcom/transsion/camera/app/common/ModeSettingUISpec;

    invoke-virtual {v2}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->getModeOffsetPadding()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/transsion/camera/app/ui/manager/OverlayUIManager;->setZoomOffsetPadding(I)V

    .line 3303
    iget-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mOverlayUIManager:Lcom/transsion/camera/app/ui/manager/OverlayUIManager;

    new-instance v2, Lcom/transsion/camera/app/common/ModeConfig;

    iget-object v6, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mCurrentModeSettingUISpec:Lcom/transsion/camera/app/common/ModeSettingUISpec;

    invoke-direct {v2, v6, v5}, Lcom/transsion/camera/app/common/ModeConfig;-><init>(Lcom/transsion/camera/app/common/ModeSettingUISpec;Z)V

    invoke-virtual {v1, v2}, Lcom/transsion/camera/app/ui/manager/OverlayUIManager;->updateModeConfigToZoom(Lcom/transsion/camera/app/common/ModeConfig;)V

    .line 3307
    :cond_139
    :goto_139
    iget v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mOrientation:I

    if-eq v1, v3, :cond_142

    .line 3308
    iget-object v2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mOverlayUIManager:Lcom/transsion/camera/app/ui/manager/OverlayUIManager;

    invoke-virtual {v2, v1, v4}, Lcom/transsion/camera/app/ui/manager/OverlayUIManager;->onOrientationChanged(IZ)V

    :cond_142
    if-eqz p1, :cond_160

    .line 3313
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mOverlayUIManager:Lcom/transsion/camera/app/ui/manager/OverlayUIManager;

    const/16 v1, 0x9

    invoke-virtual {p1, v1}, Lcom/transsion/camera/app/ui/manager/OverlayUIManager;->notifyCameraOperateActionToUI(I)V

    .line 3314
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mWideCameraUIManager:Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;

    if-eqz p1, :cond_152

    .line 3315
    invoke-virtual {p1, v1}, Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;->notifyCameraOperateActionToUI(I)V

    .line 3317
    :cond_152
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mOverlayUIManager:Lcom/transsion/camera/app/ui/manager/OverlayUIManager;

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Lcom/transsion/camera/app/ui/manager/OverlayUIManager;->notifyCameraOperateActionToUI(I)V

    .line 3318
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mWideCameraUIManager:Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;

    if-eqz p1, :cond_160

    .line 3319
    invoke-virtual {p1, v1}, Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;->notifyCameraOperateActionToUI(I)V

    .line 3323
    :cond_160
    iput-boolean v4, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mOverlayManagerFinished:Z

    .line 3324
    const-string p0, "[PreviewPerformance] doUpdateOverlaySettingUIList end."

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 3325
    invoke-static {}, Lcom/transsion/camera/utils/debug/TraceUtil;->end()V

    :cond_16a
    return-void
.end method

.method private doUpdatePopSettingUI()V
    .registers 5

    .line 4006
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mUIAnimatorController:Lcom/transsion/camera/app/common/IUIAnimatorController;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/IUIAnimatorController;->isRunning()Z

    move-result v0

    if-nez v0, :cond_c

    .line 4007
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/BaseAppUI;->doUpdatePopSettingUIInternal()V

    return-void

    .line 4009
    :cond_c
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mUIAnimatorController:Lcom/transsion/camera/app/common/IUIAnimatorController;

    new-instance v1, Lcom/transsion/camera/app/ui/BaseAppUI$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/ui/BaseAppUI$$ExternalSyntheticLambda8;-><init>(Lcom/transsion/camera/app/ui/BaseAppUI;)V

    const-wide/16 v2, 0x1f4

    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mUIHandler:Landroid/os/Handler;

    invoke-interface {v0, v1, v2, v3, p0}, Lcom/transsion/camera/app/common/IUIAnimatorController;->registerOnIdle(Ljava/lang/Runnable;JLandroid/os/Handler;)V

    return-void
.end method

.method private doUpdatePopSettingUIInternal()V
    .registers 3

    .line 4014
    sget-object v0, Lcom/transsion/camera/app/ui/BaseAppUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "doUpdatePopSettingUI: "

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 4015
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mPopSettingUIManager:Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;

    if-eqz p0, :cond_e

    .line 4016
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->updatePopSettingUIList()V

    :cond_e
    return-void
.end method

.method private doUpdatePopSettingUIList()V
    .registers 7

    .line 3048
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mPopSettingUIManager:Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;

    if-eqz v0, :cond_e5

    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_e5

    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mCurrentModeSettingUISpec:Lcom/transsion/camera/app/common/ModeSettingUISpec;

    if-nez v0, :cond_e

    goto/16 :goto_e5

    .line 3051
    :cond_e
    const-string v0, "doUpdatePopSettingUIList"

    invoke-static {v0}, Lcom/transsion/camera/utils/debug/TraceUtil;->begin(Ljava/lang/String;)V

    .line 3053
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    if-eqz v0, :cond_1c

    .line 3054
    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getCameraId()Ljava/lang/String;

    move-result-object v0

    goto :goto_1e

    .line 3053
    :cond_1c
    const-string v0, "0"

    .line 3056
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

    .line 3058
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mRootView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 3059
    sget v2, Lcom/transsion/camera/R$array;->build_in_selling_points:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 3060
    sget v3, Lcom/transsion/camera/R$drawable;->background_selling_point:I

    invoke-static {v0, v3}, Lcom/transsion/camera/utils/ResCache;->getDrawable(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 3062
    iget-object v3, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mSettingUIProvider:Lcom/transsion/camera/app/common/provider/SettingUIProvider;

    if-eqz v3, :cond_d2

    .line 3063
    iget-object v3, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {v3}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenFormType()I

    move-result v3

    const/4 v4, 0x7

    if-ne v4, v3, :cond_7f

    .line 3064
    iget-object v3, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mCurrentModeSettingUISpec:Lcom/transsion/camera/app/common/ModeSettingUISpec;

    invoke-virtual {v3}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->getFlipPopSettingTopUIEntries()[Ljava/lang/String;

    move-result-object v3

    .line 3065
    iget-object v4, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mSettingUIProvider:Lcom/transsion/camera/app/common/provider/SettingUIProvider;

    .line 3066
    invoke-virtual {v4, v3, v2, v0}, Lcom/transsion/camera/app/common/provider/SettingUIProvider;->getPopSettingItemUIList([Ljava/lang/String;Ljava/util/List;Landroid/graphics/drawable/Drawable;)Ljava/util/List;

    move-result-object v3

    .line 3067
    iget-object v4, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mCurrentModeSettingUISpec:Lcom/transsion/camera/app/common/ModeSettingUISpec;

    invoke-virtual {v4}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->getFlipPopSettingDownUIEntries()[Ljava/lang/String;

    move-result-object v4

    .line 3068
    iget-object v5, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mSettingUIProvider:Lcom/transsion/camera/app/common/provider/SettingUIProvider;

    .line 3069
    invoke-virtual {v5, v4, v2, v0}, Lcom/transsion/camera/app/common/provider/SettingUIProvider;->getPopSettingItemUIList([Ljava/lang/String;Ljava/util/List;Landroid/graphics/drawable/Drawable;)Ljava/util/List;

    move-result-object v0

    .line 3070
    iget-object v2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mPopSettingUIManager:Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2, v4}, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->setSettingUIList(Ljava/util/List;)V

    .line 3071
    iget-object v2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mPopSettingUIManager:Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;

    invoke-virtual {v2, v3, v0}, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->setFlipSettingUIList(Ljava/util/List;Ljava/util/List;)V

    goto :goto_d2

    .line 3073
    :cond_7f
    iget-object v3, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mCurrentModeSettingUISpec:Lcom/transsion/camera/app/common/ModeSettingUISpec;

    invoke-virtual {v3}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->getPopSettingUIEntries()[Ljava/lang/String;

    move-result-object v3

    .line 3074
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v4

    iget-boolean v4, v4, Lcom/transsion/camera/utils/CustomConfigUtil;->mIsSupportImageryGuide:Z

    if-eqz v4, :cond_93

    .line 3075
    const-string v4, "[doUpdatePopSettingUIList] :don\'t remove HelpGuideSettingUIEntry"

    invoke-static {v1, v4}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_b8

    .line 3077
    :cond_93
    iget-object v4, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mCurrentModeSettingUISpec:Lcom/transsion/camera/app/common/ModeSettingUISpec;

    invoke-virtual {v4}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->getModeGuideLayoutIdList()Ljava/util/List;

    move-result-object v4

    .line 3078
    iget-object v5, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mCurrentModeSettingUISpec:Lcom/transsion/camera/app/common/ModeSettingUISpec;

    invoke-virtual {v5}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->getSettingGuideLayoutIdList()[Ljava/lang/String;

    move-result-object v5

    if-eqz v4, :cond_a7

    .line 3080
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_b8

    :cond_a7
    if-eqz v5, :cond_ac

    array-length v4, v5

    if-nez v4, :cond_b8

    .line 3083
    :cond_ac
    const-string v4, "com.transsion.camera.ui.setting.helpguide.HelpGuideSettingUIEntry"

    invoke-static {v3, v4}, Lcom/transsion/camera/utils/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b8

    .line 3085
    invoke-static {v3, v4}, Lcom/transsion/camera/utils/ArrayUtils;->removeString([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 3090
    :cond_b8
    :goto_b8
    iget-object v4, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mSettingUIProvider:Lcom/transsion/camera/app/common/provider/SettingUIProvider;

    invoke-virtual {v4, v3, v2, v0}, Lcom/transsion/camera/app/common/provider/SettingUIProvider;->getPopSettingItemUIList([Ljava/lang/String;Ljava/util/List;Landroid/graphics/drawable/Drawable;)Ljava/util/List;

    move-result-object v0

    .line 3091
    iget-object v2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mPopSettingUIManager:Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2, v3, v4}, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->setFlipSettingUIList(Ljava/util/List;Ljava/util/List;)V

    .line 3092
    iget-object v2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mPopSettingUIManager:Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;

    invoke-virtual {v2, v0}, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->setSettingUIList(Ljava/util/List;)V

    .line 3095
    :cond_d2
    :goto_d2
    iget v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mOrientation:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_dd

    .line 3096
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mPopSettingUIManager:Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v2}, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->onOrientationChanged(IZ)V

    .line 3098
    :cond_dd
    const-string p0, "[PreviewPerformance] doUpdatePopSettingUIList end"

    invoke-static {v1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 3099
    invoke-static {}, Lcom/transsion/camera/utils/debug/TraceUtil;->end()V

    :cond_e5
    :goto_e5
    return-void
.end method

.method private doUpdateShutterType(IZ)V
    .registers 3

    .line 1351
    iput p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mShutterType:I

    .line 1352
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mShutterUIManager:Lcom/transsion/camera/app/ui/manager/ShutterUIManager;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->updateShutterType(IZ)V

    return-void
.end method

.method private doUpdateTopBarAndOptionBar()V
    .registers 2

    .line 3014
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mTopBarUIManager:Lcom/transsion/camera/app/ui/manager/TopBarUIManager;

    if-eqz v0, :cond_7

    .line 3015
    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->updateSettingUIs()V

    .line 3017
    :cond_7
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mInteractiveUIManager:Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;

    if-eqz p0, :cond_e

    .line 3018
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->updateOptionSettingUIs()V

    :cond_e
    return-void
.end method

.method private doUpdateTopBarSettingUIList()V
    .registers 14

    .line 3103
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mTopBarUIManager:Lcom/transsion/camera/app/ui/manager/TopBarUIManager;

    if-eqz v0, :cond_22e

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->getRootView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_22e

    .line 3104
    const-string v0, "doUpdateTopBarSettingUIList"

    invoke-static {v0}, Lcom/transsion/camera/utils/debug/TraceUtil;->begin(Ljava/lang/String;)V

    .line 3106
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    if-eqz v0, :cond_18

    .line 3107
    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getCameraId()Ljava/lang/String;

    move-result-object v0

    goto :goto_1a

    .line 3106
    :cond_18
    const-string v0, "0"

    .line 3109
    :goto_1a
    sget-object v1, Lcom/transsion/camera/app/ui/BaseAppUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[PreviewPerformance] doUpdateTopBarSettingUIList start. currentCameraId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 3110
    iget-object v2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mRootView:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 3111
    sget v3, Lcom/transsion/camera/R$array;->build_in_selling_points:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 3112
    sget v4, Lcom/transsion/camera/R$drawable;->background_selling_point:I

    invoke-static {v2, v4}, Lcom/transsion/camera/utils/ResCache;->getDrawable(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 3113
    iget-object v4, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mCurrentModeSettingUISpec:Lcom/transsion/camera/app/common/ModeSettingUISpec;

    if-eqz v4, :cond_224

    iget-object v5, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mSettingUIProvider:Lcom/transsion/camera/app/common/provider/SettingUIProvider;

    if-eqz v5, :cond_224

    .line 3114
    invoke-virtual {v4}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->getTopBarSettingUIEntries()[Ljava/lang/String;

    move-result-object v4

    .line 3115
    iget-object v5, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mCurrentModeSettingUISpec:Lcom/transsion/camera/app/common/ModeSettingUISpec;

    invoke-virtual {v5}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->getLeftTopBarSettingUIEntries()[Ljava/lang/String;

    move-result-object v5

    .line 3116
    iget-object v6, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mCurrentModeSettingUISpec:Lcom/transsion/camera/app/common/ModeSettingUISpec;

    invoke-virtual {v6}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->getRightTopBarSettingUIEntries()[Ljava/lang/String;

    move-result-object v6

    .line 3117
    iget-object v7, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/transsion/camera/utils/CameraUtil;->isRepairMode(Landroid/content/Context;)Z

    move-result v7

    .line 3118
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

    .line 3119
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

    .line 3120
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v12

    iget-boolean v12, v12, Lcom/transsion/camera/utils/CustomConfigUtil;->mGoogleLensSupport:Z

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v12, " mIsRepairMode="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 3119
    invoke-static {v1, v7}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 3121
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/BaseAppUI;->isGoogleLensSupport()Z

    move-result v7

    const-string v11, "com.transsion.camera.ui.setting.googlelens.GoogleLensSettingUIEntry"

    if-eqz v7, :cond_bc

    if-eqz v8, :cond_e5

    .line 3123
    :cond_bc
    invoke-static {v4, v11}, Lcom/transsion/camera/utils/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    const-string v8, "google lens do not support, no need to show lens icon!"

    if-eqz v7, :cond_cb

    .line 3124
    invoke-static {v1, v8}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 3125
    invoke-static {v4, v11}, Lcom/transsion/camera/utils/ArrayUtils;->removeString([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 3127
    :cond_cb
    invoke-static {v5, v11}, Lcom/transsion/camera/utils/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d8

    .line 3128
    invoke-static {v1, v8}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 3129
    invoke-static {v5, v11}, Lcom/transsion/camera/utils/ArrayUtils;->removeString([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 3132
    :cond_d8
    invoke-static {v6, v11}, Lcom/transsion/camera/utils/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_e5

    .line 3133
    invoke-static {v1, v8}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 3134
    invoke-static {v6, v11}, Lcom/transsion/camera/utils/ArrayUtils;->removeString([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 3137
    :cond_e5
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/BaseAppUI;->secureCameraTopBarSuperDefinitionSupport(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_11a

    .line 3139
    const-string v7, "com.transsion.camera.ui.setting.superdefinition.SuperDefinitionSettingUIEntry"

    invoke-static {v4, v7}, Lcom/transsion/camera/utils/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_fc

    .line 3140
    const-string v8, "super definition do not support,topBar no need to show icon!"

    invoke-static {v1, v8}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 3141
    invoke-static {v4, v7}, Lcom/transsion/camera/utils/ArrayUtils;->removeString([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 3143
    :cond_fc
    invoke-static {v5, v7}, Lcom/transsion/camera/utils/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_10b

    .line 3144
    const-string v8, "super definition do not support,left no need to show icon!"

    invoke-static {v1, v8}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 3145
    invoke-static {v5, v7}, Lcom/transsion/camera/utils/ArrayUtils;->removeString([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 3147
    :cond_10b
    invoke-static {v6, v7}, Lcom/transsion/camera/utils/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_11a

    .line 3148
    const-string v8, "super definition do not support,right no need to show icon!"

    invoke-static {v1, v8}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 3149
    invoke-static {v6, v7}, Lcom/transsion/camera/utils/ArrayUtils;->removeString([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 3153
    :cond_11a
    iget-object v7, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mCurrentModeSettingUISpec:Lcom/transsion/camera/app/common/ModeSettingUISpec;

    invoke-direct {p0, v7}, Lcom/transsion/camera/app/ui/BaseAppUI;->needHdrInTopbar(Lcom/transsion/camera/app/common/ModeSettingUISpec;)Z

    move-result v7

    if-eqz v7, :cond_14e

    if-eqz v5, :cond_14e

    .line 3154
    array-length v7, v5

    if-eqz v7, :cond_14e

    .line 3158
    invoke-static {v5, v11}, Lcom/transsion/camera/utils/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_136

    .line 3159
    const-string v7, "hdr do not support,left no need to show icon!"

    invoke-static {v1, v7}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 3160
    invoke-static {v5, v11}, Lcom/transsion/camera/utils/ArrayUtils;->removeString([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 3162
    :cond_136
    const-string v7, "com.transsion.camera.ui.setting.hdr.HdrSettingUIEntry"

    invoke-static {v5, v7}, Lcom/transsion/camera/utils/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_14e

    .line 3163
    const-string v8, "hdr do not support!"

    invoke-static {v1, v8}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 3164
    array-length v8, v5

    add-int/2addr v8, v10

    new-array v8, v8, [Ljava/lang/String;

    .line 3165
    array-length v11, v5

    invoke-static {v5, v9, v8, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3166
    aput-object v7, v8, v9

    move-object v5, v8

    .line 3172
    :cond_14e
    const-string v7, "getTopBarItemUIList start!"

    invoke-static {v1, v7}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 3174
    iget-boolean v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mPopSettingUISupport:Z

    if-eqz v1, :cond_15d

    .line 3175
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    goto :goto_163

    .line 3177
    :cond_15d
    iget-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mSettingUIProvider:Lcom/transsion/camera/app/common/provider/SettingUIProvider;

    invoke-virtual {v1, v4, v3, v2}, Lcom/transsion/camera/app/common/provider/SettingUIProvider;->getTopBarItemUIList([Ljava/lang/String;Ljava/util/List;Landroid/graphics/drawable/Drawable;)Ljava/util/List;

    move-result-object v1

    .line 3179
    :goto_163
    iget-object v4, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mSettingUIProvider:Lcom/transsion/camera/app/common/provider/SettingUIProvider;

    invoke-virtual {v4, v5, v3, v2}, Lcom/transsion/camera/app/common/provider/SettingUIProvider;->getTopBarItemUIList([Ljava/lang/String;Ljava/util/List;Landroid/graphics/drawable/Drawable;)Ljava/util/List;

    move-result-object v4

    .line 3180
    iget-object v5, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mSettingUIProvider:Lcom/transsion/camera/app/common/provider/SettingUIProvider;

    invoke-virtual {v5, v6, v3, v2}, Lcom/transsion/camera/app/common/provider/SettingUIProvider;->getTopBarItemUIList([Ljava/lang/String;Ljava/util/List;Landroid/graphics/drawable/Drawable;)Ljava/util/List;

    move-result-object v2

    .line 3181
    iget-object v3, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/transsion/camera/utils/CameraUtil;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1fb

    iget-boolean v3, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mIsTopBarItemListFocusable:Z

    if-nez v3, :cond_1fb

    .line 3182
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

    .line 3183
    invoke-interface {v5}, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;->getOptionEntryView()Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_17f

    invoke-interface {v5}, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;->getOptionEntryView()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->isFocusable()Z

    move-result v6

    if-nez v6, :cond_17f

    .line 3184
    invoke-interface {v5}, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;->getOptionEntryView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v10}, Landroid/view/View;->setFocusable(Z)V

    goto :goto_17f

    .line 3187
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

    .line 3188
    invoke-interface {v5}, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;->getOptionEntryView()Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_1a9

    invoke-interface {v5}, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;->getOptionEntryView()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->isFocusable()Z

    move-result v6

    if-nez v6, :cond_1a9

    .line 3189
    invoke-interface {v5}, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;->getOptionEntryView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v10}, Landroid/view/View;->setFocusable(Z)V

    goto :goto_1a9

    .line 3192
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

    .line 3193
    invoke-interface {v5}, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;->getOptionEntryView()Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_1d3

    invoke-interface {v5}, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;->getOptionEntryView()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->isFocusable()Z

    move-result v6

    if-nez v6, :cond_1d3

    .line 3194
    invoke-interface {v5}, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;->getOptionEntryView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v10}, Landroid/view/View;->setFocusable(Z)V

    goto :goto_1d3

    .line 3197
    :cond_1f9
    iput-boolean v10, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mIsTopBarItemListFocusable:Z

    .line 3199
    :cond_1fb
    iget-object v3, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mTopBarUIManager:Lcom/transsion/camera/app/ui/manager/TopBarUIManager;

    iget-object v5, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mCurrentModeName:Ljava/lang/String;

    invoke-virtual {v3, v1, v0, v5}, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->setCommonSettingUIList(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 3200
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mTopBarUIManager:Lcom/transsion/camera/app/ui/manager/TopBarUIManager;

    invoke-virtual {v0, v4, v2}, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->setLeftAndRightSettingUIList(Ljava/util/List;Ljava/util/List;)V

    .line 3201
    iget v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mCurrentAppUIState:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_224

    const/4 v1, 0x3

    if-eq v0, v1, :cond_224

    const-string v0, "com.transsion.camera.feature.mode.more.MoreModeEntry"

    iget-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mCurrentModeName:Ljava/lang/String;

    .line 3203
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_224

    iget v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mCurrentAppUIState:I

    const/16 v1, 0xb

    if-eq v0, v1, :cond_224

    .line 3205
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mTopBarUIManager:Lcom/transsion/camera/app/ui/manager/TopBarUIManager;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->show()V

    .line 3208
    :cond_224
    sget-object p0, Lcom/transsion/camera/app/ui/BaseAppUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "[PreviewPerformance] doUpdateTopBarSettingUIList end"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 3209
    invoke-static {}, Lcom/transsion/camera/utils/debug/TraceUtil;->end()V

    :cond_22e
    return-void
.end method

.method private doUpdateUIState(IILjava/lang/String;)V
    .registers 10

    .line 3410
    iput p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mCurrentAppUIState:I

    .line 3411
    sget-object v0, Lcom/transsion/camera/app/ui/BaseAppUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doUpdateUIState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 3412
    iget-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mWideCameraUIManager:Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;

    if-eqz v1, :cond_1f

    .line 3413
    invoke-virtual {v1, p1}, Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;->setUIState(I)V

    :cond_1f
    const v1, 0x106000d

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    packed-switch p1, :pswitch_data_476

    goto/16 :goto_442

    .line 3691
    :pswitch_2b
    invoke-direct {p0, v4, v3, v2}, Lcom/transsion/camera/app/ui/BaseAppUI;->doUpdateUIState(IILjava/lang/String;)V

    .line 3692
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mShutterUIManager:Lcom/transsion/camera/app/ui/manager/ShutterUIManager;

    const-string/jumbo p2, "true"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->transitionToPressed(Z)V

    goto/16 :goto_442

    .line 3736
    :pswitch_3c
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mTopBarUIManager:Lcom/transsion/camera/app/ui/manager/TopBarUIManager;

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->hide()V

    .line 3737
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mHelpGuideUIManager:Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;

    if-eqz p1, :cond_48

    .line 3738
    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;->hide()V

    .line 3740
    :cond_48
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mInteractiveUIManager:Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->hide()V

    .line 3741
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mScrollConsumer:Lcom/transsion/camera/app/ui/ScrollConsumer;

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/ScrollConsumer;->onBackPressed()Z

    .line 3743
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mModePickerUIManager:Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;

    if-eqz p1, :cond_59

    .line 3744
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->hide()V

    .line 3747
    :cond_59
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mThumbnailUIManager:Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;

    if-eqz p1, :cond_60

    .line 3748
    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;->hide()V

    .line 3755
    :cond_60
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mHintUIManager:Lcom/transsion/camera/app/ui/manager/HintUIManager;

    if-eqz p1, :cond_6c

    .line 3756
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->show()V

    .line 3757
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mHintUIManager:Lcom/transsion/camera/app/ui/manager/HintUIManager;

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/manager/HintUIManager;->hideSavingDialog()V

    .line 3760
    :cond_6c
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mShutterUIManager:Lcom/transsion/camera/app/ui/manager/ShutterUIManager;

    if-eqz p1, :cond_73

    .line 3761
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->hide()V

    .line 3764
    :cond_73
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mIsVideoRecording:Z

    if-eqz p1, :cond_82

    .line 3765
    iget p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mOrientation:I

    iget-object p2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {p2}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenFormType()I

    move-result p2

    invoke-virtual {p0, p1, p2, v5}, Lcom/transsion/camera/app/ui/BaseAppUI;->updateBottomBarLayout(IIZ)V

    .line 3768
    :cond_82
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mCameraSwitcherUIManager:Lcom/transsion/camera/app/ui/manager/CameraSwitcherUIManager;

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/manager/CameraSwitcherUIManager;->hide()V

    .line 3769
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mOverlayUIManager:Lcom/transsion/camera/app/ui/manager/OverlayUIManager;

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/manager/OverlayUIManager;->show()V

    .line 3770
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mBottomBarRootView:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_442

    .line 3695
    :pswitch_93
    invoke-direct {p0, v4, v3, v2}, Lcom/transsion/camera/app/ui/BaseAppUI;->doUpdateUIState(IILjava/lang/String;)V

    .line 3696
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mShutterUIManager:Lcom/transsion/camera/app/ui/manager/ShutterUIManager;

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->transitionToVoice()V

    goto/16 :goto_442

    .line 3699
    :pswitch_9d
    invoke-direct {p0, v4, v3, v2}, Lcom/transsion/camera/app/ui/BaseAppUI;->doUpdateUIState(IILjava/lang/String;)V

    .line 3700
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mShutterUIManager:Lcom/transsion/camera/app/ui/manager/ShutterUIManager;

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->transitionToIdle()V

    goto/16 :goto_442

    .line 3706
    :pswitch_a7
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mHelpGuideUIManager:Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;

    if-eqz p1, :cond_ae

    .line 3707
    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;->hide()V

    .line 3709
    :cond_ae
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mInteractiveUIManager:Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;

    if-eqz p1, :cond_b5

    .line 3710
    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->hide()V

    .line 3712
    :cond_b5
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mCameraSwitcherUIManager:Lcom/transsion/camera/app/ui/manager/CameraSwitcherUIManager;

    if-eqz p1, :cond_bc

    .line 3713
    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/manager/CameraSwitcherUIManager;->hide()V

    .line 3715
    :cond_bc
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mScrollConsumer:Lcom/transsion/camera/app/ui/ScrollConsumer;

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/ScrollConsumer;->onBackPressed()Z

    .line 3716
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mModePickerUIManager:Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;

    if-eqz p1, :cond_c8

    .line 3717
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->hide()V

    .line 3719
    :cond_c8
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mThumbnailUIManager:Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;

    if-eqz p1, :cond_cf

    .line 3720
    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;->hide()V

    .line 3725
    :cond_cf
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mHintUIManager:Lcom/transsion/camera/app/ui/manager/HintUIManager;

    if-eqz p1, :cond_db

    .line 3726
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->show()V

    .line 3727
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mHintUIManager:Lcom/transsion/camera/app/ui/manager/HintUIManager;

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/manager/HintUIManager;->hideSavingDialog()V

    .line 3729
    :cond_db
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mOverlayUIManager:Lcom/transsion/camera/app/ui/manager/OverlayUIManager;

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/manager/OverlayUIManager;->show()V

    .line 3730
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mBottomBarRootView:Landroid/view/View;

    if-eqz p1, :cond_442

    .line 3731
    invoke-virtual {p1, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_442

    .line 3687
    :pswitch_e9
    invoke-direct {p0, v4, v3, v2}, Lcom/transsion/camera/app/ui/BaseAppUI;->doUpdateUIState(IILjava/lang/String;)V

    .line 3688
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mShutterUIManager:Lcom/transsion/camera/app/ui/manager/ShutterUIManager;

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->transitionToSmile()V

    goto/16 :goto_442

    .line 3646
    :pswitch_f3
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mCShotByPhysicalKey:Z

    if-eqz p1, :cond_102

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/BaseAppUI;->shutterUINewStyleSupport()Z

    move-result p1

    if-eqz p1, :cond_102

    .line 3647
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mShutterUIManager:Lcom/transsion/camera/app/ui/manager/ShutterUIManager;

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->showCShotNumber()V

    .line 3650
    :cond_102
    :pswitch_102
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mHelpGuideUIManager:Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;

    if-eqz p1, :cond_109

    .line 3651
    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;->hide()V

    .line 3653
    :cond_109
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mTopBarUIManager:Lcom/transsion/camera/app/ui/manager/TopBarUIManager;

    if-eqz p1, :cond_128

    .line 3654
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p2

    iget-boolean p2, p2, Lcom/transsion/camera/utils/CustomConfigUtil;->mLivePhotoSupport:Z

    .line 3655
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/BaseAppUI;->isLivePhotoOn()Z

    move-result p3

    if-eqz p3, :cond_124

    iget-object p3, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mShutterUIManager:Lcom/transsion/camera/app/ui/manager/ShutterUIManager;

    if-eqz p3, :cond_124

    .line 3656
    invoke-virtual {p3}, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->getCShotButtonViewVisible()I

    move-result p3

    if-nez p3, :cond_124

    goto :goto_125

    :cond_124
    move v4, v5

    .line 3654
    :goto_125
    invoke-virtual {p1, p2, v4}, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->hide(ZZ)V

    .line 3658
    :cond_128
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mInteractiveUIManager:Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;

    if-eqz p1, :cond_12f

    .line 3659
    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->hide()V

    .line 3661
    :cond_12f
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mWideCameraUIManager:Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;

    if-eqz p1, :cond_136

    .line 3662
    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;->hide()V

    .line 3664
    :cond_136
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mModePickerUIManager:Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;

    if-eqz p1, :cond_13d

    .line 3665
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->hide()V

    .line 3667
    :cond_13d
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mThumbnailUIManager:Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;

    if-eqz p1, :cond_144

    .line 3668
    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;->hide()V

    .line 3670
    :cond_144
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mOverlayUIManager:Lcom/transsion/camera/app/ui/manager/OverlayUIManager;

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/manager/OverlayUIManager;->hide()V

    .line 3671
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mHintUIManager:Lcom/transsion/camera/app/ui/manager/HintUIManager;

    if-eqz p1, :cond_155

    .line 3672
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->hide()V

    .line 3673
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mHintUIManager:Lcom/transsion/camera/app/ui/manager/HintUIManager;

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/manager/HintUIManager;->hideAllHint()V

    .line 3678
    :cond_155
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mCameraSwitcherUIManager:Lcom/transsion/camera/app/ui/manager/CameraSwitcherUIManager;

    if-eqz p1, :cond_15c

    .line 3679
    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/manager/CameraSwitcherUIManager;->hide()V

    .line 3681
    :cond_15c
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mShutterPanelRootView:Landroid/view/ViewGroup;

    if-eqz p1, :cond_163

    .line 3682
    invoke-virtual {p1, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 3684
    :cond_163
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/BaseAppUI;->doUpdateUIStateLongClickFoldFlip()V

    goto/16 :goto_442

    .line 3626
    :pswitch_168
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mHintUIManager:Lcom/transsion/camera/app/ui/manager/HintUIManager;

    if-eqz p1, :cond_184

    if-nez p3, :cond_17a

    .line 3628
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p3, Lcom/transsion/camera/app/common/R$string;->saving_dialog_string:I

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    .line 3630
    :cond_17a
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mHintUIManager:Lcom/transsion/camera/app/ui/manager/HintUIManager;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->show()V

    .line 3631
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mHintUIManager:Lcom/transsion/camera/app/ui/manager/HintUIManager;

    invoke-virtual {p1, p3, p2}, Lcom/transsion/camera/app/ui/manager/HintUIManager;->showSavingDialog(Ljava/lang/String;I)V

    .line 3633
    :cond_184
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mShutterUIManager:Lcom/transsion/camera/app/ui/manager/ShutterUIManager;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->hide()V

    .line 3634
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mOverlayUIManager:Lcom/transsion/camera/app/ui/manager/OverlayUIManager;

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/manager/OverlayUIManager;->hide()V

    .line 3635
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mInteractiveUIManager:Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;

    if-eqz p1, :cond_195

    .line 3636
    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->hide()V

    .line 3638
    :cond_195
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mIsVideoRecording:Z

    if-eqz p1, :cond_1a4

    .line 3639
    iget p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mOrientation:I

    iget-object p2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {p2}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenFormType()I

    move-result p2

    invoke-virtual {p0, p1, p2, v5}, Lcom/transsion/camera/app/ui/BaseAppUI;->updateBottomBarLayout(IIZ)V

    .line 3641
    :cond_1a4
    iput-boolean v5, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mIsVideoRecording:Z

    .line 3642
    iput-boolean v5, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mInterruptPhysicalKey:Z

    .line 3643
    iput v3, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mRecordingOrientation:I

    goto/16 :goto_442

    .line 3528
    :pswitch_1ac
    invoke-virtual {p0, p2}, Lcom/transsion/camera/app/ui/BaseAppUI;->beforeUpdateUIStateProcessingFoldFlip(I)V

    .line 3529
    iget-object p3, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mHelpGuideUIManager:Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;

    if-eqz p3, :cond_1b6

    .line 3530
    invoke-virtual {p3}, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;->hide()V

    .line 3532
    :cond_1b6
    iget-object p3, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mTopBarUIManager:Lcom/transsion/camera/app/ui/manager/TopBarUIManager;

    const/16 v2, 0xb

    if-eqz p3, :cond_1f1

    if-ne p1, v2, :cond_1d2

    .line 3533
    iget-boolean v3, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mIsVideoRecording:Z

    if-nez v3, :cond_1d2

    .line 3534
    invoke-virtual {p3}, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->hide()V

    const/16 p3, 0x15e

    .line 3535
    invoke-virtual {p0, p3}, Lcom/transsion/camera/app/ui/BaseAppUI;->notifyRawActionToAppUI(I)V

    .line 3536
    iget-object p3, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mPopSettingUIManager:Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;

    if-eqz p3, :cond_1f1

    .line 3537
    invoke-virtual {p3, v5}, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->hidePopSettingUI(Z)V

    goto :goto_1f1

    .line 3539
    :cond_1d2
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/BaseAppUI;->supportVideoFlashLightWhenRecording()Z

    move-result p3

    if-eqz p3, :cond_1d9

    goto :goto_1f1

    .line 3542
    :cond_1d9
    iget-object p3, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mTopBarUIManager:Lcom/transsion/camera/app/ui/manager/TopBarUIManager;

    invoke-virtual {p3}, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->hide()V

    const/4 p3, 0x2

    if-ne p2, p3, :cond_1e6

    const/16 v3, 0x15f

    .line 3544
    invoke-virtual {p0, v3}, Lcom/transsion/camera/app/ui/BaseAppUI;->notifyRawActionToAppUI(I)V

    .line 3546
    :cond_1e6
    iget-object v3, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mPopSettingUIManager:Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;

    if-eqz v3, :cond_1f1

    if-eq p2, p3, :cond_1ed

    goto :goto_1ee

    :cond_1ed
    move v4, v5

    .line 3547
    :goto_1ee
    invoke-virtual {v3, v4}, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->hidePopSettingUI(Z)V

    .line 3552
    :cond_1f1
    :goto_1f1
    iget-object p3, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mScrollConsumer:Lcom/transsion/camera/app/ui/ScrollConsumer;

    invoke-virtual {p3}, Lcom/transsion/camera/app/ui/ScrollConsumer;->onBackPressed()Z

    .line 3553
    iget-object p3, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mWideCameraUIManager:Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;

    if-eqz p3, :cond_20d

    .line 3554
    iget-object p3, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mCurrentModeName:Ljava/lang/String;

    const-string v3, "com.transsion.camera.feature.funvideo.mode.FunVideoModeEntry"

    invoke-static {p3, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_20d

    .line 3555
    iget-boolean p3, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mIsVideoRecording:Z

    if-nez p3, :cond_20d

    .line 3556
    iget-object p3, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mWideCameraUIManager:Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;

    invoke-virtual {p3}, Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;->hide()V

    .line 3560
    :cond_20d
    iget-object p3, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mModePickerUIManager:Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;

    if-eqz p3, :cond_214

    .line 3561
    invoke-virtual {p3}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->hide()V

    .line 3563
    :cond_214
    iget-object p3, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mThumbnailUIManager:Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;

    if-eqz p3, :cond_21b

    .line 3564
    invoke-virtual {p3}, Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;->hide()V

    .line 3569
    :cond_21b
    iget-object p3, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mCameraSwitcherUIManager:Lcom/transsion/camera/app/ui/manager/CameraSwitcherUIManager;

    if-eqz p3, :cond_222

    .line 3570
    invoke-virtual {p3}, Lcom/transsion/camera/app/ui/manager/CameraSwitcherUIManager;->hide()V

    .line 3572
    :cond_222
    iget-object p3, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mFloatingShutterUIManager:Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;

    if-eqz p3, :cond_229

    .line 3573
    invoke-virtual {p3, v5}, Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;->hideFloatingShutterUI(Z)V

    .line 3575
    :cond_229
    iget-object p3, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mBottomBarRootView:Landroid/view/View;

    if-eqz p3, :cond_230

    .line 3576
    invoke-virtual {p3, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 3578
    :cond_230
    iget-object p3, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mShutterAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz p3, :cond_248

    invoke-virtual {p3}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result p3

    if-eqz p3, :cond_248

    iget-object p3, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mModePickerUIManager:Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;

    if-eqz p3, :cond_248

    .line 3579
    iget-object p3, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mShutterAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p3}, Landroid/animation/AnimatorSet;->cancel()V

    .line 3580
    iget-object p3, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mModePickerUIManager:Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;

    invoke-virtual {p3}, Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;->hideModeRegion()V

    .line 3582
    :cond_248
    iget-object p3, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mShutterPanelRootView:Landroid/view/ViewGroup;

    if-eqz p3, :cond_256

    .line 3583
    invoke-virtual {p3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 3584
    iget-object p3, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mShutterPanelRootView:Landroid/view/ViewGroup;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p3, v1}, Landroid/view/View;->setAlpha(F)V

    .line 3587
    :cond_256
    iget-boolean p3, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mShutterAnimatorFlag:Z

    iput-boolean p3, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mHideShutter:Z

    .line 3588
    iput-boolean v5, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mShutterAnimatorFlag:Z

    .line 3589
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result p3

    if-eqz p3, :cond_26d

    if-eq p1, v2, :cond_26d

    iget-boolean p3, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mIsVideoRecording:Z

    if-nez p3, :cond_26d

    .line 3592
    iget-object p3, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mOverlayUIManager:Lcom/transsion/camera/app/ui/manager/OverlayUIManager;

    invoke-virtual {p3}, Lcom/transsion/camera/app/ui/manager/OverlayUIManager;->hide()V

    :cond_26d
    if-ne p1, v2, :cond_281

    .line 3595
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mShutterUIManager:Lcom/transsion/camera/app/ui/manager/ShutterUIManager;

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->hideShutterButton()V

    .line 3596
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mHintUIManager:Lcom/transsion/camera/app/ui/manager/HintUIManager;

    if-eqz p1, :cond_2a6

    .line 3597
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->hide()V

    .line 3598
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mHintUIManager:Lcom/transsion/camera/app/ui/manager/HintUIManager;

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/manager/HintUIManager;->hideAllHint()V

    goto :goto_2a6

    :cond_281
    const/16 p1, 0x13

    if-eq p2, p1, :cond_295

    const/16 p1, 0x15

    if-ne p2, p1, :cond_28a

    goto :goto_295

    .line 3609
    :cond_28a
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mShutterUIManager:Lcom/transsion/camera/app/ui/manager/ShutterUIManager;

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->transitionToProcessing()V

    .line 3610
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mShutterUIManager:Lcom/transsion/camera/app/ui/manager/ShutterUIManager;

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->showShutterButton()V

    goto :goto_2a6

    .line 3603
    :cond_295
    :goto_295
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mHintUIManager:Lcom/transsion/camera/app/ui/manager/HintUIManager;

    if-eqz p1, :cond_2a1

    .line 3604
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->hide()V

    .line 3605
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mHintUIManager:Lcom/transsion/camera/app/ui/manager/HintUIManager;

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/manager/HintUIManager;->hideAllHint()V

    .line 3607
    :cond_2a1
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mShutterUIManager:Lcom/transsion/camera/app/ui/manager/ShutterUIManager;

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->hideShutterButton()V

    .line 3613
    :cond_2a6
    :goto_2a6
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mInteractiveUIManager:Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;

    if-eqz p1, :cond_2ad

    .line 3614
    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->hide()V

    .line 3616
    :cond_2ad
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mOverlayUIManager:Lcom/transsion/camera/app/ui/manager/OverlayUIManager;

    const/16 p2, 0x7f

    invoke-virtual {p1, p2}, Lcom/transsion/camera/app/ui/manager/OverlayUIManager;->notifyCameraOperateActionToUI(I)V

    .line 3617
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mInteractiveUIManager:Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;

    if-eqz p1, :cond_2bb

    .line 3618
    invoke-virtual {p1, p2}, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->notifyCameraOperateActionToUI(I)V

    .line 3620
    :cond_2bb
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/BaseAppUI;->doUpdateUIStateProcessingFoldFlip()V

    .line 3621
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mTopBarUIManager:Lcom/transsion/camera/app/ui/manager/TopBarUIManager;

    if-eqz p1, :cond_442

    .line 3622
    invoke-virtual {p1, p2}, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->notifyCameraOperateActionToUI(I)V

    goto/16 :goto_442

    .line 3418
    :pswitch_2c7
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mHelpGuideUIManager:Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;

    if-eqz p1, :cond_2ce

    .line 3419
    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;->show()V

    .line 3421
    :cond_2ce
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mTopBarUIManager:Lcom/transsion/camera/app/ui/manager/TopBarUIManager;

    const-string p2, "com.transsion.camera.feature.mode.vlog.VlogModeEntry"

    if-eqz p1, :cond_328

    const-string p1, "com.transsion.camera.feature.mode.more.MoreModeEntry"

    iget-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mCurrentModeName:Ljava/lang/String;

    .line 3422
    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_328

    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mCurrentModeName:Ljava/lang/String;

    .line 3423
    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_328

    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mCurrentModeSettingUISpec:Lcom/transsion/camera/app/common/ModeSettingUISpec;

    if-eqz p1, :cond_328

    .line 3426
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->getTopBarSettingUIEntries()[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2f8

    .line 3427
    array-length p1, p1

    if-lez p1, :cond_2f8

    .line 3428
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mTopBarUIManager:Lcom/transsion/camera/app/ui/manager/TopBarUIManager;

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->show()V

    .line 3430
    :cond_2f8
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mCurrentModeSettingUISpec:Lcom/transsion/camera/app/common/ModeSettingUISpec;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->getLeftTopBarSettingUIEntries()[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_308

    .line 3431
    array-length p1, p1

    if-lez p1, :cond_308

    .line 3432
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mTopBarUIManager:Lcom/transsion/camera/app/ui/manager/TopBarUIManager;

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->show()V

    .line 3434
    :cond_308
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mCurrentModeSettingUISpec:Lcom/transsion/camera/app/common/ModeSettingUISpec;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->getRightTopBarSettingUIEntries()[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_318

    .line 3435
    array-length p1, p1

    if-lez p1, :cond_318

    .line 3436
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mTopBarUIManager:Lcom/transsion/camera/app/ui/manager/TopBarUIManager;

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->show()V

    .line 3438
    :cond_318
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mCurrentModeSettingUISpec:Lcom/transsion/camera/app/common/ModeSettingUISpec;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->getPopSettingUIEntries()[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_328

    .line 3439
    array-length p1, p1

    if-lez p1, :cond_328

    .line 3440
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mTopBarUIManager:Lcom/transsion/camera/app/ui/manager/TopBarUIManager;

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->show()V

    .line 3443
    :cond_328
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mWideCameraUIManager:Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;

    if-eqz p1, :cond_333

    iget-boolean v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mGraduationViewIsMoving:Z

    if-nez v1, :cond_333

    .line 3444
    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;->show()V

    .line 3446
    :cond_333
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mModePickerUIManager:Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;

    if-eqz p1, :cond_344

    .line 3447
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->show()V

    .line 3448
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mModePickerUIManager:Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;

    invoke-virtual {p1, v4}, Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;->updateArrowEnableState(Z)V

    .line 3449
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mModePickerUIManager:Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;

    invoke-virtual {p1, v4}, Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;->updatePanelItemClickable(Z)V

    .line 3451
    :cond_344
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mThumbnailUIManager:Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;

    if-eqz p1, :cond_357

    iget-boolean v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mShouldHideThumbnailUI:Z

    if-nez v1, :cond_357

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;->isUpdateThumbnail()Z

    move-result p1

    if-eqz p1, :cond_357

    .line 3452
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mThumbnailUIManager:Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;->show()V

    .line 3454
    :cond_357
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mOverlayUIManager:Lcom/transsion/camera/app/ui/manager/OverlayUIManager;

    if-eqz p1, :cond_35e

    .line 3455
    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/manager/OverlayUIManager;->show()V

    .line 3460
    :cond_35e
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/BaseAppUI;->shouldShowCameraSwitcher()Z

    move-result p1

    if-eqz p1, :cond_369

    .line 3461
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mCameraSwitcherUIManager:Lcom/transsion/camera/app/ui/manager/CameraSwitcherUIManager;

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/manager/CameraSwitcherUIManager;->show()V

    .line 3464
    :cond_369
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    if-nez p1, :cond_375

    .line 3465
    const-string p1, "mSettingController is null,return default empty string."

    invoke-static {v0, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const-string p1, ""

    goto :goto_37b

    .line 3467
    :cond_375
    const-string v1, "key_self_timer"

    invoke-interface {p1, v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3470
    :goto_37b
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_394

    const-string v1, "off"

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_38a

    goto :goto_394

    .line 3473
    :cond_38a
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mShutterUIManager:Lcom/transsion/camera/app/ui/manager/ShutterUIManager;

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->getShutterTypeSelftimerOn()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/BaseAppUI;->updateShutterType(I)V

    goto :goto_39d

    .line 3471
    :cond_394
    :goto_394
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mShutterUIManager:Lcom/transsion/camera/app/ui/manager/ShutterUIManager;

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->getShutterTypeSelftimerOff()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/BaseAppUI;->updateShutterType(I)V

    .line 3475
    :goto_39d
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mShutterUIManager:Lcom/transsion/camera/app/ui/manager/ShutterUIManager;

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->show()V

    .line 3476
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mShutterUIManager:Lcom/transsion/camera/app/ui/manager/ShutterUIManager;

    const-string v1, "on_video_recording_ui_changed"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    xor-int/2addr p3, v4

    invoke-virtual {p1, p3}, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->transitionToIdle(Z)V

    .line 3477
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mShutterPanelRootView:Landroid/view/ViewGroup;

    if-eqz p1, :cond_3cb

    iget-boolean p3, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mHideShutter:Z

    if-nez p3, :cond_3ba

    iget-boolean p3, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mHideShutterFromSelfTimer:Z

    if-eqz p3, :cond_3cb

    :cond_3ba
    const/16 p3, 0x8

    .line 3478
    invoke-virtual {p1, p3}, Landroid/view/View;->setVisibility(I)V

    .line 3479
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mShutterPanelRootView:Landroid/view/ViewGroup;

    const/4 p3, 0x0

    invoke-virtual {p1, p3}, Landroid/view/View;->setAlpha(F)V

    .line 3480
    iput-boolean v4, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mShutterAnimatorFlag:Z

    .line 3481
    iput-boolean v5, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mHideShutter:Z

    .line 3482
    iput-boolean v5, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mHideShutterFromSelfTimer:Z

    .line 3484
    :cond_3cb
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mModePickerUIManager:Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;

    if-eqz p1, :cond_3e2

    .line 3485
    iget-boolean p3, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mShutterAnimatorFlag:Z

    if-eqz p3, :cond_3d7

    .line 3486
    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;->hideModeRegion()V

    goto :goto_3e2

    .line 3487
    :cond_3d7
    iget-boolean p3, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mIsModePickerSink:Z

    if-eqz p3, :cond_3df

    .line 3488
    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;->showModeRegionOnSinked()V

    goto :goto_3e2

    .line 3490
    :cond_3df
    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;->showModeRegion()V

    .line 3493
    :cond_3e2
    :goto_3e2
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mHintUIManager:Lcom/transsion/camera/app/ui/manager/HintUIManager;

    if-eqz p1, :cond_3ee

    .line 3494
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->show()V

    .line 3495
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mHintUIManager:Lcom/transsion/camera/app/ui/manager/HintUIManager;

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/manager/HintUIManager;->hideSavingDialog()V

    .line 3497
    :cond_3ee
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mInteractiveUIManager:Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;

    if-eqz p1, :cond_3ff

    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mCurrentModeName:Ljava/lang/String;

    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3ff

    .line 3498
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mInteractiveUIManager:Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->show()V

    .line 3500
    :cond_3ff
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mFloatingShutterUIManager:Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;

    if-eqz p1, :cond_40c

    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mIsPaused:Z

    if-nez p1, :cond_40c

    .line 3501
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mFloatingShutterUIManager:Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;

    invoke-virtual {p1, v5, v5, v5}, Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;->showFloatingShutterUI(ZZZ)V

    .line 3503
    :cond_40c
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mInteractiveUIManager:Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;

    const/16 p2, 0x80

    if-eqz p1, :cond_415

    .line 3504
    invoke-virtual {p1, p2}, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->notifyCameraOperateActionToUI(I)V

    .line 3506
    :cond_415
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/BaseAppUI;->doUpdateUIStateIdleFoldFlip()V

    .line 3508
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mShutterUIProcessing:Z

    if-eqz p1, :cond_423

    .line 3509
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mShutterUIManager:Lcom/transsion/camera/app/ui/manager/ShutterUIManager;

    iget p3, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mShutterProcessingOrientation:I

    invoke-virtual {p1, v4, p3}, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->isUIProcessingAndOrientation(ZI)V

    .line 3511
    :cond_423
    iput-boolean v5, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mIsVideoRecording:Z

    .line 3512
    iput-boolean v5, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mShutterUIProcessing:Z

    .line 3513
    iput-boolean v5, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mInterruptPhysicalKey:Z

    .line 3514
    iput v3, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mRecordingOrientation:I

    .line 3515
    iput v3, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mShutterProcessingOrientation:I

    .line 3516
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mOverlayUIManager:Lcom/transsion/camera/app/ui/manager/OverlayUIManager;

    if-eqz p1, :cond_434

    .line 3517
    invoke-virtual {p1, p2}, Lcom/transsion/camera/app/ui/manager/OverlayUIManager;->notifyCameraOperateActionToUI(I)V

    .line 3519
    :cond_434
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mTopBarUIManager:Lcom/transsion/camera/app/ui/manager/TopBarUIManager;

    if-eqz p1, :cond_43b

    .line 3520
    invoke-virtual {p1, p2}, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->notifyCameraOperateActionToUI(I)V

    .line 3522
    :cond_43b
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mWideCameraUIManager:Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;

    if-eqz p1, :cond_442

    .line 3523
    invoke-virtual {p1, p2}, Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;->notifyCameraOperateActionToUI(I)V

    .line 3775
    :cond_442
    :goto_442
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

    .line 3777
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mShutterUIManager:Lcom/transsion/camera/app/ui/manager/ShutterUIManager;

    iget-boolean p2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mShutterUIProcessing:Z

    iget p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mShutterProcessingOrientation:I

    invoke-virtual {p1, p2, p0}, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->isUIProcessingAndOrientation(ZI)V

    return-void

    :pswitch_data_476
    .packed-switch 0x1
        :pswitch_2c7
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

    .line 4688
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

    .line 4691
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mOpenOnly:Z

    if-nez v0, :cond_66

    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mShutterUIManager:Lcom/transsion/camera/app/ui/manager/ShutterUIManager;

    if-eqz v0, :cond_66

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->isEnable()Z

    move-result v0

    if-eqz v0, :cond_66

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mOverlayManagerFinished:Z

    if-eqz v0, :cond_66

    .line 4692
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mVideoIntent:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_53

    .line 4693
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mVideoIntent:Z

    .line 4694
    invoke-virtual {p0, v1, v1}, Lcom/transsion/camera/app/ui/BaseAppUI;->onShutterClick(II)V

    return-void

    .line 4695
    :cond_53
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mPhotoIntent:Z

    if-eqz v0, :cond_66

    .line 4696
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mPhotoIntent:Z

    .line 4697
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mSelfTimerResponder:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    iget p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mDelayTime:I

    .line 4698
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    .line 4697
    const-string v1, "key_start_self_timer"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_66
    return-void
.end method

.method private enableViewTalkback(Landroid/view/View;Z)V
    .registers 3

    if-eqz p1, :cond_19

    .line 6023
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mContext:Landroid/content/Context;

    if-eqz p0, :cond_d

    invoke-static {p0}, Lcom/transsion/camera/utils/CameraUtil;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_d

    goto :goto_19

    :cond_d
    if-eqz p2, :cond_14

    const/4 p0, 0x1

    .line 6028
    invoke-static {p1, p0}, Landroidx/core/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    return-void

    :cond_14
    const/4 p0, 0x4

    .line 6030
    invoke-static {p1, p0}, Landroidx/core/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    return-void

    .line 6024
    :cond_19
    :goto_19
    sget-object p0, Lcom/transsion/camera/app/ui/BaseAppUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "[enableViewTalkback] view is null or talkback is not enabled"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private enableViewTalkbackForAllView(Z)V
    .registers 3

    .line 5998
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_12

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 5999
    sget-object p0, Lcom/transsion/camera/app/ui/BaseAppUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "[enableViewTalkbackForAllView] talkback is not enabled"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 6002
    :cond_12
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mBottomBarRootView:Landroid/view/View;

    if-eqz v0, :cond_19

    .line 6003
    invoke-direct {p0, v0, p1}, Lcom/transsion/camera/app/ui/BaseAppUI;->enableViewTalkback(Landroid/view/View;Z)V

    .line 6005
    :cond_19
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mModePickerRootView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_20

    .line 6006
    invoke-direct {p0, v0, p1}, Lcom/transsion/camera/app/ui/BaseAppUI;->enableViewTalkback(Landroid/view/View;Z)V

    .line 6008
    :cond_20
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mBelowMainCtrlInflateRoot:Landroid/view/ViewGroup;

    if-eqz v0, :cond_27

    .line 6009
    invoke-direct {p0, v0, p1}, Lcom/transsion/camera/app/ui/BaseAppUI;->enableViewTalkback(Landroid/view/View;Z)V

    .line 6011
    :cond_27
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mTopBarUIManager:Lcom/transsion/camera/app/ui/manager/TopBarUIManager;

    if-eqz v0, :cond_3a

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->getRootView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3a

    .line 6012
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mTopBarUIManager:Lcom/transsion/camera/app/ui/manager/TopBarUIManager;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->getRootView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/transsion/camera/app/ui/BaseAppUI;->enableViewTalkback(Landroid/view/View;Z)V

    .line 6014
    :cond_3a
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mWideCameraUIManager:Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;

    if-eqz v0, :cond_4d

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->getRootView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_4d

    .line 6015
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mWideCameraUIManager:Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->getRootView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/transsion/camera/app/ui/BaseAppUI;->enableViewTalkback(Landroid/view/View;Z)V

    .line 6017
    :cond_4d
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mHelpGuideUIManager:Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;

    if-eqz v0, :cond_60

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->getRootView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_60

    .line 6018
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mHelpGuideUIManager:Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->getRootView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/transsion/camera/app/ui/BaseAppUI;->enableViewTalkback(Landroid/view/View;Z)V

    :cond_60
    return-void
.end method

.method private enterGoProMode()V
    .registers 6

    .line 4192
    const-string v0, "com.unikie.gopro.ui.GoProActivity"

    invoke-static {v0}, Lcom/transsion/camera/utils/ReflectionUtils;->findClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_5c

    .line 4193
    iget-boolean v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mAlreadyGotoGoPro:Z

    if-eqz v1, :cond_d

    goto :goto_5c

    .line 4196
    :cond_d
    invoke-static {}, Lcom/transsion/camera/utils/MonkeyUtils;->isUserAMonkey()Z

    move-result v1

    if-eqz v1, :cond_14

    goto :goto_5c

    .line 4199
    :cond_14
    iget-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mGoProActivityCoverLayout:Landroid/widget/FrameLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 4200
    new-instance v1, Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mGoProActivityCoverLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 4201
    sget v3, Lcom/transsion/camera/R$drawable;->ic_gopro_cover:I

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 4202
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v4, -0x2

    invoke-direct {v3, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v4, 0x11

    .line 4203
    iput v4, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 4204
    invoke-virtual {v1, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 4205
    iget-object v3, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mGoProActivityCoverLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 4206
    new-instance v1, Landroid/content/Intent;

    iget-object v3, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mContext:Landroid/content/Context;

    invoke-direct {v1, v3, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 4207
    const-string v0, "com.unikie.gopro.EXTRA_ENABLE_FEATURE_FLOATING_WINDOW"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 4208
    const-string v0, "com.unikie.gopro.EXTRA_ENABLE_FEATURE_ALBUM"

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 4209
    const-string v0, "android.intent.action.VIEW"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 4210
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mAlreadyGotoGoPro:Z

    .line 4211
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

    .line 5694
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mUIHandler:Landroid/os/Handler;

    new-instance v0, Lcom/transsion/camera/app/ui/BaseAppUI$$ExternalSyntheticLambda15;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/ui/BaseAppUI$$ExternalSyntheticLambda15;-><init>(Lcom/transsion/camera/app/ui/BaseAppUI;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 5702
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mUIHandler:Landroid/os/Handler;

    new-instance v0, Lcom/transsion/camera/app/ui/BaseAppUI$$ExternalSyntheticLambda16;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/ui/BaseAppUI$$ExternalSyntheticLambda16;-><init>(Lcom/transsion/camera/app/ui/BaseAppUI;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_16
    return-void
.end method

.method private getAnimatorDuration()I
    .registers 2

    .line 5962
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result v0

    if-eqz v0, :cond_9

    const/16 p0, 0x96

    return p0

    .line 5965
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

    .line 1922
    const-string v0, "com.transsion.camera.feature.supernightfilter.mode.SuperNightFilterModeEntry"

    invoke-static {v0, p3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 1923
    iget-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getCameraId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/transsion/camera/adapter/CameraInfoUtil;->isCameraFacingBack(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 1924
    invoke-interface {p1, p3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    goto :goto_25

    .line 1927
    :cond_1b
    const-string v0, "com.transsion.camera.feature.mode.supernight.SuperNightModeEntry"

    invoke-interface {p2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_24

    goto :goto_25

    :cond_24
    move-object v0, p3

    .line 1931
    :goto_25
    const-string p2, "com.transsion.camera.feature.burstpmk.BurstPMKModeEntry"

    invoke-static {p2, p3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_43

    .line 1932
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getCameraId()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/transsion/camera/adapter/CameraInfoUtil;->isCameraFacingBack(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_40

    .line 1933
    invoke-interface {p1, p3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_40

    return-object p2

    .line 1936
    :cond_40
    const-string p0, "com.transsion.camera.feature.wideselfie.WideSelfieModeEntry"

    return-object p0

    :cond_43
    return-object v0
.end method

.method private getTranslateDistance()I
    .registers 2

    .line 5955
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p0, 0x0

    return p0

    .line 5958
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

    .line 4432
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

    .line 3345
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_8

    const/4 p0, 0x0

    return p0

    .line 3348
    :cond_8
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p0

    iget-object p0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mVideoModesCategory:[Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$doDelayLoadUIManager$8()Z
    .registers 3

    .line 2852
    sget-object v0, Lcom/transsion/camera/app/ui/BaseAppUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "[PreviewPerformance] doDelayLoadUIManager queueIdle."

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 2853
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/BaseAppUI;->delayLoadUIManager()V

    const/4 p0, 0x0

    return p0
.end method

.method private synthetic lambda$doUpdateSettingUIList$10()V
    .registers 3

    .line 3004
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/BaseAppUI;->doUpdateTopBarSettingUIList()V

    .line 3005
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mUIHandler:Landroid/os/Handler;

    new-instance v1, Lcom/transsion/camera/app/ui/BaseAppUI$$ExternalSyntheticLambda14;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/ui/BaseAppUI$$ExternalSyntheticLambda14;-><init>(Lcom/transsion/camera/app/ui/BaseAppUI;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private synthetic lambda$doUpdateSettingUIList$11()V
    .registers 3

    .line 2998
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mPreviewUIManager:Lcom/transsion/camera/app/ui/manager/PreviewUIManager;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/manager/PreviewUIManager;->switchAnimIsRunning()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    .line 2999
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mSkipUpdatePopSettingUIList:Z

    goto :goto_f

    .line 3001
    :cond_c
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/BaseAppUI;->doUpdatePopSettingUIList()V

    .line 3003
    :goto_f
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mUIHandler:Landroid/os/Handler;

    new-instance v1, Lcom/transsion/camera/app/ui/BaseAppUI$$ExternalSyntheticLambda13;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/ui/BaseAppUI$$ExternalSyntheticLambda13;-><init>(Lcom/transsion/camera/app/ui/BaseAppUI;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private synthetic lambda$doUpdateSettingUIList$9()V
    .registers 2

    const/4 v0, 0x0

    .line 3006
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/BaseAppUI;->doUpdateOverlaySettingUIList(Z)V

    .line 3007
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/BaseAppUI;->onOrientationChanged()V

    return-void
.end method

.method private synthetic lambda$finishUIInflateStage$12()V
    .registers 2

    .line 5695
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

    .line 5697
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->loadAfterPreviewStarted()V

    goto :goto_6

    :cond_18
    return-void
.end method

.method private synthetic lambda$finishUIInflateStage$13()V
    .registers 1

    .line 5703
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/BaseAppUI;->onUIManagerReady()V

    return-void
.end method

.method private synthetic lambda$updateCustomState$0()V
    .registers 2

    .line 1424
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mShutterUIManager:Lcom/transsion/camera/app/ui/manager/ShutterUIManager;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->setWritingState(Z)V

    return-void
.end method

.method private synthetic lambda$updateCustomState$1()V
    .registers 2

    .line 1427
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mShutterUIManager:Lcom/transsion/camera/app/ui/manager/ShutterUIManager;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->setWritingState(Z)V

    return-void
.end method

.method private needHdrInTopbar(Lcom/transsion/camera/app/common/ModeSettingUISpec;)Z
    .registers 7

    .line 3214
    invoke-static {}, Lcom/transsion/camera/utils/FeatureSupport;->isDeveloperMode()Z

    move-result p0

    const/4 v0, 0x0

    if-nez p0, :cond_8

    return v0

    .line 3217
    :cond_8
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->getTopBarSettingUIEntries()[Ljava/lang/String;

    move-result-object p0

    .line 3218
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->getLeftTopBarSettingUIEntries()[Ljava/lang/String;

    move-result-object v1

    .line 3219
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->getRightTopBarSettingUIEntries()[Ljava/lang/String;

    move-result-object v2

    .line 3220
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->getPopSettingUIEntries()[Ljava/lang/String;

    move-result-object v3

    .line 3221
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->getPreferenceSettingUIEntries()[Ljava/lang/String;

    move-result-object p1

    .line 3224
    const-string v4, "com.transsion.camera.ui.setting.hdr.HdrSettingUIEntry"

    invoke-static {p0, v4}, Lcom/transsion/camera/utils/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3e

    .line 3225
    invoke-static {v1, v4}, Lcom/transsion/camera/utils/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3e

    .line 3226
    invoke-static {v2, v4}, Lcom/transsion/camera/utils/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3e

    .line 3227
    invoke-static {v3, v4}, Lcom/transsion/camera/utils/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3e

    .line 3228
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

    .line 4024
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

    .line 4025
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mOverlayUIManager:Lcom/transsion/camera/app/ui/manager/OverlayUIManager;

    if-eqz v0, :cond_21

    .line 4026
    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/ui/manager/OverlayUIManager;->notifyCameraStateToUI(I)V

    .line 4029
    :cond_21
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mInteractiveUIManager:Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;

    if-eqz p0, :cond_28

    .line 4030
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->notifyCameraStateToUI(I)V

    :cond_28
    return-void
.end method

.method private onCameraOperateAction(I)V
    .registers 5

    .line 4436
    sget-object v0, Lcom/transsion/camera/app/ui/BaseAppUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCameraOperateAction action :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 4437
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mSettingFragmentManager:Lcom/transsion/camera/app/ui/manager/SettingFragmentManager;

    if-eqz v0, :cond_1d

    .line 4438
    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/ui/manager/SettingFragmentManager;->notifyCameraOperateActionToUI(I)V

    .line 4440
    :cond_1d
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mModeOrderEditorManager:Lcom/transsion/camera/app/ui/manager/ModeOrderEditorManager;

    if-eqz v0, :cond_24

    .line 4441
    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/ui/manager/ModeOrderEditorManager;->notifyCameraOperateActionToUI(I)V

    .line 4443
    :cond_24
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mEditWaterMarkManager:Lcom/transsion/camera/app/ui/manager/EditWaterMarkManager;

    if-eqz v0, :cond_2b

    .line 4444
    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/ui/manager/EditWaterMarkManager;->notifyCameraOperateActionToUI(I)V

    .line 4446
    :cond_2b
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mProWatermarkManager:Lcom/transsion/camera/app/ui/manager/ProWatermarkManager;

    if-eqz v0, :cond_32

    .line 4447
    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/ui/manager/ProWatermarkManager;->notifyCameraOperateActionToUI(I)V

    .line 4449
    :cond_32
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mGoldWaterMarkManager:Lcom/transsion/camera/app/ui/manager/GoldWaterMarkManager;

    if-eqz v0, :cond_39

    .line 4450
    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/ui/manager/GoldWaterMarkManager;->notifyCameraOperateActionToUI(I)V

    .line 4452
    :cond_39
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mRemoteCaptureManager:Lcom/transsion/camera/app/ui/manager/RemoteCaptureManager;

    if-eqz v0, :cond_40

    .line 4453
    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/ui/manager/RemoteCaptureManager;->notifyCameraOperateActionToUI(I)V

    .line 4455
    :cond_40
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mShutterSoundOptionalManager:Lcom/transsion/camera/app/ui/manager/ShutterSoundOptionalManager;

    if-eqz v0, :cond_47

    .line 4456
    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/ui/manager/ShutterSoundOptionalManager;->notifyCameraOperateActionToUI(I)V

    .line 4458
    :cond_47
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mUIManagers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4d
    :goto_4d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/common/manager/AbstractViewManager;

    if-eqz v1, :cond_4d

    .line 4460
    invoke-virtual {v1, p1}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->notifyCameraOperateActionToUI(I)V

    goto :goto_4d

    .line 4464
    :cond_5f
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mGpuAlgorithmManager:Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager;

    if-eqz v0, :cond_66

    .line 4465
    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager;->notifyCameraOperateAction(I)V

    .line 4468
    :cond_66
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/BaseAppUI;->notifyCameraOperateActionToUI(I)V

    .line 4470
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->modeNotifyCameraOperateActionCallback:Lcom/transsion/camera/app/common/mode/IModeNotifyCameraOperateActionCallback;

    if-eqz v0, :cond_70

    .line 4471
    invoke-interface {v0, p1}, Lcom/transsion/camera/app/common/mode/IModeNotifyCameraOperateActionCallback;->notifyCameraOperateAction(I)V

    :cond_70
    const/16 v0, 0xb

    const/4 v1, 0x0

    if-ne p1, v0, :cond_7b

    .line 4474
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mShutterAnimatorFlag:Z

    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mHideShutterFromSelfTimer:Z

    .line 4475
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mShutterAnimatorFlag:Z

    :cond_7b
    const/16 v0, 0x39

    if-ne p1, v0, :cond_81

    .line 4478
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mHideShutterFromSelfTimer:Z

    :cond_81
    return-void
.end method

.method private onUIManagerReady()V
    .registers 2

    const/16 v0, 0x6d

    .line 4704
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/BaseAppUI;->notifyRawActionToAppUI(I)V

    .line 4705
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/BaseAppUI;->onUIManagerReadyFoldFlip()V

    .line 4706
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mSpecifyModePolicy:Lcom/transsion/camera/app/SpecifyModePolicy;

    if-eqz v0, :cond_f

    .line 4707
    invoke-virtual {v0}, Lcom/transsion/camera/app/SpecifyModePolicy;->doActionAfterPreviewStarted()V

    .line 4709
    :cond_f
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mOnCompleteAllowed:Z

    if-eqz v0, :cond_1d

    const/4 v0, 0x0

    .line 4710
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mOnCompleteAllowed:Z

    .line 4711
    invoke-static {}, Lcom/transsion/camera/app/common/ModuleTransferManager;->getTransferManager()Lcom/transsion/camera/app/common/ModuleTransferManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ModuleTransferManager;->onComplete()V

    .line 4713
    :cond_1d
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/BaseAppUI;->doVoiceCapture()V

    return-void
.end method

.method private resetActionTriggerTime(I)V
    .registers 4

    const-wide/16 v0, 0x0

    .line 691
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

    .line 692
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mActionTriggerTime:Ljava/util/Map;

    const/16 p1, 0xe

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private resumeRootLayout()V
    .registers 3

    .line 2293
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mRootView:Landroid/view/ViewGroup;

    if-nez v0, :cond_5

    goto :goto_1d

    .line 2296
    :cond_5
    instance-of v1, v0, Lcom/transsion/camera/app/ui/widget/RootLayout;

    if-nez v1, :cond_a

    goto :goto_1d

    .line 2299
    :cond_a
    check-cast v0, Lcom/transsion/camera/app/ui/widget/RootLayout;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/widget/RootLayout;->resume()V

    .line 2304
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mGoProActivityCoverLayout:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_1d

    .line 2305
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 2306
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mGoProActivityCoverLayout:Landroid/widget/FrameLayout;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_1d
    :goto_1d
    return-void
.end method

.method private secureCameraTopBarSuperDefinitionSupport(Ljava/lang/String;)Z
    .registers 4

    .line 3233
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/camera/R$bool;->secure_camera_topbar_super_definition_support:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 3234
    invoke-static {p1}, Lcom/transsion/camera/adapter/CameraInfoUtil;->isCameraFacingBack(Ljava/lang/String;)Z

    move-result p1

    if-nez v0, :cond_1a

    .line 3236
    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mSecureCamera:Z

    if-eqz p0, :cond_1a

    if-eqz p1, :cond_1a

    const/4 p0, 0x0

    return p0

    :cond_1a
    const/4 p0, 0x1

    return p0
.end method

.method private shouldShowCameraSwitcher()Z
    .registers 4

    .line 3781
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mShouldHideSwitcher:Z

    const/4 v1, 0x0

    if-nez v0, :cond_20

    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mCameraSwitcherUIManager:Lcom/transsion/camera/app/ui/manager/CameraSwitcherUIManager;

    if-nez v0, :cond_a

    goto :goto_20

    .line 3784
    :cond_a
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportUI5MoreModeStyle:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_1f

    .line 3785
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mCurrentModeSettingUISpec:Lcom/transsion/camera/app/common/ModeSettingUISpec;

    if-eqz p0, :cond_1e

    .line 3786
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

    .line 4483
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isVideoFlashlightSupportWhenRecording()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 4484
    :cond_8
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mCurrentModeSettingUISpec:Lcom/transsion/camera/app/common/ModeSettingUISpec;

    if-nez p0, :cond_d

    return v1

    .line 4485
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

    .line 1890
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    if-nez v0, :cond_5

    return-void

    .line 1894
    :cond_5
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/camera/R$array;->build_in_features_back_mode_order:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 1895
    iget-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/camera/R$array;->build_in_features_front_mode_order:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 1896
    iget-object v2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mSupportedBackModes:[Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 1897
    iget-object v3, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mSupportedFrontModes:[Ljava/lang/String;

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 1899
    invoke-direct {p0, v2, v3, p1}, Lcom/transsion/camera/app/ui/BaseAppUI;->getImageryGuideMode(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1901
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_41

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6d

    .line 1902
    :cond_41
    invoke-interface {v2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6d

    invoke-interface {v3, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6d

    .line 1903
    sget-object p1, Lcom/transsion/camera/app/ui/BaseAppUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "not support this mode, return"

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1904
    new-instance p1, Lcom/transsion/camera/app/common/ui/HintInfo;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Lcom/transsion/camera/app/common/ui/HintInfo;-><init>(I)V

    .line 1905
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/camera/R$string;->imagery_guide_go_mode_unlock_tips:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/common/ui/HintInfo;->setMessage(Ljava/lang/String;)V

    .line 1906
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/BaseAppUI;->showToast(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    return-void

    .line 1911
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

    .line 1913
    :goto_7b
    invoke-interface {v2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_87

    .line 1914
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mModePickerUIManager:Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;->onSwitchModeByAppUI(Ljava/lang/String;)V

    return-void

    .line 1916
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

    .line 665
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mSupportDebounceActionSet:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 671
    :cond_1b
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mActionTriggerTime:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 674
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

    .line 2690
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/BaseAppUI;->getShutterPanelPaddingHeight()I

    move-result v0

    .line 2691
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v1

    iget-boolean v1, v1, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportUI5:Z

    if-eqz v1, :cond_d

    return v0

    :cond_d
    mul-int/lit8 v0, v0, 0x2

    sub-int/2addr p1, v0

    .line 2694
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/ScreenManager;->getShutterButtonHeight()I

    move-result p0

    sub-int/2addr p1, p0

    return p1
.end method

.method protected final calculateShutterPanelPaddingHeight(I)I
    .registers 4

    .line 2838
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/BaseAppUI;->getShutterPanelPaddingHeight()I

    move-result v0

    .line 2839
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v1

    iget-boolean v1, v1, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportUI5:Z

    if-eqz v1, :cond_d

    return v0

    .line 2842
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

    .line 5166
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mWideCameraUIManager:Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;

    if-eqz p0, :cond_7

    .line 5167
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;->couldShow(Z)V

    :cond_7
    return-void
.end method

.method public createGuideFragment(Ljava/util/List;)Landroid/app/Fragment;
    .registers 2

    .line 6036
    invoke-static {p1}, Lcom/transsion/camera/app/ui/GuidePagerRootFragment;->newInstance(Ljava/util/List;)Lcom/transsion/camera/app/ui/GuidePagerRootFragment;

    move-result-object p0

    return-object p0
.end method

.method public createImageryGuideManager()V
    .registers 5

    .line 1860
    sget-object v0, Lcom/transsion/camera/adapter/ImageryGuideAdapter;->INSTANCE:Lcom/transsion/camera/adapter/ImageryGuideAdapter;

    new-instance v1, Lcom/transsion/camera/app/ui/BaseAppUI$$ExternalSyntheticLambda18;

    invoke-direct {v1}, Lcom/transsion/camera/app/ui/BaseAppUI$$ExternalSyntheticLambda18;-><init>()V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    .line 1861
    const-class v3, Lcom/transsion/camera/manager/BaseImageryGuideManagerFactory;

    invoke-virtual {v0, v3, v1, v2}, Lcom/transsion/camera/adapter/ImageryGuideAdapter;->getHelpGuideManagerFactory(Ljava/lang/Class;Ljava/util/function/Supplier;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/manager/BaseImageryGuideManagerFactory;

    .line 1862
    invoke-virtual {v0}, Lcom/transsion/camera/manager/BaseImageryGuideManagerFactory;->createImageryGuideManager()Lcom/transsion/camera/manager/BaseImageryGuideManager;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mImageryGuideManager:Lcom/transsion/camera/manager/BaseImageryGuideManager;

    .line 1863
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/BaseAppUI;->initImageryGuideManager()V

    .line 1864
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mImageryGuideManager:Lcom/transsion/camera/manager/BaseImageryGuideManager;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/camera/R$array;->build_in_features_back_mode_order:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mContext:Landroid/content/Context;

    .line 1865
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/transsion/camera/R$array;->build_in_features_front_mode_order:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 1864
    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/manager/BaseImageryGuideManager;->supportModesEntry([Ljava/lang/String;[Ljava/lang/String;)V

    .line 1866
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mImageryGuideManager:Lcom/transsion/camera/manager/BaseImageryGuideManager;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mCurrentModeSettingUISpec:Lcom/transsion/camera/app/common/ModeSettingUISpec;

    if-nez p0, :cond_41

    .line 1867
    const-string p0, "com.transsion.camera.feature.mode.autoscenedetection.ASDModeEntry"

    goto :goto_45

    .line 1868
    :cond_41
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->getName()Ljava/lang/String;

    move-result-object p0

    .line 1866
    :goto_45
    invoke-virtual {v0, p0}, Lcom/transsion/camera/manager/BaseImageryGuideManager;->updateCurrentMode(Ljava/lang/String;)V

    return-void
.end method

.method public currentThreadIsMain()Z
    .registers 1

    .line 812
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/BaseAppUI;->isMainThread()Z

    move-result p0

    return p0
.end method

.method public destroyPreviewUI()V
    .registers 1

    .line 2193
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mPreviewUIManager:Lcom/transsion/camera/app/ui/manager/PreviewUIManager;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/PreviewUIManager;->destroy()V

    return-void
.end method

.method protected doInflateTopLayerUI()V
    .registers 9

    .line 5624
    sget-object v0, Lcom/transsion/camera/app/ui/BaseAppUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "[PreviewPerformance] doLoadTopLayerUI start"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 5625
    const-string v1, "doLoadTopLayerUI"

    invoke-static {v1}, Lcom/transsion/camera/utils/debug/TraceUtil;->begin(Ljava/lang/String;)V

    .line 5626
    iget-object v2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mOverlayUIManager:Lcom/transsion/camera/app/ui/manager/OverlayUIManager;

    if-eqz v2, :cond_1c

    .line 5627
    iget-object v3, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mRootView:Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mOverlayUIRoot:Landroid/view/ViewGroup;

    iget-object v5, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mLayoutInflater:Landroid/view/LayoutInflater;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mCameraFlashLayout:Landroid/view/ViewGroup;

    invoke-virtual/range {v2 .. v7}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->inflateLayout(Landroid/view/ViewGroup;Landroid/view/ViewGroup;Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/view/ViewGroup;)V

    .line 5629
    :cond_1c
    iget-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mRingScreenLightUIManager:Lcom/transsion/camera/app/ui/manager/RingScreenLightUIManager;

    if-eqz v1, :cond_2c

    .line 5630
    iget-object v2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mRootView:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mLayoutInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v1, v2, v3}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->inflateLayout(Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)V

    .line 5631
    iget-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mRingScreenLightUIManager:Lcom/transsion/camera/app/ui/manager/RingScreenLightUIManager;

    invoke-virtual {p0, v1}, Lcom/transsion/camera/app/ui/BaseAppUI;->registerPreviewRectListener(Lcom/transsion/camera/app/common/IAppUIListener$IPreviewRectListener;)V

    .line 5634
    :cond_2c
    iget-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mRootView:Landroid/view/ViewGroup;

    sget v2, Lcom/transsion/camera/R$id;->temperature_root:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 5635
    iget-object v2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mThermalThrottleUIManager:Lcom/transsion/camera/app/ui/manager/ThermalThrottleUIManager;

    if-eqz v2, :cond_59

    if-eqz v1, :cond_59

    .line 5636
    iget-object v3, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mLayoutInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v2, v1, v3}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->inflateLayout(Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)V

    .line 5637
    iget-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mThermalThrottleUIManager:Lcom/transsion/camera/app/ui/manager/ThermalThrottleUIManager;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {v2}, Lcom/transsion/camera/app/ui/ScreenManager;->getCutoutHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/transsion/camera/app/ui/manager/ThermalThrottleUIManager;->setCutoutHeight(I)V

    .line 5638
    iget-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mThermalThrottleUIManager:Lcom/transsion/camera/app/ui/manager/ThermalThrottleUIManager;

    invoke-virtual {v1, p0}, Lcom/transsion/camera/app/ui/manager/ThermalThrottleUIManager;->setPopupOptionControl(Lcom/transsion/camera/app/common/IAppUIControl$IPopupOptionControl;)V

    .line 5639
    iget-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mThermalThrottleUIManager:Lcom/transsion/camera/app/ui/manager/ThermalThrottleUIManager;

    iget p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mOrientation:I

    const/4 v2, 0x1

    invoke-virtual {v1, p0, v2}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->onOrientationChanged(IZ)V

    .line 5641
    :cond_59
    invoke-static {}, Lcom/transsion/camera/utils/debug/TraceUtil;->end()V

    .line 5642
    const-string p0, "[PreviewPerformance] doLoadTopLayerUI end"

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method protected doLoadContinuousShotUIManager()V
    .registers 5

    .line 2923
    sget-object v0, Lcom/transsion/camera/app/ui/BaseAppUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "[doLoadContinuousShotUIManager] start"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 2924
    const-string v1, "doLoadContinuousShotUIManager"

    invoke-static {v1}, Lcom/transsion/camera/utils/debug/TraceUtil;->begin(Ljava/lang/String;)V

    .line 2925
    iget-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mContinuousShotUIManager:Lcom/transsion/camera/app/ui/manager/ContinuousShotUIManager;

    if-nez v1, :cond_30

    iget-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mOverlayUIRoot:Landroid/view/ViewGroup;

    if-eqz v1, :cond_30

    .line 2926
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/BaseAppUI;->initContinuousShotUIManager()Lcom/transsion/camera/app/ui/manager/ContinuousShotUIManager;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mContinuousShotUIManager:Lcom/transsion/camera/app/ui/manager/ContinuousShotUIManager;

    .line 2927
    iget-object v2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mUIManagers:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2928
    iget-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mContinuousShotUIManager:Lcom/transsion/camera/app/ui/manager/ContinuousShotUIManager;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mInteractiveLayout:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mLayoutInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v1, v2, v3}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->inflateLayout(Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)V

    .line 2929
    iget-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mContinuousShotUIManager:Lcom/transsion/camera/app/ui/manager/ContinuousShotUIManager;

    iget p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mOrientation:I

    const/4 v2, 0x1

    invoke-virtual {v1, p0, v2}, Lcom/transsion/camera/app/ui/manager/ContinuousShotUIManager;->onOrientationChanged(IZ)V

    .line 2931
    :cond_30
    invoke-static {}, Lcom/transsion/camera/utils/debug/TraceUtil;->end()V

    .line 2932
    const-string p0, "[doLoadContinuousShotUIManager] end"

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method protected doLoadToastUIManager()V
    .registers 5

    .line 2906
    sget-object v0, Lcom/transsion/camera/app/ui/BaseAppUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "[doLoadToastUIManager] start"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 2907
    const-string v1, "doLoadToastUIManager"

    invoke-static {v1}, Lcom/transsion/camera/utils/debug/TraceUtil;->begin(Ljava/lang/String;)V

    .line 2908
    iget-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mToastUIManager:Lcom/transsion/camera/app/ui/manager/ToastUIManager;

    if-nez v1, :cond_30

    iget-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mToastLayout:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_30

    .line 2909
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/BaseAppUI;->initToastUIManager()Lcom/transsion/camera/app/ui/manager/ToastUIManager;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mToastUIManager:Lcom/transsion/camera/app/ui/manager/ToastUIManager;

    .line 2910
    iget-object v2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mUIManagers:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2911
    iget-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mToastUIManager:Lcom/transsion/camera/app/ui/manager/ToastUIManager;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mToastLayout:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mLayoutInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v1, v2, v3}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->inflateLayout(Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)V

    .line 2912
    iget-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mToastUIManager:Lcom/transsion/camera/app/ui/manager/ToastUIManager;

    iget p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mOrientation:I

    const/4 v2, 0x1

    invoke-virtual {v1, p0, v2}, Lcom/transsion/camera/app/ui/manager/ToastUIManager;->onOrientationChanged(IZ)V

    .line 2914
    :cond_30
    invoke-static {}, Lcom/transsion/camera/utils/debug/TraceUtil;->end()V

    .line 2915
    const-string p0, "[doLoadToastUIManager] end"

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public doOnBGImageSaved(Landroid/net/Uri;[B)V
    .registers 4

    .line 2333
    iget-object p2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mThumbnailUIManager:Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;

    if-eqz p2, :cond_f

    .line 2334
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mCurrentModeSettingUISpec:Lcom/transsion/camera/app/common/ModeSettingUISpec;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->isSupportShare()Z

    move-result p0

    const/4 v0, 0x1

    invoke-virtual {p2, p1, v0, p0}, Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;->updateThumbnailUri(Landroid/net/Uri;ZZ)V

    return-void

    .line 2336
    :cond_f
    sget-object p0, Lcom/transsion/camera/app/ui/BaseAppUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "[doOnBGImageSaved] mThumbnailUIManager null."

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method protected doSetupModePickerUIManager()V
    .registers 5

    .line 2940
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mModePickerUIManager:Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;

    if-eqz v0, :cond_14

    iget-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mModePickerRootView:Landroid/view/ViewGroup;

    if-eqz v1, :cond_14

    .line 2941
    iget-object v2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mRootView:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mLayoutInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v0, v2, v1, v3}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->inflateLayout(Landroid/view/ViewGroup;Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)V

    .line 2942
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mModePickerUIManager:Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/BaseAppUI;->registerPreviewRectListener(Lcom/transsion/camera/app/common/IAppUIListener$IPreviewRectListener;)V

    :cond_14
    return-void
.end method

.method protected doSetupUIManagers()V
    .registers 5

    .line 2959
    sget-object v0, Lcom/transsion/camera/app/ui/BaseAppUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "[PreviewPerformance] doSetupUIManagers start"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 2960
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mShouldHideSwitcher:Z

    .line 2961
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mShouldHideThumbnailUI:Z

    .line 2962
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mShouldHideGoogleLensUI:Z

    .line 2964
    iget-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mPreviewUIManager:Lcom/transsion/camera/app/ui/manager/PreviewUIManager;

    const/4 v2, 0x0

    if-eqz v1, :cond_1b

    .line 2965
    new-instance v3, Lcom/transsion/camera/app/ui/BaseAppUI$OnTouchListenerImpl;

    invoke-direct {v3, p0, v2}, Lcom/transsion/camera/app/ui/BaseAppUI$OnTouchListenerImpl;-><init>(Lcom/transsion/camera/app/ui/BaseAppUI;Lcom/transsion/camera/app/ui/BaseAppUI-IA;)V

    invoke-virtual {v1, v3}, Lcom/transsion/camera/app/ui/manager/PreviewUIManager;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 2970
    :cond_1b
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v1

    iget-boolean v1, v1, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportSellingPointGuide:Z

    if-eqz v1, :cond_29

    new-instance v1, Lcom/transsion/camera/app/ui/BaseAppUI$SellingPointGuideUIInflateStage;

    invoke-direct {v1, p0, v2}, Lcom/transsion/camera/app/ui/BaseAppUI$SellingPointGuideUIInflateStage;-><init>(Lcom/transsion/camera/app/ui/BaseAppUI;Lcom/transsion/camera/app/ui/BaseAppUI$UIInflateStage;)V

    move-object v2, v1

    .line 2971
    :cond_29
    new-instance v1, Lcom/transsion/camera/app/ui/BaseAppUI$InteractUIInflateStage;

    invoke-direct {v1, p0, v2}, Lcom/transsion/camera/app/ui/BaseAppUI$InteractUIInflateStage;-><init>(Lcom/transsion/camera/app/ui/BaseAppUI;Lcom/transsion/camera/app/ui/BaseAppUI$UIInflateStage;)V

    .line 2972
    invoke-virtual {p0, v1}, Lcom/transsion/camera/app/ui/BaseAppUI;->getChangeScreenFormStage(Lcom/transsion/camera/app/ui/BaseAppUI$UIInflateStage;)Lcom/transsion/camera/app/ui/BaseAppUI$UIInflateStage;

    move-result-object v2

    if-eqz v2, :cond_3a

    .line 2975
    new-instance v1, Lcom/transsion/camera/app/ui/BaseAppUI$PopSettingUIInflateStage;

    invoke-direct {v1, p0, v2}, Lcom/transsion/camera/app/ui/BaseAppUI$PopSettingUIInflateStage;-><init>(Lcom/transsion/camera/app/ui/BaseAppUI;Lcom/transsion/camera/app/ui/BaseAppUI$UIInflateStage;)V

    goto :goto_40

    .line 2977
    :cond_3a
    new-instance v2, Lcom/transsion/camera/app/ui/BaseAppUI$PopSettingUIInflateStage;

    invoke-direct {v2, p0, v1}, Lcom/transsion/camera/app/ui/BaseAppUI$PopSettingUIInflateStage;-><init>(Lcom/transsion/camera/app/ui/BaseAppUI;Lcom/transsion/camera/app/ui/BaseAppUI$UIInflateStage;)V

    move-object v1, v2

    .line 2980
    :goto_40
    new-instance v2, Lcom/transsion/camera/app/ui/BaseAppUI$ModeSelectUIInflateStage;

    invoke-direct {v2, p0, v1}, Lcom/transsion/camera/app/ui/BaseAppUI$ModeSelectUIInflateStage;-><init>(Lcom/transsion/camera/app/ui/BaseAppUI;Lcom/transsion/camera/app/ui/BaseAppUI$UIInflateStage;)V

    .line 2981
    new-instance v1, Lcom/transsion/camera/app/ui/BaseAppUI$BottomBarUIInflateStage;

    invoke-direct {v1, p0, v2}, Lcom/transsion/camera/app/ui/BaseAppUI$BottomBarUIInflateStage;-><init>(Lcom/transsion/camera/app/ui/BaseAppUI;Lcom/transsion/camera/app/ui/BaseAppUI$UIInflateStage;)V

    .line 2982
    new-instance v2, Lcom/transsion/camera/app/ui/BaseAppUI$TopBarUIInflateStage;

    invoke-direct {v2, p0, v1}, Lcom/transsion/camera/app/ui/BaseAppUI$TopBarUIInflateStage;-><init>(Lcom/transsion/camera/app/ui/BaseAppUI;Lcom/transsion/camera/app/ui/BaseAppUI$UIInflateStage;)V

    .line 2983
    invoke-virtual {v2}, Lcom/transsion/camera/app/ui/BaseAppUI$TopBarUIInflateStage;->process()V

    .line 2985
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/BaseAppUI;->doSetStateListener()V

    .line 2986
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/BaseAppUI;->doUpdateCurrentModeUI()V

    .line 2987
    const-string p0, "[PreviewPerformance] doSetupUIManagers end"

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 2988
    invoke-static {}, Lcom/transsion/camera/utils/debug/TraceUtil;->end()V

    return-void
.end method

.method public doUpdateCurrentModeUI()V
    .registers 1

    .line 5287
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mModePickerUIManager:Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;

    if-eqz p0, :cond_7

    .line 5288
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;->flashModeListCurrentCamera()V

    :cond_7
    return-void
.end method

.method protected doUpdateSettingUIList()V
    .registers 3

    .line 2996
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/BaseAppUI;->doUpdateInteractiveUIList()V

    .line 2997
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mUIHandler:Landroid/os/Handler;

    new-instance v1, Lcom/transsion/camera/app/ui/BaseAppUI$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/ui/BaseAppUI$$ExternalSyntheticLambda4;-><init>(Lcom/transsion/camera/app/ui/BaseAppUI;)V

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

    .line 1627
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mHintUIManager:Lcom/transsion/camera/app/ui/manager/HintUIManager;

    if-eqz p0, :cond_7

    .line 1628
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/manager/HintUIManager;->endHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    :cond_7
    return-void
.end method

.method public enterEditWaterMarkFragment()V
    .registers 2

    const/16 v0, 0x66

    .line 5246
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/BaseAppUI;->notifyRawActionToAppUI(I)V

    .line 5247
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mTopBarUIManager:Lcom/transsion/camera/app/ui/manager/TopBarUIManager;

    if-eqz p0, :cond_c

    .line 5248
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->dismissPopupWithoutAnimation()Z

    :cond_c
    return-void
.end method

.method public enterGoldWaterMarkFragment()V
    .registers 2

    const/16 v0, 0xb0

    .line 5272
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/BaseAppUI;->notifyRawActionToAppUI(I)V

    .line 5273
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mTopBarUIManager:Lcom/transsion/camera/app/ui/manager/TopBarUIManager;

    if-eqz p0, :cond_c

    .line 5274
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->dismissPopupWithoutAnimation()Z

    :cond_c
    return-void
.end method

.method public enterModeEditorFragment()V
    .registers 2

    const/16 v0, 0x55

    .line 5238
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/BaseAppUI;->notifyRawActionToAppUI(I)V

    .line 5239
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mTopBarUIManager:Lcom/transsion/camera/app/ui/manager/TopBarUIManager;

    if-eqz p0, :cond_c

    .line 5240
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->dismissPopupWithoutAnimation()Z

    :cond_c
    return-void
.end method

.method public enterProWaterMarkFragment()V
    .registers 2

    const/16 v0, 0xf4

    .line 5280
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/BaseAppUI;->notifyRawActionToAppUI(I)V

    .line 5281
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mTopBarUIManager:Lcom/transsion/camera/app/ui/manager/TopBarUIManager;

    if-eqz p0, :cond_c

    .line 5282
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->dismissPopupWithoutAnimation()Z

    :cond_c
    return-void
.end method

.method public enterRemoteCaptureFragment()V
    .registers 2

    const/16 v0, 0x89

    .line 5404
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/BaseAppUI;->notifyRawActionToAppUI(I)V

    .line 5405
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mTopBarUIManager:Lcom/transsion/camera/app/ui/manager/TopBarUIManager;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->dismissPopupWithoutAnimation()Z

    return-void
.end method

.method public enterSettingUIBottom()V
    .registers 1

    .line 6041
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/BaseAppUI;->enterSettingFragmentBottom()V

    return-void
.end method

.method public enterShutterSoundOptionalFragment()V
    .registers 2

    const/16 v0, 0xef

    .line 5410
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/BaseAppUI;->notifyRawActionToAppUI(I)V

    .line 5411
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
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mModeOrderEditorManager:Lcom/transsion/camera/app/ui/manager/ModeOrderEditorManager;

    if-eqz v0, :cond_18

    .line 2484
    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/manager/ModeOrderEditorManager;->exitEditorFragment()V

    .line 2486
    :cond_18
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mEditWaterMarkManager:Lcom/transsion/camera/app/ui/manager/EditWaterMarkManager;

    if-eqz v0, :cond_1f

    .line 2487
    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/manager/EditWaterMarkManager;->exitEditWaterMarkFragment()V

    .line 2489
    :cond_1f
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mGoldWaterMarkManager:Lcom/transsion/camera/app/ui/manager/GoldWaterMarkManager;

    if-eqz v0, :cond_26

    .line 2490
    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/manager/GoldWaterMarkManager;->exitGoldWaterMarkFragment()V

    .line 2493
    :cond_26
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mProWatermarkManager:Lcom/transsion/camera/app/ui/manager/ProWatermarkManager;

    if-eqz v0, :cond_2d

    .line 2494
    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/manager/ProWatermarkManager;->exitProWaterMarkFragment()V

    .line 2496
    :cond_2d
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mRemoteCaptureManager:Lcom/transsion/camera/app/ui/manager/RemoteCaptureManager;

    if-eqz v0, :cond_34

    .line 2497
    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/manager/RemoteCaptureManager;->exitRemoteCaptureFragment()V

    .line 2499
    :cond_34
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mShutterSoundOptionalManager:Lcom/transsion/camera/app/ui/manager/ShutterSoundOptionalManager;

    if-eqz v0, :cond_3b

    .line 2500
    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/manager/ShutterSoundOptionalManager;->exitShutterSoundOptionalFragment()V

    .line 2502
    :cond_3b
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mTuningFeatureManager:Lcom/transsion/camera/app/ui/manager/TuningFeatureManager;

    if-eqz v0, :cond_42

    .line 2503
    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/manager/TuningFeatureManager;->exitTuningFeatureFragment()V

    .line 2505
    :cond_42
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mImageryGuideManager:Lcom/transsion/camera/manager/BaseImageryGuideManager;

    if-eqz p0, :cond_49

    .line 2506
    invoke-virtual {p0}, Lcom/transsion/camera/manager/BaseImageryGuideManager;->exitImageryGuideFragment()V

    :cond_49
    return-void
.end method

.method public exitModeOnMoreTab()V
    .registers 1

    .line 5094
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mModePickerUIManager:Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;

    if-eqz p0, :cond_7

    .line 5095
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

    .line 2517
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mModeAboveMainCtrlInflateRoot:Landroid/view/ViewGroup;

    return-object p0
.end method

.method public getActionSound()Lcom/transsion/camera/utils/sound/IActionSound;
    .registers 1

    .line 2805
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mActionSound:Lcom/transsion/camera/utils/sound/IActionSound;

    return-object p0
.end method

.method public getActionTriggerTime(I)J
    .registers 4

    .line 6091
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

    .line 3931
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mAsyncInflater:Landroidx/asynclayoutinflater/view/AsyncLayoutInflater;

    return-object p0
.end method

.method public getBottomBarHeight()I
    .registers 1

    .line 2723
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

    .line 709
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mCameraOperateAction:Lcom/transsion/camera/app/common/mode/CameraOperateAction;

    if-eqz p0, :cond_9

    .line 710
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraOperateAction;->getCurrentActionState()I

    move-result p0

    return p0

    :cond_9
    const/4 p0, -0x1

    return p0
.end method

.method public getCurrentAsdHint()Lcom/transsion/camera/app/common/ui/HintInfo;
    .registers 1

    .line 1641
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mHintUIManager:Lcom/transsion/camera/app/ui/manager/HintUIManager;

    if-eqz p0, :cond_9

    .line 1642
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/HintUIManager;->getCurrentAsdHint()Lcom/transsion/camera/app/common/ui/HintInfo;

    move-result-object p0

    return-object p0

    :cond_9
    const/4 p0, 0x0

    return-object p0
.end method

.method public getCurrentMode()Ljava/lang/String;
    .registers 1

    .line 5710
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mCurrentModeName:Ljava/lang/String;

    return-object p0
.end method

.method public getCurrentModeSettingUISpec()Lcom/transsion/camera/app/common/ModeSettingUISpec;
    .registers 1

    .line 5664
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mCurrentModeSettingUISpec:Lcom/transsion/camera/app/common/ModeSettingUISpec;

    return-object p0
.end method

.method public getCurrentPopupWindowKey()Ljava/lang/String;
    .registers 1

    .line 951
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mCurrentPopupWindowKey:Ljava/lang/String;

    return-object p0
.end method

.method public getCurrentUIState()I
    .registers 1

    .line 1436
    iget p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mCurrentAppUIState:I

    return p0
.end method

.method public getCutoutHeight()I
    .registers 1

    .line 2705
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/ScreenManager;->getCutoutHeight()I

    move-result p0

    return p0
.end method

.method public getFloatingShutterRoot()Landroid/view/ViewGroup;
    .registers 1

    .line 2659
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mFloatingShutterLayout:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method public getGoogleLensUIButtonVisible()I
    .registers 1

    const/16 p0, 0x8

    return p0
.end method

.method public getGpuAlgorithmManager()Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager;
    .registers 1

    .line 772
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mGpuAlgorithmManager:Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager;

    return-object p0
.end method

.method public getHintState()Z
    .registers 1

    .line 1478
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mHintUIManager:Lcom/transsion/camera/app/ui/manager/HintUIManager;

    if-eqz p0, :cond_9

    .line 1479
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/HintUIManager;->getHintState()Z

    move-result p0

    return p0

    :cond_9
    const/4 p0, 0x0

    return p0
.end method

.method public getIMasterGuideUICommon()Lcom/transsion/camera/app/common/ui/setting/IMasterGuideUICommon;
    .registers 1

    .line 794
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mMasterGuideUIManager:Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;

    return-object p0
.end method

.method public getMainHandler()Landroid/os/Handler;
    .registers 1

    .line 807
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mUIHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public getModeInflateRoot()Landroid/view/ViewGroup;
    .registers 1

    .line 2512
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mModeInflateRoot:Landroid/view/ViewGroup;

    return-object p0
.end method

.method public getModeInflateScrollRoot()Landroid/view/ViewGroup;
    .registers 1

    .line 2654
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mModeInflateScrollRoot:Landroid/view/ViewGroup;

    return-object p0
.end method

.method public getModePickerContainer()Landroid/view/View;
    .registers 1

    .line 2576
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mModePickerContainer:Landroid/view/View;

    return-object p0
.end method

.method public getModePickerLayout()Landroid/view/View;
    .registers 1

    .line 2571
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mModeTabLayout:Lcom/transsion/camera/app/ui/widget/TabLayout;

    return-object p0
.end method

.method public getModePlusBottomBarHeight()I
    .registers 1

    .line 2728
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/ScreenManager;->getModePlusBottomBarHeight()I

    move-result p0

    return p0
.end method

.method public getMoreModeGuideLeftRoot()Landroid/view/View;
    .registers 1

    .line 2635
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mMoreModeGuideLeftRoot:Landroid/view/View;

    return-object p0
.end method

.method public getNavigationBarHeight()I
    .registers 1

    .line 2664
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/ScreenManager;->getNavigationHeight()I

    move-result p0

    return p0
.end method

.method public getOrientation()I
    .registers 1

    .line 1763
    iget p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mOrientation:I

    return p0
.end method

.method public getPreviewBackgroundOperator()Lcom/transsion/camera/app/common/preview/IPreviewOperator;
    .registers 1

    .line 767
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mPreviewBackgroundOperator:Lcom/transsion/camera/app/common/preview/IPreviewOperator;

    return-object p0
.end method

.method public getPreviewOperator()Lcom/transsion/camera/app/common/preview/IPreviewOperator;
    .registers 1

    .line 762
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mPreviewOperator:Lcom/transsion/camera/app/common/preview/IPreviewOperator;

    return-object p0
.end method

.method public getPreviewSurfaceType()I
    .registers 1

    .line 822
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mPreviewUIManager:Lcom/transsion/camera/app/ui/manager/PreviewUIManager;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/PreviewUIManager;->getPreviewSurfaceType()I

    move-result p0

    return p0
.end method

.method public getPrivacyCallback()Ljava/util/List;
    .registers 1

    .line 6086
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mPrivacyCallbacks:Ljava/util/List;

    return-object p0
.end method

.method public getRecentKeyMonitor()Lcom/transsion/camera/app/common/physicalkey/AbstractKeyMonitor;
    .registers 1

    .line 6122
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mRecentKeyMonitor:Lcom/transsion/camera/app/common/physicalkey/AbstractKeyMonitor;

    return-object p0
.end method

.method public getRecordingOrientation()I
    .registers 1

    .line 5383
    iget p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mRecordingOrientation:I

    return p0
.end method

.method public getScreenFormType()I
    .registers 1

    .line 1661
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    if-eqz p0, :cond_9

    .line 1662
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenFormType()I

    move-result p0

    return p0

    :cond_9
    const/4 p0, 0x0

    return p0
.end method

.method public getScreenManager()Lcom/transsion/camera/app/common/manager/IScreenManager;
    .registers 1

    .line 5970
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    return-object p0
.end method

.method public getScreenState()I
    .registers 2

    .line 4415
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mRootView:Landroid/view/ViewGroup;

    if-eqz p0, :cond_f

    instance-of v0, p0, Lcom/transsion/camera/app/ui/widget/RootLayout;

    if-eqz v0, :cond_f

    .line 4416
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

    .line 4679
    iget p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mSeparateCaptureNumber:I

    return p0
.end method

.method public getSettingController()Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;
    .registers 1

    .line 5450
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    return-object p0
.end method

.method public getSettingUIProvider()Lcom/transsion/camera/app/common/provider/SettingUIProvider;
    .registers 1

    .line 4423
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mSettingUIProvider:Lcom/transsion/camera/app/common/provider/SettingUIProvider;

    return-object p0
.end method

.method public getShutterBottomHeight()I
    .registers 3

    .line 2674
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mShutterPanelRootView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mShutterPanelRootView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    .line 2675
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

    .line 2680
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/ScreenManager;->getShutterButtonHeight()I

    move-result p0

    return p0
.end method

.method public getShutterButtonLayout()Landroid/view/View;
    .registers 1

    .line 2245
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mShutterUIManager:Lcom/transsion/camera/app/ui/manager/ShutterUIManager;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->getShutterButtonLayout()Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public getShutterPanelPaddingHeight()I
    .registers 1

    .line 2669
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/ScreenManager;->getShutterPanelBasePaddingHeight()I

    move-result p0

    return p0
.end method

.method public getShutterPriority()I
    .registers 1

    .line 1738
    iget p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mCurShutterPriority:I

    return p0
.end method

.method public getShutterProcessingOrientation()I
    .registers 1

    .line 2617
    iget p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mShutterProcessingOrientation:I

    return p0
.end method

.method public getShutterSoundEffectList()[Ljava/lang/String;
    .registers 2

    .line 2810
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getSettingProvide()Lcom/transsion/camera/app/common/setting/ISettingManager$SettingProvide;

    move-result-object p0

    const-string v0, "key_shutter_sound_optional"

    .line 2811
    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingProvide;->findISettingByKey(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/ISetting;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/app/common/setting/SettingBase;

    if-eqz p0, :cond_15

    .line 2813
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getShutterSoundEffectList()[Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_15
    const/4 p0, 0x0

    .line 2815
    new-array p0, p0, [Ljava/lang/String;

    return-object p0
.end method

.method public getShutterSoundNameResIds()[I
    .registers 2

    .line 2820
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getSettingProvide()Lcom/transsion/camera/app/common/setting/ISettingManager$SettingProvide;

    move-result-object p0

    const-string v0, "key_shutter_sound_optional"

    .line 2821
    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingProvide;->findISettingByKey(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/ISetting;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/app/common/setting/SettingBase;

    if-eqz p0, :cond_15

    .line 2823
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getShutterSoundNameResIds()[I

    move-result-object p0

    return-object p0

    :cond_15
    const/4 p0, 0x0

    .line 2825
    new-array p0, p0, [I

    return-object p0
.end method

.method public getShutterTypeSelftimerOff()I
    .registers 1

    .line 1362
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mShutterUIManager:Lcom/transsion/camera/app/ui/manager/ShutterUIManager;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->getShutterTypeSelftimerOff()I

    move-result p0

    return p0
.end method

.method public getShutterTypeSelftimerOn()I
    .registers 1

    .line 1383
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mShutterUIManager:Lcom/transsion/camera/app/ui/manager/ShutterUIManager;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->getShutterTypeSelftimerOn()I

    move-result p0

    return p0
.end method

.method public getThumbnail()Landroid/graphics/Bitmap;
    .registers 1

    .line 976
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mThumbnailUIManager:Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;

    if-eqz p0, :cond_9

    .line 977
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;->getThumbnail()Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    :cond_9
    const/4 p0, 0x0

    return-object p0
.end method

.method public getThumbnailView()Landroid/view/View;
    .registers 1

    .line 5994
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mThumbnailUIManager:Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;->getThumbnailView()Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public getToolBarOriginPaddingHeight()I
    .registers 1

    .line 2685
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/ScreenManager;->getToolBarOriginPaddingHeight()I

    move-result p0

    return p0
.end method

.method public getTopLayerRoot()Landroid/view/ViewGroup;
    .registers 1

    .line 2534
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mTopLayerRoot:Landroid/view/ViewGroup;

    return-object p0
.end method

.method public getTopMargin()I
    .registers 9

    .line 2715
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenWidth()I

    move-result v0

    iget-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 2716
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenHeight()I

    move-result v4

    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    .line 2717
    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/ScreenManager;->getTopBarHeight()I

    move-result v5

    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    .line 2718
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/ScreenManager;->getModePlusBottomBarHeight()I

    move-result v6

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 2716
    invoke-static/range {v2 .. v7}, Lcom/transsion/camera/utils/CameraUtil;->getTopMargin(DIIII)I

    move-result p0

    return p0
.end method

.method public getTopRegionHeight()I
    .registers 1

    .line 2710
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/ScreenManager;->getTopBarHeight()I

    move-result p0

    return p0
.end method

.method public getTriggerSelfTimerPriority()I
    .registers 4

    .line 1377
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

    .line 1378
    iget p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mTriggerSelfTimerPriority:I

    return p0
.end method

.method public getTwinkleGuideMode()Ljava/lang/String;
    .registers 1

    .line 1517
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mHintUIManager:Lcom/transsion/camera/app/ui/manager/HintUIManager;

    if-eqz p0, :cond_9

    .line 1518
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/HintUIManager;->getTwinkleGuideMode()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1520
    :cond_9
    const-string p0, ""

    return-object p0
.end method

.method public getUIBusyController()Lcom/transsion/camera/app/common/IUIAnimatorController;
    .registers 1

    .line 2561
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mUIAnimatorController:Lcom/transsion/camera/app/common/IUIAnimatorController;

    return-object p0
.end method

.method public getVerticalModeSelector()Landroid/widget/FrameLayout;
    .registers 1

    .line 2581
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mVerticalModeSelector:Lcom/transsion/camera/app/ui/widget/VerticalModeSelector;

    return-object p0
.end method

.method public getVoiceIntent()[Z
    .registers 1

    .line 2209
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mVoiceParameters:[Z

    if-eqz p0, :cond_5

    return-object p0

    :cond_5
    const/4 p0, 0x0

    return-object p0
.end method

.method public getVolumeIntercept()Z
    .registers 1

    .line 3881
    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mIntercept:Z

    return p0
.end method

.method public gotoGallery(Landroid/view/View;)V
    .registers 2

    .line 2327
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mThumbnailUIManager:Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;

    if-eqz p0, :cond_7

    .line 2328
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;->performClick(Landroid/view/View;)V

    :cond_7
    return-void
.end method

.method public hideAllHints()V
    .registers 1

    .line 1609
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mHintUIManager:Lcom/transsion/camera/app/ui/manager/HintUIManager;

    if-eqz p0, :cond_7

    .line 1610
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/HintUIManager;->hideAllHint()V

    :cond_7
    return-void
.end method

.method public hideCustomPreviewCover()V
    .registers 3

    .line 783
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mUIHandler:Landroid/os/Handler;

    const/16 v1, 0x6f

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 784
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mUIHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public hideFloatingShutterUI()V
    .registers 2

    .line 2222
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mFloatingShutterUIManager:Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;

    if-eqz p0, :cond_8

    const/4 v0, 0x0

    .line 2223
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;->hideFloatingShutterUI(Z)V

    :cond_8
    return-void
.end method

.method public hideFrontDualFlashUI()V
    .registers 3

    .line 1508
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mHintUIManager:Lcom/transsion/camera/app/ui/manager/HintUIManager;

    if-eqz v0, :cond_8

    const/4 v1, 0x0

    .line 1509
    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/manager/HintUIManager;->updateFrontDualFlashUIState(Z)V

    :cond_8
    const/16 v0, 0xab

    .line 1511
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/BaseAppUI;->notifyRawActionToAppUI(I)V

    return-void
.end method

.method public hideHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V
    .registers 2

    .line 1602
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mHintUIManager:Lcom/transsion/camera/app/ui/manager/HintUIManager;

    if-eqz p0, :cond_9

    if-eqz p1, :cond_9

    .line 1603
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/manager/HintUIManager;->hideHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    :cond_9
    return-void
.end method

.method public hideInteractiveUI()V
    .registers 1

    .line 1567
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mInteractiveUIManager:Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;

    if-eqz p0, :cond_7

    .line 1568
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->hide()V

    :cond_7
    return-void
.end method

.method public hideMasterGuide(Lcom/transsion/camera/app/common/MasterGuideUIBean;)V
    .registers 2

    .line 6063
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mMasterGuideUIManager:Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;

    if-eqz p0, :cond_7

    .line 6064
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->hideMasterGuide(Lcom/transsion/camera/app/common/MasterGuideUIBean;)V

    :cond_7
    return-void
.end method

.method public hidePopSettingView()V
    .registers 1

    .line 5735
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mPopSettingUIManager:Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;

    if-eqz p0, :cond_7

    .line 5736
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->hidePopSettingUI()V

    :cond_7
    return-void
.end method

.method public hidePopupOption()V
    .registers 1

    .line 5218
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mTopBarUIManager:Lcom/transsion/camera/app/ui/manager/TopBarUIManager;

    if-eqz p0, :cond_7

    .line 5219
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->dismissPopup()Z

    :cond_7
    return-void
.end method

.method public hideToast()V
    .registers 1

    .line 1560
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mToastUIManager:Lcom/transsion/camera/app/ui/manager/ToastUIManager;

    if-eqz p0, :cond_7

    .line 1561
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/ToastUIManager;->hideToast()V

    :cond_7
    return-void
.end method

.method public hideTwinkleGuide()V
    .registers 1

    .line 1493
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mHintUIManager:Lcom/transsion/camera/app/ui/manager/HintUIManager;

    if-eqz p0, :cond_7

    .line 1494
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/HintUIManager;->hideTwinkleGuide()V

    :cond_7
    return-void
.end method

.method public hideWideCamera()V
    .registers 1

    .line 5180
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mWideCameraUIManager:Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;

    if-eqz p0, :cond_7

    .line 5181
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;->hideWideCamera()V

    :cond_7
    return-void
.end method

.method public init(ZLcom/transsion/camera/app/intent/IntentParser;Landroid/view/ViewGroup;Landroid/view/LayoutInflater;Landroid/app/FragmentManager;Landroid/content/ContentResolver;Lcom/transsion/camera/utils/sound/IActionSound;Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)V
    .registers 9

    .line 1836
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mFromIntent:Z

    .line 1837
    iput-object p3, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mRootView:Landroid/view/ViewGroup;

    .line 1838
    iput-object p7, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mActionSound:Lcom/transsion/camera/utils/sound/IActionSound;

    .line 1839
    iput-object p4, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 1840
    iput-object p5, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mFragmentManager:Landroid/app/FragmentManager;

    .line 1841
    new-instance p1, Landroidx/asynclayoutinflater/view/AsyncLayoutInflater;

    iget-object p2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Landroidx/asynclayoutinflater/view/AsyncLayoutInflater;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mAsyncInflater:Landroidx/asynclayoutinflater/view/AsyncLayoutInflater;

    .line 1842
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p1

    iget-boolean p1, p1, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportSuperAntiVideoV2:Z

    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mSupportSuperAntiVideoV2:Z

    .line 1844
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mRootView:Landroid/view/ViewGroup;

    sget p2, Lcom/transsion/camera/R$id;->overlay_ui_layer_root:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mOverlayUIRoot:Landroid/view/ViewGroup;

    .line 1845
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mRootView:Landroid/view/ViewGroup;

    sget p2, Lcom/transsion/camera/R$id;->camera_zoom_layout:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mCameraZoomLayout:Landroid/view/ViewGroup;

    .line 1846
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mRootView:Landroid/view/ViewGroup;

    sget p2, Lcom/transsion/camera/R$id;->camera_flash_layout:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mCameraFlashLayout:Landroid/view/ViewGroup;

    .line 1847
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mUILayerRootParentList:Ljava/util/List;

    iget-object p2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mCameraZoomLayout:Landroid/view/ViewGroup;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1848
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mUILayerRootParentList:Ljava/util/List;

    iget-object p2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mCameraFlashLayout:Landroid/view/ViewGroup;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1850
    new-instance p1, Lcom/transsion/camera/app/ui/ScrollConsumer;

    iget-object p2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lcom/transsion/camera/app/ui/ScrollConsumer;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mScrollConsumer:Lcom/transsion/camera/app/ui/ScrollConsumer;

    .line 1851
    new-instance p1, Lcom/transsion/camera/app/ui/gesture/PreviewGestureManager;

    iget-object p2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/BaseAppUI;->pocketScreen()Z

    move-result p3

    invoke-direct {p1, p2, p3, p0}, Lcom/transsion/camera/app/ui/gesture/PreviewGestureManager;-><init>(Landroid/content/Context;ZLcom/transsion/camera/app/common/IAppUI;)V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mPreviewGestureManager:Lcom/transsion/camera/app/ui/gesture/PreviewGestureManager;

    .line 1852
    new-instance p1, Lcom/transsion/camera/app/common/mode/CameraOperateAction;

    iget-object p2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mRawActionCallback:Lcom/transsion/camera/app/common/mode/CameraOperateAction$RawActionHandleCallback;

    invoke-direct {p1, p2, p0}, Lcom/transsion/camera/app/common/mode/CameraOperateAction;-><init>(Lcom/transsion/camera/app/common/mode/CameraOperateAction$RawActionHandleCallback;Lcom/transsion/camera/app/common/IAppUI;)V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mCameraOperateAction:Lcom/transsion/camera/app/common/mode/CameraOperateAction;

    .line 1853
    new-instance p1, Lcom/transsion/camera/app/ui/PreviewGestureScrollAdapter;

    iget-object p2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mScrollConsumer:Lcom/transsion/camera/app/ui/ScrollConsumer;

    invoke-direct {p1, p2}, Lcom/transsion/camera/app/ui/PreviewGestureScrollAdapter;-><init>(Lcom/transsion/camera/app/ui/IScroll;)V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mPreviewGestureScrollAdapter:Lcom/transsion/camera/app/ui/PreviewGestureScrollAdapter;

    const/16 p2, 0x8

    .line 1854
    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/ui/BaseAppUI;->registerPreviewGestureListener(Lcom/transsion/camera/app/common/IAppUIListener$IPreviewGestureListener;I)V

    .line 1856
    invoke-virtual {p8}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->getSettingManager()Lcom/transsion/camera/app/common/setting/SettingManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/setting/SettingManager;->getSettingController()Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    return-void
.end method

.method protected initContinuousShotUIManager()Lcom/transsion/camera/app/ui/manager/ContinuousShotUIManager;
    .registers 2

    .line 2936
    new-instance v0, Lcom/transsion/camera/app/ui/manager/ContinuousShotUIManager;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/ui/manager/ContinuousShotUIManager;-><init>(Lcom/transsion/camera/app/common/manager/IScreenManager;)V

    return-object v0
.end method

.method public initImageryGuideManager()V
    .registers 5

    .line 1872
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mImageryGuideManager:Lcom/transsion/camera/manager/BaseImageryGuideManager;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mFragmentManager:Landroid/app/FragmentManager;

    sget v3, Lcom/transsion/camera/R$id;->top_layer_root:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/transsion/camera/manager/BaseImageryGuideManager;->init(Landroid/content/Context;Landroid/app/FragmentManager;I)V

    .line 1873
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mImageryGuideManager:Lcom/transsion/camera/manager/BaseImageryGuideManager;

    new-instance v1, Lcom/transsion/camera/app/ui/BaseAppUI$$ExternalSyntheticLambda19;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/ui/BaseAppUI$$ExternalSyntheticLambda19;-><init>(Lcom/transsion/camera/app/ui/BaseAppUI;)V

    invoke-virtual {v0, v1}, Lcom/transsion/camera/manager/BaseImageryGuideManager;->setOnSwitchModeListener(Lcom/transsion/camera/manager/BaseImageryGuideManager$IInteractionCallBack;)V

    .line 1875
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mImageryGuideManager:Lcom/transsion/camera/manager/BaseImageryGuideManager;

    new-instance v1, Lcom/transsion/camera/app/ui/BaseAppUI$3;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/ui/BaseAppUI$3;-><init>(Lcom/transsion/camera/app/ui/BaseAppUI;)V

    invoke-virtual {v0, v1}, Lcom/transsion/camera/manager/BaseImageryGuideManager;->setOnFragmentListener(Lcom/transsion/camera/manager/BaseImageryGuideManager$IFragmentCallBack;)V

    return-void
.end method

.method protected initToastUIManager()Lcom/transsion/camera/app/ui/manager/ToastUIManager;
    .registers 2

    .line 2919
    new-instance v0, Lcom/transsion/camera/app/ui/manager/ToastUIManager;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/ui/manager/ToastUIManager;-><init>(Lcom/transsion/camera/app/common/manager/IScreenManager;)V

    return-object v0
.end method

.method public interruptPhysicalKey(Z)V
    .registers 2

    .line 4659
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mInterruptPhysicalKey:Z

    return-void
.end method

.method public isAIGCFromNegativeScreen()Z
    .registers 1

    .line 5076
    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mIsNegativeScreenAIGCMode:Z

    return p0
.end method

.method public isActivityPaused()Z
    .registers 1

    .line 2593
    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mIsPaused:Z

    return p0
.end method

.method public isCsShotByPhysicalKey()Z
    .registers 1

    .line 2603
    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mCShotByPhysicalKey:Z

    return p0
.end method

.method public isCsViewAnimationStart()Z
    .registers 1

    .line 2598
    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mCsViewAnimationStart:Z

    return p0
.end method

.method public isFromIntent()Z
    .registers 1

    .line 1657
    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mFromIntent:Z

    return p0
.end method

.method protected isGoogleLensSupport()Z
    .registers 2

    .line 4401
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

    .line 5072
    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mIsIntentFromNegativeScreen:Z

    return p0
.end method

.method public isLivePhotoOn()Z
    .registers 2

    .line 5264
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return p0

    .line 5267
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

    .line 1197
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mModePickerUIManager:Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return p0

    .line 1200
    :cond_6
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;->isModeTabScrolling()Z

    move-result p0

    return p0
.end method

.method public isPhysicalKeyEnable()Z
    .registers 1

    .line 3886
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/BaseAppUI;->isModeTabScrolling()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public isPopupShowing()Z
    .registers 1

    .line 5225
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

    .line 460
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

    .line 4406
    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mSecureCamera:Z

    return p0
.end method

.method public isSellingPointVideoPlaying()Z
    .registers 1

    .line 6104
    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mIsSellingPointVideoPlaying:Z

    return p0
.end method

.method public isShoulderKeyLongPress()Z
    .registers 1

    .line 6046
    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mIsShoulderKeyLongPress:Z

    return p0
.end method

.method public isSuperDefinition108MInLowPlatform()Z
    .registers 3

    .line 5254
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const/4 v0, 0x0

    if-eqz p0, :cond_1d

    .line 5255
    const-string v1, "key_super_definition"

    invoke-interface {p0, v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 5256
    const-string v1, "billion"

    invoke-static {p0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1d

    .line 5257
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

    .line 3917
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

    .line 3918
    const-string v0, "com.transsion.camera.feature.mode.underwater.UnderwaterModeEntry"

    iget-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mCurrentModeName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2e

    const-string v0, "com.transsion.camera.feature.mode.underwater.UnderwaterVideoModeEntry"

    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mCurrentModeName:Ljava/lang/String;

    .line 3919
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

    .line 1441
    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mIsVideoRecording:Z

    return p0
.end method

.method public isVoiceInteraction()Z
    .registers 1

    .line 5437
    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mVoiceInteraction:Z

    return p0
.end method

.method public loadLatestThumbnail()V
    .registers 2

    .line 1026
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mAppStorageManager:Lcom/transsion/camera/app/common/storage/AppStorageManager;

    if-nez v0, :cond_c

    .line 1027
    sget-object p0, Lcom/transsion/camera/app/ui/BaseAppUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "loadLatestThumbnail mAppStorageManager is null"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 1030
    :cond_c
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mThumbnailUIManager:Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;

    if-eqz p0, :cond_17

    .line 1031
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/storage/AppStorageManager;->getAllBucketIds()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;->loadLatestThumbnail(Ljava/util/ArrayList;)V

    :cond_17
    return-void
.end method

.method public loadLatestThumbnail(Ljava/util/ArrayList;)V
    .registers 3

    .line 2315
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mThumbnailUIManager:Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;

    if-eqz v0, :cond_b

    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mSecureCamera:Z

    if-nez p0, :cond_b

    .line 2316
    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;->loadLatestThumbnail(Ljava/util/ArrayList;)V

    :cond_b
    return-void
.end method

.method public loadThumbnailByUri(Ljava/util/ArrayList;Landroid/net/Uri;)V
    .registers 3

    .line 2321
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mThumbnailUIManager:Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;

    if-eqz p0, :cond_7

    .line 2322
    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;->loadThumbnailByUri(Ljava/util/ArrayList;Landroid/net/Uri;)V

    :cond_7
    return-void
.end method

.method public needBuildBlurCoverView(Z)V
    .registers 2

    .line 789
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

    .line 5720
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mShutterUIManager:Lcom/transsion/camera/app/ui/manager/ShutterUIManager;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mHintUIManager:Lcom/transsion/camera/app/ui/manager/HintUIManager;

    if-eqz v0, :cond_19

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/BaseAppUI;->shutterUINewStyleSupport()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 5721
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mHintUIManager:Lcom/transsion/camera/app/ui/manager/HintUIManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/manager/HintUIManager;->setEnableHintUI(Z)V

    .line 5722
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mShutterUIManager:Lcom/transsion/camera/app/ui/manager/ShutterUIManager;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->notifyCSNotSupport()V

    :cond_19
    return-void
.end method

.method protected notifyCameraOperateActionToUI(I)V
    .registers 7

    .line 4490
    const-string v0, "start"

    const-string v1, "key_live_photo_state"

    const/4 v2, -0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    sparse-switch p1, :sswitch_data_138

    goto/16 :goto_131

    .line 4644
    :sswitch_c
    iput-boolean v4, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mIsPreviewCoverUIShow:Z

    return-void

    .line 4641
    :sswitch_f
    iput-boolean v3, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mIsPreviewCoverUIShow:Z

    return-void

    .line 4650
    :sswitch_12
    iput-boolean v4, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mIsSellingPointVideoPlaying:Z

    return-void

    .line 4647
    :sswitch_15
    iput-boolean v3, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mIsSellingPointVideoPlaying:Z

    return-void

    .line 4606
    :sswitch_18
    iget p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mOrientation:I

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/BaseAppUI;->getScreenFormType()I

    move-result v0

    invoke-virtual {p0, p1, v0, v4}, Lcom/transsion/camera/app/ui/BaseAppUI;->updateBottomBarLayout(IIZ)V

    return-void

    .line 4499
    :sswitch_22
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mHintUIManager:Lcom/transsion/camera/app/ui/manager/HintUIManager;

    if-eqz p1, :cond_2e

    .line 4500
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->hide()V

    .line 4501
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mHintUIManager:Lcom/transsion/camera/app/ui/manager/HintUIManager;

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/manager/HintUIManager;->hideAllHint()V

    .line 4503
    :cond_2e
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/BaseAppUI;->shutterUINewStyleSupport()Z

    move-result p1

    if-eqz p1, :cond_f7

    .line 4504
    invoke-virtual {p0, v4}, Lcom/transsion/camera/app/ui/BaseAppUI;->setEnableHintUI(Z)V

    .line 4505
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mCShotByPhysicalKey:Z

    if-nez p1, :cond_f7

    .line 4506
    iput-boolean v3, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mInterruptPhysicalKey:Z

    goto/16 :goto_f7

    .line 4557
    :sswitch_3f
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mIsVideoRecording:Z

    if-nez p1, :cond_47

    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mShutterUIProcessing:Z

    if-eqz p1, :cond_52

    .line 4558
    :cond_47
    iget p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mOrientation:I

    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenFormType()I

    move-result v0

    invoke-virtual {p0, p1, v0, v4}, Lcom/transsion/camera/app/ui/BaseAppUI;->updateBottomBarLayout(IIZ)V

    .line 4560
    :cond_52
    iput v2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mShutterProcessingOrientation:I

    .line 4561
    iput-boolean v4, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mIsVideoRecording:Z

    .line 4562
    iput-boolean v4, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mShutterUIProcessing:Z

    return-void

    .line 4574
    :sswitch_59
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/BaseAppUI;->shutterUINewStyleSupport()Z

    move-result p1

    if-eqz p1, :cond_131

    .line 4575
    invoke-virtual {p0, v3}, Lcom/transsion/camera/app/ui/BaseAppUI;->setEnableHintUI(Z)V

    .line 4576
    iput-boolean v4, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mInterruptPhysicalKey:Z

    return-void

    .line 4610
    :sswitch_65
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/BaseAppUI;->showOrHideSystemUI()V

    return-void

    .line 4629
    :sswitch_69
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mLivePhotoResponder:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    if-eqz p0, :cond_131

    .line 4630
    const-string p1, "stop"

    invoke-virtual {p0, v1, p1}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    .line 4636
    :sswitch_73
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mLivePhotoResponder:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    if-eqz p0, :cond_131

    .line 4637
    invoke-virtual {p0, v1, v0}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    .line 4618
    :sswitch_7b
    invoke-direct {p0, v3}, Lcom/transsion/camera/app/ui/BaseAppUI;->enableViewTalkbackForAllView(Z)V

    .line 4619
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mLivePhotoResponder:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    if-eqz p0, :cond_131

    .line 4620
    invoke-virtual {p0, v1, v0}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    .line 4598
    :sswitch_86
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mIsVideoRecording:Z

    if-eqz p1, :cond_95

    .line 4599
    iget p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mOrientation:I

    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenFormType()I

    move-result v0

    invoke-virtual {p0, p1, v0, v4}, Lcom/transsion/camera/app/ui/BaseAppUI;->updateBottomBarLayout(IIZ)V

    .line 4601
    :cond_95
    iput-boolean v4, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mIsVideoRecording:Z

    .line 4602
    iput v2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mRecordingOrientation:I

    return-void

    .line 4565
    :sswitch_9a
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/BaseAppUI;->shutterUINewStyleSupport()Z

    move-result p1

    if-eqz p1, :cond_ab

    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mCShotByPhysicalKey:Z

    if-eqz p1, :cond_ab

    .line 4566
    iput-boolean v4, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mCShotByPhysicalKey:Z

    .line 4567
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mShutterUIManager:Lcom/transsion/camera/app/ui/manager/ShutterUIManager;

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->hideCShotNumber()V

    .line 4569
    :cond_ab
    invoke-virtual {p0, v3}, Lcom/transsion/camera/app/ui/BaseAppUI;->setEnableHintUI(Z)V

    .line 4570
    iput-boolean v4, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mInterruptPhysicalKey:Z

    return-void

    .line 4540
    :sswitch_b1
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/BaseAppUI;->shutterUINewStyleSupport()Z

    move-result v0

    if-eqz v0, :cond_131

    .line 4541
    iput-boolean v3, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mShutterUIProcessing:Z

    .line 4542
    iget v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mShutterProcessingOrientation:I

    if-ne v0, v2, :cond_c1

    .line 4543
    iget v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mOrientation:I

    iput v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mShutterProcessingOrientation:I

    :cond_c1
    const/16 v0, 0x24

    if-ne p1, v0, :cond_cf

    .line 4546
    invoke-virtual {p0, v3}, Lcom/transsion/camera/app/ui/BaseAppUI;->setEnableHintUI(Z)V

    .line 4547
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mCShotByPhysicalKey:Z

    if-nez p1, :cond_131

    .line 4548
    iput-boolean v3, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mInterruptPhysicalKey:Z

    return-void

    .line 4552
    :cond_cf
    invoke-virtual {p0, v4}, Lcom/transsion/camera/app/ui/BaseAppUI;->setEnableHintUI(Z)V

    .line 4553
    iput-boolean v3, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mInterruptPhysicalKey:Z

    return-void

    .line 4594
    :sswitch_d5
    invoke-direct {p0, v3}, Lcom/transsion/camera/app/ui/BaseAppUI;->enableViewTalkbackForAllView(Z)V

    return-void

    .line 4536
    :sswitch_d9
    iput-boolean v4, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mGraduationViewIsMoving:Z

    return-void

    .line 4533
    :sswitch_dc
    iput-boolean v3, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mGraduationViewIsMoving:Z

    return-void

    .line 4584
    :sswitch_df
    iput-boolean v4, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mInZoomChanging:Z

    goto :goto_e5

    .line 4580
    :sswitch_e2
    iput-boolean v3, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mInZoomChanging:Z

    return-void

    .line 4586
    :goto_e5
    :sswitch_e5
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/BaseAppUI;->showOrHideSystemUI()V

    .line 4587
    invoke-direct {p0, v3}, Lcom/transsion/camera/app/ui/BaseAppUI;->enableViewTalkbackForAllView(Z)V

    .line 4588
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mLivePhotoResponder:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    if-eqz p0, :cond_131

    .line 4589
    invoke-virtual {p0, v1, v0}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    .line 4615
    :sswitch_f3
    invoke-direct {p0, v4}, Lcom/transsion/camera/app/ui/BaseAppUI;->enableViewTalkbackForAllView(Z)V

    return-void

    .line 4513
    :cond_f7
    :goto_f7
    :sswitch_f7
    iput-boolean v3, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mIsVideoRecording:Z

    .line 4514
    iget p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mRecordingOrientation:I

    if-ne p1, v2, :cond_101

    .line 4515
    iget p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mOrientation:I

    iput p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mRecordingOrientation:I

    .line 4517
    :cond_101
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mHintUIManager:Lcom/transsion/camera/app/ui/manager/HintUIManager;

    if-eqz p1, :cond_10a

    .line 4518
    iget v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mRecordingOrientation:I

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/ui/manager/HintUIManager;->setRecorderOrientation(I)V

    .line 4520
    :cond_10a
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mTopBarUIManager:Lcom/transsion/camera/app/ui/manager/TopBarUIManager;

    if-eqz p1, :cond_131

    invoke-direct {p0}, Lcom/transsion/camera/app/ui/BaseAppUI;->supportVideoFlashLightWhenRecording()Z

    move-result p1

    if-eqz p1, :cond_131

    .line 4521
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mTopBarUIManager:Lcom/transsion/camera/app/ui/manager/TopBarUIManager;

    const-string p1, "key_flash_facade"

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, v4, p1}, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->tempShow(ZLjava/util/List;)V

    return-void

    .line 4526
    :sswitch_120
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mCurrentModeName:Ljava/lang/String;

    const-string v0, "com.transsion.camera.feature.funvideo.mode.FunVideoModeEntry"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_131

    .line 4527
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mWideCameraUIManager:Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;

    if-eqz p0, :cond_131

    .line 4528
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;->hide()V

    :cond_131
    :goto_131
    return-void

    .line 4496
    :sswitch_132
    iput-boolean v3, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mPreviewReadyForCurrentSession:Z

    return-void

    .line 4493
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

    .line 2629
    sget-object v0, Lcom/transsion/camera/app/ui/BaseAppUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyCsViewAnimationChange, animationStart: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 2630
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mCsViewAnimationStart:Z

    return-void
.end method

.method public notifyFlashFacadeChanged()V
    .registers 2

    .line 5747
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_e

    .line 5750
    :cond_7
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mTopBarUIManager:Lcom/transsion/camera/app/ui/manager/TopBarUIManager;

    if-eqz p0, :cond_e

    .line 5751
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->notifyFlashFacadeChanged()V

    :cond_e
    :goto_e
    return-void
.end method

.method public notifyLowTemperature()V
    .registers 3

    .line 4664
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mHintUIManager:Lcom/transsion/camera/app/ui/manager/HintUIManager;

    if-eqz v0, :cond_12

    iget-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mShutterUIManager:Lcom/transsion/camera/app/ui/manager/ShutterUIManager;

    if-nez v1, :cond_9

    goto :goto_12

    :cond_9
    const/4 v1, 0x1

    .line 4667
    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/manager/HintUIManager;->setEnableHintUI(Z)V

    .line 4668
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mShutterUIManager:Lcom/transsion/camera/app/ui/manager/ShutterUIManager;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->notifyCSNotSupport()V

    :cond_12
    :goto_12
    return-void
.end method

.method public notifyRawActionToAppUI(I)V
    .registers 11

    .line 562
    sget-object v0, Lcom/transsion/camera/app/ui/BaseAppUI;->SHOW_LOG_TRACE_ACTIONS:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, ", mIsPaused = "

    const-string v2, "notifyRawActionToAppUI action = "

    if-eqz v0, :cond_31

    .line 563
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

    .line 565
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

    .line 567
    :goto_51
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/BaseAppUI;->checkIfNeedDebounce(I)Z

    move-result v0

    if-eqz v0, :cond_59

    goto/16 :goto_16d

    .line 570
    :cond_59
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/BaseAppUI;->updateActionTriggerTime(I)V

    const/16 v0, 0x9

    const/4 v1, 0x1

    if-ne p1, v0, :cond_67

    .line 572
    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mIsPaused:Z

    if-eqz v2, :cond_67

    .line 573
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mFirstSteadyFrameFlag:Z

    .line 575
    :cond_67
    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mIsPaused:Z

    if-eqz v2, :cond_6d

    goto/16 :goto_16d

    :cond_6d
    const/16 v2, 0x6a

    const/16 v3, 0x63

    if-ne p1, v3, :cond_8e

    .line 579
    iget-boolean v4, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mFrameOnceCome:Z

    if-nez v4, :cond_83

    .line 580
    iget-object v4, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mUIHandler:Landroid/os/Handler;

    invoke-virtual {v4, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 581
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mFrameOnceCome:Z

    goto :goto_9f

    .line 583
    :cond_83
    iget-object v2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mUIHandler:Landroid/os/Handler;

    new-instance v4, Lcom/transsion/camera/app/ui/BaseAppUI$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0}, Lcom/transsion/camera/app/ui/BaseAppUI$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/app/ui/BaseAppUI;)V

    invoke-virtual {v2, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_9f

    :cond_8e
    if-ne p1, v0, :cond_9f

    .line 586
    iget-boolean v4, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mFrameOnceCome:Z

    if-nez v4, :cond_9f

    .line 587
    iget-object v4, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mUIHandler:Landroid/os/Handler;

    invoke-virtual {v4, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 588
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mFrameOnceCome:Z

    .line 591
    :cond_9f
    :goto_9f
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/BaseAppUI;->notifyActionFirstSteadyFrameFoldFlip(I)V

    .line 592
    iget-object v2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mCameraOperateAction:Lcom/transsion/camera/app/common/mode/CameraOperateAction;

    if-eqz v2, :cond_a9

    .line 593
    invoke-virtual {v2, p1}, Lcom/transsion/camera/app/common/mode/CameraOperateAction;->rawActionHandle(I)V

    :cond_a9
    const/16 v2, 0x20

    const/4 v4, 0x0

    if-ne p1, v2, :cond_156

    .line 596
    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mFirstSteadyFrameFlag:Z

    if-eqz v2, :cond_b7

    .line 597
    iput-boolean v4, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mFirstSteadyFrameFlag:Z

    .line 598
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/BaseAppUI;->notifyRawActionToAppUI(I)V

    .line 601
    :cond_b7
    iget-object v2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/transsion/camera/utils/CameraUtil;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_156

    .line 602
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

    .line 603
    iget-object v2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mShutterUIManager:Lcom/transsion/camera/app/ui/manager/ShutterUIManager;

    invoke-virtual {v2}, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->getShutterButtonLayout()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 605
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

    .line 606
    iget-object v2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mCameraSwitcherUIManager:Lcom/transsion/camera/app/ui/manager/CameraSwitcherUIManager;

    invoke-virtual {v2}, Lcom/transsion/camera/app/ui/manager/CameraSwitcherUIManager;->getCameraSwitcherView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 608
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

    .line 609
    iget-object v2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mThumbnailUIManager:Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;

    invoke-virtual {v2}, Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;->getThumbnailView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 611
    :cond_11c
    iget-object v2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mInteractiveUIManager:Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;

    invoke-virtual {v2}, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->getInteractiveUILayout()Landroid/view/ViewGroup;

    move-result-object v2

    if-eqz v2, :cond_156

    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mIsInteractiveListFocusable:Z

    if-nez v2, :cond_156

    .line 612
    iget-object v2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mInteractiveUIManager:Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;

    invoke-virtual {v2}, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->getInteractiveUILayout()Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    move v5, v4

    move v6, v5

    :goto_134
    if-ge v5, v2, :cond_150

    .line 615
    iget-object v7, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mInteractiveUIManager:Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;

    invoke-virtual {v7}, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->getInteractiveUILayout()Landroid/view/ViewGroup;

    move-result-object v7

    invoke-virtual {v7, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    if-eqz v7, :cond_14d

    .line 616
    invoke-virtual {v7}, Landroid/view/View;->isFocusable()Z

    move-result v8

    if-nez v8, :cond_14d

    .line 617
    invoke-virtual {v7, v1}, Landroid/view/View;->setFocusable(Z)V

    add-int/lit8 v6, v6, 0x1

    :cond_14d
    add-int/lit8 v5, v5, 0x1

    goto :goto_134

    :cond_150
    if-lez v6, :cond_156

    if-ne v6, v2, :cond_156

    .line 622
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mIsInteractiveListFocusable:Z

    :cond_156
    if-eq p1, v3, :cond_15c

    const/16 v2, 0x21

    if-ne p1, v2, :cond_163

    .line 628
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

    .line 635
    :cond_16e
    iput-boolean v4, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->isCapturing:Z

    return-void

    .line 632
    :cond_171
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->isCapturing:Z

    return-void

    .line 638
    :cond_174
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mUIHandler:Landroid/os/Handler;

    new-instance v0, Lcom/transsion/camera/app/ui/BaseAppUI$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/ui/BaseAppUI$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/app/ui/BaseAppUI;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onBackPressed()Z
    .registers 3

    .line 2748
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mTopBarUIManager:Lcom/transsion/camera/app/ui/manager/TopBarUIManager;

    const/4 v1, 0x1

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->onBackPressed()Z

    move-result v0

    if-nez v0, :cond_5c

    :cond_b
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mScrollConsumer:Lcom/transsion/camera/app/ui/ScrollConsumer;

    .line 2749
    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/ScrollConsumer;->onBackPressed()Z

    move-result v0

    if-nez v0, :cond_5c

    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mInteractiveUIManager:Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;

    if-eqz v0, :cond_1d

    .line 2750
    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->onBackPressed()Z

    move-result v0

    if-nez v0, :cond_5c

    :cond_1d
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mOverlayUIManager:Lcom/transsion/camera/app/ui/manager/OverlayUIManager;

    if-eqz v0, :cond_27

    .line 2751
    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/manager/OverlayUIManager;->onBackPressed(Z)Z

    move-result v0

    if-nez v0, :cond_5c

    :cond_27
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mModePickerUIManager:Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;

    if-eqz v0, :cond_31

    .line 2752
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->onBackPressed()Z

    move-result v0

    if-nez v0, :cond_5c

    :cond_31
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mFloatingShutterUIManager:Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;

    if-eqz v0, :cond_3b

    .line 2753
    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;->onBackPressed()Z

    move-result v0

    if-nez v0, :cond_5c

    :cond_3b
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mSellingPointGuideUIManager:Lcom/transsion/camera/app/ui/manager/SellingPointGuideUIManager;

    if-eqz v0, :cond_45

    .line 2754
    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/manager/SellingPointGuideUIManager;->onBackPressed()Z

    move-result v0

    if-nez v0, :cond_5c

    :cond_45
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mPopSettingUIManager:Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;

    if-eqz v0, :cond_4f

    .line 2755
    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->onBackPressed(Z)Z

    move-result v0

    if-nez v0, :cond_5c

    :cond_4f
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mMasterGuideUIManager:Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;

    if-eqz p0, :cond_5a

    .line 2756
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

    .line 2766
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mThumbnailUIManager:Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;

    if-eqz p0, :cond_7

    .line 2767
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;->onBackPressed()Z

    :cond_7
    const/4 p0, 0x0

    return p0
.end method

.method public onBatteryStatusChanged(ZII)V
    .registers 5

    .line 3872
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

    .line 3874
    invoke-virtual {v0, p1, p2, p3}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->onBatteryStatusChanged(ZII)V

    goto :goto_6

    :cond_18
    return-void
.end method

.method public onContinuousShotProgress(II)V
    .registers 4

    .line 5118
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mContinuousShotUIManager:Lcom/transsion/camera/app/ui/manager/ContinuousShotUIManager;

    if-nez v0, :cond_c

    .line 5119
    sget-object p0, Lcom/transsion/camera/app/ui/BaseAppUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "mContinuousShotUIManager is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 5122
    :cond_c
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/BaseAppUI;->shutterUINewStyleSupport()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 5123
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mShutterUIManager:Lcom/transsion/camera/app/ui/manager/ShutterUIManager;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->onContinuousShotProgress(II)V

    return-void

    .line 5125
    :cond_18
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mContinuousShotUIManager:Lcom/transsion/camera/app/ui/manager/ContinuousShotUIManager;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/ui/manager/ContinuousShotUIManager;->onContinuousShotProgress(II)V

    return-void
.end method

.method public onContinuousShotStop()V
    .registers 2

    .line 5131
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mContinuousShotUIManager:Lcom/transsion/camera/app/ui/manager/ContinuousShotUIManager;

    if-nez v0, :cond_c

    .line 5132
    sget-object p0, Lcom/transsion/camera/app/ui/BaseAppUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "mContinuousShotUIManager is null"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 5135
    :cond_c
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/BaseAppUI;->shutterUINewStyleSupport()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 5136
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mShutterUIManager:Lcom/transsion/camera/app/ui/manager/ShutterUIManager;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->onContinuousShotStop()V

    return-void

    .line 5138
    :cond_18
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mContinuousShotUIManager:Lcom/transsion/camera/app/ui/manager/ContinuousShotUIManager;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/ContinuousShotUIManager;->onContinuousShotStop()V

    return-void
.end method

.method public onDoubleClickVolumeDown()V
    .registers 4

    .line 3924
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object v0

    const/16 v1, 0x2c

    const-string v2, "double_tap_volume_down_key"

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setClickIconId(ILjava/lang/String;)V

    .line 3925
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/BaseAppUI;->exitAllFragments()V

    .line 3926
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getCameraId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.transsion.camera.feature.mode.underwater.UnderwaterModeEntry"

    invoke-virtual {p0, v0, v1}, Lcom/transsion/camera/app/ui/BaseAppUI;->switchUnderwaterCamera(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onEnterAnimationComplete()V
    .registers 1

    .line 2311
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mPreviewUIManager:Lcom/transsion/camera/app/ui/manager/PreviewUIManager;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/PreviewUIManager;->onEnterAnimationComplete()V

    return-void
.end method

.method public onFloatingShutterButtonMove(II)V
    .registers 5

    .line 2229
    sget-object v0, Lcom/transsion/camera/app/ui/BaseAppUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "onFloatingShutterButtonMove"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 2230
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mFloatingShutterUIManager:Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;

    if-eqz v0, :cond_13

    .line 2231
    invoke-virtual {v0, p1, p2}, Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;->updateFloatingShutterUIPosition(II)V

    .line 2232
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mFloatingShutterUIManager:Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;->onFloatingShutterButtonMove()V

    :cond_13
    return-void
.end method

.method public onGuideFragmentBackPress()Z
    .registers 1

    .line 2761
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

    .line 2238
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mFloatingShutterUIManager:Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;

    if-eqz p0, :cond_7

    .line 2239
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;->onLeaveAfterSwipeUp()V

    :cond_7
    return-void
.end method

.method public onModePanelDistanceChanged(FZ)V
    .registers 4

    .line 5208
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mWideCameraUIManager:Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;

    if-eqz v0, :cond_7

    .line 5209
    invoke-virtual {v0, p1, p2}, Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;->onModePanelDistanceChanged(FZ)V

    .line 5211
    :cond_7
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mOverlayUIManager:Lcom/transsion/camera/app/ui/manager/OverlayUIManager;

    if-eqz p0, :cond_e

    .line 5212
    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/ui/manager/OverlayUIManager;->onModePanelDistanceChanged(FZ)V

    :cond_e
    return-void
.end method

.method public onModePaused()V
    .registers 2

    .line 1041
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mWideCameraUIManager:Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;

    if-eqz v0, :cond_7

    .line 1042
    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;->pause()V

    .line 1045
    :cond_7
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mMasterGuideUIManager:Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;

    if-eqz p0, :cond_e

    .line 1046
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->onModePause()V

    :cond_e
    return-void
.end method

.method public onModeSettingReady()V
    .registers 4

    .line 1052
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

    .line 1054
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mUIManagerSetup:Z

    if-nez v0, :cond_36

    const/4 v0, 0x1

    .line 1055
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mUIManagerSetup:Z

    .line 1056
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mUIHandler:Landroid/os/Handler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1057
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mUIHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void

    .line 1059
    :cond_36
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mUIHandler:Landroid/os/Handler;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1060
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mUIHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1061
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mUIHandler:Landroid/os/Handler;

    const/16 v1, 0x70

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1062
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mUIHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public onOfflineSwitchFinish(I)V
    .registers 2

    .line 5742
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mPreviewOperator:Lcom/transsion/camera/app/common/preview/IPreviewOperator;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/preview/IPreviewOperator;->onOfflineSwitchFinish()V

    return-void
.end method

.method public onOrientationChanged()V
    .registers 3

    .line 3836
    iget v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mOrientation:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_9

    const/4 v1, 0x0

    .line 3837
    invoke-virtual {p0, v0, v1}, Lcom/transsion/camera/app/ui/BaseAppUI;->onOrientationChanged(IZ)V

    :cond_9
    return-void
.end method

.method public onOrientationChanged(I)V
    .registers 5

    .line 3843
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

    .line 3844
    iget v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mOrientation:I

    if-eq v0, p1, :cond_28

    const/4 v0, 0x1

    .line 3845
    invoke-virtual {p0, p1, v0}, Lcom/transsion/camera/app/ui/BaseAppUI;->onOrientationChanged(IZ)V

    :cond_28
    return-void
.end method

.method public onOrientationChanged(IZ)V
    .registers 6

    .line 3850
    iput p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mOrientation:I

    .line 3851
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mGpuAlgorithmManager:Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager;->onOrientationChanged(I)V

    .line 3852
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mUIManagerSetup:Z

    if-eqz v0, :cond_3c

    .line 3853
    iget v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mOrientation:I

    iget-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenFormType()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/transsion/camera/app/ui/BaseAppUI;->updateBottomBarLayout(IIZ)V

    .line 3854
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

    .line 3855
    invoke-virtual {v1}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->isOrientationChangedSpecial()Z

    move-result v2

    if-nez v2, :cond_1d

    .line 3856
    invoke-virtual {v1, p1, p2}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->onOrientationChanged(IZ)V

    goto :goto_1d

    .line 3859
    :cond_35
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mThermalThrottleUIManager:Lcom/transsion/camera/app/ui/manager/ThermalThrottleUIManager;

    if-eqz p0, :cond_3c

    .line 3860
    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->onOrientationChanged(IZ)V

    :cond_3c
    return-void
.end method

.method public onPopSettingHideViewClick()V
    .registers 1

    .line 912
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mPopSettingUIManager:Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;

    if-eqz p0, :cond_7

    .line 913
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->hidePopSettings()V

    :cond_7
    return-void
.end method

.method public onPopSettingShowViewClick(ZZ)V
    .registers 6

    .line 904
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

    .line 905
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mPopSettingUIManager:Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;

    if-eqz p0, :cond_1f

    .line 906
    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->showPopSettings(ZZ)V

    :cond_1f
    return-void
.end method

.method public onPreviewClick()Z
    .registers 3

    .line 2789
    sget-object v0, Lcom/transsion/camera/app/ui/BaseAppUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "[onPreviewClick]"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->v(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 2790
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mTopBarUIManager:Lcom/transsion/camera/app/ui/manager/TopBarUIManager;

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->onBackPressed()Z

    move-result v0

    if-nez v0, :cond_44

    :cond_11
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mScrollConsumer:Lcom/transsion/camera/app/ui/ScrollConsumer;

    .line 2791
    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/ScrollConsumer;->onBackPressed()Z

    move-result v0

    if-nez v0, :cond_44

    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mInteractiveUIManager:Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;

    if-eqz v0, :cond_23

    .line 2792
    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->onPreviewClick()Z

    move-result v0

    if-nez v0, :cond_44

    :cond_23
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mOverlayUIManager:Lcom/transsion/camera/app/ui/manager/OverlayUIManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_2e

    .line 2793
    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/manager/OverlayUIManager;->onBackPressed(Z)Z

    move-result v0

    if-nez v0, :cond_44

    :cond_2e
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mPopSettingUIManager:Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;

    if-eqz v0, :cond_38

    .line 2794
    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->onBackPressed(Z)Z

    move-result v0

    if-nez v0, :cond_44

    :cond_38
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mFloatingShutterUIManager:Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;

    if-eqz p0, :cond_43

    .line 2795
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

    .line 2622
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mSwitchSatCameraListener:Lcom/transsion/camera/app/common/IAppUIListener$ISwitchSatCameraListener;

    if-eqz p0, :cond_7

    .line 2623
    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/IAppUIListener$ISwitchSatCameraListener;->onSatCameraChanged(I)V

    :cond_7
    return-void
.end method

.method public onSettingOptionClick(Ljava/lang/String;)V
    .registers 5

    .line 890
    sget-object v0, Lcom/transsion/camera/app/ui/BaseAppUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSettingOptionClick: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 891
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mInteractiveUIManager:Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;

    if-eqz v0, :cond_1d

    .line 892
    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->onSettingOptionClick(Ljava/lang/String;)V

    .line 894
    :cond_1d
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mMasterGuideUIManager:Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;

    if-eqz v0, :cond_24

    .line 895
    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->onLeftSideItemClick()V

    .line 897
    :cond_24
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mModeUIControl:Lcom/transsion/camera/app/common/IAppUIControl$IModeUIControl;

    if-eqz p0, :cond_2b

    .line 898
    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/IAppUIControl$IModeUIControl;->onSettingOptionClick(Ljava/lang/String;)V

    :cond_2b
    return-void
.end method

.method public onShoulderButtonZoomSwipeEnd()V
    .registers 4

    .line 1822
    iget v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mCurrentAppUIState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_21

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mInterruptPhysicalKey:Z

    if-nez v0, :cond_21

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mIsPreviewCoverUIShow:Z

    if-eqz v0, :cond_e

    goto :goto_21

    .line 1826
    :cond_e
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mZoomKeyEventCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_20

    .line 1827
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mZoomKeyEventCallbacks:Ljava/util/List;

    new-instance v0, Lcom/transsion/camera/app/ui/BaseAppUI$$ExternalSyntheticLambda7;

    invoke-direct {v0}, Lcom/transsion/camera/app/ui/BaseAppUI$$ExternalSyntheticLambda7;-><init>()V

    invoke-interface {p0, v0}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    :cond_20
    return-void

    .line 1823
    :cond_21
    :goto_21
    sget-object v0, Lcom/transsion/camera/app/ui/BaseAppUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onShoulderButtonZoomSwipeEnd,return], mCurrentAppUIState:"

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

.method public onShoulderButtonZoomSwiping(ZI)V
    .registers 5

    .line 1811
    iget v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mCurrentAppUIState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_21

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mInterruptPhysicalKey:Z

    if-nez v0, :cond_21

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mIsPreviewCoverUIShow:Z

    if-eqz v0, :cond_e

    goto :goto_21

    .line 1815
    :cond_e
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mZoomKeyEventCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_20

    .line 1816
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mZoomKeyEventCallbacks:Ljava/util/List;

    new-instance v0, Lcom/transsion/camera/app/ui/BaseAppUI$$ExternalSyntheticLambda6;

    invoke-direct {v0, p1, p2}, Lcom/transsion/camera/app/ui/BaseAppUI$$ExternalSyntheticLambda6;-><init>(ZI)V

    invoke-interface {p0, v0}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    :cond_20
    return-void

    .line 1812
    :cond_21
    :goto_21
    sget-object p1, Lcom/transsion/camera/app/ui/BaseAppUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[onShoulderButtonZoomSwipe,return], mCurrentAppUIState:"

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

.method public onShutterClick(II)V
    .registers 5

    .line 1720
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

    .line 1732
    :cond_16
    iput p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mCurShutterPriority:I

    .line 1733
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mShutterUIManager:Lcom/transsion/camera/app/ui/manager/ShutterUIManager;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->triggerShutterClick(II)V

    return-void

    .line 1725
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

    .line 1752
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mInterruptPhysicalKey:Z

    if-nez v0, :cond_17

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mIsSellingPointVideoPlaying:Z

    if-eqz v0, :cond_9

    goto :goto_17

    .line 1755
    :cond_9
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mCShotByPhysicalKey:Z

    if-eqz v0, :cond_12

    .line 1756
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mShutterUIManager:Lcom/transsion/camera/app/ui/manager/ShutterUIManager;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->hideCShotNumber()V

    .line 1758
    :cond_12
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mShutterUIManager:Lcom/transsion/camera/app/ui/manager/ShutterUIManager;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->triggerShutterUp()V

    :cond_17
    :goto_17
    return-void
.end method

.method public onShutterLongClickStart(II)V
    .registers 4

    .line 1743
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mInterruptPhysicalKey:Z

    if-nez v0, :cond_11

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mIsSellingPointVideoPlaying:Z

    if-eqz v0, :cond_9

    goto :goto_11

    :cond_9
    const/4 v0, 0x1

    .line 1746
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mCShotByPhysicalKey:Z

    .line 1747
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mShutterUIManager:Lcom/transsion/camera/app/ui/manager/ShutterUIManager;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->triggerShutterLongClick(II)V

    :cond_11
    :goto_11
    return-void
.end method

.method public onSwitchMode(Ljava/lang/String;)V
    .registers 2

    .line 5981
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mPreviewUIManager:Lcom/transsion/camera/app/ui/manager/PreviewUIManager;

    if-eqz p0, :cond_7

    .line 5982
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

    .line 3819
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mThermalThrottleUIManager:Lcom/transsion/camera/app/ui/manager/ThermalThrottleUIManager;

    if-eqz v0, :cond_24

    const/4 v1, 0x3

    if-ne p1, v1, :cond_21

    .line 3821
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

    .line 3822
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mThermalThrottleUIManager:Lcom/transsion/camera/app/ui/manager/ThermalThrottleUIManager;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/manager/ThermalThrottleUIManager;->onVideoThermalWarning(I)V

    return-void

    .line 3825
    :cond_21
    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/ui/manager/ThermalThrottleUIManager;->onThermalThrottleReached(I)V

    :cond_24
    return-void
.end method

.method public onTopChanged(Z)V
    .registers 2

    .line 2169
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mPreviewUIManager:Lcom/transsion/camera/app/ui/manager/PreviewUIManager;

    if-eqz p0, :cond_7

    .line 2170
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

    .line 3935
    sget-object v0, Lcom/transsion/camera/app/ui/BaseAppUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "onUserInteraction"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 3936
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mUserInteractionListener:Lcom/transsion/camera/app/common/IAppUIListener$IUserInteractionListener;

    if-eqz p0, :cond_e

    .line 3937
    invoke-interface {p0}, Lcom/transsion/camera/app/common/IAppUIListener$IUserInteractionListener;->onUserInteraction()V

    :cond_e
    return-void
.end method

.method public onZoomClick(Z)V
    .registers 4

    .line 1768
    iget v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mCurrentAppUIState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1d

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mInterruptPhysicalKey:Z

    if-eqz v0, :cond_a

    goto :goto_1d

    .line 1772
    :cond_a
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mZoomKeyEventCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1c

    .line 1773
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mZoomKeyEventCallbacks:Ljava/util/List;

    new-instance v0, Lcom/transsion/camera/app/ui/BaseAppUI$$ExternalSyntheticLambda10;

    invoke-direct {v0, p1}, Lcom/transsion/camera/app/ui/BaseAppUI$$ExternalSyntheticLambda10;-><init>(Z)V

    invoke-interface {p0, v0}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    :cond_1c
    return-void

    .line 1769
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

    .line 1801
    iget v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mCurrentAppUIState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1c

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mInterruptPhysicalKey:Z

    if-eqz v0, :cond_a

    goto :goto_1c

    .line 1804
    :cond_a
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mZoomKeyEventCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1c

    .line 1805
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mZoomKeyEventCallbacks:Ljava/util/List;

    new-instance v0, Lcom/transsion/camera/app/ui/BaseAppUI$$ExternalSyntheticLambda11;

    invoke-direct {v0, p1}, Lcom/transsion/camera/app/ui/BaseAppUI$$ExternalSyntheticLambda11;-><init>(Z)V

    invoke-interface {p0, v0}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    :cond_1c
    :goto_1c
    return-void
.end method

.method public onZoomScaleStart(Z)V
    .registers 4

    .line 1779
    iget v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mCurrentAppUIState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1d

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mInterruptPhysicalKey:Z

    if-eqz v0, :cond_a

    goto :goto_1d

    .line 1783
    :cond_a
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mZoomKeyEventCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1c

    .line 1784
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mZoomKeyEventCallbacks:Ljava/util/List;

    new-instance v0, Lcom/transsion/camera/app/ui/BaseAppUI$$ExternalSyntheticLambda5;

    invoke-direct {v0, p1}, Lcom/transsion/camera/app/ui/BaseAppUI$$ExternalSyntheticLambda5;-><init>(Z)V

    invoke-interface {p0, v0}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    :cond_1c
    return-void

    .line 1780
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

    .line 1790
    iget v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mCurrentAppUIState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1d

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mInterruptPhysicalKey:Z

    if-eqz v0, :cond_a

    goto :goto_1d

    .line 1794
    :cond_a
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mZoomKeyEventCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1c

    .line 1795
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mZoomKeyEventCallbacks:Ljava/util/List;

    new-instance v0, Lcom/transsion/camera/app/ui/BaseAppUI$$ExternalSyntheticLambda9;

    invoke-direct {v0, p1}, Lcom/transsion/camera/app/ui/BaseAppUI$$ExternalSyntheticLambda9;-><init>(Z)V

    invoke-interface {p0, v0}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    :cond_1c
    return-void

    .line 1791
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

.method public pause()V
    .registers 5

    const/4 v0, 0x0

    .line 2084
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mPreviewReadyForCurrentSession:Z

    .line 2085
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mHideShutter:Z

    .line 2086
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mShutterAnimatorFlag:Z

    const/16 v1, 0x1c

    .line 2087
    invoke-virtual {p0, v1}, Lcom/transsion/camera/app/ui/BaseAppUI;->notifyRawActionToAppUI(I)V

    .line 2088
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mInZoomChanging:Z

    .line 2089
    iget-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mLockObj:Ljava/lang/Object;

    monitor-enter v1

    const/4 v2, 0x1

    .line 2090
    :try_start_12
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mIsPaused:Z

    .line 2091
    iget-object v2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mUIHandler:Landroid/os/Handler;

    const/16 v3, 0x69

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 2092
    monitor-exit v1
    :try_end_1c
    .catchall {:try_start_12 .. :try_end_1c} :catchall_c8

    .line 2093
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->isCapturing:Z

    .line 2094
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mIsVideoRecording:Z

    .line 2095
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mSkipInteractiveUpdate:Z

    .line 2096
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mInterruptPhysicalKey:Z

    .line 2097
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mCsViewAnimationStart:Z

    .line 2098
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mShutterUIProcessing:Z

    .line 2099
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mIsShoulderKeyLongPress:Z

    .line 2100
    iget-boolean v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mCShotByPhysicalKey:Z

    if-eqz v1, :cond_35

    .line 2101
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mCShotByPhysicalKey:Z

    .line 2102
    iget-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mShutterUIManager:Lcom/transsion/camera/app/ui/manager/ShutterUIManager;

    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->hideCShotNumber()V

    :cond_35
    const/4 v1, -0x1

    .line 2104
    iput v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mRecordingOrientation:I

    .line 2105
    iput v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mShutterProcessingOrientation:I

    .line 2106
    iget-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mHintUIManager:Lcom/transsion/camera/app/ui/manager/HintUIManager;

    if-eqz v1, :cond_41

    .line 2107
    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/manager/HintUIManager;->pause()V

    .line 2109
    :cond_41
    iget-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mToastUIManager:Lcom/transsion/camera/app/ui/manager/ToastUIManager;

    if-eqz v1, :cond_48

    .line 2110
    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/manager/ToastUIManager;->pause()V

    .line 2112
    :cond_48
    iget-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mFloatingShutterUIManager:Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;

    if-eqz v1, :cond_4f

    .line 2113
    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;->pause()V

    .line 2115
    :cond_4f
    iget-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mInteractiveUIManager:Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;

    if-eqz v1, :cond_56

    .line 2116
    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->pause()V

    .line 2118
    :cond_56
    iget-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mShutterUIManager:Lcom/transsion/camera/app/ui/manager/ShutterUIManager;

    if-eqz v1, :cond_5d

    .line 2119
    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->pause()V

    .line 2121
    :cond_5d
    iget-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mWideCameraUIManager:Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;

    if-eqz v1, :cond_64

    .line 2122
    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;->pause()V

    .line 2124
    :cond_64
    iget-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mModePickerUIManager:Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;

    if-eqz v1, :cond_6b

    .line 2125
    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;->pause()V

    .line 2127
    :cond_6b
    iget-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mTopBarUIManager:Lcom/transsion/camera/app/ui/manager/TopBarUIManager;

    if-eqz v1, :cond_77

    .line 2128
    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->pause()V

    .line 2129
    iget-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mTopBarUIManager:Lcom/transsion/camera/app/ui/manager/TopBarUIManager;

    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->dismissPopup()Z

    .line 2131
    :cond_77
    iget-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mPopSettingUIManager:Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;

    if-eqz v1, :cond_83

    .line 2132
    invoke-virtual {v1}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->pause()V

    .line 2133
    iget-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mPopSettingUIManager:Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;

    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->dismissPopup()Z

    .line 2135
    :cond_83
    iget-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mSellingPointGuideUIManager:Lcom/transsion/camera/app/ui/manager/SellingPointGuideUIManager;

    if-eqz v1, :cond_8a

    .line 2136
    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/manager/SellingPointGuideUIManager;->pause()V

    .line 2138
    :cond_8a
    iget-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mPreviewGestureScrollAdapter:Lcom/transsion/camera/app/ui/PreviewGestureScrollAdapter;

    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/PreviewGestureScrollAdapter;->onPause()V

    .line 2140
    iget-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mThermalThrottleUIManager:Lcom/transsion/camera/app/ui/manager/ThermalThrottleUIManager;

    if-eqz v1, :cond_96

    .line 2141
    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/manager/ThermalThrottleUIManager;->pause()V

    .line 2143
    :cond_96
    iget-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mImageryGuideManager:Lcom/transsion/camera/manager/BaseImageryGuideManager;

    if-eqz v1, :cond_9d

    .line 2144
    invoke-virtual {v1}, Lcom/transsion/camera/manager/BaseImageryGuideManager;->pause()V

    :cond_9d
    const/4 v1, 0x0

    .line 2146
    iput-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mVoiceParameters:[Z

    .line 2147
    invoke-virtual {p0, v0, v0, v0, v0}, Lcom/transsion/camera/app/ui/BaseAppUI;->setStartParameters(ZZZI)V

    .line 2148
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/BaseAppUI;->pauseFoldFlip()V

    .line 2149
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/transsion/camera/R$bool;->need_close_aal_dre_func:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_b8

    const/4 v0, 0x6

    .line 2150
    invoke-static {v0}, Lcom/transsion/camera/utils/aal/AalUtil;->setCurrentAALFunction(I)V

    :cond_b8
    const/16 v0, 0x6e

    .line 2152
    invoke-static {v1, v0}, Lcom/transsion/camera/utils/CameraUtil;->hookDisturbStatus(Landroid/content/Context;I)V

    .line 2153
    sget-object v0, Lcom/transsion/camera/app/manager/OptimizeManager$Holder;->instance:Lcom/transsion/camera/app/manager/OptimizeManager;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Lcom/transsion/camera/app/manager/OptimizeManager;->unBindGalleryService(Landroid/content/Context;)V

    .line 2154
    invoke-static {}, Lcom/transsion/camera/utils/MultiTouchManager;->resetState()V

    return-void

    :catchall_c8
    move-exception p0

    .line 2092
    :try_start_c9
    monitor-exit v1
    :try_end_ca
    .catchall {:try_start_c9 .. :try_end_ca} :catchall_c8

    throw p0
.end method

.method protected pauseFoldFlip()V
    .registers 1

    return-void
.end method

.method public pausePreviewUI(Z)V
    .registers 4

    .line 2164
    sget-object v0, Lcom/transsion/camera/app/ui/BaseAppUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "pausePreviewUI"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 2165
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mPreviewUIManager:Lcom/transsion/camera/app/ui/manager/PreviewUIManager;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/manager/PreviewUIManager;->pause(Z)V

    return-void
.end method

.method public performTouchEvent(Landroid/view/MotionEvent;)V
    .registers 2

    .line 2586
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mModePickerUIManager:Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;

    if-eqz p0, :cond_7

    .line 2587
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;->performTouchEvent(Landroid/view/MotionEvent;)V

    :cond_7
    return-void
.end method

.method public playLivePhotoLottieAnimation()V
    .registers 1

    .line 3793
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mTopBarUIManager:Lcom/transsion/camera/app/ui/manager/TopBarUIManager;

    if-eqz p0, :cond_7

    .line 3794
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->playLivePhotoLottieAnimation()V

    :cond_7
    return-void
.end method

.method public playThumbLottieAnimation()V
    .registers 1

    .line 3800
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mThumbnailUIManager:Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;

    if-eqz p0, :cond_7

    .line 3801
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

    .line 5988
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mModeChangeListener:Lcom/transsion/camera/app/common/IAppUIListener$IModeChangedListener;

    if-nez p0, :cond_7

    sget-object p0, Lcom/transsion/camera/app/common/IAppUI$UIState;->UNKNOWN:Lcom/transsion/camera/app/common/IAppUI$UIState;

    return-object p0

    .line 5989
    :cond_7
    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/IAppUIListener$IModeChangedListener;->queryCameraModeState(Ljava/lang/String;)Lcom/transsion/camera/app/common/IAppUI$UIState;

    move-result-object p0

    return-object p0
.end method

.method public querySettingUIState(Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/IAppUI$UIState;
    .registers 3

    .line 5975
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mInteractiveUIManager:Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;

    if-nez p0, :cond_7

    sget-object p0, Lcom/transsion/camera/app/common/IAppUI$UIState;->UNKNOWN:Lcom/transsion/camera/app/common/IAppUI$UIState;

    return-object p0

    .line 5976
    :cond_7
    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->queryState(Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/IAppUI$UIState;

    move-result-object p0

    return-object p0
.end method

.method public registerHintStateListener(Lcom/transsion/camera/app/common/IAppUIControl$HintStateChangeListener;)V
    .registers 2

    .line 1464
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mHintUIManager:Lcom/transsion/camera/app/ui/manager/HintUIManager;

    if-eqz p0, :cond_7

    .line 1465
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/manager/HintUIManager;->registerHintStateListener(Lcom/transsion/camera/app/common/IAppUIControl$HintStateChangeListener;)V

    :cond_7
    return-void
.end method

.method public registerPreviewGestureListener(Lcom/transsion/camera/app/common/IAppUIListener$IPreviewGestureListener;I)V
    .registers 3

    .line 851
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mPreviewGestureManager:Lcom/transsion/camera/app/ui/gesture/PreviewGestureManager;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/ui/gesture/PreviewGestureManager;->registerGestureListener(Lcom/transsion/camera/app/common/IAppUIListener$IPreviewGestureListener;I)V

    return-void
.end method

.method public registerPreviewRectListener(Lcom/transsion/camera/app/common/IAppUIListener$IPreviewRectListener;)V
    .registers 2

    .line 861
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mPreviewUIManager:Lcom/transsion/camera/app/ui/manager/PreviewUIManager;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/manager/PreviewUIManager;->registerPreviewRectListener(Lcom/transsion/camera/app/common/IAppUIListener$IPreviewRectListener;)V

    return-void
.end method

.method public registerPrivacyCallback(Lcom/transsion/camera/app/common/IPrivacyCallback;)V
    .registers 5

    if-eqz p1, :cond_1d

    .line 6071
    sget-object v0, Lcom/transsion/camera/app/ui/BaseAppUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerPrivacyCallback: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 6072
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

    .line 1261
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mShutterUIManager:Lcom/transsion/camera/app/ui/manager/ShutterUIManager;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->registerOnShutterListener(Lcom/transsion/camera/app/common/IAppUIListener$IShutterResponseListener;I)V

    return-void
.end method

.method public registerZoomKeyEventCallback(Lcom/transsion/camera/app/common/IAppUIControl$IZoomKeyEventCallback;)V
    .registers 3

    .line 1708
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mZoomKeyEventCallbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 1709
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mZoomKeyEventCallbacks:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_d
    return-void
.end method

.method public resetMoreModeToNormal()V
    .registers 1

    .line 2647
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mModePickerUIManager:Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;

    if-eqz p0, :cond_7

    .line 2648
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;->resetMoreModeToNormal()V

    :cond_7
    return-void
.end method

.method public resetTBScrollerView()V
    .registers 1

    .line 4300
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mPopSettingUIManager:Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;

    if-eqz p0, :cond_7

    .line 4301
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->resetTBScrollerView()V

    :cond_7
    return-void
.end method

.method public resetTwinkleGuide()V
    .registers 1

    .line 1486
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mHintUIManager:Lcom/transsion/camera/app/ui/manager/HintUIManager;

    if-eqz p0, :cond_7

    .line 1487
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/HintUIManager;->resetTwinkleGuide()V

    :cond_7
    return-void
.end method

.method public restoreCurrentModeByFacing(I)V
    .registers 2

    .line 5294
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mModePickerUIManager:Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;

    if-eqz p0, :cond_7

    .line 5295
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;->restoreCurrentModeByFacing(I)V

    :cond_7
    return-void
.end method

.method public resume()V
    .registers 2

    const/4 v0, 0x0

    .line 2249
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mIsPaused:Z

    .line 2251
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->isCapturing:Z

    .line 2252
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mAlreadyGotoGoPro:Z

    .line 2253
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mIsShoulderKeyLongPress:Z

    .line 2254
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/BaseAppUI;->resumeRootLayout()V

    const/16 v0, 0x20

    .line 2255
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/BaseAppUI;->notifyRawActionToAppUI(I)V

    .line 2256
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mPreviewUIManager:Lcom/transsion/camera/app/ui/manager/PreviewUIManager;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/manager/PreviewUIManager;->resume()V

    .line 2257
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mHintUIManager:Lcom/transsion/camera/app/ui/manager/HintUIManager;

    if-eqz v0, :cond_1d

    .line 2258
    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/manager/HintUIManager;->resume()V

    .line 2260
    :cond_1d
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mToastUIManager:Lcom/transsion/camera/app/ui/manager/ToastUIManager;

    if-eqz v0, :cond_24

    .line 2261
    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/manager/ToastUIManager;->resume()V

    .line 2263
    :cond_24
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mFloatingShutterUIManager:Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;

    if-eqz v0, :cond_2b

    .line 2264
    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;->resume()V

    .line 2266
    :cond_2b
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mInteractiveUIManager:Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;

    if-eqz v0, :cond_32

    .line 2267
    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->resume()V

    .line 2269
    :cond_32
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mShutterUIManager:Lcom/transsion/camera/app/ui/manager/ShutterUIManager;

    if-eqz v0, :cond_39

    .line 2270
    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->resume()V

    .line 2272
    :cond_39
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mModePickerUIManager:Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;

    if-eqz v0, :cond_40

    .line 2273
    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;->resume()V

    .line 2275
    :cond_40
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mTopBarUIManager:Lcom/transsion/camera/app/ui/manager/TopBarUIManager;

    if-eqz v0, :cond_47

    .line 2276
    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->resume()V

    .line 2278
    :cond_47
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mPopSettingUIManager:Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;

    if-eqz v0, :cond_4e

    .line 2279
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->resume()V

    .line 2281
    :cond_4e
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mSellingPointGuideUIManager:Lcom/transsion/camera/app/ui/manager/SellingPointGuideUIManager;

    if-eqz v0, :cond_55

    .line 2282
    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/manager/SellingPointGuideUIManager;->resume()V

    .line 2284
    :cond_55
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mImageryGuideManager:Lcom/transsion/camera/manager/BaseImageryGuideManager;

    if-eqz v0, :cond_5c

    .line 2285
    invoke-virtual {v0}, Lcom/transsion/camera/manager/BaseImageryGuideManager;->resume()V

    .line 2287
    :cond_5c
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/transsion/camera/R$bool;->need_close_aal_dre_func:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    if-eqz p0, :cond_6e

    const/4 p0, 0x2

    .line 2288
    invoke-static {p0}, Lcom/transsion/camera/utils/aal/AalUtil;->setCurrentAALFunction(I)V

    :cond_6e
    return-void
.end method

.method public setAeAfLock(Lcom/transsion/camera/app/common/mode/IAeAfLock;)V
    .registers 2

    .line 5344
    iput-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mAeAfLock:Lcom/transsion/camera/app/common/mode/IAeAfLock;

    return-void
.end method

.method public setAuxPreviewLensSupport(ZLjava/lang/String;)V
    .registers 3

    .line 757
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mPreviewUIManager:Lcom/transsion/camera/app/ui/manager/PreviewUIManager;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/ui/manager/PreviewUIManager;->setAuxPreviewLensSupport(ZLjava/lang/String;)V

    return-void
.end method

.method public setAuxPreviewModeSupport(ZLjava/lang/String;)V
    .registers 3

    .line 5386
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mPreviewUIManager:Lcom/transsion/camera/app/ui/manager/PreviewUIManager;

    if-eqz p0, :cond_7

    .line 5387
    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/ui/manager/PreviewUIManager;->setAuxPreviewModeSupport(ZLjava/lang/String;)V

    :cond_7
    return-void
.end method

.method public setAuxPreviewSize(II)V
    .registers 3

    .line 747
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mPreviewUIManager:Lcom/transsion/camera/app/ui/manager/PreviewUIManager;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/ui/manager/PreviewUIManager;->setAuxPreviewSize(II)V

    return-void
.end method

.method public setBackgroundPreviewModeSupport(Z)V
    .registers 2

    .line 5397
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mPreviewUIManager:Lcom/transsion/camera/app/ui/manager/PreviewUIManager;

    if-eqz p0, :cond_7

    .line 5398
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/manager/PreviewUIManager;->setBackgroundPreviewModeSupport(Z)V

    :cond_7
    return-void
.end method

.method public setBackgroundPreviewSize(II)V
    .registers 3

    .line 752
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

    .line 1276
    iput-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mCameraSwitchListener:Lcom/transsion/camera/app/common/IAppUIListener$ICameraSwitchListener;

    return-void
.end method

.method public setContinuousShotEnd(Z)V
    .registers 2

    .line 6113
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mShutterUIManager:Lcom/transsion/camera/app/ui/manager/ShutterUIManager;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->setContinuousShotEnd(Z)V

    return-void
.end method

.method public setEnableHintUI(Z)V
    .registers 5

    .line 1649
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mHintUIManager:Lcom/transsion/camera/app/ui/manager/HintUIManager;

    if-eqz v0, :cond_1f

    .line 1650
    sget-object v0, Lcom/transsion/camera/app/ui/BaseAppUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "If you turn on or off more mode,disabled hint ui or not,the value is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1651
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mHintUIManager:Lcom/transsion/camera/app/ui/manager/HintUIManager;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/manager/HintUIManager;->setEnableHintUI(Z)V

    :cond_1f
    return-void
.end method

.method public setGotoActivityListener(Lcom/transsion/camera/app/common/IAppUIListener$IGotoActivityListener;)V
    .registers 2

    .line 716
    iput-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mGotoActivityListener:Lcom/transsion/camera/app/common/IAppUIListener$IGotoActivityListener;

    return-void
.end method

.method public setModeChangedListener(Lcom/transsion/camera/app/common/IAppUIListener$IModeChangedListener;)V
    .registers 2

    .line 846
    iput-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mModeChangeListener:Lcom/transsion/camera/app/common/IAppUIListener$IModeChangedListener;

    return-void
.end method

.method public setModeDataInfoListener(Lcom/transsion/camera/app/common/IAppUIListener$IModeDataInfoListener;)V
    .registers 2

    .line 1574
    iput-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mModeDataInfoListener:Lcom/transsion/camera/app/common/IAppUIListener$IModeDataInfoListener;

    return-void
.end method

.method public setModeFeatureConfig(Lcom/transsion/camera/app/common/IModeFeatureConfig;)V
    .registers 2

    .line 6096
    iput-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mModeFeatureConfig:Lcom/transsion/camera/app/common/IModeFeatureConfig;

    .line 6097
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mOverlayUIManager:Lcom/transsion/camera/app/ui/manager/OverlayUIManager;

    if-eqz p0, :cond_9

    .line 6098
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/manager/OverlayUIManager;->setModeFeatureConfig(Lcom/transsion/camera/app/common/IModeFeatureConfig;)V

    :cond_9
    return-void
.end method

.method public setModeFeatureSupport(Lcom/transsion/camera/app/common/mode/IModeFeatureSupport;)V
    .registers 2

    .line 1271
    iput-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mModeFeatureSupport:Lcom/transsion/camera/app/common/mode/IModeFeatureSupport;

    return-void
.end method

.method public setModeList(Ljava/util/List;Lcom/transsion/camera/app/common/mode/IModeSwitchPolicy;)V
    .registers 5

    .line 831
    invoke-interface {p2}, Lcom/transsion/camera/app/common/mode/IModeSwitchPolicy;->getBackModes()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mSupportedBackModes:[Ljava/lang/String;

    .line 832
    invoke-interface {p2}, Lcom/transsion/camera/app/common/mode/IModeSwitchPolicy;->getFrontModes()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mSupportedFrontModes:[Ljava/lang/String;

    .line 833
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mModePickerUIManager:Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;

    if-eqz v0, :cond_1e

    .line 834
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/BaseAppUI;->isSecureCamera()Z

    move-result v1

    invoke-virtual {v0, p1, p2, v1}, Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;->setModeList(Ljava/util/List;Lcom/transsion/camera/app/common/mode/IModeSwitchPolicy;Z)V

    .line 835
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mModeOrderEditorManager:Lcom/transsion/camera/app/ui/manager/ModeOrderEditorManager;

    if-eqz v0, :cond_1e

    .line 836
    invoke-virtual {v0, p1, p2}, Lcom/transsion/camera/app/ui/manager/ModeOrderEditorManager;->setModeList(Ljava/util/List;Lcom/transsion/camera/app/common/mode/IModeSwitchPolicy;)V

    .line 839
    :cond_1e
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mSellingPointGuideUIManager:Lcom/transsion/camera/app/ui/manager/SellingPointGuideUIManager;

    if-eqz p0, :cond_25

    .line 840
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/manager/SellingPointGuideUIManager;->setAllModeResources(Ljava/util/List;)V

    :cond_25
    return-void
.end method

.method public setModeName(Ljava/lang/String;)V
    .registers 5

    .line 4673
    sget-object v0, Lcom/transsion/camera/app/ui/BaseAppUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setModeName, modeName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 4674
    iput-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mCurrentModeName:Ljava/lang/String;

    return-void
.end method

.method public setModeNotifyCameraOperateActionCallBack(Lcom/transsion/camera/app/common/mode/IModeNotifyCameraOperateActionCallback;)V
    .registers 2

    .line 4720
    iput-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->modeNotifyCameraOperateActionCallback:Lcom/transsion/camera/app/common/mode/IModeNotifyCameraOperateActionCallback;

    return-void
.end method

.method public setModePickerSink(Z)V
    .registers 2

    .line 4776
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mIsModePickerSink:Z

    return-void
.end method

.method public setModeUIControl(Lcom/transsion/camera/app/common/IAppUIControl$IModeUIControl;)V
    .registers 2

    .line 4428
    iput-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mModeUIControl:Lcom/transsion/camera/app/common/IAppUIControl$IModeUIControl;

    return-void
.end method

.method public setNeedPopSettingEntryAnimation(Z)V
    .registers 2

    .line 740
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mTopBarUIManager:Lcom/transsion/camera/app/ui/manager/TopBarUIManager;

    if-eqz p0, :cond_7

    .line 741
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->setNeedPopSettingEntryAnimation(Z)V

    :cond_7
    return-void
.end method

.method public setPopSettingContainerVisible(I)V
    .registers 2

    .line 919
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mPopSettingUIManager:Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;

    if-eqz p0, :cond_7

    .line 920
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->setPopSettingContainerVisible(I)V

    :cond_7
    return-void
.end method

.method public setPreviewSize(II)V
    .registers 4

    .line 721
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    if-eqz v0, :cond_22

    .line 722
    invoke-virtual {v0, p1, p2}, Lcom/transsion/camera/app/ui/ScreenManager;->updatePreviewSize(II)V

    .line 726
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mPreviewUIManager:Lcom/transsion/camera/app/ui/manager/PreviewUIManager;

    invoke-virtual {v0, p1, p2}, Lcom/transsion/camera/app/ui/manager/PreviewUIManager;->setPreviewSize(II)V

    .line 727
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mTopBarUIManager:Lcom/transsion/camera/app/ui/manager/TopBarUIManager;

    if-eqz v0, :cond_13

    .line 728
    invoke-virtual {v0, p1, p2}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->setPreviewSize(II)V

    .line 730
    :cond_13
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mRingScreenLightUIManager:Lcom/transsion/camera/app/ui/manager/RingScreenLightUIManager;

    if-eqz v0, :cond_1a

    .line 731
    invoke-virtual {v0, p1, p2}, Lcom/transsion/camera/app/ui/manager/RingScreenLightUIManager;->setPreviewSize(II)V

    .line 733
    :cond_1a
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mModePickerUIManager:Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;

    if-eqz p0, :cond_21

    .line 734
    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;->setPreviewSize(II)V

    :cond_21
    return-void

    .line 724
    :cond_22
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "must init mScreenManager"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setRecentKeyMonitor(Lcom/transsion/camera/app/common/physicalkey/AbstractKeyMonitor;)V
    .registers 2

    .line 6117
    iput-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mRecentKeyMonitor:Lcom/transsion/camera/app/common/physicalkey/AbstractKeyMonitor;

    return-void
.end method

.method public setRestartPreviewListener(Lcom/transsion/camera/app/common/IAppUIListener$IRestartPreviewListener;)V
    .registers 2

    .line 1320
    iput-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mRestartPreviewListener:Lcom/transsion/camera/app/common/IAppUIListener$IRestartPreviewListener;

    return-void
.end method

.method public setSecureCamera(Z)V
    .registers 2

    .line 4363
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mSecureCamera:Z

    return-void
.end method

.method public setSellingPointVideoPlaying(Z)V
    .registers 2

    .line 6109
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mIsSellingPointVideoPlaying:Z

    return-void
.end method

.method public setSeparateCaptureNumber(I)V
    .registers 2

    .line 4684
    iput p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mSeparateCaptureNumber:I

    return-void
.end method

.method public setSettingManager()V
    .registers 4

    .line 2341
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getStatusMonitor()Lcom/transsion/camera/app/common/setting/StatusMonitor;

    move-result-object v0

    .line 2342
    iget-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mShutterUIManager:Lcom/transsion/camera/app/ui/manager/ShutterUIManager;

    if-eqz v1, :cond_f

    .line 2343
    iget-object v2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-virtual {v1, v2}, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->setSettingController(Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)V

    .line 2345
    :cond_f
    iget-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mTopBarUIManager:Lcom/transsion/camera/app/ui/manager/TopBarUIManager;

    if-eqz v1, :cond_18

    .line 2346
    iget-object v2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-virtual {v1, v2}, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->setSettingController(Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)V

    .line 2348
    :cond_18
    iget-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mPopSettingUIManager:Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;

    if-eqz v1, :cond_21

    .line 2349
    iget-object v2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-virtual {v1, v2}, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->setSettingController(Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)V

    .line 2351
    :cond_21
    iget-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mSellingPointGuideUIManager:Lcom/transsion/camera/app/ui/manager/SellingPointGuideUIManager;

    if-eqz v1, :cond_2a

    .line 2352
    iget-object v2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-virtual {v1, v2}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->setSettingController(Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)V

    .line 2354
    :cond_2a
    iget-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mHelpGuideUIManager:Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;

    if-eqz v1, :cond_33

    .line 2355
    iget-object v2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-virtual {v1, v2}, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;->setSettingController(Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)V

    .line 2357
    :cond_33
    iget-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mWideCameraUIManager:Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;

    if-eqz v1, :cond_3c

    .line 2358
    iget-object v2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-virtual {v1, v2}, Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;->setSettingController(Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)V

    .line 2360
    :cond_3c
    iget-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mOverlayUIManager:Lcom/transsion/camera/app/ui/manager/OverlayUIManager;

    if-eqz v1, :cond_45

    .line 2361
    iget-object v2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-virtual {v1, v2}, Lcom/transsion/camera/app/ui/manager/OverlayUIManager;->setSettingController(Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)V

    .line 2363
    :cond_45
    iget-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mInteractiveUIManager:Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;

    if-eqz v1, :cond_4e

    .line 2364
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

    .line 3891
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mIsShoulderKeyLongPress:Z

    return-void
.end method

.method public setShutterEnabled(Z)V
    .registers 2

    .line 5111
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mShutterUIManager:Lcom/transsion/camera/app/ui/manager/ShutterUIManager;

    if-eqz p0, :cond_7

    .line 5112
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->setEnable(Z)V

    :cond_7
    return-void
.end method

.method public setShutterTypeSelftimerOff(I)V
    .registers 2

    .line 1357
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mShutterUIManager:Lcom/transsion/camera/app/ui/manager/ShutterUIManager;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->setShutterTypeSelftimerOff(I)V

    return-void
.end method

.method public setShutterTypeSelftimerOn(I)V
    .registers 2

    .line 1367
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mShutterUIManager:Lcom/transsion/camera/app/ui/manager/ShutterUIManager;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->setShutterTypeSelftimerOn(I)V

    return-void
.end method

.method public setStartParameters(ZZZI)V
    .registers 5

    .line 2197
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mVideoIntent:Z

    .line 2198
    iput-boolean p2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mPhotoIntent:Z

    const/4 p3, 0x0

    .line 2199
    iput-boolean p3, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mOpenOnly:Z

    .line 2200
    iput p4, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mDelayTime:I

    const/4 p4, 0x3

    .line 2201
    new-array p4, p4, [Z

    iput-object p4, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mVoiceParameters:[Z

    .line 2202
    aput-boolean p1, p4, p3

    const/4 p0, 0x1

    .line 2203
    aput-boolean p2, p4, p0

    const/4 p0, 0x2

    .line 2204
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

    .line 817
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mPreviewUIManager:Lcom/transsion/camera/app/ui/manager/PreviewUIManager;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/manager/PreviewUIManager;->setSurfaceStatusListener(Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener;)V

    return-void
.end method

.method public setSwitchBlurCameraListener(Lcom/transsion/camera/app/common/IAppUIListener$ISwitchBlurCameraListener;)V
    .registers 2

    .line 1296
    iput-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mSwitchBlurCameraListener:Lcom/transsion/camera/app/common/IAppUIListener$ISwitchBlurCameraListener;

    return-void
.end method

.method public setSwitchDualAndMainCameraListener(Lcom/transsion/camera/app/common/IAppUIListener$ISwitchDualAndMainCameraListener;)V
    .registers 2

    .line 1315
    iput-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mSwitchDualAndMainCameraListener:Lcom/transsion/camera/app/common/IAppUIListener$ISwitchDualAndMainCameraListener;

    return-void
.end method

.method public setSwitchDualCamBWCameraListener(Lcom/transsion/camera/app/common/IAppUIListener$ISwitchDualCamBWCameraListener;)V
    .registers 2

    .line 1301
    iput-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mSwitchDualCamBWListener:Lcom/transsion/camera/app/common/IAppUIListener$ISwitchDualCamBWCameraListener;

    return-void
.end method

.method public setSwitchPeriscopeCameraListener(Lcom/transsion/camera/app/common/IAppUIListener$ISwitchPeriscopeCameraListener;)V
    .registers 2

    .line 1291
    iput-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mSwitchPeriscopeCameraListener:Lcom/transsion/camera/app/common/IAppUIListener$ISwitchPeriscopeCameraListener;

    return-void
.end method

.method public setSwitchSatCameraListener(Lcom/transsion/camera/app/common/IAppUIListener$ISwitchSatCameraListener;)V
    .registers 2

    .line 1306
    iput-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mSwitchSatCameraListener:Lcom/transsion/camera/app/common/IAppUIListener$ISwitchSatCameraListener;

    return-void
.end method

.method public setSwitchTeleCameraListener(Lcom/transsion/camera/app/common/IAppUIListener$ISwitchLogicalCameraListener;)V
    .registers 2

    .line 1286
    iput-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mSwitchTeleCameraListener:Lcom/transsion/camera/app/common/IAppUIListener$ISwitchLogicalCameraListener;

    return-void
.end method

.method public setSwitchWideCameraListener(Lcom/transsion/camera/app/common/IAppUIListener$ISwitchWideCameraListener;)V
    .registers 2

    .line 1281
    iput-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mSwitchWideCameraListener:Lcom/transsion/camera/app/common/IAppUIListener$ISwitchWideCameraListener;

    return-void
.end method

.method public setThumbnailClickable(Z)V
    .registers 2

    .line 878
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mThumbnailUIManager:Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;

    if-eqz p0, :cond_7

    .line 879
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;->setThumbnailClickable(Z)V

    :cond_7
    return-void
.end method

.method public setThumbnailListener(Lcom/transsion/camera/app/common/IAppUIListener$IThumbnailListener;)V
    .registers 4

    .line 871
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mThumbnailUIManager:Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;

    if-eqz v0, :cond_c

    .line 872
    new-instance v1, Lcom/transsion/camera/app/ui/BaseAppUI$ThumbnailListenerWrap;

    invoke-direct {v1, p0, p1}, Lcom/transsion/camera/app/ui/BaseAppUI$ThumbnailListenerWrap;-><init>(Lcom/transsion/camera/app/ui/BaseAppUI;Lcom/transsion/camera/app/common/IAppUIListener$IThumbnailListener;)V

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;->setThumbnailListener(Lcom/transsion/camera/app/common/IAppUIListener$IThumbnailListener;)V

    :cond_c
    return-void
.end method

.method public setThumbnailTransitionManager(Lcom/transsion/camera/app/common/thumbnailtransition/IThumbnailTransition;)V
    .registers 2

    .line 885
    iput-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mThumbnailTransitionManager:Lcom/transsion/camera/app/common/thumbnailtransition/IThumbnailTransition;

    return-void
.end method

.method public setTreasureBoxBackViewVisible(I)V
    .registers 2

    .line 926
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mPopSettingUIManager:Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;

    if-eqz p0, :cond_7

    .line 927
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->setTreasureBoxBackViewVisible(I)V

    :cond_7
    return-void
.end method

.method public setUserInteractionListener(Lcom/transsion/camera/app/common/IAppUIListener$IUserInteractionListener;)V
    .registers 2

    .line 4379
    iput-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mUserInteractionListener:Lcom/transsion/camera/app/common/IAppUIListener$IUserInteractionListener;

    return-void
.end method

.method public setVideoPowerSavingListener(Lcom/transsion/camera/app/common/IAppUIListener$VideoPowerSavingListener;)V
    .registers 2

    .line 4384
    iput-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mVideoPowerSavingListener:Lcom/transsion/camera/app/common/IAppUIListener$VideoPowerSavingListener;

    return-void
.end method

.method public setVideoPowerSavingUIVisible(Z)V
    .registers 2

    .line 4388
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mVideoPowerSavingListener:Lcom/transsion/camera/app/common/IAppUIListener$VideoPowerSavingListener;

    if-eqz p0, :cond_7

    .line 4389
    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/IAppUIListener$VideoPowerSavingListener;->setVideoPowerSavingUIVisible(Z)V

    :cond_7
    return-void
.end method

.method public setVideoThermalWaringSupport(Z)V
    .registers 2

    .line 1446
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mVideoThermalWarningSupport:Z

    return-void
.end method

.method public setVoiceInteraction(Z)V
    .registers 5

    .line 4393
    sget-object v0, Lcom/transsion/camera/app/ui/BaseAppUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "voiceInteraction: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 4394
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mVoiceInteraction:Z

    return-void
.end method

.method public setVolumeIntercept(Z)V
    .registers 2

    .line 4411
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mIntercept:Z

    return-void
.end method

.method public shouldExitCameraOnBackPressed()Z
    .registers 1

    .line 2781
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mModePickerUIManager:Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;

    if-nez p0, :cond_6

    const/4 p0, 0x1

    return p0

    .line 2784
    :cond_6
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;->shouldExitCameraOnBackPressed()Z

    move-result p0

    return p0
.end method

.method public showCSNotSupportHint(Lcom/transsion/camera/app/common/ui/HintInfo;Ljava/lang/String;Z)V
    .registers 5

    if-eqz p2, :cond_4d

    .line 1579
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mHintUIManager:Lcom/transsion/camera/app/ui/manager/HintUIManager;

    if-nez v0, :cond_7

    goto :goto_4d

    .line 1583
    :cond_7
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 1584
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/BaseAppUI;->shutterUINewStyleSupport()Z

    move-result p2

    if-eqz p2, :cond_1f

    .line 1585
    iget-object p2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mContext:Landroid/content/Context;

    sget p3, Lcom/transsion/camera/R$string;->continuous_shot_and_quick_video_not_supported:I

    invoke-virtual {p2, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/transsion/camera/app/common/ui/HintInfo;->setMessage(Ljava/lang/String;)V

    goto :goto_44

    .line 1587
    :cond_1f
    iget-object p2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mContext:Landroid/content/Context;

    sget p3, Lcom/transsion/camera/R$string;->continuous_shot_not_supported:I

    invoke-virtual {p2, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/transsion/camera/app/common/ui/HintInfo;->setMessage(Ljava/lang/String;)V

    goto :goto_44

    :cond_2b
    if-eqz p3, :cond_41

    .line 1591
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

    .line 1593
    :cond_41
    invoke-virtual {p1, p2}, Lcom/transsion/camera/app/common/ui/HintInfo;->setMessage(Ljava/lang/String;)V

    .line 1596
    :goto_44
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/BaseAppUI;->notifyCSNotSupport()V

    .line 1597
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mHintUIManager:Lcom/transsion/camera/app/ui/manager/HintUIManager;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/manager/HintUIManager;->showHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    return-void

    .line 1580
    :cond_4d
    :goto_4d
    sget-object p0, Lcom/transsion/camera/app/ui/BaseAppUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "don\'t show hint when msg or mHintUIManager is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public showCustomPreviewCover(Landroid/graphics/Bitmap;)V
    .registers 4

    .line 777
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mUIHandler:Landroid/os/Handler;

    const/16 v1, 0x6e

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 778
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mUIHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public showFloatingShutterUI(IIZZ)V
    .registers 7

    .line 2214
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mFloatingShutterUIManager:Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;

    if-eqz v0, :cond_d

    const/4 v1, 0x0

    .line 2215
    invoke-virtual {v0, v1, p3, p4}, Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;->showFloatingShutterUI(ZZZ)V

    .line 2216
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mFloatingShutterUIManager:Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;->updateFloatingShutterUIPosition(II)V

    :cond_d
    return-void
.end method

.method public showFrontDualFlashUI()V
    .registers 3

    .line 1500
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mHintUIManager:Lcom/transsion/camera/app/ui/manager/HintUIManager;

    if-eqz v0, :cond_8

    const/4 v1, 0x1

    .line 1501
    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/manager/HintUIManager;->updateFrontDualFlashUIState(Z)V

    :cond_8
    const/16 v0, 0xaa

    .line 1503
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/BaseAppUI;->notifyRawActionToAppUI(I)V

    return-void
.end method

.method public showHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V
    .registers 3

    if-nez p1, :cond_a

    .line 1452
    sget-object p0, Lcom/transsion/camera/app/ui/BaseAppUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "showHint: info is null, ignore"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 1455
    :cond_a
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mHintUIManager:Lcom/transsion/camera/app/ui/manager/HintUIManager;

    if-eqz v0, :cond_12

    .line 1456
    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/ui/manager/HintUIManager;->showHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    return-void

    .line 1458
    :cond_12
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mPendingHints:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public showLensDirtyHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V
    .registers 3

    .line 1524
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mHintUIManager:Lcom/transsion/camera/app/ui/manager/HintUIManager;

    if-eqz v0, :cond_8

    .line 1525
    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/ui/manager/HintUIManager;->showHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    return-void

    :cond_8
    if-eqz p1, :cond_c

    .line 1528
    iput-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mOnceLensDirtyHint:Lcom/transsion/camera/app/common/ui/HintInfo;

    :cond_c
    return-void
.end method

.method public showLowPowerHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V
    .registers 3

    .line 1535
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mHintUIManager:Lcom/transsion/camera/app/ui/manager/HintUIManager;

    if-eqz v0, :cond_8

    .line 1536
    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/ui/manager/HintUIManager;->showLowPowerHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    return-void

    :cond_8
    if-eqz p1, :cond_c

    .line 1539
    iput-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mOnceLowPowerHint:Lcom/transsion/camera/app/common/ui/HintInfo;

    :cond_c
    return-void
.end method

.method public showMasterGuide(Lcom/transsion/camera/app/common/MasterGuideUIBean;)V
    .registers 2

    .line 6056
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mMasterGuideUIManager:Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;

    if-eqz p0, :cond_7

    .line 6057
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->showMasterGuide(Lcom/transsion/camera/app/common/MasterGuideUIBean;)V

    :cond_7
    return-void
.end method

.method public showOrHideHintLayout(Z)V
    .registers 2

    .line 1616
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mHintRootLayout:Landroid/view/ViewGroup;

    if-eqz p0, :cond_10

    if-eqz p1, :cond_b

    const/4 p1, 0x0

    .line 1618
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_b
    const/16 p1, 0x8

    .line 1620
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_10
    return-void
.end method

.method public showOrHideModePickerFromUnderwater(Z)V
    .registers 2

    .line 5087
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mModePickerUIManager:Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;

    if-eqz p0, :cond_7

    .line 5088
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;->showOrHideModePickerFromUnderwater(Z)V

    :cond_7
    return-void
.end method

.method public showOrHideModePickerRootUI(ZZZ)V
    .registers 5

    .line 5080
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mModePickerUIManager:Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;

    if-eqz p0, :cond_8

    const/4 v0, 0x0

    .line 5081
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;->showOrHideModePickerRootUI(ZZZZ)V

    :cond_8
    return-void
.end method

.method public showOrHideShutterPanel(ZZIZ)V
    .registers 15

    .line 4977
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

    .line 4979
    const-string v1, "com.transsion.camera.feature.mode.more.MoreModeEntry"

    iget-object v2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mCurrentModeName:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_40

    .line 4980
    const-string p0, "MoreMode do not show shutterPanel!"

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 4984
    :cond_40
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mShutterPanelRootView:Landroid/view/ViewGroup;

    if-nez v0, :cond_45

    return-void

    .line 4987
    :cond_45
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mShutterAnimatorFlag:Z

    .line 4988
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mShutterAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz p1, :cond_56

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_56

    .line 4989
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mShutterAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_56
    const/4 p1, 0x1

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez p2, :cond_a5

    .line 4992
    iget-boolean p2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mShutterAnimatorFlag:Z

    if-eqz p2, :cond_82

    .line 4993
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mShutterPanelRootView:Landroid/view/ViewGroup;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 4994
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mShutterPanelRootView:Landroid/view/ViewGroup;

    invoke-virtual {p1, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 4995
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mShutterPanelRootView:Landroid/view/ViewGroup;

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 4996
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mModePickerUIManager:Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;

    if-eqz p1, :cond_7e

    if-eqz p4, :cond_7e

    .line 4997
    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;->showModeRegion()V

    .line 4998
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mModePickerUIManager:Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;->setModeOpaque()V

    .line 5000
    :cond_7e
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mShutterAnimatorFlag:Z

    goto/16 :goto_14f

    .line 5002
    :cond_82
    iget-object p2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mShutterPanelRootView:Landroid/view/ViewGroup;

    const/4 v0, 0x4

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 5003
    iget-object p2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mShutterPanelRootView:Landroid/view/ViewGroup;

    int-to-float p3, p3

    invoke-virtual {p2, p3}, Landroid/view/View;->setTranslationY(F)V

    .line 5004
    iget-object p2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mShutterPanelRootView:Landroid/view/ViewGroup;

    invoke-virtual {p2, v2}, Landroid/view/View;->setAlpha(F)V

    .line 5005
    iget-object p2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mModePickerUIManager:Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;

    if-eqz p2, :cond_a1

    if-eqz p4, :cond_a1

    .line 5006
    invoke-virtual {p2}, Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;->hideModeRegion()V

    .line 5007
    iget-object p2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mModePickerUIManager:Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;

    invoke-virtual {p2}, Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;->setModeUnOpaque()V

    .line 5009
    :cond_a1
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mShutterAnimatorFlag:Z

    goto/16 :goto_14f

    .line 5012
    :cond_a5
    new-instance p2, Landroid/animation/AnimatorSet;

    invoke-direct {p2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object p2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mShutterAnimatorSet:Landroid/animation/AnimatorSet;

    .line 5015
    new-instance p2, Landroid/animation/ObjectAnimator;

    invoke-direct {p2}, Landroid/animation/ObjectAnimator;-><init>()V

    .line 5016
    iget-boolean v3, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mShutterAnimatorFlag:Z

    const-string/jumbo v4, "translationY"

    const-string v5, "alpha"

    const/16 v6, 0x12c

    const-wide/16 v7, 0x12c

    if-eqz v3, :cond_ea

    .line 5017
    iget-object p3, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mShutterPanelRootView:Landroid/view/ViewGroup;

    invoke-virtual {p3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 5018
    iget-object p3, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mModePickerUIManager:Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;

    if-eqz p3, :cond_cb

    .line 5019
    invoke-virtual {p3, v6}, Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;->modePickerShowAlphaAnimator(I)Landroid/animation/ObjectAnimator;

    move-result-object p2

    .line 5021
    :cond_cb
    iget-object p3, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mShutterPanelRootView:Landroid/view/ViewGroup;

    new-array v3, p1, [F

    aput v0, v3, v1

    invoke-static {p3, v5, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p3

    .line 5023
    invoke-virtual {p3, v7, v8}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object p3

    .line 5024
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mShutterPanelRootView:Landroid/view/ViewGroup;

    new-array v3, p1, [F

    aput v2, v3, v1

    invoke-static {v0, v4, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 5026
    invoke-virtual {v0, v7, v8}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 5027
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mShutterAnimatorFlag:Z

    goto :goto_11e

    .line 5029
    :cond_ea
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mRootView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v0

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_fc

    .line 5030
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mModePickerUIManager:Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;

    if-eqz v0, :cond_fc

    .line 5031
    invoke-virtual {v0, v6}, Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;->modePickerHideAlphaAnimator(I)Landroid/animation/ObjectAnimator;

    move-result-object p2

    .line 5034
    :cond_fc
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mShutterPanelRootView:Landroid/view/ViewGroup;

    new-array v3, p1, [F

    aput v2, v3, v1

    invoke-static {v0, v5, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 5036
    invoke-virtual {v0, v7, v8}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 5037
    iget-object v2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mShutterPanelRootView:Landroid/view/ViewGroup;

    int-to-float p3, p3

    new-array v3, p1, [F

    aput p3, v3, v1

    invoke-static {v2, v4, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p3

    .line 5039
    invoke-virtual {p3, v7, v8}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object p3

    .line 5040
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mShutterAnimatorFlag:Z

    move-object v9, v0

    move-object v0, p3

    move-object p3, v9

    .line 5042
    :goto_11e
    iget-object v2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mShutterAnimatorSet:Landroid/animation/AnimatorSet;

    iget-object v3, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mPathInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const/4 v2, 0x2

    if-eqz p4, :cond_13f

    if-eqz p2, :cond_13f

    .line 5043
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getValues()[Landroid/animation/PropertyValuesHolder;

    move-result-object p4

    if-eqz p4, :cond_13f

    .line 5044
    iget-object p4, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mShutterAnimatorSet:Landroid/animation/AnimatorSet;

    const/4 v3, 0x3

    new-array v3, v3, [Landroid/animation/Animator;

    aput-object p3, v3, v1

    aput-object v0, v3, p1

    aput-object p2, v3, v2

    invoke-virtual {p4, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto :goto_14a

    .line 5046
    :cond_13f
    iget-object p2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mShutterAnimatorSet:Landroid/animation/AnimatorSet;

    new-array p4, v2, [Landroid/animation/Animator;

    aput-object p3, p4, v1

    aput-object v0, p4, p1

    invoke-virtual {p2, p4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 5048
    :goto_14a
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mShutterAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    .line 5050
    :goto_14f
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mShutterAnimatorFlag:Z

    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mHideShutter:Z

    return-void
.end method

.method public showOrHideSwitcher(Z)V
    .registers 4

    .line 5375
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mCameraSwitcherUIManager:Lcom/transsion/camera/app/ui/manager/CameraSwitcherUIManager;

    if-nez v0, :cond_5

    return-void

    :cond_5
    xor-int/lit8 v1, p1, 0x1

    .line 5378
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mShouldHideSwitcher:Z

    .line 5379
    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/ui/manager/CameraSwitcherUIManager;->showOrHide(Z)V

    return-void
.end method

.method protected showOrHideSystemUI()V
    .registers 1

    return-void
.end method

.method public showOrHideTopAndBottomView(Z)V
    .registers 5

    .line 5422
    sget-object v0, Lcom/transsion/camera/app/ui/BaseAppUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showOrHideTopAndBottomView isShow:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 5423
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mShutterPanelRootView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_38

    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mBottomBarRootView:Landroid/view/View;

    if-eqz v0, :cond_38

    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mTopBarUIManager:Lcom/transsion/camera/app/ui/manager/TopBarUIManager;

    if-eqz v0, :cond_38

    if-nez p1, :cond_2f

    .line 5426
    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->hide()V

    .line 5427
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mBottomBarRootView:Landroid/view/View;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 5429
    :cond_2f
    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->show()V

    .line 5430
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mBottomBarRootView:Landroid/view/View;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_38
    return-void
.end method

.method public showPopItem()V
    .registers 1

    .line 933
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mPopSettingUIManager:Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;

    if-eqz p0, :cond_7

    .line 934
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->showPopItem()V

    :cond_7
    return-void
.end method

.method public showPopSettingView()V
    .registers 1

    .line 5728
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mPopSettingUIManager:Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;

    if-eqz p0, :cond_7

    .line 5729
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->showPopSettingUI()V

    :cond_7
    return-void
.end method

.method public showShoulderTips()V
    .registers 6

    .line 3896
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mIsShoulderTipsShow:Z

    if-eqz v0, :cond_5

    goto :goto_3c

    :cond_5
    const/4 v0, 0x0

    .line 3899
    const-string v1, "debug.shoulder.tips.count"

    invoke-static {v1, v0}, Lcom/transsion/camera/utils/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x3

    if-ge v0, v2, :cond_3c

    .line 3901
    iget-object v2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mContext:Landroid/content/Context;

    sget v3, Lcom/transsion/camera/R$string;->gt_trigger_tips_text:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 3902
    iget-object v3, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mContext:Landroid/content/Context;

    sget v4, Lcom/transsion/camera/R$string;->gt_trigger_tips_button:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 3903
    iget-object v4, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mContext:Landroid/content/Context;

    invoke-static {v4, v2}, Lcom/transsion/widgetslib/dialog/OSSnackbar;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;)Lcom/transsion/widgetslib/dialog/OSSnackbar;

    move-result-object v2

    new-instance v4, Lcom/transsion/camera/app/ui/BaseAppUI$4;

    invoke-direct {v4, p0}, Lcom/transsion/camera/app/ui/BaseAppUI$4;-><init>(Lcom/transsion/camera/app/ui/BaseAppUI;)V

    invoke-virtual {v2, v3, v4}, Lcom/transsion/widgetslib/dialog/OSSnackbar;->setAction(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)Lcom/transsion/widgetslib/dialog/OSSnackbar;

    move-result-object v2

    .line 3909
    invoke-virtual {v2}, Lcom/transsion/widgetslib/dialog/OSSnackbar;->show()V

    const/4 v2, 0x1

    .line 3910
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mIsShoulderTipsShow:Z

    add-int/2addr v0, v2

    .line 3911
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/transsion/camera/utils/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3c
    :goto_3c
    return-void
.end method

.method public showToast(Lcom/transsion/camera/app/common/ui/HintInfo;)V
    .registers 2

    .line 1546
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mToastUIManager:Lcom/transsion/camera/app/ui/manager/ToastUIManager;

    if-eqz p0, :cond_7

    .line 1547
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/manager/ToastUIManager;->showToast(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    :cond_7
    return-void
.end method

.method public showToast(Lcom/transsion/camera/app/common/ui/HintInfo;I)V
    .registers 3

    .line 1553
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mToastUIManager:Lcom/transsion/camera/app/ui/manager/ToastUIManager;

    if-eqz p0, :cond_7

    .line 1554
    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/ui/manager/ToastUIManager;->showToast(Lcom/transsion/camera/app/common/ui/HintInfo;I)V

    :cond_7
    return-void
.end method

.method public showWideCamera()V
    .registers 1

    .line 5173
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mWideCameraUIManager:Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;

    if-eqz p0, :cond_7

    .line 5174
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;->showWideCamera()V

    :cond_7
    return-void
.end method

.method protected shutterUINewStyleSupport()Z
    .registers 1

    .line 551
    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mShutterUINewStyleSupport:Z

    return p0
.end method

.method public shutterUIProcessing()Z
    .registers 2

    .line 2608
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mShutterUIManager:Lcom/transsion/camera/app/ui/manager/ShutterUIManager;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->getCShotButtonViewVisible()I

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mShutterUIManager:Lcom/transsion/camera/app/ui/manager/ShutterUIManager;

    .line 2609
    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->getQVButtonViewVisible()I

    move-result v0

    if-nez v0, :cond_11

    goto :goto_14

    .line 2612
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

    .line 4847
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

    const-string v5, " , diffShutter:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v5, p2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " , anim:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 4850
    iget-boolean v4, v0, Lcom/transsion/camera/app/ui/BaseAppUI;->mIsModePickerSink:Z

    const/4 v6, 0x0

    if-ne v4, v1, :cond_4a

    .line 4851
    iput-boolean v6, v0, Lcom/transsion/camera/app/ui/BaseAppUI;->mUISinkModeChange:Z

    return-void

    .line 4854
    :cond_4a
    iput-boolean v1, v0, Lcom/transsion/camera/app/ui/BaseAppUI;->mIsModePickerSink:Z

    .line 4855
    iget-object v4, v0, Lcom/transsion/camera/app/ui/BaseAppUI;->mModePickerUIManager:Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;

    if-eqz v4, :cond_59

    iget-boolean v7, v0, Lcom/transsion/camera/app/ui/BaseAppUI;->isCapturing:Z

    if-nez v7, :cond_59

    xor-int/lit8 v7, v1, 0x1

    .line 4856
    invoke-virtual {v4, v7}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->setEnable(Z)V

    .line 4859
    :cond_59
    iget-object v4, v0, Lcom/transsion/camera/app/ui/BaseAppUI;->mSinkAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v4, :cond_68

    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v4

    if-eqz v4, :cond_68

    .line 4860
    iget-object v4, v0, Lcom/transsion/camera/app/ui/BaseAppUI;->mSinkAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_68
    xor-int/lit8 v4, v1, 0x1

    if-eqz v1, :cond_71

    .line 4864
    invoke-direct {v0}, Lcom/transsion/camera/app/ui/BaseAppUI;->getTranslateDistance()I

    move-result v7

    goto :goto_72

    :cond_71
    move v7, v6

    .line 4865
    :goto_72
    invoke-direct {v0}, Lcom/transsion/camera/app/ui/BaseAppUI;->getAnimatorDuration()I

    move-result v8

    if-eqz v1, :cond_79

    goto :goto_7a

    :cond_79
    move v5, v6

    .line 4867
    :goto_7a
    iget-boolean v9, v0, Lcom/transsion/camera/app/ui/BaseAppUI;->mUISinkModeChange:Z

    if-eqz v9, :cond_81

    if-nez v1, :cond_81

    move v8, v6

    :cond_81
    const/4 v9, 0x1

    if-eqz v2, :cond_85

    goto :goto_86

    :cond_85
    move v8, v9

    :goto_86
    if-eqz v2, :cond_8b

    const/16 v10, 0x12c

    goto :goto_8c

    :cond_8b
    move v10, v9

    .line 4870
    :goto_8c
    iget-object v11, v0, Lcom/transsion/camera/app/ui/BaseAppUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {v11}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenFormType()I

    move-result v11

    const/4 v12, 0x4

    const/4 v13, 0x5

    if-eq v11, v13, :cond_9e

    iget-object v11, v0, Lcom/transsion/camera/app/ui/BaseAppUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    .line 4871
    invoke-virtual {v11}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenFormType()I

    move-result v11

    if-ne v11, v12, :cond_9f

    :cond_9e
    move v8, v6

    .line 4874
    :cond_9f
    new-instance v11, Landroid/animation/AnimatorSet;

    invoke-direct {v11}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v11, v0, Lcom/transsion/camera/app/ui/BaseAppUI;->mSinkAnimatorSet:Landroid/animation/AnimatorSet;

    .line 4875
    iget-object v11, v0, Lcom/transsion/camera/app/ui/BaseAppUI;->mShutterPanelRootView:Landroid/view/ViewGroup;

    int-to-float v5, v5

    new-array v14, v9, [F

    aput v5, v14, v6

    const-string/jumbo v5, "translationY"

    invoke-static {v11, v5, v14}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v11

    int-to-long v14, v10

    .line 4876
    invoke-virtual {v11, v14, v15}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v10

    .line 4877
    iget-object v11, v0, Lcom/transsion/camera/app/ui/BaseAppUI;->mSinkAnimatorSet:Landroid/animation/AnimatorSet;

    iget-object v14, v0, Lcom/transsion/camera/app/ui/BaseAppUI;->mPathInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v11, v14}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 4878
    iget-object v11, v0, Lcom/transsion/camera/app/ui/BaseAppUI;->mModePickerLayout:Landroid/view/View;

    if-eqz v11, :cond_1cc

    .line 4879
    iget-object v11, v0, Lcom/transsion/camera/app/ui/BaseAppUI;->mModePikerArrowRoot:Landroid/view/View;

    int-to-float v4, v4

    new-array v14, v9, [F

    aput v4, v14, v6

    .line 4880
    const-string v15, "alpha"

    invoke-static {v11, v15, v14}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v11

    move/from16 p2, v12

    int-to-long v12, v8

    invoke-virtual {v11, v12, v13}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v8

    .line 4881
    iget-object v11, v0, Lcom/transsion/camera/app/ui/BaseAppUI;->mMoreModeGuideRightRoot:Landroid/view/View;

    new-array v14, v9, [F

    aput v4, v14, v6

    .line 4882
    invoke-static {v11, v15, v14}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v11

    invoke-virtual {v11, v12, v13}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v11

    .line 4883
    iget-object v14, v0, Lcom/transsion/camera/app/ui/BaseAppUI;->mMoreModeGuideRightRoot:Landroid/view/View;

    int-to-float v7, v7

    move/from16 v16, v6

    new-array v6, v9, [F

    aput v7, v6, v16

    .line 4884
    invoke-static {v14, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    invoke-virtual {v6, v12, v13}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v6

    .line 4885
    iget-object v14, v0, Lcom/transsion/camera/app/ui/BaseAppUI;->mModePickerLayout:Landroid/view/View;

    new-array v1, v9, [F

    aput v4, v1, v16

    .line 4886
    invoke-static {v14, v15, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v1, v12, v13}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 4887
    iget-object v4, v0, Lcom/transsion/camera/app/ui/BaseAppUI;->mModePickerLayout:Landroid/view/View;

    new-array v14, v9, [F

    aput v7, v14, v16

    .line 4888
    invoke-static {v4, v5, v14}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    invoke-virtual {v4, v12, v13}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 4889
    const-string v5, "com.transsion.camera.feature.mode.more.MoreModeEntry"

    iget-object v7, v0, Lcom/transsion/camera/app/ui/BaseAppUI;->mCurrentModeName:Ljava/lang/String;

    invoke-static {v5, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    const/4 v7, 0x3

    const/4 v12, 0x2

    if-eqz v5, :cond_132

    .line 4890
    iget-object v5, v0, Lcom/transsion/camera/app/ui/BaseAppUI;->mSinkAnimatorSet:Landroid/animation/AnimatorSet;

    const/4 v14, 0x5

    new-array v11, v14, [Landroid/animation/Animator;

    aput-object v1, v11, v16

    aput-object v4, v11, v9

    aput-object v10, v11, v12

    aput-object v8, v11, v7

    aput-object v6, v11, p2

    invoke-virtual {v5, v11}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto :goto_147

    .line 4893
    :cond_132
    iget-object v5, v0, Lcom/transsion/camera/app/ui/BaseAppUI;->mSinkAnimatorSet:Landroid/animation/AnimatorSet;

    const/4 v13, 0x6

    new-array v13, v13, [Landroid/animation/Animator;

    aput-object v1, v13, v16

    aput-object v4, v13, v9

    aput-object v10, v13, v12

    aput-object v8, v13, v7

    aput-object v11, v13, p2

    const/4 v14, 0x5

    aput-object v6, v13, v14

    invoke-virtual {v5, v13}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 4896
    :goto_147
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v4

    iget v4, v4, Lcom/transsion/camera/utils/CustomConfigUtil;->mModePickerStyle:I

    if-ne v4, v12, :cond_150

    goto :goto_152

    :cond_150
    move/from16 v9, v16

    :goto_152
    if-eqz p1, :cond_186

    if-eqz v2, :cond_16b

    .line 4899
    iget-object v1, v0, Lcom/transsion/camera/app/ui/BaseAppUI;->mCameraSwitcherUIManager:Lcom/transsion/camera/app/ui/manager/CameraSwitcherUIManager;

    if-eqz v1, :cond_15f

    move/from16 v2, v16

    .line 4900
    invoke-virtual {v1, v2}, Lcom/transsion/camera/app/ui/manager/CameraSwitcherUIManager;->setEnable(Z)V

    .line 4902
    :cond_15f
    iget-object v1, v0, Lcom/transsion/camera/app/ui/BaseAppUI;->mSinkAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v2, Lcom/transsion/camera/app/ui/BaseAppUI$7;

    invoke-direct {v2, v0, v9}, Lcom/transsion/camera/app/ui/BaseAppUI$7;-><init>(Lcom/transsion/camera/app/ui/BaseAppUI;Z)V

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_169
    :goto_169
    const/4 v2, 0x0

    goto :goto_1d6

    .line 4931
    :cond_16b
    const-string v1, "mode picker visibility: sink without anim, set mode picker gone"

    invoke-static {v3, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 4932
    iget-object v1, v0, Lcom/transsion/camera/app/ui/BaseAppUI;->mModePickerLayout:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 4933
    iget-object v1, v0, Lcom/transsion/camera/app/ui/BaseAppUI;->mModePickerUIManager:Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;

    if-eqz v1, :cond_169

    .line 4934
    const-string v1, "more guide visibility: sink without anim, onAnimationEnd set more guide gone"

    invoke-static {v3, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 4935
    iget-object v1, v0, Lcom/transsion/camera/app/ui/BaseAppUI;->mModePickerUIManager:Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;

    invoke-virtual {v1, v2}, Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;->updateGuideRightRootVisibleState(I)V

    goto :goto_169

    :cond_186
    if-eqz v2, :cond_1b2

    .line 4940
    iget-object v2, v0, Lcom/transsion/camera/app/ui/BaseAppUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {v2}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenFormType()I

    move-result v2

    move/from16 v3, p2

    if-eq v2, v3, :cond_1a2

    iget-object v2, v0, Lcom/transsion/camera/app/ui/BaseAppUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    .line 4941
    invoke-virtual {v2}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenFormType()I

    move-result v2

    const/4 v14, 0x5

    if-eq v2, v14, :cond_1a2

    .line 4942
    iget-object v2, v0, Lcom/transsion/camera/app/ui/BaseAppUI;->mSinkAnimatorSet:Landroid/animation/AnimatorSet;

    const-wide/16 v3, 0x64

    invoke-virtual {v2, v3, v4}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    .line 4944
    :cond_1a2
    iget-object v2, v0, Lcom/transsion/camera/app/ui/BaseAppUI;->mAlphaPathInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 4945
    iget-object v1, v0, Lcom/transsion/camera/app/ui/BaseAppUI;->mSinkAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v2, Lcom/transsion/camera/app/ui/BaseAppUI$8;

    invoke-direct {v2, v0}, Lcom/transsion/camera/app/ui/BaseAppUI$8;-><init>(Lcom/transsion/camera/app/ui/BaseAppUI;)V

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_169

    .line 4958
    :cond_1b2
    const-string v1, "mode picker visibility: rise mode picker without anim, set mode picker visible"

    invoke-static {v3, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 4959
    iget-object v1, v0, Lcom/transsion/camera/app/ui/BaseAppUI;->mModePickerLayout:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 4960
    iget-object v1, v0, Lcom/transsion/camera/app/ui/BaseAppUI;->mModePickerUIManager:Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;

    if-eqz v1, :cond_1d6

    .line 4961
    const-string v1, "more guide visibility: rise with anim, onAnimationEnd set more guide visible"

    invoke-static {v3, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 4962
    iget-object v1, v0, Lcom/transsion/camera/app/ui/BaseAppUI;->mModePickerUIManager:Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;

    invoke-virtual {v1, v2}, Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;->updateGuideRightRootVisibleState(I)V

    goto :goto_1d6

    :cond_1cc
    move v2, v6

    .line 4967
    iget-object v1, v0, Lcom/transsion/camera/app/ui/BaseAppUI;->mSinkAnimatorSet:Landroid/animation/AnimatorSet;

    new-array v3, v9, [Landroid/animation/Animator;

    aput-object v10, v3, v2

    invoke-virtual {v1, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 4970
    :cond_1d6
    :goto_1d6
    iget-object v1, v0, Lcom/transsion/camera/app/ui/BaseAppUI;->mSinkAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    .line 4971
    iput-boolean v2, v0, Lcom/transsion/camera/app/ui/BaseAppUI;->mUISinkModeChange:Z

    return-void
.end method

.method public skipInteractiveUpdate(Z)V
    .registers 2

    .line 3341
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mSkipInteractiveUpdate:Z

    return-void
.end method

.method public start()V
    .registers 1

    .line 2074
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mPreviewUIManager:Lcom/transsion/camera/app/ui/manager/PreviewUIManager;

    if-eqz p0, :cond_7

    .line 2075
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/PreviewUIManager;->start()V

    :cond_7
    return-void
.end method

.method public startPopSettingAnimation(ZZ)V
    .registers 3

    .line 940
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mPopSettingUIManager:Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;

    if-eqz p0, :cond_7

    .line 941
    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->startShowPopAnimation(ZZ)V

    :cond_7
    return-void
.end method

.method public stop()V
    .registers 2

    .line 2176
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mScrollConsumer:Lcom/transsion/camera/app/ui/ScrollConsumer;

    if-eqz v0, :cond_7

    .line 2177
    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/ScrollConsumer;->onBackPressed()Z

    .line 2183
    :cond_7
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mPreviewUIManager:Lcom/transsion/camera/app/ui/manager/PreviewUIManager;

    if-eqz v0, :cond_e

    .line 2184
    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/manager/PreviewUIManager;->stop()V

    .line 2186
    :cond_e
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mGoProActivityCoverLayout:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_1c

    .line 2187
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 2188
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mGoProActivityCoverLayout:Landroid/widget/FrameLayout;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_1c
    return-void
.end method

.method public supportExternalStorage()Z
    .registers 1

    .line 4781
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mAppStorageManager:Lcom/transsion/camera/app/common/storage/AppStorageManager;

    if-eqz p0, :cond_9

    .line 4782
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/storage/AppStorageManager;->supportExternalStorage()Z

    move-result p0

    return p0

    :cond_9
    const/4 p0, 0x0

    return p0
.end method

.method public switchAnimEnd()V
    .registers 2

    .line 1092
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mSkipUpdatePopSettingUIList:Z

    if-eqz v0, :cond_a

    .line 1093
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/BaseAppUI;->doUpdatePopSettingUIList()V

    const/4 v0, 0x0

    .line 1094
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mSkipUpdatePopSettingUIList:Z

    :cond_a
    return-void
.end method

.method public switchCamera(Ljava/lang/String;)V
    .registers 3

    .line 4280
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mCameraSwitchListener:Lcom/transsion/camera/app/common/IAppUIListener$ICameraSwitchListener;

    if-eqz p0, :cond_8

    const/4 v0, 0x1

    .line 4281
    invoke-interface {p0, v0, p1}, Lcom/transsion/camera/app/common/IAppUIListener$ICameraSwitchListener;->onCameraSwitch(ZLjava/lang/String;)V

    :cond_8
    return-void
.end method

.method public switchModeByOverlayGuide(Ljava/lang/String;)V
    .registers 2

    .line 6051
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mModePickerUIManager:Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;->onSwitchModeByAppUI(Ljava/lang/String;)V

    return-void
.end method

.method public switchSatCamera(Ljava/lang/String;)V
    .registers 2

    .line 5314
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mSwitchSatCameraListener:Lcom/transsion/camera/app/common/IAppUIListener$ISwitchSatCameraListener;

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/IAppUIListener$ISwitchSatCameraListener;->onSwitchSatCameraListener(Ljava/lang/String;)V

    return-void
.end method

.method public switchSatCamera(Ljava/lang/String;Z)V
    .registers 3

    .line 5319
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mSwitchSatCameraListener:Lcom/transsion/camera/app/common/IAppUIListener$ISwitchSatCameraListener;

    invoke-interface {p0, p1, p2}, Lcom/transsion/camera/app/common/IAppUIListener$ISwitchSatCameraListener;->onSwitchSatCameraListener(Ljava/lang/String;Z)V

    return-void
.end method

.method public switchUnderwaterCamera(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 5329
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mSwitchSatCameraListener:Lcom/transsion/camera/app/common/IAppUIListener$ISwitchSatCameraListener;

    if-eqz v0, :cond_c

    .line 5330
    invoke-interface {v0, p1, p2}, Lcom/transsion/camera/app/common/IAppUIListener$ISwitchSatCameraListener;->onSwitchUnderwaterCameraListener(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_c

    .line 5332
    iput-object p2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mCurrentModeName:Ljava/lang/String;

    :cond_c
    return-void
.end method

.method public switchWideCamera(Ljava/lang/String;)V
    .registers 3

    .line 5309
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mSwitchWideCameraListener:Lcom/transsion/camera/app/common/IAppUIListener$ISwitchWideCameraListener;

    const/4 v0, 0x0

    invoke-interface {p0, p1, v0}, Lcom/transsion/camera/app/common/IAppUIListener$ISwitchWideCameraListener;->onSwitchWideCamera(Ljava/lang/String;Z)V

    return-void
.end method

.method public transitionShutterToRegular()V
    .registers 1

    .line 1393
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mShutterUIManager:Lcom/transsion/camera/app/ui/manager/ShutterUIManager;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->transitionToRegular()V

    return-void
.end method

.method public transitionShutterToSmall()V
    .registers 1

    .line 1388
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mShutterUIManager:Lcom/transsion/camera/app/ui/manager/ShutterUIManager;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->transitionToSmall()V

    return-void
.end method

.method public translateWideCamera(IZ)V
    .registers 3

    .line 5194
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mWideCameraUIManager:Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;

    if-eqz p0, :cond_7

    .line 5195
    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;->translateWideCamera(IZ)V

    :cond_7
    return-void
.end method

.method public translateWideCamera(Z)V
    .registers 2

    .line 5187
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mWideCameraUIManager:Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;

    if-eqz p0, :cond_7

    .line 5188
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;->translateWideCamera(Z)V

    :cond_7
    return-void
.end method

.method public triggerShutterClick(I)V
    .registers 3

    .line 1702
    iput p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mCurShutterPriority:I

    .line 1703
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mShutterUIManager:Lcom/transsion/camera/app/ui/manager/ShutterUIManager;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->triggerShutterClick(II)V

    return-void
.end method

.method public unInit()V
    .registers 4

    .line 1947
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mUIHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1948
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mUIAnimatorController:Lcom/transsion/camera/app/common/IUIAnimatorController;

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IUIAnimatorController;->unregisterOnIdle(Ljava/lang/Runnable;)V

    .line 1949
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mShutterUIManager:Lcom/transsion/camera/app/ui/manager/ShutterUIManager;

    if-eqz v0, :cond_12

    .line 1950
    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->setShutterHook(Lcom/transsion/camera/app/common/IAppUIListener$IShutterResponseListener;)V

    .line 1952
    :cond_12
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mTopBarUIManager:Lcom/transsion/camera/app/ui/manager/TopBarUIManager;

    if-eqz v0, :cond_37

    .line 1953
    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->setItemSelectHook(Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI$ItemSelectHook;)V

    .line 1954
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mTopBarUIManager:Lcom/transsion/camera/app/ui/manager/TopBarUIManager;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->setSettingFragmentListener(Lcom/transsion/camera/app/common/IAppUIListener$IFragmentListener;)V

    .line 1955
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mTopBarUIManager:Lcom/transsion/camera/app/ui/manager/TopBarUIManager;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->setSwitchWideCameraListener(Lcom/transsion/camera/app/common/IAppUIListener$ISwitchWideCameraListener;)V

    .line 1956
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mTopBarUIManager:Lcom/transsion/camera/app/ui/manager/TopBarUIManager;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->setSwitchBlurCameraListener(Lcom/transsion/camera/app/common/IAppUIListener$ISwitchBlurCameraListener;)V

    .line 1957
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mTopBarUIManager:Lcom/transsion/camera/app/ui/manager/TopBarUIManager;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->setSwitchDualCamBWCameraListener(Lcom/transsion/camera/app/common/IAppUIListener$ISwitchDualCamBWCameraListener;)V

    .line 1958
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mTopBarUIManager:Lcom/transsion/camera/app/ui/manager/TopBarUIManager;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->setLottieAnimationListener(Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI$ILottieAnimationListener;)V

    .line 1959
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mTopBarUIManager:Lcom/transsion/camera/app/ui/manager/TopBarUIManager;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/BaseAppUI;->unregisterPreviewRectListener(Lcom/transsion/camera/app/common/IAppUIListener$IPreviewRectListener;)V

    .line 1961
    :cond_37
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mPopSettingUIManager:Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;

    if-eqz v0, :cond_48

    .line 1962
    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->setItemSelectHook(Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI$ItemSelectHook;)V

    .line 1963
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mPopSettingUIManager:Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->setSettingFragmentListener(Lcom/transsion/camera/app/common/IAppUIListener$IFragmentListener;)V

    .line 1964
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mPopSettingUIManager:Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/BaseAppUI;->unregisterPreviewRectListener(Lcom/transsion/camera/app/common/IAppUIListener$IPreviewRectListener;)V

    .line 1966
    :cond_48
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mWideCameraUIManager:Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;

    if-eqz v0, :cond_4f

    .line 1967
    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;->setSwitchWideCameraListener(Lcom/transsion/camera/app/common/IAppUIListener$ISwitchWideCameraListener;)V

    .line 1969
    :cond_4f
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mModePickerUIManager:Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;

    if-eqz v0, :cond_5b

    .line 1970
    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;->setModePickerListener(Lcom/transsion/camera/app/common/IAppUIListener$IModeChangedListener;)V

    .line 1971
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mModePickerUIManager:Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/BaseAppUI;->unregisterPreviewRectListener(Lcom/transsion/camera/app/common/IAppUIListener$IPreviewRectListener;)V

    .line 1973
    :cond_5b
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mCameraSwitcherUIManager:Lcom/transsion/camera/app/ui/manager/CameraSwitcherUIManager;

    if-eqz v0, :cond_62

    .line 1974
    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/manager/CameraSwitcherUIManager;->setCameraSwitchListener(Lcom/transsion/camera/app/common/IAppUIListener$ICameraSwitchListener;)V

    .line 1976
    :cond_62
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mThumbnailUIManager:Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;

    if-eqz v0, :cond_69

    .line 1977
    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;->setThumbnailListener(Lcom/transsion/camera/app/common/IAppUIListener$IThumbnailListener;)V

    .line 1979
    :cond_69
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mPreviewUIManager:Lcom/transsion/camera/app/ui/manager/PreviewUIManager;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/manager/PreviewUIManager;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1980
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mPreviewGestureManager:Lcom/transsion/camera/app/ui/gesture/PreviewGestureManager;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mPreviewUIManager:Lcom/transsion/camera/app/ui/manager/PreviewUIManager;

    invoke-virtual {v0, v2}, Lcom/transsion/camera/app/ui/gesture/PreviewGestureManager;->unregisterGestureListener(Lcom/transsion/camera/app/common/IAppUIListener$IPreviewGestureListener;)V

    .line 1981
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mOverlayUIManager:Lcom/transsion/camera/app/ui/manager/OverlayUIManager;

    if-eqz v0, :cond_83

    .line 1982
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/BaseAppUI;->unregisterPreviewRectListener(Lcom/transsion/camera/app/common/IAppUIListener$IPreviewRectListener;)V

    .line 1983
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mPreviewGestureManager:Lcom/transsion/camera/app/ui/gesture/PreviewGestureManager;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mOverlayUIManager:Lcom/transsion/camera/app/ui/manager/OverlayUIManager;

    invoke-virtual {v0, v2}, Lcom/transsion/camera/app/ui/gesture/PreviewGestureManager;->unregisterGestureListener(Lcom/transsion/camera/app/common/IAppUIListener$IPreviewGestureListener;)V

    .line 1985
    :cond_83
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mHelpGuideUIManager:Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;

    if-eqz v0, :cond_8a

    .line 1986
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/BaseAppUI;->unregisterPreviewRectListener(Lcom/transsion/camera/app/common/IAppUIListener$IPreviewRectListener;)V

    .line 1988
    :cond_8a
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mModePickerUIManager:Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;

    if-eqz v0, :cond_93

    .line 1989
    iget-object v2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mPreviewGestureManager:Lcom/transsion/camera/app/ui/gesture/PreviewGestureManager;

    invoke-virtual {v2, v0}, Lcom/transsion/camera/app/ui/gesture/PreviewGestureManager;->unregisterGestureListener(Lcom/transsion/camera/app/common/IAppUIListener$IPreviewGestureListener;)V

    .line 1991
    :cond_93
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mPopSettingUIManager:Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;

    if-eqz v0, :cond_9c

    .line 1992
    iget-object v2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mPreviewGestureManager:Lcom/transsion/camera/app/ui/gesture/PreviewGestureManager;

    invoke-virtual {v2, v0}, Lcom/transsion/camera/app/ui/gesture/PreviewGestureManager;->unregisterGestureListener(Lcom/transsion/camera/app/common/IAppUIListener$IPreviewGestureListener;)V

    .line 1994
    :cond_9c
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mSellingPointGuideUIManager:Lcom/transsion/camera/app/ui/manager/SellingPointGuideUIManager;

    if-eqz v0, :cond_aa

    .line 1995
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mPopSettingUIManager:Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/BaseAppUI;->unregisterPreviewRectListener(Lcom/transsion/camera/app/common/IAppUIListener$IPreviewRectListener;)V

    .line 1996
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mSellingPointGuideUIManager:Lcom/transsion/camera/app/ui/manager/SellingPointGuideUIManager;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/BaseAppUI;->unregisterPreviewGestureListener(Lcom/transsion/camera/app/common/IAppUIListener$IPreviewGestureListener;)V

    .line 1998
    :cond_aa
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mInteractiveUIManager:Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;

    if-eqz v0, :cond_c0

    .line 1999
    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->setSwitchWideCameraListener(Lcom/transsion/camera/app/common/IAppUIListener$ISwitchWideCameraListener;)V

    .line 2000
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mInteractiveUIManager:Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->setSwitchDualAndMainCameraListener(Lcom/transsion/camera/app/common/IAppUIListener$ISwitchDualAndMainCameraListener;)V

    .line 2001
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mInteractiveUIManager:Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/BaseAppUI;->unregisterPreviewGestureListener(Lcom/transsion/camera/app/common/IAppUIListener$IPreviewGestureListener;)V

    .line 2002
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mInteractiveUIManager:Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/BaseAppUI;->unregisterPreviewRectListener(Lcom/transsion/camera/app/common/IAppUIListener$IPreviewRectListener;)V

    .line 2004
    :cond_c0
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mHintUIManager:Lcom/transsion/camera/app/ui/manager/HintUIManager;

    if-eqz v0, :cond_cc

    .line 2005
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/BaseAppUI;->unregisterPreviewRectListener(Lcom/transsion/camera/app/common/IAppUIListener$IPreviewRectListener;)V

    .line 2006
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mHintUIManager:Lcom/transsion/camera/app/ui/manager/HintUIManager;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/BaseAppUI;->unregisterPreviewGestureListener(Lcom/transsion/camera/app/common/IAppUIListener$IPreviewGestureListener;)V

    .line 2008
    :cond_cc
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mRingScreenLightUIManager:Lcom/transsion/camera/app/ui/manager/RingScreenLightUIManager;

    if-eqz v0, :cond_d3

    .line 2009
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/BaseAppUI;->unregisterPreviewRectListener(Lcom/transsion/camera/app/common/IAppUIListener$IPreviewRectListener;)V

    .line 2011
    :cond_d3
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mSettingFragmentManager:Lcom/transsion/camera/app/ui/manager/SettingFragmentManager;

    if-eqz v0, :cond_e4

    .line 2012
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/BaseAppUI;->unregisterScreenFormListener(Lcom/transsion/camera/app/common/IScreenFormControl;)V

    .line 2013
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mSettingFragmentManager:Lcom/transsion/camera/app/ui/manager/SettingFragmentManager;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/manager/SettingFragmentManager;->setStateListener(Lcom/transsion/camera/app/common/IAppUIListener$IFragmentStateListener;)V

    .line 2014
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mSettingFragmentManager:Lcom/transsion/camera/app/ui/manager/SettingFragmentManager;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/manager/SettingFragmentManager;->unInit()V

    .line 2016
    :cond_e4
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mModeOrderEditorManager:Lcom/transsion/camera/app/ui/manager/ModeOrderEditorManager;

    if-eqz v0, :cond_eb

    .line 2017
    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/manager/ModeOrderEditorManager;->unInit()V

    .line 2019
    :cond_eb
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mGoldWaterMarkManager:Lcom/transsion/camera/app/ui/manager/GoldWaterMarkManager;

    if-eqz v0, :cond_f7

    .line 2020
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/BaseAppUI;->unregisterScreenFormListener(Lcom/transsion/camera/app/common/IScreenFormControl;)V

    .line 2021
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mGoldWaterMarkManager:Lcom/transsion/camera/app/ui/manager/GoldWaterMarkManager;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/manager/GoldWaterMarkManager;->unInit()V

    .line 2023
    :cond_f7
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mProWatermarkManager:Lcom/transsion/camera/app/ui/manager/ProWatermarkManager;

    if-eqz v0, :cond_103

    .line 2024
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/BaseAppUI;->unregisterScreenFormListener(Lcom/transsion/camera/app/common/IScreenFormControl;)V

    .line 2025
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mProWatermarkManager:Lcom/transsion/camera/app/ui/manager/ProWatermarkManager;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/manager/ProWatermarkManager;->unInit()V

    .line 2027
    :cond_103
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mEditWaterMarkManager:Lcom/transsion/camera/app/ui/manager/EditWaterMarkManager;

    if-eqz v0, :cond_10f

    .line 2028
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/BaseAppUI;->unregisterScreenFormListener(Lcom/transsion/camera/app/common/IScreenFormControl;)V

    .line 2029
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mEditWaterMarkManager:Lcom/transsion/camera/app/ui/manager/EditWaterMarkManager;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/manager/EditWaterMarkManager;->unInit()V

    .line 2031
    :cond_10f
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mShutterSoundOptionalManager:Lcom/transsion/camera/app/ui/manager/ShutterSoundOptionalManager;

    if-eqz v0, :cond_11b

    .line 2032
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/BaseAppUI;->unregisterScreenFormListener(Lcom/transsion/camera/app/common/IScreenFormControl;)V

    .line 2033
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mShutterSoundOptionalManager:Lcom/transsion/camera/app/ui/manager/ShutterSoundOptionalManager;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/manager/ShutterSoundOptionalManager;->unInit()V

    .line 2035
    :cond_11b
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mRemoteCaptureManager:Lcom/transsion/camera/app/ui/manager/RemoteCaptureManager;

    if-eqz v0, :cond_127

    .line 2036
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/BaseAppUI;->unregisterScreenFormListener(Lcom/transsion/camera/app/common/IScreenFormControl;)V

    .line 2037
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mRemoteCaptureManager:Lcom/transsion/camera/app/ui/manager/RemoteCaptureManager;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/manager/RemoteCaptureManager;->unInit()V

    .line 2039
    :cond_127
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mTuningFeatureManager:Lcom/transsion/camera/app/ui/manager/TuningFeatureManager;

    if-eqz v0, :cond_133

    .line 2040
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/BaseAppUI;->unregisterScreenFormListener(Lcom/transsion/camera/app/common/IScreenFormControl;)V

    .line 2041
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mTuningFeatureManager:Lcom/transsion/camera/app/ui/manager/TuningFeatureManager;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/manager/TuningFeatureManager;->unInit()V

    .line 2043
    :cond_133
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mUIManagers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_139
    :goto_139
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_14b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/camera/app/common/manager/AbstractViewManager;

    if-eqz v2, :cond_139

    .line 2045
    invoke-virtual {v2}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->unInit()V

    goto :goto_139

    .line 2048
    :cond_14b
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mThermalThrottleUIManager:Lcom/transsion/camera/app/ui/manager/ThermalThrottleUIManager;

    if-eqz v0, :cond_152

    .line 2049
    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/manager/ThermalThrottleUIManager;->unInit()V

    .line 2051
    :cond_152
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mImageryGuideManager:Lcom/transsion/camera/manager/BaseImageryGuideManager;

    if-eqz v0, :cond_159

    .line 2052
    invoke-virtual {v0}, Lcom/transsion/camera/manager/BaseImageryGuideManager;->unInit()V

    .line 2054
    :cond_159
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mUIManagers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2055
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mUILayerRootParentList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2056
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mPreviewGestureScrollAdapter:Lcom/transsion/camera/app/ui/PreviewGestureScrollAdapter;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/BaseAppUI;->unregisterPreviewGestureListener(Lcom/transsion/camera/app/common/IAppUIListener$IPreviewGestureListener;)V

    .line 2057
    iput-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mHintUIManager:Lcom/transsion/camera/app/ui/manager/HintUIManager;

    .line 2058
    iput-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mContinuousShotUIManager:Lcom/transsion/camera/app/ui/manager/ContinuousShotUIManager;

    const/4 v0, 0x0

    .line 2059
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mFrameOnceCome:Z

    .line 2060
    iput-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mSettingUIProvider:Lcom/transsion/camera/app/common/provider/SettingUIProvider;

    .line 2061
    iput-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mSpecifyModePolicy:Lcom/transsion/camera/app/SpecifyModePolicy;

    .line 2062
    iput-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mToastUIManager:Lcom/transsion/camera/app/ui/manager/ToastUIManager;

    .line 2063
    iput-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mFloatingShutterUIManager:Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;

    .line 2064
    iput-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mGoldWaterMarkManager:Lcom/transsion/camera/app/ui/manager/GoldWaterMarkManager;

    .line 2065
    iput-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mProWatermarkManager:Lcom/transsion/camera/app/ui/manager/ProWatermarkManager;

    .line 2066
    iput-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mEditWaterMarkManager:Lcom/transsion/camera/app/ui/manager/EditWaterMarkManager;

    .line 2067
    iput-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mSettingFragmentManager:Lcom/transsion/camera/app/ui/manager/SettingFragmentManager;

    .line 2068
    iput-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mShutterSoundOptionalManager:Lcom/transsion/camera/app/ui/manager/ShutterSoundOptionalManager;

    .line 2069
    iput-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mRemoteCaptureManager:Lcom/transsion/camera/app/ui/manager/RemoteCaptureManager;

    .line 2070
    iput-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mContext:Landroid/content/Context;

    return-void
.end method

.method public unRegisterHintStateListener()V
    .registers 1

    .line 1471
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mHintUIManager:Lcom/transsion/camera/app/ui/manager/HintUIManager;

    if-eqz p0, :cond_7

    .line 1472
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/HintUIManager;->unRegisterHintStateListener()V

    :cond_7
    return-void
.end method

.method public unRegisterShutterListener(Lcom/transsion/camera/app/common/IAppUIListener$IShutterResponseListener;)V
    .registers 2

    .line 1266
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mShutterUIManager:Lcom/transsion/camera/app/ui/manager/ShutterUIManager;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->unRegisterOnShutterListener(Lcom/transsion/camera/app/common/IAppUIListener$IShutterResponseListener;)V

    return-void
.end method

.method public unregisterPreviewGestureListener(Lcom/transsion/camera/app/common/IAppUIListener$IPreviewGestureListener;)V
    .registers 2

    .line 856
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mPreviewGestureManager:Lcom/transsion/camera/app/ui/gesture/PreviewGestureManager;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/gesture/PreviewGestureManager;->unregisterGestureListener(Lcom/transsion/camera/app/common/IAppUIListener$IPreviewGestureListener;)V

    return-void
.end method

.method public unregisterPreviewRectListener(Lcom/transsion/camera/app/common/IAppUIListener$IPreviewRectListener;)V
    .registers 2

    .line 866
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mPreviewUIManager:Lcom/transsion/camera/app/ui/manager/PreviewUIManager;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/manager/PreviewUIManager;->unregisterPreviewRectListener(Lcom/transsion/camera/app/common/IAppUIListener$IPreviewRectListener;)V

    return-void
.end method

.method public unregisterPrivacyCallback(Lcom/transsion/camera/app/common/IPrivacyCallback;)V
    .registers 5

    if-eqz p1, :cond_1e

    .line 6079
    sget-object v0, Lcom/transsion/camera/app/ui/BaseAppUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unregisterPrivacyCallback: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 6080
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

    .line 1715
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mZoomKeyEventCallbacks:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method protected updateBottomBarLayout(IIZ)V
    .registers 5

    .line 4724
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mContext:Landroid/content/Context;

    if-nez p1, :cond_c

    .line 4725
    sget-object p0, Lcom/transsion/camera/app/ui/BaseAppUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "[updateBottomBarLayout] mContext is null, return"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 4729
    :cond_c
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mBottomBarRootView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 p2, 0x0

    .line 4730
    invoke-virtual {p1, p2, p2, p2, p2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    const/4 p3, -0x1

    .line 4731
    iput p3, p1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 4732
    invoke-static {}, Lcom/transsion/camera/utils/FeatureSupport;->isTabletDevice()Z

    move-result p3

    if-eqz p3, :cond_28

    const/16 p3, 0xc8

    .line 4733
    iput p3, p1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 4734
    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    goto :goto_39

    .line 4736
    :cond_28
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/BaseAppUI;->getBottomBarHeight()I

    move-result p3

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/BaseAppUI;->getNavigationBarHeight()I

    move-result v0

    sub-int/2addr p3, v0

    iput p3, p1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 4737
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/BaseAppUI;->getNavigationBarHeight()I

    move-result p3

    iput p3, p1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    :goto_39
    const/16 p3, 0x51

    .line 4739
    iput p3, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 4740
    iget-object p3, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mBottomBarRootView:Landroid/view/View;

    invoke-virtual {p3, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 4741
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/BaseAppUI;->updateShutterPanelRootLayout()V

    .line 4742
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

    .line 1325
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

    .line 1327
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mUIHandler:Landroid/os/Handler;

    const/16 v0, 0x67

    invoke-virtual {p0, v0, p1, p1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public updateContinuousShotLightState(Z)V
    .registers 3

    .line 5464
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mContinuousShotLightResponder:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    if-eqz p0, :cond_d

    .line 5465
    const-string v0, "continuous_shot_light_state"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_d
    return-void
.end method

.method public updateCurrentCamera(Ljava/lang/String;Z)V
    .registers 4

    .line 1205
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mModeOrderEditorManager:Lcom/transsion/camera/app/ui/manager/ModeOrderEditorManager;

    if-eqz v0, :cond_7

    .line 1206
    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/ui/manager/ModeOrderEditorManager;->updateCurrentCamera(Ljava/lang/String;)V

    .line 1208
    :cond_7
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mModePickerUIManager:Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;

    if-eqz v0, :cond_e

    .line 1209
    invoke-virtual {v0, p1, p2}, Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;->updateCurrentCamera(Ljava/lang/String;Z)V

    .line 1211
    :cond_e
    iget-object p2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mPreviewUIManager:Lcom/transsion/camera/app/ui/manager/PreviewUIManager;

    if-eqz p2, :cond_15

    .line 1212
    invoke-virtual {p2, p1}, Lcom/transsion/camera/app/ui/manager/PreviewUIManager;->updateCurrentCamera(Ljava/lang/String;)V

    .line 1214
    :cond_15
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mRingScreenLightUIManager:Lcom/transsion/camera/app/ui/manager/RingScreenLightUIManager;

    if-eqz p0, :cond_1c

    .line 1215
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/manager/RingScreenLightUIManager;->updateCurrentCamera(Ljava/lang/String;)V

    :cond_1c
    return-void
.end method

.method public updateCurrentMode(Ljava/lang/String;)V
    .registers 2

    .line 5715
    iput-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mCurrentModeName:Ljava/lang/String;

    return-void
.end method

.method protected updateCurrentModeFoldFlip(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public updateCurrentModes(Ljava/util/List;)V
    .registers 2

    .line 1221
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mModePickerUIManager:Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;

    if-eqz p0, :cond_7

    .line 1222
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;->updateCurrentModes(Ljava/util/List;)V

    :cond_7
    return-void
.end method

.method public updateCurrentModes(Ljava/util/List;ILjava/lang/String;)V
    .registers 4

    .line 5231
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mModePickerUIManager:Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;

    if-eqz p0, :cond_7

    .line 5232
    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;->updateCurrentModes(Ljava/util/List;ILjava/lang/String;)V

    :cond_7
    return-void
.end method

.method public updateCurrentPopWindowKey(Ljava/lang/String;)V
    .registers 2

    .line 947
    iput-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mCurrentPopupWindowKey:Ljava/lang/String;

    return-void
.end method

.method public updateCustomState(Ljava/lang/String;)V
    .registers 3

    .line 1422
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

    .line 1424
    :cond_14
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mUIHandler:Landroid/os/Handler;

    new-instance v0, Lcom/transsion/camera/app/ui/BaseAppUI$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/ui/BaseAppUI$$ExternalSyntheticLambda2;-><init>(Lcom/transsion/camera/app/ui/BaseAppUI;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 1427
    :cond_1f
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mUIHandler:Landroid/os/Handler;

    new-instance v0, Lcom/transsion/camera/app/ui/BaseAppUI$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/ui/BaseAppUI$$ExternalSyntheticLambda3;-><init>(Lcom/transsion/camera/app/ui/BaseAppUI;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public updateHelpGuide()V
    .registers 3

    .line 1080
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mUIHandler:Landroid/os/Handler;

    const/16 v1, 0x70

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1081
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mUIHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public updateHelpGuideIndex(I)V
    .registers 2

    .line 5415
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mHelpGuideUIManager:Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;

    if-eqz p0, :cond_7

    .line 5416
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;->updateGuideIndex(I)V

    :cond_7
    return-void
.end method

.method public updateIntentFromNegativeScreen(ZZ)V
    .registers 3

    .line 5067
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mIsIntentFromNegativeScreen:Z

    .line 5068
    iput-boolean p2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mIsNegativeScreenAIGCMode:Z

    return-void
.end method

.method public updateItemValue()V
    .registers 1

    .line 5201
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mWideCameraUIManager:Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;

    if-eqz p0, :cond_7

    .line 5202
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;->updateItemValue()V

    :cond_7
    return-void
.end method

.method public updateModeSettingUISpec(Lcom/transsion/camera/app/common/ModeSettingUISpec;Z)V
    .registers 8

    .line 1105
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mContext:Landroid/content/Context;

    if-nez v0, :cond_c

    .line 1106
    sget-object p0, Lcom/transsion/camera/app/ui/BaseAppUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "[updateModeSettingUISpec] mContext is null, return"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 1109
    :cond_c
    iput-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mCurrentModeSettingUISpec:Lcom/transsion/camera/app/common/ModeSettingUISpec;

    .line 1110
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mModePickerUIManager:Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_1a

    .line 1111
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, p2, v1, v1}, Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;->updateCurrentMode(Ljava/lang/String;ZZZ)V

    .line 1113
    :cond_1a
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/transsion/camera/app/ui/BaseAppUI;->updateCurrentModeFoldFlip(Ljava/lang/String;)V

    .line 1114
    iget-object p2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mFloatingShutterUIManager:Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;

    if-eqz p2, :cond_2c

    .line 1115
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;->updateCurrentMode(Ljava/lang/String;)V

    .line 1117
    :cond_2c
    iget-object p2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mMasterGuideUIManager:Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;

    if-eqz p2, :cond_33

    .line 1118
    invoke-virtual {p2, p1}, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->updateModeSettingUISpec(Lcom/transsion/camera/app/common/ModeSettingUISpec;)V

    .line 1120
    :cond_33
    iget-object p2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mOverlayUIManager:Lcom/transsion/camera/app/ui/manager/OverlayUIManager;

    if-eqz p2, :cond_3e

    .line 1121
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/transsion/camera/app/ui/manager/OverlayUIManager;->updateCurrentMode(Ljava/lang/String;)V

    .line 1123
    :cond_3e
    iget-object p2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mShutterUIManager:Lcom/transsion/camera/app/ui/manager/ShutterUIManager;

    if-eqz p2, :cond_49

    .line 1124
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->updateCurrentMode(Ljava/lang/String;)V

    .line 1126
    :cond_49
    iget-object p2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mPopSettingUIManager:Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;

    if-eqz p2, :cond_54

    .line 1127
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->updateCurrentMode(Ljava/lang/String;)V

    .line 1129
    :cond_54
    iget-object p2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mSellingPointGuideUIManager:Lcom/transsion/camera/app/ui/manager/SellingPointGuideUIManager;

    if-eqz p2, :cond_5f

    .line 1130
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/transsion/camera/app/ui/manager/SellingPointGuideUIManager;->updateCurrentMode(Ljava/lang/String;)V

    .line 1132
    :cond_5f
    iget-object p2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mHintUIManager:Lcom/transsion/camera/app/ui/manager/HintUIManager;

    if-eqz p2, :cond_6a

    .line 1133
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/transsion/camera/app/ui/manager/HintUIManager;->updateCurrentMode(Ljava/lang/String;)V

    .line 1135
    :cond_6a
    iget-object p2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mCameraSwitcherUIManager:Lcom/transsion/camera/app/ui/manager/CameraSwitcherUIManager;

    if-eqz p2, :cond_75

    .line 1136
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/transsion/camera/app/ui/manager/CameraSwitcherUIManager;->updateCurrentMode(Ljava/lang/String;)V

    .line 1138
    :cond_75
    iget-object p2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mTopBarUIManager:Lcom/transsion/camera/app/ui/manager/TopBarUIManager;

    if-eqz p2, :cond_80

    .line 1139
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->updateCurrentMode(Ljava/lang/String;)V

    .line 1141
    :cond_80
    iget-object p2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mImageryGuideManager:Lcom/transsion/camera/manager/BaseImageryGuideManager;

    if-eqz p2, :cond_8b

    .line 1142
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/transsion/camera/manager/BaseImageryGuideManager;->updateCurrentMode(Ljava/lang/String;)V

    .line 1145
    :cond_8b
    iget-object p2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mThumbnailUIManager:Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;

    if-eqz p2, :cond_96

    .line 1146
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;->updateCurrentMode(Ljava/lang/String;)V

    .line 1150
    :cond_96
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mCurrentModeSettingUISpec:Lcom/transsion/camera/app/common/ModeSettingUISpec;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->getTopBarSettingUIEntries()[Ljava/lang/String;

    move-result-object p1

    .line 1151
    iget-object p2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mCurrentModeSettingUISpec:Lcom/transsion/camera/app/common/ModeSettingUISpec;

    invoke-virtual {p2}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->getLeftTopBarSettingUIEntries()[Ljava/lang/String;

    move-result-object p2

    .line 1152
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mCurrentModeSettingUISpec:Lcom/transsion/camera/app/common/ModeSettingUISpec;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->getRightTopBarSettingUIEntries()[Ljava/lang/String;

    move-result-object v0

    .line 1153
    iget-object v2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mCurrentModeSettingUISpec:Lcom/transsion/camera/app/common/ModeSettingUISpec;

    invoke-virtual {v2}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->getPopSettingUIEntries()[Ljava/lang/String;

    move-result-object v2

    if-eqz p1, :cond_b3

    .line 1154
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

    .line 1158
    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenFormType()I

    move-result p1

    const/4 p2, 0x7

    if-ne p2, p1, :cond_cc

    goto :goto_d5

    .line 1164
    :cond_cc
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mTopBarUIManager:Lcom/transsion/camera/app/ui/manager/TopBarUIManager;

    if-eqz p1, :cond_e1

    const/4 p2, 0x1

    .line 1165
    invoke-virtual {p1, p2}, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->needShowTopBar(Z)V

    goto :goto_e1

    .line 1159
    :cond_d5
    :goto_d5
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mTopBarUIManager:Lcom/transsion/camera/app/ui/manager/TopBarUIManager;

    if-eqz p1, :cond_e1

    .line 1160
    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->hide()V

    .line 1161
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mTopBarUIManager:Lcom/transsion/camera/app/ui/manager/TopBarUIManager;

    invoke-virtual {p1, v1}, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->needShowTopBar(Z)V

    .line 1169
    :cond_e1
    :goto_e1
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mCurrentModeSettingUISpec:Lcom/transsion/camera/app/common/ModeSettingUISpec;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->getModeGuideLayoutIdList()Ljava/util/List;

    move-result-object p1

    .line 1170
    iget-object p2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mCurrentModeSettingUISpec:Lcom/transsion/camera/app/common/ModeSettingUISpec;

    invoke-virtual {p2}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->getSettingGuideLayoutIdList()[Ljava/lang/String;

    move-result-object p2

    if-eqz p1, :cond_f4

    .line 1171
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_f5

    :cond_f4
    move v0, v1

    :goto_f5
    if-eqz p2, :cond_f8

    .line 1172
    array-length v1, p2

    .line 1173
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

    .line 1177
    :cond_11f
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mHelpGuideUIManager:Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;

    if-eqz p1, :cond_126

    .line 1178
    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;->hide()V

    .line 1181
    :cond_126
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p1

    iget-boolean p1, p1, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportUI5MoreModeStyle:Z

    if-nez p1, :cond_134

    .line 1182
    invoke-static {}, Lcom/transsion/camera/utils/FeatureSupport;->isTabletDevice()Z

    move-result p1

    if-eqz p1, :cond_14c

    :cond_134
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mCameraSwitcherUIManager:Lcom/transsion/camera/app/ui/manager/CameraSwitcherUIManager;

    if-eqz p1, :cond_14c

    .line 1184
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mCurrentModeSettingUISpec:Lcom/transsion/camera/app/common/ModeSettingUISpec;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->isBothCameraSupport()Z

    move-result p1

    if-eqz p1, :cond_145

    .line 1185
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mInZoomChanging:Z

    if-eqz p1, :cond_145

    goto :goto_14c

    .line 1188
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

    .line 2640
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mModePickerUIManager:Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;

    if-eqz p0, :cond_7

    .line 2641
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;->updateMoreEditMode(Z)V

    :cond_7
    return-void
.end method

.method protected varargs updateNavigationBarHeight([Landroid/view/View;)V
    .registers 7

    .line 2829
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    if-nez v0, :cond_5

    goto :goto_16

    .line 2832
    :cond_5
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_8
    if-ge v2, v0, :cond_16

    aget-object v3, p1, v2

    .line 2833
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

    .line 1074
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mUIHandler:Landroid/os/Handler;

    const/16 v1, 0x73

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1075
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mUIHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method protected updateOverlayManagerSettingUIList()V
    .registers 4

    .line 3330
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mRootView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 3331
    sget v1, Lcom/transsion/camera/R$array;->common_setting_ui_entries:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 3332
    iget-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mCurrentModeSettingUISpec:Lcom/transsion/camera/app/common/ModeSettingUISpec;

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->getModeSettingUIEntries()[Ljava/lang/String;

    move-result-object v1

    .line 3333
    iget-object v2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mSettingUIProvider:Lcom/transsion/camera/app/common/provider/SettingUIProvider;

    .line 3334
    invoke-virtual {v2, v1}, Lcom/transsion/camera/app/common/provider/SettingUIProvider;->getCommonSettingUIList([Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 3335
    iget-object v2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mOverlayUIManager:Lcom/transsion/camera/app/ui/manager/OverlayUIManager;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mSettingUIProvider:Lcom/transsion/camera/app/common/provider/SettingUIProvider;

    .line 3336
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/provider/SettingUIProvider;->getCommonSettingUIList([Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    .line 3335
    invoke-virtual {v2, p0, v1}, Lcom/transsion/camera/app/ui/manager/OverlayUIManager;->setSettingUIList(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public updatePopSettingUI()V
    .registers 3

    .line 1086
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mUIHandler:Landroid/os/Handler;

    const/16 v1, 0x72

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1087
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mUIHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public updatePreviewViewType(Lcom/transsion/camera/utils/SettingInfo$PreviewViewType;)V
    .registers 5

    .line 2539
    sget-object v0, Lcom/transsion/camera/app/ui/BaseAppUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updatePreviewViewType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 2541
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mContext:Landroid/content/Context;

    instance-of v1, v0, Lcom/transsion/camera/app/QuickActivity;

    if-eqz v1, :cond_24

    .line 2542
    check-cast v0, Lcom/transsion/camera/app/QuickActivity;

    invoke-virtual {v0}, Lcom/transsion/camera/app/QuickActivity;->getScreenBrightnessManager()Lcom/transsion/camera/manager/ScreenBrightnessManager;

    move-result-object v0

    goto :goto_25

    :cond_24
    const/4 v0, 0x0

    .line 2544
    :goto_25
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mPreviewUIManager:Lcom/transsion/camera/app/ui/manager/PreviewUIManager;

    if-eqz p0, :cond_2c

    .line 2545
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/manager/PreviewUIManager;->updatePreviewViewType(Lcom/transsion/camera/utils/SettingInfo$PreviewViewType;)V

    :cond_2c
    if-nez v0, :cond_2f

    return-void

    .line 2550
    :cond_2f
    sget-object p0, Lcom/transsion/camera/utils/SettingInfo$PreviewViewType;->SURFACE_VIEW:Lcom/transsion/camera/utils/SettingInfo$PreviewViewType;

    if-ne p1, p0, :cond_3d

    const/4 p0, 0x1

    .line 2551
    invoke-virtual {v0, p0}, Lcom/transsion/camera/manager/ScreenBrightnessManager;->needCustomSetBrightness(Z)V

    const/high16 p0, 0x43160000    # 150.0f

    .line 2552
    invoke-virtual {v0, p0}, Lcom/transsion/camera/manager/ScreenBrightnessManager;->updateScreenBrightness(F)V

    return-void

    :cond_3d
    const/4 p0, 0x0

    .line 2554
    invoke-virtual {v0, p0}, Lcom/transsion/camera/manager/ScreenBrightnessManager;->needCustomSetBrightness(Z)V

    .line 2555
    invoke-virtual {v0}, Lcom/transsion/camera/manager/ScreenBrightnessManager;->resetToFollowSystem()V

    return-void
.end method

.method public updateProcessingThumbUri(Landroid/net/Uri;Z)V
    .registers 4

    .line 1012
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mThumbnailUIManager:Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;

    if-eqz v0, :cond_7

    .line 1013
    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;->updateProcessingThumbUri(Landroid/net/Uri;)V

    :cond_7
    if-eqz p2, :cond_e

    const/16 p1, 0x57

    .line 1017
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/BaseAppUI;->notifyRawActionToAppUI(I)V

    :cond_e
    return-void
.end method

.method public updateRingScreenLightState()V
    .registers 3

    .line 5458
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mRingScreenLightResponder:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    if-eqz p0, :cond_a

    .line 5459
    const-string v0, "ring_screen_light_state"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_a
    return-void
.end method

.method protected updateRootLayoutDisplaySize()V
    .registers 2

    .line 1680
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mRootView:Landroid/view/ViewGroup;

    instance-of v0, v0, Lcom/transsion/camera/app/ui/widget/RootLayout;

    if-nez v0, :cond_7

    goto :goto_d

    .line 1683
    :cond_7
    invoke-static {}, Lcom/transsion/camera/utils/ScreenUtils;->getMainScreenSize()Landroid/util/Size;

    move-result-object v0

    if-nez v0, :cond_e

    :goto_d
    return-void

    .line 1687
    :cond_e
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mRootView:Landroid/view/ViewGroup;

    check-cast p0, Lcom/transsion/camera/app/ui/widget/RootLayout;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/widget/RootLayout;->updateDisplaySize(Landroid/util/Size;)V

    return-void
.end method

.method protected updateShutterPanelRootLayout()V
    .registers 4

    .line 4746
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    if-eqz v0, :cond_42

    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mShutterPanelRootView:Landroid/view/ViewGroup;

    if-nez v0, :cond_9

    goto :goto_42

    .line 4750
    :cond_9
    invoke-static {}, Lcom/transsion/camera/utils/FeatureSupport;->isTabletDevice()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_18

    .line 4751
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mShutterPanelRootView:Landroid/view/ViewGroup;

    const/16 v0, 0xc

    invoke-virtual {p0, v1, v1, v1, v0}, Landroid/view/View;->setPadding(IIII)V

    return-void

    .line 4755
    :cond_18
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/BaseAppUI;->getBottomBarHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/BaseAppUI;->getNavigationBarHeight()I

    move-result v2

    sub-int/2addr v0, v2

    .line 4756
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/BaseAppUI;->calculateShutterPanelPaddingHeight(I)I

    move-result v0

    if-ltz v0, :cond_39

    .line 4759
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/BaseAppUI;->getScreenManager()Lcom/transsion/camera/app/common/manager/IScreenManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/transsion/camera/app/common/manager/IScreenManager;->getBottomBarTopPadding()I

    move-result v2

    .line 4760
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mShutterPanelRootView:Landroid/view/ViewGroup;

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    invoke-virtual {p0, v1, v2, v1, v0}, Landroid/view/View;->setPadding(IIII)V

    return-void

    .line 4762
    :cond_39
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mShutterPanelRootView:Landroid/view/ViewGroup;

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    invoke-virtual {p0, v1, v0, v1, v1}, Landroid/view/View;->setPadding(IIII)V

    :cond_42
    :goto_42
    return-void
.end method

.method public updateShutterType(I)V
    .registers 4

    .line 1332
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mUIHandler:Landroid/os/Handler;

    const/16 v1, 0x6d

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1333
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/BaseAppUI;->isMainThread()Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    .line 1334
    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/app/ui/BaseAppUI;->doUpdateShutterType(IZ)V

    return-void

    .line 1336
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

    .line 1342
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mUIHandler:Landroid/os/Handler;

    const/16 v1, 0x6d

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1343
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/BaseAppUI;->isMainThread()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1344
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/ui/BaseAppUI;->doUpdateShutterType(IZ)V

    return-void

    .line 1346
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

    .line 1691
    sget-object v0, Lcom/transsion/camera/app/ui/BaseAppUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateSpecifiedMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1692
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mModePickerUIManager:Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;

    if-eqz v0, :cond_29

    .line 1693
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mWideCameraUIManager:Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;

    if-eqz v0, :cond_22

    .line 1694
    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;->hide()V

    .line 1696
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

    .line 5144
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mPreviewUIManager:Lcom/transsion/camera/app/ui/manager/PreviewUIManager;

    if-eqz p0, :cond_7

    .line 5145
    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/ui/manager/PreviewUIManager;->updateSwitchCameraUI(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    return-void
.end method

.method public updateThumbnail(Landroid/graphics/Bitmap;)V
    .registers 3

    .line 984
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mThumbnailUIManager:Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;

    if-eqz v0, :cond_9

    .line 985
    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mIsThumbnailAnimationNeed:Z

    invoke-virtual {v0, p1, p0}, Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;->updateThumbnail(Landroid/graphics/Bitmap;Z)V

    :cond_9
    return-void
.end method

.method public updateThumbnailUri(Landroid/net/Uri;)V
    .registers 3

    const/4 v0, 0x1

    .line 991
    invoke-virtual {p0, p1, v0}, Lcom/transsion/camera/app/ui/BaseAppUI;->updateThumbnailUri(Landroid/net/Uri;Z)V

    return-void
.end method

.method public updateThumbnailUri(Landroid/net/Uri;Z)V
    .registers 5

    .line 996
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mThumbnailUIManager:Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;

    if-eqz v0, :cond_f

    iget-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mCurrentModeSettingUISpec:Lcom/transsion/camera/app/common/ModeSettingUISpec;

    if-eqz v1, :cond_f

    .line 998
    invoke-virtual {v1}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->isSupportShare()Z

    move-result v1

    .line 997
    invoke-virtual {v0, p1, p2, v1}, Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;->updateThumbnailUri(Landroid/net/Uri;ZZ)V

    :cond_f
    const/16 p1, 0x21

    .line 1000
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/BaseAppUI;->notifyRawActionToAppUI(I)V

    return-void
.end method

.method public updateTopBarUI()V
    .registers 3

    .line 1068
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mUIHandler:Landroid/os/Handler;

    const/16 v1, 0x6c

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1069
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mUIHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public updateTriggerSelfTimerPriority(I)V
    .registers 2

    .line 1372
    iput p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mTriggerSelfTimerPriority:I

    return-void
.end method

.method public updateUIState(IILjava/lang/String;)V
    .registers 7

    .line 1407
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

    .line 1408
    iput p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mCurrentAppUIState:I

    .line 1409
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mModeUIControl:Lcom/transsion/camera/app/common/IAppUIControl$IModeUIControl;

    if-eqz v0, :cond_2b

    .line 1410
    invoke-interface {v0, p1}, Lcom/transsion/camera/app/common/IAppUIControl$IModeUIControl;->updateAppUIState(I)V

    .line 1412
    :cond_2b
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mUIHandler:Landroid/os/Handler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1413
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v2

    if-ne v0, v2, :cond_4a

    .line 1414
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mUIHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1, p1, p2, p3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    return-void

    .line 1416
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

    .line 5151
    invoke-virtual {p0, v0, v1}, Lcom/transsion/camera/app/ui/BaseAppUI;->onModePanelDistanceChanged(FZ)V

    .line 5152
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mWideCameraUIManager:Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;

    if-eqz p0, :cond_d

    .line 5153
    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;->updateWideCameraUI(Ljava/lang/String;Ljava/lang/String;)V

    :cond_d
    return-void
.end method

.method public updateWideCameraUIByMode(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 5159
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mWideCameraUIManager:Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;

    if-eqz p0, :cond_7

    .line 5160
    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;->updateWideCameraUIByMode(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    return-void
.end method

.method public updateZoomInfo(Ljava/util/List;Ljava/lang/String;II)V
    .registers 5

    .line 1100
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mOverlayUIManager:Lcom/transsion/camera/app/ui/manager/OverlayUIManager;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/transsion/camera/app/ui/manager/OverlayUIManager;->updateZoomInfoList(Ljava/util/List;Ljava/lang/String;II)V

    return-void
.end method
