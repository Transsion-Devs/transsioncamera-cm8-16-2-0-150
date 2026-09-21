.class public Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;
.super Lcom/transsion/camera/app/common/mode/CommonPhotoMode;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/mode/IModeNotifyCameraOperateActionCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$NoAlgoCaptureFlow;,
        Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$CaptureFlow;,
        Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$NightCaptureFlow;,
        Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$StableNightCaptureFlow;,
        Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$StableMode;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/transsion/camera/app/common/mode/CommonPhotoMode;",
        "Lcom/transsion/camera/app/common/mode/IModeNotifyCameraOperateActionCallback;"
    }
.end annotation


# static fields
.field public static final CAPTURE_FLOW_NIGHT:I = 0x1

.field public static final CAPTURE_FLOW_NO_ALGO:I = 0x0

.field public static final CAPTURE_FLOW_STABLE_NIGHT:I = 0x2

.field private static final LIMIT_BV:I = 0x14

.field private static final LIMIT_ISO:I = 0x190

.field private static final LIMIT_ISO_FOR_STABLE_ALGO:I = 0xc80

.field private static final LIMIT_STEP_ANIMA_MIN_TIME:I = 0x1f4


# instance fields
.field private mActionSound:Lcom/transsion/camera/utils/sound/IActionSound;

.field private final mActionSoundLock:Ljava/lang/Object;

.field private final mAiRawSprdSupport:Z

.field private mAlgoThreshold:I

.field private final mCameraUI3:Z

.field private mCaptureFlow:Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$CaptureFlow;

.field private mCurrentFocusState:Ljava/lang/String;

.field private mCurrentResult:Landroid/hardware/camera2/CaptureResult;

.field private mCurrentShutterValue:I

.field private mFlashTorchSupport:Z

.field private final mFrameResultCallback:Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;

.field private final mInStableModeInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

.field private mIsDefaultThumbSourceScreenShot:Z

.field private mIsStableModeSupport:Z

.field private mIsZooming:Z

.field private mLastStableState:Z

.field private mModeUI:Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;

.field private mNeedSuperNightAlgo:Z

.field private final mNightCaptureFlow:Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$CaptureFlow;

.field private final mNoAlgoCaptureFlow:Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$CaptureFlow;

.field private mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

.field private mPortraitModeEnhanceSupport:Z

.field private mPostAlgoOn:Z

.field private mPreviewSize:Landroid/util/Size;

.field private mShot2seeCountdownTime:I

.field private mShutterClickSampleId:I

.field private mShutterSoundAssetFileName:Ljava/lang/String;

.field private mShutterdownClicked:Z

.field private mSoundLoaded:Z

.field private mStableMode:Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$StableMode;

.field private final mStableModeEnteredInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

.field private mStableModeEnteredInfoShowed:Z

.field private final mStableModeOpenedInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

.field private final mStableNightCaptureFlow:Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$CaptureFlow;

.field private final mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

.field private final mSuperAiRawSupport:Z

.field private final mSuperNightCountDownConfigSupport:Z

.field private mSuperNightSupportCountDown:Z

.field private final mTurboFusionSupport:Z

.field private mUseFaceBeauty:Z


