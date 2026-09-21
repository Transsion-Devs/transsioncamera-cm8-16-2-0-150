.class public Lcom/transsion/camera/feature/mode/video/VideoMode;
.super Lcom/transsion/camera/app/common/mode/CommonVideoMode;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/mode/video/VideoMode$ThermalThrottleChangeListenerImpl;,
        Lcom/transsion/camera/feature/mode/video/VideoMode$BackgroundBlurPreview;,
        Lcom/transsion/camera/feature/mode/video/VideoMode$VideoPreviewCallBackChangeListener;
    }
.end annotation


# static fields
.field private static final CLASS_360_VIDEO_HDR_PREVIEW:Ljava/lang/String; = "com.transsion.camera.feature.setting.videohdr.preview.VideoHDRPreview"

.field private static final CLASS_DOL_VIDEO_HDR:Ljava/lang/String; = "com.transsion.camera.feature.setting.dolvideohdr.DolVideoHDR"

.field private static final CLASS_DV_PREVIEW:Ljava/lang/String; = "com.transsion.camera.base_business.dv_sdk.DVPreview"

.field private static final CLASS_VSS_PREVIEW:Ljava/lang/String; = "com.transsion.camera.base_business.vss_sdk.VSSPreview"

.field private static final DEBUG_PREVIEW_SIZE:Landroid/util/Size;

.field private static final DV_ID_IN_FLIP:I = 0x6

.field private static final FILTER_ENTRY_CLASS:Ljava/lang/String; = "com.transsion.camera.feature.setting.videofilter.VideoFilterEntry"

.field private static final FRONT_ZOOM_TICK_VIEW_DEGREE_SCALE_FACTOR:F = 2.0f

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

.field private static mIsZoomWheelShowing:Z


# instance fields
.field private final mFrameResultCallback:Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;

.field private final mHDRDataPreviewCallback:Lcom/transsion/camera/app/common/mode/IVideoHDRRecordingCallback;

.field private mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

.field protected volatile mIsGLRecording:Z

.field private mIsLowlightHintShowing:Z

.field private mIsPreIspHintShown:Z

.field private volatile mIsVideoPreviewCallbackInit:Z

.field private mLowLightHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

.field private mLowLightHintText:Ljava/lang/String;

.field private final mPauseResumeListener:Landroid/view/View$OnClickListener;

.field protected mPhotoHelper:Lcom/transsion/camera/app/common/mode/CommonPhotoHelper;

.field private mPreviewBackgroundOperator:Lcom/transsion/camera/app/common/preview/IPreviewOperator;

.field private mPreviewBackgroundSupport:Z

.field private mPreviewOperator:Lcom/transsion/camera/app/common/preview/IPreviewOperator;

.field private mPreviewViewType:Lcom/transsion/camera/utils/SettingInfo$PreviewViewType;

.field private final mStableMonitorProxy:Lcom/transsion/camera/app/common/gsensor/StableMonitorProxy;

.field private mStableStatus:I

.field private final mTextureHolder:Lcom/transsion/camera/featurelibs/media/ITextureHolder;

.field private mTextureUpdater:Lcom/transsion/camera/featurelibs/media/ITextureHolder$ITextureUpdater;

.field private final mThermalThrottleListener:Lcom/transsion/camera/feature/mode/video/VideoMode$ThermalThrottleChangeListenerImpl;

.field private volatile mVideoEffectOn:Z

.field private volatile mVideoFilterOn:Z

.field private volatile mVideoFrameOn:Z

.field private mVideoHDRState:Z

.field private volatile mVideoHdrOn:Z

.field private mVideoModeSuperAntiValueOn:Z

.field protected mVideoPreviewCallback:Lcom/transsion/camera/app/common/mode/IVideoModeCallback;

.field private final mVideoSnapShotListener:Landroid/view/View$OnClickListener;

.field protected mVideoUI:Lcom/transsion/camera/app/ui/mode/video/VideoUI;


