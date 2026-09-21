.class public Lcom/transsion/camera/feature/setting/antivideo/AntiVideoParameterConfigure;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/ICameraSetting$IParametersConfigure;


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mAntiVideo:Lcom/transsion/camera/feature/setting/antivideo/AntiVideo;

.field private mAntiVideoSupport:Z

.field private mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

.field private mVideoSuperNightSupport:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 39
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "AntiVideoParameterConfigure"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/setting/antivideo/AntiVideoParameterConfigure;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method constructor <init>(Lcom/transsion/camera/feature/setting/antivideo/AntiVideo;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;)V
    .registers 3

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/antivideo/AntiVideoParameterConfigure;->mAntiVideo:Lcom/transsion/camera/feature/setting/antivideo/AntiVideo;

    .line 50
    iput-object p2, p0, Lcom/transsion/camera/feature/setting/antivideo/AntiVideoParameterConfigure;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    return-void
.end method

.method private getFrontCameraID()Ljava/lang/String;
    .registers 2

    .line 134
    invoke-static {}, Lcom/transsion/camera/utils/FeatureSupport;->getSupportFoldUIType()I

    move-result p0

    if-eqz p0, :cond_18

    const/4 v0, 0x2

    if-eq p0, v0, :cond_18

    .line 136
    invoke-static {}, Lcom/transsion/camera/adapter/CameraAgentFactory;->getCameraAgent()Lcom/transsion/camera/adapter/CameraAgent;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraAgent;->getCameraDeviceInfo()Lcom/transsion/camera/adapter/ICameraDeviceInfo;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->getFoldedFrontCameraId()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_18

    return-object p0

    .line 141
    :cond_18
    const-string p0, "1"

    return-object p0
.end method

.method private getLongCameraID()Ljava/lang/String;
    .registers 1

    .line 126
    invoke-static {}, Lcom/transsion/camera/adapter/CameraAgentFactory;->getCameraAgent()Lcom/transsion/camera/adapter/CameraAgent;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraAgent;->getCameraDeviceInfo()Lcom/transsion/camera/adapter/ICameraDeviceInfo;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->getOpticalZoomCameraId()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_1a

    .line 128
    invoke-static {}, Lcom/transsion/camera/adapter/CameraAgentFactory;->getCameraAgent()Lcom/transsion/camera/adapter/CameraAgent;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraAgent;->getCameraDeviceInfo()Lcom/transsion/camera/adapter/ICameraDeviceInfo;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->getPeriscopeCameraId()Ljava/lang/String;

    move-result-object p0

    :cond_1a
    return-object p0
.end method


# virtual methods
.method public configCommand(Lcom/transsion/camera/adapter/CameraProxy;)V
    .registers 2

    return-void
.end method

.method public configParameters(Lcom/transsion/camera/adapter/CameraParameters;)I
    .registers 7

    .line 79
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/antivideo/AntiVideoParameterConfigure;->mAntiVideoSupport:Z

    const/4 v1, -0x1

    if-nez v0, :cond_d

    .line 80
    sget-object p0, Lcom/transsion/camera/feature/setting/antivideo/AntiVideoParameterConfigure;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "anti video is not support!!!"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v1

    .line 83
    :cond_d
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/antivideo/AntiVideoParameterConfigure;->mAntiVideo:Lcom/transsion/camera/feature/setting/antivideo/AntiVideo;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/antivideo/AntiVideo;->isModeSupport()Z

    move-result v0

    const-string v2, "off"

    const-string v3, "com.transsion.camera.feature.mode.dualvideo.DualVideoModeEntry"

    if-eqz v0, :cond_a9

    iget-object v0, p0, Lcom/transsion/camera/feature/setting/antivideo/AntiVideoParameterConfigure;->mAntiVideo:Lcom/transsion/camera/feature/setting/antivideo/AntiVideo;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getModeKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_42

    .line 84
    invoke-virtual {p1}, Lcom/transsion/camera/adapter/CameraParameters;->getDeviceID()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/antivideo/AntiVideoParameterConfigure;->getLongCameraID()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a9

    .line 85
    invoke-virtual {p1}, Lcom/transsion/camera/adapter/CameraParameters;->getDeviceID()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/antivideo/AntiVideoParameterConfigure;->getFrontCameraID()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_42

    goto :goto_a9

    .line 92
    :cond_42
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/antivideo/AntiVideoParameterConfigure;->mAntiVideo:Lcom/transsion/camera/feature/setting/antivideo/AntiVideo;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object p0

    .line 93
    invoke-virtual {p1}, Lcom/transsion/camera/adapter/CameraParameters;->getAntiVideoMode()Ljava/lang/String;

    move-result-object v0

    .line 94
    invoke-static {}, Lcom/transsion/camera/utils/MonkeyUtils;->specialMonkeySupported()Z

    move-result v3

    if-eqz v3, :cond_53

    goto :goto_54

    :cond_53
    move-object v2, p0

    .line 97
    :goto_54
    sget-object p0, Lcom/transsion/camera/feature/setting/antivideo/AntiVideoParameterConfigure;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[antivideo] anti video value:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", oldvalue:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", camera id:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/transsion/camera/adapter/CameraParameters;->getDeviceID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-eqz v0, :cond_8a

    .line 99
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8d

    .line 102
    invoke-virtual {p1, v2}, Lcom/transsion/camera/adapter/CameraParameters;->setAntiVideoMode(Ljava/lang/String;)V

    goto :goto_8d

    .line 105
    :cond_8a
    invoke-virtual {p1, v2}, Lcom/transsion/camera/adapter/CameraParameters;->setAntiVideoMode(Ljava/lang/String;)V

    .line 107
    :cond_8d
    :goto_8d
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setAntiVideoValue(Ljava/lang/String;)V

    .line 108
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[antivideo] ret:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v1

    .line 86
    :cond_a9
    :goto_a9
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/antivideo/AntiVideoParameterConfigure;->mAntiVideo:Lcom/transsion/camera/feature/setting/antivideo/AntiVideo;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getModeKey()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_d4

    .line 87
    sget-object p0, Lcom/transsion/camera/feature/setting/antivideo/AntiVideoParameterConfigure;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[antivideo] camera id:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/transsion/camera/adapter/CameraParameters;->getDeviceID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " not config antivideo"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 89
    :cond_d4
    invoke-virtual {p1, v2}, Lcom/transsion/camera/adapter/CameraParameters;->setAntiVideoMode(Ljava/lang/String;)V

    return v1
