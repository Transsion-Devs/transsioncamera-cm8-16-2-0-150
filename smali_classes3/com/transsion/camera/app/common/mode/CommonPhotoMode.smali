.class public abstract Lcom/transsion/camera/app/common/mode/CommonPhotoMode;
.super Lcom/transsion/camera/app/common/mode/CameraMode;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/ICameraControl$IContinuousShotControl;
.implements Lcom/transsion/camera/app/common/mode/IRecordCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/common/mode/CommonPhotoMode$CaptureHandler;,
        Lcom/transsion/camera/app/common/mode/CommonPhotoMode$IContinuousShot;,
        Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;
    }
.end annotation


# static fields
.field private static final DELAY_CAPTURE_TIME:I = 0x12c

.field private static final DELAY_STOP_SHUTTER_PROCESS_TIME:I = 0x4b0

.field private static final LIVE_PHOTO_HINT_SHOW_DURATION:I = 0x5dc

.field private static final LIVE_PHOTO_SAT_SWITCH_CAPTURE_DELAY_TIME:I = 0x1f4

.field private static final MACRO_CAMERA_ACTIVE:I = 0x1

.field private static final MAX_SHUTTER_CLICK_INTERVAL:J = 0x7d0L

.field private static final MESSAGE_DELAY_CAPTURE:I = 0x1

.field private static final MESSAGE_DELAY_LONG_CLICK_END:I = 0x2

.field private static final MESSAGE_DELAY_SHUTTER_PROCESS_END:I = 0x3

.field protected static final RATIO_16_9:D = 1.7777777777777777

.field protected static final RATIO_18_75_9:D = 2.0833333333333335

.field protected static final RATIO_18_9:D = 2.0

.field protected static final RATIO_19_9:D = 2.111111111111111

.field public static final RATIO_1_1:D = 1.0

.field protected static final RATIO_20_5_9:D = 2.2777777777777777

.field public static final RATIO_4_3:D = 1.3333333333333333

.field public static final SHUTTER_ACTION_CANCEL:I = 0x4

.field public static final SHUTTER_ACTION_CLICK:I = 0x2

.field public static final SHUTTER_ACTION_DOWN:I = 0x0

.field public static final SHUTTER_ACTION_LONG:I = 0x3

.field public static final SHUTTER_ACTION_UP:I = 0x1

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

.field private static final THUMBNAIL_DEFAULT_TARGET_WIDTH:I = 0x200

.field private static final THUMBNAIL_JPEG_QUALITY:I = 0x4b

.field private static final THUMBNAIL_TARGET_WIDTH:I = 0x100


# instance fields
.field private isInSmoothZoom:Z

.field private mAutoBackLimitBV:I

.field private mCSNotSupportHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

.field private mCaptureAnimationByThumbnail:Z

.field private mCaptureHandler:Lcom/transsion/camera/app/common/mode/CommonPhotoMode$CaptureHandler;

.field protected mCaptureOrientation:I

.field private final mCaptureState:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/transsion/camera/adapter/CameraProxy$ICameraCaptureState;",
            ">;"
        }
    .end annotation
.end field

.field protected mCapturingAddProcess:Z

.field protected volatile mCapturingNumber:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mContinuousHideSaveAnimation:Z

.field private mContinuousShot:Lcom/transsion/camera/app/common/mode/CommonPhotoMode$IContinuousShot;

.field protected mContinuousShotSupport:Z

.field private mCurrentFocusState:Ljava/lang/String;

.field protected mDeferOnNextCapAfterJpeg:Z

.field protected mFlashSnapLiteEnable:Z

.field protected mFpsRangeReduce:Z

.field private final mFrameResultCallback:Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;

.field private mGoldWatermarkStyles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mGoldWatermarks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field protected mGroupCaptureManager:Lcom/transsion/camera/app/common/groupcapture/GroupCaptureManager;

.field protected mIs108MInLowPlatform:Z

.field private mIsAdaptLowPlatform:Z

.field private mIsBGOffLineEnable:Z

.field private mIsBGServiceEnable:Z

.field private mIsBgCaptureSupport:Z

.field private volatile mIsInContinuousShot:Z

.field private mIsLowLight:Z

.field protected mIsNeedAppend:Z

.field private mIsOfflineEnable:Z

.field private mIsProcessingUriCreated:Z

.field protected mIsShowSelfTimer:Z

.field private mIsShowSelfTimerDelay:Z

.field private mIsSuperNightLiteOn:Z

.field protected mIsSupportPostView:Z

.field protected volatile mIsTimeLongAlgoSceen:Z

.field private mLastMacroSwitchValue:I

.field private mLastStreamId:I

.field private mLivePhotoManager:Lcom/transsion/camera/app/common/livephoto/LivePhotoManager;

.field private mLivePhotoShootingHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

.field private mLiveShotStopped:Z

.field private final mMergeWatermarkLock:Ljava/lang/Object;

.field private mModeBgCaptureListener:Lcom/transsion/camera/app/common/IApp$ModeBgCaptureListener;

.field protected mMotionCaptureManager:Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;

.field private mNeedCreateVideoSurface:Z

.field protected volatile mOfflineCapturingNumber:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mParameters:Lcom/transsion/camera/app/common/mode/ProcesserParameters;

.field protected mPhotoHelper:Lcom/transsion/camera/app/common/mode/CommonPhotoHelper;

.field private volatile mPostViewCallbackNumber:Ljava/util/concurrent/atomic/AtomicInteger;

.field protected mPreOrientation:I

.field mPreviewCoverCallback:Lcom/transsion/camera/adapter/CameraProxy$PreviewCoverCallback;

.field private mQCSampleId:I

.field private mQCSound:Lcom/transsion/camera/utils/sound/IActionSound;

.field private mQCSoundLoaded:Z

.field private final mQCSoundLock:Ljava/lang/Object;

.field protected mResumed:Z

.field private mSendTakePictureSuccess:Z

.field private final mShot2ShotCallback:Lcom/transsion/camera/adapter/CameraProxy$Shot2ShotCallback;

.field protected volatile mShot2ShotLeftNumber:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mShot2seeSyncThumbnail:Z

.field private mShot2shotMaxCacheNumber:I

.field private mShot2shotMaxNumberForEnableUI:I

.field private mShutterActionState:I

.field private mShutterClickInterval:J

.field private mShutterLongClick:Z

.field private mShutterSoundAssetsFileName:Ljava/lang/String;

.field private mShutterStarting:Z

.field private final mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

.field protected mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

.field protected mStatusResponder:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

.field private mStorageHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

.field private mSuperNightCaptureStatus:Ljava/lang/String;

.field protected mSupportNewCaptureAnimation:Z

.field protected mSwitchByUser:Z

.field private mTemperatureHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

.field private mThumbNailType:I

.field private mThumbnailBitmap:Landroid/graphics/Bitmap;

.field private mThumbnailTransition:Lcom/transsion/camera/app/common/thumbnailtransition/IThumbnailTransition;

.field private mTimestampInfo:Lcom/transsion/camera/app/common/mode/TimestampInfo;

.field private final mVideoClipSavingCallback:Lcom/transsion/camera/app/common/livephoto/ILiveVideoSaveCallback;

.field mYUVCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraPreviewDataCallback;

.field private final mZoomStatusRunnable:Ljava/lang/Runnable;