# direct methods
.method public static synthetic $r8$lambda$LL7YsesOPswCCZb4MZgrs-Jl7lg(Lcom/transsion/camera/feature/mode/video/VideoMode;Z)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/video/VideoMode;->updateVideoPowerSavingUIVisibility(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$PN4_lVHbel8yknE-O428r0LTKz4(Lcom/transsion/camera/feature/mode/video/VideoMode;Landroid/hardware/camera2/CaptureResult;Landroid/util/Size;Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;)V
    .registers 4

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/camera/feature/mode/video/VideoMode;->doOnFrameResultCallback(Landroid/hardware/camera2/CaptureResult;Landroid/util/Size;Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;)V

    return-void
.end method

.method public static synthetic $r8$lambda$j97DerHljmlcxn-Gj5-sQSm5S14(Lcom/transsion/camera/app/common/mode/IVideoModeCallback;)V
    .registers 1

    .line 1793
    invoke-interface {p0}, Lcom/transsion/camera/app/common/mode/IVideoModeCallback;->previewViewTypeChanged()V

    return-void
.end method

.method public static synthetic $r8$lambda$ntPenAosCPaS1_7aaT39wPI9Qq8(Lcom/transsion/camera/feature/mode/video/VideoMode;I)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/video/VideoMode;->lambda$init$0(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$p4sNeAiXqwMMSWs4EtD7s05TESU(Lcom/transsion/camera/feature/mode/video/VideoMode;Landroid/view/View;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/video/VideoMode;->lambda$new$1(Landroid/view/View;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmTextureUpdater(Lcom/transsion/camera/feature/mode/video/VideoMode;)Lcom/transsion/camera/featurelibs/media/ITextureHolder$ITextureUpdater;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/video/VideoMode;->mTextureUpdater:Lcom/transsion/camera/featurelibs/media/ITextureHolder$ITextureUpdater;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmTextureUpdater(Lcom/transsion/camera/feature/mode/video/VideoMode;Lcom/transsion/camera/featurelibs/media/ITextureHolder$ITextureUpdater;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/video/VideoMode;->mTextureUpdater:Lcom/transsion/camera/featurelibs/media/ITextureHolder$ITextureUpdater;

    return-void
.end method

.method static bridge synthetic -$$Nest$mconvertJpegOrientation(Lcom/transsion/camera/feature/mode/video/VideoMode;I)I
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/video/VideoMode;->convertJpegOrientation(I)I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$msaveJpegToFile(Lcom/transsion/camera/feature/mode/video/VideoMode;[BLandroid/graphics/Bitmap;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/mode/video/VideoMode;->saveJpegToFile([BLandroid/graphics/Bitmap;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;
    .registers 1

    .line 0
    sget-object v0, Lcom/transsion/camera/feature/mode/video/VideoMode;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 161
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "VideoMode"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/mode/video/VideoMode;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    .line 163
    new-instance v0, Landroid/util/Size;

    const/16 v1, 0x5a0

    const/16 v2, 0x438

    invoke-direct {v0, v1, v2}, Landroid/util/Size;-><init>(II)V

    sput-object v0, Lcom/transsion/camera/feature/mode/video/VideoMode;->DEBUG_PREVIEW_SIZE:Landroid/util/Size;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/transsion/camera/app/common/provider/FeatureParameters;)V
    .registers 5

    .line 204
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 162
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/video/VideoMode;->mVideoUI:Lcom/transsion/camera/app/ui/mode/video/VideoUI;

    .line 171
    new-instance p2, Lcom/transsion/camera/feature/mode/video/VideoMode$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/transsion/camera/feature/mode/video/VideoMode$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/feature/mode/video/VideoMode;)V

    iput-object p2, p0, Lcom/transsion/camera/feature/mode/video/VideoMode;->mFrameResultCallback:Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;

    const/4 p2, 0x0

    .line 173
    iput-boolean p2, p0, Lcom/transsion/camera/feature/mode/video/VideoMode;->mVideoHdrOn:Z

    .line 174
    iput-boolean p2, p0, Lcom/transsion/camera/feature/mode/video/VideoMode;->mVideoFilterOn:Z

    .line 175
    iput-boolean p2, p0, Lcom/transsion/camera/feature/mode/video/VideoMode;->mVideoEffectOn:Z

    .line 176
    iput-boolean p2, p0, Lcom/transsion/camera/feature/mode/video/VideoMode;->mVideoFrameOn:Z

    .line 178
    iput-boolean p2, p0, Lcom/transsion/camera/feature/mode/video/VideoMode;->mIsGLRecording:Z

    .line 179
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/video/VideoMode;->mPhotoHelper:Lcom/transsion/camera/app/common/mode/CommonPhotoHelper;

    .line 181
    iput-boolean p2, p0, Lcom/transsion/camera/feature/mode/video/VideoMode;->mIsVideoPreviewCallbackInit:Z

    const/4 v0, 0x1

    .line 182
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/video/VideoMode;->mVideoHDRState:Z

    .line 183
    iput p2, p0, Lcom/transsion/camera/feature/mode/video/VideoMode;->mStableStatus:I

    .line 188
    new-instance v0, Lcom/transsion/camera/feature/mode/video/VideoMode$ThermalThrottleChangeListenerImpl;

    invoke-direct {v0, p0, p1}, Lcom/transsion/camera/feature/mode/video/VideoMode$ThermalThrottleChangeListenerImpl;-><init>(Lcom/transsion/camera/feature/mode/video/VideoMode;Lcom/transsion/camera/feature/mode/video/VideoMode-IA;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/video/VideoMode;->mThermalThrottleListener:Lcom/transsion/camera/feature/mode/video/VideoMode$ThermalThrottleChangeListenerImpl;

    .line 195
    sget-object p1, Lcom/transsion/camera/utils/SettingInfo$PreviewViewType;->GL_SURFACE_VIEW:Lcom/transsion/camera/utils/SettingInfo$PreviewViewType;

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/video/VideoMode;->mPreviewViewType:Lcom/transsion/camera/utils/SettingInfo$PreviewViewType;

    .line 197
    iput-boolean p2, p0, Lcom/transsion/camera/feature/mode/video/VideoMode;->mVideoModeSuperAntiValueOn:Z

    .line 198
    new-instance p1, Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-direct {p1, p2}, Lcom/transsion/camera/app/common/ui/HintInfo;-><init>(I)V

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/video/VideoMode;->mLowLightHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    .line 310
    new-instance p1, Lcom/transsion/camera/feature/mode/video/VideoMode$1;

    invoke-direct {p1, p0}, Lcom/transsion/camera/feature/mode/video/VideoMode$1;-><init>(Lcom/transsion/camera/feature/mode/video/VideoMode;)V

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/video/VideoMode;->mTextureHolder:Lcom/transsion/camera/featurelibs/media/ITextureHolder;

    .line 906
    new-instance p1, Lcom/transsion/camera/feature/mode/video/VideoMode$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lcom/transsion/camera/feature/mode/video/VideoMode$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/feature/mode/video/VideoMode;)V

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/video/VideoMode;->mPauseResumeListener:Landroid/view/View$OnClickListener;

    .line 915
    new-instance p1, Lcom/transsion/camera/feature/mode/video/VideoMode$3;

    invoke-direct {p1, p0}, Lcom/transsion/camera/feature/mode/video/VideoMode$3;-><init>(Lcom/transsion/camera/feature/mode/video/VideoMode;)V

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/video/VideoMode;->mVideoSnapShotListener:Landroid/view/View$OnClickListener;

    .line 1352
    new-instance p1, Lcom/transsion/camera/feature/mode/video/VideoMode$4;

    invoke-direct {p1, p0}, Lcom/transsion/camera/feature/mode/video/VideoMode$4;-><init>(Lcom/transsion/camera/feature/mode/video/VideoMode;)V

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/video/VideoMode;->mHDRDataPreviewCallback:Lcom/transsion/camera/app/common/mode/IVideoHDRRecordingCallback;

    if-eqz p3, :cond_59

    .line 206
    invoke-virtual {p3}, Lcom/transsion/camera/app/common/provider/FeatureParameters;->screenFormType()I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mScreenFormType:I

    .line 208
    :cond_59
    new-instance p1, Lcom/transsion/camera/app/common/gsensor/StableMonitorProxy;

    .line 209
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p2

    iget-boolean p2, p2, Lcom/transsion/camera/utils/CustomConfigUtil;->mDXOTestSupport:Z

    if-eqz p2, :cond_6b

    new-instance p2, Lcom/transsion/camera/app/common/gsensor/StableMonitor;

    sget-object p3, Lcom/transsion/camera/app_info/AppInfo;->app:Landroid/app/Application;

    invoke-direct {p2, p3}, Lcom/transsion/camera/app/common/gsensor/StableMonitor;-><init>(Landroid/content/Context;)V

    goto :goto_70

    :cond_6b
    new-instance p2, Lcom/transsion/camera/app/common/gsensor/StableMonitorStub;

    invoke-direct {p2}, Lcom/transsion/camera/app/common/gsensor/StableMonitorStub;-><init>()V

    :goto_70
    invoke-direct {p1, p2}, Lcom/transsion/camera/app/common/gsensor/StableMonitorProxy;-><init>(Lcom/transsion/camera/app/common/gsensor/IStableMonitor;)V

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/video/VideoMode;->mStableMonitorProxy:Lcom/transsion/camera/app/common/gsensor/StableMonitorProxy;

    return-void
.end method

.method static synthetic access$000(Lcom/transsion/camera/feature/mode/video/VideoMode;)Lcom/transsion/camera/utils/debug/Log$Tag;
    .registers 1

    .line 160
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object p0
.end method

.method static synthetic access$100(Lcom/transsion/camera/feature/mode/video/VideoMode;)Lcom/transsion/camera/app/common/recorder/RecorderManager;
    .registers 1

    .line 160
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mTextureRecorder:Lcom/transsion/camera/app/common/recorder/RecorderManager;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/transsion/camera/feature/mode/video/VideoMode;)Lcom/transsion/camera/app/common/mode/CameraDeviceControl;
    .registers 1

    .line 160
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    return-object p0
.end method

.method static synthetic access$200(Lcom/transsion/camera/feature/mode/video/VideoMode;)V
    .registers 1

    .line 160
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->videoSnapShot()V

    return-void
.end method

.method static synthetic access$300(Lcom/transsion/camera/feature/mode/video/VideoMode;)Z
    .registers 1

    .line 160
    iget-boolean p0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mInTakingPicture:Z

    return p0
.end method

.method static synthetic access$400(Lcom/transsion/camera/feature/mode/video/VideoMode;)Lcom/transsion/camera/app/common/mode/CameraDeviceControl;
    .registers 1

    .line 160
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    return-object p0
.end method

.method static synthetic access$500(Lcom/transsion/camera/feature/mode/video/VideoMode;)Landroid/os/Handler;
    .registers 1

    .line 160
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mHandle:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$602(Lcom/transsion/camera/feature/mode/video/VideoMode;Z)Z
    .registers 2

    .line 160
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mInTakingPicture:Z

    return p1
.end method

.method static synthetic access$700(Lcom/transsion/camera/feature/mode/video/VideoMode;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;
    .registers 1

    .line 160
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    return-object p0
.end method

.method static synthetic access$802(Lcom/transsion/camera/feature/mode/video/VideoMode;Z)Z
    .registers 2

    .line 160
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mInTakingPicture:Z

    return p1
.end method

.method static synthetic access$900(Lcom/transsion/camera/feature/mode/video/VideoMode;)Lcom/transsion/camera/app/common/mode/CameraDeviceControl;
    .registers 1

    .line 160
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    return-object p0
.end method

.method private convertJpegOrientation(I)I
    .registers 2

    const/16 p0, 0x5a

    if-eq p1, p0, :cond_13

    const/16 p0, 0xb4

    if-eq p1, p0, :cond_11

    const/16 p0, 0x10e

    if-eq p1, p0, :cond_e

    const/4 p0, 0x1

    return p0

    :cond_e
    const/16 p0, 0x8

    return p0

    :cond_11
    const/4 p0, 0x3

    return p0

    :cond_13
    const/4 p0, 0x6

    return p0
.end method

.method private createVideoUISpec()Lcom/transsion/camera/app/common/ui/VideoUISpec;
    .registers 4

    .line 950
    new-instance v0, Lcom/transsion/camera/app/common/ui/VideoUISpec;

    invoke-direct {v0}, Lcom/transsion/camera/app/common/ui/VideoUISpec;-><init>()V

    const-wide/16 v1, 0x0

    .line 953
    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/ui/VideoUISpec;->setRecordingTotalSize(J)V

    const/4 v1, 0x1

    .line 955
    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ui/VideoUISpec;->setSupportedPause(Z)V

    .line 956
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->isVssSupported()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ui/VideoUISpec;->setSupportedVss(Z)V

    .line 957
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/video/VideoMode;->mPauseResumeListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ui/VideoUISpec;->setPauseResumeListener(Landroid/view/View$OnClickListener;)V

    .line 958
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/video/VideoMode;->mVideoSnapShotListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, p0}, Lcom/transsion/camera/app/common/ui/VideoUISpec;->setVideoSnapShotListener(Landroid/view/View$OnClickListener;)V

    return-object v0
.end method

.method private doOnFrameResultCallback(Landroid/hardware/camera2/CaptureResult;Landroid/util/Size;Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;)V
    .registers 9

    .line 1420
    invoke-interface {p3, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->checkBrightnessResult(Landroid/hardware/camera2/CaptureResult;)[I

    move-result-object p1

    if-eqz p1, :cond_ce

    .line 1422
    array-length p2, p1

    if-lez p2, :cond_ce

    .line 1423
    iget-boolean p2, p0, Lcom/transsion/camera/feature/mode/video/VideoMode;->mVideoHDRState:Z

    const/4 p3, 0x0

    .line 1425
    aget v0, p1, p3

    iget v1, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mVideoSuperNightOutBvLimit:I

    const/4 v2, 0x1

    if-lt v0, v1, :cond_16

    move v0, v2

    move v1, v0

    goto :goto_1f

    .line 1428
    :cond_16
    iget v1, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mVideoSuperNightBvLimit:I

    if-gt v0, v1, :cond_1d

    move v0, p3

    move v1, v2

    goto :goto_1f

    :cond_1d
    move v0, p2

    move v1, p3

    :goto_1f
    if-eq p2, v0, :cond_7d

    .line 1432
    iget-object p2, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p2}, Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;->isVideoRecording()Z

    move-result p2

    if-nez p2, :cond_7d

    iget-object p2, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v3, "key_video_enhance"

    .line 1433
    invoke-interface {p2, v3}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v3, "on"

    invoke-static {p2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_47

    iget-object p2, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v4, "key_video_enhance_yuv"

    invoke-interface {p2, v4}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_7d

    :cond_47
    iget-boolean p2, p0, Lcom/transsion/camera/feature/mode/video/VideoMode;->mIsGLRecording:Z

    if-nez p2, :cond_7d

    iget-object p2, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    .line 1434
    invoke-interface {p2}, Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;->getCurrentUIState()I

    move-result p2

    const/4 v3, 0x2

    if-eq p2, v3, :cond_7d

    iget-boolean p2, p0, Lcom/transsion/camera/feature/mode/video/VideoMode;->mIsVideoPreviewCallbackInit:Z

    if-eqz p2, :cond_7d

    iget-object p2, p0, Lcom/transsion/camera/feature/mode/video/VideoMode;->mVideoPreviewCallback:Lcom/transsion/camera/app/common/mode/IVideoModeCallback;

    if-eqz p2, :cond_7d

    .line 1435
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/video/VideoMode;->mVideoHDRState:Z

    .line 1436
    sget-object p2, Lcom/transsion/camera/feature/mode/video/VideoMode;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mVideoHDRState = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/transsion/camera/feature/mode/video/VideoMode;->mVideoHDRState:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1437
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/video/VideoMode;->mVideoPreviewCallback:Lcom/transsion/camera/app/common/mode/IVideoModeCallback;

    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/video/VideoMode;->mVideoHDRState:Z

    invoke-interface {p2, v0}, Lcom/transsion/camera/app/common/mode/IVideoModeCallback;->setVideoHDRState(Z)V

    .line 1439
    :cond_7d
    iget-object p2, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v0, "key_video_preisp"

    invoke-interface {p2, v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryEntryValues(Ljava/lang/String;)Ljava/util/List;

    move-result-object p2

    .line 1440
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v3

    iget-boolean v3, v3, Lcom/transsion/camera/utils/CustomConfigUtil;->mIsVideoPreIspSupport:Z

    if-eqz v3, :cond_b4

    if-eqz p2, :cond_b4

    .line 1441
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-le p2, v2, :cond_b4

    .line 1442
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p2

    iget-boolean p2, p2, Lcom/transsion/camera/utils/CustomConfigUtil;->mIsPreIspHintEnabled:Z

    if-eqz p2, :cond_b4

    iget-object p2, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    .line 1443
    invoke-interface {p2, v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "off"

    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_b4

    if-eqz v1, :cond_b4

    iget-boolean p2, p0, Lcom/transsion/camera/feature/mode/video/VideoMode;->mIsPreIspHintShown:Z

    if-nez p2, :cond_b4

    .line 1446
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/video/VideoMode;->showPreispHint()V

    .line 1449
    :cond_b4
    iget-boolean p2, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mIsLowlightHintSupport:Z

    if-eqz p2, :cond_ce

    .line 1450
    iget-boolean p2, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mPaused:Z

    if-eqz p2, :cond_bd

    goto :goto_ce

    .line 1453
    :cond_bd
    aget p1, p1, p3

    iget p2, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mSuperAntiLowLightBvLimit:I

    if-gt p1, p2, :cond_cb

    iget-boolean p1, p0, Lcom/transsion/camera/feature/mode/video/VideoMode;->mVideoModeSuperAntiValueOn:Z

    if-eqz p1, :cond_cb

    .line 1455
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/video/VideoMode;->showLowlightHint()V

    return-void

    .line 1457
    :cond_cb
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/video/VideoMode;->hideLowlightHint()V

    :cond_ce
    :goto_ce
    return-void
.end method

.method private enableDVMask()V
    .registers 3

    .line 1343
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->supportDVGLRecording()Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_b

    .line 1346
    :cond_7
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/VideoMode;->mVideoPreviewCallback:Lcom/transsion/camera/app/common/mode/IVideoModeCallback;

    if-nez v0, :cond_c

    :goto_b
    return-void

    .line 1349
    :cond_c
    iget p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mScreenFormType:I

    const/4 v1, 0x7

    if-eq p0, v1, :cond_13

    const/4 p0, 0x1

    goto :goto_14

    :cond_13
    const/4 p0, 0x0

    :goto_14
    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/mode/IVideoModeCallback;->enableDVMask(Z)V

    return-void
.end method

.method private getConfigForSuperAntiVideo()Lcom/transsion/camera/app/common/ZoomConfig;
    .registers 8

    .line 1715
    sget v0, Lcom/transsion/camera/utils/SettingInfo;->ZOOM_RATIO_UNIT:I

    int-to-float v1, v0

    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    iget-object v3, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCurrentCameraId:Ljava/lang/String;

    .line 1716
    invoke-virtual {v2, v3}, Lcom/transsion/camera/app/common/CameraRepository;->getDeviceZoomRatio(Ljava/lang/String;)F

    move-result v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    .line 1717
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v2

    iget v2, v2, Lcom/transsion/camera/utils/CustomConfigUtil;->mSuperAntiVideoRestrictionType:I

    if-eqz v2, :cond_88

    .line 1718
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v2

    iget-boolean v2, v2, Lcom/transsion/camera/utils/CustomConfigUtil;->mSuperAntivideoSupportWide:Z

    if-nez v2, :cond_1e

    goto :goto_88

    .line 1722
    :cond_1e
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->getBackWideCameraId()Ljava/lang/String;

    move-result-object v1

    .line 1723
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/video/VideoMode;->getBackMainCameraId()Ljava/lang/String;

    move-result-object v2

    int-to-float v0, v0

    .line 1724
    iget-object v3, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    invoke-virtual {v3, v1}, Lcom/transsion/camera/app/common/CameraRepository;->getDeviceZoomRatio(Ljava/lang/String;)F

    move-result v3

    mul-float/2addr v0, v3

    float-to-int v0, v0

    .line 1726
    new-instance v3, Lcom/transsion/camera/app/common/ZoomConfig;

    invoke-direct {v3}, Lcom/transsion/camera/app/common/ZoomConfig;-><init>()V

    .line 1727
    new-instance v4, Lcom/transsion/camera/app/common/ZoomConfig$LensInfo;

    invoke-direct {v4}, Lcom/transsion/camera/app/common/ZoomConfig$LensInfo;-><init>()V

    invoke-virtual {v4, v0}, Lcom/transsion/camera/app/common/ZoomConfig$LensInfo;->setBaseRatio(I)Lcom/transsion/camera/app/common/ZoomConfig$LensInfo;

    move-result-object v4

    sget v5, Lcom/transsion/camera/utils/SettingInfo;->ZOOM_1X:I

    .line 1728
    invoke-virtual {v4, v0, v5}, Lcom/transsion/camera/app/common/ZoomConfig$LensInfo;->setRatioRange(II)Lcom/transsion/camera/app/common/ZoomConfig$LensInfo;

    move-result-object v4

    const/4 v6, 0x1

    .line 1729
    invoke-virtual {v4, v6}, Lcom/transsion/camera/app/common/ZoomConfig$LensInfo;->setLensType(I)Lcom/transsion/camera/app/common/ZoomConfig$LensInfo;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/transsion/camera/app/common/ZoomConfig$LensInfo;->setCameraId(Ljava/lang/String;)Lcom/transsion/camera/app/common/ZoomConfig$LensInfo;

    move-result-object v4

    .line 1727
    invoke-virtual {v3, v4}, Lcom/transsion/camera/app/common/ZoomConfig;->addLensInfo(Lcom/transsion/camera/app/common/ZoomConfig$LensInfo;)Lcom/transsion/camera/app/common/ZoomConfig;

    .line 1730
    new-instance v4, Lcom/transsion/camera/app/common/ZoomConfig$LensInfo;

    invoke-direct {v4}, Lcom/transsion/camera/app/common/ZoomConfig$LensInfo;-><init>()V

    invoke-virtual {v4, v5}, Lcom/transsion/camera/app/common/ZoomConfig$LensInfo;->setBaseRatio(I)Lcom/transsion/camera/app/common/ZoomConfig$LensInfo;

    move-result-object v4

    .line 1731
    invoke-virtual {v4, v5, v5, v6}, Lcom/transsion/camera/app/common/ZoomConfig$LensInfo;->setRatioRange(IIZ)Lcom/transsion/camera/app/common/ZoomConfig$LensInfo;

    move-result-object v4

    const/4 v6, 0x2

    .line 1732
    invoke-virtual {v4, v6}, Lcom/transsion/camera/app/common/ZoomConfig$LensInfo;->setLensType(I)Lcom/transsion/camera/app/common/ZoomConfig$LensInfo;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/transsion/camera/app/common/ZoomConfig$LensInfo;->setCameraId(Ljava/lang/String;)Lcom/transsion/camera/app/common/ZoomConfig$LensInfo;

    move-result-object v2

    .line 1730
    invoke-virtual {v3, v2}, Lcom/transsion/camera/app/common/ZoomConfig;->addLensInfo(Lcom/transsion/camera/app/common/ZoomConfig$LensInfo;)Lcom/transsion/camera/app/common/ZoomConfig;

    .line 1733
    invoke-virtual {v3, v0, v5}, Lcom/transsion/camera/app/common/ZoomConfig;->setZoomRange(II)Lcom/transsion/camera/app/common/ZoomConfig;

    move-result-object v2

    filled-new-array {v6}, [I

    move-result-object v4

    .line 1734
    invoke-virtual {v2, v4}, Lcom/transsion/camera/app/common/ZoomConfig;->setSupportedZoomTypes([I)Lcom/transsion/camera/app/common/ZoomConfig;

    move-result-object v2

    iget-object v4, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCurrentCameraId:Ljava/lang/String;

    .line 1735
    invoke-virtual {v2, v4}, Lcom/transsion/camera/app/common/ZoomConfig;->setCurrentLensTypeByCameraId(Ljava/lang/String;)Lcom/transsion/camera/app/common/ZoomConfig;

    move-result-object v2

    .line 1736
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCurrentCameraId:Ljava/lang/String;

    invoke-static {v1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_83

    goto :goto_84

    :cond_83
    move v0, v5

    :goto_84
    invoke-virtual {v2, v0}, Lcom/transsion/camera/app/common/ZoomConfig;->setDefaultZoomRatio(I)Lcom/transsion/camera/app/common/ZoomConfig;

    return-object v3

    .line 1719
    :cond_88
    :goto_88
    new-instance p0, Lcom/transsion/camera/app/common/ZoomConfig;

    invoke-direct {p0}, Lcom/transsion/camera/app/common/ZoomConfig;-><init>()V

    invoke-virtual {p0, v1, v1}, Lcom/transsion/camera/app/common/ZoomConfig;->setZoomRange(II)Lcom/transsion/camera/app/common/ZoomConfig;

    move-result-object p0

    return-object p0
.end method

.method private getFlashKey()Ljava/lang/String;
    .registers 2

    .line 636
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    .line 637
    const-string v0, "key_flash_facade"

    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 636
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_f

    return-object v0

    .line 640
    :cond_f
    const-string p0, "key_flash"

    return-object p0
.end method

.method private hideLowlightHint()V
    .registers 3

    .line 1483
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/video/VideoMode;->mIsLowlightHintShowing:Z

    if-eqz v0, :cond_e

    .line 1484
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/video/VideoMode;->mLowLightHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->hideHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    const/4 v0, 0x0

    .line 1485
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/video/VideoMode;->mIsLowlightHintShowing:Z

    :cond_e
    return-void
.end method

.method private initDVModePreviewCover()V
    .registers 4

    .line 218
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-nez v0, :cond_5

    return-void

    .line 221
    :cond_5
    invoke-interface {v0}, Lcom/transsion/camera/app/common/IAppUI;->getModeInflateRoot()Landroid/view/ViewGroup;

    move-result-object v0

    .line 222
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    sget v1, Lcom/transsion/camera/R$layout;->include_dvmode_preview_cover:I

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    .line 223
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method private initGLRecorder(Lcom/transsion/camera/app/common/IAppUI;)V
    .registers 3

    .line 318
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->onCreatePhotoHelper()Lcom/transsion/camera/app/common/mode/CommonPhotoHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/video/VideoMode;->mPhotoHelper:Lcom/transsion/camera/app/common/mode/CommonPhotoHelper;

    .line 319
    invoke-interface {p1}, Lcom/transsion/camera/app/common/IAppUI;->getPreviewOperator()Lcom/transsion/camera/app/common/preview/IPreviewOperator;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/video/VideoMode;->mPreviewOperator:Lcom/transsion/camera/app/common/preview/IPreviewOperator;

    .line 320
    new-instance p1, Lcom/transsion/camera/app/common/recorder/RecorderManager$Builder;

    invoke-direct {p1}, Lcom/transsion/camera/app/common/recorder/RecorderManager$Builder;-><init>()V

    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    .line 321
    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/common/recorder/RecorderManager$Builder;->setContext(Landroid/content/Context;)Lcom/transsion/camera/app/common/recorder/RecorderManager$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mVideoHelper:Lcom/transsion/camera/app/common/mode/CommonVideoHelper;

    .line 322
    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/common/recorder/RecorderManager$Builder;->setVideoHelper(Lcom/transsion/camera/app/common/mode/CommonVideoHelper;)Lcom/transsion/camera/app/common/recorder/RecorderManager$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    .line 323
    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/common/recorder/RecorderManager$Builder;->setSettingController(Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)Lcom/transsion/camera/app/common/recorder/RecorderManager$Builder;

    move-result-object p1

    .line 324
    invoke-virtual {p1, p0}, Lcom/transsion/camera/app/common/recorder/RecorderManager$Builder;->setPolicy(Lcom/transsion/camera/app/common/recorder/IVideoContract$IMediaRecorderPolicy;)Lcom/transsion/camera/app/common/recorder/RecorderManager$Builder;

    move-result-object p1

    .line 325
    invoke-virtual {p1, p0}, Lcom/transsion/camera/app/common/recorder/RecorderManager$Builder;->setCallback(Lcom/transsion/camera/app/common/recorder/IVideoContract$IMediaRecorderCallback;)Lcom/transsion/camera/app/common/recorder/RecorderManager$Builder;

    move-result-object p1

    .line 326
    invoke-virtual {p1, p0}, Lcom/transsion/camera/app/common/recorder/RecorderManager$Builder;->setCameraRecorder(Lcom/transsion/camera/app/common/recorder/IVideoContract$ICameraRecorder;)Lcom/transsion/camera/app/common/recorder/RecorderManager$Builder;

    move-result-object p1

    .line 327
    invoke-virtual {p1, p0}, Lcom/transsion/camera/app/common/recorder/RecorderManager$Builder;->setVideoStateCallback(Lcom/transsion/camera/app/common/recorder/IVideoContract$IVideoStateCallback;)Lcom/transsion/camera/app/common/recorder/RecorderManager$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/VideoMode;->mPreviewOperator:Lcom/transsion/camera/app/common/preview/IPreviewOperator;

    .line 328
    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/common/recorder/RecorderManager$Builder;->setPreviewOperator(Lcom/transsion/camera/app/common/preview/IPreviewOperator;)Lcom/transsion/camera/app/common/recorder/RecorderManager$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/VideoMode;->mTextureHolder:Lcom/transsion/camera/featurelibs/media/ITextureHolder;

    .line 329
    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/common/recorder/RecorderManager$Builder;->setTextureHolder(Lcom/transsion/camera/featurelibs/media/ITextureHolder;)Lcom/transsion/camera/app/common/recorder/RecorderManager$Builder;

    move-result-object p1

    .line 330
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/recorder/RecorderManager$Builder;->build()Lcom/transsion/camera/app/common/recorder/RecorderManager;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mTextureRecorder:Lcom/transsion/camera/app/common/recorder/RecorderManager;

    .line 331
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/recorder/RecorderManager;->init()V

    return-void
.end method

.method private initVideoModeUI(Landroid/view/LayoutInflater;Lcom/transsion/camera/app/common/ui/VideoUISpec;)V
    .registers 4

    .line 866
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/video/VideoMode;->onCreateVideoUI()Lcom/transsion/camera/app/ui/mode/video/VideoUI;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/video/VideoMode;->mVideoUI:Lcom/transsion/camera/app/ui/mode/video/VideoUI;

    .line 867
    invoke-virtual {p1, p2}, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->initVideoUI(Lcom/transsion/camera/app/common/ui/VideoUISpec;)V

    .line 868
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/video/VideoMode;->mVideoUI:Lcom/transsion/camera/app/ui/mode/video/VideoUI;

    iget-object p2, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-virtual {p1, p2}, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->setAppUI(Lcom/transsion/camera/app/common/IAppUI;)V

    .line 869
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/video/VideoMode;->mVideoUI:Lcom/transsion/camera/app/ui/mode/video/VideoUI;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->getModeSettingUISpec()Lcom/transsion/camera/app/common/ModeSettingUISpec;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->setModeSettingUISpec(Lcom/transsion/camera/app/common/ModeSettingUISpec;)V

    .line 870
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->getOrientation()I

    move-result p1

    const/4 p2, 0x6

    .line 871
    iget v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mScreenFormType:I

    if-ne p2, v0, :cond_28

    .line 872
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p1}, Lcom/transsion/camera/app/common/IAppUI;->getAodUIOrientation()I

    move-result p1

    .line 874
    :cond_28
    iget-object p2, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v0, "key_fold_switch_preview"

    invoke-interface {p2, v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 875
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/VideoMode;->mVideoUI:Lcom/transsion/camera/app/ui/mode/video/VideoUI;

    invoke-virtual {v0, p2}, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->updateSwitchPreviewValue(Ljava/lang/String;)V

    .line 876
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/video/VideoMode;->mVideoUI:Lcom/transsion/camera/app/ui/mode/video/VideoUI;

    iget v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mScreenFormType:I

    invoke-virtual {p2, v0, p1}, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->setScreenFormType(II)V

    .line 877
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    new-instance p2, Lcom/transsion/camera/feature/mode/video/VideoMode$$ExternalSyntheticLambda4;

    invoke-direct {p2, p0}, Lcom/transsion/camera/feature/mode/video/VideoMode$$ExternalSyntheticLambda4;-><init>(Lcom/transsion/camera/feature/mode/video/VideoMode;)V

    invoke-interface {p1, p2}, Lcom/transsion/camera/app/common/IAppUI;->setVideoPowerSavingListener(Lcom/transsion/camera/app/common/IAppUIListener$VideoPowerSavingListener;)V

    .line 878
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    iget-object p2, p0, Lcom/transsion/camera/feature/mode/video/VideoMode;->mVideoUI:Lcom/transsion/camera/app/ui/mode/video/VideoUI;

    invoke-interface {p1, p2}, Lcom/transsion/camera/app/common/IAppUI;->registerPreviewRectListener(Lcom/transsion/camera/app/common/IAppUIListener$IPreviewRectListener;)V

    .line 879
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/video/VideoMode;->mVideoUI:Lcom/transsion/camera/app/ui/mode/video/VideoUI;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->updateLowLight(Z)V

    .line 880
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/video/VideoMode;->mVideoUI:Lcom/transsion/camera/app/ui/mode/video/VideoUI;

    new-instance p2, Lcom/transsion/camera/feature/mode/video/VideoMode$2;

    invoke-direct {p2, p0}, Lcom/transsion/camera/feature/mode/video/VideoMode$2;-><init>(Lcom/transsion/camera/feature/mode/video/VideoMode;)V

    invoke-virtual {p1, p2}, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->setOnRecordingTimeFullListener(Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI$OnRecordingTimeFullListener;)V

    return-void
.end method

.method private declared-synchronized initVideoPreviewCallback()V
    .registers 5

    monitor-enter p0

    .line 1312
    :try_start_1
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[initVideoPreviewCallback], mIsVideoHDRInited="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/feature/mode/video/VideoMode;->mIsVideoPreviewCallbackInit:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " , mIsVideoPreviewCallbackInit:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/feature/mode/video/VideoMode;->mIsVideoPreviewCallbackInit:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1313
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/video/VideoMode;->mIsVideoPreviewCallbackInit:Z

    if-eqz v0, :cond_32

    .line 1314
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "[initVideoPreviewCallback], return"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_2e
    .catchall {:try_start_1 .. :try_end_2e} :catchall_30

    .line 1315
    monitor-exit p0

    return-void

    :catchall_30
    move-exception v0

    goto :goto_6f

    .line 1317
    :cond_32
    :try_start_32
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/VideoMode;->mVideoPreviewCallback:Lcom/transsion/camera/app/common/mode/IVideoModeCallback;

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/video/VideoMode;->mPreviewOperator:Lcom/transsion/camera/app/common/preview/IPreviewOperator;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->getOrientation()I

    move-result v3

    invoke-interface {v0, v1, v2, v3}, Lcom/transsion/camera/app/common/mode/IVideoModeCallback;->init(Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/preview/IPreviewOperator;I)V

    .line 1318
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/VideoMode;->mVideoPreviewCallback:Lcom/transsion/camera/app/common/mode/IVideoModeCallback;

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/mode/IVideoModeCallback;->initAppUI(Lcom/transsion/camera/app/common/IAppUI;)V

    .line 1319
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/VideoMode;->mVideoPreviewCallback:Lcom/transsion/camera/app/common/mode/IVideoModeCallback;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/video/VideoMode;->mHDRDataPreviewCallback:Lcom/transsion/camera/app/common/mode/IVideoHDRRecordingCallback;

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/mode/IVideoModeCallback;->setHDRDataPreviewDataCallback(Lcom/transsion/camera/app/common/mode/IVideoHDRRecordingCallback;)V

    .line 1320
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/VideoMode;->mVideoPreviewCallback:Lcom/transsion/camera/app/common/mode/IVideoModeCallback;

    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v1

    iget-boolean v1, v1, Lcom/transsion/camera/utils/CustomConfigUtil;->mBackWideSupport360Hdr:Z

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/mode/IVideoModeCallback;->setVideoBackWideSupport360Hdr(Z)V

    .line 1321
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/video/VideoMode;->enableDVMask()V

    .line 1322
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/mode/video/VideoMode;->isModeSupportVideoAsd(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_6a

    .line 1323
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/VideoMode;->mVideoPreviewCallback:Lcom/transsion/camera/app/common/mode/IVideoModeCallback;

    iget-boolean v1, p0, Lcom/transsion/camera/feature/mode/video/VideoMode;->mVideoHDRState:Z

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/mode/IVideoModeCallback;->setVideoHDRState(Z)V

    :cond_6a
    const/4 v0, 0x1

    .line 1325
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/video/VideoMode;->mIsVideoPreviewCallbackInit:Z
    :try_end_6d
    .catchall {:try_start_32 .. :try_end_6d} :catchall_30

    .line 1326
    monitor-exit p0

    return-void

    :goto_6f
    :try_start_6f
    monitor-exit p0
    :try_end_70
    .catchall {:try_start_6f .. :try_end_70} :catchall_30

    throw v0
.end method

.method private isVideoBeautyHasConfig(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4

    .line 814
    invoke-static {p1, p3}, Lcom/transsion/camera/utils/CameraUtil;->getStringArray(Landroid/content/Context;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p2}, Lcom/transsion/camera/utils/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private isVideoBeautyNeedReduce(I)Z
    .registers 10

    .line 1069
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/camera/R$bool;->is_video_beauty_preview_size_reduce:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_e8

    .line 1070
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->getVideoBeautyType(Landroid/content/Context;)I

    move-result v0

    const/4 v2, 0x2

    const-string v3, "key_video_facebeauty"

    const/4 v4, 0x1

    if-ne v0, v2, :cond_9a

    .line 1071
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v0, v3}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1072
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getCameraId()Ljava/lang/String;

    move-result-object p0

    .line 1073
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/transsion/camera/app/common/CameraRepository;->isBackMainCamera(Ljava/lang/String;)Z

    move-result v2

    const-string/jumbo v3, "video_facebeauty_off"

    const-string v5, ", cameraId: "

    const-string v6, "[VideoMode] isVideoBeautyNeedReduce videoBeauty = "

    if-nez v2, :cond_79

    .line 1074
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/transsion/camera/app/common/CameraRepository;->isBackSATCamera(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_43

    goto :goto_79

    .line 1080
    :cond_43
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/transsion/camera/app/common/CameraRepository;->isFrontMainCamera(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e8

    .line 1081
    sget-object v2, Lcom/transsion/camera/feature/mode/video/VideoMode;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", quality = "

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1083
    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_e8

    const/4 p0, 0x5

    if-ne p1, p0, :cond_e8

    return v4

    .line 1075
    :cond_79
    :goto_79
    sget-object p1, Lcom/transsion/camera/feature/mode/video/VideoMode;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1077
    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_e8

    return v4

    .line 1088
    :cond_9a
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->getVideoBeautyType(Landroid/content/Context;)I

    move-result p1

    const-string v0, "0"

    const-string v2, "key_face_beauty"

    if-ne p1, v4, :cond_ca

    .line 1089
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->isSupportLiteFaceBeauty()Z

    move-result p1

    if-eqz p1, :cond_bc

    .line 1090
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {p0, v2}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_bb

    .line 1091
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_bb

    return v4

    :cond_bb
    return v1

    .line 1093
    :cond_bc
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {p0, v3}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "video_facebeauty_on"

    invoke-static {p1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0

    .line 1094
    :cond_ca
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->isSupportLiteFaceBeauty()Z

    move-result p1

    if-eqz p1, :cond_e8

    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->getVideoBeautyType(Landroid/content/Context;)I

    move-result p1

    const/4 v3, 0x3

    if-ne p1, v3, :cond_e8

    .line 1095
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {p0, v2}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_e8

    .line 1096
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_e8

    return v4

    :cond_e8
    return v1
.end method

.method private isVideoBeautyOn()Z
    .registers 2

    .line 1176
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v0, "key_video_facebeauty"

    .line 1177
    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1176
    const-string/jumbo v0, "video_facebeauty_on"

    invoke-static {v0, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method private isVideoHumanDetectSupported(Landroid/content/Context;)Z
    .registers 2

    .line 1104
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/transsion/camera/R$bool;->video_mode_human_detect_support:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    return p0
.end method

.method private isVideoMakeUpOn()Z
    .registers 2

    .line 1171
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v0, "key_video_makeup"

    .line 1172
    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1171
    const-string v0, "on"

    invoke-static {v0, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method private isVideoPortraitNeedReduce()Z
    .registers 3

    .line 1060
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v1, "key_video_portrait"

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "on"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_20

    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    .line 1061
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/transsion/camera/R$bool;->is_video_portrai_preview_size_reduce:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    if-eqz p0, :cond_20

    const/4 p0, 0x1

    return p0

    :cond_20
    const/4 p0, 0x0

    return p0
.end method

.method private isVideoPortraitOn()Z
    .registers 2

    .line 1181
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v0, "key_video_portrait"

    .line 1182
    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1181
    const-string v0, "on"

    invoke-static {v0, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method private isWideOrLongFocusSupport(Ljava/lang/String;)Z
    .registers 9

    .line 1211
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/camera/R$bool;->video_mode_backwide_support_360hdr:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 1212
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->isVideoSuperNightSupport()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_18

    if-eqz v0, :cond_24

    .line 1213
    :cond_18
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/transsion/camera/app/common/CameraRepository;->isBackWideCamera(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_24

    move v4, v3

    goto :goto_25

    :cond_24
    move v4, v2

    :goto_25
    if-eqz v1, :cond_33

    .line 1214
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/transsion/camera/app/common/CameraRepository;->isBackLongFocusCamera(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_33

    move p1, v3

    goto :goto_34

    :cond_33
    move p1, v2

    .line 1215
    :goto_34
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "backWideSupport360Hdr:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", isVideoSuperNightSupport:"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ",isWideSupport:"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ",isLongFocusSupport:"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-nez v4, :cond_68

    if-eqz p1, :cond_67

    goto :goto_68

    :cond_67
    return v2

    :cond_68
    :goto_68
    return v3
.end method

.method private synthetic lambda$init$0(I)V
    .registers 8

    .line 297
    iget v0, p0, Lcom/transsion/camera/feature/mode/video/VideoMode;->mStableStatus:I

    const/4 v1, 0x2

    if-ne v1, v0, :cond_7

    if-ne v1, p1, :cond_b

    :cond_7
    if-eq v1, v0, :cond_42

    if-ne v1, p1, :cond_42

    .line 299
    :cond_b
    iput p1, p0, Lcom/transsion/camera/feature/mode/video/VideoMode;->mStableStatus:I

    .line 300
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    if-eqz v0, :cond_42

    .line 301
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "tripodModeChanged: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v1, p1, :cond_24

    move v5, v4

    goto :goto_25

    :cond_24
    move v5, v3

    :goto_25
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 302
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    if-ne v1, p1, :cond_34

    move v3, v4

    :cond_34
    invoke-virtual {v0, v3}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->tripodModeChanged(Z)V

    .line 303
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    const-string p1, "key_asd"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->requestChangeSettingValueJustSelf([Ljava/lang/String;)V

    :cond_42
    return-void
.end method

.method private synthetic lambda$new$1(Landroid/view/View;)V
    .registers 3

    .line 907
    sget-object p1, Lcom/transsion/camera/feature/mode/video/VideoMode;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "[mPauseResumeListener] click"

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 908
    iget-boolean p1, p0, Lcom/transsion/camera/feature/mode/video/VideoMode;->mIsGLRecording:Z

    if-eqz p1, :cond_11

    .line 909
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mTextureRecorder:Lcom/transsion/camera/app/common/recorder/RecorderManager;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/recorder/RecorderManager;->pauseResume()V

    return-void

    .line 911
    :cond_11
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->pauseResumeRecording()V

    return-void
.end method

.method private needReducePreviewSize(I)Z
    .registers 5

    .line 1043
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/video/VideoMode;->isVideoPortraitNeedReduce()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_2b

    .line 1044
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/video/VideoMode;->isVideoBeautyNeedReduce(I)Z

    move-result p1

    if-eqz p1, :cond_e

    goto :goto_2b

    .line 1048
    :cond_e
    iget p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mScreenFormType:I

    const/4 v0, 0x7

    const/4 v2, 0x0

    if-ne p1, v0, :cond_2a

    .line 1049
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v0, "key_360_video_hdr"

    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "on"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_29

    .line 1050
    iget-boolean p0, p0, Lcom/transsion/camera/feature/mode/video/VideoMode;->mVideoHDRState:Z

    if-eqz p0, :cond_29

    return v2

    :cond_29
    return v1

    :cond_2a
    return v2

    :cond_2b
    :goto_2b
    return v1
.end method

.method private saveJpegToFile([BLandroid/graphics/Bitmap;)V
    .registers 7

    .line 1387
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mStorageOperator:Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;

    if-nez v0, :cond_5

    return-void

    .line 1392
    :cond_5
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getLocationManager()Lcom/transsion/camera/app/common/location/LocationManager;

    move-result-object v1

    const-string v2, "key_location"

    invoke-virtual {v1, v2}, Lcom/transsion/camera/app/common/location/LocationManager;->getCurrentLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v1

    .line 1393
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/video/VideoMode;->mPhotoHelper:Lcom/transsion/camera/app/common/mode/CommonPhotoHelper;

    .line 1394
    invoke-interface {v0}, Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;->getCameraDirectory()Ljava/lang/String;

    move-result-object v3

    .line 1393
    invoke-virtual {v2, p1, p2, v1, v3}, Lcom/transsion/camera/app/common/mode/CommonPhotoHelper;->createContentValues([BLandroid/graphics/Bitmap;Landroid/location/Location;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v1

    .line 1395
    new-instance v2, Lcom/transsion/camera/feature/mode/video/VideoMode$5;

    invoke-direct {v2, p0}, Lcom/transsion/camera/feature/mode/video/VideoMode$5;-><init>(Lcom/transsion/camera/feature/mode/video/VideoMode;)V

    invoke-interface {v0, v1, p1, p2, v2}, Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;->addPhotoSaveRequest(Landroid/content/ContentValues;[BLandroid/graphics/Bitmap;Lcom/transsion/camera/app/common/storage/MediaSaver$MediaSaverListener;)V

    return-void
.end method

.method private showLowlightHint()V
    .registers 3

    .line 1474
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/video/VideoMode;->mIsLowlightHintShowing:Z

    if-eqz v0, :cond_5

    return-void

    .line 1477
    :cond_5
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/VideoMode;->mLowLightHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/video/VideoMode;->mLowLightHintText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ui/HintInfo;->setMessage(Ljava/lang/String;)V

    .line 1478
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/video/VideoMode;->mLowLightHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->showHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    const/4 v0, 0x1

    .line 1479
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/video/VideoMode;->mIsLowlightHintShowing:Z

    return-void
.end method

.method private showPreispHint()V
    .registers 5

    .line 1464
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/VideoMode;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    sget v2, Lcom/transsion/camera/R$string;->video_preisp_hint:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ui/HintInfo;->setMessage(Ljava/lang/String;)V

    .line 1465
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/VideoMode;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ui/HintInfo;->enableBackground(Z)V

    .line 1466
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/VideoMode;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ui/HintInfo;->setHighlight(Z)V

    .line 1467
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/video/VideoMode;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-interface {v0, v2}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->showHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    .line 1468
    iput-boolean v1, p0, Lcom/transsion/camera/feature/mode/video/VideoMode;->mIsPreIspHintShown:Z

    .line 1469
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getDataStore()Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object p0

    .line 1470
    const-string v0, "on"

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v2

    const-string v3, "key_video_preisp_hint"

    invoke-virtual {p0, v3, v0, v2, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method private declared-synchronized unInitVideoPreviewCallback()V
    .registers 4

    monitor-enter p0

    .line 1329
    :try_start_1
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[unInitVideoPreviewCallback] mVideoPreviewCallback:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/video/VideoMode;->mVideoPreviewCallback:Lcom/transsion/camera/app/common/mode/IVideoModeCallback;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " , mIsVideoPreviewCallbackInit:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/feature/mode/video/VideoMode;->mIsVideoPreviewCallbackInit:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1330
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/video/VideoMode;->mIsVideoPreviewCallbackInit:Z

    if-nez v0, :cond_32

    .line 1331
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "[unInitVideoPreviewCallback], return"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_2e
    .catchall {:try_start_1 .. :try_end_2e} :catchall_30

    .line 1332
    monitor-exit p0

    return-void

    :catchall_30
    move-exception v0

    goto :goto_46

    :cond_32
    const/4 v0, 0x0

    .line 1334
    :try_start_33
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/video/VideoMode;->mIsVideoPreviewCallbackInit:Z

    .line 1335
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/VideoMode;->mVideoPreviewCallback:Lcom/transsion/camera/app/common/mode/IVideoModeCallback;

    if-eqz v0, :cond_44

    const/4 v1, 0x0

    .line 1336
    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/mode/IVideoModeCallback;->setHDRDataPreviewDataCallback(Lcom/transsion/camera/app/common/mode/IVideoHDRRecordingCallback;)V

    .line 1337
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/VideoMode;->mVideoPreviewCallback:Lcom/transsion/camera/app/common/mode/IVideoModeCallback;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/mode/IVideoModeCallback;->unInit()V

    .line 1338
    iput-object v1, p0, Lcom/transsion/camera/feature/mode/video/VideoMode;->mVideoPreviewCallback:Lcom/transsion/camera/app/common/mode/IVideoModeCallback;
    :try_end_44
    .catchall {:try_start_33 .. :try_end_44} :catchall_30

    .line 1340
    :cond_44
    monitor-exit p0

    return-void

    :goto_46
    :try_start_46
    monitor-exit p0
    :try_end_47
    .catchall {:try_start_46 .. :try_end_47} :catchall_30

    throw v0
.end method

.method private updateGLRecordingOrientation()V
    .registers 3

    .line 826
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->isSupportGLRecording()Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/VideoMode;->mVideoPreviewCallback:Lcom/transsion/camera/app/common/mode/IVideoModeCallback;

    if-eqz v0, :cond_17

    .line 827
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v1}, Lcom/transsion/camera/app/common/IAppUI;->getOrientation()I

    move-result v1

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->isCameraFacingBack()Z

    move-result p0

    invoke-interface {v0, v1, p0}, Lcom/transsion/camera/app/common/mode/IVideoModeCallback;->onOrientationChanged(IZ)V

    :cond_17
    return-void
.end method

.method private updateSupportedList(Ljava/util/ArrayList;Ljava/lang/String;Z)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    if-eqz p3, :cond_41

    .line 672
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->getSupportedHighFpsResolutions()Ljava/util/List;

    move-result-object p0

    .line 673
    const-string p2, "6_60"

    const/4 p3, 0x6

    const/4 v0, -0x1

    if-eqz p0, :cond_34

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    const/4 v1, 0x1

    if-le p0, v1, :cond_34

    const/16 p0, 0x8

    .line 674
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p0

    if-eq p0, v0, :cond_26

    .line 676
    const-string v1, "8_60"

    invoke-virtual {p1, p0, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 678
    :cond_26
    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p0

    if-eq p0, v0, :cond_41

    .line 680
    invoke-virtual {p1, p0, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    return-void

    .line 683
    :cond_34
    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p0

    if-eq p0, v0, :cond_41

    .line 685
    invoke-virtual {p1, p0, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :cond_41
    return-void
.end method

.method private updateVideoPowerSavingUIVisibility(Z)V
    .registers 3

    .line 1593
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/VideoMode;->mVideoUI:Lcom/transsion/camera/app/ui/mode/video/VideoUI;

    iget-boolean p0, p0, Lcom/transsion/camera/feature/mode/video/VideoMode;->mIsGLRecording:Z

    invoke-virtual {v0, p1, p0}, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->updateVideoPowerSavingUIVisibility(ZZ)V

    return-void
.end method

.method private updateVideoPreviewCallback(Ljava/lang/String;)V
    .registers 5

    .line 429
    sget-object v0, Lcom/transsion/camera/feature/mode/video/VideoMode;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateVideoCallback callbackType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " , mVideoPreviewCallback:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/video/VideoMode;->mVideoPreviewCallback:Lcom/transsion/camera/app/common/mode/IVideoModeCallback;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 430
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/video/VideoMode;->unInitVideoPreviewCallback()V

    .line 431
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/ReflectionUtils;->instance(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/app/common/mode/IVideoModeCallback;

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/video/VideoMode;->mVideoPreviewCallback:Lcom/transsion/camera/app/common/mode/IVideoModeCallback;

    .line 432
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/video/VideoMode;->initVideoPreviewCallback()V

    return-void
.end method

.method private updateVideoQualityRelation(Ljava/util/List;Lcom/transsion/camera/app/common/relation/Relation;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/transsion/camera/app/common/relation/Relation;",
            ")V"
        }
    .end annotation

    .line 644
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v0, "key_video_quality"

    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 645
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p1, :cond_8a

    .line 647
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_15
    add-int/lit8 v5, v2, -0x1

    if-ge v4, v5, :cond_36

    .line 649
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_15

    .line 651
    :cond_36
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 652
    sget-object v2, Lcom/transsion/camera/feature/mode/video/VideoMode;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateVideoQualityRelation supportStr:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 653
    invoke-interface {p1, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_64

    .line 654
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v0, p0, p1}, Lcom/transsion/camera/app/common/relation/Relation;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 656
    :cond_64
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    if-lez p0, :cond_8a

    const/4 p0, 0x6

    .line 657
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p0

    const/4 v2, -0x1

    if-eq p0, v2, :cond_7d

    .line 660
    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    goto :goto_83

    .line 662
    :cond_7d
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 664
    :goto_83
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v0, p0, p1}, Lcom/transsion/camera/app/common/relation/Relation;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_8a
    return-void
.end method

.method private updateVideoTheramalWaring()V
    .registers 5

    .line 546
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v1, "key_video_quality"

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 547
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v2, "key_anti_video"

    invoke-interface {v1, v2}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 548
    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v3, "key_super_anti_video"

    invoke-interface {v2, v3}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 550
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/16 v3, 0x8

    .line 551
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2e

    const-string v3, "6_60"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_46

    .line 552
    :cond_2e
    const-string v0, "on"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3c

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_46

    .line 553
    :cond_3c
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mVideoThermalWaringSupport:Z

    if-eqz v0, :cond_46

    const/4 v0, 0x1

    goto :goto_47

    :cond_46
    const/4 v0, 0x0

    .line 550
    :goto_47
    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;->setVideoThermalWaringSupport(Z)V

    return-void
.end method


# virtual methods
.method protected addVideoToDataBase(Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo;IJ)V
    .registers 5

    .line 1307
    invoke-super {p0, p1, p2, p3, p4}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->addVideoToDataBase(Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo;IJ)V

    .line 1308
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->notifyToIdle()V

    return-void
.end method

.method protected getBackMainCameraId()Ljava/lang/String;
    .registers 5

    .line 1773
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    .line 1774
    invoke-virtual {p0, v1, v2, v3}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->isSupportSAT(Landroid/content/Context;ZLcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)Z

    move-result p0

    .line 1773
    invoke-virtual {v0, p0}, Lcom/transsion/camera/app/common/CameraRepository;->getBackDefaultCamera(Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected getBackMaxZoomRatio()I
    .registers 2

    .line 1803
    invoke-static {}, Lcom/transsion/camera/utils/FeatureSupport;->isForceZoom10XForVideo()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1804
    sget p0, Lcom/transsion/camera/utils/SettingInfo;->ZOOM_10X:I

    return p0

    .line 1806
    :cond_9
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/video/VideoMode;->getBackTeleCameraId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 1807
    sget p0, Lcom/transsion/camera/utils/SettingInfo;->ZOOM_15X:I

    return p0

    .line 1809
    :cond_12
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->getBackMaxZoomRatio()I

    move-result p0

    return p0
.end method

.method protected getBackTeleCameraId()Ljava/lang/String;
    .registers 8

    .line 1743
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v1, "key_video_preisp"

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "on"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 1744
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/CameraRepository;->getPreIspTeleFakeId()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1747
    :cond_19
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/utils/CustomConfigUtil;->isQcomCaptureFlow()Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 1748
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/CameraRepository;->getBackLongFocusCamera()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_ad

    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    .line 1749
    invoke-virtual {p0, v0, v1, v2}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->isSupportSAT(Landroid/content/Context;ZLcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)Z

    move-result v0

    if-eqz v0, :cond_ad

    .line 1750
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/CameraRepository;->getBackSATCamera()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1753
    :cond_3d
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getDataStore()Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    .line 1754
    invoke-interface {v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getDataStore()Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v1

    .line 1753
    const-string v2, "key_video_hdr_10_plus"

    const-string v3, "off"

    invoke-virtual {v0, v2, v3, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1755
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getDataStore()Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    .line 1756
    invoke-interface {v2}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getDataStore()Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object v2

    invoke-virtual {v2}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v2

    .line 1755
    const-string v4, "key_com_video_hdr"

    invoke-virtual {v1, v4, v3, v2}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1757
    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v2}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getDataStore()Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object v2

    iget-object v4, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    .line 1758
    invoke-interface {v4}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getDataStore()Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object v4

    invoke-virtual {v4}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v4

    .line 1757
    const-string v5, "key_video_facebeauty"

    const-string/jumbo v6, "video_facebeauty_off"

    invoke-virtual {v2, v5, v6, v4}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1759
    iget-object v4, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    invoke-virtual {v4}, Lcom/transsion/camera/app/common/CameraRepository;->getBackLongFocusCamera()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_ad

    iget-object v4, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    .line 1760
    invoke-virtual {p0, v4}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->isSupportSAT(Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)Z

    move-result v4

    if-eqz v4, :cond_ad

    .line 1761
    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_ad

    .line 1762
    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_ad

    .line 1763
    invoke-static {v2, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_ad

    .line 1764
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/CameraRepository;->getBackSATCamera()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1768
    :cond_ad
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->getBackTeleCameraId()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected getBackZoomConfig()Lcom/transsion/camera/app/common/ZoomConfig;
    .registers 7

    .line 1685
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v1, "key_super_anti_video"

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "super"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1687
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/video/VideoMode;->getConfigForSuperAntiVideo()Lcom/transsion/camera/app/common/ZoomConfig;

    move-result-object p0

    return-object p0

    .line 1690
    :cond_15
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->getBackZoomConfig()Lcom/transsion/camera/app/common/ZoomConfig;

    move-result-object v0

    const/16 v1, 0x10

    const/16 v2, 0x80

    const/4 v3, 0x2

    const/4 v4, 0x4

    const/16 v5, 0x8

    .line 1691
    filled-new-array {v3, v4, v5, v1, v2}, [I

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ZoomConfig;->setSupportedZoomTypes([I)Lcom/transsion/camera/app/common/ZoomConfig;

    move-result-object v1

    .line 1694
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ZoomConfig;->isSATSupported()Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_36

    iget-boolean v2, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mIsVideoRecording:Z

    if-eqz v2, :cond_36

    move v2, v3

    goto :goto_37

    :cond_36
    const/4 v2, 0x0

    :goto_37
    invoke-virtual {v1, v2}, Lcom/transsion/camera/app/common/ZoomConfig;->setZoomRangeLimited(Z)Lcom/transsion/camera/app/common/ZoomConfig;

    .line 1695
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ZoomConfig;->getCurrentLensType()I

    move-result v1

    if-ne v1, v3, :cond_55

    .line 1696
    sget v1, Lcom/transsion/camera/utils/SettingInfo;->ZOOM_RATIO_UNIT:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    .line 1697
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->getBackWideCameraId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Lcom/transsion/camera/app/common/CameraRepository;->getDeviceZoomRatio(Ljava/lang/String;)F

    move-result p0

    mul-float/2addr v1, p0

    float-to-int p0, v1

    .line 1698
    sget v1, Lcom/transsion/camera/utils/SettingInfo;->ZOOM_2X:I

    invoke-virtual {v0, p0, v1}, Lcom/transsion/camera/app/common/ZoomConfig;->setLimitedZoomRange(II)Lcom/transsion/camera/app/common/ZoomConfig;

    return-object v0

    .line 1699
    :cond_55
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ZoomConfig;->getCurrentLensType()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_77

    .line 1700
    invoke-virtual {v0, v2}, Lcom/transsion/camera/app/common/ZoomConfig;->getLensInfoByType(I)Lcom/transsion/camera/app/common/ZoomConfig$LensInfo;

    move-result-object v1

    .line 1701
    invoke-virtual {v1}, Lcom/transsion/camera/app/common/ZoomConfig$LensInfo;->getCurrentRatio()I

    move-result v2

    if-lez v2, :cond_6b

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/ZoomConfig$LensInfo;->getCurrentRatio()I

    move-result v1

    goto :goto_6f

    :cond_6b
    invoke-virtual {v1}, Lcom/transsion/camera/app/common/ZoomConfig$LensInfo;->getBaseRatio()I

    move-result v1

    .line 1702
    :goto_6f
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/video/VideoMode;->getBackMaxZoomRatio()I

    move-result p0

    invoke-virtual {v0, v1, p0}, Lcom/transsion/camera/app/common/ZoomConfig;->setLimitedZoomRange(II)Lcom/transsion/camera/app/common/ZoomConfig;

    return-object v0

    .line 1704
    :cond_77
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p0

    iget-boolean p0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mZoomRatioFor13M:Z

    if-nez p0, :cond_90

    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p0

    iget-boolean p0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mZoomRatioFor8M:Z

    if-eqz p0, :cond_88

    goto :goto_90

    .line 1707
    :cond_88
    sget p0, Lcom/transsion/camera/utils/SettingInfo;->ZOOM_1X:I

    sget v1, Lcom/transsion/camera/utils/SettingInfo;->ZOOM_10X:I

    invoke-virtual {v0, p0, v1}, Lcom/transsion/camera/app/common/ZoomConfig;->setLimitedZoomRange(II)Lcom/transsion/camera/app/common/ZoomConfig;

    return-object v0

    .line 1705
    :cond_90
    :goto_90
    sget p0, Lcom/transsion/camera/utils/SettingInfo;->ZOOM_1X:I

    sget v1, Lcom/transsion/camera/utils/SettingInfo;->ZOOM_4X:I

    invoke-virtual {v0, p0, v1}, Lcom/transsion/camera/app/common/ZoomConfig;->setLimitedZoomRange(II)Lcom/transsion/camera/app/common/ZoomConfig;

    return-object v0
.end method

.method public getDataFlowType()I
    .registers 6

    .line 1111
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v1, "key_video_super_night"

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "on"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_13

    const/4 v0, 0x3

    goto :goto_14

    :cond_13
    move v0, v2

    .line 1114
    :goto_14
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v3

    invoke-virtual {v3}, Lcom/transsion/camera/utils/CustomConfigUtil;->isQcomCaptureFlow()Z

    move-result v3

    if-eqz v3, :cond_2e

    iget-object v3, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v4, "key_dol_video_hdr"

    .line 1115
    invoke-interface {v3, v4}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2e

    move v3, v2

    goto :goto_2f

    :cond_2e
    const/4 v3, 0x0

    .line 1116
    :goto_2f
    invoke-static {}, Lcom/transsion/camera/app/common/algorithm/taintdetection/TaintAlgorithm;->getInstance()Lcom/transsion/camera/app/common/algorithm/taintdetection/TaintAlgorithm;

    move-result-object v4

    invoke-virtual {v4}, Lcom/transsion/camera/app/common/algorithm/taintdetection/TaintAlgorithm;->algorithmSupport()Z

    move-result v4

    if-eqz v4, :cond_50

    .line 1117
    invoke-static {}, Lcom/transsion/camera/utils/FeatureSupport;->isForceTaintDetectRemove()Z

    move-result v4

    if-nez v4, :cond_50

    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v4, "key_video_hdr_10_plus"

    .line 1118
    invoke-interface {p0, v4}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_50

    if-nez v3, :cond_50

    const/4 v2, 0x4

    .line 1122
    :cond_50
    invoke-static {v0, v2}, Lcom/transsion/camera/adapter/DataFlowSpec;->makeDataFlowSpec(II)I

    move-result p0

    return p0
.end method

.method protected getFrontZoomConfig()Lcom/transsion/camera/app/common/ZoomConfig;
    .registers 8

    .line 1671
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->getFrontZoomConfig()Lcom/transsion/camera/app/common/ZoomConfig;

    move-result-object v0

    const/16 v1, 0x8

    const/16 v2, 0x10

    const/4 v3, 0x2

    const/4 v4, 0x4

    filled-new-array {v3, v4, v1, v2}, [I

    move-result-object v1

    .line 1672
    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ZoomConfig;->setSupportedZoomTypes([I)Lcom/transsion/camera/app/common/ZoomConfig;

    move-result-object v0

    const/high16 v1, 0x40000000    # 2.0f

    .line 1674
    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ZoomConfig;->setTickViewDegreeScaleFactor(F)Lcom/transsion/camera/app/common/ZoomConfig;

    move-result-object v0

    new-instance v1, Lcom/transsion/camera/app/common/ZoomConfig$LensInfo;

    invoke-direct {v1}, Lcom/transsion/camera/app/common/ZoomConfig$LensInfo;-><init>()V

    sget v2, Lcom/transsion/camera/utils/SettingInfo;->ZOOM_1X:I

    .line 1675
    invoke-virtual {v1, v2}, Lcom/transsion/camera/app/common/ZoomConfig$LensInfo;->setBaseRatio(I)Lcom/transsion/camera/app/common/ZoomConfig$LensInfo;

    move-result-object v1

    sget v4, Lcom/transsion/camera/utils/SettingInfo;->ZOOM_2X:I

    const/4 v5, 0x1

    .line 1676
    invoke-virtual {v1, v2, v4, v5}, Lcom/transsion/camera/app/common/ZoomConfig$LensInfo;->setRatioRange(IIZ)Lcom/transsion/camera/app/common/ZoomConfig$LensInfo;

    move-result-object v1

    .line 1677
    invoke-virtual {v1, v3}, Lcom/transsion/camera/app/common/ZoomConfig$LensInfo;->setLensType(I)Lcom/transsion/camera/app/common/ZoomConfig$LensInfo;

    move-result-object v1

    iget-object v6, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCurrentCameraId:Ljava/lang/String;

    invoke-virtual {v1, v6}, Lcom/transsion/camera/app/common/ZoomConfig$LensInfo;->setCameraId(Ljava/lang/String;)Lcom/transsion/camera/app/common/ZoomConfig$LensInfo;

    move-result-object v1

    .line 1675
    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ZoomConfig;->addLensInfo(Lcom/transsion/camera/app/common/ZoomConfig$LensInfo;)Lcom/transsion/camera/app/common/ZoomConfig;

    move-result-object v0

    new-instance v1, Lcom/transsion/camera/app/common/ZoomConfig$LensInfo;

    invoke-direct {v1}, Lcom/transsion/camera/app/common/ZoomConfig$LensInfo;-><init>()V

    .line 1678
    invoke-virtual {v1, v2}, Lcom/transsion/camera/app/common/ZoomConfig$LensInfo;->setBaseRatio(I)Lcom/transsion/camera/app/common/ZoomConfig$LensInfo;

    move-result-object v1

    .line 1679
    invoke-virtual {v1, v4, v4, v5}, Lcom/transsion/camera/app/common/ZoomConfig$LensInfo;->setRatioRange(IIZ)Lcom/transsion/camera/app/common/ZoomConfig$LensInfo;

    move-result-object v1

    .line 1680
    invoke-virtual {v1, v3}, Lcom/transsion/camera/app/common/ZoomConfig$LensInfo;->setLensType(I)Lcom/transsion/camera/app/common/ZoomConfig$LensInfo;

    move-result-object v1

    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCurrentCameraId:Ljava/lang/String;

    invoke-virtual {v1, p0}, Lcom/transsion/camera/app/common/ZoomConfig$LensInfo;->setCameraId(Ljava/lang/String;)Lcom/transsion/camera/app/common/ZoomConfig$LensInfo;

    move-result-object p0

    .line 1678
    invoke-virtual {v0, p0}, Lcom/transsion/camera/app/common/ZoomConfig;->addLensInfo(Lcom/transsion/camera/app/common/ZoomConfig$LensInfo;)Lcom/transsion/camera/app/common/ZoomConfig;

    move-result-object p0

    return-object p0
.end method

.method public getModeFeatures(Landroid/content/Context;)[Ljava/lang/String;
    .registers 10

    .line 734
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 735
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 736
    const-string v2, "key_mood_light"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 737
    const-string v2, "key_anti_video"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 738
    const-string v2, "key_super_anti_video"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 739
    const-string v2, "key_night_hawk"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 740
    const-string v2, "key_animal_eye_detection"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 741
    const-string v2, "key_eye_detection"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 742
    const-string v2, "key_tran_plugin_mode_can_support"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 743
    const-string v2, "key_transsion_filter"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 744
    const-string v2, "key_video_sight_shock"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 745
    const-string v2, "key_video_filter"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 746
    const-string v2, "key_video_effect"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 747
    const-string v2, "key_video_frame"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 748
    const-string v2, "key_activity_orientation"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 749
    const-string v2, "key_fingerprint_capture"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 750
    const-string v2, "key_distortion_correction"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 751
    sget v2, Lcom/transsion/camera/R$bool;->auto_video_fps_support:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_61

    .line 752
    const-string v2, "key_auto_video_fps"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 754
    :cond_61
    sget v2, Lcom/transsion/camera/app/common/R$bool;->dol_video_hdr_support:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_7c

    const-string v2, "com.transsion.camera.feature.setting.dolvideohdr.DolVideoHDR"

    .line 755
    invoke-static {v2}, Lcom/transsion/camera/utils/ReflectionUtils;->findClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    if-eqz v2, :cond_7c

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->isCameraFacingBack()Z

    move-result v2

    if-eqz v2, :cond_7c

    .line 756
    const-string v2, "key_dol_video_hdr"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 758
    :cond_7c
    const-string v2, "key_secondary_screen"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 759
    const-string v2, "key_video_enhance"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 760
    sget v2, Lcom/transsion/camera/R$bool;->video_asd_support:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_93

    .line 761
    const-string v2, "key_video_asd"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 763
    :cond_93
    const-string v2, "key_dxo_scene_detection"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 764
    const-string v2, "key_video_super_night"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 765
    const-string v2, "key_video_enhance_yuv"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 766
    const-string v2, "key_video_super_night_yuv"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 768
    const-string v2, "key_video_preisp"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 769
    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/video/VideoMode;->isModeSupport360VideoHDR(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_b7

    .line 770
    const-string v2, "key_360_video_hdr"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 772
    :cond_b7
    const-string v2, "key_video_facebeauty"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 773
    const-string v2, "key_video_makeup"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 774
    const-string v2, "key_video_portrait"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 775
    const-string v2, "key_video_portrait_level"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 776
    sget v2, Lcom/transsion/camera/R$array;->video_mode_interactive_setting_ui_back_entries:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const-string v3, "com.transsion.camera.feature.mode.makeup.ui.VideoFaceBeautySettingUIEntry"

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    const/4 v4, 0x1

    const/4 v5, 0x0

    const-string v6, "com.transsion.camera.feature.mode.makeup.ui.VideoFaceBeautyMakeupSettingUIEntry"

    if-nez v2, :cond_f4

    sget v2, Lcom/transsion/camera/R$array;->video_mode_interactive_setting_ui_back_entries:I

    .line 777
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f2

    goto :goto_f4

    :cond_f2
    move v2, v5

    goto :goto_f5

    :cond_f4
    :goto_f4
    move v2, v4

    .line 778
    :goto_f5
    sget v7, Lcom/transsion/camera/R$array;->video_mode_interactive_setting_ui_front_entries:I

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_117

    sget v3, Lcom/transsion/camera/R$array;->video_mode_interactive_setting_ui_front_entries:I

    .line 779
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_116

    goto :goto_117

    :cond_116
    move v4, v5

    :cond_117
    :goto_117
    if-nez v2, :cond_11b

    if-eqz v4, :cond_120

    .line 781
    :cond_11b
    const-string v2, "key_mu_face_beauty"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 783
    :cond_120
    const-string v2, "key_video_spot"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 784
    const-string v2, "key_video_spot_level"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 785
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/video/VideoMode;->isVideoHumanDetectSupported(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_135

    .line 786
    const-string p1, "key_human_detection"

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 788
    :cond_135
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->isCameraFacingBack()Z

    move-result p1

    if-eqz p1, :cond_140

    .line 789
    const-string p1, "key_micro_pan_tilt_calibration"

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 791
    :cond_140
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->isSupportLiteFaceBeauty()Z

    move-result p1

    if-eqz p1, :cond_14b

    .line 792
    const-string p1, "key_face_beauty"

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 794
    :cond_14b
    sget p1, Lcom/transsion/camera/R$bool;->video_mode_not_support_facedetection:I

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    if-eqz p1, :cond_158

    .line 795
    const-string p1, "key_limit_face_detection"

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 797
    :cond_158
    const-string p1, "key_taint_detection"

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 798
    const-string p1, "key_dv_template_entrance"

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 799
    const-string p1, "key_dv_template_entrance_option"

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 800
    const-string p1, "key_viull"

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 801
    const-string p1, "key_feature_2_mode"

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 802
    const-string p1, "key_in_sensor_zoom"

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 803
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p1

    iget-boolean p1, p1, Lcom/transsion/camera/utils/CustomConfigUtil;->mProductConfigHDRFormatSupport:Z

    if-eqz p1, :cond_189

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->isCameraFacingBack()Z

    move-result p0

    if-eqz p0, :cond_189

    .line 804
    const-string p0, "key_hdr_format"

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 806
    :cond_189
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/utils/CustomConfigUtil;->getHdr10PlusSupport()Z

    move-result p0

    if-eqz p0, :cond_198

    .line 807
    const-string p0, "key_video_hdr_10_plus"

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 810
    :cond_198
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-array p0, p0, [Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method public getModeRelation()Lcom/transsion/camera/app/common/relation/Relation;
    .registers 9

    .line 693
    invoke-static {}, Lcom/transsion/camera/feature/mode/video/VideoRestriction;->getPreviewRelation()Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object v0

    .line 694
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getCameraId()Ljava/lang/String;

    move-result-object v1

    .line 695
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/transsion/camera/app/common/CameraRepository;->isBackSATCamera(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_80

    .line 696
    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v2}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getDataStore()Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object v2

    const/4 v3, 0x0

    .line 697
    invoke-virtual {v2, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->getCameraScope(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "key_camera_zoom"

    invoke-virtual {v2, v5, v3, v4}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 698
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object v3

    invoke-virtual {v3}, Lcom/transsion/camera/app/common/CameraRepository;->getBackLongFocusCameraMiniZoom()I

    move-result v3

    .line 699
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object v4

    invoke-virtual {v4}, Lcom/transsion/camera/app/common/CameraRepository;->getBackMainCameraMiniZoom()I

    move-result v4

    .line 700
    sget-object v5, Lcom/transsion/camera/feature/mode/video/VideoMode;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[getModeRelation] cameraId:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", zoom: "

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", longFocusMiniZoom: "

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mainMiniZoom: "

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-eqz v2, :cond_8b

    .line 704
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-ge v1, v4, :cond_6f

    .line 706
    const-string/jumbo v1, "wide"

    goto :goto_76

    :cond_6f
    if-lt v1, v3, :cond_74

    .line 708
    const-string v1, "long-focus"

    goto :goto_76

    .line 710
    :cond_74
    const-string v1, "main"

    .line 712
    :goto_76
    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/transsion/camera/feature/mode/video/VideoRestriction;->getSatRelation(Landroid/content/Context;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object v1

    .line 713
    invoke-static {v0, v1}, Lcom/transsion/camera/app/common/mode/CameraMode;->mergeRelation(Lcom/transsion/camera/app/common/relation/Relation;Lcom/transsion/camera/app/common/relation/Relation;)V

    goto :goto_8b

    .line 716
    :cond_80
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    const-string v2, "reset"

    invoke-static {v1, v2}, Lcom/transsion/camera/feature/mode/video/VideoRestriction;->getSatRelation(Landroid/content/Context;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object v1

    .line 717
    invoke-static {v0, v1}, Lcom/transsion/camera/app/common/mode/CameraMode;->mergeRelation(Lcom/transsion/camera/app/common/relation/Relation;Lcom/transsion/camera/app/common/relation/Relation;)V

    .line 719
    :cond_8b
    :goto_8b
    invoke-static {}, Lcom/transsion/camera/feature/mode/video/VideoRestriction;->getCamModeRelation()Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/app/common/mode/CameraMode;->mergeRelation(Lcom/transsion/camera/app/common/relation/Relation;Lcom/transsion/camera/app/common/relation/Relation;)V

    .line 720
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->pocketScreen()Z

    move-result p0

    if-eqz p0, :cond_a4

    .line 721
    const-string p0, "key_flash"

    const-string v1, "off"

    invoke-virtual {v0, p0, v1, v1}, Lcom/transsion/camera/app/common/relation/Relation;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 722
    const-string p0, "key_flash_facade"

    invoke-virtual {v0, p0, v1, v1}, Lcom/transsion/camera/app/common/relation/Relation;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_a4
    return-object v0
.end method

.method protected getOverrideSize()Landroid/util/Size;
    .registers 1

    .line 991
    sget-boolean p0, Lcom/transsion/camera/utils/FeatureSupport;->DEBUG_VIDEO_PREVIEW_SIZE_TO_1440_X_1080:Z

    if-eqz p0, :cond_7

    .line 992
    sget-object p0, Lcom/transsion/camera/feature/mode/video/VideoMode;->DEBUG_PREVIEW_SIZE:Landroid/util/Size;

    return-object p0

    :cond_7
    const/4 p0, 0x0

    return-object p0
.end method

.method public getPreviewSize(Ljava/util/List;)Landroid/util/Size;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;)",
            "Landroid/util/Size;"
        }
    .end annotation

    .line 999
    sget-boolean v0, Lcom/transsion/camera/utils/FeatureSupport;->DEBUG_VIDEO_PREVIEW_SIZE_TO_1440_X_1080:Z

    if-eqz v0, :cond_9

    .line 1000
    sget-object p1, Lcom/transsion/camera/feature/mode/video/VideoMode;->DEBUG_PREVIEW_SIZE:Landroid/util/Size;

    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mPreviewSize:Landroid/util/Size;

    return-object p1

    .line 1003
    :cond_9
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->getPreviewSize(Ljava/util/List;)Landroid/util/Size;

    move-result-object v0

    .line 1004
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mVideoQuality:Ljava/lang/String;

    const-string v2, "_"

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/CameraUtil;->parseVideoQuality(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 1005
    invoke-direct {p0, v1}, Lcom/transsion/camera/feature/mode/video/VideoMode;->needReducePreviewSize(I)Z

    move-result v2

    const/16 v3, 0x2d0

    const/16 v4, 0x438

    if-eqz v2, :cond_4b

    if-eqz v0, :cond_4b

    .line 1006
    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v2

    if-lt v2, v4, :cond_4b

    .line 1007
    invoke-static {v1}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->qualityValid(I)Z

    move-result v2

    if-nez v2, :cond_38

    .line 1008
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "getPreviewSize videoFrameSize is null"

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 1009
    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mPreviewSize:Landroid/util/Size;

    return-object p1

    .line 1013
    :cond_38
    iget-wide v5, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mVideoRatio:D

    int-to-double v7, v3

    mul-double/2addr v5, v7

    double-to-int v2, v5

    .line 1014
    new-instance v5, Landroid/util/Size;

    invoke-direct {v5, v2, v3}, Landroid/util/Size;-><init>(II)V

    .line 1016
    invoke-interface {p1, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4b

    .line 1017
    iput-object v5, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mPreviewSize:Landroid/util/Size;

    return-object v5

    .line 1021
    :cond_4b
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/video/VideoMode;->isInVideoHDRState()Z

    move-result p1

    const/16 v2, 0x780

    const/16 v5, 0x500

    const/4 v6, 0x5

    if-nez p1, :cond_78

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/video/VideoMode;->isInVideoSightShockState()Z

    move-result p1

    if-eqz p1, :cond_5d

    goto :goto_78

    .line 1031
    :cond_5d
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p1

    iget-boolean p1, p1, Lcom/transsion/camera/utils/CustomConfigUtil;->mIsVideoPreviewSyncCamcorderProfile:Z

    if-eqz p1, :cond_75

    if-ne v1, v6, :cond_6d

    .line 1033
    new-instance v0, Landroid/util/Size;

    invoke-direct {v0, v5, v3}, Landroid/util/Size;-><init>(II)V

    goto :goto_75

    :cond_6d
    const/4 p1, 0x6

    if-ne v1, p1, :cond_75

    .line 1035
    new-instance v0, Landroid/util/Size;

    invoke-direct {v0, v2, v4}, Landroid/util/Size;-><init>(II)V

    .line 1038
    :cond_75
    :goto_75
    iput-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mPreviewSize:Landroid/util/Size;

    return-object v0

    :cond_78
    :goto_78
    if-ne v1, v6, :cond_80

    .line 1024
    new-instance p1, Landroid/util/Size;

    invoke-direct {p1, v5, v3}, Landroid/util/Size;-><init>(II)V

    goto :goto_85

    .line 1026
    :cond_80
    new-instance p1, Landroid/util/Size;

    invoke-direct {p1, v2, v4}, Landroid/util/Size;-><init>(II)V

    .line 1028
    :goto_85
    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mPreviewSize:Landroid/util/Size;

    return-object p1
.end method

.method public getPreviewViewType()Lcom/transsion/camera/utils/SettingInfo$PreviewViewType;
    .registers 1

    .line 1784
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/video/VideoMode;->mPreviewViewType:Lcom/transsion/camera/utils/SettingInfo$PreviewViewType;

    return-object p0
.end method

.method public getSettingGroup()J
    .registers 5

    .line 729
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->getSettingGroup()J

    move-result-wide v0

    const-wide/16 v2, 0x10

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public init(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Ljava/lang/String;Lcom/transsion/camera/app/common/IApp$IIntentAction;I)V
    .registers 12

    .line 230
    invoke-super/range {p0 .. p7}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->init(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Ljava/lang/String;Lcom/transsion/camera/app/common/IApp$IIntentAction;I)V

    .line 231
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p4

    iget-boolean p4, p4, Lcom/transsion/camera/utils/CustomConfigUtil;->mIsVideoPreIspSupport:Z

    const/4 p5, 0x1

    const-string p6, "on"

    if-eqz p4, :cond_35

    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p4

    iget-boolean p4, p4, Lcom/transsion/camera/utils/CustomConfigUtil;->mIsPreIspHintEnabled:Z

    if-eqz p4, :cond_35

    .line 232
    new-instance p4, Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-direct {p4, p5}, Lcom/transsion/camera/app/common/ui/HintInfo;-><init>(I)V

    iput-object p4, p0, Lcom/transsion/camera/feature/mode/video/VideoMode;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    .line 233
    iget-object p4, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {p4}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getDataStore()Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object p4

    .line 234
    const-string p7, "off"

    invoke-virtual {p4}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v0

    const-string v1, "key_video_preisp_hint"

    invoke-virtual {p4, v1, p7, v0}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p4, p6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    iput-boolean p4, p0, Lcom/transsion/camera/feature/mode/video/VideoMode;->mIsPreIspHintShown:Z

    .line 236
    :cond_35
    sget p4, Lcom/transsion/camera/app/common/R$string;->lowlight_hint:I

    invoke-virtual {p1, p4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p4

    iput-object p4, p0, Lcom/transsion/camera/feature/mode/video/VideoMode;->mLowLightHintText:Ljava/lang/String;

    .line 238
    const-string p4, "key_update_top_bar_ui"

    invoke-virtual {p0, p4}, Lcom/transsion/camera/app/common/mode/CameraMode;->registerKeyToMonitor(Ljava/lang/String;)V

    .line 239
    iget-object p4, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    invoke-static {p4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p4

    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/video/VideoMode;->createVideoUISpec()Lcom/transsion/camera/app/common/ui/VideoUISpec;

    move-result-object p7

    invoke-direct {p0, p4, p7}, Lcom/transsion/camera/feature/mode/video/VideoMode;->initVideoModeUI(Landroid/view/LayoutInflater;Lcom/transsion/camera/app/common/ui/VideoUISpec;)V

    .line 240
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->getInstance()Lcom/transsion/camera/app/common/CommonConfigUtil;

    move-result-object p4

    iget-boolean p4, p4, Lcom/transsion/camera/app/common/CommonConfigUtil;->mEnableDVMode:Z

    if-eqz p4, :cond_5a

    .line 241
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/video/VideoMode;->initDVModePreviewCover()V

    .line 243
    :cond_5a
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    sget p7, Lcom/transsion/camera/R$integer;->aod_preview_background_type:I

    .line 244
    invoke-virtual {p4, p7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p4

    if-ne p4, p5, :cond_67

    goto :goto_68

    :cond_67
    const/4 p5, 0x0

    .line 245
    :goto_68
    iput-boolean p5, p0, Lcom/transsion/camera/feature/mode/video/VideoMode;->mPreviewBackgroundSupport:Z

    .line 246
    invoke-interface {p3}, Lcom/transsion/camera/app/common/IAppUI;->getPreviewBackgroundOperator()Lcom/transsion/camera/app/common/preview/IPreviewOperator;

    move-result-object p4

    iput-object p4, p0, Lcom/transsion/camera/feature/mode/video/VideoMode;->mPreviewBackgroundOperator:Lcom/transsion/camera/app/common/preview/IPreviewOperator;

    if-eqz p4, :cond_7b

    .line 248
    new-instance p5, Lcom/transsion/camera/feature/mode/video/VideoMode$BackgroundBlurPreview;

    const/4 p7, 0x0

    invoke-direct {p5, p7}, Lcom/transsion/camera/feature/mode/video/VideoMode$BackgroundBlurPreview;-><init>(Lcom/transsion/camera/feature/mode/video/VideoMode-IA;)V

    invoke-interface {p4, p5}, Lcom/transsion/camera/app/common/preview/IPreviewOperator;->modeInit(Lcom/transsion/camera/app/common/preview/IPreviewCallbacker;)V

    .line 251
    :cond_7b
    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/video/VideoMode;->isModeSupport360VideoHDR(Landroid/content/Context;)Z

    move-result p4

    if-nez p4, :cond_8d

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->supportDVGLRecording()Z

    move-result p4

    if-nez p4, :cond_8d

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/video/VideoMode;->supportVSSGLRecording()Z

    move-result p4

    if-eqz p4, :cond_156

    .line 252
    :cond_8d
    invoke-direct {p0, p3}, Lcom/transsion/camera/feature/mode/video/VideoMode;->initGLRecorder(Lcom/transsion/camera/app/common/IAppUI;)V

    .line 254
    const-string p3, "key_360_video_hdr"

    invoke-interface {p2, p3}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    .line 255
    const-string p5, "key_video_filter"

    invoke-interface {p2, p5}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    .line 256
    const-string p7, "key_video_effect"

    invoke-interface {p2, p7}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p7

    .line 257
    const-string v0, "key_video_frame"

    invoke-interface {p2, v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 258
    sget-object v1, Lcom/transsion/camera/feature/mode/video/VideoMode;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[VideoMode init] ,HdrValue\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " , filterValue:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " , effectValue:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " , frameValue:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 259
    invoke-static {p4, p6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p4

    iput-boolean p4, p0, Lcom/transsion/camera/feature/mode/video/VideoMode;->mVideoHdrOn:Z

    .line 260
    invoke-static {p5, p6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p4

    iput-boolean p4, p0, Lcom/transsion/camera/feature/mode/video/VideoMode;->mVideoFilterOn:Z

    .line 261
    invoke-static {p7, p6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p4

    iput-boolean p4, p0, Lcom/transsion/camera/feature/mode/video/VideoMode;->mVideoEffectOn:Z

    .line 262
    invoke-static {v0, p6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p4

    iput-boolean p4, p0, Lcom/transsion/camera/feature/mode/video/VideoMode;->mVideoFrameOn:Z

    .line 264
    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/video/VideoMode;->isModeSupport360VideoHDR(Landroid/content/Context;)Z

    move-result p4

    if-eqz p4, :cond_109

    .line 265
    invoke-virtual {p0, p3}, Lcom/transsion/camera/app/common/mode/CameraMode;->registerKeyToMonitor(Ljava/lang/String;)V

    .line 266
    iget-boolean p3, p0, Lcom/transsion/camera/feature/mode/video/VideoMode;->mVideoHdrOn:Z

    if-eqz p3, :cond_109

    .line 267
    const-string p3, "com.transsion.camera.feature.setting.videohdr.preview.VideoHDRPreview"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p4

    invoke-static {p3, p4}, Lcom/transsion/camera/utils/ReflectionUtils;->instance(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/transsion/camera/app/common/mode/IVideoModeCallback;

    iput-object p3, p0, Lcom/transsion/camera/feature/mode/video/VideoMode;->mVideoPreviewCallback:Lcom/transsion/camera/app/common/mode/IVideoModeCallback;

    .line 271
    :cond_109
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/video/VideoMode;->isModeSupportVSS()Z

    move-result p3

    if-eqz p3, :cond_129

    iget-boolean p3, p0, Lcom/transsion/camera/feature/mode/video/VideoMode;->mVideoFilterOn:Z

    if-nez p3, :cond_11b

    iget-boolean p3, p0, Lcom/transsion/camera/feature/mode/video/VideoMode;->mVideoEffectOn:Z

    if-nez p3, :cond_11b

    iget-boolean p3, p0, Lcom/transsion/camera/feature/mode/video/VideoMode;->mVideoFrameOn:Z

    if-eqz p3, :cond_129

    .line 272
    :cond_11b
    const-string p3, "com.transsion.camera.base_business.vss_sdk.VSSPreview"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p4

    invoke-static {p3, p4}, Lcom/transsion/camera/utils/ReflectionUtils;->instance(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/transsion/camera/app/common/mode/IVideoModeCallback;

    iput-object p3, p0, Lcom/transsion/camera/feature/mode/video/VideoMode;->mVideoPreviewCallback:Lcom/transsion/camera/app/common/mode/IVideoModeCallback;

    .line 275
    :cond_129
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->supportDVGLRecording()Z

    move-result p3

    if-eqz p3, :cond_14b

    .line 276
    const-string p3, "com.transsion.camera.base_business.dv_sdk.DVPreview"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p3, p1}, Lcom/transsion/camera/utils/ReflectionUtils;->instance(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/app/common/mode/IVideoModeCallback;

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/video/VideoMode;->mVideoPreviewCallback:Lcom/transsion/camera/app/common/mode/IVideoModeCallback;

    .line 277
    iget p3, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mScreenFormType:I

    const/4 p4, 0x7

    if-ne p3, p4, :cond_148

    .line 278
    const-string p3, "key_dv_template"

    const/4 p4, 0x6

    invoke-interface {p1, p3, p4}, Lcom/transsion/camera/app/common/mode/IVideoModeCallback;->setValue(Ljava/lang/String;I)V

    .line 280
    :cond_148
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/video/VideoMode;->updateGLRecordingOrientation()V

    .line 283
    :cond_14b
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/video/VideoMode;->mVideoPreviewCallback:Lcom/transsion/camera/app/common/mode/IVideoModeCallback;

    if-eqz p1, :cond_156

    .line 284
    iget-boolean p1, p0, Lcom/transsion/camera/feature/mode/video/VideoMode;->mIsVideoPreviewCallbackInit:Z

    if-nez p1, :cond_156

    .line 285
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/video/VideoMode;->initVideoPreviewCallback()V

    .line 289
    :cond_156
    const-string p1, "key_super_anti_video"

    invoke-interface {p2, p1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 290
    const-string p2, "super"

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/transsion/camera/feature/mode/video/VideoMode;->mVideoModeSuperAntiValueOn:Z

    .line 291
    sget-object p2, Lcom/transsion/camera/feature/mode/video/VideoMode;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "[VideoMode init] ,superAntiVideo\uff1a"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 292
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->isCameraFacingBack()Z

    move-result p1

    if-eqz p1, :cond_185

    .line 293
    const-string p1, "key_dol_video_hdr"

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraMode;->registerKeyToMonitor(Ljava/lang/String;)V

    .line 295
    :cond_185
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/video/VideoMode;->mStableMonitorProxy:Lcom/transsion/camera/app/common/gsensor/StableMonitorProxy;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/gsensor/StableMonitorProxy;->init()V

    .line 296
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/video/VideoMode;->mStableMonitorProxy:Lcom/transsion/camera/app/common/gsensor/StableMonitorProxy;

    new-instance p2, Lcom/transsion/camera/feature/mode/video/VideoMode$$ExternalSyntheticLambda2;

    invoke-direct {p2, p0}, Lcom/transsion/camera/feature/mode/video/VideoMode$$ExternalSyntheticLambda2;-><init>(Lcom/transsion/camera/feature/mode/video/VideoMode;)V

    invoke-virtual {p1, p2}, Lcom/transsion/camera/app/common/gsensor/StableMonitorProxy;->setStatusCallback(Lcom/transsion/camera/app/common/gsensor/IStableMonitor$IStatusCallback;)V

    .line 307
    invoke-static {}, Lcom/transsion/camera/app/common/thermal/ThermalThrottle;->getInstance()Lcom/transsion/camera/app/common/thermal/ThermalThrottle;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/video/VideoMode;->mThermalThrottleListener:Lcom/transsion/camera/feature/mode/video/VideoMode$ThermalThrottleChangeListenerImpl;

    invoke-virtual {p1, p0}, Lcom/transsion/camera/app/common/thermal/ThermalThrottle;->addThermalThrottleChangeListener(Lcom/transsion/camera/app/common/thermal/IThermalThrottleListener;)V

    return-void
.end method

.method protected isInVideoHDRState()Z
    .registers 6

    .line 1187
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/mode/video/VideoMode;->isModeSupportVideoAsd(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    return v1

    .line 1190
    :cond_a
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/video/VideoMode;->mIsVideoPreviewCallbackInit:Z

    if-eqz v0, :cond_64

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/VideoMode;->mVideoPreviewCallback:Lcom/transsion/camera/app/common/mode/IVideoModeCallback;

    if-eqz v0, :cond_64

    .line 1191
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getCameraId()Ljava/lang/String;

    move-result-object v0

    .line 1192
    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[isInVideoHDRState] cameraId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1193
    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    invoke-virtual {v2, v0}, Lcom/transsion/camera/app/common/CameraRepository;->isBackMainCamera(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4e

    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    invoke-virtual {v2, v0}, Lcom/transsion/camera/app/common/CameraRepository;->isFrontMainCamera(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4e

    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    .line 1194
    invoke-virtual {v2, v0}, Lcom/transsion/camera/app/common/CameraRepository;->isFrontFolderCamera(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4e

    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/mode/video/VideoMode;->isWideOrLongFocusSupport(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4d

    goto :goto_4e

    :cond_4d
    return v1

    .line 1195
    :cond_4e
    :goto_4e
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v2, "key_360_video_hdr"

    invoke-interface {v0, v2}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "on"

    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_64

    iget-boolean p0, p0, Lcom/transsion/camera/feature/mode/video/VideoMode;->mVideoHDRState:Z

    if-eqz p0, :cond_64

    const/4 p0, 0x1

    return p0

    :cond_64
    return v1
.end method

.method protected isInVideoSightShockState()Z
    .registers 4

    .line 1204
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/video/VideoMode;->mIsVideoPreviewCallbackInit:Z

    if-eqz v0, :cond_36

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/VideoMode;->mVideoPreviewCallback:Lcom/transsion/camera/app/common/mode/IVideoModeCallback;

    if-eqz v0, :cond_36

    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v1, "key_video_filter"

    .line 1205
    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "on"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_34

    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v2, "key_video_effect"

    .line 1206
    invoke-interface {v0, v2}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_34

    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v0, "key_video_frame"

    .line 1207
    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_36

    :cond_34
    const/4 p0, 0x1

    return p0

    :cond_36
    const/4 p0, 0x0

    return p0
.end method

.method protected isModeSupport360VideoHDR(Landroid/content/Context;)Z
    .registers 4

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 1225
    :cond_4
    const-string v1, "com.transsion.camera.feature.setting.videohdr.preview.VideoHDRPreview"

    invoke-static {v1}, Lcom/transsion/camera/utils/ReflectionUtils;->findClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    if-nez v1, :cond_d

    return v0

    .line 1228
    :cond_d
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->isCameraFacingBack()Z

    move-result p0

    if-eqz p0, :cond_1e

    .line 1229
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/transsion/camera/R$bool;->video_mode_support_back_360hdr:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    return p0

    .line 1231
    :cond_1e
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/transsion/camera/R$bool;->video_mode_support_front_360hdr:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    return p0
.end method

.method protected isModeSupportThumbnailTransition(Landroid/content/Context;)Z
    .registers 2

    .line 1250
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/utils/CustomConfigUtil;->isThumbnailTransitionSupport()Z

    move-result p0

    return p0
.end method

.method protected isModeSupportVSS()Z
    .registers 1

    .line 1237
    const-string p0, "com.transsion.camera.feature.setting.videofilter.VideoFilterEntry"

    invoke-static {p0}, Lcom/transsion/camera/utils/ReflectionUtils;->findClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    if-eqz p0, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method protected isModeSupportVideoAsd(Landroid/content/Context;)Z
    .registers 2

    if-nez p1, :cond_4

    const/4 p0, 0x0

    return p0

    .line 1245
    :cond_4
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/transsion/camera/R$bool;->video_asd_support:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    return p0
.end method

.method public isSupportBackgroundPreview()Z
    .registers 2

    .line 1496
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/video/VideoMode;->mPreviewBackgroundSupport:Z

    if-eqz v0, :cond_c

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->pocketScreen()Z

    move-result p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method public isSupportPowerSavingMode()Z
    .registers 1

    .line 1491
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->flipScreen()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method protected isVideoFileValid()Z
    .registers 5

    .line 862
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/video/VideoMode;->mVideoUI:Lcom/transsion/camera/app/ui/mode/video/VideoUI;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->getRecordingTotalDuration()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    cmp-long p0, v0, v2

    if-ltz p0, :cond_e

    const/4 p0, 0x1

    return p0

    :cond_e
    const/4 p0, 0x0

    return p0
.end method

.method protected needAudio()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public notifyCameraOperateAction(I)V
    .registers 6

    .line 1501
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/VideoMode;->mVideoUI:Lcom/transsion/camera/app/ui/mode/video/VideoUI;

    if-eqz v0, :cond_7

    .line 1502
    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->notifyCameraOperateAction(I)V

    :cond_7
    const/16 v0, 0xa

    if-eq p1, v0, :cond_fc

    const/16 v0, 0x1c

    const/4 v1, 0x0

    if-eq p1, v0, :cond_ea

    const/16 v0, 0x3b

    if-eq p1, v0, :cond_e6

    const/16 v0, 0xf

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq p1, v0, :cond_d6

    const/16 v0, 0x10

    if-eq p1, v0, :cond_ac

    const/16 v0, 0x2e

    if-eq p1, v0, :cond_d6

    const/16 v0, 0x2f

    if-eq p1, v0, :cond_ac

    const/16 v0, 0x90

    if-eq p1, v0, :cond_d6

    const/16 v0, 0x91

    if-eq p1, v0, :cond_ac

    const/16 v0, 0x13e

    if-eq p1, v0, :cond_9d

    const/16 v0, 0x13f

    if-eq p1, v0, :cond_8e

    packed-switch p1, :pswitch_data_10e

    packed-switch p1, :pswitch_data_11a

    packed-switch p1, :pswitch_data_126

    goto/16 :goto_10d

    .line 1547
    :pswitch_41
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/video/VideoMode;->mVideoUI:Lcom/transsion/camera/app/ui/mode/video/VideoUI;

    if-eqz p0, :cond_10d

    .line 1548
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->restoreRecordingUI()V

    return-void

    .line 1542
    :pswitch_49
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/video/VideoMode;->mVideoUI:Lcom/transsion/camera/app/ui/mode/video/VideoUI;

    if-eqz p0, :cond_10d

    .line 1543
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->tempHideRecordingUI()V

    return-void

    .line 1529
    :pswitch_51
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/video/VideoMode;->mVideoUI:Lcom/transsion/camera/app/ui/mode/video/VideoUI;

    if-eqz p0, :cond_10d

    .line 1530
    invoke-virtual {p0, v1}, Lcom/transsion/camera/app/ui/mode/video/VideoUI;->setRecordingUIEnable(Z)V

    return-void

    .line 1517
    :pswitch_59
    sput-boolean v1, Lcom/transsion/camera/feature/mode/video/VideoMode;->mIsZoomWheelShowing:Z

    return-void

    .line 1511
    :pswitch_5c
    sput-boolean v3, Lcom/transsion/camera/feature/mode/video/VideoMode;->mIsZoomWheelShowing:Z

    .line 1512
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result p1

    if-eqz p1, :cond_10d

    .line 1513
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/video/VideoMode;->mVideoUI:Lcom/transsion/camera/app/ui/mode/video/VideoUI;

    invoke-virtual {p0, v1}, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->setZoomState(Z)V

    return-void

    .line 1534
    :pswitch_6a
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/video/VideoMode;->mVideoUI:Lcom/transsion/camera/app/ui/mode/video/VideoUI;

    invoke-virtual {p1, v1}, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->setZoomState(Z)V

    .line 1537
    :pswitch_6f
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/video/VideoMode;->mVideoUI:Lcom/transsion/camera/app/ui/mode/video/VideoUI;

    if-eqz p0, :cond_10d

    .line 1538
    invoke-virtual {p0, v3}, Lcom/transsion/camera/app/ui/mode/video/VideoUI;->setRecordingUIEnable(Z)V

    return-void

    .line 1520
    :pswitch_77
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result p1

    if-eqz p1, :cond_86

    sget-boolean p1, Lcom/transsion/camera/feature/mode/video/VideoMode;->mIsZoomWheelShowing:Z

    if-nez p1, :cond_86

    .line 1521
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/video/VideoMode;->mVideoUI:Lcom/transsion/camera/app/ui/mode/video/VideoUI;

    invoke-virtual {p1, v3}, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->setZoomState(Z)V

    .line 1523
    :cond_86
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/video/VideoMode;->mVideoUI:Lcom/transsion/camera/app/ui/mode/video/VideoUI;

    if-eqz p0, :cond_10d

    .line 1524
    invoke-virtual {p0, v1}, Lcom/transsion/camera/app/ui/mode/video/VideoUI;->setRecordingUIEnable(Z)V

    return-void

    .line 1559
    :cond_8e
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-virtual {p1, v3}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->enablePreviewStream(Z)V

    .line 1560
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/video/VideoMode;->getFlashKey()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->requestChangeSettingValue(Ljava/lang/String;)V

    return-void

    .line 1555
    :cond_9d
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-virtual {p1, v1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->enablePreviewStream(Z)V

    .line 1556
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/video/VideoMode;->getFlashKey()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->requestChangeSettingValue(Ljava/lang/String;)V

    return-void

    .line 1573
    :cond_ac
    :pswitch_ac
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportUI4Animator:Z

    if-eqz v0, :cond_bb

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/VideoMode;->mVideoUI:Lcom/transsion/camera/app/ui/mode/video/VideoUI;

    if-eqz v0, :cond_bb

    .line 1574
    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/ui/mode/video/VideoUI;->startRecordingAnimation(ZLandroid/animation/Animator$AnimatorListener;)V

    .line 1576
    :cond_bb
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mRecordingUIRespondImmediately:Z

    if-eqz v0, :cond_10d

    const/16 v0, 0xc9

    if-ne p1, v0, :cond_10d

    .line 1578
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/video/VideoMode;->mVideoUI:Lcom/transsion/camera/app/ui/mode/video/VideoUI;

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    new-instance p1, Lcom/transsion/camera/feature/mode/video/VideoMode$$ExternalSyntheticLambda5;

    invoke-direct {p1}, Lcom/transsion/camera/feature/mode/video/VideoMode$$ExternalSyntheticLambda5;-><init>()V

    invoke-virtual {p0, p1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void

    .line 1565
    :cond_d6
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p1

    iget-boolean p1, p1, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportUI4Animator:Z

    if-eqz p1, :cond_10d

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/video/VideoMode;->mVideoUI:Lcom/transsion/camera/app/ui/mode/video/VideoUI;

    if-eqz p0, :cond_10d

    .line 1566
    invoke-virtual {p0, v3, v2}, Lcom/transsion/camera/app/ui/mode/video/VideoUI;->startRecordingAnimation(ZLandroid/animation/Animator$AnimatorListener;)V

    return-void

    .line 1552
    :cond_e6
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/video/VideoMode;->updateGLRecordingOrientation()V

    return-void

    .line 1582
    :cond_ea
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p1

    iget-boolean p1, p1, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportUI4Animator:Z

    if-eqz p1, :cond_f9

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/video/VideoMode;->mVideoUI:Lcom/transsion/camera/app/ui/mode/video/VideoUI;

    if-eqz p0, :cond_f9

    .line 1583
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/video/VideoUI;->resetRecordingUI()V

    .line 1585
    :cond_f9
    sput-boolean v1, Lcom/transsion/camera/feature/mode/video/VideoMode;->mIsZoomWheelShowing:Z

    return-void

    .line 1506
    :cond_fc
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/video/VideoMode;->mVideoUI:Lcom/transsion/camera/app/ui/mode/video/VideoUI;

    if-eqz p1, :cond_10d

    .line 1507
    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->getVideoUISpec()Lcom/transsion/camera/app/common/ui/VideoUISpec;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->isVssSupported()Z

    move-result p0

    invoke-virtual {p1, p0}, Lcom/transsion/camera/app/common/ui/VideoUISpec;->setSupportedVss(Z)V

    :cond_10d
    :goto_10d
    return-void

    :pswitch_data_10e
    .packed-switch 0x17
        :pswitch_77
        :pswitch_6a
        :pswitch_5c
        :pswitch_59
    .end packed-switch

    :pswitch_data_11a
    .packed-switch 0xc0
        :pswitch_51
        :pswitch_6f
        :pswitch_51
        :pswitch_6f
    .end packed-switch

    :pswitch_data_126
    .packed-switch 0xc7
        :pswitch_49
        :pswitch_41
        :pswitch_ac
    .end packed-switch
.end method

.method protected notifyToVideoUI(Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;)V
    .registers 4

    .line 847
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->notifyToVideoUI(Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;)V

    .line 848
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/VideoMode;->mVideoUI:Lcom/transsion/camera/app/ui/mode/video/VideoUI;

    if-nez v0, :cond_1e

    .line 850
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[notifyToVideoUI] mVideoUI is null when :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 853
    :cond_1e
    sget-object v1, Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;->STATE_PRE_RECORDING:Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;

    if-ne v1, p1, :cond_29

    .line 854
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/video/VideoMode;->createVideoUISpec()Lcom/transsion/camera/app/common/ui/VideoUISpec;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->initVideoUI(Lcom/transsion/camera/app/common/ui/VideoUISpec;)V

    .line 856
    :cond_29
    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->updateUIState(Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;)V

    .line 857
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/video/VideoMode;->updateGLRecordingOrientation()V

    return-void
.end method

.method public onBackPressed()Z
    .registers 4

    .line 1279
    sget-object v0, Lcom/transsion/camera/feature/mode/video/VideoMode;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onBackPressed: mIsGLRecording = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/feature/mode/video/VideoMode;->mIsGLRecording:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1280
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->isSupportGLRecording()Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 1281
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/video/VideoMode;->mIsGLRecording:Z

    if-eqz v0, :cond_3a

    .line 1282
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->supportDVGLRecording()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_30

    .line 1283
    invoke-static {}, Lcom/transsion/camera/utils/manager/GlobalClickManager;->checkCanClick()Z

    move-result v0

    if-nez v0, :cond_30

    return v1

    :cond_30
    const/4 v0, 0x0

    .line 1287
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/video/VideoMode;->mIsGLRecording:Z

    .line 1288
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mTextureRecorder:Lcom/transsion/camera/app/common/recorder/RecorderManager;

    invoke-virtual {p0, v1, v0, v0}, Lcom/transsion/camera/app/common/recorder/RecorderManager;->leave(ZZZ)Z

    move-result p0

    return p0

    .line 1291
    :cond_3a
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->onBackPressed()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic onCaptureSequenceCompleted(IJ)V
    .registers 4

    .line 0
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/ICameraControl$IContinuousShotCallback;->onCaptureSequenceCompleted(IJ)V

    return-void
.end method

.method protected onCreateVideoHelper()Lcom/transsion/camera/app/common/mode/CommonVideoHelper;
    .registers 1

    .line 214
    new-instance p0, Lcom/transsion/camera/feature/mode/video/VideoHelper;

    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/video/VideoHelper;-><init>()V

    return-object p0
.end method

.method protected onCreateVideoUI()Lcom/transsion/camera/app/ui/mode/video/VideoUI;
    .registers 4

    .line 903
    new-instance v0, Lcom/transsion/camera/app/ui/mode/video/VideoUI;

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v2}, Lcom/transsion/camera/app/common/IAppUI;->getAboveMainCtrlInflateRoot()Landroid/view/ViewGroup;

    move-result-object v2

    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-direct {v0, v1, v2, p0, p0}, Lcom/transsion/camera/app/ui/mode/video/VideoUI;-><init>(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;)V

    return-object v0
.end method

.method public onMediaRecorderPreparing()V
    .registers 2

    .line 558
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->onMediaRecorderPreparing()V

    .line 559
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/VideoMode;->mVideoUI:Lcom/transsion/camera/app/ui/mode/video/VideoUI;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->getOrientation()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->setRecordingOrientation(I)V

    return-void
.end method

.method public onMediaRecorderProcessing()V
    .registers 3

    .line 344
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->onMediaRecorderProcessing()V

    .line 345
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v1, "key_super_anti_video"

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "super"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 346
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/VideoMode;->mVideoUI:Lcom/transsion/camera/app/ui/mode/video/VideoUI;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/mode/video/VideoUI;->onHideRecordingUI()V

    .line 347
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/video/VideoMode;->mVideoUI:Lcom/transsion/camera/app/ui/mode/video/VideoUI;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->updateRecordingStatus()V

    :cond_1d
    return-void
.end method

.method public onMediaRecorderStarted()V
    .registers 4

    .line 536
    iget v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mScreenFormType:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_e

    .line 537
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/VideoMode;->mVideoUI:Lcom/transsion/camera/app/ui/mode/video/VideoUI;

    const-wide/32 v1, 0x927c0

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->setLimitRecorderTime(J)V

    goto :goto_15

    .line 539
    :cond_e
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/VideoMode;->mVideoUI:Lcom/transsion/camera/app/ui/mode/video/VideoUI;

    const-wide/16 v1, -0x1

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->setLimitRecorderTime(J)V

    .line 541
    :goto_15
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/video/VideoMode;->updateVideoTheramalWaring()V

    .line 542
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->onMediaRecorderStarted()V

    return-void
.end method

.method public onMediaRecorderStopping(IZ)V
    .registers 4

    if-nez p1, :cond_7

    .line 971
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/VideoMode;->mVideoUI:Lcom/transsion/camera/app/ui/mode/video/VideoUI;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->hideInfo()V

    .line 973
    :cond_7
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->onMediaRecorderStopping(IZ)V

    const/16 p1, 0xc9

    .line 974
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->notifyRawActionToUI(I)V

    return-void
.end method

.method public bridge synthetic onModeCaptureProgressed(Lcom/transsion/camera/adapter/CameraResults;Lcom/transsion/camera/adapter/CameraProxy$ICameraCaptureState;)V
    .registers 3

    .line 0
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/common/mode/ICameraMode;->onModeCaptureProgressed(Lcom/transsion/camera/adapter/CameraResults;Lcom/transsion/camera/adapter/CameraProxy$ICameraCaptureState;)V

    return-void
.end method

.method public onOrientationChanged(I)V
    .registers 3

    .line 820
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraMode;->onOrientationChanged(I)V

    .line 821
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/VideoMode;->mVideoUI:Lcom/transsion/camera/app/ui/mode/video/VideoUI;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/ui/mode/video/VideoUI;->onOrientationChanged(I)V

    .line 822
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/video/VideoMode;->updateGLRecordingOrientation()V

    return-void
.end method

.method public onPreviewTypeChanged(Lcom/transsion/camera/utils/SettingInfo$PreviewViewType;)V
    .registers 3

    .line 1789
    sget-object v0, Lcom/transsion/camera/utils/SettingInfo$PreviewViewType;->GL_SURFACE_VIEW:Lcom/transsion/camera/utils/SettingInfo$PreviewViewType;

    if-ne p1, v0, :cond_28

    .line 1790
    iget-boolean p1, p0, Lcom/transsion/camera/feature/mode/video/VideoMode;->mVideoFilterOn:Z

    if-nez p1, :cond_10

    iget-boolean p1, p0, Lcom/transsion/camera/feature/mode/video/VideoMode;->mVideoEffectOn:Z

    if-nez p1, :cond_10

    iget-boolean p1, p0, Lcom/transsion/camera/feature/mode/video/VideoMode;->mVideoFrameOn:Z

    if-eqz p1, :cond_28

    .line 1791
    :cond_10
    iget-boolean p1, p0, Lcom/transsion/camera/feature/mode/video/VideoMode;->mIsVideoPreviewCallbackInit:Z

    if-eqz p1, :cond_23

    .line 1792
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/video/VideoMode;->mVideoPreviewCallback:Lcom/transsion/camera/app/common/mode/IVideoModeCallback;

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    new-instance p1, Lcom/transsion/camera/feature/mode/video/VideoMode$$ExternalSyntheticLambda3;

    invoke-direct {p1}, Lcom/transsion/camera/feature/mode/video/VideoMode$$ExternalSyntheticLambda3;-><init>()V

    .line 1793
    invoke-virtual {p0, p1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void

    .line 1795
    :cond_23
    const-string p1, "com.transsion.camera.base_business.vss_sdk.VSSPreview"

    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/video/VideoMode;->updateVideoPreviewCallback(Ljava/lang/String;)V

    :cond_28
    return-void
.end method

.method protected onSATStreamIdChanged(IIZZ)V
    .registers 16

    .line 564
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getCameraId()Ljava/lang/String;

    move-result-object v0

    .line 565
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[onSATStreamIdChanged]: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " --> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " ,  cameraId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " , isSATCamera:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, -0x1

    if-ne p1, p2, :cond_47

    if-eq p1, v0, :cond_46

    .line 567
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/video/VideoMode;->mVideoPreviewCallback:Lcom/transsion/camera/app/common/mode/IVideoModeCallback;

    if-eqz p1, :cond_46

    iget-boolean p1, p0, Lcom/transsion/camera/feature/mode/video/VideoMode;->mIsGLRecording:Z

    if-nez p1, :cond_46

    .line 568
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/video/VideoMode;->mVideoPreviewCallback:Lcom/transsion/camera/app/common/mode/IVideoModeCallback;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/mode/IVideoModeCallback;->reset()V

    :cond_46
    return-void

    .line 573
    :cond_47
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 574
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object v2

    invoke-virtual {v2}, Lcom/transsion/camera/app/common/CameraRepository;->getBackWideCamera()Ljava/lang/String;

    move-result-object v2

    .line 575
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object v3

    invoke-virtual {v3}, Lcom/transsion/camera/app/common/CameraRepository;->getMainBackCamera()Ljava/lang/String;

    move-result-object v3

    .line 576
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object v4

    invoke-virtual {v4}, Lcom/transsion/camera/app/common/CameraRepository;->getBackLongFocusCamera()Ljava/lang/String;

    move-result-object v4

    .line 577
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object v5

    invoke-virtual {v5}, Lcom/transsion/camera/app/common/CameraRepository;->getBack5XLongFocusCamera()Ljava/lang/String;

    move-result-object v5

    .line 580
    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v6, "reset"

    const-string v7, "long-focus"

    const-string v8, "periscope"

    const-string v9, "main"

    const-string/jumbo v10, "wide"

    if-eqz v2, :cond_7e

    move-object v2, v10

    goto :goto_97

    .line 582
    :cond_7e
    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_86

    move-object v2, v9

    goto :goto_97

    .line 584
    :cond_86
    invoke-static {v1, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_96

    .line 585
    invoke-static {v5, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_94

    move-object v2, v8

    goto :goto_97

    :cond_94
    move-object v2, v7

    goto :goto_97

    :cond_96
    move-object v2, v6

    .line 593
    :goto_97
    iget-object v3, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    invoke-static {v3, v2}, Lcom/transsion/camera/feature/mode/video/VideoRestriction;->getSatRelation(Landroid/content/Context;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object v3

    .line 594
    invoke-static {v2, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_bf

    .line 595
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 596
    invoke-static {}, Lcom/transsion/camera/adapter/CameraAgentFactory;->getCameraAgent()Lcom/transsion/camera/adapter/CameraAgent;

    move-result-object v5

    invoke-virtual {v5}, Lcom/transsion/camera/adapter/CameraAgent;->getCameraDeviceInfo()Lcom/transsion/camera/adapter/ICameraDeviceInfo;

    move-result-object v5

    .line 597
    invoke-interface {v5, v1}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->getSupportedVideoSizes(Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    .line 598
    sget-object v6, Lcom/transsion/camera/feature/setting/videoquality/VideoQualityHelper;->sVideoQualities:[I

    invoke-static {p2, v4, v5, v6}, Lcom/transsion/camera/utils/CameraUtil;->generateSupportedList(ILjava/util/ArrayList;Ljava/util/List;[I)V

    .line 600
    invoke-direct {p0, v4, v1, p3}, Lcom/transsion/camera/feature/mode/video/VideoMode;->updateSupportedList(Ljava/util/ArrayList;Ljava/lang/String;Z)V

    .line 601
    invoke-direct {p0, v4, v3}, Lcom/transsion/camera/feature/mode/video/VideoMode;->updateVideoQualityRelation(Ljava/util/List;Lcom/transsion/camera/app/common/relation/Relation;)V

    .line 603
    :cond_bf
    iget-object p3, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p3, p2}, Lcom/transsion/camera/app/common/IAppUI;->onSatCameraChanged(I)V

    if-eqz p4, :cond_115

    .line 606
    iget-object p3, p0, Lcom/transsion/camera/feature/mode/video/VideoMode;->mVideoPreviewCallback:Lcom/transsion/camera/app/common/mode/IVideoModeCallback;

    if-eqz p3, :cond_115

    .line 607
    sget-boolean p3, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mDHdrAndRawSuperNightBothSupport:Z

    if-nez p3, :cond_fa

    iget-object p3, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p3}, Lcom/transsion/camera/feature/mode/video/VideoMode;->isModeSupport360VideoHDR(Landroid/content/Context;)Z

    move-result p3

    if-eqz p3, :cond_fa

    .line 608
    invoke-static {v2, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_f2

    .line 609
    invoke-static {v2, v10}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_f2

    .line 610
    invoke-static {v2, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_e9

    goto :goto_f2

    :cond_e9
    const/4 p3, 0x1

    .line 613
    invoke-static {p3}, Lcom/transsion/camera/feature/mode/video/VideoRestriction;->getVideoHDRRelation(Z)Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object p3

    invoke-static {v3, p3}, Lcom/transsion/camera/app/common/mode/CameraMode;->mergeRelation(Lcom/transsion/camera/app/common/relation/Relation;Lcom/transsion/camera/app/common/relation/Relation;)V

    goto :goto_fa

    :cond_f2
    :goto_f2
    const/4 p3, 0x0

    .line 611
    invoke-static {p3}, Lcom/transsion/camera/feature/mode/video/VideoRestriction;->getVideoHDRRelation(Z)Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object p3

    invoke-static {v3, p3}, Lcom/transsion/camera/app/common/mode/CameraMode;->mergeRelation(Lcom/transsion/camera/app/common/relation/Relation;Lcom/transsion/camera/app/common/relation/Relation;)V

    .line 616
    :cond_fa
    :goto_fa
    iget-boolean p3, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mNeedCloseQuickPreview:Z

    if-eqz p3, :cond_115

    const-string p3, "0"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p3, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_115

    .line 617
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/transsion/camera/feature/mode/video/VideoRestriction;->getQuickPreviewRelation(Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object p2

    invoke-static {v3, p2}, Lcom/transsion/camera/app/common/mode/CameraMode;->mergeRelation(Lcom/transsion/camera/app/common/relation/Relation;Lcom/transsion/camera/app/common/relation/Relation;)V

    .line 622
    :cond_115
    invoke-static {v2, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_12e

    if-ne p1, v0, :cond_12e

    if-eqz p4, :cond_12e

    .line 623
    const-string p1, "key_video_portrait"

    invoke-virtual {v3, p1}, Lcom/transsion/camera/app/common/relation/Relation;->removeBody(Ljava/lang/String;)V

    .line 624
    const-string p1, "key_video_spot"

    invoke-virtual {v3, p1}, Lcom/transsion/camera/app/common/relation/Relation;->removeBody(Ljava/lang/String;)V

    .line 625
    const-string p1, "key_video_enhance_yuv"

    invoke-virtual {v3, p1}, Lcom/transsion/camera/app/common/relation/Relation;->removeBody(Ljava/lang/String;)V

    .line 628
    :cond_12e
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {p1, v3}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->postRestriction(Lcom/transsion/camera/app/common/relation/Relation;)V

    .line 629
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/video/VideoMode;->getFlashKey()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->requestChangeSettingValue(Ljava/lang/String;)V

    .line 630
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p1}, Lcom/transsion/camera/app/common/IAppUI;->updateOnlyInteractiveUI()V

    .line 631
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p1}, Lcom/transsion/camera/app/common/IAppUI;->updateHelpGuide()V

    .line 632
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/IAppUI;->updatePopSettingUI()V

    return-void
.end method

.method public onScreenFormChanged(IZ)V
    .registers 3

    .line 833
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/common/mode/CameraMode;->onScreenFormChanged(IZ)V

    .line 835
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/video/VideoMode;->mVideoUI:Lcom/transsion/camera/app/ui/mode/video/VideoUI;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/ui/mode/video/VideoUI;->onScreenFormChanged(IZ)V

    return-void
.end method

.method protected onSettingChanged(Ljava/lang/String;Ljava/lang/String;)V
    .registers 11

    .line 437
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->onSettingChanged(Ljava/lang/String;Ljava/lang/String;)V

    .line 438
    sget-object v0, Lcom/transsion/camera/feature/mode/video/VideoMode;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSettingChanged: key = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", value = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " , mVideoHdrOn:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/feature/mode/video/VideoMode;->mVideoHdrOn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " , mVideoFilterOn:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/feature/mode/video/VideoMode;->mVideoFilterOn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " , mVideoEffectOn:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/feature/mode/video/VideoMode;->mVideoEffectOn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " , mVideoFrameOn:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/feature/mode/video/VideoMode;->mVideoFrameOn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 440
    const-string v0, "key_360_video_hdr"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    const-string v3, "on"

    const/4 v4, 0x0

    if-eqz v1, :cond_88

    .line 441
    invoke-static {p2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7b

    const-string v1, "key_video_hdr_scene"

    invoke-static {p2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_64

    goto :goto_7b

    .line 447
    :cond_64
    iget-boolean v1, p0, Lcom/transsion/camera/feature/mode/video/VideoMode;->mVideoHdrOn:Z

    if-eqz v1, :cond_158

    iget-boolean v1, p0, Lcom/transsion/camera/feature/mode/video/VideoMode;->mVideoFilterOn:Z

    if-nez v1, :cond_158

    iget-boolean v1, p0, Lcom/transsion/camera/feature/mode/video/VideoMode;->mVideoEffectOn:Z

    if-nez v1, :cond_158

    iget-boolean v1, p0, Lcom/transsion/camera/feature/mode/video/VideoMode;->mVideoFrameOn:Z

    if-nez v1, :cond_158

    .line 448
    iput-boolean v4, p0, Lcom/transsion/camera/feature/mode/video/VideoMode;->mVideoHdrOn:Z

    .line 449
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/video/VideoMode;->unInitVideoPreviewCallback()V

    goto/16 :goto_158

    .line 442
    :cond_7b
    :goto_7b
    iget-boolean v1, p0, Lcom/transsion/camera/feature/mode/video/VideoMode;->mVideoHdrOn:Z

    if-nez v1, :cond_158

    .line 443
    iput-boolean v2, p0, Lcom/transsion/camera/feature/mode/video/VideoMode;->mVideoHdrOn:Z

    .line 444
    const-string v1, "com.transsion.camera.feature.setting.videohdr.preview.VideoHDRPreview"

    invoke-direct {p0, v1}, Lcom/transsion/camera/feature/mode/video/VideoMode;->updateVideoPreviewCallback(Ljava/lang/String;)V

    goto/16 :goto_158

    .line 452
    :cond_88
    const-string v1, "key_video_filter"

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    const-string v6, "key_video_frame"

    const-string v7, "key_video_effect"

    if-nez v5, :cond_b3

    invoke-static {p1, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_b3

    invoke-static {p1, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_a1

    goto :goto_b3

    .line 493
    :cond_a1
    const-string v1, "key_super_anti_video"

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_158

    .line 494
    const-string v1, "super"

    invoke-static {p2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/transsion/camera/feature/mode/video/VideoMode;->mVideoModeSuperAntiValueOn:Z

    goto/16 :goto_158

    .line 453
    :cond_b3
    :goto_b3
    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v5, "com.transsion.camera.base_business.vss_sdk.VSSPreview"

    if-eqz v1, :cond_ed

    .line 454
    invoke-static {p2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_d6

    .line 455
    iget-boolean v1, p0, Lcom/transsion/camera/feature/mode/video/VideoMode;->mVideoFilterOn:Z

    if-nez v1, :cond_d0

    iget-boolean v1, p0, Lcom/transsion/camera/feature/mode/video/VideoMode;->mVideoEffectOn:Z

    if-nez v1, :cond_d0

    iget-boolean v1, p0, Lcom/transsion/camera/feature/mode/video/VideoMode;->mVideoFrameOn:Z

    if-nez v1, :cond_d0

    .line 456
    invoke-direct {p0, v5}, Lcom/transsion/camera/feature/mode/video/VideoMode;->updateVideoPreviewCallback(Ljava/lang/String;)V

    .line 458
    :cond_d0
    iput-boolean v4, p0, Lcom/transsion/camera/feature/mode/video/VideoMode;->mVideoHdrOn:Z

    .line 459
    iput-boolean v2, p0, Lcom/transsion/camera/feature/mode/video/VideoMode;->mVideoFilterOn:Z

    goto/16 :goto_158

    .line 461
    :cond_d6
    iget-boolean v1, p0, Lcom/transsion/camera/feature/mode/video/VideoMode;->mVideoHdrOn:Z

    if-nez v1, :cond_e9

    iget-boolean v1, p0, Lcom/transsion/camera/feature/mode/video/VideoMode;->mVideoFilterOn:Z

    if-eqz v1, :cond_e9

    iget-boolean v1, p0, Lcom/transsion/camera/feature/mode/video/VideoMode;->mVideoEffectOn:Z

    if-nez v1, :cond_e9

    iget-boolean v1, p0, Lcom/transsion/camera/feature/mode/video/VideoMode;->mVideoFrameOn:Z

    if-nez v1, :cond_e9

    .line 462
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/video/VideoMode;->unInitVideoPreviewCallback()V

    .line 464
    :cond_e9
    iput-boolean v4, p0, Lcom/transsion/camera/feature/mode/video/VideoMode;->mVideoFilterOn:Z

    goto/16 :goto_158

    .line 466
    :cond_ed
    invoke-static {p1, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_123

    .line 467
    invoke-static {p2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_10d

    .line 468
    iget-boolean v1, p0, Lcom/transsion/camera/feature/mode/video/VideoMode;->mVideoFilterOn:Z

    if-nez v1, :cond_108

    iget-boolean v1, p0, Lcom/transsion/camera/feature/mode/video/VideoMode;->mVideoEffectOn:Z

    if-nez v1, :cond_108

    iget-boolean v1, p0, Lcom/transsion/camera/feature/mode/video/VideoMode;->mVideoFrameOn:Z

    if-nez v1, :cond_108

    .line 469
    invoke-direct {p0, v5}, Lcom/transsion/camera/feature/mode/video/VideoMode;->updateVideoPreviewCallback(Ljava/lang/String;)V

    .line 471
    :cond_108
    iput-boolean v4, p0, Lcom/transsion/camera/feature/mode/video/VideoMode;->mVideoHdrOn:Z

    .line 472
    iput-boolean v2, p0, Lcom/transsion/camera/feature/mode/video/VideoMode;->mVideoEffectOn:Z

    goto :goto_158

    .line 474
    :cond_10d
    iget-boolean v1, p0, Lcom/transsion/camera/feature/mode/video/VideoMode;->mVideoHdrOn:Z

    if-nez v1, :cond_120

    iget-boolean v1, p0, Lcom/transsion/camera/feature/mode/video/VideoMode;->mVideoFilterOn:Z

    if-nez v1, :cond_120

    iget-boolean v1, p0, Lcom/transsion/camera/feature/mode/video/VideoMode;->mVideoEffectOn:Z

    if-eqz v1, :cond_120

    iget-boolean v1, p0, Lcom/transsion/camera/feature/mode/video/VideoMode;->mVideoFrameOn:Z

    if-nez v1, :cond_120

    .line 475
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/video/VideoMode;->unInitVideoPreviewCallback()V

    .line 477
    :cond_120
    iput-boolean v4, p0, Lcom/transsion/camera/feature/mode/video/VideoMode;->mVideoEffectOn:Z

    goto :goto_158

    .line 479
    :cond_123
    invoke-static {p1, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_158

    .line 480
    invoke-static {p2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_143

    .line 481
    iget-boolean v1, p0, Lcom/transsion/camera/feature/mode/video/VideoMode;->mVideoFilterOn:Z

    if-nez v1, :cond_13e

    iget-boolean v1, p0, Lcom/transsion/camera/feature/mode/video/VideoMode;->mVideoEffectOn:Z

    if-nez v1, :cond_13e

    iget-boolean v1, p0, Lcom/transsion/camera/feature/mode/video/VideoMode;->mVideoFrameOn:Z

    if-nez v1, :cond_13e

    .line 482
    invoke-direct {p0, v5}, Lcom/transsion/camera/feature/mode/video/VideoMode;->updateVideoPreviewCallback(Ljava/lang/String;)V

    .line 484
    :cond_13e
    iput-boolean v4, p0, Lcom/transsion/camera/feature/mode/video/VideoMode;->mVideoHdrOn:Z

    .line 485
    iput-boolean v2, p0, Lcom/transsion/camera/feature/mode/video/VideoMode;->mVideoFrameOn:Z

    goto :goto_158

    .line 487
    :cond_143
    iget-boolean v1, p0, Lcom/transsion/camera/feature/mode/video/VideoMode;->mVideoHdrOn:Z

    if-nez v1, :cond_156

    iget-boolean v1, p0, Lcom/transsion/camera/feature/mode/video/VideoMode;->mVideoFilterOn:Z

    if-nez v1, :cond_156

    iget-boolean v1, p0, Lcom/transsion/camera/feature/mode/video/VideoMode;->mVideoEffectOn:Z

    if-nez v1, :cond_156

    iget-boolean v1, p0, Lcom/transsion/camera/feature/mode/video/VideoMode;->mVideoFrameOn:Z

    if-eqz v1, :cond_156

    .line 488
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/video/VideoMode;->unInitVideoPreviewCallback()V

    .line 490
    :cond_156
    iput-boolean v4, p0, Lcom/transsion/camera/feature/mode/video/VideoMode;->mVideoFrameOn:Z

    .line 497
    :cond_158
    :goto_158
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_174

    .line 498
    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1a0

    iget-object p1, p0, Lcom/transsion/camera/feature/mode/video/VideoMode;->mVideoPreviewCallback:Lcom/transsion/camera/app/common/mode/IVideoModeCallback;

    if-eqz p1, :cond_1a0

    .line 499
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->getOrientation()I

    move-result p2

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->isCameraFacingBack()Z

    move-result p0

    invoke-interface {p1, p2, p0}, Lcom/transsion/camera/app/common/mode/IVideoModeCallback;->onOrientationChanged(IZ)V

    return-void

    .line 501
    :cond_174
    const-string v0, "key_fold_switch_preview"

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_189

    .line 502
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/video/VideoMode;->mVideoUI:Lcom/transsion/camera/app/ui/mode/video/VideoUI;

    invoke-virtual {p1, p2}, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->updateSwitchPreviewValue(Ljava/lang/String;)V

    .line 503
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/video/VideoMode;->mVideoUI:Lcom/transsion/camera/app/ui/mode/video/VideoUI;

    iget p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mScreenFormType:I

    invoke-virtual {p1, p0, v4}, Lcom/transsion/camera/app/ui/mode/video/VideoUI;->onScreenFormChanged(IZ)V

    return-void

    .line 504
    :cond_189
    const-string p2, "key_update_top_bar_ui"

    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1a0

    .line 505
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p1}, Lcom/transsion/camera/app/common/IAppUI;->updateTopBarUI()V

    .line 506
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p1}, Lcom/transsion/camera/app/common/IAppUI;->updateHelpGuide()V

    .line 507
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/IAppUI;->updatePopSettingUI()V

    :cond_1a0
    return-void
.end method

.method public onSettingReady()V
    .registers 4

    .line 518
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->onSettingReady()V

    .line 519
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mImageProcessor:Lcom/transsion/camera/app/common/mode/IImageProcessor;

    check-cast v0, Lcom/transsion/camera/app/common/mode/CommonVideoImageProcessor;

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v2, "key_algorithm_migrate"

    .line 521
    invoke-interface {v1, v2}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 520
    const-string v2, "on"

    invoke-static {v2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    .line 519
    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/mode/CommonVideoImageProcessor;->algorithmMigrate(Z)V

    .line 522
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    if-eqz v0, :cond_21

    .line 523
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/video/VideoMode;->mFrameResultCallback:Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->registerFrameResultCallback(Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;)V

    .line 525
    :cond_21
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/VideoMode;->mVideoPreviewCallback:Lcom/transsion/camera/app/common/mode/IVideoModeCallback;

    if-eqz v0, :cond_44

    .line 526
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    if-eqz v1, :cond_44

    .line 527
    invoke-interface {v0}, Lcom/transsion/camera/app/common/mode/IVideoModeCallback;->onSettingReady()V

    .line 528
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->isVideoSuperNightSupport()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/mode/IVideoModeCallback;->setVideoSuperNightSupport(Z)V

    .line 529
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/transsion/camera/R$bool;->video_mode_backwide_support_360hdr:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    .line 530
    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/mode/IVideoModeCallback;->setVideoBackWideSupport360Hdr(Z)V

    :cond_44
    return-void
.end method

.method protected onSnapShotStart()V
    .registers 2

    .line 946
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/VideoMode;->mVideoUI:Lcom/transsion/camera/app/ui/mode/video/VideoUI;

    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Lcom/transsion/camera/app/ui/mode/video/VideoUI;->playCaptureAnimation(Landroid/content/Context;)V

    return-void
.end method

.method protected onVideoMediaRecorderInfoConstruct(Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo$Builder;)V
    .registers 6

    .line 840
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mStorageOperator:Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;->getLeftSpace(Landroid/content/Context;)J

    move-result-wide v0

    .line 841
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[onVideoMediaRecorderInfoConstruct], setMaxFileSize:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 842
    invoke-virtual {p1, v0, v1}, Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo$Builder;->setMaxFileSize(J)Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo$Builder;

    return-void
.end method

.method public pause()V
    .registers 4

    .line 403
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->pause()V

    .line 404
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/VideoMode;->mStableMonitorProxy:Lcom/transsion/camera/app/common/gsensor/StableMonitorProxy;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/gsensor/StableMonitorProxy;->stop()V

    const/4 v0, 0x0

    .line 405
    iput v0, p0, Lcom/transsion/camera/feature/mode/video/VideoMode;->mStableStatus:I

    .line 406
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/video/VideoMode;->mVideoUI:Lcom/transsion/camera/app/ui/mode/video/VideoUI;

    if-eqz v1, :cond_22

    .line 407
    invoke-virtual {v1, v0}, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->setZoomState(Z)V

    .line 408
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/video/VideoMode;->mVideoUI:Lcom/transsion/camera/app/ui/mode/video/VideoUI;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->setPause(Z)V

    .line 409
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/video/VideoMode;->mVideoUI:Lcom/transsion/camera/app/ui/mode/video/VideoUI;

    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->hideInfo()V

    .line 410
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/video/VideoMode;->mVideoUI:Lcom/transsion/camera/app/ui/mode/video/VideoUI;

    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/mode/video/VideoUI;->onHideRecordingUI()V

    .line 413
    :cond_22
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mTextureRecorder:Lcom/transsion/camera/app/common/recorder/RecorderManager;

    if-eqz v1, :cond_2d

    .line 414
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/video/VideoMode;->mIsGLRecording:Z

    .line 415
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mTextureRecorder:Lcom/transsion/camera/app/common/recorder/RecorderManager;

    invoke-virtual {v1, v0, v0, v0}, Lcom/transsion/camera/app/common/recorder/RecorderManager;->leave(ZZZ)Z

    .line 417
    :cond_2d
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    if-eqz v0, :cond_36

    .line 418
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/video/VideoMode;->mFrameResultCallback:Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->unRegisterFrameResultCallback(Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;)V

    .line 420
    :cond_36
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/VideoMode;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    if-eqz v0, :cond_3f

    .line 421
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v1, v0}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->hideHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    .line 423
    :cond_3f
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mIsLowlightHintSupport:Z

    if-eqz v0, :cond_46

    .line 424
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/video/VideoMode;->hideLowlightHint()V

    :cond_46
    return-void
.end method

.method public bridge synthetic queryState(Ljava/lang/String;)Lcom/transsion/camera/app/common/IAppUI$UIState;
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/mode/ICameraMode;->queryState(Ljava/lang/String;)Lcom/transsion/camera/app/common/IAppUI$UIState;

    move-result-object p0

    return-object p0
.end method

.method public resume()V
    .registers 3

    .line 390
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->resume()V

    .line 391
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/VideoMode;->mVideoUI:Lcom/transsion/camera/app/ui/mode/video/VideoUI;

    const/4 v1, 0x0

    if-eqz v0, :cond_b

    .line 392
    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->setPause(Z)V

    .line 394
    :cond_b
    iput v1, p0, Lcom/transsion/camera/feature/mode/video/VideoMode;->mStableStatus:I

    .line 395
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/VideoMode;->mStableMonitorProxy:Lcom/transsion/camera/app/common/gsensor/StableMonitorProxy;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/gsensor/StableMonitorProxy;->start()V

    .line 396
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/video/VideoMode;->mIsVideoPreviewCallbackInit:Z

    if-eqz v0, :cond_1b

    .line 397
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/video/VideoMode;->mVideoPreviewCallback:Lcom/transsion/camera/app/common/mode/IVideoModeCallback;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/mode/IVideoModeCallback;->resume()V

    :cond_1b
    return-void
.end method

.method protected sendNotification(Landroid/content/Context;)V
    .registers 2

    .line 985
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/video/VideoMode;->mVideoUI:Lcom/transsion/camera/app/ui/mode/video/VideoUI;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->sendNotification(Landroid/content/Context;)V

    return-void
.end method

.method protected showInfo(I)V
    .registers 2

    .line 964
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/video/VideoMode;->mVideoUI:Lcom/transsion/camera/app/ui/mode/video/VideoUI;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->showInfo(I)V

    return-void
.end method

.method protected showRemainingRecordingTime(Ljava/lang/String;)V
    .registers 2

    .line 979
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->showRemainingRecordingTime(Ljava/lang/String;)V

    .line 980
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/video/VideoMode;->mVideoUI:Lcom/transsion/camera/app/ui/mode/video/VideoUI;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->showRemainingTime(Ljava/lang/String;)V

    return-void
.end method

.method protected starStopHDRRecording()V
    .registers 4

    .line 1263
    sget-object v0, Lcom/transsion/camera/feature/mode/video/VideoMode;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "starStopHDRRecording: mIsGLRecording = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/feature/mode/video/VideoMode;->mIsGLRecording:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " , mVideoPreviewCallback:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/video/VideoMode;->mVideoPreviewCallback:Lcom/transsion/camera/app/common/mode/IVideoModeCallback;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1264
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/video/VideoMode;->mIsVideoPreviewCallbackInit:Z

    if-eqz v0, :cond_49

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/VideoMode;->mVideoPreviewCallback:Lcom/transsion/camera/app/common/mode/IVideoModeCallback;

    if-eqz v0, :cond_49

    .line 1265
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/video/VideoMode;->mIsGLRecording:Z

    if-eqz v0, :cond_3c

    const/4 v0, 0x0

    .line 1266
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/video/VideoMode;->mIsGLRecording:Z

    .line 1267
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/video/VideoMode;->mVideoPreviewCallback:Lcom/transsion/camera/app/common/mode/IVideoModeCallback;

    invoke-interface {v1, v0}, Lcom/transsion/camera/app/common/mode/IVideoModeCallback;->startStopRecording(Z)V

    .line 1268
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mTextureRecorder:Lcom/transsion/camera/app/common/recorder/RecorderManager;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/recorder/RecorderManager;->startStop()V

    return-void

    :cond_3c
    const/4 v0, 0x1

    .line 1270
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/video/VideoMode;->mIsGLRecording:Z

    .line 1271
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/video/VideoMode;->mVideoPreviewCallback:Lcom/transsion/camera/app/common/mode/IVideoModeCallback;

    invoke-interface {v1, v0}, Lcom/transsion/camera/app/common/mode/IVideoModeCallback;->startStopRecording(Z)V

    .line 1272
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mTextureRecorder:Lcom/transsion/camera/app/common/recorder/RecorderManager;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/recorder/RecorderManager;->startStop()V

    :cond_49
    return-void
.end method

.method protected stopRecordingByForce()V
    .registers 2

    .line 1255
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/video/VideoMode;->mIsGLRecording:Z

    if-eqz v0, :cond_c

    .line 1256
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mTextureRecorder:Lcom/transsion/camera/app/common/recorder/RecorderManager;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/recorder/RecorderManager;->startStop()V

    const/4 v0, 0x0

    .line 1257
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/video/VideoMode;->mIsGLRecording:Z

    :cond_c
    return-void
.end method

.method protected supportVSSGLRecording()Z
    .registers 1

    .line 1666
    const-string p0, "com.transsion.camera.base_business.vss_sdk.VSSPreview"

    invoke-static {p0}, Lcom/transsion/camera/utils/ReflectionUtils;->findClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    if-eqz p0, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method protected supportedLockStateBackCamera()Lcom/transsion/camera/app/common/mode/IAeAfLock$State;
    .registers 2

    .line 1127
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/video/VideoMode;->isVideoBeautyOn()Z

    move-result v0

    if-nez v0, :cond_31

    .line 1128
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/video/VideoMode;->isVideoPortraitOn()Z

    move-result v0

    if-nez v0, :cond_31

    .line 1129
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/video/VideoMode;->isVideoMakeUpOn()Z

    move-result v0

    if-eqz v0, :cond_13

    goto :goto_31

    .line 1134
    :cond_13
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->aeLockSupport()Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->afLockSupport()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 1135
    sget-object p0, Lcom/transsion/camera/app/common/mode/IAeAfLock$State;->AE_AF_LOCK:Lcom/transsion/camera/app/common/mode/IAeAfLock$State;

    return-object p0

    .line 1137
    :cond_22
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->aeLockSupport()Z

    move-result v0

    if-eqz v0, :cond_3a

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->afLockSupport()Z

    move-result p0

    if-nez p0, :cond_3a

    .line 1138
    sget-object p0, Lcom/transsion/camera/app/common/mode/IAeAfLock$State;->AE_LOCK:Lcom/transsion/camera/app/common/mode/IAeAfLock$State;

    return-object p0

    .line 1130
    :cond_31
    :goto_31
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->aeLockSupport()Z

    move-result p0

    if-eqz p0, :cond_3a

    .line 1131
    sget-object p0, Lcom/transsion/camera/app/common/mode/IAeAfLock$State;->AE_LOCK:Lcom/transsion/camera/app/common/mode/IAeAfLock$State;

    return-object p0

    .line 1141
    :cond_3a
    sget-object p0, Lcom/transsion/camera/app/common/mode/IAeAfLock$State;->UNLOCK:Lcom/transsion/camera/app/common/mode/IAeAfLock$State;

    return-object p0
.end method

.method protected supportedLockStateFrontCamera()Lcom/transsion/camera/app/common/mode/IAeAfLock$State;
    .registers 2

    .line 1153
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/video/VideoMode;->isVideoBeautyOn()Z

    move-result v0

    if-nez v0, :cond_31

    .line 1154
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/video/VideoMode;->isVideoPortraitOn()Z

    move-result v0

    if-nez v0, :cond_31

    .line 1155
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/video/VideoMode;->isVideoMakeUpOn()Z

    move-result v0

    if-eqz v0, :cond_13

    goto :goto_31

    .line 1160
    :cond_13
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->aeLockSupport()Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->afLockSupport()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 1161
    sget-object p0, Lcom/transsion/camera/app/common/mode/IAeAfLock$State;->AE_AF_LOCK:Lcom/transsion/camera/app/common/mode/IAeAfLock$State;

    return-object p0

    .line 1163
    :cond_22
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->aeLockSupport()Z

    move-result v0

    if-eqz v0, :cond_3a

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->afLockSupport()Z

    move-result p0

    if-nez p0, :cond_3a

    .line 1164
    sget-object p0, Lcom/transsion/camera/app/common/mode/IAeAfLock$State;->AE_LOCK:Lcom/transsion/camera/app/common/mode/IAeAfLock$State;

    return-object p0

    .line 1156
    :cond_31
    :goto_31
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->aeLockSupport()Z

    move-result p0

    if-eqz p0, :cond_3a

    .line 1157
    sget-object p0, Lcom/transsion/camera/app/common/mode/IAeAfLock$State;->AE_LOCK:Lcom/transsion/camera/app/common/mode/IAeAfLock$State;

    return-object p0

    .line 1167
    :cond_3a
    sget-object p0, Lcom/transsion/camera/app/common/mode/IAeAfLock$State;->UNLOCK:Lcom/transsion/camera/app/common/mode/IAeAfLock$State;

    return-object p0
.end method

.method public unInit()V
    .registers 3

    .line 353
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->unInit()V

    const/4 v0, 0x0

    .line 354
    iput v0, p0, Lcom/transsion/camera/feature/mode/video/VideoMode;->mStableStatus:I

    .line 355
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/VideoMode;->mStableMonitorProxy:Lcom/transsion/camera/app/common/gsensor/StableMonitorProxy;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/gsensor/StableMonitorProxy;->setStatusCallback(Lcom/transsion/camera/app/common/gsensor/IStableMonitor$IStatusCallback;)V

    .line 356
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/VideoMode;->mStableMonitorProxy:Lcom/transsion/camera/app/common/gsensor/StableMonitorProxy;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/gsensor/StableMonitorProxy;->unInit()V

    .line 358
    const-string v0, "key_update_top_bar_ui"

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/mode/CameraMode;->unRegisterKeyToMonitor(Ljava/lang/String;)V

    .line 359
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/VideoMode;->mVideoUI:Lcom/transsion/camera/app/ui/mode/video/VideoUI;

    if-eqz v0, :cond_1d

    .line 360
    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/mode/video/VideoUI;->unInitVideoUI()V

    .line 363
    :cond_1d
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/VideoMode;->mPreviewBackgroundOperator:Lcom/transsion/camera/app/common/preview/IPreviewOperator;

    if-eqz v0, :cond_24

    .line 364
    invoke-interface {v0}, Lcom/transsion/camera/app/common/preview/IPreviewOperator;->modeUninit()V

    .line 367
    :cond_24
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/mode/video/VideoMode;->isModeSupport360VideoHDR(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_38

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->supportDVGLRecording()Z

    move-result v0

    if-nez v0, :cond_38

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/video/VideoMode;->supportVSSGLRecording()Z

    move-result v0

    if-eqz v0, :cond_41

    .line 368
    :cond_38
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mTextureRecorder:Lcom/transsion/camera/app/common/recorder/RecorderManager;

    if-eqz v0, :cond_41

    .line 369
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/recorder/RecorderManager;->unInit()V

    .line 370
    iput-object v1, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mTextureRecorder:Lcom/transsion/camera/app/common/recorder/RecorderManager;

    .line 374
    :cond_41
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/video/VideoMode;->mIsVideoPreviewCallbackInit:Z

    if-eqz v0, :cond_48

    .line 375
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/video/VideoMode;->unInitVideoPreviewCallback()V

    .line 377
    :cond_48
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/mode/video/VideoMode;->isModeSupport360VideoHDR(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_55

    .line 378
    const-string v0, "key_360_video_hdr"

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/mode/CameraMode;->unRegisterKeyToMonitor(Ljava/lang/String;)V

    .line 381
    :cond_55
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->isCameraFacingBack()Z

    move-result v0

    if-eqz v0, :cond_60

    .line 382
    const-string v0, "key_dol_video_hdr"

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/mode/CameraMode;->unRegisterKeyToMonitor(Ljava/lang/String;)V

    .line 384
    :cond_60
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/video/VideoMode;->mVideoUI:Lcom/transsion/camera/app/ui/mode/video/VideoUI;

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUI;->unregisterPreviewRectListener(Lcom/transsion/camera/app/common/IAppUIListener$IPreviewRectListener;)V

    .line 385
    invoke-static {}, Lcom/transsion/camera/app/common/thermal/ThermalThrottle;->getInstance()Lcom/transsion/camera/app/common/thermal/ThermalThrottle;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/video/VideoMode;->mThermalThrottleListener:Lcom/transsion/camera/feature/mode/video/VideoMode$ThermalThrottleChangeListenerImpl;

    invoke-virtual {v0, p0}, Lcom/transsion/camera/app/common/thermal/ThermalThrottle;->removeThermalThrottleChangeListener(Lcom/transsion/camera/app/common/thermal/IThermalThrottleListener;)V

    return-void
.end method

.method protected updateLowLight(Z)V
    .registers 2

    .line 336
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->updateLowLight(Z)V

    .line 337
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/video/VideoMode;->mVideoUI:Lcom/transsion/camera/app/ui/mode/video/VideoUI;

    if-eqz p0, :cond_a

    .line 338
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->updateLowLight(Z)V

    :cond_a
    return-void
.end method

.method public updatePreviewViewType(Lcom/transsion/camera/utils/SettingInfo$PreviewViewType;)V
    .registers 2

    .line 1779
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/video/VideoMode;->mPreviewViewType:Lcom/transsion/camera/utils/SettingInfo$PreviewViewType;

    return-void
.end method

.method public updateStorageOperator(Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;I)V
    .registers 3

    .line 1297
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->updateStorageOperator(Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;I)V

    .line 1298
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/video/VideoMode;->mVideoPreviewCallback:Lcom/transsion/camera/app/common/mode/IVideoModeCallback;

    if-eqz p1, :cond_17

    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mTextureRecorder:Lcom/transsion/camera/app/common/recorder/RecorderManager;

    if-eqz p1, :cond_17

    .line 1299
    iget-boolean p1, p0, Lcom/transsion/camera/feature/mode/video/VideoMode;->mIsGLRecording:Z

    if-eqz p1, :cond_17

    const/4 p1, 0x1

    if-ne p2, p1, :cond_17

    .line 1300
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mTextureRecorder:Lcom/transsion/camera/app/common/recorder/RecorderManager;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/recorder/RecorderManager;->storageUnMount()V

    :cond_17
    return-void
.end method
