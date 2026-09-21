.class public Lcom/transsion/camera/feature/setting/nighthawk/NightHawkParameterConfigure;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/ICameraSetting$IParametersConfigure;


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private final PHOTO_NIGHT_USE_TRAN_YUV:Z

.field private final VIDEO_NIGHT_USE_TRAN_YUV:Z

.field private final mCallback:Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;

.field private mEnableCallback:Z

.field private mIsVideoType:Z

.field private final mNightHawk:Lcom/transsion/camera/feature/setting/nighthawk/NightHawk;

.field private mNightHawkSupported:Z

.field private mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;


# direct methods
.method static bridge synthetic -$$Nest$fgetmNightHawk(Lcom/transsion/camera/feature/setting/nighthawk/NightHawkParameterConfigure;)Lcom/transsion/camera/feature/setting/nighthawk/NightHawk;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/nighthawk/NightHawkParameterConfigure;->mNightHawk:Lcom/transsion/camera/feature/setting/nighthawk/NightHawk;

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 22
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "NightHawkParameterConfigure"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/setting/nighthawk/NightHawkParameterConfigure;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/transsion/camera/feature/setting/nighthawk/NightHawk;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;)V
    .registers 4

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 28
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/nighthawk/NightHawkParameterConfigure;->mEnableCallback:Z

    .line 40
    new-instance v0, Lcom/transsion/camera/feature/setting/nighthawk/NightHawkParameterConfigure$1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/setting/nighthawk/NightHawkParameterConfigure$1;-><init>(Lcom/transsion/camera/feature/setting/nighthawk/NightHawkParameterConfigure;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/nighthawk/NightHawkParameterConfigure;->mCallback:Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;

    .line 34
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isVideoNightUseTranYuv()Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/nighthawk/NightHawkParameterConfigure;->VIDEO_NIGHT_USE_TRAN_YUV:Z

    .line 35
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isPhotoNightUseTranYuv()Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/nighthawk/NightHawkParameterConfigure;->PHOTO_NIGHT_USE_TRAN_YUV:Z

    .line 36
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/nighthawk/NightHawkParameterConfigure;->mNightHawk:Lcom/transsion/camera/feature/setting/nighthawk/NightHawk;

    .line 37
    iput-object p2, p0, Lcom/transsion/camera/feature/setting/nighthawk/NightHawkParameterConfigure;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    return-void
.end method

.method private configPhotoParameters(Lcom/transsion/camera/adapter/CameraParameters;)I
    .registers 7

    .line 94
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/nighthawk/NightHawkParameterConfigure;->mNightHawk:Lcom/transsion/camera/feature/setting/nighthawk/NightHawk;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/nighthawk/NightHawk;->isSupport()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/transsion/camera/feature/setting/nighthawk/NightHawkParameterConfigure;->mNightHawk:Lcom/transsion/camera/feature/setting/nighthawk/NightHawk;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v0

    const-string v2, "on"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_19

    const/4 v0, 0x1

    goto :goto_1a

    :cond_19
    move v0, v1

    .line 95
    :goto_1a
    sget-object v2, Lcom/transsion/camera/feature/setting/nighthawk/NightHawkParameterConfigure;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "configPhotoParameters PHOTO_NIGHT_USE_TRAN_YUV:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/transsion/camera/feature/setting/nighthawk/NightHawkParameterConfigure;->PHOTO_NIGHT_USE_TRAN_YUV:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", on:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 96
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/nighthawk/NightHawkParameterConfigure;->PHOTO_NIGHT_USE_TRAN_YUV:Z

    const/4 v2, 0x2

    if-eqz p0, :cond_49

    if-eqz v0, :cond_45

    .line 98
    invoke-virtual {p1, v2}, Lcom/transsion/camera/adapter/CameraParameters;->setPhotoNightTranYUVMode(I)V

    goto :goto_52

    .line 100
    :cond_45
    invoke-virtual {p1, v1}, Lcom/transsion/camera/adapter/CameraParameters;->setPhotoNightTranYUVMode(I)V

    goto :goto_52

    :cond_49
    if-eqz v0, :cond_4f

    .line 104
    invoke-virtual {p1, v2}, Lcom/transsion/camera/adapter/CameraParameters;->setNightHawkMode(I)V

    goto :goto_52

    .line 106
    :cond_4f
    invoke-virtual {p1, v1}, Lcom/transsion/camera/adapter/CameraParameters;->setNightHawkMode(I)V

    :goto_52
    return v1
.end method

.method private configVideoParameters(Lcom/transsion/camera/adapter/CameraParameters;)I
    .registers 8

    .line 75
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/nighthawk/NightHawkParameterConfigure;->mNightHawk:Lcom/transsion/camera/feature/setting/nighthawk/NightHawk;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/nighthawk/NightHawk;->isSupport()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/transsion/camera/feature/setting/nighthawk/NightHawkParameterConfigure;->mNightHawk:Lcom/transsion/camera/feature/setting/nighthawk/NightHawk;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v0

    const-string v3, "on"

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1a

    move v0, v1

    goto :goto_1b

    :cond_1a
    move v0, v2

    .line 76
    :goto_1b
    sget-object v3, Lcom/transsion/camera/feature/setting/nighthawk/NightHawkParameterConfigure;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "configVideoParameters VIDEO_NIGHT_USE_TRAN_YUV:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/transsion/camera/feature/setting/nighthawk/NightHawkParameterConfigure;->VIDEO_NIGHT_USE_TRAN_YUV:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", on:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 77
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/nighthawk/NightHawkParameterConfigure;->VIDEO_NIGHT_USE_TRAN_YUV:Z

    if-eqz p0, :cond_49

    if-eqz v0, :cond_45

    .line 79
    invoke-virtual {p1, v1}, Lcom/transsion/camera/adapter/CameraParameters;->setVideoNightTranYUVMode(I)V

    goto :goto_52

    .line 81
    :cond_45
    invoke-virtual {p1, v2}, Lcom/transsion/camera/adapter/CameraParameters;->setVideoNightTranYUVMode(I)V

    goto :goto_52

    :cond_49
    if-eqz v0, :cond_4f

    .line 85
    invoke-virtual {p1, v1}, Lcom/transsion/camera/adapter/CameraParameters;->setNightHawkMode(I)V

    goto :goto_52

    .line 87
    :cond_4f
    invoke-virtual {p1, v2}, Lcom/transsion/camera/adapter/CameraParameters;->setNightHawkMode(I)V

    :goto_52
    return v2
.end method


# virtual methods
.method public configCommand(Lcom/transsion/camera/adapter/CameraProxy;)V
    .registers 3

    .line 123
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/nighthawk/NightHawkParameterConfigure;->mEnableCallback:Z

    if-eqz v0, :cond_e

    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/nighthawk/NightHawkParameterConfigure;->mNightHawkSupported:Z

    if-eqz v0, :cond_e

    .line 124
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/nighthawk/NightHawkParameterConfigure;->mCallback:Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;

    invoke-virtual {p1, p0}, Lcom/transsion/camera/adapter/CameraProxy;->registerFrameResultCallback(Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;)V

    return-void

    .line 126
    :cond_e
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/nighthawk/NightHawkParameterConfigure;->mCallback:Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;

    invoke-virtual {p1, p0}, Lcom/transsion/camera/adapter/CameraProxy;->unRegisterFrameResultCallback(Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;)V

    return-void
.end method

.method public configParameters(Lcom/transsion/camera/adapter/CameraParameters;)I
    .registers 3

    .line 114
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/nighthawk/NightHawkParameterConfigure;->mIsVideoType:Z

    if-eqz v0, :cond_9

    .line 115
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/nighthawk/NightHawkParameterConfigure;->configVideoParameters(Lcom/transsion/camera/adapter/CameraParameters;)I

    move-result p0

    return p0

    .line 117
    :cond_9
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/nighthawk/NightHawkParameterConfigure;->configPhotoParameters(Lcom/transsion/camera/adapter/CameraParameters;)I

    move-result p0

    return p0
.end method

.method enableCallback(Z)V
    .registers 2

    .line 136
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/nighthawk/NightHawkParameterConfigure;->mEnableCallback:Z

    return-void
.end method

.method public sendSettingChangeRequest()V
    .registers 2

    .line 52
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/nighthawk/NightHawkParameterConfigure;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/nighthawk/NightHawkParameterConfigure;->mNightHawk:Lcom/transsion/camera/feature/setting/nighthawk/NightHawk;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/nighthawk/NightHawk;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;->requestChangeCommand(Ljava/lang/String;)V

    return-void
.end method

.method public setCameraCapabilities(Lcom/transsion/camera/adapter/ICameraCapabilities;)V
    .registers 4

    .line 57
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/nighthawk/NightHawkParameterConfigure;->mIsVideoType:Z

    if-eqz v0, :cond_8

    iget-boolean v1, p0, Lcom/transsion/camera/feature/setting/nighthawk/NightHawkParameterConfigure;->VIDEO_NIGHT_USE_TRAN_YUV:Z

    if-nez v1, :cond_e

    :cond_8
    if-nez v0, :cond_1c

    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/nighthawk/NightHawkParameterConfigure;->PHOTO_NIGHT_USE_TRAN_YUV:Z

    if-eqz v0, :cond_1c

    .line 58
    :cond_e
    sget-object v0, Lcom/transsion/camera/feature/setting/nighthawk/NightHawkParameterConfigure;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "setCameraCapabilities isVideoSuperNightYUVSupport!"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 59
    invoke-interface {p1}, Lcom/transsion/camera/adapter/ICameraCapabilities;->isVideoSuperNightYUVSupport()Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/nighthawk/NightHawkParameterConfigure;->mNightHawkSupported:Z

    goto :goto_29

    .line 61
    :cond_1c
    sget-object v0, Lcom/transsion/camera/feature/setting/nighthawk/NightHawkParameterConfigure;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "setCameraCapabilities isNightHawkModeSupport!"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 62
    invoke-interface {p1}, Lcom/transsion/camera/adapter/ICameraCapabilities;->isNightHawkModeSupport()Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/nighthawk/NightHawkParameterConfigure;->mNightHawkSupported:Z

    .line 64
    :goto_29
    sget-object p1, Lcom/transsion/camera/feature/setting/nighthawk/NightHawkParameterConfigure;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setCameraCapabilities supported = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/transsion/camera/feature/setting/nighthawk/NightHawkParameterConfigure;->mNightHawkSupported:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 65
    iget-boolean p1, p0, Lcom/transsion/camera/feature/setting/nighthawk/NightHawkParameterConfigure;->mNightHawkSupported:Z

    if-nez p1, :cond_46

    return-void

    .line 68
    :cond_46
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 69
    const-string v0, "off"

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    const-string v0, "on"

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 71
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/nighthawk/NightHawkParameterConfigure;->mNightHawk:Lcom/transsion/camera/feature/setting/nighthawk/NightHawk;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/transsion/camera/feature/setting/nighthawk/NightHawk;->initValueAndSupport(Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method

.method public setIsVideoType(Z)V
    .registers 5

    .line 131
    sget-object v0, Lcom/transsion/camera/feature/setting/nighthawk/NightHawkParameterConfigure;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setIsVideoType() called with: type = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 132
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/nighthawk/NightHawkParameterConfigure;->mIsVideoType:Z

    return-void
.end method
