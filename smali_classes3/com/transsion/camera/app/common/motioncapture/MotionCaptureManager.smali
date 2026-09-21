.class public Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager$MainHandler;,
        Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager$MotionCaptureInfo;
    }
.end annotation


# static fields
.field private static final BIRD_AUTO_CAPTURE_INTERVAL_TIME:I

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private final BIRD_BEST_MOMENT_RESULT:I

.field private final CLICK_SHUTTER_TIME:I

.field private final DELAY_TRIGGER_SLEEP_PAGE_TIME:I

.field private final ICON_INVISIBLE:I

.field private final ICON_OFF:I

.field private final NORMAL_BEST_MOMENT_RESULT:I

.field private final SHOT2SHOT_MAX_COUNT_FOR_MFNR_WHEN_BLUR_ON:I

.field private isDebandingModeOn:Z

.field private mAppUI:Lcom/transsion/camera/app/common/IAppUI;

.field private mBandingHintText:Ljava/lang/String;

.field private mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

.field private volatile mCaptureState:Ljava/lang/String;

.field private volatile mCaptureType:I

.field private mCaptureTypeStatusResponder:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

.field private volatile mCurrentMotionCaptureInfo:Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager$MotionCaptureInfo;

.field private volatile mDoSilentCaptureOnNextReady:Z

.field private final mFrameResultCallback:Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;

.field private mGuideViewShowing:Z

.field private mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

.field private mIsAeAfHintShowing:Z

.field private mIsBandingDetected:Z

.field private mIsBandingHintShowing:Z

.field private mIsBirdBMDetected:Z

.field private volatile mIsContinuousShooting:Z

.field private volatile mIsFragmentShowing:Z

.field private mIsLowlightHintShowing:Z

.field private volatile mIsPaused:Z

.field private mIsShowSelfTimer:Z

.field private volatile mIsShutterGuideLayoutShowing:Z

.field private volatile mIsWaitingBestMoment:Z

.field private mIsWheelZoomShowing:Z

.field private mIsZooming:Z

.field private mLastBirdBMCaptureTime:J

.field private volatile mLastCaptureTime:J

.field private mLowLightHintText:Ljava/lang/String;

.field private mLowlightBrightnessThresshold:I

.field private mMainFreq:F

.field private final mMainHandler:Landroid/os/Handler;

.field protected mModeStatusListener:Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;

.field private mMotionCaptureInfos:Ljava/util/concurrent/ConcurrentHashMap;

.field private mMotionIntensity:I

.field private final mOnUserInteraction:Lcom/transsion/camera/app/common/IAppUIListener$IUserInteractionListener;

.field private final mResetSleepPageRunnable:Ljava/lang/Runnable;

.field private mResetSleepPageTime:J

.field private mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

.field private final mShot2ShotMaxCountForMFNR:I

.field private final mSkipCaptureAlgorithm:Z

.field private mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

