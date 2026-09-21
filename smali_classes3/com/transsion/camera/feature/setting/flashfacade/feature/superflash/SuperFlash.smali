.class public Lcom/transsion/camera/feature/setting/flashfacade/feature/superflash/SuperFlash;
.super Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;
.source "SourceFile"


# static fields
.field private static final HUMAN_EFFECT_OFF:Ljava/lang/String; = "0"

.field public static final SETTING_KEY:Ljava/lang/String; = "key_super_flash"

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mConfiguratorManager:Lcom/transsion/camera/feature/setting/flashfacade/feature/superflash/SuperFlashConfiguratorManager;

.field private mModeSupport:Z

.field private mModeSupportHumanEffect:Z

.field private final mScreenTorchStatus:Lcom/transsion/camera/feature/setting/flashfacade/feature/superflash/ScreenTorchStatus;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 39
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "SuperFlash"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/setting/flashfacade/feature/superflash/SuperFlash;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;)V
    .registers 2

    .line 54
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;-><init>(Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;)V

    .line 55
    new-instance p1, Lcom/transsion/camera/feature/setting/flashfacade/feature/superflash/ScreenTorchStatus;

    invoke-direct {p1}, Lcom/transsion/camera/feature/setting/flashfacade/feature/superflash/ScreenTorchStatus;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/superflash/SuperFlash;->mScreenTorchStatus:Lcom/transsion/camera/feature/setting/flashfacade/feature/superflash/ScreenTorchStatus;

    return-void
.end method

.method private humanEffectOn()Z
    .registers 3

    .line 134
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/superflash/SuperFlash;->mModeSupportHumanEffect:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 137
    :cond_6
    const-string v0, "key_human_effect_index"

    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 138
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1c

    const-string v0, "0"

    .line 139
    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_1c

    const/4 p0, 0x1

    return p0

    :cond_1c
    return v1
.end method

.method private onConfigStart()V
    .registers 3

    .line 125
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/flashfacade/feature/superflash/SuperFlash;->humanEffectOn()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 126
    sget-object v0, Lcom/transsion/camera/feature/setting/flashfacade/feature/superflash/SuperFlash;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "humanEffectOn convert off"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 127
    const-string v0, "off"

    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;->setValue(Ljava/lang/String;)V

    return-void

    .line 129
    :cond_13
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/superflash/SuperFlash;->mConfiguratorManager:Lcom/transsion/camera/feature/setting/flashfacade/feature/superflash/SuperFlashConfiguratorManager;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/flashfacade/feature/superflash/SuperFlashConfiguratorManager;->onConfigStart()V

    return-void
.end method


# virtual methods
.method public configParameters(Lcom/transsion/camera/adapter/CameraParameters;)I
    .registers 5

    .line 111
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/flashfacade/feature/superflash/SuperFlash;->onConfigStart()V

    .line 112
    sget-object v0, Lcom/transsion/camera/feature/setting/flashfacade/feature/superflash/SuperFlash;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "configParameters mValue: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;->mValue:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 113
    iget-object v1, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;->mValue:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/transsion/camera/adapter/CameraParameters;->setSuperFlashValue(Ljava/lang/String;)V

    .line 114
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;->isBackMainUnSupport()Z

    move-result v1

    if-nez v1, :cond_38

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;->isBackWideUnSupport()Z

    move-result v1

    if-nez v1, :cond_38

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;->isBackTeleUnSupport()Z

    move-result v1

    if-nez v1, :cond_38

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;->isFrontCameraUnSupport()Z

    move-result v1

    if-eqz v1, :cond_42

    .line 115
    :cond_38
    const-string v1, "Force close sfl. "

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 116
    const-string v0, "off"

    invoke-virtual {p1, v0}, Lcom/transsion/camera/adapter/CameraParameters;->setSuperFlashValue(Ljava/lang/String;)V

    .line 118
    :cond_42
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/superflash/SuperFlash;->mScreenTorchStatus:Lcom/transsion/camera/feature/setting/flashfacade/feature/superflash/ScreenTorchStatus;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/setting/flashfacade/feature/superflash/ScreenTorchStatus;->configParameters(Lcom/transsion/camera/adapter/CameraParameters;)V

    const/4 p0, 0x0

    return p0
.end method