.end method

.method public getSupportAntiVideoType()I
    .registers 1

    .line 118
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/antivideo/AntiVideoParameterConfigure;->mAntiVideo:Lcom/transsion/camera/feature/setting/antivideo/AntiVideo;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/antivideo/AntiVideo;->isSupportAntiVideoType()I

    move-result p0

    return p0
.end method

.method public isVideoSuperNightSupport()Z
    .registers 1

    .line 122
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/antivideo/AntiVideoParameterConfigure;->mVideoSuperNightSupport:Z

    return p0
.end method

.method public sendSettingChangeRequest()V
    .registers 3

    .line 55
    sget-object v0, Lcom/transsion/camera/feature/setting/antivideo/AntiVideoParameterConfigure;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "sendSettingChangeRequest"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 56
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/antivideo/AntiVideoParameterConfigure;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/antivideo/AntiVideoParameterConfigure;->mAntiVideo:Lcom/transsion/camera/feature/setting/antivideo/AntiVideo;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/antivideo/AntiVideo;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;->requestChangeSettingValue(Ljava/lang/String;)V

    return-void
.end method

.method public setCameraCapabilities(Lcom/transsion/camera/adapter/ICameraCapabilities;)V
    .registers 6

    .line 61
    invoke-interface {p1}, Lcom/transsion/camera/adapter/ICameraCapabilities;->isAntiVideoSupport()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/antivideo/AntiVideoParameterConfigure;->getSupportAntiVideoType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_e

    goto :goto_f

    :cond_e
    const/4 v1, 0x0

    :goto_f
    iput-boolean v1, p0, Lcom/transsion/camera/feature/setting/antivideo/AntiVideoParameterConfigure;->mAntiVideoSupport:Z

    .line 62
    invoke-interface {p1}, Lcom/transsion/camera/adapter/ICameraCapabilities;->isVideoSuperNightSupport()Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/antivideo/AntiVideoParameterConfigure;->mVideoSuperNightSupport:Z

    .line 63
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 64
    const-string v0, "off"

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 66
    iget-boolean v1, p0, Lcom/transsion/camera/feature/setting/antivideo/AntiVideoParameterConfigure;->mAntiVideoSupport:Z

    if-eqz v1, :cond_4a

    .line 67
    iget-object v1, p0, Lcom/transsion/camera/feature/setting/antivideo/AntiVideoParameterConfigure;->mAntiVideo:Lcom/transsion/camera/feature/setting/antivideo/AntiVideo;

    invoke-virtual {v1}, Lcom/transsion/camera/feature/setting/antivideo/AntiVideo;->aiEisExistCase()Z

    move-result v1

    const-string v2, "on"

    const-string v3, "ai"

    if-eqz v1, :cond_33

    move-object v1, v3

    goto :goto_34

    :cond_33
    move-object v1, v2

    :goto_34
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 68
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v1

    iget-boolean v1, v1, Lcom/transsion/camera/utils/CustomConfigUtil;->mAntiVideoDefaultOn:Z

    if-eqz v1, :cond_4a

    .line 69
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/antivideo/AntiVideoParameterConfigure;->mAntiVideo:Lcom/transsion/camera/feature/setting/antivideo/AntiVideo;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/antivideo/AntiVideo;->aiEisExistCase()Z

    move-result v0

    if-eqz v0, :cond_49

    move-object v0, v3

    goto :goto_4a

    :cond_49
    move-object v0, v2

    .line 72
    :cond_4a
    :goto_4a
    iget-object v1, p0, Lcom/transsion/camera/feature/setting/antivideo/AntiVideoParameterConfigure;->mAntiVideo:Lcom/transsion/camera/feature/setting/antivideo/AntiVideo;

    invoke-virtual {v1, p1, v0}, Lcom/transsion/camera/feature/setting/antivideo/AntiVideo;->initValueAndSupport(Ljava/util/List;Ljava/lang/String;)V

    .line 73
    sget-object p1, Lcom/transsion/camera/feature/setting/antivideo/AntiVideoParameterConfigure;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setCameraCapabilities mAntiVideoSupport: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/antivideo/AntiVideoParameterConfigure;->mAntiVideoSupport:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method
