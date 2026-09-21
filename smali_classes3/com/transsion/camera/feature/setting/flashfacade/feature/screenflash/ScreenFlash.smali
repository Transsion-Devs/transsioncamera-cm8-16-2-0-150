.class public Lcom/transsion/camera/feature/setting/flashfacade/feature/screenflash/ScreenFlash;
.super Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;
.source "SourceFile"


# static fields
.field public static final SETTING_KEY:Ljava/lang/String; = "key_screen_flash"

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private final mBrightnessController:Lcom/transsion/camera/feature/setting/flashfacade/feature/screenflash/ScreenBrightnessController;

.field private mPhotoModeSpecial:Z

.field private mStatusResponder:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 37
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "ScreenFlash"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/setting/flashfacade/feature/screenflash/ScreenFlash;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;)V
    .registers 2

    .line 48
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;-><init>(Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;)V

    const/4 p1, 0x0

    .line 43
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/screenflash/ScreenFlash;->mPhotoModeSpecial:Z

    .line 49
    new-instance p1, Lcom/transsion/camera/feature/setting/flashfacade/feature/screenflash/ScreenBrightnessController;

    invoke-direct {p1}, Lcom/transsion/camera/feature/setting/flashfacade/feature/screenflash/ScreenBrightnessController;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/screenflash/ScreenFlash;->mBrightnessController:Lcom/transsion/camera/feature/setting/flashfacade/feature/screenflash/ScreenBrightnessController;

    return-void
.end method

.method private brightenScreen(Ljava/lang/String;)V
    .registers 3

    .line 93
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/screenflash/ScreenFlash;->mBrightnessController:Lcom/transsion/camera/feature/setting/flashfacade/feature/screenflash/ScreenBrightnessController;

    const-string v0, "on"

    .line 94
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    .line 93
    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/setting/flashfacade/feature/screenflash/ScreenBrightnessController;->brightenScreen(Z)V

    return-void
.end method


# virtual methods
.method public configParameters(Lcom/transsion/camera/adapter/CameraParameters;)I
    .registers 5

    .line 114
    sget-object v0, Lcom/transsion/camera/feature/setting/flashfacade/feature/screenflash/ScreenFlash;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "configParameters mValue: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;->mValue:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 115
    iget-object v1, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;->mValue:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/transsion/camera/adapter/CameraParameters;->setScreenFlashStatus(Ljava/lang/String;)V

    .line 116
    iget-object v1, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;->mFlashConfig:Lcom/transsion/camera/feature/setting/flashfacade/FlashConfig;

    iget-boolean v1, v1, Lcom/transsion/camera/feature/setting/flashfacade/FlashConfig;->mUsePlatformScreenFlash:Z

    if-eqz v1, :cond_46

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;->facingFront()Z

    move-result v1

    if-eqz v1, :cond_46

    .line 117
    const-string v1, "key_flash_facade"

    invoke-virtual {p0, v1}, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 118
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[setScreenFlashMode]  flashValue: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 119
    invoke-virtual {p1, p0}, Lcom/transsion/camera/adapter/CameraParameters;->setScreenFlashMode(Ljava/lang/String;)V

    :cond_46
    const/4 p0, 0x0

    return p0
.end method

.method protected bridge synthetic createConfiguratorManager()Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseConfiguratorManager;
    .registers 1

    .line 35
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/flashfacade/feature/screenflash/ScreenFlash;->createConfiguratorManager()Lcom/transsion/camera/feature/setting/flashfacade/feature/screenflash/ScreenFlashConfiguratorManager;

    move-result-object p0

    return-object p0
.end method

.method protected createConfiguratorManager()Lcom/transsion/camera/feature/setting/flashfacade/feature/screenflash/ScreenFlashConfiguratorManager;
    .registers 2

    .line 55
    new-instance v0, Lcom/transsion/camera/feature/setting/flashfacade/feature/screenflash/ScreenFlashConfiguratorManager;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/setting/flashfacade/feature/screenflash/ScreenFlashConfiguratorManager;-><init>(Lcom/transsion/camera/feature/setting/flashfacade/feature/screenflash/ScreenFlash;)V

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .registers 1

    .line 80
    const-string p0, "key_screen_flash"

    return-object p0
.end method

.method public getSettingType()Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;
    .registers 1

    .line 74
    sget-object p0, Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;->PHOTO:Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;

    return-object p0
.end method

.method public init(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)V
    .registers 4

    .line 60
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;->init(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)V

    .line 61
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/screenflash/ScreenFlash;->mBrightnessController:Lcom/transsion/camera/feature/setting/flashfacade/feature/screenflash/ScreenBrightnessController;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/feature/setting/flashfacade/feature/screenflash/ScreenBrightnessController;->init(Landroid/content/Context;)V

    .line 63
    invoke-interface {p2}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getStatusMonitor()Lcom/transsion/camera/app/common/setting/StatusMonitor;

    move-result-object p1

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/flashfacade/feature/screenflash/ScreenFlash;->getKey()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/screenflash/ScreenFlash;->mStatusResponder:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    return-void
.end method

.method public onModeOpen(Ljava/lang/String;Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;[Ljava/lang/String;)V
    .registers 4

    .line 99
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;->onModeOpen(Ljava/lang/String;Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;[Ljava/lang/String;)V

    .line 100
    const-string p1, "key_video_fun_definition"

    invoke-static {p3, p1}, Lcom/transsion/camera/utils/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/screenflash/ScreenFlash;->mPhotoModeSpecial:Z

    return-void
.end method

.method protected onValueChanged(Ljava/lang/String;)V
    .registers 3

    .line 85
    invoke-super {p0, p1}, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;->onValueChanged(Ljava/lang/String;)V

    .line 86
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;->screenFlip()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 87
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/flashfacade/feature/screenflash/ScreenFlash;->brightenScreen(Ljava/lang/String;)V

    .line 89
    :cond_c
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/screenflash/ScreenFlash;->mStatusResponder:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/flashfacade/feature/screenflash/ScreenFlash;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0, p1}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setCameraCapabilities(Lcom/transsion/camera/adapter/ICameraCapabilities;)V
    .registers 3

    .line 105
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;->mSupportedValues:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 106
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;->mSupportedValues:Ljava/util/List;

    const-string v0, "off"

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 107
    iget-boolean p1, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/screenflash/ScreenFlash;->mPhotoModeSpecial:Z

    if-nez p1, :cond_29

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;->screenFlip()Z

    move-result p1

    if-nez p1, :cond_22

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;->facingFront()Z

    move-result p1

    if-eqz p1, :cond_29

    iget-object p1, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;->mFlashConfig:Lcom/transsion/camera/feature/setting/flashfacade/FlashConfig;

    iget-boolean p1, p1, Lcom/transsion/camera/feature/setting/flashfacade/FlashConfig;->mScreenFlashSupport:Z

    if-eqz p1, :cond_29

    .line 108
    :cond_22
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;->mSupportedValues:Ljava/util/List;

    const-string p1, "on"

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_29
    return-void
.end method

.method public unInit()V
    .registers 1

    .line 68
    invoke-super {p0}, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;->unInit()V

    .line 69
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/screenflash/ScreenFlash;->mBrightnessController:Lcom/transsion/camera/feature/setting/flashfacade/feature/screenflash/ScreenBrightnessController;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/flashfacade/feature/screenflash/ScreenBrightnessController;->unInit()V

    return-void
.end method
