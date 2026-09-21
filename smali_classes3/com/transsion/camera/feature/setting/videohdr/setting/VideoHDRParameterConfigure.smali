.class public Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDRParameterConfigure;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/ICameraSetting$IParametersConfigure;


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private m360HDRModeSupport:Z

.field private final mCallback:Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;

.field private mCameraProxy:Lcom/transsion/camera/adapter/CameraProxy;

.field private mPreviewSize:Landroid/util/Size;

.field private mSensorRect:Landroid/graphics/Rect;

.field private mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

.field private mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

.field private final mVideoHDR:Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDR;

.field private mVideoHDRInfoCallback:Lcom/transsion/camera/adapter/CameraProxy$VideoHDRInfoCallback;

.field private mVideoSuperNightSupport:Z


# direct methods
.method static bridge synthetic -$$Nest$fgetmVideoHDR(Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDRParameterConfigure;)Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDR;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDRParameterConfigure;->mVideoHDR:Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDR;

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 33
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "VideoHDRParameter"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDRParameterConfigure;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDR;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)V
    .registers 5

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDRParameterConfigure$1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDRParameterConfigure$1;-><init>(Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDRParameterConfigure;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDRParameterConfigure;->mCallback:Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;

    .line 58
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDRParameterConfigure;->mVideoHDR:Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDR;

    .line 59
    iput-object p2, p0, Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDRParameterConfigure;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    .line 60
    iput-object p3, p0, Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDRParameterConfigure;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    return-void
.end method

.method private isCurrentCameraIdSupport()Z
    .registers 5

    .line 83
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDRParameterConfigure;->mVideoHDR:Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDR;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v0

    .line 84
    iget-object v1, p0, Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDRParameterConfigure;->mVideoHDR:Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDR;

    invoke-virtual {v1}, Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDR;->isDHdrAndRawSuperNightBothSupport()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_3b

    .line 85
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/CameraRepository;->isFrontMainCamera(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_3a

    .line 86
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/CameraRepository;->isFrontFolderCamera(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_3a

    .line 87
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/CameraRepository;->isBackSATCamera(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_3a

    .line 88
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/CameraRepository;->isBackLongFocusCamera(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_39

    goto :goto_3a

    :cond_39
    return v3

    :cond_3a
    :goto_3a
    return v2

    .line 90
    :cond_3b
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/transsion/camera/app/common/CameraRepository;->isBackMainCamera(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6b

    .line 91
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/transsion/camera/app/common/CameraRepository;->isFrontMainCamera(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6b

    .line 92
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/transsion/camera/app/common/CameraRepository;->isFrontFolderCamera(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6b

    .line 93
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/transsion/camera/app/common/CameraRepository;->isBackSATCamera(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6b

    .line 94
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDRParameterConfigure;->isWideOrLongFocusSupport(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_6a

    goto :goto_6b

    :cond_6a
    return v3

    :cond_6b
    :goto_6b
    return v2
.end method

.method private isWideOrLongFocusSupport(Ljava/lang/String;)Z
    .registers 7

    .line 98
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDRParameterConfigure;->mVideoHDR:Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDR;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDR;->isBackWideSupport360Hdr()Z

    move-result v0

    .line 99
    iget-object v1, p0, Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDRParameterConfigure;->mVideoHDR:Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDR;

    invoke-virtual {v1}, Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDR;->isBackLongFocusSupport360Hdr()Z

    move-result v1

    .line 100
    iget-boolean v2, p0, Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDRParameterConfigure;->mVideoSuperNightSupport:Z

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_14

    if-eqz v0, :cond_20

    :cond_14
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/common/CameraRepository;->isBackWideCamera(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_20

    move v0, v4

    goto :goto_21

    :cond_20
    move v0, v3

    .line 101
    :goto_21
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDRParameterConfigure;->mVideoSuperNightSupport:Z

    if-nez p0, :cond_27

    if-eqz v1, :cond_33

    :cond_27
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/CameraRepository;->isBackLongFocusCamera(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_33

    move p0, v4

    goto :goto_34

    :cond_33
    move p0, v3

    :goto_34
    if-nez v0, :cond_3a

    if-eqz p0, :cond_39

    goto :goto_3a

    :cond_39
    return v3

    :cond_3a
    :goto_3a
    return v4
.end method


# virtual methods
.method public configCommand(Lcom/transsion/camera/adapter/CameraProxy;)V
    .registers 5

    .line 107
    sget-object v0, Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDRParameterConfigure;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[configCommand], modeSupport:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDRParameterConfigure;->mVideoHDR:Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDR;

    invoke-virtual {v2}, Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDR;->isModeSupport()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " , mVideoHDRInfoCallback="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDRParameterConfigure;->mVideoHDRInfoCallback:Lcom/transsion/camera/adapter/CameraProxy$VideoHDRInfoCallback;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 108
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDRParameterConfigure;->mCameraProxy:Lcom/transsion/camera/adapter/CameraProxy;

    .line 109
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDRParameterConfigure;->mVideoHDRInfoCallback:Lcom/transsion/camera/adapter/CameraProxy$VideoHDRInfoCallback;

    if-eqz v0, :cond_33

    .line 110
    invoke-virtual {p1, v0}, Lcom/transsion/camera/adapter/CameraProxy;->setVideoHDRInfoCallback(Lcom/transsion/camera/adapter/CameraProxy$VideoHDRInfoCallback;)V

    .line 111
    invoke-virtual {p1}, Lcom/transsion/camera/adapter/CameraProxy;->startVideoHDRInfoDetect()V

    goto :goto_3a

    :cond_33
    const/4 v0, 0x0

    .line 113
    invoke-virtual {p1, v0}, Lcom/transsion/camera/adapter/CameraProxy;->setVideoHDRInfoCallback(Lcom/transsion/camera/adapter/CameraProxy$VideoHDRInfoCallback;)V

    .line 114
    invoke-virtual {p1}, Lcom/transsion/camera/adapter/CameraProxy;->stopVideoHDRInfoDetect()V

    .line 117
    :goto_3a
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDRParameterConfigure;->mVideoHDR:Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDR;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDR;->isDHdrAndRawSuperNightBothSupport()Z

    move-result v0

    if-eqz v0, :cond_43

    return-void

    .line 121
    :cond_43
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDRParameterConfigure;->mVideoHDR:Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDR;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDR;->isModeSupport()Z

    move-result v0

    if-eqz v0, :cond_59

    iget-object v0, p0, Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDRParameterConfigure;->mVideoHDR:Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDR;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDR;->isPreviewStarted()Z

    move-result v0

    if-eqz v0, :cond_59

    .line 122
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDRParameterConfigure;->mCallback:Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;

    invoke-virtual {p1, p0}, Lcom/transsion/camera/adapter/CameraProxy;->registerFrameResultCallback(Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;)V

    return-void

    .line 124
    :cond_59
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDRParameterConfigure;->mCallback:Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;

    invoke-virtual {p1, p0}, Lcom/transsion/camera/adapter/CameraProxy;->unRegisterFrameResultCallback(Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;)V

    return-void
.end method

.method public configParameters(Lcom/transsion/camera/adapter/CameraParameters;)I
    .registers 11

    .line 130
    sget-object v0, Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDRParameterConfigure;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[configParameters], modeSupport:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDRParameterConfigure;->mVideoHDR:Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDR;

    invoke-virtual {v2}, Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDR;->isModeSupport()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " , isCurrentCameraIdSupport:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDRParameterConfigure;->isCurrentCameraIdSupport()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 132
    iget-object v1, p0, Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDRParameterConfigure;->mVideoHDR:Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDR;

    invoke-virtual {v1}, Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDR;->isModeSupport()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_126

    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDRParameterConfigure;->isCurrentCameraIdSupport()Z

    move-result v1

    if-nez v1, :cond_39

    goto/16 :goto_126

    .line 136
    :cond_39
    iget-object v1, p0, Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDRParameterConfigure;->mVideoHDR:Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDR;

    invoke-virtual {v1}, Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDR;->isVideoAsdSupport()Z

    move-result v1

    const-string v3, "on"

    const-string v4, "0"

    if-eqz v1, :cond_a5

    .line 137
    iget-boolean v1, p0, Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDRParameterConfigure;->m360HDRModeSupport:Z

    if-nez v1, :cond_51

    .line 138
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/transsion/camera/adapter/CameraParameters;->set360VideoHDRInitMode(I)V

    return v2

    .line 141
    :cond_51
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDRParameterConfigure;->mVideoHDR:Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDR;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_a4

    .line 143
    invoke-virtual {p1}, Lcom/transsion/camera/adapter/CameraParameters;->get360VideoHDRInitMode()I

    move-result v1

    .line 145
    const-string v5, "off"

    if-nez v1, :cond_63

    move-object v6, v5

    goto :goto_64

    :cond_63
    move-object v6, v3

    .line 150
    :goto_64
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[configParameters] 360 video hdr value: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " , oldValue :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 151
    invoke-static {v6, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a4

    .line 152
    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9b

    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_93

    goto :goto_a4

    .line 154
    :cond_93
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/transsion/camera/adapter/CameraParameters;->set360VideoHDRInitMode(I)V

    goto :goto_a4

    .line 157
    :cond_9b
    const-string p0, "1"

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/transsion/camera/adapter/CameraParameters;->set360VideoHDRInitMode(I)V

    :cond_a4
    :goto_a4
    return v2

    .line 164
    :cond_a5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[configParameters]  , getValue:"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDRParameterConfigure;->mVideoHDR:Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDR;

    invoke-virtual {v5}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " , isVideoEnhanceOn:"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDRParameterConfigure;->mVideoHDR:Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDR;

    invoke-virtual {v5}, Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDR;->isVideoEnhanceOn()Z

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " , getAlgoScene:"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDRParameterConfigure;->mVideoHDR:Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDR;

    invoke-virtual {v5}, Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDR;->getAlgoScene()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 166
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDRParameterConfigure;->mVideoHDR:Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDR;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_113

    .line 168
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDRParameterConfigure;->mVideoHDR:Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDR;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDR;->isVideoEnhanceOn()Z

    move-result v0

    const/4 v1, 0x1

    const-string v5, "29"

    if-eqz v0, :cond_10c

    .line 169
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDRParameterConfigure;->mVideoHDR:Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDR;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDR;->getAlgoScene()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_105

    .line 170
    invoke-virtual {p1, v5}, Lcom/transsion/camera/adapter/CameraParameters;->setStreamingCustomTuning(Ljava/lang/String;)V

    .line 171
    invoke-virtual {p1, v1}, Lcom/transsion/camera/adapter/CameraParameters;->set360VideoHDRMode(I)V

    goto :goto_119

    .line 173
    :cond_105
    invoke-virtual {p1, v4}, Lcom/transsion/camera/adapter/CameraParameters;->setStreamingCustomTuning(Ljava/lang/String;)V

    .line 174
    invoke-virtual {p1, v2}, Lcom/transsion/camera/adapter/CameraParameters;->set360VideoHDRMode(I)V

    goto :goto_119

    .line 177
    :cond_10c
    invoke-virtual {p1, v5}, Lcom/transsion/camera/adapter/CameraParameters;->setStreamingCustomTuning(Ljava/lang/String;)V

    .line 178
    invoke-virtual {p1, v1}, Lcom/transsion/camera/adapter/CameraParameters;->set360VideoHDRMode(I)V

    goto :goto_119

    .line 181
    :cond_113
    invoke-virtual {p1, v4}, Lcom/transsion/camera/adapter/CameraParameters;->setStreamingCustomTuning(Ljava/lang/String;)V

    .line 182
    invoke-virtual {p1, v2}, Lcom/transsion/camera/adapter/CameraParameters;->set360VideoHDRMode(I)V

    .line 184
    :goto_119
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDRParameterConfigure;->mVideoHDR:Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDR;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setVideoHDRValue(Ljava/lang/String;)V

    :cond_126
    :goto_126
    return v2
.end method

.method getPreviewSize()Landroid/util/Size;
    .registers 2

    .line 199
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDRParameterConfigure;->mPreviewSize:Landroid/util/Size;

    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDRParameterConfigure;->mCameraProxy:Lcom/transsion/camera/adapter/CameraProxy;

    if-eqz v0, :cond_12

    .line 200
    invoke-virtual {v0}, Lcom/transsion/camera/adapter/CameraProxy;->getCameraParameters()Lcom/transsion/camera/adapter/CameraParameters;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/CameraParameters;->getPreviewSize()Landroid/util/Size;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDRParameterConfigure;->mPreviewSize:Landroid/util/Size;

    .line 202
    :cond_12
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDRParameterConfigure;->mPreviewSize:Landroid/util/Size;

    return-object p0
.end method

.method getSensorRect()Landroid/graphics/Rect;
    .registers 1

    .line 195
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDRParameterConfigure;->mSensorRect:Landroid/graphics/Rect;

    return-object p0
.end method

.method isVideoSuperNightSupport()Z
    .registers 1

    .line 210
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDRParameterConfigure;->mVideoSuperNightSupport:Z

    return p0
.end method

.method public sendSettingChangeRequest()V
    .registers 3

    .line 190
    sget-object v0, Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDRParameterConfigure;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "[sendSettingChangeRequest]"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 191
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDRParameterConfigure;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDRParameterConfigure;->mVideoHDR:Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDR;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDR;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;->requestChangeSettingValue(Ljava/lang/String;)V

    return-void
.end method

.method public setCameraCapabilities(Lcom/transsion/camera/adapter/ICameraCapabilities;)V
    .registers 8

    .line 65
    sget-object v0, Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDRParameterConfigure;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[setCameraCapabilities] , modeSupport:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDRParameterConfigure;->mVideoHDR:Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDR;

    invoke-virtual {v2}, Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDR;->isModeSupport()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " ,currentCameraId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDRParameterConfigure;->mVideoHDR:Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDR;

    invoke-virtual {v2}, Lcom/transsion/camera/app/common/setting/SettingBase;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 66
    invoke-interface {p1}, Lcom/transsion/camera/adapter/ICameraCapabilities;->isVideoSuperNightSupport()Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDRParameterConfigure;->mVideoSuperNightSupport:Z

    .line 67
    invoke-interface {p1}, Lcom/transsion/camera/adapter/ICameraCapabilities;->is360HDRModeSupport()Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDRParameterConfigure;->m360HDRModeSupport:Z

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 70
    const-string v1, "off"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 71
    iget-object v2, p0, Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDRParameterConfigure;->mVideoHDR:Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDR;

    invoke-virtual {v2}, Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDR;->isModeSupport()Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_52

    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDRParameterConfigure;->isCurrentCameraIdSupport()Z

    move-result v2

    if-eqz v2, :cond_52

    move v2, v4

    goto :goto_53

    :cond_52
    move v2, v3

    .line 72
    :goto_53
    iget-object v5, p0, Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDRParameterConfigure;->mVideoHDR:Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDR;

    invoke-virtual {v5}, Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDR;->isVideoAsdSupport()Z

    move-result v5

    if-eqz v5, :cond_63

    if-eqz v2, :cond_62

    .line 73
    iget-boolean v2, p0, Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDRParameterConfigure;->m360HDRModeSupport:Z

    if-eqz v2, :cond_62

    move v3, v4

    :cond_62
    move v2, v3

    :cond_63
    if-eqz v2, :cond_6a

    .line 76
    const-string v2, "on"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 78
    :cond_6a
    iget-object v2, p0, Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDRParameterConfigure;->mVideoHDR:Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDR;

    invoke-virtual {v2, v0, v1}, Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDR;->initValueAndSupport(Ljava/util/List;Ljava/lang/String;)V

    .line 79
    invoke-interface {p1}, Lcom/transsion/camera/adapter/ICameraCapabilities;->getSensorRect()Landroid/graphics/Rect;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDRParameterConfigure;->mSensorRect:Landroid/graphics/Rect;

    return-void
.end method

.method public setVideoHDRInfoCallback(Lcom/transsion/camera/adapter/CameraProxy$VideoHDRInfoCallback;)V
    .registers 2

    .line 206
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDRParameterConfigure;->mVideoHDRInfoCallback:Lcom/transsion/camera/adapter/CameraProxy$VideoHDRInfoCallback;

    return-void
.end method
