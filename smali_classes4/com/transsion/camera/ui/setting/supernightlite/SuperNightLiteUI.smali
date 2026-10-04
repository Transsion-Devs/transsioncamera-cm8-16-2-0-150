.class public Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;
.super Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI$UIHandler;,
        Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI$NightLiteShutterListener;,
        Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI$SuperNightLiteCallbackImpl;
    }
.end annotation


# static fields
.field private static final CAMERA_LOWLIGHT_CLICK:I

.field private static final COLOR_ANIMATION_MAX_PROGRESS:F = 0.7f

.field private static final NIGHT_LITE_500_MS_DELAY:I = 0x6

.field protected static final NIGHT_LITE_NEXT_CAPTURE_READY:I = 0x4

.field private static final NIGHT_LITE_TIMER_LOADING_END:I = 0x2

.field private static final NIGHT_LITE_TIMER_NUM_UPDATE:I = 0x3

.field private static final NIGHT_LITE_TIMER_UPDATE_SHUTTER_ICON:I = 0x5

.field private static final NIGHT_LITE_VALUE_CHANGED:I = 0x1

.field private static final PATH_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

.field public static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

.field private static final TRANSLATE_DURATION:J = 0x1c2L


# instance fields
.field private mActionSound:Lcom/transsion/camera/utils/sound/IActionSound;

.field private final mActionSoundLock:Ljava/lang/Object;

.field private final mAiRawSprdSupport:Z

.field private final mArgbEvaluator:Landroid/animation/ArgbEvaluator;

.field private mCameraLowlightSampleId:I

.field private mCameraOperateActionControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

.field private final mCaptureHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

.field private mClosedByFlare:Z

.field private mClosedByLivePhoto:Z

.field private mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

.field private mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

.field private mEntryRootView:Landroid/view/ViewGroup;

.field private mEntryView:Landroid/view/View;

.field private mFilterUIShow:Z

.field private mFlareChangedByUserInteraction:Z

.field private mIAppUI:Lcom/transsion/camera/app/common/IAppUI;

.field private mIModuleTransfer:Lcom/transsion/camera/app/common/IModuleTransfer;

.field private final mIconLowLightColor:I

.field private final mIconOffColor:I

.field private final mIconOnColor:I

.field private mImageStyleShow:Z

.field private mIsAutoMacroSwitchShowing:Z

.field private mIsCaptureCancel:Z

.field private mIsCelebritySceneShow:Z

.field private mIsConflictUIShowing:Z

.field private mIsGroupCaptureIconShowing:Z

.field private mIsLowLight:Z

.field private mIsOverlayGuideShow:Z

.field private mIsPMasterBottomUIShow:Z

.field private mIsPause:Z

.field private mIsPopSettingShow:Z

.field private mIsPostAlgoOn:Z

.field private mIsQuickVideoRecording:Z

.field private mIsShowSelfTimer:Z

.field private mIsSuperNightModeOn:Z

.field private mIsUltraHDModeOn:Z

.field private final mLargeModelExtraTime:I

.field private final mLimitStepAnimMinTime:I

.field private mLivePhotoChangedByUserInteraction:Z

.field private mLoadingAnimEnd:Z

.field private mLottieOnCompositionLoadedListener:Lcom/airbnb/lottie/LottieOnCompositionLoadedListener;

.field private mLowLight:Z

.field private mNeedNotifyFlare:Z

.field private mNeedNotifyLivePhoto:Z

.field private mNextCaptureCallBack:Lcom/transsion/camera/feature/setting/supernightlite/SuperNightLite$INextCaptureCallBack;

.field private mNextCaptureReady:Z

.field protected mNightLiteSwitch:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

.field private mProgressCircle:Lcom/transsion/camera/ui/setting/supernightlite/NightLiteProgressView;

.field private mProgressCircleWrap:Landroidx/constraintlayout/widget/ConstraintLayout;

.field private mProgressCircleWrapState:Lcom/transsion/camera/app/common/ui/helper/ViewState;

.field private mProgressRotate:Lcom/transsion/camera/app/ui/widget/RotateLayout;

.field private mProgressTime:J

.field private mProgressTimer:Lcom/transsion/camera/app/ui/widget/RotateTextView;

.field private mQrIconShowing:Z

.field private mSelfTimerCapture:Z

.field private mSelfTimerOn:Z

.field private final mShot2seeCircleAnimTime:I

.field private final mShot2seeCountdownTime:I

.field private final mShot2seeSuperNightModeCountdownTime:I

.field private mShutterClickSampleId:I

.field private mShutterControl:Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;

.field private final mShutterListener:Lcom/transsion/camera/app/common/IAppUIListener$IShutterResponseListener;

.field private mShutterSoundAssetFileName:Ljava/lang/String;

.field private mShutterTime:I

.field private mSoundEnable:Z

.field private mSoundLoaded:Z

.field private mStartTime:J

.field private final mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

.field private mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

.field private mSteadyHintMessage:Ljava/lang/String;

.field private final mSuperAiRawSupport:Z

.field private mSuperNightCaptureBegin:Z

.field private mSuperNightLite:Lcom/transsion/camera/feature/setting/supernightlite/SuperNightLite;

.field private mSuperNightValue:Ljava/lang/String;

.field private final mSwitchClickListener:Landroid/view/View$OnClickListener;

.field private mTimerDelayReady:Z

.field private mTotalDuration:J

.field private final mTurboFusionSupport:Z

.field private mUIHandler:Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI$UIHandler;

.field private mUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

.field private mUIStateControl:Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;

.field private mZoomChanging:Z


