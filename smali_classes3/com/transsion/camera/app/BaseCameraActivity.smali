.class public abstract Lcom/transsion/camera/app/BaseCameraActivity;
.super Lcom/transsion/camera/app/PermissionActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/BaseCameraActivity$ThermalThrottleChangeListenerImpl;,
        Lcom/transsion/camera/app/BaseCameraActivity$CameraStateCallbackImpl;,
        Lcom/transsion/camera/app/BaseCameraActivity$BGImageSavedListener;,
        Lcom/transsion/camera/app/BaseCameraActivity$IntentProxy;,
        Lcom/transsion/camera/app/BaseCameraActivity$OrientationEventListenerImpl;,
        Lcom/transsion/camera/app/BaseCameraActivity$BroadcastHandler;,
        Lcom/transsion/camera/app/BaseCameraActivity$CameraErrorListenerImpl;,
        Lcom/transsion/camera/app/BaseCameraActivity$ModeAndSettingStatusListenerImpl;,
        Lcom/transsion/camera/app/BaseCameraActivity$GotoActivityListenerImpl;,
        Lcom/transsion/camera/app/BaseCameraActivity$ThumbnailListenerImpl;,
        Lcom/transsion/camera/app/BaseCameraActivity$IntentActionImpl;,
        Lcom/transsion/camera/app/BaseCameraActivity$BGOfflineSwitchCallback;,
        Lcom/transsion/camera/app/BaseCameraActivity$BatteryStatusListener;,
        Lcom/transsion/camera/app/BaseCameraActivity$ShoulderButtonCallback;,
        Lcom/transsion/camera/app/BaseCameraActivity$CameraDisconnectedImpl;,
        Lcom/transsion/camera/app/BaseCameraActivity$HeadSetBroadcastReceiver;
    }
.end annotation


# static fields
.field private static final DELAY_MSG_SHOW_WAIT_PAGE:I

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

.field private static final VIDEO_POWER_SAVING_UI_SHOW_DELAY_MILLS:I


# instance fields
.field protected mActionSound:Lcom/transsion/camera/utils/sound/ActionSound;

.field private mActivityResultCallback:Lcom/transsion/camera/app/common/IApp$ActivityResultCallback;

.field protected mAppStorageManager:Lcom/transsion/camera/app/common/storage/AppStorageManager;

.field protected mAppUI:Lcom/transsion/camera/app/ui/BaseAppUI;

.field private mAvoidReduceBrightness:Z

.field private final mBGImageSavedListener:Lcom/transsion/camera/app/BaseCameraActivity$BGImageSavedListener;

.field private final mBGMediaChangeListener:Lcom/transsion/camera/app/thumbnail/ThumbnailReloadManager$BGMediaChangeListener;

.field private mBatteryMonitor:Lcom/transsion/camera/app/common/battery/BatteryMonitor;

.field private mBroadcastWorkHandler:Lcom/transsion/camera/app/BaseCameraActivity$BroadcastHandler;

.field protected mCameraSettingControl:Lcom/transsion/camera/app/common/mode/CameraSettingControl;

.field private final mCameraStateCallback:Lcom/transsion/camera/app/common/ICameraControl$ICameraStateCallback;

.field protected mChoseGallery:I

.field protected mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

.field protected mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

.field protected mEnableLowConfig:Z

.field private mExitSharedElementBitmap:Landroid/graphics/Bitmap;

.field private mExitSharedElementCallback:Landroid/app/SharedElementCallback;

.field private mFlipScreenRelay:Lcom/transsion/camera/manager/FlipScreenRelay;

.field protected mFoldFlipActivityProxy:Lcom/transsion/camera/interfaces/fold_flip/IFoldFlipActivityProxy;

.field protected mGoingToARCore:Z

.field protected mGoingToGallery:Z

.field protected mGoingToGoPro:Z

.field protected mGotoGalleryUseAnimation:Z

.field private mHasCameraDevice:Z

.field private final mHomeKeyListener:Lcom/transsion/camera/app/common/physicalkey/IKeyEventListener;

.field private mHomeKeyMonitor:Lcom/transsion/camera/app/common/physicalkey/AbstractKeyMonitor;

.field private final mIThermalThrottleListener:Ljava/util/List;

.field private mIntentParser:Lcom/transsion/camera/app/intent/IntentParser;

.field private mIsBrightnessReduced:Z

.field protected mIsCelebritySceneSupport:Z

.field protected mIsDocumentGuideSupport:Z

.field protected mIsFlareCaptureGuideSupport:Z

.field protected mIsNegativeScreenAIGCMode:Z

.field protected mIsPmasterGuideSupport:Z

.field protected mIsResumed:Z

.field protected mIsSkyShopGuideSupport:Z

.field protected mIsSuperNightGuideSupport:Z

.field protected mIsVideoPowerSavingModeSupport:Z

.field protected mIsVideoPowerSavingUIShowing:Z

.field protected mIsVideoPowerSavingUISupport:Z

.field private mKeepGoingToARCoreTime:J

.field private mKeepGoingToGoProTime:J

.field protected mLensDirtyHintSupported:Z

.field private final mMainHandler:Landroid/os/Handler;

.field private mModeFeatureProvider:Lcom/transsion/camera/app/common/provider/ModeFeatureProvider;

.field protected mModeManager:Lcom/transsion/camera/app/common/mode/ModeManager;

.field protected mModeUIPolicy:Lcom/transsion/camera/app/common/mode/IModeSwitchPolicy;

.field protected mNeedCreateVideoSurface:Z

.field private mNotLoadLatestThumbnail:Z

.field protected mOrientation:I

.field private mOrientationListener:Lcom/transsion/camera/app/BaseCameraActivity$OrientationEventListenerImpl;

.field private final mOrientationListeners:Ljava/util/List;

.field private mOriginalOrientation:I

.field private mPhysicalKeyManager:Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;

.field private mPreviewIntercept:Lcom/transsion/camera/app/PreviewIntercept;

.field private final mRecentKeyListener:Lcom/transsion/camera/app/common/physicalkey/IKeyEventListener;

.field private mRecentKeyMonitor:Lcom/transsion/camera/app/common/physicalkey/AbstractKeyMonitor;

.field private mRotationManager:Lcom/transsion/hubsdk/api/window/TranDisplayRotationManager;

.field private mScreenBrightnessManager:Lcom/transsion/camera/manager/ScreenBrightnessManager;

.field protected mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

.field private final mSeparateItemArray:Ljava/util/ArrayList;

.field private mSettingManager:Lcom/transsion/camera/app/common/setting/SettingManager;

.field private mShoulderButtonCallback:Lcom/transsion/camera/app/BaseCameraActivity$ShoulderButtonCallback;

.field protected mStartActivityFromCameraFlag:Z

.field private mStartByLauncher:Z

.field private mState:Lcom/transsion/camera/app/common/IApp$State;

.field private mThermalThrottle:Lcom/transsion/camera/app/common/thermal/ThermalThrottle;

.field private final mThermalThrottleChangeListener:Lcom/transsion/camera/app/BaseCameraActivity$ThermalThrottleChangeListenerImpl;

.field private mThumbnailMimeType:Ljava/lang/String;

.field private mThumbnailReloadManager:Lcom/transsion/camera/app/thumbnail/ThumbnailReloadManager;

.field protected mThumbnailTransitionManager:Lcom/transsion/camera/feature/thumbnailtransition/ThumbnailTransitionManager;

.field private mThumbnailTransitionSuccess:Z

.field protected mThumbnailUri:Landroid/net/Uri;

.field private mTranDisplayManager:Lcom/transsion/hubsdk/api/hardware/display/TranDisplayManager;

.field private mTranFingerprintManager:Lcom/transsion/hubsdk/api/hardware/fingerprint/TranFingerprintManager;

.field private mVideoPowerSavingWaitTime:I

.field private mVideoPowerSavingWaitTimeAfterFirstReduce:I

.field protected mVoiceInteractionRoot:Z


