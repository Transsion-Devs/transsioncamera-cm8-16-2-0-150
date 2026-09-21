.class public Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/LedFlash;
.super Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;
.source "SourceFile"


# static fields
.field public static final SETTING_KEY:Ljava/lang/String; = "key_flash"

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mConfiguratorManager:Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/LedFlashConfiguratorManager;

.field private final mFlashStyle:Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/FlashStyle;

.field private final mFlipLuminanceAdjust:Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/FlipLuminanceAdjust;

.field private mFrontDualFlashAdjust:Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/FrontDualFlashAdjust;

.field private final mFrontDualFlashSupport:Z

.field private mHighLightSupport:Z

.field private mLuminanceAdjust:Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/LuminanceAdjust;

.field private mLuminanceAdjustSupport:Z

.field private mModeKey:Ljava/lang/String;

.field private mSuperFlashPlatformSupport:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 33
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "LedFlash"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/LedFlash;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;)V
    .registers 5

    .line 54
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;-><init>(Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;)V

    .line 55
    new-instance v0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/FlashStyle;

    invoke-direct {v0, p1}, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/FlashStyle;-><init>(Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/LedFlash;->mFlashStyle:Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/FlashStyle;

    .line 56
    invoke-virtual {p1}, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->getFlashConfig()Lcom/transsion/camera/feature/setting/flashfacade/FlashConfig;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/feature/setting/flashfacade/FlashConfig;->mUseNewLuminanceInteraction:Z

    .line 57
    invoke-virtual {p1}, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->getFlashConfig()Lcom/transsion/camera/feature/setting/flashfacade/FlashConfig;

    move-result-object v1

    iget-boolean v1, v1, Lcom/transsion/camera/feature/setting/flashfacade/FlashConfig;->mFrontDualFlashSupport:Z

    iput-boolean v1, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/LedFlash;->mFrontDualFlashSupport:Z

    .line 59
    new-instance v2, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/FlipLuminanceAdjust;

    invoke-direct {v2, p1}, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/FlipLuminanceAdjust;-><init>(Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;)V

    iput-object v2, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/LedFlash;->mFlipLuminanceAdjust:Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/FlipLuminanceAdjust;

    if-eqz v1, :cond_29

    .line 62
    new-instance v0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/FrontDualFlashAdjust;

    invoke-direct {v0, p1, p0}, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/FrontDualFlashAdjust;-><init>(Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/LedFlash;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/LedFlash;->mFrontDualFlashAdjust:Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/FrontDualFlashAdjust;

    return-void

    :cond_29
    if-eqz v0, :cond_33

    .line 65
    new-instance v0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/LuminanceAdjustNewInteraction;

    invoke-direct {v0, p1}, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/LuminanceAdjustNewInteraction;-><init>(Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/LedFlash;->mLuminanceAdjust:Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/LuminanceAdjust;

    return-void

    .line 67
    :cond_33
    new-instance v0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/LuminanceAdjust;

    invoke-direct {v0, p1}, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/LuminanceAdjust;-><init>(Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/LedFlash;->mLuminanceAdjust:Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/LuminanceAdjust;

    return-void
.end method

.method private initSupportedValues(Lcom/transsion/camera/adapter/ICameraCapabilities;)V
    .registers 3

    .line 152
    invoke-interface {p1}, Lcom/transsion/camera/adapter/ICameraCapabilities;->getSupportedFlashModes()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_18

    .line 153
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_d

    goto :goto_18

    .line 158
    :cond_d
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;->mSupportedValues:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 159
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;->mSupportedValues:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void

    .line 154
    :cond_18
    :goto_18
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;->mSupportedValues:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void
.end method


# virtual methods
.method configFlashStyleOneStage()Z
    .registers 1

    .line 216
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;->mFlashConfig:Lcom/transsion/camera/feature/setting/flashfacade/FlashConfig;

    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashConfig;->mFlashStyleOneStage:Z

    return p0
.end method

.method public configParameters(Lcom/transsion/camera/adapter/CameraParameters;)I
    .registers 5

    .line 164
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/LedFlash;->mConfiguratorManager:Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/LedFlashConfiguratorManager;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/LedFlashConfiguratorManager;->onConfigStart()V

    .line 165
    sget-object v0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/LedFlash;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "configParameters mValue: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;->mValue:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 166
    const-string v0, "on"

    iget-object v1, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;->mValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_35

    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;->mFlashManager:Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->getIsContinuousShot()Z

    move-result v0

    if-eqz v0, :cond_35

    .line 167
    const-string v0, "off"

    invoke-virtual {p1, v0}, Lcom/transsion/camera/adapter/CameraParameters;->setFlashMode(Ljava/lang/String;)V

    goto :goto_3a

    .line 169
    :cond_35
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;->mValue:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/transsion/camera/adapter/CameraParameters;->setFlashMode(Ljava/lang/String;)V

    .line 171
    :goto_3a
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/LedFlash;->mFlashStyle:Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/FlashStyle;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/FlashStyle;->configParameters(Lcom/transsion/camera/adapter/CameraParameters;)V

    .line 172
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/LedFlash;->mHighLightSupport:Z

    invoke-virtual {p1, v0}, Lcom/transsion/camera/adapter/CameraParameters;->setHighLightMode(I)V

    .line 174
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;->mFlashManager:Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->screenFlip()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_53

    .line 175
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/LedFlash;->mFlipLuminanceAdjust:Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/FlipLuminanceAdjust;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/FlipLuminanceAdjust;->configParameters(Lcom/transsion/camera/adapter/CameraParameters;)V

    return v1

    .line 179
    :cond_53
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/LedFlash;->mFrontDualFlashSupport:Z

    if-eqz v0, :cond_5d

    .line 180
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/LedFlash;->mFrontDualFlashAdjust:Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/FrontDualFlashAdjust;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/FrontDualFlashAdjust;->configParameters(Lcom/transsion/camera/adapter/CameraParameters;)V

    return v1

    .line 183
    :cond_5d
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/LedFlash;->mLuminanceAdjust:Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/LuminanceAdjust;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/LuminanceAdjust;->configParameters(Lcom/transsion/camera/adapter/CameraParameters;)V

    return v1
.end method

.method protected bridge synthetic createConfiguratorManager()Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseConfiguratorManager;
    .registers 1

    .line 31
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/LedFlash;->createConfiguratorManager()Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/LedFlashConfiguratorManager;

    move-result-object p0

    return-object p0
.end method

.method protected createConfiguratorManager()Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/LedFlashConfiguratorManager;
    .registers 2

    .line 75
    new-instance v0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/LedFlashConfiguratorManager;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/LedFlashConfiguratorManager;-><init>(Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/LedFlash;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/LedFlash;->mConfiguratorManager:Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/LedFlashConfiguratorManager;

    return-object v0
.end method

.method flashFacadeValue()Ljava/lang/String;
    .registers 1

    .line 200
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;->mFlashManager:Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->getFlashFacade()Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method getFlashStyle()Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/FlashStyle;
    .registers 1

    .line 80
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/LedFlash;->mFlashStyle:Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/FlashStyle;

    return-object p0
.end method

.method getFrontDualFlashAdjust()Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/FrontDualFlashAdjust;
    .registers 1

    .line 88
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/LedFlash;->mFrontDualFlashAdjust:Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/FrontDualFlashAdjust;

    return-object p0
.end method

.method public getKey()Ljava/lang/String;
    .registers 1

    .line 108
    const-string p0, "key_flash"

    return-object p0
.end method

.method getLuminanceAdjust()Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/LuminanceAdjust;
    .registers 1

    .line 84
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/LedFlash;->mLuminanceAdjust:Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/LuminanceAdjust;

    return-object p0
.end method

.method public getSettingType()Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;
    .registers 1

    .line 103
    sget-object p0, Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;->PHOTO_AND_VIDEO:Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;

    return-object p0
.end method

.method isSupportLuminanceAdjust()Z
    .registers 1

    .line 204
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/LedFlash;->mLuminanceAdjustSupport:Z

    return p0
.end method

.method modeKey()Ljava/lang/String;
    .registers 1

    .line 196
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/LedFlash;->mModeKey:Ljava/lang/String;

    return-object p0
.end method

.method public onModeClose(Ljava/lang/String;)V
    .registers 2

    .line 130
    invoke-super {p0, p1}, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;->onModeClose(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 131
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/LedFlash;->mModeKey:Ljava/lang/String;

    return-void
.end method

.method public onModeOpen(Ljava/lang/String;Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;[Ljava/lang/String;)V
    .registers 4

    .line 122
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;->onModeOpen(Ljava/lang/String;Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;[Ljava/lang/String;)V

    .line 123
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/LedFlash;->mModeKey:Ljava/lang/String;

    .line 124
    iget-object p2, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/LedFlash;->mFlashStyle:Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/FlashStyle;

    invoke-virtual {p2, p1}, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/FlashStyle;->trackMode(Ljava/lang/String;)V

    .line 125
    const-string p1, "nonsupport_luminance_adjust"

    invoke-static {p3, p1}, Lcom/transsion/camera/utils/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/LedFlash;->mLuminanceAdjustSupport:Z

    return-void
.end method

.method public pause()V
    .registers 2

    .line 113
    invoke-super {p0}, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;->pause()V

    .line 114
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;->mFlashManager:Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->getFlashConfig()Lcom/transsion/camera/feature/setting/flashfacade/FlashConfig;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/feature/setting/flashfacade/FlashConfig;->mUseNewLuminanceInteraction:Z

    if-nez v0, :cond_17

    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/LedFlash;->mFrontDualFlashSupport:Z

    if-eqz v0, :cond_12

    goto :goto_17

    .line 117
    :cond_12
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/LedFlash;->mLuminanceAdjust:Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/LuminanceAdjust;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/LuminanceAdjust;->restoreToDefault()V

    :cond_17
    :goto_17
    return-void
.end method

.method rearCameraSuperFlashSupport()Z
    .registers 1

    .line 212
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;->mFlashConfig:Lcom/transsion/camera/feature/setting/flashfacade/FlashConfig;

    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashConfig;->mRearCameraSuperFlashSupport:Z

    return p0
.end method

.method public restoreToDefault()V
    .registers 2

    .line 93
    invoke-super {p0}, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;->restoreToDefault()V

    .line 94
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/LedFlash;->mFrontDualFlashSupport:Z

    if-eqz v0, :cond_d

    .line 95
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/LedFlash;->mFrontDualFlashAdjust:Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/FrontDualFlashAdjust;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/FrontDualFlashAdjust;->restoreToDefault()V

    return-void

    .line 98
    :cond_d
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/LedFlash;->mLuminanceAdjust:Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/LuminanceAdjust;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/LuminanceAdjust;->restoreToDefault()V

    return-void
.end method

.method public setCameraCapabilities(Lcom/transsion/camera/adapter/ICameraCapabilities;)V
    .registers 3

    .line 136
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/LedFlash;->initSupportedValues(Lcom/transsion/camera/adapter/ICameraCapabilities;)V

    .line 137
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/LedFlash;->mFlashStyle:Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/FlashStyle;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/FlashStyle;->initFlashStyle(Lcom/transsion/camera/adapter/ICameraCapabilities;)V

    .line 138
    invoke-interface {p1}, Lcom/transsion/camera/adapter/ICameraCapabilities;->isSupportHighLight()Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/LedFlash;->mHighLightSupport:Z

    .line 139
    invoke-interface {p1}, Lcom/transsion/camera/adapter/ICameraCapabilities;->superFlashSupport()Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/LedFlash;->mSuperFlashPlatformSupport:Z

    .line 140
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;->mFlashManager:Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->screenFlip()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 141
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/LedFlash;->mFlipLuminanceAdjust:Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/FlipLuminanceAdjust;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/FlipLuminanceAdjust;->initLuminance(Lcom/transsion/camera/adapter/ICameraCapabilities;)V

    return-void

    .line 144
    :cond_22
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/LedFlash;->mFrontDualFlashSupport:Z

    if-eqz v0, :cond_2c

    .line 145
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/LedFlash;->mFrontDualFlashAdjust:Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/FrontDualFlashAdjust;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/FrontDualFlashAdjust;->initFrontDualFlash(Lcom/transsion/camera/adapter/ICameraCapabilities;)V

    return-void

    .line 148
    :cond_2c
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/LedFlash;->mLuminanceAdjust:Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/LuminanceAdjust;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/LuminanceAdjust;->initLuminance(Lcom/transsion/camera/adapter/ICameraCapabilities;)V

    return-void
.end method

.method superFlashPlatformSupport()Z
    .registers 1

    .line 220
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/LedFlash;->mSuperFlashPlatformSupport:Z

    return p0
.end method

.method public updateFrontDualFlashValue(Ljava/lang/String;)Lcom/transsion/camera/feature/setting/flashfacade/info/RequestType;
    .registers 2

    .line 192
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/LedFlash;->mConfiguratorManager:Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/LedFlashConfiguratorManager;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/LedFlashConfiguratorManager;->updateFrontDualFlashValue(Ljava/lang/String;)Lcom/transsion/camera/feature/setting/flashfacade/info/RequestType;

    move-result-object p0

    return-object p0
.end method

.method public updateLuminanceValue(I)Lcom/transsion/camera/feature/setting/flashfacade/info/RequestType;
    .registers 2

    .line 188
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/LedFlash;->mConfiguratorManager:Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/LedFlashConfiguratorManager;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/LedFlashConfiguratorManager;->updateLuminanceValue(I)Lcom/transsion/camera/feature/setting/flashfacade/info/RequestType;

    move-result-object p0

    return-object p0
.end method

.method videoModeType()Z
    .registers 1

    .line 208
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;->mFlashManager:Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->videoModeType()Z

    move-result p0

    return p0
.end method