# direct methods
.method public static synthetic $r8$lambda$IGcWco6_Dg22OKaWSdFJht8L8fA(Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;ZLcom/airbnb/lottie/value/LottieFrameInfo;)Ljava/lang/Integer;
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->lambda$handleLottieColorUpdate$1(ZLcom/airbnb/lottie/value/LottieFrameInfo;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$RIDl54qYM_kYZdl1FkFofhPXY4U(Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->lambda$setDeviceSetting$5()V

    return-void
.end method

.method public static synthetic $r8$lambda$Ukv38gbkWhR9pp2ZhcqloCPj41o(Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;Lcom/transsion/camera/utils/sound/IActionSound;I)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->lambda$loadActionSound$3(Lcom/transsion/camera/utils/sound/IActionSound;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$aeeMOqj9z5wrxdjOMbCkGUBtDc0(Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;Lcom/transsion/camera/utils/sound/IActionSound;I)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->lambda$loadActionSound$4(Lcom/transsion/camera/utils/sound/IActionSound;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$az4HwxxOIOZcrWMFcEU3oN0_o5g(Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;Lcom/transsion/camera/utils/sound/IActionSound;I)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->lambda$loadActionSound$2(Lcom/transsion/camera/utils/sound/IActionSound;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$rdCEojlVsa-CIBBphGh-wnEXubU(Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;Z)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->lambda$new$6(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$zVeqfXeD3Wtq299dOHwizsI18ik(Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;Ljava/lang/Throwable;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->lambda$createEntryView$0(Ljava/lang/Throwable;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmActionSound(Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;)Lcom/transsion/camera/utils/sound/IActionSound;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mActionSound:Lcom/transsion/camera/utils/sound/IActionSound;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmAiRawSprdSupport(Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mAiRawSprdSupport:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmClosedByFlare(Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mClosedByFlare:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmClosedByLivePhoto(Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mClosedByLivePhoto:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmEntryRootView(Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;)Landroid/view/ViewGroup;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mEntryRootView:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmFilterUIShow(Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mFilterUIShow:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmFlareChangedByUserInteraction(Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mFlareChangedByUserInteraction:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIAppUI(Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;)Lcom/transsion/camera/app/common/IAppUI;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mIAppUI:Lcom/transsion/camera/app/common/IAppUI;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIconLowLightColor(Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mIconLowLightColor:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIconOffColor(Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mIconOffColor:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIconOnColor(Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mIconOnColor:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmImageStyleShow(Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mImageStyleShow:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsCelebritySceneShow(Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mIsCelebritySceneShow:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsOverlayGuideShow(Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mIsOverlayGuideShow:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsPMasterBottomUIShow(Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mIsPMasterBottomUIShow:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsPause(Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mIsPause:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsPopSettingShow(Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mIsPopSettingShow:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsPostAlgoOn(Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mIsPostAlgoOn:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsShowSelfTimer(Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mIsShowSelfTimer:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmLivePhotoChangedByUserInteraction(Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mLivePhotoChangedByUserInteraction:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmLoadingAnimEnd(Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mLoadingAnimEnd:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmLowLight(Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mLowLight:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmNextCaptureReady(Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mNextCaptureReady:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmSelfTimerOn(Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mSelfTimerOn:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmShot2seeCircleAnimTime(Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mShot2seeCircleAnimTime:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmShutterClickSampleId(Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mShutterClickSampleId:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmShutterSoundAssetFileName(Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;)Ljava/lang/String;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mShutterSoundAssetFileName:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmShutterTime(Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mShutterTime:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmSoundEnable(Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mSoundEnable:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmSoundLoaded(Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mSoundLoaded:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmStatusMonitor(Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;)Lcom/transsion/camera/app/common/setting/StatusMonitor;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSuperAiRawSupport(Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mSuperAiRawSupport:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmSuperNightCaptureBegin(Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mSuperNightCaptureBegin:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmSuperNightValue(Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;)Ljava/lang/String;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mSuperNightValue:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTimerDelayReady(Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mTimerDelayReady:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmTurboFusionSupport(Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mTurboFusionSupport:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmUIHandler(Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;)Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI$UIHandler;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mUIHandler:Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI$UIHandler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmUIStateControl(Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;)Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mUIStateControl:Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmZoomChanging(Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mZoomChanging:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmClosedByFlare(Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mClosedByFlare:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmClosedByLivePhoto(Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mClosedByLivePhoto:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmFlareChangedByUserInteraction(Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mFlareChangedByUserInteraction:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIsLowLight(Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mIsLowLight:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIsShowSelfTimer(Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mIsShowSelfTimer:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmLivePhotoChangedByUserInteraction(Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mLivePhotoChangedByUserInteraction:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmLoadingAnimEnd(Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mLoadingAnimEnd:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmNeedNotifyFlare(Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mNeedNotifyFlare:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmNeedNotifyLivePhoto(Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mNeedNotifyLivePhoto:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmNextCaptureReady(Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mNextCaptureReady:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmSelfTimerOn(Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mSelfTimerOn:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmShutterSoundAssetFileName(Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;Ljava/lang/String;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mShutterSoundAssetFileName:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmShutterTime(Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;I)V
    .registers 2

    .line 0
    iput p1, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mShutterTime:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmSoundEnable(Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mSoundEnable:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmSuperNightCaptureBegin(Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mSuperNightCaptureBegin:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmSuperNightValue(Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;Ljava/lang/String;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mSuperNightValue:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmTimerDelayReady(Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mTimerDelayReady:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mchangeSuperNightCaptureStatus(Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;Ljava/lang/String;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->changeSuperNightCaptureStatus(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mloadActionSound(Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;Ljava/lang/String;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->loadActionSound(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mnotifyNightSwitch(Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->notifyNightSwitch()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mreleaseActionSound(Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->releaseActionSound()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mshowEntryView(Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->showEntryView()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mstartNightProcessAnim(Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->startNightProcessAnim()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateLoadingTime(Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->updateLoadingTime()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateSwitchUIStateChanged(Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;Landroid/view/View;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->updateSwitchUIStateChanged(Landroid/view/View;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 4

    .line 73
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "SuperNightLiteUI"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    .line 81
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, 0x3e800000    # 0.25f

    invoke-direct {v0, v3, v1, v1, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->PATH_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    .line 83
    sget v0, Lcom/transsion/camera/R$raw;->camera_lowlight_click:I

    sput v0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->CAMERA_LOWLIGHT_CLICK:I

    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;)V
    .registers 7

    .line 168
    invoke-direct {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;-><init>()V

    .line 84
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mSuperNightCountdown:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_17

    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mSuperAiRawEnable:Z

    if-eqz v0, :cond_17

    move v0, v1

    goto :goto_18

    :cond_17
    move v0, v2

    :goto_18
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mSuperAiRawSupport:Z

    .line 85
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mSuperNightCountdown:Z

    if-eqz v0, :cond_2c

    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mTurboFusionEnable:Z

    if-eqz v0, :cond_2c

    move v0, v1

    goto :goto_2d

    :cond_2c
    move v0, v2

    :goto_2d
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mTurboFusionSupport:Z

    .line 87
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mAiRawSprdSupport:Z

    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mAiRawSprdSupport:Z

    .line 95
    new-instance v0, Lcom/transsion/camera/app/common/ui/HintInfo;

    const/16 v3, 0x67

    invoke-direct {v0, v2, v3}, Lcom/transsion/camera/app/common/ui/HintInfo;-><init>(II)V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mCaptureHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    .line 116
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mLimitStepAnimMinTime:I

    iput v0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mLimitStepAnimMinTime:I

    .line 120
    iput-boolean v2, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mSelfTimerOn:Z

    .line 121
    iput-boolean v2, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mTimerDelayReady:Z

    const-wide/16 v3, 0x0

    .line 124
    iput-wide v3, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mProgressTime:J

    .line 125
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mLoadingAnimEnd:Z

    .line 126
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mIsCaptureCancel:Z

    .line 131
    iput-boolean v2, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mSoundLoaded:Z

    .line 137
    iput-boolean v2, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mZoomChanging:Z

    .line 139
    const-string v0, "sound_effect_default"

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mShutterSoundAssetFileName:Ljava/lang/String;

    .line 140
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mActionSoundLock:Ljava/lang/Object;

    .line 142
    iput-boolean v2, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mQrIconShowing:Z

    .line 143
    iput-boolean v2, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mIsAutoMacroSwitchShowing:Z

    .line 156
    iput-boolean v2, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mIsGroupCaptureIconShowing:Z

    .line 160
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mNeedNotifyLivePhoto:Z

    .line 162
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mNeedNotifyFlare:Z

    .line 245
    new-instance v0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI$1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI$1;-><init>(Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;)V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mSwitchClickListener:Landroid/view/View$OnClickListener;

    .line 372
    new-instance v0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI$2;

    invoke-direct {v0, p0}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI$2;-><init>(Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;)V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mLottieOnCompositionLoadedListener:Lcom/airbnb/lottie/LottieOnCompositionLoadedListener;

    .line 844
    new-instance v0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI$3;

    invoke-direct {v0, p0}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI$3;-><init>(Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;)V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mNextCaptureCallBack:Lcom/transsion/camera/feature/setting/supernightlite/SuperNightLite$INextCaptureCallBack;

    .line 866
    iput-boolean v2, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mSelfTimerCapture:Z

    .line 1107
    new-instance v0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI$4;

    invoke-direct {v0, p0}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI$4;-><init>(Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;)V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    .line 1950
    new-instance v0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;)V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mIModuleTransfer:Lcom/transsion/camera/app/common/IModuleTransfer;

    .line 169
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->createUIHandler()Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI$UIHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mUIHandler:Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI$UIHandler;

    .line 170
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->createNightLiteShutterListener()Lcom/transsion/camera/app/common/IAppUIListener$IShutterResponseListener;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mShutterListener:Lcom/transsion/camera/app/common/IAppUIListener$IShutterResponseListener;

    .line 171
    sget v0, Lcom/transsion/camera/R$integer;->shot_2_see_circle_anim_time:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mShot2seeCircleAnimTime:I

    .line 172
    sget v0, Lcom/transsion/camera/R$integer;->shot_2_see_countdown_time:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mShot2seeCountdownTime:I

    .line 173
    sget v0, Lcom/transsion/camera/R$integer;->shot_2_see_countdown_supernightmode_time:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mShot2seeSuperNightModeCountdownTime:I

    .line 174
    sget v0, Lcom/transsion/camera/R$integer;->super_night_lite_large_model_extra_time:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mLargeModelExtraTime:I

    .line 175
    sget v0, Lcom/transsion/camera/feature/supernight/R$string;->supernight_mode_steady_hint:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mSteadyHintMessage:Ljava/lang/String;

    .line 176
    sget v0, Lcom/transsion/camera/R$color;->super_night_lite_icon_on:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mIconOnColor:I

    .line 177
    sget v0, Lcom/transsion/camera/R$color;->super_night_lite_icon_off:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mIconOffColor:I

    .line 178
    sget v0, Lcom/transsion/camera/R$color;->super_night_lite_icon_low_light:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mIconLowLightColor:I

    .line 179
    new-instance p1, Landroid/animation/ArgbEvaluator;

    invoke-direct {p1}, Landroid/animation/ArgbEvaluator;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mArgbEvaluator:Landroid/animation/ArgbEvaluator;

    .line 180
    sget-object p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, " NightLite UI init"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private changeSuperNightCaptureStatus(Ljava/lang/String;)V
    .registers 5

    .line 796
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    if-eqz p0, :cond_e

    .line 798
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 797
    const-string v2, "key_super_night_capture_status"

    invoke-virtual {p0, v2, p1, v0, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_e
    return-void
.end method

.method private configCapture()V
    .registers 5

    .line 738
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->isNightLiteCaptureEnable()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 741
    :cond_7
    const-string v0, "value_super_night_capture_begin"

    invoke-direct {p0, v0}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->changeSuperNightCaptureStatus(Ljava/lang/String;)V

    .line 742
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mSuperNightLite:Lcom/transsion/camera/feature/setting/supernightlite/SuperNightLite;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/supernightlite/SuperNightLite;->postAlgoOn()Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mIsPostAlgoOn:Z

    .line 744
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->loadingAnimEnable()Z

    move-result v0

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->setSuperNightLiteCountDownAnimaEnabled(Z)V

    .line 746
    sget-object v0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mSoundEnable = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mSoundEnable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "mSoundLoaded = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mSoundLoaded:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 747
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mActionSound:Lcom/transsion/camera/utils/sound/IActionSound;

    if-eqz v0, :cond_57

    iget-boolean v1, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mSoundEnable:Z

    if-eqz v1, :cond_57

    iget-boolean v1, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mSoundLoaded:Z

    if-eqz v1, :cond_57

    .line 749
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->loadingAnimEnable()Z

    move-result v1

    if-eqz v1, :cond_52

    iget v1, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mCameraLowlightSampleId:I

    goto :goto_54

    :cond_52
    iget v1, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mShutterClickSampleId:I

    :goto_54
    invoke-interface {v0, v1}, Lcom/transsion/camera/utils/sound/IActionSound;->play(I)V

    .line 752
    :cond_57
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mIAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/4 v1, 0x1

    if-eqz v0, :cond_63

    .line 753
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mSuperNightCaptureBegin:Z

    const/16 v2, 0xed

    .line 754
    invoke-interface {v0, v2}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 757
    :cond_63
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->loadingAnimEnable()Z

    move-result v0

    if-eqz v0, :cond_70

    .line 758
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->updateShutterUI()V

    .line 759
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->startLoadingAnim()V

    return-void

    .line 761
    :cond_70
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mTimerDelayReady:Z

    .line 762
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mShutterControl:Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;

    const/16 v1, 0x14

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;->updateShutterType(I)V

    .line 763
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mUIStateControl:Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-interface {v0, v2, v1, v3}, Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;->updateUIState(IILjava/lang/String;)V

    .line 765
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->hideEntryView()V

    return-void
.end method

.method private getAnimatingColor(FZ)I
    .registers 6

    if-eqz p2, :cond_5

    .line 350
    iget v0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mIconOffColor:I

    goto :goto_7

    :cond_5
    iget v0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mIconOnColor:I

    :goto_7
    if-eqz p2, :cond_c

    .line 351
    iget p2, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mIconOnColor:I

    goto :goto_15

    :cond_c
    iget-boolean p2, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mLowLight:Z

    if-eqz p2, :cond_13

    iget p2, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mIconLowLightColor:I

    goto :goto_15

    :cond_13
    iget p2, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mIconOffColor:I

    .line 353
    :goto_15
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mNightLiteSwitch:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    if-eqz v1, :cond_24

    .line 354
    invoke-virtual {v1}, Landroid/view/View;->isSelected()Z

    move-result v1

    if-nez v1, :cond_25

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float p1, v1, p1

    goto :goto_25

    :cond_24
    const/4 p1, 0x0

    :cond_25
    :goto_25
    const v1, 0x3f333333    # 0.7f

    cmpg-float v2, p1, v1

    if-gez v2, :cond_42

    div-float/2addr p1, v1

    .line 362
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mArgbEvaluator:Landroid/animation/ArgbEvaluator;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, v0, p2}, Landroid/animation/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_42
    return p2
.end method

.method private getMarginOffsetInExpandForm()I
    .registers 4

    .line 1420
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mIsAutoMacroSwitchShowing:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mQrIconShowing:Z

    if-eqz v0, :cond_a

    return v1

    .line 1423
    :cond_a
    sget-object v0, Lcom/transsion/camera/app_info/AppInfo;->res:Landroid/content/res/Resources;

    sget v2, Lcom/transsion/camera/R$dimen;->super_night_lite_switch_expand_margin_offset:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 1424
    iget-boolean v2, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mIsAutoMacroSwitchShowing:Z

    if-eqz v2, :cond_18

    neg-int p0, v0

    return p0

    .line 1427
    :cond_18
    iget-boolean p0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mQrIconShowing:Z

    if-eqz p0, :cond_1d

    return v0

    :cond_1d
    return v1
.end method

.method private getMarginOffsetInHoverForm()I
    .registers 5

    .line 1406
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mIsAutoMacroSwitchShowing:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mQrIconShowing:Z

    if-eqz v0, :cond_a

    return v1

    .line 1409
    :cond_a
    sget-object v0, Lcom/transsion/camera/app_info/AppInfo;->res:Landroid/content/res/Resources;

    sget v2, Lcom/transsion/camera/R$dimen;->super_night_lite_switch_hover_margin_offset:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 1410
    iget-boolean v2, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mIsAutoMacroSwitchShowing:Z

    const/4 v3, 0x4

    if-eqz v2, :cond_1d

    .line 1411
    iget p0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mScreenFormType:I

    if-ne p0, v3, :cond_25

    neg-int p0, v0

    return p0

    .line 1413
    :cond_1d
    iget-boolean v2, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mQrIconShowing:Z

    if-eqz v2, :cond_28

    .line 1414
    iget p0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mScreenFormType:I

    if-ne p0, v3, :cond_26

    :cond_25
    return v0

    :cond_26
    neg-int p0, v0

    return p0

    :cond_28
    return v1
.end method

.method private getNightLiteSwitchTranslations([I)V
    .registers 6

    .line 1845
    iget v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mScreenFormType:I

    const/4 v1, 0x4

    const/4 v2, 0x0

    if-eq v0, v1, :cond_4e

    const/4 v1, 0x5

    if-ne v0, v1, :cond_a

    goto :goto_4e

    :cond_a
    const/4 v1, 0x1

    if-ne v0, v1, :cond_39

    .line 1849
    iget v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mOrientation:I

    const/16 v3, 0x5a

    if-eq v0, v3, :cond_31

    const/16 v3, 0xb4

    if-eq v0, v3, :cond_2a

    const/16 v3, 0x10e

    if-eq v0, v3, :cond_23

    .line 1860
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->getMarginOffsetInExpandForm()I

    move-result p0

    neg-int p0, p0

    aput p0, p1, v1

    return-void

    .line 1857
    :cond_23
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->getMarginOffsetInExpandForm()I

    move-result p0

    aput p0, p1, v2

    return-void

    .line 1854
    :cond_2a
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->getMarginOffsetInExpandForm()I

    move-result p0

    aput p0, p1, v1

    return-void

    .line 1851
    :cond_31
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->getMarginOffsetInExpandForm()I

    move-result p0

    neg-int p0, p0

    aput p0, p1, v2

    return-void

    .line 1864
    :cond_39
    sget-object p0, Lcom/transsion/camera/app_info/AppInfo;->res:Landroid/content/res/Resources;

    sget v0, Lcom/transsion/camera/R$dimen;->super_night_lite_switch_size:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    sget-object v0, Lcom/transsion/camera/app_info/AppInfo;->res:Landroid/content/res/Resources;

    sget v2, Lcom/transsion/camera/R$dimen;->super_night_lite_switch_margin_offset:I

    .line 1865
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    add-int/2addr p0, v0

    neg-int p0, p0

    .line 1866
    aput p0, p1, v1

    return-void

    .line 1847
    :cond_4e
    :goto_4e
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->getMarginOffsetInHoverForm()I

    move-result p0

    neg-int p0, p0

    aput p0, p1, v2

    return-void
.end method

.method private getShutterBottomHeightInTBHoverProject()I
    .registers 3

    .line 1897
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mIAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/IAppUI;->getScreenFormType()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_10

    const/16 p0, 0x3b

    invoke-static {p0}, Lcom/transsion/camera/utils/UIUtils;->dp(I)I

    move-result p0

    return p0

    :cond_10
    const/16 v0, 0x46

    .line 1898
    invoke-static {v0}, Lcom/transsion/camera/utils/UIUtils;->dp(I)I

    move-result v0

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mIAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getNavigationBarHeight()I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method private getShutterTypeSelftimerOff()I
    .registers 1

    const/16 p0, 0x14

    return p0
.end method

.method private handleAnimationState(Landroid/view/View;Z)V
    .registers 3

    .line 276
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result p0

    if-nez p0, :cond_7

    return-void

    .line 280
    :cond_7
    check-cast p1, Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz p2, :cond_e

    const/high16 p0, -0x40800000    # -1.0f

    goto :goto_10

    :cond_e
    const/high16 p0, 0x3f800000    # 1.0f

    .line 281
    :goto_10
    invoke-virtual {p1, p0}, Lcom/airbnb/lottie/LottieAnimationView;->setSpeed(F)V

    .line 282
    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    return-void
.end method

.method private handleFlareNotification(Z)V
    .registers 3

    .line 317
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mIsFlareCaptureSupport:Z

    if-nez v0, :cond_9

    goto :goto_23

    .line 321
    :cond_9
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mNeedNotifyFlare:Z

    if-eqz v0, :cond_24

    .line 322
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mSuperNightCaptureBegin:Z

    if-nez v0, :cond_23

    if-eqz p1, :cond_16

    .line 324
    const-string p1, "value_super_night_lite_switch_on"

    goto :goto_18

    .line 325
    :cond_16
    const-string p1, "value_super_night_lite_switch_off"

    .line 326
    :goto_18
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v0, "key_super_night_lite_switch_state"

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p0

    invoke-virtual {p0, v0, p1}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_23
    :goto_23
    return-void

    :cond_24
    const/4 p1, 0x1

    .line 329
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mNeedNotifyFlare:Z

    return-void
.end method

.method private handleLivePhotoNotification(Z)V
    .registers 3

    .line 300
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mLivePhotoSupport:Z

    if-nez v0, :cond_9

    goto :goto_23

    .line 304
    :cond_9
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mNeedNotifyLivePhoto:Z

    if-eqz v0, :cond_24

    .line 305
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mSuperNightCaptureBegin:Z

    if-nez v0, :cond_23

    if-eqz p1, :cond_16

    .line 307
    const-string p1, "value_super_night_lite_switch_on"

    goto :goto_18

    .line 308
    :cond_16
    const-string p1, "value_super_night_lite_switch_off"

    .line 309
    :goto_18
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v0, "key_super_night_lite_switch_state"

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p0

    invoke-virtual {p0, v0, p1}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_23
    :goto_23
    return-void

    :cond_24
    const/4 p1, 0x1

    .line 312
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mNeedNotifyLivePhoto:Z

    return-void
.end method

.method private handleLottieColorUpdate(Z)V
    .registers 7

    .line 334
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_44

    .line 338
    :cond_7
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mNightLiteSwitch:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    new-instance v1, Lcom/airbnb/lottie/model/KeyPath;

    const-string v2, "**"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/airbnb/lottie/model/KeyPath;-><init>([Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->resolveKeyPath(Lcom/airbnb/lottie/model/KeyPath;)Ljava/util/List;

    move-result-object v0

    .line 339
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_44

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/airbnb/lottie/model/KeyPath;

    .line 340
    invoke-virtual {v1}, Lcom/airbnb/lottie/model/KeyPath;->keysToString()Ljava/lang/String;

    move-result-object v2

    .line 341
    const-string v3, "icon"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_37

    sget-object v2, Lcom/airbnb/lottie/LottieProperty;->COLOR:Ljava/lang/Integer;

    goto :goto_39

    :cond_37
    sget-object v2, Lcom/airbnb/lottie/LottieProperty;->STROKE_COLOR:Ljava/lang/Integer;

    .line 342
    :goto_39
    iget-object v3, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mNightLiteSwitch:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    new-instance v4, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI$$ExternalSyntheticLambda2;

    invoke-direct {v4, p0, p1}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI$$ExternalSyntheticLambda2;-><init>(Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;Z)V

    invoke-virtual {v3, v1, v2, v4}, Lcom/airbnb/lottie/LottieAnimationView;->addValueCallback(Lcom/airbnb/lottie/model/KeyPath;Ljava/lang/Object;Lcom/airbnb/lottie/value/SimpleLottieValueCallback;)V

    goto :goto_1c

    :cond_44
    :goto_44
    return-void
.end method

.method private handleStatusMonitorNotification(Z)V
    .registers 5

    .line 286
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-nez v0, :cond_5

    return-void

    :cond_5
    if-eqz p1, :cond_a

    .line 291
    const-string v1, "value_super_night_lite_switch_on"

    goto :goto_c

    .line 292
    :cond_a
    const-string v1, "value_super_night_lite_switch_off"

    .line 293
    :goto_c
    const-string v2, "key_super_night_lite_switch"

    invoke-virtual {v0, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object v0

    invoke-virtual {v0, v2, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    .line 295
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->handleLivePhotoNotification(Z)V

    .line 296
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->handleFlareNotification(Z)V

    return-void
.end method

.method private handleSwitchOnState()V
    .registers 3

    .line 1233
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mUIStateControl:Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;->getCurrentUIState()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_a

    return-void

    .line 1236
    :cond_a
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mNightLiteSwitch:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    invoke-virtual {v0}, Landroid/view/View;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1237
    const-string v0, "value_super_night_lite_switch_off"

    goto :goto_17

    :cond_15
    const-string v0, "value_super_night_lite_switch_on"

    .line 1238
    :goto_17
    invoke-direct {p0, v0}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->notifyStatusMonitor(Ljava/lang/String;)V

    return-void
.end method

.method private hideCapturingHint()V
    .registers 3

    .line 791
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mCaptureHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ui/HintInfo;->setMessage(Ljava/lang/String;)V

    .line 792
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mIAppUI:Lcom/transsion/camera/app/common/IAppUI;

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mCaptureHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->hideHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    return-void
.end method

.method private hideLoadingView()V
    .registers 4

    .line 503
    sget-object v0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, " hideLoadingView"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 504
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mProgressCircle:Lcom/transsion/camera/ui/setting/supernightlite/NightLiteProgressView;

    if-eqz v0, :cond_15

    const/16 v1, 0x8

    .line 505
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 506
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mProgressTimer:Lcom/transsion/camera/app/ui/widget/RotateTextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 508
    :cond_15
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mProgressCircle:Lcom/transsion/camera/ui/setting/supernightlite/NightLiteProgressView;

    iget-wide v1, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mProgressTime:J

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/ui/setting/supernightlite/NightLiteProgressView;->updateProgress(J)V

    const/4 v0, 0x1

    .line 509
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mLoadingAnimEnd:Z

    .line 510
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->hideCapturingHint()V

    return-void
.end method

.method private initLoadingAnim()V
    .registers 5

    .line 479
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mIsPostAlgoOn:Z

    if-nez v0, :cond_8

    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mAiRawSprdSupport:Z

    if-eqz v0, :cond_1e

    .line 480
    :cond_8
    iget-wide v0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mTotalDuration:J

    iget-boolean v2, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mIsSuperNightModeOn:Z

    if-eqz v2, :cond_18

    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->isFacingBack()Z

    move-result v2

    if-eqz v2, :cond_18

    .line 481
    iget v2, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mShot2seeSuperNightModeCountdownTime:I

    :goto_16
    int-to-long v2, v2

    goto :goto_1b

    :cond_18
    iget v2, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mShot2seeCountdownTime:I

    goto :goto_16

    :goto_1b
    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mTotalDuration:J

    .line 483
    :cond_1e
    iget-wide v0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mTotalDuration:J

    iget v2, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mLargeModelExtraTime:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mTotalDuration:J

    .line 484
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mProgressCircle:Lcom/transsion/camera/ui/setting/supernightlite/NightLiteProgressView;

    invoke-virtual {v2, v0, v1}, Lcom/transsion/camera/ui/setting/supernightlite/NightLiteProgressView;->updateTotalDuration(J)V

    .line 485
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mProgressCircle:Lcom/transsion/camera/ui/setting/supernightlite/NightLiteProgressView;

    iget-wide v1, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mTotalDuration:J

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/ui/setting/supernightlite/NightLiteProgressView;->updateProgress(J)V

    const/4 v0, 0x0

    .line 486
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mLoadingAnimEnd:Z

    .line 487
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mStartTime:J

    return-void
.end method

.method private isFacingBack()Z
    .registers 1

    .line 1969
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/setting/ISetting;->getCurrentCameraId()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/transsion/camera/adapter/CameraInfoUtil;->isCameraFacingBack(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private isFlashOn()Z
    .registers 2

    .line 1465
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    const-string v0, "key_flash_facade"

    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/setting/ISetting;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1466
    const-string v0, "on"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    const-string v0, "auto"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

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

.method private isNearByIconShowing()Z
    .registers 5

    .line 1325
    iget v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mScreenFormType:I

    const/4 v1, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_18

    const/4 v1, 0x5

    if-eq v0, v1, :cond_18

    if-ne v0, v3, :cond_d

    goto :goto_18

    .line 1330
    :cond_d
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mQrIconShowing:Z

    if-nez v0, :cond_17

    iget-boolean p0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mIsGroupCaptureIconShowing:Z

    if-eqz p0, :cond_16

    goto :goto_17

    :cond_16
    return v2

    :cond_17
    :goto_17
    return v3

    .line 1328
    :cond_18
    :goto_18
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mQrIconShowing:Z

    if-nez v0, :cond_22

    iget-boolean p0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mIsAutoMacroSwitchShowing:Z

    if-eqz p0, :cond_21

    goto :goto_22

    :cond_21
    return v2

    :cond_22
    :goto_22
    return v3
.end method

.method private synthetic lambda$createEntryView$0(Ljava/lang/Throwable;)V
    .registers 4

    .line 213
    sget-object v0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "super_night_lite_animation.json load failed "

    invoke-static {v0, v1, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 214
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mNightLiteSwitch:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    iget-boolean p0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mLowLight:Z

    if-eqz p0, :cond_10

    sget p0, Lcom/transsion/camera/R$drawable;->super_night_lite_button_black:I

    goto :goto_12

    :cond_10
    sget p0, Lcom/transsion/camera/R$drawable;->super_night_lite_button:I

    :goto_12
    invoke-virtual {p1, p0}, Lcom/airbnb/lottie/LottieAnimationView;->setImageResource(I)V

    return-void
.end method

.method private synthetic lambda$handleLottieColorUpdate$1(ZLcom/airbnb/lottie/value/LottieFrameInfo;)Ljava/lang/Integer;
    .registers 3

    .line 345
    invoke-virtual {p2}, Lcom/airbnb/lottie/value/LottieFrameInfo;->getOverallProgress()F

    move-result p2

    invoke-direct {p0, p2, p1}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->getAnimatingColor(FZ)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$loadActionSound$2(Lcom/transsion/camera/utils/sound/IActionSound;I)V
    .registers 5

    .line 1053
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mActionSoundLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1054
    :try_start_3
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mActionSound:Lcom/transsion/camera/utils/sound/IActionSound;

    if-nez v1, :cond_d

    .line 1055
    invoke-interface {p1, p2}, Lcom/transsion/camera/utils/sound/IActionSound;->unload(I)V

    goto :goto_f

    :catchall_b
    move-exception p0

    goto :goto_11

    .line 1057
    :cond_d
    iput p2, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mShutterClickSampleId:I

    .line 1059
    :goto_f
    monitor-exit v0

    return-void

    :goto_11
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_b

    throw p0
.end method

.method private synthetic lambda$loadActionSound$3(Lcom/transsion/camera/utils/sound/IActionSound;I)V
    .registers 5

    .line 1063
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mActionSoundLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1064
    :try_start_3
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mActionSound:Lcom/transsion/camera/utils/sound/IActionSound;

    if-nez v1, :cond_d

    .line 1065
    invoke-interface {p1, p2}, Lcom/transsion/camera/utils/sound/IActionSound;->unload(I)V

    goto :goto_f

    :catchall_b
    move-exception p0

    goto :goto_11

    .line 1067
    :cond_d
    iput p2, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mShutterClickSampleId:I

    .line 1069
    :goto_f
    monitor-exit v0

    return-void

    :goto_11
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_b

    throw p0
.end method

.method private synthetic lambda$loadActionSound$4(Lcom/transsion/camera/utils/sound/IActionSound;I)V
    .registers 5

    .line 1074
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mActionSoundLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1075
    :try_start_3
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mActionSound:Lcom/transsion/camera/utils/sound/IActionSound;

    if-nez v1, :cond_d

    .line 1076
    invoke-interface {p1, p2}, Lcom/transsion/camera/utils/sound/IActionSound;->unload(I)V

    goto :goto_f

    :catchall_b
    move-exception p0

    goto :goto_11

    .line 1078
    :cond_d
    iput p2, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mCameraLowlightSampleId:I

    .line 1080
    :goto_f
    monitor-exit v0

    return-void

    :goto_11
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_b

    throw p0
.end method

.method private synthetic lambda$new$6(Z)V
    .registers 2

    .line 1950
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->updateRingScreenLight(Z)V

    return-void
.end method

.method private synthetic lambda$setDeviceSetting$5()V
    .registers 2

    .line 1459
    const-string v0, "sound_effect_default"

    invoke-direct {p0, v0}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->loadActionSound(Ljava/lang/String;)V

    return-void
.end method

.method private loadActionSound(Ljava/lang/String;)V
    .registers 4

    .line 1042
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mActionSound:Lcom/transsion/camera/utils/sound/IActionSound;

    if-nez v0, :cond_e

    .line 1043
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mIAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz v0, :cond_e

    .line 1044
    invoke-interface {v0}, Lcom/transsion/camera/app/common/IAppUI;->getActionSound()Lcom/transsion/camera/utils/sound/IActionSound;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mActionSound:Lcom/transsion/camera/utils/sound/IActionSound;

    .line 1047
    :cond_e
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mActionSound:Lcom/transsion/camera/utils/sound/IActionSound;

    if-eqz v0, :cond_4a

    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mSoundLoaded:Z

    if-eqz v0, :cond_17

    goto :goto_4a

    .line 1051
    :cond_17
    const-string v0, "sound_effect_default"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2a

    .line 1052
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mActionSound:Lcom/transsion/camera/utils/sound/IActionSound;

    new-instance v1, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI$$ExternalSyntheticLambda4;-><init>(Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;)V

    invoke-interface {v0, p1, v1}, Lcom/transsion/camera/utils/sound/IActionSound;->load(Ljava/lang/String;Lcom/transsion/camera/utils/sound/IActionSound$SoundCallback;)V

    goto :goto_36

    .line 1062
    :cond_2a
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mActionSound:Lcom/transsion/camera/utils/sound/IActionSound;

    new-instance v0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI$$ExternalSyntheticLambda5;-><init>(Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;)V

    const-string v1, "camera_click.ogg"

    invoke-interface {p1, v1, v0}, Lcom/transsion/camera/utils/sound/IActionSound;->load(Ljava/lang/String;Lcom/transsion/camera/utils/sound/IActionSound$SoundCallback;)V

    .line 1072
    :goto_36
    iget p1, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mCameraLowlightSampleId:I

    sget v0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->CAMERA_LOWLIGHT_CLICK:I

    if-eq p1, v0, :cond_46

    .line 1073
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mActionSound:Lcom/transsion/camera/utils/sound/IActionSound;

    new-instance v1, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI$$ExternalSyntheticLambda6;-><init>(Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;)V

    invoke-interface {p1, v0, v1}, Lcom/transsion/camera/utils/sound/IActionSound;->load(ILcom/transsion/camera/utils/sound/IActionSound$SoundCallback;)V

    :cond_46
    const/4 p1, 0x1

    .line 1083
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mSoundLoaded:Z

    return-void

    .line 1048
    :cond_4a
    :goto_4a
    sget-object p1, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[QuickCapture] loadQCSound sound load: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mSoundLoaded:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private loadingAnimEnable()Z
    .registers 4

    .line 719
    sget-object v0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mIsLowLight = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mIsLowLight:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " isFlashOn = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->isFlashOn()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 720
    iget v0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mShutterTime:I

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mTotalDuration:J

    .line 721
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mIsLowLight:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_38

    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->isFlashOn()Z

    move-result v0

    if-eqz v0, :cond_38

    .line 722
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->showCapturingHint()V

    return v1

    .line 725
    :cond_38
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-eqz v0, :cond_4a

    .line 726
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->superNightLiteOn()Z

    move-result v0

    if-eqz v0, :cond_4a

    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->minLoadingTime()Z

    move-result p0

    if-eqz p0, :cond_4a

    const/4 p0, 0x1

    return p0

    :cond_4a
    return v1
.end method

.method private minLoadingTime()Z
    .registers 5

    .line 715
    iget-wide v0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mTotalDuration:J

    iget p0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mLimitStepAnimMinTime:I

    int-to-long v2, p0

    cmp-long p0, v0, v2

    if-ltz p0, :cond_b

    const/4 p0, 0x1

    return p0

    :cond_b
    const/4 p0, 0x0

    return p0
.end method

.method private notifyNightSwitch()V
    .registers 4

    .line 693
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mNightLiteSwitch:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    if-eqz v0, :cond_57

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz v0, :cond_57

    .line 694
    sget-object v0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " nightSwitch is selected = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mNightLiteSwitch:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    invoke-virtual {v2}, Landroid/view/View;->isSelected()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " ,mIsSuperNightModeOn :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mIsSuperNightModeOn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 695
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mNightLiteSwitch:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    invoke-virtual {v0}, Landroid/view/View;->isSelected()Z

    move-result v0

    const-string v1, "key_super_night_lite_switch"

    if-eqz v0, :cond_4c

    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mIsSuperNightModeOn:Z

    if-nez v0, :cond_4c

    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mIsUltraHDModeOn:Z

    if-nez v0, :cond_4c

    .line 696
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    invoke-virtual {p0, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p0

    const-string v0, "value_super_night_lite_switch_off"

    invoke-virtual {p0, v1, v0}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    .line 699
    :cond_4c
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    invoke-virtual {p0, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p0

    const-string v0, "value_super_night_lite_switch_on"

    invoke-virtual {p0, v1, v0}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_57
    return-void
.end method

.method private notifyStatusMonitor(Ljava/lang/String;)V
    .registers 3

    .line 1242
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz v0, :cond_11

    iget-boolean p0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mSuperNightCaptureBegin:Z

    if-nez p0, :cond_11

    .line 1243
    const-string p0, "key_super_night_lite_switch_state"

    invoke-virtual {v0, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object v0

    .line 1244
    invoke-virtual {v0, p0, p1}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_11
    return-void
.end method

.method private releaseActionSound()V
    .registers 4

    .line 1222
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mActionSoundLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1223
    :try_start_3
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mActionSound:Lcom/transsion/camera/utils/sound/IActionSound;

    if-eqz v1, :cond_1a

    iget-boolean v2, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mSoundLoaded:Z

    if-eqz v2, :cond_1a

    .line 1224
    iget v2, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mShutterClickSampleId:I

    invoke-interface {v1, v2}, Lcom/transsion/camera/utils/sound/IActionSound;->unload(I)V

    .line 1225
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mActionSound:Lcom/transsion/camera/utils/sound/IActionSound;

    iget v2, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mCameraLowlightSampleId:I

    invoke-interface {v1, v2}, Lcom/transsion/camera/utils/sound/IActionSound;->unload(I)V

    goto :goto_1a

    :catchall_18
    move-exception p0

    goto :goto_22

    :cond_1a
    :goto_1a
    const/4 v1, 0x0

    .line 1227
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mSoundLoaded:Z

    const/4 v1, 0x0

    .line 1228
    iput-object v1, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mActionSound:Lcom/transsion/camera/utils/sound/IActionSound;

    .line 1229
    monitor-exit v0

    return-void

    :goto_22
    monitor-exit v0
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_18

    throw p0
.end method

.method protected static resetLayoutParams(Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;)V
    .registers 2

    const/4 v0, -0x1

    .line 1504
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToTop:I

    .line 1505
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->leftToRight:I

    .line 1506
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToBottom:I

    .line 1507
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToTop:I

    .line 1508
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->rightToLeft:I

    .line 1509
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToBottom:I

    .line 1510
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->rightToRight:I

    .line 1511
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->leftToLeft:I

    const/4 v0, 0x0

    .line 1513
    iput v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 1514
    iput v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 1515
    iput v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 1516
    iput v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    return-void
.end method

.method private restoreNightSwitch()V
    .registers 3

    .line 679
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mNightLiteSwitch:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    if-eqz v0, :cond_1b

    .line 680
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 681
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mNightLiteSwitch:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setProgress(F)V

    .line 682
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mNightLiteSwitch:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    invoke-direct {p0, v0}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->switchIconColor(Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;)V

    .line 684
    :cond_15
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mNightLiteSwitch:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 686
    :cond_1b
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz p0, :cond_2a

    .line 687
    const-string v0, "key_super_night_lite_switch"

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p0

    const-string v1, "value_super_night_lite_switch_on"

    invoke-virtual {p0, v0, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_2a
    return-void
.end method

.method private shouldHandleClick(Landroid/view/View;)Z
    .registers 2

    .line 268
    check-cast p1, Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->isAnimating()Z

    move-result p0

    if-eqz p0, :cond_11

    .line 269
    sget-object p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "shouldHandleClick, return for animating"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :cond_11
    const/4 p0, 0x1

    return p0
.end method

.method private showCapturingHint()V
    .registers 3

    .line 784
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mCaptureHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mSteadyHintMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ui/HintInfo;->setMessage(Ljava/lang/String;)V

    .line 785
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mCaptureHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ui/HintInfo;->enableBackground(Z)V

    .line 786
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mCaptureHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ui/HintInfo;->setHighlight(Z)V

    .line 787
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mIAppUI:Lcom/transsion/camera/app/common/IAppUI;

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mCaptureHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->showHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    return-void
.end method

.method private showEntryView()V
    .registers 4

    .line 421
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mNightLiteSwitch:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    if-eqz v0, :cond_48

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_48

    .line 422
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mCameraOperateActionControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    if-eqz v0, :cond_13

    const/16 v1, 0x127

    .line 423
    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    :cond_13
    const/4 v0, 0x7

    .line 425
    iget v1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mScreenFormType:I

    if-eq v0, v1, :cond_48

    .line 426
    sget-object v0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showEntryView: translationX = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mNightLiteSwitch:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    invoke-virtual {v2}, Landroid/view/View;->getTranslationX()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", translationY = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mNightLiteSwitch:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    invoke-virtual {v2}, Landroid/view/View;->getTranslationY()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 427
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mNightLiteSwitch:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_48
    return-void
.end method

.method private showLoadingView()V
    .registers 3

    .line 491
    sget-object v0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, " showLoadingView"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 492
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mEntryRootView:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    if-eqz v0, :cond_f

    .line 493
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 495
    :cond_f
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mProgressCircle:Lcom/transsion/camera/ui/setting/supernightlite/NightLiteProgressView;

    if-eqz v0, :cond_1b

    .line 496
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 497
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mProgressTimer:Lcom/transsion/camera/app/ui/widget/RotateTextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 499
    :cond_1b
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->hideEntryView()V

    return-void
.end method

.method private startLoadingAnim()V
    .registers 3

    .line 445
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->minLoadingTime()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 446
    :cond_7
    sget-object v0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, " start loading anim"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 447
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->showLoadingView()V

    const/4 v0, 0x0

    .line 448
    invoke-virtual {p0, v0}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->setEnable(Z)V

    .line 449
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->initLoadingAnim()V

    .line 450
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->updateLoadingTime()V

    return-void
.end method

.method private startNightProcessAnim()V
    .registers 5

    const/4 v0, 0x1

    .line 514
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mLoadingAnimEnd:Z

    .line 515
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mUIStateControl:Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;

    invoke-interface {v1}, Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;->getCurrentUIState()I

    move-result v1

    if-eq v1, v0, :cond_27

    .line 516
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mShutterControl:Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;

    iget-boolean v1, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mIsSuperNightModeOn:Z

    const/16 v2, 0x14

    const/16 v3, 0x1d

    if-eqz v1, :cond_17

    move v1, v3

    goto :goto_18

    :cond_17
    move v1, v2

    :goto_18
    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;->updateShutterType(I)V

    .line 520
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mUIStateControl:Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;

    iget-boolean p0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mIsSuperNightModeOn:Z

    if-eqz p0, :cond_22

    move v2, v3

    :cond_22
    const/4 p0, 0x0

    const/4 v1, 0x2

    invoke-interface {v0, v1, v2, p0}, Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;->updateUIState(IILjava/lang/String;)V

    :cond_27
    return-void
.end method

.method private switchIconColor(Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;)V
    .registers 2

    .line 369
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mLottieOnCompositionLoadedListener:Lcom/airbnb/lottie/LottieOnCompositionLoadedListener;

    invoke-virtual {p1, p0}, Lcom/airbnb/lottie/LottieAnimationView;->addLottieOnCompositionLoadedListener(Lcom/airbnb/lottie/LottieOnCompositionLoadedListener;)Z

    return-void
.end method

.method private translateSwitchIconInExpandForm(Landroid/view/ViewPropertyAnimator;Z)V
    .registers 6

    .line 1389
    iget v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mOrientation:I

    const/16 v1, 0x5a

    const/4 v2, 0x0

    if-eq v0, v1, :cond_31

    const/16 v1, 0xb4

    if-eq v0, v1, :cond_26

    const/16 v1, 0x10e

    if-eq v0, v1, :cond_1b

    if-eqz p2, :cond_17

    .line 1400
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->getMarginOffsetInExpandForm()I

    move-result p0

    neg-int p0, p0

    int-to-float v2, p0

    :cond_17
    invoke-virtual {p1, v2}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    return-void

    :cond_1b
    if-eqz p2, :cond_22

    .line 1397
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->getMarginOffsetInExpandForm()I

    move-result p0

    int-to-float v2, p0

    :cond_22
    invoke-virtual {p1, v2}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    return-void

    :cond_26
    if-eqz p2, :cond_2d

    .line 1394
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->getMarginOffsetInExpandForm()I

    move-result p0

    int-to-float v2, p0

    :cond_2d
    invoke-virtual {p1, v2}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    return-void

    :cond_31
    if-eqz p2, :cond_39

    .line 1391
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->getMarginOffsetInExpandForm()I

    move-result p0

    neg-int p0, p0

    int-to-float v2, p0

    :cond_39
    invoke-virtual {p1, v2}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    return-void
.end method

.method private updateLayout()V
    .registers 1

    .line 1498
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->updateProgressCircleLayout()V

    .line 1499
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->updateProgressTimerLayout()V

    .line 1500
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->updateNightLiteSwitchLayout()V

    return-void
.end method

.method private updateLoadingTime()V
    .registers 7

    .line 455
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mEntryRootView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_f

    .line 456
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mEntryRootView:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 458
    :cond_f
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mIsCaptureCancel:Z

    if-eqz v0, :cond_17

    .line 459
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->hideLoadingView()V

    return-void

    .line 463
    :cond_17
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->showCapturingHint()V

    .line 464
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mStartTime:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mProgressTime:J

    .line 465
    sget-object v0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " updateNightLiteTime mProcessTime = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mProgressTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " mTotalDuration = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mTotalDuration:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 466
    iget-wide v1, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mProgressTime:J

    iget-wide v3, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mTotalDuration:J

    cmp-long v1, v1, v3

    if-ltz v1, :cond_58

    .line 467
    iput-wide v3, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mProgressTime:J

    .line 468
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mUIHandler:Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI$UIHandler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 469
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->hideLoadingView()V

    .line 471
    :cond_58
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mProgressCircle:Lcom/transsion/camera/ui/setting/supernightlite/NightLiteProgressView;

    iget-wide v2, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mTotalDuration:J

    iget-wide v4, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mProgressTime:J

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Lcom/transsion/camera/ui/setting/supernightlite/NightLiteProgressView;->updateProgress(J)V

    .line 472
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " the progress is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mProgressTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 473
    iget-wide v0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mProgressTime:J

    iget-wide v2, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mTotalDuration:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_88

    .line 474
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mUIHandler:Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI$UIHandler;

    const/4 v0, 0x3

    const-wide/16 v1, 0xa

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_88
    return-void
.end method

.method private updateNightLiteSwitchLayoutInExpand()V
    .registers 9

    .line 1776
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mNightLiteSwitch:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 1777
    invoke-static {v0}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->resetLayoutParams(Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;)V

    .line 1778
    iget v1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mScreenFormType:I

    iget v2, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mOrientation:I

    invoke-virtual {p0, v1, v2}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->getNightLiteSwitchLayoutMargins(II)Landroid/graphics/Rect;

    move-result-object v1

    .line 1779
    iget v2, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mOrientation:I

    const/16 v3, 0x8b

    const/16 v4, 0x82

    const/4 v5, 0x0

    if-eqz v2, :cond_82

    const/16 v6, 0x5a

    const/16 v7, 0x57

    if-eq v2, v6, :cond_65

    const/16 v6, 0xb4

    if-eq v2, v6, :cond_48

    const/16 v3, 0x10e

    if-eq v2, v3, :cond_2b

    goto :goto_9e

    .line 1787
    :cond_2b
    iput v5, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToTop:I

    .line 1788
    iput v5, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->leftToLeft:I

    .line 1789
    iget v2, v1, Landroid/graphics/Rect;->left:I

    invoke-static {v7}, Lcom/transsion/camera/utils/UIUtils;->dp(I)I

    move-result v3

    invoke-static {v2, v3}, Lcom/transsion/camera/utils/UIUtils;->getMarginFromRect(II)I

    move-result v2

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 1790
    iget v1, v1, Landroid/graphics/Rect;->top:I

    invoke-static {v4}, Lcom/transsion/camera/utils/UIUtils;->dp(I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/UIUtils;->getMarginFromRect(II)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    goto :goto_9e

    .line 1793
    :cond_48
    iput v5, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToTop:I

    .line 1794
    iput v5, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->rightToRight:I

    .line 1795
    iget v2, v1, Landroid/graphics/Rect;->right:I

    invoke-static {v4}, Lcom/transsion/camera/utils/UIUtils;->dp(I)I

    move-result v4

    invoke-static {v2, v4}, Lcom/transsion/camera/utils/UIUtils;->getMarginFromRect(II)I

    move-result v2

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 1796
    iget v1, v1, Landroid/graphics/Rect;->top:I

    invoke-static {v3}, Lcom/transsion/camera/utils/UIUtils;->dp(I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/UIUtils;->getMarginFromRect(II)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    goto :goto_9e

    .line 1799
    :cond_65
    iput v5, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToBottom:I

    .line 1800
    iput v5, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->rightToRight:I

    .line 1801
    iget v2, v1, Landroid/graphics/Rect;->right:I

    invoke-static {v7}, Lcom/transsion/camera/utils/UIUtils;->dp(I)I

    move-result v3

    invoke-static {v2, v3}, Lcom/transsion/camera/utils/UIUtils;->getMarginFromRect(II)I

    move-result v2

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 1802
    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    invoke-static {v4}, Lcom/transsion/camera/utils/UIUtils;->dp(I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/UIUtils;->getMarginFromRect(II)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    goto :goto_9e

    .line 1781
    :cond_82
    iput v5, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToBottom:I

    .line 1782
    iput v5, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->leftToLeft:I

    .line 1783
    iget v2, v1, Landroid/graphics/Rect;->left:I

    invoke-static {v4}, Lcom/transsion/camera/utils/UIUtils;->dp(I)I

    move-result v4

    invoke-static {v2, v4}, Lcom/transsion/camera/utils/UIUtils;->getMarginFromRect(II)I

    move-result v2

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 1784
    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    invoke-static {v3}, Lcom/transsion/camera/utils/UIUtils;->dp(I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/UIUtils;->getMarginFromRect(II)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 1805
    :goto_9e
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mNightLiteSwitch:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private updateNightLiteSwitchLayoutInHover()V
    .registers 6

    .line 1764
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mNightLiteSwitch:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 1765
    invoke-static {v0}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->resetLayoutParams(Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;)V

    .line 1766
    iget v1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mScreenFormType:I

    iget v2, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mOrientation:I

    invoke-virtual {p0, v1, v2}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->getNightLiteSwitchLayoutMargins(II)Landroid/graphics/Rect;

    move-result-object v1

    const/4 v2, 0x0

    .line 1767
    iput v2, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToBottom:I

    .line 1768
    iput v2, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->rightToRight:I

    .line 1769
    iget v2, v1, Landroid/graphics/Rect;->right:I

    const/16 v3, 0xa

    invoke-static {v3}, Lcom/transsion/camera/utils/UIUtils;->dp(I)I

    move-result v3

    invoke-static {v2, v3}, Lcom/transsion/camera/utils/UIUtils;->getMarginFromRect(II)I

    move-result v2

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 1770
    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

    .line 1771
    invoke-interface {v2}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getModePlusBottomBarHeight()I

    move-result v2

    iget-object v3, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mNightLiteSwitch:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    invoke-virtual {v3}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/transsion/camera/R$dimen;->super_night_lite_switch_hover_bottom_margin:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    add-int/2addr v2, v3

    .line 1770
    invoke-static {v1, v2}, Lcom/transsion/camera/utils/UIUtils;->getMarginFromRect(II)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 1772
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mNightLiteSwitch:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private updateNightLiteSwitchLayoutInLeftHover()V
    .registers 6

    .line 1871
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mNightLiteSwitch:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 1872
    invoke-static {v0}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->resetLayoutParams(Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;)V

    .line 1873
    iget v1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mScreenFormType:I

    iget v2, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mOrientation:I

    invoke-virtual {p0, v1, v2}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->getNightLiteSwitchLayoutMargins(II)Landroid/graphics/Rect;

    move-result-object v1

    const/4 v2, 0x0

    .line 1874
    iput v2, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToBottom:I

    .line 1875
    iput v2, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->rightToRight:I

    .line 1876
    iget v2, v1, Landroid/graphics/Rect;->right:I

    sget-object v3, Lcom/transsion/camera/app_info/AppInfo;->res:Landroid/content/res/Resources;

    sget v4, Lcom/transsion/camera/R$dimen;->super_night_lite_switch_left_hover_right_margin:I

    .line 1877
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 1876
    invoke-static {v2, v3}, Lcom/transsion/camera/utils/UIUtils;->getMarginFromRect(II)I

    move-result v2

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 1878
    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    sget-object v2, Lcom/transsion/camera/app_info/AppInfo;->res:Landroid/content/res/Resources;

    sget v3, Lcom/transsion/camera/R$dimen;->super_night_lite_switch_left_hover_bottom_margin:I

    .line 1879
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 1878
    invoke-static {v1, v2}, Lcom/transsion/camera/utils/UIUtils;->getMarginFromRect(II)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 1880
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mNightLiteSwitch:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private updateNightLiteSwitchLayoutInNormal()V
    .registers 6

    .line 1751
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mNightLiteSwitch:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 1752
    invoke-static {v0}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->resetLayoutParams(Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;)V

    .line 1753
    iget v1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mScreenFormType:I

    iget v2, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mOrientation:I

    invoke-virtual {p0, v1, v2}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->getNightLiteSwitchLayoutMargins(II)Landroid/graphics/Rect;

    move-result-object v1

    const/4 v2, 0x0

    .line 1754
    iput v2, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToBottom:I

    .line 1755
    iput v2, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->rightToRight:I

    .line 1756
    iget v2, v1, Landroid/graphics/Rect;->right:I

    const/16 v3, 0xa

    invoke-static {v3}, Lcom/transsion/camera/utils/UIUtils;->dp(I)I

    move-result v3

    invoke-static {v2, v3}, Lcom/transsion/camera/utils/UIUtils;->getMarginFromRect(II)I

    move-result v2

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 1757
    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

    .line 1758
    invoke-interface {v2}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getModePlusBottomBarHeight()I

    move-result v2

    iget-object v3, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mNightLiteSwitch:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    invoke-virtual {v3}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/transsion/camera/R$dimen;->super_night_lite_option_margin_bottom:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    add-int/2addr v2, v3

    .line 1757
    invoke-static {v1, v2}, Lcom/transsion/camera/utils/UIUtils;->getMarginFromRect(II)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 1759
    sget-object v1, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateNightLiteSwitchLayoutInNormal: params.bottomMargin = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1760
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mNightLiteSwitch:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private updateNightLiteSwitchLayoutInRightHover()V
    .registers 6

    .line 1884
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mNightLiteSwitch:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 1885
    invoke-static {v0}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->resetLayoutParams(Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;)V

    .line 1886
    iget v1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mScreenFormType:I

    iget v2, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mOrientation:I

    invoke-virtual {p0, v1, v2}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->getNightLiteSwitchLayoutMargins(II)Landroid/graphics/Rect;

    move-result-object v1

    const/4 v2, 0x0

    .line 1887
    iput v2, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToTop:I

    .line 1888
    iput v2, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->leftToLeft:I

    .line 1889
    iget v2, v1, Landroid/graphics/Rect;->left:I

    sget-object v3, Lcom/transsion/camera/app_info/AppInfo;->res:Landroid/content/res/Resources;

    sget v4, Lcom/transsion/camera/R$dimen;->super_night_lite_switch_right_hover_left_margin:I

    .line 1890
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 1889
    invoke-static {v2, v3}, Lcom/transsion/camera/utils/UIUtils;->getMarginFromRect(II)I

    move-result v2

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 1891
    iget v1, v1, Landroid/graphics/Rect;->top:I

    sget-object v2, Lcom/transsion/camera/app_info/AppInfo;->res:Landroid/content/res/Resources;

    sget v3, Lcom/transsion/camera/R$dimen;->super_night_lite_switch_right_hover_top_margin:I

    .line 1892
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 1891
    invoke-static {v1, v2}, Lcom/transsion/camera/utils/UIUtils;->getMarginFromRect(II)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 1893
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mNightLiteSwitch:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private updateNightLiteSwitchTranslation()V
    .registers 4

    .line 1828
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mNightLiteSwitch:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 1829
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mNightLiteSwitch:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 1830
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mNightLiteSwitch:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->getDefaultTranslationY()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 1831
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->isNearByIconShowing()Z

    move-result v0

    if-eqz v0, :cond_36

    const/4 v0, 0x2

    .line 1832
    new-array v0, v0, [I

    .line 1833
    invoke-direct {p0, v0}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->getNightLiteSwitchTranslations([I)V

    .line 1834
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mNightLiteSwitch:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    const/4 v2, 0x0

    aget v2, v0, v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationX(F)V

    .line 1835
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mNightLiteSwitch:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    const/4 v2, 0x1

    aget v0, v0, v2

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 1837
    :cond_36
    sget-object v0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateNightLiteSwitchTranslation: translationX = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mNightLiteSwitch:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    invoke-virtual {v2}, Landroid/view/View;->getTranslationX()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", translationY = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mNightLiteSwitch:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    invoke-virtual {p0}, Landroid/view/View;->getTranslationY()F

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private updateOrientation(Z)V
    .registers 5

    .line 1933
    sget-object v0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mOrientation = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mOrientation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1934
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mProgressRotate:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    if-eqz v0, :cond_21

    .line 1935
    iget v1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mOrientation:I

    invoke-virtual {v0, v1, p1}, Lcom/transsion/camera/app/ui/widget/RotateLayout;->setOrientation(IZ)V

    .line 1937
    :cond_21
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mNightLiteSwitch:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    if-eqz v0, :cond_2a

    .line 1938
    iget v1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mOrientation:I

    invoke-virtual {v0, v1, p1}, Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;->setOrientation(IZ)V

    .line 1940
    :cond_2a
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mProgressTimer:Lcom/transsion/camera/app/ui/widget/RotateTextView;

    if-eqz p1, :cond_3b

    .line 1941
    iget v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mOrientation:I

    const/4 v1, 0x7

    iget p0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mScreenFormType:I

    if-eq v1, p0, :cond_37

    const/4 p0, 0x1

    goto :goto_38

    :cond_37
    const/4 p0, 0x0

    :goto_38
    invoke-virtual {p1, v0, p0}, Lcom/transsion/camera/app/ui/widget/RotateTextView;->setOrientation(IZ)V

    :cond_3b
    return-void
.end method

.method private updateProgressCircleLayout()V
    .registers 3

    .line 1726
    iget v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mScreenFormType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_9

    .line 1727
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->updateProgressCircleLayoutInExpand()V

    return-void

    :cond_9
    const/4 v1, 0x2

    if-ne v0, v1, :cond_10

    .line 1729
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->updateProgressCircleLayoutInColumn()V

    return-void

    :cond_10
    const/4 v1, 0x4

    if-ne v0, v1, :cond_17

    .line 1731
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->updateProgressCircleLayoutInLeftHover()V

    return-void

    :cond_17
    const/4 v1, 0x5

    if-ne v0, v1, :cond_1e

    .line 1733
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->updateProgressCircleLayoutInRightHover()V

    return-void

    .line 1734
    :cond_1e
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/transsion/camera/utils/FeatureSupport;->isSupportFoldUI(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3b

    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/transsion/camera/utils/FeatureSupport;->isOnlySupportTBHoverUI(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3b

    const/4 v0, 0x7

    .line 1735
    iget v1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mScreenFormType:I

    if-ne v0, v1, :cond_37

    .line 1736
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->updateProgressCircleLayoutInFlip()V

    return-void

    .line 1738
    :cond_37
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->updateProgressCircleLayoutInTBHover()V

    return-void

    .line 1741
    :cond_3b
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->updateProgressCircleLayoutInNormal()V

    return-void
.end method

.method private updateProgressCircleLayoutInColumn()V
    .registers 4

    .line 1616
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mProgressRotate:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 1617
    invoke-static {v0}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->resetLayoutParams(Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;)V

    const/4 v1, 0x0

    .line 1618
    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToBottom:I

    .line 1619
    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->rightToRight:I

    .line 1620
    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->leftToLeft:I

    const v1, 0x41ad5c29    # 21.67f

    .line 1621
    invoke-static {v1}, Lcom/transsion/camera/utils/UIUtils;->dp(F)I

    move-result v1

    iget-object v2, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mAppUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

    invoke-interface {v2}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getNavigationBarHeight()I

    move-result v2

    add-int/2addr v1, v2

    const/16 v2, 0x17

    invoke-static {v2}, Lcom/transsion/camera/utils/UIUtils;->dp(I)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 1622
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mProgressRotate:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1623
    sget-object p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateProgressCircleLayoutInColumn: params.bottomMargin = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private updateProgressCircleLayoutInExpand()V
    .registers 8

    .line 1650
    sget-object v0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "updateProgressCircleLayoutInExpand: "

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1651
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mProgressRotate:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 1652
    invoke-static {v0}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->resetLayoutParams(Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;)V

    .line 1653
    iget v1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mOrientation:I

    const/16 v2, 0x141

    const/16 v3, 0x30

    const/4 v4, 0x0

    if-eqz v1, :cond_5d

    const/16 v5, 0x5a

    const/16 v6, 0xf0

    if-eq v1, v5, :cond_4c

    const/16 v5, 0xb4

    if-eq v1, v5, :cond_3b

    const/16 v2, 0x10e

    if-eq v1, v2, :cond_2a

    goto :goto_6d

    .line 1661
    :cond_2a
    iput v4, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToBottom:I

    .line 1662
    iput v4, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->rightToRight:I

    .line 1663
    invoke-static {v6}, Lcom/transsion/camera/utils/UIUtils;->dp(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 1664
    invoke-static {v3}, Lcom/transsion/camera/utils/UIUtils;->dp(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    goto :goto_6d

    .line 1667
    :cond_3b
    iput v4, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToBottom:I

    .line 1668
    iput v4, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->leftToLeft:I

    .line 1669
    invoke-static {v2}, Lcom/transsion/camera/utils/UIUtils;->dp(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 1670
    invoke-static {v3}, Lcom/transsion/camera/utils/UIUtils;->dp(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto :goto_6d

    .line 1673
    :cond_4c
    iput v4, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToTop:I

    .line 1674
    iput v4, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->leftToLeft:I

    .line 1675
    invoke-static {v6}, Lcom/transsion/camera/utils/UIUtils;->dp(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 1676
    invoke-static {v3}, Lcom/transsion/camera/utils/UIUtils;->dp(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    goto :goto_6d

    .line 1655
    :cond_5d
    iput v4, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToTop:I

    .line 1656
    iput v4, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->rightToRight:I

    .line 1657
    invoke-static {v2}, Lcom/transsion/camera/utils/UIUtils;->dp(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 1658
    invoke-static {v3}, Lcom/transsion/camera/utils/UIUtils;->dp(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 1679
    :goto_6d
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mProgressRotate:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private updateProgressCircleLayoutInFlip()V
    .registers 5

    .line 1683
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mProgressCircle:Lcom/transsion/camera/ui/setting/supernightlite/NightLiteProgressView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1684
    sget-object v1, Lcom/transsion/camera/app_info/AppInfo;->res:Landroid/content/res/Resources;

    sget v2, Lcom/transsion/camera/R$dimen;->flip_super_night_progress_circle_size:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1685
    sget-object v1, Lcom/transsion/camera/app_info/AppInfo;->res:Landroid/content/res/Resources;

    sget v2, Lcom/transsion/camera/R$dimen;->flip_super_night_progress_circle_size:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1686
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mProgressCircle:Lcom/transsion/camera/ui/setting/supernightlite/NightLiteProgressView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1687
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mProgressCircle:Lcom/transsion/camera/ui/setting/supernightlite/NightLiteProgressView;

    iget v1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mScreenFormType:I

    invoke-virtual {v0, v1}, Lcom/transsion/camera/ui/setting/supernightlite/NightLiteProgressView;->setScreenFormType(I)V

    .line 1688
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mProgressRotate:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 1689
    invoke-static {v0}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->resetLayoutParams(Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;)V

    .line 1690
    iget v1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mOrientation:I

    const/4 v2, 0x0

    if-eqz v1, :cond_4f

    .line 1701
    iput v2, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToTop:I

    .line 1702
    iput v2, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->rightToRight:I

    .line 1703
    sget-object v1, Lcom/transsion/camera/app_info/AppInfo;->res:Landroid/content/res/Resources;

    sget v2, Lcom/transsion/camera/R$dimen;->flip_super_night_progress_circle_margin_top:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 1704
    sget-object v1, Lcom/transsion/camera/app_info/AppInfo;->res:Landroid/content/res/Resources;

    sget v2, Lcom/transsion/camera/R$dimen;->flip_super_night_progress_circle_margin_right:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    goto :goto_67

    .line 1692
    :cond_4f
    iput v2, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToBottom:I

    .line 1693
    iput v2, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->rightToRight:I

    .line 1694
    sget-object v1, Lcom/transsion/camera/app_info/AppInfo;->res:Landroid/content/res/Resources;

    sget v2, Lcom/transsion/camera/R$dimen;->flip_super_night_progress_circle_margin_top:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 1695
    sget-object v1, Lcom/transsion/camera/app_info/AppInfo;->res:Landroid/content/res/Resources;

    sget v2, Lcom/transsion/camera/R$dimen;->flip_super_night_progress_circle_margin_right:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 1707
    :goto_67
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mProgressRotate:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1708
    sget-object v1, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateProgressCircleLayoutInFlip, mOrientation: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mOrientation:I

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", params.topMargin: "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", params.rightMargin: "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", params.bottomMargin: "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private updateProgressCircleLayoutInLeftHover()V
    .registers 4

    .line 1638
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mProgressRotate:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 1639
    invoke-static {v0}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->resetLayoutParams(Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;)V

    const/4 v1, 0x0

    .line 1640
    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToTop:I

    .line 1641
    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->rightToRight:I

    const/16 v1, 0x1b

    .line 1642
    invoke-static {v1}, Lcom/transsion/camera/utils/UIUtils;->dp(I)I

    move-result v1

    const/16 v2, 0x66

    invoke-static {v2}, Lcom/transsion/camera/utils/UIUtils;->dp(I)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    const/16 v1, 0x3c

    .line 1643
    invoke-static {v1}, Lcom/transsion/camera/utils/UIUtils;->dp(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 1644
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mProgressRotate:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1645
    sget-object p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateProgressCircleLayoutInLeftHover: params.bottomMargin = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private updateProgressCircleLayoutInNormal()V
    .registers 2

    const/4 v0, -0x1

    .line 1601
    invoke-virtual {p0, v0}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->updateProgressCircleLayoutInNormal(I)V

    return-void
.end method

.method private updateProgressCircleLayoutInRightHover()V
    .registers 4

    .line 1627
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mProgressRotate:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 1628
    invoke-static {v0}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->resetLayoutParams(Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;)V

    const/4 v1, 0x0

    .line 1629
    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToBottom:I

    .line 1630
    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->leftToLeft:I

    const/16 v1, 0x1b

    .line 1631
    invoke-static {v1}, Lcom/transsion/camera/utils/UIUtils;->dp(I)I

    move-result v1

    const/16 v2, 0x66

    invoke-static {v2}, Lcom/transsion/camera/utils/UIUtils;->dp(I)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    const/16 v1, 0x3c

    .line 1632
    invoke-static {v1}, Lcom/transsion/camera/utils/UIUtils;->dp(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 1633
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mProgressRotate:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1634
    sget-object p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateProgressCircleLayoutInRightHover: params.bottomMargin = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private updateProgressCircleLayoutInTBHover()V
    .registers 4

    .line 1715
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mProgressRotate:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 1716
    invoke-static {v0}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->resetLayoutParams(Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;)V

    const/4 v1, 0x0

    .line 1717
    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToBottom:I

    .line 1718
    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->rightToRight:I

    .line 1719
    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->leftToLeft:I

    .line 1720
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->getShutterBottomHeightInTBHoverProject()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 1721
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mProgressRotate:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1722
    sget-object p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateProgressCircleLayoutInTBHover: params.bottomMargin = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private updateProgressTimerLayout()V
    .registers 3

    .line 1591
    iget v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mScreenFormType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_17

    const/4 v1, 0x5

    if-eq v0, v1, :cond_17

    const/4 v1, 0x4

    if-ne v0, v1, :cond_c

    goto :goto_17

    :cond_c
    const/4 v1, 0x7

    if-ne v1, v0, :cond_13

    .line 1594
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->updateProgressTimerLayoutInFlip()V

    return-void

    .line 1596
    :cond_13
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->updateProgressTimerLayoutInNormal()V

    return-void

    .line 1592
    :cond_17
    :goto_17
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->updateProgressTimerLayoutInExpand()V

    return-void
.end method

.method private updateProgressTimerLayoutInExpand()V
    .registers 4

    .line 1559
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mProgressTimer:Lcom/transsion/camera/app/ui/widget/RotateTextView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 1560
    invoke-static {v0}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->resetLayoutParams(Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;)V

    .line 1561
    iget v1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mOrientation:I

    if-eqz v1, :cond_55

    const/16 v2, 0x5a

    if-eq v1, v2, :cond_42

    const/16 v2, 0xb4

    if-eq v1, v2, :cond_2f

    const/16 v2, 0x10e

    if-eq v1, v2, :cond_1c

    goto :goto_67

    .line 1569
    :cond_1c
    sget v1, Lcom/transsion/camera/R$id;->super_night_lite_rotate:I

    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToTop:I

    .line 1570
    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToBottom:I

    .line 1571
    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->leftToRight:I

    .line 1572
    sget-object v1, Lcom/transsion/camera/app_info/AppInfo;->res:Landroid/content/res/Resources;

    sget v2, Lcom/transsion/camera/R$dimen;->night_lite_progress_text_margin_bottom:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto :goto_67

    .line 1575
    :cond_2f
    sget v1, Lcom/transsion/camera/R$id;->super_night_lite_rotate:I

    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->leftToLeft:I

    .line 1576
    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->rightToRight:I

    .line 1577
    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToBottom:I

    .line 1578
    sget-object v1, Lcom/transsion/camera/app_info/AppInfo;->res:Landroid/content/res/Resources;

    sget v2, Lcom/transsion/camera/R$dimen;->night_lite_progress_text_margin_bottom:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    goto :goto_67

    .line 1581
    :cond_42
    sget v1, Lcom/transsion/camera/R$id;->super_night_lite_rotate:I

    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToTop:I

    .line 1582
    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToBottom:I

    .line 1583
    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->rightToLeft:I

    .line 1584
    sget-object v1, Lcom/transsion/camera/app_info/AppInfo;->res:Landroid/content/res/Resources;

    sget v2, Lcom/transsion/camera/R$dimen;->night_lite_progress_text_margin_bottom:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    goto :goto_67

    .line 1563
    :cond_55
    sget v1, Lcom/transsion/camera/R$id;->super_night_lite_rotate:I

    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->leftToLeft:I

    .line 1564
    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->rightToRight:I

    .line 1565
    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToTop:I

    .line 1566
    sget-object v1, Lcom/transsion/camera/app_info/AppInfo;->res:Landroid/content/res/Resources;

    sget v2, Lcom/transsion/camera/R$dimen;->night_lite_progress_text_margin_bottom:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 1587
    :goto_67
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mProgressTimer:Lcom/transsion/camera/app/ui/widget/RotateTextView;

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private updateProgressTimerLayoutInFlip()V
    .registers 4

    .line 1520
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mProgressTimer:Lcom/transsion/camera/app/ui/widget/RotateTextView;

    sget-object v1, Lcom/transsion/camera/app_info/AppInfo;->res:Landroid/content/res/Resources;

    sget v2, Lcom/transsion/camera/R$dimen;->flip_night_lite_progress_text_size:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1521
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mProgressTimer:Lcom/transsion/camera/app/ui/widget/RotateTextView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 1522
    invoke-static {v0}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->resetLayoutParams(Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;)V

    .line 1523
    iget v1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mOrientation:I

    const/16 v2, 0x5a

    if-eq v1, v2, :cond_4e

    const/16 v2, 0xb4

    if-eq v1, v2, :cond_3b

    const/16 v2, 0x10e

    if-eq v1, v2, :cond_4e

    .line 1539
    sget v1, Lcom/transsion/camera/R$id;->super_night_lite_rotate:I

    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->leftToLeft:I

    .line 1540
    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->rightToRight:I

    .line 1541
    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToTop:I

    .line 1542
    sget-object v1, Lcom/transsion/camera/app_info/AppInfo;->res:Landroid/content/res/Resources;

    sget v2, Lcom/transsion/camera/R$dimen;->flip_night_lite_progress_text_margin:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    goto :goto_60

    .line 1532
    :cond_3b
    sget v1, Lcom/transsion/camera/R$id;->super_night_lite_rotate:I

    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->leftToLeft:I

    .line 1533
    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->rightToRight:I

    .line 1534
    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToBottom:I

    .line 1535
    sget-object v1, Lcom/transsion/camera/app_info/AppInfo;->res:Landroid/content/res/Resources;

    sget v2, Lcom/transsion/camera/R$dimen;->flip_night_lite_progress_text_margin:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    goto :goto_60

    .line 1526
    :cond_4e
    sget v1, Lcom/transsion/camera/R$id;->super_night_lite_rotate:I

    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToTop:I

    .line 1527
    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToBottom:I

    .line 1528
    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->rightToLeft:I

    .line 1529
    sget-object v1, Lcom/transsion/camera/app_info/AppInfo;->res:Landroid/content/res/Resources;

    sget v2, Lcom/transsion/camera/R$dimen;->flip_night_lite_progress_text_margin:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 1545
    :goto_60
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mProgressTimer:Lcom/transsion/camera/app/ui/widget/RotateTextView;

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private updateProgressTimerLayoutInNormal()V
    .registers 4

    .line 1549
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mProgressTimer:Lcom/transsion/camera/app/ui/widget/RotateTextView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 1550
    invoke-static {v0}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->resetLayoutParams(Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;)V

    .line 1551
    sget v1, Lcom/transsion/camera/R$id;->super_night_lite_rotate:I

    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->leftToLeft:I

    .line 1552
    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->rightToRight:I

    .line 1553
    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToTop:I

    .line 1554
    sget-object v1, Lcom/transsion/camera/app_info/AppInfo;->res:Landroid/content/res/Resources;

    sget v2, Lcom/transsion/camera/R$dimen;->night_lite_progress_text_margin_bottom:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 1555
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mProgressTimer:Lcom/transsion/camera/app/ui/widget/RotateTextView;

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private updateRingScreenLight(Z)V
    .registers 5

    .line 1953
    sget-object v0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " updateRingScreenLight isLowLight = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1954
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mProgressCircle:Lcom/transsion/camera/ui/setting/supernightlite/NightLiteProgressView;

    if-eqz v0, :cond_1d

    .line 1955
    invoke-virtual {v0, p1}, Lcom/transsion/camera/ui/setting/supernightlite/NightLiteProgressView;->updateLowLight(Z)V

    .line 1957
    :cond_1d
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mNightLiteSwitch:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    if-eqz v0, :cond_33

    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result v0

    if-nez v0, :cond_33

    .line 1958
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mNightLiteSwitch:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    if-eqz p1, :cond_2e

    sget v1, Lcom/transsion/camera/R$drawable;->super_night_lite_button_black:I

    goto :goto_30

    :cond_2e
    sget v1, Lcom/transsion/camera/R$drawable;->super_night_lite_button:I

    :goto_30
    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setImageResource(I)V

    .line 1960
    :cond_33
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mLowLight:Z

    .line 1961
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result p1

    if-eqz p1, :cond_42

    .line 1962
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mNightLiteSwitch:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    if-eqz p1, :cond_42

    .line 1963
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->switchIconColor(Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;)V

    :cond_42
    return-void
.end method

.method private updateShutterUI()V
    .registers 4

    .line 733
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mUIStateControl:Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;

    const/16 v0, 0x13

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-interface {p0, v2, v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;->updateUIState(IILjava/lang/String;)V

    return-void
.end method

.method private updateSwitchUIStateChanged(Landroid/view/View;)V
    .registers 4

    .line 256
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->shouldHandleClick(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 259
    :cond_7
    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result v0

    xor-int/lit8 v1, v0, 0x1

    .line 260
    invoke-virtual {p1, v1}, Landroid/view/View;->setSelected(Z)V

    .line 262
    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->handleAnimationState(Landroid/view/View;Z)V

    .line 263
    invoke-direct {p0, v0}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->handleStatusMonitorNotification(Z)V

    .line 264
    invoke-direct {p0, v0}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->handleLottieColorUpdate(Z)V

    return-void
.end method


# virtual methods
.method public createEntryView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Lcom/transsion/camera/app/common/interactive/CommonInteractive;)Landroid/view/View;
    .registers 6

    .line 200
    sget-object v0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "createEntryView: "

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 201
    iput-object p2, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mEntryRootView:Landroid/view/ViewGroup;

    .line 202
    sget v0, Lcom/transsion/camera/R$layout;->supernight_lite_view:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mEntryView:Landroid/view/View;

    .line 203
    sget p2, Lcom/transsion/camera/R$id;->super_night_lite:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mProgressCircleWrap:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 204
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mEntryView:Landroid/view/View;

    sget p2, Lcom/transsion/camera/R$id;->super_night_progress_circle:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/ui/setting/supernightlite/NightLiteProgressView;

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mProgressCircle:Lcom/transsion/camera/ui/setting/supernightlite/NightLiteProgressView;

    .line 205
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mEntryView:Landroid/view/View;

    sget p2, Lcom/transsion/camera/R$id;->super_night_progress_timer:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/app/ui/widget/RotateTextView;

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mProgressTimer:Lcom/transsion/camera/app/ui/widget/RotateTextView;

    .line 206
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mEntryView:Landroid/view/View;

    sget p2, Lcom/transsion/camera/R$id;->super_night_lite_switch:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mNightLiteSwitch:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    .line 207
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-eqz p1, :cond_58

    .line 208
    invoke-interface {p1}, Lcom/transsion/camera/app/common/setting/ISetting;->getCurrentCameraId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/transsion/camera/adapter/CameraInfoUtil;->isCameraFacingFront(Ljava/lang/String;)Z

    move-result p1

    .line 209
    iget-object p2, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mNightLiteSwitch:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    if-eqz p1, :cond_53

    const-string p1, "front"

    goto :goto_55

    :cond_53
    const-string p1, "back"

    :goto_55
    invoke-virtual {p2, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 211
    :cond_58
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result p1

    if-eqz p1, :cond_70

    .line 212
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mNightLiteSwitch:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    new-instance p2, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI$$ExternalSyntheticLambda3;

    invoke-direct {p2, p0}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI$$ExternalSyntheticLambda3;-><init>(Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;)V

    invoke-virtual {p1, p2}, Lcom/airbnb/lottie/LottieAnimationView;->setFailureListener(Lcom/airbnb/lottie/LottieListener;)V

    .line 216
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mNightLiteSwitch:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    const-string p2, "super_night_lite_animation.json"

    invoke-virtual {p1, p2}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    goto :goto_7e

    .line 218
    :cond_70
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mNightLiteSwitch:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    iget-boolean p2, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mLowLight:Z

    if-eqz p2, :cond_79

    sget p2, Lcom/transsion/camera/R$drawable;->super_night_lite_button_black:I

    goto :goto_7b

    :cond_79
    sget p2, Lcom/transsion/camera/R$drawable;->super_night_lite_button:I

    :goto_7b
    invoke-virtual {p1, p2}, Lcom/airbnb/lottie/LottieAnimationView;->setImageResource(I)V

    .line 220
    :goto_7e
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/transsion/camera/utils/CameraUtil;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_8c

    .line 221
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mNightLiteSwitch:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/view/View;->setFocusable(Z)V

    .line 223
    :cond_8c
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mEntryView:Landroid/view/View;

    sget p2, Lcom/transsion/camera/R$id;->super_night_lite_rotate:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/app/ui/widget/RotateLayout;

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mProgressRotate:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    .line 224
    invoke-virtual {p3}, Lcom/transsion/camera/app/common/interactive/CommonInteractive;->getIAppUI()Lcom/transsion/camera/app/common/IAppUI;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mIAppUI:Lcom/transsion/camera/app/common/IAppUI;

    .line 225
    invoke-virtual {p3}, Lcom/transsion/camera/app/common/interactive/CommonInteractive;->getAppUIRect()Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

    .line 227
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mIAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p1}, Lcom/transsion/camera/app/common/IAppUI;->getActionSound()Lcom/transsion/camera/utils/sound/IActionSound;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mActionSound:Lcom/transsion/camera/utils/sound/IActionSound;

    .line 228
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mNightLiteSwitch:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    iget-object p2, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mSwitchClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 229
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mNightLiteSwitch:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->switchIconColor(Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;)V

    .line 231
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mNightLiteSwitch:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    invoke-static {p1}, Lcom/transsion/camera/utils/MultiTouchManager;->pressSealWithoutAnimation(Landroid/view/View;)V

    .line 232
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mProgressCircle:Lcom/transsion/camera/ui/setting/supernightlite/NightLiteProgressView;

    iget-object p2, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mProgressTimer:Lcom/transsion/camera/app/ui/widget/RotateTextView;

    invoke-virtual {p1, p2}, Lcom/transsion/camera/ui/setting/supernightlite/NightLiteProgressView;->setProgressTimer(Landroid/widget/TextView;)V

    .line 234
    invoke-direct {p0, v1}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->updateOrientation(Z)V

    .line 235
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->updateLayout()V

    .line 237
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz p1, :cond_d9

    .line 238
    const-string p2, "key_shutter_sound_update"

    invoke-virtual {p1, p2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p1

    const-string p3, "shutter_sound_value_ready"

    invoke-virtual {p1, p2, p3}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    .line 242
    :cond_d9
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mEntryView:Landroid/view/View;

    return-object p0
.end method

.method protected createNightLiteShutterListener()Lcom/transsion/camera/app/common/IAppUIListener$IShutterResponseListener;
    .registers 3

    .line 189
    new-instance v0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI$NightLiteShutterListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI$NightLiteShutterListener;-><init>(Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI-IA;)V

    return-object v0
.end method

.method protected createUIHandler()Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI$UIHandler;
    .registers 2

    .line 185
    new-instance v0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI$UIHandler;

    invoke-direct {v0, p0}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI$UIHandler;-><init>(Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;)V

    return-object v0
.end method

.method protected doCreateEntryView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 3

    const/4 p0, 0x0

    return-object p0
.end method

.method protected getDefaultTranslationY()F
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public getEntryRootView()Landroid/view/ViewGroup;
    .registers 1

    .line 1093
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mEntryRootView:Landroid/view/ViewGroup;

    return-object p0
.end method

.method public getEntryView()Landroid/view/View;
    .registers 1

    .line 1088
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mEntryView:Landroid/view/View;

    return-object p0
.end method

.method public bridge synthetic getExtraKey()Ljava/lang/String;
    .registers 1

    .line 0
    invoke-super {p0}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->getExtraKey()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getKey()Ljava/lang/String;
    .registers 1

    .line 853
    const-string p0, "key_super_night_lite"

    return-object p0
.end method

.method protected getNightLiteSwitchLayoutMargins(II)Landroid/graphics/Rect;
    .registers 3

    .line 1747
    new-instance p0, Landroid/graphics/Rect;

    const p1, 0x7fffffff

    invoke-direct {p0, p1, p1, p1, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object p0
.end method

.method public getValue()Ljava/lang/String;
    .registers 1

    .line 858
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return-object p0

    .line 861
    :cond_6
    invoke-interface {p0}, Lcom/transsion/camera/app/common/setting/ISetting;->getSettingValue()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public hideEntryView()V
    .registers 5

    .line 411
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mNightLiteSwitch:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    if-eqz v0, :cond_44

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_44

    .line 412
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mCameraOperateActionControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    if-eqz v0, :cond_15

    const/16 v2, 0x128

    .line 413
    invoke-interface {v0, v2}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 415
    :cond_15
    sget-object v0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "hideEntryView: translationX = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mNightLiteSwitch:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    invoke-virtual {v3}, Landroid/view/View;->getTranslationX()F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, ", translationY = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mNightLiteSwitch:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    invoke-virtual {v3}, Landroid/view/View;->getTranslationY()F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 416
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mNightLiteSwitch:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_44
    return-void
.end method

.method protected hookDisturbStatus()V
    .registers 3

    .line 774
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-eqz v0, :cond_19

    .line 775
    const-string v1, "key_self_timer"

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/setting/ISetting;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 776
    const-string v1, "off"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_19

    .line 778
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mContext:Landroid/content/Context;

    const/16 v0, 0x6c

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/CameraUtil;->hookDisturbStatus(Landroid/content/Context;I)V

    :cond_19
    return-void
.end method

.method protected isInitialPosition()Z
    .registers 4

    .line 1434
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mNightLiteSwitch:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 1437
    :cond_6
    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v0

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    if-nez v0, :cond_1b

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mNightLiteSwitch:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    .line 1438
    invoke-virtual {p0}, Landroid/view/View;->getTranslationX()F

    move-result p0

    cmpl-float p0, p0, v2

    if-nez p0, :cond_1b

    const/4 p0, 0x1

    return p0

    :cond_1b
    return v1
.end method

.method public bridge synthetic isNeedResetPrivacyMode()Z
    .registers 1

    .line 0
    invoke-super {p0}, Lcom/transsion/camera/app/common/IPrivacyCallback;->isNeedResetPrivacyMode()Z

    move-result p0

    return p0
.end method

.method protected isNightLiteCaptureEnable()Z
    .registers 2

    .line 770
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->superNightLiteOn()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->nightLiteSwitch()Z

    move-result p0

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    return p0

    :cond_e
    const/4 p0, 0x0

    return p0
.end method

.method public isSupportPrivacyMode()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method protected nightLiteSwitch()Z
    .registers 4

    const/4 v0, 0x7

    .line 399
    iget v1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mScreenFormType:I

    const/4 v2, 0x1

    if-ne v0, v1, :cond_7

    return v2

    .line 402
    :cond_7
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mNightLiteSwitch:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    const/4 v1, 0x0

    if-eqz v0, :cond_1d

    .line 403
    invoke-virtual {v0}, Landroid/view/View;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mIsSuperNightModeOn:Z

    if-nez v0, :cond_1c

    iget-boolean p0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mIsUltraHDModeOn:Z

    if-eqz p0, :cond_1b

    goto :goto_1c

    :cond_1b
    return v1

    :cond_1c
    :goto_1c
    return v2

    :cond_1d
    return v1
.end method

.method public notifyCameraOperateAction(I)V
    .registers 6

    .line 870
    const-string v0, ", action = "

    const-string v1, " mLoadingAnimEnd = "

    const/4 v2, 0x1

    const/4 v3, 0x0

    sparse-switch p1, :sswitch_data_1d8

    goto/16 :goto_1cf

    .line 979
    :sswitch_b
    iput-boolean v3, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mIsConflictUIShowing:Z

    .line 980
    iput-boolean v3, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mIsCelebritySceneShow:Z

    .line 981
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->updateSwitchVisibility(Ljava/lang/String;)V

    return-void

    .line 974
    :sswitch_17
    iput-boolean v2, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mIsConflictUIShowing:Z

    .line 975
    iput-boolean v2, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mIsCelebritySceneShow:Z

    .line 976
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->hideEntryView()V

    return-void

    .line 1033
    :sswitch_1f
    iput-boolean v3, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mIsOverlayGuideShow:Z

    .line 1034
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->updateSwitchVisibility(Ljava/lang/String;)V

    return-void

    .line 1029
    :sswitch_29
    iput-boolean v2, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mIsOverlayGuideShow:Z

    .line 1030
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->hideEntryView()V

    return-void

    .line 1012
    :sswitch_2f
    iput-boolean v3, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mIsGroupCaptureIconShowing:Z

    .line 1013
    sget-object p1, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ACTION_GROUP_CAPTURE_ICON_HIDE, uiState:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mUIStateControl:Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;

    invoke-interface {v1}, Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;->getCurrentUIState()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1014
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->updateSwitchVisibility(Ljava/lang/String;)V

    return-void

    .line 1008
    :sswitch_55
    iput-boolean v2, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mIsGroupCaptureIconShowing:Z

    .line 1009
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->updateSwitchVisibility(Ljava/lang/String;)V

    return-void

    .line 988
    :sswitch_5f
    iput-boolean v3, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mIsAutoMacroSwitchShowing:Z

    .line 989
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->updateSwitchVisibility(Ljava/lang/String;)V

    return-void

    .line 984
    :sswitch_69
    iput-boolean v2, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mIsAutoMacroSwitchShowing:Z

    .line 985
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->updateSwitchVisibility(Ljava/lang/String;)V

    return-void

    .line 950
    :sswitch_73
    iput-boolean v3, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mQrIconShowing:Z

    .line 951
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->updateSwitchVisibility(Ljava/lang/String;)V

    return-void

    .line 946
    :sswitch_7d
    iput-boolean v2, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mQrIconShowing:Z

    .line 947
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->updateSwitchVisibility(Ljava/lang/String;)V

    return-void

    .line 1023
    :sswitch_87
    iput-boolean v3, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mIsConflictUIShowing:Z

    .line 1024
    iput-boolean v3, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mIsPMasterBottomUIShow:Z

    .line 1025
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->hideEntryView()V

    .line 1026
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->updateSwitchVisibility(Ljava/lang/String;)V

    return-void

    .line 1017
    :sswitch_96
    iput-boolean v2, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mIsConflictUIShowing:Z

    .line 1018
    iput-boolean v2, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mIsPMasterBottomUIShow:Z

    .line 1019
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->hideEntryView()V

    .line 1020
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->updateSwitchVisibility(Ljava/lang/String;)V

    return-void

    .line 969
    :sswitch_a5
    iput-boolean v3, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mIsConflictUIShowing:Z

    .line 970
    iput-boolean v3, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mImageStyleShow:Z

    .line 971
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->updateSwitchVisibility(Ljava/lang/String;)V

    return-void

    .line 964
    :sswitch_b1
    iput-boolean v2, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mIsConflictUIShowing:Z

    .line 965
    iput-boolean v2, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mImageStyleShow:Z

    .line 966
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->hideEntryView()V

    return-void

    .line 995
    :sswitch_b9
    iput-boolean v3, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mIsQuickVideoRecording:Z

    return-void

    .line 992
    :sswitch_bc
    iput-boolean v2, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mIsQuickVideoRecording:Z

    return-void

    .line 1003
    :sswitch_bf
    iput-boolean v3, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mIsConflictUIShowing:Z

    .line 1004
    iput-boolean v3, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mIsPopSettingShow:Z

    .line 1005
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->updateSwitchVisibility(Ljava/lang/String;)V

    return-void

    .line 998
    :sswitch_cb
    iput-boolean v2, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mIsConflictUIShowing:Z

    .line 999
    iput-boolean v2, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mIsPopSettingShow:Z

    .line 1000
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->hideEntryView()V

    return-void

    .line 943
    :sswitch_d3
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->updateSwitchVisibility(Ljava/lang/String;)V

    return-void

    .line 959
    :sswitch_db
    iput-boolean v3, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mIsConflictUIShowing:Z

    .line 960
    iput-boolean v3, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mFilterUIShow:Z

    .line 961
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->updateSwitchVisibility(Ljava/lang/String;)V

    return-void

    .line 954
    :sswitch_e7
    iput-boolean v2, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mIsConflictUIShowing:Z

    .line 955
    iput-boolean v2, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mFilterUIShow:Z

    .line 956
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->hideEntryView()V

    return-void

    .line 929
    :sswitch_ef
    iput-boolean v3, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mIsPause:Z

    .line 930
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/transsion/camera/utils/CameraUtil;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1cf

    iget-object p1, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mNightLiteSwitch:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    if-eqz p1, :cond_1cf

    invoke-virtual {p1}, Landroid/view/View;->isFocusable()Z

    move-result p1

    if-nez p1, :cond_1cf

    .line 931
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mNightLiteSwitch:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    invoke-virtual {p0, v2}, Landroid/view/View;->setFocusable(Z)V

    return-void

    .line 905
    :sswitch_109
    sget-object v2, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mLoadingAnimEnd:Z

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 906
    iget-boolean p1, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mLoadingAnimEnd:Z

    if-eqz p1, :cond_1cf

    iget-boolean p1, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mTimerDelayReady:Z

    if-eqz p1, :cond_1cf

    .line 907
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->hideLoadingView()V

    .line 908
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->updateSwitchVisibility(Ljava/lang/String;)V

    return-void

    .line 912
    :sswitch_138
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->hideEntryView()V

    .line 913
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mUIStateControl:Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;

    if-eqz p1, :cond_14c

    invoke-interface {p1}, Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;->getCurrentUIState()I

    move-result p1

    if-eq p1, v2, :cond_14c

    .line 914
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mUIStateControl:Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;

    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-interface {p1, v2, v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;->updateUIState(IILjava/lang/String;)V

    .line 916
    :cond_14c
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-eqz p1, :cond_155

    .line 917
    const-string v0, "off"

    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChanged(Ljava/lang/String;)V

    .line 919
    :cond_155
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->hideLoadingView()V

    .line 920
    iput-boolean v2, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mIsPause:Z

    .line 921
    iput-boolean v2, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mIsCaptureCancel:Z

    .line 922
    iput-boolean v3, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mIsQuickVideoRecording:Z

    .line 923
    iput-boolean v3, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mIsGroupCaptureIconShowing:Z

    .line 924
    iput-boolean v3, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mClosedByLivePhoto:Z

    .line 925
    iput-boolean v3, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mClosedByFlare:Z

    .line 926
    iput-boolean v3, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mSuperNightCaptureBegin:Z

    return-void

    .line 939
    :sswitch_167
    iput-boolean v3, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mZoomChanging:Z

    .line 940
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->updateSwitchVisibility(Ljava/lang/String;)V

    return-void

    .line 935
    :sswitch_171
    iput-boolean v2, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mZoomChanging:Z

    .line 936
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->hideEntryView()V

    return-void

    .line 888
    :sswitch_177
    iput-boolean v3, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mIsGroupCaptureIconShowing:Z

    .line 889
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->restoreNightSwitch()V

    .line 890
    iput-boolean v3, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mClosedByLivePhoto:Z

    .line 891
    iput-boolean v3, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mClosedByFlare:Z

    .line 892
    iput-boolean v3, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mLivePhotoChangedByUserInteraction:Z

    .line 893
    iput-boolean v3, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mFlareChangedByUserInteraction:Z

    return-void

    .line 897
    :sswitch_185
    sget-object v2, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mLoadingAnimEnd:Z

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 898
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mUIHandler:Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI$UIHandler;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 899
    iget-boolean p1, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mTimerDelayReady:Z

    if-eqz p1, :cond_1cf

    .line 900
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->hideLoadingView()V

    .line 901
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->updateSwitchVisibility(Ljava/lang/String;)V

    return-void

    .line 883
    :sswitch_1b6
    iput-boolean v3, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mIsCaptureCancel:Z

    .line 884
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->configCapture()V

    .line 885
    iput-boolean v3, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mNextCaptureReady:Z

    return-void

    .line 877
    :sswitch_1be
    iput-boolean v3, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mSelfTimerCapture:Z

    .line 878
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mUIStateControl:Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;

    invoke-interface {p1}, Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;->getCurrentUIState()I

    move-result p1

    if-ne p1, v2, :cond_1cf

    .line 879
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->updateSwitchVisibility(Ljava/lang/String;)V

    :cond_1cf
    :goto_1cf
    return-void

    .line 872
    :sswitch_1d0
    iput-boolean v2, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mSelfTimerOn:Z

    .line 873
    iput-boolean v2, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mSelfTimerCapture:Z

    .line 874
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->hideEntryView()V

    return-void

    :sswitch_data_1d8
    .sparse-switch
        0xb -> :sswitch_1d0
        0xc -> :sswitch_1be
        0xd -> :sswitch_1b6
        0xe -> :sswitch_185
        0x13 -> :sswitch_177
        0x19 -> :sswitch_171
        0x1a -> :sswitch_167
        0x1c -> :sswitch_138
        0x1f -> :sswitch_109
        0x20 -> :sswitch_ef
        0x30 -> :sswitch_e7
        0x31 -> :sswitch_db
        0x80 -> :sswitch_d3
        0xcf -> :sswitch_cb
        0xd0 -> :sswitch_bf
        0xe9 -> :sswitch_bc
        0xea -> :sswitch_b9
        0xf2 -> :sswitch_b1
        0xf3 -> :sswitch_a5
        0xf7 -> :sswitch_96
        0xf8 -> :sswitch_87
        0x115 -> :sswitch_7d
        0x116 -> :sswitch_73
        0x129 -> :sswitch_69
        0x12a -> :sswitch_5f
        0x14d -> :sswitch_55
        0x14e -> :sswitch_2f
        0x16b -> :sswitch_29
        0x16c -> :sswitch_1f
        0x183 -> :sswitch_17
        0x184 -> :sswitch_b
    .end sparse-switch
.end method

.method public onBackPressed()Z
    .registers 3

    .line 664
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mUIStateControl:Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;

    if-eqz v0, :cond_15

    .line 665
    iget-boolean v1, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mIsQuickVideoRecording:Z

    if-nez v1, :cond_15

    iget-boolean v1, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mSelfTimerCapture:Z

    if-nez v1, :cond_15

    .line 666
    invoke-interface {v0}, Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;->getCurrentUIState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_15

    const/4 p0, 0x1

    return p0

    .line 670
    :cond_15
    invoke-super {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->onBackPressed()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic onGestureTouchEvent(Landroid/view/MotionEvent;)V
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/IAppUIListener$IPreviewGestureListener;->onGestureTouchEvent(Landroid/view/MotionEvent;)V

    return-void
.end method

.method public onOrientationChanged(I)V
    .registers 2

    .line 1492
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->onOrientationChanged(I)V

    const/4 p1, 0x1

    .line 1493
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->updateOrientation(Z)V

    .line 1494
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->updateLayout()V

    return-void
.end method

.method public onPrivacyModeChange(ZF)V
    .registers 5

    .line 1974
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->isSupportPrivacyMode()Z

    move-result p2

    if-nez p2, :cond_7

    goto :goto_72

    .line 1977
    :cond_7
    sget-object p2, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPrivacyModeChange: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v1}, Lcom/transsion/camera/app/common/IAppUI;->getCurrentMode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1978
    iget-object p2, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mProgressCircleWrap:Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz p2, :cond_72

    iget-object p2, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    .line 1979
    invoke-interface {p2}, Lcom/transsion/camera/app/common/IAppUI;->getCurrentMode()Ljava/lang/String;

    move-result-object p2

    const-string v0, "com.transsion.camera.feature.supernightfilter.mode.SuperNightFilterModeEntry"

    invoke-static {v0, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_4b

    iget-object p2, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    .line 1980
    invoke-interface {p2}, Lcom/transsion/camera/app/common/IAppUI;->getCurrentMode()Ljava/lang/String;

    move-result-object p2

    const-string v0, "com.transsion.camera.feature.mode.supernight.SuperNightModeEntry"

    invoke-static {v0, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_72

    :cond_4b
    if-eqz p1, :cond_65

    .line 1982
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mProgressCircleWrapState:Lcom/transsion/camera/app/common/ui/helper/ViewState;

    if-nez p1, :cond_5e

    .line 1983
    new-instance p1, Lcom/transsion/camera/app/common/ui/helper/ViewState$Builder;

    iget-object p2, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mProgressCircleWrap:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-direct {p1, p2}, Lcom/transsion/camera/app/common/ui/helper/ViewState$Builder;-><init>(Landroid/view/View;)V

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ui/helper/ViewState$Builder;->build()Lcom/transsion/camera/app/common/ui/helper/ViewState;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mProgressCircleWrapState:Lcom/transsion/camera/app/common/ui/helper/ViewState;

    .line 1985
    :cond_5e
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mProgressCircleWrap:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 1987
    :cond_65
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mProgressCircleWrapState:Lcom/transsion/camera/app/common/ui/helper/ViewState;

    if-nez p1, :cond_6a

    goto :goto_72

    .line 1990
    :cond_6a
    iget-object p2, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mProgressCircleWrap:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p1, p2}, Lcom/transsion/camera/app/common/ui/helper/ViewState;->restore(Landroid/view/View;)V

    const/4 p1, 0x0

    .line 1991
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mProgressCircleWrapState:Lcom/transsion/camera/app/common/ui/helper/ViewState;

    :cond_72
    :goto_72
    return-void
.end method

.method public onScreenFormChanged(IZ)V
    .registers 3

    .line 1903
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->onScreenFormChanged(IZ)V

    .line 1904
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->updateLayout()V

    return-void
.end method

.method public bridge synthetic queryState(Ljava/lang/String;)Lcom/transsion/camera/app/common/IAppUI$UIState;
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;->queryState(Ljava/lang/String;)Lcom/transsion/camera/app/common/IAppUI$UIState;

    move-result-object p0

    return-object p0
.end method

.method public releaseResource()V
    .registers 1

    .line 675
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->restoreNightSwitch()V

    return-void
.end method

.method public setCameraOperateActionControl(Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;)V
    .registers 2

    .line 625
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mCameraOperateActionControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    return-void
.end method

.method public setDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V
    .registers 4

    .line 1443
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-nez p1, :cond_c

    .line 1445
    sget-object p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, " mDeviceSetting is null!"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 1448
    :cond_c
    new-instance v0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI$SuperNightLiteCallbackImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI$SuperNightLiteCallbackImpl;-><init>(Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI-IA;)V

    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/setting/ISetting;->setSettingDataCallback(Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;)V

    .line 1449
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    check-cast p1, Lcom/transsion/camera/feature/setting/supernightlite/SuperNightLite;

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mSuperNightLite:Lcom/transsion/camera/feature/setting/supernightlite/SuperNightLite;

    .line 1450
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mNextCaptureCallBack:Lcom/transsion/camera/feature/setting/supernightlite/SuperNightLite$INextCaptureCallBack;

    invoke-virtual {p1, v0}, Lcom/transsion/camera/feature/setting/supernightlite/SuperNightLite;->setNextCaptureCallBack(Lcom/transsion/camera/feature/setting/supernightlite/SuperNightLite$INextCaptureCallBack;)V

    .line 1451
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mSuperNightLite:Lcom/transsion/camera/feature/setting/supernightlite/SuperNightLite;

    invoke-virtual {p1}, Lcom/transsion/camera/feature/setting/supernightlite/SuperNightLite;->postAlgoOn()Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mIsPostAlgoOn:Z

    .line 1452
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mSuperNightLite:Lcom/transsion/camera/feature/setting/supernightlite/SuperNightLite;

    invoke-virtual {p1}, Lcom/transsion/camera/feature/setting/supernightlite/SuperNightLite;->superNightModeOn()Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mIsSuperNightModeOn:Z

    .line 1453
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mSuperNightLite:Lcom/transsion/camera/feature/setting/supernightlite/SuperNightLite;

    invoke-virtual {p1}, Lcom/transsion/camera/feature/setting/supernightlite/SuperNightLite;->ultraHDModeOn()Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mIsUltraHDModeOn:Z

    .line 1454
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    const-string v0, "key_shutter_sound"

    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/setting/ISetting;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "on"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mSoundEnable:Z

    .line 1455
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    const-string v1, "key_self_timer"

    invoke-interface {p1, v1}, Lcom/transsion/camera/app/common/setting/ISetting;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1456
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_60

    const-string v1, "off"

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_60

    const/4 p1, 0x1

    goto :goto_61

    :cond_60
    const/4 p1, 0x0

    :goto_61
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mSelfTimerOn:Z

    .line 1457
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    const-string v1, "key_shutter_sound_optional"

    invoke-interface {p1, v1}, Lcom/transsion/camera/app/common/setting/ISetting;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1458
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7b

    .line 1459
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mUIHandler:Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI$UIHandler;

    new-instance v0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1461
    :cond_7b
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {p1}, Lcom/transsion/camera/app/common/setting/ISetting;->getDataStore()Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    return-void
.end method

.method public setEnable(Z)V
    .registers 2

    return-void
.end method

.method public bridge synthetic setExtraDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->setExtraDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V

    return-void
.end method

.method public setSettingMonitor(Lcom/transsion/camera/app/common/setting/StatusMonitor;)V
    .registers 4

    .line 1474
    sget-object v0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "setSettingMonitor"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1475
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz p1, :cond_5c

    .line 1477
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->getKey()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {p1, v0, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 1478
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v0, "key_self_timer"

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {p1, v0, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 1479
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v0, "key_shutter_sound"

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {p1, v0, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 1480
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v0, "key_shutter_sound_update"

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {p1, v0, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 1481
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v0, "key_update_low_light_state_to_qc"

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {p1, v0, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 1482
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v0, "key_self_timer_status"

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {p1, v0, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 1483
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v0, "key_live_photo"

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {p1, v0, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 1484
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v0, "key_live_photo_switch"

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {p1, v0, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 1485
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v0, "key_portrait_flare"

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {p1, v0, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    :cond_5c
    return-void
.end method

.method public setShutterControl(Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;)V
    .registers 3

    .line 614
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mShutterControl:Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;

    if-eqz p1, :cond_b

    .line 616
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mShutterListener:Lcom/transsion/camera/app/common/IAppUIListener$IShutterResponseListener;

    const/16 v0, 0xb

    invoke-interface {p1, p0, v0}, Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;->registerShutterListener(Lcom/transsion/camera/app/common/IAppUIListener$IShutterResponseListener;I)V

    :cond_b
    return-void
.end method

.method public setUIStateControl(Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;)V
    .registers 2

    .line 1947
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mUIStateControl:Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;

    return-void
.end method

.method public setupEntryView()V
    .registers 3

    .line 1909
    invoke-super {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->setupEntryView()V

    .line 1910
    sget-object v0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "setupEntryView"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1911
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->updateLayout()V

    const/4 v0, 0x0

    .line 1912
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mSelfTimerCapture:Z

    .line 1913
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mIsConflictUIShowing:Z

    .line 1914
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mIsQuickVideoRecording:Z

    .line 1915
    invoke-static {}, Lcom/transsion/camera/app/common/ModuleTransferManager;->getTransferManager()Lcom/transsion/camera/app/common/ModuleTransferManager;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mIModuleTransfer:Lcom/transsion/camera/app/common/IModuleTransfer;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ModuleTransferManager;->registerTransferListener(Lcom/transsion/camera/app/common/IModuleTransfer;)V

    .line 1916
    invoke-static {}, Lcom/transsion/camera/app/common/ModuleTransferManager;->getTransferManager()Lcom/transsion/camera/app/common/ModuleTransferManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ModuleTransferManager;->getRingScreenLightState()Z

    move-result v0

    .line 1917
    invoke-direct {p0, v0}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->updateRingScreenLight(Z)V

    .line 1918
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->notifyNightSwitch()V

    .line 1919
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->updateSwitchVisibility(Ljava/lang/String;)V

    .line 1920
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mSuperNightLite:Lcom/transsion/camera/feature/setting/supernightlite/SuperNightLite;

    if-eqz v0, :cond_3f

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/supernightlite/SuperNightLite;->isRestore()Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 1921
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->restoreNightSwitch()V

    .line 1923
    :cond_3f
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mIAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz v0, :cond_4a

    .line 1924
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->getShutterTypeSelftimerOff()I

    move-result p0

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;->setShutterTypeSelftimerOff(I)V

    :cond_4a
    return-void
.end method

.method protected superNightLiteOn()Z
    .registers 2

    .line 707
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-eqz p0, :cond_f

    .line 708
    invoke-interface {p0}, Lcom/transsion/camera/app/common/setting/ISetting;->getSettingValue()Ljava/lang/String;

    move-result-object p0

    const-string v0, "on"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_f
    const/4 p0, 0x0

    return p0
.end method

.method protected translateSwitchIcon(Z)V
    .registers 7

    .line 1334
    sget-object v0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "translateSwitchIcon() called with: needTranslate = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1335
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mNightLiteSwitch:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    if-nez v0, :cond_20

    return-void

    .line 1338
    :cond_20
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 1339
    iget v1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mScreenFormType:I

    const/4 v2, 0x4

    const/4 v3, 0x0

    if-eq v1, v2, :cond_4e

    const/4 v2, 0x5

    if-ne v1, v2, :cond_2e

    goto :goto_4e

    :cond_2e
    const/4 v2, 0x1

    if-ne v1, v2, :cond_35

    .line 1343
    invoke-direct {p0, v0, p1}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->translateSwitchIconInExpandForm(Landroid/view/ViewPropertyAnimator;Z)V

    goto :goto_59

    .line 1345
    :cond_35
    sget-object v1, Lcom/transsion/camera/app_info/AppInfo;->res:Landroid/content/res/Resources;

    sget v2, Lcom/transsion/camera/R$dimen;->super_night_lite_switch_size:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sget-object v2, Lcom/transsion/camera/app_info/AppInfo;->res:Landroid/content/res/Resources;

    sget v4, Lcom/transsion/camera/R$dimen;->super_night_lite_switch_margin_offset:I

    .line 1346
    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    add-int/2addr v1, v2

    if-eqz p1, :cond_4a

    neg-int p1, v1

    int-to-float v3, p1

    .line 1347
    :cond_4a
    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    goto :goto_59

    :cond_4e
    :goto_4e
    if-eqz p1, :cond_56

    .line 1341
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->getMarginOffsetInHoverForm()I

    move-result p1

    neg-int p1, p1

    int-to-float v3, p1

    :cond_56
    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    .line 1349
    :goto_59
    new-instance p1, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI$5;

    invoke-direct {p1, p0}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI$5;-><init>(Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;)V

    invoke-virtual {v0, p1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    sget-object p1, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->PATH_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    .line 1383
    invoke-virtual {p0, p1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const-wide/16 v0, 0x1c2

    .line 1384
    invoke-virtual {p0, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 1385
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method public unInit()V
    .registers 5

    .line 630
    invoke-super {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->unInit()V

    const/4 v0, 0x0

    .line 631
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mQrIconShowing:Z

    .line 632
    sget-object v1, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v2, " SuperNightLiteUI unInit"

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 633
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mShutterControl:Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;

    if-eqz v1, :cond_16

    .line 634
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mShutterListener:Lcom/transsion/camera/app/common/IAppUIListener$IShutterResponseListener;

    invoke-interface {v1, v2}, Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;->unRegisterShutterListener(Lcom/transsion/camera/app/common/IAppUIListener$IShutterResponseListener;)V

    .line 637
    :cond_16
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz v1, :cond_74

    .line 638
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->getKey()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v1, v2, v3}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 639
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v2, "key_self_timer"

    iget-object v3, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v1, v2, v3}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 640
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v2, "key_shutter_sound"

    iget-object v3, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v1, v2, v3}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 641
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v2, "key_flash_facade"

    iget-object v3, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v1, v2, v3}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 642
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v2, "key_shutter_sound_update"

    iget-object v3, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v1, v2, v3}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 643
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v2, "key_update_low_light_state_to_qc"

    iget-object v3, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v1, v2, v3}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 644
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v2, "key_self_timer_status"

    iget-object v3, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v1, v2, v3}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 645
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v2, "key_live_photo"

    iget-object v3, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v1, v2, v3}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 646
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v2, "key_live_photo_switch"

    iget-object v3, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v1, v2, v3}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 647
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v2, "key_portrait_flare"

    iget-object v3, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v1, v2, v3}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 649
    :cond_74
    invoke-static {}, Lcom/transsion/camera/app/common/ModuleTransferManager;->getTransferManager()Lcom/transsion/camera/app/common/ModuleTransferManager;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mIModuleTransfer:Lcom/transsion/camera/app/common/IModuleTransfer;

    invoke-virtual {v1, v2}, Lcom/transsion/camera/app/common/ModuleTransferManager;->unregisterTransferListener(Lcom/transsion/camera/app/common/IModuleTransfer;)V

    .line 650
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mUIHandler:Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI$UIHandler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 651
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->releaseActionSound()V

    .line 652
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mQrIconShowing:Z

    .line 653
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mIsAutoMacroSwitchShowing:Z

    .line 654
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mIsGroupCaptureIconShowing:Z

    const/4 v0, 0x1

    .line 655
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mNeedNotifyLivePhoto:Z

    .line 656
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mNeedNotifyFlare:Z

    .line 657
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mNightLiteSwitch:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    if-eqz p0, :cond_98

    .line 658
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->removeAllLottieOnCompositionLoadedListener()V

    :cond_98
    return-void
.end method

.method protected updateNightLiteSwitchLayout()V
    .registers 3

    .line 1809
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mNightLiteSwitch:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    if-nez v0, :cond_c

    .line 1810
    sget-object p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "updateNightLiteSwitchLayout: mNightLiteSwitch is null"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 1813
    :cond_c
    iget v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mScreenFormType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_15

    .line 1814
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->updateNightLiteSwitchLayoutInExpand()V

    goto :goto_2d

    :cond_15
    const/4 v1, 0x4

    if-ne v0, v1, :cond_1c

    .line 1816
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->updateNightLiteSwitchLayoutInLeftHover()V

    goto :goto_2d

    :cond_1c
    const/4 v1, 0x5

    if-ne v0, v1, :cond_23

    .line 1818
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->updateNightLiteSwitchLayoutInRightHover()V

    goto :goto_2d

    :cond_23
    const/4 v1, 0x3

    if-ne v0, v1, :cond_2a

    .line 1820
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->updateNightLiteSwitchLayoutInHover()V

    goto :goto_2d

    .line 1822
    :cond_2a
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->updateNightLiteSwitchLayoutInNormal()V

    .line 1824
    :goto_2d
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->updateNightLiteSwitchTranslation()V

    return-void
.end method

.method public updatePreviewRect(Landroid/graphics/Rect;)V
    .registers 2

    return-void
.end method

.method protected updateProgressCircleLayoutInNormal(I)V
    .registers 4

    .line 1605
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mProgressRotate:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 1606
    invoke-static {v0}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->resetLayoutParams(Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;)V

    const/4 v1, 0x0

    .line 1607
    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToBottom:I

    .line 1608
    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->rightToRight:I

    .line 1609
    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->leftToLeft:I

    if-lez p1, :cond_15

    goto :goto_1b

    .line 1610
    :cond_15
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

    invoke-interface {p1}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getShutterBottomHeight()I

    move-result p1

    :goto_1b
    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 1611
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mProgressRotate:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1612
    sget-object p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateProgressCircleLayoutInNormal: params.bottomMargin = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method protected updateSwitchVisibility(Ljava/lang/String;)V
    .registers 10

    .line 1249
    sget-object v0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mZoomChanging = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mZoomChanging:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mSelfTimerCapture = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mSelfTimerCapture:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mIsSuperNightModeOn = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mIsSuperNightModeOn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1250
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mNightLiteSwitch:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    if-nez v1, :cond_32

    goto/16 :goto_179

    .line 1253
    :cond_32
    iget-boolean v1, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mZoomChanging:Z

    const-string v2, "on"

    const-string v3, "value_super_night_lite_switch_off"

    if-nez v1, :cond_169

    iget-boolean v1, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mSelfTimerCapture:Z

    if-nez v1, :cond_169

    iget-boolean v1, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mIsConflictUIShowing:Z

    if-eqz v1, :cond_44

    goto/16 :goto_169

    .line 1265
    :cond_44
    iget-boolean v1, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mIsSuperNightModeOn:Z

    const-string v4, "value_super_night_lite_switch_on"

    if-nez v1, :cond_15b

    iget-boolean v1, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mIsUltraHDModeOn:Z

    if-eqz v1, :cond_50

    goto/16 :goto_15b

    .line 1272
    :cond_50
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " the value = "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " mUIState = "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mUIStateControl:Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;

    invoke-interface {v5}, Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;->getCurrentUIState()I

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1273
    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "key_super_night_lite_switch_state"

    if-eqz v1, :cond_108

    .line 1274
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mUIStateControl:Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;

    invoke-interface {v1}, Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;->getCurrentUIState()I

    move-result v1

    const/4 v5, 0x1

    if-ne v1, v5, :cond_108

    .line 1275
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->isNearByIconShowing()Z

    move-result v1

    .line 1276
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateSwitchVisibility: isNearByIconShowing = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", isInitialPosition() = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->isInitialPosition()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-eqz v1, :cond_b3

    .line 1277
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->isInitialPosition()Z

    move-result v0

    if-eqz v0, :cond_b3

    .line 1278
    invoke-virtual {p0, v5}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->translateSwitchIcon(Z)V

    goto :goto_108

    :cond_b3
    if-nez v1, :cond_c0

    .line 1279
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->isInitialPosition()Z

    move-result v0

    if-nez v0, :cond_c0

    const/4 v0, 0x0

    .line 1280
    invoke-virtual {p0, v0}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->translateSwitchIcon(Z)V

    goto :goto_108

    .line 1282
    :cond_c0
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mFilterUIShow:Z

    if-nez v0, :cond_e0

    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mImageStyleShow:Z

    if-nez v0, :cond_e0

    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mIsCelebritySceneShow:Z

    if-nez v0, :cond_e0

    iget-boolean v1, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mIsPopSettingShow:Z

    if-nez v1, :cond_e0

    iget-boolean v1, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mIsPMasterBottomUIShow:Z

    if-nez v1, :cond_e0

    iget-boolean v1, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mIsOverlayGuideShow:Z

    if-nez v1, :cond_e0

    if-nez v0, :cond_e0

    .line 1289
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->updateNightLiteSwitchLayout()V

    .line 1290
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->showEntryView()V

    .line 1292
    :cond_e0
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mLivePhotoSupport:Z

    if-nez v0, :cond_f0

    .line 1293
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mIsFlareCaptureSupport:Z

    if-eqz v0, :cond_108

    .line 1294
    :cond_f0
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mNightLiteSwitch:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    invoke-virtual {v0}, Landroid/view/View;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_f9

    move-object v4, v3

    .line 1296
    :cond_f9
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz v0, :cond_108

    iget-boolean v1, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mSuperNightCaptureBegin:Z

    if-nez v1, :cond_108

    .line 1297
    invoke-virtual {v0, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object v0

    .line 1298
    invoke-virtual {v0, v2, v4}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1305
    :cond_108
    :goto_108
    const-string v0, "off"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_179

    .line 1306
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mNightLiteSwitch:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 1307
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->isInitialPosition()Z

    move-result p1

    if-nez p1, :cond_12e

    .line 1308
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mNightLiteSwitch:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->getDefaultTranslationY()F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 1309
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mNightLiteSwitch:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 1311
    :cond_12e
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->hideEntryView()V

    .line 1312
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p1

    iget-boolean p1, p1, Lcom/transsion/camera/utils/CustomConfigUtil;->mLivePhotoSupport:Z

    if-nez p1, :cond_145

    .line 1313
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p1

    iget-boolean p1, p1, Lcom/transsion/camera/utils/CustomConfigUtil;->mIsFlareCaptureSupport:Z

    if-eqz p1, :cond_179

    iget-object p1, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz p1, :cond_179

    .line 1315
    :cond_145
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mNightLiteSwitch:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result p1

    if-nez p1, :cond_179

    .line 1316
    iget-boolean p1, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mSuperNightCaptureBegin:Z

    if-nez p1, :cond_179

    .line 1317
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    invoke-virtual {p0, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p0

    .line 1318
    invoke-virtual {p0, v2, v3}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    .line 1266
    :cond_15b
    :goto_15b
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz p0, :cond_179

    .line 1267
    const-string p1, "key_super_night_lite_switch"

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p0

    invoke-virtual {p0, p1, v4}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    .line 1254
    :cond_169
    :goto_169
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mLivePhotoSupport:Z

    if-nez v0, :cond_17a

    .line 1255
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mIsFlareCaptureSupport:Z

    if-nez v0, :cond_17a

    :cond_179
    :goto_179
    return-void

    .line 1258
    :cond_17a
    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_184

    .line 1259
    invoke-direct {p0, v3}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->notifyStatusMonitor(Ljava/lang/String;)V

    return-void

    .line 1262
    :cond_184
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->handleSwitchOnState()V

    return-void
.end method
