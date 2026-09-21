.class public Lcom/transsion/camera/feature/setting/superantivideo/SuperAntiVideoParameterConfigure;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/ICameraSetting$IParametersConfigure;


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

.field private mSuperAntiVideo:Lcom/transsion/camera/feature/setting/superantivideo/SuperAntiVideo;

.field private mSuperAntiVideoSupport:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 34
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "SuperAntiVideoParameterConfigure"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/setting/superantivideo/SuperAntiVideoParameterConfigure;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method constructor <init>(Lcom/transsion/camera/feature/setting/superantivideo/SuperAntiVideo;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;)V
    .registers 3

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/superantivideo/SuperAntiVideoParameterConfigure;->mSuperAntiVideo:Lcom/transsion/camera/feature/setting/superantivideo/SuperAntiVideo;

    .line 44
    iput-object p2, p0, Lcom/transsion/camera/feature/setting/superantivideo/SuperAntiVideoParameterConfigure;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

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
    .registers 8

    .line 69
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/superantivideo/SuperAntiVideoParameterConfigure;->mSuperAntiVideoSupport:Z

    const/4 v1, -0x1

    if-eqz v0, :cond_f7

    iget-object v0, p0, Lcom/transsion/camera/feature/setting/superantivideo/SuperAntiVideoParameterConfigure;->mSuperAntiVideo:Lcom/transsion/camera/feature/setting/superantivideo/SuperAntiVideo;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/superantivideo/SuperAntiVideo;->superAntiVideoSupportTye()I

    move-result v0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_10

    goto/16 :goto_f7

    .line 73
    :cond_10
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/superantivideo/SuperAntiVideoParameterConfigure;->mSuperAntiVideo:Lcom/transsion/camera/feature/setting/superantivideo/SuperAntiVideo;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/superantivideo/SuperAntiVideo;->isModeSupport()Z

    move-result v0

    const-string v2, "com.transsion.camera.feature.mode.dualvideo.DualVideoModeEntry"

    if-eqz v0, :cond_c6

    iget-object v0, p0, Lcom/transsion/camera/feature/setting/superantivideo/SuperAntiVideoParameterConfigure;->mSuperAntiVideo:Lcom/transsion/camera/feature/setting/superantivideo/SuperAntiVideo;

    .line 74
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getModeKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_44

    .line 75
    invoke-virtual {p1}, Lcom/transsion/camera/adapter/CameraParameters;->getDeviceID()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/superantivideo/SuperAntiVideoParameterConfigure;->getLongCameraID()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c6

    .line 76
    invoke-virtual {p1}, Lcom/transsion/camera/adapter/CameraParameters;->getDeviceID()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/superantivideo/SuperAntiVideoParameterConfigure;->getFrontCameraID()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_44

    goto/16 :goto_c6

    .line 83
    :cond_44
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/superantivideo/SuperAntiVideoParameterConfigure;->mSuperAntiVideo:Lcom/transsion/camera/feature/setting/superantivideo/SuperAntiVideo;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 84
    invoke-virtual {p1}, Lcom/transsion/camera/adapter/CameraParameters;->getSuperAntiVideoMode()Ljava/lang/String;

    move-result-object v2

    .line 85
    sget-object v3, Lcom/transsion/camera/feature/setting/superantivideo/SuperAntiVideoParameterConfigure;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[superantivideo] super anti video value:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", oldvalue:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", camera id:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/transsion/camera/adapter/CameraParameters;->getDeviceID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-eqz v2, :cond_84

    .line 87
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_87

    .line 90
    invoke-virtual {p1, v0}, Lcom/transsion/camera/adapter/CameraParameters;->setSuperAntiVideoMode(Ljava/lang/String;)V

    goto :goto_87

    .line 93
    :cond_84
    invoke-virtual {p1, v0}, Lcom/transsion/camera/adapter/CameraParameters;->setSuperAntiVideoMode(Ljava/lang/String;)V

    .line 95
    :cond_87
    :goto_87
    const-string v2, "super"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a1

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/superantivideo/SuperAntiVideoParameterConfigure;->mSuperAntiVideo:Lcom/transsion/camera/feature/setting/superantivideo/SuperAntiVideo;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/superantivideo/SuperAntiVideo;->isWideCamera()Z

    move-result p0

    if-eqz p0, :cond_a1

    .line 96
    const-string p0, "[superantivideo] setAfFfMode on"

    invoke-static {v3, p0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p0, 0x1

    .line 97
    invoke-virtual {p1, p0}, Lcom/transsion/camera/adapter/CameraParameters;->setAfFfMode(I)V

    goto :goto_aa

    .line 99
    :cond_a1
    const-string p0, "[superantivideo] setAfFfMode off"

    invoke-static {v3, p0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p0, 0x0

    .line 100
    invoke-virtual {p1, p0}, Lcom/transsion/camera/adapter/CameraParameters;->setAfFfMode(I)V

    .line 102
    :goto_aa
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setAntiVideoValue(Ljava/lang/String;)V

    .line 103
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "[antivideo] ret:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v1

    .line 77
    :cond_c6
    :goto_c6
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/superantivideo/SuperAntiVideoParameterConfigure;->mSuperAntiVideo:Lcom/transsion/camera/feature/setting/superantivideo/SuperAntiVideo;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getModeKey()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_f1

    .line 78
    sget-object p0, Lcom/transsion/camera/feature/setting/superantivideo/SuperAntiVideoParameterConfigure;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[superantivideo] camera id:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/transsion/camera/adapter/CameraParameters;->getDeviceID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " not config antivideo"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 80
    :cond_f1
    const-string p0, "off"

    invoke-virtual {p1, p0}, Lcom/transsion/camera/adapter/CameraParameters;->setSuperAntiVideoMode(Ljava/lang/String;)V

    return v1

    .line 70
    :cond_f7
    :goto_f7
    sget-object p0, Lcom/transsion/camera/feature/setting/superantivideo/SuperAntiVideoParameterConfigure;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "super anti video is not support!!!"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v1
.end method

.method public defaultValue()Ljava/lang/String;
    .registers 3

    .line 113
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/superantivideo/SuperAntiVideoParameterConfigure;->mSuperAntiVideo:Lcom/transsion/camera/feature/setting/superantivideo/SuperAntiVideo;

    const-string v1, "off"

    if-nez v0, :cond_7

    return-object v1

    .line 117
    :cond_7
    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/superantivideo/SuperAntiVideo;->isDefaultSuperAntiVideoOn()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 118
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/superantivideo/SuperAntiVideoParameterConfigure;->mSuperAntiVideo:Lcom/transsion/camera/feature/setting/superantivideo/SuperAntiVideo;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/superantivideo/SuperAntiVideo;->aiEisExistCase()Z

    move-result p0

    if-eqz p0, :cond_18

    .line 119
    const-string p0, "ai"

    return-object p0

    :cond_18
    const-string p0, "on"

    return-object p0

    :cond_1b
    return-object v1
.end method

.method public sendSettingChangeRequest()V
    .registers 3

    .line 50
    sget-object v0, Lcom/transsion/camera/feature/setting/superantivideo/SuperAntiVideoParameterConfigure;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "sendSettingChangeRequest"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 51
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/superantivideo/SuperAntiVideoParameterConfigure;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/superantivideo/SuperAntiVideoParameterConfigure;->mSuperAntiVideo:Lcom/transsion/camera/feature/setting/superantivideo/SuperAntiVideo;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/superantivideo/SuperAntiVideo;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;->requestChangeSettingValue(Ljava/lang/String;)V

    return-void
.end method

.method public setCameraCapabilities(Lcom/transsion/camera/adapter/ICameraCapabilities;)V
    .registers 3

    .line 56
    invoke-interface {p1}, Lcom/transsion/camera/adapter/ICameraCapabilities;->isSuperAntiVideoSupport()Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/superantivideo/SuperAntiVideoParameterConfigure;->mSuperAntiVideoSupport:Z

    .line 57
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 58
    const-string v0, "off"

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 59
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/superantivideo/SuperAntiVideoParameterConfigure;->mSuperAntiVideoSupport:Z

    if-eqz v0, :cond_24

    .line 60
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/superantivideo/SuperAntiVideoParameterConfigure;->mSuperAntiVideo:Lcom/transsion/camera/feature/setting/superantivideo/SuperAntiVideo;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/superantivideo/SuperAntiVideo;->aiEisExistCase()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 61
    const-string v0, "ai"

    goto :goto_21

    :cond_1f
    const-string v0, "on"

    .line 60
    :goto_21
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 63
    :cond_24
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/superantivideo/SuperAntiVideoParameterConfigure;->mSuperAntiVideo:Lcom/transsion/camera/feature/setting/superantivideo/SuperAntiVideo;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/superantivideo/SuperAntiVideoParameterConfigure;->defaultValue()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Lcom/transsion/camera/feature/setting/superantivideo/SuperAntiVideo;->initValueAndSupport(Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method
