.class public Lcom/transsion/camera/feature/setting/videoasd/VideoAsdParameterConfigure;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/ICameraSetting$IParametersConfigure;


# static fields
.field private static final ASD_TYPE_INIT_VALUE:I = -0x1

.field private static final OFF:I

.field private static final ON_LIGHT:I

.field private static final ON_LIGHT_STRING:Ljava/lang/String; = "3"

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

.field private static final VIDEO_ASD_TYPE_INIT_VALUE:I = -0x1


# instance fields
.field private mAlgorithm:I

.field private final mCameraAsdCallback:Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;

.field private mCurrentHdrValue:Ljava/lang/String;

.field private mCurrentSuperNightValue:Ljava/lang/String;

.field private mEffect:I

.field private mIs360HDRSupport:Z

.field private mIsDolHdrSupport:Z

.field private mIsVideoSuperNightSupport:Z

.field private mIsVideoSuperNightYUVSupport:Z

.field private mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

.field private mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

.field private mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

.field private mStreamId:I

.field private mSupportedValues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mVideoAsd:Lcom/transsion/camera/feature/setting/videoasd/VideoAsd;

.field private mVideoAsdSupport:Z

.field private mVideoBeautySupportModes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$PqX2TVG7ALvgX6SzeSP48hVId1g(Lcom/transsion/camera/feature/setting/videoasd/VideoAsdParameterConfigure;Landroid/hardware/camera2/CaptureResult;Landroid/util/Size;Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;)V
    .registers 4

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/camera/feature/setting/videoasd/VideoAsdParameterConfigure;->lambda$new$0(Landroid/hardware/camera2/CaptureResult;Landroid/util/Size;Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 46
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "VideoAsdParameterConfigure"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/setting/videoasd/VideoAsdParameterConfigure;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    .line 52
    const-string v0, "0"

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/transsion/camera/feature/setting/videoasd/VideoAsdParameterConfigure;->OFF:I

    .line 53
    const-string v0, "3"

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/transsion/camera/feature/setting/videoasd/VideoAsdParameterConfigure;->ON_LIGHT:I

    return-void
.end method

.method public constructor <init>(Lcom/transsion/camera/feature/setting/videoasd/VideoAsd;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)V
    .registers 5

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/videoasd/VideoAsdParameterConfigure;->mVideoBeautySupportModes:Ljava/util/List;

    const/4 v0, -0x1

    .line 64
    iput v0, p0, Lcom/transsion/camera/feature/setting/videoasd/VideoAsdParameterConfigure;->mStreamId:I

    .line 66
    iput v0, p0, Lcom/transsion/camera/feature/setting/videoasd/VideoAsdParameterConfigure;->mAlgorithm:I

    .line 67
    iput v0, p0, Lcom/transsion/camera/feature/setting/videoasd/VideoAsdParameterConfigure;->mEffect:I

    .line 281
    new-instance v0, Lcom/transsion/camera/feature/setting/videoasd/VideoAsdParameterConfigure$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/setting/videoasd/VideoAsdParameterConfigure$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/feature/setting/videoasd/VideoAsdParameterConfigure;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/videoasd/VideoAsdParameterConfigure;->mCameraAsdCallback:Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;

    .line 75
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/videoasd/VideoAsdParameterConfigure;->mVideoAsd:Lcom/transsion/camera/feature/setting/videoasd/VideoAsd;

    .line 76
    iput-object p2, p0, Lcom/transsion/camera/feature/setting/videoasd/VideoAsdParameterConfigure;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    .line 77
    iput-object p3, p0, Lcom/transsion/camera/feature/setting/videoasd/VideoAsdParameterConfigure;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    .line 78
    invoke-interface {p3}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getStatusMonitor()Lcom/transsion/camera/app/common/setting/StatusMonitor;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/setting/videoasd/VideoAsdParameterConfigure;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    return-void
.end method

.method private is4kVideoQuality()Z
    .registers 2

    .line 263
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/videoasd/VideoAsdParameterConfigure;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v0, "key_video_quality"

    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 264
    const-string v0, "8"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private isSupportCamera()Z
    .registers 3

    .line 113
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/feature/setting/videoasd/VideoAsdParameterConfigure;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getCameraId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/CameraRepository;->isBackSATCamera(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_23

    .line 114
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/videoasd/VideoAsdParameterConfigure;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

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

.method private isSupportDolHdr(Lcom/transsion/camera/adapter/ICameraCapabilities;)Z
    .registers 3

    .line 103
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/videoasd/VideoAsdParameterConfigure;->mVideoAsd:Lcom/transsion/camera/feature/setting/videoasd/VideoAsd;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getCurrentCameraId()Ljava/lang/String;

    move-result-object p0

    .line 104
    invoke-interface {p1}, Lcom/transsion/camera/adapter/ICameraCapabilities;->getSupportedDolHdrModes()Ljava/util/List;

    move-result-object p1

    .line 105
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x1

    if-le p1, v0, :cond_12

    return v0

    .line 108
    :cond_12
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/transsion/camera/app/common/CameraRepository;->isBackSATCamera(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$new$0(Landroid/hardware/camera2/CaptureResult;Landroid/util/Size;Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;)V
    .registers 4

    .line 282
    invoke-interface {p3, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->checkAsdResult(Landroid/hardware/camera2/CaptureResult;)[I

    move-result-object p1

    if-eqz p1, :cond_9

    .line 284
    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/setting/videoasd/VideoAsdParameterConfigure;->onAsdDataCallback([I)V

    :cond_9
    return-void
.end method

.method private refreshTypeValue(II)V
    .registers 3

    .line 303
    iput p1, p0, Lcom/transsion/camera/feature/setting/videoasd/VideoAsdParameterConfigure;->mAlgorithm:I

    .line 304
    iput p2, p0, Lcom/transsion/camera/feature/setting/videoasd/VideoAsdParameterConfigure;->mEffect:I

    .line 305
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/videoasd/VideoAsdParameterConfigure;->refreshToUI()V

    return-void
.end method

.method private setASDCallback(Lcom/transsion/camera/adapter/CameraProxy;)V
    .registers 4

    .line 273
    sget-object v0, Lcom/transsion/camera/feature/setting/videoasd/VideoAsdParameterConfigure;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "setASDCallback"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 274
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/videoasd/VideoAsdParameterConfigure;->mSupportedValues:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1e

    iget-object v0, p0, Lcom/transsion/camera/feature/setting/videoasd/VideoAsdParameterConfigure;->mVideoAsd:Lcom/transsion/camera/feature/setting/videoasd/VideoAsd;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/videoasd/VideoAsd;->isModeSupport()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 275
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/videoasd/VideoAsdParameterConfigure;->mCameraAsdCallback:Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;

    invoke-virtual {p1, p0}, Lcom/transsion/camera/adapter/CameraProxy;->registerFrameResultCallback(Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;)V

    return-void

    .line 277
    :cond_1e
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/videoasd/VideoAsdParameterConfigure;->mCameraAsdCallback:Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;

    invoke-virtual {p1, p0}, Lcom/transsion/camera/adapter/CameraProxy;->unRegisterFrameResultCallback(Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;)V

    return-void
.end method

.method private setState(Lcom/transsion/camera/adapter/CameraParameters;Ljava/lang/String;)V
    .registers 8

    .line 169
    const-string v0, "off"

    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    const-string v1, "key_video_super_night_none"

    const-string v2, "0"

    if-eqz p2, :cond_29

    .line 170
    iget-boolean p2, p0, Lcom/transsion/camera/feature/setting/videoasd/VideoAsdParameterConfigure;->mIsVideoSuperNightSupport:Z

    if-eqz p2, :cond_18

    .line 171
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    invoke-direct {p0, p1, p2, v1}, Lcom/transsion/camera/feature/setting/videoasd/VideoAsdParameterConfigure;->setVideoSuperNightMode(Lcom/transsion/camera/adapter/CameraParameters;ILjava/lang/String;)V

    goto :goto_1f

    .line 173
    :cond_18
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    invoke-direct {p0, p1, p2, v0}, Lcom/transsion/camera/feature/setting/videoasd/VideoAsdParameterConfigure;->setVideoSuperNightYUVMode(Lcom/transsion/camera/adapter/CameraParameters;ILjava/lang/String;)V

    .line 175
    :goto_1f
    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/feature/setting/videoasd/VideoAsdParameterConfigure;->setVideoHDRMode(Lcom/transsion/camera/adapter/CameraParameters;Ljava/lang/String;)V

    .line 176
    invoke-virtual {p1, v0}, Lcom/transsion/camera/adapter/CameraParameters;->setFaceBeautyMode(Ljava/lang/String;)V

    .line 177
    invoke-virtual {p1, v0}, Lcom/transsion/camera/adapter/CameraParameters;->setMultiFaceBeautyMode(Ljava/lang/String;)V

    return-void

    .line 180
    :cond_29
    sget-object p2, Lcom/transsion/camera/feature/setting/videoasd/VideoAsdParameterConfigure;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mAlgorithm = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/transsion/camera/feature/setting/videoasd/VideoAsdParameterConfigure;->mAlgorithm:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " mEffect:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/transsion/camera/feature/setting/videoasd/VideoAsdParameterConfigure;->mEffect:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p2, v3}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 181
    iget p2, p0, Lcom/transsion/camera/feature/setting/videoasd/VideoAsdParameterConfigure;->mAlgorithm:I

    const/4 v3, 0x1

    const-string v4, "on"

    if-eq p2, v3, :cond_8d

    const/4 v3, 0x2

    if-eq p2, v3, :cond_71

    .line 203
    iget p2, p0, Lcom/transsion/camera/feature/setting/videoasd/VideoAsdParameterConfigure;->mEffect:I

    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/setting/videoasd/VideoAsdParameterConfigure;->setVideoFaceBeautyMode(Lcom/transsion/camera/adapter/CameraParameters;I)V

    .line 204
    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/feature/setting/videoasd/VideoAsdParameterConfigure;->setVideoHDRMode(Lcom/transsion/camera/adapter/CameraParameters;Ljava/lang/String;)V

    .line 205
    iget-boolean p2, p0, Lcom/transsion/camera/feature/setting/videoasd/VideoAsdParameterConfigure;->mIsVideoSuperNightSupport:Z

    if-eqz p2, :cond_69

    .line 206
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    invoke-direct {p0, p1, p2, v1}, Lcom/transsion/camera/feature/setting/videoasd/VideoAsdParameterConfigure;->setVideoSuperNightMode(Lcom/transsion/camera/adapter/CameraParameters;ILjava/lang/String;)V

    return-void

    .line 208
    :cond_69
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    invoke-direct {p0, p1, p2, v0}, Lcom/transsion/camera/feature/setting/videoasd/VideoAsdParameterConfigure;->setVideoSuperNightYUVMode(Lcom/transsion/camera/adapter/CameraParameters;ILjava/lang/String;)V

    return-void

    .line 194
    :cond_71
    invoke-direct {p0, p1, v4}, Lcom/transsion/camera/feature/setting/videoasd/VideoAsdParameterConfigure;->setVideoHDRMode(Lcom/transsion/camera/adapter/CameraParameters;Ljava/lang/String;)V

    .line 195
    iget p2, p0, Lcom/transsion/camera/feature/setting/videoasd/VideoAsdParameterConfigure;->mEffect:I

    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/setting/videoasd/VideoAsdParameterConfigure;->setVideoFaceBeautyMode(Lcom/transsion/camera/adapter/CameraParameters;I)V

    .line 196
    iget-boolean p2, p0, Lcom/transsion/camera/feature/setting/videoasd/VideoAsdParameterConfigure;->mIsVideoSuperNightSupport:Z

    if-eqz p2, :cond_85

    .line 197
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    invoke-direct {p0, p1, p2, v1}, Lcom/transsion/camera/feature/setting/videoasd/VideoAsdParameterConfigure;->setVideoSuperNightMode(Lcom/transsion/camera/adapter/CameraParameters;ILjava/lang/String;)V

    return-void

    .line 199
    :cond_85
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    invoke-direct {p0, p1, p2, v0}, Lcom/transsion/camera/feature/setting/videoasd/VideoAsdParameterConfigure;->setVideoSuperNightYUVMode(Lcom/transsion/camera/adapter/CameraParameters;ILjava/lang/String;)V

    return-void

    .line 183
    :cond_8d
    iget-boolean p2, p0, Lcom/transsion/camera/feature/setting/videoasd/VideoAsdParameterConfigure;->mIsVideoSuperNightSupport:Z

    const-string v1, "1"

    if-eqz p2, :cond_b0

    .line 184
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    .line 185
    iget-object v1, p0, Lcom/transsion/camera/feature/setting/videoasd/VideoAsdParameterConfigure;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v2, "key_video_quality"

    invoke-interface {v1, v2}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "8"

    invoke-static {v2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_aa

    .line 186
    const-string v1, "key_video_super_night_scene_4k"

    goto :goto_ac

    :cond_aa
    const-string v1, "key_video_super_night_scene"

    .line 184
    :goto_ac
    invoke-direct {p0, p1, p2, v1}, Lcom/transsion/camera/feature/setting/videoasd/VideoAsdParameterConfigure;->setVideoSuperNightMode(Lcom/transsion/camera/adapter/CameraParameters;ILjava/lang/String;)V

    goto :goto_b7

    .line 188
    :cond_b0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    invoke-direct {p0, p1, p2, v4}, Lcom/transsion/camera/feature/setting/videoasd/VideoAsdParameterConfigure;->setVideoSuperNightYUVMode(Lcom/transsion/camera/adapter/CameraParameters;ILjava/lang/String;)V

    .line 190
    :goto_b7
    invoke-virtual {p1, v0}, Lcom/transsion/camera/adapter/CameraParameters;->setFaceBeautyMode(Ljava/lang/String;)V

    .line 191
    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/feature/setting/videoasd/VideoAsdParameterConfigure;->setVideoHDRMode(Lcom/transsion/camera/adapter/CameraParameters;Ljava/lang/String;)V

    return-void
.end method

.method private setVideoFaceBeautyMode(Lcom/transsion/camera/adapter/CameraParameters;I)V
    .registers 4

    .line 250
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/videoasd/VideoAsdParameterConfigure;->is4kVideoQuality()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    const/4 v0, 0x1

    if-ne p2, v0, :cond_1e

    .line 253
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/videoasd/VideoAsdParameterConfigure;->mVideoAsd:Lcom/transsion/camera/feature/setting/videoasd/VideoAsd;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/videoasd/VideoAsd;->isFrontCamera()Z

    move-result p0

    if-eqz p0, :cond_1e

    .line 254
    const-string/jumbo p0, "value_facebeauty_video_asd"

    invoke-virtual {p1, p0}, Lcom/transsion/camera/adapter/CameraParameters;->setMultiFaceBeautyMode(Ljava/lang/String;)V

    .line 255
    const-string p0, "mild"

    invoke-virtual {p1, p0}, Lcom/transsion/camera/adapter/CameraParameters;->setFaceBeautyMode(Ljava/lang/String;)V

    return-void

    .line 257
    :cond_1e
    const-string p0, "off"

    invoke-virtual {p1, p0}, Lcom/transsion/camera/adapter/CameraParameters;->setFaceBeautyMode(Ljava/lang/String;)V

    .line 258
    invoke-virtual {p1, p0}, Lcom/transsion/camera/adapter/CameraParameters;->setMultiFaceBeautyMode(Ljava/lang/String;)V

    return-void
.end method

.method private setVideoHDRMode(Lcom/transsion/camera/adapter/CameraParameters;Ljava/lang/String;)V
    .registers 6

    .line 234
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/videoasd/VideoAsdParameterConfigure;->is4kVideoQuality()Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_50

    .line 237
    :cond_7
    const-string v0, "on"

    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    .line 238
    iget-object v2, p0, Lcom/transsion/camera/feature/setting/videoasd/VideoAsdParameterConfigure;->mVideoAsd:Lcom/transsion/camera/feature/setting/videoasd/VideoAsd;

    invoke-virtual {v2}, Lcom/transsion/camera/feature/setting/videoasd/VideoAsd;->isDolHdrSupport()Z

    move-result v2

    if-eqz v2, :cond_22

    iget-boolean v2, p0, Lcom/transsion/camera/feature/setting/videoasd/VideoAsdParameterConfigure;->mIsDolHdrSupport:Z

    if-eqz v2, :cond_22

    if-eqz v1, :cond_1c

    goto :goto_1e

    .line 239
    :cond_1c
    const-string v0, "off"

    :goto_1e
    invoke-virtual {p1, v0}, Lcom/transsion/camera/adapter/CameraParameters;->setVideoHDRMode(Ljava/lang/String;)V

    return-void

    .line 240
    :cond_22
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/videoasd/VideoAsdParameterConfigure;->mCurrentHdrValue:Ljava/lang/String;

    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_50

    iget-object v0, p0, Lcom/transsion/camera/feature/setting/videoasd/VideoAsdParameterConfigure;->mVideoAsd:Lcom/transsion/camera/feature/setting/videoasd/VideoAsd;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/videoasd/VideoAsd;->isIs360HdrSupport()Z

    move-result v0

    if-eqz v0, :cond_50

    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/videoasd/VideoAsdParameterConfigure;->mIs360HDRSupport:Z

    if-eqz v0, :cond_50

    .line 241
    iput-object p2, p0, Lcom/transsion/camera/feature/setting/videoasd/VideoAsdParameterConfigure;->mCurrentHdrValue:Ljava/lang/String;

    .line 242
    invoke-virtual {p1, v1}, Lcom/transsion/camera/adapter/CameraParameters;->set360VideoHDRScene(I)V

    .line 243
    invoke-virtual {p1, v1}, Lcom/transsion/camera/adapter/CameraParameters;->set360VideoHDRMode(I)V

    .line 244
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/videoasd/VideoAsdParameterConfigure;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string p1, "key_360_video_hdr"

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p0

    if-eqz v1, :cond_4b

    .line 245
    const-string p2, "key_video_hdr_scene"

    goto :goto_4d

    :cond_4b
    const-string p2, "key_video_hdr_normal"

    .line 244
    :goto_4d
    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_50
    :goto_50
    return-void
.end method

.method private setVideoSuperNightMode(Lcom/transsion/camera/adapter/CameraParameters;ILjava/lang/String;)V
    .registers 5

    .line 215
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/videoasd/VideoAsdParameterConfigure;->mCurrentSuperNightValue:Ljava/lang/String;

    invoke-static {p3, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_20

    iget-object v0, p0, Lcom/transsion/camera/feature/setting/videoasd/VideoAsdParameterConfigure;->mVideoAsd:Lcom/transsion/camera/feature/setting/videoasd/VideoAsd;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/videoasd/VideoAsd;->isVideoSuperNightSupported()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 216
    iput-object p3, p0, Lcom/transsion/camera/feature/setting/videoasd/VideoAsdParameterConfigure;->mCurrentSuperNightValue:Ljava/lang/String;

    .line 217
    invoke-virtual {p1, p2}, Lcom/transsion/camera/adapter/CameraParameters;->setVideoSuperNightScene(I)V

    .line 218
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/videoasd/VideoAsdParameterConfigure;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string p1, "key_video_super_night"

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p0

    invoke-virtual {p0, p1, p3}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_20
    return-void
.end method

.method private setVideoSuperNightYUVMode(Lcom/transsion/camera/adapter/CameraParameters;ILjava/lang/String;)V
    .registers 5

    .line 223
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/videoasd/VideoAsdParameterConfigure;->is4kVideoQuality()Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_20

    .line 226
    :cond_7
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/videoasd/VideoAsdParameterConfigure;->mCurrentSuperNightValue:Ljava/lang/String;

    invoke-static {p3, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_20

    iget-object v0, p0, Lcom/transsion/camera/feature/setting/videoasd/VideoAsdParameterConfigure;->mVideoAsd:Lcom/transsion/camera/feature/setting/videoasd/VideoAsd;

    .line 227
    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/videoasd/VideoAsd;->isVideoSuperNightYUVSupported()Z

    move-result v0

    if-eqz v0, :cond_20

    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/videoasd/VideoAsdParameterConfigure;->mIsVideoSuperNightYUVSupport:Z

    if-eqz v0, :cond_20

    .line 228
    iput-object p3, p0, Lcom/transsion/camera/feature/setting/videoasd/VideoAsdParameterConfigure;->mCurrentSuperNightValue:Ljava/lang/String;

    .line 229
    invoke-virtual {p1, p2}, Lcom/transsion/camera/adapter/CameraParameters;->setVideoSuperNightYUVMode(I)V

    :cond_20
    :goto_20
    return-void
.end method


# virtual methods
.method public configCommand(Lcom/transsion/camera/adapter/CameraProxy;)V
    .registers 2

    .line 269
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/videoasd/VideoAsdParameterConfigure;->setASDCallback(Lcom/transsion/camera/adapter/CameraProxy;)V

    return-void
.end method

.method public configParameters(Lcom/transsion/camera/adapter/CameraParameters;)I
    .registers 12

    .line 127
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/videoasd/VideoAsdParameterConfigure;->mVideoAsdSupport:Z

    const/4 v1, -0x1

    if-nez v0, :cond_e

    .line 128
    sget-object p0, Lcom/transsion/camera/feature/setting/videoasd/VideoAsdParameterConfigure;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string/jumbo p1, "video asd is not support!!!"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v1

    .line 131
    :cond_e
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/videoasd/VideoAsdParameterConfigure;->mVideoAsd:Lcom/transsion/camera/feature/setting/videoasd/VideoAsd;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/videoasd/VideoAsd;->isModeSupport()Z

    move-result v0

    if-nez v0, :cond_1c

    .line 132
    sget p0, Lcom/transsion/camera/feature/setting/videoasd/VideoAsdParameterConfigure;->OFF:I

    invoke-virtual {p1, p0}, Lcom/transsion/camera/adapter/CameraParameters;->setTranssionAsdMode(I)V

    return v1

    .line 135
    :cond_1c
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/videoasd/VideoAsdParameterConfigure;->mVideoAsd:Lcom/transsion/camera/feature/setting/videoasd/VideoAsd;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    .line 136
    const-string v3, "on"

    const-string v4, "off"

    if-eqz v0, :cond_74

    .line 137
    invoke-virtual {p1}, Lcom/transsion/camera/adapter/CameraParameters;->getTranssionAsdMode()I

    move-result v5

    if-nez v5, :cond_31

    move-object v6, v4

    goto :goto_32

    :cond_31
    move-object v6, v3

    .line 144
    :goto_32
    sget-object v7, Lcom/transsion/camera/feature/setting/videoasd/VideoAsdParameterConfigure;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[video asd] video asd value: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "  oldvalue:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 145
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7c

    .line 147
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_65

    .line 148
    invoke-virtual {p1, v2}, Lcom/transsion/camera/adapter/CameraParameters;->setTranssionHDR(I)V

    .line 149
    sget v4, Lcom/transsion/camera/feature/setting/videoasd/VideoAsdParameterConfigure;->ON_LIGHT:I

    invoke-virtual {p1, v4}, Lcom/transsion/camera/adapter/CameraParameters;->setTranssionAsdMode(I)V

    goto :goto_70

    .line 151
    :cond_65
    invoke-virtual {p1, v1}, Lcom/transsion/camera/adapter/CameraParameters;->setTranssionHDR(I)V

    .line 152
    sget v5, Lcom/transsion/camera/feature/setting/videoasd/VideoAsdParameterConfigure;->OFF:I

    invoke-virtual {p1, v5}, Lcom/transsion/camera/adapter/CameraParameters;->setTranssionAsdMode(I)V

    .line 153
    invoke-direct {p0, p1, v4}, Lcom/transsion/camera/feature/setting/videoasd/VideoAsdParameterConfigure;->setState(Lcom/transsion/camera/adapter/CameraParameters;Ljava/lang/String;)V

    .line 155
    :goto_70
    invoke-direct {p0, v1, v1}, Lcom/transsion/camera/feature/setting/videoasd/VideoAsdParameterConfigure;->refreshTypeValue(II)V

    goto :goto_7c

    .line 158
    :cond_74
    sget v5, Lcom/transsion/camera/feature/setting/videoasd/VideoAsdParameterConfigure;->OFF:I

    invoke-virtual {p1, v5}, Lcom/transsion/camera/adapter/CameraParameters;->setTranssionAsdMode(I)V

    .line 159
    invoke-direct {p0, p1, v4}, Lcom/transsion/camera/feature/setting/videoasd/VideoAsdParameterConfigure;->setState(Lcom/transsion/camera/adapter/CameraParameters;Ljava/lang/String;)V

    .line 161
    :cond_7c
    :goto_7c
    invoke-static {v3, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_85

    .line 162
    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/feature/setting/videoasd/VideoAsdParameterConfigure;->setState(Lcom/transsion/camera/adapter/CameraParameters;Ljava/lang/String;)V

    .line 164
    :cond_85
    sget-object p0, Lcom/transsion/camera/feature/setting/videoasd/VideoAsdParameterConfigure;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[video asd] ret:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v2
.end method

.method public isVideoSuperNightSupport()Z
    .registers 1

    .line 333
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/videoasd/VideoAsdParameterConfigure;->mIsVideoSuperNightSupport:Z

    return p0
.end method

.method public onAsdDataCallback([I)V
    .registers 6

    .line 289
    array-length v0, p1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_5

    goto :goto_22

    :cond_5
    const/4 v0, 0x0

    .line 292
    aget v1, p1, v0

    iget v2, p0, Lcom/transsion/camera/feature/setting/videoasd/VideoAsdParameterConfigure;->mAlgorithm:I

    const/4 v3, 0x1

    if-ne v1, v2, :cond_14

    aget v1, p1, v3

    iget v2, p0, Lcom/transsion/camera/feature/setting/videoasd/VideoAsdParameterConfigure;->mEffect:I

    if-ne v1, v2, :cond_14

    goto :goto_22

    .line 295
    :cond_14
    iget-object v1, p0, Lcom/transsion/camera/feature/setting/videoasd/VideoAsdParameterConfigure;->mVideoAsd:Lcom/transsion/camera/feature/setting/videoasd/VideoAsd;

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v1

    const-string v2, "off"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_23

    :goto_22
    return-void

    .line 298
    :cond_23
    aget v0, p1, v0

    aget p1, p1, v3

    invoke-direct {p0, v0, p1}, Lcom/transsion/camera/feature/setting/videoasd/VideoAsdParameterConfigure;->refreshTypeValue(II)V

    .line 299
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/videoasd/VideoAsdParameterConfigure;->sendSettingChangeRequest()V

    return-void
.end method

.method public refreshAsdStateImmediately(I)V
    .registers 5

    .line 118
    sget-object v0, Lcom/transsion/camera/feature/setting/videoasd/VideoAsdParameterConfigure;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "refreshAsdStateImmediately type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1d

    const/4 p1, -0x1

    .line 120
    invoke-direct {p0, p1, p1}, Lcom/transsion/camera/feature/setting/videoasd/VideoAsdParameterConfigure;->refreshTypeValue(II)V

    :cond_1d
    return-void
.end method

.method protected refreshToUI()V
    .registers 7

    .line 309
    iget v0, p0, Lcom/transsion/camera/feature/setting/videoasd/VideoAsdParameterConfigure;->mAlgorithm:I

    .line 310
    iget v1, p0, Lcom/transsion/camera/feature/setting/videoasd/VideoAsdParameterConfigure;->mEffect:I

    .line 311
    iget-object v2, p0, Lcom/transsion/camera/feature/setting/videoasd/VideoAsdParameterConfigure;->mVideoAsd:Lcom/transsion/camera/feature/setting/videoasd/VideoAsd;

    invoke-virtual {v2}, Lcom/transsion/camera/feature/setting/videoasd/VideoAsd;->isModeSupport()Z

    move-result v2

    if-nez v2, :cond_d

    return-void

    .line 315
    :cond_d
    iget-object v2, p0, Lcom/transsion/camera/feature/setting/videoasd/VideoAsdParameterConfigure;->mVideoAsd:Lcom/transsion/camera/feature/setting/videoasd/VideoAsd;

    invoke-virtual {v2}, Lcom/transsion/camera/feature/setting/videoasd/VideoAsd;->isFrontCamera()Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_1c

    iget v2, p0, Lcom/transsion/camera/feature/setting/videoasd/VideoAsdParameterConfigure;->mEffect:I

    if-ne v2, v3, :cond_1c

    move v1, v4

    .line 318
    :cond_1c
    iget-object v2, p0, Lcom/transsion/camera/feature/setting/videoasd/VideoAsdParameterConfigure;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v5, "key_video_quality"

    invoke-interface {v2, v5}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 319
    const-string v5, "8"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_32

    iget v2, p0, Lcom/transsion/camera/feature/setting/videoasd/VideoAsdParameterConfigure;->mAlgorithm:I

    if-eq v2, v3, :cond_32

    move v0, v4

    move v1, v0

    .line 323
    :cond_32
    iget-boolean v2, p0, Lcom/transsion/camera/feature/setting/videoasd/VideoAsdParameterConfigure;->mIsVideoSuperNightSupport:Z

    if-nez v2, :cond_3f

    iget-boolean v2, p0, Lcom/transsion/camera/feature/setting/videoasd/VideoAsdParameterConfigure;->mIsVideoSuperNightYUVSupport:Z

    if-nez v2, :cond_3f

    iget v2, p0, Lcom/transsion/camera/feature/setting/videoasd/VideoAsdParameterConfigure;->mAlgorithm:I

    if-ne v2, v3, :cond_3f

    goto :goto_40

    :cond_3f
    move v4, v0

    .line 326
    :goto_40
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setVideoAsdAlgorithmResult(I)V

    .line 327
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setVideoAsdEffect(I)V

    .line 328
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/videoasd/VideoAsdParameterConfigure;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v0, "key_video_asd_recognize_result"

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p0

    filled-new-array {v4, v1}, [I

    move-result-object v1

    .line 329
    invoke-virtual {p0, v0, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public sendSettingChangeRequest()V
    .registers 2

    .line 338
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/videoasd/VideoAsdParameterConfigure;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/videoasd/VideoAsdParameterConfigure;->mVideoAsd:Lcom/transsion/camera/feature/setting/videoasd/VideoAsd;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/videoasd/VideoAsd;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;->requestChangeSettingValue(Ljava/lang/String;)V

    return-void
.end method

.method public setCameraCapabilities(Lcom/transsion/camera/adapter/ICameraCapabilities;)V
    .registers 7

    .line 83
    invoke-interface {p1}, Lcom/transsion/camera/adapter/ICameraCapabilities;->getSupportedAsdModes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-le v0, v2, :cond_16

    iget-object v0, p0, Lcom/transsion/camera/feature/setting/videoasd/VideoAsdParameterConfigure;->mVideoAsd:Lcom/transsion/camera/feature/setting/videoasd/VideoAsd;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/videoasd/VideoAsd;->isSupportCamera()Z

    move-result v0

    if-eqz v0, :cond_16

    move v0, v2

    goto :goto_17

    :cond_16
    move v0, v1

    :goto_17
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/videoasd/VideoAsdParameterConfigure;->mVideoAsdSupport:Z

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/videoasd/VideoAsdParameterConfigure;->mSupportedValues:Ljava/util/List;

    .line 85
    const-string v3, "off"

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/videoasd/VideoAsdParameterConfigure;->mVideoAsdSupport:Z

    if-eqz v0, :cond_30

    .line 87
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/videoasd/VideoAsdParameterConfigure;->mSupportedValues:Ljava/util/List;

    const-string v4, "on"

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    :cond_30
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/videoasd/VideoAsdParameterConfigure;->mVideoAsd:Lcom/transsion/camera/feature/setting/videoasd/VideoAsd;

    iget-object v4, p0, Lcom/transsion/camera/feature/setting/videoasd/VideoAsdParameterConfigure;->mSupportedValues:Ljava/util/List;

    invoke-virtual {v0, v4, v3}, Lcom/transsion/camera/feature/setting/videoasd/VideoAsd;->initValueAndSupport(Ljava/util/List;Ljava/lang/String;)V

    .line 90
    invoke-interface {p1}, Lcom/transsion/camera/adapter/ICameraCapabilities;->isVideoSuperNightSupport()Z

    move-result v0

    if-eqz v0, :cond_44

    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/videoasd/VideoAsdParameterConfigure;->isSupportCamera()Z

    move-result v0

    if-eqz v0, :cond_44

    move v1, v2

    :cond_44
    iput-boolean v1, p0, Lcom/transsion/camera/feature/setting/videoasd/VideoAsdParameterConfigure;->mIsVideoSuperNightSupport:Z

    .line 91
    invoke-interface {p1}, Lcom/transsion/camera/adapter/ICameraCapabilities;->isVideoSuperNightYUVSupport()Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/videoasd/VideoAsdParameterConfigure;->mIsVideoSuperNightYUVSupport:Z

    .line 92
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/videoasd/VideoAsdParameterConfigure;->isSupportDolHdr(Lcom/transsion/camera/adapter/ICameraCapabilities;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/videoasd/VideoAsdParameterConfigure;->mIsDolHdrSupport:Z

    .line 93
    invoke-interface {p1}, Lcom/transsion/camera/adapter/ICameraCapabilities;->is360HDRModeSupport()Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/videoasd/VideoAsdParameterConfigure;->mIs360HDRSupport:Z

    .line 94
    invoke-interface {p1}, Lcom/transsion/camera/adapter/ICameraCapabilities;->getSupportedFaceBeautyModes()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/setting/videoasd/VideoAsdParameterConfigure;->mVideoBeautySupportModes:Ljava/util/List;

    .line 95
    sget-object p1, Lcom/transsion/camera/feature/setting/videoasd/VideoAsdParameterConfigure;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mVideoAsdSupport: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/transsion/camera/feature/setting/videoasd/VideoAsdParameterConfigure;->mVideoAsdSupport:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mIsDolHdrSupport: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/transsion/camera/feature/setting/videoasd/VideoAsdParameterConfigure;->mIsDolHdrSupport:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mIs360HDRSupport: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/transsion/camera/feature/setting/videoasd/VideoAsdParameterConfigure;->mIs360HDRSupport:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mIsVideoSuperNightSupport: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/transsion/camera/feature/setting/videoasd/VideoAsdParameterConfigure;->mIsVideoSuperNightSupport:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mIsVideoSuperNightYUVSupport: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/videoasd/VideoAsdParameterConfigure;->mIsVideoSuperNightYUVSupport:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method
