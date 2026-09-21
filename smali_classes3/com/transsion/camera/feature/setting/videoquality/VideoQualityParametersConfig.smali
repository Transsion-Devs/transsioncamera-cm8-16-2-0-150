.class public Lcom/transsion/camera/feature/setting/videoquality/VideoQualityParametersConfig;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/ICameraSetting$IParametersConfigure;


# static fields
.field private static final MAX_SUPPORTED_QUALITY_COUNT:I = 0x4

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mCameraProxy:Lcom/transsion/camera/adapter/CameraProxy;

.field private mDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

.field private final mFrameResultCallback:Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;

.field private mHighFpsResolutions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/camera/utils/HighFpsResolution;",
            ">;"
        }
    .end annotation
.end field

.field private mHighFpsSupport:Z

.field private mIsDolVideoHdrSupport:Z

.field private mIsSupportSprdVideo2k:Z

.field private mIsVideoSuperNightSupport:Z

.field private mPreviewStopped:Z

.field private mPreviousQuality:Ljava/lang/String;

.field private mSatSupport:Z

.field private mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

.field private mStreamId:I

.field private mSuperAntiVideoRestrictionType:I

.field private mSupportHFPSAntiVideo:Z

.field private mSupportSuperAntiVideoV2:Z

.field private mVideoQuality:Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;


# direct methods
.method public static synthetic $r8$lambda$MSo-atRgN0bmbkDGma91DF7COb0(Lcom/transsion/camera/feature/setting/videoquality/VideoQualityParametersConfig;Landroid/hardware/camera2/CaptureResult;Landroid/util/Size;Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;)V
    .registers 4

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/camera/feature/setting/videoquality/VideoQualityParametersConfig;->doOnFrameResultCallback(Landroid/hardware/camera2/CaptureResult;Landroid/util/Size;Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 44
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "VideoQualityParametersConfig"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/setting/videoquality/VideoQualityParametersConfig;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)V
    .registers 6

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 51
    iput-object v0, p0, Lcom/transsion/camera/feature/setting/videoquality/VideoQualityParametersConfig;->mPreviousQuality:Ljava/lang/String;

    const/4 v0, 0x0

    .line 52
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/videoquality/VideoQualityParametersConfig;->mSatSupport:Z

    .line 53
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/videoquality/VideoQualityParametersConfig;->mPreviewStopped:Z

    const/4 v1, -0x1

    .line 54
    iput v1, p0, Lcom/transsion/camera/feature/setting/videoquality/VideoQualityParametersConfig;->mStreamId:I

    .line 56
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/videoquality/VideoQualityParametersConfig;->mIsSupportSprdVideo2k:Z

    .line 182
    new-instance v0, Lcom/transsion/camera/feature/setting/videoquality/VideoQualityParametersConfig$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/setting/videoquality/VideoQualityParametersConfig$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/feature/setting/videoquality/VideoQualityParametersConfig;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/videoquality/VideoQualityParametersConfig;->mFrameResultCallback:Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;

    .line 66
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/videoquality/VideoQualityParametersConfig;->mVideoQuality:Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;

    .line 67
    iput-object p2, p0, Lcom/transsion/camera/feature/setting/videoquality/VideoQualityParametersConfig;->mDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    .line 68
    iput-object p3, p0, Lcom/transsion/camera/feature/setting/videoquality/VideoQualityParametersConfig;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    .line 69
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p1

    iget p1, p1, Lcom/transsion/camera/utils/CustomConfigUtil;->mSuperAntiVideoRestrictionType:I

    iput p1, p0, Lcom/transsion/camera/feature/setting/videoquality/VideoQualityParametersConfig;->mSuperAntiVideoRestrictionType:I

    .line 70
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p1

    iget-boolean p1, p1, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportSuperAntiVideoV2:Z

    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/videoquality/VideoQualityParametersConfig;->mSupportSuperAntiVideoV2:Z

    .line 71
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p1

    iget-boolean p1, p1, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportHFPSAntiVideo:Z

    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/videoquality/VideoQualityParametersConfig;->mSupportHFPSAntiVideo:Z

    return-void
.end method

