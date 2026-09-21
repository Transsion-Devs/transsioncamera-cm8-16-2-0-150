.class public Lcom/transsion/camera/feature/setting/zoom/ZoomParameterConfig;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/ICameraSetting$IParametersConfigure;


# static fields
.field private static final LIMITED_10X_VALUE:I = 0x186a0

.field private static final MAX_LIMITED_VALUE:I

.field private static final MAX_WIDE_CAMERA_VALUE:Ljava/lang/String;

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mIsZoomSupported:Z

.field private mLastZoomLevel:Ljava/lang/String;

.field private mMaxZoom:Ljava/lang/String;

.field private mPreviewStopped:Z

.field private mSatSupport:Z

.field private mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

.field private mStreamId:I

.field private mStreamIdCallback:Lcom/transsion/camera/adapter/CameraProxy$StreamIdCallback;

.field private mZoom:Lcom/transsion/camera/feature/setting/zoom/Zoom;

.field private mZoom2xRatio:I


# direct methods
.method static bridge synthetic -$$Nest$fgetmStreamId(Lcom/transsion/camera/feature/setting/zoom/ZoomParameterConfig;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/transsion/camera/feature/setting/zoom/ZoomParameterConfig;->mStreamId:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmStreamId(Lcom/transsion/camera/feature/setting/zoom/ZoomParameterConfig;I)V
    .registers 2

    .line 0
    iput p1, p0, Lcom/transsion/camera/feature/setting/zoom/ZoomParameterConfig;->mStreamId:I

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;
    .registers 1

    .line 0
    sget-object v0, Lcom/transsion/camera/feature/setting/zoom/ZoomParameterConfig;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 30
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "ZoomParameterConfig"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/setting/zoom/ZoomParameterConfig;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    .line 33
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mZoomAccuracyEnlarged:Z

    if-eqz v0, :cond_15

    const v0, 0x9c40

    goto :goto_17

    :cond_15
    const/16 v0, 0x190

    :goto_17
    sput v0, Lcom/transsion/camera/feature/setting/zoom/ZoomParameterConfig;->MAX_LIMITED_VALUE:I

    .line 34
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mZoomAccuracyEnlarged:Z

    if-eqz v0, :cond_24

    const-string v0, "16000"

    goto :goto_26

    :cond_24
    const-string v0, "160"

    :goto_26
    sput-object v0, Lcom/transsion/camera/feature/setting/zoom/ZoomParameterConfig;->MAX_WIDE_CAMERA_VALUE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/transsion/camera/feature/setting/zoom/Zoom;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;)V
    .registers 4

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    sget-object v0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->INIT_VALUE:Ljava/lang/String;

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/zoom/ZoomParameterConfig;->mLastZoomLevel:Ljava/lang/String;

    .line 37
    iput-object v0, p0, Lcom/transsion/camera/feature/setting/zoom/ZoomParameterConfig;->mMaxZoom:Ljava/lang/String;

    const/4 v0, 0x0

    .line 41
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/zoom/ZoomParameterConfig;->mSatSupport:Z

    .line 42
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/zoom/ZoomParameterConfig;->mPreviewStopped:Z

    const/4 v0, -0x1

    .line 43
    iput v0, p0, Lcom/transsion/camera/feature/setting/zoom/ZoomParameterConfig;->mStreamId:I

    const/16 v0, 0x4e20

    .line 44
    iput v0, p0, Lcom/transsion/camera/feature/setting/zoom/ZoomParameterConfig;->mZoom2xRatio:I

    .line 239
    new-instance v0, Lcom/transsion/camera/feature/setting/zoom/ZoomParameterConfig$1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/setting/zoom/ZoomParameterConfig$1;-><init>(Lcom/transsion/camera/feature/setting/zoom/ZoomParameterConfig;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/zoom/ZoomParameterConfig;->mStreamIdCallback:Lcom/transsion/camera/adapter/CameraProxy$StreamIdCallback;

    .line 47
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/zoom/ZoomParameterConfig;->mZoom:Lcom/transsion/camera/feature/setting/zoom/Zoom;

    .line 48
    iput-object p2, p0, Lcom/transsion/camera/feature/setting/zoom/ZoomParameterConfig;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    return-void
.end method

.method private isZoomValueValid(Ljava/lang/String;)Z
    .registers 5

    .line 264
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 265
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/zoom/ZoomParameterConfig;->mSatSupport:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_e

    if-eqz p1, :cond_d

    return v2

    :cond_d
    return v1

    .line 268
    :cond_e
    sget-object v0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->INIT_VALUE:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-lt p1, v0, :cond_1f

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/zoom/ZoomParameterConfig;->mMaxZoom:Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    if-gt p1, p0, :cond_1f

    return v2

    :cond_1f
    return v1
.end method

.method private needFovWideCrop()Z
    .registers 4

    .line 203
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/zoom/ZoomParameterConfig;->mZoom:Lcom/transsion/camera/feature/setting/zoom/Zoom;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/zoom/Zoom;->getCurrentMode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.transsion.camera.feature.mode.video.VideoModeEntry"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2a

    iget-object v0, p0, Lcom/transsion/camera/feature/setting/zoom/ZoomParameterConfig;->mZoom:Lcom/transsion/camera/feature/setting/zoom/Zoom;

    .line 204
    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/zoom/Zoom;->getCurrentMode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.transsion.camera.feature.funvideo.mode.FunVideoModeEntry"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2a

    iget-object v0, p0, Lcom/transsion/camera/feature/setting/zoom/ZoomParameterConfig;->mZoom:Lcom/transsion/camera/feature/setting/zoom/Zoom;

    .line 205
    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/zoom/Zoom;->getCurrentMode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.transsion.camera.feature.mode.video.TimeLapseVideoModeEntry"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_57

    .line 206
    :cond_2a
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/feature/setting/zoom/ZoomParameterConfig;->mZoom:Lcom/transsion/camera/feature/setting/zoom/Zoom;

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/setting/SettingBase;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/CameraRepository;->isBackWideCamera(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_57

    iget-object v0, p0, Lcom/transsion/camera/feature/setting/zoom/ZoomParameterConfig;->mZoom:Lcom/transsion/camera/feature/setting/zoom/Zoom;

    .line 207
    const-string v1, "key_anti_video"

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/setting/SettingBase;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "off"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_65

    iget-object v0, p0, Lcom/transsion/camera/feature/setting/zoom/ZoomParameterConfig;->mZoom:Lcom/transsion/camera/feature/setting/zoom/Zoom;

    .line 208
    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/setting/SettingBase;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_65

    :cond_57
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/zoom/ZoomParameterConfig;->mZoom:Lcom/transsion/camera/feature/setting/zoom/Zoom;

    .line 209
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/zoom/Zoom;->getCurrentMode()Ljava/lang/String;

    move-result-object p0

    const-string v0, "com.transsion.camera.feature.mode.dualvideo.DualVideoModeEntry"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_67

    :cond_65
    const/4 p0, 0x1

    return p0

    :cond_67
    const/4 p0, 0x0

    return p0
.end method

.method private reset()V
    .registers 3

    .line 272
    sget-object v0, Lcom/transsion/camera/feature/setting/zoom/ZoomParameterConfig;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "[reset]"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 273
    sget-object v0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->INIT_VALUE:Ljava/lang/String;

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/zoom/ZoomParameterConfig;->mLastZoomLevel:Ljava/lang/String;

    return-void
.end method

.method private setStreamIdCallback(Lcom/transsion/camera/adapter/CameraProxy;)V
    .registers 3

    .line 232
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/zoom/ZoomParameterConfig;->mSatSupport:Z

    if-eqz v0, :cond_e

    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/zoom/ZoomParameterConfig;->mPreviewStopped:Z

    if-nez v0, :cond_e

    .line 233
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/zoom/ZoomParameterConfig;->mStreamIdCallback:Lcom/transsion/camera/adapter/CameraProxy$StreamIdCallback;

    invoke-virtual {p1, p0}, Lcom/transsion/camera/adapter/CameraProxy;->registerStreamIdCallback(Lcom/transsion/camera/adapter/CameraProxy$StreamIdCallback;)V

    return-void

    .line 235
    :cond_e
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/zoom/ZoomParameterConfig;->mStreamIdCallback:Lcom/transsion/camera/adapter/CameraProxy$StreamIdCallback;

    invoke-virtual {p1, p0}, Lcom/transsion/camera/adapter/CameraProxy;->unRegisterStreamIdCallback(Lcom/transsion/camera/adapter/CameraProxy$StreamIdCallback;)V

    return-void
.end method

.method private static updateZoomToCameraInfoTrackerIfNeed(Ljava/lang/String;)V
    .registers 2

    .line 195
    invoke-static {}, Lcom/transsion/camera/utils/FeatureSupport;->isLaunchWithDeveloperMode()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 198
    :cond_7
    invoke-static {}, Lcom/transsion/camera/utils/tuning/TuningFeatureApi;->getInstance()Lcom/transsion/camera/utils/tuning/TuningFeatureApi;

    move-result-object v0

    .line 199
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    invoke-interface {v0, p0}, Lcom/transsion/camera/utils/tuning/ITuningFeatureApi$ICamInfoTracker;->setCurrentZoom(I)V

    return-void
.end method


# virtual methods
.method public configCommand(Lcom/transsion/camera/adapter/CameraProxy;)V
    .registers 3

    .line 214
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/zoom/ZoomParameterConfig;->mZoom:Lcom/transsion/camera/feature/setting/zoom/Zoom;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/zoom/Zoom;->currentSatCamera()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 215
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/zoom/ZoomParameterConfig;->setStreamIdCallback(Lcom/transsion/camera/adapter/CameraProxy;)V

    :cond_b
    return-void
.end method

.method public configParameters(Lcom/transsion/camera/adapter/CameraParameters;)I
    .registers 5

    .line 150
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/zoom/ZoomParameterConfig;->mZoom:Lcom/transsion/camera/feature/setting/zoom/Zoom;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 151
    iget-object v1, p0, Lcom/transsion/camera/feature/setting/zoom/ZoomParameterConfig;->mZoom:Lcom/transsion/camera/feature/setting/zoom/Zoom;

    invoke-virtual {v1}, Lcom/transsion/camera/feature/setting/zoom/Zoom;->isPortrait()Z

    move-result v1

    if-eqz v1, :cond_3d

    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v1

    iget-boolean v1, v1, Lcom/transsion/camera/utils/CustomConfigUtil;->mIsSTblurCheatZoom:Z

    if-eqz v1, :cond_3d

    .line 152
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v1

    iget v1, v1, Lcom/transsion/camera/utils/CustomConfigUtil;->mSecondItemZoomValue:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3d

    .line 153
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mZoomAccuracyEnlarged:Z

    if-nez v0, :cond_37

    .line 154
    iget v0, p0, Lcom/transsion/camera/feature/setting/zoom/ZoomParameterConfig;->mZoom2xRatio:I

    div-int/lit8 v0, v0, 0x64

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_3d

    .line 156
    :cond_37
    iget v0, p0, Lcom/transsion/camera/feature/setting/zoom/ZoomParameterConfig;->mZoom2xRatio:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    :cond_3d
    :goto_3d
    if-nez v0, :cond_47

    .line 163
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/zoom/ZoomParameterConfig;->mZoom:Lcom/transsion/camera/feature/setting/zoom/Zoom;

    sget-object v1, Lcom/transsion/camera/feature/setting/zoom/Zoom;->INIT_VALUE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/setting/zoom/Zoom;->setValue(Ljava/lang/String;)V

    move-object v0, v1

    .line 169
    :cond_47
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 170
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/setting/zoom/ZoomParameterConfig;->isZoomValueValid(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5e

    .line 171
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/zoom/ZoomParameterConfig;->mMaxZoom:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-le v1, v0, :cond_5c

    .line 172
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/zoom/ZoomParameterConfig;->mMaxZoom:Ljava/lang/String;

    goto :goto_5e

    .line 174
    :cond_5c
    sget-object v0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->INIT_VALUE:Ljava/lang/String;

    .line 178
    :cond_5e
    :goto_5e
    iget-object v2, p0, Lcom/transsion/camera/feature/setting/zoom/ZoomParameterConfig;->mLastZoomLevel:Ljava/lang/String;

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6e

    iget-object v2, p0, Lcom/transsion/camera/feature/setting/zoom/ZoomParameterConfig;->mZoom:Lcom/transsion/camera/feature/setting/zoom/Zoom;

    invoke-virtual {v2}, Lcom/transsion/camera/feature/setting/zoom/Zoom;->getUIState()Z

    move-result v2

    if-eqz v2, :cond_75

    .line 179
    :cond_6e
    iget-boolean v2, p0, Lcom/transsion/camera/feature/setting/zoom/ZoomParameterConfig;->mSatSupport:Z

    invoke-virtual {p1, v1, v2}, Lcom/transsion/camera/adapter/CameraParameters;->setZoomRatio(IZ)V

    .line 180
    iput-object v0, p0, Lcom/transsion/camera/feature/setting/zoom/ZoomParameterConfig;->mLastZoomLevel:Ljava/lang/String;

    .line 182
    :cond_75
    iget-object v2, p0, Lcom/transsion/camera/feature/setting/zoom/ZoomParameterConfig;->mZoom:Lcom/transsion/camera/feature/setting/zoom/Zoom;

    invoke-virtual {v2}, Lcom/transsion/camera/feature/setting/zoom/Zoom;->getSmoothZoomValue()I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/transsion/camera/adapter/CameraParameters;->setSmoothZoomValue(I)V

    .line 183
    iget-object v2, p0, Lcom/transsion/camera/feature/setting/zoom/ZoomParameterConfig;->mZoom:Lcom/transsion/camera/feature/setting/zoom/Zoom;

    invoke-virtual {v2}, Lcom/transsion/camera/feature/setting/zoom/Zoom;->getRealZoomValue()I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/transsion/camera/adapter/CameraParameters;->setRealZoomRatio(I)V

    .line 184
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/zoom/ZoomParameterConfig;->needFovWideCrop()Z

    move-result v2

    invoke-virtual {p1, v2}, Lcom/transsion/camera/adapter/CameraParameters;->setFovWideCrop(Z)V

    .line 185
    iget-object v2, p0, Lcom/transsion/camera/feature/setting/zoom/ZoomParameterConfig;->mZoom:Lcom/transsion/camera/feature/setting/zoom/Zoom;

    invoke-virtual {v2}, Lcom/transsion/camera/feature/setting/zoom/Zoom;->focalLengthSupport()Z

    move-result v2

    if-eqz v2, :cond_9f

    .line 186
    iget-object v2, p0, Lcom/transsion/camera/feature/setting/zoom/ZoomParameterConfig;->mZoom:Lcom/transsion/camera/feature/setting/zoom/Zoom;

    invoke-virtual {v2}, Lcom/transsion/camera/feature/setting/zoom/Zoom;->getFocalLength()I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/transsion/camera/adapter/CameraParameters;->setFocalLength(I)V

    .line 188
    :cond_9f
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p1

    int-to-float v1, v1

    invoke-virtual {p1, v1}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setZoomValue(F)V

    .line 189
    invoke-static {v0}, Lcom/transsion/camera/feature/setting/zoom/ZoomParameterConfig;->updateZoomToCameraInfoTrackerIfNeed(Ljava/lang/String;)V

    .line 190
    sget-object p1, Lcom/transsion/camera/feature/setting/zoom/ZoomParameterConfig;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[configParameters] mLastZoomLevel:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/zoom/ZoomParameterConfig;->mLastZoomLevel:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", currentZoomLevel:"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public getStreamId()I
    .registers 1

    .line 260
    iget p0, p0, Lcom/transsion/camera/feature/setting/zoom/ZoomParameterConfig;->mStreamId:I

    return p0
.end method

.method public sendSettingChangeRequest()V
    .registers 3

    .line 221
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/zoom/ZoomParameterConfig;->mIsZoomSupported:Z

    if-eqz v0, :cond_2c

    .line 222
    sget-object v0, Lcom/transsion/camera/feature/setting/zoom/ZoomParameterConfig;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "[sendSettingChangeRequest]"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 223
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mZoomAccuracyEnlarged:Z

    const-string v1, "key_camera_zoom"

    if-nez v0, :cond_21

    .line 224
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/zoom/ZoomParameterConfig;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    const-string v0, "key_asd"

    filled-new-array {v1, v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;->requestChangeSettingValueJustSelf([Ljava/lang/String;)V

    return-void

    .line 226
    :cond_21
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/zoom/ZoomParameterConfig;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/zoom/ZoomParameterConfig;->mZoom:Lcom/transsion/camera/feature/setting/zoom/Zoom;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/zoom/Zoom;->isZooming()Z

    move-result p0

    invoke-interface {v0, v1, p0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;->requestZoomValueChanged(Ljava/lang/String;Z)V

    :cond_2c
    return-void
.end method

.method public setCameraCapabilities(Lcom/transsion/camera/adapter/ICameraCapabilities;)V
    .registers 10

    .line 53
    invoke-interface {p1}, Lcom/transsion/camera/adapter/ICameraCapabilities;->isSatModeSupport()Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/zoom/ZoomParameterConfig;->mSatSupport:Z

    .line 54
    invoke-interface {p1}, Lcom/transsion/camera/adapter/ICameraCapabilities;->getPortrait8M2xZoomRatio()I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/feature/setting/zoom/ZoomParameterConfig;->mZoom2xRatio:I

    .line 56
    invoke-interface {p1}, Lcom/transsion/camera/adapter/ICameraCapabilities;->getSupportedZoomRatios()Ljava/util/List;

    move-result-object v0

    .line 57
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    move v3, v2

    .line 58
    :goto_17
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_31

    .line 59
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_17

    .line 61
    :cond_31
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v3, 0x2

    if-lt v0, v3, :cond_69

    .line 63
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v4, v0, -0x1

    .line 64
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 65
    sget-object v5, Lcom/transsion/camera/feature/setting/zoom/ZoomParameterConfig;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[setCameraCapabilities],supportedZoomRatios :["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "], size :"

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_7f

    .line 67
    :cond_69
    sget-object v0, Lcom/transsion/camera/feature/setting/zoom/ZoomParameterConfig;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[setCameraCapabilities],supportedZoomRatios :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 69
    :goto_7f
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v3, 0x1

    if-lez v0, :cond_1cf

    .line 71
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/zoom/ZoomParameterConfig;->mZoom:Lcom/transsion/camera/feature/setting/zoom/Zoom;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/zoom/Zoom;->shouldLimitForIntentMode()Z

    move-result v0

    const/4 v4, -0x1

    if-eqz v0, :cond_97

    .line 72
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/zoom/ZoomParameterConfig;->mZoom:Lcom/transsion/camera/feature/setting/zoom/Zoom;

    invoke-virtual {p1}, Lcom/transsion/camera/feature/setting/zoom/Zoom;->getLimitValueInIntentMode()I

    move-result p1

    goto/16 :goto_197

    .line 73
    :cond_97
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/zoom/ZoomParameterConfig;->mZoom:Lcom/transsion/camera/feature/setting/zoom/Zoom;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/zoom/Zoom;->isMaxValueLimited()Z

    move-result v0

    if-eqz v0, :cond_a3

    .line 74
    sget p1, Lcom/transsion/camera/feature/setting/zoom/ZoomParameterConfig;->MAX_LIMITED_VALUE:I

    goto/16 :goto_197

    .line 75
    :cond_a3
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/zoom/ZoomParameterConfig;->mZoom:Lcom/transsion/camera/feature/setting/zoom/Zoom;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/zoom/Zoom;->shouldLimitForVideo()Z

    move-result v0

    if-eqz v0, :cond_b3

    .line 76
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/zoom/ZoomParameterConfig;->mZoom:Lcom/transsion/camera/feature/setting/zoom/Zoom;

    invoke-virtual {p1}, Lcom/transsion/camera/feature/setting/zoom/Zoom;->getLimitValueForVideo()I

    move-result p1

    goto/16 :goto_197

    .line 77
    :cond_b3
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/zoom/ZoomParameterConfig;->mZoom:Lcom/transsion/camera/feature/setting/zoom/Zoom;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/zoom/Zoom;->shouldLimitForDocument()Z

    move-result v0

    if-eqz v0, :cond_c3

    .line 78
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/zoom/ZoomParameterConfig;->mZoom:Lcom/transsion/camera/feature/setting/zoom/Zoom;

    invoke-virtual {p1}, Lcom/transsion/camera/feature/setting/zoom/Zoom;->getLimitValueForDocument()I

    move-result p1

    goto/16 :goto_197

    .line 79
    :cond_c3
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/zoom/ZoomParameterConfig;->mZoom:Lcom/transsion/camera/feature/setting/zoom/Zoom;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/zoom/Zoom;->shouldLimitForSuperNight()Z

    move-result v0

    if-eqz v0, :cond_d3

    .line 80
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/zoom/ZoomParameterConfig;->mZoom:Lcom/transsion/camera/feature/setting/zoom/Zoom;

    invoke-virtual {p1}, Lcom/transsion/camera/feature/setting/zoom/Zoom;->getLimitValueForSuperNight()I

    move-result p1

    goto/16 :goto_197

    .line 81
    :cond_d3
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/zoom/ZoomParameterConfig;->mZoom:Lcom/transsion/camera/feature/setting/zoom/Zoom;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/zoom/Zoom;->shouldLimitForPro()Z

    move-result v0

    if-eqz v0, :cond_e3

    .line 82
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/zoom/ZoomParameterConfig;->mZoom:Lcom/transsion/camera/feature/setting/zoom/Zoom;

    invoke-virtual {p1}, Lcom/transsion/camera/feature/setting/zoom/Zoom;->getLimitValueForPro()I

    move-result p1

    goto/16 :goto_197

    .line 83
    :cond_e3
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/zoom/ZoomParameterConfig;->mZoom:Lcom/transsion/camera/feature/setting/zoom/Zoom;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/zoom/Zoom;->shouldLimitForFunVideo()Z

    move-result v0

    if-eqz v0, :cond_f3

    .line 84
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/zoom/ZoomParameterConfig;->mZoom:Lcom/transsion/camera/feature/setting/zoom/Zoom;

    invoke-virtual {p1}, Lcom/transsion/camera/feature/setting/zoom/Zoom;->getLimitValueForFunVideo()I

    move-result p1

    goto/16 :goto_197

    .line 85
    :cond_f3
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/zoom/ZoomParameterConfig;->mZoom:Lcom/transsion/camera/feature/setting/zoom/Zoom;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/zoom/Zoom;->shouldLimitForAIGC()Z

    move-result v0

    if-eqz v0, :cond_103

    .line 86
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/zoom/ZoomParameterConfig;->mZoom:Lcom/transsion/camera/feature/setting/zoom/Zoom;

    invoke-virtual {p1}, Lcom/transsion/camera/feature/setting/zoom/Zoom;->getLimitValueForAIGC()I

    move-result p1

    goto/16 :goto_197

    .line 87
    :cond_103
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/zoom/ZoomParameterConfig;->mZoom:Lcom/transsion/camera/feature/setting/zoom/Zoom;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/zoom/Zoom;->shouldLimitForAIArtMuseum()Z

    move-result v0

    if-eqz v0, :cond_113

    .line 88
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/zoom/ZoomParameterConfig;->mZoom:Lcom/transsion/camera/feature/setting/zoom/Zoom;

    invoke-virtual {p1}, Lcom/transsion/camera/feature/setting/zoom/Zoom;->getLimitValueForAIArtMuseumMode()I

    move-result p1

    goto/16 :goto_197

    .line 89
    :cond_113
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/zoom/ZoomParameterConfig;->mZoom:Lcom/transsion/camera/feature/setting/zoom/Zoom;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/zoom/Zoom;->shouldLimitForAsd()Z

    move-result v0

    if-eqz v0, :cond_123

    .line 90
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/zoom/ZoomParameterConfig;->mZoom:Lcom/transsion/camera/feature/setting/zoom/Zoom;

    invoke-virtual {p1}, Lcom/transsion/camera/feature/setting/zoom/Zoom;->getLimitValueForAsd()I

    move-result p1

    goto/16 :goto_197

    .line 91
    :cond_123
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/zoom/ZoomParameterConfig;->mZoom:Lcom/transsion/camera/feature/setting/zoom/Zoom;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/zoom/Zoom;->isLiteFaceBeautyMode()Z

    move-result v0

    if-nez v0, :cond_191

    iget-object v0, p0, Lcom/transsion/camera/feature/setting/zoom/ZoomParameterConfig;->mZoom:Lcom/transsion/camera/feature/setting/zoom/Zoom;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/zoom/Zoom;->isHighDefinitionMode()Z

    move-result v0

    if-eqz v0, :cond_134

    goto :goto_191

    .line 93
    :cond_134
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/zoom/ZoomParameterConfig;->mZoom:Lcom/transsion/camera/feature/setting/zoom/Zoom;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/zoom/Zoom;->isSlowMotionMode()Z

    move-result v0

    if-eqz v0, :cond_150

    .line 94
    invoke-interface {p1}, Lcom/transsion/camera/adapter/ICameraCapabilities;->shouldLimitZoomInSlowMotion()Z

    move-result p1

    if-eqz p1, :cond_149

    .line 95
    sget-object p1, Lcom/transsion/camera/feature/setting/zoom/Zoom;->INIT_VALUE:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    goto :goto_197

    .line 97
    :cond_149
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/zoom/ZoomParameterConfig;->mZoom:Lcom/transsion/camera/feature/setting/zoom/Zoom;

    invoke-virtual {p1}, Lcom/transsion/camera/feature/setting/zoom/Zoom;->getLimitValueForSlowMotionMode()I

    move-result p1

    goto :goto_197

    .line 99
    :cond_150
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/zoom/ZoomParameterConfig;->mZoom:Lcom/transsion/camera/feature/setting/zoom/Zoom;

    invoke-virtual {p1}, Lcom/transsion/camera/feature/setting/zoom/Zoom;->isMovieMode()Z

    move-result p1

    if-eqz p1, :cond_15f

    .line 100
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/zoom/ZoomParameterConfig;->mZoom:Lcom/transsion/camera/feature/setting/zoom/Zoom;

    invoke-virtual {p1}, Lcom/transsion/camera/feature/setting/zoom/Zoom;->getLimitValueForMovieMode()I

    move-result p1

    goto :goto_197

    .line 101
    :cond_15f
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/zoom/ZoomParameterConfig;->mZoom:Lcom/transsion/camera/feature/setting/zoom/Zoom;

    invoke-virtual {p1}, Lcom/transsion/camera/feature/setting/zoom/Zoom;->shouldLimitZoom4XForSomeMode()Z

    move-result p1

    if-eqz p1, :cond_16a

    .line 102
    sget p1, Lcom/transsion/camera/feature/setting/zoom/ZoomParameterConfig;->MAX_LIMITED_VALUE:I

    goto :goto_197

    .line 103
    :cond_16a
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/zoom/ZoomParameterConfig;->mZoom:Lcom/transsion/camera/feature/setting/zoom/Zoom;

    invoke-virtual {p1}, Lcom/transsion/camera/feature/setting/zoom/Zoom;->shouldLimitZoomEnlarged()Z

    move-result p1

    if-eqz p1, :cond_179

    .line 104
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/zoom/ZoomParameterConfig;->mZoom:Lcom/transsion/camera/feature/setting/zoom/Zoom;

    invoke-virtual {p1}, Lcom/transsion/camera/feature/setting/zoom/Zoom;->getLimitZoomEnlarged()I

    move-result p1

    goto :goto_197

    .line 105
    :cond_179
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/zoom/ZoomParameterConfig;->mZoom:Lcom/transsion/camera/feature/setting/zoom/Zoom;

    invoke-virtual {p1}, Lcom/transsion/camera/feature/setting/zoom/Zoom;->isFlashSnapMode()Z

    move-result p1

    if-eqz p1, :cond_18f

    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/camera/utils/CustomConfigUtil;->isFlashSnapV2_24M()Z

    move-result p1

    if-eqz p1, :cond_18f

    const p1, 0x186a0

    goto :goto_197

    :cond_18f
    move p1, v4

    goto :goto_197

    .line 92
    :cond_191
    :goto_191
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/zoom/ZoomParameterConfig;->mZoom:Lcom/transsion/camera/feature/setting/zoom/Zoom;

    invoke-virtual {p1}, Lcom/transsion/camera/feature/setting/zoom/Zoom;->getLimitValueForLiteFaceBeauty()I

    move-result p1

    .line 108
    :goto_197
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v3

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-eq p1, v4, :cond_1cf

    if-le v0, p1, :cond_1cf

    .line 110
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v0, v3

    .line 111
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v4

    iget-boolean v4, v4, Lcom/transsion/camera/utils/CustomConfigUtil;->mZoomAccuracyEnlarged:Z

    if-eqz v4, :cond_1cb

    .line 112
    div-int/lit8 p1, p1, 0xa

    mul-int/lit8 p1, p1, 0xa

    add-int/lit8 p1, p1, 0xa

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    add-int/lit8 v0, p1, 0x1

    .line 114
    :cond_1cb
    invoke-interface {v1, v2, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v1

    .line 117
    :cond_1cf
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 118
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1e6

    .line 119
    iput-boolean v2, p0, Lcom/transsion/camera/feature/setting/zoom/ZoomParameterConfig;->mIsZoomSupported:Z

    .line 120
    const-string v0, "-1"

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/zoom/ZoomParameterConfig;->mMaxZoom:Ljava/lang/String;

    .line 121
    iget-object v1, p0, Lcom/transsion/camera/feature/setting/zoom/ZoomParameterConfig;->mZoom:Lcom/transsion/camera/feature/setting/zoom/Zoom;

    invoke-virtual {v1, p1, v0}, Lcom/transsion/camera/feature/setting/zoom/Zoom;->initValueAndSupport(Ljava/util/List;Ljava/lang/String;)V

    goto :goto_227

    .line 123
    :cond_1e6
    iput-boolean v3, p0, Lcom/transsion/camera/feature/setting/zoom/ZoomParameterConfig;->mIsZoomSupported:Z

    .line 124
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v3

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/zoom/ZoomParameterConfig;->mMaxZoom:Ljava/lang/String;

    .line 126
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/zoom/ZoomParameterConfig;->mZoom:Lcom/transsion/camera/feature/setting/zoom/Zoom;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/zoom/Zoom;->getUIState()Z

    move-result v0

    if-nez v0, :cond_204

    .line 127
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_206

    .line 129
    :cond_204
    sget-object v0, Lcom/transsion/camera/feature/setting/zoom/ZoomParameterConfig;->MAX_WIDE_CAMERA_VALUE:Ljava/lang/String;

    .line 131
    :goto_206
    iget-object v1, p0, Lcom/transsion/camera/feature/setting/zoom/ZoomParameterConfig;->mZoom:Lcom/transsion/camera/feature/setting/zoom/Zoom;

    invoke-virtual {v1}, Lcom/transsion/camera/feature/setting/zoom/Zoom;->getCurrentMode()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.transsion.camera.feature.mode.streetphoto.StreetPhotoModeEntry"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_21c

    .line 132
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/zoom/ZoomParameterConfig;->mZoom:Lcom/transsion/camera/feature/setting/zoom/Zoom;

    const-string v1, "12000"

    invoke-virtual {v0, p1, v1}, Lcom/transsion/camera/feature/setting/zoom/Zoom;->initValueAndSupport(Ljava/util/List;Ljava/lang/String;)V

    goto :goto_227

    .line 134
    :cond_21c
    iget-object v1, p0, Lcom/transsion/camera/feature/setting/zoom/ZoomParameterConfig;->mZoom:Lcom/transsion/camera/feature/setting/zoom/Zoom;

    iget-boolean v2, p0, Lcom/transsion/camera/feature/setting/zoom/ZoomParameterConfig;->mSatSupport:Z

    if-eqz v2, :cond_224

    sget-object v0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->INIT_VALUE:Ljava/lang/String;

    :cond_224
    invoke-virtual {v1, p1, v0}, Lcom/transsion/camera/feature/setting/zoom/Zoom;->initValueAndSupport(Ljava/util/List;Ljava/lang/String;)V

    .line 138
    :goto_227
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/zoom/ZoomParameterConfig;->mZoom:Lcom/transsion/camera/feature/setting/zoom/Zoom;

    invoke-virtual {p1}, Lcom/transsion/camera/feature/setting/zoom/Zoom;->getUIState()Z

    move-result p1

    if-nez p1, :cond_232

    .line 139
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/zoom/ZoomParameterConfig;->reset()V

    :cond_232
    return-void
.end method

.method public updatePreviewState(Z)V
    .registers 3

    .line 254
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/zoom/ZoomParameterConfig;->mPreviewStopped:Z

    if-eq v0, p1, :cond_6

    .line 255
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/zoom/ZoomParameterConfig;->mPreviewStopped:Z

    :cond_6
    return-void
.end method