.field private mTotalCaptureCount:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public static synthetic $r8$lambda$LpVwXI2tB9lpCvtFFW6cHGpqNUk(Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;->lambda$new$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$LzWGVdpyjc2EcmxZ4smscm-lFig(Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;Landroid/hardware/camera2/CaptureResult;Landroid/util/Size;Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;)V
    .registers 4

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;->doOnFrameResultCallback(Landroid/hardware/camera2/CaptureResult;Landroid/util/Size;Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmAppUI(Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;)Lcom/transsion/camera/app/common/IAppUI;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsBirdBMDetected(Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;->mIsBirdBMDetected:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmLastCaptureTime(Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;)J
    .registers 3

    .line 0
    iget-wide v0, p0, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;->mLastCaptureTime:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmMainHandler(Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;)Landroid/os/Handler;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;->mMainHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmResetSleepPageRunnable(Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;)Ljava/lang/Runnable;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;->mResetSleepPageRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmCaptureType(Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;I)V
    .registers 2

    .line 0
    iput p1, p0, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;->mCaptureType:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIsWaitingBestMoment(Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;->mIsWaitingBestMoment:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmLastBirdBMCaptureTime(Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;J)V
    .registers 3

    .line 0
    iput-wide p1, p0, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;->mLastBirdBMCaptureTime:J

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmLastCaptureTime(Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;J)V
    .registers 3

    .line 0
    iput-wide p1, p0, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;->mLastCaptureTime:J

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmResetSleepPageTime(Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;J)V
    .registers 3

    .line 0
    iput-wide p1, p0, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;->mResetSleepPageTime:J

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;
    .registers 1

    .line 0
    sget-object v0, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 41
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "MotionCaptureManager"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    .line 108
    invoke-static {}, Lcom/transsion/camera/utils/FeatureSupport;->isFlashSnapBirdCaptureTimeLimited()Z

    move-result v0

    if-eqz v0, :cond_12

    const/16 v0, 0x5dc

    goto :goto_14

    :cond_12
    const/16 v0, 0xbb8

    :goto_14
    sput v0, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;->BIRD_AUTO_CAPTURE_INTERVAL_TIME:I

    return-void
.end method

.method public constructor <init>()V
    .registers 7

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    .line 43
    iput v0, p0, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;->SHOT2SHOT_MAX_COUNT_FOR_MFNR_WHEN_BLUR_ON:I

    .line 44
    new-instance v0, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager$MainHandler;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager$MainHandler;-><init>(Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;)V

    iput-object v0, p0, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;->mMainHandler:Landroid/os/Handler;

    .line 46
    new-instance v0, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;)V

    iput-object v0, p0, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;->mFrameResultCallback:Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;

    const/16 v0, 0x96

    .line 48
    iput v0, p0, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;->CLICK_SHUTTER_TIME:I

    const v0, 0x3a980

    .line 49
    iput v0, p0, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;->DELAY_TRIGGER_SLEEP_PAGE_TIME:I

    .line 55
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;->mTotalCaptureCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 57
    new-instance v0, Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-direct {v0, v1}, Lcom/transsion/camera/app/common/ui/HintInfo;-><init>(I)V

    iput-object v0, p0, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    .line 71
    iput v1, p0, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;->mCaptureType:I

    const-wide/16 v2, -0x1

    .line 75
    iput-wide v2, p0, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;->mLastCaptureTime:J

    .line 79
    iput-boolean v1, p0, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;->mIsAeAfHintShowing:Z

    .line 81
    iput-boolean v1, p0, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;->mIsContinuousShooting:Z

    .line 82
    iput-boolean v1, p0, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;->mIsShutterGuideLayoutShowing:Z

    .line 84
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;->mMotionCaptureInfos:Ljava/util/concurrent/ConcurrentHashMap;

    .line 86
    iput-boolean v1, p0, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;->isDebandingModeOn:Z

    const-wide/16 v4, 0x0

    .line 87
    iput-wide v4, p0, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;->mResetSleepPageTime:J

    .line 99
    iput-boolean v1, p0, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;->mGuideViewShowing:Z

    .line 100
    iput v1, p0, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;->ICON_OFF:I

    const/4 v0, 0x2

    .line 101
    iput v0, p0, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;->ICON_INVISIBLE:I

    .line 102
    iput-wide v2, p0, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;->mLastBirdBMCaptureTime:J

    .line 103
    iput-boolean v1, p0, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;->mIsBirdBMDetected:Z

    .line 105
    iput-boolean v1, p0, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;->mIsZooming:Z

    .line 106
    iput-boolean v1, p0, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;->mIsWheelZoomShowing:Z

    const/4 v0, 0x1

    .line 109
    iput v0, p0, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;->NORMAL_BEST_MOMENT_RESULT:I

    const/16 v0, 0xd

    .line 110
    iput v0, p0, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;->BIRD_BEST_MOMENT_RESULT:I

    .line 334
    new-instance v0, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;)V

    iput-object v0, p0, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;->mResetSleepPageRunnable:Ljava/lang/Runnable;

    .line 340
    new-instance v0, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager$1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager$1;-><init>(Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;)V

    iput-object v0, p0, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;->mOnUserInteraction:Lcom/transsion/camera/app/common/IAppUIListener$IUserInteractionListener;

    .line 113
    sget v0, Lcom/transsion/camera/app/common/R$bool;->motion_capture_mode_skip_capture_algorithm:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;->mSkipCaptureAlgorithm:Z

    .line 114
    const-string v0, "lowlight_brightness_threshold"

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getInteger(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;->mLowlightBrightnessThresshold:I

    .line 115
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/utils/CustomConfigUtil;->getMotionCaptureShot2ShotMaxCountForMFNR()I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;->mShot2ShotMaxCountForMFNR:I

    return-void
.end method

.method private doOnCaptureStateChanged(Ljava/lang/String;)V
    .registers 8

    .line 371
    iput-object p1, p0, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;->mCaptureState:Ljava/lang/String;

    .line 372
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, -0x1

    sparse-switch v0, :sswitch_data_108

    goto :goto_31

    :sswitch_11
    const-string v0, "shot2shot_end"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1a

    goto :goto_31

    :cond_1a
    move v4, v1

    goto :goto_31

    :sswitch_1c
    const-string v0, "capture_end"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_25

    goto :goto_31

    :cond_25
    move v4, v2

    goto :goto_31

    :sswitch_27
    const-string v0, "capture_started"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_30

    goto :goto_31

    :cond_30
    move v4, v3

    :goto_31
    const-string p1, "key_setting_smart_denoise"

    packed-switch v4, :pswitch_data_116

    goto/16 :goto_e4

    .line 393
    :pswitch_38
    iget-object v0, p0, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v2, "key_single_blur"

    invoke-interface {v0, v2}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "1"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4a

    const/4 v0, 0x3

    goto :goto_4c

    .line 394
    :cond_4a
    iget v0, p0, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;->mShot2ShotMaxCountForMFNR:I

    .line 395
    :goto_4c
    sget-object v2, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "TotalCaptureCount on CAPTURE_SHOT2SHOT_END: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;->mTotalCaptureCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " skipCaptureCount: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 396
    iget-boolean v2, p0, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;->mSkipCaptureAlgorithm:Z

    if-eqz v2, :cond_8a

    iget-object v2, p0, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;->mTotalCaptureCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    if-ne v2, v0, :cond_8a

    .line 397
    iget-object v0, p0, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-static {v3}, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureModeRestriction;->getSmartDenoiseRelation(Z)Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->postRestriction(Lcom/transsion/camera/app/common/relation/Relation;)V

    .line 398
    iget-object v0, p0, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->requestChangeSettingValue(Ljava/lang/String;)V

    .line 400
    :cond_8a
    iget-boolean p1, p0, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;->mDoSilentCaptureOnNextReady:Z

    if-eqz p1, :cond_97

    .line 401
    iput-boolean v3, p0, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;->mDoSilentCaptureOnNextReady:Z

    .line 402
    iget-object p1, p0, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;->mMainHandler:Landroid/os/Handler;

    const/16 v0, 0xb

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 404
    :cond_97
    iget p1, p0, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;->mCaptureType:I

    if-ne p1, v1, :cond_e4

    .line 405
    iget-object p0, p0, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/16 p1, 0x97

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    return-void

    .line 381
    :pswitch_a3
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;->mSkipCaptureAlgorithm:Z

    if-nez v0, :cond_a8

    goto :goto_e4

    .line 384
    :cond_a8
    iget-object v0, p0, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;->mTotalCaptureCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 385
    iget-object v0, p0, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v0, p1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 386
    sget-object v1, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onSettingChanged, CAPTURE_END, value: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 387
    const-string v1, "off"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e4

    .line 388
    iget-object v0, p0, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-static {v2}, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureModeRestriction;->getSmartDenoiseRelation(Z)Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->postRestriction(Lcom/transsion/camera/app/common/relation/Relation;)V

    .line 389
    iget-object p0, p0, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->requestChangeSettingValue(Ljava/lang/String;)V

    return-void

    .line 374
    :pswitch_e0
    iget-boolean p1, p0, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;->mSkipCaptureAlgorithm:Z

    if-nez p1, :cond_e5

    :cond_e4
    :goto_e4
    return-void

    .line 377
    :cond_e5
    iget-object p1, p0, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;->mTotalCaptureCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 378
    sget-object p1, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TotalCaptureCount on CAPTURE_STARTED: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;->mTotalCaptureCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    nop

    :sswitch_data_108
    .sparse-switch
        -0x6595f778 -> :sswitch_27
        0x9bb6c62 -> :sswitch_1c
        0x667e128e -> :sswitch_11
    .end sparse-switch

    :pswitch_data_116
    .packed-switch 0x0
        :pswitch_e0
        :pswitch_a3
        :pswitch_38
    .end packed-switch
.end method

.method private doOnFrameResultCallback(Landroid/hardware/camera2/CaptureResult;Landroid/util/Size;Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;)V
    .registers 12

    .line 189
    iget-boolean p2, p0, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;->mIsShowSelfTimer:Z

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p2, :cond_22d

    iget-boolean p2, p0, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;->mIsFragmentShowing:Z

    if-nez p2, :cond_22d

    iget-boolean p2, p0, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;->mIsPaused:Z

    if-nez p2, :cond_22d

    iget-boolean p2, p0, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;->mIsContinuousShooting:Z

    if-nez p2, :cond_22d

    iget-boolean p2, p0, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;->mIsShutterGuideLayoutShowing:Z

    if-nez p2, :cond_22d

    iget-boolean p2, p0, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;->mGuideViewShowing:Z

    if-nez p2, :cond_22d

    iget-boolean p2, p0, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;->mIsZooming:Z

    if-nez p2, :cond_22d

    iget-boolean p2, p0, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;->mIsWheelZoomShowing:Z

    if-nez p2, :cond_22d

    iget-object p2, p0, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz p2, :cond_2e

    .line 191
    invoke-interface {p2}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->shutterUIProcessing()Z

    move-result p2

    if-eqz p2, :cond_2e

    goto/16 :goto_22d

    .line 198
    :cond_2e
    invoke-interface {p3, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->getFlickerSensorData(Landroid/hardware/camera2/CaptureResult;)[F

    move-result-object p2

    .line 199
    array-length v2, p2

    if-lez v2, :cond_38

    aget p2, p2, v0

    goto :goto_3a

    :cond_38
    const/high16 p2, -0x40800000    # -1.0f

    :goto_3a
    iput p2, p0, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;->mMainFreq:F

    .line 200
    invoke-interface {p3, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->getFlickerDetectBanding(Landroid/hardware/camera2/CaptureResult;)I

    move-result p2

    if-eq p2, v1, :cond_4b

    .line 201
    invoke-interface {p3, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->getBestMomentDetectBanding(Landroid/hardware/camera2/CaptureResult;)I

    move-result p2

    if-lez p2, :cond_49

    goto :goto_4b

    :cond_49
    move p2, v0

    goto :goto_4c

    :cond_4b
    :goto_4b
    move p2, v1

    :goto_4c
    iput-boolean p2, p0, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;->mIsBandingDetected:Z

    .line 202
    invoke-static {}, Lcom/transsion/camera/utils/FeatureSupport;->getFlashSnapBandingDebugValue()I

    move-result p2

    const/4 v2, -0x1

    if-eq p2, v2, :cond_60

    .line 203
    invoke-static {}, Lcom/transsion/camera/utils/FeatureSupport;->getFlashSnapBandingDebugValue()I

    move-result p2

    if-ne p2, v1, :cond_5d

    move p2, v1

    goto :goto_5e

    :cond_5d
    move p2, v0

    :goto_5e
    iput-boolean p2, p0, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;->mIsBandingDetected:Z

    .line 205
    :cond_60
    invoke-interface {p3, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->checkAiShutterResult(Landroid/hardware/camera2/CaptureResult;)[I

    move-result-object p2

    if-eqz p2, :cond_6c

    .line 206
    array-length v3, p2

    if-le v3, v1, :cond_6c

    aget p2, p2, v1

    goto :goto_6d

    :cond_6c
    move p2, v2

    :goto_6d
    iput p2, p0, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;->mMotionIntensity:I

    .line 208
    iget-object p2, p0, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v3, "key_best_moment_detect"

    invoke-interface {p2, v3}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v4, "1"

    invoke-static {p2, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    .line 209
    sget-object v4, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "autoCaptureOn: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v7, v3}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "isBandingDetected: "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;->mIsBandingDetected:Z

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;->isDebandingModeOn:Z

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 212
    invoke-interface {p3, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->checkBrightnessResult(Landroid/hardware/camera2/CaptureResult;)[I

    move-result-object v3

    if-eqz v3, :cond_c5

    .line 213
    aget v3, v3, v0

    iget v5, p0, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;->mLowlightBrightnessThresshold:I

    if-gt v3, v5, :cond_c5

    iget-boolean v3, p0, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;->mIsAeAfHintShowing:Z

    if-nez v3, :cond_c5

    move v3, v1

    goto :goto_c6

    :cond_c5
    move v3, v0

    .line 217
    :goto_c6
    iget-boolean v5, p0, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;->mIsBandingDetected:Z

    const-string v6, "motion_capture_debanding_mode"

    if-eqz v5, :cond_e5

    .line 218
    iget-boolean v5, p0, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;->isDebandingModeOn:Z

    if-nez v5, :cond_dd

    .line 219
    iput-boolean v1, p0, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;->isDebandingModeOn:Z

    .line 220
    iget-object v5, p0, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    invoke-virtual {v5, v6}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object v5

    const-string v7, "on"

    invoke-virtual {v5, v6, v7}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_dd
    if-eqz p2, :cond_f9

    if-nez v3, :cond_f9

    .line 223
    invoke-direct {p0}, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;->showBandingHint()V

    goto :goto_f9

    .line 225
    :cond_e5
    iget-boolean v5, p0, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;->isDebandingModeOn:Z

    if-eqz v5, :cond_f9

    .line 226
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;->isDebandingModeOn:Z

    .line 227
    invoke-direct {p0}, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;->hideBandingHint()V

    .line 228
    iget-object v5, p0, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    invoke-virtual {v5, v6}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object v5

    const-string v7, "off"

    invoke-virtual {v5, v6, v7}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_f9
    :goto_f9
    if-nez p2, :cond_102

    .line 230
    iget-boolean v5, p0, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;->mIsBandingHintShowing:Z

    if-eqz v5, :cond_102

    .line 231
    invoke-direct {p0}, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;->hideBandingHint()V

    :cond_102
    if-nez v3, :cond_10d

    .line 234
    invoke-direct {p0}, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;->isSupportInAICam()Z

    move-result v5

    if-nez v5, :cond_10d

    .line 235
    invoke-direct {p0}, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;->hideLowlightHint()V

    :cond_10d
    if-eqz v3, :cond_119

    .line 238
    invoke-direct {p0}, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;->isSupportInAICam()Z

    move-result v3

    if-nez v3, :cond_119

    .line 239
    invoke-direct {p0}, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;->showLowlightHint()V

    return-void

    .line 243
    :cond_119
    iget-boolean v3, p0, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;->mIsBandingDetected:Z

    if-eqz v3, :cond_123

    if-eqz p2, :cond_123

    .line 244
    invoke-direct {p0}, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;->showBandingHint()V

    goto :goto_126

    .line 246
    :cond_123
    invoke-direct {p0}, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;->hideBandingHint()V

    .line 248
    :goto_126
    iget-object v3, p0, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v5, "key_motioncapture_guide_show_flag"

    invoke-interface {v3, v5}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_13a

    .line 249
    const-string v5, "2"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13a

    goto/16 :goto_20c

    .line 252
    :cond_13a
    invoke-interface {p3, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->getBestMomentDetectResult(Landroid/hardware/camera2/CaptureResult;)I

    move-result p3

    .line 253
    invoke-static {}, Lcom/transsion/camera/utils/FeatureSupport;->getBestMomentDetectResult()I

    move-result v3

    if-eq v3, v2, :cond_148

    .line 254
    invoke-static {}, Lcom/transsion/camera/utils/FeatureSupport;->getBestMomentDetectResult()I

    move-result p3

    :cond_148
    const/16 v2, 0xd

    if-eq p3, v1, :cond_151

    if-ne p3, v2, :cond_14f

    goto :goto_151

    :cond_14f
    move v3, v0

    goto :goto_152

    :cond_151
    :goto_151
    move v3, v1

    :goto_152
    if-ne p3, v2, :cond_156

    move p3, v1

    goto :goto_157

    :cond_156
    move p3, v0

    .line 258
    :goto_157
    iput-boolean p3, p0, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;->mIsBirdBMDetected:Z

    if-nez v3, :cond_15f

    .line 259
    iget-boolean p3, p0, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;->mIsBandingDetected:Z

    if-eqz p3, :cond_17d

    .line 260
    :cond_15f
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isBestMoment: "

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", isBandingDetected: "

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;->mIsBandingDetected:Z

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v4, p3}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :cond_17d
    if-eqz v3, :cond_1d7

    .line 262
    iget-boolean p3, p0, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;->mIsWaitingBestMoment:Z

    if-eqz p3, :cond_1d7

    iget p3, p0, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;->mCaptureType:I

    if-ne p3, v1, :cond_1d7

    .line 263
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;->mIsWaitingBestMoment:Z

    .line 264
    const-string p3, "shot2shot_end"

    iget-object v0, p0, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;->mCaptureState:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1b3

    .line 265
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "onFrameResultCallback, doSilentCapture for best moment, frameNumber: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureResult;->getFrameNumber()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 265
    invoke-static {v4, p1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 267
    iget-object p0, p0, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;->mMainHandler:Landroid/os/Handler;

    const/16 p1, 0xb

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void

    .line 270
    :cond_1b3
    iput-boolean v1, p0, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;->mDoSilentCaptureOnNextReady:Z

    .line 271
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onFrameResultCallback, no silentCapture for captureState: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;->mCaptureState:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", frameNumber: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 272
    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureResult;->getFrameNumber()J

    move-result-wide v0

    invoke-virtual {p3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 271
    invoke-static {v4, p3}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 276
    :cond_1d7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v5, p0, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;->mLastCaptureTime:J

    sub-long/2addr v0, v5

    const-wide/16 v5, 0x3e8

    cmp-long p3, v0, v5

    if-gtz p3, :cond_1ea

    .line 277
    const-string p0, "doOnFrameResultCallback: too fast, skip"

    invoke-static {v4, p0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 281
    :cond_1ea
    iget-boolean p3, p0, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;->mIsBirdBMDetected:Z

    if-eqz p3, :cond_202

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v5, p0, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;->mLastBirdBMCaptureTime:J

    sub-long/2addr v0, v5

    sget p3, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;->BIRD_AUTO_CAPTURE_INTERVAL_TIME:I

    int-to-long v5, p3

    cmp-long p3, v0, v5

    if-gtz p3, :cond_202

    .line 282
    const-string p0, "doOnFrameResultCallback: bird BM too frequent, skip"

    invoke-static {v4, p0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    :cond_202
    if-nez p2, :cond_20a

    .line 286
    const-string p0, "AutoCaptureOn is off, Return!!!"

    invoke-static {v4, p0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    :cond_20a
    if-nez v3, :cond_20d

    :goto_20c
    return-void

    .line 292
    :cond_20d
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "doOnFrameResultCallback, capture best moment, frame: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureResult;->getFrameNumber()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 293
    iget-object p0, p0, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;->mMainHandler:Landroid/os/Handler;

    const/16 p1, 0xa

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void

    .line 192
    :cond_22d
    :goto_22d
    sget-object p1, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "onFrameResult return : "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p0, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;->mIsShowSelfTimer:Z

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p3, ", "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;->mIsFragmentShowing:Z

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;->mIsPaused:Z

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;->mIsContinuousShooting:Z

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;->mIsShutterGuideLayoutShowing:Z

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;->mGuideViewShowing:Z

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;->mIsZooming:Z

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;->mIsWheelZoomShowing:Z

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz p0, :cond_286

    .line 194
    invoke-interface {p0}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->shutterUIProcessing()Z

    move-result p0

    if-eqz p0, :cond_286

    move v0, v1

    :cond_286
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 192
    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private hideBandingHint()V
    .registers 4

    .line 443
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;->mIsBandingHintShowing:Z

    if-eqz v0, :cond_26

    .line 444
    iget-object v0, p0, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    iget-object v1, p0, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->hideHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    .line 445
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;->mIsPaused:Z

    if-nez v0, :cond_1c

    .line 446
    iget-object v0, p0, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v1, "hint_msg"

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object v0

    const-string v2, "hint_msg_none"

    .line 447
    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1c
    const/4 v0, 0x0

    .line 449
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;->mIsBandingHintShowing:Z

    .line 450
    sget-object p0, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "hideBandingHint"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :cond_26
    return-void
.end method

.method private hideLowlightHint()V
    .registers 4

    .line 431
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;->mIsLowlightHintShowing:Z

    if-eqz v0, :cond_26

    .line 432
    iget-object v0, p0, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    iget-object v1, p0, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->hideHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    .line 433
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;->mIsPaused:Z

    if-nez v0, :cond_1c

    .line 434
    iget-object v0, p0, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v1, "hint_msg"

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object v0

    const-string v2, "hint_msg_none"

    .line 435
    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1c
    const/4 v0, 0x0

    .line 437
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;->mIsLowlightHintShowing:Z

    .line 438
    sget-object p0, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "hideLowlightHint"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :cond_26
    return-void
.end method

.method private isSupportInAICam()Z
    .registers 1

    .line 414
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/utils/CustomConfigUtil;->supportMotionCaptureInAICAM()Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$new$0()V
    .registers 5

    .line 335
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;->mResetSleepPageTime:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x3a980

    cmp-long v0, v0, v2

    if-ltz v0, :cond_15

    .line 336
    iget-object p0, p0, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;->mModeStatusListener:Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;

    sget-object v0, Lcom/transsion/camera/app/common/IApp$State;->STATE_IDLE:Lcom/transsion/camera/app/common/IApp$State;

    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;->onStatusChanged(Lcom/transsion/camera/app/common/IApp$State;)V

    :cond_15
    return-void
.end method

.method private showBandingHint()V
    .registers 4

    .line 455
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;->mIsBandingHintShowing:Z

    if-eqz v0, :cond_5

    return-void

    .line 458
    :cond_5
    iget-object v0, p0, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    iget-object v1, p0, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;->mBandingHintText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ui/HintInfo;->setMessage(Ljava/lang/String;)V

    .line 459
    iget-object v0, p0, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    iget-object v1, p0, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->showHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    .line 460
    iget-object v0, p0, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v1, "hint_msg"

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object v0

    const-string v2, "hint_msg_banding"

    .line 461
    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v0, 0x1

    .line 462
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;->mIsBandingHintShowing:Z

    const/4 v0, 0x0

    .line 463
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;->mIsLowlightHintShowing:Z

    .line 464
    sget-object p0, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "showBandingHint"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private showLowlightHint()V
    .registers 4

    .line 418
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;->mIsLowlightHintShowing:Z

    if-eqz v0, :cond_5

    return-void

    .line 421
    :cond_5
    iget-object v0, p0, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    iget-object v1, p0, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;->mLowLightHintText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ui/HintInfo;->setMessage(Ljava/lang/String;)V

    .line 422
    iget-object v0, p0, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    iget-object v1, p0, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->showHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    .line 423
    iget-object v0, p0, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v1, "hint_msg"

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object v0

    const-string v2, "hint_msg_low_light"

    .line 424
    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v0, 0x1

    .line 425
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;->mIsLowlightHintShowing:Z

    const/4 v0, 0x0

    .line 426
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;->mIsBandingHintShowing:Z

    .line 427
    sget-object p0, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "showLowlightHint"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private updateModeCaptureInfo(Lcom/transsion/camera/adapter/CameraResults;Landroid/hardware/camera2/CaptureResult;)V
    .registers 9

    .line 685
    invoke-virtual {p1}, Lcom/transsion/camera/adapter/CameraResults;->getBestMomentDetectResult()I

    move-result p1

    .line 686
    sget-object v0, Landroid/hardware/camera2/CaptureResult;->SENSOR_TIMESTAMP:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p2, v0}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 687
    sget-object v2, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateModeCaptureInfo, bestMomentDetectResult: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", timestamp: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, ", frameNumber: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 689
    invoke-virtual {p2}, Landroid/hardware/camera2/CaptureResult;->getFrameNumber()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, ", mIsWaitingBestMoment: "

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, p0, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;->mIsWaitingBestMoment:Z

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, ", mCurrentMotionCaptureInfo: "

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;->mCurrentMotionCaptureInfo:Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager$MotionCaptureInfo;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 687
    invoke-static {v2, p2}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 692
    iget-boolean p2, p0, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;->mIsWaitingBestMoment:Z

    if-eqz p2, :cond_72

    iget-object p2, p0, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;->mCurrentMotionCaptureInfo:Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager$MotionCaptureInfo;

    iget-wide v3, p2, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager$MotionCaptureInfo;->mTimestamp:J

    cmp-long p2, v0, v3

    if-nez p2, :cond_72

    const/16 p2, 0x64

    if-lt p1, p2, :cond_72

    const/4 p1, 0x0

    .line 695
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;->mIsWaitingBestMoment:Z

    .line 696
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;->mDoSilentCaptureOnNextReady:Z

    .line 697
    iget-object p0, p0, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;->mMainHandler:Landroid/os/Handler;

    const/16 p1, 0xb

    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 698
    const-string/jumbo p0, "updateModeCaptureInfo, silent capture canceled"

    invoke-static {v2, p0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 701
    :cond_72
    invoke-virtual {p0, v0, v1}, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;->findCaptureInfoByTimestamp(J)Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager$MotionCaptureInfo;

    move-result-object p0

    if-nez p0, :cond_7f

    .line 703
    const-string/jumbo p0, "updateModeCaptureInfo, null info"

    invoke-static {v2, p0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 706
    :cond_7f
    iget-wide v3, p0, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager$MotionCaptureInfo;->mSilentCaptureTimestamp:J

    cmp-long p2, v3, v0

    if-nez p2, :cond_88

    .line 707
    iput p1, p0, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager$MotionCaptureInfo;->mBmDetectResultOfSilentCapture:I

    goto :goto_8a

    .line 709
    :cond_88
    iput p1, p0, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager$MotionCaptureInfo;->mBmDetectResult:I

    .line 711
    :goto_8a
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "updateModeCaptureInfo, info: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public analyticsCapture(Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager$MotionCaptureInfo;)V
    .registers 10

    .line 585
    sget-object v0, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "analyticsCapture, captureInfo: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-nez p1, :cond_19

    return-void

    .line 589
    :cond_19
    iget-object v0, p1, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager$MotionCaptureInfo;->mSwitchValue:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 592
    iget v0, p1, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager$MotionCaptureInfo;->mBmDetectResult:I

    const/4 v1, 0x0

    const/16 v3, 0x64

    if-ge v0, v3, :cond_28

    move v3, v1

    goto :goto_2a

    :cond_28
    sub-int/2addr v0, v3

    move v3, v0

    .line 594
    :goto_2a
    iget p0, p0, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;->mCaptureType:I

    const/4 v0, 0x3

    if-ne p0, v0, :cond_30

    const/4 v1, 0x1

    :cond_30
    move v4, v1

    .line 595
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p0

    new-instance v1, Lcom/transsion/camera/utils/analytics/AnalyticsUtils$MotionSnapInfo;

    iget v5, p1, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager$MotionCaptureInfo;->mBanding:I

    iget v6, p1, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager$MotionCaptureInfo;->mMainFreq:F

    iget v7, p1, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager$MotionCaptureInfo;->mMotionIntensity:I

    invoke-direct/range {v1 .. v7}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils$MotionSnapInfo;-><init>(IIIIFI)V

    invoke-virtual {p0, v1}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setMotionSnapInfo(Lcom/transsion/camera/utils/analytics/AnalyticsUtils$MotionSnapInfo;)V

    return-void
.end method

.method public findCaptureInfoByTimestamp(J)Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager$MotionCaptureInfo;
    .registers 6

    .line 715
    iget-object v0, p0, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;->mMotionCaptureInfos:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager$MotionCaptureInfo;

    if-eqz v0, :cond_31

    .line 717
    sget-object p0, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "findCaptureInfoByTimestamp: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, v0, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager$MotionCaptureInfo;->mTimestamp:J

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, ", silentTimestamp: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, v0, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager$MotionCaptureInfo;->mSilentCaptureTimestamp:J

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-object v0

    .line 721
    :cond_31
    iget-object p0, p0, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;->mMotionCaptureInfos:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    .line 722
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_3b
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_54

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 723
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager$MotionCaptureInfo;

    .line 724
    iget-wide v1, v0, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager$MotionCaptureInfo;->mSilentCaptureTimestamp:J

    cmp-long v1, v1, p1

    if-nez v1, :cond_3b

    return-object v0

    :cond_54
    const/4 p0, 0x0

    return-object p0
.end method

.method public getMotionCaptureInfoTimeStamp(J)J
    .registers 4

    .line 601
    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;->findCaptureInfoByTimestamp(J)Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager$MotionCaptureInfo;

    move-result-object v0

    if-nez v0, :cond_7

    return-wide p1

    .line 604
    :cond_7
    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;->findCaptureInfoByTimestamp(J)Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager$MotionCaptureInfo;

    move-result-object p0

    iget-wide p0, p0, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager$MotionCaptureInfo;->mTimestamp:J

    return-wide p0
.end method

.method public init(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor;)V
    .registers 7

    .line 120
    iput-object p3, p0, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    .line 121
    iput-object p6, p0, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    .line 122
    iput-object p4, p0, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    .line 123
    iput-object p2, p0, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    .line 124
    const-string p1, "key_motion_capture_type"

    invoke-virtual {p6, p1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;->mCaptureTypeStatusResponder:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    .line 125
    iget-object p1, p0, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    iget-object p0, p0, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;->mOnUserInteraction:Lcom/transsion/camera/app/common/IAppUIListener$IUserInteractionListener;

    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/IAppUI;->setUserInteractionListener(Lcom/transsion/camera/app/common/IAppUIListener$IUserInteractionListener;)V

    return-void
.end method

.method public init(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor;Ljava/lang/String;Ljava/lang/String;)V
    .registers 9

    .line 131
    iput-object p3, p0, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    .line 132
    iput-object p6, p0, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    .line 133
    iput-object p4, p0, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    .line 134
    iput-object p2, p0, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    .line 135
    const-string p1, "key_motion_capture_type"

    invoke-virtual {p6, p1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;->mCaptureTypeStatusResponder:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    .line 136
    iput-object p8, p0, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;->mBandingHintText:Ljava/lang/String;

    .line 137
    iput-object p7, p0, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;->mLowLightHintText:Ljava/lang/String;

    .line 138
    iget-object p1, p0, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    iget-object p0, p0, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;->mOnUserInteraction:Lcom/transsion/camera/app/common/IAppUIListener$IUserInteractionListener;

    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/IAppUI;->setUserInteractionListener(Lcom/transsion/camera/app/common/IAppUIListener$IUserInteractionListener;)V

    return-void
.end method

.method public isNeedDeviceCaptureSound()Z
    .registers 4

    .line 511
    sget-object v0, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isNeedDeviceCaptureSound, mCaptureType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;->mCaptureType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 512
    iget p0, p0, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;->mCaptureType:I

    const/4 v1, 0x2

    if-ne p0, v1, :cond_24

    .line 513
    const-string p0, "SILENT_CAPTURE isNeedDeviceCaptureSound"

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :cond_24
    const/4 p0, 0x1

    return p0
.end method

.method public isSilentCaptureType()Z
    .registers 2

    .line 525
    iget p0, p0, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;->mCaptureType:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_7

    const/4 p0, 0x1

    return p0

    :cond_7
    const/4 p0, 0x0

    return p0
.end method

.method public isTimeLongAlgoScene([I)Z
    .registers 5

    .line 492
    sget-object v0, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onThumbNailTypeConfirmed, mCaptureType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;->mCaptureType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 493
    iget p0, p0, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;->mCaptureType:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-ne p0, v1, :cond_24

    .line 494
    const-string p0, "SILENT_CAPTURE onThumbNailTypeConfirmed"

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v2

    :cond_24
    if-eqz p1, :cond_2e

    const/4 p0, 0x6

    .line 500
    aget p0, p1, p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_2f

    move v2, p1

    goto :goto_2f

    :cond_2e
    const/4 p0, -0x1

    .line 506
    :cond_2f
    :goto_2f
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onThumbNailTypeConfirmed flashSnapScene: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v2
.end method

.method public needSaveJpeg(JLcom/transsion/camera/app/common/motioncapture/MotionCaptureManager$MotionCaptureInfo;)Z
    .registers 9

    .line 561
    iget-wide v0, p3, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager$MotionCaptureInfo;->mTimestamp:J

    cmp-long p0, p1, v0

    const/4 v0, 0x1

    const/16 v1, 0x64

    const/4 v2, 0x0

    if-nez p0, :cond_26

    .line 562
    iget p0, p3, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager$MotionCaptureInfo;->mBmDetectResultOfSilentCapture:I

    if-lt p0, v1, :cond_25

    .line 563
    sget-object p0, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "notifyPictureTaken, waiting silent capture jpeg, ignore this jpeg, timestamp:"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v2

    :cond_25
    return v0

    .line 567
    :cond_26
    iget-wide v3, p3, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager$MotionCaptureInfo;->mSilentCaptureTimestamp:J

    cmp-long p0, p1, v3

    if-nez p0, :cond_32

    .line 570
    iget p0, p3, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager$MotionCaptureInfo;->mBmDetectResultOfSilentCapture:I

    if-lt p0, v1, :cond_31

    return v0

    :cond_31
    return v2

    .line 574
    :cond_32
    sget-object p0, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "notifyPictureTaken, jpeg will not be saved, timestamp:"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v2
.end method

.method public notifyCameraOperateAction(I)V
    .registers 5

    const/16 v0, 0x24

    const/4 v1, 0x1

    if-eq p1, v0, :cond_6a

    const/16 v0, 0x25

    const/4 v2, 0x0

    if-eq p1, v0, :cond_67

    const/16 v0, 0x4d

    if-eq p1, v0, :cond_64

    const/16 v0, 0x4e

    if-eq p1, v0, :cond_61

    const/16 v0, 0x6e

    if-eq p1, v0, :cond_5e

    const/16 v0, 0x6f

    if-eq p1, v0, :cond_5b

    const/16 v0, 0xd2

    if-eq p1, v0, :cond_52

    const/16 v0, 0xd3

    if-eq p1, v0, :cond_4f

    const/16 v0, 0xf4

    if-eq p1, v0, :cond_64

    const/16 v0, 0xf5

    if-eq p1, v0, :cond_61

    const/16 v0, 0x152

    if-eq p1, v0, :cond_4c

    const/16 v0, 0x153

    if-eq p1, v0, :cond_49

    packed-switch p1, :pswitch_data_74

    packed-switch p1, :pswitch_data_7e

    return-void

    .line 660
    :pswitch_39
    iput-boolean v2, p0, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;->mIsWheelZoomShowing:Z

    return-void

    .line 656
    :pswitch_3c
    iput-boolean v2, p0, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;->mIsLowlightHintShowing:Z

    .line 657
    iput-boolean v1, p0, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;->mIsWheelZoomShowing:Z

    return-void

    .line 653
    :pswitch_41
    iput-boolean v2, p0, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;->mIsZooming:Z

    return-void

    .line 649
    :pswitch_44
    iput-boolean v2, p0, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;->mIsLowlightHintShowing:Z

    .line 650
    iput-boolean v1, p0, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;->mIsZooming:Z

    return-void

    .line 646
    :cond_49
    iput-boolean v2, p0, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;->mGuideViewShowing:Z

    return-void

    .line 643
    :cond_4c
    iput-boolean v1, p0, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;->mGuideViewShowing:Z

    return-void

    .line 640
    :cond_4f
    iput-boolean v2, p0, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;->mIsShutterGuideLayoutShowing:Z

    return-void

    .line 635
    :cond_52
    iput-boolean v1, p0, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;->mIsShutterGuideLayoutShowing:Z

    .line 636
    invoke-direct {p0}, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;->hideLowlightHint()V

    .line 637
    invoke-direct {p0}, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;->hideBandingHint()V

    return-void

    .line 624
    :cond_5b
    iput-boolean v2, p0, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;->mIsAeAfHintShowing:Z

    return-void

    .line 621
    :cond_5e
    iput-boolean v1, p0, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;->mIsAeAfHintShowing:Z

    return-void

    .line 618
    :cond_61
    :pswitch_61
    iput-boolean v2, p0, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;->mIsFragmentShowing:Z

    return-void

    .line 612
    :cond_64
    :pswitch_64
    iput-boolean v1, p0, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;->mIsFragmentShowing:Z

    return-void

    .line 632
    :cond_67
    iput-boolean v2, p0, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;->mIsContinuousShooting:Z

    return-void

    .line 627
    :cond_6a
    iput-boolean v1, p0, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;->mIsContinuousShooting:Z

    .line 628
    invoke-direct {p0}, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;->hideLowlightHint()V

    .line 629
    invoke-direct {p0}, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;->hideBandingHint()V

    return-void

    nop

    :pswitch_data_74
    .packed-switch 0x11
        :pswitch_64
        :pswitch_61
        :pswitch_61
    .end packed-switch

    :pswitch_data_7e
    .packed-switch 0x17
        :pswitch_44
        :pswitch_41
        :pswitch_3c
        :pswitch_39
    .end packed-switch
.end method

.method public notifyPictureTaken()V
    .registers 5

    .line 551
    iget v0, p0, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;->mCaptureType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1a

    .line 552
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;->mResetSleepPageTime:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x3a980

    cmp-long v0, v0, v2

    if-gtz v0, :cond_1a

    .line 553
    iget-object p0, p0, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;->mModeStatusListener:Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;

    sget-object v0, Lcom/transsion/camera/app/common/IApp$State;->STATE_IDLE:Lcom/transsion/camera/app/common/IApp$State;

    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;->onStatusChanged(Lcom/transsion/camera/app/common/IApp$State;)V

    :cond_1a
    return-void
.end method

.method public onModeCaptureCompleted(Lcom/transsion/camera/adapter/CameraResults;Landroid/hardware/camera2/CaptureResult;)V
    .registers 3

    .line 668
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;->updateModeCaptureInfo(Lcom/transsion/camera/adapter/CameraResults;Landroid/hardware/camera2/CaptureResult;)V

    return-void
.end method

.method public onModeCaptureCompleted(Lcom/transsion/camera/adapter/CameraResults;Landroid/hardware/camera2/CaptureResult;ZZ)V
    .registers 5

    if-eqz p3, :cond_6

    .line 673
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;->updateModeCaptureInfo(Lcom/transsion/camera/adapter/CameraResults;Landroid/hardware/camera2/CaptureResult;)V

    return-void

    .line 676
    :cond_6
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setMotionSnapInfo(Lcom/transsion/camera/utils/analytics/AnalyticsUtils$MotionSnapInfo;)V

    if-nez p4, :cond_19

    .line 678
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p0

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setFlashSnapButtonValue(I)V

    return-void

    .line 680
    :cond_19
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setFlashSnapButtonValue(I)V

    return-void
.end method

.method public onModeCaptureFailed()V
    .registers 4

    .line 544
    sget-object v0, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onModeCaptureFailed, remove mCurrentMotionCaptureInfo = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;->mCurrentMotionCaptureInfo:Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager$MotionCaptureInfo;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 545
    iget-object v0, p0, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;->mCurrentMotionCaptureInfo:Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager$MotionCaptureInfo;

    if-eqz v0, :cond_29

    .line 546
    iget-object v0, p0, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;->mMotionCaptureInfos:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object p0, p0, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;->mCurrentMotionCaptureInfo:Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager$MotionCaptureInfo;

    iget-wide v1, p0, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager$MotionCaptureInfo;->mTimestamp:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_29
    return-void
.end method

.method public onModeCaptureStarted(J)V
    .registers 6

    .line 530
    new-instance v0, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager$MotionCaptureInfo;

    iget v1, p0, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;->mCaptureType:I

    invoke-direct {v0, p0, v1, p1, p2}, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager$MotionCaptureInfo;-><init>(Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;IJ)V

    iput-object v0, p0, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;->mCurrentMotionCaptureInfo:Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager$MotionCaptureInfo;

    .line 531
    iget-object v0, p0, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;->mCurrentMotionCaptureInfo:Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager$MotionCaptureInfo;

    iget-object v1, p0, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v2, "key_best_moment_detect"

    .line 532
    invoke-interface {v1, v2}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager$MotionCaptureInfo;->mSwitchValue:Ljava/lang/String;

    .line 533
    iget-object v0, p0, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;->mCurrentMotionCaptureInfo:Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager$MotionCaptureInfo;

    iget v1, p0, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;->mMainFreq:F

    iput v1, v0, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager$MotionCaptureInfo;->mMainFreq:F

    .line 534
    iget-object v0, p0, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;->mCurrentMotionCaptureInfo:Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager$MotionCaptureInfo;

    iget-boolean v1, p0, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;->mIsBandingDetected:Z

    iput v1, v0, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager$MotionCaptureInfo;->mBanding:I

    .line 535
    iget-object v0, p0, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;->mCurrentMotionCaptureInfo:Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager$MotionCaptureInfo;

    iget v1, p0, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;->mMotionIntensity:I

    iput v1, v0, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager$MotionCaptureInfo;->mMotionIntensity:I

    .line 536
    iget-object v0, p0, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;->mMotionCaptureInfos:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;->mCurrentMotionCaptureInfo:Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager$MotionCaptureInfo;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 538
    sget-object v0, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onModeCaptureStarted, captureType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;->mCaptureType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", timestamp: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ", captureInfo: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;->mCurrentMotionCaptureInfo:Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager$MotionCaptureInfo;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public onSettingChanged(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 352
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "capture_state"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_32

    const-string v0, "key_self_timer_status"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_14

    goto :goto_31

    .line 357
    :cond_14
    const-string p1, "status_self_timer_begin"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_26

    const/4 p1, 0x1

    .line 358
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;->mIsShowSelfTimer:Z

    .line 359
    invoke-direct {p0}, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;->hideLowlightHint()V

    .line 360
    invoke-direct {p0}, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;->hideBandingHint()V

    return-void

    .line 361
    :cond_26
    const-string p1, "status_self_timer_end"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_31

    const/4 p1, 0x0

    .line 362
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;->mIsShowSelfTimer:Z

    :cond_31
    :goto_31
    return-void

    .line 354
    :cond_32
    invoke-direct {p0, p2}, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;->doOnCaptureStateChanged(Ljava/lang/String;)V

    return-void
.end method

.method public onSettingReady()V
    .registers 2

    .line 183
    iget-object v0, p0, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    if-eqz v0, :cond_9

    .line 184
    iget-object p0, p0, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;->mFrameResultCallback:Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;

    invoke-virtual {v0, p0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->registerFrameResultCallback(Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;)V

    :cond_9
    return-void
.end method

.method public onShutterClick(IZ)Z
    .registers 8

    .line 469
    sget-object v0, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onShutterClick1 curPriority: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", doClick: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/16 v1, 0xb

    if-eq p1, v1, :cond_63

    const/16 v1, 0xc

    if-eq p1, v1, :cond_63

    const/4 v2, 0x1

    .line 471
    iput v2, p0, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;->mCaptureType:I

    .line 472
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onShutterClick mCaptureType:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;->mCaptureType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", curPriority: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-eqz p2, :cond_63

    .line 474
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;->mLastCaptureTime:J

    .line 475
    iput v2, p0, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;->mCaptureType:I

    .line 476
    iget-boolean p1, p0, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;->mIsWaitingBestMoment:Z

    if-eqz p1, :cond_5a

    .line 477
    iget-object p1, p0, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 479
    :cond_5a
    iput-boolean v2, p0, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;->mIsWaitingBestMoment:Z

    .line 480
    iget-object p1, p0, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;->mMainHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1f4

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_63
    if-eqz p2, :cond_76

    .line 484
    iget p1, p0, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;->mCaptureType:I

    const/4 v0, 0x3

    if-ne p1, v0, :cond_6d

    .line 485
    const-string p1, "motion_capture_type_auto"

    goto :goto_6f

    :cond_6d
    const-string p1, "motion_capture_type_shutter"

    .line 486
    :goto_6f
    iget-object p0, p0, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;->mCaptureTypeStatusResponder:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    const-string v0, "key_motion_capture_type"

    invoke-virtual {p0, v0, p1}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_76
    return p2
.end method

.method public pause()V
    .registers 6

    const/4 v0, 0x1

    .line 306
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;->mIsPaused:Z

    .line 307
    iget-boolean v1, p0, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;->isDebandingModeOn:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_17

    .line 308
    iput-boolean v2, p0, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;->isDebandingModeOn:Z

    .line 309
    iget-object v1, p0, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v3, "motion_capture_debanding_mode"

    invoke-virtual {v1, v3}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object v1

    const-string v4, "off"

    invoke-virtual {v1, v3, v4}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    .line 311
    :cond_17
    iput-boolean v2, p0, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;->mIsShowSelfTimer:Z

    .line 312
    iget-object v1, p0, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v1}, Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;->getCurrentUIState()I

    move-result v1

    const/16 v3, 0x9

    if-ne v1, v3, :cond_2a

    .line 313
    iget-object v1, p0, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/4 v3, -0x1

    const/4 v4, 0x0

    invoke-interface {v1, v0, v3, v4}, Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;->updateUIState(IILjava/lang/String;)V

    .line 315
    :cond_2a
    iget-object v0, p0, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/16 v1, 0xd6

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 316
    iget-object v0, p0, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    if-eqz v0, :cond_3a

    .line 317
    iget-object v1, p0, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;->mFrameResultCallback:Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->unRegisterFrameResultCallback(Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;)V

    .line 319
    :cond_3a
    invoke-direct {p0}, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;->hideLowlightHint()V

    .line 320
    invoke-direct {p0}, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;->hideBandingHint()V

    const-wide/16 v0, -0x1

    .line 322
    iput-wide v0, p0, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;->mLastCaptureTime:J

    .line 323
    iput-boolean v2, p0, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;->mIsShutterGuideLayoutShowing:Z

    .line 324
    iput-boolean v2, p0, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;->mGuideViewShowing:Z

    .line 325
    iput-wide v0, p0, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;->mLastBirdBMCaptureTime:J

    .line 326
    iput-boolean v2, p0, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;->mIsZooming:Z

    .line 327
    iput-boolean v2, p0, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;->mIsWheelZoomShowing:Z

    return-void
.end method

.method public removeMotionCaptureInfo(J)V
    .registers 3

    .line 580
    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;->findCaptureInfoByTimestamp(J)Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager$MotionCaptureInfo;

    move-result-object p1

    .line 581
    iget-object p0, p0, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;->mMotionCaptureInfos:Ljava/util/concurrent/ConcurrentHashMap;

    iget-wide p1, p1, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager$MotionCaptureInfo;->mTimestamp:J

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public resume()V
    .registers 5

    const/4 v0, 0x0

    .line 297
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;->mIsPaused:Z

    .line 298
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;->mResetSleepPageTime:J

    .line 299
    iget-object v0, p0, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;->mMainHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;->mResetSleepPageRunnable:Ljava/lang/Runnable;

    const-wide/32 v2, 0x3a980

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 300
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/utils/CustomConfigUtil;->isFlashSnapV2_24M()Z

    move-result v0

    if-nez v0, :cond_24

    .line 301
    iget-object p0, p0, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/16 v0, 0x7b

    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    :cond_24
    return-void
.end method

.method public setModeStatusListener(Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;)V
    .registers 2

    .line 331
    iput-object p1, p0, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;->mModeStatusListener:Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;

    return-void
.end method

.method public setSilentCaptureTimeStampInfo(J)V
    .registers 3

    .line 521
    iget-object p0, p0, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;->mCurrentMotionCaptureInfo:Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager$MotionCaptureInfo;

    iput-wide p1, p0, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager$MotionCaptureInfo;->mSilentCaptureTimestamp:J

    return-void
.end method

.method public unInit()V
    .registers 3

    .line 175
    iget-object v0, p0, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;->mMainHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 176
    iget-object v0, p0, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUI;->setModeNotifyCameraOperateActionCallBack(Lcom/transsion/camera/app/common/mode/IModeNotifyCameraOperateActionCallback;)V

    .line 177
    iget-object p0, p0, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p0, v1}, Lcom/transsion/camera/app/common/IAppUI;->setUserInteractionListener(Lcom/transsion/camera/app/common/IAppUIListener$IUserInteractionListener;)V

    .line 178
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setMotionSnapInfo(Lcom/transsion/camera/utils/analytics/AnalyticsUtils$MotionSnapInfo;)V

    return-void
.end method