# direct methods
.method public static synthetic $r8$lambda$EvnYJQLzqQtR_mdnmbCXVV-o-0I(Lcom/transsion/camera/app/common/mode/CommonPhotoMode;Lcom/transsion/camera/utils/sound/IActionSound;I)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->lambda$loadQCSound$7(Lcom/transsion/camera/utils/sound/IActionSound;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$Gj5LyztMcH9YDK87BOPzvghlTm8(Lcom/transsion/camera/app/common/mode/CommonPhotoMode;Z)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->lambda$checkCaptureResult$5(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$ImjSEFa2nVISj3K7ilBRFjHrj0I(Lcom/transsion/camera/app/common/mode/CommonPhotoMode;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->lambda$onSettingChanged$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$Pyu_PyV4uXQZy3URTtW6LcqMmhc(Lcom/transsion/camera/app/common/mode/CommonPhotoMode;Z)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->lambda$onShutterStart$4(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$Q663HnjY1-W7moMHMY8OKo7iYy8(Lcom/transsion/camera/app/common/mode/CommonPhotoMode;Lcom/transsion/camera/utils/sound/IActionSound;I)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->lambda$loadQCSound$6(Lcom/transsion/camera/utils/sound/IActionSound;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$gnvUXfPox-t3NzFDP2GHIl4ovU0(Lcom/transsion/camera/app/common/mode/CommonPhotoMode;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->lambda$new$3()V

    return-void
.end method

.method public static synthetic $r8$lambda$j10y9WbCMzOHVtzLmnWc2ZWzpLo(Lcom/transsion/camera/app/common/mode/CommonPhotoMode;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->lambda$new$2(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$kySGYJlypox_M900o61T-Hhx87c(Landroid/graphics/ImageDecoder;Landroid/graphics/ImageDecoder$ImageInfo;Landroid/graphics/ImageDecoder$Source;)V
    .registers 3

    const/4 p1, 0x1

    .line 3415
    invoke-virtual {p0, p1}, Landroid/graphics/ImageDecoder;->setAllocator(I)V

    .line 3416
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->getBitmapConfig()Landroid/graphics/Bitmap$Config;

    move-result-object p1

    sget-object p2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    if-ne p1, p2, :cond_10

    const/4 p1, 0x0

    .line 3417
    invoke-virtual {p0, p1}, Landroid/graphics/ImageDecoder;->setMemorySizePolicy(I)V

    :cond_10
    return-void
.end method

.method public static synthetic $r8$lambda$vh3_0aPSl798olEhCGOBvI49Zts(Lcom/transsion/camera/app/common/mode/CommonPhotoMode;Landroid/hardware/camera2/CaptureResult;Landroid/util/Size;Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;)V
    .registers 4

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->doOnFrameResultCallback(Landroid/hardware/camera2/CaptureResult;Landroid/util/Size;Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;)V

    return-void
.end method

.method public static synthetic $r8$lambda$zTO17-E6cJgF96qF5F5ejkpJJiM(Lcom/transsion/camera/app/common/mode/CommonPhotoMode;[BZJ)V
    .registers 5

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->lambda$init$0([BZJ)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmCaptureAnimationByThumbnail(Lcom/transsion/camera/app/common/mode/CommonPhotoMode;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mCaptureAnimationByThumbnail:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmCaptureHandler(Lcom/transsion/camera/app/common/mode/CommonPhotoMode;)Lcom/transsion/camera/app/common/mode/CommonPhotoMode$CaptureHandler;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mCaptureHandler:Lcom/transsion/camera/app/common/mode/CommonPhotoMode$CaptureHandler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCaptureState(Lcom/transsion/camera/app/common/mode/CommonPhotoMode;)Ljava/util/concurrent/atomic/AtomicReference;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mCaptureState:Ljava/util/concurrent/atomic/AtomicReference;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmContinuousHideSaveAnimation(Lcom/transsion/camera/app/common/mode/CommonPhotoMode;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mContinuousHideSaveAnimation:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsAdaptLowPlatform(Lcom/transsion/camera/app/common/mode/CommonPhotoMode;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mIsAdaptLowPlatform:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsBGOffLineEnable(Lcom/transsion/camera/app/common/mode/CommonPhotoMode;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mIsBGOffLineEnable:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsProcessingUriCreated(Lcom/transsion/camera/app/common/mode/CommonPhotoMode;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mIsProcessingUriCreated:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmLivePhotoManager(Lcom/transsion/camera/app/common/mode/CommonPhotoMode;)Lcom/transsion/camera/app/common/livephoto/LivePhotoManager;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mLivePhotoManager:Lcom/transsion/camera/app/common/livephoto/LivePhotoManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLiveShotStopped(Lcom/transsion/camera/app/common/mode/CommonPhotoMode;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mLiveShotStopped:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmPostViewCallbackNumber(Lcom/transsion/camera/app/common/mode/CommonPhotoMode;)Ljava/util/concurrent/atomic/AtomicInteger;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mPostViewCallbackNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmShot2shotMaxCacheNumber(Lcom/transsion/camera/app/common/mode/CommonPhotoMode;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mShot2shotMaxCacheNumber:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmShot2shotMaxNumberForEnableUI(Lcom/transsion/camera/app/common/mode/CommonPhotoMode;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mShot2shotMaxNumberForEnableUI:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmThumbNailType(Lcom/transsion/camera/app/common/mode/CommonPhotoMode;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mThumbNailType:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmThumbnailBitmap(Lcom/transsion/camera/app/common/mode/CommonPhotoMode;)Landroid/graphics/Bitmap;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mThumbnailBitmap:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmIsProcessingUriCreated(Lcom/transsion/camera/app/common/mode/CommonPhotoMode;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mIsProcessingUriCreated:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmLiveShotStopped(Lcom/transsion/camera/app/common/mode/CommonPhotoMode;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mLiveShotStopped:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmThumbnailBitmap(Lcom/transsion/camera/app/common/mode/CommonPhotoMode;Landroid/graphics/Bitmap;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mThumbnailBitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method static bridge synthetic -$$Nest$mdoProcessingMedia(Lcom/transsion/camera/app/common/mode/CommonPhotoMode;Landroid/graphics/Bitmap;ILcom/transsion/camera/app/common/mode/TimestampInfo;Z)V
    .registers 5

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->doProcessingMedia(Landroid/graphics/Bitmap;ILcom/transsion/camera/app/common/mode/TimestampInfo;Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mprocessQCThumbnail(Lcom/transsion/camera/app/common/mode/CommonPhotoMode;ILandroid/graphics/Bitmap;Lcom/transsion/camera/app/common/mode/TimestampInfo;)I
    .registers 4

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->processQCThumbnail(ILandroid/graphics/Bitmap;Lcom/transsion/camera/app/common/mode/TimestampInfo;)I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$msuperNightLiteOff(Lcom/transsion/camera/app/common/mode/CommonPhotoMode;)Z
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->superNightLiteOff()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;
    .registers 1

    .line 0
    sget-object v0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 161
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "CommonPhotoMode"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 6

    .line 445
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraMode;-><init>(Ljava/lang/String;)V

    .line 181
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v0, Lcom/transsion/camera/adapter/NullCameraCaptureState;

    invoke-direct {v0}, Lcom/transsion/camera/adapter/NullCameraCaptureState;-><init>()V

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mCaptureState:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 p1, 0x0

    .line 184
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mIsNeedAppend:Z

    .line 189
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mIsBgCaptureSupport:Z

    const-wide/16 v0, 0x0

    .line 192
    iput-wide v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mShutterClickInterval:J

    const/4 v0, 0x0

    .line 195
    iput-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mPhotoHelper:Lcom/transsion/camera/app/common/mode/CommonPhotoHelper;

    const/4 v0, -0x1

    .line 196
    iput v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mPreOrientation:I

    .line 197
    iput v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mCaptureOrientation:I

    .line 198
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mShutterLongClick:Z

    .line 199
    new-instance v1, Lcom/transsion/camera/app/common/ui/HintInfo;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/transsion/camera/app/common/ui/HintInfo;-><init>(I)V

    iput-object v1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mStorageHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    .line 200
    new-instance v1, Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-direct {v1, v2}, Lcom/transsion/camera/app/common/ui/HintInfo;-><init>(I)V

    iput-object v1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mTemperatureHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    .line 201
    new-instance v1, Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-direct {v1, v2}, Lcom/transsion/camera/app/common/ui/HintInfo;-><init>(I)V

    iput-object v1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mCSNotSupportHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    .line 202
    new-instance v1, Lcom/transsion/camera/app/common/ui/HintInfo;

    const/16 v3, 0x67

    invoke-direct {v1, v2, v3}, Lcom/transsion/camera/app/common/ui/HintInfo;-><init>(II)V

    iput-object v1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mLivePhotoShootingHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    .line 203
    invoke-static {p1}, Lcom/transsion/camera/utils/FeatureSupport;->getDeferOnNextCapAfterJpeg(I)I

    move-result v1

    if-ne v1, v2, :cond_48

    goto :goto_49

    :cond_48
    move v2, p1

    :goto_49
    iput-boolean v2, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mDeferOnNextCapAfterJpeg:Z

    .line 205
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v1, p1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mOfflineCapturingNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 206
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v1, p1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mCapturingNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 207
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v1, p1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mShot2ShotLeftNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 220
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mIsSupportPostView:Z

    .line 221
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v1, p1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mPostViewCallbackNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 222
    const-string v1, "INACTIVE"

    iput-object v1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mCurrentFocusState:Ljava/lang/String;

    .line 223
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mSwitchByUser:Z

    .line 226
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mNeedCreateVideoSurface:Z

    const/4 v1, 0x2

    .line 227
    iput v1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mThumbNailType:I

    .line 228
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mIsTimeLongAlgoSceen:Z

    .line 229
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mIsProcessingUriCreated:Z

    .line 230
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mCaptureAnimationByThumbnail:Z

    .line 237
    iput v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mShutterActionState:I

    .line 238
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mSendTakePictureSuccess:Z

    .line 240
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mQCSoundLock:Ljava/lang/Object;

    .line 242
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mQCSoundLoaded:Z

    .line 243
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mShot2seeSyncThumbnail:Z

    .line 246
    const-string v1, "sound_effect_default"

    iput-object v1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mShutterSoundAssetsFileName:Ljava/lang/String;

    .line 247
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mIsLowLight:Z

    .line 248
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mIsSuperNightLiteOn:Z

    .line 254
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mGoldWatermarks:Ljava/util/Map;

    .line 255
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mGoldWatermarkStyles:Ljava/util/List;

    .line 256
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mIs108MInLowPlatform:Z

    .line 257
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mFpsRangeReduce:Z

    .line 258
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mCapturingAddProcess:Z

    .line 259
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mSupportNewCaptureAnimation:Z

    .line 262
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mMergeWatermarkLock:Ljava/lang/Object;

    .line 267
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mFlashSnapLiteEnable:Z

    .line 271
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mIsInContinuousShot:Z

    .line 272
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mContinuousHideSaveAnimation:Z

    .line 286
    new-instance v1, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$1;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$1;-><init>(Lcom/transsion/camera/app/common/mode/CommonPhotoMode;)V

    iput-object v1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mShot2ShotCallback:Lcom/transsion/camera/adapter/CameraProxy$Shot2ShotCallback;

    .line 916
    new-instance v1, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$2;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$2;-><init>(Lcom/transsion/camera/app/common/mode/CommonPhotoMode;)V

    iput-object v1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mYUVCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraPreviewDataCallback;

    .line 926
    new-instance v1, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$$ExternalSyntheticLambda2;-><init>(Lcom/transsion/camera/app/common/mode/CommonPhotoMode;)V

    iput-object v1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    .line 1003
    new-instance v1, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$$ExternalSyntheticLambda3;-><init>(Lcom/transsion/camera/app/common/mode/CommonPhotoMode;)V

    iput-object v1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mFrameResultCallback:Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;

    .line 1004
    iput v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mLastStreamId:I

    .line 1005
    iput v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mLastMacroSwitchValue:I

    .line 1007
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->isInSmoothZoom:Z

    .line 1061
    new-instance p1, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$$ExternalSyntheticLambda4;

    invoke-direct {p1, p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$$ExternalSyntheticLambda4;-><init>(Lcom/transsion/camera/app/common/mode/CommonPhotoMode;)V

    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mZoomStatusRunnable:Ljava/lang/Runnable;

    .line 3490
    new-instance p1, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$4;

    invoke-direct {p1, p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$4;-><init>(Lcom/transsion/camera/app/common/mode/CommonPhotoMode;)V

    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mVideoClipSavingCallback:Lcom/transsion/camera/app/common/livephoto/ILiveVideoSaveCallback;

    .line 3548
    new-instance p1, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$5;

    invoke-direct {p1, p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$5;-><init>(Lcom/transsion/camera/app/common/mode/CommonPhotoMode;)V

    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mPreviewCoverCallback:Lcom/transsion/camera/adapter/CameraProxy$PreviewCoverCallback;

    return-void
.end method

.method private actionToString(I)Ljava/lang/String;
    .registers 3

    if-eqz p1, :cond_31

    const/4 p0, 0x1

    if-eq p1, p0, :cond_2e

    const/4 p0, 0x2

    if-eq p1, p0, :cond_2b

    const/4 p0, 0x3

    if-eq p1, p0, :cond_28

    const/4 p0, 0x4

    if-eq p1, p0, :cond_25

    .line 3359
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "UNKNOWN("

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 3357
    :cond_25
    const-string p0, "SHUTTER_ACTION_CANCEL"

    return-object p0

    .line 3355
    :cond_28
    const-string p0, "SHUTTER_ACTION_LONG"

    return-object p0

    .line 3353
    :cond_2b
    const-string p0, "SHUTTER_ACTION_CLICK"

    return-object p0

    .line 3351
    :cond_2e
    const-string p0, "SHUTTER_ACTION_UP"

    return-object p0

    .line 3349
    :cond_31
    const-string p0, "SHUTTER_ACTION_DOWN"

    return-object p0
.end method

.method private doOnFrameResultCallback(Landroid/hardware/camera2/CaptureResult;Landroid/util/Size;Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;)V
    .registers 10

    .line 1009
    invoke-interface {p3, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->checkAutoMacroSwitchResult(Landroid/hardware/camera2/CaptureResult;)[I

    move-result-object p2

    const/4 v0, 0x0

    const/4 v1, -0x1

    if-nez p2, :cond_a

    move p2, v1

    goto :goto_c

    .line 1010
    :cond_a
    aget p2, p2, v0

    .line 1011
    :goto_c
    invoke-interface {p3, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->checkBrightnessResult(Landroid/hardware/camera2/CaptureResult;)[I

    .line 1012
    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->isSatCamera()Z

    move-result v2

    if-eqz v2, :cond_76

    .line 1013
    invoke-interface {p3, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->checkZoomRatio(Landroid/hardware/camera2/CaptureResult;)F

    move-result v2

    .line 1014
    iget-object v3, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v4, "key_camera_zoom"

    invoke-interface {v3, v4}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_46

    .line 1015
    invoke-direct {p0, v2, v3}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->isZoomRatioChanged(FLjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_46

    const/4 v2, 0x1

    .line 1016
    iput-boolean v2, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->isInSmoothZoom:Z

    .line 1017
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->currentModeSupportLivePhoto()Z

    move-result v2

    if-eqz v2, :cond_76

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->isLivePhotoOn()Z

    move-result v2

    if-eqz v2, :cond_76

    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz v2, :cond_76

    .line 1018
    invoke-interface {v2}, Lcom/transsion/camera/app/common/IAppUI;->getMainHandler()Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mZoomStatusRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_76

    .line 1021
    :cond_46
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->currentModeSupportLivePhoto()Z

    move-result v2

    if-eqz v2, :cond_74

    .line 1022
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->isLivePhotoOn()Z

    move-result v2

    if-eqz v2, :cond_74

    iget-boolean v2, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->isInSmoothZoom:Z

    if-eqz v2, :cond_74

    .line 1023
    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz v2, :cond_76

    invoke-interface {v2}, Lcom/transsion/camera/app/common/IAppUI;->getMainHandler()Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mZoomStatusRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v2

    if-nez v2, :cond_76

    .line 1024
    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v2}, Lcom/transsion/camera/app/common/IAppUI;->getMainHandler()Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mZoomStatusRunnable:Ljava/lang/Runnable;

    const-wide/16 v4, 0x1f4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_76

    .line 1028
    :cond_74
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->isInSmoothZoom:Z

    .line 1036
    :cond_76
    :goto_76
    invoke-direct {p0, p1, p3}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->parserValue(Landroid/hardware/camera2/CaptureResult;Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;)V

    .line 1037
    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->isSatCamera()Z

    move-result v2

    if-nez v2, :cond_87

    .line 1038
    iget p1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mLastStreamId:I

    invoke-virtual {p0, p1, v1, p2}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->onSATStreamIdChanged(III)V

    .line 1039
    iput v1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mLastStreamId:I

    return-void

    .line 1042
    :cond_87
    iget v1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mLastMacroSwitchValue:I

    if-eq v1, p2, :cond_92

    .line 1043
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v1}, Lcom/transsion/camera/app/common/IAppUI;->updateTopBarUI()V

    .line 1044
    iput p2, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mLastMacroSwitchValue:I

    .line 1046
    :cond_92
    invoke-interface {p3, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->checkStreamIdResult(Landroid/hardware/camera2/CaptureResult;)[I

    move-result-object p1

    if-eqz p1, :cond_aa

    .line 1047
    array-length p3, p1

    if-lez p3, :cond_aa

    .line 1048
    aget p1, p1, v0

    .line 1049
    iget p3, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mLastStreamId:I

    if-eq p3, p1, :cond_aa

    iget-boolean v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mResumed:Z

    if-eqz v0, :cond_aa

    .line 1050
    invoke-virtual {p0, p3, p1, p2}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->onSATStreamIdChanged(III)V

    .line 1051
    iput p1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mLastStreamId:I

    :cond_aa
    return-void
.end method

.method private doOnPictureTaken([BZ)V
    .registers 9

    .line 1653
    sget-object v0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doOnPictureTaken() called with: isBGImage = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v0, v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p2, :cond_b9

    .line 1655
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->isValid()Z

    move-result p2

    .line 1657
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mImageProcessor:Lcom/transsion/camera/app/common/mode/IImageProcessor;

    check-cast v0, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/mode/ImageProcessor;->getFirstCaptureInfoType()I

    move-result v0

    if-gtz v0, :cond_33

    goto :goto_4c

    .line 1661
    :cond_33
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mIsSupportPostView:Z

    if-eqz v0, :cond_4b

    iget v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mThumbNailType:I

    if-eq v0, v2, :cond_4b

    .line 1662
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mPostViewCallbackNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-gtz v0, :cond_44

    goto :goto_45

    :cond_44
    move v2, v1

    .line 1663
    :goto_45
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mPostViewCallbackNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    goto :goto_4c

    :cond_4b
    move v2, v1

    :goto_4c
    if-eqz p2, :cond_53

    if-eqz v2, :cond_53

    .line 1667
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->updateThumbnailView([B)V

    .line 1669
    :cond_53
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mCapturingNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p1

    if-lez p1, :cond_61

    .line 1670
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mCapturingNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    goto :goto_66

    .line 1672
    :cond_61
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mCapturingNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 1674
    :goto_66
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mOfflineCapturingNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p1

    if-lez p1, :cond_74

    .line 1675
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mOfflineCapturingNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    goto :goto_79

    .line 1677
    :cond_74
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mOfflineCapturingNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 1679
    :goto_79
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->isValid()Z

    move-result p1

    if-eqz p1, :cond_b8

    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mCapturingNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p1

    if-nez p1, :cond_b8

    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mShot2ShotLeftNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p1

    if-nez p1, :cond_b8

    .line 1680
    invoke-static {}, Lcom/transsion/camera/app/common/isphidl/ISPHIDLController;->getInstance()Lcom/transsion/camera/app/common/isphidl/ISPHIDLController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/isphidl/ISPHIDLController;->isPostAlgoShot2Shoting()Z

    move-result p1

    if-nez p1, :cond_b8

    iget-boolean p1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mShutterStarting:Z

    if-nez p1, :cond_b8

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->isSupport200M()Z

    move-result p1

    if-nez p1, :cond_b8

    .line 1681
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/16 p2, 0xe

    invoke-interface {p1, p2}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 1682
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mStatusResponder:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    const-string p2, "capture_state"

    const-string v0, "capture_end"

    invoke-virtual {p1, p2, v0}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1683
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->takePictureEnded()V

    :cond_b8
    return-void

    .line 1686
    :cond_b9
    iget-object p2, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-virtual {p2}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->takePictureEnded()V

    .line 1687
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->isValid()Z

    move-result p2

    .line 1689
    iget-object v3, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mImageProcessor:Lcom/transsion/camera/app/common/mode/IImageProcessor;

    check-cast v3, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;

    invoke-virtual {v3}, Lcom/transsion/camera/app/common/mode/ImageProcessor;->getFirstCaptureInfoType()I

    move-result v3

    .line 1690
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[CapturePerformance] notifyPictureTaken, type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ",mPostViewCallbackNumber: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mPostViewCallbackNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-gtz v3, :cond_f0

    move v1, v2

    goto :goto_106

    .line 1695
    :cond_f0
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mIsSupportPostView:Z

    if-eqz v0, :cond_106

    iget v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mThumbNailType:I

    if-eq v0, v2, :cond_106

    .line 1696
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mPostViewCallbackNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-gtz v0, :cond_101

    move v1, v2

    .line 1697
    :cond_101
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mPostViewCallbackNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    :cond_106
    :goto_106
    if-eqz p2, :cond_10d

    if-eqz v1, :cond_10d

    .line 1701
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->updateThumbnailView([B)V

    .line 1703
    :cond_10d
    invoke-virtual {p0, v2}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->checkCaptureResult(Z)V

    return-void
.end method

.method private doProcessingMedia(Landroid/graphics/Bitmap;ILcom/transsion/camera/app/common/mode/TimestampInfo;)V
    .registers 5

    const/4 v0, 0x1

    .line 2257
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->doProcessingMedia(Landroid/graphics/Bitmap;ILcom/transsion/camera/app/common/mode/TimestampInfo;Z)V

    return-void
.end method

.method private doProcessingMedia(Landroid/graphics/Bitmap;ILcom/transsion/camera/app/common/mode/TimestampInfo;Z)V
    .registers 10

    .line 2261
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[doProcessingMedia] start, mIsTimeLongAlgoSceen:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mIsTimeLongAlgoSceen:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mPhotosSupportProcessingApi:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mPhotosSupportProcessingApi:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 2262
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mPhotosSupportProcessingApi:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_c0

    .line 2263
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mMergeWatermarkLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2264
    :try_start_2a
    iget v2, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mCaptureOrientation:I

    invoke-direct {p0, p1, v2}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mergeGoldWaterMark(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 2265
    monitor-exit v0
    :try_end_31
    .catchall {:try_start_2a .. :try_end_31} :catchall_bd

    .line 2266
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mThumbnailTransition:Lcom/transsion/camera/app/common/thumbnailtransition/IThumbnailTransition;

    if-eqz v0, :cond_4c

    .line 2267
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v2, "[doProcessingMedia] start, setThumbnailBitmap"

    invoke-static {v0, v2}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 2268
    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->needMergeGoldWatermark()Ljava/lang/String;

    move-result-object v0

    .line 2269
    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mThumbnailTransition:Lcom/transsion/camera/app/common/thumbnailtransition/IThumbnailTransition;

    const-string v3, "0"

    invoke-static {v3, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/2addr v0, v1

    invoke-interface {v2, p1, v1, v0}, Lcom/transsion/camera/app/common/thumbnailtransition/IThumbnailTransition;->setThumbnailBitmap(Landroid/graphics/Bitmap;ZZ)V

    .line 2271
    :cond_4c
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    if-eqz v0, :cond_65

    .line 2272
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 2273
    iget-boolean v3, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mUseGooglePhotosDefault:Z

    invoke-static {v0, v3}, Lcom/transsion/camera/utils/CameraUtil;->getChoseGallery(Landroid/content/pm/PackageManager;Z)I

    move-result v0

    .line 2274
    iget-object v3, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mPhotoHelper:Lcom/transsion/camera/app/common/mode/CommonPhotoHelper;

    if-eqz v0, :cond_61

    move v0, v1

    goto :goto_62

    :cond_61
    move v0, v2

    :goto_62
    invoke-virtual {v3, v0}, Lcom/transsion/camera/app/common/mode/CommonPhotoHelper;->setChooseGooglePhoto(Z)V

    .line 2277
    :cond_65
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mImageProcessor:Lcom/transsion/camera/app/common/mode/IImageProcessor;

    check-cast v0, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;

    iget-object v3, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->getProcessMode()Lcom/transsion/camera/app/common/provider/ProcessMediaItem$ProcessMode;

    move-result-object v4

    invoke-virtual {v0, v3, p1, v4, p3}, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;->createProcessingMedia(Landroid/content/Context;Landroid/graphics/Bitmap;Lcom/transsion/camera/app/common/provider/ProcessMediaItem$ProcessMode;Lcom/transsion/camera/app/common/mode/TimestampInfo;)Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_cd

    .line 2279
    invoke-static {v1}, Lcom/transsion/camera/app/common/provider/ProcessMediaManager;->setProcessStatus(Z)V

    .line 2280
    iget-object p3, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[doProcessingMedia] createProcessingMedia success, mIsTimeLongAlgoSceen:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mIsTimeLongAlgoSceen:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " uri:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 2281
    iget-object p3, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz p4, :cond_a4

    const/4 p4, 0x2

    if-eq p2, p4, :cond_a3

    iget-boolean p2, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mIsTimeLongAlgoSceen:Z

    if-nez p2, :cond_a4

    :cond_a3
    move v2, v1

    :cond_a4
    invoke-interface {p3, p1, v2}, Lcom/transsion/camera/app/common/IAppUI;->updateProcessingThumbUri(Landroid/net/Uri;Z)V

    .line 2283
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p2

    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setSaveUriId(Ljava/lang/String;)V

    .line 2284
    iget p1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mThumbNailType:I

    if-ne p1, v1, :cond_cd

    iget-boolean p1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mIsTimeLongAlgoSceen:Z

    if-eqz p1, :cond_cd

    .line 2285
    iput-boolean v1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mIsProcessingUriCreated:Z

    return-void

    :catchall_bd
    move-exception p0

    .line 2265
    :try_start_be
    monitor-exit v0
    :try_end_bf
    .catchall {:try_start_be .. :try_end_bf} :catchall_bd

    throw p0

    .line 2289
    :cond_c0
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mImageProcessor:Lcom/transsion/camera/app/common/mode/IImageProcessor;

    check-cast p0, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;->supportProcessingMedia()Z

    move-result p0

    if-eqz p0, :cond_cd

    .line 2290
    invoke-static {v1}, Lcom/transsion/camera/app/common/provider/ProcessMediaManager;->setProcessStatus(Z)V

    :cond_cd
    return-void
.end method

.method private getCameraIdForOpen(Landroid/content/Context;ZLcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)Ljava/lang/String;
    .registers 4

    .line 3178
    invoke-virtual {p0, p1, p3}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->currentSettingSupportSAT(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)Z

    move-result p0

    if-eqz p0, :cond_f

    .line 3179
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/CameraRepository;->getBackSATCamera()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 3181
    :cond_f
    const-string p0, "0"

    return-object p0
.end method

.method private getGoldWatermarkDrawable(I)Landroid/graphics/Bitmap;
    .registers 4

    .line 3414
    :try_start_0
    new-instance v0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$$ExternalSyntheticLambda1;-><init>()V

    .line 3420
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    .line 3421
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-static {p0, p1}, Landroid/graphics/ImageDecoder;->createSource(Landroid/content/res/Resources;I)Landroid/graphics/ImageDecoder$Source;

    move-result-object p0

    .line 3420
    invoke-static {p0, v0}, Landroid/graphics/ImageDecoder;->decodeBitmap(Landroid/graphics/ImageDecoder$Source;Landroid/graphics/ImageDecoder$OnHeaderDecodedListener;)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_13} :catch_14

    return-object p0

    :catch_14
    move-exception p0

    .line 3423
    sget-object p1, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getGoldWatermarkDrawable decode bitmap error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method private getGoldWatermarkDrawableId(Landroid/graphics/Bitmap;I)I
    .registers 6

    .line 3429
    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->needMergeGoldWatermark()Ljava/lang/String;

    move-result-object v0

    .line 3432
    const-string v1, "1"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    const/16 v2, 0xb4

    if-nez v1, :cond_2c

    const-string v1, "3"

    .line 3433
    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_17

    goto :goto_2c

    :cond_17
    if-eqz p2, :cond_1b

    if-ne p2, v2, :cond_28

    .line 3442
    :cond_1b
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    if-eq p2, p1, :cond_28

    .line 3443
    const-string p1, "h_double_line"

    goto :goto_40

    .line 3445
    :cond_28
    const-string/jumbo p1, "v_double_line"

    goto :goto_40

    :cond_2c
    :goto_2c
    if-eqz p2, :cond_30

    if-ne p2, v2, :cond_3d

    .line 3435
    :cond_30
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    if-eq p2, p1, :cond_3d

    .line 3436
    const-string p1, "h_single_line"

    goto :goto_40

    .line 3438
    :cond_3d
    const-string/jumbo p1, "v_single_line"

    .line 3449
    :goto_40
    iget-object p2, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {p2}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getDataStore()Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object p2

    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    .line 3450
    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getDataStore()Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v0

    .line 3449
    const-string v1, "key_pro_watermark_type"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2, v0}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 3451
    sget-object v0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "goldWatermarkStyle = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-eqz p2, :cond_7c

    .line 3452
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mGoldWatermarkStyles:Ljava/util/List;

    invoke-interface {p0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7e

    .line 3453
    :cond_7c
    const-string p2, "0"

    .line 3456
    :cond_7e
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 3457
    invoke-static {}, Lcom/transsion/camera/utils/FeatureSupport;->shouldHideDeviceInfo()Z

    move-result p2

    .line 3458
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "default"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    if-eqz p2, :cond_c5

    .line 3460
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "fans support, defaultName: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 3461
    invoke-static {p1}, Lcom/transsion/camera/utils/CameraUtil;->getWatermarkDrawableId(Ljava/lang/String;)I

    move-result p0

    return p0

    .line 3463
    :cond_c5
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p2

    iget-boolean p2, p2, Lcom/transsion/camera/utils/CustomConfigUtil;->mProWatermarkStylesCustomize:Z

    if-nez p2, :cond_db

    .line 3464
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p2

    iget-boolean p2, p2, Lcom/transsion/camera/utils/CustomConfigUtil;->mProWatermarkBrandCustomize:Z

    if-eqz p2, :cond_d6

    goto :goto_db

    .line 3470
    :cond_d6
    invoke-static {p0, p1}, Lcom/transsion/camera/utils/CameraUtil;->getWatermarkDrawableId(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0

    .line 3465
    :cond_db
    :goto_db
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p2

    invoke-virtual {p2, p0}, Lcom/transsion/camera/utils/CustomConfigUtil;->getWMOptionalResNames(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    .line 3466
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "watermarkCustomize_mergeGoldWatermark: optional names = "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 3467
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p2

    const-string v0, "drawable"

    invoke-virtual {p2, p0, p1, v0}, Lcom/transsion/camera/utils/CustomConfigUtil;->getWatermarkCustomizedResId(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private getLimitedPreviewSizeHeight()I
    .registers 2

    .line 1144
    invoke-static {}, Lcom/transsion/camera/utils/FeatureSupport;->isSupportFoldUI()Z

    move-result v0

    if-eqz v0, :cond_9

    const/16 p0, 0x438

    return p0

    .line 1147
    :cond_9
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->getModeLimitedPreviewSizeHeight()I

    move-result p0

    return p0
.end method

.method private getMinPostViewSizeForSupport(Ljava/util/List;D)Landroid/util/Size;
    .registers 9

    if-eqz p1, :cond_34

    .line 1195
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    if-lez p0, :cond_34

    .line 1196
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    :goto_e
    if-ltz p0, :cond_34

    .line 1197
    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Size;

    .line 1198
    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v1

    int-to-double v1, v1

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v3

    int-to-double v3, v3

    div-double/2addr v1, v3

    sub-double v1, p2, v1

    .line 1199
    invoke-static {v1, v2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v1

    const-wide v3, 0x3f847ae147ae147bL    # 0.01

    cmpg-double v1, v1, v3

    if-gtz v1, :cond_31

    return-object v0

    :cond_31
    add-int/lit8 p0, p0, -0x1

    goto :goto_e

    :cond_34
    const/4 p0, 0x0

    return-object p0
.end method

.method private getOrientationHint(ZZ)I
    .registers 4

    .line 1766
    iget p0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mCaptureOrientation:I

    add-int/lit16 v0, p0, 0x10e

    rem-int/lit16 v0, v0, 0x168

    if-eqz p1, :cond_20

    const/16 p1, 0x10e

    if-eqz p2, :cond_e

    sub-int/2addr p1, p0

    return p1

    :cond_e
    const/16 p2, 0x5a

    if-eqz p0, :cond_1e

    if-eq p0, p2, :cond_1e

    const/16 p2, 0xb4

    if-eq p0, p2, :cond_1d

    if-eq p0, p1, :cond_1b

    goto :goto_20

    :cond_1b
    const/4 p0, 0x0

    return p0

    :cond_1d
    return p1

    :cond_1e
    add-int/2addr p0, p2

    return p0

    :cond_20
    :goto_20
    return v0
.end method

.method private getShutterTypeBySelfTimerValue(Ljava/lang/String;)I
    .registers 3

    .line 947
    const-string v0, "off"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_d

    .line 948
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->getShutterTypeSelftimerOn()I

    move-result p0

    return p0

    .line 950
    :cond_d
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->getShutterTypeSelftimerOff()I

    move-result p0

    return p0
.end method

.method private handleStorageUnmounted()V
    .registers 3

    .line 2613
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mContinuousShot:Lcom/transsion/camera/app/common/mode/CommonPhotoMode$IContinuousShot;

    if-nez v0, :cond_c

    .line 2614
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "mContinuousShot is null"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 2618
    :cond_c
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "handleStorageUnmounted"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 2619
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mContinuousShot:Lcom/transsion/camera/app/common/mode/CommonPhotoMode$IContinuousShot;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$IContinuousShot;->terminateContinuousShot()V

    return-void
.end method

.method private isAIFrameOn()Z
    .registers 2

    .line 3533
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v0, "key_ai_frame"

    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "on"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method private isAIZoomSROn()Z
    .registers 2

    .line 3537
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v0, "key_ai_zoom_sr"

    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "on"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method private isInvalid([B)Z
    .registers 6

    const/4 p0, 0x1

    if-eqz p1, :cond_15

    .line 2334
    array-length v0, p1

    const/16 v1, 0xa

    if-ge v0, v1, :cond_9

    goto :goto_15

    :cond_9
    const/4 v0, 0x0

    move v2, v0

    :goto_b
    if-ge v2, v1, :cond_15

    .line 2338
    aget-byte v3, p1, v2

    if-eqz v3, :cond_12

    return v0

    :cond_12
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_15
    :goto_15
    return p0
.end method

.method private isSatCamera()Z
    .registers 2

    .line 1067
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getCameraId()Ljava/lang/String;

    move-result-object p0

    .line 1068
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/transsion/camera/app/common/CameraRepository;->isBackSATCamera(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private isZoomRatioChanged(FLjava/lang/String;)Z
    .registers 5

    .line 1057
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p0

    iget-boolean p0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mZoomAccuracyEnlarged:Z

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p0, :cond_19

    .line 1058
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    int-to-float p0, p0

    const p2, 0x461c4000    # 10000.0f

    div-float/2addr p0, p2

    cmpl-float p0, p0, p1

    if-eqz p0, :cond_18

    return v1

    :cond_18
    return v0

    :cond_19
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    int-to-float p0, p0

    const/high16 p2, 0x42c80000    # 100.0f

    div-float/2addr p0, p2

    cmpl-float p0, p0, p1

    if-eqz p0, :cond_26

    return v1

    :cond_26
    return v0
.end method

.method private synthetic lambda$checkCaptureResult$5(Z)V
    .registers 7

    .line 2034
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mCapturingNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    .line 2035
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mShot2ShotLeftNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    .line 2036
    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[checkCaptureResult] mCapturingNumber = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "; mShot2ShotLeftNumber = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " , mResumed="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mResumed:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " , mFirstSteadyFrameCome = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mFirstSteadyFrameCome:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 2038
    const-string v2, "capture_state"

    if-nez v0, :cond_c0

    invoke-static {}, Lcom/transsion/camera/utils/FeatureSupport;->isSprdPlatform()Z

    move-result v3

    if-nez v3, :cond_4e

    if-lez v1, :cond_4e

    iget-boolean v3, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mResumed:Z

    if-nez v3, :cond_c0

    .line 2039
    :cond_4e
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v3, "[checkCaptureResult] all of the captures were finished, all ui can be enable"

    invoke-static {p1, v3}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 2040
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mModeBgCaptureListener:Lcom/transsion/camera/app/common/IApp$ModeBgCaptureListener;

    if-eqz p1, :cond_60

    iget-boolean v3, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mResumed:Z

    if-nez v3, :cond_60

    .line 2041
    invoke-interface {p1}, Lcom/transsion/camera/app/common/IApp$ModeBgCaptureListener;->onBgCaptureDone()V

    .line 2043
    :cond_60
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->supportPostAlgoDeferRequest()Z

    move-result p1

    if-eqz p1, :cond_79

    iget-boolean p1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mDeferOnNextCapAfterJpeg:Z

    if-eqz p1, :cond_79

    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mCaptureState:Ljava/util/concurrent/atomic/AtomicReference;

    .line 2044
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/adapter/CameraProxy$ICameraCaptureState;

    invoke-interface {p1}, Lcom/transsion/camera/adapter/CameraProxy$ICameraCaptureState;->isSupportLowQualityMode()Z

    move-result p1

    if-eqz p1, :cond_79

    goto :goto_a7

    .line 2045
    :cond_79
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->isSupport200M()Z

    move-result p1

    if-nez p1, :cond_a7

    .line 2046
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->isTpPictureToVideoSupport()Z

    move-result p1

    if-nez p1, :cond_a0

    invoke-static {}, Lcom/transsion/camera/app/common/isphidl/ISPHIDLController;->getInstance()Lcom/transsion/camera/app/common/isphidl/ISPHIDLController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/isphidl/ISPHIDLController;->isPostAlgoShot2Shoting()Z

    move-result p1

    if-nez p1, :cond_a0

    iget-boolean p1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mShutterStarting:Z

    if-nez p1, :cond_a0

    .line 2047
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->isValid()Z

    move-result p1

    if-eqz p1, :cond_a0

    .line 2048
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/16 v3, 0xe

    invoke-interface {p1, v3}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 2050
    :cond_a0
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mStatusResponder:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    const-string v3, "capture_end"

    invoke-virtual {p1, v2, v3}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2052
    :cond_a7
    :goto_a7
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->resetShot2ShotCount()V

    .line 2053
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mShot2ShotLeftNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 2054
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mCaptureState:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v2, Lcom/transsion/camera/adapter/NullCameraCaptureState;

    invoke-direct {v2}, Lcom/transsion/camera/adapter/NullCameraCaptureState;-><init>()V

    invoke-virtual {p1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    goto/16 :goto_15c

    :cond_c0
    if-eqz p1, :cond_d4

    .line 2056
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->getInstance()Lcom/transsion/camera/app/common/CommonConfigUtil;

    move-result-object p1

    iget-boolean p1, p1, Lcom/transsion/camera/app/common/CommonConfigUtil;->mSkipEnableUIOnPictureTaken:Z

    if-eqz p1, :cond_d4

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->isShot2ShotEnable()Z

    move-result p1

    if-eqz p1, :cond_d4

    .line 2057
    invoke-virtual {p0, v0, v1}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->onCheckCaptureResultEnd(II)V

    return-void

    :cond_d4
    if-nez v1, :cond_15c

    .line 2061
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v3, "[checkCaptureResult] all of shot2shot callback were finished. enable shutter "

    invoke-static {p1, v3}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 2062
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/16 v3, 0x1f

    invoke-interface {p1, v3}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 2063
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mStatusResponder:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    const-string v3, "shot2shot_end"

    invoke-virtual {p1, v2, v3}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2064
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mCaptureState:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/adapter/CameraProxy$ICameraCaptureState;

    invoke-interface {p1}, Lcom/transsion/camera/adapter/CameraProxy$ICameraCaptureState;->isSupportLowQualityMode()Z

    move-result p1

    const/4 v2, 0x1

    if-nez p1, :cond_10d

    iget-boolean p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mPhotosSupportProcessingApi:Z

    if-eqz p1, :cond_10d

    iget-boolean p1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mIsTimeLongAlgoSceen:Z

    if-eqz p1, :cond_10d

    iget p1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mThumbNailType:I

    if-ne p1, v2, :cond_10d

    .line 2066
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/16 v3, 0x97

    invoke-interface {p1, v3}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 2069
    :cond_10d
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz p1, :cond_15c

    iget p1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mShot2shotMaxNumberForEnableUI:I

    if-gt v0, p1, :cond_15c

    .line 2070
    iget-boolean p1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mIsBGOffLineEnable:Z

    if-eqz p1, :cond_14b

    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    if-eqz p1, :cond_14b

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->getOfflineSessionCount()I

    move-result p1

    invoke-static {}, Lcom/transsion/camera/app/common/bgservice/BGServiceController;->getInstance()Lcom/transsion/camera/app/common/bgservice/BGServiceController;

    if-lt p1, v2, :cond_14b

    .line 2071
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[checkCaptureResult] OfflineSessionCount is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-virtual {v3}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->getOfflineSessionCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " , action_shot_2_shot_end_enable_ui discard"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 2072
    invoke-virtual {p0, v0, v1}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->onCheckCaptureResultEnd(II)V

    return-void

    .line 2076
    :cond_14b
    iget-boolean p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mFirstSteadyFrameCome:Z

    if-eqz p1, :cond_15c

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->isTpPictureToVideoSupport()Z

    move-result p1

    if-nez p1, :cond_15c

    .line 2077
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/16 v2, 0x9c

    invoke-interface {p1, v2}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 2082
    :cond_15c
    :goto_15c
    invoke-virtual {p0, v0, v1}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->onCheckCaptureResultEnd(II)V

    return-void
.end method

.method private synthetic lambda$init$0([BZJ)V
    .registers 12

    .line 509
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->doOnPictureTaken([BZ)V

    .line 510
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mImageProcessor:Lcom/transsion/camera/app/common/mode/IImageProcessor;

    move-object v1, v0

    check-cast v1, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;

    const/4 v3, 0x0

    move-object v2, p1

    move v4, p2

    move-wide v5, p3

    invoke-virtual/range {v1 .. v6}, Lcom/transsion/camera/app/common/mode/ImageProcessor;->saveJpegToFile([BLandroid/graphics/Bitmap;ZJ)V

    .line 511
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mGroupCaptureManager:Lcom/transsion/camera/app/common/groupcapture/GroupCaptureManager;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/groupcapture/GroupCaptureManager;->hasPendingCapture()Z

    move-result p1

    if-nez p1, :cond_1f

    .line 512
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mImageProcessor:Lcom/transsion/camera/app/common/mode/IImageProcessor;

    check-cast p0, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/ImageProcessor;->setPictureCallbackReleasePending(Z)V

    :cond_1f
    return-void
.end method

.method private synthetic lambda$loadQCSound$6(Lcom/transsion/camera/utils/sound/IActionSound;I)V
    .registers 5

    .line 3251
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mQCSoundLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3252
    :try_start_3
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mQCSound:Lcom/transsion/camera/utils/sound/IActionSound;

    if-nez v1, :cond_d

    .line 3253
    invoke-interface {p1, p2}, Lcom/transsion/camera/utils/sound/IActionSound;->unload(I)V

    goto :goto_f

    :catchall_b
    move-exception p0

    goto :goto_11

    .line 3255
    :cond_d
    iput p2, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mQCSampleId:I

    .line 3257
    :goto_f
    monitor-exit v0

    return-void

    :goto_11
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_b

    throw p0
.end method

.method private synthetic lambda$loadQCSound$7(Lcom/transsion/camera/utils/sound/IActionSound;I)V
    .registers 5

    .line 3261
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mQCSoundLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3262
    :try_start_3
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mQCSound:Lcom/transsion/camera/utils/sound/IActionSound;

    if-nez v1, :cond_d

    .line 3263
    invoke-interface {p1, p2}, Lcom/transsion/camera/utils/sound/IActionSound;->unload(I)V

    goto :goto_f

    :catchall_b
    move-exception p0

    goto :goto_11

    .line 3265
    :cond_d
    iput p2, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mQCSampleId:I

    .line 3267
    :goto_f
    monitor-exit v0

    return-void

    :goto_11
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_b

    throw p0
.end method

.method private synthetic lambda$new$2(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4

    .line 927
    const-string v0, "key_shutter_sound_update"

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3c

    .line 928
    move-object p1, p2

    check-cast p1, Ljava/lang/String;

    const-string v0, "shutter_sound_value_change"

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3c

    const-string v0, "shutter_sound_value_ready"

    .line 929
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1c

    goto :goto_3c

    .line 932
    :cond_1c
    const-string v0, "sound_effect_default"

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 933
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->loadQCSound(Ljava/lang/String;)V

    return-void

    .line 936
    :cond_28
    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->releaseQCSound()V

    .line 938
    :try_start_2b
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mShutterSoundAssetsFileName:Ljava/lang/String;
    :try_end_2f
    .catch Ljava/lang/NumberFormatException; {:try_start_2b .. :try_end_2f} :catch_30

    goto :goto_37

    .line 940
    :catch_30
    sget-object p1, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p2, "new soundFileName is not a string, use default"

    invoke-static {p1, p2}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 942
    :goto_37
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mShutterSoundAssetsFileName:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->loadQCSound(Ljava/lang/String;)V

    :cond_3c
    :goto_3c
    return-void
.end method

.method private synthetic lambda$new$3()V
    .registers 2

    const/4 v0, 0x0

    .line 1062
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->isInSmoothZoom:Z

    return-void
.end method

.method private synthetic lambda$onSettingChanged$1()V
    .registers 2

    .line 777
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/4 v0, 0x4

    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    return-void
.end method

.method private synthetic lambda$onShutterStart$4(Z)V
    .registers 3

    .line 1562
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mIsCurModeSupportQC:Z

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mQuickCaptureManager:Lcom/transsion/camera/app/common/provider/QuickCaptureManager;

    if-eqz v0, :cond_12

    if-eqz p1, :cond_12

    .line 1563
    iget-boolean p0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mCaptureAnimationByThumbnail:Z

    xor-int/lit8 p0, p0, 0x1

    invoke-virtual {v0, p0}, Lcom/transsion/camera/app/common/provider/QuickCaptureManager;->sendShutterStart(Z)Z

    return-void

    .line 1565
    :cond_12
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->isTpPictureToVideoSupport()Z

    move-result p1

    if-nez p1, :cond_3a

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->isNeedDeviceCaptureSound()Z

    move-result p1

    if-eqz p1, :cond_3a

    .line 1566
    iget-boolean p1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mCaptureAnimationByThumbnail:Z

    if-nez p1, :cond_37

    .line 1567
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->currentModeNeedNewCaptureAnimation()Z

    move-result p1

    if-eqz p1, :cond_30

    .line 1568
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/16 v0, 0x187

    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    goto :goto_37

    .line 1570
    :cond_30
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/16 v0, 0x96

    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    :cond_37
    :goto_37
    const/4 p1, 0x0

    .line 1573
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mCaptureAnimationByThumbnail:Z

    :cond_3a
    return-void
.end method

.method private loadQCSound(Ljava/lang/String;)V
    .registers 4

    .line 3241
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mQCSound:Lcom/transsion/camera/utils/sound/IActionSound;

    if-nez v0, :cond_c

    .line 3242
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/IAppUI;->getActionSound()Lcom/transsion/camera/utils/sound/IActionSound;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mQCSound:Lcom/transsion/camera/utils/sound/IActionSound;

    .line 3244
    :cond_c
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mQCSound:Lcom/transsion/camera/utils/sound/IActionSound;

    if-eqz v0, :cond_42

    iget-boolean v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mQCSoundLoaded:Z

    if-nez v0, :cond_42

    iget-boolean v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mIsCurModeSupportQC:Z

    if-nez v0, :cond_1f

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->needShutterSound()Z

    move-result v0

    if-nez v0, :cond_1f

    goto :goto_42

    .line 3249
    :cond_1f
    const-string v0, "sound_effect_default"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_32

    .line 3250
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mQCSound:Lcom/transsion/camera/utils/sound/IActionSound;

    new-instance v1, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$$ExternalSyntheticLambda8;-><init>(Lcom/transsion/camera/app/common/mode/CommonPhotoMode;)V

    invoke-interface {v0, p1, v1}, Lcom/transsion/camera/utils/sound/IActionSound;->load(Ljava/lang/String;Lcom/transsion/camera/utils/sound/IActionSound$SoundCallback;)V

    goto :goto_3e

    .line 3260
    :cond_32
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mQCSound:Lcom/transsion/camera/utils/sound/IActionSound;

    new-instance v0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$$ExternalSyntheticLambda9;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$$ExternalSyntheticLambda9;-><init>(Lcom/transsion/camera/app/common/mode/CommonPhotoMode;)V

    const-string v1, "camera_click.ogg"

    invoke-interface {p1, v1, v0}, Lcom/transsion/camera/utils/sound/IActionSound;->load(Ljava/lang/String;Lcom/transsion/camera/utils/sound/IActionSound$SoundCallback;)V

    :goto_3e
    const/4 p1, 0x1

    .line 3270
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mQCSoundLoaded:Z

    return-void

    .line 3245
    :cond_42
    :goto_42
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[QuickCapture] loadQCSound sound load:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mQCSoundLoaded:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mIsCurModeSupportQC:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mIsCurModeSupportQC:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",needShutterSound:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3246
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->needShutterSound()Z

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 3245
    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private mergeGoldWaterMark(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .registers 8

    if-nez p1, :cond_3

    return-object p1

    .line 3383
    :cond_3
    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->needMergeGoldWatermark()Ljava/lang/String;

    move-result-object v0

    .line 3384
    const-string v1, "0"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_10

    goto :goto_74

    .line 3389
    :cond_10
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 3390
    sget-object v2, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v3, "[mergeGoldWaterMark]: start"

    invoke-static {v2, v3}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 3391
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->getGoldWatermarkDrawableId(Landroid/graphics/Bitmap;I)I

    move-result p2

    .line 3392
    iget-object v3, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mGoldWatermarks:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_38

    .line 3393
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mGoldWatermarks:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Bitmap;

    goto :goto_48

    .line 3395
    :cond_38
    invoke-direct {p0, p2}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->getGoldWatermarkDrawable(I)Landroid/graphics/Bitmap;

    move-result-object v3

    if-eqz v3, :cond_47

    .line 3397
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mGoldWatermarks:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p0, p2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_47
    move-object p0, v3

    :goto_48
    if-eqz p0, :cond_74

    .line 3402
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getDensity()I

    move-result p2

    invoke-virtual {p0, p2}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 3403
    invoke-static {p1, p0}, Lcom/transsion/camera/utils/BitmapUtils;->montageBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 3404
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    .line 3405
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[mergeGoldWaterMark]: end, cost: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long/2addr p1, v0

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "ms"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-object p0

    :cond_74
    :goto_74
    return-object p1
.end method

.method private needMergeGoldWatermark()Ljava/lang/String;
    .registers 4

    .line 3476
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getDataStore()Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    .line 3477
    invoke-interface {p0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getDataStore()Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object p0

    .line 3476
    const-string v1, "key_need_merge_gold_watermark"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2, p0}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private onFakePostViewData(Lcom/transsion/camera/app/common/mode/TimestampInfo;)V
    .registers 4

    .line 2184
    invoke-static {}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManagerProxy;->getInstance()Lcom/transsion/camera/app/common/storage/BackgroundStorageManagerProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManagerProxy;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$3;

    invoke-direct {v1, p0, p1}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$3;-><init>(Lcom/transsion/camera/app/common/mode/CommonPhotoMode;Lcom/transsion/camera/app/common/mode/TimestampInfo;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private parserValue(Landroid/hardware/camera2/CaptureResult;Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;)V
    .registers 3

    .line 1073
    invoke-interface {p2, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->getCCTValue(Landroid/hardware/camera2/CaptureResult;)I

    move-result p0

    .line 1074
    invoke-interface {p2, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->getTintValue(Landroid/hardware/camera2/CaptureResult;)I

    move-result p1

    .line 1075
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p2

    invoke-virtual {p2, p0}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setCCTValue(I)V

    .line 1076
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setTintValue(I)V

    return-void
.end method

.method private processQCThumbnail(ILandroid/graphics/Bitmap;Lcom/transsion/camera/app/common/mode/TimestampInfo;)I
    .registers 5

    .line 3289
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mIsCurModeSupportQC:Z

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mQuickCaptureManager:Lcom/transsion/camera/app/common/provider/QuickCaptureManager;

    if-eqz v0, :cond_a

    const/4 p0, 0x0

    return p0

    .line 3292
    :cond_a
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mQuickCaptureManager:Lcom/transsion/camera/app/common/provider/QuickCaptureManager;

    invoke-virtual {v0, p1, p2, p0, p3}, Lcom/transsion/camera/app/common/provider/QuickCaptureManager;->sendThumbnailView(ILandroid/graphics/Bitmap;Lcom/transsion/camera/app/common/mode/ICameraMode;Lcom/transsion/camera/app/common/mode/TimestampInfo;)I

    move-result p0

    return p0
.end method

.method private processQCUpAction()I
    .registers 5

    .line 3305
    iget v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCurShutterPriority:I

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->needQuickCapture(I)I

    move-result v0

    const/4 v1, 0x0

    if-gtz v0, :cond_20

    .line 3307
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[QuickCapture] processQCUpAction return, needQCValue:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v1

    .line 3311
    :cond_20
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mSendTakePictureSuccess:Z

    if-eqz v0, :cond_6a

    iget v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mShutterActionState:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_6a

    iget-boolean v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mResumed:Z

    if-eqz v0, :cond_6a

    .line 3312
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v1, "key_shutter_sound"

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3313
    const-string v1, "on"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_46

    .line 3314
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "[QuickCapture]processQCUpAction do nothing if shutter is not on"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v1

    .line 3317
    :cond_46
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[QuickCapture] processQCUpAction play sound: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mQCSound:Lcom/transsion/camera/utils/sound/IActionSound;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 3319
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mQCSound:Lcom/transsion/camera/utils/sound/IActionSound;

    if-eqz v0, :cond_6a

    .line 3320
    iget v2, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mQCSampleId:I

    invoke-interface {v0, v2}, Lcom/transsion/camera/utils/sound/IActionSound;->play(I)V

    .line 3321
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->hookDisturbStatus()V

    :cond_6a
    return v1
.end method

.method private queryFlashValue()Ljava/lang/String;
    .registers 3

    .line 3371
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v1, "key_flash_facade"

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3372
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_f

    return-object v0

    .line 3375
    :cond_f
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v0, "key_flash"

    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private releaseQCSound()V
    .registers 4

    .line 3274
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mQCSound:Lcom/transsion/camera/utils/sound/IActionSound;

    if-eqz v0, :cond_26

    iget-boolean v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mQCSoundLoaded:Z

    if-nez v0, :cond_9

    goto :goto_26

    .line 3279
    :cond_9
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mQCSoundLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3280
    :try_start_c
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mQCSound:Lcom/transsion/camera/utils/sound/IActionSound;

    if-eqz v1, :cond_1c

    iget-boolean v2, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mQCSoundLoaded:Z

    if-eqz v2, :cond_1c

    .line 3281
    iget v2, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mQCSampleId:I

    invoke-interface {v1, v2}, Lcom/transsion/camera/utils/sound/IActionSound;->unload(I)V

    goto :goto_1c

    :catchall_1a
    move-exception p0

    goto :goto_24

    :cond_1c
    :goto_1c
    const/4 v1, 0x0

    .line 3283
    iput-boolean v1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mQCSoundLoaded:Z

    const/4 v1, 0x0

    .line 3284
    iput-object v1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mQCSound:Lcom/transsion/camera/utils/sound/IActionSound;

    .line 3285
    monitor-exit v0

    return-void

    :goto_24
    monitor-exit v0
    :try_end_25
    .catchall {:try_start_c .. :try_end_25} :catchall_1a

    throw p0

    .line 3275
    :cond_26
    :goto_26
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[QuickCapture] releaseQCSound return, sound load:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mQCSoundLoaded:Z

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private shouldCorrectCapturingNumber(Z)Z
    .registers 2

    if-nez p1, :cond_1e

    .line 1616
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/camera/utils/CustomConfigUtil;->isQcomCaptureFlow()Z

    move-result p1

    if-nez p1, :cond_1e

    .line 1617
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->supportPostAlgo()Z

    move-result p0

    if-nez p0, :cond_1e

    .line 1618
    invoke-static {}, Lcom/transsion/camera/app/common/tzservice/TZServiceController;->getInstance()Lcom/transsion/camera/app/common/tzservice/TZServiceController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/tzservice/TZServiceController;->isTZServiceSupport()Z

    move-result p0

    if-nez p0, :cond_1e

    const/4 p0, 0x1

    return p0

    :cond_1e
    const/4 p0, 0x0

    return p0
.end method

.method private shouldShowContinuousHint()Z
    .registers 3

    .line 3524
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v1, "key_long_exposure_capture_state"

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3525
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_21

    .line 3526
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->getName()Ljava/lang/String;

    move-result-object p0

    const-string v1, "com.transsion.camera.feature.mode.longexposure.LongExposureModeEntry"

    invoke-static {p0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_21

    .line 3527
    const-string p0, "idle"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_21
    const/4 p0, 0x1

    return p0
.end method

.method private superNightLiteOff()Z
    .registers 1

    .line 3127
    iget-boolean p0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mIsSuperNightLiteOn:Z

    if-eqz p0, :cond_6

    const/4 p0, 0x0

    return p0

    :cond_6
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method protected autoWatermark()Z
    .registers 2

    .line 2403
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    if-nez v0, :cond_d

    .line 2404
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "autoWatermark mSettingController is null"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    .line 2407
    :cond_d
    const-string p0, "key_auto_watermark"

    .line 2408
    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 2407
    const-string v0, "on"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method protected checkCaptureResult(Z)V
    .registers 5

    .line 2022
    sget-object v0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkCaptureResult() called with: isPictureTaken = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v0, v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2023
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mCapturingNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_2f

    .line 2024
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mCapturingNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    goto :goto_34

    .line 2026
    :cond_2f
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mCapturingNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 2028
    :goto_34
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mOfflineCapturingNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-lez v0, :cond_42

    .line 2029
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mOfflineCapturingNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    goto :goto_47

    .line 2031
    :cond_42
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mOfflineCapturingNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 2033
    :goto_47
    new-instance v0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/app/common/mode/CommonPhotoMode;Z)V

    invoke-static {v0}, Lcom/transsion/camera/utils/UIUtils;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public checkNotifyBgOfflineErr()V
    .registers 1

    .line 1888
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->resetCaptureData()V

    .line 1889
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mImageProcessor:Lcom/transsion/camera/app/common/mode/IImageProcessor;

    if-eqz p0, :cond_c

    .line 1890
    check-cast p0, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;->checkNotifyBgOfflineErr()V

    :cond_c
    return-void
.end method

.method public checkSingleCapture()Z
    .registers 2

    .line 1608
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mIsCurModeSupportQC:Z

    if-eqz v0, :cond_10

    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mQuickCaptureManager:Lcom/transsion/camera/app/common/provider/QuickCaptureManager;

    if-eqz p0, :cond_10

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/provider/QuickCaptureManager;->processQCPictureData()I

    move-result p0

    if-lez p0, :cond_10

    const/4 p0, 0x1

    return p0

    :cond_10
    const/4 p0, 0x0

    return p0
.end method

.method protected currentModeNeedNewCaptureAnimation()Z
    .registers 3

    .line 3558
    sget-object v0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " currentModeNeedNewCaptureAnimation : false"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method protected currentModeSupportLivePhoto()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method protected currentSettingSupportSAT(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)Z
    .registers 6

    const/4 p1, 0x0

    if-nez p2, :cond_b

    .line 3187
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p2, "currentSettingSupportSAT: controller is null"

    invoke-static {p0, p2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return p1

    .line 3190
    :cond_b
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mSwitchByUser:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_29

    .line 3191
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "currentSettingSupportSAT mSwitchByUser:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mSwitchByUser:Z

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v1

    .line 3194
    :cond_29
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mModeSwitch:Z

    if-eqz v0, :cond_46

    .line 3195
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "currentSettingSupportSAT mModeSwitch:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mModeSwitch:Z

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v1

    .line 3198
    :cond_46
    const-string v0, "key_super_definition"

    invoke-interface {p2, v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 3199
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "currentSettingSupportSAT superDefinitionValue:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-eqz p2, :cond_6e

    .line 3200
    const-string p0, "off"

    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6d

    goto :goto_6e

    :cond_6d
    return p1

    :cond_6e
    :goto_6e
    return v1
.end method

.method public doOnFileSaved(Landroid/net/Uri;ZZ)V
    .registers 7

    .line 2435
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[doOnFileSaved] uri:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " isBGImage:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " needWaitLast:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mPostViewCallbackNumber.get():"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mPostViewCallbackNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2436
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mCapturingNumber.get():"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mCapturingNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2435
    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 2437
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mImageProcessor:Lcom/transsion/camera/app/common/mode/IImageProcessor;

    check-cast v0, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/mode/ImageProcessor;->getRemainingMediaSize()I

    move-result v0

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mPostViewCallbackNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    if-le v0, v1, :cond_59

    .line 2438
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "detection err, check,!!!"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :cond_59
    if-eqz p1, :cond_7a

    .line 2441
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v0, p1}, Lcom/transsion/camera/app/common/IAppUI;->updateBrowserData(Landroid/net/Uri;)V

    if-nez p2, :cond_7a

    if-eqz p3, :cond_75

    .line 2444
    iget-object p2, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mPostViewCallbackNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p2

    if-gtz p2, :cond_7a

    iget-object p2, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mCapturingNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p2

    if-eqz p2, :cond_75

    goto :goto_7a

    .line 2447
    :cond_75
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/IAppUI;->updateThumbnailUri(Landroid/net/Uri;)V

    :cond_7a
    :goto_7a
    return-void
.end method

.method protected doPlayShutterSound()V
    .registers 3

    .line 3333
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v1, "key_shutter_sound"

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3334
    const-string v1, "on"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_18

    .line 3335
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "doPlayShutterSound, do nothing if shutter sound is not on"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 3339
    :cond_18
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "doPlayShutterSound play sound"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 3341
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mQCSound:Lcom/transsion/camera/utils/sound/IActionSound;

    if-eqz v0, :cond_28

    .line 3342
    iget p0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mQCSampleId:I

    invoke-interface {v0, p0}, Lcom/transsion/camera/utils/sound/IActionSound;->play(I)V

    :cond_28
    return-void
.end method

.method protected doShutterClick(II)Z
    .registers 10

    .line 2104
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[QuickCapture]doShutterClick, shutterAction:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", curPriority:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 2105
    const-string v0, "onShutterClick"

    invoke-static {v0}, Lcom/transsion/camera/utils/debug/TraceUtil;->begin(Ljava/lang/String;)V

    .line 2106
    invoke-static {}, Lcom/transsion/camera/utils/debug/TraceUtil;->end()V

    .line 2107
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->isInSmoothZoom:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_33

    .line 2108
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "doShutterClick isInSmoothZoom = true"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v1

    .line 2111
    :cond_33
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mImageProcessor:Lcom/transsion/camera/app/common/mode/IImageProcessor;

    check-cast v0, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/mode/ImageProcessor;->isPicSurfaceDirty()Z

    move-result v0

    if-eqz v0, :cond_45

    .line 2112
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "doShutterClick return for CaptureSurface has SwitchOffline"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v1

    .line 2116
    :cond_45
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mIsInContinuousShot:Z

    if-eqz v0, :cond_51

    .line 2117
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "doShutterClick return for in continuous shot"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v1

    .line 2122
    :cond_51
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mCapturingAddProcess:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_99

    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mCaptureHandler:Lcom/transsion/camera/app/common/mode/CommonPhotoMode$CaptureHandler;

    if-eqz v0, :cond_99

    const/16 v0, 0xa

    if-ne p2, v0, :cond_99

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v3, "com.transsion.camera.feature.mode.litefacebeauty.LiteFaceBeautyModeEntry"

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_76

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v3, "com.transsion.camera.feature.mode.stblurmode.STBlurModeEntry"

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_99

    .line 2123
    :cond_76
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->getShutterTypeSelftimerOff()I

    move-result v3

    invoke-interface {v0, v3}, Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;->updateShutterType(I)V

    .line 2124
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x2

    invoke-interface {v0, v5, v3, v4}, Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;->updateUIState(IILjava/lang/String;)V

    .line 2125
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mCaptureHandler:Lcom/transsion/camera/app/common/mode/CommonPhotoMode$CaptureHandler;

    const/4 v3, 0x3

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 2126
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mCaptureHandler:Lcom/transsion/camera/app/common/mode/CommonPhotoMode$CaptureHandler;

    const-wide/16 v4, 0x4b0

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 2127
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v0, v2}, Lcom/transsion/camera/app/common/IAppUI;->setShutterEnabled(Z)V

    .line 2130
    :cond_99
    iput-boolean v2, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mSendTakePictureSuccess:Z

    .line 2131
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/IAppUI;->isModeTabScrolling()Z

    move-result v0

    if-eqz v0, :cond_ab

    .line 2132
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "isModeTabScrolling return"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v1

    .line 2135
    :cond_ab
    const-class v0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/manager/GlobalClickManager;->checkCanClick(Ljava/lang/Object;Z)Z

    move-result v0

    if-nez v0, :cond_bb

    .line 2136
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "GlobalClickManager.checkCanClick return"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v1

    .line 2139
    :cond_bb
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v3, "Temperature"

    invoke-interface {v0, v3}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryExtStatus(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v1, :cond_de

    .line 2140
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mContinuousShotSupport:Z

    if-eqz v0, :cond_de

    .line 2141
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mShutterClickInterval:J

    sub-long/2addr v3, v5

    const-wide/16 v5, 0x7d0

    cmp-long v0, v3, v5

    if-gtz v0, :cond_de

    .line 2142
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mTemperatureHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->showHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    return v1

    .line 2146
    :cond_de
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mShutterClickInterval:J

    .line 2147
    invoke-virtual {p0, p2}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->onShutterClickBefore(I)Z

    move-result v0

    if-eqz v0, :cond_174

    .line 2148
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->isTpPictureToVideoSupport()Z

    move-result v0

    if-nez v0, :cond_fe

    .line 2149
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/16 v3, 0xd

    invoke-interface {v0, v3}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 2150
    invoke-static {}, Lcom/transsion/camera/app/common/bgservice/BGServiceController;->getInstance()Lcom/transsion/camera/app/common/bgservice/BGServiceController;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/transsion/camera/app/common/bgservice/BGServiceController;->setOnNextReadyFlag(Z)V

    .line 2152
    :cond_fe
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mStatusResponder:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    const-string v3, "capture_state"

    const-string v4, "capture_start"

    invoke-virtual {v0, v3, v4}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2153
    iput p1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mShutterActionState:I

    .line 2154
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mIsCurModeSupportQC:Z

    if-eqz v0, :cond_114

    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mQuickCaptureManager:Lcom/transsion/camera/app/common/provider/QuickCaptureManager;

    if-eqz v0, :cond_114

    .line 2155
    invoke-virtual {v0, p1, p2}, Lcom/transsion/camera/app/common/provider/QuickCaptureManager;->sendShutterAction(II)Z

    .line 2157
    :cond_114
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mImageProcessor:Lcom/transsion/camera/app/common/mode/IImageProcessor;

    check-cast p1, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/mode/ICameraMode;->buildCaptureInfo()Lcom/transsion/camera/app/common/mode/CaptureInfo;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;->onTakePicture(Lcom/transsion/camera/app/common/mode/CaptureInfo;)V

    .line 2158
    iput p2, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCurShutterPriority:I

    .line 2159
    iput-boolean v1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mSendTakePictureSuccess:Z

    .line 2161
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mGroupCaptureManager:Lcom/transsion/camera/app/common/groupcapture/GroupCaptureManager;

    if-eqz p1, :cond_12a

    .line 2162
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/groupcapture/GroupCaptureManager;->resetCapturingState()V

    .line 2164
    :cond_12a
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mGroupCaptureManager:Lcom/transsion/camera/app/common/groupcapture/GroupCaptureManager;

    if-eqz p1, :cond_13a

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/groupcapture/GroupCaptureManager;->isGroupScene()Z

    move-result p1

    if-eqz p1, :cond_13a

    .line 2165
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mGroupCaptureManager:Lcom/transsion/camera/app/common/groupcapture/GroupCaptureManager;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/groupcapture/GroupCaptureManager;->takePicture()V

    goto :goto_13f

    .line 2167
    :cond_13a
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->takePicture()V

    .line 2170
    :goto_13f
    invoke-static {}, Lcom/transsion/camera/utils/smartmodeorder/SmartModeOrderUtils;->getInstance()Lcom/transsion/camera/utils/smartmodeorder/SmartModeOrderUtils;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/camera/utils/smartmodeorder/SmartModeOrderUtils;->updateModeUsedCount()V

    .line 2171
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->startCapture()V

    .line 2172
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->reportShutterTriggerTypeData(Z)V

    .line 2173
    invoke-static {}, Lcom/transsion/camera/utils/monitor/WatchDogMonitor;->getInstance()Lcom/transsion/camera/utils/monitor/WatchDogMonitor;

    move-result-object p1

    const-string p2, "CAM_CAPTURE"

    invoke-virtual {p1, p2}, Lcom/transsion/camera/utils/monitor/WatchDogMonitor;->begin(Ljava/lang/String;)V

    .line 2175
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->getName()Ljava/lang/String;

    move-result-object p0

    const-string p1, "com.transsion.camera.feature.mode.longexposure.LongExposureModeEntry"

    invoke-static {p0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_174

    .line 2176
    invoke-static {}, Lcom/transsion/camera/utils/dfx/mgr/ExManager;->get()Lcom/transsion/camera/utils/dfx/inter/IExDetection;

    move-result-object p0

    const/16 p1, 0x3ed

    const-string p2, "shot_to_jpeg"

    invoke-interface {p0, p1, p2}, Lcom/transsion/camera/utils/dfx/inter/IPerformanceDfx;->onActionStart(ILjava/lang/String;)V

    :cond_174
    return v1
.end method

.method protected getAspectTolerance()D
    .registers 3

    const-wide v0, 0x3f847ae147ae147bL    # 0.01

    return-wide v0
.end method

.method protected getContinuousShotNotSupportMessage()Ljava/lang/String;
    .registers 1

    .line 2642
    const-string p0, ""

    return-object p0
.end method

.method public getCurShutterPriority()I
    .registers 1

    .line 967
    iget p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCurShutterPriority:I

    return p0
.end method

.method protected getCurrentSatStreamId()I
    .registers 1

    .line 477
    iget p0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mLastStreamId:I

    return p0
.end method

.method public getDataFlowType()I
    .registers 1

    .line 1209
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->getDataFlowType()I

    move-result p0

    return p0
.end method

.method public getFpsRange()Landroid/util/Range;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method protected getLimitedPreviewSize(Ljava/util/List;I)Landroid/util/Size;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;I)",
            "Landroid/util/Size;"
        }
    .end annotation

    .line 1166
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->getTargetRatio()D

    move-result-wide v1

    .line 1167
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->getScreenSize()Landroid/util/Size;

    move-result-object v3

    .line 1168
    invoke-static {}, Lcom/transsion/camera/utils/FeatureSupport;->isDumpToleranceSupport()Z

    move-result v0

    if-eqz v0, :cond_14

    const-wide v4, 0x3f947ae147ae147bL    # 0.02

    goto :goto_18

    .line 1169
    :cond_14
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->getAspectTolerance()D

    move-result-wide v4

    .line 1172
    :goto_18
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->pocketScreen()Z

    move-result v0

    if-eqz v0, :cond_29

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    invoke-virtual {p0, v1, v2, v6, v7}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->ratioEqual(DD)Z

    move-result p0

    if-eqz p0, :cond_29

    const/4 p0, 0x1

    :goto_27
    move v9, p0

    goto :goto_2b

    :cond_29
    const/4 p0, 0x0

    goto :goto_27

    :goto_2b
    const/4 v6, 0x1

    const/4 v8, 0x0

    move-object v0, p1

    move v7, p2

    .line 1170
    invoke-static/range {v0 .. v9}, Lcom/transsion/camera/utils/CameraUtil;->findBestMatchSize(Ljava/util/List;DLandroid/util/Size;DZIZZ)Landroid/util/Size;

    move-result-object p0

    return-object p0
.end method

.method protected getLowStorageMessage()Ljava/lang/String;
    .registers 3

    .line 2477
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    sget v1, Lcom/transsion/camera/app/common/R$string;->storage_full_no_sdcard:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2478
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz v1, :cond_1b

    invoke-interface {v1}, Lcom/transsion/camera/app/common/IAppUI;->supportExternalStorage()Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 2479
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    sget v0, Lcom/transsion/camera/app/common/R$string;->storage_full:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1b
    return-object v0
.end method

.method protected getModeLimitedPreviewSizeHeight()I
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public getModeRelation()Lcom/transsion/camera/app/common/relation/Relation;
    .registers 9

    .line 972
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getCameraId()Ljava/lang/String;

    move-result-object v0

    .line 973
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/transsion/camera/app/common/CameraRepository;->isBackSATCamera(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_96

    .line 974
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getDataStore()Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object v1

    .line 975
    const-string v3, "key_camera_zoom"

    invoke-virtual {v1, v0}, Lcom/transsion/camera/app/common/storage/DataStore;->getCameraScope(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v2, v4}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 976
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object v3

    invoke-virtual {v3}, Lcom/transsion/camera/app/common/CameraRepository;->getBackLongFocusCameraMiniZoom()I

    move-result v3

    .line 977
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object v4

    invoke-virtual {v4}, Lcom/transsion/camera/app/common/CameraRepository;->getBackMainCameraMiniZoom()I

    move-result v4

    .line 978
    iget-object v5, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[getModeRelation] cameraId:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", zoom: "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", longFocusMiniZoom: "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", mainMiniZoom: "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 980
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/CameraRepository;->getBackLongFocusCamera()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_6a

    return-object v2

    :cond_6a
    if-eqz v1, :cond_96

    .line 986
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-ge v1, v4, :cond_7b

    .line 988
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/CameraRepository;->getBackWideCamera()Ljava/lang/String;

    move-result-object v0

    goto :goto_86

    :cond_7b
    if-lt v1, v3, :cond_7e

    goto :goto_86

    .line 992
    :cond_7e
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/CameraRepository;->getMainBackCamera()Ljava/lang/String;

    move-result-object v0

    .line 994
    :goto_86
    iget-boolean v1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mNeedCloseQuickPreview:Z

    iget-boolean p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mWideSupportSuperdefinition:Z

    invoke-static {v1, p0, v0}, Lcom/transsion/camera/app/common/mode/StreamIdRestriction;->getRestriction(ZZLjava/lang/String;)Lcom/transsion/camera/app/common/relation/RelationGroup;

    move-result-object p0

    if-eqz p0, :cond_96

    const/4 v1, 0x1

    .line 996
    invoke-virtual {p0, v0, v1}, Lcom/transsion/camera/app/common/relation/RelationGroup;->getRelation(Ljava/lang/String;Z)Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object p0

    return-object p0

    :cond_96
    return-object v2
.end method

.method public final getModeType()Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;
    .registers 1

    .line 450
    sget-object p0, Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;->PHOTO:Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;

    return-object p0
.end method

.method protected getOpenCamerId(Ljava/lang/String;Landroid/content/Context;ZLcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Ljava/lang/String;IZ)Ljava/lang/String;
    .registers 8

    if-eqz p7, :cond_4

    goto/16 :goto_91

    .line 3140
    :cond_4
    const-string p6, "key_super_definition"

    invoke-interface {p4, p6}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p6

    .line 3141
    invoke-virtual {p0, p4, p1}, Lcom/transsion/camera/app/common/mode/CameraMode;->needReopenForWide(Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Ljava/lang/String;)Z

    move-result p7

    if-eqz p7, :cond_19

    .line 3142
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/CameraRepository;->getBackWideCamera()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 3143
    :cond_19
    invoke-virtual {p0, p2, p3, p4}, Lcom/transsion/camera/app/common/mode/CameraMode;->isSupportSAT(Landroid/content/Context;ZLcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)Z

    move-result p7

    if-eqz p7, :cond_24

    .line 3144
    invoke-direct {p0, p2, p3, p4}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->getCameraIdForOpen(Landroid/content/Context;ZLcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 3145
    :cond_24
    invoke-virtual {p0, p2}, Lcom/transsion/camera/app/common/mode/CameraMode;->needOpenPortraitCamera(Landroid/content/Context;)Z

    move-result p7

    if-eqz p7, :cond_39

    invoke-static {p1}, Lcom/transsion/camera/adapter/CameraInfoUtil;->isCameraFacingBack(Ljava/lang/String;)Z

    move-result p7

    if-eqz p7, :cond_39

    .line 3146
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/CameraRepository;->getBackLongFocusCamera()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 3147
    :cond_39
    invoke-virtual {p0, p1, p4}, Lcom/transsion/camera/app/common/mode/CameraMode;->needReopenForMacroCamera(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)Z

    move-result p7

    if-eqz p7, :cond_52

    .line 3148
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/CameraRepository;->getBackMacroCamera()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_51

    .line 3150
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/CameraRepository;->getBackWideCamera()Ljava/lang/String;

    move-result-object p0

    :cond_51
    return-object p0

    .line 3152
    :cond_52
    invoke-virtual {p0, p1, p3, p4}, Lcom/transsion/camera/app/common/mode/CameraMode;->reopenForNormalOrFromSat(Ljava/lang/String;ZLcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)Z

    move-result p1

    const-string p7, "0"

    if-eqz p1, :cond_5b

    return-object p7

    .line 3154
    :cond_5b
    iget-boolean p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mModeSwitch:Z

    if-nez p1, :cond_80

    const-string p1, "on"

    invoke-static {p6, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_80

    .line 3155
    invoke-interface {p4}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getCameraId()Ljava/lang/String;

    move-result-object p0

    .line 3156
    invoke-static {p0, p5}, Lcom/transsion/camera/adapter/CameraInfoUtil;->isCameraFacingSame(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_91

    invoke-static {p5}, Lcom/transsion/camera/adapter/CameraInfoUtil;->isCameraFacingFront(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_91

    .line 3157
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/CameraRepository;->getMainBackCamera()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 3162
    :cond_80
    invoke-virtual {p0, p2, p3, p4}, Lcom/transsion/camera/app/common/mode/CameraMode;->isSupportSAT(Landroid/content/Context;ZLcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)Z

    move-result p0

    if-nez p0, :cond_91

    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object p0

    invoke-virtual {p0, p5}, Lcom/transsion/camera/app/common/CameraRepository;->isBackSATCamera(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_91

    return-object p7

    :cond_91
    :goto_91
    return-object p5
.end method

.method public getOutputDataType()I
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public getPostViewSize(Ljava/util/List;)Landroid/util/Size;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;)",
            "Landroid/util/Size;"
        }
    .end annotation

    .line 1190
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->getTargetRatio()D

    move-result-wide v0

    .line 1191
    invoke-direct {p0, p1, v0, v1}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->getMinPostViewSizeForSupport(Ljava/util/List;D)Landroid/util/Size;

    move-result-object p0

    return-object p0
.end method

.method public getPreviewSize(Ljava/util/List;)Landroid/util/Size;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;)",
            "Landroid/util/Size;"
        }
    .end annotation

    .line 1161
    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->getLimitedPreviewSizeHeight()I

    move-result v0

    .line 1162
    invoke-virtual {p0, p1, v0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->getLimitedPreviewSize(Ljava/util/List;I)Landroid/util/Size;

    move-result-object p0

    return-object p0
.end method

.method protected getPreviewSizeMatch64(Ljava/util/List;DZ)Landroid/util/Size;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;DZ)",
            "Landroid/util/Size;"
        }
    .end annotation

    .line 1180
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->getScreenSize()Landroid/util/Size;

    move-result-object v3

    .line 1181
    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result p0

    if-nez p4, :cond_b

    const/4 p0, 0x0

    :cond_b
    move v7, p0

    const/4 v6, 0x1

    const/4 v8, 0x1

    const-wide v4, 0x3f947ae147ae147bL    # 0.02

    move-object v0, p1

    move-wide v1, p2

    .line 1185
    invoke-static/range {v0 .. v8}, Lcom/transsion/camera/utils/CameraUtil;->findBestMatchSize(Ljava/util/List;DLandroid/util/Size;DZIZ)Landroid/util/Size;

    move-result-object p0

    return-object p0
.end method

.method protected getProcessMode()Lcom/transsion/camera/app/common/provider/ProcessMediaItem$ProcessMode;
    .registers 2

    .line 481
    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->isAIFrameOn()Z

    move-result v0

    if-nez v0, :cond_10

    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->isAIZoomSROn()Z

    move-result p0

    if-eqz p0, :cond_d

    goto :goto_10

    .line 484
    :cond_d
    sget-object p0, Lcom/transsion/camera/app/common/provider/ProcessMediaItem$ProcessMode;->NORMAL:Lcom/transsion/camera/app/common/provider/ProcessMediaItem$ProcessMode;

    return-object p0

    .line 482
    :cond_10
    :goto_10
    sget-object p0, Lcom/transsion/camera/app/common/provider/ProcessMediaItem$ProcessMode;->AIFRAME:Lcom/transsion/camera/app/common/provider/ProcessMediaItem$ProcessMode;

    return-object p0
.end method

.method public getSettingGroup()J
    .registers 5

    .line 455
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->getSettingGroup()J

    move-result-wide v0

    const-wide/16 v2, 0x2

    or-long/2addr v0, v2

    return-wide v0
.end method

.method protected getShutterTypeSelftimerOff()I
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method protected getShutterTypeSelftimerOn()I
    .registers 1

    const/4 p0, 0x2

    return p0
.end method

.method protected getTargetRatio()D
    .registers 5

    .line 1128
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    if-eqz p0, :cond_1c

    .line 1129
    const-string v0, "key_picture_size"

    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1c

    .line 1131
    invoke-static {p0}, Landroid/util/Size;->parseSize(Ljava/lang/String;)Landroid/util/Size;

    move-result-object p0

    .line 1132
    invoke-virtual {p0}, Landroid/util/Size;->getWidth()I

    move-result v0

    int-to-double v0, v0

    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    move-result p0

    int-to-double v2, p0

    div-double/2addr v0, v2

    return-wide v0

    :cond_1c
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getThumbNailType()I
    .registers 1

    .line 1840
    iget p0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mThumbNailType:I

    return p0
.end method

.method protected hideRecordingUIImmediately()V
    .registers 1

    return-void
.end method

.method protected hookDisturbStatus()V
    .registers 3

    .line 3516
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v1, "key_self_timer"

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3517
    const-string v1, "off"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_17

    .line 3519
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    const/16 v0, 0x6c

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/CameraUtil;->hookDisturbStatus(Landroid/content/Context;I)V

    :cond_17
    return-void
.end method

.method public init(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Ljava/lang/String;Lcom/transsion/camera/app/common/IApp$IIntentAction;I)V
    .registers 11

    .line 491
    invoke-super/range {p0 .. p7}, Lcom/transsion/camera/app/common/mode/CameraMode;->init(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Ljava/lang/String;Lcom/transsion/camera/app/common/IApp$IIntentAction;I)V

    .line 492
    new-instance p6, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$CaptureHandler;

    const/4 p7, 0x0

    invoke-direct {p6, p3, p7}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$CaptureHandler;-><init>(Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/app/common/mode/CommonPhotoMode-IA;)V

    iput-object p6, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mCaptureHandler:Lcom/transsion/camera/app/common/mode/CommonPhotoMode$CaptureHandler;

    .line 493
    iget-object p6, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->getShutterTypeSelftimerOn()I

    move-result p7

    invoke-interface {p6, p7}, Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;->setShutterTypeSelftimerOn(I)V

    .line 494
    iget-object p6, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->getShutterTypeSelftimerOff()I

    move-result p7

    invoke-interface {p6, p7}, Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;->setShutterTypeSelftimerOff(I)V

    .line 496
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->onCreatePhotoHelper()Lcom/transsion/camera/app/common/mode/CommonPhotoHelper;

    move-result-object p6

    iput-object p6, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mPhotoHelper:Lcom/transsion/camera/app/common/mode/CommonPhotoHelper;

    .line 497
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->pocketScreen()Z

    move-result p7

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p7, :cond_34

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->flipScreen()Z

    move-result p7

    if-eqz p7, :cond_32

    goto :goto_34

    :cond_32
    move p7, v0

    goto :goto_35

    :cond_34
    :goto_34
    move p7, v1

    :goto_35
    invoke-virtual {p6, p7}, Lcom/transsion/camera/app/common/mode/CommonPhotoHelper;->setAodCamera(Z)V

    .line 498
    iget-object p6, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mImageProcessor:Lcom/transsion/camera/app/common/mode/IImageProcessor;

    check-cast p6, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;

    iget-object p7, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mPhotoHelper:Lcom/transsion/camera/app/common/mode/CommonPhotoHelper;

    invoke-virtual {p6, p7}, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;->setPhotoHelper(Lcom/transsion/camera/app/common/mode/CommonPhotoHelper;)V

    .line 499
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->pocketScreen()Z

    move-result p6

    if-nez p6, :cond_55

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->flipScreen()Z

    move-result p6

    if-nez p6, :cond_55

    invoke-static {p1}, Lcom/transsion/camera/utils/FeatureSupport;->isContinuousShotSupport(Landroid/content/Context;)Z

    move-result p6

    if-eqz p6, :cond_55

    move p6, v1

    goto :goto_56

    :cond_55
    move p6, v0

    :goto_56
    iput-boolean p6, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mContinuousShotSupport:Z

    if-eqz p6, :cond_67

    .line 500
    invoke-static {}, Lcom/transsion/camera/utils/MonkeyUtils;->specialMonkeySupported()Z

    move-result p6

    if-nez p6, :cond_67

    .line 501
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->initContinuousShot(Landroid/content/Context;)Lcom/transsion/camera/app/common/mode/CommonPhotoMode$IContinuousShot;

    move-result-object p6

    iput-object p6, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mContinuousShot:Lcom/transsion/camera/app/common/mode/CommonPhotoMode$IContinuousShot;

    goto :goto_7f

    .line 503
    :cond_67
    sget-object p6, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p7, Ljava/lang/StringBuilder;

    invoke-direct {p7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "It\'s a project under 4G,force close continuous in monkey scenarios.The continuous shot support is "

    invoke-virtual {p7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mContinuousShotSupport:Z

    invoke-virtual {p7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p7

    invoke-static {p6, p7}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 506
    :goto_7f
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->isGroupCaptureSupport()Z

    move-result p6

    if-eqz p6, :cond_96

    .line 507
    new-instance p6, Lcom/transsion/camera/app/common/groupcapture/GroupCaptureManager;

    invoke-direct {p6}, Lcom/transsion/camera/app/common/groupcapture/GroupCaptureManager;-><init>()V

    iput-object p6, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mGroupCaptureManager:Lcom/transsion/camera/app/common/groupcapture/GroupCaptureManager;

    .line 508
    iget-object p7, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    new-instance v2, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$$ExternalSyntheticLambda5;

    invoke-direct {v2, p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$$ExternalSyntheticLambda5;-><init>(Lcom/transsion/camera/app/common/mode/CommonPhotoMode;)V

    invoke-virtual {p6, p4, p7, v2}, Lcom/transsion/camera/app/common/groupcapture/GroupCaptureManager;->init(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/groupcapture/GroupCaptureManager$PictureCallback;)V

    .line 517
    :cond_96
    invoke-interface {p3}, Lcom/transsion/camera/app/common/IAppUI;->getPreviewOperator()Lcom/transsion/camera/app/common/preview/IPreviewOperator;

    move-result-object p6

    .line 518
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->getInstance()Lcom/transsion/camera/app/common/CommonConfigUtil;

    move-result-object p7

    iget-boolean p7, p7, Lcom/transsion/camera/app/common/CommonConfigUtil;->mPhotoPreviewSupportP3:Z

    if-nez p7, :cond_ac

    .line 519
    invoke-static {p1}, Lcom/transsion/camera/utils/CameraUtil;->getP3PhotoPreviewSwitch(Landroid/content/Context;)I

    move-result p7

    if-ne p7, v1, :cond_a9

    goto :goto_ac

    .line 520
    :cond_a9
    sget-object p7, Lcom/transsion/camera/app/ui/opengl/Texture2dProgram$ProgramType;->TEXTURE_EXT:Lcom/transsion/camera/app/ui/opengl/Texture2dProgram$ProgramType;

    goto :goto_ae

    :cond_ac
    :goto_ac
    sget-object p7, Lcom/transsion/camera/app/ui/opengl/Texture2dProgram$ProgramType;->TEXTURE_EXT_FOR_P3:Lcom/transsion/camera/app/ui/opengl/Texture2dProgram$ProgramType;

    .line 518
    :goto_ae
    invoke-interface {p6, p7}, Lcom/transsion/camera/app/common/preview/IPreviewOperator;->updateGLProgramType(Lcom/transsion/camera/app/ui/opengl/Texture2dProgram$ProgramType;)V

    .line 521
    const-string p6, "key_picture_size"

    invoke-virtual {p0, p6}, Lcom/transsion/camera/app/common/mode/CameraMode;->registerKeyToMonitor(Ljava/lang/String;)V

    .line 522
    const-string p6, "key_algorithm_migrate"

    invoke-virtual {p0, p6}, Lcom/transsion/camera/app/common/mode/CameraMode;->registerKeyToMonitor(Ljava/lang/String;)V

    .line 523
    const-string p6, "key_focus_state"

    invoke-virtual {p0, p6}, Lcom/transsion/camera/app/common/mode/CameraMode;->registerKeyToMonitor(Ljava/lang/String;)V

    .line 524
    const-string p6, "key_super_definition"

    invoke-virtual {p0, p6}, Lcom/transsion/camera/app/common/mode/CameraMode;->registerKeyToMonitor(Ljava/lang/String;)V

    .line 525
    const-string p6, "key_fold_switch_preview"

    invoke-virtual {p0, p6}, Lcom/transsion/camera/app/common/mode/CameraMode;->registerKeyToMonitor(Ljava/lang/String;)V

    .line 526
    const-string p6, "key_self_timer_status"

    invoke-virtual {p0, p6}, Lcom/transsion/camera/app/common/mode/CameraMode;->registerKeyToMonitor(Ljava/lang/String;)V

    .line 527
    const-string p6, "key_update_low_light_state_to_qc"

    invoke-virtual {p0, p6}, Lcom/transsion/camera/app/common/mode/CameraMode;->registerKeyToMonitor(Ljava/lang/String;)V

    .line 528
    const-string p6, "key_super_night_lite_switch"

    invoke-virtual {p0, p6}, Lcom/transsion/camera/app/common/mode/CameraMode;->registerKeyToMonitor(Ljava/lang/String;)V

    .line 529
    const-string p6, "key_continuous_shot_action"

    invoke-virtual {p0, p6}, Lcom/transsion/camera/app/common/mode/CameraMode;->registerKeyToMonitor(Ljava/lang/String;)V

    .line 530
    const-string p6, "key_quick_video_action"

    invoke-virtual {p0, p6}, Lcom/transsion/camera/app/common/mode/CameraMode;->registerKeyToMonitor(Ljava/lang/String;)V

    .line 531
    const-string p6, "key_ui_state_action"

    invoke-virtual {p0, p6}, Lcom/transsion/camera/app/common/mode/CameraMode;->registerKeyToMonitor(Ljava/lang/String;)V

    .line 532
    const-string p6, "key_sat_stream_id"

    invoke-virtual {p0, p6}, Lcom/transsion/camera/app/common/mode/CameraMode;->registerKeyToMonitor(Ljava/lang/String;)V

    .line 533
    const-string p6, "key_self_timer"

    invoke-virtual {p0, p6}, Lcom/transsion/camera/app/common/mode/CameraMode;->registerKeyToMonitor(Ljava/lang/String;)V

    .line 534
    const-string p6, "key_live_photo"

    invoke-virtual {p0, p6}, Lcom/transsion/camera/app/common/mode/CameraMode;->registerKeyToMonitor(Ljava/lang/String;)V

    .line 535
    const-string p6, "key_live_photo_state"

    invoke-virtual {p0, p6}, Lcom/transsion/camera/app/common/mode/CameraMode;->registerKeyToMonitor(Ljava/lang/String;)V

    .line 536
    const-string p6, "key_filter"

    invoke-virtual {p0, p6}, Lcom/transsion/camera/app/common/mode/CameraMode;->registerKeyToMonitor(Ljava/lang/String;)V

    .line 538
    iget-object p6, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {p6}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getStatusMonitor()Lcom/transsion/camera/app/common/setting/StatusMonitor;

    move-result-object p6

    iput-object p6, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    .line 539
    const-string p7, "key_shutter_sound_update"

    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {p6, p7, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 540
    iget-object p6, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string p7, "capture_state"

    invoke-virtual {p6, p7}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p6

    iput-object p6, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mStatusResponder:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    .line 542
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->isSupportMotionCapture()Z

    move-result p6

    if-eqz p6, :cond_136

    .line 543
    new-instance p6, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;

    invoke-direct {p6}, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;-><init>()V

    iput-object p6, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mMotionCaptureManager:Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;

    .line 544
    invoke-virtual {p0, p7}, Lcom/transsion/camera/app/common/mode/CameraMode;->registerKeyToMonitor(Ljava/lang/String;)V

    move-object p6, p5

    move-object p5, p4

    move-object p4, p3

    move-object p3, p2

    move-object p2, p1

    .line 545
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mMotionCaptureManager:Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;

    iget-object p7, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    invoke-virtual/range {p1 .. p7}, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;->init(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor;)V

    .line 548
    :cond_136
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p1

    iget p1, p1, Lcom/transsion/camera/utils/CustomConfigUtil;->mShot2shotMaxCacheNumber:I

    iput p1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mShot2shotMaxCacheNumber:I

    .line 549
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p1

    iget-boolean p1, p1, Lcom/transsion/camera/utils/CustomConfigUtil;->mShot2seeSyncThumbnail:Z

    iput-boolean p1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mShot2seeSyncThumbnail:Z

    .line 550
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "init mShot2shotMaxCacheNumber: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mShot2shotMaxCacheNumber:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 552
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mImageProcessor:Lcom/transsion/camera/app/common/mode/IImageProcessor;

    check-cast p1, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/ImageProcessor;->isBGServiceEnable()Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mIsBGServiceEnable:Z

    .line 553
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mImageProcessor:Lcom/transsion/camera/app/common/mode/IImageProcessor;

    check-cast p1, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/ImageProcessor;->isOffLineSessionSupport()Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mIsBGOffLineEnable:Z

    .line 554
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/camera/utils/CustomConfigUtil;->isQcomCaptureFlow()Z

    move-result p1

    if-eqz p1, :cond_184

    invoke-static {}, Lcom/transsion/camera/utils/FeatureSupport;->isRaw10OfflineJNISupport()Z

    move-result p1

    if-eqz p1, :cond_184

    move p1, v1

    goto :goto_185

    :cond_184
    move p1, v0

    :goto_185
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mIsOfflineEnable:Z

    .line 555
    iget-boolean p1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mIsBGServiceEnable:Z

    if-eqz p1, :cond_193

    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p1

    iget-boolean p1, p1, Lcom/transsion/camera/utils/CustomConfigUtil;->mContinuousHideSaveAnimation:Z

    if-nez p1, :cond_197

    :cond_193
    iget-boolean p1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mIsBGOffLineEnable:Z

    if-eqz p1, :cond_199

    .line 556
    :cond_197
    iput-boolean v1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mContinuousHideSaveAnimation:Z

    .line 559
    :cond_199
    invoke-static {}, Lcom/transsion/camera/utils/FeatureSupport;->isSprdPlatform()Z

    move-result p1

    if-eqz p1, :cond_1a5

    iget-boolean p1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mIsBGOffLineEnable:Z

    if-nez p1, :cond_1a5

    move p1, v1

    goto :goto_1a6

    :cond_1a5
    move p1, v0

    :goto_1a6
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mIsBgCaptureSupport:Z

    .line 560
    iget-object p2, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mImageProcessor:Lcom/transsion/camera/app/common/mode/IImageProcessor;

    check-cast p2, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;

    invoke-virtual {p2, p1}, Lcom/transsion/camera/app/common/mode/ImageProcessor;->setBgCaptureSupport(Z)V

    .line 561
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "init isBGEnable: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mIsBGServiceEnable:Z

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p3, ", isOffLineEnable:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mIsBGOffLineEnable:Z

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p3, ", mIsBgCaptureSupport: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mIsBgCaptureSupport:Z

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 563
    iget-boolean p1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mIsBGServiceEnable:Z

    if-nez p1, :cond_1ec

    iget-boolean p1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mIsBGOffLineEnable:Z

    if-nez p1, :cond_1ec

    iget-boolean p1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mIsOfflineEnable:Z

    if-eqz p1, :cond_1e8

    goto :goto_1ec

    :cond_1e8
    const/4 p1, -0x1

    .line 570
    iput p1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mShot2shotMaxNumberForEnableUI:I

    goto :goto_20e

    .line 564
    :cond_1ec
    :goto_1ec
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p1

    iget-boolean p1, p1, Lcom/transsion/camera/utils/CustomConfigUtil;->mSuperAiRawEnable:Z

    if-nez p1, :cond_206

    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p1

    iget-boolean p1, p1, Lcom/transsion/camera/utils/CustomConfigUtil;->mTurboFusionEnable:Z

    if-eqz p1, :cond_1fd

    goto :goto_206

    .line 567
    :cond_1fd
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p1

    iget p1, p1, Lcom/transsion/camera/utils/CustomConfigUtil;->mShot2shotMaxNumberForEnableUI:I

    iput p1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mShot2shotMaxNumberForEnableUI:I

    goto :goto_20e

    .line 565
    :cond_206
    :goto_206
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p1

    iget p1, p1, Lcom/transsion/camera/utils/CustomConfigUtil;->mShot2shotMaxNumberForTFEnableUI:I

    iput p1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mShot2shotMaxNumberForEnableUI:I

    .line 572
    :goto_20e
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "init mShot2shotMaxNumberForEnableUI: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mShot2shotMaxNumberForEnableUI:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 574
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iget-object p2, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    .line 575
    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p2

    .line 574
    const-string p3, "continuous_low_temperature_protection"

    const-string p4, "string"

    invoke-virtual {p1, p3, p4, p2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 576
    iget-object p2, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mTemperatureHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    iget-object p3, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    invoke-virtual {p3, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/transsion/camera/app/common/ui/HintInfo;->setMessage(Ljava/lang/String;)V

    .line 578
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p1

    iget-boolean p1, p1, Lcom/transsion/camera/utils/CustomConfigUtil;->mIsAdaptLowPlatform:Z

    iput-boolean p1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mIsAdaptLowPlatform:Z

    .line 581
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p1

    iget-boolean p1, p1, Lcom/transsion/camera/utils/CustomConfigUtil;->mProIsoDouble:Z

    if-eqz p1, :cond_268

    .line 582
    new-instance p1, Lcom/transsion/camera/app/common/mode/ProcesserParameters;

    invoke-direct {p1}, Lcom/transsion/camera/app/common/mode/ProcesserParameters;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mParameters:Lcom/transsion/camera/app/common/mode/ProcesserParameters;

    .line 583
    invoke-virtual {p1, v1}, Lcom/transsion/camera/app/common/mode/ProcesserParameters;->setIsoDoubled(Z)V

    .line 584
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mImageProcessor:Lcom/transsion/camera/app/common/mode/IImageProcessor;

    check-cast p1, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;

    iget-object p2, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mParameters:Lcom/transsion/camera/app/common/mode/ProcesserParameters;

    invoke-virtual {p1, p2}, Lcom/transsion/camera/app/common/mode/ImageProcessor;->updateParameters(Lcom/transsion/camera/app/common/mode/ProcesserParameters;)V

    .line 587
    :cond_268
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mGoldWatermarkStyles:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 588
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mGoldWatermarkStyles:Ljava/util/List;

    const-string p2, "0"

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 589
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mGoldWatermarkStyles:Ljava/util/List;

    const-string p2, "1"

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 590
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mGoldWatermarkStyles:Ljava/util/List;

    const-string p2, "2"

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 592
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p1

    iget-boolean p1, p1, Lcom/transsion/camera/utils/CustomConfigUtil;->mCreateVideoSurfaceInPhotoMode:Z

    iput-boolean p1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mNeedCreateVideoSurface:Z

    .line 593
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p1

    iget p1, p1, Lcom/transsion/camera/utils/CustomConfigUtil;->mAutoBackLimitBV:I

    iput p1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mAutoBackLimitBV:I

    .line 594
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p1

    iget-boolean p1, p1, Lcom/transsion/camera/utils/CustomConfigUtil;->mFpsRangeReduce:Z

    iput-boolean p1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mFpsRangeReduce:Z

    .line 595
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p1

    iget-boolean p1, p1, Lcom/transsion/camera/utils/CustomConfigUtil;->mCapturingAddProcessing:Z

    iput-boolean p1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mCapturingAddProcess:Z

    .line 596
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->currentModeSupportLivePhoto()Z

    move-result p1

    if-eqz p1, :cond_2b8

    .line 597
    new-instance p1, Lcom/transsion/camera/app/common/livephoto/LivePhotoManager;

    iget-object p2, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    iget-object p3, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-direct {p1, p2, p3}, Lcom/transsion/camera/app/common/livephoto/LivePhotoManager;-><init>(Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)V

    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mLivePhotoManager:Lcom/transsion/camera/app/common/livephoto/LivePhotoManager;

    .line 598
    iget-object p2, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mVideoClipSavingCallback:Lcom/transsion/camera/app/common/livephoto/ILiveVideoSaveCallback;

    invoke-virtual {p1, p2}, Lcom/transsion/camera/app/common/livephoto/LivePhotoManager;->setLiveVideoSaveCallback(Lcom/transsion/camera/app/common/livephoto/ILiveVideoSaveCallback;)V

    .line 600
    :cond_2b8
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p1

    iget-boolean p1, p1, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportNewCaptureAnimation:Z

    iput-boolean p1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mSupportNewCaptureAnimation:Z

    .line 601
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mIsInContinuousShot:Z

    return-void
.end method

.method protected initContinuousShot(Landroid/content/Context;)Lcom/transsion/camera/app/common/mode/CommonPhotoMode$IContinuousShot;
    .registers 2

    const/4 p0, 0x0

    return-object p0
.end method

.method public isBgCapturing()Z
    .registers 3

    .line 1902
    invoke-static {}, Lcom/transsion/camera/utils/MonkeyUtils;->isUserAMonkey()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    .line 1905
    :cond_8
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mIsBgCaptureSupport:Z

    if-eqz v0, :cond_16

    .line 1906
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mCapturingNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p0

    if-lez p0, :cond_16

    const/4 p0, 0x1

    return p0

    :cond_16
    return v1
.end method

.method public isBgOfflineCapturing()Z
    .registers 5

    .line 1920
    invoke-static {}, Lcom/transsion/camera/utils/MonkeyUtils;->isUserAMonkey()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    .line 1923
    :cond_8
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mImageProcessor:Lcom/transsion/camera/app/common/mode/IImageProcessor;

    if-nez v0, :cond_d

    return v1

    .line 1926
    :cond_d
    sget-object v0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[CapturePerformance] isBgOfflineCapturing mCapturingNumber="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mCapturingNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " , mOfflineCapturingNumber="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mOfflineCapturingNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " , isPicSurfaceDirty:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mImageProcessor:Lcom/transsion/camera/app/common/mode/IImageProcessor;

    check-cast v3, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;

    .line 1927
    invoke-virtual {v3}, Lcom/transsion/camera/app/common/mode/ImageProcessor;->isPicSurfaceDirty()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1926
    invoke-static {v0, v2}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1928
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mIsBGOffLineEnable:Z

    if-eqz v0, :cond_5b

    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mOfflineCapturingNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-lez v0, :cond_5b

    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mImageProcessor:Lcom/transsion/camera/app/common/mode/IImageProcessor;

    check-cast p0, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/ImageProcessor;->isPicSurfaceDirty()Z

    move-result p0

    if-nez p0, :cond_5b

    const/4 p0, 0x1

    return p0

    :cond_5b
    return v1
.end method

.method protected isContinuousShotSupport()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method protected isDefinitionBillionOn()Z
    .registers 2

    .line 279
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    if-eqz p0, :cond_11

    .line 280
    const-string v0, "key_super_definition"

    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 281
    const-string v0, "billion"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0

    :cond_11
    const/4 p0, 0x0

    return p0
.end method

.method protected isExposureTimeAuto()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method protected isFeatureConfiged(Ljava/lang/String;)Z
    .registers 4

    .line 3119
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->getModeSettingUISpec()Lcom/transsion/camera/app/common/ModeSettingUISpec;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->getTopBarSettingUIEntries()[Ljava/lang/String;

    move-result-object v0

    .line 3120
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->flipScreen()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 3121
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->getModeSettingUISpec()Lcom/transsion/camera/app/common/ModeSettingUISpec;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->getFlipModeSettingUIEntries()[Ljava/lang/String;

    move-result-object p0

    goto :goto_1f

    .line 3122
    :cond_17
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->getModeSettingUISpec()Lcom/transsion/camera/app/common/ModeSettingUISpec;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->getModeSettingUIEntries()[Ljava/lang/String;

    move-result-object p0

    .line 3123
    :goto_1f
    invoke-static {p0, p1}, Lcom/transsion/camera/utils/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2e

    invoke-static {v0, p1}, Lcom/transsion/camera/utils/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2c

    goto :goto_2e

    :cond_2c
    const/4 p0, 0x0

    return p0

    :cond_2e
    :goto_2e
    const/4 p0, 0x1

    return p0
.end method

.method protected isFlareCaptureSupport()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method protected isGroupCaptureSupport()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method protected isGroupCapturing()Z
    .registers 1

    .line 405
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mGroupCaptureManager:Lcom/transsion/camera/app/common/groupcapture/GroupCaptureManager;

    if-eqz p0, :cond_c

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/groupcapture/GroupCaptureManager;->isCapturing()Z

    move-result p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method public isLivePhotoMediaRecorderPrepared()Z
    .registers 3

    .line 1342
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mLivePhotoManager:Lcom/transsion/camera/app/common/livephoto/LivePhotoManager;

    const/4 v1, 0x1

    if-nez v0, :cond_6

    return v1

    .line 1345
    :cond_6
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->isLivePhotoOn()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->currentModeSupportLivePhoto()Z

    move-result v0

    if-nez v0, :cond_13

    goto :goto_1a

    .line 1348
    :cond_13
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mLivePhotoManager:Lcom/transsion/camera/app/common/livephoto/LivePhotoManager;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/livephoto/LivePhotoManager;->isLivePhotoMediaRecorderPrepared()Z

    move-result p0

    return p0

    :cond_1a
    :goto_1a
    return v1
.end method

.method protected isLivePhotoOn()Z
    .registers 2

    .line 681
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return p0

    .line 684
    :cond_6
    const-string v0, "key_live_photo"

    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 685
    const-string v0, "on"

    invoke-static {v0, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method protected isNeedContinuousHint()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public isNeedDeviceCaptureSound()Z
    .registers 4

    .line 954
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->isGroupCapturing()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 955
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mGroupCaptureManager:Lcom/transsion/camera/app/common/groupcapture/GroupCaptureManager;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/groupcapture/GroupCaptureManager;->isCaptureSoundNeeded()Z

    move-result p0

    return p0

    .line 957
    :cond_d
    iget v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCurShutterPriority:I

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->needQuickCapture(I)I

    move-result v0

    if-lez v0, :cond_2d

    .line 959
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[QuickCapture] isNeedDeviceCaptureSound return, needQCValue:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :cond_2d
    const/4 p0, 0x1

    return p0
.end method

.method protected isShot2ShotEnable()Z
    .registers 2

    .line 2626
    invoke-static {}, Lcom/transsion/camera/utils/MonkeyUtils;->isUserAMonkey()Z

    move-result v0

    if-nez v0, :cond_c

    iget-boolean p0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mDeferOnNextCapAfterJpeg:Z

    if-nez p0, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method protected isSuperDefinition108MInLowPlatform()Z
    .registers 2

    .line 275
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mIs108MInLowPlatform:Z

    if-eqz v0, :cond_c

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->isDefinitionBillionOn()Z

    move-result p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method protected isSuperDefinitionOn()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method protected isSupport200M()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method protected isSupportMotionCapture()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method protected isSyncThumbnail()Z
    .registers 4

    .line 1933
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->isSuperDefinitionOn()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_12

    .line 1934
    invoke-static {}, Lcom/transsion/camera/app/common/isphidl/ISPHIDLController;->getInstance()Lcom/transsion/camera/app/common/isphidl/ISPHIDLController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/transsion/camera/app/common/isphidl/ISPHIDLController;->hasService()Z

    move-result v2

    if-eqz v2, :cond_12

    return v1

    .line 1938
    :cond_12
    iget-boolean v2, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mShot2seeSyncThumbnail:Z

    if-nez v2, :cond_20

    if-nez v0, :cond_20

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->isExposureTimeAuto()Z

    move-result p0

    if-nez p0, :cond_1f

    goto :goto_20

    :cond_1f
    return v1

    :cond_20
    :goto_20
    const/4 p0, 0x1

    return p0
.end method

.method protected isTpPictureToVideoSupport()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method protected needMirror()Z
    .registers 4

    .line 2388
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v1, "key_mirror"

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "on"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2b

    .line 2389
    invoke-static {}, Lcom/transsion/camera/adapter/CameraAgentFactory;->getCameraAgent()Lcom/transsion/camera/adapter/CameraAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/CameraAgent;->getCameraDeviceInfo()Lcom/transsion/camera/adapter/ICameraDeviceInfo;

    move-result-object v0

    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    .line 2390
    invoke-interface {v2}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getCameraId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->getCameraInfo(Ljava/lang/String;)Lcom/transsion/camera/adapter/ICameraInfo;

    move-result-object v0

    invoke-interface {v0}, Lcom/transsion/camera/adapter/ICameraInfo;->getFacing()I

    move-result v0

    if-ne v0, v1, :cond_2b

    move v0, v1

    goto :goto_2c

    :cond_2b
    const/4 v0, 0x0

    .line 2395
    :goto_2c
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->flipScreen()Z

    move-result v2

    if-nez v2, :cond_42

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->pocketScreen()Z

    move-result v2

    if-nez v2, :cond_42

    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/transsion/camera/utils/CameraUtil;->isVIPSelfieMode(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_41

    goto :goto_42

    :cond_41
    return v0

    :cond_42
    :goto_42
    return v1
.end method

.method public needQCSaveJpegToFile([BZJ)I
    .registers 14

    .line 2561
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[QuickCapture]needQCSaveJpegToFile, is jpeg valid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz p1, :cond_12

    move v4, v3

    goto :goto_13

    :cond_12
    move v4, v2

    :goto_13
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", isBGImage:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-nez p2, :cond_c3

    .line 2564
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->takePictureEnded()V

    .line 2565
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->isValid()Z

    move-result v0

    .line 2567
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mImageProcessor:Lcom/transsion/camera/app/common/mode/IImageProcessor;

    check-cast v1, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/mode/ImageProcessor;->getFirstCaptureInfoType()I

    move-result v1

    .line 2568
    sget-object v4, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "needQCSaveJpegToFile, type: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ",mPostViewCallbackNumber: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mPostViewCallbackNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-gtz v1, :cond_60

    move v1, v3

    goto :goto_7a

    .line 2573
    :cond_60
    iget-boolean v1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mIsSupportPostView:Z

    if-eqz v1, :cond_79

    iget v1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mThumbNailType:I

    if-eq v1, v3, :cond_79

    .line 2574
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mPostViewCallbackNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    if-gtz v1, :cond_72

    move v1, v3

    goto :goto_73

    :cond_72
    move v1, v2

    .line 2575
    :goto_73
    iget-object v4, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mPostViewCallbackNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    goto :goto_7a

    :cond_79
    move v1, v2

    :goto_7a
    if-eqz v0, :cond_83

    if-eqz v1, :cond_83

    if-eqz p1, :cond_83

    .line 2579
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->updateThumbnailView([B)V

    .line 2581
    :cond_83
    invoke-virtual {p0, v3}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->checkCaptureResult(Z)V

    .line 2582
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getDataStore()Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object v0

    .line 2583
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getDataStore()Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v1

    const-string v4, "key_super_night_capture_status"

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mSuperNightCaptureStatus:Ljava/lang/String;

    .line 2584
    iget-boolean v1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mIsShowSelfTimer:Z

    if-nez v1, :cond_10a

    const-string/jumbo v1, "value_super_night_capture_begin"

    .line 2585
    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_10a

    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    .line 2586
    invoke-interface {v0}, Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;->isVideoRecording()Z

    move-result v0

    if-nez v0, :cond_10a

    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    .line 2587
    invoke-interface {v0}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->shutterUIProcessing()Z

    move-result v0

    if-nez v0, :cond_10a

    .line 2588
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/4 v1, -0x1

    invoke-interface {v0, v3, v1, v5}, Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;->updateUIState(IILjava/lang/String;)V

    goto :goto_10a

    .line 2591
    :cond_c3
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mImageProcessor:Lcom/transsion/camera/app/common/mode/IImageProcessor;

    check-cast v0, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/mode/ImageProcessor;->getFirstCaptureInfoType()I

    move-result v0

    if-gtz v0, :cond_ce

    goto :goto_db

    .line 2594
    :cond_ce
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mIsSupportPostView:Z

    if-eqz v0, :cond_db

    iget v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mThumbNailType:I

    if-eq v0, v3, :cond_db

    .line 2595
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mPostViewCallbackNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 2598
    :cond_db
    :goto_db
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->isValid()Z

    move-result v0

    if-eqz v0, :cond_10a

    invoke-static {}, Lcom/transsion/camera/app/common/isphidl/ISPHIDLController;->getInstance()Lcom/transsion/camera/app/common/isphidl/ISPHIDLController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/isphidl/ISPHIDLController;->isPostAlgoShot2Shoting()Z

    move-result v0

    if-nez v0, :cond_10a

    iget-boolean v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mShutterStarting:Z

    if-nez v0, :cond_10a

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->isSupport200M()Z

    move-result v0

    if-nez v0, :cond_10a

    .line 2599
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/16 v1, 0xe

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 2600
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mStatusResponder:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    const-string v1, "capture_state"

    const-string v3, "capture_end"

    invoke-virtual {v0, v1, v3}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2601
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->takePictureEnded()V

    :cond_10a
    :goto_10a
    if-eqz p1, :cond_119

    .line 2605
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mImageProcessor:Lcom/transsion/camera/app/common/mode/IImageProcessor;

    move-object v3, p0

    check-cast v3, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;

    const/4 v5, 0x0

    move-object v4, p1

    move v6, p2

    move-wide v7, p3

    invoke-virtual/range {v3 .. v8}, Lcom/transsion/camera/app/common/mode/ImageProcessor;->saveJpegToFile([BLandroid/graphics/Bitmap;ZJ)V

    goto :goto_120

    .line 2607
    :cond_119
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mImageProcessor:Lcom/transsion/camera/app/common/mode/IImageProcessor;

    check-cast p0, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/ImageProcessor;->removeCaptureThumbInfo()V

    :goto_120
    return v2
.end method

.method public needQCUpdateThumbnailView(ILandroid/graphics/Bitmap;Lcom/transsion/camera/app/common/mode/TimestampInfo;)I
    .registers 7

    .line 2548
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[QuickCapture]needQCUpdateThumbnailView whichThumbnail:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 2549
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mCaptureAnimationByThumbnail:Z

    if-eqz v0, :cond_21

    .line 2550
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/16 v1, 0x96

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 2552
    :cond_21
    invoke-virtual {p0, p2}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->updateThumbnailView(Landroid/graphics/Bitmap;)V

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2a

    .line 2554
    invoke-direct {p0, p2, p1, p3}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->doProcessingMedia(Landroid/graphics/Bitmap;ILcom/transsion/camera/app/common/mode/TimestampInfo;)V

    :cond_2a
    const/4 p0, 0x0

    return p0
.end method

.method protected needQuickCapture(I)I
    .registers 7

    .line 3204
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v1, "key_self_timer"

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3205
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, -0x1

    if-nez v1, :cond_18

    const-string v1, "off"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_18

    return v2

    .line 3207
    :cond_18
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mIsShowSelfTimer:Z

    if-eqz v0, :cond_1d

    return v2

    .line 3209
    :cond_1d
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mIsShowSelfTimerDelay:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_25

    .line 3210
    iput-boolean v1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mIsShowSelfTimerDelay:Z

    return v2

    .line 3214
    :cond_25
    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->queryFlashValue()Ljava/lang/String;

    move-result-object v0

    .line 3215
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const-string v4, "on"

    if-nez v3, :cond_4d

    const-string v3, "auto"

    .line 3216
    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3d

    iget-boolean v3, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mIsLowLight:Z

    if-nez v3, :cond_4b

    .line 3217
    :cond_3d
    invoke-static {v0, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4b

    const-string v3, "screenflash"

    .line 3218
    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4d

    :cond_4b
    const/4 p0, -0x2

    return p0

    .line 3222
    :cond_4d
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->isSuperDefinitionOn()Z

    move-result v0

    if-eqz v0, :cond_55

    const/4 p0, -0x3

    return p0

    .line 3226
    :cond_55
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->isGroupCapturing()Z

    move-result v0

    if-eqz v0, :cond_5c

    return v2

    .line 3230
    :cond_5c
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mIsCurModeSupportQC:Z

    if-eqz v0, :cond_7b

    const/4 v0, 0x1

    if-ne p1, v0, :cond_7b

    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/transsion/camera/utils/CameraUtil;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_7b

    .line 3231
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string p1, "key_super_night_lite"

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 3232
    invoke-static {p0, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_7a

    return v2

    :cond_7a
    return v0

    :cond_7b
    return v1
.end method

.method protected needShutterSound()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public notifyPictureDataFail()V
    .registers 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1649
    invoke-virtual {p0, v0, v1}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->onModeCaptureFailed(Z[J)V

    return-void
.end method

.method public notifyPictureTaken([BZIJ)I
    .registers 15

    .line 1623
    sget-object v0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[CapturePerformance] notifyPictureTaken, isBGImage: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ",picCountRemaining: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mCapturingNumber:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mCapturingNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1625
    invoke-direct {p0, p2}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->shouldCorrectCapturingNumber(Z)Z

    move-result v1

    if-eqz v1, :cond_5d

    if-ltz p3, :cond_5d

    .line 1626
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mCapturingNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    add-int/lit8 v2, p3, 0x1

    if-le v1, v2, :cond_5d

    .line 1627
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mCapturingNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 1628
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[CapturePerformance] notifyPictureTaken, correct mCapturingNumber:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mCapturingNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1631
    :cond_5d
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mStatusResponder:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    const-string v1, "capture_state"

    const-string v2, "capture_jpeg_end"

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1632
    iget-object v3, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mGroupCaptureManager:Lcom/transsion/camera/app/common/groupcapture/GroupCaptureManager;

    move-object v4, p1

    move v7, p2

    if-eqz v3, :cond_75

    move v8, p3

    move-wide v5, p4

    .line 1633
    invoke-virtual/range {v3 .. v8}, Lcom/transsion/camera/app/common/groupcapture/GroupCaptureManager;->notifyPictureTaken([BJZI)I

    move-result p1

    if-eqz p1, :cond_76

    return p1

    :cond_75
    move-wide v5, p4

    .line 1638
    :cond_76
    invoke-virtual {p0, v4, v7, v5, v6}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->processQCSaveData([BZJ)I

    move-result p1

    if-eqz p1, :cond_7e

    const/4 p0, -0x1

    return p0

    .line 1643
    :cond_7e
    invoke-direct {p0, v4, v7}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->doOnPictureTaken([BZ)V

    const/4 p0, 0x0

    return p0
.end method

.method public notifySwitchByUser(Z)V
    .registers 2

    .line 3173
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mSwitchByUser:Z

    return-void
.end method

.method public onCameraStateChanged(I)V
    .registers 3

    .line 2514
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraMode;->onCameraStateChanged(I)V

    const/4 v0, 0x6

    if-ne p1, v0, :cond_10

    .line 2516
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mContinuousShot:Lcom/transsion/camera/app/common/mode/CommonPhotoMode$IContinuousShot;

    if-eqz p1, :cond_d

    .line 2517
    invoke-interface {p1}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$IContinuousShot;->onPreviewStarted()V

    .line 2519
    :cond_d
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->unlockAeAfIfNeeded()V

    :cond_10
    return-void
.end method

.method public onCaptureSequenceCompleted(IJ)V
    .registers 6

    const/4 v0, 0x0

    .line 2707
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mIsInContinuousShot:Z

    .line 2708
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mContinuousShot:Lcom/transsion/camera/app/common/mode/CommonPhotoMode$IContinuousShot;

    if-nez v0, :cond_f

    .line 2709
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "mContinuousShot is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 2712
    :cond_f
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "onCaptureSequenceCompleted"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 2713
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mContinuousShot:Lcom/transsion/camera/app/common/mode/CommonPhotoMode$IContinuousShot;

    invoke-interface {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/ICameraControl$IContinuousShotCallback;->onCaptureSequenceCompleted(IJ)V

    return-void
.end method

.method protected onCheckCaptureResultEnd(II)V
    .registers 4

    .line 2087
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-gtz p1, :cond_13

    if-lez p2, :cond_13

    if-eqz v0, :cond_13

    .line 2089
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->isValid()Z

    move-result p0

    if-eqz p0, :cond_13

    const/16 p0, 0x1a3

    .line 2090
    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    :cond_13
    return-void
.end method

.method public onConfigAfterStopPreview()V
    .registers 2

    .line 2504
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->onConfigAfterStopPreview()V

    .line 2505
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->isShot2ShotEnable()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 2506
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->setShot2ShotCallback(Lcom/transsion/camera/adapter/CameraProxy$Shot2ShotCallback;)V

    :cond_f
    return-void
.end method

.method public onConfigBeforeStartPreview()V
    .registers 4

    .line 2486
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->onConfigBeforeStartPreview()V

    .line 2487
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onConfigBeforeStartPreview reset mCapturingNumber, isBgOfflineCapturing:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->isBgOfflineCapturing()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 2488
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->isBgOfflineCapturing()Z

    move-result v0

    if-nez v0, :cond_33

    .line 2489
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mCapturingNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 2490
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mOfflineCapturingNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 2491
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mShot2ShotLeftNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 2493
    :cond_33
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mCaptureState:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v1, Lcom/transsion/camera/adapter/NullCameraCaptureState;

    invoke-direct {v1}, Lcom/transsion/camera/adapter/NullCameraCaptureState;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 2494
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->isShot2ShotEnable()Z

    move-result v0

    if-nez v0, :cond_55

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->supportPostAlgoDeferRequest()Z

    move-result v0

    if-eqz v0, :cond_4e

    iget-boolean v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mDeferOnNextCapAfterJpeg:Z

    if-eqz v0, :cond_4e

    goto :goto_55

    .line 2497
    :cond_4e
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->setShot2ShotCallback(Lcom/transsion/camera/adapter/CameraProxy$Shot2ShotCallback;)V

    return-void

    .line 2495
    :cond_55
    :goto_55
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mShot2ShotCallback:Lcom/transsion/camera/adapter/CameraProxy$Shot2ShotCallback;

    invoke-virtual {v0, p0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->setShot2ShotCallback(Lcom/transsion/camera/adapter/CameraProxy$Shot2ShotCallback;)V

    return-void
.end method

.method public onContinueShutterStart()V
    .registers 3

    .line 1600
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "onContinueShutterStart"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1601
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->isContinuousShotSupport()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1602
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->startContinuousShutter()V

    :cond_10
    return-void
.end method

.method public final onContinuousShotFailed()V
    .registers 3

    const/4 v0, 0x0

    .line 2697
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mIsInContinuousShot:Z

    .line 2698
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mContinuousShot:Lcom/transsion/camera/app/common/mode/CommonPhotoMode$IContinuousShot;

    .line 2699
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "onContinuousShotFailed"

    invoke-static {p0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-eqz v0, :cond_11

    .line 2701
    invoke-interface {v0}, Lcom/transsion/camera/app/common/ICameraControl$IContinuousShotCallback;->onContinuousShotFailed()V

    :cond_11
    return-void
.end method

.method public final onContinuousShotProgress([B)V
    .registers 3

    .line 2686
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mContinuousShot:Lcom/transsion/camera/app/common/mode/CommonPhotoMode$IContinuousShot;

    if-nez v0, :cond_c

    .line 2687
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "mContinuousShot is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 2692
    :cond_c
    invoke-interface {v0, p1}, Lcom/transsion/camera/app/common/ICameraControl$IContinuousShotCallback;->onContinuousShotProgress([B)V

    return-void
.end method

.method protected onCreatePhotoHelper()Lcom/transsion/camera/app/common/mode/CommonPhotoHelper;
    .registers 1

    .line 472
    new-instance p0, Lcom/transsion/camera/app/common/mode/CommonPhotoHelper;

    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoHelper;-><init>()V

    return-object p0
.end method

.method public onModeCaptureCompleted(Lcom/transsion/camera/adapter/CameraResults;Landroid/hardware/camera2/CaptureResult;Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;)V
    .registers 4

    .line 1896
    iget-object p2, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p3, "[onModeCaptureCompleted]"

    invoke-static {p2, p3}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1897
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mImageProcessor:Lcom/transsion/camera/app/common/mode/IImageProcessor;

    check-cast p0, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;->onCaptureCompleted(Lcom/transsion/camera/adapter/CameraResults;)V

    return-void
.end method

.method public onModeCaptureFailed(Z[J)V
    .registers 7

    .line 1845
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onModeCaptureFailed] there is something wrong when capturing, removeCaptureThumbInfo:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1846
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mShutterStarting:Z

    .line 1847
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mShot2ShotLeftNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    if-lez v1, :cond_26

    .line 1848
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mShot2ShotLeftNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 1850
    :cond_26
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mImageProcessor:Lcom/transsion/camera/app/common/mode/IImageProcessor;

    check-cast v1, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;

    invoke-virtual {v1, p1}, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;->onCaptureFailed(Z)V

    .line 1851
    iget-boolean p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mIsCurModeSupportQC:Z

    if-eqz p1, :cond_38

    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mQuickCaptureManager:Lcom/transsion/camera/app/common/provider/QuickCaptureManager;

    if-eqz p1, :cond_38

    .line 1852
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/provider/QuickCaptureManager;->sendFinishThisShot()Z

    .line 1854
    :cond_38
    invoke-static {}, Lcom/transsion/camera/app/common/isphidl/ISPHIDLController;->getInstance()Lcom/transsion/camera/app/common/isphidl/ISPHIDLController;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/transsion/camera/app/common/isphidl/ISPHIDLController;->onCaptureFailed([J)V

    .line 1855
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->checkCaptureResult(Z)V

    .line 1856
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/16 p2, 0x21

    invoke-interface {p1, p2}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 1857
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mContinuousShot:Lcom/transsion/camera/app/common/mode/CommonPhotoMode$IContinuousShot;

    const/4 p2, 0x0

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-eqz p1, :cond_56

    invoke-interface {p1}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$IContinuousShot;->isShotting()Z

    move-result p1

    if-nez p1, :cond_74

    .line 1858
    :cond_56
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v3, "com.transsion.camera.feature.mode.longexposure.LongExposureModeEntry"

    invoke-static {p1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_74

    .line 1859
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v3, "com.transsion.camera.feature.mode.timelapsemode.TimelapsePhotoModeEntry"

    invoke-static {p1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_74

    .line 1860
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p1, v2, v1, p2}, Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;->updateUIState(IILjava/lang/String;)V

    goto :goto_7b

    .line 1862
    :cond_74
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v3, "[onModeCaptureFailed] mContinuousShot isShotting"

    invoke-static {p1, v3}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1864
    :goto_7b
    iget p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCurShutterPriority:I

    const/4 v3, 0x2

    if-eq p1, v3, :cond_84

    const/16 v3, 0xa

    if-ne p1, v3, :cond_85

    :cond_84
    move v0, v2

    .line 1865
    :cond_85
    iget-boolean p1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mCapturingAddProcess:Z

    if-eqz p1, :cond_b5

    if-nez v0, :cond_b5

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.transsion.camera.feature.mode.litefacebeauty.LiteFaceBeautyModeEntry"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_a3

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.transsion.camera.feature.mode.stblurmode.STBlurModeEntry"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_b5

    .line 1866
    :cond_a3
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mCaptureHandler:Lcom/transsion/camera/app/common/mode/CommonPhotoMode$CaptureHandler;

    if-eqz p1, :cond_ab

    const/4 v0, 0x3

    .line 1867
    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 1869
    :cond_ab
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p1, v2}, Lcom/transsion/camera/app/common/IAppUI;->setShutterEnabled(Z)V

    .line 1870
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p1, v2, v1, p2}, Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;->updateUIState(IILjava/lang/String;)V

    .line 1872
    :cond_b5
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mGroupCaptureManager:Lcom/transsion/camera/app/common/groupcapture/GroupCaptureManager;

    if-eqz p0, :cond_bc

    .line 1873
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/groupcapture/GroupCaptureManager;->onCaptureFailed()V

    :cond_bc
    return-void
.end method

.method public onModeCaptureProgressed(Lcom/transsion/camera/adapter/CameraResults;Lcom/transsion/camera/adapter/CameraProxy$ICameraCaptureState;)V
    .registers 3

    .line 1758
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/common/mode/ICameraMode;->onModeCaptureProgressed(Lcom/transsion/camera/adapter/CameraResults;Lcom/transsion/camera/adapter/CameraProxy$ICameraCaptureState;)V

    .line 1759
    invoke-static {}, Lcom/transsion/camera/app/common/isphidl/ISPHIDLController;->getInstance()Lcom/transsion/camera/app/common/isphidl/ISPHIDLController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/isphidl/ISPHIDLController;->isSupport()Z

    move-result p0

    if-eqz p0, :cond_e

    return-void

    .line 1762
    :cond_e
    invoke-static {}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManagerProxy;->getInstance()Lcom/transsion/camera/app/common/storage/BackgroundStorageManagerProxy;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManagerProxy;->onCaptureProgressed(Lcom/transsion/camera/adapter/CameraProxy$ICameraCaptureState;)V

    return-void
.end method

.method public onModeCaptureStarted(JLcom/transsion/camera/adapter/CameraProxy$ICameraCaptureState;)V
    .registers 13

    .line 1709
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onModeCaptureStarted] mImageProcessor.onCaptureStarted(),type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mThumbNailType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1710
    invoke-static {}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManagerProxy;->getInstance()Lcom/transsion/camera/app/common/storage/BackgroundStorageManagerProxy;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManagerProxy;->onCaptureStarted(JLcom/transsion/camera/adapter/CameraProxy$ICameraCaptureState;)V

    .line 1711
    iget-object p3, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mImageProcessor:Lcom/transsion/camera/app/common/mode/IImageProcessor;

    check-cast p3, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->isGroupCapturing()Z

    move-result v0

    invoke-virtual {p3, v0}, Lcom/transsion/camera/app/common/mode/ImageProcessor;->setIsGroupCapturing(Z)V

    .line 1712
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->isGroupCapturing()Z

    move-result p3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p3, :cond_53

    .line 1713
    iget-object p3, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mGroupCaptureManager:Lcom/transsion/camera/app/common/groupcapture/GroupCaptureManager;

    invoke-virtual {p3}, Lcom/transsion/camera/app/common/groupcapture/GroupCaptureManager;->isCaptureSoundNeeded()Z

    move-result p3

    if-eqz p3, :cond_49

    .line 1714
    iget-object p3, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mGroupCaptureManager:Lcom/transsion/camera/app/common/groupcapture/GroupCaptureManager;

    invoke-virtual {p3, p1, p2}, Lcom/transsion/camera/app/common/groupcapture/GroupCaptureManager;->onModeCaptureStarted(J)V

    .line 1715
    iget-object p3, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mImageProcessor:Lcom/transsion/camera/app/common/mode/IImageProcessor;

    check-cast p3, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;

    iget p0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mThumbNailType:I

    invoke-virtual {p3, p0, v1, p1, p2}, Lcom/transsion/camera/app/common/mode/ImageProcessor;->onCaptureStarted(IZJ)V

    return-void

    .line 1717
    :cond_49
    iget-object p3, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mImageProcessor:Lcom/transsion/camera/app/common/mode/IImageProcessor;

    check-cast p3, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;

    iget p0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mThumbNailType:I

    invoke-virtual {p3, p0, v0, p1, p2}, Lcom/transsion/camera/app/common/mode/ImageProcessor;->onCaptureStarted(IZJ)V

    return-void

    .line 1722
    :cond_53
    iget-object p3, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mImageProcessor:Lcom/transsion/camera/app/common/mode/IImageProcessor;

    check-cast p3, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;

    iget v2, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mThumbNailType:I

    invoke-virtual {p3, v2, v1, p1, p2}, Lcom/transsion/camera/app/common/mode/ImageProcessor;->onCaptureStarted(IZJ)V

    .line 1723
    new-instance p3, Lcom/transsion/camera/app/common/livephoto/PhotoTaskData;

    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v2

    invoke-direct {p3, v2}, Lcom/transsion/camera/app/common/livephoto/PhotoTaskData;-><init>(Ljava/io/File;)V

    .line 1724
    invoke-virtual {p3, v0}, Lcom/transsion/camera/app/common/livephoto/PhotoTaskData;->setLiveShotTask(Z)V

    .line 1725
    invoke-virtual {p3, p1, p2}, Lcom/transsion/camera/app/common/livephoto/PhotoTaskData;->setJpegTimestamp(J)V

    .line 1726
    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->isAIFrameOn()Z

    move-result v2

    invoke-virtual {p3, v2}, Lcom/transsion/camera/app/common/livephoto/PhotoTaskData;->setAIFrame(Z)V

    .line 1727
    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->isAIZoomSROn()Z

    move-result v2

    invoke-virtual {p3, v2}, Lcom/transsion/camera/app/common/livephoto/PhotoTaskData;->setAIZoomSR(Z)V

    .line 1728
    invoke-static {}, Lcom/transsion/camera/app/common/livephoto/PhotoTaskDataCache;->getInstance()Lcom/transsion/camera/app/common/livephoto/PhotoTaskDataCache;

    move-result-object v2

    invoke-virtual {v2, p1, p2, p3}, Lcom/transsion/camera/app/common/livephoto/PhotoTaskDataCache;->putPhotoTaskData(JLcom/transsion/camera/app/common/livephoto/PhotoTaskData;)V

    .line 1729
    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onModeCaptureStarted, timestamp: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1730
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->currentModeSupportLivePhoto()Z

    move-result v2

    if-eqz v2, :cond_128

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->isLivePhotoOn()Z

    move-result v2

    if-eqz v2, :cond_128

    .line 1731
    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mLivePhotoShootingHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    iget-object v3, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget-object v6, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    .line 1732
    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 1731
    const-string v7, "live_photo_shooting_tips"

    const-string v8, "string"

    invoke-virtual {v5, v7, v8, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/transsion/camera/app/common/ui/HintInfo;->setMessage(Ljava/lang/String;)V

    .line 1735
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v2

    invoke-virtual {v2}, Lcom/transsion/camera/utils/CustomConfigUtil;->getLivePhotoAlgorithmType()I

    move-result v2

    if-nez v2, :cond_cc

    move v0, v1

    :cond_cc
    if-eqz v0, :cond_d1

    const/16 v0, 0x2ee

    goto :goto_d3

    :cond_d1
    const/16 v0, 0x5dc

    .line 1740
    :goto_d3
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mLivePhotoShootingHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {v1, v0}, Lcom/transsion/camera/app/common/ui/HintInfo;->setDuration(I)V

    .line 1741
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz v0, :cond_e1

    .line 1742
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mLivePhotoShootingHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->showHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    .line 1744
    :cond_e1
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mLivePhotoManager:Lcom/transsion/camera/app/common/livephoto/LivePhotoManager;

    if-eqz v0, :cond_128

    .line 1745
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ", photoTaskData: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", mCaptureOrientation: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mCaptureOrientation:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1748
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCurrentCameraId:Ljava/lang/String;

    invoke-static {p1}, Lcom/transsion/camera/adapter/CameraInfoUtil;->isCameraFacingFront(Ljava/lang/String;)Z

    move-result p1

    .line 1749
    iget-object p2, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v0, "key_mirror"

    invoke-interface {p2, v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "on"

    invoke-static {v0, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    .line 1750
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->getOrientationHint(ZZ)I

    move-result p1

    .line 1751
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mLivePhotoManager:Lcom/transsion/camera/app/common/livephoto/LivePhotoManager;

    invoke-virtual {p0, p3, p1}, Lcom/transsion/camera/app/common/livephoto/LivePhotoManager;->capture(Lcom/transsion/camera/app/common/livephoto/PhotoTaskData;I)V

    :cond_128
    return-void
.end method

.method public onPostViewData([BIIIIJ)V
    .registers 20

    move-wide/from16 v0, p6

    .line 2297
    invoke-static {}, Lcom/transsion/camera/utils/FeatureSupport;->isSprdPlatform()Z

    move-result v2

    const/4 v3, 0x2

    if-eqz v2, :cond_f

    iget v2, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mThumbNailType:I

    if-eq v2, v3, :cond_f

    goto/16 :goto_8a

    .line 2300
    :cond_f
    invoke-direct/range {p0 .. p1}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->isInvalid([B)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 2301
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "onPostViewData,isInvalid,return"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 2304
    :cond_1d
    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onPostViewData1, mPostViewCallbackNumber: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mPostViewCallbackNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 2305
    iget-boolean v2, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mIsSupportPostView:Z

    if-eqz v2, :cond_52

    .line 2306
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->isGroupCapturing()Z

    move-result v2

    if-eqz v2, :cond_4d

    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mPostViewCallbackNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    const/4 v4, 0x1

    if-lt v2, v4, :cond_4d

    goto :goto_8a

    .line 2309
    :cond_4d
    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mPostViewCallbackNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 2312
    :cond_52
    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mPostViewCallbackNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    if-gtz v2, :cond_62

    .line 2314
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "onPostViewData,skip, return"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 2317
    :cond_62
    iget v10, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mCaptureOrientation:I

    .line 2318
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->needMirror()Z

    move-result v11

    const/16 v8, 0x100

    const/16 v9, 0x4b

    move-object v4, p1

    move v5, p2

    move v6, p3

    move/from16 v7, p4

    .line 2317
    invoke-static/range {v4 .. v11}, Lcom/transsion/camera/utils/BitmapUtils;->createBitmapFromYUV([BIIIIIIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 2319
    iget-object p2, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mTimestampInfo:Lcom/transsion/camera/app/common/mode/TimestampInfo;

    if-eqz p2, :cond_7a

    goto :goto_81

    :cond_7a
    new-instance p2, Lcom/transsion/camera/app/common/mode/TimestampInfo;

    const-wide/16 v4, -0x1

    invoke-direct {p2, v0, v1, v4, v5}, Lcom/transsion/camera/app/common/mode/TimestampInfo;-><init>(JJ)V

    .line 2320
    :goto_81
    invoke-virtual {p2, v0, v1}, Lcom/transsion/camera/app/common/mode/TimestampInfo;->updateTimestamp(J)V

    .line 2321
    invoke-direct {p0, v3, p1, p2}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->processQCThumbnail(ILandroid/graphics/Bitmap;Lcom/transsion/camera/app/common/mode/TimestampInfo;)I

    move-result v0

    if-eqz v0, :cond_8b

    :goto_8a
    return-void

    .line 2325
    :cond_8b
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mCaptureAnimationByThumbnail:Z

    if-eqz v0, :cond_96

    .line 2326
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/16 v1, 0x96

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 2328
    :cond_96
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->updateThumbnailView(Landroid/graphics/Bitmap;)V

    .line 2329
    invoke-direct {p0, p1, v3, p2}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->doProcessingMedia(Landroid/graphics/Bitmap;ILcom/transsion/camera/app/common/mode/TimestampInfo;)V

    return-void
.end method

.method public onPostViewData([BJ)V
    .registers 7

    .line 2347
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPostViewData2, mPostViewCallbackNumber: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mPostViewCallbackNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 2348
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mIsSupportPostView:Z

    if-eqz v0, :cond_35

    .line 2349
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->isGroupCapturing()Z

    move-result v0

    if-eqz v0, :cond_30

    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mPostViewCallbackNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_30

    goto :goto_6a

    .line 2352
    :cond_30
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mPostViewCallbackNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 2355
    :cond_35
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mPostViewCallbackNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-gtz v0, :cond_45

    .line 2357
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "onPostViewData,skip, return"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    :cond_45
    if-nez p1, :cond_4f

    .line 2361
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "null,jpegThumbnail, return"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    :cond_4f
    const/4 v0, 0x0

    .line 2364
    invoke-static {p1, v0}, Lcom/transsion/camera/utils/BitmapUtils;->createBitmapFromByte([BI)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 2365
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mTimestampInfo:Lcom/transsion/camera/app/common/mode/TimestampInfo;

    if-eqz v0, :cond_59

    goto :goto_60

    :cond_59
    new-instance v0, Lcom/transsion/camera/app/common/mode/TimestampInfo;

    const-wide/16 v1, -0x1

    invoke-direct {v0, p2, p3, v1, v2}, Lcom/transsion/camera/app/common/mode/TimestampInfo;-><init>(JJ)V

    .line 2366
    :goto_60
    invoke-virtual {v0, p2, p3}, Lcom/transsion/camera/app/common/mode/TimestampInfo;->updateTimestamp(J)V

    const/4 p2, 0x3

    .line 2367
    invoke-direct {p0, p2, p1, v0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->processQCThumbnail(ILandroid/graphics/Bitmap;Lcom/transsion/camera/app/common/mode/TimestampInfo;)I

    move-result p2

    if-eqz p2, :cond_6b

    :goto_6a
    return-void

    .line 2371
    :cond_6b
    iget-boolean p2, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mCaptureAnimationByThumbnail:Z

    if-eqz p2, :cond_76

    .line 2372
    iget-object p2, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/16 p3, 0x96

    invoke-interface {p2, p3}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 2374
    :cond_76
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->updateThumbnailView(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public onRecording(I[F)V
    .registers 5

    .line 3482
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->currentModeSupportLivePhoto()Z

    move-result v0

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mLivePhotoManager:Lcom/transsion/camera/app/common/livephoto/LivePhotoManager;

    if-eqz v0, :cond_2a

    .line 3483
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCurrentCameraId:Ljava/lang/String;

    invoke-static {v0}, Lcom/transsion/camera/adapter/CameraInfoUtil;->isCameraFacingFront(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 3484
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v1, "key_mirror"

    .line 3485
    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "off"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_24

    const/4 v0, 0x1

    goto :goto_25

    :cond_24
    const/4 v0, 0x0

    .line 3486
    :goto_25
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mLivePhotoManager:Lcom/transsion/camera/app/common/livephoto/LivePhotoManager;

    invoke-virtual {p0, p1, p2, v0}, Lcom/transsion/camera/app/common/livephoto/LivePhotoManager;->frameAvailableSoon(I[FZ)V

    :cond_2a
    return-void
.end method

.method protected onSATStreamIdChanged(III)V
    .registers 11

    if-ne p1, p2, :cond_3

    return-void

    .line 1083
    :cond_3
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz p1, :cond_14

    .line 1084
    const-string v0, "key_sat_stream_id"

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p1

    .line 1085
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1087
    :cond_14
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v0, "key_auto_macro_switch"

    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1088
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getDataStore()Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object v0

    .line 1089
    const-string v1, "key_auto_macro_switch_toggle"

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v2

    const-string v3, "on"

    invoke-virtual {v0, v1, v3, v2}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1092
    iget-boolean v1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mNeedCloseQuickPreview:Z

    if-eqz v1, :cond_43

    const-string v1, "0"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_43

    .line 1093
    invoke-static {}, Lcom/transsion/camera/app/common/mode/StreamIdRestriction;->getMainRestriction()Lcom/transsion/camera/app/common/relation/RelationGroup;

    move-result-object v1

    goto :goto_4f

    .line 1095
    :cond_43
    iget-boolean v1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mNeedCloseQuickPreview:Z

    iget-boolean v2, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mWideSupportSuperdefinition:Z

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v2, v4}, Lcom/transsion/camera/app/common/mode/StreamIdRestriction;->getRestriction(ZZLjava/lang/String;)Lcom/transsion/camera/app/common/relation/RelationGroup;

    move-result-object v1

    :goto_4f
    const/4 v2, 0x1

    if-eqz v1, :cond_93

    .line 1098
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4, v2}, Lcom/transsion/camera/app/common/relation/RelationGroup;->getRelation(Ljava/lang/String;Z)Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object v1

    .line 1099
    const-string v4, "key_super_definition"

    if-ne p3, v2, :cond_8b

    invoke-static {p1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_8b

    iget-boolean v5, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mWideSupportSuperdefinition:Z

    if-eqz v5, :cond_8b

    .line 1100
    iget-object v5, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v5, v4}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryEntryValues(Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_81

    .line 1101
    invoke-interface {v5}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v5

    const-string v6, ","

    invoke-static {v6}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    goto :goto_82

    :cond_81
    const/4 v5, 0x0

    .line 1102
    :goto_82
    invoke-virtual {v1, v4}, Lcom/transsion/camera/app/common/relation/Relation;->removeBody(Ljava/lang/String;)V

    .line 1103
    const-string v6, "off"

    invoke-virtual {v1, v4, v6, v5}, Lcom/transsion/camera/app/common/relation/Relation;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8e

    .line 1105
    :cond_8b
    invoke-virtual {v1, v4}, Lcom/transsion/camera/app/common/relation/Relation;->removeBody(Ljava/lang/String;)V

    .line 1107
    :goto_8e
    iget-object v4, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v4, v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->postRestriction(Lcom/transsion/camera/app/common/relation/Relation;)V

    .line 1110
    :cond_93
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v1, p2}, Lcom/transsion/camera/app/common/IAppUI;->onSatCameraChanged(I)V

    if-ne p3, v2, :cond_b4

    .line 1112
    invoke-static {p1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_b4

    .line 1113
    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_ae

    .line 1114
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "do not need to update TopBar"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 1116
    :cond_ae
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/IAppUI;->updateTopBarUI()V

    return-void

    .line 1120
    :cond_b4
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p1}, Lcom/transsion/camera/app/common/IAppUI;->updateTopBarUI()V

    .line 1121
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/IAppUI;->updatePopSettingUI()V

    return-void
.end method

.method protected onSettingChanged(Ljava/lang/String;Ljava/lang/Boolean;)V
    .registers 4

    .line 878
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "key_update_low_light_state_to_qc"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_c

    return-void

    .line 880
    :cond_c
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mIsLowLight:Z

    return-void
.end method

.method protected onSettingChanged(Ljava/lang/String;Ljava/lang/String;)V
    .registers 9

    .line 748
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/common/mode/CameraMode;->onSettingChanged(Ljava/lang/String;Ljava/lang/String;)V

    .line 750
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const-string v1, "key_filter"

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, -0x1

    sparse-switch v0, :sswitch_data_204

    :goto_13
    move p1, v5

    goto/16 :goto_a0

    :sswitch_16
    const-string v0, "key_live_photo_state"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1f

    goto :goto_13

    :cond_1f
    const/16 p1, 0xb

    goto/16 :goto_a0

    :sswitch_23
    const-string v0, "key_self_timer_status"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2c

    goto :goto_13

    :cond_2c
    const/16 p1, 0xa

    goto/16 :goto_a0

    :sswitch_30
    const-string v0, "key_self_timer"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_39

    goto :goto_13

    :cond_39
    const/16 p1, 0x9

    goto/16 :goto_a0

    :sswitch_3d
    const-string v0, "key_continuous_shot_action"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_46

    goto :goto_13

    :cond_46
    const/16 p1, 0x8

    goto/16 :goto_a0

    :sswitch_4a
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_51

    goto :goto_13

    :cond_51
    const/4 p1, 0x7

    goto :goto_a0

    :sswitch_53
    const-string v0, "key_picture_size"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5c

    goto :goto_13

    :cond_5c
    const/4 p1, 0x6

    goto :goto_a0

    :sswitch_5e
    const-string v0, "key_focus_state"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_67

    goto :goto_13

    :cond_67
    const/4 p1, 0x5

    goto :goto_a0

    :sswitch_69
    const-string v0, "key_quick_video_action"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_72

    goto :goto_13

    :cond_72
    const/4 p1, 0x4

    goto :goto_a0

    :sswitch_74
    const-string v0, "key_live_photo"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7d

    goto :goto_13

    :cond_7d
    const/4 p1, 0x3

    goto :goto_a0

    :sswitch_7f
    const-string v0, "key_algorithm_migrate"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_88

    goto :goto_13

    :cond_88
    move p1, v2

    goto :goto_a0

    :sswitch_8a
    const-string v0, "key_super_night_lite_switch"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_93

    goto :goto_13

    :cond_93
    move p1, v3

    goto :goto_a0

    :sswitch_95
    const-string v0, "key_ui_state_action"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9f

    goto/16 :goto_13

    :cond_9f
    move p1, v4

    :goto_a0
    packed-switch p1, :pswitch_data_236

    goto/16 :goto_203

    .line 824
    :pswitch_a5
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->currentModeSupportLivePhoto()Z

    move-result p1

    if-eqz p1, :cond_203

    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mLivePhotoManager:Lcom/transsion/camera/app/common/livephoto/LivePhotoManager;

    if-eqz p1, :cond_203

    .line 825
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->isLivePhotoOn()Z

    move-result p1

    if-nez p1, :cond_b7

    goto/16 :goto_203

    .line 828
    :cond_b7
    const-string p1, "start"

    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_cc

    .line 829
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p2, "onSettingChanged, startLiveShot"

    invoke-static {p1, p2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 830
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mLivePhotoManager:Lcom/transsion/camera/app/common/livephoto/LivePhotoManager;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/livephoto/LivePhotoManager;->start()V

    return-void

    .line 831
    :cond_cc
    const-string p1, "stop"

    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_203

    .line 832
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p2, "onSettingChanged, stopLiveShot"

    invoke-static {p1, p2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 833
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mLivePhotoManager:Lcom/transsion/camera/app/common/livephoto/LivePhotoManager;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/livephoto/LivePhotoManager;->stop()V

    return-void

    :pswitch_e1
    if-nez p2, :cond_e5

    goto/16 :goto_203

    .line 789
    :cond_e5
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result p1

    sparse-switch p1, :sswitch_data_252

    :goto_ec
    move v2, v5

    goto :goto_10c

    :sswitch_ee
    const-string p1, "status_self_timer_begin"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_10c

    goto :goto_ec

    :sswitch_f7
    const-string p1, "status_self_timer_cancel"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_100

    goto :goto_ec

    :cond_100
    move v2, v3

    goto :goto_10c

    :sswitch_102
    const-string p1, "status_self_timer_end"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_10b

    goto :goto_ec

    :cond_10b
    move v2, v4

    :cond_10c
    :goto_10c
    packed-switch v2, :pswitch_data_260

    goto/16 :goto_203

    .line 791
    :pswitch_111
    iput-boolean v3, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mIsShowSelfTimer:Z

    return-void

    .line 794
    :pswitch_114
    iput-boolean v3, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mIsShowSelfTimerDelay:Z

    return-void

    .line 797
    :pswitch_117
    iput-boolean v4, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mIsShowSelfTimer:Z

    return-void

    .line 805
    :pswitch_11a
    const-string p1, "off"

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_203

    .line 806
    iput-boolean v4, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mIsShowSelfTimerDelay:Z

    return-void

    .line 752
    :pswitch_125
    const-string p1, "key_start_continuous_shot_action"

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_12f

    goto/16 :goto_203

    .line 755
    :cond_12f
    iget-boolean p1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mShutterLongClick:Z

    if-eqz p1, :cond_203

    .line 756
    iput-boolean v4, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mShutterLongClick:Z

    .line 757
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/16 p2, 0x16

    invoke-interface {p1, p2}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 758
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mCaptureHandler:Lcom/transsion/camera/app/common/mode/CommonPhotoMode$CaptureHandler;

    if-eqz p1, :cond_151

    .line 759
    invoke-virtual {p1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 760
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mCaptureHandler:Lcom/transsion/camera/app/common/mode/CommonPhotoMode$CaptureHandler;

    iget-boolean p2, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mIsCurModeSupportQC:Z

    if-eqz p2, :cond_14c

    const-wide/16 v0, 0x258

    goto :goto_14e

    :cond_14c
    const-wide/16 v0, 0x0

    :goto_14e
    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 762
    :cond_151
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->isContinuousShotSupport()Z

    move-result p1

    if-eqz p1, :cond_203

    .line 763
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    if-eqz p1, :cond_15e

    .line 764
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->stopContinuousShotCount()V

    .line 766
    :cond_15e
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->stopContinuousShot()V

    return-void

    .line 837
    :pswitch_162
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {p1, v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 838
    iget-object p2, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mContinuousShot:Lcom/transsion/camera/app/common/mode/CommonPhotoMode$IContinuousShot;

    if-nez p2, :cond_16e

    goto/16 :goto_203

    .line 842
    :cond_16e
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_203

    const-string p2, "0"

    .line 843
    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_203

    const-string p2, "-1"

    .line 844
    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_203

    iget-object p2, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mContinuousShot:Lcom/transsion/camera/app/common/mode/CommonPhotoMode$IContinuousShot;

    .line 845
    invoke-interface {p2}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$IContinuousShot;->isShotting()Z

    move-result p2

    if-eqz p2, :cond_203

    .line 846
    iget-object p2, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "continuous shot is not support, when filter is not off: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 847
    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->shouldShowContinuousHint()Z

    move-result p1

    if-eqz p1, :cond_1ab

    .line 848
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->showContinuousShotNotSupportHint()V

    .line 850
    :cond_1ab
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    if-eqz p1, :cond_1b2

    .line 851
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->stopContinuousShotCount()V

    .line 853
    :cond_1b2
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->stopContinuousShot()V

    return-void

    .line 775
    :pswitch_1b6
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->getCurrentActionState()I

    move-result p1

    const/16 p2, 0x64

    if-eq p1, p2, :cond_203

    .line 776
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p1}, Lcom/transsion/camera/app/common/IAppUI;->getMainHandler()Landroid/os/Handler;

    move-result-object p1

    new-instance p2, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$$ExternalSyntheticLambda6;

    invoke-direct {p2, p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$$ExternalSyntheticLambda6;-><init>(Lcom/transsion/camera/app/common/mode/CommonPhotoMode;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 779
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-virtual {p1, p0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->doPictureSizeUpdate(Lcom/transsion/camera/app/common/mode/ICameraMode;)V

    return-void

    .line 783
    :pswitch_1d4
    iput-object p2, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mCurrentFocusState:Ljava/lang/String;

    return-void

    .line 813
    :pswitch_1d7
    invoke-virtual {p0, p2}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->startOrStopQuickRecording(Ljava/lang/String;)V

    return-void

    .line 821
    :pswitch_1db
    invoke-virtual {p0, p2}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->startOrStopLivePhoto(Ljava/lang/String;)V

    return-void

    .line 772
    :pswitch_1df
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mImageProcessor:Lcom/transsion/camera/app/common/mode/IImageProcessor;

    check-cast p0, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;

    const-string p1, "on"

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;->algorithmMigrate(Z)V

    return-void

    .line 810
    :pswitch_1ed
    const-string/jumbo p1, "value_super_night_lite_switch_on"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mIsSuperNightLiteOn:Z

    return-void

    .line 816
    :pswitch_1f7
    const-string/jumbo p1, "value_state_idle"

    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_203

    .line 817
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->hideRecordingUIImmediately()V

    :cond_203
    :goto_203
    return-void

    :sswitch_data_204
    .sparse-switch
        -0x7b365c71 -> :sswitch_95
        -0x746c5766 -> :sswitch_8a
        -0x60bf6005 -> :sswitch_7f
        -0x52a0b901 -> :sswitch_74
        -0x4e600694 -> :sswitch_69
        -0x42841f76 -> :sswitch_5e
        -0x2edaf77e -> :sswitch_53
        0x8991158 -> :sswitch_4a
        0x207ccbcb -> :sswitch_3d
        0x30a2e672 -> :sswitch_30
        0x31f2225f -> :sswitch_23
        0x384ef351 -> :sswitch_16
    .end sparse-switch

    :pswitch_data_236
    .packed-switch 0x0
        :pswitch_1f7
        :pswitch_1ed
        :pswitch_1df
        :pswitch_1db
        :pswitch_1d7
        :pswitch_1d4
        :pswitch_1b6
        :pswitch_162
        :pswitch_125
        :pswitch_11a
        :pswitch_e1
        :pswitch_a5
    .end packed-switch

    :sswitch_data_252
    .sparse-switch
        -0xaded465 -> :sswitch_102
        -0x5096c46 -> :sswitch_f7
        0x31566b69 -> :sswitch_ee
    .end sparse-switch

    :pswitch_data_260
    .packed-switch 0x0
        :pswitch_117
        :pswitch_114
        :pswitch_111
    .end packed-switch
.end method

.method public onSettingReady()V
    .registers 4

    .line 897
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->onSettingReady()V

    .line 898
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "onSettingReady"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 899
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v1, "key_self_timer"

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 900
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-direct {p0, v0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->getShutterTypeBySelfTimerValue(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;->updateShutterType(I)V

    .line 901
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mImageProcessor:Lcom/transsion/camera/app/common/mode/IImageProcessor;

    check-cast v0, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v2, "key_algorithm_migrate"

    .line 903
    invoke-interface {v1, v2}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 902
    const-string v2, "on"

    invoke-static {v2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    .line 901
    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;->algorithmMigrate(Z)V

    .line 904
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    if-eqz v0, :cond_4d

    .line 905
    invoke-virtual {v0, p0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->doPictureSizeUpdate(Lcom/transsion/camera/app/common/mode/ICameraMode;)V

    .line 906
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mFrameResultCallback:Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->registerFrameResultCallback(Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;)V

    .line 907
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mIsBGOffLineEnable:Z

    if-eqz v0, :cond_4d

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->isShot2ShotEnable()Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 908
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->setCameraOfflineSessionListener()V

    .line 911
    :cond_4d
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    if-eqz v0, :cond_5e

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->supportPostAlgoDeferRequest()Z

    move-result v0

    if-eqz v0, :cond_5e

    .line 912
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mYUVCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraPreviewDataCallback;

    invoke-virtual {v0, p0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->addPreviewDataCallback(Lcom/transsion/camera/adapter/CameraProxy$CameraPreviewDataCallback;)V

    :cond_5e
    return-void
.end method

.method public onShutterCancel()V
    .registers 4

    .line 1510
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "[QuickCapture]onShutterCancel"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 1511
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->needQuickCapture(I)I

    move-result v0

    if-gtz v0, :cond_25

    .line 1513
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[QuickCapture]onShutterCancel return, needQCValue:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    :cond_25
    const/4 v0, 0x4

    .line 1516
    iput v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mShutterActionState:I

    .line 1517
    iget-boolean v1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mIsCurModeSupportQC:Z

    if-eqz v1, :cond_34

    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mQuickCaptureManager:Lcom/transsion/camera/app/common/provider/QuickCaptureManager;

    if-eqz p0, :cond_34

    const/4 v1, -0x1

    .line 1518
    invoke-virtual {p0, v0, v1}, Lcom/transsion/camera/app/common/provider/QuickCaptureManager;->sendShutterAction(II)Z

    :cond_34
    return-void
.end method

.method public onShutterClick(II)Z
    .registers 6

    .line 1331
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->needQuickCapture(I)I

    move-result p2

    .line 1332
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[QuickCapture]onShutterClick, curPriority:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", needQCValue:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-lez p2, :cond_26

    const/4 p0, 0x1

    return p0

    :cond_26
    const/4 p2, -0x1

    .line 1336
    iput p2, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mShutterActionState:I

    const/4 p2, 0x2

    .line 1337
    invoke-virtual {p0, p2, p1}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->doShutterClick(II)Z

    move-result p0

    return p0
.end method

.method protected onShutterClickBefore(I)Z
    .registers 11

    .line 1959
    invoke-static {}, Lcom/transsion/camera/utils/MonkeyUtils;->isUserAMonkey()Z

    move-result v0

    const-wide/16 v1, 0x4b0

    const/4 v3, 0x0

    if-eqz v0, :cond_2d

    invoke-static {}, Lcom/transsion/camera/utils/MemoryUtils;->getAvailableMemory()J

    move-result-wide v4

    const-wide/16 v6, 0x258

    cmp-long v0, v4, v6

    if-ltz v0, :cond_25

    invoke-static {}, Lcom/transsion/camera/utils/MemoryUtils;->getTotalMemory()J

    move-result-wide v4

    const-wide/16 v6, 0x1388

    cmp-long v0, v4, v6

    if-lez v0, :cond_2d

    invoke-static {}, Lcom/transsion/camera/utils/MemoryUtils;->getAvailableMemory()J

    move-result-wide v4

    cmp-long v0, v4, v1

    if-gez v0, :cond_2d

    .line 1960
    :cond_25
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "The current available memory is too low,forbidden to take pictures."

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v3

    .line 1964
    :cond_2d
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mStorageOperator:Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;

    iget-object v4, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    invoke-interface {v0, v4}, Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;->getLeftSpace(Landroid/content/Context;)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-nez v0, :cond_46

    .line 1966
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "onShutterClick space in not enough, can not record photo."

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1967
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->showLowStorageHint()V

    return v3

    :cond_46
    const-wide/16 v6, -0x1

    cmp-long v0, v4, v6

    if-nez v0, :cond_57

    .line 1970
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "StorageVolume is removed."

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1971
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->showStorageUnAvailableHint()V

    return v3

    :cond_57
    const-wide/16 v6, -0x2

    cmp-long v0, v4, v6

    if-nez v0, :cond_68

    .line 1974
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "StorageVolume is checking ."

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1975
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->showLoadingStorageHint()V

    return v3

    .line 1977
    :cond_68
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mShutterLongClick:Z

    if-eqz v0, :cond_74

    .line 1978
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "Is long Click, give up this shutter"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v3

    .line 1982
    :cond_74
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mGroupCaptureManager:Lcom/transsion/camera/app/common/groupcapture/GroupCaptureManager;

    if-eqz v0, :cond_86

    .line 1983
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/groupcapture/GroupCaptureManager;->needWaitingGroupCapture()Z

    move-result v0

    if-eqz v0, :cond_86

    .line 1984
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "onShutterClickBefore, waiting groupCapture done."

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v3

    .line 1988
    :cond_86
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->getOrientation()I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mPreOrientation:I

    const/4 v0, 0x3

    const/4 v4, 0x1

    const/4 v5, 0x2

    if-eq p1, v5, :cond_99

    .line 1989
    iget-object v6, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    .line 1990
    invoke-interface {v6}, Lcom/transsion/camera/app/common/IAppUI;->getTriggerSelfTimerPriority()I

    move-result v6

    if-ne v6, v5, :cond_ac

    :cond_99
    const/16 v6, 0xb

    if-eq p1, v6, :cond_ac

    .line 1992
    iget-object v6, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/16 v7, 0x4f

    invoke-interface {v6, v7}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 1993
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setCaptureType(I)V

    goto :goto_da

    :cond_ac
    const/4 v6, 0x4

    if-eq p1, v6, :cond_d3

    .line 1994
    iget-object v7, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    .line 1995
    invoke-interface {v7}, Lcom/transsion/camera/app/common/IAppUI;->getTriggerSelfTimerPriority()I

    move-result v7

    if-ne v7, v6, :cond_b8

    goto :goto_d3

    :cond_b8
    if-eq p1, v0, :cond_cb

    .line 1997
    iget-object v6, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    .line 1998
    invoke-interface {v6}, Lcom/transsion/camera/app/common/IAppUI;->getTriggerSelfTimerPriority()I

    move-result v6

    if-ne v6, v0, :cond_c3

    goto :goto_cb

    .line 2001
    :cond_c3
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object v6

    invoke-virtual {v6, v3}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setCaptureType(I)V

    goto :goto_da

    .line 1999
    :cond_cb
    :goto_cb
    iget-object v6, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/16 v7, 0x8c

    invoke-interface {v6, v7}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    goto :goto_da

    .line 1996
    :cond_d3
    :goto_d3
    iget-object v6, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/16 v7, 0x8d

    invoke-interface {v6, v7}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 2004
    :goto_da
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->isShot2ShotEnable()Z

    move-result v6

    if-eqz v6, :cond_106

    .line 2005
    iget-object v6, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mCapturingNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 2006
    iget-object v6, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mShot2ShotLeftNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 2007
    iget-object v6, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[onShutterClickBefore] mCapturingNumber incrementAndGet: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mCapturingNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 2009
    :cond_106
    iput-boolean v4, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mShutterStarting:Z

    .line 2010
    iget-object v6, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->getOrientation()I

    move-result v7

    iget-object v8, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCurrentCameraId:Ljava/lang/String;

    invoke-virtual {v6, v7, v8}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->getOrientation(ILjava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mCaptureOrientation:I

    if-eq p1, v5, :cond_11f

    const/16 v6, 0xa

    if-ne p1, v6, :cond_11d

    goto :goto_11f

    :cond_11d
    move p1, v3

    goto :goto_120

    :cond_11f
    :goto_11f
    move p1, v4

    .line 2012
    :goto_120
    iget-boolean v6, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mCapturingAddProcess:Z

    if-eqz v6, :cond_158

    iget-object v6, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mCaptureHandler:Lcom/transsion/camera/app/common/mode/CommonPhotoMode$CaptureHandler;

    if-eqz v6, :cond_158

    if-nez p1, :cond_158

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v6, "com.transsion.camera.feature.mode.litefacebeauty.LiteFaceBeautyModeEntry"

    invoke-static {p1, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_142

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v6, "com.transsion.camera.feature.mode.stblurmode.STBlurModeEntry"

    invoke-static {p1, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_158

    .line 2013
    :cond_142
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/4 v6, -0x1

    const/4 v7, 0x0

    invoke-interface {p1, v5, v6, v7}, Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;->updateUIState(IILjava/lang/String;)V

    .line 2014
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mCaptureHandler:Lcom/transsion/camera/app/common/mode/CommonPhotoMode$CaptureHandler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 2015
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mCaptureHandler:Lcom/transsion/camera/app/common/mode/CommonPhotoMode$CaptureHandler;

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 2016
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p0, v3}, Lcom/transsion/camera/app/common/IAppUI;->setShutterEnabled(Z)V

    :cond_158
    return v4
.end method

.method public onShutterDown()V
    .registers 4

    .line 1441
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "[QuickCapture][CapturePerformance] onShutterDown"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1442
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->onShutterDown()V

    .line 1443
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mCaptureHandler:Lcom/transsion/camera/app/common/mode/CommonPhotoMode$CaptureHandler;

    const/4 v1, 0x1

    if-eqz v0, :cond_18

    .line 1444
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1445
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mCaptureHandler:Lcom/transsion/camera/app/common/mode/CommonPhotoMode$CaptureHandler;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    :cond_18
    const/4 v0, -0x1

    .line 1448
    iput v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mShutterActionState:I

    .line 1449
    invoke-virtual {p0, v1}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->needQuickCapture(I)I

    move-result v0

    if-lez v0, :cond_3a

    .line 1450
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v2, "key_self_timer"

    invoke-interface {v0, v2}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1451
    const-string v2, "off"

    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_36

    .line 1452
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;->updateTriggerSelfTimerPriority(I)V

    :cond_36
    const/4 v0, 0x0

    .line 1454
    invoke-virtual {p0, v0, v1}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->doShutterClick(II)Z

    :cond_3a
    return-void
.end method

.method public onShutterLongClick(II)Z
    .registers 8

    .line 1353
    iget-object p2, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[QuickCapture][CapturePerformance] onShutterLongClickStart, curPriority:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1354
    iget-object p2, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mInternalStorageOperator:Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;

    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    invoke-interface {p2, v0}, Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;->getLeftSpace(Landroid/content/Context;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p2, v0, v2

    const/4 v2, 0x0

    if-nez p2, :cond_30

    .line 1356
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p2, "onShutterLongClickStart space in not enough, can not record photo."

    invoke-static {p1, p2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1357
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->showLowStorageHint()V

    return v2

    :cond_30
    const-wide/16 v3, -0x1

    cmp-long p2, v0, v3

    if-nez p2, :cond_41

    .line 1360
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p2, "StorageVolume is removed."

    invoke-static {p1, p2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1361
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->showStorageUnAvailableHint()V

    return v2

    .line 1365
    :cond_41
    iget-object p2, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    if-eqz p2, :cond_4c

    .line 1366
    const-string v0, "key_touch_capture"

    invoke-interface {p2, v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_4e

    .line 1367
    :cond_4c
    const-string p2, "off"

    .line 1368
    :goto_4e
    const-string v0, "on"

    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    .line 1369
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onShutterLongClick isTouchCaptureOn = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", mCurrentFocusState = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mCurrentFocusState:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-eqz p2, :cond_88

    .line 1371
    iget-object p2, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mCurrentFocusState:Ljava/lang/String;

    const-string v0, "ACTIVE_SCAN"

    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_88

    .line 1372
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz p0, :cond_87

    .line 1373
    invoke-interface {p0}, Lcom/transsion/camera/app/common/IAppUI;->notifyCSNotSupport()V

    :cond_87
    return v2

    .line 1378
    :cond_88
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->needQuickCapture(I)I

    move-result p2

    .line 1379
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mCapturingNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const-string v1, "continuous shot is not support"

    if-eqz v0, :cond_c3

    if-gtz p2, :cond_c3

    .line 1380
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onShutterLongClick return because single capturing, needQCValue:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1381
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->isContinuousShotSupport()Z

    move-result p1

    if-nez p1, :cond_c2

    .line 1382
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    invoke-static {p1, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1383
    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->shouldShowContinuousHint()Z

    move-result p1

    if-eqz p1, :cond_c2

    .line 1384
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->showContinuousShotNotSupportHint()V

    :cond_c2
    return v2

    .line 1390
    :cond_c3
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mCapturingNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v2, 0x1

    if-le v0, v2, :cond_f3

    if-lez p2, :cond_f3

    .line 1391
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onShutterLongClick return because mCapturingNumber > 1, is:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mCapturingNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", needQCValue:"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v2

    .line 1396
    :cond_f3
    invoke-static {}, Lcom/transsion/camera/app/common/bgservice/BGServiceController;->getInstance()Lcom/transsion/camera/app/common/bgservice/BGServiceController;

    move-result-object p2

    invoke-virtual {p2}, Lcom/transsion/camera/app/common/bgservice/BGServiceController;->getOfflineSessionCount()I

    move-result p2

    if-lez p2, :cond_105

    .line 1397
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "onShutterLongClick return because offlineSessionCount > 0"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v2

    .line 1401
    :cond_105
    iget-object p2, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v0, "Temperature"

    invoke-interface {p2, v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryExtStatus(Ljava/lang/String;)I

    move-result p2

    if-ne p2, v2, :cond_120

    .line 1402
    iget-boolean p2, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mContinuousShotSupport:Z

    if-eqz p2, :cond_120

    .line 1403
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p1}, Lcom/transsion/camera/app/common/IAppUI;->notifyLowTemperature()V

    .line 1404
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mTemperatureHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->showHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    return v2

    .line 1408
    :cond_120
    iput p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCurShutterPriority:I

    .line 1409
    iput-boolean v2, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mShutterLongClick:Z

    .line 1410
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->isContinuousShotSupport()Z

    move-result p1

    if-nez p1, :cond_132

    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p1}, Lcom/transsion/camera/app/common/IAppUI;->isShoulderKeyLongPress()Z

    move-result p1

    if-nez p1, :cond_139

    .line 1411
    :cond_132
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/16 p2, 0x15

    invoke-interface {p1, p2}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 1414
    :cond_139
    iget-boolean p1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mContinuousShotSupport:Z

    if-nez p1, :cond_156

    .line 1415
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mContinuousShotSupport: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mContinuousShotSupport:Z

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v2

    .line 1418
    :cond_156
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->isContinuousShotSupport()Z

    move-result p1

    if-nez p1, :cond_178

    .line 1419
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->isTpPictureToVideoSupport()Z

    move-result p1

    if-eqz p1, :cond_169

    .line 1420
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->isNeedContinuousHint()Z

    move-result p1

    if-nez p1, :cond_169

    return v2

    .line 1423
    :cond_169
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    invoke-static {p1, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1424
    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->shouldShowContinuousHint()Z

    move-result p1

    if-eqz p1, :cond_177

    .line 1425
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->showContinuousShotNotSupportHint()V

    :cond_177
    return v2

    :cond_178
    const/4 p1, 0x3

    .line 1430
    iput p1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mShutterActionState:I

    .line 1431
    iget-boolean p2, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mIsCurModeSupportQC:Z

    if-eqz p2, :cond_187

    iget-object p2, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mQuickCaptureManager:Lcom/transsion/camera/app/common/provider/QuickCaptureManager;

    if-eqz p2, :cond_187

    const/4 v0, -0x1

    .line 1432
    invoke-virtual {p2, p1, v0}, Lcom/transsion/camera/app/common/provider/QuickCaptureManager;->sendShutterAction(II)Z

    .line 1434
    :cond_187
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->reportShutterTriggerTypeData(Z)V

    .line 1435
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->startContinuousShot()V

    return v2
.end method

.method public onShutterStart(ZJJ)V
    .registers 11

    .line 1525
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->isGroupCapturing()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_13

    .line 1526
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mGroupCaptureManager:Lcom/transsion/camera/app/common/groupcapture/GroupCaptureManager;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/groupcapture/GroupCaptureManager;->onShutterStart()V

    .line 1527
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mGroupCaptureManager:Lcom/transsion/camera/app/common/groupcapture/GroupCaptureManager;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/groupcapture/GroupCaptureManager;->isCaptureSoundNeeded()Z

    move-result v0

    goto :goto_14

    :cond_13
    move v0, v1

    :goto_14
    if-nez v0, :cond_18

    goto/16 :goto_fb

    .line 1536
    :cond_18
    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onShutterStart,released: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1537
    iget v2, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mThumbNailType:I

    if-ne v2, v1, :cond_48

    .line 1538
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->isSyncThumbnail()Z

    move-result v2

    if-eqz v2, :cond_41

    .line 1540
    new-instance v2, Lcom/transsion/camera/app/common/mode/TimestampInfo;

    invoke-direct {v2, p2, p3, p4, p5}, Lcom/transsion/camera/app/common/mode/TimestampInfo;-><init>(JJ)V

    invoke-direct {p0, v2}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->onFakePostViewData(Lcom/transsion/camera/app/common/mode/TimestampInfo;)V

    goto :goto_48

    .line 1542
    :cond_41
    iget-object p4, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mTimestampInfo:Lcom/transsion/camera/app/common/mode/TimestampInfo;

    if-eqz p4, :cond_48

    .line 1543
    invoke-virtual {p4, p2, p3}, Lcom/transsion/camera/app/common/mode/TimestampInfo;->updateTimestamp(J)V

    :cond_48
    :goto_48
    const/4 p2, 0x0

    .line 1547
    iput-boolean p2, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mShutterStarting:Z

    if-eqz p1, :cond_4f

    goto/16 :goto_fb

    .line 1551
    :cond_4f
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mStatusResponder:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    const-string p3, "capture_started"

    const-string p4, "capture_state"

    invoke-virtual {p1, p4, p3}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1552
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->isTpPictureToVideoSupport()Z

    move-result p1

    if-nez p1, :cond_65

    .line 1553
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->inCreaseShot2ShotCount()V

    .line 1555
    :cond_65
    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->isAIFrameOn()Z

    move-result p1

    if-nez p1, :cond_7a

    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->isAIZoomSROn()Z

    move-result p1

    if-eqz p1, :cond_72

    goto :goto_7a

    .line 1558
    :cond_72
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setAutoZoomValue(I)V

    goto :goto_81

    .line 1556
    :cond_7a
    :goto_7a
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setAutoZoomValue(I)V

    .line 1561
    :goto_81
    invoke-static {}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManagerProxy;->getInstance()Lcom/transsion/camera/app/common/storage/BackgroundStorageManagerProxy;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManagerProxy;->getHandler()Landroid/os/Handler;

    move-result-object p1

    new-instance p3, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$$ExternalSyntheticLambda7;

    invoke-direct {p3, p0, v0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$$ExternalSyntheticLambda7;-><init>(Lcom/transsion/camera/app/common/mode/CommonPhotoMode;Z)V

    invoke-virtual {p1, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1578
    iget-boolean p1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mIsAdaptLowPlatform:Z

    if-eqz p1, :cond_fb

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->isShot2ShotEnable()Z

    move-result p1

    if-eqz p1, :cond_fb

    .line 1579
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mShot2ShotLeftNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p1

    if-lez p1, :cond_a9

    .line 1580
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mShot2ShotLeftNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    goto :goto_ae

    .line 1582
    :cond_a9
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mShot2ShotLeftNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 1584
    :goto_ae
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mCapturingNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p1

    .line 1585
    iget-object p2, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "onShutterStart  mCapturingNumber.get() = "

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1586
    iget-object p2, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz p2, :cond_fb

    iget p2, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mShot2shotMaxCacheNumber:I

    if-gt p1, p2, :cond_fb

    if-lez p1, :cond_fb

    .line 1587
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->isTpPictureToVideoSupport()Z

    move-result p1

    if-nez p1, :cond_fb

    .line 1588
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/16 p2, 0x1f

    invoke-interface {p1, p2}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 1589
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mStatusResponder:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    const-string p2, "shot2shot_end"

    invoke-virtual {p1, p4, p2}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1590
    iget-boolean p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mPhotosSupportProcessingApi:Z

    if-eqz p1, :cond_fb

    iget-boolean p1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mIsTimeLongAlgoSceen:Z

    if-eqz p1, :cond_fb

    iget p1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mThumbNailType:I

    if-ne p1, v1, :cond_fb

    .line 1591
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/16 p1, 0x97

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    :cond_fb
    :goto_fb
    return-void
.end method

.method public onShutterUp(I)V
    .registers 7

    .line 1460
    iget v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mShutterActionState:I

    const/4 v1, 0x4

    const/4 v2, 0x1

    if-eq v0, v1, :cond_8

    if-ne v0, v2, :cond_c

    :cond_8
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mShutterLongClick:Z

    if-eqz v0, :cond_b1

    :cond_c
    iget v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCurShutterPriority:I

    if-eq v0, p1, :cond_12

    goto/16 :goto_b1

    .line 1467
    :cond_12
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[QuickCapture] onShutterUp action:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mShutterActionState:I

    invoke-direct {p0, v1}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->actionToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mShutterLongClick: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mShutterLongClick:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1469
    iput v2, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mShutterActionState:I

    .line 1470
    iget-boolean p1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mShutterLongClick:Z

    const/4 v0, -0x1

    if-eqz p1, :cond_a2

    const/4 p1, 0x0

    .line 1471
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mShutterLongClick:Z

    .line 1472
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/16 v1, 0x16

    invoke-interface {p1, v1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 1473
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mCaptureHandler:Lcom/transsion/camera/app/common/mode/CommonPhotoMode$CaptureHandler;

    if-eqz p1, :cond_5f

    const/4 v1, 0x2

    .line 1474
    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1475
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mCaptureHandler:Lcom/transsion/camera/app/common/mode/CommonPhotoMode$CaptureHandler;

    iget-boolean v3, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mIsCurModeSupportQC:Z

    if-eqz v3, :cond_5a

    const-wide/16 v3, 0x258

    goto :goto_5c

    :cond_5a
    const-wide/16 v3, 0x0

    :goto_5c
    invoke-virtual {p1, v1, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1478
    :cond_5f
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->isContinuousShotSupport()Z

    move-result p1

    if-eqz p1, :cond_70

    .line 1479
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    if-eqz p1, :cond_6c

    .line 1480
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->stopContinuousShotCount()V

    .line 1482
    :cond_6c
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->stopContinuousShot()V

    return-void

    .line 1484
    :cond_70
    iget-boolean p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mIsCurModeSupportQC:Z

    if-eqz p1, :cond_7b

    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mQuickCaptureManager:Lcom/transsion/camera/app/common/provider/QuickCaptureManager;

    if-eqz p1, :cond_7b

    .line 1485
    invoke-virtual {p1, v2, v0}, Lcom/transsion/camera/app/common/provider/QuickCaptureManager;->sendShutterAction(II)Z

    .line 1487
    :cond_7b
    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->processQCUpAction()I

    move-result p1

    if-eqz p1, :cond_82

    return-void

    .line 1492
    :cond_82
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mCaptureHandler:Lcom/transsion/camera/app/common/mode/CommonPhotoMode$CaptureHandler;

    if-nez p1, :cond_8e

    .line 1493
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "onShutterUp mCaptureHandler is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 1496
    :cond_8e
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/16 v0, 0x2c

    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 1497
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mCaptureHandler:Lcom/transsion/camera/app/common/mode/CommonPhotoMode$CaptureHandler;

    invoke-virtual {p1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1498
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mCaptureHandler:Lcom/transsion/camera/app/common/mode/CommonPhotoMode$CaptureHandler;

    const-wide/16 v0, 0x12c

    invoke-virtual {p0, v2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void

    .line 1501
    :cond_a2
    iget-boolean p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mIsCurModeSupportQC:Z

    if-eqz p1, :cond_ad

    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mQuickCaptureManager:Lcom/transsion/camera/app/common/provider/QuickCaptureManager;

    if-eqz p1, :cond_ad

    .line 1502
    invoke-virtual {p1, v2, v0}, Lcom/transsion/camera/app/common/provider/QuickCaptureManager;->sendShutterAction(II)Z

    .line 1504
    :cond_ad
    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->processQCUpAction()I

    return-void

    .line 1462
    :cond_b1
    :goto_b1
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[QuickCapture] onShutterUp return, action:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mShutterActionState:I

    invoke-direct {p0, v2}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->actionToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", mShutterLongClick:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mShutterLongClick:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mResumed:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mResumed:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mCurShutterPriority:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCurShutterPriority:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", curPriority:"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public onSurfaceDrawn()V
    .registers 6

    .line 2525
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mNeedCreateVideoSurface:Z

    if-eqz v0, :cond_25

    .line 2526
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v1, "key_video_quality"

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_25

    .line 2528
    invoke-static {}, Lcom/transsion/camera/utils/VideoSurfaceUtil;->getInstance()Lcom/transsion/camera/utils/VideoSurfaceUtil;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCurrentCameraId:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->createTempRecordFile()Ljava/io/File;

    move-result-object v3

    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object v4

    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCurrentCameraId:Ljava/lang/String;

    invoke-virtual {v4, p0}, Lcom/transsion/camera/app/common/CameraRepository;->isBackSATCamera(Ljava/lang/String;)Z

    move-result p0

    invoke-virtual {v1, v0, v2, v3, p0}, Lcom/transsion/camera/utils/VideoSurfaceUtil;->createVideoSurface(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Z)V

    :cond_25
    return-void
.end method

.method public onThumbNailTypeConfirmed(I[IJ)V
    .registers 16

    .line 1793
    invoke-super {p0, p1, p2, p3, p4}, Lcom/transsion/camera/app/common/mode/CameraMode;->onThumbNailTypeConfirmed(I[IJ)V

    .line 1794
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onThumbNailTypeConfirmed type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1795
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mOfflineCapturingNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-eqz p2, :cond_79

    .line 1805
    aget v3, p2, v0

    .line 1806
    aget v4, p2, v1

    const/4 v5, 0x2

    .line 1807
    aget v5, p2, v5

    const/4 v6, 0x3

    .line 1808
    aget v6, p2, v6

    const/4 v7, 0x5

    .line 1809
    aget v7, p2, v7

    const/4 v8, 0x7

    .line 1810
    aget v8, p2, v8

    .line 1811
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v9

    iget-boolean v9, v9, Lcom/transsion/camera/utils/CustomConfigUtil;->mTurboFusionEnable:Z

    const/4 v10, 0x4

    if-eqz v9, :cond_4e

    .line 1812
    aget p2, p2, v10

    if-eq v3, v1, :cond_4a

    if-eq v4, v1, :cond_4a

    if-eq v5, v1, :cond_4a

    if-eq v6, v1, :cond_4a

    if-eqz p2, :cond_4b

    if-eq p2, v2, :cond_4b

    :cond_4a
    move v0, v1

    .line 1813
    :cond_4b
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mIsTimeLongAlgoSceen:Z

    goto :goto_77

    .line 1815
    :cond_4e
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v9

    iget-boolean v9, v9, Lcom/transsion/camera/utils/CustomConfigUtil;->mSuperAiRawEnable:Z

    if-eqz v9, :cond_68

    .line 1816
    aget p2, p2, v10

    if-eq v3, v1, :cond_64

    if-eq v4, v1, :cond_64

    if-eq v5, v1, :cond_64

    if-eq v6, v1, :cond_64

    if-eqz p2, :cond_65

    if-eq p2, v2, :cond_65

    :cond_64
    move v0, v1

    .line 1817
    :cond_65
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mIsTimeLongAlgoSceen:Z

    goto :goto_77

    :cond_68
    if-eq v3, v1, :cond_74

    if-eq v4, v1, :cond_74

    if-eq v5, v1, :cond_74

    if-eq v6, v1, :cond_74

    if-gtz v7, :cond_74

    if-lez v8, :cond_75

    :cond_74
    move v0, v1

    .line 1820
    :cond_75
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mIsTimeLongAlgoSceen:Z

    :goto_77
    move v2, v4

    goto :goto_7b

    .line 1824
    :cond_79
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mIsTimeLongAlgoSceen:Z

    .line 1826
    :goto_7b
    iput p1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mThumbNailType:I

    .line 1829
    new-instance v3, Lcom/transsion/camera/app/common/mode/TimestampInfo;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    const/4 v6, 0x0

    move-wide v7, p3

    invoke-direct/range {v3 .. v8}, Lcom/transsion/camera/app/common/mode/TimestampInfo;-><init>(JZJ)V

    iput-object v3, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mTimestampInfo:Lcom/transsion/camera/app/common/mode/TimestampInfo;

    if-ne p1, v1, :cond_98

    .line 1830
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->isSyncThumbnail()Z

    move-result p1

    if-nez p1, :cond_98

    .line 1831
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mTimestampInfo:Lcom/transsion/camera/app/common/mode/TimestampInfo;

    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->onFakePostViewData(Lcom/transsion/camera/app/common/mode/TimestampInfo;)V

    goto :goto_a2

    .line 1834
    :cond_98
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCurrentCameraId:Ljava/lang/String;

    invoke-static {p1}, Lcom/transsion/camera/adapter/CameraInfoUtil;->isCameraFacingFront(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_a4

    if-ne v2, v1, :cond_a4

    .line 1835
    :goto_a2
    iput-boolean v1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mCaptureAnimationByThumbnail:Z

    :cond_a4
    return-void
.end method

.method public pause()V
    .registers 7

    .line 629
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->pause()V

    const/4 v0, 0x0

    .line 630
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mResumed:Z

    const/4 v1, -0x1

    .line 631
    iput v1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mLastStreamId:I

    .line 632
    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz v2, :cond_1c

    .line 633
    const-string v3, "key_sat_stream_id"

    invoke-virtual {v2, v3}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object v2

    iget v4, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mLastStreamId:I

    .line 634
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    .line 637
    :cond_1c
    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mCaptureHandler:Lcom/transsion/camera/app/common/mode/CommonPhotoMode$CaptureHandler;

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_30

    .line 638
    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 639
    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mCaptureHandler:Lcom/transsion/camera/app/common/mode/CommonPhotoMode$CaptureHandler;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 640
    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mCaptureHandler:Lcom/transsion/camera/app/common/mode/CommonPhotoMode$CaptureHandler;

    const/4 v5, 0x3

    invoke-virtual {v2, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 642
    :cond_30
    iget v2, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCurShutterPriority:I

    if-eq v2, v3, :cond_3b

    const/16 v5, 0xa

    if-ne v2, v5, :cond_39

    goto :goto_3b

    :cond_39
    move v2, v0

    goto :goto_3c

    :cond_3b
    :goto_3b
    move v2, v4

    .line 643
    :goto_3c
    iget-boolean v5, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mCapturingAddProcess:Z

    if-eqz v5, :cond_6d

    if-nez v2, :cond_6d

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v5, "com.transsion.camera.feature.mode.litefacebeauty.LiteFaceBeautyModeEntry"

    invoke-static {v2, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5a

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v5, "com.transsion.camera.feature.mode.stblurmode.STBlurModeEntry"

    invoke-static {v2, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6d

    .line 644
    :cond_5a
    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v2}, Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;->getCurrentUIState()I

    move-result v2

    if-ne v2, v3, :cond_68

    .line 645
    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/4 v3, 0x0

    invoke-interface {v2, v4, v1, v3}, Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;->updateUIState(IILjava/lang/String;)V

    .line 647
    :cond_68
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v1, v4}, Lcom/transsion/camera/app/common/IAppUI;->setShutterEnabled(Z)V

    .line 649
    :cond_6d
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mShutterLongClick:Z

    .line 650
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mShutterStarting:Z

    .line 651
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    if-eqz v1, :cond_7a

    .line 652
    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mFrameResultCallback:Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;

    invoke-virtual {v1, v2}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->unRegisterFrameResultCallback(Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;)V

    .line 654
    :cond_7a
    invoke-static {}, Lcom/transsion/camera/app/common/bgservice/BGServiceController;->getInstance()Lcom/transsion/camera/app/common/bgservice/BGServiceController;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/transsion/camera/app/common/bgservice/BGServiceController;->setOnNextReadyFlag(Z)V

    .line 655
    invoke-static {}, Lcom/transsion/camera/app/common/isphidl/ISPHIDLController;->getInstance()Lcom/transsion/camera/app/common/isphidl/ISPHIDLController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/isphidl/ISPHIDLController;->pause()V

    .line 656
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->stopContinuousShot()V

    .line 657
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->currentModeSupportLivePhoto()Z

    move-result v1

    if-eqz v1, :cond_bf

    .line 658
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mLiveShotStopped:Z

    .line 659
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mLivePhotoManager:Lcom/transsion/camera/app/common/livephoto/LivePhotoManager;

    if-eqz v1, :cond_a9

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->isLivePhotoOn()Z

    move-result v1

    if-eqz v1, :cond_a9

    .line 660
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v2, "pause: stopLiveShot"

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 661
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mLivePhotoManager:Lcom/transsion/camera/app/common/livephoto/LivePhotoManager;

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/livephoto/LivePhotoManager;->stop()V

    .line 663
    :cond_a9
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz v1, :cond_bf

    .line 664
    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mLivePhotoShootingHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-interface {v1, v2}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->hideHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    .line 665
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v1}, Lcom/transsion/camera/app/common/IAppUI;->getMainHandler()Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mZoomStatusRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 666
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->isInSmoothZoom:Z

    :cond_bf
    return-void
.end method

.method protected processQCSaveData([BZJ)I
    .registers 11

    .line 3296
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mQuickCaptureManager:Lcom/transsion/camera/app/common/provider/QuickCaptureManager;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 3298
    :cond_6
    iget-boolean v2, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mIsCurModeSupportQC:Z

    if-nez v2, :cond_b

    return v1

    :cond_b
    move-object v3, p0

    move-object v1, p1

    move v2, p2

    move-wide v4, p3

    .line 3301
    invoke-virtual/range {v0 .. v5}, Lcom/transsion/camera/app/common/provider/QuickCaptureManager;->sendSaveData([BZLcom/transsion/camera/app/common/mode/ICameraMode;J)I

    move-result p0

    return p0
.end method

.method protected final ratioEqual(DD)Z
    .registers 5

    sub-double/2addr p1, p3

    .line 1176
    invoke-static {p1, p2}, Ljava/lang/Math;->abs(D)D

    move-result-wide p0

    const-wide p2, 0x3f847ae147ae147bL    # 0.01

    cmpg-double p0, p0, p2

    if-gez p0, :cond_10

    const/4 p0, 0x1

    return p0

    :cond_10
    const/4 p0, 0x0

    return p0
.end method

.method public removeCaptureInfo(Z)V
    .registers 2

    .line 1880
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mImageProcessor:Lcom/transsion/camera/app/common/mode/IImageProcessor;

    if-eqz p0, :cond_9

    .line 1881
    check-cast p0, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;->removeCaptureInfo(Z)V

    :cond_9
    const/4 p0, 0x0

    .line 1883
    invoke-static {p0}, Lcom/transsion/camera/app/common/provider/ProcessMediaManager;->setProcessStatus(Z)V

    return-void
.end method

.method protected resetCaptureData()V
    .registers 3

    .line 2095
    sget-object v0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "[resetCaptureData]"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 2096
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mPostViewCallbackNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 2097
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mCapturingNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 2098
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mOfflineCapturingNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 2099
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mShot2ShotLeftNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 2100
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mCaptureState:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v0, Lcom/transsion/camera/adapter/NullCameraCaptureState;

    invoke-direct {v0}, Lcom/transsion/camera/adapter/NullCameraCaptureState;-><init>()V

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public resume()V
    .registers 2

    .line 618
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->resume()V

    const/4 v0, 0x1

    .line 619
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mResumed:Z

    const/4 v0, 0x0

    .line 620
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mIsShowSelfTimerDelay:Z

    .line 621
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->isInSmoothZoom:Z

    .line 622
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mIsInContinuousShot:Z

    .line 623
    invoke-static {}, Lcom/transsion/camera/app/common/isphidl/ISPHIDLController;->getInstance()Lcom/transsion/camera/app/common/isphidl/ISPHIDLController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/isphidl/ISPHIDLController;->resume()V

    return-void
.end method

.method public setModeBgCaptureListener(Lcom/transsion/camera/app/common/IApp$ModeBgCaptureListener;)V
    .registers 3

    .line 1913
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mIsBgCaptureSupport:Z

    if-eqz v0, :cond_6

    .line 1914
    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mModeBgCaptureListener:Lcom/transsion/camera/app/common/IApp$ModeBgCaptureListener;

    :cond_6
    return-void
.end method

.method public setThumbnailTransitionManager(Lcom/transsion/camera/app/common/thumbnailtransition/IThumbnailTransition;)V
    .registers 2

    .line 2535
    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mThumbnailTransition:Lcom/transsion/camera/app/common/thumbnailtransition/IThumbnailTransition;

    return-void
.end method

.method protected showContinuousShotNotSupportHint()V
    .registers 4

    .line 2638
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mCSNotSupportHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->getContinuousShotNotSupportMessage()Ljava/lang/String;

    move-result-object v2

    iget-boolean p0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mIsNeedAppend:Z

    invoke-interface {v0, v1, v2, p0}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->showCSNotSupportHint(Lcom/transsion/camera/app/common/ui/HintInfo;Ljava/lang/String;Z)V

    return-void
.end method

.method protected showLoadingStorageHint()V
    .registers 3

    .line 2461
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mStorageHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ui/HintInfo;->setMessageType(I)V

    .line 2462
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    sget v1, Lcom/transsion/camera/app/common/R$string;->storage_is_loading:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2463
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mStorageHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {v1, v0}, Lcom/transsion/camera/app/common/ui/HintInfo;->setMessage(Ljava/lang/String;)V

    .line 2464
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz v0, :cond_1c

    .line 2465
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mStorageHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->showHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    :cond_1c
    return-void
.end method

.method protected showLowStorageHint()V
    .registers 3

    .line 2453
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mStorageHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ui/HintInfo;->setMessageType(I)V

    .line 2454
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mStorageHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->getLowStorageMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ui/HintInfo;->setMessage(Ljava/lang/String;)V

    .line 2455
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz v0, :cond_18

    .line 2456
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mStorageHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->showHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    :cond_18
    return-void
.end method

.method protected showStorageUnAvailableHint()V
    .registers 3

    .line 2470
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mStorageHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ui/HintInfo;->setMessageType(I)V

    .line 2471
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    sget v1, Lcom/transsion/camera/app/common/R$string;->can_not_use_storage:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2472
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mStorageHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {v1, v0}, Lcom/transsion/camera/app/common/ui/HintInfo;->setMessage(Ljava/lang/String;)V

    .line 2473
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mStorageHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->showHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    return-void
.end method

.method public final startContinuousShot()V
    .registers 3

    .line 2647
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mContinuousShot:Lcom/transsion/camera/app/common/mode/CommonPhotoMode$IContinuousShot;

    if-nez v0, :cond_c

    .line 2648
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "mContinuousShot is null"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 2651
    :cond_c
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "startContinuousShot"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 2652
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUI;->updateContinuousShotLightState(Z)V

    .line 2653
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mContinuousShot:Lcom/transsion/camera/app/common/mode/CommonPhotoMode$IContinuousShot;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/ICameraControl$IContinuousShotControl;->startContinuousShot()V

    .line 2654
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->currentModeSupportLivePhoto()Z

    move-result v0

    if-eqz v0, :cond_33

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->isLivePhotoOn()Z

    move-result v0

    if-eqz v0, :cond_33

    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mLivePhotoManager:Lcom/transsion/camera/app/common/livephoto/LivePhotoManager;

    if-eqz v0, :cond_33

    .line 2655
    iput-boolean v1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mLiveShotStopped:Z

    .line 2656
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/livephoto/LivePhotoManager;->stop()V

    :cond_33
    return-void
.end method

.method public final startContinuousShutter()V
    .registers 3

    const/4 v0, 0x1

    .line 2674
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mIsInContinuousShot:Z

    .line 2675
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mContinuousShot:Lcom/transsion/camera/app/common/mode/CommonPhotoMode$IContinuousShot;

    if-nez v0, :cond_f

    .line 2676
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "mContinuousShot is null"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 2680
    :cond_f
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "startContinuousShutter"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 2681
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mContinuousShot:Lcom/transsion/camera/app/common/mode/CommonPhotoMode$IContinuousShot;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/ICameraControl$IContinuousShotControl;->startContinuousShutter()V

    return-void
.end method

.method protected startOrStopLivePhoto(Ljava/lang/String;)V
    .registers 5

    .line 862
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->currentModeSupportLivePhoto()Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 863
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startOrStopLivePhoto, value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 864
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mLivePhotoManager:Lcom/transsion/camera/app/common/livephoto/LivePhotoManager;

    if-nez v0, :cond_21

    goto :goto_3c

    .line 867
    :cond_21
    const-string v0, "on"

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 868
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mLivePhotoManager:Lcom/transsion/camera/app/common/livephoto/LivePhotoManager;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/livephoto/LivePhotoManager;->start()V

    return-void

    .line 869
    :cond_2f
    const-string v0, "off"

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3c

    .line 870
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mLivePhotoManager:Lcom/transsion/camera/app/common/livephoto/LivePhotoManager;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/livephoto/LivePhotoManager;->stop()V

    :cond_3c
    :goto_3c
    return-void
.end method

.method protected startOrStopQuickRecording(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public stop()V
    .registers 3

    const/4 v0, -0x1

    .line 673
    iput v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mLastStreamId:I

    .line 674
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz v0, :cond_16

    .line 675
    const-string v1, "key_sat_stream_id"

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object v0

    iget p0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mLastStreamId:I

    .line 676
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_16
    return-void
.end method

.method public final stopContinuousShot()V
    .registers 3

    .line 2662
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mContinuousShot:Lcom/transsion/camera/app/common/mode/CommonPhotoMode$IContinuousShot;

    if-nez v0, :cond_c

    .line 2663
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "mContinuousShot is null"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 2666
    :cond_c
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUI;->updateContinuousShotLightState(Z)V

    .line 2668
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "stopContinuousShot"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 2669
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mContinuousShot:Lcom/transsion/camera/app/common/mode/CommonPhotoMode$IContinuousShot;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/ICameraControl$IContinuousShotControl;->stopContinuousShot()V

    return-void
.end method

.method public unInit()V
    .registers 8

    .line 690
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mGroupCaptureManager:Lcom/transsion/camera/app/common/groupcapture/GroupCaptureManager;

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/groupcapture/GroupCaptureManager;->hasPendingCapture()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 691
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mImageProcessor:Lcom/transsion/camera/app/common/mode/IImageProcessor;

    check-cast v0, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/mode/ImageProcessor;->setPictureCallbackReleasePending(Z)V

    .line 693
    :cond_12
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->unInit()V

    .line 694
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mCSNotSupportHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->hideHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    .line 695
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mTemperatureHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->hideHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    .line 696
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mLivePhotoShootingHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->hideHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    .line 697
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mContinuousShot:Lcom/transsion/camera/app/common/mode/CommonPhotoMode$IContinuousShot;

    const/4 v1, 0x0

    if-eqz v0, :cond_34

    .line 698
    invoke-interface {v0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$IContinuousShot;->release()V

    .line 699
    iput-object v1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mContinuousShot:Lcom/transsion/camera/app/common/mode/CommonPhotoMode$IContinuousShot;

    :cond_34
    const-wide/16 v2, 0x0

    .line 701
    iput-wide v2, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mShutterClickInterval:J

    .line 702
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    if-eqz v0, :cond_3f

    .line 703
    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->addPreviewDataCallback(Lcom/transsion/camera/adapter/CameraProxy$CameraPreviewDataCallback;)V

    .line 705
    :cond_3f
    const-string v0, "key_picture_size"

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/mode/CameraMode;->unRegisterKeyToMonitor(Ljava/lang/String;)V

    .line 706
    const-string v0, "key_algorithm_migrate"

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/mode/CameraMode;->unRegisterKeyToMonitor(Ljava/lang/String;)V

    .line 707
    const-string v0, "key_focus_state"

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/mode/CameraMode;->unRegisterKeyToMonitor(Ljava/lang/String;)V

    .line 708
    const-string v0, "key_super_definition"

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/mode/CameraMode;->unRegisterKeyToMonitor(Ljava/lang/String;)V

    .line 709
    const-string v0, "key_fold_switch_preview"

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/mode/CameraMode;->unRegisterKeyToMonitor(Ljava/lang/String;)V

    .line 710
    const-string v0, "key_self_timer_status"

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/mode/CameraMode;->unRegisterKeyToMonitor(Ljava/lang/String;)V

    .line 711
    const-string v0, "key_update_low_light_state_to_qc"

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/mode/CameraMode;->unRegisterKeyToMonitor(Ljava/lang/String;)V

    .line 712
    const-string v0, "key_super_night_lite_switch"

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/mode/CameraMode;->unRegisterKeyToMonitor(Ljava/lang/String;)V

    .line 713
    const-string v0, "key_continuous_shot_action"

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/mode/CameraMode;->unRegisterKeyToMonitor(Ljava/lang/String;)V

    .line 714
    const-string v0, "key_quick_video_action"

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/mode/CameraMode;->unRegisterKeyToMonitor(Ljava/lang/String;)V

    .line 715
    const-string v0, "key_ui_state_action"

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/mode/CameraMode;->unRegisterKeyToMonitor(Ljava/lang/String;)V

    .line 716
    const-string v0, "key_sat_stream_id"

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/mode/CameraMode;->unRegisterKeyToMonitor(Ljava/lang/String;)V

    .line 717
    const-string v0, "key_self_timer"

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/mode/CameraMode;->unRegisterKeyToMonitor(Ljava/lang/String;)V

    .line 718
    const-string v0, "key_live_photo"

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/mode/CameraMode;->unRegisterKeyToMonitor(Ljava/lang/String;)V

    .line 719
    const-string v0, "key_live_photo_state"

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/mode/CameraMode;->unRegisterKeyToMonitor(Ljava/lang/String;)V

    .line 720
    const-string v0, "key_filter"

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/mode/CameraMode;->unRegisterKeyToMonitor(Ljava/lang/String;)V

    .line 722
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v1, "key_shutter_sound_update"

    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 724
    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->releaseQCSound()V

    .line 725
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 726
    sget-object v2, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v3, "[recycleBitmap]: start"

    invoke-static {v2, v3}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 727
    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mMergeWatermarkLock:Ljava/lang/Object;

    monitor-enter v2

    .line 728
    :try_start_a9
    iget-object v3, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mGoldWatermarks:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_b3
    :goto_b3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_d3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 729
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Bitmap;

    if-eqz v4, :cond_b3

    .line 730
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v5

    if-nez v5, :cond_b3

    .line 731
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_b3

    :catchall_d1
    move-exception p0

    goto :goto_10e

    .line 734
    :cond_d3
    iget-object v3, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mGoldWatermarks:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->clear()V

    .line 735
    monitor-exit v2
    :try_end_d9
    .catchall {:try_start_a9 .. :try_end_d9} :catchall_d1

    .line 736
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 737
    sget-object v4, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[recycleBitmap]: end, duration: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long/2addr v2, v0

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "ms"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 738
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mGroupCaptureManager:Lcom/transsion/camera/app/common/groupcapture/GroupCaptureManager;

    if-eqz v0, :cond_100

    .line 739
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/groupcapture/GroupCaptureManager;->unInit()V

    .line 741
    :cond_100
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->currentModeSupportLivePhoto()Z

    move-result v0

    if-eqz v0, :cond_10d

    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mLivePhotoManager:Lcom/transsion/camera/app/common/livephoto/LivePhotoManager;

    if-eqz p0, :cond_10d

    .line 742
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/livephoto/LivePhotoManager;->pause()V

    :cond_10d
    return-void

    .line 735
    :goto_10e
    :try_start_10e
    monitor-exit v2
    :try_end_10f
    .catchall {:try_start_10e .. :try_end_10f} :catchall_d1

    throw p0
.end method

.method public updateFastThumbSurface(Landroid/util/Size;)Lcom/transsion/camera/app/common/mode/CaptureSurface;
    .registers 3

    if-nez p1, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    const/4 v0, 0x1

    .line 1325
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mIsSupportPostView:Z

    .line 1326
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mImageProcessor:Lcom/transsion/camera/app/common/mode/IImageProcessor;

    check-cast p0, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/ImageProcessor;->updateFastThumbSurface(Landroid/util/Size;)Lcom/transsion/camera/app/common/mode/CaptureSurface;

    move-result-object p0

    return-object p0
.end method

.method public updatePicSurface()Lcom/transsion/camera/app/common/mode/CaptureSurface;
    .registers 4

    .line 1214
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->getDataFlowType()I

    move-result v0

    .line 1215
    invoke-static {v0}, Lcom/transsion/camera/adapter/DataFlowSpec;->jpegCapture(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_13

    .line 1216
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "no need jpeg image surface"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-object v1

    .line 1219
    :cond_13
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v2, "key_picture_size"

    invoke-interface {v0, v2}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1e

    return-object v1

    .line 1223
    :cond_1e
    invoke-static {v0}, Landroid/util/Size;->parseSize(Ljava/lang/String;)Landroid/util/Size;

    move-result-object v0

    .line 1224
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mImageProcessor:Lcom/transsion/camera/app/common/mode/IImageProcessor;

    check-cast p0, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;

    const/16 v1, 0x100

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2, v2}, Lcom/transsion/camera/app/common/mode/ImageProcessor;->updatePicSurface(Landroid/util/Size;IZZ)Lcom/transsion/camera/app/common/mode/CaptureSurface;

    move-result-object p0

    return-object p0
.end method

.method public updatePostAlgoPicSurface()Lcom/transsion/camera/app/common/mode/CaptureSurface;
    .registers 4

    .line 1279
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->supportPostAlgo()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_f

    .line 1280
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "no need postAlgo jpeg image surface"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-object v1

    .line 1283
    :cond_f
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v2, "key_picture_size"

    invoke-interface {v0, v2}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1a

    return-object v1

    .line 1287
    :cond_1a
    invoke-static {v0}, Landroid/util/Size;->parseSize(Ljava/lang/String;)Landroid/util/Size;

    move-result-object v0

    .line 1288
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mImageProcessor:Lcom/transsion/camera/app/common/mode/IImageProcessor;

    check-cast p0, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;

    const/16 v1, 0x100

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/transsion/camera/app/common/mode/ImageProcessor;->updatePostAlgoPicSurface(Landroid/util/Size;IZ)Lcom/transsion/camera/app/common/mode/CaptureSurface;

    move-result-object p0

    return-object p0
.end method

.method public updatePreviewSize(Landroid/util/Size;)V
    .registers 6

    .line 2413
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraMode;->updatePreviewSize(Landroid/util/Size;)V

    .line 2414
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->currentModeSupportLivePhoto()Z

    move-result v0

    if-eqz v0, :cond_39

    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mLivePhotoManager:Lcom/transsion/camera/app/common/livephoto/LivePhotoManager;

    if-eqz v0, :cond_39

    .line 2415
    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v0

    .line 2416
    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result p1

    .line 2417
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updatePreviewSize, previewWidth: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", previewHeight: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 2419
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mLivePhotoManager:Lcom/transsion/camera/app/common/livephoto/LivePhotoManager;

    invoke-virtual {p0, v0, p1}, Lcom/transsion/camera/app/common/livephoto/LivePhotoManager;->updatePreviewSize(II)V

    :cond_39
    return-void
.end method

.method public updateQcomPicSurface()Lcom/transsion/camera/app/common/mode/CaptureSurface;
    .registers 5

    .line 1229
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->getDataFlowType()I

    move-result v0

    .line 1230
    invoke-static {v0}, Lcom/transsion/camera/adapter/DataFlowSpec;->rawCapture(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_13

    .line 1231
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "no need qcom jpeg image surface"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-object v1

    .line 1234
    :cond_13
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v2, "key_picture_size"

    invoke-interface {v0, v2}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1e

    return-object v1

    .line 1238
    :cond_1e
    invoke-static {v0}, Landroid/util/Size;->parseSize(Ljava/lang/String;)Landroid/util/Size;

    move-result-object v0

    .line 1239
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->getJpegMaxSize()I

    move-result v1

    .line 1240
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mImageProcessor:Lcom/transsion/camera/app/common/mode/IImageProcessor;

    check-cast p0, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;

    const/16 v2, 0x100

    const/4 v3, 0x1

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/transsion/camera/app/common/mode/ImageProcessor;->updateQcomPicSurface(Landroid/util/Size;IIZ)Lcom/transsion/camera/app/common/mode/CaptureSurface;

    move-result-object p0

    return-object p0
.end method

.method public updateQcomRawSurface(I)[Lcom/transsion/camera/app/common/mode/CaptureSurface;
    .registers 10

    .line 1245
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->getDataFlowType()I

    move-result v0

    .line 1246
    invoke-static {v0}, Lcom/transsion/camera/adapter/DataFlowSpec;->rawCapture(I)Z

    move-result v0

    if-nez v0, :cond_13

    .line 1247
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "no need qcom jpeg image surface"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    .line 1250
    :cond_13
    invoke-static {}, Lcom/transsion/camera/adapter/CameraAgentFactory;->getCameraAgent()Lcom/transsion/camera/adapter/CameraAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/CameraAgent;->getCameraDeviceInfo()Lcom/transsion/camera/adapter/ICameraDeviceInfo;

    move-result-object v0

    .line 1251
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCurrentCameraId:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->getSupportedRawPictureSizes(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 1252
    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCurrentCameraId:Ljava/lang/String;

    invoke-interface {v0, v2}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->getPhysicalCameraIds(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v2

    const/4 v3, 0x0

    .line 1253
    new-array v4, v3, [Ljava/lang/String;

    invoke-interface {v2, v4}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    .line 1254
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_d2

    .line 1255
    sget-object v5, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[updateQcomRawSurface] updatePictureSurface mCurrentCameraId= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCurrentCameraId:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", physicalCameraIds= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ", ids= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1256
    invoke-static {v4}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1255
    invoke-static {v5, v6}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1257
    sget-object v5, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 1258
    array-length v6, v4

    if-lez v6, :cond_8d

    .line 1259
    invoke-interface {v1}, Ljava/util/List;->clear()V

    move v6, v3

    .line 1260
    :goto_6f
    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v7

    if-ge v6, v7, :cond_9f

    .line 1261
    aget-object v5, v4, v6

    invoke-interface {v0, v5}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->getSupportedRawPictureSizes(Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    .line 1262
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_8a

    .line 1263
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/util/Size;

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_8a
    add-int/lit8 v6, v6, 0x1

    goto :goto_6f

    .line 1267
    :cond_8d
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 1268
    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCurrentCameraId:Ljava/lang/String;

    invoke-interface {v0, v2}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->getSupportedRawPictureSizes(Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    .line 1269
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Size;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1271
    :cond_9f
    sget-object v0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[updateQcomRawSurface] updatePictureSurface rawSizes1st= "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Size;

    invoke-virtual {v4}, Landroid/util/Size;->getWidth()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "x"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Size;

    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1274
    :cond_d2
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mImageProcessor:Lcom/transsion/camera/app/common/mode/IImageProcessor;

    check-cast p0, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;

    const/4 v0, 0x1

    invoke-virtual {p0, v1, p1, v0}, Lcom/transsion/camera/app/common/mode/ImageProcessor;->updateQcomRawSurface(Ljava/util/List;IZ)[Lcom/transsion/camera/app/common/mode/CaptureSurface;

    move-result-object p0

    return-object p0
.end method

.method public updateStorageOperator(Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;I)V
    .registers 3

    .line 2540
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/common/mode/CameraMode;->updateStorageOperator(Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;I)V

    const/4 p1, 0x1

    if-ne p1, p2, :cond_9

    .line 2542
    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->handleStorageUnmounted()V

    :cond_9
    return-void
.end method

.method public updateThumbnailSurface(Landroid/util/Size;)Lcom/transsion/camera/app/common/mode/CaptureSurface;
    .registers 4

    .line 1309
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/utils/CustomConfigUtil;->isQcomCaptureFlow()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_12

    invoke-static {}, Lcom/transsion/camera/utils/FeatureSupport;->isRaw10OfflineJNISupport()Z

    move-result v0

    if-eqz v0, :cond_12

    return-object v1

    :cond_12
    if-nez p1, :cond_15

    return-object v1

    :cond_15
    const/4 v0, 0x1

    .line 1315
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mIsSupportPostView:Z

    .line 1316
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mImageProcessor:Lcom/transsion/camera/app/common/mode/IImageProcessor;

    check-cast p0, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/ImageProcessor;->updateThumbnailSurface(Landroid/util/Size;)Lcom/transsion/camera/app/common/mode/CaptureSurface;

    move-result-object p0

    return-object p0
.end method

.method protected updateThumbnailView(Landroid/graphics/Bitmap;)V
    .registers 5

    .line 2424
    sget-object v0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateThumbnailView AIFrame : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->isAIFrameOn()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 2425
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mContinuousShot:Lcom/transsion/camera/app/common/mode/CommonPhotoMode$IContinuousShot;

    if-eqz v0, :cond_30

    invoke-interface {v0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$IContinuousShot;->isShotting()Z

    move-result v0

    if-nez v0, :cond_30

    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->isAIFrameOn()Z

    move-result v0

    if-eqz v0, :cond_30

    .line 2426
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/IAppUI;->playThumbLottieAnimation()V

    :cond_30
    if-eqz p1, :cond_37

    .line 2429
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/IAppUI;->updateThumbnail(Landroid/graphics/Bitmap;)V

    :cond_37
    return-void
.end method

.method protected updateThumbnailView([B)V
    .registers 4

    .line 2378
    invoke-static {p1}, Lcom/transsion/camera/utils/BitmapUtils;->createBitmapFromExif([B)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_d

    const/16 v0, 0x200

    const/4 v1, 0x0

    .line 2380
    invoke-static {p1, v0, v1}, Lcom/transsion/camera/utils/BitmapUtils;->createBitmapFromJpeg([BIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2382
    :cond_d
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->updateThumbnailView(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public updateYuvPicSurface()Lcom/transsion/camera/app/common/mode/CaptureSurface;
    .registers 4

    .line 1293
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->getDataFlowType()I

    move-result v0

    .line 1294
    invoke-static {v0}, Lcom/transsion/camera/adapter/DataFlowSpec;->yuvCapture(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_13

    .line 1295
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "no need yuv image surface"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-object v1

    .line 1298
    :cond_13
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v2, "key_picture_size"

    invoke-interface {v0, v2}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1e

    return-object v1

    .line 1302
    :cond_1e
    invoke-static {v0}, Landroid/util/Size;->parseSize(Ljava/lang/String;)Landroid/util/Size;

    move-result-object v0

    .line 1303
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mImageProcessor:Lcom/transsion/camera/app/common/mode/IImageProcessor;

    check-cast p0, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;

    const/16 v1, 0x23

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;->updateYuvPicSurface(Landroid/util/Size;IZ)Lcom/transsion/camera/app/common/mode/CaptureSurface;

    move-result-object p0

    return-object p0
.end method
