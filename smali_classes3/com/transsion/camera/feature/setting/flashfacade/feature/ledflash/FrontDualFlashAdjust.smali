.class public Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/FrontDualFlashAdjust;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final FRONT_DUAL_FLASH_AUTO_TEMP:I = 0x0

.field private static final FRONT_DUAL_FLASH_COLOR_TEMP:Ljava/lang/String; = "front_dual_flash_color_temp"

.field private static final FRONT_DUAL_FLASH_DEFAULT_TEMP:I = 0x2

.field private static final FRONT_DUAL_FLASH_HIGH_STRENGTH:I = 0x2

.field private static final FRONT_DUAL_FLASH_STRENGTH_MODE:Ljava/lang/String; = "front_dual_flash_strength_mode"

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mBackCameraThrLevelLuminanceSupport:Z

.field private mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

.field private mDefaultFlashStrengthMode:I

.field private final mDefaultFrontDualFlashInfo:Lcom/transsion/camera/feature/setting/flashfacade/info/FrontDualFlashInfo;

.field private mFlashAutoMode:Z

.field private final mFlashManager:Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;

.field private final mFrontDualFlashInfo:Lcom/transsion/camera/feature/setting/flashfacade/info/FrontDualFlashInfo;

.field private mFrontDualFlashSupported:Z

.field private mLedFlash:Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/LedFlash;

