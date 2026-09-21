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

.field private static final NIGHT_LITE_NEXT_CAPTURE_READY:I = 0x4

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

    .line 240
    new-instance v0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI$1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI$1;-><init>(Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;)V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mSwitchClickListener:Landroid/view/View$OnClickListener;

    .line 367
    new-instance v0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI$2;

    invoke-direct {v0, p0}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI$2;-><init>(Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;)V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mLottieOnCompositionLoadedListener:Lcom/airbnb/lottie/LottieOnCompositionLoadedListener;

    .line 850
    new-instance v0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI$3;

    invoke-direct {v0, p0}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI$3;-><init>(Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;)V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mNextCaptureCallBack:Lcom/transsion/camera/feature/setting/supernightlite/SuperNightLite$INextCaptureCallBack;

    .line 872
    iput-boolean v2, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mSelfTimerCapture:Z

    .line 1113
    new-instance v0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI$4;

    invoke-direct {v0, p0}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI$4;-><init>(Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;)V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    .line 1956
    new-instance v0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;)V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mIModuleTransfer:Lcom/transsion/camera/app/common/IModuleTransfer;

    .line 169
    new-instance v0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI$UIHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI$UIHandler;-><init>(Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI-IA;)V

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

    .line 802
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    if-eqz p0, :cond_e

    .line 804
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 803
    const-string v2, "key_super_night_capture_status"

    invoke-virtual {p0, v2, p1, v0, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_e
    return-void
.end method

.method private configCapture()V
    .registers 5

    .line 733
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->isNightLiteCaptureEnable()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 736
    :cond_7
    const-string v0, "value_super_night_capture_begin"

    invoke-direct {p0, v0}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->changeSuperNightCaptureStatus(Ljava/lang/String;)V

    .line 737
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mSuperNightLite:Lcom/transsion/camera/feature/setting/supernightlite/SuperNightLite;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/supernightlite/SuperNightLite;->postAlgoOn()Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mIsPostAlgoOn:Z

    .line 739
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->loadingAnimEnable()Z

    move-result v0

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->setSuperNightLiteCountDownAnimaEnabled(Z)V

    .line 741
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

    .line 742
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mActionSound:Lcom/transsion/camera/utils/sound/IActionSound;

    if-eqz v0, :cond_57

    iget-boolean v1, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mSoundEnable:Z

    if-eqz v1, :cond_57

    iget-boolean v1, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mSoundLoaded:Z

    if-eqz v1, :cond_57

    .line 744
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->loadingAnimEnable()Z

    move-result v1

    if-eqz v1, :cond_52

    iget v1, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mCameraLowlightSampleId:I

    goto :goto_54

    :cond_52
    iget v1, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mShutterClickSampleId:I

    :goto_54
    invoke-interface {v0, v1}, Lcom/transsion/camera/utils/sound/IActionSound;->play(I)V

    .line 747
    :cond_57
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mIAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/4 v1, 0x1

    if-eqz v0, :cond_70

    .line 748
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mSuperNightCaptureBegin:Z

    const/16 v2, 0xed

    .line 749
    invoke-interface {v0, v2}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 750
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->isSuperDefinitionOn()Z

    move-result v0

    if-eqz v0, :cond_70

    .line 751
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mIAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/16 v2, 0x96

    invoke-interface {v0, v2}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 755
    :cond_70
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->loadingAnimEnable()Z

    move-result v0

    if-eqz v0, :cond_7d

    .line 756
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->updateShutterUI()V

    .line 757
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->startLoadingAnim()V

    return-void

    .line 759
    :cond_7d
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mTimerDelayReady:Z

    .line 760
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mShutterControl:Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;

    const/16 v1, 0x14

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;->updateShutterType(I)V

    .line 761
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mUIStateControl:Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-interface {v0, v2, v1, v3}, Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;->updateUIState(IILjava/lang/String;)V

    .line 763
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->hideEntryView()V

    return-void
.end method

.method private getAnimatingColor(FZ)I
    .registers 6

    if-eqz p2, :cond_5

    .line 345
    iget v0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mIconOffColor:I

    goto :goto_7

    :cond_5
    iget v0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mIconOnColor:I

    :goto_7
    if-eqz p2, :cond_c

    .line 346
    iget p2, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mIconOnColor:I

    goto :goto_15

    :cond_c
    iget-boolean p2, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mLowLight:Z

    if-eqz p2, :cond_13

    iget p2, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mIconLowLightColor:I

    goto :goto_15

    :cond_13
    iget p2, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mIconOffColor:I

    .line 348
    :goto_15
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mNightLiteSwitch:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    if-eqz v1, :cond_24

    .line 349
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

    .line 357
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

    .line 1426
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mIsAutoMacroSwitchShowing:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mQrIconShowing:Z

    if-eqz v0, :cond_a

    return v1

    .line 1429
    :cond_a
    sget-object v0, Lcom/transsion/camera/app_info/AppInfo;->res:Landroid/content/res/Resources;

    sget v2, Lcom/transsion/camera/R$dimen;->super_night_lite_switch_expand_margin_offset:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 1430
    iget-boolean v2, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mIsAutoMacroSwitchShowing:Z

    if-eqz v2, :cond_18

    neg-int p0, v0

    return p0

    .line 1433
    :cond_18
    iget-boolean p0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mQrIconShowing:Z

    if-eqz p0, :cond_1d

    return v0

    :cond_1d
    return v1
.end method

.method private getMarginOffsetInHoverForm()I
    .registers 5

    .line 1412
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mIsAutoMacroSwitchShowing:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mQrIconShowing:Z

    if-eqz v0, :cond_a

    return v1

    .line 1415
    :cond_a
    sget-object v0, Lcom/transsion/camera/app_info/AppInfo;->res:Landroid/content/res/Resources;

    sget v2, Lcom/transsion/camera/R$dimen;->super_night_lite_switch_hover_margin_offset:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 1416
    iget-boolean v2, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mIsAutoMacroSwitchShowing:Z

    const/4 v3, 0x4

    if-eqz v2, :cond_1d

    .line 1417
    iget p0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mScreenFormType:I

    if-ne p0, v3, :cond_25

    neg-int p0, v0

    return p0

    .line 1419
    :cond_1d
    iget-boolean v2, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mQrIconShowing:Z

    if-eqz v2, :cond_28

    .line 1420
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

    .line 1851
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

    .line 1855
    iget v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mOrientation:I

    const/16 v3, 0x5a

    if-eq v0, v3, :cond_31

    const/16 v3, 0xb4

    if-eq v0, v3, :cond_2a

    const/16 v3, 0x10e

    if-eq v0, v3, :cond_23

    .line 1866
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->getMarginOffsetInExpandForm()I

    move-result p0

    neg-int p0, p0

    aput p0, p1, v1

    return-void

    .line 1863
    :cond_23
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->getMarginOffsetInExpandForm()I

    move-result p0

    aput p0, p1, v2

    return-void

    .line 1860
    :cond_2a
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->getMarginOffsetInExpandForm()I

    move-result p0

    aput p0, p1, v1

    return-void

    .line 1857
    :cond_31
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->getMarginOffsetInExpandForm()I

    move-result p0

    neg-int p0, p0

    aput p0, p1, v2

    return-void

    .line 1870
    :cond_39
    sget-object p0, Lcom/transsion/camera/app_info/AppInfo;->res:Landroid/content/res/Resources;

    sget v0, Lcom/transsion/camera/R$dimen;->super_night_lite_switch_size:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    sget-object v0, Lcom/transsion/camera/app_info/AppInfo;->res:Landroid/content/res/Resources;

    sget v2, Lcom/transsion/camera/R$dimen;->super_night_lite_switch_margin_offset:I

    .line 1871
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    add-int/2addr p0, v0

    neg-int p0, p0

    .line 1872
    aput p0, p1, v1

    return-void

    .line 1853
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

    .line 1903
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

    .line 1904
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

    .line 271
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result p0

    if-nez p0, :cond_7

    return-void

    .line 275
    :cond_7
    check-cast p1, Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz p2, :cond_e

    const/high16 p0, -0x40800000    # -1.0f

    goto :goto_10

    :cond_e
    const/high16 p0, 0x3f800000    # 1.0f

    .line 276
    :goto_10
    invoke-virtual {p1, p0}, Lcom/airbnb/lottie/LottieAnimationView;->setSpeed(F)V

    .line 277
    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    return-void
.end method

.method private handleFlareNotification(Z)V
    .registers 3

    .line 312
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mIsFlareCaptureSupport:Z

    if-nez v0, :cond_9

    goto :goto_23

    .line 316
    :cond_9
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mNeedNotifyFlare:Z

    if-eqz v0, :cond_24

    .line 317
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mSuperNightCaptureBegin:Z

    if-nez v0, :cond_23

    if-eqz p1, :cond_16

    .line 319
    const-string p1, "value_super_night_lite_switch_on"

    goto :goto_18

    .line 320
    :cond_16
    const-string p1, "value_super_night_lite_switch_off"

    .line 321
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

    .line 324
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mNeedNotifyFlare:Z

    return-void
.end method

.method private handleLivePhotoNotification(Z)V
    .registers 3

    .line 295
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mLivePhotoSupport:Z

    if-nez v0, :cond_9

    goto :goto_23

    .line 299
    :cond_9
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mNeedNotifyLivePhoto:Z

    if-eqz v0, :cond_24

    .line 300
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mSuperNightCaptureBegin:Z

    if-nez v0, :cond_23

    if-eqz p1, :cond_16

    .line 302
    const-string p1, "value_super_night_lite_switch_on"

    goto :goto_18

    .line 303
    :cond_16
    const-string p1, "value_super_night_lite_switch_off"

    .line 304
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

    .line 307
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mNeedNotifyLivePhoto:Z

    return-void
.end method

.method private handleLottieColorUpdate(Z)V
    .registers 7

    .line 329
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_44

    .line 333
    :cond_7
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mNightLiteSwitch:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    new-instance v1, Lcom/airbnb/lottie/model/KeyPath;

    const-string v2, "**"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/airbnb/lottie/model/KeyPath;-><init>([Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->resolveKeyPath(Lcom/airbnb/lottie/model/KeyPath;)Ljava/util/List;

    move-result-object v0

    .line 334
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_44

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/airbnb/lottie/model/KeyPath;

    .line 335
    invoke-virtual {v1}, Lcom/airbnb/lottie/model/KeyPath;->keysToString()Ljava/lang/String;

    move-result-object v2

    .line 336
    const-string v3, "icon"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_37

    sget-object v2, Lcom/airbnb/lottie/LottieProperty;->COLOR:Ljava/lang/Integer;

    goto :goto_39

    :cond_37
    sget-object v2, Lcom/airbnb/lottie/LottieProperty;->STROKE_COLOR:Ljava/lang/Integer;

    .line 337
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

    .line 281
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-nez v0, :cond_5

    return-void

    :cond_5
    if-eqz p1, :cond_a

    .line 286
    const-string v1, "value_super_night_lite_switch_on"

    goto :goto_c

    .line 287
    :cond_a
    const-string v1, "value_super_night_lite_switch_off"

    .line 288
    :goto_c
    const-string v2, "key_super_night_lite_switch"

    invoke-virtual {v0, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object v0

    invoke-virtual {v0, v2, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    .line 290
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->handleLivePhotoNotification(Z)V

    .line 291
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->handleFlareNotification(Z)V

    return-void
.end method

.method private handleSwitchOnState()V
    .registers 3

    .line 1239
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mUIStateControl:Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;->getCurrentUIState()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_a

    return-void

    .line 1242
    :cond_a
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mNightLiteSwitch:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    invoke-virtual {v0}, Landroid/view/View;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1243
    const-string v0, "value_super_night_lite_switch_off"

    goto :goto_17

    :cond_15
    const-string v0, "value_super_night_lite_switch_on"

    .line 1244
    :goto_17
    invoke-direct {p0, v0}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->notifyStatusMonitor(Ljava/lang/String;)V

    return-void
.end method

.method private hideCapturingHint()V
    .registers 3

    .line 797
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mCaptureHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ui/HintInfo;->setMessage(Ljava/lang/String;)V

    .line 798
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mIAppUI:Lcom/transsion/camera/app/common/IAppUI;

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mCaptureHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->hideHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    return-void
.end method

.method private hideLoadingView()V
    .registers 4

    .line 498
    sget-object v0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, " hideLoadingView"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 499
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mProgressCircle:Lcom/transsion/camera/ui/setting/supernightlite/NightLiteProgressView;

    if-eqz v0, :cond_15

    const/16 v1, 0x8

    .line 500
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 501
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mProgressTimer:Lcom/transsion/camera/app/ui/widget/RotateTextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 503
    :cond_15
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mProgressCircle:Lcom/transsion/camera/ui/setting/supernightlite/NightLiteProgressView;

    iget-wide v1, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mProgressTime:J

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/ui/setting/supernightlite/NightLiteProgressView;->updateProgress(J)V

    const/4 v0, 0x1

    .line 504
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mLoadingAnimEnd:Z

    .line 505
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->hideCapturingHint()V

    return-void
.end method

.method private initLoadingAnim()V
    .registers 5

    .line 474
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mIsPostAlgoOn:Z

    if-nez v0, :cond_8

    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mAiRawSprdSupport:Z

    if-eqz v0, :cond_1e

    .line 475
    :cond_8
    iget-wide v0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mTotalDuration:J

    iget-boolean v2, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mIsSuperNightModeOn:Z

    if-eqz v2, :cond_18

    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->isFacingBack()Z

    move-result v2

    if-eqz v2, :cond_18

    .line 476
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

    .line 478
    :cond_1e
    iget-wide v0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mTotalDuration:J

    iget v2, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mLargeModelExtraTime:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mTotalDuration:J

    .line 479
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mProgressCircle:Lcom/transsion/camera/ui/setting/supernightlite/NightLiteProgressView;

    invoke-virtual {v2, v0, v1}, Lcom/transsion/camera/ui/setting/supernightlite/NightLiteProgressView;->updateTotalDuration(J)V

    .line 480
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mProgressCircle:Lcom/transsion/camera/ui/setting/supernightlite/NightLiteProgressView;

    iget-wide v1, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mTotalDuration:J

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/ui/setting/supernightlite/NightLiteProgressView;->updateProgress(J)V

    const/4 v0, 0x0

    .line 481
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mLoadingAnimEnd:Z

    .line 482
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mStartTime:J

    return-void
.end method

.method private isFacingBack()Z
    .registers 1

    .line 1975
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/setting/ISetting;->getCurrentCameraId()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/transsion/camera/adapter/CameraInfoUtil;->isCameraFacingBack(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private isFlashOn()Z
    .registers 2

    .line 1471
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    const-string v0, "key_flash_facade"

    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/setting/ISetting;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1472
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

    .line 1331
    iget v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mScreenFormType:I

    const/4 v1, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_18

    const/4 v1, 0x5

    if-eq v0, v1, :cond_18

    if-ne v0, v3, :cond_d

    goto :goto_18

    .line 1336
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

    .line 1334
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

.method private isSuperDefinitionOn()Z
    .registers 2

    .line 782
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-eqz p0, :cond_11

    .line 783
    const-string v0, "key_super_definition"

    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/setting/ISetting;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 784
    const-string v0, "on"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0

    :cond_11
    const/4 p0, 0x0

    return p0
.end method

.method private synthetic lambda$createEntryView$0(Ljava/lang/Throwable;)V
    .registers 4

    .line 208
    sget-object v0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "super_night_lite_animation.json load failed "

    invoke-static {v0, v1, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 209
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

    .line 340
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

    .line 1059
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mActionSoundLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1060
    :try_start_3
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mActionSound:Lcom/transsion/camera/utils/sound/IActionSound;

    if-nez v1, :cond_d

    .line 1061
    invoke-interface {p1, p2}, Lcom/transsion/camera/utils/sound/IActionSound;->unload(I)V

    goto :goto_f

    :catchall_b
    move-exception p0

    goto :goto_11

    .line 1063
    :cond_d
    iput p2, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mShutterClickSampleId:I

    .line 1065
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

    .line 1069
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mActionSoundLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1070
    :try_start_3
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mActionSound:Lcom/transsion/camera/utils/sound/IActionSound;

    if-nez v1, :cond_d

    .line 1071
    invoke-interface {p1, p2}, Lcom/transsion/camera/utils/sound/IActionSound;->unload(I)V

    goto :goto_f

    :catchall_b
    move-exception p0

    goto :goto_11

    .line 1073
    :cond_d
    iput p2, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mShutterClickSampleId:I

    .line 1075
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

    .line 1080
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mActionSoundLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1081
    :try_start_3
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mActionSound:Lcom/transsion/camera/utils/sound/IActionSound;

    if-nez v1, :cond_d

    .line 1082
    invoke-interface {p1, p2}, Lcom/transsion/camera/utils/sound/IActionSound;->unload(I)V

    goto :goto_f

    :catchall_b
    move-exception p0

    goto :goto_11

    .line 1084
    :cond_d
    iput p2, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mCameraLowlightSampleId:I

    .line 1086
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

    .line 1956
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->updateRingScreenLight(Z)V

    return-void
.end method

.method private synthetic lambda$setDeviceSetting$5()V
    .registers 2

    .line 1465
    const-string v0, "sound_effect_default"

    invoke-direct {p0, v0}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->loadActionSound(Ljava/lang/String;)V

    return-void
.end method

.method private loadActionSound(Ljava/lang/String;)V
    .registers 4

    .line 1048
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mActionSound:Lcom/transsion/camera/utils/sound/IActionSound;

    if-nez v0, :cond_e

    .line 1049
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mIAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz v0, :cond_e

    .line 1050
    invoke-interface {v0}, Lcom/transsion/camera/app/common/IAppUI;->getActionSound()Lcom/transsion/camera/utils/sound/IActionSound;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mActionSound:Lcom/transsion/camera/utils/sound/IActionSound;

    .line 1053
    :cond_e
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mActionSound:Lcom/transsion/camera/utils/sound/IActionSound;

    if-eqz v0, :cond_4a

    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mSoundLoaded:Z

    if-eqz v0, :cond_17

    goto :goto_4a

    .line 1057
    :cond_17
    const-string v0, "sound_effect_default"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2a

    .line 1058
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mActionSound:Lcom/transsion/camera/utils/sound/IActionSound;

    new-instance v1, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI$$ExternalSyntheticLambda4;-><init>(Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;)V

    invoke-interface {v0, p1, v1}, Lcom/transsion/camera/utils/sound/IActionSound;->load(Ljava/lang/String;Lcom/transsion/camera/utils/sound/IActionSound$SoundCallback;)V

    goto :goto_36

    .line 1068
    :cond_2a
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mActionSound:Lcom/transsion/camera/utils/sound/IActionSound;

    new-instance v0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI$$ExternalSyntheticLambda5;-><init>(Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;)V

    const-string v1, "camera_click.ogg"

    invoke-interface {p1, v1, v0}, Lcom/transsion/camera/utils/sound/IActionSound;->load(Ljava/lang/String;Lcom/transsion/camera/utils/sound/IActionSound$SoundCallback;)V

    .line 1078
    :goto_36
    iget p1, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mCameraLowlightSampleId:I

    sget v0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->CAMERA_LOWLIGHT_CLICK:I

    if-eq p1, v0, :cond_46

    .line 1079
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mActionSound:Lcom/transsion/camera/utils/sound/IActionSound;

    new-instance v1, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI$$ExternalSyntheticLambda6;-><init>(Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;)V

    invoke-interface {p1, v0, v1}, Lcom/transsion/camera/utils/sound/IActionSound;->load(ILcom/transsion/camera/utils/sound/IActionSound$SoundCallback;)V

    :cond_46
    const/4 p1, 0x1

    .line 1089
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mSoundLoaded:Z

    return-void

    .line 1054
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

    .line 714
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

    .line 715
    iget v0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mShutterTime:I

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mTotalDuration:J

    .line 716
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mIsLowLight:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_38

    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->isFlashOn()Z

    move-result v0

    if-eqz v0, :cond_38

    .line 717
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->showCapturingHint()V

    return v1

    .line 720
    :cond_38
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-eqz v0, :cond_4a

    .line 721
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

    .line 710
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

    .line 688
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mNightLiteSwitch:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    if-eqz v0, :cond_57

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz v0, :cond_57

    .line 689
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

    .line 690
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mNightLiteSwitch:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    invoke-virtual {v0}, Landroid/view/View;->isSelected()Z

    move-result v0

    const-string v1, "key_super_night_lite_switch"

    if-eqz v0, :cond_4c

    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mIsSuperNightModeOn:Z

    if-nez v0, :cond_4c

    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mIsUltraHDModeOn:Z

    if-nez v0, :cond_4c

    .line 691
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    invoke-virtual {p0, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p0

    const-string v0, "value_super_night_lite_switch_off"

    invoke-virtual {p0, v1, v0}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    .line 694
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

    .line 1248
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz v0, :cond_11

    iget-boolean p0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mSuperNightCaptureBegin:Z

    if-nez p0, :cond_11

    .line 1249
    const-string p0, "key_super_night_lite_switch_state"

    invoke-virtual {v0, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object v0

    .line 1250
    invoke-virtual {v0, p0, p1}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_11
    return-void
.end method

.method private releaseActionSound()V
    .registers 4

    .line 1228
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mActionSoundLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1229
    :try_start_3
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mActionSound:Lcom/transsion/camera/utils/sound/IActionSound;

    if-eqz v1, :cond_1a

    iget-boolean v2, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mSoundLoaded:Z

    if-eqz v2, :cond_1a

    .line 1230
    iget v2, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mShutterClickSampleId:I

    invoke-interface {v1, v2}, Lcom/transsion/camera/utils/sound/IActionSound;->unload(I)V

    .line 1231
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

    .line 1233
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mSoundLoaded:Z

    const/4 v1, 0x0

    .line 1234
    iput-object v1, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mActionSound:Lcom/transsion/camera/utils/sound/IActionSound;

    .line 1235
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

    .line 1510
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToTop:I

    .line 1511
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->leftToRight:I

    .line 1512
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToBottom:I

    .line 1513
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToTop:I

    .line 1514
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->rightToLeft:I

    .line 1515
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToBottom:I

    .line 1516
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->rightToRight:I

    .line 1517
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->leftToLeft:I

    const/4 v0, 0x0

    .line 1519
    iput v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 1520
    iput v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 1521
    iput v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 1522
    iput v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    return-void
.end method

.method private restoreNightSwitch()V
    .registers 3

    .line 674
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mNightLiteSwitch:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    if-eqz v0, :cond_1b

    .line 675
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 676
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mNightLiteSwitch:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setProgress(F)V

    .line 677
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mNightLiteSwitch:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    invoke-direct {p0, v0}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->switchIconColor(Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;)V

    .line 679
    :cond_15
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mNightLiteSwitch:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 681
    :cond_1b
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz p0, :cond_2a

    .line 682
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

    .line 263
    check-cast p1, Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->isAnimating()Z

    move-result p0

    if-eqz p0, :cond_11

    .line 264
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

    .line 790
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mCaptureHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mSteadyHintMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ui/HintInfo;->setMessage(Ljava/lang/String;)V

    .line 791
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mCaptureHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ui/HintInfo;->enableBackground(Z)V

    .line 792
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mCaptureHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ui/HintInfo;->setHighlight(Z)V

    .line 793
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mIAppUI:Lcom/transsion/camera/app/common/IAppUI;

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mCaptureHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->showHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    return-void
.end method

.method private showEntryView()V
    .registers 4

    .line 416
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mNightLiteSwitch:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    if-eqz v0, :cond_48

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_48

    .line 417
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mCameraOperateActionControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    if-eqz v0, :cond_13

    const/16 v1, 0x127

    .line 418
    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    :cond_13
    const/4 v0, 0x7

    .line 420
    iget v1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mScreenFormType:I

    if-eq v0, v1, :cond_48

    .line 421
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

    .line 422
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mNightLiteSwitch:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_48
    return-void
.end method

.method private showLoadingView()V
    .registers 3

    .line 486
    sget-object v0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, " showLoadingView"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 487
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mEntryRootView:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    if-eqz v0, :cond_f

    .line 488
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 490
    :cond_f
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mProgressCircle:Lcom/transsion/camera/ui/setting/supernightlite/NightLiteProgressView;

    if-eqz v0, :cond_1b

    .line 491
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 492
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mProgressTimer:Lcom/transsion/camera/app/ui/widget/RotateTextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 494
    :cond_1b
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->hideEntryView()V

    return-void
.end method

.method private startLoadingAnim()V
    .registers 3

    .line 440
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->minLoadingTime()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 441
    :cond_7
    sget-object v0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, " start loading anim"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 442
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->showLoadingView()V

    const/4 v0, 0x0

    .line 443
    invoke-virtual {p0, v0}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->setEnable(Z)V

    .line 444
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->initLoadingAnim()V

    .line 445
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->updateLoadingTime()V

    return-void
.end method

.method private startNightProcessAnim()V
    .registers 5

    const/4 v0, 0x1

    .line 509
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mLoadingAnimEnd:Z

    .line 510
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mUIStateControl:Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;

    invoke-interface {v1}, Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;->getCurrentUIState()I

    move-result v1

    if-eq v1, v0, :cond_27

    .line 511
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

    .line 515
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

    .line 364
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mLottieOnCompositionLoadedListener:Lcom/airbnb/lottie/LottieOnCompositionLoadedListener;

    invoke-virtual {p1, p0}, Lcom/airbnb/lottie/LottieAnimationView;->addLottieOnCompositionLoadedListener(Lcom/airbnb/lottie/LottieOnCompositionLoadedListener;)Z

    return-void
.end method

.method private translateSwitchIconInExpandForm(Landroid/view/ViewPropertyAnimator;Z)V
    .registers 6

    .line 1395
    iget v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mOrientation:I

    const/16 v1, 0x5a

    const/4 v2, 0x0

    if-eq v0, v1, :cond_31

    const/16 v1, 0xb4

    if-eq v0, v1, :cond_26

    const/16 v1, 0x10e

    if-eq v0, v1, :cond_1b

    if-eqz p2, :cond_17

    .line 1406
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->getMarginOffsetInExpandForm()I

    move-result p0

    neg-int p0, p0

    int-to-float v2, p0

    :cond_17
    invoke-virtual {p1, v2}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    return-void

    :cond_1b
    if-eqz p2, :cond_22

    .line 1403
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->getMarginOffsetInExpandForm()I

    move-result p0

    int-to-float v2, p0

    :cond_22
    invoke-virtual {p1, v2}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    return-void

    :cond_26
    if-eqz p2, :cond_2d

    .line 1400
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->getMarginOffsetInExpandForm()I

    move-result p0

    int-to-float v2, p0

    :cond_2d
    invoke-virtual {p1, v2}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    return-void

    :cond_31
    if-eqz p2, :cond_39

    .line 1397
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

    .line 1504
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->updateProgressCircleLayout()V

    .line 1505
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->updateProgressTimerLayout()V

    .line 1506
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->updateNightLiteSwitchLayout()V

    return-void
.end method

.method private updateLoadingTime()V
    .registers 7

    .line 450
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mEntryRootView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_f

    .line 451
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mEntryRootView:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 453
    :cond_f
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mIsCaptureCancel:Z

    if-eqz v0, :cond_17

    .line 454
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->hideLoadingView()V

    return-void

    .line 458
    :cond_17
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->showCapturingHint()V

    .line 459
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mStartTime:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mProgressTime:J

    .line 460
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

    .line 461
    iget-wide v1, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mProgressTime:J

    iget-wide v3, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mTotalDuration:J

    cmp-long v1, v1, v3

    if-ltz v1, :cond_58

    .line 462
    iput-wide v3, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mProgressTime:J

    .line 463
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mUIHandler:Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI$UIHandler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 464
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->hideLoadingView()V

    .line 466
    :cond_58
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mProgressCircle:Lcom/transsion/camera/ui/setting/supernightlite/NightLiteProgressView;

    iget-wide v2, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mTotalDuration:J

    iget-wide v4, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mProgressTime:J

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Lcom/transsion/camera/ui/setting/supernightlite/NightLiteProgressView;->updateProgress(J)V

    .line 467
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " the progress is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mProgressTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 468
    iget-wide v0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mProgressTime:J

    iget-wide v2, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mTotalDuration:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_88

    .line 469
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mUIHandler:Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI$UIHandler;

    const/4 v0, 0x3

    const-wide/16 v1, 0xa

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_88
    return-void
.end method

.method private updateNightLiteSwitchLayoutInExpand()V
    .registers 9

    .line 1782
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mNightLiteSwitch:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 1783
    invoke-static {v0}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->resetLayoutParams(Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;)V

    .line 1784
    iget v1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mScreenFormType:I

    iget v2, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mOrientation:I

    invoke-virtual {p0, v1, v2}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->getNightLiteSwitchLayoutMargins(II)Landroid/graphics/Rect;

    move-result-object v1

    .line 1785
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

    .line 1793
    :cond_2b
    iput v5, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToTop:I

    .line 1794
    iput v5, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->leftToLeft:I

    .line 1795
    iget v2, v1, Landroid/graphics/Rect;->left:I

    invoke-static {v7}, Lcom/transsion/camera/utils/UIUtils;->dp(I)I

    move-result v3

    invoke-static {v2, v3}, Lcom/transsion/camera/utils/UIUtils;->getMarginFromRect(II)I

    move-result v2

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 1796
    iget v1, v1, Landroid/graphics/Rect;->top:I

    invoke-static {v4}, Lcom/transsion/camera/utils/UIUtils;->dp(I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/UIUtils;->getMarginFromRect(II)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    goto :goto_9e

    .line 1799
    :cond_48
    iput v5, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToTop:I

    .line 1800
    iput v5, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->rightToRight:I

    .line 1801
    iget v2, v1, Landroid/graphics/Rect;->right:I

    invoke-static {v4}, Lcom/transsion/camera/utils/UIUtils;->dp(I)I

    move-result v4

    invoke-static {v2, v4}, Lcom/transsion/camera/utils/UIUtils;->getMarginFromRect(II)I

    move-result v2

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 1802
    iget v1, v1, Landroid/graphics/Rect;->top:I

    invoke-static {v3}, Lcom/transsion/camera/utils/UIUtils;->dp(I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/UIUtils;->getMarginFromRect(II)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    goto :goto_9e

    .line 1805
    :cond_65
    iput v5, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToBottom:I

    .line 1806
    iput v5, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->rightToRight:I

    .line 1807
    iget v2, v1, Landroid/graphics/Rect;->right:I

    invoke-static {v7}, Lcom/transsion/camera/utils/UIUtils;->dp(I)I

    move-result v3

    invoke-static {v2, v3}, Lcom/transsion/camera/utils/UIUtils;->getMarginFromRect(II)I

    move-result v2

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 1808
    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    invoke-static {v4}, Lcom/transsion/camera/utils/UIUtils;->dp(I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/UIUtils;->getMarginFromRect(II)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    goto :goto_9e

    .line 1787
    :cond_82
    iput v5, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToBottom:I

    .line 1788
    iput v5, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->leftToLeft:I

    .line 1789
    iget v2, v1, Landroid/graphics/Rect;->left:I

    invoke-static {v4}, Lcom/transsion/camera/utils/UIUtils;->dp(I)I

    move-result v4

    invoke-static {v2, v4}, Lcom/transsion/camera/utils/UIUtils;->getMarginFromRect(II)I

    move-result v2

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 1790
    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    invoke-static {v3}, Lcom/transsion/camera/utils/UIUtils;->dp(I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/UIUtils;->getMarginFromRect(II)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 1811
    :goto_9e
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mNightLiteSwitch:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private updateNightLiteSwitchLayoutInHover()V
    .registers 6

    .line 1770
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mNightLiteSwitch:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 1771
    invoke-static {v0}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->resetLayoutParams(Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;)V

    .line 1772
    iget v1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mScreenFormType:I

    iget v2, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mOrientation:I

    invoke-virtual {p0, v1, v2}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->getNightLiteSwitchLayoutMargins(II)Landroid/graphics/Rect;

    move-result-object v1

    const/4 v2, 0x0

    .line 1773
    iput v2, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToBottom:I

    .line 1774
    iput v2, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->rightToRight:I

    .line 1775
    iget v2, v1, Landroid/graphics/Rect;->right:I

    const/16 v3, 0xa

    invoke-static {v3}, Lcom/transsion/camera/utils/UIUtils;->dp(I)I

    move-result v3

    invoke-static {v2, v3}, Lcom/transsion/camera/utils/UIUtils;->getMarginFromRect(II)I

    move-result v2

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 1776
    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

    .line 1777
    invoke-interface {v2}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getModePlusBottomBarHeight()I

    move-result v2

    iget-object v3, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mNightLiteSwitch:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    invoke-virtual {v3}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/transsion/camera/R$dimen;->super_night_lite_switch_hover_bottom_margin:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    add-int/2addr v2, v3

    .line 1776
    invoke-static {v1, v2}, Lcom/transsion/camera/utils/UIUtils;->getMarginFromRect(II)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 1778
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mNightLiteSwitch:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private updateNightLiteSwitchLayoutInLeftHover()V
    .registers 6

    .line 1877
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mNightLiteSwitch:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 1878
    invoke-static {v0}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->resetLayoutParams(Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;)V

    .line 1879
    iget v1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mScreenFormType:I

    iget v2, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mOrientation:I

    invoke-virtual {p0, v1, v2}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->getNightLiteSwitchLayoutMargins(II)Landroid/graphics/Rect;

    move-result-object v1

    const/4 v2, 0x0

    .line 1880
    iput v2, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToBottom:I

    .line 1881
    iput v2, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->rightToRight:I

    .line 1882
    iget v2, v1, Landroid/graphics/Rect;->right:I

    sget-object v3, Lcom/transsion/camera/app_info/AppInfo;->res:Landroid/content/res/Resources;

    sget v4, Lcom/transsion/camera/R$dimen;->super_night_lite_switch_left_hover_right_margin:I

    .line 1883
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 1882
    invoke-static {v2, v3}, Lcom/transsion/camera/utils/UIUtils;->getMarginFromRect(II)I

    move-result v2

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 1884
    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    sget-object v2, Lcom/transsion/camera/app_info/AppInfo;->res:Landroid/content/res/Resources;

    sget v3, Lcom/transsion/camera/R$dimen;->super_night_lite_switch_left_hover_bottom_margin:I

    .line 1885
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 1884
    invoke-static {v1, v2}, Lcom/transsion/camera/utils/UIUtils;->getMarginFromRect(II)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 1886
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mNightLiteSwitch:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private updateNightLiteSwitchLayoutInNormal()V
    .registers 6

    .line 1757
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mNightLiteSwitch:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 1758
    invoke-static {v0}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->resetLayoutParams(Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;)V

    .line 1759
    iget v1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mScreenFormType:I

    iget v2, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mOrientation:I

    invoke-virtual {p0, v1, v2}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->getNightLiteSwitchLayoutMargins(II)Landroid/graphics/Rect;

    move-result-object v1

    const/4 v2, 0x0

    .line 1760
    iput v2, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToBottom:I

    .line 1761
    iput v2, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->rightToRight:I

    .line 1762
    iget v2, v1, Landroid/graphics/Rect;->right:I

    const/16 v3, 0xa

    invoke-static {v3}, Lcom/transsion/camera/utils/UIUtils;->dp(I)I

    move-result v3

    invoke-static {v2, v3}, Lcom/transsion/camera/utils/UIUtils;->getMarginFromRect(II)I

    move-result v2

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 1763
    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

    .line 1764
    invoke-interface {v2}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getModePlusBottomBarHeight()I

    move-result v2

    iget-object v3, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mNightLiteSwitch:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    invoke-virtual {v3}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/transsion/camera/R$dimen;->super_night_lite_option_margin_bottom:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    add-int/2addr v2, v3

    .line 1763
    invoke-static {v1, v2}, Lcom/transsion/camera/utils/UIUtils;->getMarginFromRect(II)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 1765
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

    .line 1766
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mNightLiteSwitch:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private updateNightLiteSwitchLayoutInRightHover()V
    .registers 6

    .line 1890
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mNightLiteSwitch:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 1891
    invoke-static {v0}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->resetLayoutParams(Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;)V

    .line 1892
    iget v1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mScreenFormType:I

    iget v2, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mOrientation:I

    invoke-virtual {p0, v1, v2}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->getNightLiteSwitchLayoutMargins(II)Landroid/graphics/Rect;

    move-result-object v1

    const/4 v2, 0x0

    .line 1893
    iput v2, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToTop:I

    .line 1894
    iput v2, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->leftToLeft:I

    .line 1895
    iget v2, v1, Landroid/graphics/Rect;->left:I

    sget-object v3, Lcom/transsion/camera/app_info/AppInfo;->res:Landroid/content/res/Resources;

    sget v4, Lcom/transsion/camera/R$dimen;->super_night_lite_switch_right_hover_left_margin:I

    .line 1896
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 1895
    invoke-static {v2, v3}, Lcom/transsion/camera/utils/UIUtils;->getMarginFromRect(II)I

    move-result v2

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 1897
    iget v1, v1, Landroid/graphics/Rect;->top:I

    sget-object v2, Lcom/transsion/camera/app_info/AppInfo;->res:Landroid/content/res/Resources;

    sget v3, Lcom/transsion/camera/R$dimen;->super_night_lite_switch_right_hover_top_margin:I

    .line 1898
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 1897
    invoke-static {v1, v2}, Lcom/transsion/camera/utils/UIUtils;->getMarginFromRect(II)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 1899
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mNightLiteSwitch:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private updateNightLiteSwitchTranslation()V
    .registers 4

    .line 1834
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mNightLiteSwitch:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 1835
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mNightLiteSwitch:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 1836
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mNightLiteSwitch:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->getDefaultTranslationY()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 1837
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->isNearByIconShowing()Z

    move-result v0

    if-eqz v0, :cond_36

    const/4 v0, 0x2

    .line 1838
    new-array v0, v0, [I

    .line 1839
    invoke-direct {p0, v0}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->getNightLiteSwitchTranslations([I)V

    .line 1840
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mNightLiteSwitch:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    const/4 v2, 0x0

    aget v2, v0, v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationX(F)V

    .line 1841
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mNightLiteSwitch:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    const/4 v2, 0x1

    aget v0, v0, v2

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 1843
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

    .line 1939
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

    .line 1940
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mProgressRotate:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    if-eqz v0, :cond_21

    .line 1941
    iget v1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mOrientation:I

    invoke-virtual {v0, v1, p1}, Lcom/transsion/camera/app/ui/widget/RotateLayout;->setOrientation(IZ)V

    .line 1943
    :cond_21
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mNightLiteSwitch:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    if-eqz v0, :cond_2a

    .line 1944
    iget v1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mOrientation:I

    invoke-virtual {v0, v1, p1}, Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;->setOrientation(IZ)V

    .line 1946
    :cond_2a
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mProgressTimer:Lcom/transsion/camera/app/ui/widget/RotateTextView;

    if-eqz p1, :cond_3b

    .line 1947
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

    .line 1732
    iget v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mScreenFormType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_9

    .line 1733
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->updateProgressCircleLayoutInExpand()V

    return-void

    :cond_9
    const/4 v1, 0x2

    if-ne v0, v1, :cond_10

    .line 1735
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->updateProgressCircleLayoutInColumn()V

    return-void

    :cond_10
    const/4 v1, 0x4

    if-ne v0, v1, :cond_17

    .line 1737
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->updateProgressCircleLayoutInLeftHover()V

    return-void

    :cond_17
    const/4 v1, 0x5

    if-ne v0, v1, :cond_1e

    .line 1739
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->updateProgressCircleLayoutInRightHover()V

    return-void

    .line 1740
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

    .line 1741
    iget v1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mScreenFormType:I

    if-ne v0, v1, :cond_37

    .line 1742
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->updateProgressCircleLayoutInFlip()V

    return-void

    .line 1744
    :cond_37
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->updateProgressCircleLayoutInTBHover()V

    return-void

    .line 1747
    :cond_3b
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->updateProgressCircleLayoutInNormal()V

    return-void
.end method

.method private updateProgressCircleLayoutInColumn()V
    .registers 4

    .line 1622
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mProgressRotate:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 1623
    invoke-static {v0}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->resetLayoutParams(Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;)V

    const/4 v1, 0x0

    .line 1624
    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToBottom:I

    .line 1625
    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->rightToRight:I

    .line 1626
    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->leftToLeft:I

    const v1, 0x41ad5c29    # 21.67f

    .line 1627
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

    .line 1628
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mProgressRotate:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1629
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

    .line 1656
    sget-object v0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "updateProgressCircleLayoutInExpand: "

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1657
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mProgressRotate:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 1658
    invoke-static {v0}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->resetLayoutParams(Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;)V

    .line 1659
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

    .line 1667
    :cond_2a
    iput v4, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToBottom:I

    .line 1668
    iput v4, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->rightToRight:I

    .line 1669
    invoke-static {v6}, Lcom/transsion/camera/utils/UIUtils;->dp(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 1670
    invoke-static {v3}, Lcom/transsion/camera/utils/UIUtils;->dp(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    goto :goto_6d

    .line 1673
    :cond_3b
    iput v4, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToBottom:I

    .line 1674
    iput v4, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->leftToLeft:I

    .line 1675
    invoke-static {v2}, Lcom/transsion/camera/utils/UIUtils;->dp(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 1676
    invoke-static {v3}, Lcom/transsion/camera/utils/UIUtils;->dp(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto :goto_6d

    .line 1679
    :cond_4c
    iput v4, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToTop:I

    .line 1680
    iput v4, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->leftToLeft:I

    .line 1681
    invoke-static {v6}, Lcom/transsion/camera/utils/UIUtils;->dp(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 1682
    invoke-static {v3}, Lcom/transsion/camera/utils/UIUtils;->dp(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    goto :goto_6d

    .line 1661
    :cond_5d
    iput v4, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToTop:I

    .line 1662
    iput v4, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->rightToRight:I

    .line 1663
    invoke-static {v2}, Lcom/transsion/camera/utils/UIUtils;->dp(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 1664
    invoke-static {v3}, Lcom/transsion/camera/utils/UIUtils;->dp(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 1685
    :goto_6d
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mProgressRotate:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private updateProgressCircleLayoutInFlip()V
    .registers 5

    .line 1689
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mProgressCircle:Lcom/transsion/camera/ui/setting/supernightlite/NightLiteProgressView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1690
    sget-object v1, Lcom/transsion/camera/app_info/AppInfo;->res:Landroid/content/res/Resources;

    sget v2, Lcom/transsion/camera/R$dimen;->flip_super_night_progress_circle_size:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1691
    sget-object v1, Lcom/transsion/camera/app_info/AppInfo;->res:Landroid/content/res/Resources;

    sget v2, Lcom/transsion/camera/R$dimen;->flip_super_night_progress_circle_size:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1692
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mProgressCircle:Lcom/transsion/camera/ui/setting/supernightlite/NightLiteProgressView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1693
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mProgressCircle:Lcom/transsion/camera/ui/setting/supernightlite/NightLiteProgressView;

    iget v1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mScreenFormType:I

    invoke-virtual {v0, v1}, Lcom/transsion/camera/ui/setting/supernightlite/NightLiteProgressView;->setScreenFormType(I)V

    .line 1694
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mProgressRotate:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 1695
    invoke-static {v0}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->resetLayoutParams(Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;)V

    .line 1696
    iget v1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mOrientation:I

    const/4 v2, 0x0

    if-eqz v1, :cond_4f

    .line 1707
    iput v2, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToTop:I

    .line 1708
    iput v2, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->rightToRight:I

    .line 1709
    sget-object v1, Lcom/transsion/camera/app_info/AppInfo;->res:Landroid/content/res/Resources;

    sget v2, Lcom/transsion/camera/R$dimen;->flip_super_night_progress_circle_margin_top:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 1710
    sget-object v1, Lcom/transsion/camera/app_info/AppInfo;->res:Landroid/content/res/Resources;

    sget v2, Lcom/transsion/camera/R$dimen;->flip_super_night_progress_circle_margin_right:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    goto :goto_67

    .line 1698
    :cond_4f
    iput v2, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToBottom:I

    .line 1699
    iput v2, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->rightToRight:I

    .line 1700
    sget-object v1, Lcom/transsion/camera/app_info/AppInfo;->res:Landroid/content/res/Resources;

    sget v2, Lcom/transsion/camera/R$dimen;->flip_super_night_progress_circle_margin_top:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 1701
    sget-object v1, Lcom/transsion/camera/app_info/AppInfo;->res:Landroid/content/res/Resources;

    sget v2, Lcom/transsion/camera/R$dimen;->flip_super_night_progress_circle_margin_right:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 1713
    :goto_67
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mProgressRotate:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1714
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

    .line 1644
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mProgressRotate:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 1645
    invoke-static {v0}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->resetLayoutParams(Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;)V

    const/4 v1, 0x0

    .line 1646
    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToTop:I

    .line 1647
    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->rightToRight:I

    const/16 v1, 0x1b

    .line 1648
    invoke-static {v1}, Lcom/transsion/camera/utils/UIUtils;->dp(I)I

    move-result v1

    const/16 v2, 0x66

    invoke-static {v2}, Lcom/transsion/camera/utils/UIUtils;->dp(I)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    const/16 v1, 0x3c

    .line 1649
    invoke-static {v1}, Lcom/transsion/camera/utils/UIUtils;->dp(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 1650
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mProgressRotate:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1651
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

    .line 1607
    invoke-virtual {p0, v0}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->updateProgressCircleLayoutInNormal(I)V

    return-void
.end method

.method private updateProgressCircleLayoutInRightHover()V
    .registers 4

    .line 1633
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mProgressRotate:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 1634
    invoke-static {v0}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->resetLayoutParams(Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;)V

    const/4 v1, 0x0

    .line 1635
    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToBottom:I

    .line 1636
    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->leftToLeft:I

    const/16 v1, 0x1b

    .line 1637
    invoke-static {v1}, Lcom/transsion/camera/utils/UIUtils;->dp(I)I

    move-result v1

    const/16 v2, 0x66

    invoke-static {v2}, Lcom/transsion/camera/utils/UIUtils;->dp(I)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    const/16 v1, 0x3c

    .line 1638
    invoke-static {v1}, Lcom/transsion/camera/utils/UIUtils;->dp(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 1639
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mProgressRotate:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1640
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

    .line 1721
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mProgressRotate:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 1722
    invoke-static {v0}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->resetLayoutParams(Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;)V

    const/4 v1, 0x0

    .line 1723
    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToBottom:I

    .line 1724
    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->rightToRight:I

    .line 1725
    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->leftToLeft:I

    .line 1726
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->getShutterBottomHeightInTBHoverProject()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 1727
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mProgressRotate:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1728
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

    .line 1597
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

    .line 1600
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->updateProgressTimerLayoutInFlip()V

    return-void

    .line 1602
    :cond_13
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->updateProgressTimerLayoutInNormal()V

    return-void

    .line 1598
    :cond_17
    :goto_17
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->updateProgressTimerLayoutInExpand()V

    return-void
.end method

.method private updateProgressTimerLayoutInExpand()V
    .registers 4

    .line 1565
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mProgressTimer:Lcom/transsion/camera/app/ui/widget/RotateTextView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 1566
    invoke-static {v0}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->resetLayoutParams(Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;)V

    .line 1567
    iget v1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mOrientation:I

    if-eqz v1, :cond_55

    const/16 v2, 0x5a

    if-eq v1, v2, :cond_42

    const/16 v2, 0xb4

    if-eq v1, v2, :cond_2f

    const/16 v2, 0x10e

    if-eq v1, v2, :cond_1c

    goto :goto_67

    .line 1575
    :cond_1c
    sget v1, Lcom/transsion/camera/R$id;->super_night_lite_rotate:I

    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToTop:I

    .line 1576
    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToBottom:I

    .line 1577
    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->leftToRight:I

    .line 1578
    sget-object v1, Lcom/transsion/camera/app_info/AppInfo;->res:Landroid/content/res/Resources;

    sget v2, Lcom/transsion/camera/R$dimen;->night_lite_progress_text_margin_bottom:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto :goto_67

    .line 1581
    :cond_2f
    sget v1, Lcom/transsion/camera/R$id;->super_night_lite_rotate:I

    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->leftToLeft:I

    .line 1582
    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->rightToRight:I

    .line 1583
    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToBottom:I

    .line 1584
    sget-object v1, Lcom/transsion/camera/app_info/AppInfo;->res:Landroid/content/res/Resources;

    sget v2, Lcom/transsion/camera/R$dimen;->night_lite_progress_text_margin_bottom:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    goto :goto_67

    .line 1587
    :cond_42
    sget v1, Lcom/transsion/camera/R$id;->super_night_lite_rotate:I

    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToTop:I

    .line 1588
    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToBottom:I

    .line 1589
    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->rightToLeft:I

    .line 1590
    sget-object v1, Lcom/transsion/camera/app_info/AppInfo;->res:Landroid/content/res/Resources;

    sget v2, Lcom/transsion/camera/R$dimen;->night_lite_progress_text_margin_bottom:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    goto :goto_67

    .line 1569
    :cond_55
    sget v1, Lcom/transsion/camera/R$id;->super_night_lite_rotate:I

    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->leftToLeft:I

    .line 1570
    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->rightToRight:I

    .line 1571
    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToTop:I

    .line 1572
    sget-object v1, Lcom/transsion/camera/app_info/AppInfo;->res:Landroid/content/res/Resources;

    sget v2, Lcom/transsion/camera/R$dimen;->night_lite_progress_text_margin_bottom:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 1593
    :goto_67
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mProgressTimer:Lcom/transsion/camera/app/ui/widget/RotateTextView;

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private updateProgressTimerLayoutInFlip()V
    .registers 4

    .line 1526
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mProgressTimer:Lcom/transsion/camera/app/ui/widget/RotateTextView;

    sget-object v1, Lcom/transsion/camera/app_info/AppInfo;->res:Landroid/content/res/Resources;

    sget v2, Lcom/transsion/camera/R$dimen;->flip_night_lite_progress_text_size:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1527
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mProgressTimer:Lcom/transsion/camera/app/ui/widget/RotateTextView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 1528
    invoke-static {v0}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->resetLayoutParams(Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;)V

    .line 1529
    iget v1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mOrientation:I

    const/16 v2, 0x5a

    if-eq v1, v2, :cond_4e

    const/16 v2, 0xb4

    if-eq v1, v2, :cond_3b

    const/16 v2, 0x10e

    if-eq v1, v2, :cond_4e

    .line 1545
    sget v1, Lcom/transsion/camera/R$id;->super_night_lite_rotate:I

    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->leftToLeft:I

    .line 1546
    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->rightToRight:I

    .line 1547
    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToTop:I

    .line 1548
    sget-object v1, Lcom/transsion/camera/app_info/AppInfo;->res:Landroid/content/res/Resources;

    sget v2, Lcom/transsion/camera/R$dimen;->flip_night_lite_progress_text_margin:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    goto :goto_60

    .line 1538
    :cond_3b
    sget v1, Lcom/transsion/camera/R$id;->super_night_lite_rotate:I

    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->leftToLeft:I

    .line 1539
    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->rightToRight:I

    .line 1540
    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToBottom:I

    .line 1541
    sget-object v1, Lcom/transsion/camera/app_info/AppInfo;->res:Landroid/content/res/Resources;

    sget v2, Lcom/transsion/camera/R$dimen;->flip_night_lite_progress_text_margin:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    goto :goto_60

    .line 1532
    :cond_4e
    sget v1, Lcom/transsion/camera/R$id;->super_night_lite_rotate:I

    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToTop:I

    .line 1533
    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToBottom:I

    .line 1534
    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->rightToLeft:I

    .line 1535
    sget-object v1, Lcom/transsion/camera/app_info/AppInfo;->res:Landroid/content/res/Resources;

    sget v2, Lcom/transsion/camera/R$dimen;->flip_night_lite_progress_text_margin:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 1551
    :goto_60
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mProgressTimer:Lcom/transsion/camera/app/ui/widget/RotateTextView;

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private updateProgressTimerLayoutInNormal()V
    .registers 4

    .line 1555
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mProgressTimer:Lcom/transsion/camera/app/ui/widget/RotateTextView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 1556
    invoke-static {v0}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->resetLayoutParams(Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;)V

    .line 1557
    sget v1, Lcom/transsion/camera/R$id;->super_night_lite_rotate:I

    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->leftToLeft:I

    .line 1558
    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->rightToRight:I

    .line 1559
    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToTop:I

    .line 1560
    sget-object v1, Lcom/transsion/camera/app_info/AppInfo;->res:Landroid/content/res/Resources;

    sget v2, Lcom/transsion/camera/R$dimen;->night_lite_progress_text_margin_bottom:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 1561
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mProgressTimer:Lcom/transsion/camera/app/ui/widget/RotateTextView;

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private updateRingScreenLight(Z)V
    .registers 5

    .line 1959
    sget-object v0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " updateRingScreenLight isLowLight = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1960
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mProgressCircle:Lcom/transsion/camera/ui/setting/supernightlite/NightLiteProgressView;

    if-eqz v0, :cond_1d

    .line 1961
    invoke-virtual {v0, p1}, Lcom/transsion/camera/ui/setting/supernightlite/NightLiteProgressView;->updateLowLight(Z)V

    .line 1963
    :cond_1d
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mNightLiteSwitch:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    if-eqz v0, :cond_33

    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result v0

    if-nez v0, :cond_33

    .line 1964
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mNightLiteSwitch:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    if-eqz p1, :cond_2e

    sget v1, Lcom/transsion/camera/R$drawable;->super_night_lite_button_black:I

    goto :goto_30

    :cond_2e
    sget v1, Lcom/transsion/camera/R$drawable;->super_night_lite_button:I

    :goto_30
    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setImageResource(I)V

    .line 1966
    :cond_33
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mLowLight:Z

    .line 1967
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result p1

    if-eqz p1, :cond_42

    .line 1968
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mNightLiteSwitch:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    if-eqz p1, :cond_42

    .line 1969
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->switchIconColor(Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;)V

    :cond_42
    return-void
.end method

.method private updateShutterUI()V
    .registers 4

    .line 728
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mUIStateControl:Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;

    const/16 v0, 0x13

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-interface {p0, v2, v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;->updateUIState(IILjava/lang/String;)V

    return-void
.end method

.method private updateSwitchUIStateChanged(Landroid/view/View;)V
    .registers 4

    .line 251
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->shouldHandleClick(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 254
    :cond_7
    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result v0

    xor-int/lit8 v1, v0, 0x1

    .line 255
    invoke-virtual {p1, v1}, Landroid/view/View;->setSelected(Z)V

    .line 257
    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->handleAnimationState(Landroid/view/View;Z)V

    .line 258
    invoke-direct {p0, v0}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->handleStatusMonitorNotification(Z)V

    .line 259
    invoke-direct {p0, v0}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->handleLottieColorUpdate(Z)V

    return-void
.end method


# virtual methods
.method public createEntryView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Lcom/transsion/camera/app/common/interactive/CommonInteractive;)Landroid/view/View;
    .registers 6

    .line 195
    sget-object v0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "createEntryView: "

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 196
    iput-object p2, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mEntryRootView:Landroid/view/ViewGroup;

    .line 197
    sget v0, Lcom/transsion/camera/R$layout;->supernight_lite_view:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mEntryView:Landroid/view/View;

    .line 198
    sget p2, Lcom/transsion/camera/R$id;->super_night_lite:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mProgressCircleWrap:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 199
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mEntryView:Landroid/view/View;

    sget p2, Lcom/transsion/camera/R$id;->super_night_progress_circle:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/ui/setting/supernightlite/NightLiteProgressView;

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mProgressCircle:Lcom/transsion/camera/ui/setting/supernightlite/NightLiteProgressView;

    .line 200
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mEntryView:Landroid/view/View;

    sget p2, Lcom/transsion/camera/R$id;->super_night_progress_timer:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/app/ui/widget/RotateTextView;

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mProgressTimer:Lcom/transsion/camera/app/ui/widget/RotateTextView;

    .line 201
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mEntryView:Landroid/view/View;

    sget p2, Lcom/transsion/camera/R$id;->super_night_lite_switch:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mNightLiteSwitch:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    .line 202
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-eqz p1, :cond_58

    .line 203
    invoke-interface {p1}, Lcom/transsion/camera/app/common/setting/ISetting;->getCurrentCameraId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/transsion/camera/adapter/CameraInfoUtil;->isCameraFacingFront(Ljava/lang/String;)Z

    move-result p1

    .line 204
    iget-object p2, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mNightLiteSwitch:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    if-eqz p1, :cond_53

    const-string p1, "front"

    goto :goto_55

    :cond_53
    const-string p1, "back"

    :goto_55
    invoke-virtual {p2, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 206
    :cond_58
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result p1

    if-eqz p1, :cond_70

    .line 207
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mNightLiteSwitch:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    new-instance p2, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI$$ExternalSyntheticLambda3;

    invoke-direct {p2, p0}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI$$ExternalSyntheticLambda3;-><init>(Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;)V

    invoke-virtual {p1, p2}, Lcom/airbnb/lottie/LottieAnimationView;->setFailureListener(Lcom/airbnb/lottie/LottieListener;)V

    .line 211
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mNightLiteSwitch:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    const-string p2, "super_night_lite_animation.json"

    invoke-virtual {p1, p2}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    goto :goto_7e

    .line 213
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

    .line 215
    :goto_7e
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/transsion/camera/utils/CameraUtil;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_8c

    .line 216
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mNightLiteSwitch:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/view/View;->setFocusable(Z)V

    .line 218
    :cond_8c
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mEntryView:Landroid/view/View;

    sget p2, Lcom/transsion/camera/R$id;->super_night_lite_rotate:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/app/ui/widget/RotateLayout;

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mProgressRotate:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    .line 219
    invoke-virtual {p3}, Lcom/transsion/camera/app/common/interactive/CommonInteractive;->getIAppUI()Lcom/transsion/camera/app/common/IAppUI;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mIAppUI:Lcom/transsion/camera/app/common/IAppUI;

    .line 220
    invoke-virtual {p3}, Lcom/transsion/camera/app/common/interactive/CommonInteractive;->getAppUIRect()Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

    .line 222
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mIAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p1}, Lcom/transsion/camera/app/common/IAppUI;->getActionSound()Lcom/transsion/camera/utils/sound/IActionSound;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mActionSound:Lcom/transsion/camera/utils/sound/IActionSound;

    .line 223
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mNightLiteSwitch:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    iget-object p2, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mSwitchClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 224
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mNightLiteSwitch:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->switchIconColor(Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;)V

    .line 226
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mNightLiteSwitch:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    invoke-static {p1}, Lcom/transsion/camera/utils/MultiTouchManager;->pressSealWithoutAnimation(Landroid/view/View;)V

    .line 227
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mProgressCircle:Lcom/transsion/camera/ui/setting/supernightlite/NightLiteProgressView;

    iget-object p2, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mProgressTimer:Lcom/transsion/camera/app/ui/widget/RotateTextView;

    invoke-virtual {p1, p2}, Lcom/transsion/camera/ui/setting/supernightlite/NightLiteProgressView;->setProgressTimer(Landroid/widget/TextView;)V

    .line 229
    invoke-direct {p0, v1}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->updateOrientation(Z)V

    .line 230
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->updateLayout()V

    .line 232
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz p1, :cond_d9

    .line 233
    const-string p2, "key_shutter_sound_update"

    invoke-virtual {p1, p2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p1

    const-string p3, "shutter_sound_value_ready"

    invoke-virtual {p1, p2, p3}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    .line 237
    :cond_d9
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mEntryView:Landroid/view/View;

    return-object p0
.end method

.method protected createNightLiteShutterListener()Lcom/transsion/camera/app/common/IAppUIListener$IShutterResponseListener;
    .registers 3

    .line 184
    new-instance v0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI$NightLiteShutterListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI$NightLiteShutterListener;-><init>(Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI-IA;)V

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

    .line 1099
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mEntryRootView:Landroid/view/ViewGroup;

    return-object p0
.end method

.method public getEntryView()Landroid/view/View;
    .registers 1

    .line 1094
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

    .line 859
    const-string p0, "key_super_night_lite"

    return-object p0
.end method

.method protected getNightLiteSwitchLayoutMargins(II)Landroid/graphics/Rect;
    .registers 3

    .line 1753
    new-instance p0, Landroid/graphics/Rect;

    const p1, 0x7fffffff

    invoke-direct {p0, p1, p1, p1, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object p0
.end method

.method public getValue()Ljava/lang/String;
    .registers 1

    .line 864
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return-object p0

    .line 867
    :cond_6
    invoke-interface {p0}, Lcom/transsion/camera/app/common/setting/ISetting;->getSettingValue()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public hideEntryView()V
    .registers 5

    .line 406
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mNightLiteSwitch:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    if-eqz v0, :cond_44

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_44

    .line 407
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mCameraOperateActionControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    if-eqz v0, :cond_15

    const/16 v2, 0x128

    .line 408
    invoke-interface {v0, v2}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 410
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

    .line 411
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mNightLiteSwitch:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_44
    return-void
.end method

.method protected hookDisturbStatus()V
    .registers 3

    .line 772
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-eqz v0, :cond_19

    .line 773
    const-string v1, "key_self_timer"

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/setting/ISetting;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 774
    const-string v1, "off"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_19

    .line 776
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mContext:Landroid/content/Context;

    const/16 v0, 0x6c

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/CameraUtil;->hookDisturbStatus(Landroid/content/Context;I)V

    :cond_19
    return-void
.end method

.method protected isInitialPosition()Z
    .registers 4

    .line 1440
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mNightLiteSwitch:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 1443
    :cond_6
    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v0

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    if-nez v0, :cond_1b

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mNightLiteSwitch:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    .line 1444
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

    .line 768
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

    .line 394
    iget v1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mScreenFormType:I

    const/4 v2, 0x1

    if-ne v0, v1, :cond_7

    return v2

    .line 397
    :cond_7
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mNightLiteSwitch:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    const/4 v1, 0x0

    if-eqz v0, :cond_1d

    .line 398
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

    .line 876
    const-string v0, ", action = "

    const-string v1, " mLoadingAnimEnd = "

    const/4 v2, 0x1

    const/4 v3, 0x0

    sparse-switch p1, :sswitch_data_1d8

    goto/16 :goto_1cf

    .line 985
    :sswitch_b
    iput-boolean v3, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mIsConflictUIShowing:Z

    .line 986
    iput-boolean v3, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mIsCelebritySceneShow:Z

    .line 987
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->updateSwitchVisibility(Ljava/lang/String;)V

    return-void

    .line 980
    :sswitch_17
    iput-boolean v2, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mIsConflictUIShowing:Z

    .line 981
    iput-boolean v2, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mIsCelebritySceneShow:Z

    .line 982
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->hideEntryView()V

    return-void

    .line 1039
    :sswitch_1f
    iput-boolean v3, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mIsOverlayGuideShow:Z

    .line 1040
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->updateSwitchVisibility(Ljava/lang/String;)V

    return-void

    .line 1035
    :sswitch_29
    iput-boolean v2, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mIsOverlayGuideShow:Z

    .line 1036
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->hideEntryView()V

    return-void

    .line 1018
    :sswitch_2f
    iput-boolean v3, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mIsGroupCaptureIconShowing:Z

    .line 1019
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

    .line 1020
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->updateSwitchVisibility(Ljava/lang/String;)V

    return-void

    .line 1014
    :sswitch_55
    iput-boolean v2, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mIsGroupCaptureIconShowing:Z

    .line 1015
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->updateSwitchVisibility(Ljava/lang/String;)V

    return-void

    .line 994
    :sswitch_5f
    iput-boolean v3, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mIsAutoMacroSwitchShowing:Z

    .line 995
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->updateSwitchVisibility(Ljava/lang/String;)V

    return-void

    .line 990
    :sswitch_69
    iput-boolean v2, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mIsAutoMacroSwitchShowing:Z

    .line 991
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->updateSwitchVisibility(Ljava/lang/String;)V

    return-void

    .line 956
    :sswitch_73
    iput-boolean v3, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mQrIconShowing:Z

    .line 957
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->updateSwitchVisibility(Ljava/lang/String;)V

    return-void

    .line 952
    :sswitch_7d
    iput-boolean v2, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mQrIconShowing:Z

    .line 953
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->updateSwitchVisibility(Ljava/lang/String;)V

    return-void

    .line 1029
    :sswitch_87
    iput-boolean v3, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mIsConflictUIShowing:Z

    .line 1030
    iput-boolean v3, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mIsPMasterBottomUIShow:Z

    .line 1031
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->hideEntryView()V

    .line 1032
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->updateSwitchVisibility(Ljava/lang/String;)V

    return-void

    .line 1023
    :sswitch_96
    iput-boolean v2, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mIsConflictUIShowing:Z

    .line 1024
    iput-boolean v2, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mIsPMasterBottomUIShow:Z

    .line 1025
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->hideEntryView()V

    .line 1026
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->updateSwitchVisibility(Ljava/lang/String;)V

    return-void

    .line 975
    :sswitch_a5
    iput-boolean v3, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mIsConflictUIShowing:Z

    .line 976
    iput-boolean v3, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mImageStyleShow:Z

    .line 977
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->updateSwitchVisibility(Ljava/lang/String;)V

    return-void

    .line 970
    :sswitch_b1
    iput-boolean v2, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mIsConflictUIShowing:Z

    .line 971
    iput-boolean v2, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mImageStyleShow:Z

    .line 972
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->hideEntryView()V

    return-void

    .line 1001
    :sswitch_b9
    iput-boolean v3, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mIsQuickVideoRecording:Z

    return-void

    .line 998
    :sswitch_bc
    iput-boolean v2, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mIsQuickVideoRecording:Z

    return-void

    .line 1009
    :sswitch_bf
    iput-boolean v3, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mIsConflictUIShowing:Z

    .line 1010
    iput-boolean v3, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mIsPopSettingShow:Z

    .line 1011
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->updateSwitchVisibility(Ljava/lang/String;)V

    return-void

    .line 1004
    :sswitch_cb
    iput-boolean v2, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mIsConflictUIShowing:Z

    .line 1005
    iput-boolean v2, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mIsPopSettingShow:Z

    .line 1006
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->hideEntryView()V

    return-void

    .line 949
    :sswitch_d3
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->updateSwitchVisibility(Ljava/lang/String;)V

    return-void

    .line 965
    :sswitch_db
    iput-boolean v3, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mIsConflictUIShowing:Z

    .line 966
    iput-boolean v3, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mFilterUIShow:Z

    .line 967
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->updateSwitchVisibility(Ljava/lang/String;)V

    return-void

    .line 960
    :sswitch_e7
    iput-boolean v2, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mIsConflictUIShowing:Z

    .line 961
    iput-boolean v2, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mFilterUIShow:Z

    .line 962
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->hideEntryView()V

    return-void

    .line 935
    :sswitch_ef
    iput-boolean v3, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mIsPause:Z

    .line 936
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/transsion/camera/utils/CameraUtil;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1cf

    iget-object p1, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mNightLiteSwitch:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    if-eqz p1, :cond_1cf

    invoke-virtual {p1}, Landroid/view/View;->isFocusable()Z

    move-result p1

    if-nez p1, :cond_1cf

    .line 937
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mNightLiteSwitch:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    invoke-virtual {p0, v2}, Landroid/view/View;->setFocusable(Z)V

    return-void

    .line 911
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

    .line 912
    iget-boolean p1, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mLoadingAnimEnd:Z

    if-eqz p1, :cond_1cf

    iget-boolean p1, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mTimerDelayReady:Z

    if-eqz p1, :cond_1cf

    .line 913
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->hideLoadingView()V

    .line 914
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->updateSwitchVisibility(Ljava/lang/String;)V

    return-void

    .line 918
    :sswitch_138
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->hideEntryView()V

    .line 919
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mUIStateControl:Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;

    if-eqz p1, :cond_14c

    invoke-interface {p1}, Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;->getCurrentUIState()I

    move-result p1

    if-eq p1, v2, :cond_14c

    .line 920
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mUIStateControl:Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;

    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-interface {p1, v2, v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;->updateUIState(IILjava/lang/String;)V

    .line 922
    :cond_14c
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-eqz p1, :cond_155

    .line 923
    const-string v0, "off"

    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChanged(Ljava/lang/String;)V

    .line 925
    :cond_155
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->hideLoadingView()V

    .line 926
    iput-boolean v2, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mIsPause:Z

    .line 927
    iput-boolean v2, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mIsCaptureCancel:Z

    .line 928
    iput-boolean v3, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mIsQuickVideoRecording:Z

    .line 929
    iput-boolean v3, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mIsGroupCaptureIconShowing:Z

    .line 930
    iput-boolean v3, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mClosedByLivePhoto:Z

    .line 931
    iput-boolean v3, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mClosedByFlare:Z

    .line 932
    iput-boolean v3, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mSuperNightCaptureBegin:Z

    return-void

    .line 945
    :sswitch_167
    iput-boolean v3, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mZoomChanging:Z

    .line 946
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->updateSwitchVisibility(Ljava/lang/String;)V

    return-void

    .line 941
    :sswitch_171
    iput-boolean v2, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mZoomChanging:Z

    .line 942
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->hideEntryView()V

    return-void

    .line 894
    :sswitch_177
    iput-boolean v3, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mIsGroupCaptureIconShowing:Z

    .line 895
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->restoreNightSwitch()V

    .line 896
    iput-boolean v3, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mClosedByLivePhoto:Z

    .line 897
    iput-boolean v3, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mClosedByFlare:Z

    .line 898
    iput-boolean v3, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mLivePhotoChangedByUserInteraction:Z

    .line 899
    iput-boolean v3, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mFlareChangedByUserInteraction:Z

    return-void

    .line 903
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

    .line 904
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mUIHandler:Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI$UIHandler;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 905
    iget-boolean p1, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mTimerDelayReady:Z

    if-eqz p1, :cond_1cf

    .line 906
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->hideLoadingView()V

    .line 907
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->updateSwitchVisibility(Ljava/lang/String;)V

    return-void

    .line 889
    :sswitch_1b6
    iput-boolean v3, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mIsCaptureCancel:Z

    .line 890
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->configCapture()V

    .line 891
    iput-boolean v3, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mNextCaptureReady:Z

    return-void

    .line 883
    :sswitch_1be
    iput-boolean v3, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mSelfTimerCapture:Z

    .line 884
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mUIStateControl:Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;

    invoke-interface {p1}, Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;->getCurrentUIState()I

    move-result p1

    if-ne p1, v2, :cond_1cf

    .line 885
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->updateSwitchVisibility(Ljava/lang/String;)V

    :cond_1cf
    :goto_1cf
    return-void

    .line 878
    :sswitch_1d0
    iput-boolean v2, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mSelfTimerOn:Z

    .line 879
    iput-boolean v2, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mSelfTimerCapture:Z

    .line 880
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

    .line 659
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mUIStateControl:Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;

    if-eqz v0, :cond_15

    .line 660
    iget-boolean v1, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mIsQuickVideoRecording:Z

    if-nez v1, :cond_15

    iget-boolean v1, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mSelfTimerCapture:Z

    if-nez v1, :cond_15

    .line 661
    invoke-interface {v0}, Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;->getCurrentUIState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_15

    const/4 p0, 0x1

    return p0

    .line 665
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

    .line 1498
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->onOrientationChanged(I)V

    const/4 p1, 0x1

    .line 1499
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->updateOrientation(Z)V

    .line 1500
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->updateLayout()V

    return-void
.end method

.method public onPrivacyModeChange(ZF)V
    .registers 5

    .line 1980
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->isSupportPrivacyMode()Z

    move-result p2

    if-nez p2, :cond_7

    goto :goto_72

    .line 1983
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

    .line 1984
    iget-object p2, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mProgressCircleWrap:Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz p2, :cond_72

    iget-object p2, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    .line 1985
    invoke-interface {p2}, Lcom/transsion/camera/app/common/IAppUI;->getCurrentMode()Ljava/lang/String;

    move-result-object p2

    const-string v0, "com.transsion.camera.feature.supernightfilter.mode.SuperNightFilterModeEntry"

    invoke-static {v0, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_4b

    iget-object p2, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    .line 1986
    invoke-interface {p2}, Lcom/transsion/camera/app/common/IAppUI;->getCurrentMode()Ljava/lang/String;

    move-result-object p2

    const-string v0, "com.transsion.camera.feature.mode.supernight.SuperNightModeEntry"

    invoke-static {v0, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_72

    :cond_4b
    if-eqz p1, :cond_65

    .line 1988
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mProgressCircleWrapState:Lcom/transsion/camera/app/common/ui/helper/ViewState;

    if-nez p1, :cond_5e

    .line 1989
    new-instance p1, Lcom/transsion/camera/app/common/ui/helper/ViewState$Builder;

    iget-object p2, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mProgressCircleWrap:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-direct {p1, p2}, Lcom/transsion/camera/app/common/ui/helper/ViewState$Builder;-><init>(Landroid/view/View;)V

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ui/helper/ViewState$Builder;->build()Lcom/transsion/camera/app/common/ui/helper/ViewState;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mProgressCircleWrapState:Lcom/transsion/camera/app/common/ui/helper/ViewState;

    .line 1991
    :cond_5e
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mProgressCircleWrap:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 1993
    :cond_65
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mProgressCircleWrapState:Lcom/transsion/camera/app/common/ui/helper/ViewState;

    if-nez p1, :cond_6a

    goto :goto_72

    .line 1996
    :cond_6a
    iget-object p2, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mProgressCircleWrap:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p1, p2}, Lcom/transsion/camera/app/common/ui/helper/ViewState;->restore(Landroid/view/View;)V

    const/4 p1, 0x0

    .line 1997
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mProgressCircleWrapState:Lcom/transsion/camera/app/common/ui/helper/ViewState;

    :cond_72
    :goto_72
    return-void
.end method

.method public onScreenFormChanged(IZ)V
    .registers 3

    .line 1909
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->onScreenFormChanged(IZ)V

    .line 1910
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

    .line 670
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->restoreNightSwitch()V

    return-void
.end method

.method public setCameraOperateActionControl(Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;)V
    .registers 2

    .line 620
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mCameraOperateActionControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    return-void
.end method

.method public setDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V
    .registers 4

    .line 1449
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-nez p1, :cond_c

    .line 1451
    sget-object p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, " mDeviceSetting is null!"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 1454
    :cond_c
    new-instance v0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI$SuperNightLiteCallbackImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI$SuperNightLiteCallbackImpl;-><init>(Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI-IA;)V

    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/setting/ISetting;->setSettingDataCallback(Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;)V

    .line 1455
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    check-cast p1, Lcom/transsion/camera/feature/setting/supernightlite/SuperNightLite;

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mSuperNightLite:Lcom/transsion/camera/feature/setting/supernightlite/SuperNightLite;

    .line 1456
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mNextCaptureCallBack:Lcom/transsion/camera/feature/setting/supernightlite/SuperNightLite$INextCaptureCallBack;

    invoke-virtual {p1, v0}, Lcom/transsion/camera/feature/setting/supernightlite/SuperNightLite;->setNextCaptureCallBack(Lcom/transsion/camera/feature/setting/supernightlite/SuperNightLite$INextCaptureCallBack;)V

    .line 1457
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mSuperNightLite:Lcom/transsion/camera/feature/setting/supernightlite/SuperNightLite;

    invoke-virtual {p1}, Lcom/transsion/camera/feature/setting/supernightlite/SuperNightLite;->postAlgoOn()Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mIsPostAlgoOn:Z

    .line 1458
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mSuperNightLite:Lcom/transsion/camera/feature/setting/supernightlite/SuperNightLite;

    invoke-virtual {p1}, Lcom/transsion/camera/feature/setting/supernightlite/SuperNightLite;->superNightModeOn()Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mIsSuperNightModeOn:Z

    .line 1459
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mSuperNightLite:Lcom/transsion/camera/feature/setting/supernightlite/SuperNightLite;

    invoke-virtual {p1}, Lcom/transsion/camera/feature/setting/supernightlite/SuperNightLite;->ultraHDModeOn()Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mIsUltraHDModeOn:Z

    .line 1460
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    const-string v0, "key_shutter_sound"

    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/setting/ISetting;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "on"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mSoundEnable:Z

    .line 1461
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    const-string v1, "key_self_timer"

    invoke-interface {p1, v1}, Lcom/transsion/camera/app/common/setting/ISetting;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1462
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

    .line 1463
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    const-string v1, "key_shutter_sound_optional"

    invoke-interface {p1, v1}, Lcom/transsion/camera/app/common/setting/ISetting;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1464
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7b

    .line 1465
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mUIHandler:Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI$UIHandler;

    new-instance v0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1467
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

    .line 1480
    sget-object v0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "setSettingMonitor"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1481
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz p1, :cond_5c

    .line 1483
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->getKey()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {p1, v0, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 1484
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v0, "key_self_timer"

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {p1, v0, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 1485
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v0, "key_shutter_sound"

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {p1, v0, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 1486
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v0, "key_shutter_sound_update"

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {p1, v0, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 1487
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v0, "key_update_low_light_state_to_qc"

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {p1, v0, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 1488
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v0, "key_self_timer_status"

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {p1, v0, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 1489
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v0, "key_live_photo"

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {p1, v0, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 1490
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v0, "key_live_photo_switch"

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {p1, v0, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 1491
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v0, "key_portrait_flare"

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {p1, v0, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    :cond_5c
    return-void
.end method

.method public setShutterControl(Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;)V
    .registers 3

    .line 609
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mShutterControl:Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;

    if-eqz p1, :cond_b

    .line 611
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mShutterListener:Lcom/transsion/camera/app/common/IAppUIListener$IShutterResponseListener;

    const/16 v0, 0xb

    invoke-interface {p1, p0, v0}, Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;->registerShutterListener(Lcom/transsion/camera/app/common/IAppUIListener$IShutterResponseListener;I)V

    :cond_b
    return-void
.end method

.method public setUIStateControl(Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;)V
    .registers 2

    .line 1953
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mUIStateControl:Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;

    return-void
.end method

.method public setupEntryView()V
    .registers 3

    .line 1915
    invoke-super {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->setupEntryView()V

    .line 1916
    sget-object v0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "setupEntryView"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1917
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->updateLayout()V

    const/4 v0, 0x0

    .line 1918
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mSelfTimerCapture:Z

    .line 1919
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mIsConflictUIShowing:Z

    .line 1920
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mIsQuickVideoRecording:Z

    .line 1921
    invoke-static {}, Lcom/transsion/camera/app/common/ModuleTransferManager;->getTransferManager()Lcom/transsion/camera/app/common/ModuleTransferManager;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mIModuleTransfer:Lcom/transsion/camera/app/common/IModuleTransfer;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ModuleTransferManager;->registerTransferListener(Lcom/transsion/camera/app/common/IModuleTransfer;)V

    .line 1922
    invoke-static {}, Lcom/transsion/camera/app/common/ModuleTransferManager;->getTransferManager()Lcom/transsion/camera/app/common/ModuleTransferManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ModuleTransferManager;->getRingScreenLightState()Z

    move-result v0

    .line 1923
    invoke-direct {p0, v0}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->updateRingScreenLight(Z)V

    .line 1924
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->notifyNightSwitch()V

    .line 1925
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->updateSwitchVisibility(Ljava/lang/String;)V

    .line 1926
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mSuperNightLite:Lcom/transsion/camera/feature/setting/supernightlite/SuperNightLite;

    if-eqz v0, :cond_3f

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/supernightlite/SuperNightLite;->isRestore()Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 1927
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->restoreNightSwitch()V

    .line 1929
    :cond_3f
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mIAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz v0, :cond_4a

    .line 1930
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->getShutterTypeSelftimerOff()I

    move-result p0

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;->setShutterTypeSelftimerOff(I)V

    :cond_4a
    return-void
.end method

.method protected superNightLiteOn()Z
    .registers 2

    .line 702
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-eqz p0, :cond_f

    .line 703
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

    .line 1340
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

    .line 1341
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mNightLiteSwitch:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    if-nez v0, :cond_20

    return-void

    .line 1344
    :cond_20
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 1345
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

    .line 1349
    invoke-direct {p0, v0, p1}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->translateSwitchIconInExpandForm(Landroid/view/ViewPropertyAnimator;Z)V

    goto :goto_59

    .line 1351
    :cond_35
    sget-object v1, Lcom/transsion/camera/app_info/AppInfo;->res:Landroid/content/res/Resources;

    sget v2, Lcom/transsion/camera/R$dimen;->super_night_lite_switch_size:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sget-object v2, Lcom/transsion/camera/app_info/AppInfo;->res:Landroid/content/res/Resources;

    sget v4, Lcom/transsion/camera/R$dimen;->super_night_lite_switch_margin_offset:I

    .line 1352
    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    add-int/2addr v1, v2

    if-eqz p1, :cond_4a

    neg-int p1, v1

    int-to-float v3, p1

    .line 1353
    :cond_4a
    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    goto :goto_59

    :cond_4e
    :goto_4e
    if-eqz p1, :cond_56

    .line 1347
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->getMarginOffsetInHoverForm()I

    move-result p1

    neg-int p1, p1

    int-to-float v3, p1

    :cond_56
    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    .line 1355
    :goto_59
    new-instance p1, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI$5;

    invoke-direct {p1, p0}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI$5;-><init>(Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;)V

    invoke-virtual {v0, p1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    sget-object p1, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->PATH_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    .line 1389
    invoke-virtual {p0, p1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const-wide/16 v0, 0x1c2

    .line 1390
    invoke-virtual {p0, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 1391
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method public unInit()V
    .registers 5

    .line 625
    invoke-super {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->unInit()V

    const/4 v0, 0x0

    .line 626
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mQrIconShowing:Z

    .line 627
    sget-object v1, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v2, " SuperNightLiteUI unInit"

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 628
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mShutterControl:Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;

    if-eqz v1, :cond_16

    .line 629
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mShutterListener:Lcom/transsion/camera/app/common/IAppUIListener$IShutterResponseListener;

    invoke-interface {v1, v2}, Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;->unRegisterShutterListener(Lcom/transsion/camera/app/common/IAppUIListener$IShutterResponseListener;)V

    .line 632
    :cond_16
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz v1, :cond_74

    .line 633
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->getKey()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v1, v2, v3}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 634
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v2, "key_self_timer"

    iget-object v3, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v1, v2, v3}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 635
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v2, "key_shutter_sound"

    iget-object v3, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v1, v2, v3}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 636
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v2, "key_flash_facade"

    iget-object v3, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v1, v2, v3}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 637
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v2, "key_shutter_sound_update"

    iget-object v3, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v1, v2, v3}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 638
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v2, "key_update_low_light_state_to_qc"

    iget-object v3, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v1, v2, v3}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 639
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v2, "key_self_timer_status"

    iget-object v3, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v1, v2, v3}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 640
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v2, "key_live_photo"

    iget-object v3, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v1, v2, v3}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 641
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v2, "key_live_photo_switch"

    iget-object v3, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v1, v2, v3}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 642
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v2, "key_portrait_flare"

    iget-object v3, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v1, v2, v3}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 644
    :cond_74
    invoke-static {}, Lcom/transsion/camera/app/common/ModuleTransferManager;->getTransferManager()Lcom/transsion/camera/app/common/ModuleTransferManager;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mIModuleTransfer:Lcom/transsion/camera/app/common/IModuleTransfer;

    invoke-virtual {v1, v2}, Lcom/transsion/camera/app/common/ModuleTransferManager;->unregisterTransferListener(Lcom/transsion/camera/app/common/IModuleTransfer;)V

    .line 645
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mUIHandler:Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI$UIHandler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 646
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->releaseActionSound()V

    .line 647
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mQrIconShowing:Z

    .line 648
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mIsAutoMacroSwitchShowing:Z

    .line 649
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mIsGroupCaptureIconShowing:Z

    const/4 v0, 0x1

    .line 650
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mNeedNotifyLivePhoto:Z

    .line 651
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mNeedNotifyFlare:Z

    .line 652
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mNightLiteSwitch:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    if-eqz p0, :cond_98

    .line 653
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->removeAllLottieOnCompositionLoadedListener()V

    :cond_98
    return-void
.end method

.method protected updateNightLiteSwitchLayout()V
    .registers 3

    .line 1815
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mNightLiteSwitch:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    if-nez v0, :cond_c

    .line 1816
    sget-object p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "updateNightLiteSwitchLayout: mNightLiteSwitch is null"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 1819
    :cond_c
    iget v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mScreenFormType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_15

    .line 1820
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->updateNightLiteSwitchLayoutInExpand()V

    goto :goto_2d

    :cond_15
    const/4 v1, 0x4

    if-ne v0, v1, :cond_1c

    .line 1822
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->updateNightLiteSwitchLayoutInLeftHover()V

    goto :goto_2d

    :cond_1c
    const/4 v1, 0x5

    if-ne v0, v1, :cond_23

    .line 1824
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->updateNightLiteSwitchLayoutInRightHover()V

    goto :goto_2d

    :cond_23
    const/4 v1, 0x3

    if-ne v0, v1, :cond_2a

    .line 1826
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->updateNightLiteSwitchLayoutInHover()V

    goto :goto_2d

    .line 1828
    :cond_2a
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->updateNightLiteSwitchLayoutInNormal()V

    .line 1830
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

    .line 1611
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mProgressRotate:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 1612
    invoke-static {v0}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->resetLayoutParams(Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;)V

    const/4 v1, 0x0

    .line 1613
    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToBottom:I

    .line 1614
    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->rightToRight:I

    .line 1615
    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->leftToLeft:I

    if-lez p1, :cond_15

    goto :goto_1b

    .line 1616
    :cond_15
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

    invoke-interface {p1}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getShutterBottomHeight()I

    move-result p1

    :goto_1b
    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 1617
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mProgressRotate:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1618
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

    .line 1255
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

    .line 1256
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mNightLiteSwitch:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    if-nez v1, :cond_32

    goto/16 :goto_179

    .line 1259
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

    .line 1271
    :cond_44
    iget-boolean v1, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mIsSuperNightModeOn:Z

    const-string v4, "value_super_night_lite_switch_on"

    if-nez v1, :cond_15b

    iget-boolean v1, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mIsUltraHDModeOn:Z

    if-eqz v1, :cond_50

    goto/16 :goto_15b

    .line 1278
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

    .line 1279
    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "key_super_night_lite_switch_state"

    if-eqz v1, :cond_108

    .line 1280
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mUIStateControl:Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;

    invoke-interface {v1}, Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;->getCurrentUIState()I

    move-result v1

    const/4 v5, 0x1

    if-ne v1, v5, :cond_108

    .line 1281
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->isNearByIconShowing()Z

    move-result v1

    .line 1282
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

    .line 1283
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->isInitialPosition()Z

    move-result v0

    if-eqz v0, :cond_b3

    .line 1284
    invoke-virtual {p0, v5}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->translateSwitchIcon(Z)V

    goto :goto_108

    :cond_b3
    if-nez v1, :cond_c0

    .line 1285
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->isInitialPosition()Z

    move-result v0

    if-nez v0, :cond_c0

    const/4 v0, 0x0

    .line 1286
    invoke-virtual {p0, v0}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->translateSwitchIcon(Z)V

    goto :goto_108

    .line 1288
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

    .line 1295
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->updateNightLiteSwitchLayout()V

    .line 1296
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->showEntryView()V

    .line 1298
    :cond_e0
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mLivePhotoSupport:Z

    if-nez v0, :cond_f0

    .line 1299
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mIsFlareCaptureSupport:Z

    if-eqz v0, :cond_108

    .line 1300
    :cond_f0
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mNightLiteSwitch:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    invoke-virtual {v0}, Landroid/view/View;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_f9

    move-object v4, v3

    .line 1302
    :cond_f9
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz v0, :cond_108

    iget-boolean v1, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mSuperNightCaptureBegin:Z

    if-nez v1, :cond_108

    .line 1303
    invoke-virtual {v0, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object v0

    .line 1304
    invoke-virtual {v0, v2, v4}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1311
    :cond_108
    :goto_108
    const-string v0, "off"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_179

    .line 1312
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mNightLiteSwitch:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 1313
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->isInitialPosition()Z

    move-result p1

    if-nez p1, :cond_12e

    .line 1314
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mNightLiteSwitch:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->getDefaultTranslationY()F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 1315
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mNightLiteSwitch:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 1317
    :cond_12e
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->hideEntryView()V

    .line 1318
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p1

    iget-boolean p1, p1, Lcom/transsion/camera/utils/CustomConfigUtil;->mLivePhotoSupport:Z

    if-nez p1, :cond_145

    .line 1319
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p1

    iget-boolean p1, p1, Lcom/transsion/camera/utils/CustomConfigUtil;->mIsFlareCaptureSupport:Z

    if-eqz p1, :cond_179

    iget-object p1, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz p1, :cond_179

    .line 1321
    :cond_145
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mNightLiteSwitch:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result p1

    if-nez p1, :cond_179

    .line 1322
    iget-boolean p1, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mSuperNightCaptureBegin:Z

    if-nez p1, :cond_179

    .line 1323
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    invoke-virtual {p0, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p0

    .line 1324
    invoke-virtual {p0, v2, v3}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    .line 1272
    :cond_15b
    :goto_15b
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz p0, :cond_179

    .line 1273
    const-string p1, "key_super_night_lite_switch"

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p0

    invoke-virtual {p0, p1, v4}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    .line 1260
    :cond_169
    :goto_169
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mLivePhotoSupport:Z

    if-nez v0, :cond_17a

    .line 1261
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mIsFlareCaptureSupport:Z

    if-nez v0, :cond_17a

    :cond_179
    :goto_179
    return-void

    .line 1264
    :cond_17a
    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_184

    .line 1265
    invoke-direct {p0, v3}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->notifyStatusMonitor(Ljava/lang/String;)V

    return-void

    .line 1268
    :cond_184
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->handleSwitchOnState()V

    return-void
.end method