# direct methods
.method public static synthetic $r8$lambda$2SN6XMarAZQYEae-DnWHd_JSWpQ(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;Lcom/transsion/camera/utils/sound/IActionSound;I)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->lambda$loadActionSound$2(Lcom/transsion/camera/utils/sound/IActionSound;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$K5t2AfY1N98AiZU4v-0OgH24ERo(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;Landroid/hardware/camera2/CaptureResult;Landroid/util/Size;Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;)V
    .registers 4

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->doOnFrameResultCallback(Landroid/hardware/camera2/CaptureResult;Landroid/util/Size;Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;)V

    return-void
.end method

.method public static synthetic $r8$lambda$aIz9mi6cQM0dFlr9YFtU1uF05qk(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;Lcom/transsion/camera/utils/sound/IActionSound;I)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->lambda$loadActionSound$1(Lcom/transsion/camera/utils/sound/IActionSound;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$rDAkAg8-dkjDBJfm-8nxEvp76H4(Landroid/util/Size;Landroid/util/Size;)Z
    .registers 4

    .line 316
    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/util/Size;->getWidth()I

    move-result v1

    if-gt v0, v1, :cond_16

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result p1

    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    move-result p0

    if-gt p1, p0, :cond_16

    const/4 p0, 0x1

    return p0

    :cond_16
    const/4 p0, 0x0

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmActionSound(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;)Lcom/transsion/camera/utils/sound/IActionSound;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mActionSound:Lcom/transsion/camera/utils/sound/IActionSound;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCameraUI3(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mCameraUI3:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmCaptureFlow(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;)Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$CaptureFlow;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mCaptureFlow:Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$CaptureFlow;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCurrentShutterValue(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mCurrentShutterValue:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmInStableModeInfo(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;)Lcom/transsion/camera/app/common/ui/HintInfo;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mInStableModeInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsZooming(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mIsZooming:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmModeUI(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;)Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mModeUI:Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmNeedSuperNightAlgo(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mNeedSuperNightAlgo:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmPreviewSize(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;)Landroid/util/Size;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mPreviewSize:Landroid/util/Size;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmShot2seeCountdownTime(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mShot2seeCountdownTime:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmShutterClickSampleId(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mShutterClickSampleId:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmShutterSoundAssetFileName(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;)Ljava/lang/String;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mShutterSoundAssetFileName:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmShutterdownClicked(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mShutterdownClicked:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmSoundLoaded(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mSoundLoaded:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmStableModeEnteredInfo(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;)Lcom/transsion/camera/app/common/ui/HintInfo;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mStableModeEnteredInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmStableModeOpenedInfo(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;)Lcom/transsion/camera/app/common/ui/HintInfo;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mStableModeOpenedInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSuperNightSupportCountDown(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mSuperNightSupportCountDown:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmCurrentShutterValue(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;I)V
    .registers 2

    .line 0
    iput p1, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mCurrentShutterValue:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmPostAlgoOn(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mPostAlgoOn:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmShutterSoundAssetFileName(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;Ljava/lang/String;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mShutterSoundAssetFileName:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmStableModeEnteredInfoShowed(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mStableModeEnteredInfoShowed:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetString(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;I)Ljava/lang/String;
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mloadActionSound(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;Ljava/lang/String;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->loadActionSound(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mreleaseActionSound(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->releaseActionSound()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mstartCapturingAnim(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;IZ)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->startCapturingAnim(IZ)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mstopCapturingAnim(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->stopCapturingAnim()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 6

    .line 132
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 82
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mModeUI:Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;

    .line 83
    const-string v0, "INACTIVE"

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mCurrentFocusState:Ljava/lang/String;

    .line 88
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mSuperNightCountdown:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1e

    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mSuperAiRawEnable:Z

    if-eqz v0, :cond_1e

    move v0, v1

    goto :goto_1f

    :cond_1e
    move v0, v2

    :goto_1f
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mSuperAiRawSupport:Z

    .line 89
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mSuperNightCountdown:Z

    if-eqz v0, :cond_33

    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mTurboFusionEnable:Z

    if-eqz v0, :cond_33

    move v0, v1

    goto :goto_34

    :cond_33
    move v0, v2

    :goto_34
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mTurboFusionSupport:Z

    .line 90
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mAiRawSprdSupport:Z

    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mAiRawSprdSupport:Z

    .line 91
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result v0

    if-nez v0, :cond_4e

    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportUI5:Z

    if-nez v0, :cond_4e

    move v0, v1

    goto :goto_4f

    :cond_4e
    move v0, v2

    :goto_4f
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mCameraUI3:Z

    .line 92
    iput-boolean v2, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mSoundLoaded:Z

    .line 94
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mActionSoundLock:Ljava/lang/Object;

    .line 97
    iput-boolean v2, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mUseFaceBeauty:Z

    .line 98
    iput-boolean v2, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mFlashTorchSupport:Z

    .line 102
    iput v2, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mAlgoThreshold:I

    .line 103
    const-string v0, "sound_effect_default"

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mShutterSoundAssetFileName:Ljava/lang/String;

    .line 108
    new-instance v0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$NoAlgoCaptureFlow;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$NoAlgoCaptureFlow;-><init>(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mNoAlgoCaptureFlow:Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$CaptureFlow;

    .line 109
    new-instance v3, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$NightCaptureFlow;

    invoke-direct {v3, p0}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$NightCaptureFlow;-><init>(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;)V

    iput-object v3, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mNightCaptureFlow:Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$CaptureFlow;

    .line 110
    new-instance v3, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$StableNightCaptureFlow;

    invoke-direct {v3, p0}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$StableNightCaptureFlow;-><init>(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;)V

    iput-object v3, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mStableNightCaptureFlow:Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$CaptureFlow;

    .line 111
    iput-object v0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mCaptureFlow:Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$CaptureFlow;

    .line 113
    iput-boolean v2, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mIsStableModeSupport:Z

    .line 114
    new-instance v0, Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-direct {v0, v2}, Lcom/transsion/camera/app/common/ui/HintInfo;-><init>(I)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mStableModeOpenedInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    .line 115
    new-instance v0, Lcom/transsion/camera/app/common/ui/HintInfo;

    const/16 v3, 0x67

    invoke-direct {v0, v1, v3}, Lcom/transsion/camera/app/common/ui/HintInfo;-><init>(II)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mStableModeEnteredInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    .line 116
    new-instance v0, Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-direct {v0, v2}, Lcom/transsion/camera/app/common/ui/HintInfo;-><init>(I)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mInStableModeInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    .line 118
    iput-boolean v2, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mPortraitModeEnhanceSupport:Z

    .line 119
    iput-boolean v2, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mIsDefaultThumbSourceScreenShot:Z

    .line 123
    iput-boolean v2, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mPostAlgoOn:Z

    .line 124
    iput-boolean v2, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mSuperNightSupportCountDown:Z

    .line 126
    iput-boolean v2, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mShutterdownClicked:Z

    .line 267
    new-instance v0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$1;-><init>(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    .line 741
    new-instance v0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$$ExternalSyntheticLambda3;-><init>(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mFrameResultCallback:Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;

    .line 133
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mImageProcessor:Lcom/transsion/camera/app/common/mode/IImageProcessor;

    if-eqz v0, :cond_b2

    .line 134
    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mImageProcessor:Lcom/transsion/camera/app/common/mode/IImageProcessor;

    .line 136
    :cond_b2
    sget p1, Lcom/transsion/camera/feature/supernight/R$bool;->super_night_support_countdown_time:I

    invoke-static {p1}, Lcom/transsion/camera/utils/CameraUtil;->getBoolean(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mSuperNightCountDownConfigSupport:Z

    .line 138
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mSuperNightSupportCountDown:Z

    .line 139
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->createImageProcessor()Lcom/transsion/camera/feature/mode/supernight/SuperNightImageProcessor;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mImageProcessor:Lcom/transsion/camera/app/common/mode/IImageProcessor;

    return-void
.end method

.method static synthetic access$000(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;)Lcom/transsion/camera/utils/debug/Log$Tag;
    .registers 1

    .line 81
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object p0
.end method

.method static synthetic access$100(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;)Lcom/transsion/camera/utils/debug/Log$Tag;
    .registers 1

    .line 81
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;)Lcom/transsion/camera/app/common/IAppUI;
    .registers 1

    .line 81
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;)Lcom/transsion/camera/app/common/IAppUI;
    .registers 1

    .line 81
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;)Lcom/transsion/camera/app/common/IAppUI;
    .registers 1

    .line 81
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;)I
    .registers 1

    .line 81
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->getShutterTypeSelftimerOn()I

    move-result p0

    return p0
.end method

.method static synthetic access$1400(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;)Lcom/transsion/camera/app/common/IAppUI;
    .registers 1

    .line 81
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;)Lcom/transsion/camera/app/common/IAppUI;
    .registers 1

    .line 81
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;
    .registers 1

    .line 81
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;)I
    .registers 1

    .line 81
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->getShutterTypeSelftimerOn()I

    move-result p0

    return p0
.end method

.method static synthetic access$1800(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;)Lcom/transsion/camera/app/common/IAppUI;
    .registers 1

    .line 81
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;)Lcom/transsion/camera/app/common/IAppUI;
    .registers 1

    .line 81
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    return-object p0
.end method

.method static synthetic access$200(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;)Landroid/content/Context;
    .registers 1

    .line 81
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;)Lcom/transsion/camera/utils/debug/Log$Tag;
    .registers 1

    .line 81
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object p0
.end method

.method static synthetic access$2100(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;)Lcom/transsion/camera/utils/debug/Log$Tag;
    .registers 1

    .line 81
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object p0
.end method

.method static synthetic access$2200(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;
    .registers 1

    .line 81
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    return-object p0
.end method

.method static synthetic access$2300(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;)Lcom/transsion/camera/utils/debug/Log$Tag;
    .registers 1

    .line 81
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object p0
.end method

.method static synthetic access$2400(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;)V
    .registers 1

    .line 81
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->hookDisturbStatus()V

    return-void
.end method

.method static synthetic access$2500(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;)Lcom/transsion/camera/app/common/IAppUI;
    .registers 1

    .line 81
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    return-object p0
.end method

.method static synthetic access$2600(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;)Lcom/transsion/camera/app/common/IAppUI;
    .registers 1

    .line 81
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    return-object p0
.end method

.method static synthetic access$2700(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;)Lcom/transsion/camera/app/common/IAppUI;
    .registers 1

    .line 81
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    return-object p0
.end method

.method static synthetic access$2800(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;)Lcom/transsion/camera/utils/debug/Log$Tag;
    .registers 1

    .line 81
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object p0
.end method

.method static synthetic access$2900(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;
    .registers 1

    .line 81
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    return-object p0
.end method

.method static synthetic access$300(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;)Lcom/transsion/camera/app/common/IAppUI;
    .registers 1

    .line 81
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    return-object p0
.end method

.method static synthetic access$3000(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;)I
    .registers 1

    .line 81
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->getShutterTypeSelftimerOn()I

    move-result p0

    return p0
.end method

.method static synthetic access$3100(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;)Lcom/transsion/camera/app/common/IAppUI;
    .registers 1

    .line 81
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    return-object p0
.end method

.method static synthetic access$3200(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;)Lcom/transsion/camera/utils/debug/Log$Tag;
    .registers 1

    .line 81
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object p0
.end method

.method static synthetic access$3300(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;
    .registers 1

    .line 81
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    return-object p0
.end method

.method static synthetic access$3400(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;
    .registers 1

    .line 81
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    return-object p0
.end method

.method static synthetic access$3500(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;)Lcom/transsion/camera/app/common/mode/CameraDeviceControl;
    .registers 1

    .line 81
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    return-object p0
.end method

.method static synthetic access$3600(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;
    .registers 1

    .line 81
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    return-object p0
.end method

.method static synthetic access$3700(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;)Lcom/transsion/camera/app/common/mode/CameraDeviceControl;
    .registers 1

    .line 81
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    return-object p0
.end method

.method static synthetic access$3800(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;)Ljava/lang/String;
    .registers 1

    .line 81
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCurrentCameraId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$3900(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;)Lcom/transsion/camera/utils/debug/Log$Tag;
    .registers 1

    .line 81
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object p0
.end method

.method static synthetic access$400(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;)Lcom/transsion/camera/app/common/IAppUI;
    .registers 1

    .line 81
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    return-object p0
.end method

.method static synthetic access$4000(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;
    .registers 1

    .line 81
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    return-object p0
.end method

.method static synthetic access$4100(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;)Lcom/transsion/camera/app/common/mode/CameraDeviceControl;
    .registers 1

    .line 81
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    return-object p0
.end method

.method static synthetic access$4200(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;
    .registers 1

    .line 81
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    return-object p0
.end method

.method static synthetic access$4300(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;)Lcom/transsion/camera/app/common/mode/CameraDeviceControl;
    .registers 1

    .line 81
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    return-object p0
.end method

.method static synthetic access$4400(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;)Ljava/lang/String;
    .registers 1

    .line 81
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCurrentCameraId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$4500(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;)Lcom/transsion/camera/app/common/IAppUI;
    .registers 1

    .line 81
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    return-object p0
.end method

.method static synthetic access$500(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;)Lcom/transsion/camera/utils/debug/Log$Tag;
    .registers 1

    .line 81
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object p0
.end method

.method static synthetic access$600(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;)Lcom/transsion/camera/app/common/IAppUI;
    .registers 1

    .line 81
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    return-object p0
.end method

.method static synthetic access$700(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;)Lcom/transsion/camera/app/common/IAppUI;
    .registers 1

    .line 81
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    return-object p0
.end method

.method static synthetic access$800(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;)Lcom/transsion/camera/app/common/IAppUI;
    .registers 1

    .line 81
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    return-object p0
.end method

.method static synthetic access$900(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;)Lcom/transsion/camera/app/common/IAppUI;
    .registers 1

    .line 81
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    return-object p0
.end method

.method private declared-synchronized changeCaptureFlow(I)V
    .registers 5

    monitor-enter p0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_f

    const/4 v0, 0x2

    if-eq p1, v0, :cond_c

    .line 871
    :try_start_7
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mNoAlgoCaptureFlow:Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$CaptureFlow;

    goto :goto_11

    :catchall_a
    move-exception p1

    goto :goto_53

    .line 867
    :cond_c
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mStableNightCaptureFlow:Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$CaptureFlow;

    goto :goto_11

    .line 864
    :cond_f
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mNightCaptureFlow:Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$CaptureFlow;

    .line 874
    :goto_11
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->supportPostAlgo()Z

    move-result v0

    iput-boolean v0, p1, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$CaptureFlow;->mIsPostAlgoOn:Z

    .line 875
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mSuperAiRawSupport:Z

    iput-boolean v0, p1, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$CaptureFlow;->mIsSuperAiRawOn:Z

    .line 876
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mTurboFusionSupport:Z

    iput-boolean v0, p1, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$CaptureFlow;->mIsTurboFusionOn:Z

    .line 877
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mAiRawSprdSupport:Z

    iput-boolean v0, p1, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$CaptureFlow;->mIsAiRawSprdOn:Z

    .line 879
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mCaptureFlow:Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$CaptureFlow;

    if-eq v0, p1, :cond_51

    .line 880
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "changeCaptureFlow: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mCaptureFlow:Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$CaptureFlow;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " --> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 881
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mCaptureFlow:Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$CaptureFlow;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$CaptureFlow;->onExit()V

    .line 882
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mCaptureFlow:Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$CaptureFlow;

    .line 883
    invoke-virtual {p1}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$CaptureFlow;->onEnter()V
    :try_end_51
    .catchall {:try_start_7 .. :try_end_51} :catchall_a

    .line 885
    :cond_51
    monitor-exit p0

    return-void

    :goto_53
    :try_start_53
    monitor-exit p0
    :try_end_54
    .catchall {:try_start_53 .. :try_end_54} :catchall_a

    throw p1
.end method

.method private doOnFrameResultCallback(Landroid/hardware/camera2/CaptureResult;Landroid/util/Size;Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;)V
    .registers 8

    .line 744
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mCurrentResult:Landroid/hardware/camera2/CaptureResult;

    .line 745
    iput-object p3, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    const/4 p2, 0x0

    .line 746
    iput p2, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mCurrentShutterValue:I

    .line 748
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mPostAlgoOn:Z

    if-nez v0, :cond_6a

    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mAiRawSprdSupport:Z

    if-eqz v0, :cond_10

    goto :goto_6a

    .line 755
    :cond_10
    invoke-direct {p0, p1, p3}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->isStableNight(Landroid/hardware/camera2/CaptureResult;Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;)Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 756
    invoke-interface {p3, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->checkTripodSuperNightCountdown(Landroid/hardware/camera2/CaptureResult;)[I

    move-result-object v0

    if-eqz v0, :cond_23

    .line 757
    array-length v1, v0

    if-lez v1, :cond_23

    .line 758
    aget v1, v0, p2

    iput v1, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mCurrentShutterValue:I

    .line 760
    :cond_23
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doOnFrameResultCallback tripodSuperNightCountdown: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_84

    .line 761
    :cond_3e
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mSuperNightSupportCountDown:Z

    if-eqz v0, :cond_84

    .line 762
    invoke-interface {p3, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->checkSuperNightLiteResult(Landroid/hardware/camera2/CaptureResult;)[I

    move-result-object v0

    if-eqz v0, :cond_4f

    .line 763
    array-length v1, v0

    if-lez v1, :cond_4f

    .line 764
    aget v1, v0, p2

    iput v1, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mCurrentShutterValue:I

    .line 766
    :cond_4f
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doOnFrameResultCallback superNightCountdown: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_84

    .line 749
    :cond_6a
    :goto_6a
    invoke-interface {p3, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->checkAeeExpoInfoResult(Landroid/hardware/camera2/CaptureResult;)[I

    move-result-object v0

    if-eqz v0, :cond_84

    .line 750
    array-length v1, v0

    if-lez v1, :cond_84

    move v1, p2

    .line 751
    :goto_74
    aget v2, v0, p2

    if-ge v1, v2, :cond_84

    .line 752
    iget v2, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mCurrentShutterValue:I

    add-int/lit8 v1, v1, 0x1

    aget v3, v0, v1

    div-int/lit16 v3, v3, 0x3e8

    add-int/2addr v2, v3

    iput v2, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mCurrentShutterValue:I

    goto :goto_74

    .line 770
    :cond_84
    :goto_84
    invoke-interface {p3, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->checkSuperNightLiteResult(Landroid/hardware/camera2/CaptureResult;)[I

    move-result-object v0

    if-nez v0, :cond_97

    .line 771
    invoke-interface {p3}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->isSupportedAiRawLite()Z

    move-result v0

    if-nez v0, :cond_97

    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mAiRawSprdSupport:Z

    if-nez v0, :cond_97

    .line 773
    iput-boolean p2, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mSuperNightSupportCountDown:Z

    goto :goto_9b

    .line 775
    :cond_97
    iget-boolean p2, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mSuperNightCountDownConfigSupport:Z

    iput-boolean p2, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mSuperNightSupportCountDown:Z

    .line 778
    :goto_9b
    invoke-direct {p0, p1, p3}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->isNeedSuperNightAlgo(Landroid/hardware/camera2/CaptureResult;Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;)Z

    move-result p1

    if-eqz p1, :cond_a7

    .line 780
    const-string p2, "on"

    invoke-direct {p0, p2}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->setSuperNightLiteValue(Ljava/lang/String;)V

    goto :goto_ac

    .line 782
    :cond_a7
    const-string p2, "off"

    invoke-direct {p0, p2}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->setSuperNightLiteValue(Ljava/lang/String;)V

    .line 784
    :goto_ac
    iget-boolean p2, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mNeedSuperNightAlgo:Z

    if-eq p1, p2, :cond_e1

    iget-boolean p2, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mResumed:Z

    if-eqz p2, :cond_e1

    .line 785
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mNeedSuperNightAlgo:Z

    .line 786
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "update SuperNightAlgo: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mNeedSuperNightAlgo:Z

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 787
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    iget-boolean p2, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mNeedSuperNightAlgo:Z

    invoke-static {p2}, Lcom/transsion/camera/feature/mode/supernight/ModeRestriction;->getNightRelation(Z)Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->postRestriction(Lcom/transsion/camera/app/common/relation/Relation;)V

    .line 788
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    const-string p2, "key_super_night"

    invoke-virtual {p1, p2}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->requestChangeSettingValue(Ljava/lang/String;)V

    .line 790
    :cond_e1
    iget p1, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mCurrentShutterValue:I

    div-int/lit8 p1, p1, 0x64

    add-int/lit8 p1, p1, 0x1

    mul-int/lit8 p1, p1, 0x64

    iput p1, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mCurrentShutterValue:I

    return-void
.end method

.method private getFlashValue()Ljava/lang/String;
    .registers 3

    .line 393
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v1, "key_flash_facade"

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 394
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_f

    return-object v0

    .line 397
    :cond_f
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v0, "key_flash"

    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getString(I)Ljava/lang/String;
    .registers 2

    .line 936
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private initModeUI()V
    .registers 5

    .line 687
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/IAppUI;->getModeInflateRoot()Landroid/view/ViewGroup;

    move-result-object v0

    .line 688
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initModeUI rootLayout : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 689
    new-instance v1, Lcom/transsion/camera/feature/mode/supernight/ui/ModeUI;

    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/transsion/camera/feature/mode/supernight/ui/ModeUI;-><init>(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V

    iput-object v1, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mModeUI:Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;

    .line 690
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-virtual {v1, p0}, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;->init(Lcom/transsion/camera/app/common/IAppUI;)V

    return-void
.end method

.method private isNeedSuperNightAlgo(Landroid/hardware/camera2/CaptureResult;Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;)Z
    .registers 5

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 799
    :cond_4
    invoke-static {}, Lcom/transsion/camera/utils/MonkeyUtils;->specialMonkeySupported()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 800
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "It\'s a project under 4G,close superNightAlgo in Monkey scenarios."

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v0

    .line 803
    :cond_12
    iget p0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mAlgoThreshold:I

    invoke-interface {p2, p1, p0}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->isLowLightScene(Landroid/hardware/camera2/CaptureResult;I)Z

    move-result p0

    return p0
.end method

.method private isNeedSuperNightStableAlgo(Landroid/hardware/camera2/CaptureResult;Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;)Z
    .registers 6

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 810
    :cond_4
    invoke-static {}, Lcom/transsion/camera/utils/MonkeyUtils;->specialMonkeySupported()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 811
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "It\'s a project under 4G,close superNightStableAlgo in Monkey scenarios."

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v0

    .line 814
    :cond_12
    sget-object v1, Landroid/hardware/camera2/CaptureResult;->SENSOR_SENSITIVITY:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v1}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 816
    invoke-interface {p2, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->checkBrightnessResult(Landroid/hardware/camera2/CaptureResult;)[I

    move-result-object p1

    if-eqz p1, :cond_26

    .line 817
    array-length p2, p1

    if-lez p2, :cond_26

    .line 818
    aget p1, p1, v0

    goto :goto_27

    :cond_26
    move p1, v0

    .line 820
    :goto_27
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isNeedSuperNightStableAlgo current iso: "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " ,bv:"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-eqz v1, :cond_55

    .line 821
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const/16 p2, 0xc80

    if-ge p0, p2, :cond_55

    const/16 p0, 0x14

    if-ge p1, p0, :cond_54

    goto :goto_55

    :cond_54
    return v0

    :cond_55
    :goto_55
    const/4 p0, 0x1

    return p0
.end method

.method private isStableNight(Landroid/hardware/camera2/CaptureResult;Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;)Z
    .registers 8

    .line 825
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mShutterdownClicked:Z

    if-eqz v0, :cond_7

    .line 826
    iget-boolean p0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mLastStableState:Z

    return p0

    .line 828
    :cond_7
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mStableMode:Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$StableMode;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_15

    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$StableMode;->isStable()Z

    move-result v0

    if-eqz v0, :cond_15

    move v0, v2

    goto :goto_16

    :cond_15
    move v0, v1

    .line 829
    :goto_16
    iget-object v3, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v4, "key_super_night_stable"

    invoke-interface {v3, v4}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 830
    const-string v4, "on"

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    .line 832
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->isNeedSuperNightStableAlgo(Landroid/hardware/camera2/CaptureResult;Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;)Z

    move-result p1

    if-eqz v0, :cond_2f

    if-eqz v3, :cond_2f

    if-eqz p1, :cond_2f

    move v1, v2

    .line 834
    :cond_2f
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "isStableNight:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-eqz v1, :cond_48

    goto :goto_4a

    .line 835
    :cond_48
    const-string v4, "off"

    :goto_4a
    invoke-direct {p0, v4}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->setTripodSuperNightLiteValue(Ljava/lang/String;)V

    .line 836
    iput-boolean v1, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mLastStableState:Z

    return v1
.end method

.method private isThumbnailSourceJPEG()Z
    .registers 2

    .line 584
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mIsDefaultThumbSourceScreenShot:Z

    if-eqz v0, :cond_7

    .line 585
    iget-boolean p0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mNeedSuperNightAlgo:Z

    return p0

    :cond_7
    const/4 p0, 0x1

    return p0
.end method

.method private synthetic lambda$loadActionSound$1(Lcom/transsion/camera/utils/sound/IActionSound;I)V
    .registers 5

    .line 709
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mActionSoundLock:Ljava/lang/Object;

    monitor-enter v0

    .line 710
    :try_start_3
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mActionSound:Lcom/transsion/camera/utils/sound/IActionSound;

    if-nez v1, :cond_d

    .line 711
    invoke-interface {p1, p2}, Lcom/transsion/camera/utils/sound/IActionSound;->unload(I)V

    goto :goto_f

    :catchall_b
    move-exception p0

    goto :goto_11

    .line 713
    :cond_d
    iput p2, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mShutterClickSampleId:I

    .line 715
    :goto_f
    monitor-exit v0

    return-void

    :goto_11
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_b

    throw p0
.end method

.method private synthetic lambda$loadActionSound$2(Lcom/transsion/camera/utils/sound/IActionSound;I)V
    .registers 5

    .line 719
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mActionSoundLock:Ljava/lang/Object;

    monitor-enter v0

    .line 720
    :try_start_3
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mActionSound:Lcom/transsion/camera/utils/sound/IActionSound;

    if-nez v1, :cond_d

    .line 721
    invoke-interface {p1, p2}, Lcom/transsion/camera/utils/sound/IActionSound;->unload(I)V

    goto :goto_f

    :catchall_b
    move-exception p0

    goto :goto_11

    .line 723
    :cond_d
    iput p2, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mShutterClickSampleId:I

    .line 725
    :goto_f
    monitor-exit v0

    return-void

    :goto_11
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_b

    throw p0
.end method

.method private loadActionSound(Ljava/lang/String;)V
    .registers 4

    .line 700
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mActionSound:Lcom/transsion/camera/utils/sound/IActionSound;

    if-nez v0, :cond_c

    .line 701
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/IAppUI;->getActionSound()Lcom/transsion/camera/utils/sound/IActionSound;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mActionSound:Lcom/transsion/camera/utils/sound/IActionSound;

    .line 703
    :cond_c
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mActionSound:Lcom/transsion/camera/utils/sound/IActionSound;

    if-eqz v0, :cond_38

    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mSoundLoaded:Z

    if-eqz v0, :cond_15

    goto :goto_38

    .line 707
    :cond_15
    const-string v0, "sound_effect_default"

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_28

    .line 708
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mActionSound:Lcom/transsion/camera/utils/sound/IActionSound;

    new-instance v1, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;)V

    invoke-interface {v0, p1, v1}, Lcom/transsion/camera/utils/sound/IActionSound;->load(Ljava/lang/String;Lcom/transsion/camera/utils/sound/IActionSound$SoundCallback;)V

    goto :goto_34

    .line 718
    :cond_28
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mActionSound:Lcom/transsion/camera/utils/sound/IActionSound;

    new-instance v0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$$ExternalSyntheticLambda2;-><init>(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;)V

    const-string v1, "camera_click.ogg"

    invoke-interface {p1, v1, v0}, Lcom/transsion/camera/utils/sound/IActionSound;->load(Ljava/lang/String;Lcom/transsion/camera/utils/sound/IActionSound$SoundCallback;)V

    :goto_34
    const/4 p1, 0x1

    .line 728
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mSoundLoaded:Z

    return-void

    .line 704
    :cond_38
    :goto_38
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[QuickCapture] loadQCSound sound load: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mSoundLoaded:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private declared-synchronized onCaptureDone(Z)V
    .registers 3

    monitor-enter p0

    .line 907
    :try_start_1
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mCaptureFlow:Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$CaptureFlow;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$CaptureFlow;->onCaptureDone()Z

    .line 908
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->resetCaptureFlow(Z)V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    .line 909
    monitor-exit p0

    return-void

    :catchall_b
    move-exception p1

    :try_start_c
    monitor-exit p0
    :try_end_d
    .catchall {:try_start_c .. :try_end_d} :catchall_b

    throw p1
.end method

.method private declared-synchronized onCaptureStart()V
    .registers 2

    monitor-enter p0

    .line 903
    :try_start_1
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mCaptureFlow:Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$CaptureFlow;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$CaptureFlow;->onCaptureStart()V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 904
    monitor-exit p0

    return-void

    :catchall_8
    move-exception v0

    :try_start_9
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_9 .. :try_end_a} :catchall_8

    throw v0
.end method

.method private releaseActionSound()V
    .registers 4

    .line 732
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mActionSoundLock:Ljava/lang/Object;

    monitor-enter v0

    .line 733
    :try_start_3
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mActionSound:Lcom/transsion/camera/utils/sound/IActionSound;

    if-eqz v1, :cond_13

    iget-boolean v2, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mSoundLoaded:Z

    if-eqz v2, :cond_13

    .line 734
    iget v2, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mShutterClickSampleId:I

    invoke-interface {v1, v2}, Lcom/transsion/camera/utils/sound/IActionSound;->unload(I)V

    goto :goto_13

    :catchall_11
    move-exception p0

    goto :goto_1b

    :cond_13
    :goto_13
    const/4 v1, 0x0

    .line 736
    iput-boolean v1, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mSoundLoaded:Z

    const/4 v1, 0x0

    .line 737
    iput-object v1, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mActionSound:Lcom/transsion/camera/utils/sound/IActionSound;

    .line 738
    monitor-exit v0

    return-void

    :goto_1b
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_11

    throw p0
.end method

.method private declared-synchronized resetCaptureFlow(Z)V
    .registers 3

    monitor-enter p0

    const/4 v0, 0x0

    .line 888
    :try_start_2
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mShutterdownClicked:Z

    .line 889
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->changeCaptureFlow(I)V

    if-nez p1, :cond_13

    .line 891
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mStableMode:Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$StableMode;

    if-eqz p1, :cond_13

    .line 892
    invoke-virtual {p1}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$StableMode;->resume()V
    :try_end_10
    .catchall {:try_start_2 .. :try_end_10} :catchall_11

    goto :goto_13

    :catchall_11
    move-exception p1

    goto :goto_15

    .line 895
    :cond_13
    :goto_13
    monitor-exit p0

    return-void

    :goto_15
    :try_start_15
    monitor-exit p0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_11

    throw p1
.end method

.method private selectCaptureFlow()V
    .registers 4

    .line 841
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mCurrentResult:Landroid/hardware/camera2/CaptureResult;

    .line 842
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    .line 844
    iget-boolean v2, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mIsStableModeSupport:Z

    if-eqz v2, :cond_10

    .line 845
    invoke-direct {p0, v0, v1}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->isStableNight(Landroid/hardware/camera2/CaptureResult;Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;)Z

    move-result v2

    if-eqz v2, :cond_10

    const/4 v2, 0x2

    goto :goto_11

    :cond_10
    const/4 v2, -0x1

    :goto_11
    if-gez v2, :cond_1e

    .line 850
    invoke-direct {p0, v0, v1}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->isNeedSuperNightAlgo(Landroid/hardware/camera2/CaptureResult;Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mNeedSuperNightAlgo:Z

    if-eqz v0, :cond_1d

    const/4 v2, 0x1

    goto :goto_1e

    :cond_1d
    const/4 v2, 0x0

    .line 857
    :cond_1e
    :goto_1e
    invoke-direct {p0, v2}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->changeCaptureFlow(I)V

    return-void
.end method

.method private setSuperNightLiteValue(Ljava/lang/String;)V
    .registers 3

    .line 294
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mSuperNightSupportCountDown:Z

    if-nez v0, :cond_e

    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mSuperAiRawSupport:Z

    if-nez v0, :cond_e

    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mTurboFusionSupport:Z

    if-eqz v0, :cond_d

    goto :goto_e

    :cond_d
    return-void

    .line 295
    :cond_e
    :goto_e
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v0, "key_super_night_lite"

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p0

    invoke-virtual {p0, v0, p1}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private setTripodSuperNightLiteValue(Ljava/lang/String;)V
    .registers 3

    .line 300
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mSuperNightSupportCountDown:Z

    if-eqz v0, :cond_f

    .line 301
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v0, "key_tripod_super_night_stable"

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p0

    invoke-virtual {p0, v0, p1}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_f
    return-void
.end method

.method private startCapturingAnim(IZ)V
    .registers 5

    .line 912
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mSuperNightSupportCountDown:Z

    if-nez v0, :cond_3c

    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mTurboFusionSupport:Z

    if-nez v0, :cond_3c

    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mSuperAiRawSupport:Z

    if-nez v0, :cond_3c

    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mAiRawSprdSupport:Z

    if-nez v0, :cond_3c

    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mPostAlgoOn:Z

    if-eqz v0, :cond_15

    goto :goto_3c

    .line 916
    :cond_15
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mModeUI:Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;

    if-eqz v0, :cond_1c

    .line 917
    invoke-virtual {v0, p1, p2}, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;->showProcessingAnim(IZ)V

    .line 919
    :cond_1c
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/16 p2, 0x121

    invoke-interface {p1, p2}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 920
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/4 p2, -0x1

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-interface {p1, v1, p2, v0}, Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;->updateUIState(IILjava/lang/String;)V

    .line 921
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getStatusMonitor()Lcom/transsion/camera/app/common/setting/StatusMonitor;

    move-result-object p0

    const-string p1, "key_shutter_state_action"

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p0

    const-string p2, "processing"

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_3c
    :goto_3c
    return-void
.end method

.method private stopCapturingAnim()V
    .registers 5

    .line 925
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mSuperNightSupportCountDown:Z

    if-eqz v0, :cond_5

    return-void

    .line 928
    :cond_5
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mModeUI:Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;

    if-eqz v0, :cond_c

    .line 929
    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;->hideProcessingAnim()V

    .line 931
    :cond_c
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {v0, v3, v1, v2}, Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;->updateUIState(IILjava/lang/String;)V

    .line 932
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getStatusMonitor()Lcom/transsion/camera/app/common/setting/StatusMonitor;

    move-result-object p0

    const-string v0, "key_shutter_state_action"

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p0

    const-string v1, "idle"

    invoke-virtual {p0, v0, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private unInitModeUI()V
    .registers 1

    .line 694
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mModeUI:Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;

    if-eqz p0, :cond_7

    .line 695
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;->unInit()V

    :cond_7
    return-void
.end method


# virtual methods
.method public buildCaptureInfo()Lcom/transsion/camera/app/common/mode/CaptureInfo;
    .registers 4

    .line 941
    new-instance v0, Lcom/transsion/camera/app/common/mode/CaptureInfo;

    iget v1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mCaptureOrientation:I

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->needMirror()Z

    move-result v2

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->autoWatermark()Z

    move-result p0

    invoke-direct {v0, v1, v2, p0}, Lcom/transsion/camera/app/common/mode/CaptureInfo;-><init>(IZZ)V

    return-object v0
.end method

.method public bridge synthetic createImageProcessor()Lcom/transsion/camera/app/common/mode/IImageProcessor;
    .registers 1

    .line 81
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->createImageProcessor()Lcom/transsion/camera/feature/mode/supernight/SuperNightImageProcessor;

    move-result-object p0

    return-object p0
.end method

.method public createImageProcessor()Lcom/transsion/camera/feature/mode/supernight/SuperNightImageProcessor;
    .registers 3

    .line 946
    new-instance v0, Lcom/transsion/camera/feature/mode/supernight/SuperNightImageProcessor;

    iget-boolean v1, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mSuperNightSupportCountDown:Z

    invoke-direct {v0, p0, p0, v1}, Lcom/transsion/camera/feature/mode/supernight/SuperNightImageProcessor;-><init>(Lcom/transsion/camera/app/common/ICameraControl$IPictureCallback;Lcom/transsion/camera/app/common/ICameraControl$IContinuousShotCallback;Z)V

    return-object v0
.end method

.method protected currentModeNeedNewCaptureAnimation()Z
    .registers 4

    .line 1315
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mSupportNewCaptureAnimation:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1c

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->isCameraFacingBack()Z

    move-result v0

    if-nez v0, :cond_c

    goto :goto_1c

    .line 1320
    :cond_c
    iget v0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mCurrentShutterValue:I

    const/16 v2, 0x1f4

    if-lt v0, v2, :cond_1a

    .line 1321
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "capture count down, currentModeNeedNewCaptureAnimation : false"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v1

    :cond_1a
    const/4 p0, 0x1

    return p0

    .line 1316
    :cond_1c
    :goto_1c
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "currentModeNeedNewCaptureAnimation : false"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v1
.end method

.method public doOnFileSaved(Landroid/net/Uri;ZZ)V
    .registers 7

    .line 569
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->doOnFileSaved(Landroid/net/Uri;ZZ)V

    .line 570
    invoke-static {}, Lcom/transsion/camera/app/common/provider/ProcessMediaManager;->getProcessingMediaNumber()I

    move-result p1

    .line 571
    iget-object p2, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mCapturingNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p2

    .line 572
    iget-object p3, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p3}, Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;->getShutterTypeSelftimerOff()I

    move-result p3

    .line 573
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " doOnFileSaved processingNumber:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " capturingNumber = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " shutterType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-nez p1, :cond_53

    .line 575
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz p1, :cond_53

    if-nez p2, :cond_53

    const/16 p2, 0x14

    if-ne p3, p2, :cond_53

    .line 577
    invoke-interface {p1}, Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;->getCurrentUIState()I

    move-result p1

    const/4 p2, 0x1

    if-eq p1, p2, :cond_53

    .line 578
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/4 p1, -0x1

    const/4 p3, 0x0

    invoke-interface {p0, p2, p1, p3}, Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;->updateUIState(IILjava/lang/String;)V

    :cond_53
    return-void
.end method

.method protected getBackMaxZoomRatio()I
    .registers 1

    .line 1337
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p0

    iget-boolean p0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mZoomRatioFor13M:Z

    if-nez p0, :cond_14

    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p0

    iget-boolean p0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mZoomRatioFor8M:Z

    if-eqz p0, :cond_11

    goto :goto_14

    .line 1340
    :cond_11
    sget p0, Lcom/transsion/camera/utils/SettingInfo;->ZOOM_10X:I

    return p0

    .line 1338
    :cond_14
    :goto_14
    sget p0, Lcom/transsion/camera/utils/SettingInfo;->ZOOM_4X:I

    return p0
.end method

.method protected getBackZoomConfig()Lcom/transsion/camera/app/common/ZoomConfig;
    .registers 6

    .line 1329
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->getBackZoomConfig()Lcom/transsion/camera/app/common/ZoomConfig;

    move-result-object p0

    const/16 v0, 0x10

    const/16 v1, 0x80

    const/4 v2, 0x2

    const/4 v3, 0x4

    const/16 v4, 0x8

    filled-new-array {v2, v3, v4, v0, v1}, [I

    move-result-object v0

    .line 1330
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/ZoomConfig;->setSupportedZoomTypes([I)Lcom/transsion/camera/app/common/ZoomConfig;

    move-result-object p0

    return-object p0
.end method

.method public getDataFlowType()I
    .registers 3

    .line 407
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/utils/CustomConfigUtil;->isQcomCaptureFlow()Z

    move-result p0

    const/4 v0, 0x1

    if-eqz p0, :cond_11

    .line 408
    invoke-static {}, Lcom/transsion/camera/utils/FeatureSupport;->isForceCloseOfflineJNISupport()Z

    move-result p0

    if-eqz p0, :cond_13

    :cond_11
    move p0, v0

    goto :goto_15

    :cond_13
    const/16 p0, 0x8

    .line 416
    :goto_15
    invoke-static {}, Lcom/transsion/camera/app/common/algorithm/taintdetection/TaintAlgorithm;->getInstance()Lcom/transsion/camera/app/common/algorithm/taintdetection/TaintAlgorithm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/algorithm/taintdetection/TaintAlgorithm;->algorithmSupport()Z

    move-result v1

    if-eqz v1, :cond_20

    const/4 v0, 0x4

    .line 419
    :cond_20
    invoke-static {p0, v0}, Lcom/transsion/camera/adapter/DataFlowSpec;->makeDataFlowSpec(II)I

    move-result p0

    return p0
.end method

.method public getFpsRange()Landroid/util/Range;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x5

    .line 331
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 329
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->getFpsRange()Landroid/util/Range;

    move-result-object v1

    .line 330
    iget-boolean v2, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mAiRawSprdSupport:Z

    if-nez v2, :cond_17

    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v2

    invoke-virtual {v2}, Lcom/transsion/camera/utils/CustomConfigUtil;->isQcomCaptureFlow()Z

    move-result v2

    if-eqz v2, :cond_22

    .line 331
    :cond_17
    new-instance v1, Landroid/util/Range;

    const/16 v2, 0x1e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    .line 333
    :cond_22
    iget-boolean v2, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mFpsRangeReduce:Z

    if-eqz v2, :cond_3f

    .line 335
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->supportPostAlgo()Z

    move-result v1

    if-nez v1, :cond_34

    iget-boolean p0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mAiRawSprdSupport:Z

    if-eqz p0, :cond_31

    goto :goto_34

    :cond_31
    const/16 p0, 0x1a

    goto :goto_36

    :cond_34
    :goto_34
    const/16 p0, 0x1c

    .line 338
    :goto_36
    new-instance v1, Landroid/util/Range;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-direct {v1, v0, p0}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    :cond_3f
    return-object v1
.end method

.method public getModeFeatures(Landroid/content/Context;)[Ljava/lang/String;
    .registers 6

    .line 617
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 618
    const-string v0, "key_mood_light"

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 619
    const-string v0, "key_shutter_sound_optional"

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 620
    const-string v0, "key_super_night"

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 621
    const-string v0, "key_tran_plugin"

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 622
    const-string v0, "key_distortion_correction"

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 623
    const-string v0, "key_edit_watermark"

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 624
    const-string v0, "key_gold_watermark"

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 625
    const-string v0, "key_pro_watermark"

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 626
    const-string v0, "key_camera_click_zoom"

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 627
    const-string v0, "key_lens_correction"

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 628
    const-string v0, "key_night_3dnr"

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 629
    const-string v0, "key_activity_orientation"

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 630
    const-string v0, "key_fingerprint_capture"

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 631
    const-string v0, "key_secondary_screen"

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 632
    const-string v0, "key_taint_detection"

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 633
    const-string v0, "key_setting_skin_optimization"

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 634
    const-string v0, "key_touch_capture"

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 635
    const-string v0, "key_face_detection_enhance"

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 636
    const-string v0, "key_night_hawk"

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 637
    const-string v0, "key_voice_detection"

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 638
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mTurboFusionEnable:Z

    const-string v1, "key_super_night_lite"

    const-string v2, "key_hdr"

    const-string v3, "key_asd"

    if-nez v0, :cond_90

    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mSuperAiRawEnable:Z

    if-eqz v0, :cond_80

    goto :goto_90

    .line 645
    :cond_80
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/utils/CustomConfigUtil;->superNightSupportAsd()Z

    move-result v0

    if-nez v0, :cond_9e

    .line 646
    const-string v0, "key_setting_smart_denoise"

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9e

    .line 639
    :cond_90
    :goto_90
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 640
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 642
    const-string v0, "key_super_night_light"

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 643
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 649
    :cond_9e
    :goto_9e
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mSuperNightSupportCountDown:Z

    if-eqz v0, :cond_a5

    .line 650
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 653
    :cond_a5
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mSuperNightModeHDRSupport:Z

    if-eqz v0, :cond_b3

    .line 654
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 655
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 658
    :cond_b3
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/utils/CustomConfigUtil;->superNightSupportAsd()Z

    move-result v0

    if-eqz v0, :cond_c3

    .line 659
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 660
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 663
    :cond_c3
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mUseFaceBeauty:Z

    if-eqz v0, :cond_cc

    .line 664
    const-string v0, "key_face_beauty"

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 667
    :cond_cc
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->supportPostAlgo()Z

    move-result v0

    if-nez v0, :cond_d6

    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mAiRawSprdSupport:Z

    if-eqz v0, :cond_de

    .line 668
    :cond_d6
    const-string v0, "ai_raw_lite"

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 669
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 672
    :cond_de
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mPortraitModeEnhanceSupport:Z

    if-nez v0, :cond_e6

    iget-boolean p0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mAiRawSprdSupport:Z

    if-eqz p0, :cond_eb

    .line 673
    :cond_e6
    const-string p0, "key_portraitmode_enhance"

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 675
    :cond_eb
    const-string p0, "key_airaw_tf"

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 676
    const-string p0, "key_in_sensor_zoom"

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 678
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p0

    iget-boolean p0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportSuperNightZoomEis:Z

    if-eqz p0, :cond_102

    .line 679
    const-string p0, "key_zoom_eis"

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 682
    :cond_102
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p0

    .line 683
    new-array p0, p0, [Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method public getModeRelation()Lcom/transsion/camera/app/common/relation/Relation;
    .registers 5

    .line 424
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->getFlashValue()Ljava/lang/String;

    move-result-object v0

    .line 425
    iget-boolean v1, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mUseFaceBeauty:Z

    iget-boolean p0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mFlashTorchSupport:Z

    invoke-static {v1, p0, v0}, Lcom/transsion/camera/feature/mode/supernight/ModeRestriction;->getRelation(ZZLjava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object p0

    const/4 v0, 0x0

    .line 426
    invoke-static {v0}, Lcom/transsion/camera/feature/mode/supernight/ModeRestriction;->getNightRelation(Z)Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/transsion/camera/app/common/mode/CameraMode;->mergeRelation(Lcom/transsion/camera/app/common/relation/Relation;Lcom/transsion/camera/app/common/relation/Relation;)V

    .line 427
    invoke-static {}, Lcom/transsion/camera/feature/mode/supernight/ModeRestriction;->getCamModeRelation()Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/transsion/camera/app/common/mode/CameraMode;->mergeRelation(Lcom/transsion/camera/app/common/relation/Relation;Lcom/transsion/camera/app/common/relation/Relation;)V

    .line 429
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v1

    iget-boolean v1, v1, Lcom/transsion/camera/utils/CustomConfigUtil;->mTurboFusionEnable:Z

    if-nez v1, :cond_2b

    .line 430
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v1

    iget-boolean v1, v1, Lcom/transsion/camera/utils/CustomConfigUtil;->mSuperAiRawEnable:Z

    if-eqz v1, :cond_2c

    :cond_2b
    const/4 v0, 0x1

    .line 431
    :cond_2c
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v1

    iget-boolean v1, v1, Lcom/transsion/camera/utils/CustomConfigUtil;->mSuperNightModeHDRSupport:Z

    const-string v2, "key_hdr"

    const-string v3, "key_asd"

    if-nez v1, :cond_50

    .line 432
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/camera/utils/CustomConfigUtil;->superNightSupportAsd()Z

    move-result v1

    if-nez v1, :cond_50

    if-eqz v0, :cond_45

    goto :goto_50

    .line 436
    :cond_45
    const-string v0, "0"

    invoke-virtual {p0, v3, v0, v0}, Lcom/transsion/camera/app/common/relation/Relation;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 437
    const-string v0, "off"

    invoke-virtual {p0, v2, v0, v0}, Lcom/transsion/camera/app/common/relation/Relation;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0

    .line 433
    :cond_50
    :goto_50
    const-string v0, "auto"

    invoke-virtual {p0, v2, v0, v0}, Lcom/transsion/camera/app/common/relation/Relation;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 434
    invoke-virtual {p0, v3, v0, v0}, Lcom/transsion/camera/app/common/relation/Relation;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public getPreviewSize(Ljava/util/List;)Landroid/util/Size;
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

    .line 308
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mSuperNightReducePreviewSizeHeight:I

    if-eqz v0, :cond_d

    .line 310
    invoke-super {p0, p1, v0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->getLimitedPreviewSize(Ljava/util/List;I)Landroid/util/Size;

    move-result-object p1

    goto :goto_3b

    .line 312
    :cond_d
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mUseFaceBeauty:Z

    if-eqz v0, :cond_37

    .line 315
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-object v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mSuperNightFaceBeautyMaxSupportPreviewSize:Ljava/lang/String;

    .line 314
    invoke-static {v0}, Landroid/util/Size;->parseSize(Ljava/lang/String;)Landroid/util/Size;

    move-result-object v0

    .line 316
    invoke-interface {p1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v1, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$$ExternalSyntheticLambda0;-><init>(Landroid/util/Size;)V

    invoke-interface {p1, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 317
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->getPreviewSize(Ljava/util/List;)Landroid/util/Size;

    move-result-object p1

    goto :goto_3b

    .line 319
    :cond_37
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->getPreviewSize(Ljava/util/List;)Landroid/util/Size;

    move-result-object p1

    .line 322
    :goto_3b
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mPreviewSize:Landroid/util/Size;

    .line 323
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getPreviewSize previewSize: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-object p1
.end method

.method public getSettingGroup()J
    .registers 5

    .line 612
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->getSettingGroup()J

    move-result-wide v0

    const-wide/16 v2, 0x800

    or-long/2addr v0, v2

    return-wide v0
.end method

.method protected getShutterTypeSelftimerOff()I
    .registers 1

    .line 144
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mCaptureFlow:Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$CaptureFlow;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$CaptureFlow;->getShutterTypeSelfTimerOff()I

    move-result p0

    return p0
.end method

.method public getThumbnailSource()I
    .registers 4

    .line 523
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[getThumbnailSource] mIsDefaultThumbSourceScreenShot: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mIsDefaultThumbSourceScreenShot:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 524
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mIsDefaultThumbSourceScreenShot:Z

    if-nez v0, :cond_23

    iget-boolean p0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mSuperNightSupportCountDown:Z

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

.method public init(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Ljava/lang/String;Lcom/transsion/camera/app/common/IApp$IIntentAction;I)V
    .registers 8

    .line 160
    invoke-super/range {p0 .. p7}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->init(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Ljava/lang/String;Lcom/transsion/camera/app/common/IApp$IIntentAction;I)V

    .line 161
    invoke-interface {p3}, Lcom/transsion/camera/app/common/IAppUI;->getActionSound()Lcom/transsion/camera/utils/sound/IActionSound;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mActionSound:Lcom/transsion/camera/utils/sound/IActionSound;

    .line 162
    const-string p2, "key_focus_state"

    invoke-virtual {p0, p2}, Lcom/transsion/camera/app/common/mode/CameraMode;->registerKeyToMonitor(Ljava/lang/String;)V

    .line 163
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->initModeUI()V

    .line 164
    invoke-interface {p3, p0}, Lcom/transsion/camera/app/common/IAppUI;->setModeNotifyCameraOperateActionCallBack(Lcom/transsion/camera/app/common/mode/IModeNotifyCameraOperateActionCallback;)V

    .line 165
    iget-object p2, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/transsion/camera/feature/supernight/R$integer;->shot_2_see_countdown_preview_cover_time:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2

    iput p2, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mShot2seeCountdownTime:I

    .line 166
    iget-object p2, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/transsion/camera/feature/supernight/R$bool;->supernight_mode_support_face_beauty:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p2

    const/4 p3, 0x0

    const/4 p4, 0x1

    if-eqz p2, :cond_3c

    .line 167
    iget-object p2, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCurrentCameraId:Ljava/lang/String;

    invoke-static {p2}, Lcom/transsion/camera/adapter/CameraInfoUtil;->getFacing(Ljava/lang/String;)I

    move-result p2

    if-ne p2, p4, :cond_3c

    move p2, p4

    goto :goto_3d

    :cond_3c
    move p2, p3

    :goto_3d
    iput-boolean p2, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mUseFaceBeauty:Z

    .line 169
    iget-object p2, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p5, Lcom/transsion/camera/feature/supernight/R$bool;->supernight_front_support_torch:I

    invoke-virtual {p2, p5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p2

    if-eqz p2, :cond_6b

    .line 171
    iget-object p2, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCurrentCameraId:Ljava/lang/String;

    const-string p5, "1"

    invoke-static {p2, p5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_67

    iget-object p2, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCurrentCameraId:Ljava/lang/String;

    .line 172
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object p5

    invoke-virtual {p5}, Lcom/transsion/camera/app/common/CameraRepository;->getFoldFrontCamera()Ljava/lang/String;

    move-result-object p5

    invoke-static {p2, p5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_68

    :cond_67
    move p3, p4

    :cond_68
    iput-boolean p3, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mFlashTorchSupport:Z

    goto :goto_6d

    .line 174
    :cond_6b
    iput-boolean p3, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mFlashTorchSupport:Z

    .line 177
    :goto_6d
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p2

    iget p2, p2, Lcom/transsion/camera/utils/CustomConfigUtil;->mAlgoThreshold:I

    iput p2, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mAlgoThreshold:I

    .line 178
    iget-object p2, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "mAlgoThreshold = "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p4, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mAlgoThreshold:I

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 180
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p2

    iget-boolean p2, p2, Lcom/transsion/camera/utils/CustomConfigUtil;->mPortraitEnhanceNightSupport:Z

    iput-boolean p2, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mPortraitModeEnhanceSupport:Z

    .line 181
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/transsion/camera/feature/supernight/R$bool;->super_night_default_thumbnail_source_screenshot:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mIsDefaultThumbSourceScreenShot:Z

    .line 183
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mCaptureFlow:Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$CaptureFlow;

    invoke-virtual {p1}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$CaptureFlow;->onEnter()V

    .line 185
    const-string p1, "key_self_timer_status"

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraMode;->registerKeyToMonitor(Ljava/lang/String;)V

    .line 186
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz p1, :cond_c8

    .line 187
    const-string p2, "key_shutter_sound_update"

    iget-object p3, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {p1, p2, p3}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 188
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string p2, "ai_raw_lite"

    iget-object p3, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {p1, p2, p3}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 189
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string p2, "key_update_low_light_state_to_qc"

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {p1, p2, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    :cond_c8
    return-void
.end method

.method public isNeedDeviceCaptureSound()Z
    .registers 1

    .line 155
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mCaptureFlow:Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$CaptureFlow;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$CaptureFlow;->isNeedDeviceCaptureSound()Z

    move-result p0

    return p0
.end method

.method protected isShot2ShotEnable()Z
    .registers 3

    .line 149
    invoke-static {}, Lcom/transsion/camera/utils/MonkeyUtils;->isUserAMonkey()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1c

    iget-boolean v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mDeferOnNextCapAfterJpeg:Z

    if-eqz v0, :cond_c

    goto :goto_1c

    .line 150
    :cond_c
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mSuperNightSupportCountDown:Z

    if-nez v0, :cond_1a

    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mTurboFusionSupport:Z

    if-nez v0, :cond_1a

    iget-boolean p0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mSuperAiRawSupport:Z

    if-eqz p0, :cond_19

    goto :goto_1a

    :cond_19
    return v1

    :cond_1a
    :goto_1a
    const/4 p0, 0x1

    return p0

    :cond_1c
    :goto_1c
    return v1
.end method

.method public isSupportFlashTorch()Z
    .registers 1

    .line 198
    iget-boolean p0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mFlashTorchSupport:Z

    return p0
.end method

.method public isUseFaceBeauty()Z
    .registers 1

    .line 194
    iget-boolean p0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mUseFaceBeauty:Z

    return p0
.end method

.method public notifyCameraOperateAction(I)V
    .registers 3

    const/16 v0, 0x17

    if-eq p1, v0, :cond_2d

    const/16 v0, 0x18

    if-eq p1, v0, :cond_9

    goto :goto_2c

    :cond_9
    const/4 p1, 0x0

    .line 956
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mIsZooming:Z

    .line 957
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mStableMode:Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$StableMode;

    if-eqz p1, :cond_2c

    invoke-virtual {p1}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$StableMode;->isStable()Z

    move-result p1

    if-eqz p1, :cond_2c

    iget-boolean p1, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mCameraUI3:Z

    if-nez p1, :cond_2c

    .line 958
    iget-boolean p1, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mStableModeEnteredInfoShowed:Z

    if-nez p1, :cond_25

    .line 959
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mStableModeEnteredInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->showHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    .line 961
    :cond_25
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mInStableModeInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->showHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    :cond_2c
    :goto_2c
    return-void

    :cond_2d
    const/4 p1, 0x1

    .line 953
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mIsZooming:Z

    return-void
.end method

.method public notifyPictureTaken([BZIJ)I
    .registers 7

    .line 549
    iget-object p2, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-virtual {p2}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->takePictureEnded()V

    .line 550
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->isValid()Z

    move-result p2

    const/4 p4, 0x1

    if-eqz p2, :cond_15

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->getThumbNailType()I

    move-result p2

    if-eq p2, p4, :cond_15

    .line 551
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->updateThumbnailView([B)V

    .line 553
    :cond_15
    invoke-virtual {p0, p4}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->checkCaptureResult(Z)V

    .line 554
    iget-boolean p1, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mIsStableModeSupport:Z

    const/4 p2, 0x0

    if-eqz p1, :cond_20

    .line 555
    invoke-direct {p0, p2}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->resetCaptureFlow(Z)V

    .line 557
    :cond_20
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "notifyPictureTaken picCountRemaining: "

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ",mSuperNightSupportCountDown:"

    invoke-virtual {p5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mSuperNightSupportCountDown:Z

    invoke-virtual {p5, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 560
    iget-boolean p1, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mSuperNightSupportCountDown:Z

    if-nez p1, :cond_4e

    .line 561
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/4 p3, -0x1

    const/4 p5, 0x0

    invoke-interface {p1, p4, p3, p5}, Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;->updateUIState(IILjava/lang/String;)V

    .line 562
    invoke-direct {p0, p2}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->onCaptureDone(Z)V

    :cond_4e
    return p2
.end method

.method public onBackPressed()Z
    .registers 2

    .line 899
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;->getCurrentUIState()I

    move-result p0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_b

    const/4 p0, 0x1

    return p0

    :cond_b
    const/4 p0, 0x0

    return p0
.end method

.method public onModeCaptureFailed(Z[J)V
    .registers 5

    .line 593
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->isValid()Z

    move-result v0

    if-nez v0, :cond_e

    .line 594
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "onModeCaptureFailed, but current mode was unInit, so do nothing."

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 597
    :cond_e
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->onModeCaptureFailed(Z[J)V

    const/4 p1, 0x0

    .line 598
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->onCaptureDone(Z)V

    .line 599
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mSuperNightSupportCountDown: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mSuperNightSupportCountDown:Z

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 600
    iget-boolean p1, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mSuperNightSupportCountDown:Z

    if-eqz p1, :cond_51

    .line 601
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mModeUI:Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;

    if-eqz p1, :cond_38

    .line 602
    invoke-virtual {p1}, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;->hideProcessingAnim()V

    .line 604
    :cond_38
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/4 p2, -0x1

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-interface {p1, v1, p2, v0}, Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;->updateUIState(IILjava/lang/String;)V

    .line 605
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getStatusMonitor()Lcom/transsion/camera/app/common/setting/StatusMonitor;

    move-result-object p0

    const-string p1, "key_shutter_state_action"

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p0

    const-string p2, "idle"

    .line 606
    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_51
    return-void
.end method

.method public onOrientationChanged(I)V
    .registers 3

    .line 472
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraMode;->onOrientationChanged(I)V

    .line 473
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mModeUI:Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;

    if-eqz p0, :cond_b

    const/4 v0, 0x1

    .line 474
    invoke-virtual {p0, p1, v0}, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;->onOrientationChanged(IZ)V

    :cond_b
    return-void
.end method

.method public onPostViewData([BIIIIJ)V
    .registers 8

    return-void
.end method

.method protected onSettingChanged(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    .line 221
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->onSettingChanged(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, -0x1

    sparse-switch v0, :sswitch_data_9e

    :goto_11
    move v0, v4

    goto :goto_33

    :sswitch_13
    const-string v0, "key_self_timer_status"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c

    goto :goto_11

    :cond_1c
    move v0, v1

    goto :goto_33

    :sswitch_1e
    const-string v0, "key_super_night_stable"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_27

    goto :goto_11

    :cond_27
    move v0, v2

    goto :goto_33

    :sswitch_29
    const-string v0, "key_focus_state"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_32

    goto :goto_11

    :cond_32
    move v0, v3

    :goto_33
    packed-switch v0, :pswitch_data_ac

    goto/16 :goto_9a

    :pswitch_38
    if-nez p2, :cond_3b

    goto :goto_9a

    .line 241
    :cond_3b
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mCaptureFlow:Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$CaptureFlow;

    invoke-virtual {v0, p1, p2}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$CaptureFlow;->onSettingChanged(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_44

    goto :goto_9a

    .line 244
    :cond_44
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result p1

    sparse-switch p1, :sswitch_data_b6

    :goto_4b
    move v1, v4

    goto :goto_6b

    :sswitch_4d
    const-string p1, "status_self_timer_begin"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6b

    goto :goto_4b

    :sswitch_56
    const-string p1, "status_self_timer_cancel"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5f

    goto :goto_4b

    :cond_5f
    move v1, v2

    goto :goto_6b

    :sswitch_61
    const-string p1, "status_self_timer_end"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6a

    goto :goto_4b

    :cond_6a
    move v1, v3

    :cond_6b
    :goto_6b
    packed-switch v1, :pswitch_data_c4

    goto :goto_9a

    .line 246
    :pswitch_6f
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mStableMode:Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$StableMode;

    if-eqz p0, :cond_9a

    .line 247
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$StableMode;->pause()V

    return-void

    .line 256
    :pswitch_77
    invoke-direct {p0, v3}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->resetCaptureFlow(Z)V

    return-void

    .line 251
    :pswitch_7b
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mStableMode:Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$StableMode;

    if-eqz p0, :cond_9a

    .line 252
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$StableMode;->resume()V

    return-void

    .line 227
    :pswitch_83
    const-string p1, "on"

    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_93

    .line 228
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mStableMode:Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$StableMode;

    if-eqz p0, :cond_9a

    .line 229
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$StableMode;->onOpened()V

    return-void

    .line 232
    :cond_93
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mStableMode:Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$StableMode;

    if-eqz p0, :cond_9a

    .line 233
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$StableMode;->onClosed()V

    :cond_9a
    :goto_9a
    return-void

    .line 224
    :pswitch_9b
    iput-object p2, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mCurrentFocusState:Ljava/lang/String;

    return-void

    :sswitch_data_9e
    .sparse-switch
        -0x42841f76 -> :sswitch_29
        -0x3657769a -> :sswitch_1e
        0x31f2225f -> :sswitch_13
    .end sparse-switch

    :pswitch_data_ac
    .packed-switch 0x0
        :pswitch_9b
        :pswitch_83
        :pswitch_38
    .end packed-switch

    :sswitch_data_b6
    .sparse-switch
        -0xaded465 -> :sswitch_61
        -0x5096c46 -> :sswitch_56
        0x31566b69 -> :sswitch_4d
    .end sparse-switch

    :pswitch_data_c4
    .packed-switch 0x0
        :pswitch_7b
        :pswitch_77
        :pswitch_6f
    .end packed-switch
.end method

.method public onSettingReady()V
    .registers 4

    .line 444
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->onSettingReady()V

    .line 445
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v1, "key_super_night_stable"

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryEntryValues(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 446
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x1

    if-le v0, v2, :cond_15

    goto :goto_16

    :cond_15
    const/4 v2, 0x0

    :goto_16
    iput-boolean v2, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mIsStableModeSupport:Z

    if-eqz v2, :cond_2b

    .line 447
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mStableMode:Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$StableMode;

    if-nez v0, :cond_2b

    .line 448
    invoke-virtual {p0, v1}, Lcom/transsion/camera/app/common/mode/CameraMode;->registerKeyToMonitor(Ljava/lang/String;)V

    .line 449
    new-instance v0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$StableMode;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$StableMode;-><init>(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mStableMode:Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$StableMode;

    .line 450
    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$StableMode;->init()V

    .line 453
    :cond_2b
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mModeUI:Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;

    if-eqz v0, :cond_32

    .line 454
    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;->inflateView()V

    .line 456
    :cond_32
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    if-eqz v0, :cond_3b

    .line 457
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mFrameResultCallback:Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;

    invoke-virtual {v0, v2}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->registerFrameResultCallback(Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;)V

    .line 460
    :cond_3b
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mIsStableModeSupport:Z

    if-eqz v0, :cond_54

    .line 461
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 462
    const-string v1, "on"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_54

    .line 463
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mStableMode:Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$StableMode;

    if-eqz p0, :cond_54

    .line 464
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$StableMode;->onOpened()V

    :cond_54
    return-void
.end method

.method public onShutterClick(II)Z
    .registers 5

    .line 345
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mStableMode:Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$StableMode;

    if-eqz v0, :cond_7

    .line 346
    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$StableMode;->pause()V

    .line 349
    :cond_7
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;->getCurrentUIState()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_11

    return v1

    .line 353
    :cond_11
    iput-boolean v1, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mShutterdownClicked:Z

    .line 354
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->selectCaptureFlow()V

    .line 356
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mCaptureFlow:Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$CaptureFlow;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$CaptureFlow;->onShutterClick()Z

    move-result v0

    if-eqz v0, :cond_1f

    return v1

    .line 359
    :cond_1f
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->onShutterClick(II)Z

    move-result p0

    return p0
.end method

.method public onShutterClickBefore(I)Z
    .registers 6

    .line 365
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v1, "key_touch_capture"

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 366
    const-string v1, "on"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    .line 367
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onShutterClickBefore, isTouchCaptureOn: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", mCurrentFocusState: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mCurrentFocusState:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 369
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mCurrentFocusState:Ljava/lang/String;

    const-string v2, "ACTIVE_SCAN"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3f

    if-eqz v0, :cond_3f

    .line 370
    invoke-direct {p0, v2}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->resetCaptureFlow(Z)V

    return v2

    .line 373
    :cond_3f
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->getPictureCount()I

    move-result v0

    if-lez v0, :cond_59

    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mSuperAiRawSupport:Z

    if-nez v0, :cond_59

    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mTurboFusionSupport:Z

    if-nez v0, :cond_59

    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mSuperNightSupportCountDown:Z

    if-nez v0, :cond_59

    .line 374
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "onShutterClickBefore return"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v2

    .line 377
    :cond_59
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->onShutterClickBefore(I)Z

    move-result p1

    if-eqz p1, :cond_63

    .line 379
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->onCaptureStart()V

    return p1

    .line 381
    :cond_63
    invoke-direct {p0, v2}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->resetCaptureFlow(Z)V

    return p1
.end method

.method public onShutterStart(ZJJ)V
    .registers 6

    .line 388
    invoke-super/range {p0 .. p5}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->onShutterStart(ZJJ)V

    .line 389
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mCaptureFlow:Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$CaptureFlow;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$CaptureFlow;->onShutterStart()V

    return-void
.end method

.method public pause()V
    .registers 3

    .line 480
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->pause()V

    .line 481
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mStableMode:Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$StableMode;

    if-eqz v0, :cond_a

    .line 482
    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$StableMode;->onClosed()V

    .line 484
    :cond_a
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    if-eqz v0, :cond_13

    .line 485
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mFrameResultCallback:Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->unRegisterFrameResultCallback(Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;)V

    .line 487
    :cond_13
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mModeUI:Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;

    if-eqz v0, :cond_1a

    .line 488
    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;->unRegisterSensorListeners()V

    :cond_1a
    const/4 v0, 0x0

    .line 490
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mNeedSuperNightAlgo:Z

    const/4 v0, 0x1

    .line 491
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->onCaptureDone(Z)V

    return-void
.end method

.method public bridge synthetic queryState(Ljava/lang/String;)Lcom/transsion/camera/app/common/IAppUI$UIState;
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/mode/ICameraMode;->queryState(Ljava/lang/String;)Lcom/transsion/camera/app/common/IAppUI$UIState;

    move-result-object p0

    return-object p0
.end method

.method public recentAppsStart()V
    .registers 5

    .line 509
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz v0, :cond_a

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 510
    invoke-interface {v0, v3, v1, v2}, Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;->updateUIState(IILjava/lang/String;)V

    .line 512
    :cond_a
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    if-eqz v0, :cond_30

    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mAiRawSprdSupport:Z

    if-nez v0, :cond_30

    .line 513
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->cancelTakePicture()V

    .line 514
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz v0, :cond_30

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mCaptureFlow:Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$CaptureFlow;

    iget-boolean v0, v0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$CaptureFlow;->mIsCapturing:Z

    if-eqz v0, :cond_30

    const/4 v0, 0x0

    .line 515
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->onCaptureDone(Z)V

    .line 516
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/16 v0, 0xe

    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    :cond_30
    return-void
.end method

.method public resume()V
    .registers 1

    .line 496
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->resume()V

    .line 497
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mModeUI:Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;

    if-eqz p0, :cond_a

    .line 498
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;->registerSensorListeners()V

    :cond_a
    return-void
.end method

.method public supportPostAlgo()Z
    .registers 1

    .line 504
    invoke-static {}, Lcom/transsion/camera/app/common/isphidl/ISPHIDLController;->getInstance()Lcom/transsion/camera/app/common/isphidl/ISPHIDLController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/isphidl/ISPHIDLController;->isServiceSupport()Z

    move-result p0

    return p0
.end method

.method public unInit()V
    .registers 4

    .line 203
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->unInit()V

    .line 204
    const-string v0, "key_self_timer_status"

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/mode/CameraMode;->unRegisterKeyToMonitor(Ljava/lang/String;)V

    .line 205
    const-string v0, "key_focus_state"

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/mode/CameraMode;->unRegisterKeyToMonitor(Ljava/lang/String;)V

    .line 206
    const-string v0, "key_super_night_stable"

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/mode/CameraMode;->unRegisterKeyToMonitor(Ljava/lang/String;)V

    .line 207
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz v0, :cond_2f

    .line 208
    const-string v1, "key_shutter_sound_update"

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 209
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v1, "ai_raw_lite"

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 210
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v1, "key_update_low_light_state_to_qc"

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 212
    :cond_2f
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mStableMode:Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$StableMode;

    if-eqz v0, :cond_36

    .line 213
    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$StableMode;->unInit()V

    .line 215
    :cond_36
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->unInitModeUI()V

    .line 216
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->releaseActionSound()V

    return-void
.end method