.field private final mLuminanceAdjustSupportForCamera:[I

.field private mValueSupportAdjust:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 27
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "FrontDualFlashAdjust"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/FrontDualFlashAdjust;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method constructor <init>(Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/LedFlash;)V
    .registers 5

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 43
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/FrontDualFlashAdjust;->mBackCameraThrLevelLuminanceSupport:Z

    .line 49
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/FrontDualFlashAdjust;->mFlashManager:Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;

    .line 50
    iput-object p2, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/FrontDualFlashAdjust;->mLedFlash:Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/LedFlash;

    .line 51
    new-instance p2, Lcom/transsion/camera/feature/setting/flashfacade/info/FrontDualFlashInfo;

    invoke-virtual {p1}, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->getFlashConfig()Lcom/transsion/camera/feature/setting/flashfacade/FlashConfig;

    move-result-object v0

    iget v0, v0, Lcom/transsion/camera/feature/setting/flashfacade/FlashConfig;->mDefaultFrontDualFlashColorTemp:I

    .line 52
    invoke-virtual {p1}, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->getFlashConfig()Lcom/transsion/camera/feature/setting/flashfacade/FlashConfig;

    move-result-object v1

    iget v1, v1, Lcom/transsion/camera/feature/setting/flashfacade/FlashConfig;->mDefaultPhotoFrontDualFlashStrengthMode:I

    invoke-direct {p2, v0, v1}, Lcom/transsion/camera/feature/setting/flashfacade/info/FrontDualFlashInfo;-><init>(II)V

    iput-object p2, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/FrontDualFlashAdjust;->mDefaultFrontDualFlashInfo:Lcom/transsion/camera/feature/setting/flashfacade/info/FrontDualFlashInfo;

    .line 53
    new-instance v0, Lcom/transsion/camera/feature/setting/flashfacade/info/FrontDualFlashInfo;

    iget v1, p2, Lcom/transsion/camera/feature/setting/flashfacade/info/FrontDualFlashInfo;->mFrontDualFlashColorTemp:I

    iget p2, p2, Lcom/transsion/camera/feature/setting/flashfacade/info/FrontDualFlashInfo;->mFrontDualFlashStrengthMode:I

    invoke-direct {v0, v1, p2}, Lcom/transsion/camera/feature/setting/flashfacade/info/FrontDualFlashInfo;-><init>(II)V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/FrontDualFlashAdjust;->mFrontDualFlashInfo:Lcom/transsion/camera/feature/setting/flashfacade/info/FrontDualFlashInfo;

    .line 55
    invoke-virtual {p1}, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->getFlashConfig()Lcom/transsion/camera/feature/setting/flashfacade/FlashConfig;

    move-result-object p2

    iget-boolean p2, p2, Lcom/transsion/camera/feature/setting/flashfacade/FlashConfig;->mBackCamThrLevelSupport:Z

    iput-boolean p2, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/FrontDualFlashAdjust;->mBackCameraThrLevelLuminanceSupport:Z

    .line 56
    invoke-virtual {p1}, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->getFlashConfig()Lcom/transsion/camera/feature/setting/flashfacade/FlashConfig;

    move-result-object p1

    iget-object p1, p1, Lcom/transsion/camera/feature/setting/flashfacade/FlashConfig;->mLuminanceAdjustSupportForCamera:[I

    iput-object p1, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/FrontDualFlashAdjust;->mLuminanceAdjustSupportForCamera:[I

    return-void
.end method

.method private forceSetupDualColor(Lcom/transsion/camera/adapter/CameraParameters;)V
    .registers 3

    .line 144
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/FrontDualFlashAdjust;->mFlashManager:Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->getFlashFacade()Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade;->currentModeNonsupportDualColor()Z

    move-result p0

    if-eqz p0, :cond_17

    .line 145
    sget-object p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/FrontDualFlashAdjust;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "Current mode nonsupport dual color, force setup dual color to default."

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p0, 0x2

    .line 146
    invoke-virtual {p1, p0}, Lcom/transsion/camera/adapter/CameraParameters;->setFrontDualFlashColorTemp(I)V

    :cond_17
    return-void
.end method

.method private forceSetupElectricValue(Lcom/transsion/camera/adapter/CameraParameters;)V
    .registers 3

    .line 180
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/FrontDualFlashAdjust;->mFlashManager:Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;

    if-nez p0, :cond_5

    goto :goto_21

    .line 184
    :cond_5
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->getFlashFacade()Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "torch"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_21

    .line 185
    sget-object p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/FrontDualFlashAdjust;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "Not in torch mode,the electric value is set to zero."

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p0, 0x0

    .line 186
    invoke-virtual {p1, p0}, Lcom/transsion/camera/adapter/CameraParameters;->setLuminanceValue(I)V

    :cond_21
    :goto_21
    return-void
.end method

.method private getDataStoreScope()Ljava/lang/String;
    .registers 3

    .line 219
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/FrontDualFlashAdjust;->mFlashManager:Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;

    const-string v1, ""

    if-nez v0, :cond_7

    return-object v1

    .line 223
    :cond_7
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/FrontDualFlashAdjust;->mLedFlash:Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/LedFlash;

    if-nez v0, :cond_c

    return-object v1

    .line 227
    :cond_c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/FrontDualFlashAdjust;->mFlashManager:Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;

    invoke-virtual {v1}, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->getFlashFacade()Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/setting/SettingBase;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/transsion/camera/adapter/CameraInfoUtil;->getFacing(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/FrontDualFlashAdjust;->mLedFlash:Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/LedFlash;

    invoke-virtual {v1}, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/LedFlash;->videoModeType()Z

    move-result v1

    if-eqz v1, :cond_2d

    const-string v1, "VIDEO"

    goto :goto_2f

    :cond_2d
    const-string v1, "PHOTO"

    :goto_2f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 228
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/FrontDualFlashAdjust;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/storage/DataStore;->getCameraScope(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private levelToElectricValue(I)I
    .registers 2

    if-eqz p1, :cond_10

    const/4 p0, 0x1

    if-eq p1, p0, :cond_d

    const/4 p0, 0x2

    if-eq p1, p0, :cond_a

    const/4 p0, 0x0

    return p0

    :cond_a
    const/16 p0, 0x64

    return p0

    :cond_d
    const/16 p0, 0x32

    return p0

    :cond_10
    const/16 p0, 0x14

    return p0
.end method

.method private setThrLuminanceValue(II)I
    .registers 6

    .line 152
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/FrontDualFlashAdjust;->mFlashManager:Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->getFlashFacade()Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getISetting()Lcom/transsion/camera/app/common/setting/ISetting;

    move-result-object v0

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISetting;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/camera/adapter/CameraInfoUtil;->isCameraFacingFront(Ljava/lang/String;)Z

    move-result v0

    .line 155
    iget-object v1, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/FrontDualFlashAdjust;->mLuminanceAdjustSupportForCamera:[I

    aget v1, v1, v0

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2a

    const/4 v2, 0x2

    if-eq v1, v2, :cond_25

    .line 163
    sget-object p1, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/FrontDualFlashAdjust;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p2, "setThrLuminanceValue: "

    invoke-static {p1, p2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p1, 0x0

    goto :goto_2e

    .line 160
    :cond_25
    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/FrontDualFlashAdjust;->assignBytesToInt(II)I

    move-result p1

    goto :goto_2e

    .line 157
    :cond_2a
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/FrontDualFlashAdjust;->levelToElectricValue(I)I

    move-result p1

    .line 165
    :goto_2e
    sget-object p2, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/FrontDualFlashAdjust;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mSupportValuesForCamera[cameraIndex]:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/FrontDualFlashAdjust;->mLuminanceAdjustSupportForCamera:[I

    aget p0, p0, v0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " electricValue: "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return p1
.end method


# virtual methods
.method public assignBytesToInt(II)I
    .registers 3

    and-int/lit16 p0, p1, 0xff

    int-to-byte p0, p0

    and-int/lit16 p1, p2, 0xff

    int-to-byte p1, p1

    shl-int/lit8 p1, p1, 0x8

    or-int/2addr p0, p1

    return p0
.end method

.method configParameters(Lcom/transsion/camera/adapter/CameraParameters;)V
    .registers 7

    .line 82
    sget-object v0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/FrontDualFlashAdjust;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mFrontDualFlashSupported: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/FrontDualFlashAdjust;->mFrontDualFlashSupported:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mValueSupportAdjust: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/FrontDualFlashAdjust;->mValueSupportAdjust:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mFlashAutoMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/FrontDualFlashAdjust;->mFlashAutoMode:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 85
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/FrontDualFlashAdjust;->forceSetupElectricValue(Lcom/transsion/camera/adapter/CameraParameters;)V

    .line 87
    iget-object v1, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/FrontDualFlashAdjust;->mLedFlash:Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/LedFlash;

    invoke-virtual {v1}, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/LedFlash;->isSupportLuminanceAdjust()Z

    move-result v1

    const/4 v2, 0x2

    if-nez v1, :cond_5b

    iget-object v1, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/FrontDualFlashAdjust;->mFlashManager:Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;

    invoke-virtual {v1}, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->getFlashFacade()Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "torch"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5b

    .line 88
    const-string v1, "It\'s not support luminance adjust, return"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 89
    invoke-direct {p0, v2}, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/FrontDualFlashAdjust;->levelToElectricValue(I)I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/transsion/camera/adapter/CameraParameters;->setLuminanceValue(I)V

    .line 90
    invoke-virtual {p1, v2}, Lcom/transsion/camera/adapter/CameraParameters;->setFrontDualFlashStrengthMode(I)V

    return-void

    .line 95
    :cond_5b
    iget-boolean v1, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/FrontDualFlashAdjust;->mFlashAutoMode:Z

    if-eqz v1, :cond_7c

    .line 97
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/FrontDualFlashAdjust;->mLedFlash:Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/LedFlash;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/LedFlash;->videoModeType()Z

    move-result p0

    if-eqz p0, :cond_74

    .line 98
    const-string/jumbo p0, "video mode flash auto is not support front dual flash adjust, return"

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 99
    invoke-virtual {p1, v2}, Lcom/transsion/camera/adapter/CameraParameters;->setFrontDualFlashColorTemp(I)V

    .line 100
    invoke-virtual {p1, v2}, Lcom/transsion/camera/adapter/CameraParameters;->setFrontDualFlashStrengthMode(I)V

    return-void

    :cond_74
    const/4 p0, 0x0

    .line 103
    invoke-virtual {p1, p0}, Lcom/transsion/camera/adapter/CameraParameters;->setFrontDualFlashColorTemp(I)V

    .line 104
    invoke-virtual {p1, v2}, Lcom/transsion/camera/adapter/CameraParameters;->setFrontDualFlashStrengthMode(I)V

    return-void

    .line 107
    :cond_7c
    iget-boolean v1, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/FrontDualFlashAdjust;->mValueSupportAdjust:Z

    if-nez v1, :cond_88

    const/4 p0, -0x1

    .line 108
    invoke-virtual {p1, p0}, Lcom/transsion/camera/adapter/CameraParameters;->setFrontDualFlashColorTemp(I)V

    .line 109
    invoke-virtual {p1, p0}, Lcom/transsion/camera/adapter/CameraParameters;->setFrontDualFlashStrengthMode(I)V

    return-void

    .line 112
    :cond_88
    iget-object v1, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/FrontDualFlashAdjust;->mFrontDualFlashInfo:Lcom/transsion/camera/feature/setting/flashfacade/info/FrontDualFlashInfo;

    iget v2, v1, Lcom/transsion/camera/feature/setting/flashfacade/info/FrontDualFlashInfo;->mFrontDualFlashColorTemp:I

    .line 113
    iget v1, v1, Lcom/transsion/camera/feature/setting/flashfacade/info/FrontDualFlashInfo;->mFrontDualFlashStrengthMode:I

    .line 114
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "configParameters mFrontDualFlashTemValue: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", mFrontDualFlashTemLevel: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 116
    invoke-virtual {p1, v2}, Lcom/transsion/camera/adapter/CameraParameters;->setFrontDualFlashColorTemp(I)V

    .line 117
    invoke-virtual {p1, v1}, Lcom/transsion/camera/adapter/CameraParameters;->setFrontDualFlashStrengthMode(I)V

    .line 118
    invoke-direct {p0, v1, v2}, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/FrontDualFlashAdjust;->setThrLuminanceValue(II)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/transsion/camera/adapter/CameraParameters;->setLuminanceValue(I)V

    .line 119
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/FrontDualFlashAdjust;->forceSetupElectricValue(Lcom/transsion/camera/adapter/CameraParameters;)V

    .line 120
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/FrontDualFlashAdjust;->forceSetupDualColor(Lcom/transsion/camera/adapter/CameraParameters;)V

    .line 121
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setFrontDualFlashColorTemp(I)V

    .line 122
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setFrontDualFlashStrengthMode(I)V

    return-void
.end method

.method initFrontDualFlash(Lcom/transsion/camera/adapter/ICameraCapabilities;)V
    .registers 6

    .line 60
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/FrontDualFlashAdjust;->mFrontDualFlashInfo:Lcom/transsion/camera/feature/setting/flashfacade/info/FrontDualFlashInfo;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/flashfacade/info/FrontDualFlashInfo;->reset()V

    .line 61
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/FrontDualFlashAdjust;->mBackCameraThrLevelLuminanceSupport:Z

    if-nez v0, :cond_21

    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/FrontDualFlashAdjust;->mFlashManager:Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->facingFront()Z

    move-result v0

    if-nez v0, :cond_21

    const/4 p1, 0x0

    .line 62
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/FrontDualFlashAdjust;->mFrontDualFlashSupported:Z

    .line 63
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/FrontDualFlashAdjust;->mFrontDualFlashInfo:Lcom/transsion/camera/feature/setting/flashfacade/info/FrontDualFlashInfo;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/feature/setting/flashfacade/info/FrontDualFlashInfo;->updateSupport(Z)V

    .line 64
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/FrontDualFlashAdjust;->mFlashManager:Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/FrontDualFlashAdjust;->mFrontDualFlashInfo:Lcom/transsion/camera/feature/setting/flashfacade/info/FrontDualFlashInfo;

    invoke-virtual {p1, p0}, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->updateFrontDualFlashInfo(Lcom/transsion/camera/feature/setting/flashfacade/info/FrontDualFlashInfo;)V

    return-void

    .line 67
    :cond_21
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/FrontDualFlashAdjust;->mFlashManager:Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->getFlashFacade()Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getISetting()Lcom/transsion/camera/app/common/setting/ISetting;

    move-result-object v0

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISetting;->getDataStore()Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/FrontDualFlashAdjust;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    .line 68
    invoke-interface {p1}, Lcom/transsion/camera/adapter/ICameraCapabilities;->frontDualFlashSupport()Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/FrontDualFlashAdjust;->mFrontDualFlashSupported:Z

    .line 69
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/FrontDualFlashAdjust;->mFrontDualFlashInfo:Lcom/transsion/camera/feature/setting/flashfacade/info/FrontDualFlashInfo;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/feature/setting/flashfacade/info/FrontDualFlashInfo;->updateSupport(Z)V

    .line 70
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/FrontDualFlashAdjust;->mFrontDualFlashInfo:Lcom/transsion/camera/feature/setting/flashfacade/info/FrontDualFlashInfo;

    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/FrontDualFlashAdjust;->mFrontDualFlashSupported:Z

    if-eqz v0, :cond_44

    move-object v0, p1

    goto :goto_46

    :cond_44
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/FrontDualFlashAdjust;->mDefaultFrontDualFlashInfo:Lcom/transsion/camera/feature/setting/flashfacade/info/FrontDualFlashInfo;

    :goto_46
    invoke-virtual {p1, v0}, Lcom/transsion/camera/feature/setting/flashfacade/info/FrontDualFlashInfo;->updateFrontDualFlashInfo(Lcom/transsion/camera/feature/setting/flashfacade/info/FrontDualFlashInfo;)V

    .line 71
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/FrontDualFlashAdjust;->mFlashManager:Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;

    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/FrontDualFlashAdjust;->mFrontDualFlashInfo:Lcom/transsion/camera/feature/setting/flashfacade/info/FrontDualFlashInfo;

    invoke-virtual {p1, v0}, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->updateFrontDualFlashInfo(Lcom/transsion/camera/feature/setting/flashfacade/info/FrontDualFlashInfo;)V

    .line 72
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/FrontDualFlashAdjust;->mLedFlash:Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/LedFlash;

    invoke-virtual {p1}, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/LedFlash;->videoModeType()Z

    move-result p1

    if-eqz p1, :cond_61

    .line 73
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/FrontDualFlashAdjust;->mFlashManager:Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;

    invoke-virtual {p1}, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->getFlashConfig()Lcom/transsion/camera/feature/setting/flashfacade/FlashConfig;

    move-result-object p1

    iget p1, p1, Lcom/transsion/camera/feature/setting/flashfacade/FlashConfig;->mDefaultVideoFrontDualFlashStrengthMode:I

    goto :goto_69

    .line 74
    :cond_61
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/FrontDualFlashAdjust;->mFlashManager:Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;

    invoke-virtual {p1}, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->getFlashConfig()Lcom/transsion/camera/feature/setting/flashfacade/FlashConfig;

    move-result-object p1

    iget p1, p1, Lcom/transsion/camera/feature/setting/flashfacade/FlashConfig;->mDefaultPhotoFrontDualFlashStrengthMode:I

    :goto_69
    iput p1, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/FrontDualFlashAdjust;->mDefaultFlashStrengthMode:I

    .line 75
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/FrontDualFlashAdjust;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/FrontDualFlashAdjust;->getDataStoreScope()Ljava/lang/String;

    move-result-object v1

    const-string v2, "front_dual_flash_color_temp"

    invoke-virtual {p1, v2, v0, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 76
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/FrontDualFlashAdjust;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    iget v1, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/FrontDualFlashAdjust;->mDefaultFlashStrengthMode:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/FrontDualFlashAdjust;->getDataStoreScope()Ljava/lang/String;

    move-result-object v2

    const-string v3, "front_dual_flash_strength_mode"

    invoke-virtual {v0, v3, v1, v2}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 77
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ","

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/FrontDualFlashAdjust;->setValue(Ljava/lang/String;)V

    .line 78
    sget-object p1, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/FrontDualFlashAdjust;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initFrontDualFlash mFrontDualFlashSupported: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/FrontDualFlashAdjust;->mFrontDualFlashSupported:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public restoreToDefault()V
    .registers 3

    .line 191
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/FrontDualFlashAdjust;->mDefaultFrontDualFlashInfo:Lcom/transsion/camera/feature/setting/flashfacade/info/FrontDualFlashInfo;

    iget v1, v1, Lcom/transsion/camera/feature/setting/flashfacade/info/FrontDualFlashInfo;->mFrontDualFlashColorTemp:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/FrontDualFlashAdjust;->mDefaultFrontDualFlashInfo:Lcom/transsion/camera/feature/setting/flashfacade/info/FrontDualFlashInfo;

    iget v1, v1, Lcom/transsion/camera/feature/setting/flashfacade/info/FrontDualFlashInfo;->mFrontDualFlashStrengthMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/FrontDualFlashAdjust;->setValue(Ljava/lang/String;)V

    return-void
.end method

.method public setFlashAutoMode(Z)V
    .registers 2

    .line 215
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/FrontDualFlashAdjust;->mFlashAutoMode:Z

    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .registers 6

    .line 196
    sget-object v0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/FrontDualFlashAdjust;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setValue value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 197
    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 198
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/FrontDualFlashAdjust;->mFrontDualFlashInfo:Lcom/transsion/camera/feature/setting/flashfacade/info/FrontDualFlashInfo;

    const/4 v1, 0x0

    aget-object v2, p1, v1

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/transsion/camera/feature/setting/flashfacade/info/FrontDualFlashInfo;->mFrontDualFlashColorTemp:I

    .line 199
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/FrontDualFlashAdjust;->mFrontDualFlashInfo:Lcom/transsion/camera/feature/setting/flashfacade/info/FrontDualFlashInfo;

    const/4 v2, 0x1

    aget-object p1, p1, v2

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, v0, Lcom/transsion/camera/feature/setting/flashfacade/info/FrontDualFlashInfo;->mFrontDualFlashStrengthMode:I

    .line 201
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/FrontDualFlashAdjust;->mFrontDualFlashInfo:Lcom/transsion/camera/feature/setting/flashfacade/info/FrontDualFlashInfo;

    invoke-virtual {p1, p1}, Lcom/transsion/camera/feature/setting/flashfacade/info/FrontDualFlashInfo;->updateFrontDualFlashInfo(Lcom/transsion/camera/feature/setting/flashfacade/info/FrontDualFlashInfo;)V

    .line 202
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/FrontDualFlashAdjust;->mFlashManager:Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;

    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/FrontDualFlashAdjust;->mFrontDualFlashInfo:Lcom/transsion/camera/feature/setting/flashfacade/info/FrontDualFlashInfo;

    invoke-virtual {p1, v0}, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->updateFrontDualFlashInfo(Lcom/transsion/camera/feature/setting/flashfacade/info/FrontDualFlashInfo;)V

    .line 204
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/FrontDualFlashAdjust;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    if-eqz p1, :cond_73

    .line 205
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/FrontDualFlashAdjust;->mFrontDualFlashInfo:Lcom/transsion/camera/feature/setting/flashfacade/info/FrontDualFlashInfo;

    iget v2, v2, Lcom/transsion/camera/feature/setting/flashfacade/info/FrontDualFlashInfo;->mFrontDualFlashColorTemp:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/FrontDualFlashAdjust;->getDataStoreScope()Ljava/lang/String;

    move-result-object v2

    const-string v3, "front_dual_flash_color_temp"

    invoke-virtual {p1, v3, v0, v2, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 206
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/FrontDualFlashAdjust;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/FrontDualFlashAdjust;->mFrontDualFlashInfo:Lcom/transsion/camera/feature/setting/flashfacade/info/FrontDualFlashInfo;

    iget v0, v0, Lcom/transsion/camera/feature/setting/flashfacade/info/FrontDualFlashInfo;->mFrontDualFlashStrengthMode:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/FrontDualFlashAdjust;->getDataStoreScope()Ljava/lang/String;

    move-result-object p0

    const-string v2, "front_dual_flash_strength_mode"

    invoke-virtual {p1, v2, v0, p0, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_73
    return-void
.end method

.method public valueSupportAdjust(Z)V
    .registers 2

    .line 211
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/FrontDualFlashAdjust;->mValueSupportAdjust:Z

    return-void
.end method
