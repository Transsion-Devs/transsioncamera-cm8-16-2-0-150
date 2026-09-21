.class public Lcom/transsion/camera/adapter/CaptureResultMonitor;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/adapter/CaptureResultMonitor$AEPreCaptureResultCallback;
    }
.end annotation


# static fields
.field private static final SMART_FOCUS_DETECTION_DEBUG:Z

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field brightness:[I

.field private mAEPreCaptureResultCallback:Lcom/transsion/camera/adapter/CaptureResultMonitor$AEPreCaptureResultCallback;

.field mAIRawLiteMotionDetection:[I

.field private final mActiveArraySize:Landroid/graphics/Rect;

.field private mAeStable:Z

.field private mAeStateFlashRequired:Z

.field mAiRawLitAeeExpoInfoResult:[I

.field private mAnimalEyeDetectionCallback:Lcom/transsion/camera/adapter/CameraProxy$AnimalEyeDetectionCallback;

.field private mAutoFocusMoveResultCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraAutoFocusMoveCallback;

.field private mAutoFocusResultCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraAutoFocusCallback;

.field private mCameraBVCount:I

.field private mCameraDualLensCallbacks:Lcom/transsion/camera/utils/PriorityConcurrentSkipListMap;

.field mEVList:[I

.field private mEyeDetectionCallback:Lcom/transsion/camera/adapter/CameraProxy$EyeDetectionCallback;

.field private mFaceDetectionCallback:Lcom/transsion/camera/adapter/CameraProxy$FaceDetectionCallback;

.field private mFaceDetectionListener:Lcom/transsion/camera/adapter/CameraProxy$IFaceDetectionListener;

.field private mFlashStateCallback:Lcom/transsion/camera/adapter/CameraProxy$IFlashStateCallback;

.field private mFrameResultCallbacks:Ljava/util/ArrayList;

.field private mGenderAttributeCallbacks:Ljava/util/List;

.field mHDRAeExpoInfoResult:[I

.field private mHumanDetectionCallback:Lcom/transsion/camera/adapter/CameraProxy$HumanDetectionCallback;

.field private mIsAEPreCapturing:Z

.field private mIsAFActiveScanning:Z

.field private mIsAFStableScanning:Z

.field private mIsAFTriggered:Z

.field private mIsPreAFActiveScanning:Z

.field private mIsPreviewStarted:Z

.field private mIsWideCamera:Z

.field private mLastAeFrameNumber:J

.field private mLastAeResult:I

.field private mLastAfFrameNumber:J

.field private mLastAfState:I

.field private mLastLaserState:I

.field private mLastScreenFlashFire:Z

.field mLlsInfoResult:[I

.field mMFNRAeExpoInfoResult:[I

.field private mNeedTriggerPreCapture:Z

.field mNightAeExpoInfoResult:[I

.field private final mPlatformCamera2:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

.field private mPreAFResultCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraAutoFocusCallback;

.field private final mSensorFacing:I

.field private final mSensorOrientation:I

.field mStreamId:[I

.field private mStreamIdCallback:Ljava/util/List;

.field private mVideoHDRInfoCallback:Lcom/transsion/camera/adapter/CameraProxy$VideoHDRInfoCallback;

.field private mZoomRatioResultKey:Landroid/hardware/camera2/CaptureResult$Key;


# direct methods
.method public static synthetic $r8$lambda$Hw070tVVVEQswdqdYLe_aZObZWQ([Lcom/transsion/camera/utils/SettingInfo$CameraFace;Lcom/transsion/camera/adapter/CameraProxy$GenderAttributeCallback;)V
    .registers 2

    .line 742
    invoke-interface {p1, p0}, Lcom/transsion/camera/adapter/CameraProxy$GenderAttributeCallback;->onGenderAttributeCallback([Lcom/transsion/camera/utils/SettingInfo$CameraFace;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 44
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "CaptureResultMonitor"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    .line 57
    invoke-static {}, Lcom/transsion/camera/utils/FeatureSupport;->isSmartFocusDebugSupport()Z

    move-result v0

    sput-boolean v0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->SMART_FOCUS_DETECTION_DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/hardware/camera2/CameraCharacteristics;Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;)V
    .registers 6

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 60
    iput-boolean v0, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mIsPreviewStarted:Z

    .line 66
    iput v0, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mLastAfState:I

    const/4 v1, -0x1

    .line 67
    iput v1, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mLastLaserState:I

    const-wide/16 v1, -0x1

    .line 68
    iput-wide v1, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mLastAfFrameNumber:J

    .line 72
    iput v0, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mLastAeResult:I

    .line 73
    iput-wide v1, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mLastAeFrameNumber:J

    .line 74
    iput-boolean v0, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mIsAEPreCapturing:Z

    .line 75
    iput-boolean v0, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mIsAFTriggered:Z

    .line 76
    iput-boolean v0, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mIsAFActiveScanning:Z

    .line 77
    iput-boolean v0, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mIsPreAFActiveScanning:Z

    .line 78
    iput-boolean v0, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mIsAFStableScanning:Z

    .line 82
    iput v0, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mCameraBVCount:I

    .line 86
    new-instance v0, Landroid/hardware/camera2/CaptureResult$Key;

    const-string v1, "android.control.zoomRatio"

    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CaptureResult$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mZoomRatioResultKey:Landroid/hardware/camera2/CaptureResult$Key;

    .line 112
    new-instance v0, Lcom/transsion/camera/utils/PriorityConcurrentSkipListMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/PriorityConcurrentSkipListMap;-><init>(Z)V

    iput-object v0, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mCameraDualLensCallbacks:Lcom/transsion/camera/utils/PriorityConcurrentSkipListMap;

    .line 114
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mFrameResultCallbacks:Ljava/util/ArrayList;

    .line 116
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mGenderAttributeCallbacks:Ljava/util/List;

    .line 117
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mStreamIdCallback:Ljava/util/List;

    .line 120
    iput-object p2, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mPlatformCamera2:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    .line 121
    invoke-interface {p2, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->isWideCameraSupport(Landroid/hardware/camera2/CameraCharacteristics;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mIsWideCamera:Z

    .line 122
    sget-object p2, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_ORIENTATION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p1, p2}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iput p2, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mSensorOrientation:I

    .line 123
    sget-object p2, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p1, p2}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iput p2, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mSensorFacing:I

    .line 124
    sget-object p2, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_ACTIVE_ARRAY_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p1, p2}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Rect;

    iput-object p1, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mActiveArraySize:Landroid/graphics/Rect;

    return-void
.end method

.method private checkAEExpoInfoResult(Landroid/hardware/camera2/CaptureResult;)V
    .registers 3

    .line 935
    iget-object v0, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mPlatformCamera2:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {v0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->checkAeeExpoInfoResult(Landroid/hardware/camera2/CaptureResult;)[I

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mAiRawLitAeeExpoInfoResult:[I

    .line 936
    iget-object v0, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mPlatformCamera2:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {v0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->checkHDRAeExpoInfoResult(Landroid/hardware/camera2/CaptureResult;)[I

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mHDRAeExpoInfoResult:[I

    .line 937
    iget-object v0, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mPlatformCamera2:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {v0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->checkMFNRAeExpoInfoResult(Landroid/hardware/camera2/CaptureResult;)[I

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mMFNRAeExpoInfoResult:[I

    .line 938
    iget-object v0, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mPlatformCamera2:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {v0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->checkNightAeExpoInfoResult(Landroid/hardware/camera2/CaptureResult;)[I

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mNightAeExpoInfoResult:[I

    .line 939
    iget-object v0, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mPlatformCamera2:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {v0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->checkLlsInfoResult(Landroid/hardware/camera2/CaptureResult;)[I

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mLlsInfoResult:[I

    return-void
.end method

.method private checkAEResult(Landroid/hardware/camera2/CaptureResult;)V
    .registers 7

    .line 335
    invoke-direct {p0, p1}, Lcom/transsion/camera/adapter/CaptureResultMonitor;->checkScreenFlashFireResult(Landroid/hardware/camera2/CaptureResult;)V

    .line 336
    sget-object v0, Landroid/hardware/camera2/CaptureResult;->CONTROL_AE_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 337
    iget-object v0, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mPlatformCamera2:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {v0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->getAEState(Landroid/hardware/camera2/CaptureResult;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_61

    .line 339
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 340
    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureResult;->getFrameNumber()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mLastAeFrameNumber:J

    cmp-long v1, v1, v3

    if-lez v1, :cond_61

    .line 341
    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureResult;->getFrameNumber()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mLastAeFrameNumber:J

    const/4 p1, 0x3

    if-eqz v0, :cond_33

    const/4 v1, 0x2

    if-eq v0, v1, :cond_33

    if-eq v0, p1, :cond_33

    const/4 v1, 0x4

    if-eq v0, v1, :cond_33

    goto :goto_61

    :cond_33
    if-eq p1, v0, :cond_37

    .line 350
    iput v0, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mLastAeResult:I

    .line 354
    :cond_37
    iget-boolean p1, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mIsAEPreCapturing:Z

    if-eqz p1, :cond_61

    .line 355
    sget-object p1, Lcom/transsion/camera/adapter/CaptureResultMonitor;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[CapturePerformance] checkAEResult, aeState:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 356
    iput-boolean p1, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mIsAEPreCapturing:Z

    .line 357
    iget-object p1, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mAEPreCaptureResultCallback:Lcom/transsion/camera/adapter/CaptureResultMonitor$AEPreCaptureResultCallback;

    if-eqz p1, :cond_61

    const/4 v0, 0x1

    .line 358
    iput-boolean v0, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mAeStable:Z

    .line 359
    invoke-interface {p1}, Lcom/transsion/camera/adapter/CaptureResultMonitor$AEPreCaptureResultCallback;->onAEPreCaptureDone()V

    const/4 p1, 0x0

    .line 360
    iput-object p1, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mAEPreCaptureResultCallback:Lcom/transsion/camera/adapter/CaptureResultMonitor$AEPreCaptureResultCallback;

    :cond_61
    :goto_61
    return-void
.end method

.method private checkAFResult(IZ)V
    .registers 9

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p1, v1, :cond_8a

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-eq p1, v2, :cond_6c

    const/4 v2, 0x4

    if-eq p1, v2, :cond_13

    const/4 v4, 0x5

    if-eq p1, v4, :cond_13

    const/4 v2, 0x6

    if-eq p1, v2, :cond_8a

    goto/16 :goto_96

    .line 532
    :cond_13
    iget-boolean p2, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mIsAFActiveScanning:Z

    if-eqz p2, :cond_41

    .line 533
    iput-boolean v0, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mIsAFActiveScanning:Z

    .line 534
    iput-boolean v0, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mIsAFTriggered:Z

    .line 535
    iget-object p2, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mAutoFocusResultCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraAutoFocusCallback;

    if-eqz p2, :cond_41

    .line 536
    sget-object p2, Lcom/transsion/camera/adapter/CaptureResultMonitor;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[CapturePerformance] checkAFResult, afState :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p2, v4}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 537
    iget-object p2, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mAutoFocusResultCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraAutoFocusCallback;

    if-ne p1, v2, :cond_3b

    move v4, v1

    goto :goto_3c

    :cond_3b
    move v4, v0

    :goto_3c
    invoke-interface {p2, v4}, Lcom/transsion/camera/adapter/CameraProxy$CameraAutoFocusCallback;->onAutoFocus(Z)V

    .line 539
    iput-object v3, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mAutoFocusResultCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraAutoFocusCallback;

    .line 542
    :cond_41
    iget-boolean p2, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mIsAFStableScanning:Z

    if-eqz p2, :cond_96

    .line 543
    iput-boolean v0, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mIsAFStableScanning:Z

    .line 544
    iget-object p2, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mPreAFResultCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraAutoFocusCallback;

    if-eqz p2, :cond_96

    .line 545
    sget-object p2, Lcom/transsion/camera/adapter/CaptureResultMonitor;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[CapturePerformance] checkAFResult checkPreAFStable, afState :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p2, v4}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 546
    iget-object p2, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mPreAFResultCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraAutoFocusCallback;

    if-ne p1, v2, :cond_66

    move v0, v1

    :cond_66
    invoke-interface {p2, v0}, Lcom/transsion/camera/adapter/CameraProxy$CameraAutoFocusCallback;->onAutoFocus(Z)V

    .line 547
    iput-object v3, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mPreAFResultCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraAutoFocusCallback;

    return-void

    .line 514
    :cond_6c
    iget-boolean v2, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mIsAFStableScanning:Z

    if-eqz v2, :cond_8a

    iget-boolean v2, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mAeStable:Z

    if-eqz v2, :cond_8a

    .line 515
    iput-boolean v0, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mIsAFStableScanning:Z

    .line 516
    iget-object v2, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mPreAFResultCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraAutoFocusCallback;

    if-eqz v2, :cond_8a

    .line 517
    sget-object v2, Lcom/transsion/camera/adapter/CaptureResultMonitor;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v4, "[CapturePerformance] checkAFResult checkPreAFStable, afState is stable"

    invoke-static {v2, v4}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 518
    iget-object v2, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mPreAFResultCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraAutoFocusCallback;

    invoke-interface {v2, v1}, Lcom/transsion/camera/adapter/CameraProxy$CameraAutoFocusCallback;->onAutoFocus(Z)V

    .line 519
    iput-object v3, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mPreAFResultCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraAutoFocusCallback;

    .line 520
    iput-boolean v0, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mAeStable:Z

    :cond_8a
    if-eqz p2, :cond_96

    .line 525
    iget-object p0, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mAutoFocusMoveResultCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraAutoFocusMoveCallback;

    if-eqz p0, :cond_96

    if-ne p1, v1, :cond_93

    move v0, v1

    .line 526
    :cond_93
    invoke-interface {p0, v0}, Lcom/transsion/camera/adapter/CameraProxy$CameraAutoFocusMoveCallback;->onAutoFocusMoving(Z)V

    :cond_96
    :goto_96
    return-void
.end method

.method private checkAFResult(Landroid/hardware/camera2/CaptureResult;)V
    .registers 12

    .line 417
    sget-object v0, Landroid/hardware/camera2/CaptureResult;->CONTROL_AF_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 418
    iget-object v1, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mPlatformCamera2:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {v1, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->checkAfSearchStateResult(Landroid/hardware/camera2/CaptureResult;)Ljava/lang/Integer;

    move-result-object v1

    .line 419
    iget-object v2, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mPlatformCamera2:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {v2, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->checkEvAfChangeResult(Landroid/hardware/camera2/CaptureResult;)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_38

    .line 425
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 426
    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureResult;->getFrameNumber()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mLastAfFrameNumber:J

    cmp-long v6, v6, v8

    if-lez v6, :cond_36

    .line 428
    iget v6, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mLastAfState:I

    if-eq v5, v6, :cond_2b

    move v4, v3

    .line 429
    :cond_2b
    iput v5, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mLastAfState:I

    .line 430
    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureResult;->getFrameNumber()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mLastAfFrameNumber:J

    move p1, v4

    move v4, v3

    goto :goto_3a

    :cond_36
    move p1, v4

    goto :goto_3a

    :cond_38
    move p1, v4

    move v5, p1

    :goto_3a
    if-eqz v4, :cond_3f

    .line 436
    invoke-direct {p0, v5}, Lcom/transsion/camera/adapter/CaptureResultMonitor;->checkPreAFResult(I)V

    .line 440
    :cond_3f
    invoke-direct {p0, v1}, Lcom/transsion/camera/adapter/CaptureResultMonitor;->checkPreAFStable(Ljava/lang/Integer;)V

    .line 443
    iget-object v6, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mAutoFocusMoveResultCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraAutoFocusMoveCallback;

    if-eqz v6, :cond_53

    .line 444
    invoke-interface {v6}, Lcom/transsion/camera/adapter/CameraProxy$CameraAutoFocusMoveCallback;->laserFocusSupport()Z

    move-result v6

    if-eqz v6, :cond_53

    .line 445
    invoke-direct {p0, v0, v1}, Lcom/transsion/camera/adapter/CaptureResultMonitor;->checkLaserFocusResult(Ljava/lang/Integer;Ljava/lang/Integer;)Z

    move-result v0

    if-eqz v0, :cond_53

    goto :goto_81

    :cond_53
    if-eqz v2, :cond_7b

    .line 449
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v3, :cond_7b

    .line 450
    sget-object p1, Lcom/transsion/camera/adapter/CaptureResultMonitor;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checkAFResult, evAfChangeResult:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " validResult:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    move p1, v3

    goto :goto_7c

    :cond_7b
    move v3, v5

    :goto_7c
    if-eqz v4, :cond_81

    .line 457
    invoke-direct {p0, v3, p1}, Lcom/transsion/camera/adapter/CaptureResultMonitor;->checkAFResult(IZ)V

    :cond_81
    :goto_81
    return-void
.end method

.method private checkAIGroupPhoto([Lcom/transsion/camera/utils/SettingInfo$CameraFace;Landroid/graphics/Rect;)V
    .registers 3

    return-void
.end method

.method private checkAIRawLiteMotionDetection(Landroid/hardware/camera2/CaptureResult;)V
    .registers 3

    .line 971
    iget-object v0, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mPlatformCamera2:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {v0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->checkAIRawLiteMotionDetection(Landroid/hardware/camera2/CaptureResult;)[I

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mAIRawLiteMotionDetection:[I

    return-void
.end method

.method private checkAiFocusResult(Landroid/hardware/camera2/CaptureResult;Landroid/util/Size;ZZ)V
    .registers 6

    .line 585
    invoke-direct {p0, p1, p2, p4}, Lcom/transsion/camera/adapter/CaptureResultMonitor;->checkEyesResult(Landroid/hardware/camera2/CaptureResult;Landroid/util/Size;Z)Z

    move-result p4

    if-eqz p4, :cond_8

    const/4 p4, 0x1

    goto :goto_9

    :cond_8
    const/4 p4, -0x1

    .line 588
    :goto_9
    invoke-direct {p0, p1, p2, p4}, Lcom/transsion/camera/adapter/CaptureResultMonitor;->checkFaceResult(Landroid/hardware/camera2/CaptureResult;Landroid/util/Size;I)Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 p4, 0x2

    .line 591
    :cond_10
    invoke-direct {p0, p1, p2, p4}, Lcom/transsion/camera/adapter/CaptureResultMonitor;->checkHumanResult(Landroid/hardware/camera2/CaptureResult;Landroid/util/Size;I)Z

    move-result v0

    if-eqz v0, :cond_17

    const/4 p4, 0x3

    .line 594
    :cond_17
    invoke-direct {p0, p1, p2, p4, p3}, Lcom/transsion/camera/adapter/CaptureResultMonitor;->checkAnimalFaceEyesResult(Landroid/hardware/camera2/CaptureResult;Landroid/util/Size;IZ)Z

    move-result p0

    if-eqz p0, :cond_1e

    const/4 p4, 0x4

    .line 597
    :cond_1e
    sget-boolean p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->SMART_FOCUS_DETECTION_DEBUG:Z

    if-eqz p0, :cond_38

    .line 598
    sget-object p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "[checkAiFocusResult] focusMode = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :cond_38
    return-void
.end method

.method private checkAigcFaceResult(Landroid/hardware/camera2/CaptureResult;Landroid/util/Size;)V
    .registers 12

    .line 642
    iget-object v0, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mFaceDetectionListener:Lcom/transsion/camera/adapter/CameraProxy$IFaceDetectionListener;

    if-eqz v0, :cond_a8

    .line 645
    sget-object v0, Landroid/hardware/camera2/CaptureResult;->STATISTICS_FACES:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/hardware/camera2/params/Face;

    .line 646
    iget-object v1, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mPlatformCamera2:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {v1, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->getAntiFaceInfoRect(Landroid/hardware/camera2/CaptureResult;)[I

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_24

    .line 648
    array-length v4, v1

    const/4 v5, 0x5

    if-le v4, v5, :cond_24

    .line 649
    array-length v4, v1

    div-int/2addr v4, v5

    .line 650
    invoke-static {v0, v4, v1}, Lcom/transsion/camera/adapter/CaptureResultMonitor;->resetFaceRect([Landroid/hardware/camera2/params/Face;I[I)[Landroid/hardware/camera2/params/Face;

    .line 651
    invoke-direct {p0, p1, p2, v3}, Lcom/transsion/camera/adapter/CaptureResultMonitor;->getPreviewRectangle(Landroid/hardware/camera2/CaptureResult;Landroid/util/Size;Z)Landroid/graphics/Rect;

    move-result-object p2

    goto :goto_46

    .line 653
    :cond_24
    iget-object v1, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mPlatformCamera2:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {v1, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->getAntiVideoMode(Landroid/hardware/camera2/CaptureResult;)Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_42

    .line 655
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-eq v4, v3, :cond_39

    .line 656
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v3, 0x3

    if-ne v1, v3, :cond_42

    .line 657
    :cond_39
    iget-object p0, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mFaceDetectionCallback:Lcom/transsion/camera/adapter/CameraProxy$FaceDetectionCallback;

    if-eqz p0, :cond_a8

    const/4 p1, 0x0

    .line 658
    invoke-interface {p0, p1, p2, v2}, Lcom/transsion/camera/adapter/CameraProxy$FaceDetectionCallback;->onFaceDetected([Lcom/transsion/camera/utils/SettingInfo$CameraFace;Landroid/util/Size;Z)Z

    return-void

    .line 662
    :cond_42
    invoke-direct {p0, p1, p2, v2}, Lcom/transsion/camera/adapter/CaptureResultMonitor;->getPreviewRectangle(Landroid/hardware/camera2/CaptureResult;Landroid/util/Size;Z)Landroid/graphics/Rect;

    move-result-object p2

    .line 665
    :goto_46
    iget-object v1, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mPlatformCamera2:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {v1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->isStreamFlip()Z

    move-result v1

    .line 666
    iget v3, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mSensorOrientation:I

    iget v4, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mSensorFacing:I

    invoke-static {v0, v3, v4, p2, v1}, Lcom/transsion/camera/adapter/CaptureResultMonitor;->convertFaces([Landroid/hardware/camera2/params/Face;IILandroid/graphics/Rect;Z)[Lcom/transsion/camera/utils/SettingInfo$CameraFace;

    move-result-object p2

    if-eqz p2, :cond_a3

    .line 668
    array-length v0, p2

    if-lez v0, :cond_a3

    .line 669
    iget-object v0, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mPlatformCamera2:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {v0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->checkTranssionFaceInfo(Landroid/hardware/camera2/CaptureResult;)[Lcom/transsion/camera/utils/SettingInfo$CameraFace$FaceAttarInfo;

    move-result-object p1

    if-eqz p1, :cond_a3

    .line 670
    array-length v0, p1

    if-lez v0, :cond_a3

    .line 671
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mEnableFaceDetectionV2:Z

    if-eqz v0, :cond_93

    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/utils/CustomConfigUtil;->isQcomCaptureFlow()Z

    move-result v0

    if-nez v0, :cond_93

    .line 672
    array-length v0, p1

    move v1, v2

    :goto_78
    if-ge v1, v0, :cond_a3

    aget-object v3, p1, v1

    .line 673
    array-length v4, p2

    move v5, v2

    :goto_7e
    if-ge v5, v4, :cond_90

    aget-object v6, p2, v5

    .line 674
    invoke-virtual {v6}, Lcom/transsion/camera/utils/SettingInfo$CameraFace;->getId()I

    move-result v7

    iget v8, v3, Lcom/transsion/camera/utils/SettingInfo$CameraFace$FaceAttarInfo;->mId:I

    if-ne v7, v8, :cond_8d

    .line 675
    invoke-virtual {v6, v3}, Lcom/transsion/camera/utils/SettingInfo$CameraFace;->updateAttarFaceAttarInfo(Lcom/transsion/camera/utils/SettingInfo$CameraFace$FaceAttarInfo;)V

    :cond_8d
    add-int/lit8 v5, v5, 0x1

    goto :goto_7e

    :cond_90
    add-int/lit8 v1, v1, 0x1

    goto :goto_78

    .line 680
    :cond_93
    :goto_93
    array-length v0, p1

    if-ge v2, v0, :cond_a3

    .line 681
    array-length v0, p2

    if-ge v2, v0, :cond_a0

    .line 682
    aget-object v0, p2, v2

    aget-object v1, p1, v2

    invoke-virtual {v0, v1}, Lcom/transsion/camera/utils/SettingInfo$CameraFace;->updateAttarFaceAttarInfo(Lcom/transsion/camera/utils/SettingInfo$CameraFace$FaceAttarInfo;)V

    :cond_a0
    add-int/lit8 v2, v2, 0x1

    goto :goto_93

    .line 688
    :cond_a3
    iget-object p0, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mFaceDetectionListener:Lcom/transsion/camera/adapter/CameraProxy$IFaceDetectionListener;

    invoke-interface {p0, p2}, Lcom/transsion/camera/adapter/CameraProxy$IFaceDetectionListener;->onFaceDetected([Lcom/transsion/camera/utils/SettingInfo$CameraFace;)V

    :cond_a8
    return-void
.end method

.method private checkAnimalFaceEyesResult(Landroid/hardware/camera2/CaptureResult;Landroid/util/Size;IZ)Z
    .registers 9

    .line 796
    iget-object v0, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mAnimalEyeDetectionCallback:Lcom/transsion/camera/adapter/CameraProxy$AnimalEyeDetectionCallback;

    const/4 v1, 0x0

    if-eqz v0, :cond_60

    const/4 v2, 0x0

    if-lez p3, :cond_c

    .line 798
    invoke-interface {v0, v2}, Lcom/transsion/camera/adapter/CameraProxy$AnimalEyeDetectionCallback;->onAnimalEyeDetectionCallback([I)V

    return v1

    .line 801
    :cond_c
    iget-object p3, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mPlatformCamera2:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p3, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->checkAnimalEyeDetectionResult(Landroid/hardware/camera2/CaptureResult;)[I

    move-result-object p3

    .line 802
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/utils/CustomConfigUtil;->isQcomCaptureFlow()Z

    move-result v0

    const/4 v3, 0x1

    if-eqz v0, :cond_22

    if-eqz p4, :cond_20

    goto :goto_22

    :cond_20
    move p4, v1

    goto :goto_23

    :cond_22
    :goto_22
    move p4, v3

    .line 803
    :goto_23
    invoke-direct {p0, p1, p2, p4}, Lcom/transsion/camera/adapter/CaptureResultMonitor;->getPreviewRectangle(Landroid/hardware/camera2/CaptureResult;Landroid/util/Size;Z)Landroid/graphics/Rect;

    move-result-object p1

    .line 804
    iget-object p2, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mPlatformCamera2:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p2}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->isStreamFlip()Z

    move-result p2

    .line 805
    iget p4, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mSensorOrientation:I

    iget v0, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mSensorFacing:I

    invoke-static {p3, p4, v0, p1, p2}, Lcom/transsion/camera/adapter/CaptureResultMonitor;->convertAnimalFaceEyes([IIILandroid/graphics/Rect;Z)[I

    move-result-object p1

    if-eqz p1, :cond_5b

    .line 808
    sget-boolean p2, Lcom/transsion/camera/adapter/CaptureResultMonitor;->SMART_FOCUS_DETECTION_DEBUG:Z

    if-eqz p2, :cond_55

    .line 809
    sget-object p2, Lcom/transsion/camera/adapter/CaptureResultMonitor;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, " [checkAnimalFaceEyesResult] newAnimalFaceEyes: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 811
    :cond_55
    iget-object p0, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mAnimalEyeDetectionCallback:Lcom/transsion/camera/adapter/CameraProxy$AnimalEyeDetectionCallback;

    invoke-interface {p0, p1}, Lcom/transsion/camera/adapter/CameraProxy$AnimalEyeDetectionCallback;->onAnimalEyeDetectionCallback([I)V

    return v3

    .line 814
    :cond_5b
    iget-object p0, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mAnimalEyeDetectionCallback:Lcom/transsion/camera/adapter/CameraProxy$AnimalEyeDetectionCallback;

    invoke-interface {p0, v2}, Lcom/transsion/camera/adapter/CameraProxy$AnimalEyeDetectionCallback;->onAnimalEyeDetectionCallback([I)V

    :cond_60
    return v1
.end method

.method private checkBMBoxResult(Landroid/hardware/camera2/CaptureResult;Landroid/util/Size;Landroid/util/Size;)V
    .registers 10

    .line 557
    iget-object v0, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mHumanDetectionCallback:Lcom/transsion/camera/adapter/CameraProxy$HumanDetectionCallback;

    if-nez v0, :cond_5

    return-void

    .line 560
    :cond_5
    iget-object v0, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mPlatformCamera2:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {v0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->getBestMomentDetectResult(Landroid/hardware/camera2/CaptureResult;)I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_a9

    .line 561
    iget-object v0, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mPlatformCamera2:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {v0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->getHumanBox(Landroid/hardware/camera2/CaptureResult;)[I

    move-result-object v0

    .line 562
    sget-object v2, Lcom/transsion/camera/adapter/CaptureResultMonitor;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " [checkBestMomentDetectResult] "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mPlatformCamera2:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {v4, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->getBestMomentDetectResult(Landroid/hardware/camera2/CaptureResult;)I

    move-result p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " oriHumanBBox "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 563
    invoke-static {v0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 562
    invoke-static {v2, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-eqz v0, :cond_a3

    const/4 p1, 0x7

    .line 565
    new-array v1, p1, [I

    const/4 v3, 0x0

    aget v4, v0, v3

    aput v4, v1, v3

    const/4 v4, 0x1

    aput v3, v1, v4

    const/4 v5, 0x2

    aput v3, v1, v5

    aget v3, v0, v4

    const/4 v4, 0x3

    aput v3, v1, v4

    aget v3, v0, v5

    const/4 v5, 0x4

    aput v3, v1, v5

    aget v3, v0, v4

    const/4 v4, 0x5

    aput v3, v1, v4

    aget v3, v0, v5

    const/4 v5, 0x6

    aput v3, v1, v5

    .line 566
    array-length v3, v0

    if-lt v3, p1, :cond_6c

    .line 567
    aget p1, v0, v4

    aget p2, v0, v5

    invoke-static {v1, p1, p2, p3}, Lcom/transsion/camera/adapter/CaptureResultMonitor;->convertBMBox([IIILandroid/util/Size;)[I

    move-result-object v1

    goto :goto_7d

    .line 568
    :cond_6c
    array-length p1, v0

    if-gt p1, v4, :cond_7d

    if-eqz p2, :cond_7d

    .line 569
    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result p1

    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    move-result p2

    invoke-static {v1, p1, p2, p3}, Lcom/transsion/camera/adapter/CaptureResultMonitor;->convertBMBox([IIILandroid/util/Size;)[I

    move-result-object v1

    .line 572
    :cond_7d
    :goto_7d
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, " [checkBMBoxResult] newhumanBoxx: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " pictureSize: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 574
    iget-object p0, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mHumanDetectionCallback:Lcom/transsion/camera/adapter/CameraProxy$HumanDetectionCallback;

    invoke-interface {p0, v1}, Lcom/transsion/camera/adapter/CameraProxy$HumanDetectionCallback;->onBMBoxCallback([I)V

    return-void

    .line 576
    :cond_a3
    iget-object p0, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mHumanDetectionCallback:Lcom/transsion/camera/adapter/CameraProxy$HumanDetectionCallback;

    invoke-interface {p0, v1}, Lcom/transsion/camera/adapter/CameraProxy$HumanDetectionCallback;->onBMBoxCallback([I)V

    return-void

    .line 579
    :cond_a9
    iget-object p0, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mHumanDetectionCallback:Lcom/transsion/camera/adapter/CameraProxy$HumanDetectionCallback;

    invoke-interface {p0, v1}, Lcom/transsion/camera/adapter/CameraProxy$HumanDetectionCallback;->onBMBoxCallback([I)V

    return-void
.end method

.method private checkBrightnessResult(Landroid/hardware/camera2/CaptureResult;)V
    .registers 3

    .line 902
    iget-object v0, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mPlatformCamera2:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {v0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->checkBrightnessResult(Landroid/hardware/camera2/CaptureResult;)[I

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->brightness:[I

    if-eqz p1, :cond_13

    .line 904
    array-length v0, p1

    if-lez v0, :cond_13

    const/4 v0, 0x0

    .line 905
    aget p1, p1, v0

    invoke-direct {p0, p1}, Lcom/transsion/camera/adapter/CaptureResultMonitor;->checkFlashState(I)V

    :cond_13
    return-void
.end method

.method private checkDualLensResult(Landroid/hardware/camera2/CaptureResult;)V
    .registers 4

    .line 887
    iget-object v0, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mPlatformCamera2:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {v0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->checkDualLensResult(Landroid/hardware/camera2/CaptureResult;)[I

    move-result-object p1

    if-eqz p1, :cond_30

    .line 888
    array-length v0, p1

    if-lez v0, :cond_30

    .line 889
    iget-object p0, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mCameraDualLensCallbacks:Lcom/transsion/camera/utils/PriorityConcurrentSkipListMap;

    invoke-virtual {p0}, Ljava/util/AbstractMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 891
    :cond_15
    :goto_15
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_30

    .line 892
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 893
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/adapter/CameraProxy$CameraDualLensCallback;

    if-eqz v0, :cond_15

    const/4 v1, 0x0

    .line 895
    aget v1, p1, v1

    invoke-interface {v0, v1}, Lcom/transsion/camera/adapter/CameraProxy$CameraDualLensCallback;->onDualLensWarningCallback(I)V

    goto :goto_15

    :cond_30
    return-void
.end method

.method private checkEVList(Landroid/hardware/camera2/CaptureResult;)V
    .registers 3

    .line 963
    iget-object v0, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mPlatformCamera2:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {v0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->checkEVList(Landroid/hardware/camera2/CaptureResult;)[I

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mEVList:[I

    return-void
.end method

.method private checkEyesResult(Landroid/hardware/camera2/CaptureResult;Landroid/util/Size;Z)Z
    .registers 10

    .line 603
    iget-object v0, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mEyeDetectionCallback:Lcom/transsion/camera/adapter/CameraProxy$EyeDetectionCallback;

    const/4 v1, 0x0

    if-eqz v0, :cond_9b

    .line 604
    iget-object v0, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mPlatformCamera2:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {v0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->checkEyeDetectionResult(Landroid/hardware/camera2/CaptureResult;)[I

    move-result-object v0

    if-eqz v0, :cond_95

    .line 606
    sget-object v2, Landroid/hardware/camera2/CaptureResult;->STATISTICS_FACES:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v2}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/hardware/camera2/params/Face;

    .line 607
    iget-object v3, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mPlatformCamera2:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {v3, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->getAntiFaceInfoRect(Landroid/hardware/camera2/CaptureResult;)[I

    move-result-object v3

    .line 608
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v4

    invoke-virtual {v4}, Lcom/transsion/camera/utils/CustomConfigUtil;->isQcomCaptureFlow()Z

    move-result v4

    if-eqz v4, :cond_2a

    if-nez p3, :cond_28

    goto :goto_2a

    :cond_28
    move p3, v1

    goto :goto_2b

    :cond_2a
    :goto_2a
    const/4 p3, 0x1

    .line 609
    :goto_2b
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/camera/adapter/CaptureResultMonitor;->getPreviewRectangle(Landroid/hardware/camera2/CaptureResult;Landroid/util/Size;Z)Landroid/graphics/Rect;

    move-result-object p3

    if-eqz v3, :cond_3d

    .line 611
    array-length v4, v3

    const/4 v5, 0x5

    if-le v4, v5, :cond_3d

    .line 612
    array-length p1, v3

    div-int/2addr p1, v5

    .line 613
    invoke-static {v2, p1, v3}, Lcom/transsion/camera/adapter/CaptureResultMonitor;->resetFaceRect([Landroid/hardware/camera2/params/Face;I[I)[Landroid/hardware/camera2/params/Face;

    move-result-object v2

    move-object p1, p3

    goto :goto_41

    .line 617
    :cond_3d
    invoke-direct {p0, p1, p2, v1}, Lcom/transsion/camera/adapter/CaptureResultMonitor;->getPreviewRectangle(Landroid/hardware/camera2/CaptureResult;Landroid/util/Size;Z)Landroid/graphics/Rect;

    move-result-object p1

    .line 619
    :goto_41
    iget-object v3, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mPlatformCamera2:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {v3}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->isStreamFlip()Z

    move-result v3

    .line 620
    iget v4, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mSensorOrientation:I

    iget v5, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mSensorFacing:I

    invoke-static {v2, v4, v5, p1, v3}, Lcom/transsion/camera/adapter/CaptureResultMonitor;->convertFaces([Landroid/hardware/camera2/params/Face;IILandroid/graphics/Rect;Z)[Lcom/transsion/camera/utils/SettingInfo$CameraFace;

    move-result-object p1

    .line 622
    iget v2, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mSensorOrientation:I

    iget v4, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mSensorFacing:I

    invoke-static {v0, v2, v4, p3, v3}, Lcom/transsion/camera/adapter/CaptureResultMonitor;->convertEyes([IIILandroid/graphics/Rect;Z)[I

    move-result-object p3

    .line 623
    invoke-static {p1, p2}, Lcom/transsion/camera/utils/CameraUtil;->isNeedShowFace([Lcom/transsion/camera/utils/SettingInfo$CameraFace;Landroid/util/Size;)Z

    move-result v0

    .line 624
    sget-boolean v2, Lcom/transsion/camera/adapter/CaptureResultMonitor;->SMART_FOCUS_DETECTION_DEBUG:Z

    if-eqz v2, :cond_81

    .line 625
    sget-object v2, Lcom/transsion/camera/adapter/CaptureResultMonitor;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " [checkEyesResult] newEyes: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", isNeedShowFace: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :cond_81
    if-eqz p3, :cond_95

    if-nez v0, :cond_95

    .line 629
    iget-object v0, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mEyeDetectionCallback:Lcom/transsion/camera/adapter/CameraProxy$EyeDetectionCallback;

    invoke-interface {v0, p3}, Lcom/transsion/camera/adapter/CameraProxy$EyeDetectionCallback;->onEyeDetectionCallback([I)Z

    move-result p3

    if-eqz p3, :cond_94

    .line 630
    iget-object p0, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mFaceDetectionCallback:Lcom/transsion/camera/adapter/CameraProxy$FaceDetectionCallback;

    if-eqz p0, :cond_94

    .line 631
    invoke-interface {p0, p1, p2, v1}, Lcom/transsion/camera/adapter/CameraProxy$FaceDetectionCallback;->onFaceDetected([Lcom/transsion/camera/utils/SettingInfo$CameraFace;Landroid/util/Size;Z)Z

    :cond_94
    return p3

    .line 636
    :cond_95
    iget-object p0, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mEyeDetectionCallback:Lcom/transsion/camera/adapter/CameraProxy$EyeDetectionCallback;

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Lcom/transsion/camera/adapter/CameraProxy$EyeDetectionCallback;->onEyeDetectionCallback([I)Z

    :cond_9b
    return v1
.end method

.method private checkFaceResult(Landroid/hardware/camera2/CaptureResult;Landroid/util/Size;I)Z
    .registers 16

    .line 693
    iget-object v0, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mFaceDetectionCallback:Lcom/transsion/camera/adapter/CameraProxy$FaceDetectionCallback;

    const/4 v1, 0x0

    if-eqz v0, :cond_122

    if-lez p3, :cond_8

    return v1

    .line 697
    :cond_8
    sget-object p3, Landroid/hardware/camera2/CaptureResult;->STATISTICS_FACES:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, p3}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, [Landroid/hardware/camera2/params/Face;

    .line 698
    iget-object v0, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mPlatformCamera2:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {v0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->getAntiFaceInfoRect(Landroid/hardware/camera2/CaptureResult;)[I

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x3

    const/4 v4, 0x1

    if-eqz v0, :cond_2a

    .line 700
    array-length v5, v0

    const/4 v6, 0x5

    if-le v5, v6, :cond_2a

    .line 701
    array-length v5, v0

    div-int/2addr v5, v6

    .line 702
    invoke-static {p3, v5, v0}, Lcom/transsion/camera/adapter/CaptureResultMonitor;->resetFaceRect([Landroid/hardware/camera2/params/Face;I[I)[Landroid/hardware/camera2/params/Face;

    move-result-object p3

    .line 703
    invoke-direct {p0, p1, p2, v4}, Lcom/transsion/camera/adapter/CaptureResultMonitor;->getPreviewRectangle(Landroid/hardware/camera2/CaptureResult;Landroid/util/Size;Z)Landroid/graphics/Rect;

    move-result-object v0

    goto :goto_54

    .line 705
    :cond_2a
    iget-object v0, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mPlatformCamera2:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {v0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->getAntiVideoMode(Landroid/hardware/camera2/CaptureResult;)Ljava/lang/Integer;

    move-result-object v0

    .line 706
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v5

    invoke-virtual {v5}, Lcom/transsion/camera/utils/CustomConfigUtil;->isQcomCaptureFlow()Z

    move-result v5

    if-nez v5, :cond_50

    if-eqz v0, :cond_50

    .line 708
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-eq v5, v4, :cond_48

    .line 709
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v3, :cond_50

    :cond_48
    iget-object v0, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mFaceDetectionCallback:Lcom/transsion/camera/adapter/CameraProxy$FaceDetectionCallback;

    if-eqz v0, :cond_50

    .line 711
    invoke-interface {v0, v2, p2, v1}, Lcom/transsion/camera/adapter/CameraProxy$FaceDetectionCallback;->onFaceDetected([Lcom/transsion/camera/utils/SettingInfo$CameraFace;Landroid/util/Size;Z)Z

    return v1

    .line 714
    :cond_50
    invoke-direct {p0, p1, p2, v1}, Lcom/transsion/camera/adapter/CaptureResultMonitor;->getPreviewRectangle(Landroid/hardware/camera2/CaptureResult;Landroid/util/Size;Z)Landroid/graphics/Rect;

    move-result-object v0

    .line 716
    :goto_54
    iget-object v5, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mPlatformCamera2:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {v5}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->isStreamFlip()Z

    move-result v5

    .line 717
    iget v6, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mSensorOrientation:I

    iget v7, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mSensorFacing:I

    invoke-static {p3, v6, v7, v0, v5}, Lcom/transsion/camera/adapter/CaptureResultMonitor;->convertFaces([Landroid/hardware/camera2/params/Face;IILandroid/graphics/Rect;Z)[Lcom/transsion/camera/utils/SettingInfo$CameraFace;

    move-result-object p3

    .line 719
    invoke-direct {p0, p3, v0}, Lcom/transsion/camera/adapter/CaptureResultMonitor;->checkAIGroupPhoto([Lcom/transsion/camera/utils/SettingInfo$CameraFace;Landroid/graphics/Rect;)V

    if-eqz p3, :cond_11b

    .line 721
    array-length v0, p3

    if-lez v0, :cond_11b

    .line 722
    iget-object v0, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mPlatformCamera2:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {v0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->checkTranssionFaceInfo(Landroid/hardware/camera2/CaptureResult;)[Lcom/transsion/camera/utils/SettingInfo$CameraFace$FaceAttarInfo;

    move-result-object v0

    if-eqz v0, :cond_c0

    .line 723
    array-length v2, v0

    if-lez v2, :cond_c0

    .line 724
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v2

    iget-boolean v2, v2, Lcom/transsion/camera/utils/CustomConfigUtil;->mEnableFaceDetectionV2:Z

    if-eqz v2, :cond_af

    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v2

    invoke-virtual {v2}, Lcom/transsion/camera/utils/CustomConfigUtil;->isQcomCaptureFlow()Z

    move-result v2

    if-nez v2, :cond_af

    .line 725
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->addFaceInfo(Ljava/util/List;)V

    .line 726
    array-length v2, v0

    move v5, v1

    :goto_94
    if-ge v5, v2, :cond_c0

    aget-object v6, v0, v5

    .line 727
    array-length v7, p3

    move v8, v1

    :goto_9a
    if-ge v8, v7, :cond_ac

    aget-object v9, p3, v8

    .line 728
    invoke-virtual {v9}, Lcom/transsion/camera/utils/SettingInfo$CameraFace;->getId()I

    move-result v10

    iget v11, v6, Lcom/transsion/camera/utils/SettingInfo$CameraFace$FaceAttarInfo;->mId:I

    if-ne v10, v11, :cond_a9

    .line 729
    invoke-virtual {v9, v6}, Lcom/transsion/camera/utils/SettingInfo$CameraFace;->updateAttarFaceAttarInfo(Lcom/transsion/camera/utils/SettingInfo$CameraFace$FaceAttarInfo;)V

    :cond_a9
    add-int/lit8 v8, v8, 0x1

    goto :goto_9a

    :cond_ac
    add-int/lit8 v5, v5, 0x1

    goto :goto_94

    :cond_af
    move v2, v1

    .line 734
    :goto_b0
    array-length v5, v0

    if-ge v2, v5, :cond_c0

    .line 735
    array-length v5, p3

    if-ge v2, v5, :cond_bd

    .line 736
    aget-object v5, p3, v2

    aget-object v6, v0, v2

    invoke-virtual {v5, v6}, Lcom/transsion/camera/utils/SettingInfo$CameraFace;->updateAttarFaceAttarInfo(Lcom/transsion/camera/utils/SettingInfo$CameraFace$FaceAttarInfo;)V

    :cond_bd
    add-int/lit8 v2, v2, 0x1

    goto :goto_b0

    .line 741
    :cond_c0
    iget-object v0, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mGenderAttributeCallbacks:Ljava/util/List;

    new-instance v2, Lcom/transsion/camera/adapter/CaptureResultMonitor$$ExternalSyntheticLambda0;

    invoke-direct {v2, p3}, Lcom/transsion/camera/adapter/CaptureResultMonitor$$ExternalSyntheticLambda0;-><init>([Lcom/transsion/camera/utils/SettingInfo$CameraFace;)V

    invoke-interface {v0, v2}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    .line 745
    sget-boolean v0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->SMART_FOCUS_DETECTION_DEBUG:Z

    if-eqz v0, :cond_e8

    .line 746
    sget-object v0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " [checkFaceResult] newFaces: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 748
    :cond_e8
    iget-object v0, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mPlatformCamera2:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {v0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->getGenderAttributeAndRace(Landroid/hardware/camera2/CaptureResult;)[I

    move-result-object p1

    if-eqz p1, :cond_111

    .line 749
    array-length v0, p1

    if-lt v0, v3, :cond_111

    array-length v0, p3

    if-lez v0, :cond_111

    .line 750
    invoke-direct {p0, p3}, Lcom/transsion/camera/adapter/CaptureResultMonitor;->findMaxFace([Lcom/transsion/camera/utils/SettingInfo$CameraFace;)I

    move-result v0

    .line 751
    new-instance v2, Lcom/transsion/camera/utils/SettingInfo$CameraFace$FaceAttarInfo;

    invoke-direct {v2, v1}, Lcom/transsion/camera/utils/SettingInfo$CameraFace$FaceAttarInfo;-><init>(I)V

    .line 752
    aget v3, p1, v1

    iput v3, v2, Lcom/transsion/camera/utils/SettingInfo$CameraFace$FaceAttarInfo;->mGender:I

    .line 753
    aget v3, p1, v4

    iput v3, v2, Lcom/transsion/camera/utils/SettingInfo$CameraFace$FaceAttarInfo;->mRace:I

    const/4 v3, 0x2

    .line 754
    aget p1, p1, v3

    iput p1, v2, Lcom/transsion/camera/utils/SettingInfo$CameraFace$FaceAttarInfo;->mSkinColor:I

    .line 755
    aget-object p1, p3, v0

    invoke-virtual {p1, v2}, Lcom/transsion/camera/utils/SettingInfo$CameraFace;->updateAttarFaceAttarInfo(Lcom/transsion/camera/utils/SettingInfo$CameraFace$FaceAttarInfo;)V

    .line 757
    :cond_111
    iget-object p0, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mFaceDetectionCallback:Lcom/transsion/camera/adapter/CameraProxy$FaceDetectionCallback;

    if-nez p0, :cond_116

    return v1

    .line 760
    :cond_116
    invoke-interface {p0, p3, p2, v4}, Lcom/transsion/camera/adapter/CameraProxy$FaceDetectionCallback;->onFaceDetected([Lcom/transsion/camera/utils/SettingInfo$CameraFace;Landroid/util/Size;Z)Z

    move-result p0

    return p0

    .line 762
    :cond_11b
    iget-object p0, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mFaceDetectionCallback:Lcom/transsion/camera/adapter/CameraProxy$FaceDetectionCallback;

    if-eqz p0, :cond_122

    .line 763
    invoke-interface {p0, v2, p2, v1}, Lcom/transsion/camera/adapter/CameraProxy$FaceDetectionCallback;->onFaceDetected([Lcom/transsion/camera/utils/SettingInfo$CameraFace;Landroid/util/Size;Z)Z

    :cond_122
    return v1
.end method

.method private checkFlashState(I)V
    .registers 3

    .line 380
    iget-object p0, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mFlashStateCallback:Lcom/transsion/camera/adapter/CameraProxy$IFlashStateCallback;

    if-nez p0, :cond_5

    return-void

    :cond_5
    const/16 v0, -0x15

    if-gt p1, v0, :cond_b

    const/4 p1, 0x1

    goto :goto_c

    :cond_b
    const/4 p1, 0x0

    .line 383
    :goto_c
    invoke-interface {p0, p1}, Lcom/transsion/camera/adapter/CameraProxy$IFlashStateCallback;->onFlashRequired(Z)V

    return-void
.end method

.method private checkHumanResult(Landroid/hardware/camera2/CaptureResult;Landroid/util/Size;I)Z
    .registers 8

    .line 770
    iget-object v0, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mHumanDetectionCallback:Lcom/transsion/camera/adapter/CameraProxy$HumanDetectionCallback;

    const/4 v1, 0x0

    if-eqz v0, :cond_5e

    const/4 v2, 0x0

    if-lez p3, :cond_c

    .line 772
    invoke-interface {v0, v2}, Lcom/transsion/camera/adapter/CameraProxy$HumanDetectionCallback;->onHumanDetectionCallback([I)V

    return v1

    .line 775
    :cond_c
    iget-object p3, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mPlatformCamera2:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p3, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->checkHumanDetectResult(Landroid/hardware/camera2/CaptureResult;)[I

    move-result-object p3

    if-eqz p3, :cond_59

    .line 777
    invoke-direct {p0, p1, p2, v1}, Lcom/transsion/camera/adapter/CaptureResultMonitor;->getPreviewRectangle(Landroid/hardware/camera2/CaptureResult;Landroid/util/Size;Z)Landroid/graphics/Rect;

    move-result-object p1

    .line 778
    iget-object p2, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mPlatformCamera2:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p2}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->isStreamFlip()Z

    move-result p2

    .line 779
    iget v0, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mSensorOrientation:I

    iget v3, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mSensorFacing:I

    invoke-static {p3, v0, v3, p1, p2}, Lcom/transsion/camera/adapter/CaptureResultMonitor;->convertHuman([IIILandroid/graphics/Rect;Z)[I

    move-result-object p1

    if-eqz p1, :cond_59

    .line 782
    sget-boolean p2, Lcom/transsion/camera/adapter/CaptureResultMonitor;->SMART_FOCUS_DETECTION_DEBUG:Z

    if-eqz p2, :cond_52

    .line 783
    sget-object p2, Lcom/transsion/camera/adapter/CaptureResultMonitor;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " [checkHumanResult] newBody: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", humanDet: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 784
    invoke-static {p3}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 783
    invoke-static {p2, p3}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 786
    :cond_52
    iget-object p0, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mHumanDetectionCallback:Lcom/transsion/camera/adapter/CameraProxy$HumanDetectionCallback;

    invoke-interface {p0, p1}, Lcom/transsion/camera/adapter/CameraProxy$HumanDetectionCallback;->onHumanDetectionCallback([I)V

    const/4 p0, 0x1

    return p0

    .line 790
    :cond_59
    iget-object p0, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mHumanDetectionCallback:Lcom/transsion/camera/adapter/CameraProxy$HumanDetectionCallback;

    invoke-interface {p0, v2}, Lcom/transsion/camera/adapter/CameraProxy$HumanDetectionCallback;->onHumanDetectionCallback([I)V

    :cond_5e
    return v1
.end method

.method private checkLaserFocusResult(Ljava/lang/Integer;Ljava/lang/Integer;)Z
    .registers 5

    const/4 v0, 0x1

    if-eqz p2, :cond_20

    .line 494
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v0, :cond_20

    if-eqz p1, :cond_20

    .line 496
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq v1, v0, :cond_20

    .line 497
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v1, 0x3

    if-eq p1, v1, :cond_20

    .line 498
    iget-object p1, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mAutoFocusMoveResultCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraAutoFocusMoveCallback;

    invoke-interface {p1, v0}, Lcom/transsion/camera/adapter/CameraProxy$CameraAutoFocusMoveCallback;->onLaserFocused(Z)V

    .line 499
    iput v0, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mLastLaserState:I

    return v0

    :cond_20
    const/4 p1, 0x0

    if-eqz p2, :cond_35

    .line 502
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-nez p2, :cond_35

    iget p2, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mLastLaserState:I

    if-ne p2, v0, :cond_35

    .line 504
    iget-object p2, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mAutoFocusMoveResultCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraAutoFocusMoveCallback;

    invoke-interface {p2, p1}, Lcom/transsion/camera/adapter/CameraProxy$CameraAutoFocusMoveCallback;->onLaserFocused(Z)V

    .line 505
    iput p1, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mLastLaserState:I

    return v0

    :cond_35
    return p1
.end method

.method private checkNeedTriggerPreCaptureResult(Landroid/hardware/camera2/CaptureResult;Ljava/lang/String;)V
    .registers 6

    .line 399
    iget-boolean v0, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mIsAFTriggered:Z

    if-nez v0, :cond_13

    iget-object v0, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mPlatformCamera2:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    iget v1, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mLastAeResult:I

    iget v2, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mLastAfState:I

    .line 400
    invoke-interface {v0, p1, p2, v1, v2}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->needTriggerPreCapture(Landroid/hardware/camera2/CaptureResult;Ljava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_13

    :cond_11
    const/4 v0, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 v0, 0x1

    :goto_14
    iput-boolean v0, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mNeedTriggerPreCapture:Z

    .line 401
    iget-object v0, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mPlatformCamera2:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    iget v1, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mLastAeResult:I

    invoke-interface {v0, p1, p2, v1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->aeStateFlashRequired(Landroid/hardware/camera2/CaptureResult;Ljava/lang/String;I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mAeStateFlashRequired:Z

    return-void
.end method

.method private checkPreAFResult(I)V
    .registers 7

    const/4 v0, 0x4

    if-eq p1, v0, :cond_7

    const/4 v1, 0x5

    if-eq p1, v1, :cond_7

    goto :goto_33

    .line 465
    :cond_7
    iget-boolean v1, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mIsPreAFActiveScanning:Z

    if-eqz v1, :cond_33

    const/4 v1, 0x0

    .line 466
    iput-boolean v1, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mIsPreAFActiveScanning:Z

    .line 467
    iget-object v2, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mPreAFResultCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraAutoFocusCallback;

    if-eqz v2, :cond_33

    .line 468
    sget-object v2, Lcom/transsion/camera/adapter/CaptureResultMonitor;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[CapturePerformance] checkPreAFResult, afState:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 469
    iget-object v2, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mPreAFResultCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraAutoFocusCallback;

    if-ne p1, v0, :cond_2d

    const/4 v1, 0x1

    :cond_2d
    invoke-interface {v2, v1}, Lcom/transsion/camera/adapter/CameraProxy$CameraAutoFocusCallback;->onAutoFocus(Z)V

    const/4 p1, 0x0

    .line 471
    iput-object p1, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mPreAFResultCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraAutoFocusCallback;

    :cond_33
    :goto_33
    return-void
.end method

.method private checkPreAFStable(Ljava/lang/Integer;)V
    .registers 3

    .line 481
    invoke-static {}, Lcom/transsion/camera/utils/FeatureSupport;->isSprdPlatform()Z

    move-result v0

    if-nez v0, :cond_29

    if-eqz p1, :cond_29

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-nez p1, :cond_29

    .line 482
    iget-boolean p1, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mIsAFStableScanning:Z

    if-eqz p1, :cond_29

    const/4 p1, 0x0

    .line 483
    iput-boolean p1, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mIsAFStableScanning:Z

    .line 484
    iget-object p1, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mPreAFResultCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraAutoFocusCallback;

    if-eqz p1, :cond_29

    .line 485
    sget-object p1, Lcom/transsion/camera/adapter/CaptureResultMonitor;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "[CapturePerformance] checkPreAFStable, afState is stable"

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 486
    iget-object p1, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mPreAFResultCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraAutoFocusCallback;

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/transsion/camera/adapter/CameraProxy$CameraAutoFocusCallback;->onAutoFocus(Z)V

    const/4 p1, 0x0

    .line 487
    iput-object p1, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mPreAFResultCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraAutoFocusCallback;

    :cond_29
    return-void
.end method

.method private checkScreenFlashFireResult(Landroid/hardware/camera2/CaptureResult;)V
    .registers 3

    .line 388
    iget-object v0, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mFlashStateCallback:Lcom/transsion/camera/adapter/CameraProxy$IFlashStateCallback;

    if-nez v0, :cond_5

    return-void

    .line 391
    :cond_5
    iget-object v0, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mPlatformCamera2:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {v0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->checkScreenFlashFireResult(Landroid/hardware/camera2/CaptureResult;)Z

    move-result p1

    if-eqz p1, :cond_16

    .line 392
    iget-boolean v0, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mLastScreenFlashFire:Z

    if-nez v0, :cond_16

    .line 393
    iget-object v0, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mFlashStateCallback:Lcom/transsion/camera/adapter/CameraProxy$IFlashStateCallback;

    invoke-interface {v0}, Lcom/transsion/camera/adapter/CameraProxy$IFlashStateCallback;->onFlashFire()V

    .line 395
    :cond_16
    iput-boolean p1, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mLastScreenFlashFire:Z

    return-void
.end method

.method private checkStreamIdResult(Landroid/hardware/camera2/CaptureResult;)V
    .registers 4

    .line 922
    iget-object v0, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mPlatformCamera2:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {v0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->checkStreamIdResult(Landroid/hardware/camera2/CaptureResult;)[I

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mStreamId:[I

    .line 923
    iget-object v0, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mStreamIdCallback:Ljava/util/List;

    if-eqz v0, :cond_24

    if-eqz p1, :cond_24

    .line 924
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_12
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/adapter/CameraProxy$StreamIdCallback;

    .line 925
    iget-object v1, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mStreamId:[I

    invoke-interface {v0, v1}, Lcom/transsion/camera/adapter/CameraProxy$StreamIdCallback;->onStreamIdCallback([I)V

    goto :goto_12

    :cond_24
    return-void
.end method

.method private checkVideoHDRInfoResult(Landroid/hardware/camera2/CaptureResult;)V
    .registers 5

    .line 1139
    sget-object v0, Landroid/hardware/camera2/CaptureResult;->STATISTICS_FACES:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/hardware/camera2/params/Face;

    .line 1140
    iget-object v1, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mPlatformCamera2:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {v1, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->checkBrightnessResult(Landroid/hardware/camera2/CaptureResult;)[I

    move-result-object v1

    .line 1141
    sget-object v2, Landroid/hardware/camera2/CaptureResult;->FLASH_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v2}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_21

    const/4 v2, 0x3

    .line 1142
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne v2, p1, :cond_21

    const/4 p1, 0x1

    goto :goto_22

    :cond_21
    const/4 p1, 0x0

    .line 1143
    :goto_22
    iget-object p0, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mVideoHDRInfoCallback:Lcom/transsion/camera/adapter/CameraProxy$VideoHDRInfoCallback;

    if-eqz p0, :cond_29

    .line 1144
    invoke-interface {p0, v0, v1, p1}, Lcom/transsion/camera/adapter/CameraProxy$VideoHDRInfoCallback;->onVideoHDRInfo([Landroid/hardware/camera2/params/Face;[IZ)V

    :cond_29
    return-void
.end method

.method private static convertAnimalFaceEyes([IIILandroid/graphics/Rect;Z)[I
    .registers 14

    const/4 v0, 0x0

    if-eqz p0, :cond_82

    if-nez p3, :cond_7

    goto/16 :goto_82

    :cond_7
    if-eqz p2, :cond_e

    if-eqz p4, :cond_c

    goto :goto_e

    :cond_c
    const/4 p2, 0x0

    goto :goto_f

    :cond_e
    :goto_e
    const/4 p2, 0x1

    .line 1082
    :goto_f
    array-length p4, p0

    const/16 v1, 0xa

    if-ge p4, v1, :cond_15

    return-object v0

    :cond_15
    const/4 p4, 0x2

    .line 1085
    aget v1, p0, p4

    if-eqz v1, :cond_4a

    const/4 v1, 0x3

    aget v2, p0, v1

    if-eqz v2, :cond_4a

    const/4 v2, 0x4

    aget v3, p0, v2

    if-eqz v3, :cond_4a

    const/4 v3, 0x5

    aget v4, p0, v3

    if-eqz v4, :cond_4a

    .line 1086
    new-instance v4, Landroid/graphics/Rect;

    aget v5, p0, p4

    aget v6, p0, v1

    aget v7, p0, v2

    aget v8, p0, v3

    invoke-direct {v4, v5, v6, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1087
    invoke-static {v4, p2, p1, p3}, Lcom/transsion/camera/utils/CoordinatesUtil;->sensorToReferenceSpace(Landroid/graphics/Rect;ZILandroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v4

    .line 1088
    iget v5, v4, Landroid/graphics/Rect;->left:I

    aput v5, p0, p4

    .line 1089
    iget p4, v4, Landroid/graphics/Rect;->top:I

    aput p4, p0, v1

    .line 1090
    iget p4, v4, Landroid/graphics/Rect;->right:I

    aput p4, p0, v2

    .line 1091
    iget p4, v4, Landroid/graphics/Rect;->bottom:I

    aput p4, p0, v3

    :cond_4a
    const/4 p4, 0x6

    .line 1093
    aget v1, p0, p4

    if-eqz v1, :cond_82

    const/4 v1, 0x7

    aget v2, p0, v1

    if-eqz v2, :cond_82

    const/16 v2, 0x8

    aget v3, p0, v2

    if-eqz v3, :cond_82

    const/16 v3, 0x9

    aget v4, p0, v3

    if-eqz v4, :cond_82

    .line 1094
    new-instance v0, Landroid/graphics/Rect;

    aget v4, p0, p4

    aget v5, p0, v1

    aget v6, p0, v2

    aget v7, p0, v3

    invoke-direct {v0, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1095
    invoke-static {v0, p2, p1, p3}, Lcom/transsion/camera/utils/CoordinatesUtil;->sensorToReferenceSpace(Landroid/graphics/Rect;ZILandroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object p1

    .line 1096
    iget p2, p1, Landroid/graphics/Rect;->left:I

    aput p2, p0, p4

    .line 1097
    iget p2, p1, Landroid/graphics/Rect;->top:I

    aput p2, p0, v1

    .line 1098
    iget p2, p1, Landroid/graphics/Rect;->right:I

    aput p2, p0, v2

    .line 1099
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    aput p1, p0, v3

    return-object p0

    :cond_82
    :goto_82
    return-object v0
.end method

.method private static convertBMBox([IIILandroid/util/Size;)[I
    .registers 6

    if-eqz p0, :cond_40

    .line 1054
    array-length v0, p0

    const/4 v1, 0x7

    if-lt v0, v1, :cond_40

    if-eqz p1, :cond_40

    if-nez p2, :cond_b

    goto :goto_40

    .line 1058
    :cond_b
    invoke-virtual {p3}, Landroid/util/Size;->getWidth()I

    move-result v0

    int-to-float v0, v0

    int-to-float p1, p1

    div-float/2addr v0, p1

    .line 1059
    invoke-virtual {p3}, Landroid/util/Size;->getHeight()I

    move-result p1

    int-to-float p1, p1

    int-to-float p2, p2

    div-float/2addr p1, p2

    const/4 p2, 0x3

    .line 1061
    aget p3, p0, p2

    int-to-float p3, p3

    mul-float/2addr p3, v0

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr p3, v1

    float-to-int p3, p3

    aput p3, p0, p2

    const/4 p2, 0x4

    .line 1062
    aget p3, p0, p2

    int-to-float p3, p3

    mul-float/2addr p3, p1

    add-float/2addr p3, v1

    float-to-int p3, p3

    aput p3, p0, p2

    const/4 p2, 0x5

    .line 1063
    aget p3, p0, p2

    int-to-float p3, p3

    mul-float/2addr p3, v0

    add-float/2addr p3, v1

    float-to-int p3, p3

    aput p3, p0, p2

    const/4 p2, 0x6

    .line 1064
    aget p3, p0, p2

    int-to-float p3, p3

    mul-float/2addr p3, p1

    add-float/2addr p3, v1

    float-to-int p1, p3

    aput p1, p0, p2

    return-object p0

    :cond_40
    :goto_40
    const/4 p0, 0x0

    return-object p0
.end method

.method private static convertEyes([IIILandroid/graphics/Rect;Z)[I
    .registers 14

    const/4 v0, 0x0

    if-eqz p0, :cond_49

    .line 1009
    array-length v1, p0

    const/4 v2, 0x6

    if-lt v1, v2, :cond_49

    if-nez p3, :cond_a

    goto :goto_49

    :cond_a
    const/4 v1, 0x2

    .line 1012
    aget v2, p0, v1

    if-eqz v2, :cond_49

    const/4 v2, 0x3

    aget v3, p0, v2

    if-eqz v3, :cond_49

    const/4 v3, 0x4

    aget v4, p0, v3

    if-eqz v4, :cond_49

    const/4 v4, 0x5

    aget v5, p0, v4

    if-nez v5, :cond_1f

    goto :goto_49

    .line 1015
    :cond_1f
    new-instance v0, Landroid/graphics/Rect;

    aget v5, p0, v1

    aget v6, p0, v2

    aget v7, p0, v3

    aget v8, p0, v4

    invoke-direct {v0, v5, v6, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    if-eqz p2, :cond_33

    if-eqz p4, :cond_31

    goto :goto_33

    :cond_31
    const/4 p2, 0x0

    goto :goto_34

    :cond_33
    :goto_33
    const/4 p2, 0x1

    .line 1018
    :goto_34
    invoke-static {v0, p2, p1, p3}, Lcom/transsion/camera/utils/CoordinatesUtil;->sensorToReferenceSpace(Landroid/graphics/Rect;ZILandroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object p1

    .line 1020
    iget p2, p1, Landroid/graphics/Rect;->left:I

    aput p2, p0, v1

    .line 1021
    iget p2, p1, Landroid/graphics/Rect;->top:I

    aput p2, p0, v2

    .line 1022
    iget p2, p1, Landroid/graphics/Rect;->right:I

    aput p2, p0, v3

    .line 1023
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    aput p1, p0, v4

    return-object p0

    :cond_49
    :goto_49
    return-object v0
.end method

.method private static convertFaces([Landroid/hardware/camera2/params/Face;IILandroid/graphics/Rect;Z)[Lcom/transsion/camera/utils/SettingInfo$CameraFace;
    .registers 15

    if-eqz p0, :cond_6b

    .line 983
    array-length v0, p0

    if-eqz v0, :cond_6b

    if-nez p3, :cond_8

    goto :goto_6b

    .line 986
    :cond_8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    if-eqz p2, :cond_15

    if-eqz p4, :cond_13

    goto :goto_15

    :cond_13
    move p2, v1

    goto :goto_16

    :cond_15
    :goto_15
    const/4 p2, 0x1

    .line 988
    :goto_16
    array-length p4, p0

    if-ge v1, p4, :cond_5e

    .line 989
    aget-object p4, p0, v1

    invoke-virtual {p4}, Landroid/hardware/camera2/params/Face;->getBounds()Landroid/graphics/Rect;

    move-result-object p4

    invoke-static {p4, p2, p1, p3}, Lcom/transsion/camera/utils/CoordinatesUtil;->sensorToReferenceSpace(Landroid/graphics/Rect;ZILandroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v3

    .line 992
    aget-object p4, p0, v1

    invoke-virtual {p4}, Landroid/hardware/camera2/params/Face;->getBounds()Landroid/graphics/Rect;

    move-result-object p4

    invoke-static {p3, p4}, Lcom/transsion/camera/adapter/CaptureResultMonitor;->isRectContain(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result p4

    if-eqz p4, :cond_5b

    .line 993
    new-instance v2, Lcom/transsion/camera/utils/SettingInfo$CameraFace;

    aget-object p4, p0, v1

    invoke-virtual {p4}, Landroid/hardware/camera2/params/Face;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    aget-object p4, p0, v1

    invoke-virtual {p4}, Landroid/hardware/camera2/params/Face;->getScore()I

    move-result v5

    aget-object p4, p0, v1

    invoke-virtual {p4}, Landroid/hardware/camera2/params/Face;->getId()I

    move-result v6

    aget-object p4, p0, v1

    .line 994
    invoke-virtual {p4}, Landroid/hardware/camera2/params/Face;->getLeftEyePosition()Landroid/graphics/Point;

    move-result-object v7

    aget-object p4, p0, v1

    invoke-virtual {p4}, Landroid/hardware/camera2/params/Face;->getRightEyePosition()Landroid/graphics/Point;

    move-result-object v8

    aget-object p4, p0, v1

    .line 995
    invoke-virtual {p4}, Landroid/hardware/camera2/params/Face;->getMouthPosition()Landroid/graphics/Point;

    move-result-object v9

    invoke-direct/range {v2 .. v9}, Lcom/transsion/camera/utils/SettingInfo$CameraFace;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;IILandroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;)V

    .line 993
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5b
    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    .line 998
    :cond_5e
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    new-array p0, p0, [Lcom/transsion/camera/utils/SettingInfo$CameraFace;

    .line 999
    invoke-interface {v0, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/transsion/camera/utils/SettingInfo$CameraFace;

    return-object p0

    :cond_6b
    :goto_6b
    const/4 p0, 0x0

    return-object p0
.end method

.method private static convertHuman([IIILandroid/graphics/Rect;Z)[I
    .registers 14

    const/4 v0, 0x0

    if-eqz p0, :cond_49

    .line 1035
    array-length v1, p0

    const/4 v2, 0x7

    if-lt v1, v2, :cond_49

    if-nez p3, :cond_a

    goto :goto_49

    :cond_a
    const/4 v1, 0x3

    .line 1038
    aget v2, p0, v1

    if-eqz v2, :cond_49

    const/4 v2, 0x4

    aget v3, p0, v2

    if-eqz v3, :cond_49

    const/4 v3, 0x5

    aget v4, p0, v3

    if-eqz v4, :cond_49

    const/4 v4, 0x6

    aget v5, p0, v4

    if-nez v5, :cond_1f

    goto :goto_49

    .line 1041
    :cond_1f
    new-instance v0, Landroid/graphics/Rect;

    aget v5, p0, v1

    aget v6, p0, v2

    aget v7, p0, v3

    aget v8, p0, v4

    invoke-direct {v0, v5, v6, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    if-eqz p2, :cond_33

    if-eqz p4, :cond_31

    goto :goto_33

    :cond_31
    const/4 p2, 0x0

    goto :goto_34

    :cond_33
    :goto_33
    const/4 p2, 0x1

    .line 1044
    :goto_34
    invoke-static {v0, p2, p1, p3}, Lcom/transsion/camera/utils/CoordinatesUtil;->sensorToReferenceSpace(Landroid/graphics/Rect;ZILandroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object p1

    .line 1046
    iget p2, p1, Landroid/graphics/Rect;->left:I

    aput p2, p0, v1

    .line 1047
    iget p2, p1, Landroid/graphics/Rect;->top:I

    aput p2, p0, v2

    .line 1048
    iget p2, p1, Landroid/graphics/Rect;->right:I

    aput p2, p0, v3

    .line 1049
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    aput p1, p0, v4

    return-object p0

    :cond_49
    :goto_49
    return-object v0
.end method

.method private convertZoomRatio(FLandroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .registers 8

    const/4 p0, 0x0

    cmpg-float p0, p1, p0

    if-lez p0, :cond_4d

    if-eqz p2, :cond_4d

    if-nez p3, :cond_a

    goto :goto_4d

    .line 879
    :cond_a
    iget p0, p2, Landroid/graphics/Rect;->left:I

    int-to-float p0, p0

    div-float/2addr p0, p1

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v0, v1

    const/high16 v2, 0x3f800000    # 1.0f

    div-float v3, v2, p1

    sub-float/2addr v2, v3

    mul-float/2addr v0, v2

    add-float/2addr p0, v0

    float-to-int p0, p0

    iput p0, p2, Landroid/graphics/Rect;->left:I

    .line 880
    iget p0, p2, Landroid/graphics/Rect;->top:I

    int-to-float p0, p0

    div-float/2addr p0, p1

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v1

    mul-float/2addr v0, v2

    add-float/2addr p0, v0

    float-to-int p0, p0

    iput p0, p2, Landroid/graphics/Rect;->top:I

    .line 881
    iget p0, p2, Landroid/graphics/Rect;->right:I

    int-to-float p0, p0

    div-float/2addr p0, p1

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v1

    mul-float/2addr v0, v2

    add-float/2addr p0, v0

    float-to-int p0, p0

    iput p0, p2, Landroid/graphics/Rect;->right:I

    .line 882
    iget p0, p2, Landroid/graphics/Rect;->bottom:I

    int-to-float p0, p0

    div-float/2addr p0, p1

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result p1

    int-to-float p1, p1

    mul-float/2addr p1, v1

    mul-float/2addr p1, v2

    add-float/2addr p0, p1

    float-to-int p0, p0

    iput p0, p2, Landroid/graphics/Rect;->bottom:I

    :cond_4d
    :goto_4d
    return-object p2
.end method

.method private findMaxFace([Lcom/transsion/camera/utils/SettingInfo$CameraFace;)I
    .registers 7

    const/4 p0, 0x0

    .line 840
    aget-object v0, p1, p0

    invoke-virtual {v0}, Lcom/transsion/camera/utils/SettingInfo$CameraFace;->getOriginalBounds()Landroid/graphics/Rect;

    move-result-object v0

    move-object v1, v0

    move v0, p0

    .line 842
    :goto_9
    array-length v2, p1

    if-ge p0, v2, :cond_37

    .line 843
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v3

    mul-int/2addr v2, v3

    aget-object v3, p1, p0

    invoke-virtual {v3}, Lcom/transsion/camera/utils/SettingInfo$CameraFace;->getOriginalBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    aget-object v4, p1, p0

    invoke-virtual {v4}, Lcom/transsion/camera/utils/SettingInfo$CameraFace;->getOriginalBounds()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    mul-int/2addr v3, v4

    if-ge v2, v3, :cond_34

    .line 844
    aget-object v0, p1, p0

    invoke-virtual {v0}, Lcom/transsion/camera/utils/SettingInfo$CameraFace;->getOriginalBounds()Landroid/graphics/Rect;

    move-result-object v0

    move-object v1, v0

    move v0, p0

    :cond_34
    add-int/lit8 p0, p0, 0x1

    goto :goto_9

    :cond_37
    return v0
.end method

.method private getPreviewRectangle(Landroid/hardware/camera2/CaptureResult;Landroid/util/Size;Z)Landroid/graphics/Rect;
    .registers 5

    .line 1107
    sget-object v0, Landroid/hardware/camera2/CaptureResult;->SCALER_CROP_REGION:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    if-eqz p3, :cond_22

    .line 1109
    iget-object p3, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mActiveArraySize:Landroid/graphics/Rect;

    if-eqz p3, :cond_22

    .line 1110
    iget-object p3, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mZoomRatioResultKey:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, p3}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    if-eqz p1, :cond_22

    .line 1112
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget-object p3, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mActiveArraySize:Landroid/graphics/Rect;

    invoke-direct {p0, p1, v0, p3}, Lcom/transsion/camera/adapter/CaptureResultMonitor;->convertZoomRatio(FLandroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    :cond_22
    if-eqz p2, :cond_43

    .line 1116
    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    move-result p0

    if-lez p0, :cond_43

    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result p0

    if-lez p0, :cond_43

    .line 1117
    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result p0

    int-to-float p0, p0

    const/high16 p1, 0x3f800000    # 1.0f

    mul-float/2addr p0, p1

    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p0, p1

    .line 1118
    invoke-static {v0, p0}, Lcom/transsion/camera/utils/CoordinatesUtil;->getPreviewRectFromSensorRect(Landroid/graphics/Rect;F)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0

    .line 1120
    :cond_43
    sget-object p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "checkFaceResult previewSize is null. "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-object v0
.end method

.method private static isRectContain(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .registers 5

    const/4 v0, 0x0

    if-eqz p0, :cond_20

    if-nez p1, :cond_6

    goto :goto_20

    .line 1133
    :cond_6
    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget v2, p0, Landroid/graphics/Rect;->left:I

    if-lt v1, v2, :cond_20

    iget v1, p1, Landroid/graphics/Rect;->top:I

    iget v2, p0, Landroid/graphics/Rect;->top:I

    if-lt v1, v2, :cond_20

    iget v1, p1, Landroid/graphics/Rect;->right:I

    iget v2, p0, Landroid/graphics/Rect;->right:I

    if-gt v1, v2, :cond_20

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    if-gt p1, p0, :cond_20

    const/4 p0, 0x1

    return p0

    :cond_20
    :goto_20
    return v0
.end method

.method private reset()V
    .registers 4

    const/4 v0, 0x0

    .line 288
    iput v0, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mLastAfState:I

    const-wide/16 v1, -0x1

    .line 290
    iput-wide v1, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mLastAfFrameNumber:J

    .line 291
    iput-wide v1, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mLastAeFrameNumber:J

    .line 292
    iput-boolean v0, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mIsAEPreCapturing:Z

    .line 293
    iput-boolean v0, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mIsAFActiveScanning:Z

    .line 294
    iput-boolean v0, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mIsAFTriggered:Z

    .line 295
    iput-boolean v0, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mNeedTriggerPreCapture:Z

    return-void
.end method

.method private static resetFaceRect([Landroid/hardware/camera2/params/Face;I[I)[Landroid/hardware/camera2/params/Face;
    .registers 10

    const/4 v0, 0x0

    if-eqz p0, :cond_24

    .line 853
    array-length v1, p0

    move v2, v0

    :goto_5
    if-ge v2, v1, :cond_24

    aget-object v3, p0, v2

    .line 854
    invoke-virtual {v3}, Landroid/hardware/camera2/params/Face;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    iput v0, v4, Landroid/graphics/Rect;->left:I

    .line 855
    invoke-virtual {v3}, Landroid/hardware/camera2/params/Face;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    iput v0, v4, Landroid/graphics/Rect;->top:I

    .line 856
    invoke-virtual {v3}, Landroid/hardware/camera2/params/Face;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    iput v0, v4, Landroid/graphics/Rect;->right:I

    .line 857
    invoke-virtual {v3}, Landroid/hardware/camera2/params/Face;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    iput v0, v3, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_24
    move v1, v0

    :goto_25
    if-ge v1, p1, :cond_71

    mul-int/lit8 v2, v1, 0x5

    .line 862
    aget v3, p2, v2

    move v4, v0

    :goto_2c
    if-ge v4, p1, :cond_6e

    if-eqz p0, :cond_6b

    .line 864
    array-length v5, p0

    if-ge v4, v5, :cond_6b

    aget-object v5, p0, v4

    invoke-virtual {v5}, Landroid/hardware/camera2/params/Face;->getId()I

    move-result v5

    if-ne v5, v3, :cond_6b

    .line 865
    aget-object v5, p0, v4

    invoke-virtual {v5}, Landroid/hardware/camera2/params/Face;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    add-int/lit8 v6, v2, 0x1

    aget v6, p2, v6

    iput v6, v5, Landroid/graphics/Rect;->left:I

    .line 866
    aget-object v5, p0, v4

    invoke-virtual {v5}, Landroid/hardware/camera2/params/Face;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    add-int/lit8 v6, v2, 0x2

    aget v6, p2, v6

    iput v6, v5, Landroid/graphics/Rect;->top:I

    .line 867
    aget-object v5, p0, v4

    invoke-virtual {v5}, Landroid/hardware/camera2/params/Face;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    add-int/lit8 v6, v2, 0x3

    aget v6, p2, v6

    iput v6, v5, Landroid/graphics/Rect;->right:I

    .line 868
    aget-object v5, p0, v4

    invoke-virtual {v5}, Landroid/hardware/camera2/params/Face;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    add-int/lit8 v6, v2, 0x4

    aget v6, p2, v6

    iput v6, v5, Landroid/graphics/Rect;->bottom:I

    :cond_6b
    add-int/lit8 v4, v4, 0x1

    goto :goto_2c

    :cond_6e
    add-int/lit8 v1, v1, 0x1

    goto :goto_25

    :cond_71
    return-object p0
.end method


# virtual methods
.method addGenderAttributeCallback(Lcom/transsion/camera/adapter/CameraProxy$GenderAttributeCallback;)V
    .registers 3

    .line 173
    iget-object v0, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mGenderAttributeCallbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    .line 174
    :cond_9
    iget-object p0, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mGenderAttributeCallbacks:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected aeStateFlashRequired()Z
    .registers 1

    .line 413
    iget-boolean p0, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mAeStateFlashRequired:Z

    return p0
.end method

.method cancelAF()V
    .registers 2

    const/4 v0, 0x0

    .line 137
    iput-boolean v0, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mIsAFTriggered:Z

    return-void
.end method

.method checkCaptureResult(Landroid/hardware/camera2/CaptureResult;Landroid/util/Size;Landroid/util/Size;Ljava/lang/String;ZZ)V
    .registers 8

    .line 308
    iget-boolean v0, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mIsPreviewStarted:Z

    if-nez v0, :cond_5

    return-void

    .line 311
    :cond_5
    invoke-direct {p0, p1}, Lcom/transsion/camera/adapter/CaptureResultMonitor;->checkAEResult(Landroid/hardware/camera2/CaptureResult;)V

    .line 312
    invoke-direct {p0, p1}, Lcom/transsion/camera/adapter/CaptureResultMonitor;->checkAFResult(Landroid/hardware/camera2/CaptureResult;)V

    .line 313
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/adapter/CaptureResultMonitor;->checkAigcFaceResult(Landroid/hardware/camera2/CaptureResult;Landroid/util/Size;)V

    .line 314
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/camera/adapter/CaptureResultMonitor;->checkBMBoxResult(Landroid/hardware/camera2/CaptureResult;Landroid/util/Size;Landroid/util/Size;)V

    .line 315
    invoke-direct {p0, p1, p2, p5, p6}, Lcom/transsion/camera/adapter/CaptureResultMonitor;->checkAiFocusResult(Landroid/hardware/camera2/CaptureResult;Landroid/util/Size;ZZ)V

    .line 316
    invoke-direct {p0, p1}, Lcom/transsion/camera/adapter/CaptureResultMonitor;->checkDualLensResult(Landroid/hardware/camera2/CaptureResult;)V

    .line 317
    invoke-direct {p0, p1}, Lcom/transsion/camera/adapter/CaptureResultMonitor;->checkBrightnessResult(Landroid/hardware/camera2/CaptureResult;)V

    .line 318
    invoke-direct {p0, p1}, Lcom/transsion/camera/adapter/CaptureResultMonitor;->checkStreamIdResult(Landroid/hardware/camera2/CaptureResult;)V

    .line 319
    invoke-direct {p0, p1}, Lcom/transsion/camera/adapter/CaptureResultMonitor;->checkAEExpoInfoResult(Landroid/hardware/camera2/CaptureResult;)V

    .line 320
    invoke-direct {p0, p1}, Lcom/transsion/camera/adapter/CaptureResultMonitor;->checkEVList(Landroid/hardware/camera2/CaptureResult;)V

    .line 321
    invoke-direct {p0, p1, p4}, Lcom/transsion/camera/adapter/CaptureResultMonitor;->checkNeedTriggerPreCaptureResult(Landroid/hardware/camera2/CaptureResult;Ljava/lang/String;)V

    .line 322
    iget-object p3, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mFrameResultCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    if-lez p3, :cond_45

    .line 323
    iget-object p3, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mFrameResultCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p4

    const/4 p5, 0x0

    :goto_35
    if-ge p5, p4, :cond_45

    invoke-virtual {p3, p5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p6

    add-int/lit8 p5, p5, 0x1

    check-cast p6, Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;

    .line 324
    iget-object v0, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mPlatformCamera2:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p6, p1, p2, v0}, Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;->onFrameResult(Landroid/hardware/camera2/CaptureResult;Landroid/util/Size;Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;)V

    goto :goto_35

    .line 327
    :cond_45
    invoke-direct {p0, p1}, Lcom/transsion/camera/adapter/CaptureResultMonitor;->checkVideoHDRInfoResult(Landroid/hardware/camera2/CaptureResult;)V

    .line 328
    invoke-direct {p0, p1}, Lcom/transsion/camera/adapter/CaptureResultMonitor;->checkAIRawLiteMotionDetection(Landroid/hardware/camera2/CaptureResult;)V

    return-void
.end method

.method clearFrameResultCallback()V
    .registers 3

    .line 263
    sget-object v0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "clearFrameResultCallback"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 264
    iget-object p0, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mFrameResultCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method clearGenderAttributeCallback()V
    .registers 1

    .line 182
    iget-object p0, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mGenderAttributeCallbacks:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void
.end method

.method clearStreamIdCallback()V
    .registers 3

    .line 204
    sget-object v0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "clearStreamIdCallback"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 205
    iget-object p0, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mStreamIdCallback:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public getAIRawLiteMotionDetection()I
    .registers 3

    .line 975
    iget-object p0, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mAIRawLiteMotionDetection:[I

    const/4 v0, 0x0

    if-eqz p0, :cond_b

    array-length v1, p0

    if-lez v1, :cond_b

    .line 976
    aget p0, p0, v0

    return p0

    :cond_b
    return v0
.end method

.method public getAeeExpoInfoResult()[I
    .registers 1

    .line 943
    iget-object p0, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mAiRawLitAeeExpoInfoResult:[I

    return-object p0
.end method

.method public getBrightnessResult()[I
    .registers 1

    .line 918
    iget-object p0, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->brightness:[I

    return-object p0
.end method

.method public getEVList()[I
    .registers 1

    .line 967
    iget-object p0, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mEVList:[I

    return-object p0
.end method

.method public getHDRAeExpoInfoResult()[I
    .registers 1

    .line 947
    iget-object p0, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mHDRAeExpoInfoResult:[I

    return-object p0
.end method

.method getLastAeResult()I
    .registers 1

    .line 299
    iget p0, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mLastAeResult:I

    return p0
.end method

.method public getLastAfState()I
    .registers 1

    .line 303
    iget p0, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mLastAfState:I

    return p0
.end method

.method public getLlsInfoResult()[I
    .registers 1

    .line 959
    iget-object p0, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mLlsInfoResult:[I

    return-object p0
.end method

.method public getMFNRAeExpoInfoResult()[I
    .registers 1

    .line 951
    iget-object p0, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mMFNRAeExpoInfoResult:[I

    return-object p0
.end method

.method public getNightAeExpoInfoResult()[I
    .registers 1

    .line 955
    iget-object p0, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mNightAeExpoInfoResult:[I

    return-object p0
.end method

.method public getStreamId()[I
    .registers 1

    .line 931
    iget-object p0, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mStreamId:[I

    return-object p0
.end method

.method protected isAFTriggered()Z
    .registers 1

    .line 405
    iget-boolean p0, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mIsAFTriggered:Z

    return p0
.end method

.method public isPreviewStarted()Z
    .registers 1

    .line 284
    iget-boolean p0, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mIsPreviewStarted:Z

    return p0
.end method

.method protected needTriggerPreCapture()Z
    .registers 1

    .line 409
    iget-boolean p0, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mNeedTriggerPreCapture:Z

    return p0
.end method

.method onPreviewStarted()V
    .registers 2

    .line 272
    iget-boolean v0, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mIsPreviewStarted:Z

    if-nez v0, :cond_a

    const/4 v0, 0x1

    .line 273
    iput-boolean v0, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mIsPreviewStarted:Z

    .line 274
    invoke-direct {p0}, Lcom/transsion/camera/adapter/CaptureResultMonitor;->reset()V

    :cond_a
    return-void
.end method

.method onPreviewStopped()V
    .registers 2

    const/4 v0, 0x0

    .line 279
    iput-boolean v0, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mIsPreviewStarted:Z

    .line 280
    invoke-direct {p0}, Lcom/transsion/camera/adapter/CaptureResultMonitor;->reset()V

    return-void
.end method

.method public registerDualLensCallback(Lcom/transsion/camera/adapter/CameraProxy$CameraDualLensCallback;I)V
    .registers 3

    if-nez p1, :cond_a

    .line 222
    sget-object p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "registerDualLensCallback error [why null]"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 225
    :cond_a
    iget-object p0, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mCameraDualLensCallbacks:Lcom/transsion/camera/utils/PriorityConcurrentSkipListMap;

    invoke-static {p2, p1}, Lcom/transsion/camera/utils/PriorityConcurrentSkipListMap;->getPriorityKey(ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2, p1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method registerFrameResultCallback(Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;)V
    .registers 4

    if-nez p1, :cond_9

    .line 248
    sget-object v0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "registerFrameResultCallback error [why null]"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 250
    :cond_9
    iget-object v0, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mFrameResultCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    .line 251
    iget-object p0, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mFrameResultCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_16
    return-void
.end method

.method registerStreamIdCallback(Lcom/transsion/camera/adapter/CameraProxy$StreamIdCallback;)V
    .registers 4

    if-nez p1, :cond_9

    .line 187
    sget-object v0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "registerStreamIdCallback error [why null]"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 189
    :cond_9
    iget-object v0, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mStreamIdCallback:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    .line 190
    iget-object p0, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mStreamIdCallback:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_16
    return-void
.end method

.method removeGenderAttributeCallback(Lcom/transsion/camera/adapter/CameraProxy$GenderAttributeCallback;)V
    .registers 2

    .line 178
    iget-object p0, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mGenderAttributeCallbacks:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method setAnimalEyeDetectionCallback(Lcom/transsion/camera/adapter/CameraProxy$AnimalEyeDetectionCallback;)V
    .registers 2

    .line 217
    iput-object p1, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mAnimalEyeDetectionCallback:Lcom/transsion/camera/adapter/CameraProxy$AnimalEyeDetectionCallback;

    return-void
.end method

.method setAutoFocusMoveResultCallback(Lcom/transsion/camera/adapter/CameraProxy$CameraAutoFocusMoveCallback;)V
    .registers 2

    .line 157
    iput-object p1, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mAutoFocusMoveResultCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraAutoFocusMoveCallback;

    return-void
.end method

.method public setBrightnessCallback(Lcom/transsion/camera/adapter/CameraProxy$CameraBVCallback;)V
    .registers 2

    return-void
.end method

.method setEyeDetectionCallback(Lcom/transsion/camera/adapter/CameraProxy$EyeDetectionCallback;)V
    .registers 2

    .line 209
    iput-object p1, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mEyeDetectionCallback:Lcom/transsion/camera/adapter/CameraProxy$EyeDetectionCallback;

    return-void
.end method

.method setFaceDetectionCallback(Lcom/transsion/camera/adapter/CameraProxy$FaceDetectionCallback;)V
    .registers 2

    .line 161
    iput-object p1, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mFaceDetectionCallback:Lcom/transsion/camera/adapter/CameraProxy$FaceDetectionCallback;

    return-void
.end method

.method setFaceDetectionListener(Lcom/transsion/camera/adapter/CameraProxy$IFaceDetectionListener;)V
    .registers 2

    .line 165
    iput-object p1, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mFaceDetectionListener:Lcom/transsion/camera/adapter/CameraProxy$IFaceDetectionListener;

    return-void
.end method

.method setFlashStateCallback(Lcom/transsion/camera/adapter/CameraProxy$IFlashStateCallback;)V
    .registers 2

    .line 268
    iput-object p1, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mFlashStateCallback:Lcom/transsion/camera/adapter/CameraProxy$IFlashStateCallback;

    return-void
.end method

.method setHumanDetCallback(Lcom/transsion/camera/adapter/CameraProxy$HumanDetectionCallback;)V
    .registers 2

    .line 213
    iput-object p1, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mHumanDetectionCallback:Lcom/transsion/camera/adapter/CameraProxy$HumanDetectionCallback;

    return-void
.end method

.method setVideoHDRInfoCallback(Lcom/transsion/camera/adapter/CameraProxy$VideoHDRInfoCallback;)V
    .registers 2

    .line 169
    iput-object p1, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mVideoHDRInfoCallback:Lcom/transsion/camera/adapter/CameraProxy$VideoHDRInfoCallback;

    return-void
.end method

.method startAF()V
    .registers 2

    const/4 v0, 0x1

    .line 133
    iput-boolean v0, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mIsAFTriggered:Z

    return-void
.end method

.method triggerAEPreCapturing(Lcom/transsion/camera/adapter/CaptureResultMonitor$AEPreCaptureResultCallback;)V
    .registers 3

    const/4 v0, 0x1

    .line 128
    iput-boolean v0, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mIsAEPreCapturing:Z

    .line 129
    iput-object p1, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mAEPreCaptureResultCallback:Lcom/transsion/camera/adapter/CaptureResultMonitor$AEPreCaptureResultCallback;

    return-void
.end method

.method triggerAFActiveScanning(Lcom/transsion/camera/adapter/CameraProxy$CameraAutoFocusCallback;)V
    .registers 3

    const/4 v0, 0x1

    .line 141
    iput-boolean v0, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mIsAFTriggered:Z

    .line 142
    iput-boolean v0, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mIsAFActiveScanning:Z

    .line 143
    iput-object p1, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mAutoFocusResultCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraAutoFocusCallback;

    return-void
.end method

.method triggerAFStableScanning(Lcom/transsion/camera/adapter/CameraProxy$CameraAutoFocusCallback;)V
    .registers 3

    const/4 v0, 0x1

    .line 152
    iput-boolean v0, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mIsAFStableScanning:Z

    .line 153
    iput-object p1, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mPreAFResultCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraAutoFocusCallback;

    return-void
.end method

.method triggerPreAFActiveScanning(Lcom/transsion/camera/adapter/CameraProxy$CameraAutoFocusCallback;)V
    .registers 3

    const/4 v0, 0x1

    .line 147
    iput-boolean v0, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mIsPreAFActiveScanning:Z

    .line 148
    iput-object p1, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mPreAFResultCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraAutoFocusCallback;

    return-void
.end method

.method public unRegisterDualLensCallback(Lcom/transsion/camera/adapter/CameraProxy$CameraDualLensCallback;)V
    .registers 3

    if-nez p1, :cond_b

    .line 238
    sget-object p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string/jumbo p1, "unRegisterOnShutterListener error [why null]"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 241
    :cond_b
    iget-object v0, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mCameraDualLensCallbacks:Lcom/transsion/camera/utils/PriorityConcurrentSkipListMap;

    invoke-virtual {v0, p1}, Ljava/util/AbstractMap;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 242
    iget-object p0, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mCameraDualLensCallbacks:Lcom/transsion/camera/utils/PriorityConcurrentSkipListMap;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/utils/PriorityConcurrentSkipListMap;->findKey(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/AbstractMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1c
    return-void
.end method

.method unRegisterFrameResultCallback(Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;)V
    .registers 4

    if-nez p1, :cond_a

    .line 257
    sget-object v0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string/jumbo v1, "unRegisterFrameResultCallback error [why null]"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 259
    :cond_a
    iget-object p0, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mFrameResultCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method unRegisterStreamIdCallback(Lcom/transsion/camera/adapter/CameraProxy$StreamIdCallback;)V
    .registers 4

    if-nez p1, :cond_a

    .line 196
    sget-object v0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string/jumbo v1, "unRegisterStreamIdCallback error [why null]"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 198
    :cond_a
    iget-object v0, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mStreamIdCallback:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 199
    iget-object p0, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mStreamIdCallback:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_17
    return-void
.end method