.method protected bridge synthetic createConfiguratorManager()Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseConfiguratorManager;
    .registers 1

    .line 37
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/flashfacade/feature/superflash/SuperFlash;->createConfiguratorManager()Lcom/transsion/camera/feature/setting/flashfacade/feature/superflash/SuperFlashConfiguratorManager;

    move-result-object p0

    return-object p0
.end method

.method protected createConfiguratorManager()Lcom/transsion/camera/feature/setting/flashfacade/feature/superflash/SuperFlashConfiguratorManager;
    .registers 2

    .line 61
    new-instance v0, Lcom/transsion/camera/feature/setting/flashfacade/feature/superflash/SuperFlashConfiguratorManager;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/setting/flashfacade/feature/superflash/SuperFlashConfiguratorManager;-><init>(Lcom/transsion/camera/feature/setting/flashfacade/feature/superflash/SuperFlash;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/superflash/SuperFlash;->mConfiguratorManager:Lcom/transsion/camera/feature/setting/flashfacade/feature/superflash/SuperFlashConfiguratorManager;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .registers 1

    .line 76
    const-string p0, "key_super_flash"

    return-object p0
.end method

.method getScreenTorchStatus()Lcom/transsion/camera/feature/setting/flashfacade/feature/superflash/ScreenTorchStatus;
    .registers 1

    .line 66
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/superflash/SuperFlash;->mScreenTorchStatus:Lcom/transsion/camera/feature/setting/flashfacade/feature/superflash/ScreenTorchStatus;

    return-object p0
.end method

.method public getSettingType()Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;
    .registers 1

    .line 71
    sget-object p0, Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;->PHOTO:Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;

    return-object p0
.end method

.method public onModeClose(Ljava/lang/String;)V
    .registers 2

    .line 88
    invoke-super {p0, p1}, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;->onModeClose(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 89
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/superflash/SuperFlash;->mModeSupport:Z

    .line 90
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/superflash/SuperFlash;->mModeSupportHumanEffect:Z

    return-void
.end method

.method public onModeOpen(Ljava/lang/String;Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;[Ljava/lang/String;)V
    .registers 4

    .line 81
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;->onModeOpen(Ljava/lang/String;Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;[Ljava/lang/String;)V

    .line 82
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/flashfacade/feature/superflash/SuperFlash;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Lcom/transsion/camera/utils/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/superflash/SuperFlash;->mModeSupport:Z

    .line 83
    const-string p1, "key_human_effect_index"

    invoke-static {p3, p1}, Lcom/transsion/camera/utils/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/superflash/SuperFlash;->mModeSupportHumanEffect:Z

    return-void
.end method

.method public ringScreenLightOn()Z
    .registers 2

    .line 148
    const-string v0, "key_ring_screen_light"

    .line 149
    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;->featureValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 148
    const-string v0, "on"

    invoke-static {v0, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public screenFlashOn()Z
    .registers 2

    .line 143
    const-string v0, "key_screen_flash"

    .line 144
    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;->featureValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 143
    const-string v0, "on"

    invoke-static {v0, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public setCameraCapabilities(Lcom/transsion/camera/adapter/ICameraCapabilities;)V
    .registers 4

    .line 95
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;->mSupportedValues:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 96
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;->mSupportedValues:Ljava/util/List;

    const-string v1, "off"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 98
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;->facingFront()Z

    move-result v0

    if-nez v0, :cond_19

    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;->mFlashConfig:Lcom/transsion/camera/feature/setting/flashfacade/FlashConfig;

    iget-boolean v0, v0, Lcom/transsion/camera/feature/setting/flashfacade/FlashConfig;->mRearCameraSuperFlashSupport:Z

    if-nez v0, :cond_19

    return-void

    .line 102
    :cond_19
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/superflash/SuperFlash;->mModeSupport:Z

    if-eqz v0, :cond_2a

    invoke-interface {p1}, Lcom/transsion/camera/adapter/ICameraCapabilities;->superFlashSupport()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 103
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;->mSupportedValues:Ljava/util/List;

    const-string v1, "on"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 106
    :cond_2a
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/superflash/SuperFlash;->mScreenTorchStatus:Lcom/transsion/camera/feature/setting/flashfacade/feature/superflash/ScreenTorchStatus;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/setting/flashfacade/feature/superflash/ScreenTorchStatus;->setCameraCapabilities(Lcom/transsion/camera/adapter/ICameraCapabilities;)V

    return-void
.end method