# direct methods
.method public static synthetic $r8$lambda$EQ5EkqpwC3b0MCgo0hmaXZg35QU(Lcom/transsion/camera/app/BaseCameraActivity;Landroid/net/Uri;Lcom/transsion/camera/app/thumbnail/ThumbnailReloadManager;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/BaseCameraActivity;->lambda$updateThumbnailUri$6(Landroid/net/Uri;Lcom/transsion/camera/app/thumbnail/ThumbnailReloadManager;)V

    return-void
.end method

.method public static synthetic $r8$lambda$HwTteQustbcXkraH2XTv2QQsVWs(Lcom/transsion/camera/app/BaseCameraActivity;)Z
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/app/BaseCameraActivity;->lambda$onCreateTasks$2()Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$RB8PgCvPpNeSU60pj5au2x58PwI(Lcom/transsion/camera/app/BaseCameraActivity;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/app/BaseCameraActivity;->lambda$new$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$SJML1BBO7kftXsIgefsJ46CSxLg()Z
    .registers 2

    .line 1087
    sget-object v0, Lcom/transsion/camera/app/BaseCameraActivity;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "[PreviewPerformance] onResume queueIdle."

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public static synthetic $r8$lambda$_6VDyU5VCpHUO5RlcWKlJ0cWET0()V
    .registers 1

    .line 797
    invoke-static {}, Lcom/transsion/camera/utils/tuning/TuningFeatureApi;->getInstance()Lcom/transsion/camera/utils/tuning/TuningFeatureApi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/utils/tuning/TuningFeatureApi;->init()V

    return-void
.end method

.method public static synthetic $r8$lambda$_LTc3DqoFRcG0HH33sNFAdBRVqk(Lcom/transsion/camera/app/BaseCameraActivity;I)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/BaseCameraActivity;->lambda$onNotifySaveRotation$7(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$r8KtKHYGGhwXb5-NV0gfnd8x_6A(Lcom/transsion/camera/app/BaseCameraActivity;)Lcom/transsion/camera/app/ui/ScreenManager;
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/app/BaseCameraActivity;->lambda$preInitOnCreate$1()Lcom/transsion/camera/app/ui/ScreenManager;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$ucA1t1pCshkD2OFL68vOchfb_3I(Lcom/transsion/camera/app/BaseCameraActivity;Landroid/net/Uri;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/BaseCameraActivity;->lambda$notifyNewMedia$5(Landroid/net/Uri;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmAvoidReduceBrightness(Lcom/transsion/camera/app/BaseCameraActivity;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mAvoidReduceBrightness:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmBatteryMonitor(Lcom/transsion/camera/app/BaseCameraActivity;)Lcom/transsion/camera/app/common/battery/BatteryMonitor;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mBatteryMonitor:Lcom/transsion/camera/app/common/battery/BatteryMonitor;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmExitSharedElementBitmap(Lcom/transsion/camera/app/BaseCameraActivity;)Landroid/graphics/Bitmap;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mExitSharedElementBitmap:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmHomeKeyMonitor(Lcom/transsion/camera/app/BaseCameraActivity;)Lcom/transsion/camera/app/common/physicalkey/AbstractKeyMonitor;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mHomeKeyMonitor:Lcom/transsion/camera/app/common/physicalkey/AbstractKeyMonitor;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsBrightnessReduced(Lcom/transsion/camera/app/BaseCameraActivity;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mIsBrightnessReduced:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmMainHandler(Lcom/transsion/camera/app/BaseCameraActivity;)Landroid/os/Handler;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mMainHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmOriginalOrientation(Lcom/transsion/camera/app/BaseCameraActivity;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mOriginalOrientation:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmPhysicalKeyManager(Lcom/transsion/camera/app/BaseCameraActivity;)Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mPhysicalKeyManager:Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmRecentKeyMonitor(Lcom/transsion/camera/app/BaseCameraActivity;)Lcom/transsion/camera/app/common/physicalkey/AbstractKeyMonitor;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mRecentKeyMonitor:Lcom/transsion/camera/app/common/physicalkey/AbstractKeyMonitor;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmScreenBrightnessManager(Lcom/transsion/camera/app/BaseCameraActivity;)Lcom/transsion/camera/manager/ScreenBrightnessManager;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mScreenBrightnessManager:Lcom/transsion/camera/manager/ScreenBrightnessManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSeparateItemArray(Lcom/transsion/camera/app/BaseCameraActivity;)Ljava/util/ArrayList;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mSeparateItemArray:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmState(Lcom/transsion/camera/app/BaseCameraActivity;)Lcom/transsion/camera/app/common/IApp$State;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mState:Lcom/transsion/camera/app/common/IApp$State;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmThumbnailMimeType(Lcom/transsion/camera/app/BaseCameraActivity;)Ljava/lang/String;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mThumbnailMimeType:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmThumbnailTransitionSuccess(Lcom/transsion/camera/app/BaseCameraActivity;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mThumbnailTransitionSuccess:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmVideoPowerSavingWaitTime(Lcom/transsion/camera/app/BaseCameraActivity;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mVideoPowerSavingWaitTime:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmActivityResultCallback(Lcom/transsion/camera/app/BaseCameraActivity;Lcom/transsion/camera/app/common/IApp$ActivityResultCallback;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mActivityResultCallback:Lcom/transsion/camera/app/common/IApp$ActivityResultCallback;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmAvoidReduceBrightness(Lcom/transsion/camera/app/BaseCameraActivity;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mAvoidReduceBrightness:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmBatteryMonitor(Lcom/transsion/camera/app/BaseCameraActivity;Lcom/transsion/camera/app/common/battery/BatteryMonitor;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mBatteryMonitor:Lcom/transsion/camera/app/common/battery/BatteryMonitor;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmHomeKeyMonitor(Lcom/transsion/camera/app/BaseCameraActivity;Lcom/transsion/camera/app/common/physicalkey/AbstractKeyMonitor;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mHomeKeyMonitor:Lcom/transsion/camera/app/common/physicalkey/AbstractKeyMonitor;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIsBrightnessReduced(Lcom/transsion/camera/app/BaseCameraActivity;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mIsBrightnessReduced:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmOriginalOrientation(Lcom/transsion/camera/app/BaseCameraActivity;I)V
    .registers 2

    .line 0
    iput p1, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mOriginalOrientation:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmRecentKeyMonitor(Lcom/transsion/camera/app/BaseCameraActivity;Lcom/transsion/camera/app/common/physicalkey/AbstractKeyMonitor;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mRecentKeyMonitor:Lcom/transsion/camera/app/common/physicalkey/AbstractKeyMonitor;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmState(Lcom/transsion/camera/app/BaseCameraActivity;Lcom/transsion/camera/app/common/IApp$State;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mState:Lcom/transsion/camera/app/common/IApp$State;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmThumbnailTransitionSuccess(Lcom/transsion/camera/app/BaseCameraActivity;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mThumbnailTransitionSuccess:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mdoEnableWaitPage(Lcom/transsion/camera/app/BaseCameraActivity;Z)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/BaseCameraActivity;->doEnableWaitPage(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mdoHeadsetCapture(Lcom/transsion/camera/app/BaseCameraActivity;Landroid/content/Intent;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/BaseCameraActivity;->doHeadsetCapture(Landroid/content/Intent;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mdoOnBatteryStatusChanged(Lcom/transsion/camera/app/BaseCameraActivity;ZII)V
    .registers 4

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/camera/app/BaseCameraActivity;->doOnBatteryStatusChanged(ZII)V

    return-void
.end method

.method static bridge synthetic -$$Nest$misOneshotForMore(Lcom/transsion/camera/app/BaseCameraActivity;)Z
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/app/BaseCameraActivity;->isOneshotForMore()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$misSupportThumbnailTransition(Lcom/transsion/camera/app/BaseCameraActivity;Landroid/net/Uri;Landroid/content/Intent;)Z
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/BaseCameraActivity;->isSupportThumbnailTransition(Landroid/net/Uri;Landroid/content/Intent;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mrecoverScreenBrightness(Lcom/transsion/camera/app/BaseCameraActivity;I)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/BaseCameraActivity;->recoverScreenBrightness(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetNotLoadLatestThumbnail(Lcom/transsion/camera/app/BaseCameraActivity;Z)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/BaseCameraActivity;->setNotLoadLatestThumbnail(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mshowLensDirtyTipIfNeed(Lcom/transsion/camera/app/BaseCameraActivity;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/app/BaseCameraActivity;->showLensDirtyTipIfNeed()V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;
    .registers 1

    .line 0
    sget-object v0, Lcom/transsion/camera/app/BaseCameraActivity;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetVIDEO_POWER_SAVING_UI_SHOW_DELAY_MILLS()I
    .registers 1

    .line 0
    sget v0, Lcom/transsion/camera/app/BaseCameraActivity;->VIDEO_POWER_SAVING_UI_SHOW_DELAY_MILLS:I

    return v0
.end method

.method static bridge synthetic -$$Nest$smroundOrientation(II)I
    .registers 2

    .line 0
    invoke-static {p0, p1}, Lcom/transsion/camera/app/BaseCameraActivity;->roundOrientation(II)I

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 185
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "BaseCameraActivity"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/BaseCameraActivity;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    .line 211
    sget-boolean v0, Lcom/transsion/camera/utils/FeatureSupport;->DEBUG_QUICK_SLEEP_ACTIVITY:Z

    if-eqz v0, :cond_10

    const/16 v0, 0x1388

    goto :goto_13

    :cond_10
    const v0, 0xea60

    :goto_13
    sput v0, Lcom/transsion/camera/app/BaseCameraActivity;->DELAY_MSG_SHOW_WAIT_PAGE:I

    .line 216
    sget-boolean v0, Lcom/transsion/camera/utils/FeatureSupport;->sDbgVideoPowerSavingUI:Z

    if-eqz v0, :cond_1c

    sget v0, Lcom/transsion/camera/utils/FeatureSupport;->sDbgVideoPowerSavingUITime:I

    goto :goto_1e

    :cond_1c
    const/16 v0, 0x78

    :goto_1e
    mul-int/lit16 v0, v0, 0x3e8

    sput v0, Lcom/transsion/camera/app/BaseCameraActivity;->VIDEO_POWER_SAVING_UI_SHOW_DELAY_MILLS:I

    return-void
.end method

.method public constructor <init>()V
    .registers 5

    .line 183
    invoke-direct {p0}, Lcom/transsion/camera/app/PermissionActivity;-><init>()V

    const v0, 0x493e0

    .line 214
    iput v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mVideoPowerSavingWaitTime:I

    const/16 v0, 0x7530

    .line 215
    iput v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mVideoPowerSavingWaitTimeAfterFirstReduce:I

    const/4 v0, -0x1

    .line 234
    iput v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mOrientation:I

    .line 235
    iput v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mOriginalOrientation:I

    const-wide/16 v0, 0x0

    .line 244
    iput-wide v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mKeepGoingToARCoreTime:J

    const/4 v2, 0x1

    .line 251
    iput-boolean v2, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mHasCameraDevice:Z

    const/4 v3, 0x0

    .line 252
    iput-boolean v3, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mNotLoadLatestThumbnail:Z

    .line 269
    iput-boolean v2, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mGotoGalleryUseAnimation:Z

    .line 271
    iput-boolean v3, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mAvoidReduceBrightness:Z

    .line 276
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mSeparateItemArray:Ljava/util/ArrayList;

    .line 278
    sget-object v2, Lcom/transsion/camera/app/common/IApp$State;->STATE_IDLE:Lcom/transsion/camera/app/common/IApp$State;

    iput-object v2, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mState:Lcom/transsion/camera/app/common/IApp$State;

    .line 292
    iput-wide v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mKeepGoingToGoProTime:J

    .line 296
    new-instance v0, Lcom/transsion/camera/app/BaseCameraActivity$ThermalThrottleChangeListenerImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/transsion/camera/app/BaseCameraActivity$ThermalThrottleChangeListenerImpl;-><init>(Lcom/transsion/camera/app/BaseCameraActivity;Lcom/transsion/camera/app/BaseCameraActivity-IA;)V

    iput-object v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mThermalThrottleChangeListener:Lcom/transsion/camera/app/BaseCameraActivity$ThermalThrottleChangeListenerImpl;

    .line 309
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mOrientationListeners:Ljava/util/List;

    .line 310
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mIThermalThrottleListener:Ljava/util/List;

    .line 311
    new-instance v0, Lcom/transsion/camera/app/BaseCameraActivity$CameraStateCallbackImpl;

    invoke-direct {v0, p0, v1}, Lcom/transsion/camera/app/BaseCameraActivity$CameraStateCallbackImpl;-><init>(Lcom/transsion/camera/app/BaseCameraActivity;Lcom/transsion/camera/app/BaseCameraActivity-IA;)V

    iput-object v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mCameraStateCallback:Lcom/transsion/camera/app/common/ICameraControl$ICameraStateCallback;

    .line 313
    new-instance v0, Lcom/transsion/camera/app/BaseCameraActivity$BGImageSavedListener;

    invoke-direct {v0, p0, v1}, Lcom/transsion/camera/app/BaseCameraActivity$BGImageSavedListener;-><init>(Lcom/transsion/camera/app/BaseCameraActivity;Lcom/transsion/camera/app/BaseCameraActivity-IA;)V

    iput-object v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mBGImageSavedListener:Lcom/transsion/camera/app/BaseCameraActivity$BGImageSavedListener;

    .line 353
    new-instance v0, Lcom/transsion/camera/app/BaseCameraActivity$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/transsion/camera/app/BaseCameraActivity$1;-><init>(Lcom/transsion/camera/app/BaseCameraActivity;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mMainHandler:Landroid/os/Handler;

    .line 599
    new-instance v0, Lcom/transsion/camera/app/BaseCameraActivity$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/BaseCameraActivity$$ExternalSyntheticLambda7;-><init>(Lcom/transsion/camera/app/BaseCameraActivity;)V

    iput-object v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mBGMediaChangeListener:Lcom/transsion/camera/app/thumbnail/ThumbnailReloadManager$BGMediaChangeListener;

    .line 1440
    new-instance v0, Lcom/transsion/camera/app/BaseCameraActivity$4;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/BaseCameraActivity$4;-><init>(Lcom/transsion/camera/app/BaseCameraActivity;)V

    iput-object v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mRecentKeyListener:Lcom/transsion/camera/app/common/physicalkey/IKeyEventListener;

    .line 1458
    new-instance v0, Lcom/transsion/camera/app/BaseCameraActivity$5;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/BaseCameraActivity$5;-><init>(Lcom/transsion/camera/app/BaseCameraActivity;)V

    iput-object v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mHomeKeyListener:Lcom/transsion/camera/app/common/physicalkey/IKeyEventListener;

    return-void
.end method

.method private addSeparateAlbumItem(Landroid/net/Uri;)V
    .registers 6

    .line 2259
    sget-object v0, Lcom/transsion/camera/app/BaseCameraActivity;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addSeparateAlbumItem uri: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-nez p1, :cond_19

    goto :goto_5d

    .line 2263
    :cond_19
    new-instance v1, Lcom/transsion/camera/app/SecureCameraActivity$SecureItem;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Lcom/transsion/camera/app/SecureCameraActivity$SecureItem;-><init>(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 2264
    iget-object v2, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mSeparateItemArray:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5d

    .line 2265
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addSeparateAlbumItem indeed uri: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 2266
    iget-object p1, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mSeparateItemArray:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2267
    iget-object p1, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mModeManager:Lcom/transsion/camera/app/common/mode/ModeManager;

    if-eqz p1, :cond_5d

    .line 2268
    iget-object p1, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mAppUI:Lcom/transsion/camera/app/ui/BaseAppUI;

    iget-object v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mSeparateItemArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/ui/BaseAppUI;->setSeparateCaptureNumber(I)V

    .line 2269
    iget-object p1, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mModeManager:Lcom/transsion/camera/app/common/mode/ModeManager;

    iget-object p0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mAppUI:Lcom/transsion/camera/app/ui/BaseAppUI;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/BaseAppUI;->getSeparateCaptureNumber()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/transsion/camera/app/common/mode/ModeManager;->updateCapturedNumber(I)V

    :cond_5d
    :goto_5d
    return-void
.end method

.method private static angleOfUnit90(I)I
    .registers 1

    add-int/lit8 p0, p0, 0x2d

    .line 1708
    div-int/lit8 p0, p0, 0x5a

    mul-int/lit8 p0, p0, 0x5a

    rem-int/lit16 p0, p0, 0x168

    return p0
.end method

.method private asyncInitWhenOnCreate()V
    .registers 3

    .line 655
    invoke-static {}, Lcom/transsion/camera/utils/threads/WorkThreadPools;->getInstance()Lcom/transsion/camera/utils/threads/WorkThreadPools;

    move-result-object p0

    new-instance v0, Lcom/transsion/camera/app/BaseCameraActivity$$ExternalSyntheticLambda9;

    invoke-direct {v0}, Lcom/transsion/camera/app/BaseCameraActivity$$ExternalSyntheticLambda9;-><init>()V

    const-string v1, "asyncInitSome"

    invoke-virtual {p0, v0, v1}, Lcom/transsion/camera/utils/threads/WorkThreadPools;->execute(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-void
.end method

.method private canGotoGallery(Ljava/lang/String;)Z
    .registers 6

    .line 2389
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "child_mode_open"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_20

    const-string v0, "sys.child_mode_open"

    const-string v3, "0"

    .line 2390
    invoke-static {v0, v3}, Lcom/transsion/camera/utils/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "1"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    goto :goto_20

    :cond_1f
    return v1

    .line 2392
    :cond_20
    :goto_20
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "kid_gallery"

    invoke-static {p0, v0}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_34

    .line 2393
    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_33

    goto :goto_34

    :cond_33
    move v2, v1

    .line 2396
    :cond_34
    :goto_34
    sget-object v0, Lcom/transsion/camera/app/BaseCameraActivity;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "gotoGallery: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p0, :cond_45

    const-string p0, ""

    goto :goto_5f

    :cond_45
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ","

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_5f
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v2
.end method

.method private clearExitSharedElementCallback()V
    .registers 4

    .line 2420
    iget-object v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mExitSharedElementCallback:Landroid/app/SharedElementCallback;

    const/4 v1, 0x0

    if-eqz v0, :cond_11

    .line 2421
    sget-object v0, Lcom/transsion/camera/app/BaseCameraActivity;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v2, "[clearExitSharedElementCallback] clear callback"

    invoke-static {v0, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 2422
    invoke-virtual {p0, v1}, Landroid/app/Activity;->setExitSharedElementCallback(Landroid/app/SharedElementCallback;)V

    .line 2423
    iput-object v1, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mExitSharedElementCallback:Landroid/app/SharedElementCallback;

    .line 2425
    :cond_11
    iget-object v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mExitSharedElementBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_29

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_29

    .line 2426
    sget-object v0, Lcom/transsion/camera/app/BaseCameraActivity;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v2, "[clearExitSharedElementCallback] recycle bitmap"

    invoke-static {v0, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 2427
    iget-object v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mExitSharedElementBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 2428
    iput-object v1, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mExitSharedElementBitmap:Landroid/graphics/Bitmap;

    :cond_29
    return-void
.end method

.method private doEnableWaitPage(Z)V
    .registers 2

    if-eqz p1, :cond_6

    .line 1478
    invoke-direct {p0}, Lcom/transsion/camera/app/BaseCameraActivity;->resetWaitPage()V

    return-void

    .line 1480
    :cond_6
    invoke-direct {p0}, Lcom/transsion/camera/app/BaseCameraActivity;->removeWaitPage()V

    return-void
.end method

.method private doHeadsetCapture(Landroid/content/Intent;)V
    .registers 7

    .line 2651
    const-string v0, "pushed"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 2652
    const-string v2, "event"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 2653
    sget-object v2, Lcom/transsion/camera/app/BaseCameraActivity;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "HeadsetCaptureReceiver, pushed:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", event:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", mIsResumed:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mIsResumed:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-eqz v0, :cond_57

    const/16 v0, 0x44

    if-eq p1, v0, :cond_3f

    const/16 v0, 0x46

    if-ne p1, v0, :cond_57

    .line 2654
    :cond_3f
    iget-object p1, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mAppUI:Lcom/transsion/camera/app/ui/BaseAppUI;

    if-eqz p1, :cond_57

    .line 2655
    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/BaseAppUI;->onUserInteraction()V

    .line 2656
    iget-object p1, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mAppUI:Lcom/transsion/camera/app/ui/BaseAppUI;

    invoke-virtual {p1, v1, v1}, Lcom/transsion/camera/app/ui/BaseAppUI;->onShutterClick(II)V

    const/4 p1, 0x1

    .line 2657
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/BaseCameraActivity;->doEnableWaitPage(Z)V

    .line 2658
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p0

    const/4 p1, 0x7

    invoke-virtual {p0, p1}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setCaptureType(I)V

    :cond_57
    return-void
.end method

.method private doOnBatteryStatusChanged(ZII)V
    .registers 5

    .line 1506
    iget-object v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mAppUI:Lcom/transsion/camera/app/ui/BaseAppUI;

    if-eqz v0, :cond_7

    .line 1507
    invoke-virtual {v0, p1, p2, p3}, Lcom/transsion/camera/app/ui/BaseAppUI;->onBatteryStatusChanged(ZII)V

    .line 1509
    :cond_7
    iget-object p0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mModeManager:Lcom/transsion/camera/app/common/mode/ModeManager;

    if-eqz p0, :cond_e

    .line 1510
    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/mode/ModeManager;->onBatteryStatusChanged(ZII)V

    :cond_e
    return-void
.end method

.method private getLocalMimeType(Landroid/net/Uri;)Ljava/lang/String;
    .registers 4

    if-nez p1, :cond_c

    .line 2710
    sget-object p0, Lcom/transsion/camera/app/BaseCameraActivity;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "Parameter uri is null,return now."

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 2711
    const-string p0, ""

    return-object p0

    .line 2714
    :cond_c
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "video"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 2715
    const-string/jumbo p0, "video/mp4"

    goto :goto_4f

    .line 2716
    :cond_1d
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "image"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 2717
    const-string p0, "image/jpeg"

    goto :goto_4f

    .line 2719
    :cond_2c
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p0

    .line 2720
    sget-object p1, Lcom/transsion/camera/app/BaseCameraActivity;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Get MIME type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " from Content provider."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 2722
    :goto_4f
    sget-object p1, Lcom/transsion/camera/app/BaseCameraActivity;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The current MIME type of the Uri is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-object p0
.end method

.method private getThumbnailViewInfos(Landroid/view/View;FI)Ljava/util/ArrayList;
    .registers 9

    .line 1897
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x2

    .line 1898
    new-array v1, v0, [I

    .line 1901
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->getFoldProductModel()Ljava/lang/String;

    move-result-object v2

    if-eq p3, v0, :cond_84

    const/4 v0, 0x3

    if-eq p3, v0, :cond_53

    .line 1942
    invoke-virtual {p1, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 p3, 0x0

    .line 1943
    aget p3, v1, p3

    int-to-float p3, p3

    const/4 v0, 0x1

    .line 1944
    aget v0, v1, v0

    int-to-float v0, v0

    .line 1945
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 1946
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    .line 1947
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "0_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p3, "_"

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b3

    .line 1921
    :cond_53
    const-string p1, "TECNO AE10"

    invoke-static {v2, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b3

    .line 1923
    const-string p1, "0_90.0_2070.0_126_126_60.0"

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1925
    const-string p1, "2_1066.0_1879.0_126_126_60.0"

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1927
    const-string p1, "4_1753.0_216.0_126_126_60.0"

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1929
    const-string p1, "5_121.0_1954.0_126_126_60.0"

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1931
    const-string p1, "10_1694.0_1255.0_126_126_60.0"

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1933
    const-string p1, "190_1023.0_180.0_126_126_60.0"

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1935
    const-string p1, "1180_180.0_915.0_126_126_60.0"

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1937
    const-string p1, "1270_851.0_1990.0_126_126_60.0"

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b3

    .line 1904
    :cond_84
    const-string p1, "Infinix X6962"

    invoke-static {v2, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9c

    .line 1906
    const-string p1, "0_84.0_2115.0_138_138_9.0"

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1908
    const-string p1, "3_84.0_2292.0_138_138_9.0"

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1910
    const-string p1, "7_858.0_90.0_108_108_6.75"

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b3

    .line 1911
    :cond_9c
    const-string p1, "TECNO AE11"

    invoke-static {v2, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b3

    .line 1913
    const-string p1, "0_90.0_2124.0_126_126_60.0"

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1915
    const-string p1, "3_90.0_2301.0_126_126_60.0"

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1917
    const-string p1, "7_858.0_90.0_108_108_45.0"

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1950
    :cond_b3
    :goto_b3
    sget-object p1, Lcom/transsion/camera/app/BaseCameraActivity;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "[gotoGallery] thumbnail_infos = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, ", productModel = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-object p0
.end method

.method private static initDeveloperMode()V
    .registers 3

    .line 794
    invoke-static {}, Lcom/transsion/camera/utils/FeatureSupport;->checkDeveloperModeAtLaunch()V

    .line 795
    invoke-static {}, Lcom/transsion/camera/utils/FeatureSupport;->isLaunchWithDeveloperMode()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 796
    invoke-static {}, Lcom/transsion/camera/utils/threads/WorkThreadPools;->getInstance()Lcom/transsion/camera/utils/threads/WorkThreadPools;

    move-result-object v0

    new-instance v1, Lcom/transsion/camera/app/BaseCameraActivity$$ExternalSyntheticLambda10;

    invoke-direct {v1}, Lcom/transsion/camera/app/BaseCameraActivity$$ExternalSyntheticLambda10;-><init>()V

    const-string v2, "async_init_developer_mode"

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/utils/threads/WorkThreadPools;->execute(Ljava/lang/Runnable;Ljava/lang/String;)V

    :cond_17
    return-void
.end method

.method private initDeviceControl(Lcom/transsion/camera/app/common/IApp$ICameraErrorListener;Ljava/lang/String;)V
    .registers 5

    .line 2351
    sget-object v0, Lcom/transsion/camera/app/BaseCameraActivity;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "initDeviceControl"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 2352
    invoke-static {v1}, Lcom/transsion/camera/utils/debug/TraceUtil;->begin(Ljava/lang/String;)V

    .line 2353
    invoke-static {}, Lcom/transsion/camera/adapter/CameraAgentFactory;->getCameraAgent()Lcom/transsion/camera/adapter/CameraAgent;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/transsion/camera/adapter/CameraAgent;->setPause(Z)V

    .line 2354
    new-instance v0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-direct {v0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    .line 2355
    iget-object v1, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mSettingManager:Lcom/transsion/camera/app/common/setting/SettingManager;

    invoke-virtual {v0, p2, p0, v1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->init(Ljava/lang/String;Landroid/content/Context;Lcom/transsion/camera/app/common/setting/SettingManager;)V

    .line 2356
    iget-object v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    iget-object v1, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mCameraStateCallback:Lcom/transsion/camera/app/common/ICameraControl$ICameraStateCallback;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->registerStateCallback(Lcom/transsion/camera/app/common/ICameraControl$ICameraStateCallback;)V

    .line 2357
    iget-object v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->setCameraErrorListener(Lcom/transsion/camera/app/common/IApp$ICameraErrorListener;)V

    .line 2358
    iget-object p1, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    new-instance v0, Lcom/transsion/camera/app/BaseCameraActivity$CameraDisconnectedImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/transsion/camera/app/BaseCameraActivity$CameraDisconnectedImpl;-><init>(Lcom/transsion/camera/app/BaseCameraActivity;Lcom/transsion/camera/app/BaseCameraActivity-IA;)V

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->setCameraDisconnectedListerner(Lcom/transsion/camera/app/common/IApp$ICameraDisconnectedListener;)V

    .line 2359
    iget-object p1, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-virtual {p1, p2}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->openCamera(Ljava/lang/String;)V

    .line 2360
    iget-object p1, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    iget-object p0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenFormType()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->updateScreenFromeType(I)V

    .line 2361
    invoke-static {}, Lcom/transsion/camera/utils/debug/TraceUtil;->end()V

    return-void
.end method

.method private static isAngleChanged(II)Z
    .registers 4

    const/4 v0, -0x1

    const/4 v1, 0x1

    if-ne p1, v0, :cond_5

    return v1

    :cond_5
    sub-int/2addr p0, p1

    .line 1700
    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    move-result p0

    rsub-int p1, p0, 0x168

    .line 1701
    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    move-result p0

    const/16 p1, 0x46

    if-lt p0, p1, :cond_15

    return v1

    :cond_15
    const/4 p0, 0x0

    return p0
.end method

.method private isOneshotForMore()Z
    .registers 4

    .line 2691
    iget-object p0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    const/4 v0, 0x0

    if-eqz p0, :cond_1e

    .line 2694
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->getSettingManager()Lcom/transsion/camera/app/common/setting/SettingManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingManager;->getSettingController()Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    move-result-object p0

    if-eqz p0, :cond_1e

    .line 2695
    const-string v1, "key_ai_frame"

    .line 2696
    invoke-interface {p0, v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "on"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1e

    const/4 v0, 0x1

    .line 2698
    :cond_1e
    sget-object p0, Lcom/transsion/camera/app/BaseCameraActivity;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AIFrame is support? : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v0
.end method

.method private isSupportThumbnailTransition(Landroid/net/Uri;Landroid/content/Intent;)Z
    .registers 7

    .line 1875
    invoke-virtual {p2}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object p2

    const-string v0, "com.gallery20"

    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    const/4 v0, 0x0

    if-nez p2, :cond_15

    .line 1876
    sget-object p0, Lcom/transsion/camera/app/BaseCameraActivity;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "ThumbnailTransition not support, because com.gallery20 is not support goto Gallery"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v0

    .line 1879
    :cond_15
    iget-object p2, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mThumbnailTransitionManager:Lcom/transsion/camera/feature/thumbnailtransition/ThumbnailTransitionManager;

    if-eqz p2, :cond_31

    iget v1, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mOrientation:I

    iget-object v2, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mModeManager:Lcom/transsion/camera/app/common/mode/ModeManager;

    .line 1880
    invoke-virtual {v2}, Lcom/transsion/camera/app/common/mode/ModeManager;->currentModeName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mAppUI:Lcom/transsion/camera/app/ui/BaseAppUI;

    invoke-virtual {p2, v1, v2, v3, p1}, Lcom/transsion/camera/feature/thumbnailtransition/ThumbnailTransitionManager;->isSupport(ILjava/lang/String;Lcom/transsion/camera/app/common/IAppUI;Landroid/net/Uri;)Z

    move-result p1

    if-eqz p1, :cond_31

    .line 1881
    invoke-virtual {p0}, Lcom/transsion/camera/app/BaseCameraActivity;->isSecureCamera()Z

    move-result p0

    if-nez p0, :cond_31

    const/4 p0, 0x1

    return p0

    :cond_31
    return v0
.end method

.method private synthetic lambda$new$0()V
    .registers 3

    .line 600
    sget-object v0, Lcom/transsion/camera/app/BaseCameraActivity;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "loadLatestThumbnail by delete Uri"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 601
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/BaseCameraActivity;->loadLatestThumbnail(Z)V

    return-void
.end method

.method private synthetic lambda$notifyNewMedia$5(Landroid/net/Uri;)V
    .registers 2

    .line 2254
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/BaseCameraActivity;->addSeparateAlbumItem(Landroid/net/Uri;)V

    return-void
.end method

.method private synthetic lambda$onCreateTasks$2()Z
    .registers 3

    .line 778
    sget-object v0, Lcom/transsion/camera/app/BaseCameraActivity;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "[PreviewPerformance] onCreate queueIdle."

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 779
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportRenderscriptToolkit:Z

    if-eqz v0, :cond_14

    .line 780
    sget-object v0, Lcom/transsion/camera/utils/BitmapPoolUtil;->INSTANCE:Lcom/transsion/camera/utils/BitmapPoolUtil;

    invoke-virtual {v0, p0}, Lcom/transsion/camera/utils/BitmapPoolUtil;->init(Landroid/content/Context;)Lcom/transsion/camera/utils/BitmapPoolUtil;

    .line 782
    :cond_14
    iget-object p0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mThumbnailReloadManager:Lcom/transsion/camera/app/thumbnail/ThumbnailReloadManager;

    invoke-virtual {p0}, Lcom/transsion/camera/app/thumbnail/ThumbnailReloadManager;->onCreate()V

    const/4 p0, 0x0

    return p0
.end method

.method private synthetic lambda$onNotifySaveRotation$7(I)V
    .registers 7

    .line 2514
    invoke-virtual {p0}, Lcom/transsion/camera/app/QuickActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/camera/R$bool;->support_notify_save_rotation:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_14

    .line 2515
    sget-object p0, Lcom/transsion/camera/app/BaseCameraActivity;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "onNotifySaveRotation, return."

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    :cond_14
    const/4 v0, -0x1

    if-eqz p1, :cond_2a

    const/16 v1, 0x168

    if-ne p1, v1, :cond_1c

    goto :goto_2a

    :cond_1c
    const/16 v1, 0x5a

    if-ne p1, v1, :cond_22

    const/4 v1, 0x3

    goto :goto_2b

    :cond_22
    const/16 v1, 0x10e

    if-ne p1, v1, :cond_28

    const/4 v1, 0x1

    goto :goto_2b

    :cond_28
    move v1, v0

    goto :goto_2b

    :cond_2a
    :goto_2a
    const/4 v1, 0x0

    .line 2526
    :goto_2b
    sget-object v2, Lcom/transsion/camera/app/BaseCameraActivity;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onNotifySaveRotation, orientation:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", rotation:"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-eq v1, v0, :cond_73

    .line 2529
    :try_start_4b
    iget-object p1, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mRotationManager:Lcom/transsion/hubsdk/api/window/TranDisplayRotationManager;

    if-nez p1, :cond_56

    .line 2530
    new-instance p1, Lcom/transsion/hubsdk/api/window/TranDisplayRotationManager;

    invoke-direct {p1}, Lcom/transsion/hubsdk/api/window/TranDisplayRotationManager;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mRotationManager:Lcom/transsion/hubsdk/api/window/TranDisplayRotationManager;

    .line 2532
    :cond_56
    iget-object p0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mRotationManager:Lcom/transsion/hubsdk/api/window/TranDisplayRotationManager;

    invoke-virtual {p0, v1}, Lcom/transsion/hubsdk/api/window/TranDisplayRotationManager;->onNotifySaveRotation(I)V
    :try_end_5b
    .catch Ljava/lang/Exception; {:try_start_4b .. :try_end_5b} :catch_5c

    return-void

    :catch_5c
    move-exception p0

    .line 2535
    sget-object p1, Lcom/transsion/camera/app/BaseCameraActivity;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onNotifySaveRotation, exception:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :cond_73
    return-void
.end method

.method private synthetic lambda$preInitOnCreate$1()Lcom/transsion/camera/app/ui/ScreenManager;
    .registers 3

    .line 635
    new-instance v0, Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {p0}, Lcom/transsion/camera/app/QuickActivity;->getDisplayActivityType()I

    move-result v1

    invoke-direct {v0, p0, v1}, Lcom/transsion/camera/app/ui/ScreenManager;-><init>(Landroid/content/Context;I)V

    return-object v0
.end method

.method private synthetic lambda$updateThumbnailUri$6(Landroid/net/Uri;Lcom/transsion/camera/app/thumbnail/ThumbnailReloadManager;)V
    .registers 3

    .line 2284
    iget-object p2, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mThumbnailReloadManager:Lcom/transsion/camera/app/thumbnail/ThumbnailReloadManager;

    iget-object p0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mThumbnailUri:Landroid/net/Uri;

    invoke-virtual {p2, p0, p1}, Lcom/transsion/camera/app/thumbnail/ThumbnailReloadManager;->onUpdateThumbnailUri(Landroid/net/Uri;Landroid/net/Uri;)V

    return-void
.end method

.method private makeConfigsReady(Lcom/transsion/camera/app/CameraApplication;)V
    .registers 5

    .line 804
    const-string p0, "All cache configs has been loaded."

    :try_start_2
    sget-object v0, Lcom/transsion/camera/app/BaseCameraActivity;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "All cache configs load start."

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 805
    iget-object p1, p1, Lcom/transsion/camera/app/CameraApplication;->mAsyncLoadConfigsLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_e
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_e} :catch_14
    .catchall {:try_start_2 .. :try_end_e} :catchall_12

    .line 809
    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    :catchall_12
    move-exception p1

    goto :goto_33

    :catch_14
    move-exception p1

    .line 807
    :try_start_15
    sget-object v0, Lcom/transsion/camera/app/BaseCameraActivity;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Loading cache configs happens exception. ex:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_2f
    .catchall {:try_start_15 .. :try_end_2f} :catchall_12

    .line 809
    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    :goto_33
    sget-object v0, Lcom/transsion/camera/app/BaseCameraActivity;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 810
    throw p1
.end method

.method private notifyScreenFlipDefaultOrientation(Lcom/transsion/camera/app/common/IAppUIListener$IOrientationListener;)V
    .registers 3

    .line 1627
    sget-object p0, Lcom/transsion/camera/app/BaseCameraActivity;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "notifyScreenFlipDefaultOrientation"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/16 p0, 0xb4

    .line 1628
    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/IAppUIListener$IOrientationListener;->onOrientationChanged(I)V

    return-void
.end method

.method private notifyScreenPocketDefaultOrientation(Lcom/transsion/camera/app/common/IAppUIListener$IOrientationListener;)V
    .registers 5

    .line 1617
    invoke-static {}, Lcom/transsion/camera/utils/CameraUtil;->getScreenPocketSystemOrientation()I

    move-result p0

    .line 1618
    sget-object v0, Lcom/transsion/camera/app/BaseCameraActivity;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyScreenPocketDefaultOrientation systemOrientation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-eqz p0, :cond_25

    const/16 v0, 0xb4

    if-ne p0, v0, :cond_21

    goto :goto_25

    .line 1622
    :cond_21
    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/IAppUIListener$IOrientationListener;->onOrientationChanged(I)V

    return-void

    .line 1620
    :cond_25
    :goto_25
    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/IAppUIListener$IOrientationListener;->onOrientationChanged(I)V

    return-void
.end method

.method private notifyTopResumedChanged(Z)V
    .registers 5

    .line 1156
    sget-object v0, Lcom/transsion/camera/app/BaseCameraActivity;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyTopResumedChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1157
    iget-object p0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mAppUI:Lcom/transsion/camera/app/ui/BaseAppUI;

    if-eqz p0, :cond_24

    if-eqz p1, :cond_1f

    const/16 p1, 0x1a1

    goto :goto_21

    :cond_1f
    const/16 p1, 0x1a0

    .line 1161
    :goto_21
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/BaseAppUI;->notifyRawActionToAppUI(I)V

    :cond_24
    return-void
.end method

.method private onKeyMonitorResume()V
    .registers 4

    .line 1117
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1118
    iget-object v2, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mRecentKeyMonitor:Lcom/transsion/camera/app/common/physicalkey/AbstractKeyMonitor;

    if-eqz v2, :cond_b

    .line 1119
    invoke-virtual {v2, v0, v1}, Lcom/transsion/camera/app/common/physicalkey/AbstractKeyMonitor;->onActivityResume(J)V

    .line 1121
    :cond_b
    iget-object p0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mHomeKeyMonitor:Lcom/transsion/camera/app/common/physicalkey/AbstractKeyMonitor;

    if-eqz p0, :cond_12

    .line 1122
    invoke-virtual {p0, v0, v1}, Lcom/transsion/camera/app/common/physicalkey/AbstractKeyMonitor;->onActivityResume(J)V

    :cond_12
    return-void
.end method

.method private onNotifySaveRotation(I)V
    .registers 4

    .line 2513
    invoke-static {}, Lcom/transsion/camera/utils/threads/WorkThreadPools;->getInstance()Lcom/transsion/camera/utils/threads/WorkThreadPools;

    move-result-object v0

    new-instance v1, Lcom/transsion/camera/app/BaseCameraActivity$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1}, Lcom/transsion/camera/app/BaseCameraActivity$$ExternalSyntheticLambda3;-><init>(Lcom/transsion/camera/app/BaseCameraActivity;I)V

    const-string p0, "onNotifySaveRotation"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/camera/utils/threads/WorkThreadPools;->execute(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-void
.end method

.method private preInitOnCreate()V
    .registers 4

    .line 632
    new-instance v0, Lcom/transsion/camera/app/common/storage/AppStorageManager;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/transsion/camera/app/BaseCameraActivity$IntentProxy;

    invoke-direct {v2, p0}, Lcom/transsion/camera/app/BaseCameraActivity$IntentProxy;-><init>(Lcom/transsion/camera/app/BaseCameraActivity;)V

    invoke-direct {v0, v1, v2}, Lcom/transsion/camera/app/common/storage/AppStorageManager;-><init>(Landroid/content/Context;Lcom/transsion/camera/app/common/IApp$IIntentProxy;)V

    iput-object v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mAppStorageManager:Lcom/transsion/camera/app/common/storage/AppStorageManager;

    .line 633
    new-instance v0, Lcom/transsion/camera/app/ui/widget/adapter/UIAdapter$Builder;

    invoke-direct {v0}, Lcom/transsion/camera/app/ui/widget/adapter/UIAdapter$Builder;-><init>()V

    sget-object v1, Lcom/transsion/camera/app/ui/widget/adapter/UIAdapter$Version;->UI5:Lcom/transsion/camera/app/ui/widget/adapter/UIAdapter$Version;

    const-string v2, "com.transsion.camera.app.ui.ScreenManager5"

    .line 634
    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/ui/widget/adapter/UIAdapter$Builder;->add(Lcom/transsion/camera/app/ui/widget/adapter/UIAdapter$Version;Ljava/lang/String;)Lcom/transsion/camera/app/ui/widget/adapter/UIAdapter$Builder;

    move-result-object v0

    new-instance v1, Lcom/transsion/camera/app/BaseCameraActivity$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/BaseCameraActivity$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/app/BaseCameraActivity;)V

    .line 636
    invoke-virtual {p0}, Lcom/transsion/camera/app/QuickActivity;->getDisplayActivityType()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {p0, v2}, [Ljava/lang/Object;

    move-result-object v2

    .line 635
    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/ui/widget/adapter/UIAdapter$Builder;->build(Ljava/util/function/Supplier;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/ui/ScreenManager;

    iput-object v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    .line 637
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/utils/CustomConfigUtil;->isThumbnailTransitionSupport()Z

    move-result v0

    if-eqz v0, :cond_47

    .line 638
    new-instance v0, Lcom/transsion/camera/feature/thumbnailtransition/ThumbnailTransitionManager;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/thumbnailtransition/ThumbnailTransitionManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mThumbnailTransitionManager:Lcom/transsion/camera/feature/thumbnailtransition/ThumbnailTransitionManager;

    .line 640
    :cond_47
    invoke-static {}, Lcom/transsion/camera/app/common/thermal/ThermalThrottle;->getInstance()Lcom/transsion/camera/app/common/thermal/ThermalThrottle;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mThermalThrottle:Lcom/transsion/camera/app/common/thermal/ThermalThrottle;

    .line 641
    new-instance v0, Lcom/transsion/camera/app/common/battery/BatteryMonitor;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/app/common/battery/BatteryMonitor;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mBatteryMonitor:Lcom/transsion/camera/app/common/battery/BatteryMonitor;

    .line 642
    new-instance v0, Lcom/transsion/camera/app/BaseCameraActivity$OrientationEventListenerImpl;

    invoke-direct {v0, p0, p0}, Lcom/transsion/camera/app/BaseCameraActivity$OrientationEventListenerImpl;-><init>(Lcom/transsion/camera/app/BaseCameraActivity;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mOrientationListener:Lcom/transsion/camera/app/BaseCameraActivity$OrientationEventListenerImpl;

    .line 643
    new-instance v0, Lcom/transsion/camera/app/common/physicalkey/HomeKeyMonitor;

    invoke-direct {v0}, Lcom/transsion/camera/app/common/physicalkey/HomeKeyMonitor;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mHomeKeyMonitor:Lcom/transsion/camera/app/common/physicalkey/AbstractKeyMonitor;

    .line 644
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/physicalkey/AbstractKeyMonitor;->init(Landroid/content/Context;)V

    .line 646
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "BroadcastWorkerThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 647
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 648
    new-instance v1, Lcom/transsion/camera/app/BaseCameraActivity$BroadcastHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/transsion/camera/app/BaseCameraActivity$BroadcastHandler;-><init>(Lcom/transsion/camera/app/BaseCameraActivity;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mBroadcastWorkHandler:Lcom/transsion/camera/app/BaseCameraActivity$BroadcastHandler;

    .line 650
    new-instance v1, Lcom/transsion/camera/app/common/physicalkey/RecentKeyMonitor;

    new-instance v2, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v1, v2}, Lcom/transsion/camera/app/common/physicalkey/RecentKeyMonitor;-><init>(Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mRecentKeyMonitor:Lcom/transsion/camera/app/common/physicalkey/AbstractKeyMonitor;

    .line 651
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/transsion/camera/app/common/physicalkey/AbstractKeyMonitor;->init(Landroid/content/Context;)V

    return-void
.end method

.method private recoverScreenBrightness(I)V
    .registers 7

    .line 577
    iget-object v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mScreenBrightnessManager:Lcom/transsion/camera/manager/ScreenBrightnessManager;

    invoke-virtual {v0}, Lcom/transsion/camera/manager/ScreenBrightnessManager;->getInitialBrightness()I

    move-result v0

    int-to-float v0, v0

    .line 578
    iget-object v1, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mScreenBrightnessManager:Lcom/transsion/camera/manager/ScreenBrightnessManager;

    invoke-virtual {v1}, Lcom/transsion/camera/manager/ScreenBrightnessManager;->getCurrentBrightness()I

    move-result v1

    int-to-float v1, v1

    .line 579
    sget-object v2, Lcom/transsion/camera/app/BaseCameraActivity;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CurrentBrightness: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, "InitialBrightness: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 581
    invoke-static {v1, v0}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-eqz v0, :cond_3c

    const/4 v0, 0x0

    cmpl-float v0, v1, v0

    if-eqz v0, :cond_3c

    .line 582
    iget-object v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mScreenBrightnessManager:Lcom/transsion/camera/manager/ScreenBrightnessManager;

    invoke-virtual {v0}, Lcom/transsion/camera/manager/ScreenBrightnessManager;->exitVideoSavePowerMode()V

    .line 585
    :cond_3c
    iget-object v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mState:Lcom/transsion/camera/app/common/IApp$State;

    sget-object v1, Lcom/transsion/camera/app/common/IApp$State;->STATE_RUNNING:Lcom/transsion/camera/app/common/IApp$State;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6f

    iget-boolean v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mIsResumed:Z

    if-eqz v0, :cond_6f

    .line 586
    const-string v0, "Touch again in Recording."

    invoke-static {v2, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 587
    iget-boolean v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mIsBrightnessReduced:Z

    const/4 v1, 0x5

    if-eqz v0, :cond_67

    const/4 v0, -0x1

    if-le p1, v0, :cond_5e

    .line 589
    iget-object p0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mMainHandler:Landroid/os/Handler;

    int-to-long v2, p1

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void

    .line 591
    :cond_5e
    iget-object p1, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mMainHandler:Landroid/os/Handler;

    iget p0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mVideoPowerSavingWaitTimeAfterFirstReduce:I

    int-to-long v2, p0

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void

    .line 594
    :cond_67
    iget-object p1, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mMainHandler:Landroid/os/Handler;

    iget p0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mVideoPowerSavingWaitTime:I

    int-to-long v2, p0

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_6f
    return-void
.end method

.method private removeWaitPage()V
    .registers 2

    .line 1473
    iget-object p0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mMainHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method private resetTwinkleGuildState()V
    .registers 6

    .line 2663
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportUI5:Z

    const/4 v1, 0x0

    const-string v2, "off"

    if-eqz v0, :cond_71

    .line 2664
    iget-boolean v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mIsSuperNightGuideSupport:Z

    if-eqz v0, :cond_1a

    .line 2665
    iget-object v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    const-string v3, "key_twinkle_guild_super_night_mode"

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v2, v4, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2667
    :cond_1a
    iget-boolean v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mIsSkyShopGuideSupport:Z

    if-eqz v0, :cond_29

    .line 2668
    iget-object v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    const-string v3, "key_twinkle_guild_magic_sky_mode"

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v2, v4, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2670
    :cond_29
    iget-boolean v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mIsPmasterGuideSupport:Z

    if-eqz v0, :cond_38

    .line 2671
    iget-object v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    const-string v3, "key_twinkle_guild_pmaster_mode"

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v2, v4, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2673
    :cond_38
    iget-boolean v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mIsDocumentGuideSupport:Z

    if-eqz v0, :cond_47

    .line 2674
    iget-object v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    const-string v3, "key_twinkle_guild_document_mode"

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v2, v4, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2676
    :cond_47
    iget-boolean v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mIsFlareCaptureGuideSupport:Z

    if-eqz v0, :cond_56

    .line 2677
    iget-object v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    const-string v3, "key_twinkle_flare_capture_guide"

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v2, v4, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2679
    :cond_56
    iget-boolean v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mIsCelebritySceneSupport:Z

    if-eqz v0, :cond_86

    .line 2680
    iget-object v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    const-string v3, "key_twinkle_guild_celebrity_food"

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v2, v4, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2681
    iget-object p0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    const-string v0, "key_twinkle_guild_celebrity_sunset"

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v0, v2, v3, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void

    .line 2684
    :cond_71
    iget-boolean v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mIsSuperNightGuideSupport:Z

    if-nez v0, :cond_87

    iget-boolean v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mIsSkyShopGuideSupport:Z

    if-nez v0, :cond_87

    iget-boolean v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mIsPmasterGuideSupport:Z

    if-nez v0, :cond_87

    iget-boolean v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mIsDocumentGuideSupport:Z

    if-nez v0, :cond_87

    iget-boolean v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mIsFlareCaptureGuideSupport:Z

    if-eqz v0, :cond_86

    goto :goto_87

    :cond_86
    return-void

    .line 2685
    :cond_87
    :goto_87
    iget-object p0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    const-string v0, "key_twinkle_guild"

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v0, v2, v3, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method private resetWaitPage()V
    .registers 5

    .line 1468
    iget-object v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mMainHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1469
    iget-object p0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mMainHandler:Landroid/os/Handler;

    sget v0, Lcom/transsion/camera/app/BaseCameraActivity;->DELAY_MSG_SHOW_WAIT_PAGE:I

    int-to-long v2, v0

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method private static roundOrientation(II)I
    .registers 3

    .line 1712
    invoke-static {p0, p1}, Lcom/transsion/camera/app/BaseCameraActivity;->isAngleChanged(II)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1713
    invoke-static {p0}, Lcom/transsion/camera/app/BaseCameraActivity;->angleOfUnit90(I)I

    move-result p0

    return p0

    :cond_b
    return p1
.end method

.method private setNotLoadLatestThumbnail(Z)V
    .registers 2

    .line 2057
    iput-boolean p1, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mNotLoadLatestThumbnail:Z

    return-void
.end method

.method private setThumbnailTransition(Landroid/view/View;Landroid/net/Uri;Landroid/content/Intent;Landroid/graphics/Rect;)V
    .registers 12

    .line 1849
    invoke-direct {p0, p2, p3}, Lcom/transsion/camera/app/BaseCameraActivity;->isSupportThumbnailTransition(Landroid/net/Uri;Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 1850
    invoke-static {}, Lcom/transsion/camera/utils/threads/WorkThreadPools;->getInstance()Lcom/transsion/camera/utils/threads/WorkThreadPools;

    move-result-object v0

    new-instance v1, Lcom/transsion/camera/app/BaseCameraActivity$6;

    move-object v2, p0

    move-object v6, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v1 .. v6}, Lcom/transsion/camera/app/BaseCameraActivity$6;-><init>(Lcom/transsion/camera/app/BaseCameraActivity;Landroid/net/Uri;Landroid/content/Intent;Landroid/graphics/Rect;Landroid/view/View;)V

    const-string p0, "TransitionProcess"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/camera/utils/threads/WorkThreadPools;->execute(Ljava/lang/Runnable;Ljava/lang/String;)V

    :cond_19
    return-void
.end method

.method private setupGooglePhotosSharedAnimation(Landroid/graphics/Bitmap;)V
    .registers 4

    .line 2403
    invoke-direct {p0}, Lcom/transsion/camera/app/BaseCameraActivity;->clearExitSharedElementCallback()V

    .line 2404
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mExitSharedElementBitmap:Landroid/graphics/Bitmap;

    .line 2405
    new-instance p1, Lcom/transsion/camera/app/BaseCameraActivity$7;

    invoke-direct {p1, p0}, Lcom/transsion/camera/app/BaseCameraActivity$7;-><init>(Lcom/transsion/camera/app/BaseCameraActivity;)V

    iput-object p1, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mExitSharedElementCallback:Landroid/app/SharedElementCallback;

    .line 2416
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setExitSharedElementCallback(Landroid/app/SharedElementCallback;)V

    return-void
.end method

.method private showGotoInstallGallery()V
    .registers 3

    .line 1886
    invoke-virtual {p0}, Lcom/transsion/camera/app/BaseCameraActivity;->getFoldFlipActivityProxy()Lcom/transsion/camera/interfaces/fold_flip/IFoldFlipActivityProxy;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 1889
    invoke-virtual {p0}, Lcom/transsion/camera/app/PermissionActivity;->canShowPermissionsDialog()Z

    move-result v1

    invoke-interface {v0, p0, v1}, Lcom/transsion/camera/interfaces/fold_flip/IFoldFlipActivityProxy;->showGotoInstallGallery(Landroid/app/Activity;Z)Z

    move-result v0

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    if-nez v0, :cond_15

    .line 1892
    invoke-virtual {p0}, Lcom/transsion/camera/app/PermissionActivity;->showGotoInstallGalleryOthers()V

    :cond_15
    return-void
.end method

.method private showLensDirtyTipIfNeed()V
    .registers 4

    .line 2376
    iget-boolean v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mLensDirtyHintSupported:Z

    if-eqz v0, :cond_26

    .line 2377
    iget-object v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mModeManager:Lcom/transsion/camera/app/common/mode/ModeManager;

    if-nez v0, :cond_9

    goto :goto_26

    .line 2380
    :cond_9
    iget-object v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->getSettingManager()Lcom/transsion/camera/app/common/setting/SettingManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/setting/SettingManager;->getSettingController()Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    move-result-object v0

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getCameraId()Ljava/lang/String;

    move-result-object v0

    .line 2382
    iget-object v1, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mMainHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 2383
    iget-object p0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {p0, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_26
    :goto_26
    return-void
.end method

.method private showScreenBrightnessReducingHint()V
    .registers 3

    .line 569
    iget-boolean v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mIsVideoPowerSavingUISupport:Z

    if-eqz v0, :cond_18

    .line 570
    new-instance v0, Lcom/transsion/camera/app/common/ui/HintInfo;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/transsion/camera/app/common/ui/HintInfo;-><init>(I)V

    .line 571
    sget v1, Lcom/transsion/camera/R$string;->brightness_reducing_hint:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ui/HintInfo;->setMessage(Ljava/lang/String;)V

    .line 572
    iget-object p0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mAppUI:Lcom/transsion/camera/app/ui/BaseAppUI;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/BaseAppUI;->showHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    :cond_18
    return-void
.end method

.method private unInitDeviceControl()V
    .registers 4

    .line 2365
    sget-object v0, Lcom/transsion/camera/app/BaseCameraActivity;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string/jumbo v1, "unInitDeviceControl start"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 2366
    iget-object v1, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->closeCameraAsyncWhenDestroy()V

    .line 2367
    iget-object v1, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    iget-object v2, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mCameraStateCallback:Lcom/transsion/camera/app/common/ICameraControl$ICameraStateCallback;

    invoke-virtual {v1, v2}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->unRegisterStateCallback(Lcom/transsion/camera/app/common/ICameraControl$ICameraStateCallback;)V

    .line 2368
    iget-object v1, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->setCameraErrorListener(Lcom/transsion/camera/app/common/IApp$ICameraErrorListener;)V

    .line 2369
    iget-object v1, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-virtual {v1, v2}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->setCameraDisconnectedListerner(Lcom/transsion/camera/app/common/IApp$ICameraDisconnectedListener;)V

    .line 2370
    iget-object v1, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->unInit()V

    .line 2371
    iput-object v2, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    .line 2372
    const-string/jumbo p0, "unInitDeviceControl end"

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private updatePauseVIP(ZI)V
    .registers 5

    .line 2736
    iget-object v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mBroadcastWorkHandler:Lcom/transsion/camera/app/BaseCameraActivity$BroadcastHandler;

    if-eqz v0, :cond_19

    .line 2737
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x13

    .line 2738
    iput v1, v0, Landroid/os/Message;->what:I

    .line 2739
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 2740
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2741
    iget-object p0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mBroadcastWorkHandler:Lcom/transsion/camera/app/BaseCameraActivity$BroadcastHandler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_19
    return-void
.end method


# virtual methods
.method protected buildGotoGalleryIntent(Landroid/net/Uri;Ljava/lang/String;Z)Landroid/content/Intent;
    .registers 12

    .line 2061
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mUseGooglePhotosDefault:Z

    .line 2062
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 2063
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.android.camera.action.REVIEW"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2064
    invoke-static {v1, v0}, Lcom/transsion/camera/utils/CameraUtil;->getChoseGallery(Landroid/content/pm/PackageManager;Z)I

    move-result v3

    iput v3, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mChoseGallery:I

    .line 2065
    sget-object v3, Lcom/transsion/camera/app/BaseCameraActivity;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[gotoGallery] useGooglePhotosDefault = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " mChoseGallery = "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mChoseGallery:I

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", isProcessingUri = "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 2067
    iget v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mChoseGallery:I

    const/4 v4, 0x0

    const-string v5, "processing_uri_intent_extra"

    const-string v6, "image/jpeg"

    const-string v7, "com.gallery20"

    if-nez v0, :cond_7d

    .line 2068
    invoke-static {v1, v7}, Lcom/transsion/camera/utils/CameraUtil;->isPackageNameEnable(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7d

    .line 2069
    invoke-static {}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManagerProxy;->getInstance()Lcom/transsion/camera/app/common/storage/BackgroundStorageManagerProxy;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManagerProxy;->isLowQualityJpeg(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_7d

    .line 2070
    invoke-virtual {v2, p1, v6}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 2071
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide p1

    .line 2072
    invoke-static {p0, p1, p2}, Lcom/transsion/camera/app/common/provider/PhotoOemApi;->getQueryLowQualityUri(Landroid/content/Context;J)Landroid/net/Uri;

    move-result-object p1

    .line 2073
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "[gotoGallery] lowQualityUri = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v3, p2}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 2074
    invoke-virtual {v2, v5, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_c5

    :cond_7d
    if-nez p3, :cond_8e

    .line 2075
    invoke-static {}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManagerProxy;->getInstance()Lcom/transsion/camera/app/common/storage/BackgroundStorageManagerProxy;

    move-result-object p3

    invoke-virtual {p3, p1}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManagerProxy;->isLowQualityJpeg(Landroid/net/Uri;)Z

    move-result p3

    if-eqz p3, :cond_8a

    goto :goto_8e

    .line 2084
    :cond_8a
    invoke-virtual {v2, p1, p2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_c5

    .line 2076
    :cond_8e
    :goto_8e
    invoke-virtual {v2, p1, v6}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 2077
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide p1

    .line 2078
    invoke-static {}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManagerProxy;->getInstance()Lcom/transsion/camera/app/common/storage/BackgroundStorageManagerProxy;

    move-result-object p3

    invoke-virtual {p3, p1, p2}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManagerProxy;->setGoToGalleryMediaStoreId(J)V

    .line 2079
    invoke-static {p0, p1, p2}, Lcom/transsion/camera/app/common/provider/PhotoOemApi;->getQueryProcessingUri(Landroid/content/Context;J)Landroid/net/Uri;

    move-result-object p1

    .line 2080
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "[gotoGallery] processingUri : "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v3, p2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 2081
    invoke-virtual {v2, v5, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2082
    invoke-direct {p0}, Lcom/transsion/camera/app/BaseCameraActivity;->isOneshotForMore()Z

    move-result p1

    if-eqz p1, :cond_bf

    const/4 p1, 0x3

    goto :goto_c0

    :cond_bf
    move p1, v4

    :goto_c0
    const-string p2, "process_mode"

    invoke-virtual {v2, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2086
    :goto_c5
    const-string p1, "isCamera"

    const/4 p2, 0x1

    invoke-virtual {v2, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2087
    iget-object p1, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenFormType()I

    move-result p1

    const/4 p3, 0x7

    if-ne p3, p1, :cond_df

    .line 2088
    iget p1, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mOrientation:I

    invoke-static {p1}, Lcom/transsion/camera/utils/CameraUtil;->flipSystemOrientation(I)I

    move-result p1

    const-string p3, "flipOrientation"

    invoke-virtual {v2, p3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2090
    :cond_df
    iget-object p1, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mScreenBrightnessManager:Lcom/transsion/camera/manager/ScreenBrightnessManager;

    invoke-virtual {p1}, Lcom/transsion/camera/manager/ScreenBrightnessManager;->getGotoGalleryBrightness()F

    move-result p1

    .line 2091
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[gotoGallery] brightness = "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v3, p3}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p3, 0x0

    cmpl-float p3, p1, p3

    if-ltz p3, :cond_103

    .line 2093
    const-string p3, "brightness"

    invoke-virtual {v2, p3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    .line 2096
    :cond_103
    const-string p1, "perform_click_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v2, p1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 2098
    invoke-virtual {p0}, Landroid/app/Activity;->isVoiceInteractionRoot()Z

    move-result p1

    if-eqz p1, :cond_118

    const/high16 p1, 0x10000000

    .line 2099
    invoke-virtual {v2, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    goto :goto_11e

    :cond_118
    const p1, 0x8000

    .line 2101
    invoke-virtual {v2, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2103
    :goto_11e
    iget p0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mChoseGallery:I

    if-ne p0, p2, :cond_128

    .line 2104
    const-string p0, "com.google.android.apps.photos"

    invoke-virtual {v2, p0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    return-object v2

    :cond_128
    const/4 p1, 0x2

    if-ne p0, p1, :cond_131

    .line 2106
    const-string p0, "com.google.android.apps.photosgo"

    invoke-virtual {v2, p0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    return-object v2

    .line 2108
    :cond_131
    invoke-virtual {v2, v7}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 2109
    invoke-virtual {v1, v2, v4}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p0

    .line 2110
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_142

    const/4 p0, 0x0

    .line 2111
    invoke-virtual {v2, p0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :cond_142
    return-object v2
.end method

.method protected changeAndNotifyOrientation(I)V
    .registers 6

    .line 2488
    iget v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mOrientation:I

    if-eq v0, p1, :cond_36

    .line 2489
    iput p1, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mOrientation:I

    .line 2490
    iget-object v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mOrientationListeners:Ljava/util/List;

    monitor-enter v0

    .line 2491
    :try_start_9
    iget-object v1, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mOrientationListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_23

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/camera/app/common/IAppUIListener$IOrientationListener;

    .line 2492
    iget v3, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mOrientation:I

    invoke-interface {v2, v3}, Lcom/transsion/camera/app/common/IAppUIListener$IOrientationListener;->onOrientationChanged(I)V

    goto :goto_f

    :catchall_21
    move-exception p0

    goto :goto_34

    .line 2494
    :cond_23
    monitor-exit v0
    :try_end_24
    .catchall {:try_start_9 .. :try_end_24} :catchall_21

    .line 2495
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object v0

    iget v1, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mOrientation:I

    invoke-virtual {v0, v1}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setActivityOrientation(I)V

    .line 2496
    invoke-static {p1}, Lcom/transsion/camera/utils/CameraUtil;->setCameraOrientation(I)V

    .line 2498
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/BaseCameraActivity;->onNotifySaveRotation(I)V

    return-void

    .line 2494
    :goto_34
    :try_start_34
    monitor-exit v0
    :try_end_35
    .catchall {:try_start_34 .. :try_end_35} :catchall_21

    throw p0

    :cond_36
    return-void
.end method

.method protected correctOrientation(I)I
    .registers 8

    .line 1665
    iget-object v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenFormType()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x10e

    const/16 v3, 0x5a

    const/16 v4, 0xb4

    const/4 v5, 0x6

    if-ne v5, v0, :cond_1c

    if-nez p1, :cond_13

    return v4

    :cond_13
    if-ne p1, v3, :cond_16

    return v2

    :cond_16
    if-ne p1, v4, :cond_19

    return v1

    :cond_19
    if-ne p1, v2, :cond_35

    return v3

    .line 1677
    :cond_1c
    iget-object v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenFormType()I

    move-result v0

    const/4 v5, 0x7

    if-ne v5, v0, :cond_31

    if-nez p1, :cond_28

    return v4

    :cond_28
    if-ne p1, v3, :cond_2b

    return v2

    :cond_2b
    if-ne p1, v4, :cond_2e

    return v1

    :cond_2e
    if-ne p1, v2, :cond_35

    return v3

    .line 1690
    :cond_31
    iget-object p0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mAppUI:Lcom/transsion/camera/app/ui/BaseAppUI;

    if-nez p0, :cond_36

    :cond_35
    return p1

    .line 1693
    :cond_36
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/BaseAppUI;->changeOrientation(I)I

    move-result p0

    return p0
.end method

.method protected disableMonitors()V
    .registers 2

    .line 1232
    iget-object v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mOrientationListener:Lcom/transsion/camera/app/BaseCameraActivity$OrientationEventListenerImpl;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->disable()V

    .line 1233
    iget-object v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mThermalThrottle:Lcom/transsion/camera/app/common/thermal/ThermalThrottle;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/thermal/ThermalThrottle;->pause()V

    .line 1234
    iget-object v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mBatteryMonitor:Lcom/transsion/camera/app/common/battery/BatteryMonitor;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/battery/BatteryMonitor;->unInit()V

    const/4 v0, 0x0

    .line 1235
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/BaseCameraActivity;->doEnableWaitPage(Z)V

    return-void
.end method

.method protected doOnThermalThrottleChanged(I)V
    .registers 4

    const/4 v0, 0x2

    if-ne p1, v0, :cond_f

    .line 1579
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_e

    .line 1580
    iget-object p0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_e
    return-void

    :cond_f
    const/4 v0, 0x3

    if-ne p1, v0, :cond_27

    .line 1585
    iget-object v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mAppUI:Lcom/transsion/camera/app/ui/BaseAppUI;

    .line 1586
    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/BaseAppUI;->getCurrentMode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.transsion.camera.feature.mode.video.VideoModeEntry"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 1587
    iget-object v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mMainHandler:Landroid/os/Handler;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1589
    :cond_27
    iget-object v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mIThermalThrottleListener:Ljava/util/List;

    monitor-enter v0

    .line 1590
    :try_start_2a
    iget-object p0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mIThermalThrottleListener:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_30
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_42

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/common/thermal/IThermalThrottleListener;

    .line 1591
    invoke-interface {v1, p1}, Lcom/transsion/camera/app/common/thermal/IThermalThrottleListener;->onThermalThrottleChanged(I)V

    goto :goto_30

    :catchall_40
    move-exception p0

    goto :goto_44

    .line 1593
    :cond_42
    monitor-exit v0

    return-void

    :goto_44
    monitor-exit v0
    :try_end_45
    .catchall {:try_start_2a .. :try_end_45} :catchall_40

    throw p0
.end method

.method protected doShowLensDirtyHintIfNeed(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method protected enableMonitors()V
    .registers 2

    .line 1127
    iget-object v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mOrientationListener:Lcom/transsion/camera/app/BaseCameraActivity$OrientationEventListenerImpl;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->enable()V

    .line 1128
    iget-object v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mThermalThrottle:Lcom/transsion/camera/app/common/thermal/ThermalThrottle;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/thermal/ThermalThrottle;->resume()V

    .line 1129
    iget-object v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mBatteryMonitor:Lcom/transsion/camera/app/common/battery/BatteryMonitor;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/battery/BatteryMonitor;->init()V

    const/4 v0, 0x1

    .line 1130
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/BaseCameraActivity;->doEnableWaitPage(Z)V

    return-void
.end method

.method protected getFoldFlipActivityProxy()Lcom/transsion/camera/interfaces/fold_flip/IFoldFlipActivityProxy;
    .registers 3

    .line 2548
    invoke-static {}, Lcom/transsion/camera/utils/FeatureSupport;->isSupportFoldUI()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 2549
    iget-object v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mFoldFlipActivityProxy:Lcom/transsion/camera/interfaces/fold_flip/IFoldFlipActivityProxy;

    if-nez v0, :cond_1a

    const/4 v0, 0x0

    .line 2551
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "com.transsion.camera.app.FoldFlipActivityProxyImpl"

    invoke-static {v1, v0}, Lcom/transsion/camera/utils/ReflectionUtils;->instance(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/interfaces/fold_flip/IFoldFlipActivityProxy;

    iput-object v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mFoldFlipActivityProxy:Lcom/transsion/camera/interfaces/fold_flip/IFoldFlipActivityProxy;

    .line 2552
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/BaseCameraActivity;->initFoldFlipActivityProxy(Lcom/transsion/camera/interfaces/fold_flip/IFoldFlipActivityProxy;)V

    .line 2554
    :cond_1a
    iget-object p0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mFoldFlipActivityProxy:Lcom/transsion/camera/interfaces/fold_flip/IFoldFlipActivityProxy;

    return-object p0

    :cond_1d
    const/4 p0, 0x0

    return-object p0
.end method

.method public getModeManager()Lcom/transsion/camera/app/common/mode/ModeManager;
    .registers 1

    .line 2561
    iget-object p0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mModeManager:Lcom/transsion/camera/app/common/mode/ModeManager;

    return-object p0
.end method

.method public getScreenBrightnessManager()Lcom/transsion/camera/manager/ScreenBrightnessManager;
    .registers 1

    .line 815
    iget-object p0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mScreenBrightnessManager:Lcom/transsion/camera/manager/ScreenBrightnessManager;

    return-object p0
.end method

.method protected gotoGallery(Landroid/net/Uri;Ljava/lang/String;ZLandroid/view/View;F)V
    .registers 15

    .line 1748
    sget-object v0, Lcom/transsion/camera/app/BaseCameraActivity;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[gotoGallery] view uri: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", isProcessingUri:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", radius:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-nez p1, :cond_2a

    goto/16 :goto_199

    .line 1753
    :cond_2a
    iget-object v1, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mAppStorageManager:Lcom/transsion/camera/app/common/storage/AppStorageManager;

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/storage/AppStorageManager;->getStorageOperator()Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;

    move-result-object v1

    invoke-interface {v1, p0}, Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;->getLeftSpace(Landroid/content/Context;)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-gtz v1, :cond_43

    .line 1754
    const-string p1, "gotoGallery space in not enough, can not goto gallery."

    invoke-static {v0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1755
    invoke-virtual {p0}, Lcom/transsion/camera/app/BaseCameraActivity;->showLowStorageTip()V

    return-void

    :cond_43
    if-nez p2, :cond_49

    .line 1760
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/BaseCameraActivity;->getLocalMimeType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p2

    .line 1764
    :cond_49
    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/camera/app/BaseCameraActivity;->buildGotoGalleryIntent(Landroid/net/Uri;Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object p3

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1767
    :try_start_4f
    iput-boolean v1, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mGoingToGallery:Z

    .line 1768
    iput-boolean v1, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mStartActivityFromCameraFlag:Z

    .line 1769
    iget-object v3, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mModeManager:Lcom/transsion/camera/app/common/mode/ModeManager;

    if-eqz v3, :cond_6a

    invoke-virtual {p3}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/transsion/camera/app/BaseCameraActivity;->canGotoGallery(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6a

    .line 1770
    iget-object v3, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mModeManager:Lcom/transsion/camera/app/common/mode/ModeManager;

    invoke-virtual {v3, v1}, Lcom/transsion/camera/app/common/mode/ModeManager;->setGoingToGalleryFlag(Z)V

    goto :goto_6a

    :catch_67
    move-exception p1

    goto/16 :goto_181

    .line 1774
    :cond_6a
    :goto_6a
    iget v3, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mChoseGallery:I

    const/16 v4, 0x197

    const/4 v5, 0x3

    const/4 v6, 0x2

    if-eq v3, v6, :cond_14c

    iget-boolean v3, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mGotoGalleryUseAnimation:Z

    if-eqz v3, :cond_14c

    iget-object v3, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    .line 1775
    invoke-virtual {v3}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenFormType()I

    move-result v3

    const/4 v7, 0x6

    if-ne v7, v3, :cond_81

    goto/16 :goto_14c

    .line 1779
    :cond_81
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/transsion/camera/utils/CameraUtil;->isAiGallerySupportSharedAnimation(Landroid/content/Context;)Z

    move-result v3

    if-eqz p4, :cond_112

    .line 1780
    iget v7, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mChoseGallery:I

    if-nez v7, :cond_112

    if-eqz v3, :cond_112

    .line 1781
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 1782
    invoke-virtual {p4, v1}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 1783
    invoke-direct {p0, p4, p1, p3, v1}, Lcom/transsion/camera/app/BaseCameraActivity;->setThumbnailTransition(Landroid/view/View;Landroid/net/Uri;Landroid/content/Intent;Landroid/graphics/Rect;)V

    .line 1784
    invoke-static {}, Lcom/transsion/camera/utils/FeatureSupport;->getSupportFoldUIType()I

    move-result v1

    if-eq v1, v6, :cond_a4

    if-ne v1, v5, :cond_c2

    .line 1786
    :cond_a4
    iget-object v3, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    const-string v4, "key_fold_column"

    const-string v7, "off"

    invoke-virtual {v3}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v4, v7, v8}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1787
    const-string v4, "screen_form"

    iget-object v7, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {v7}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenFormType()I

    move-result v7

    invoke-virtual {p3, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1788
    const-string v4, "screen_fold_column"

    invoke-virtual {p3, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1790
    :cond_c2
    const-string/jumbo v3, "thumbnail_radius"

    invoke-virtual {p3, v3, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    .line 1791
    const-string/jumbo v3, "thumbnail_infos"

    invoke-direct {p0, p4, p5, v1}, Lcom/transsion/camera/app/BaseCameraActivity;->getThumbnailViewInfos(Landroid/view/View;FI)Ljava/util/ArrayList;

    move-result-object p5

    invoke-virtual {p3, v3, p5}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 1792
    invoke-direct {p0, p1, p3}, Lcom/transsion/camera/app/BaseCameraActivity;->isSupportThumbnailTransition(Landroid/net/Uri;Landroid/content/Intent;)Z

    move-result p1

    if-eqz p1, :cond_f2

    iget-object p1, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mThumbnailTransitionManager:Lcom/transsion/camera/feature/thumbnailtransition/ThumbnailTransitionManager;

    invoke-virtual {p1}, Lcom/transsion/camera/feature/thumbnailtransition/ThumbnailTransitionManager;->getJpegHasProWaterMark()Z

    move-result p1

    if-nez p1, :cond_f2

    .line 1793
    const-string p1, "mThumbnailTransitionManager gotoGallery transition !"

    invoke-static {v0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1794
    iget-object p1, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mThumbnailTransitionManager:Lcom/transsion/camera/feature/thumbnailtransition/ThumbnailTransitionManager;

    invoke-virtual {p1, p3}, Lcom/transsion/camera/feature/thumbnailtransition/ThumbnailTransitionManager;->processBitmap(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object p3

    .line 1795
    sget p1, Lcom/transsion/camera/R$anim;->goto_gallery_transition:I

    invoke-static {p0, p1, v2}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object p1

    goto :goto_10f

    .line 1797
    :cond_f2
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p1

    iget-boolean p1, p1, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportCustomScaleUpAnimation:Z

    if-eqz p1, :cond_101

    .line 1798
    sget p1, Lcom/transsion/camera/R$anim;->anim_gallery_in_scale_up_only:I

    invoke-static {p0, p1, v2}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object p1

    goto :goto_10f

    .line 1800
    :cond_101
    invoke-virtual {p4}, Landroid/view/View;->getWidth()I

    move-result p1

    div-int/2addr p1, v6

    invoke-virtual {p4}, Landroid/view/View;->getHeight()I

    move-result p5

    div-int/2addr p5, v6

    invoke-static {p4, p1, p5, v2, v2}, Landroid/app/ActivityOptions;->makeScaleUpAnimation(Landroid/view/View;IIII)Landroid/app/ActivityOptions;

    move-result-object p1

    :goto_10f
    const/16 v4, 0x12f

    goto :goto_150

    :cond_112
    if-eqz p4, :cond_145

    .line 1805
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/transsion/camera/utils/CameraUtil;->isGooglePhotosSupportSharedAnimation(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_145

    .line 1806
    iget-object p1, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mAppUI:Lcom/transsion/camera/app/ui/BaseAppUI;

    if-eqz p1, :cond_127

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/BaseAppUI;->getThumbnail()Landroid/graphics/Bitmap;

    move-result-object p1

    goto :goto_128

    :cond_127
    const/4 p1, 0x0

    :goto_128
    if-eqz p1, :cond_140

    .line 1807
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p5

    if-nez p5, :cond_140

    .line 1808
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/BaseCameraActivity;->setupGooglePhotosSharedAnimation(Landroid/graphics/Bitmap;)V

    .line 1809
    const-string/jumbo p1, "use_shared_element_snapshot_for_thumbnail"

    invoke-virtual {p3, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1810
    const-string p1, "photos:filmstrip_transition_view"

    invoke-static {p0, p4, p1}, Landroid/app/ActivityOptions;->makeSceneTransitionAnimation(Landroid/app/Activity;Landroid/view/View;Ljava/lang/String;)Landroid/app/ActivityOptions;

    move-result-object p1

    goto :goto_150

    .line 1812
    :cond_140
    invoke-static {p0, v2, v2}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object p1

    goto :goto_150

    .line 1816
    :cond_145
    sget p1, Lcom/transsion/camera/R$anim;->anim_gallery_in:I

    invoke-static {p0, p1, v2}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object p1

    goto :goto_150

    .line 1776
    :cond_14c
    :goto_14c
    invoke-static {p0, v2, v2}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object p1

    .line 1822
    :goto_150
    invoke-static {}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManagerProxy;->getInstance()Lcom/transsion/camera/app/common/storage/BackgroundStorageManagerProxy;

    move-result-object p4

    const/16 p5, 0x3c

    invoke-virtual {p4, p5, v5}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManagerProxy;->setAppIOOperationStart(II)V

    .line 1825
    invoke-virtual {p0}, Lcom/transsion/camera/app/BaseCameraActivity;->isSecureCamera()Z

    move-result p4

    if-eqz p4, :cond_169

    .line 1826
    invoke-virtual {p1}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object p1

    const/16 p4, 0x2711

    invoke-virtual {p0, p3, p4, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V

    goto :goto_170

    .line 1828
    :cond_169
    invoke-virtual {p1}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p0, p3, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 1830
    :goto_170
    iget-object p1, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mAppUI:Lcom/transsion/camera/app/ui/BaseAppUI;

    if-eqz p1, :cond_199

    .line 1831
    invoke-virtual {p1, v4}, Lcom/transsion/camera/app/ui/BaseAppUI;->notifyRawActionToAppUI(I)V
    :try_end_177
    .catch Landroid/content/ActivityNotFoundException; {:try_start_4f .. :try_end_177} :catch_67
    .catch Ljava/lang/SecurityException; {:try_start_4f .. :try_end_177} :catch_178

    return-void

    :catch_178
    move-exception p0

    .line 1844
    sget-object p1, Lcom/transsion/camera/app/BaseCameraActivity;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p2, "[gotoGallery] SecurityException "

    invoke-static {p1, p2, p0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_199

    .line 1834
    :goto_181
    iput-boolean v2, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mGoingToGallery:Z

    .line 1835
    iget-object p3, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mModeManager:Lcom/transsion/camera/app/common/mode/ModeManager;

    if-eqz p3, :cond_18a

    .line 1836
    invoke-virtual {p3, v2}, Lcom/transsion/camera/app/common/mode/ModeManager;->setGoingToGalleryFlag(Z)V

    .line 1838
    :cond_18a
    sget-object p3, Lcom/transsion/camera/app/BaseCameraActivity;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p4, "[gotoGallery] Couldn\'t view "

    invoke-static {p3, p4, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1839
    invoke-virtual {p0, v2}, Lcom/transsion/camera/app/BaseCameraActivity;->loadLatestThumbnail(Z)V

    if-eqz p2, :cond_199

    .line 1841
    invoke-direct {p0}, Lcom/transsion/camera/app/BaseCameraActivity;->showGotoInstallGallery()V

    :cond_199
    :goto_199
    return-void
.end method

.method protected handleReduceScreenBrightness(F)V
    .registers 4

    .line 538
    iget-object v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mState:Lcom/transsion/camera/app/common/IApp$State;

    sget-object v1, Lcom/transsion/camera/app/common/IApp$State;->STATE_RUNNING:Lcom/transsion/camera/app/common/IApp$State;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 539
    iget-object p0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mScreenBrightnessManager:Lcom/transsion/camera/manager/ScreenBrightnessManager;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/manager/ScreenBrightnessManager;->updateScreenBrightness(F)V

    :cond_f
    return-void
.end method

.method protected handleReduceScreenBrightnessGradually()V
    .registers 8

    .line 545
    iget-object v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mScreenBrightnessManager:Lcom/transsion/camera/manager/ScreenBrightnessManager;

    invoke-virtual {v0}, Lcom/transsion/camera/manager/ScreenBrightnessManager;->enterVideoSavePowerMode()V

    .line 546
    iget-object v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mScreenBrightnessManager:Lcom/transsion/camera/manager/ScreenBrightnessManager;

    invoke-virtual {v0}, Lcom/transsion/camera/manager/ScreenBrightnessManager;->getInitialBrightness()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x41c80000    # 25.0f

    cmpg-float v2, v0, v1

    if-gtz v2, :cond_33

    .line 548
    sget-object p0, Lcom/transsion/camera/app/BaseCameraActivity;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ReduceScreenBrightnessGradually: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, " is already lowed than "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x19

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 552
    :cond_33
    invoke-direct {p0}, Lcom/transsion/camera/app/BaseCameraActivity;->showScreenBrightnessReducingHint()V

    sub-float v1, v0, v1

    const/high16 v2, 0x41a00000    # 20.0f

    div-float/2addr v1, v2

    .line 554
    iget-object v2, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mScreenBrightnessManager:Lcom/transsion/camera/manager/ScreenBrightnessManager;

    invoke-virtual {v2}, Lcom/transsion/camera/manager/ScreenBrightnessManager;->getCurrentBrightness()I

    move-result v2

    int-to-float v2, v2

    .line 555
    invoke-static {v2, v0}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-nez v3, :cond_6c

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_6c

    const/4 v2, 0x0

    :goto_4e
    const/16 v3, 0x14

    if-ge v2, v3, :cond_6c

    sub-float/2addr v0, v1

    .line 558
    new-instance v3, Landroid/os/Message;

    invoke-direct {v3}, Landroid/os/Message;-><init>()V

    const/4 v4, 0x6

    .line 559
    iput v4, v3, Landroid/os/Message;->what:I

    .line 560
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    iput-object v4, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 561
    iget-object v4, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mMainHandler:Landroid/os/Handler;

    add-int/lit8 v2, v2, 0x1

    mul-int/lit8 v5, v2, 0x64

    int-to-long v5, v5

    invoke-virtual {v4, v3, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_4e

    :cond_6c
    const/4 v0, 0x1

    .line 565
    iput-boolean v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mIsBrightnessReduced:Z

    return-void
.end method

.method protected hasVisibleFragment()Z
    .registers 2

    .line 1515
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p0

    .line 1516
    invoke-virtual {p0}, Landroid/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object p0

    .line 1517
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_c
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Fragment;

    if-eqz v0, :cond_c

    .line 1518
    invoke-virtual {v0}, Landroid/app/Fragment;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_22
    const/4 p0, 0x0

    return p0
.end method

.method protected hideErrorAndFinish()V
    .registers 1

    return-void
.end method

.method protected initAppStorageManager()V
    .registers 4

    .line 859
    iget-object v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mAppStorageManager:Lcom/transsion/camera/app/common/storage/AppStorageManager;

    iget-object v1, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    iget-object v2, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-virtual {v2}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->getSettingManager()Lcom/transsion/camera/app/common/setting/SettingManager;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/storage/AppStorageManager;->init(Lcom/transsion/camera/app/common/storage/DataStore;Lcom/transsion/camera/app/common/setting/ISettingManager;)V

    .line 860
    iget-object v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mAppStorageManager:Lcom/transsion/camera/app/common/storage/AppStorageManager;

    new-instance v1, Lcom/transsion/camera/app/BaseCameraActivity$2;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/BaseCameraActivity$2;-><init>(Lcom/transsion/camera/app/BaseCameraActivity;)V

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/storage/AppStorageManager;->setStorageVolumeListener(Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperatorListener;)V

    return-void
.end method

.method protected abstract initAppUI(Lcom/transsion/camera/app/intent/IntentParser;Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)V
.end method

.method protected initConfigs()V
    .registers 3

    .line 819
    invoke-virtual {p0}, Lcom/transsion/camera/app/QuickActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 820
    sget v1, Lcom/transsion/camera/R$bool;->camera_lens_dirty_hint_support:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mLensDirtyHintSupported:Z

    .line 821
    sget v1, Lcom/transsion/camera/R$bool;->goto_gallery_use_animation:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mGotoGalleryUseAnimation:Z

    .line 822
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v1

    iget-boolean v1, v1, Lcom/transsion/camera/utils/CustomConfigUtil;->mIsMagicSkyGuideSupport:Z

    iput-boolean v1, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mIsSkyShopGuideSupport:Z

    .line 823
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v1

    iget-boolean v1, v1, Lcom/transsion/camera/utils/CustomConfigUtil;->mIsCelebritySceneSupport:Z

    iput-boolean v1, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mIsCelebritySceneSupport:Z

    .line 824
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v1

    iget-boolean v1, v1, Lcom/transsion/camera/utils/CustomConfigUtil;->mIsSuperNightGuideSupport:Z

    iput-boolean v1, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mIsSuperNightGuideSupport:Z

    .line 825
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v1

    iget-boolean v1, v1, Lcom/transsion/camera/utils/CustomConfigUtil;->mIsPmasterGuideSupport:Z

    iput-boolean v1, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mIsPmasterGuideSupport:Z

    .line 826
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v1

    iget-boolean v1, v1, Lcom/transsion/camera/utils/CustomConfigUtil;->mIsDocumentGuideSupport:Z

    iput-boolean v1, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mIsDocumentGuideSupport:Z

    .line 827
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v1

    iget-boolean v1, v1, Lcom/transsion/camera/utils/CustomConfigUtil;->mIsFlareCaptureSupport:Z

    iput-boolean v1, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mIsFlareCaptureGuideSupport:Z

    .line 828
    sget v1, Lcom/transsion/camera/R$bool;->video_mode_power_down_mode:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mIsVideoPowerSavingModeSupport:Z

    .line 829
    sget v1, Lcom/transsion/camera/utils/FeatureSupport;->sDbgVideoDimTime:I

    if-lez v1, :cond_53

    mul-int/lit16 v1, v1, 0x3e8

    goto :goto_59

    :cond_53
    sget v1, Lcom/transsion/camera/R$integer;->video_mode_power_down_wait_time:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    :goto_59
    iput v1, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mVideoPowerSavingWaitTime:I

    .line 830
    sget v1, Lcom/transsion/camera/utils/FeatureSupport;->sDbgVideoDimTime2:I

    if-lez v1, :cond_62

    mul-int/lit16 v1, v1, 0x3e8

    goto :goto_68

    :cond_62
    sget v1, Lcom/transsion/camera/R$integer;->video_mode_power_down_mode_wait_time_2:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    :goto_68
    iput v1, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mVideoPowerSavingWaitTimeAfterFirstReduce:I

    .line 831
    sget v1, Lcom/transsion/camera/R$bool;->create_video_surface_in_photo_mode:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mNeedCreateVideoSurface:Z

    .line 832
    sget-boolean v1, Lcom/transsion/camera/utils/FeatureSupport;->sDbgVideoPowerSavingUI:Z

    if-nez v1, :cond_81

    sget v1, Lcom/transsion/camera/R$bool;->video_power_saving_ui_support:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_7f

    goto :goto_81

    :cond_7f
    const/4 v1, 0x0

    goto :goto_82

    :cond_81
    :goto_81
    const/4 v1, 0x1

    :goto_82
    iput-boolean v1, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mIsVideoPowerSavingUISupport:Z

    .line 833
    sget v1, Lcom/transsion/camera/R$bool;->enable_low_config:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mEnableLowConfig:Z

    return-void
.end method

.method protected initDataStore(Lcom/transsion/camera/interfaces/fold_flip/IFoldFlipActivityProxy;)V
    .registers 3

    .line 2727
    invoke-static {}, Lcom/transsion/camera/utils/FeatureSupport;->isOnlySupportTBHoverUI()Z

    move-result v0

    if-eqz v0, :cond_12

    if-eqz p1, :cond_12

    .line 2728
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/transsion/camera/interfaces/fold_flip/IFoldFlipActivityProxy;->createDataStore(Landroid/content/Context;)Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    .line 2730
    :cond_12
    iget-object p1, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    if-nez p1, :cond_21

    .line 2731
    new-instance p1, Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/transsion/camera/app/common/storage/DataStore;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    :cond_21
    return-void
.end method

.method protected initFoldFlipActivityProxy(Lcom/transsion/camera/interfaces/fold_flip/IFoldFlipActivityProxy;)V
    .registers 3

    if-eqz p1, :cond_a

    .line 2566
    new-instance v0, Lcom/transsion/camera/app/BaseCameraActivity$8;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/BaseCameraActivity$8;-><init>(Lcom/transsion/camera/app/BaseCameraActivity;)V

    invoke-interface {p1, v0}, Lcom/transsion/camera/interfaces/fold_flip/IFoldFlipActivityProxy;->setCameraActivityDelegate(Lcom/transsion/camera/interfaces/fold_flip/IFoldFlipActivityProxy$CameraActivityDelegate;)V

    :cond_a
    return-void
.end method

.method protected initModeManager(Landroid/content/Intent;Lcom/transsion/camera/app/intent/IntentParser;Lcom/transsion/camera/app/BaseCameraActivity$ModeAndSettingStatusListenerImpl;)V
    .registers 8

    .line 848
    iget-object v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mModeUIPolicy:Lcom/transsion/camera/app/common/mode/IModeSwitchPolicy;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/mode/IModeSwitchPolicy;->init()V

    .line 849
    iget-object v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mModeManager:Lcom/transsion/camera/app/common/mode/ModeManager;

    iget-object v1, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mThumbnailTransitionManager:Lcom/transsion/camera/feature/thumbnailtransition/ThumbnailTransitionManager;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/mode/ModeManager;->setThumbnailTransitionManager(Lcom/transsion/camera/app/common/thumbnailtransition/IThumbnailTransition;)V

    .line 850
    iget-object v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mModeManager:Lcom/transsion/camera/app/common/mode/ModeManager;

    iget-object p2, p2, Lcom/transsion/camera/app/intent/IntentParser;->mDefaultCameraInCurrentFace:Ljava/lang/String;

    iget-object v1, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    iget-object v2, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    new-instance v3, Lcom/transsion/camera/app/BaseCameraActivity$IntentActionImpl;

    invoke-direct {v3, p0, p1}, Lcom/transsion/camera/app/BaseCameraActivity$IntentActionImpl;-><init>(Lcom/transsion/camera/app/BaseCameraActivity;Landroid/content/Intent;)V

    invoke-virtual {v0, p2, v1, v2, v3}, Lcom/transsion/camera/app/common/mode/ModeManager;->init(Ljava/lang/String;Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Lcom/transsion/camera/app/common/manager/IScreenManager;Lcom/transsion/camera/app/common/IApp$IIntentAction;)V

    .line 852
    iget-object p1, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mModeManager:Lcom/transsion/camera/app/common/mode/ModeManager;

    invoke-virtual {p0}, Landroid/app/Activity;->getCallingPackage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/transsion/camera/app/common/mode/ModeManager;->setCallingPackage(Ljava/lang/String;)V

    .line 853
    iget-object p1, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mModeManager:Lcom/transsion/camera/app/common/mode/ModeManager;

    invoke-virtual {p1, p3}, Lcom/transsion/camera/app/common/mode/ModeManager;->setModeStatusListener(Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;)V

    .line 854
    iget-object p1, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mModeManager:Lcom/transsion/camera/app/common/mode/ModeManager;

    new-instance p2, Lcom/transsion/camera/app/BaseCameraActivity$GotoActivityListenerImpl;

    const/4 p3, 0x0

    invoke-direct {p2, p0, p3}, Lcom/transsion/camera/app/BaseCameraActivity$GotoActivityListenerImpl;-><init>(Lcom/transsion/camera/app/BaseCameraActivity;Lcom/transsion/camera/app/BaseCameraActivity-IA;)V

    invoke-virtual {p1, p2}, Lcom/transsion/camera/app/common/mode/ModeManager;->setGotoActivityListener(Lcom/transsion/camera/app/common/IAppUIListener$IGotoActivityListener;)V

    .line 855
    iget-object p1, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mModeManager:Lcom/transsion/camera/app/common/mode/ModeManager;

    new-instance p2, Lcom/transsion/camera/app/BaseCameraActivity$BGOfflineSwitchCallback;

    invoke-direct {p2, p0, p3}, Lcom/transsion/camera/app/BaseCameraActivity$BGOfflineSwitchCallback;-><init>(Lcom/transsion/camera/app/BaseCameraActivity;Lcom/transsion/camera/app/BaseCameraActivity-IA;)V

    invoke-virtual {p1, p2}, Lcom/transsion/camera/app/common/mode/ModeManager;->setBGOfflineSwitchCallback(Lcom/transsion/camera/app/common/IAppUIListener$IBGOfflineSwitchCallback;)V

    return-void
.end method

.method protected initMonitors()V
    .registers 4

    .line 907
    iget-object v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mThermalThrottle:Lcom/transsion/camera/app/common/thermal/ThermalThrottle;

    iget-object v1, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mThermalThrottleChangeListener:Lcom/transsion/camera/app/BaseCameraActivity$ThermalThrottleChangeListenerImpl;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/thermal/ThermalThrottle;->addThermalThrottleChangeListener(Lcom/transsion/camera/app/common/thermal/IThermalThrottleListener;)V

    .line 908
    iget-object v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mBatteryMonitor:Lcom/transsion/camera/app/common/battery/BatteryMonitor;

    new-instance v1, Lcom/transsion/camera/app/BaseCameraActivity$BatteryStatusListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/transsion/camera/app/BaseCameraActivity$BatteryStatusListener;-><init>(Lcom/transsion/camera/app/BaseCameraActivity;Lcom/transsion/camera/app/BaseCameraActivity-IA;)V

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/battery/BatteryMonitor;->setBatteryListener(Lcom/transsion/camera/app/common/battery/IBatteryListener;)V

    .line 909
    iget-object v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mRecentKeyMonitor:Lcom/transsion/camera/app/common/physicalkey/AbstractKeyMonitor;

    iget-object v1, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mRecentKeyListener:Lcom/transsion/camera/app/common/physicalkey/IKeyEventListener;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/physicalkey/AbstractKeyMonitor;->setKeyEventListener(Lcom/transsion/camera/app/common/physicalkey/IKeyEventListener;)V

    .line 910
    iget-object v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mAppUI:Lcom/transsion/camera/app/ui/BaseAppUI;

    iget-object v1, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mRecentKeyMonitor:Lcom/transsion/camera/app/common/physicalkey/AbstractKeyMonitor;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/BaseAppUI;->setRecentKeyMonitor(Lcom/transsion/camera/app/common/physicalkey/AbstractKeyMonitor;)V

    .line 911
    iget-object v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mHomeKeyMonitor:Lcom/transsion/camera/app/common/physicalkey/AbstractKeyMonitor;

    iget-object p0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mHomeKeyListener:Lcom/transsion/camera/app/common/physicalkey/IKeyEventListener;

    invoke-virtual {v0, p0}, Lcom/transsion/camera/app/common/physicalkey/AbstractKeyMonitor;->setKeyEventListener(Lcom/transsion/camera/app/common/physicalkey/IKeyEventListener;)V

    return-void
.end method

.method protected initSystemUI()V
    .registers 1

    return-void
.end method

.method protected isSameTypeUri(Landroid/net/Uri;Landroid/net/Uri;)Z
    .registers 6

    const/4 v0, 0x0

    if-eqz p1, :cond_3d

    if-nez p2, :cond_6

    goto :goto_3d

    .line 2299
    :cond_6
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/BaseCameraActivity;->getLocalMimeType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    .line 2300
    invoke-direct {p0, p2}, Lcom/transsion/camera/app/BaseCameraActivity;->getLocalMimeType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p0

    .line 2301
    sget-object p2, Lcom/transsion/camera/app/BaseCameraActivity;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "type1: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " type2: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 2302
    invoke-static {p1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_3d

    const-string p0, "image/jpeg"

    invoke-static {p1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_3d

    const/4 p0, 0x1

    return p0

    :cond_3d
    :goto_3d
    return v0
.end method

.method protected isSecureCamera()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public loadLatestThumbnail(Z)V
    .registers 3

    .line 1429
    sget-object p1, Lcom/transsion/camera/app/BaseCameraActivity;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "loadLatestThumbnail"

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1430
    iget-object p1, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mAppStorageManager:Lcom/transsion/camera/app/common/storage/AppStorageManager;

    if-eqz p1, :cond_38

    iget-object p1, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mAppUI:Lcom/transsion/camera/app/ui/BaseAppUI;

    if-eqz p1, :cond_38

    .line 1431
    iget-object p1, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mModeManager:Lcom/transsion/camera/app/common/mode/ModeManager;

    if-eqz p1, :cond_38

    const-string v0, "com.transsion.camera.feature.mode.underwater.UnderwaterModeEntry"

    .line 1432
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/ModeManager;->currentModeName()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_38

    iget-object p1, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mModeManager:Lcom/transsion/camera/app/common/mode/ModeManager;

    .line 1433
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/ModeManager;->currentModeName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.transsion.camera.feature.mode.underwater.UnderwaterVideoModeEntry"

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_38

    .line 1434
    iget-object p1, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mAppUI:Lcom/transsion/camera/app/ui/BaseAppUI;

    iget-object p0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mAppStorageManager:Lcom/transsion/camera/app/common/storage/AppStorageManager;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/storage/AppStorageManager;->getAllBucketIds()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/transsion/camera/app/ui/BaseAppUI;->loadLatestThumbnail(Ljava/util/ArrayList;)V

    :cond_38
    return-void
.end method

.method protected notifyNewMedia(Landroid/net/Uri;ZZ)V
    .registers 7

    .line 2240
    sget-object v0, Lcom/transsion/camera/app/BaseCameraActivity;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyNewMedia, Uri: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", needNotify: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", isProcessing: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v0, p3}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 2241
    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/BaseCameraActivity;->updateThumbnailUri(Landroid/net/Uri;Z)V

    if-eqz p1, :cond_57

    if-eqz p2, :cond_57

    .line 2244
    iget-object p3, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mThumbnailMimeType:Ljava/lang/String;

    if-eqz p3, :cond_57

    .line 2246
    const-string v0, "image/"

    invoke-virtual {p3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_44

    .line 2247
    new-instance p3, Landroid/content/Intent;

    const-string v0, "android.hardware.action.NEW_PICTURE"

    invoke-direct {p3, v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, p3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_57

    .line 2248
    :cond_44
    const-string/jumbo v0, "video/"

    invoke-virtual {p3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_57

    .line 2249
    new-instance p3, Landroid/content/Intent;

    const-string v0, "android.hardware.action.NEW_VIDEO"

    invoke-direct {p3, v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, p3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2253
    :cond_57
    :goto_57
    iget-object p3, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mModeManager:Lcom/transsion/camera/app/common/mode/ModeManager;

    if-eqz p3, :cond_6b

    invoke-virtual {p3}, Lcom/transsion/camera/app/common/mode/ModeManager;->isModeNeedNotifyNewMedia()Z

    move-result p3

    if-eqz p3, :cond_6b

    if-eqz p2, :cond_6b

    .line 2254
    new-instance p2, Lcom/transsion/camera/app/BaseCameraActivity$$ExternalSyntheticLambda11;

    invoke-direct {p2, p0, p1}, Lcom/transsion/camera/app/BaseCameraActivity$$ExternalSyntheticLambda11;-><init>(Lcom/transsion/camera/app/BaseCameraActivity;Landroid/net/Uri;)V

    invoke-virtual {p0, p2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_6b
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 7

    .line 2040
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 2042
    iget-object v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mModeManager:Lcom/transsion/camera/app/common/mode/ModeManager;

    if-eqz v0, :cond_26

    .line 2043
    invoke-virtual {v0, p1, p2, p3}, Lcom/transsion/camera/app/common/mode/ModeManager;->onActivityResult(IILandroid/content/Intent;)Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/transsion/camera/app/BaseCameraActivity;->setNotLoadLatestThumbnail(Z)V

    .line 2044
    sget-object v0, Lcom/transsion/camera/app/BaseCameraActivity;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityResult, mNotLoadLatestThumbnail:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mNotLoadLatestThumbnail:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 2047
    :cond_26
    iget-object v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mActivityResultCallback:Lcom/transsion/camera/app/common/IApp$ActivityResultCallback;

    if-nez v0, :cond_2b

    goto :goto_36

    .line 2051
    :cond_2b
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/IApp$ActivityResultCallback;->getRequestCode()I

    move-result v0

    if-ne p1, v0, :cond_36

    .line 2052
    iget-object p0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mActivityResultCallback:Lcom/transsion/camera/app/common/IApp$ActivityResultCallback;

    invoke-virtual {p0, p2, p3}, Lcom/transsion/camera/app/common/IApp$ActivityResultCallback;->onActivityResult(ILandroid/content/Intent;)V

    :cond_36
    :goto_36
    return-void
.end method

.method public onBackPressed()V
    .registers 2

    .line 1526
    iget-object v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mAppUI:Lcom/transsion/camera/app/ui/BaseAppUI;

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/BaseAppUI;->onGuideFragmentBackPress()Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_50

    .line 1529
    :cond_b
    invoke-virtual {p0}, Lcom/transsion/camera/app/BaseCameraActivity;->hasVisibleFragment()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1530
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    return-void

    .line 1533
    :cond_15
    iget-object v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mModeManager:Lcom/transsion/camera/app/common/mode/ModeManager;

    if-eqz v0, :cond_20

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/mode/ModeManager;->onBackPressedForUI()Z

    move-result v0

    if-eqz v0, :cond_20

    goto :goto_50

    .line 1536
    :cond_20
    iget-object v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mAppUI:Lcom/transsion/camera/app/ui/BaseAppUI;

    if-eqz v0, :cond_3b

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/BaseAppUI;->onBackPressed()Z

    move-result v0

    if-eqz v0, :cond_3b

    iget-object v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mAppUI:Lcom/transsion/camera/app/ui/BaseAppUI;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/BaseAppUI;->isIntentFromNegativeScreen()Z

    move-result v0

    if-eqz v0, :cond_50

    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportUI5:Z

    if-eqz v0, :cond_3b

    goto :goto_50

    .line 1539
    :cond_3b
    iget-object v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mModeManager:Lcom/transsion/camera/app/common/mode/ModeManager;

    if-eqz v0, :cond_46

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/mode/ModeManager;->onBackPressed()Z

    move-result v0

    if-eqz v0, :cond_46

    goto :goto_50

    .line 1542
    :cond_46
    iget-object v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mAppUI:Lcom/transsion/camera/app/ui/BaseAppUI;

    if-eqz v0, :cond_51

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/BaseAppUI;->shouldExitCameraOnBackPressed()Z

    move-result v0

    if-nez v0, :cond_51

    :cond_50
    :goto_50
    return-void

    .line 1545
    :cond_51
    iget-object v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mAppUI:Lcom/transsion/camera/app/ui/BaseAppUI;

    if-eqz v0, :cond_58

    .line 1546
    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/BaseAppUI;->onBackPressedForThumbnailUiManager()Z

    .line 1548
    :cond_58
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method protected onCreateTasks(Landroid/os/Bundle;)V
    .registers 18

    move-object/from16 v1, p0

    .line 660
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    .line 661
    const-string v0, "onCreateTasks"

    invoke-static {v0}, Lcom/transsion/camera/utils/debug/TraceUtil;->begin(Ljava/lang/String;)V

    .line 662
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->isGooglePhotosSupportSharedAnimation(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 663
    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v2, 0xd

    invoke-virtual {v0, v2}, Landroid/view/Window;->requestFeature(I)Z

    .line 665
    :cond_1e
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object v0

    const/4 v11, 0x0

    invoke-virtual {v0, v11}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setLaunchStartTime(I)V

    .line 666
    invoke-static {}, Lcom/transsion/camera/utils/monitor/WatchDogMonitor;->getInstance()Lcom/transsion/camera/utils/monitor/WatchDogMonitor;

    move-result-object v0

    const-string v2, "CAM_START"

    invoke-virtual {v0, v2}, Lcom/transsion/camera/utils/monitor/WatchDogMonitor;->begin(Ljava/lang/String;)V

    .line 667
    invoke-static {}, Lcom/transsion/camera/utils/dfx/mgr/ExManager;->get()Lcom/transsion/camera/utils/dfx/inter/IExDetection;

    move-result-object v0

    const/16 v2, 0x3e8

    const-string v3, "start_cold"

    invoke-interface {v0, v2, v3}, Lcom/transsion/camera/utils/dfx/inter/IPerformanceDfx;->onActionStart(ILjava/lang/String;)V

    .line 669
    invoke-virtual {v1}, Lcom/transsion/camera/app/BaseCameraActivity;->initConfigs()V

    .line 671
    invoke-virtual {v1}, Lcom/transsion/camera/app/BaseCameraActivity;->getFoldFlipActivityProxy()Lcom/transsion/camera/interfaces/fold_flip/IFoldFlipActivityProxy;

    move-result-object v7

    .line 672
    invoke-virtual {v1, v7}, Lcom/transsion/camera/app/BaseCameraActivity;->initDataStore(Lcom/transsion/camera/interfaces/fold_flip/IFoldFlipActivityProxy;)V

    if-eqz v7, :cond_59

    .line 674
    new-instance v0, Lcom/transsion/camera/manager/FlipScreenRelay;

    invoke-direct {v0}, Lcom/transsion/camera/manager/FlipScreenRelay;-><init>()V

    iput-object v0, v1, Lcom/transsion/camera/app/BaseCameraActivity;->mFlipScreenRelay:Lcom/transsion/camera/manager/FlipScreenRelay;

    .line 675
    iget-object v2, v1, Lcom/transsion/camera/app/BaseCameraActivity;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {v0, v2}, Lcom/transsion/camera/manager/FlipScreenRelay;->setScreenManager(Lcom/transsion/camera/app/common/manager/IScreenManager;)V

    .line 676
    iget-object v0, v1, Lcom/transsion/camera/app/BaseCameraActivity;->mFlipScreenRelay:Lcom/transsion/camera/manager/FlipScreenRelay;

    move-object/from16 v2, p1

    invoke-virtual {v0, v2}, Lcom/transsion/camera/manager/FlipScreenRelay;->onCreate(Landroid/os/Bundle;)V

    .line 679
    :cond_59
    new-instance v0, Lcom/transsion/camera/app/intent/IntentParser;

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    iget-object v4, v1, Lcom/transsion/camera/app/BaseCameraActivity;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    iget-object v5, v1, Lcom/transsion/camera/app/BaseCameraActivity;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    iget-object v6, v1, Lcom/transsion/camera/app/BaseCameraActivity;->mFlipScreenRelay:Lcom/transsion/camera/manager/FlipScreenRelay;

    move-object v1, v2

    const/4 v2, 0x0

    move-object/from16 v3, p0

    invoke-direct/range {v0 .. v6}, Lcom/transsion/camera/app/intent/IntentParser;-><init>(Landroid/content/Intent;Landroid/os/Bundle;Landroid/content/Context;Lcom/transsion/camera/app/common/manager/IScreenManager;Lcom/transsion/camera/app/common/storage/DataStore;Lcom/transsion/camera/manager/FlipScreenRelay;)V

    move-object v1, v3

    iput-object v0, v1, Lcom/transsion/camera/app/BaseCameraActivity;->mIntentParser:Lcom/transsion/camera/app/intent/IntentParser;

    .line 682
    invoke-static {}, Lcom/transsion/camera/app/BaseCameraActivity;->initDeveloperMode()V

    .line 684
    iget-object v0, v1, Lcom/transsion/camera/app/BaseCameraActivity;->mIntentParser:Lcom/transsion/camera/app/intent/IntentParser;

    iget-object v2, v1, Lcom/transsion/camera/app/BaseCameraActivity;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {v1, v0, v2}, Lcom/transsion/camera/app/BaseCameraActivity;->processStartSpecifyMode(Lcom/transsion/camera/app/intent/IntentParser;Lcom/transsion/camera/app/common/storage/DataStore;)V

    .line 685
    iget-object v0, v1, Lcom/transsion/camera/app/BaseCameraActivity;->mIntentParser:Lcom/transsion/camera/app/intent/IntentParser;

    iget-object v0, v0, Lcom/transsion/camera/app/intent/IntentParser;->mCameraId:Ljava/lang/String;

    const/4 v12, 0x1

    if-eqz v0, :cond_82

    move v0, v12

    goto :goto_83

    :cond_82
    move v0, v11

    :goto_83
    iput-boolean v0, v1, Lcom/transsion/camera/app/BaseCameraActivity;->mHasCameraDevice:Z

    if-nez v0, :cond_88

    return-void

    .line 690
    :cond_88
    new-instance v0, Lcom/transsion/camera/app/BaseCameraActivity$CameraErrorListenerImpl;

    const/4 v13, 0x0

    invoke-direct {v0, v1, v13}, Lcom/transsion/camera/app/BaseCameraActivity$CameraErrorListenerImpl;-><init>(Lcom/transsion/camera/app/BaseCameraActivity;Lcom/transsion/camera/app/BaseCameraActivity-IA;)V

    iget-object v2, v1, Lcom/transsion/camera/app/BaseCameraActivity;->mIntentParser:Lcom/transsion/camera/app/intent/IntentParser;

    iget-object v2, v2, Lcom/transsion/camera/app/intent/IntentParser;->mCameraId:Ljava/lang/String;

    invoke-direct {v1, v0, v2}, Lcom/transsion/camera/app/BaseCameraActivity;->initDeviceControl(Lcom/transsion/camera/app/common/IApp$ICameraErrorListener;Ljava/lang/String;)V

    .line 691
    sget-object v14, Lcom/transsion/camera/app/BaseCameraActivity;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "build product name: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/transsion/camera/R$string;->product_name:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", persistent: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 692
    invoke-virtual {v1}, Lcom/transsion/camera/app/QuickActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/transsion/camera/R$bool;->app_persistent:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 691
    invoke-static {v14, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-eqz v7, :cond_e3

    .line 695
    iget-object v2, v1, Lcom/transsion/camera/app/BaseCameraActivity;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    new-instance v3, Lcom/transsion/camera/app/BaseCameraActivity$IntentProxy;

    invoke-direct {v3, v1}, Lcom/transsion/camera/app/BaseCameraActivity$IntentProxy;-><init>(Lcom/transsion/camera/app/BaseCameraActivity;)V

    iget-object v4, v1, Lcom/transsion/camera/app/BaseCameraActivity;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    iget-object v5, v1, Lcom/transsion/camera/app/BaseCameraActivity;->mCameraSettingControl:Lcom/transsion/camera/app/common/mode/CameraSettingControl;

    move-object v0, v7

    invoke-interface/range {v0 .. v5}, Lcom/transsion/camera/interfaces/fold_flip/IFoldFlipActivityProxy;->createCameraAppUI(Landroid/content/Context;Lcom/transsion/camera/app/ui/ScreenManager;Lcom/transsion/camera/app/common/IApp$IIntentProxy;Lcom/transsion/camera/app/common/storage/DataStore;Lcom/transsion/camera/app/common/mode/CameraSettingControl;)Lcom/transsion/camera/app/common/IAppUI;

    move-result-object v2

    move-object v15, v0

    check-cast v2, Lcom/transsion/camera/app/ui/BaseAppUI;

    iput-object v2, v1, Lcom/transsion/camera/app/BaseCameraActivity;->mAppUI:Lcom/transsion/camera/app/ui/BaseAppUI;

    .line 697
    new-instance v0, Lcom/transsion/camera/app/BaseCameraActivity$$ExternalSyntheticLambda0;

    invoke-direct {v0, v1}, Lcom/transsion/camera/app/BaseCameraActivity$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/app/BaseCameraActivity;)V

    invoke-interface {v15, v1, v0}, Lcom/transsion/camera/interfaces/fold_flip/IFoldFlipActivityProxy;->onCreateTask(Landroid/app/Activity;Lcom/transsion/camera/interfaces/fold_flip/IFoldFlipActivityProxy$OneArgFunc;)V

    goto :goto_f6

    :cond_e3
    move-object v15, v7

    .line 699
    new-instance v0, Lcom/transsion/camera/app/ui/CameraAppUI;

    iget-object v2, v1, Lcom/transsion/camera/app/BaseCameraActivity;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    new-instance v3, Lcom/transsion/camera/app/BaseCameraActivity$IntentProxy;

    invoke-direct {v3, v1}, Lcom/transsion/camera/app/BaseCameraActivity$IntentProxy;-><init>(Lcom/transsion/camera/app/BaseCameraActivity;)V

    iget-object v4, v1, Lcom/transsion/camera/app/BaseCameraActivity;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    iget-object v5, v1, Lcom/transsion/camera/app/BaseCameraActivity;->mCameraSettingControl:Lcom/transsion/camera/app/common/mode/CameraSettingControl;

    invoke-direct/range {v0 .. v5}, Lcom/transsion/camera/app/ui/CameraAppUI;-><init>(Landroid/content/Context;Lcom/transsion/camera/app/ui/ScreenManager;Lcom/transsion/camera/app/common/IApp$IIntentProxy;Lcom/transsion/camera/app/common/storage/DataStore;Lcom/transsion/camera/app/common/mode/CameraSettingControl;)V

    iput-object v0, v1, Lcom/transsion/camera/app/BaseCameraActivity;->mAppUI:Lcom/transsion/camera/app/ui/BaseAppUI;

    .line 701
    :goto_f6
    iget-object v0, v1, Lcom/transsion/camera/app/BaseCameraActivity;->mAppUI:Lcom/transsion/camera/app/ui/BaseAppUI;

    iget-object v2, v1, Lcom/transsion/camera/app/BaseCameraActivity;->mIntentParser:Lcom/transsion/camera/app/intent/IntentParser;

    iget-boolean v3, v2, Lcom/transsion/camera/app/intent/IntentParser;->mFromNegativeScreen:Z

    iget-boolean v2, v2, Lcom/transsion/camera/app/intent/IntentParser;->mSpecifyAIGC:Z

    invoke-virtual {v0, v3, v2}, Lcom/transsion/camera/app/ui/BaseAppUI;->updateIntentFromNegativeScreen(ZZ)V

    .line 703
    iget-object v0, v1, Lcom/transsion/camera/app/BaseCameraActivity;->mCameraSettingControl:Lcom/transsion/camera/app/common/mode/CameraSettingControl;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/mode/CameraSettingControl;->getModeFeatureProvider()Lcom/transsion/camera/app/common/provider/ModeFeatureProvider;

    move-result-object v0

    iput-object v0, v1, Lcom/transsion/camera/app/BaseCameraActivity;->mModeFeatureProvider:Lcom/transsion/camera/app/common/provider/ModeFeatureProvider;

    .line 704
    new-instance v0, Lcom/transsion/camera/app/ModeUIPolicy;

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    iget-object v3, v1, Lcom/transsion/camera/app/BaseCameraActivity;->mModeFeatureProvider:Lcom/transsion/camera/app/common/provider/ModeFeatureProvider;

    invoke-virtual {v3}, Lcom/transsion/camera/app/common/provider/ModeFeatureProvider;->getAllModeEntryName()Ljava/util/Set;

    move-result-object v3

    .line 705
    invoke-virtual {v1}, Lcom/transsion/camera/app/BaseCameraActivity;->isSecureCamera()Z

    move-result v4

    iget-object v5, v1, Lcom/transsion/camera/app/BaseCameraActivity;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    iget-object v6, v1, Lcom/transsion/camera/app/BaseCameraActivity;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    iget-object v7, v1, Lcom/transsion/camera/app/BaseCameraActivity;->mFlipScreenRelay:Lcom/transsion/camera/manager/FlipScreenRelay;

    iget-object v8, v1, Lcom/transsion/camera/app/BaseCameraActivity;->mAppUI:Lcom/transsion/camera/app/ui/BaseAppUI;

    invoke-direct/range {v0 .. v8}, Lcom/transsion/camera/app/ModeUIPolicy;-><init>(Landroid/content/Context;Landroid/content/Intent;Ljava/util/Set;ZLcom/transsion/camera/app/common/manager/IScreenManager;Lcom/transsion/camera/app/common/storage/DataStore;Lcom/transsion/camera/manager/FlipScreenRelay;Lcom/transsion/camera/app/common/IAppUI;)V

    iput-object v0, v1, Lcom/transsion/camera/app/BaseCameraActivity;->mModeUIPolicy:Lcom/transsion/camera/app/common/mode/IModeSwitchPolicy;

    .line 706
    new-instance v0, Lcom/transsion/camera/app/common/mode/ModeManager;

    iget-object v2, v1, Lcom/transsion/camera/app/BaseCameraActivity;->mIntentParser:Lcom/transsion/camera/app/intent/IntentParser;

    iget-object v2, v2, Lcom/transsion/camera/app/intent/IntentParser;->mDefaultCameraInCurrentFace:Ljava/lang/String;

    iget-object v3, v1, Lcom/transsion/camera/app/BaseCameraActivity;->mAppUI:Lcom/transsion/camera/app/ui/BaseAppUI;

    iget-object v4, v1, Lcom/transsion/camera/app/BaseCameraActivity;->mModeFeatureProvider:Lcom/transsion/camera/app/common/provider/ModeFeatureProvider;

    iget-object v5, v1, Lcom/transsion/camera/app/BaseCameraActivity;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    iget-object v6, v1, Lcom/transsion/camera/app/BaseCameraActivity;->mModeUIPolicy:Lcom/transsion/camera/app/common/mode/IModeSwitchPolicy;

    invoke-direct/range {v0 .. v6}, Lcom/transsion/camera/app/common/mode/ModeManager;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/app/common/provider/ModeFeatureProvider;Lcom/transsion/camera/app/common/storage/DataStore;Lcom/transsion/camera/app/common/mode/IModeSwitchPolicy;)V

    iput-object v0, v1, Lcom/transsion/camera/app/BaseCameraActivity;->mModeManager:Lcom/transsion/camera/app/common/mode/ModeManager;

    move-object v2, v0

    .line 708
    iget-object v0, v1, Lcom/transsion/camera/app/BaseCameraActivity;->mSettingManager:Lcom/transsion/camera/app/common/setting/SettingManager;

    move-object v3, v2

    iget-object v2, v1, Lcom/transsion/camera/app/BaseCameraActivity;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    move-object v4, v3

    iget-object v3, v1, Lcom/transsion/camera/app/BaseCameraActivity;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {v4}, Lcom/transsion/camera/app/common/mode/ModeManager;->getModeGroup()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Lcom/transsion/camera/app/common/setting/SettingManager;->init(Landroid/content/Context;Lcom/transsion/camera/app/common/storage/DataStore;Lcom/transsion/camera/app/common/manager/IScreenManager;J)V

    .line 710
    invoke-virtual {v1}, Lcom/transsion/camera/app/BaseCameraActivity;->initSystemUI()V

    .line 712
    new-instance v0, Lcom/transsion/camera/utils/sound/ActionSound;

    invoke-virtual {v1}, Lcom/transsion/camera/app/QuickActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/transsion/camera/utils/sound/ActionSound;-><init>(Landroid/content/res/Resources;)V

    iput-object v0, v1, Lcom/transsion/camera/app/BaseCameraActivity;->mActionSound:Lcom/transsion/camera/utils/sound/ActionSound;

    .line 715
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 716
    iget-object v0, v1, Lcom/transsion/camera/app/BaseCameraActivity;->mIntentParser:Lcom/transsion/camera/app/intent/IntentParser;

    iget-object v4, v1, Lcom/transsion/camera/app/BaseCameraActivity;->mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-virtual {v1, v0, v4}, Lcom/transsion/camera/app/BaseCameraActivity;->initAppUI(Lcom/transsion/camera/app/intent/IntentParser;Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)V

    .line 717
    iget-object v0, v1, Lcom/transsion/camera/app/BaseCameraActivity;->mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    iget-object v4, v1, Lcom/transsion/camera/app/BaseCameraActivity;->mAppUI:Lcom/transsion/camera/app/ui/BaseAppUI;

    invoke-virtual {v0, v4}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->setAppUI(Lcom/transsion/camera/app/common/IAppUI;)V

    .line 718
    invoke-virtual {v1}, Lcom/transsion/camera/app/BaseCameraActivity;->isSecureCamera()Z

    move-result v0

    if-nez v0, :cond_181

    .line 719
    invoke-static {}, Lcom/transsion/camera/app/common/ai/AIGCManager;->getInstance()Lcom/transsion/camera/app/common/ai/AIGCManager;

    move-result-object v0

    iget-object v4, v1, Lcom/transsion/camera/app/BaseCameraActivity;->mAppUI:Lcom/transsion/camera/app/ui/BaseAppUI;

    invoke-virtual {v0, v4}, Lcom/transsion/camera/app/common/ai/AIGCManager;->setAppUI(Lcom/transsion/camera/app/common/IAppUI;)V

    .line 720
    invoke-static {}, Lcom/transsion/camera/app/common/ai/AIArtManager;->getInstance()Lcom/transsion/camera/app/common/ai/AIArtManager;

    move-result-object v0

    iget-object v4, v1, Lcom/transsion/camera/app/BaseCameraActivity;->mAppUI:Lcom/transsion/camera/app/ui/BaseAppUI;

    invoke-virtual {v0, v4}, Lcom/transsion/camera/app/common/ai/AIArtManager;->setAppUI(Lcom/transsion/camera/app/common/IAppUI;)V

    .line 722
    :cond_181
    iget-object v0, v1, Lcom/transsion/camera/app/BaseCameraActivity;->mAppUI:Lcom/transsion/camera/app/ui/BaseAppUI;

    invoke-virtual {v1, v0}, Lcom/transsion/camera/app/BaseCameraActivity;->registerOnOrientationChangeListener(Lcom/transsion/camera/app/common/IAppUIListener$IOrientationListener;)V

    .line 723
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CameraAppUI init. cost: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, "ms"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 726
    new-instance v0, Lcom/transsion/camera/app/BaseCameraActivity$ModeAndSettingStatusListenerImpl;

    invoke-direct {v0, v1, v13}, Lcom/transsion/camera/app/BaseCameraActivity$ModeAndSettingStatusListenerImpl;-><init>(Lcom/transsion/camera/app/BaseCameraActivity;Lcom/transsion/camera/app/BaseCameraActivity-IA;)V

    .line 727
    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    iget-object v6, v1, Lcom/transsion/camera/app/BaseCameraActivity;->mIntentParser:Lcom/transsion/camera/app/intent/IntentParser;

    invoke-virtual {v1, v5, v6, v0}, Lcom/transsion/camera/app/BaseCameraActivity;->initModeManager(Landroid/content/Intent;Lcom/transsion/camera/app/intent/IntentParser;Lcom/transsion/camera/app/BaseCameraActivity$ModeAndSettingStatusListenerImpl;)V

    .line 728
    iget-object v5, v1, Lcom/transsion/camera/app/BaseCameraActivity;->mModeManager:Lcom/transsion/camera/app/common/mode/ModeManager;

    invoke-virtual {v1, v5}, Lcom/transsion/camera/app/BaseCameraActivity;->registerOnOrientationChangeListener(Lcom/transsion/camera/app/common/IAppUIListener$IOrientationListener;)V

    .line 729
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ModeManager init. cost: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v2

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v14, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 731
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 732
    invoke-virtual {v1}, Lcom/transsion/camera/app/BaseCameraActivity;->initAppStorageManager()V

    .line 733
    invoke-static {}, Lcom/transsion/camera/app/common/ai/AIGCManager;->getInstance()Lcom/transsion/camera/app/common/ai/AIGCManager;

    move-result-object v5

    iget-object v6, v1, Lcom/transsion/camera/app/BaseCameraActivity;->mAppStorageManager:Lcom/transsion/camera/app/common/storage/AppStorageManager;

    invoke-virtual {v6}, Lcom/transsion/camera/app/common/storage/AppStorageManager;->getStorageOperator()Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/transsion/camera/app/common/ai/AIGCManager;->setStorageOperator(Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;)V

    .line 734
    invoke-static {}, Lcom/transsion/camera/app/common/ai/AIArtManager;->getInstance()Lcom/transsion/camera/app/common/ai/AIArtManager;

    move-result-object v5

    iget-object v6, v1, Lcom/transsion/camera/app/BaseCameraActivity;->mAppStorageManager:Lcom/transsion/camera/app/common/storage/AppStorageManager;

    invoke-virtual {v6}, Lcom/transsion/camera/app/common/storage/AppStorageManager;->getStorageOperator()Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/transsion/camera/app/common/ai/AIArtManager;->setStorageOperator(Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;)V

    .line 735
    iget-object v5, v1, Lcom/transsion/camera/app/BaseCameraActivity;->mModeManager:Lcom/transsion/camera/app/common/mode/ModeManager;

    iget-object v6, v1, Lcom/transsion/camera/app/BaseCameraActivity;->mAppStorageManager:Lcom/transsion/camera/app/common/storage/AppStorageManager;

    invoke-virtual {v6}, Lcom/transsion/camera/app/common/storage/AppStorageManager;->getStorageOperator()Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;

    move-result-object v6

    invoke-virtual {v5, v6, v11}, Lcom/transsion/camera/app/common/mode/ModeManager;->updateStorageOperator(Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;I)V

    .line 736
    iget-object v5, v1, Lcom/transsion/camera/app/BaseCameraActivity;->mModeManager:Lcom/transsion/camera/app/common/mode/ModeManager;

    iget-object v6, v1, Lcom/transsion/camera/app/BaseCameraActivity;->mAppStorageManager:Lcom/transsion/camera/app/common/storage/AppStorageManager;

    invoke-virtual {v6}, Lcom/transsion/camera/app/common/storage/AppStorageManager;->getInternalStorageOperator()Lcom/transsion/camera/app/common/storage/InternalStorageOperator;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/transsion/camera/app/common/mode/ModeManager;->setInternalStorageOperator(Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;)V

    .line 737
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "AppStorageManager init. cost: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v2

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v14, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 739
    new-instance v2, Lcom/transsion/camera/app/PreviewIntercept;

    iget-object v3, v1, Lcom/transsion/camera/app/BaseCameraActivity;->mAppUI:Lcom/transsion/camera/app/ui/BaseAppUI;

    iget-object v5, v1, Lcom/transsion/camera/app/BaseCameraActivity;->mModeManager:Lcom/transsion/camera/app/common/mode/ModeManager;

    invoke-direct {v2, v3, v5}, Lcom/transsion/camera/app/PreviewIntercept;-><init>(Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/app/common/mode/ModeManager;)V

    iput-object v2, v1, Lcom/transsion/camera/app/BaseCameraActivity;->mPreviewIntercept:Lcom/transsion/camera/app/PreviewIntercept;

    .line 740
    iget-object v3, v1, Lcom/transsion/camera/app/BaseCameraActivity;->mAppUI:Lcom/transsion/camera/app/ui/BaseAppUI;

    invoke-virtual {v3, v2, v12}, Lcom/transsion/camera/app/ui/BaseAppUI;->registerPreviewGestureListener(Lcom/transsion/camera/app/common/IAppUIListener$IPreviewGestureListener;I)V

    .line 742
    new-instance v2, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;

    iget-object v3, v1, Lcom/transsion/camera/app/BaseCameraActivity;->mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-virtual {v3}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->getSettingManager()Lcom/transsion/camera/app/common/setting/SettingManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/transsion/camera/app/common/setting/SettingManager;->getSettingProvide()Lcom/transsion/camera/app/common/setting/ISettingManager$SettingProvide;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;-><init>(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingProvide;)V

    iput-object v2, v1, Lcom/transsion/camera/app/BaseCameraActivity;->mPhysicalKeyManager:Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;

    .line 746
    new-instance v2, Lcom/transsion/hubsdk/api/hardware/display/TranDisplayManager;

    invoke-direct {v2}, Lcom/transsion/hubsdk/api/hardware/display/TranDisplayManager;-><init>()V

    iput-object v2, v1, Lcom/transsion/camera/app/BaseCameraActivity;->mTranDisplayManager:Lcom/transsion/hubsdk/api/hardware/display/TranDisplayManager;

    .line 747
    iget-object v2, v1, Lcom/transsion/camera/app/BaseCameraActivity;->mPhysicalKeyManager:Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;

    iget-object v3, v1, Lcom/transsion/camera/app/BaseCameraActivity;->mAppUI:Lcom/transsion/camera/app/ui/BaseAppUI;

    invoke-virtual {v2, v3}, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->setKeyEventCallback(Lcom/transsion/camera/app/common/IAppUIControl$PhysicalKeyEventCallback;)V

    .line 748
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v2

    iget-boolean v2, v2, Lcom/transsion/camera/utils/CustomConfigUtil;->mFingerprintSupportZoom:Z

    if-eqz v2, :cond_264

    .line 749
    new-instance v2, Lcom/transsion/hubsdk/api/hardware/fingerprint/TranFingerprintManager;

    invoke-direct {v2}, Lcom/transsion/hubsdk/api/hardware/fingerprint/TranFingerprintManager;-><init>()V

    iput-object v2, v1, Lcom/transsion/camera/app/BaseCameraActivity;->mTranFingerprintManager:Lcom/transsion/hubsdk/api/hardware/fingerprint/TranFingerprintManager;

    .line 752
    :cond_264
    iget-object v2, v1, Lcom/transsion/camera/app/BaseCameraActivity;->mAppUI:Lcom/transsion/camera/app/ui/BaseAppUI;

    iget-object v3, v1, Lcom/transsion/camera/app/BaseCameraActivity;->mAppStorageManager:Lcom/transsion/camera/app/common/storage/AppStorageManager;

    invoke-virtual {v2, v3}, Lcom/transsion/camera/app/ui/BaseAppUI;->setStorageSettingProvider(Lcom/transsion/camera/app/common/storage/AppStorageManager;)V

    .line 753
    iget-object v2, v1, Lcom/transsion/camera/app/BaseCameraActivity;->mAppUI:Lcom/transsion/camera/app/ui/BaseAppUI;

    invoke-virtual {v2}, Lcom/transsion/camera/app/ui/BaseAppUI;->setSettingManager()V

    .line 754
    iget-object v2, v1, Lcom/transsion/camera/app/BaseCameraActivity;->mAppUI:Lcom/transsion/camera/app/ui/BaseAppUI;

    invoke-virtual {v2, v0}, Lcom/transsion/camera/app/ui/BaseAppUI;->setSettingStatusListener(Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;)V

    .line 755
    iget-object v0, v1, Lcom/transsion/camera/app/BaseCameraActivity;->mAppUI:Lcom/transsion/camera/app/ui/BaseAppUI;

    new-instance v2, Lcom/transsion/camera/app/BaseCameraActivity$GotoActivityListenerImpl;

    invoke-direct {v2, v1, v13}, Lcom/transsion/camera/app/BaseCameraActivity$GotoActivityListenerImpl;-><init>(Lcom/transsion/camera/app/BaseCameraActivity;Lcom/transsion/camera/app/BaseCameraActivity-IA;)V

    invoke-virtual {v0, v2}, Lcom/transsion/camera/app/ui/BaseAppUI;->setGotoActivityListener(Lcom/transsion/camera/app/common/IAppUIListener$IGotoActivityListener;)V

    .line 756
    iget-object v0, v1, Lcom/transsion/camera/app/BaseCameraActivity;->mAppUI:Lcom/transsion/camera/app/ui/BaseAppUI;

    new-instance v2, Lcom/transsion/camera/app/BaseCameraActivity$ThumbnailListenerImpl;

    invoke-direct {v2, v1, v13}, Lcom/transsion/camera/app/BaseCameraActivity$ThumbnailListenerImpl;-><init>(Lcom/transsion/camera/app/BaseCameraActivity;Lcom/transsion/camera/app/BaseCameraActivity-IA;)V

    invoke-virtual {v0, v2}, Lcom/transsion/camera/app/ui/BaseAppUI;->setThumbnailListener(Lcom/transsion/camera/app/common/IAppUIListener$IThumbnailListener;)V

    if-eqz v15, :cond_296

    .line 759
    iget-object v0, v1, Lcom/transsion/camera/app/BaseCameraActivity;->mModeUIPolicy:Lcom/transsion/camera/app/common/mode/IModeSwitchPolicy;

    invoke-interface {v15, v0}, Lcom/transsion/camera/interfaces/fold_flip/IFoldFlipActivityProxy;->setModeSwitchPolicy(Lcom/transsion/camera/app/common/mode/IModeSwitchPolicy;)V

    .line 760
    invoke-interface {v15}, Lcom/transsion/camera/interfaces/fold_flip/IFoldFlipActivityProxy;->setBrowserGotoGalleryListener()V

    .line 761
    invoke-interface {v15, v1}, Lcom/transsion/camera/interfaces/fold_flip/IFoldFlipActivityProxy;->registerVipReceiver(Landroid/app/Activity;)V

    .line 764
    :cond_296
    iget-object v0, v1, Lcom/transsion/camera/app/BaseCameraActivity;->mIntentParser:Lcom/transsion/camera/app/intent/IntentParser;

    invoke-virtual {v1, v0}, Lcom/transsion/camera/app/BaseCameraActivity;->processGoogleAssistantIntent(Lcom/transsion/camera/app/intent/IntentParser;)V

    .line 766
    invoke-virtual {v1}, Lcom/transsion/camera/app/BaseCameraActivity;->initMonitors()V

    .line 767
    iget-object v0, v1, Lcom/transsion/camera/app/BaseCameraActivity;->mAppUI:Lcom/transsion/camera/app/ui/BaseAppUI;

    invoke-virtual {v1, v0}, Lcom/transsion/camera/app/BaseCameraActivity;->registerThermalThrottleChangeListener(Lcom/transsion/camera/app/common/thermal/IThermalThrottleListener;)V

    .line 768
    iget-object v0, v1, Lcom/transsion/camera/app/BaseCameraActivity;->mIntentParser:Lcom/transsion/camera/app/intent/IntentParser;

    invoke-virtual {v1, v0}, Lcom/transsion/camera/app/BaseCameraActivity;->processCameraForSpecifyMode(Lcom/transsion/camera/app/intent/IntentParser;)V

    .line 770
    new-instance v0, Lcom/transsion/camera/manager/ScreenBrightnessManager;

    invoke-direct {v0, v1}, Lcom/transsion/camera/manager/ScreenBrightnessManager;-><init>(Landroid/app/Activity;)V

    iput-object v0, v1, Lcom/transsion/camera/app/BaseCameraActivity;->mScreenBrightnessManager:Lcom/transsion/camera/manager/ScreenBrightnessManager;

    .line 771
    invoke-virtual {v0}, Lcom/transsion/camera/manager/ScreenBrightnessManager;->init()V

    .line 772
    iget-object v0, v1, Lcom/transsion/camera/app/BaseCameraActivity;->mBroadcastWorkHandler:Lcom/transsion/camera/app/BaseCameraActivity$BroadcastHandler;

    const/16 v2, 0x12

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 774
    new-instance v0, Lcom/transsion/camera/app/thumbnail/ThumbnailReloadManager;

    invoke-direct {v0, v1}, Lcom/transsion/camera/app/thumbnail/ThumbnailReloadManager;-><init>(Lcom/transsion/camera/app/BaseCameraActivity;)V

    iput-object v0, v1, Lcom/transsion/camera/app/BaseCameraActivity;->mThumbnailReloadManager:Lcom/transsion/camera/app/thumbnail/ThumbnailReloadManager;

    .line 775
    iget-object v2, v1, Lcom/transsion/camera/app/BaseCameraActivity;->mBGMediaChangeListener:Lcom/transsion/camera/app/thumbnail/ThumbnailReloadManager$BGMediaChangeListener;

    invoke-virtual {v0, v2}, Lcom/transsion/camera/app/thumbnail/ThumbnailReloadManager;->setMediaChangeListener(Lcom/transsion/camera/app/thumbnail/ThumbnailReloadManager$BGMediaChangeListener;)V

    .line 777
    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v0

    new-instance v2, Lcom/transsion/camera/app/BaseCameraActivity$$ExternalSyntheticLambda8;

    invoke-direct {v2, v1}, Lcom/transsion/camera/app/BaseCameraActivity$$ExternalSyntheticLambda8;-><init>(Lcom/transsion/camera/app/BaseCameraActivity;)V

    invoke-virtual {v0, v2}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    .line 786
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportUI5:Z

    if-eqz v0, :cond_2dc

    .line 787
    invoke-direct {v1}, Lcom/transsion/camera/app/BaseCameraActivity;->resetTwinkleGuildState()V

    .line 789
    :cond_2dc
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCreate. cost: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sub-long/2addr v1, v9

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 790
    invoke-static {}, Lcom/transsion/camera/utils/debug/TraceUtil;->end()V

    return-void
.end method

.method protected onDestroyTasks()V
    .registers 5

    .line 1342
    iget-boolean v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mHasCameraDevice:Z

    if-nez v0, :cond_19

    .line 1343
    sget-object v0, Lcom/transsion/camera/app/BaseCameraActivity;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "No camera device,return in advance."

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1344
    invoke-static {}, Lcom/transsion/camera/utils/MonkeyUtils;->isUserAMonkey()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 1345
    iget-object p0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mThermalThrottle:Lcom/transsion/camera/app/common/thermal/ThermalThrottle;

    if-eqz p0, :cond_18

    .line 1346
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/thermal/ThermalThrottle;->removeAllListeners()V

    :cond_18
    return-void

    .line 1351
    :cond_19
    iget-object v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mModeManager:Lcom/transsion/camera/app/common/mode/ModeManager;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/BaseCameraActivity;->unregisterOnOrientationChangeListener(Lcom/transsion/camera/app/common/IAppUIListener$IOrientationListener;)V

    .line 1352
    iget-object v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mAppUI:Lcom/transsion/camera/app/ui/BaseAppUI;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/BaseCameraActivity;->unregisterOnOrientationChangeListener(Lcom/transsion/camera/app/common/IAppUIListener$IOrientationListener;)V

    .line 1353
    invoke-virtual {p0}, Lcom/transsion/camera/app/BaseCameraActivity;->getFoldFlipActivityProxy()Lcom/transsion/camera/interfaces/fold_flip/IFoldFlipActivityProxy;

    move-result-object v0

    if-eqz v0, :cond_31

    .line 1355
    new-instance v1, Lcom/transsion/camera/app/BaseCameraActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/BaseCameraActivity$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/app/BaseCameraActivity;)V

    invoke-interface {v0, p0, v1}, Lcom/transsion/camera/interfaces/fold_flip/IFoldFlipActivityProxy;->onDestroyTasks(Landroid/app/Activity;Lcom/transsion/camera/interfaces/fold_flip/IFoldFlipActivityProxy$OneArgFunc;)V

    .line 1357
    :cond_31
    iget-object v1, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mAppUI:Lcom/transsion/camera/app/ui/BaseAppUI;

    invoke-virtual {p0, v1}, Lcom/transsion/camera/app/BaseCameraActivity;->unregisterThermalThrottleChangeListener(Lcom/transsion/camera/app/common/thermal/IThermalThrottleListener;)V

    .line 1358
    iget-object v1, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mModeManager:Lcom/transsion/camera/app/common/mode/ModeManager;

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/mode/ModeManager;->unInit1()V

    .line 1359
    invoke-direct {p0}, Lcom/transsion/camera/app/BaseCameraActivity;->unInitDeviceControl()V

    .line 1360
    iget-object v1, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mModeManager:Lcom/transsion/camera/app/common/mode/ModeManager;

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/mode/ModeManager;->unInit2()V

    .line 1361
    iget-object v1, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mModeManager:Lcom/transsion/camera/app/common/mode/ModeManager;

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/mode/ModeManager;->destroyTask()V

    .line 1362
    iget-object v1, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mModeManager:Lcom/transsion/camera/app/common/mode/ModeManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/transsion/camera/app/common/mode/ModeManager;->setModeStatusListener(Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;)V

    .line 1363
    iget-object v1, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mAppUI:Lcom/transsion/camera/app/ui/BaseAppUI;

    iget-object v3, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mPreviewIntercept:Lcom/transsion/camera/app/PreviewIntercept;

    invoke-virtual {v1, v3}, Lcom/transsion/camera/app/ui/BaseAppUI;->unregisterPreviewGestureListener(Lcom/transsion/camera/app/common/IAppUIListener$IPreviewGestureListener;)V

    .line 1364
    iget-object v1, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mAppUI:Lcom/transsion/camera/app/ui/BaseAppUI;

    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/BaseAppUI;->unInit()V

    .line 1365
    iget-object v1, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mAppUI:Lcom/transsion/camera/app/ui/BaseAppUI;

    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/BaseAppUI;->destroyPreviewUI()V

    .line 1367
    iget-object v1, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1369
    invoke-virtual {p0}, Lcom/transsion/camera/app/BaseCameraActivity;->uninitMonitors()V

    .line 1370
    iget-object v1, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mAppStorageManager:Lcom/transsion/camera/app/common/storage/AppStorageManager;

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/storage/AppStorageManager;->unInit()V

    .line 1371
    iget-object v1, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mBroadcastWorkHandler:Lcom/transsion/camera/app/BaseCameraActivity$BroadcastHandler;

    const/16 v3, 0x11

    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1372
    iget-object v1, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mBroadcastWorkHandler:Lcom/transsion/camera/app/BaseCameraActivity$BroadcastHandler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->quitSafely()V

    .line 1374
    iget-object v1, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mScreenBrightnessManager:Lcom/transsion/camera/manager/ScreenBrightnessManager;

    invoke-virtual {v1}, Lcom/transsion/camera/manager/ScreenBrightnessManager;->unInit()V

    .line 1375
    iget-object v1, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mThumbnailReloadManager:Lcom/transsion/camera/app/thumbnail/ThumbnailReloadManager;

    if-eqz v1, :cond_8a

    .line 1376
    invoke-virtual {v1}, Lcom/transsion/camera/app/thumbnail/ThumbnailReloadManager;->onDestroy()V

    .line 1377
    iput-object v2, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mThumbnailReloadManager:Lcom/transsion/camera/app/thumbnail/ThumbnailReloadManager;

    .line 1379
    :cond_8a
    invoke-static {}, Lcom/transsion/camera/utils/threads/HandlerThreadPool;->getInstance()Lcom/transsion/camera/utils/threads/HandlerThreadPool;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/camera/utils/threads/HandlerThreadPool;->onDestroy()V

    .line 1380
    iget-object v1, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mActionSound:Lcom/transsion/camera/utils/sound/ActionSound;

    if-eqz v1, :cond_9a

    .line 1381
    invoke-virtual {v1}, Lcom/transsion/camera/utils/sound/ActionSound;->release()V

    .line 1382
    iput-object v2, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mActionSound:Lcom/transsion/camera/utils/sound/ActionSound;

    :cond_9a
    if-eqz v0, :cond_a5

    .line 1385
    invoke-interface {v0, p0}, Lcom/transsion/camera/interfaces/fold_flip/IFoldFlipActivityProxy;->unRegisterVipReceiver(Landroid/app/Activity;)V

    .line 1386
    invoke-interface {v0, p0}, Lcom/transsion/camera/interfaces/fold_flip/IFoldFlipActivityProxy;->onDestroy(Landroid/app/Activity;)V

    .line 1387
    invoke-interface {v0}, Lcom/transsion/camera/interfaces/fold_flip/IFoldFlipActivityProxy;->clearBrowserGotoGalleryListener()V

    .line 1389
    :cond_a5
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->quitCameraResetValue()V

    .line 1391
    iget-boolean v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mNeedCreateVideoSurface:Z

    if-eqz v0, :cond_b7

    .line 1392
    invoke-static {}, Lcom/transsion/camera/utils/VideoSurfaceUtil;->getInstance()Lcom/transsion/camera/utils/VideoSurfaceUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/utils/VideoSurfaceUtil;->releaseSurface()V

    .line 1394
    :cond_b7
    invoke-static {}, Lcom/transsion/camera/app/common/vibrate/VibratorController;->getInstance()Lcom/transsion/camera/app/common/vibrate/VibratorController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/vibrate/VibratorController;->destroy()V

    .line 1395
    iget-object v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mCameraSettingControl:Lcom/transsion/camera/app/common/mode/CameraSettingControl;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/mode/CameraSettingControl;->destroy()V

    .line 1397
    invoke-static {}, Lcom/transsion/camera/utils/dfx/mgr/ExManager;->get()Lcom/transsion/camera/utils/dfx/inter/IExDetection;

    move-result-object v0

    invoke-interface {v0}, Lcom/transsion/camera/utils/dfx/inter/IActivityLifecycle;->onDestroy()V

    .line 1399
    invoke-static {}, Lcom/transsion/camera/utils/AssetLoaderUtil;->getIsSupportAssets()Z

    move-result v0

    if-eqz v0, :cond_e7

    invoke-static {}, Lcom/transsion/camera/utils/AssetLoaderUtil;->getIsLoaderResource()Z

    move-result v0

    if-eqz v0, :cond_e7

    .line 1400
    invoke-static {p0}, Lcom/transsion/camera/utils/AssetLoaderUtil;->removeResourcesLoader(Landroid/content/Context;)V

    .line 1401
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/camera/utils/AssetLoaderUtil;->removeResourcesLoader(Landroid/content/Context;)V

    .line 1402
    invoke-static {}, Lcom/transsion/camera/utils/AssetLoaderUtil;->clearResourcesLoader()V

    const/4 v0, 0x0

    .line 1403
    invoke-static {v0}, Lcom/transsion/camera/utils/AssetLoaderUtil;->setIsLoaderResource(Z)V

    .line 1408
    :cond_e7
    iput-object v2, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mAppUI:Lcom/transsion/camera/app/ui/BaseAppUI;

    .line 1409
    iput-object v2, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mModeManager:Lcom/transsion/camera/app/common/mode/ModeManager;

    .line 1410
    iput-object v2, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mModeUIPolicy:Lcom/transsion/camera/app/common/mode/IModeSwitchPolicy;

    .line 1411
    iput-object v2, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    .line 1413
    iput-object v2, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mThumbnailUri:Landroid/net/Uri;

    .line 1414
    iput-object v2, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mPhysicalKeyManager:Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;

    .line 1416
    invoke-direct {p0}, Lcom/transsion/camera/app/BaseCameraActivity;->clearExitSharedElementCallback()V

    return-void
.end method

.method public onEnterAnimationComplete()V
    .registers 4

    .line 1421
    sget-object v0, Lcom/transsion/camera/app/BaseCameraActivity;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onEnterAnimationComplete, mAppUI: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mAppUI:Lcom/transsion/camera/app/ui/BaseAppUI;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1422
    invoke-super {p0}, Landroid/app/Activity;->onEnterAnimationComplete()V

    .line 1423
    iget-object p0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mAppUI:Lcom/transsion/camera/app/ui/BaseAppUI;

    if-eqz p0, :cond_22

    .line 1424
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/BaseAppUI;->onEnterAnimationComplete()V

    :cond_22
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 6

    .line 2307
    sget-object v0, Lcom/transsion/camera/app/BaseCameraActivity;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onKeyDown: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 2308
    iget-object v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mAppUI:Lcom/transsion/camera/app/ui/BaseAppUI;

    if-eqz v0, :cond_22

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/BaseAppUI;->getScreenState()I

    move-result v0

    if-nez v0, :cond_22

    const/4 p0, 0x0

    return p0

    .line 2311
    :cond_22
    iget-object v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mPhysicalKeyManager:Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;

    if-eqz v0, :cond_2e

    invoke-virtual {v0, p1, p2}, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_2e

    const/4 p0, 0x1

    return p0

    .line 2314
    :cond_2e
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/QuickActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 6

    .line 2319
    sget-object v0, Lcom/transsion/camera/app/BaseCameraActivity;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onKeyUp: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 2320
    iget-object v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mAppUI:Lcom/transsion/camera/app/ui/BaseAppUI;

    if-eqz v0, :cond_22

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/BaseAppUI;->getScreenState()I

    move-result v0

    if-nez v0, :cond_22

    const/4 p0, 0x0

    return p0

    .line 2323
    :cond_22
    iget-object v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mPhysicalKeyManager:Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;

    if-eqz v0, :cond_2e

    invoke-virtual {v0, p1, p2}, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_2e

    const/4 p0, 0x1

    return p0

    .line 2326
    :cond_2e
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/QuickActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method protected onNewIntentTasks(Landroid/content/Intent;)V
    .registers 3

    .line 952
    invoke-super {p0, p1}, Lcom/transsion/camera/app/QuickActivity;->onNewIntentTasks(Landroid/content/Intent;)V

    .line 953
    iget-boolean v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mGoingToGallery:Z

    if-eqz v0, :cond_1c

    invoke-virtual {p1}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_1c

    invoke-virtual {p1}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object p1

    const-string v0, "android.intent.category.LAUNCHER"

    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1c

    const/4 p1, 0x1

    .line 954
    iput-boolean p1, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mStartByLauncher:Z

    :cond_1c
    return-void
.end method

.method protected onPauseTasks()V
    .registers 11

    .line 1167
    iget-boolean v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mHasCameraDevice:Z

    if-nez v0, :cond_5

    return-void

    .line 1170
    :cond_5
    invoke-static {}, Lcom/transsion/camera/utils/FeatureSupport;->isNeedSendBroadcastToNfc()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1171
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.nfc.CAMERA_EXIT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1173
    :cond_15
    iget-object v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mTranFingerprintManager:Lcom/transsion/hubsdk/api/hardware/fingerprint/TranFingerprintManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_35

    .line 1175
    :try_start_1a
    invoke-virtual {v0, v1}, Lcom/transsion/hubsdk/api/hardware/fingerprint/TranFingerprintManager;->enterFingerNavigationMode(Z)V
    :try_end_1d
    .catch Lcom/transsion/hubsdk/common/exception/TranThubIncompatibleException; {:try_start_1a .. :try_end_1d} :catch_1e
    .catch Ljava/lang/SecurityException; {:try_start_1a .. :try_end_1d} :catch_1e

    goto :goto_35

    :catch_1e
    move-exception v0

    .line 1177
    sget-object v2, Lcom/transsion/camera/app/BaseCameraActivity;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[enterFingerNavigationMode] e: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1180
    :cond_35
    :goto_35
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mKeepGoingToARCoreTime:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x3c

    cmp-long v0, v2, v4

    const/4 v2, 0x1

    if-gez v0, :cond_45

    .line 1182
    iput-boolean v2, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mGoingToARCore:Z

    .line 1184
    :cond_45
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mKeepGoingToGoProTime:J

    sub-long/2addr v6, v8

    cmp-long v0, v6, v4

    if-gez v0, :cond_52

    .line 1186
    iput-boolean v2, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mGoingToGoPro:Z

    .line 1188
    :cond_52
    iget-object v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mThumbnailTransitionManager:Lcom/transsion/camera/feature/thumbnailtransition/ThumbnailTransitionManager;

    if-eqz v0, :cond_59

    .line 1189
    invoke-virtual {v0}, Lcom/transsion/camera/feature/thumbnailtransition/ThumbnailTransitionManager;->pause()V

    .line 1191
    :cond_59
    iput-boolean v1, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mIsResumed:Z

    .line 1192
    iget-object v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->removePendingCommand()V

    .line 1193
    iget-object v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1194
    iget-object v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mAppUI:Lcom/transsion/camera/app/ui/BaseAppUI;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/BaseAppUI;->pause()V

    .line 1195
    iget-object v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mAppStorageManager:Lcom/transsion/camera/app/common/storage/AppStorageManager;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/storage/AppStorageManager;->pause()V

    .line 1196
    iget-object v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mModeUIPolicy:Lcom/transsion/camera/app/common/mode/IModeSwitchPolicy;

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Lcom/transsion/camera/app/common/mode/IModeSwitchPolicy;->updateMetaInfo(Landroid/os/Bundle;)V

    .line 1197
    invoke-static {}, Lcom/transsion/camera/app/common/isphidl/ISPHIDLController;->getInstance()Lcom/transsion/camera/app/common/isphidl/ISPHIDLController;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/isphidl/ISPHIDLController;->pause(I)V

    .line 1198
    iget-object v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mModeManager:Lcom/transsion/camera/app/common/mode/ModeManager;

    invoke-virtual {v0, v2}, Lcom/transsion/camera/app/common/mode/ModeManager;->pause(Z)V

    .line 1199
    iget-object v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mAppUI:Lcom/transsion/camera/app/ui/BaseAppUI;

    iget-object v2, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-virtual {v2}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->isSwitchingOffline()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/transsion/camera/app/ui/BaseAppUI;->pausePreviewUI(Z)V

    const/4 v0, -0x1

    .line 1201
    iput v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mOrientation:I

    .line 1202
    iput v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mOriginalOrientation:I

    .line 1203
    sget-object v0, Lcom/transsion/camera/app/common/IApp$State;->STATE_IDLE:Lcom/transsion/camera/app/common/IApp$State;

    iput-object v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mState:Lcom/transsion/camera/app/common/IApp$State;

    .line 1204
    iget-object v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mAppUI:Lcom/transsion/camera/app/ui/BaseAppUI;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/BaseAppUI;->hidePopupOption()V

    .line 1206
    iget-object v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mTranDisplayManager:Lcom/transsion/hubsdk/api/hardware/display/TranDisplayManager;

    if-eqz v0, :cond_c4

    .line 1208
    :try_start_9e
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/transsion/hubsdk/api/hardware/display/TranDisplayManager;->unregisterShoulderButtonCallback(I)V
    :try_end_a5
    .catch Ljava/lang/Exception; {:try_start_9e .. :try_end_a5} :catch_a6

    goto :goto_c2

    :catch_a6
    move-exception v0

    .line 1210
    sget-object v2, Lcom/transsion/camera/app/BaseCameraActivity;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "unregisterShoulderButtonCallback fail "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1212
    :goto_c2
    iput-object v3, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mShoulderButtonCallback:Lcom/transsion/camera/app/BaseCameraActivity$ShoulderButtonCallback;

    .line 1214
    :cond_c4
    invoke-static {}, Lcom/transsion/camera/utils/MultiTouchManager;->resetState()V

    .line 1215
    invoke-static {}, Lcom/transsion/camera/app/common/bgservice/BGServiceController;->getInstance()Lcom/transsion/camera/app/common/bgservice/BGServiceController;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/transsion/camera/app/common/bgservice/BGServiceController;->setBGImageSavedListener(Lcom/transsion/camera/app/common/bgservice/BGServiceController$IBGImageSavedListener;)V

    .line 1216
    invoke-static {}, Lcom/transsion/camera/app/common/bgservice/BGServiceController;->getInstance()Lcom/transsion/camera/app/common/bgservice/BGServiceController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/bgservice/BGServiceController;->pause()V

    .line 1217
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/utils/CustomConfigUtil;->isQcomCaptureFlow()Z

    move-result v0

    if-eqz v0, :cond_ee

    invoke-static {}, Lcom/transsion/camera/utils/FeatureSupport;->isForceCloseOfflineJNISupport()Z

    move-result v0

    if-nez v0, :cond_ee

    .line 1218
    invoke-static {}, Lcom/transsion/camera/adapter/platformcamera/OfflineController;->getInstance()Lcom/transsion/camera/adapter/platformcamera/OfflineController;

    move-result-object v0

    if-eqz v0, :cond_ee

    .line 1220
    invoke-virtual {v0}, Lcom/transsion/camera/adapter/platformcamera/OfflineController;->unInitOffline()V

    .line 1223
    :cond_ee
    invoke-static {}, Lcom/transsion/camera/utils/VideoSurfaceUtil;->getInstance()Lcom/transsion/camera/utils/VideoSurfaceUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/utils/VideoSurfaceUtil;->releaseSurface()V

    .line 1225
    invoke-static {p0, v1}, Lcom/transsion/camera/utils/CameraUtil;->putFbCameraState(Landroid/content/Context;I)V

    .line 1226
    iget-object p0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mThumbnailReloadManager:Lcom/transsion/camera/app/thumbnail/ThumbnailReloadManager;

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    new-instance v0, Lcom/transsion/camera/app/BaseCameraActivity$$ExternalSyntheticLambda6;

    invoke-direct {v0}, Lcom/transsion/camera/app/BaseCameraActivity$$ExternalSyntheticLambda6;-><init>()V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 1227
    invoke-static {}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManagerProxy;->getInstance()Lcom/transsion/camera/app/common/storage/BackgroundStorageManagerProxy;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManagerProxy;->onActivityPause()V

    .line 1228
    invoke-static {}, Lcom/transsion/camera/utils/monitor/WatchDogMonitor;->getInstance()Lcom/transsion/camera/utils/monitor/WatchDogMonitor;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/utils/monitor/WatchDogMonitor;->cancelAll()V

    return-void
.end method

.method protected onPermissionCreateTasks(Landroid/os/Bundle;)V
    .registers 3

    .line 623
    invoke-direct {p0}, Lcom/transsion/camera/app/BaseCameraActivity;->preInitOnCreate()V

    .line 624
    invoke-virtual {p0}, Lcom/transsion/camera/app/BaseCameraActivity;->getFoldFlipActivityProxy()Lcom/transsion/camera/interfaces/fold_flip/IFoldFlipActivityProxy;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 626
    invoke-interface {v0, p0}, Lcom/transsion/camera/interfaces/fold_flip/IFoldFlipActivityProxy;->preInitOnCreate(Landroid/app/Activity;)V

    .line 628
    :cond_c
    invoke-super {p0, p1}, Lcom/transsion/camera/app/PermissionActivity;->onPermissionCreateTasks(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onPermissionOnPreCreatedTask()V
    .registers 2

    .line 606
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/CameraApplication;

    invoke-direct {p0, v0}, Lcom/transsion/camera/app/BaseCameraActivity;->makeConfigsReady(Lcom/transsion/camera/app/CameraApplication;)V

    .line 607
    invoke-super {p0}, Lcom/transsion/camera/app/PermissionActivity;->onPermissionOnPreCreatedTask()V

    return-void
.end method

.method protected onPreCreateTasks()V
    .registers 4

    .line 612
    sget-object v0, Lcom/transsion/camera/app/BaseCameraActivity;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "onPreCreateTasks"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 613
    invoke-direct {p0}, Lcom/transsion/camera/app/BaseCameraActivity;->asyncInitWhenOnCreate()V

    .line 614
    invoke-static {}, Lcom/transsion/camera/adapter/CameraAgentFactory;->getCameraAgent()Lcom/transsion/camera/adapter/CameraAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/CameraAgent;->reInitFirstForPermission()V

    .line 615
    new-instance v0, Lcom/transsion/camera/app/common/mode/CameraSettingControl;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/transsion/camera/R$array;->build_in_setting_ui_entries:I

    invoke-direct {v0, v1, v2}, Lcom/transsion/camera/app/common/mode/CameraSettingControl;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mCameraSettingControl:Lcom/transsion/camera/app/common/mode/CameraSettingControl;

    .line 617
    new-instance v0, Lcom/transsion/camera/app/common/setting/SettingManager;

    invoke-direct {v0}, Lcom/transsion/camera/app/common/setting/SettingManager;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mSettingManager:Lcom/transsion/camera/app/common/setting/SettingManager;

    return-void
.end method

.method protected onPrePermissionPause()V
    .registers 2

    .line 1135
    iget-object v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mScreenBrightnessManager:Lcom/transsion/camera/manager/ScreenBrightnessManager;

    if-eqz v0, :cond_7

    .line 1136
    invoke-virtual {v0}, Lcom/transsion/camera/manager/ScreenBrightnessManager;->pause()V

    .line 1138
    :cond_7
    invoke-super {p0}, Lcom/transsion/camera/app/QuickActivity;->onPrePermissionPause()V

    return-void
.end method

.method protected onRestartTasks()V
    .registers 4

    .line 936
    invoke-super {p0}, Lcom/transsion/camera/app/PermissionActivity;->onRestartTasks()V

    .line 937
    iget-object v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mScreenBrightnessManager:Lcom/transsion/camera/manager/ScreenBrightnessManager;

    if-eqz v0, :cond_a

    .line 938
    invoke-virtual {v0}, Lcom/transsion/camera/manager/ScreenBrightnessManager;->restart()V

    :cond_a
    const/4 v0, 0x2

    .line 941
    invoke-virtual {p0}, Lcom/transsion/camera/app/QuickActivity;->getDisplayActivityType()I

    move-result v1

    if-ne v0, v1, :cond_30

    .line 942
    iget-object v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mOrientationListeners:Ljava/util/List;

    monitor-enter v0

    .line 943
    :try_start_14
    iget-object v1, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mOrientationListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/camera/app/common/IAppUIListener$IOrientationListener;

    .line 944
    invoke-direct {p0, v2}, Lcom/transsion/camera/app/BaseCameraActivity;->notifyScreenPocketDefaultOrientation(Lcom/transsion/camera/app/common/IAppUIListener$IOrientationListener;)V

    goto :goto_1a

    :catchall_2a
    move-exception p0

    goto :goto_2e

    .line 946
    :cond_2c
    monitor-exit v0

    return-void

    :goto_2e
    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_14 .. :try_end_2f} :catchall_2a

    throw p0

    :cond_30
    return-void
.end method

.method protected onResumeTasks()V
    .registers 8

    .line 989
    const-string v0, "[onResumeTasks] registerShoulderButtonCallback complete."

    sget-object v1, Lcom/transsion/camera/app/BaseCameraActivity;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[onResumeTasks], OverlayApk brand:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Lcom/transsion/camera/R$string;->brand_ui_overlay_str:I

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " , product:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Lcom/transsion/camera/R$string;->product_config_overlay_str:I

    .line 990
    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 989
    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 991
    invoke-static {}, Lcom/transsion/camera/utils/MonkeyUtils;->closeAllForFinalMonkeyTest()Z

    move-result v2

    if-eqz v2, :cond_45

    invoke-static {}, Lcom/transsion/camera/utils/MemoryUtils;->getAvailableMemory()J

    move-result-wide v2

    const-wide/16 v4, 0x258

    cmp-long v2, v2, v4

    if-gez v2, :cond_45

    .line 992
    const-string v0, "onResumeTasks: monkey test low memory, finish activity"

    invoke-static {v1, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 993
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    .line 996
    :cond_45
    invoke-static {}, Lcom/transsion/camera/utils/FeatureSupport;->isNeedSendBroadcastToNfc()Z

    move-result v1

    if-eqz v1, :cond_55

    .line 997
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.nfc.CAMERA_ENTER"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1000
    :cond_55
    iget-boolean v1, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mHasCameraDevice:Z

    const/4 v2, 0x1

    if-nez v1, :cond_6d

    .line 1001
    iput-boolean v2, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mIsResumed:Z

    .line 1002
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 1003
    iput v2, v0, Landroid/os/Message;->what:I

    const/16 v1, 0x9

    .line 1004
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 1005
    iget-object p0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    .line 1008
    :cond_6d
    iget-object v1, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mThumbnailTransitionManager:Lcom/transsion/camera/feature/thumbnailtransition/ThumbnailTransitionManager;

    if-eqz v1, :cond_74

    .line 1009
    invoke-virtual {v1}, Lcom/transsion/camera/feature/thumbnailtransition/ThumbnailTransitionManager;->resume()V

    .line 1011
    :cond_74
    iget-object v1, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mTranFingerprintManager:Lcom/transsion/hubsdk/api/hardware/fingerprint/TranFingerprintManager;

    if-eqz v1, :cond_93

    .line 1013
    :try_start_78
    invoke-virtual {v1, v2}, Lcom/transsion/hubsdk/api/hardware/fingerprint/TranFingerprintManager;->enterFingerNavigationMode(Z)V
    :try_end_7b
    .catch Lcom/transsion/hubsdk/common/exception/TranThubIncompatibleException; {:try_start_78 .. :try_end_7b} :catch_7c
    .catch Ljava/lang/SecurityException; {:try_start_78 .. :try_end_7b} :catch_7c

    goto :goto_93

    :catch_7c
    move-exception v1

    .line 1015
    sget-object v3, Lcom/transsion/camera/app/BaseCameraActivity;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[enterFingerNavigationMode] e: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1018
    :cond_93
    :goto_93
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setLaunchStartTime(I)V

    .line 1019
    invoke-static {}, Lcom/transsion/camera/utils/dfx/mgr/ExManager;->get()Lcom/transsion/camera/utils/dfx/inter/IExDetection;

    move-result-object v1

    const/16 v3, 0x3e9

    const-string v4, "start_warm"

    invoke-interface {v1, v3, v4}, Lcom/transsion/camera/utils/dfx/inter/IPerformanceDfx;->onActionStart(ILjava/lang/String;)V

    .line 1020
    invoke-virtual {p0}, Lcom/transsion/camera/app/BaseCameraActivity;->getFoldFlipActivityProxy()Lcom/transsion/camera/interfaces/fold_flip/IFoldFlipActivityProxy;

    move-result-object v1

    if-eqz v1, :cond_ae

    .line 1022
    invoke-interface {v1, p0}, Lcom/transsion/camera/interfaces/fold_flip/IFoldFlipActivityProxy;->onResumeTasks(Landroid/app/Activity;)V

    .line 1024
    :cond_ae
    invoke-static {}, Lcom/transsion/camera/utils/MonkeyUtils;->init()V

    .line 1025
    invoke-static {}, Lcom/transsion/camera/utils/MemoryUtils;->initMemorySwitch()V

    .line 1026
    iget-boolean v1, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mStartActivityFromCameraFlag:Z

    const/4 v3, 0x0

    if-eqz v1, :cond_bc

    .line 1027
    iput-boolean v3, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mStartActivityFromCameraFlag:Z

    goto :goto_c7

    .line 1029
    :cond_bc
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v1

    iget-boolean v1, v1, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportUI5:Z

    if-nez v1, :cond_c7

    .line 1030
    invoke-direct {p0}, Lcom/transsion/camera/app/BaseCameraActivity;->resetTwinkleGuildState()V

    .line 1033
    :cond_c7
    :goto_c7
    iget-boolean v1, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mGoingToARCore:Z

    if-eqz v1, :cond_d3

    .line 1034
    iput-boolean v3, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mGoingToARCore:Z

    .line 1035
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mKeepGoingToARCoreTime:J

    .line 1038
    :cond_d3
    iget-boolean v1, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mGoingToGoPro:Z

    if-eqz v1, :cond_df

    .line 1039
    iput-boolean v3, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mGoingToGoPro:Z

    .line 1040
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mKeepGoingToGoProTime:J

    .line 1042
    :cond_df
    iput-boolean v2, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mIsResumed:Z

    .line 1043
    invoke-direct {p0}, Lcom/transsion/camera/app/BaseCameraActivity;->onKeyMonitorResume()V

    .line 1044
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v4, 0x80

    invoke-virtual {v1, v4}, Landroid/view/Window;->addFlags(I)V

    .line 1045
    iget-object v1, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mAppUI:Lcom/transsion/camera/app/ui/BaseAppUI;

    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/BaseAppUI;->resume()V

    .line 1046
    invoke-static {}, Lcom/transsion/camera/app/common/bgservice/BGServiceController;->getInstance()Lcom/transsion/camera/app/common/bgservice/BGServiceController;

    move-result-object v1

    iget-object v4, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mBGImageSavedListener:Lcom/transsion/camera/app/BaseCameraActivity$BGImageSavedListener;

    invoke-virtual {v1, v4}, Lcom/transsion/camera/app/common/bgservice/BGServiceController;->setBGImageSavedListener(Lcom/transsion/camera/app/common/bgservice/BGServiceController$IBGImageSavedListener;)V

    .line 1047
    iget-object v1, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    iget-object v4, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {v4}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenFormType()I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->updateScreenFromeType(I)V

    .line 1048
    iget-object v1, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mModeManager:Lcom/transsion/camera/app/common/mode/ModeManager;

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/mode/ModeManager;->resume()V

    .line 1049
    iget-object v1, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mAppStorageManager:Lcom/transsion/camera/app/common/storage/AppStorageManager;

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/storage/AppStorageManager;->resume()V

    .line 1050
    invoke-static {}, Lcom/transsion/camera/app/common/provider/ProcessMediaManager;->getProcessingMediaNumber()I

    move-result v1

    .line 1051
    sget-object v4, Lcom/transsion/camera/app/BaseCameraActivity;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[onResumeTasks], mNotLoadLatestThumbnail:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mNotLoadLatestThumbnail:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " , processingMediaNumber:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1052
    iget-boolean v5, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mNotLoadLatestThumbnail:Z

    if-nez v5, :cond_13d

    if-nez v1, :cond_13d

    .line 1053
    invoke-virtual {p0, v3}, Lcom/transsion/camera/app/BaseCameraActivity;->loadLatestThumbnail(Z)V

    .line 1055
    :cond_13d
    iput-boolean v3, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mNotLoadLatestThumbnail:Z

    .line 1056
    iget-object v1, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mModeManager:Lcom/transsion/camera/app/common/mode/ModeManager;

    iget-object v5, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mAppStorageManager:Lcom/transsion/camera/app/common/storage/AppStorageManager;

    invoke-virtual {v5}, Lcom/transsion/camera/app/common/storage/AppStorageManager;->getStorageOperator()Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;

    move-result-object v5

    invoke-virtual {v1, v5, v3}, Lcom/transsion/camera/app/common/mode/ModeManager;->updateStorageOperator(Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;I)V

    .line 1057
    iget-object v1, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mModeManager:Lcom/transsion/camera/app/common/mode/ModeManager;

    iget-object v5, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mAppStorageManager:Lcom/transsion/camera/app/common/storage/AppStorageManager;

    invoke-virtual {v5}, Lcom/transsion/camera/app/common/storage/AppStorageManager;->getInternalStorageOperator()Lcom/transsion/camera/app/common/storage/InternalStorageOperator;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/transsion/camera/app/common/mode/ModeManager;->setInternalStorageOperator(Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;)V

    .line 1059
    iget-object v1, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mTranDisplayManager:Lcom/transsion/hubsdk/api/hardware/display/TranDisplayManager;

    if-eqz v1, :cond_197

    .line 1060
    iget-object v1, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mShoulderButtonCallback:Lcom/transsion/camera/app/BaseCameraActivity$ShoulderButtonCallback;

    if-nez v1, :cond_164

    .line 1061
    new-instance v1, Lcom/transsion/camera/app/BaseCameraActivity$ShoulderButtonCallback;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/BaseCameraActivity$ShoulderButtonCallback;-><init>(Lcom/transsion/camera/app/BaseCameraActivity;)V

    iput-object v1, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mShoulderButtonCallback:Lcom/transsion/camera/app/BaseCameraActivity$ShoulderButtonCallback;

    .line 1065
    :cond_164
    :try_start_164
    iget-object v1, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mTranDisplayManager:Lcom/transsion/hubsdk/api/hardware/display/TranDisplayManager;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    iget-object v6, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mShoulderButtonCallback:Lcom/transsion/camera/app/BaseCameraActivity$ShoulderButtonCallback;

    invoke-virtual {v1, v5, v6}, Lcom/transsion/hubsdk/api/hardware/display/TranDisplayManager;->registerShoulderButtonCallback(ILcom/transsion/hubsdk/api/hardware/display/TranDisplayManager$ITranShoulderButtonCallback;)V
    :try_end_16f
    .catch Ljava/lang/Exception; {:try_start_164 .. :try_end_16f} :catch_175
    .catchall {:try_start_164 .. :try_end_16f} :catchall_173

    .line 1069
    :goto_16f
    invoke-static {v4, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_197

    :catchall_173
    move-exception p0

    goto :goto_191

    :catch_175
    move-exception v1

    .line 1067
    :try_start_176
    sget-object v4, Lcom/transsion/camera/app/BaseCameraActivity;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "registerShoulderButtonCallback fail "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_190
    .catchall {:try_start_176 .. :try_end_190} :catchall_173

    goto :goto_16f

    .line 1069
    :goto_191
    sget-object v1, Lcom/transsion/camera/app/BaseCameraActivity;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    invoke-static {v1, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1070
    throw p0

    .line 1072
    :cond_197
    :goto_197
    iget-object v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mScreenBrightnessManager:Lcom/transsion/camera/manager/ScreenBrightnessManager;

    if-eqz v0, :cond_19e

    .line 1073
    invoke-virtual {v0}, Lcom/transsion/camera/manager/ScreenBrightnessManager;->resume()V

    .line 1076
    :cond_19e
    invoke-static {}, Lcom/transsion/camera/app/common/isphidl/ISPHIDLController;->getInstance()Lcom/transsion/camera/app/common/isphidl/ISPHIDLController;

    move-result-object v0

    if-eqz v0, :cond_1ac

    .line 1077
    invoke-static {}, Lcom/transsion/camera/app/common/isphidl/ISPHIDLController;->getInstance()Lcom/transsion/camera/app/common/isphidl/ISPHIDLController;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/isphidl/ISPHIDLController;->activityResume(I)V

    .line 1079
    :cond_1ac
    invoke-static {}, Lcom/transsion/camera/app/common/bgservice/BGServiceController;->getInstance()Lcom/transsion/camera/app/common/bgservice/BGServiceController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/bgservice/BGServiceController;->resume()V

    .line 1080
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/utils/CustomConfigUtil;->isQcomCaptureFlow()Z

    move-result v0

    if-eqz v0, :cond_1cc

    invoke-static {}, Lcom/transsion/camera/utils/FeatureSupport;->isForceCloseOfflineJNISupport()Z

    move-result v0

    if-nez v0, :cond_1cc

    .line 1081
    invoke-static {}, Lcom/transsion/camera/adapter/platformcamera/OfflineController;->getInstance()Lcom/transsion/camera/adapter/platformcamera/OfflineController;

    move-result-object v0

    if-eqz v0, :cond_1cc

    .line 1083
    invoke-virtual {v0}, Lcom/transsion/camera/adapter/platformcamera/OfflineController;->initOffline()V

    .line 1086
    :cond_1cc
    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v0

    new-instance v1, Lcom/transsion/camera/app/BaseCameraActivity$$ExternalSyntheticLambda4;

    invoke-direct {v1}, Lcom/transsion/camera/app/BaseCameraActivity$$ExternalSyntheticLambda4;-><init>()V

    invoke-virtual {v0, v1}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    .line 1091
    iget v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mChoseGallery:I

    if-nez v0, :cond_229

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->isAiGallerySupportSharedAnimation(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_229

    .line 1092
    iget-boolean v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mStartByLauncher:Z

    const/16 v1, 0x131

    if-eqz v0, :cond_1f5

    .line 1093
    iget-object v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mAppUI:Lcom/transsion/camera/app/ui/BaseAppUI;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/BaseAppUI;->notifyRawActionToAppUI(I)V

    .line 1094
    iput-boolean v3, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mGoingToGallery:Z

    .line 1095
    iput-boolean v3, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mStartByLauncher:Z

    .line 1097
    :cond_1f5
    iget-object v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mModeManager:Lcom/transsion/camera/app/common/mode/ModeManager;

    if-eqz v0, :cond_21a

    const-string v4, "com.transsion.camera.feature.mode.movie.MovieModeEntry"

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/mode/ModeManager;->currentModeName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_213

    iget-object v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mModeManager:Lcom/transsion/camera/app/common/mode/ModeManager;

    .line 1098
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/mode/ModeManager;->currentModeName()Ljava/lang/String;

    move-result-object v0

    const-string v4, "com.transsion.camera.feature.mode.vlog.VlogModeEntry"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21a

    .line 1099
    :cond_213
    iget-object v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mAppUI:Lcom/transsion/camera/app/ui/BaseAppUI;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/BaseAppUI;->notifyRawActionToAppUI(I)V

    .line 1100
    iput-boolean v3, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mGoingToGallery:Z

    .line 1102
    :cond_21a
    iget-object v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mAppUI:Lcom/transsion/camera/app/ui/BaseAppUI;

    if-eqz v0, :cond_229

    iget-boolean v1, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mGoingToGallery:Z

    if-eqz v1, :cond_229

    const/16 v1, 0x130

    .line 1103
    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/BaseAppUI;->notifyRawActionToAppUI(I)V

    .line 1104
    iput-boolean v3, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mGoingToGallery:Z

    .line 1108
    :cond_229
    iget-object v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mThumbnailReloadManager:Lcom/transsion/camera/app/thumbnail/ThumbnailReloadManager;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/transsion/camera/app/BaseCameraActivity$$ExternalSyntheticLambda5;

    invoke-direct {v1}, Lcom/transsion/camera/app/BaseCameraActivity$$ExternalSyntheticLambda5;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 1109
    invoke-static {}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManagerProxy;->getInstance()Lcom/transsion/camera/app/common/storage/BackgroundStorageManagerProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManagerProxy;->onActivityResume()V

    .line 1111
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mEnableVipWhenPause:Z

    if-eqz v0, :cond_253

    invoke-virtual {p0}, Lcom/transsion/camera/app/BaseCameraActivity;->isSecureCamera()Z

    move-result v0

    if-nez v0, :cond_253

    .line 1112
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v0

    invoke-direct {p0, v2, v0}, Lcom/transsion/camera/app/BaseCameraActivity;->updatePauseVIP(ZI)V

    :cond_253
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4

    .line 1278
    iget-object v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mAppUI:Lcom/transsion/camera/app/ui/BaseAppUI;

    if-eqz v0, :cond_7

    .line 1279
    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/BaseAppUI;->exitAllFragments()V

    .line 1281
    :cond_7
    iget-object v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mFlipScreenRelay:Lcom/transsion/camera/manager/FlipScreenRelay;

    if-eqz v0, :cond_1b

    .line 1282
    iget-object v1, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mModeManager:Lcom/transsion/camera/app/common/mode/ModeManager;

    if-eqz v1, :cond_16

    .line 1283
    invoke-virtual {v1}, Lcom/transsion/camera/app/common/mode/ModeManager;->currentModeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/manager/FlipScreenRelay;->setLastModeName(Ljava/lang/String;)V

    .line 1285
    :cond_16
    iget-object v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mFlipScreenRelay:Lcom/transsion/camera/manager/FlipScreenRelay;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/manager/FlipScreenRelay;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 1288
    :cond_1b
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onStartTasks()V
    .registers 3

    .line 960
    invoke-super {p0}, Lcom/transsion/camera/app/PermissionActivity;->onStartTasks()V

    .line 961
    invoke-virtual {p0}, Lcom/transsion/camera/app/BaseCameraActivity;->getFoldFlipActivityProxy()Lcom/transsion/camera/interfaces/fold_flip/IFoldFlipActivityProxy;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 963
    invoke-interface {v0, p0}, Lcom/transsion/camera/interfaces/fold_flip/IFoldFlipActivityProxy;->onStartTasks(Landroid/app/Activity;)V

    .line 965
    :cond_c
    iget-object v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mModeManager:Lcom/transsion/camera/app/common/mode/ModeManager;

    if-eqz v0, :cond_19

    const/4 v1, 0x0

    .line 966
    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/mode/ModeManager;->setGoingToGalleryFlag(Z)V

    .line 967
    iget-object v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mModeManager:Lcom/transsion/camera/app/common/mode/ModeManager;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/mode/ModeManager;->start()V

    .line 969
    :cond_19
    iget-object v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mThumbnailTransitionManager:Lcom/transsion/camera/feature/thumbnailtransition/ThumbnailTransitionManager;

    if-eqz v0, :cond_20

    .line 970
    invoke-virtual {v0}, Lcom/transsion/camera/feature/thumbnailtransition/ThumbnailTransitionManager;->start()V

    .line 972
    :cond_20
    iget-object v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mAppUI:Lcom/transsion/camera/app/ui/BaseAppUI;

    if-eqz v0, :cond_27

    .line 973
    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/BaseAppUI;->start()V

    .line 975
    :cond_27
    iget-object v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mScreenBrightnessManager:Lcom/transsion/camera/manager/ScreenBrightnessManager;

    if-eqz v0, :cond_2e

    .line 976
    invoke-virtual {v0}, Lcom/transsion/camera/manager/ScreenBrightnessManager;->start()V

    .line 979
    :cond_2e
    iget-object v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mBroadcastWorkHandler:Lcom/transsion/camera/app/BaseCameraActivity$BroadcastHandler;

    if-eqz v0, :cond_37

    const/16 v1, 0xf

    .line 980
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 982
    :cond_37
    invoke-virtual {p0}, Lcom/transsion/camera/app/BaseCameraActivity;->enableMonitors()V

    .line 984
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setCameraStartTime()V

    return-void
.end method

.method protected onStopTasks()V
    .registers 4

    .line 1293
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mEnableVipWhenPause:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_16

    invoke-virtual {p0}, Lcom/transsion/camera/app/BaseCameraActivity;->isSecureCamera()Z

    move-result v0

    if-nez v0, :cond_16

    .line 1294
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v0

    invoke-direct {p0, v1, v0}, Lcom/transsion/camera/app/BaseCameraActivity;->updatePauseVIP(ZI)V

    .line 1297
    :cond_16
    invoke-virtual {p0}, Lcom/transsion/camera/app/BaseCameraActivity;->disableMonitors()V

    .line 1298
    iget-object v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mBroadcastWorkHandler:Lcom/transsion/camera/app/BaseCameraActivity$BroadcastHandler;

    if-eqz v0, :cond_22

    const/16 v2, 0x10

    .line 1299
    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1302
    :cond_22
    invoke-direct {p0, v1}, Lcom/transsion/camera/app/BaseCameraActivity;->onNotifySaveRotation(I)V

    .line 1304
    iget-boolean v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mHasCameraDevice:Z

    if-nez v0, :cond_2a

    return-void

    .line 1307
    :cond_2a
    iget-object v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mModeManager:Lcom/transsion/camera/app/common/mode/ModeManager;

    if-eqz v0, :cond_3f

    .line 1308
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/mode/ModeManager;->stop()V

    .line 1309
    invoke-static {}, Lcom/transsion/camera/utils/threads/WorkThreadPools;->getInstance()Lcom/transsion/camera/utils/threads/WorkThreadPools;

    move-result-object v0

    new-instance v1, Lcom/transsion/camera/app/BaseCameraActivity$3;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/BaseCameraActivity$3;-><init>(Lcom/transsion/camera/app/BaseCameraActivity;)V

    const-string v2, "ReleaseGraphicBuffer"

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/utils/threads/WorkThreadPools;->execute(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 1322
    :cond_3f
    invoke-virtual {p0}, Lcom/transsion/camera/app/BaseCameraActivity;->getFoldFlipActivityProxy()Lcom/transsion/camera/interfaces/fold_flip/IFoldFlipActivityProxy;

    move-result-object v0

    if-eqz v0, :cond_48

    .line 1324
    invoke-interface {v0, p0}, Lcom/transsion/camera/interfaces/fold_flip/IFoldFlipActivityProxy;->onStopTasks(Landroid/app/Activity;)V

    .line 1326
    :cond_48
    iget-object v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mThumbnailTransitionManager:Lcom/transsion/camera/feature/thumbnailtransition/ThumbnailTransitionManager;

    if-eqz v0, :cond_4f

    .line 1327
    invoke-virtual {v0}, Lcom/transsion/camera/feature/thumbnailtransition/ThumbnailTransitionManager;->stop()V

    .line 1330
    :cond_4f
    iget-object v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mAppUI:Lcom/transsion/camera/app/ui/BaseAppUI;

    if-eqz v0, :cond_56

    .line 1331
    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/BaseAppUI;->stop()V

    .line 1333
    :cond_56
    iget-object p0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mScreenBrightnessManager:Lcom/transsion/camera/manager/ScreenBrightnessManager;

    if-eqz p0, :cond_5d

    .line 1334
    invoke-virtual {p0}, Lcom/transsion/camera/manager/ScreenBrightnessManager;->stop()V

    .line 1336
    :cond_5d
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setCameraEndTime()V

    .line 1337
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->resetCameraLaunchStartTime()V

    return-void
.end method

.method public onTopResumedActivityChanged(Z)V
    .registers 4

    .line 1143
    invoke-super {p0, p1}, Lcom/transsion/camera/app/QuickActivity;->onTopResumedActivityChanged(Z)V

    .line 1144
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/BaseCameraActivity;->notifyTopResumedChanged(Z)V

    .line 1146
    iget-boolean v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mEnableLowConfig:Z

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mAppUI:Lcom/transsion/camera/app/ui/BaseAppUI;

    if-eqz v0, :cond_1c

    .line 1147
    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/ui/BaseAppUI;->onTopChanged(Z)V

    .line 1148
    iget-object v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    xor-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->setLowConfigParameter(Z)V

    .line 1150
    :cond_1c
    iget-object p0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mThumbnailTransitionManager:Lcom/transsion/camera/feature/thumbnailtransition/ThumbnailTransitionManager;

    if-eqz p0, :cond_23

    .line 1151
    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/thumbnailtransition/ThumbnailTransitionManager;->onTopChanged(Z)V

    :cond_23
    return-void
.end method

.method public onUserInteraction()V
    .registers 3

    .line 1486
    invoke-super {p0}, Landroid/app/Activity;->onUserInteraction()V

    .line 1487
    iget-object v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mModeManager:Lcom/transsion/camera/app/common/mode/ModeManager;

    if-eqz v0, :cond_44

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/mode/ModeManager;->modeSupportPowerSavingMode()Z

    move-result v0

    if-eqz v0, :cond_44

    iget-object v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mState:Lcom/transsion/camera/app/common/IApp$State;

    sget-object v1, Lcom/transsion/camera/app/common/IApp$State;->STATE_RUNNING:Lcom/transsion/camera/app/common/IApp$State;

    .line 1488
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_44

    iget-boolean v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mIsVideoPowerSavingModeSupport:Z

    if-eqz v0, :cond_44

    .line 1489
    iget-object v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mMainHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1490
    iget-object v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mMainHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1491
    iget-object v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mMainHandler:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1492
    iget-object v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1493
    iget-object v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mMainHandler:Landroid/os/Handler;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1494
    iget-object v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mMainHandler:Landroid/os/Handler;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1496
    :cond_44
    sget-object v0, Lcom/transsion/camera/app/common/IApp$State;->STATE_RUNNING:Lcom/transsion/camera/app/common/IApp$State;

    iget-object v1, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mState:Lcom/transsion/camera/app/common/IApp$State;

    if-eq v0, v1, :cond_59

    iget-boolean v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mIsResumed:Z

    if-nez v0, :cond_4f

    goto :goto_59

    .line 1499
    :cond_4f
    iget-object v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mAppUI:Lcom/transsion/camera/app/ui/BaseAppUI;

    if-eqz v0, :cond_56

    .line 1500
    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/BaseAppUI;->onUserInteraction()V

    .line 1502
    :cond_56
    invoke-direct {p0}, Lcom/transsion/camera/app/BaseCameraActivity;->resetWaitPage()V

    :cond_59
    :goto_59
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .registers 3

    .line 2331
    invoke-super {p0, p1}, Lcom/transsion/camera/app/QuickActivity;->onWindowFocusChanged(Z)V

    .line 2333
    iget-object v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mRecentKeyMonitor:Lcom/transsion/camera/app/common/physicalkey/AbstractKeyMonitor;

    if-eqz v0, :cond_a

    .line 2334
    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/common/physicalkey/AbstractKeyMonitor;->onWindowFocusChanged(Z)V

    .line 2337
    :cond_a
    iget-object v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mHomeKeyMonitor:Lcom/transsion/camera/app/common/physicalkey/AbstractKeyMonitor;

    if-eqz v0, :cond_11

    .line 2338
    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/common/physicalkey/AbstractKeyMonitor;->onWindowFocusChanged(Z)V

    .line 2341
    :cond_11
    iget-object v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mScreenBrightnessManager:Lcom/transsion/camera/manager/ScreenBrightnessManager;

    if-eqz v0, :cond_18

    .line 2342
    invoke-virtual {v0, p1}, Lcom/transsion/camera/manager/ScreenBrightnessManager;->onWindowsFocusChanged(Z)V

    .line 2345
    :cond_18
    iget-object p0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mAppUI:Lcom/transsion/camera/app/ui/BaseAppUI;

    if-eqz p0, :cond_26

    if-eqz p1, :cond_21

    const/16 p1, 0xd4

    goto :goto_23

    :cond_21
    const/16 p1, 0xd5

    .line 2346
    :goto_23
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/BaseAppUI;->notifyRawActionToAppUI(I)V

    :cond_26
    return-void
.end method

.method protected processCameraForSpecifyMode(Lcom/transsion/camera/app/intent/IntentParser;)V
    .registers 2

    return-void
.end method

.method protected processGoogleAssistantIntent(Lcom/transsion/camera/app/intent/IntentParser;)V
    .registers 5

    .line 895
    invoke-virtual {p0}, Landroid/app/Activity;->isVoiceInteractionRoot()Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mVoiceInteractionRoot:Z

    .line 896
    invoke-virtual {p0}, Landroid/app/Activity;->isVoiceInteractionRoot()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 897
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    sget v1, Lcom/transsion/camera/R$style;->VoiceActivityAniamtion:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->setWindowAnimations(I)V

    .line 899
    :cond_15
    sget-object v0, Lcom/transsion/camera/app/BaseCameraActivity;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCreateTasks mIsVoiceInteractionRoot "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mVoiceInteractionRoot:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 900
    iget-boolean v0, p1, Lcom/transsion/camera/app/intent/IntentParser;->mGoogleAssistantIntent:Z

    if-eqz v0, :cond_41

    iget-boolean v0, p1, Lcom/transsion/camera/app/intent/IntentParser;->mOpenOnly:Z

    if-nez v0, :cond_41

    .line 901
    iget-object p0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mAppUI:Lcom/transsion/camera/app/ui/BaseAppUI;

    iget-boolean v0, p1, Lcom/transsion/camera/app/intent/IntentParser;->mVideoIntent:Z

    iget-boolean v1, p1, Lcom/transsion/camera/app/intent/IntentParser;->mPhotoIntent:Z

    const/4 v2, 0x0

    iget p1, p1, Lcom/transsion/camera/app/intent/IntentParser;->mDelayTime:I

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/transsion/camera/app/ui/BaseAppUI;->setStartParameters(ZZZI)V

    :cond_41
    return-void
.end method

.method protected processStartSpecifyMode(Lcom/transsion/camera/app/intent/IntentParser;Lcom/transsion/camera/app/common/storage/DataStore;)V
    .registers 3

    return-void
.end method

.method protected final registerOnOrientationChangeListener(Lcom/transsion/camera/app/common/IAppUIListener$IOrientationListener;)V
    .registers 5

    .line 1601
    iget-object v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mOrientationListeners:Ljava/util/List;

    monitor-enter v0

    .line 1602
    :try_start_3
    iget-object v1, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mOrientationListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_34

    .line 1604
    iget v1, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mOrientation:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_16

    .line 1605
    invoke-interface {p1, v1}, Lcom/transsion/camera/app/common/IAppUIListener$IOrientationListener;->onOrientationChanged(I)V

    goto :goto_2f

    :catchall_14
    move-exception p0

    goto :goto_36

    .line 1606
    :cond_16
    iget-object v1, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenFormType()I

    move-result v1

    const/4 v2, 0x6

    if-ne v2, v1, :cond_23

    .line 1607
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/BaseCameraActivity;->notifyScreenPocketDefaultOrientation(Lcom/transsion/camera/app/common/IAppUIListener$IOrientationListener;)V

    goto :goto_2f

    .line 1608
    :cond_23
    iget-object v1, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenFormType()I

    move-result v1

    const/4 v2, 0x7

    if-ne v2, v1, :cond_2f

    .line 1609
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/BaseCameraActivity;->notifyScreenFlipDefaultOrientation(Lcom/transsion/camera/app/common/IAppUIListener$IOrientationListener;)V

    .line 1611
    :cond_2f
    :goto_2f
    iget-object p0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mOrientationListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1613
    :cond_34
    monitor-exit v0

    return-void

    :goto_36
    monitor-exit v0
    :try_end_37
    .catchall {:try_start_3 .. :try_end_37} :catchall_14

    throw p0
.end method

.method protected final registerThermalThrottleChangeListener(Lcom/transsion/camera/app/common/thermal/IThermalThrottleListener;)V
    .registers 4

    .line 1552
    iget-object v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mIThermalThrottleListener:Ljava/util/List;

    monitor-enter v0

    .line 1553
    :try_start_3
    iget-object v1, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mIThermalThrottleListener:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    .line 1554
    iget-object p0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mIThermalThrottleListener:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_13

    :catchall_11
    move-exception p0

    goto :goto_15

    .line 1556
    :cond_13
    :goto_13
    monitor-exit v0

    return-void

    :goto_15
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_11

    throw p0
.end method

.method protected showErrorAndFinish(I)V
    .registers 2

    return-void
.end method

.method protected showExternalStorageUnmountedTip()V
    .registers 1

    return-void
.end method

.method protected showLowStorageTip()V
    .registers 1

    return-void
.end method

.method protected showThermalThrottleUrgent()V
    .registers 1

    return-void
.end method

.method protected showVideoThermalWarning()V
    .registers 3

    .line 483
    iget-object v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mModeManager:Lcom/transsion/camera/app/common/mode/ModeManager;

    if-eqz v0, :cond_43

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/mode/ModeManager;->modeSupportPowerSavingMode()Z

    move-result v0

    if-eqz v0, :cond_43

    iget-object v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mState:Lcom/transsion/camera/app/common/IApp$State;

    sget-object v1, Lcom/transsion/camera/app/common/IApp$State;->STATE_RUNNING:Lcom/transsion/camera/app/common/IApp$State;

    .line 484
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_43

    iget-boolean v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mIsVideoPowerSavingModeSupport:Z

    if-eqz v0, :cond_43

    .line 485
    iget-object v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mMainHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 486
    iget-object v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mMainHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 487
    iget-object v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mMainHandler:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 488
    iget-object v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mMainHandler:Landroid/os/Handler;

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 489
    iget-object v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mMainHandler:Landroid/os/Handler;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 490
    iget-object p0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mMainHandler:Landroid/os/Handler;

    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_43
    return-void
.end method

.method protected showWaitPage()V
    .registers 5

    .line 495
    const-string v0, "action_sleep_activity_start"

    invoke-static {}, Lcom/transsion/camera/utils/FeatureSupport;->isSleepActivitySupport()Z

    move-result v1

    if-nez v1, :cond_10

    .line 496
    sget-object p0, Lcom/transsion/camera/app/BaseCameraActivity;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "disable SleepCameraActivity by adb."

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 499
    :cond_10
    iget-object v1, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mModeManager:Lcom/transsion/camera/app/common/mode/ModeManager;

    if-eqz v1, :cond_37

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/mode/ModeManager;->modeNotSupportWaitPageMode()Z

    move-result v1

    if-eqz v1, :cond_37

    .line 500
    sget-object v0, Lcom/transsion/camera/app/BaseCameraActivity;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "disable wait page by mode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mModeManager:Lcom/transsion/camera/app/common/mode/ModeManager;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/ModeManager;->currentModeName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 503
    :cond_37
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/transsion/camera/app/SleepCameraActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 504
    const-string v2, "caller"

    const-string v3, "camera"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 505
    const-string v2, "flipOrientation"

    iget v3, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mOrientation:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 506
    const-string v2, "isSecureCamera"

    invoke-virtual {p0}, Lcom/transsion/camera/app/BaseCameraActivity;->isSecureCamera()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 508
    :try_start_55
    iget-object v2, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    if-eqz v2, :cond_68

    .line 510
    invoke-virtual {v2}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->getSettingManager()Lcom/transsion/camera/app/common/setting/SettingManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/transsion/camera/app/common/setting/SettingManager;->getStatusMonitor()Lcom/transsion/camera/app/common/setting/StatusMonitor;

    move-result-object v2

    .line 511
    invoke-virtual {v2, v0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object v2

    .line 512
    invoke-virtual {v2, v0, v0}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    .line 514
    :cond_68
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const/4 v0, 0x1

    .line 515
    iput-boolean v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mStartActivityFromCameraFlag:Z
    :try_end_6e
    .catch Ljava/lang/Exception; {:try_start_55 .. :try_end_6e} :catch_6f

    return-void

    :catch_6f
    move-exception p0

    .line 517
    sget-object v0, Lcom/transsion/camera/app/BaseCameraActivity;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "SleepCameraActivity not found"

    invoke-static {v0, v1, p0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method protected uninitMonitors()V
    .registers 3

    .line 915
    iget-object v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mThermalThrottle:Lcom/transsion/camera/app/common/thermal/ThermalThrottle;

    iget-object v1, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mThermalThrottleChangeListener:Lcom/transsion/camera/app/BaseCameraActivity$ThermalThrottleChangeListenerImpl;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/thermal/ThermalThrottle;->removeThermalThrottleChangeListener(Lcom/transsion/camera/app/common/thermal/IThermalThrottleListener;)V

    .line 916
    iget-object v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mThermalThrottle:Lcom/transsion/camera/app/common/thermal/ThermalThrottle;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/thermal/ThermalThrottle;->destroy()V

    const/4 v0, 0x0

    .line 917
    iput-object v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mThermalThrottle:Lcom/transsion/camera/app/common/thermal/ThermalThrottle;

    .line 919
    iget-object v1, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mBatteryMonitor:Lcom/transsion/camera/app/common/battery/BatteryMonitor;

    invoke-virtual {v1, v0}, Lcom/transsion/camera/app/common/battery/BatteryMonitor;->setBatteryListener(Lcom/transsion/camera/app/common/battery/IBatteryListener;)V

    .line 923
    iget-object v1, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mAppUI:Lcom/transsion/camera/app/ui/BaseAppUI;

    invoke-virtual {v1, v0}, Lcom/transsion/camera/app/ui/BaseAppUI;->setRecentKeyMonitor(Lcom/transsion/camera/app/common/physicalkey/AbstractKeyMonitor;)V

    .line 924
    iget-object v1, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mRecentKeyMonitor:Lcom/transsion/camera/app/common/physicalkey/AbstractKeyMonitor;

    invoke-virtual {v1, v0}, Lcom/transsion/camera/app/common/physicalkey/AbstractKeyMonitor;->setKeyEventListener(Lcom/transsion/camera/app/common/physicalkey/IKeyEventListener;)V

    .line 927
    iget-object p0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mHomeKeyMonitor:Lcom/transsion/camera/app/common/physicalkey/AbstractKeyMonitor;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/physicalkey/AbstractKeyMonitor;->setKeyEventListener(Lcom/transsion/camera/app/common/physicalkey/IKeyEventListener;)V

    return-void
.end method

.method protected final unregisterOnOrientationChangeListener(Lcom/transsion/camera/app/common/IAppUIListener$IOrientationListener;)V
    .registers 3

    .line 1632
    iget-object v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mOrientationListeners:Ljava/util/List;

    monitor-enter v0

    .line 1633
    :try_start_3
    iget-object p0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mOrientationListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1634
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method

.method protected final unregisterThermalThrottleChangeListener(Lcom/transsion/camera/app/common/thermal/IThermalThrottleListener;)V
    .registers 3

    .line 1560
    iget-object v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mIThermalThrottleListener:Ljava/util/List;

    monitor-enter v0

    .line 1561
    :try_start_3
    iget-object p0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mIThermalThrottleListener:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1562
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method

.method protected updateThumbnailUri(Landroid/net/Uri;Z)V
    .registers 8

    .line 2275
    sget-object v0, Lcom/transsion/camera/app/BaseCameraActivity;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[updateThumbnailUri] uri:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " needNotify:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mThumbnailUri:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mThumbnailUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 2277
    iget-object v1, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mThumbnailUri:Landroid/net/Uri;

    if-eqz v1, :cond_4c

    if-eqz p1, :cond_4c

    if-eqz p2, :cond_4c

    .line 2278
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v1

    iget-object v3, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mThumbnailUri:Landroid/net/Uri;

    invoke-static {v3}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-gez v1, :cond_4c

    iget-object v1, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mThumbnailUri:Landroid/net/Uri;

    invoke-virtual {p0, p1, v1}, Lcom/transsion/camera/app/BaseCameraActivity;->isSameTypeUri(Landroid/net/Uri;Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_4c

    .line 2279
    const-string p0, "[updateThumbnailUri] uri id < mThumbnailUri id, return"

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 2283
    :cond_4c
    iget-object v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mThumbnailReloadManager:Lcom/transsion/camera/app/thumbnail/ThumbnailReloadManager;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/transsion/camera/app/BaseCameraActivity$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Lcom/transsion/camera/app/BaseCameraActivity$$ExternalSyntheticLambda2;-><init>(Lcom/transsion/camera/app/BaseCameraActivity;Landroid/net/Uri;)V

    .line 2284
    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 2285
    invoke-static {}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManagerProxy;->getInstance()Lcom/transsion/camera/app/common/storage/BackgroundStorageManagerProxy;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManagerProxy;->updateThumbnailUri(Landroid/net/Uri;)V

    .line 2287
    iput-object p1, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mThumbnailUri:Landroid/net/Uri;

    if-eqz p1, :cond_6f

    if-nez p2, :cond_68

    goto :goto_6f

    .line 2291
    :cond_68
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/BaseCameraActivity;->getLocalMimeType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mThumbnailMimeType:Ljava/lang/String;

    return-void

    :cond_6f
    :goto_6f
    const/4 p1, 0x0

    .line 2289
    iput-object p1, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mThumbnailMimeType:Ljava/lang/String;

    return-void
.end method