.method private doOnFrameResultCallback(Landroid/hardware/camera2/CaptureResult;Landroid/util/Size;Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;)V
    .registers 4

    .line 185
    invoke-interface {p3, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->checkStreamIdResult(Landroid/hardware/camera2/CaptureResult;)[I

    move-result-object p1

    if-eqz p1, :cond_40

    .line 186
    array-length p2, p1

    if-lez p2, :cond_40

    const/4 p2, 0x0

    .line 187
    aget p1, p1, p2

    .line 188
    iget p2, p0, Lcom/transsion/camera/feature/setting/videoquality/VideoQualityParametersConfig;->mStreamId:I

    if-eq p2, p1, :cond_3f

    .line 189
    iput p1, p0, Lcom/transsion/camera/feature/setting/videoquality/VideoQualityParametersConfig;->mStreamId:I

    .line 190
    sget-object p1, Lcom/transsion/camera/feature/setting/videoquality/VideoQualityParametersConfig;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "[onStreamIdCallback] mStreamId:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/transsion/camera/feature/setting/videoquality/VideoQualityParametersConfig;->mStreamId:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 192
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/videoquality/VideoQualityParametersConfig;->updateSupportedSizes(Z)Ljava/util/List;

    .line 193
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/videoquality/VideoQualityParametersConfig;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getStatusMonitor()Lcom/transsion/camera/app/common/setting/StatusMonitor;

    move-result-object p0

    const-string p1, "key_update_top_bar_ui"

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p0

    const-string p2, "on"

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_3f
    return-void

    :cond_40
    const/4 p1, -0x1

    .line 196
    iput p1, p0, Lcom/transsion/camera/feature/setting/videoquality/VideoQualityParametersConfig;->mStreamId:I

    return-void
.end method

.method private getSupportedListQuality(ILjava/util/List;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 248
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 249
    sget-object v1, Lcom/transsion/camera/feature/setting/videoquality/VideoQualityHelper;->sVideoQualities:[I

    invoke-static {p1, v0, p2, v1}, Lcom/transsion/camera/utils/CameraUtil;->generateSupportedList(ILjava/util/ArrayList;Ljava/util/List;[I)V

    .line 251
    invoke-direct {p0, v0, p1}, Lcom/transsion/camera/feature/setting/videoquality/VideoQualityParametersConfig;->updateSupportedList(Ljava/util/ArrayList;I)V

    return-object v0
.end method

.method private isSameStoreScope()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method private isSupportCamera()Z
    .registers 3

    .line 306
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/feature/setting/videoquality/VideoQualityParametersConfig;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getCameraId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/CameraRepository;->isBackSATCamera(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_23

    .line 307
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/videoquality/VideoQualityParametersConfig;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getCameraId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/transsion/camera/app/common/CameraRepository;->isBackMainCamera(Ljava/lang/String;)Z

    move-result p0

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

.method private setStreamIdCallback(Lcom/transsion/camera/adapter/CameraProxy;)V
    .registers 3

    .line 171
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/videoquality/VideoQualityParametersConfig;->mSatSupport:Z

    if-eqz v0, :cond_e

    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/videoquality/VideoQualityParametersConfig;->mPreviewStopped:Z

    if-nez v0, :cond_e

    .line 172
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/videoquality/VideoQualityParametersConfig;->mFrameResultCallback:Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;

    invoke-virtual {p1, p0}, Lcom/transsion/camera/adapter/CameraProxy;->registerFrameResultCallback(Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;)V

    return-void

    :cond_e
    const/4 p1, -0x1

    .line 174
    iput p1, p0, Lcom/transsion/camera/feature/setting/videoquality/VideoQualityParametersConfig;->mStreamId:I

    .line 175
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/videoquality/VideoQualityParametersConfig;->mVideoQuality:Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->isVideoMode()Z

    move-result p1

    if-eqz p1, :cond_1d

    const/4 p1, 0x1

    .line 176
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/videoquality/VideoQualityParametersConfig;->updateSupportedSizes(Z)Ljava/util/List;

    :cond_1d
    return-void
.end method

.method private updateSupportedList(Ljava/util/ArrayList;I)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .line 256
    iget-boolean p2, p0, Lcom/transsion/camera/feature/setting/videoquality/VideoQualityParametersConfig;->mHighFpsSupport:Z

    const/4 v0, 0x0

    if-eqz p2, :cond_4b

    .line 257
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/videoquality/VideoQualityParametersConfig;->mHighFpsResolutions:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    const/4 p2, 0x1

    .line 258
    const-string v1, "6_60"

    const/4 v2, 0x6

    const/4 v3, -0x1

    if-le p0, p2, :cond_3e

    const/16 p0, 0x8

    .line 261
    invoke-static {p0}, Lcom/transsion/camera/utils/VideoQualityUtils;->isSupportCustomVideoQuality(I)Z

    move-result p2

    if-nez p2, :cond_23

    .line 262
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p0

    goto :goto_29

    .line 264
    :cond_23
    new-array p0, v0, [Ljava/lang/Object;

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/VideoQualityUtils;->setPlatformSpecificConfigs(Ljava/util/ArrayList;[Ljava/lang/Object;)V

    move p0, v3

    :goto_29
    if-eq p0, v3, :cond_30

    .line 268
    const-string p2, "8_60"

    invoke-virtual {p1, p0, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 270
    :cond_30
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p0

    if-eq p0, v3, :cond_4b

    .line 272
    invoke-virtual {p1, p0, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_4b

    .line 275
    :cond_3e
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p0

    if-eq p0, v3, :cond_4b

    .line 277
    invoke-virtual {p1, p0, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 281
    :cond_4b
    :goto_4b
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p0

    const/4 p2, 0x4

    if-le p0, p2, :cond_61

    .line 282
    new-instance p0, Ljava/util/ArrayList;

    invoke-virtual {p1, v0, p2}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object p2

    invoke-direct {p0, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 283
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 284
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_61
    return-void
.end method

.method private updateSupportedSizes(Z)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 203
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/videoquality/VideoQualityParametersConfig;->mVideoQuality:Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;->getCameraId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 204
    iget-boolean v1, p0, Lcom/transsion/camera/feature/setting/videoquality/VideoQualityParametersConfig;->mSatSupport:Z

    if-eqz v1, :cond_14

    .line 205
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/videoquality/VideoQualityParametersConfig;->getStreamIdByZoom()I

    move-result v1

    iput v1, p0, Lcom/transsion/camera/feature/setting/videoquality/VideoQualityParametersConfig;->mStreamId:I

    .line 207
    :cond_14
    sget-object v1, Lcom/transsion/camera/feature/setting/videoquality/VideoQualityParametersConfig;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateSupportedSizes mStreamId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/transsion/camera/feature/setting/videoquality/VideoQualityParametersConfig;->mStreamId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " cameraId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " mSatSupport = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/transsion/camera/feature/setting/videoquality/VideoQualityParametersConfig;->mSatSupport:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 209
    iget v1, p0, Lcom/transsion/camera/feature/setting/videoquality/VideoQualityParametersConfig;->mStreamId:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_49

    iget-boolean v2, p0, Lcom/transsion/camera/feature/setting/videoquality/VideoQualityParametersConfig;->mSatSupport:Z

    if-eqz v2, :cond_49

    move v0, v1

    .line 212
    :cond_49
    invoke-static {}, Lcom/transsion/camera/adapter/CameraAgentFactory;->getCameraAgent()Lcom/transsion/camera/adapter/CameraAgent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/camera/adapter/CameraAgent;->getCameraDeviceInfo()Lcom/transsion/camera/adapter/ICameraDeviceInfo;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->isSupportHighFps(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/transsion/camera/feature/setting/videoquality/VideoQualityParametersConfig;->mHighFpsSupport:Z

    .line 213
    invoke-static {}, Lcom/transsion/camera/adapter/CameraAgentFactory;->getCameraAgent()Lcom/transsion/camera/adapter/CameraAgent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/camera/adapter/CameraAgent;->getCameraDeviceInfo()Lcom/transsion/camera/adapter/ICameraDeviceInfo;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->getSupportedVideoSizes(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_79

    .line 215
    invoke-direct {p0, v0, v1}, Lcom/transsion/camera/feature/setting/videoquality/VideoQualityParametersConfig;->getSupportedListQuality(ILjava/util/List;)Ljava/util/List;

    move-result-object v0

    if-eqz p1, :cond_78

    .line 218
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/videoquality/VideoQualityParametersConfig;->mVideoQuality:Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;->reConfigSupportList(Ljava/util/List;)V

    :cond_78
    return-object v0

    :cond_79
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public configCommand(Lcom/transsion/camera/adapter/CameraProxy;)V
    .registers 2

    .line 166
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/videoquality/VideoQualityParametersConfig;->mCameraProxy:Lcom/transsion/camera/adapter/CameraProxy;

    .line 167
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/videoquality/VideoQualityParametersConfig;->setStreamIdCallback(Lcom/transsion/camera/adapter/CameraProxy;)V

    return-void
.end method

.method public configParameters(Lcom/transsion/camera/adapter/CameraParameters;)I
    .registers 10

    const/16 v0, 0x32

    .line 130
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 113
    iget-object v1, p0, Lcom/transsion/camera/feature/setting/videoquality/VideoQualityParametersConfig;->mPreviousQuality:Ljava/lang/String;

    iget-object v2, p0, Lcom/transsion/camera/feature/setting/videoquality/VideoQualityParametersConfig;->mVideoQuality:Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;

    invoke-virtual {v2}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1c

    .line 114
    iget-object v1, p0, Lcom/transsion/camera/feature/setting/videoquality/VideoQualityParametersConfig;->mVideoQuality:Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/camera/feature/setting/videoquality/VideoQualityParametersConfig;->mPreviousQuality:Ljava/lang/String;

    .line 117
    :cond_1c
    iget-object v1, p0, Lcom/transsion/camera/feature/setting/videoquality/VideoQualityParametersConfig;->mVideoQuality:Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 118
    iget-boolean v2, p0, Lcom/transsion/camera/feature/setting/videoquality/VideoQualityParametersConfig;->mHighFpsSupport:Z

    const-string v3, "0"

    const-string v4, "8_60"

    const-string v5, "1"

    if-eqz v2, :cond_80

    .line 119
    const-string v2, "6_60"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_49

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3b

    goto :goto_49

    .line 139
    :cond_3b
    invoke-virtual {p1}, Lcom/transsion/camera/adapter/CameraParameters;->getHighFpsMode()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_80

    .line 140
    invoke-virtual {p1, v3}, Lcom/transsion/camera/adapter/CameraParameters;->setHighFpsMode(Ljava/lang/String;)V

    goto :goto_80

    .line 120
    :cond_49
    :goto_49
    iget-boolean v2, p0, Lcom/transsion/camera/feature/setting/videoquality/VideoQualityParametersConfig;->mSupportHFPSAntiVideo:Z

    if-eqz v2, :cond_7d

    .line 121
    iget-object v2, p0, Lcom/transsion/camera/feature/setting/videoquality/VideoQualityParametersConfig;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v6, "key_anti_video"

    .line 123
    invoke-interface {v2, v6}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 121
    const-string v6, "on"

    invoke-static {v6, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    .line 124
    iget-boolean v7, p0, Lcom/transsion/camera/feature/setting/videoquality/VideoQualityParametersConfig;->mSupportSuperAntiVideoV2:Z

    if-eqz v7, :cond_6b

    .line 125
    iget-object v2, p0, Lcom/transsion/camera/feature/setting/videoquality/VideoQualityParametersConfig;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v7, "key_super_anti_video"

    .line 127
    invoke-interface {v2, v7}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 125
    invoke-static {v6, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    :cond_6b
    if-eqz v2, :cond_79

    .line 130
    new-instance v2, Landroid/util/Range;

    invoke-direct {v2, v0, v0}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    invoke-virtual {p1, v2}, Lcom/transsion/camera/adapter/CameraParameters;->setLimitFpsRange(Landroid/util/Range;)V

    .line 131
    invoke-virtual {p1, v5}, Lcom/transsion/camera/adapter/CameraParameters;->setHighFpsMode(Ljava/lang/String;)V

    goto :goto_80

    .line 133
    :cond_79
    invoke-virtual {p1, v5}, Lcom/transsion/camera/adapter/CameraParameters;->setHighFpsMode(Ljava/lang/String;)V

    goto :goto_80

    .line 136
    :cond_7d
    invoke-virtual {p1, v5}, Lcom/transsion/camera/adapter/CameraParameters;->setHighFpsMode(Ljava/lang/String;)V

    .line 144
    :cond_80
    :goto_80
    const-string v0, "8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_97

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8f

    goto :goto_97

    .line 147
    :cond_8f
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/transsion/camera/adapter/CameraParameters;->setVideoSuperNightResolution(I)V

    goto :goto_9e

    .line 145
    :cond_97
    :goto_97
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/transsion/camera/adapter/CameraParameters;->setVideoSuperNightResolution(I)V

    .line 150
    :goto_9e
    invoke-static {}, Lcom/transsion/camera/utils/FeatureSupport;->isSprdPlatform()Z

    move-result v0

    if-eqz v0, :cond_b9

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/videoquality/VideoQualityParametersConfig;->mVideoQuality:Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;

    .line 151
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->isVideoMode()Z

    move-result p0

    if-eqz p0, :cond_b9

    const-string p0, "11"

    .line 152
    invoke-static {p0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_b9

    const/4 p0, 0x1

    .line 153
    invoke-virtual {p1, p0}, Lcom/transsion/camera/adapter/CameraParameters;->setVideo2kSize(Z)V

    goto :goto_bd

    :cond_b9
    const/4 p0, 0x0

    .line 155
    invoke-virtual {p1, p0}, Lcom/transsion/camera/adapter/CameraParameters;->setVideo2kSize(Z)V

    :goto_bd
    const/4 p0, -0x1

    return p0
.end method

.method public getStreamIdByZoom()I
    .registers 7

    .line 324
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/videoquality/VideoQualityParametersConfig;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getCameraId()Ljava/lang/String;

    move-result-object v0

    .line 325
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/transsion/camera/app/common/CameraRepository;->isBackSATCamera(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, -0x1

    if-eqz v1, :cond_b1

    .line 326
    iget-object v1, p0, Lcom/transsion/camera/feature/setting/videoquality/VideoQualityParametersConfig;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getDataStore()Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object v1

    .line 327
    invoke-static {v0}, Lcom/transsion/camera/adapter/CameraInfoUtil;->getFacing(Ljava/lang/String;)I

    move-result v0

    .line 328
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/videoquality/VideoQualityParametersConfig;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getDataStore()Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object p0

    .line 329
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result v3

    if-eqz v3, :cond_2a

    const-string v3, "key_camera_zoom"

    goto :goto_2c

    :cond_2a
    const-string v3, "key_real_zoom"

    :goto_2c
    sget-object v4, Lcom/transsion/camera/utils/SettingInfo;->ZOOM_INIT_VALUE:Ljava/lang/String;

    .line 331
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/transsion/camera/app/common/storage/DataStore;->getCameraScope(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 328
    invoke-virtual {p0, v3, v4, v0}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 332
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/CameraRepository;->getBackMainCameraMiniZoom()I

    move-result v0

    .line 333
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/CameraRepository;->getBackLongFocusCameraMiniZoom()I

    move-result v1

    .line 334
    sget-object v3, Lcom/transsion/camera/feature/setting/videoquality/VideoQualityParametersConfig;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getStreamIdByZoom: zoom: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " mainMiniZoom: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " miniLongZoom : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-eqz p0, :cond_b1

    .line 337
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    if-ge p0, v0, :cond_86

    .line 339
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/CameraRepository;->getWideCamera(Z)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_86
    if-eq v1, v2, :cond_a4

    if-ge p0, v1, :cond_97

    .line 344
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/CameraRepository;->getMainBackCamera()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    return p0

    .line 346
    :cond_97
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/CameraRepository;->getBackLongFocusCamera()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    return p0

    .line 350
    :cond_a4
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/CameraRepository;->getMainBackCamera()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_b1
    return v2
.end method

.method public isDolVideoHdrSupported()Z
    .registers 1

    .line 320
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/videoquality/VideoQualityParametersConfig;->mIsDolVideoHdrSupport:Z

    return p0
.end method

.method public isVideoSuperNightSupport()Z
    .registers 1

    .line 316
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/videoquality/VideoQualityParametersConfig;->mIsVideoSuperNightSupport:Z

    return p0
.end method

.method public resetStreamId()V
    .registers 3

    .line 231
    iget v0, p0, Lcom/transsion/camera/feature/setting/videoquality/VideoQualityParametersConfig;->mStreamId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_7

    .line 232
    iput v1, p0, Lcom/transsion/camera/feature/setting/videoquality/VideoQualityParametersConfig;->mStreamId:I

    :cond_7
    return-void
.end method

.method public sendSettingChangeRequest()V
    .registers 2

    .line 312
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/videoquality/VideoQualityParametersConfig;->mDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/videoquality/VideoQualityParametersConfig;->mVideoQuality:Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;->requestChangeSettingValue(Ljava/lang/String;)V

    return-void
.end method

.method public setCameraCapabilities(Lcom/transsion/camera/adapter/ICameraCapabilities;)V
    .registers 10

    .line 76
    invoke-interface {p1}, Lcom/transsion/camera/adapter/ICameraCapabilities;->getSupportedVideoSizes()Ljava/util/List;

    move-result-object v0

    .line 77
    invoke-interface {p1}, Lcom/transsion/camera/adapter/ICameraCapabilities;->isSatModeSupport()Z

    move-result v1

    iput-boolean v1, p0, Lcom/transsion/camera/feature/setting/videoquality/VideoQualityParametersConfig;->mSatSupport:Z

    .line 78
    invoke-interface {p1}, Lcom/transsion/camera/adapter/ICameraCapabilities;->isHighFpsSupport()Z

    move-result v1

    iput-boolean v1, p0, Lcom/transsion/camera/feature/setting/videoquality/VideoQualityParametersConfig;->mHighFpsSupport:Z

    .line 79
    invoke-interface {p1}, Lcom/transsion/camera/adapter/ICameraCapabilities;->getSupportedHighFpsResolutions()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/camera/feature/setting/videoquality/VideoQualityParametersConfig;->mHighFpsResolutions:Ljava/util/List;

    .line 80
    invoke-interface {p1}, Lcom/transsion/camera/adapter/ICameraCapabilities;->isVideoSuperNightSupport()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_26

    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/videoquality/VideoQualityParametersConfig;->isSupportCamera()Z

    move-result v1

    if-eqz v1, :cond_26

    move v1, v2

    goto :goto_27

    :cond_26
    move v1, v3

    :goto_27
    iput-boolean v1, p0, Lcom/transsion/camera/feature/setting/videoquality/VideoQualityParametersConfig;->mIsVideoSuperNightSupport:Z

    .line 81
    invoke-interface {p1}, Lcom/transsion/camera/adapter/ICameraCapabilities;->getVideoSprd2kSupport()Z

    move-result v1

    iput-boolean v1, p0, Lcom/transsion/camera/feature/setting/videoquality/VideoQualityParametersConfig;->mIsSupportSprdVideo2k:Z

    .line 82
    invoke-interface {p1}, Lcom/transsion/camera/adapter/ICameraCapabilities;->getSupportedDolHdrModes()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v2, :cond_3b

    move v1, v2

    goto :goto_3c

    :cond_3b
    move v1, v3

    :goto_3c
    iput-boolean v1, p0, Lcom/transsion/camera/feature/setting/videoquality/VideoQualityParametersConfig;->mIsDolVideoHdrSupport:Z

    .line 83
    iget-object v1, p0, Lcom/transsion/camera/feature/setting/videoquality/VideoQualityParametersConfig;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getDataStore()Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object v1

    .line 84
    iget-boolean v4, p0, Lcom/transsion/camera/feature/setting/videoquality/VideoQualityParametersConfig;->mIsSupportSprdVideo2k:Z

    const-string v5, "0"

    if-eqz v4, :cond_4d

    const-string v4, "1"

    goto :goto_4e

    :cond_4d
    move-object v4, v5

    :goto_4e
    invoke-virtual {v1}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v6

    const-string v7, "key_sprd_video_2k"

    invoke-virtual {v1, v7, v4, v6, v2}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 85
    invoke-interface {p1}, Lcom/transsion/camera/adapter/ICameraCapabilities;->isVideoCameraSupport()Z

    move-result p1

    if-eqz p1, :cond_6f

    .line 86
    invoke-static {}, Lcom/transsion/camera/adapter/CameraAgentFactory;->getCameraAgent()Lcom/transsion/camera/adapter/CameraAgent;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/camera/adapter/CameraAgent;->getCameraDeviceInfo()Lcom/transsion/camera/adapter/ICameraDeviceInfo;

    move-result-object p1

    .line 87
    invoke-interface {p1, v5}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->getSupportedVideoSizes(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 88
    invoke-interface {p1}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->isHighFPSSupport()Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/videoquality/VideoQualityParametersConfig;->mHighFpsSupport:Z

    .line 91
    :cond_6f
    iget-boolean p1, p0, Lcom/transsion/camera/feature/setting/videoquality/VideoQualityParametersConfig;->mSatSupport:Z

    if-eqz p1, :cond_78

    .line 92
    invoke-direct {p0, v3}, Lcom/transsion/camera/feature/setting/videoquality/VideoQualityParametersConfig;->updateSupportedSizes(Z)Ljava/util/List;

    move-result-object p1

    goto :goto_a9

    .line 94
    :cond_78
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/videoquality/VideoQualityParametersConfig;->mVideoQuality:Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;

    invoke-virtual {p1}, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;->getCameraId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/feature/setting/videoquality/VideoQualityParametersConfig;->getSupportedListQuality(ILjava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 95
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/videoquality/VideoQualityParametersConfig;->mVideoQuality:Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;->getCameraId()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/transsion/camera/adapter/CameraAgentFactory;->getCameraAgent()Lcom/transsion/camera/adapter/CameraAgent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/camera/adapter/CameraAgent;->getCameraDeviceInfo()Lcom/transsion/camera/adapter/ICameraDeviceInfo;

    move-result-object v1

    invoke-interface {v1}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->getWideCameraId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a9

    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mVideoWideSupportHighQuality:Z

    if-nez v0, :cond_a9

    .line 96
    invoke-interface {p1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_a9
    :goto_a9
    if-eqz p1, :cond_dd

    .line 99
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_dd

    const/4 v0, 0x6

    .line 100
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_c9

    .line 102
    iget-object v1, p0, Lcom/transsion/camera/feature/setting/videoquality/VideoQualityParametersConfig;->mVideoQuality:Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, p1, v0}, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;->initValueAndSupport(Ljava/util/List;Ljava/lang/String;)V

    goto :goto_d4

    .line 104
    :cond_c9
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/videoquality/VideoQualityParametersConfig;->mVideoQuality:Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;->initValueAndSupport(Ljava/util/List;Ljava/lang/String;)V

    .line 106
    :goto_d4
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/videoquality/VideoQualityParametersConfig;->mVideoQuality:Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;

    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/videoquality/VideoQualityParametersConfig;->isSameStoreScope()Z

    move-result p0

    invoke-virtual {p1, p0}, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;->onStoreScopeInit(Z)V

    :cond_dd
    return-void
.end method

.method public unInitParametersConfig()V
    .registers 3

    .line 237
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/videoquality/VideoQualityParametersConfig;->mCameraProxy:Lcom/transsion/camera/adapter/CameraProxy;

    if-eqz v0, :cond_c

    .line 238
    iget-object v1, p0, Lcom/transsion/camera/feature/setting/videoquality/VideoQualityParametersConfig;->mFrameResultCallback:Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/adapter/CameraProxy;->unRegisterFrameResultCallback(Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;)V

    const/4 v0, 0x0

    .line 239
    iput-object v0, p0, Lcom/transsion/camera/feature/setting/videoquality/VideoQualityParametersConfig;->mCameraProxy:Lcom/transsion/camera/adapter/CameraProxy;

    :cond_c
    return-void
.end method

.method public updatePreviewState(Z)V
    .registers 3

    .line 225
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/videoquality/VideoQualityParametersConfig;->mPreviewStopped:Z

    if-eq v0, p1, :cond_6

    .line 226
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/videoquality/VideoQualityParametersConfig;->mPreviewStopped:Z

    :cond_6
    return-void
.end method
