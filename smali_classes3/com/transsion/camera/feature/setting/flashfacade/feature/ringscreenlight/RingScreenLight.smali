.class public Lcom/transsion/camera/feature/setting/flashfacade/feature/ringscreenlight/RingScreenLight;
.super Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/setting/flashfacade/feature/ringscreenlight/RingScreenLight$MainHandler;
    }
.end annotation


# static fields
.field private static final MESSAGE_UPDATE_VALUE:I = 0x1

.field public static final SETTING_KEY:Ljava/lang/String; = "key_ring_screen_light"

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

.field private static final UPDATE_VALUE_DELAYED_TIME:J = 0x64L


# instance fields
.field private final mBrightnessController:Lcom/transsion/camera/feature/setting/flashfacade/feature/ringscreenlight/ScreenBrightnessController;

.field private mDelayValue:Ljava/lang/String;

.field private mIsUiRegisterCompleted:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mMainHandler:Landroid/os/Handler;

.field private mOnRegisterCompleteListener:Lcom/transsion/camera/app/common/ModuleTransferManager$OnRegisterCompleteListener;

.field private mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

.field private mSuperNightShutterProcessing:Z


# direct methods
.method static bridge synthetic -$$Nest$fgetmDelayValue(Lcom/transsion/camera/feature/setting/flashfacade/feature/ringscreenlight/RingScreenLight;)Ljava/lang/String;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ringscreenlight/RingScreenLight;->mDelayValue:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsUiRegisterCompleted(Lcom/transsion/camera/feature/setting/flashfacade/feature/ringscreenlight/RingScreenLight;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ringscreenlight/RingScreenLight;->mIsUiRegisterCompleted:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmMainHandler(Lcom/transsion/camera/feature/setting/flashfacade/feature/ringscreenlight/RingScreenLight;)Landroid/os/Handler;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ringscreenlight/RingScreenLight;->mMainHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmDelayValue(Lcom/transsion/camera/feature/setting/flashfacade/feature/ringscreenlight/RingScreenLight;Ljava/lang/String;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ringscreenlight/RingScreenLight;->mDelayValue:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmSuperNightShutterProcessing(Lcom/transsion/camera/feature/setting/flashfacade/feature/ringscreenlight/RingScreenLight;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ringscreenlight/RingScreenLight;->mSuperNightShutterProcessing:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleUpdateValue(Lcom/transsion/camera/feature/setting/flashfacade/feature/ringscreenlight/RingScreenLight;Ljava/lang/String;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/flashfacade/feature/ringscreenlight/RingScreenLight;->handleUpdateValue(Ljava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 45
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "RingScreenLight"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ringscreenlight/RingScreenLight;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;)V
    .registers 3

    .line 84
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;-><init>(Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;)V

    .line 54
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ringscreenlight/RingScreenLight;->mIsUiRegisterCompleted:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 59
    new-instance p1, Lcom/transsion/camera/feature/setting/flashfacade/feature/ringscreenlight/RingScreenLight$MainHandler;

    invoke-direct {p1, p0}, Lcom/transsion/camera/feature/setting/flashfacade/feature/ringscreenlight/RingScreenLight$MainHandler;-><init>(Lcom/transsion/camera/feature/setting/flashfacade/feature/ringscreenlight/RingScreenLight;)V

    iput-object p1, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ringscreenlight/RingScreenLight;->mMainHandler:Landroid/os/Handler;

    .line 144
    new-instance p1, Lcom/transsion/camera/feature/setting/flashfacade/feature/ringscreenlight/RingScreenLight$1;

    invoke-direct {p1, p0}, Lcom/transsion/camera/feature/setting/flashfacade/feature/ringscreenlight/RingScreenLight$1;-><init>(Lcom/transsion/camera/feature/setting/flashfacade/feature/ringscreenlight/RingScreenLight;)V

    iput-object p1, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ringscreenlight/RingScreenLight;->mOnRegisterCompleteListener:Lcom/transsion/camera/app/common/ModuleTransferManager$OnRegisterCompleteListener;

    .line 211
    new-instance p1, Lcom/transsion/camera/feature/setting/flashfacade/feature/ringscreenlight/RingScreenLight$2;

    invoke-direct {p1, p0}, Lcom/transsion/camera/feature/setting/flashfacade/feature/ringscreenlight/RingScreenLight$2;-><init>(Lcom/transsion/camera/feature/setting/flashfacade/feature/ringscreenlight/RingScreenLight;)V

    iput-object p1, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ringscreenlight/RingScreenLight;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    .line 85
    new-instance p1, Lcom/transsion/camera/feature/setting/flashfacade/feature/ringscreenlight/ScreenBrightnessController;

    invoke-direct {p1}, Lcom/transsion/camera/feature/setting/flashfacade/feature/ringscreenlight/ScreenBrightnessController;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ringscreenlight/RingScreenLight;->mBrightnessController:Lcom/transsion/camera/feature/setting/flashfacade/feature/ringscreenlight/ScreenBrightnessController;

    return-void
.end method

.method private brightenScreen(Ljava/lang/String;)V
    .registers 3

    .line 250
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ringscreenlight/RingScreenLight;->mBrightnessController:Lcom/transsion/camera/feature/setting/flashfacade/feature/ringscreenlight/ScreenBrightnessController;

    const-string v0, "on"

    .line 251
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    .line 250
    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/setting/flashfacade/feature/ringscreenlight/ScreenBrightnessController;->brightenScreen(Z)V

    return-void
.end method

.method private handleUpdateValue(Ljava/lang/String;)V
    .registers 5

    .line 229
    sget-object v0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ringscreenlight/RingScreenLight;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleUpdateValue value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " mSuperNightShutterProcessing = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ringscreenlight/RingScreenLight;->mSuperNightShutterProcessing:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 230
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ringscreenlight/RingScreenLight;->mSuperNightShutterProcessing:Z

    if-eqz v0, :cond_25

    return-void

    .line 233
    :cond_25
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/flashfacade/feature/ringscreenlight/RingScreenLight;->updateUI(Ljava/lang/String;)V

    .line 234
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/flashfacade/feature/ringscreenlight/RingScreenLight;->brightenScreen(Ljava/lang/String;)V

    .line 235
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;->mFlashManager:Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->sendSettingChangeRequestSelf()V

    return-void
.end method

.method private initRingScreenLight()V
    .registers 3

    .line 266
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;->featureSupport()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 267
    invoke-static {}, Lcom/transsion/camera/app/common/ModuleTransferManager;->getTransferManager()Lcom/transsion/camera/app/common/ModuleTransferManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ModuleTransferManager;->restart()V

    .line 269
    :cond_d
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;->mSupportedValues:Ljava/util/List;

    iget-object v1, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;->mValue:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    .line 270
    const-string v0, "off"

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;->mValue:Ljava/lang/String;

    .line 272
    :cond_1b
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;->mValue:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/setting/flashfacade/feature/ringscreenlight/RingScreenLight;->updateValue(Ljava/lang/String;)V

    return-void
.end method

.method private updateUI(Ljava/lang/String;)V
    .registers 3

    .line 239
    const-string p0, "on"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 240
    invoke-static {}, Lcom/transsion/camera/utils/aal/AalUtil;->turnOffAal()V

    goto :goto_f

    .line 242
    :cond_c
    invoke-static {}, Lcom/transsion/camera/utils/aal/AalUtil;->turnOnAal()V

    .line 245
    :goto_f
    invoke-static {}, Lcom/transsion/camera/app/common/ModuleTransferManager;->getTransferManager()Lcom/transsion/camera/app/common/ModuleTransferManager;

    move-result-object v0

    .line 246
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    invoke-virtual {v0, p0}, Lcom/transsion/camera/app/common/ModuleTransferManager;->onRingScreenLightChange(Z)V

    return-void
.end method

.method private updateValue(Ljava/lang/String;)V
    .registers 4

    .line 201
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ringscreenlight/RingScreenLight;->mMainHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 203
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ringscreenlight/RingScreenLight;->mIsUiRegisterCompleted:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 204
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ringscreenlight/RingScreenLight;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 205
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ringscreenlight/RingScreenLight;->mMainHandler:Landroid/os/Handler;

    const-wide/16 v0, 0x64

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void

    .line 207
    :cond_1c
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ringscreenlight/RingScreenLight;->mDelayValue:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public configParameters(Lcom/transsion/camera/adapter/CameraParameters;)I
    .registers 5

    .line 277
    sget-object v0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ringscreenlight/RingScreenLight;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "configParameters mValue: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;->mValue:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 278
    iget-object v1, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;->mValue:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/transsion/camera/adapter/CameraParameters;->setRingScreenLight(Ljava/lang/String;)V

    .line 279
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;->isAeLockTriggered()Z

    move-result p0

    const/4 p1, 0x0

    if-eqz p0, :cond_29

    .line 280
    const-string p0, "Locked or unlocked AE."

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :cond_29
    return p1
.end method

.method protected bridge synthetic createConfiguratorManager()Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseConfiguratorManager;
    .registers 1

    .line 43
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/flashfacade/feature/ringscreenlight/RingScreenLight;->createConfiguratorManager()Lcom/transsion/camera/feature/setting/flashfacade/feature/ringscreenlight/RingScreenLightConfiguratorManager;

    move-result-object p0

    return-object p0
.end method

.method protected createConfiguratorManager()Lcom/transsion/camera/feature/setting/flashfacade/feature/ringscreenlight/RingScreenLightConfiguratorManager;
    .registers 2

    .line 91
    new-instance v0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ringscreenlight/RingScreenLightConfiguratorManager;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/setting/flashfacade/feature/ringscreenlight/RingScreenLightConfiguratorManager;-><init>(Lcom/transsion/camera/feature/setting/flashfacade/feature/ringscreenlight/RingScreenLight;)V

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .registers 1

    .line 118
    const-string p0, "key_ring_screen_light"

    return-object p0
.end method

.method public getSettingType()Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;
    .registers 1

    .line 113
    sget-object p0, Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;->PHOTO_AND_VIDEO:Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;

    return-object p0
.end method

.method public init(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)V
    .registers 3

    .line 96
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;->init(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)V

    .line 97
    iget-object p2, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ringscreenlight/RingScreenLight;->mBrightnessController:Lcom/transsion/camera/feature/setting/flashfacade/feature/ringscreenlight/ScreenBrightnessController;

    invoke-virtual {p2, p1}, Lcom/transsion/camera/feature/setting/flashfacade/feature/ringscreenlight/ScreenBrightnessController;->init(Landroid/content/Context;)V

    .line 98
    invoke-static {}, Lcom/transsion/camera/app/common/ModuleTransferManager;->getTransferManager()Lcom/transsion/camera/app/common/ModuleTransferManager;

    move-result-object p1

    iget-object p2, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ringscreenlight/RingScreenLight;->mOnRegisterCompleteListener:Lcom/transsion/camera/app/common/ModuleTransferManager$OnRegisterCompleteListener;

    invoke-virtual {p1, p2}, Lcom/transsion/camera/app/common/ModuleTransferManager;->registerCompleteListener(Lcom/transsion/camera/app/common/ModuleTransferManager$OnRegisterCompleteListener;)V

    .line 99
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string p2, "key_shutter_state_action"

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ringscreenlight/RingScreenLight;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {p1, p2, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    return-void
.end method

.method protected onValueChanged(Ljava/lang/String;)V
    .registers 2

    .line 137
    invoke-super {p0, p1}, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;->onValueChanged(Ljava/lang/String;)V

    .line 138
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/flashfacade/feature/ringscreenlight/RingScreenLight;->updateValue(Ljava/lang/String;)V

    return-void
.end method

.method public pause()V
    .registers 2

    .line 129
    invoke-super {p0}, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;->pause()V

    .line 130
    const-string v0, "off"

    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/setting/flashfacade/feature/ringscreenlight/RingScreenLight;->brightenScreen(Ljava/lang/String;)V

    .line 132
    invoke-static {}, Lcom/transsion/camera/utils/aal/AalUtil;->turnOnAalForPause()V

    return-void
.end method

.method public resetValue()V
    .registers 4

    .line 177
    sget-object v0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ringscreenlight/RingScreenLight;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "resetValue"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 178
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;->mValue:Ljava/lang/String;

    const-string v1, "off"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_12

    return-void

    .line 181
    :cond_12
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    if-ne v0, v2, :cond_2a

    .line 182
    iput-object v1, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;->mValue:Ljava/lang/String;

    .line 183
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ringscreenlight/RingScreenLight;->mMainHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 184
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;->mValue:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/setting/flashfacade/feature/ringscreenlight/RingScreenLight;->handleUpdateValue(Ljava/lang/String;)V

    return-void

    .line 186
    :cond_2a
    invoke-virtual {p0, v1}, Lcom/transsion/camera/feature/setting/flashfacade/feature/ringscreenlight/RingScreenLight;->updateValueImmediately(Ljava/lang/String;)Z

    return-void
.end method

.method public resume()V
    .registers 2

    .line 123
    invoke-super {p0}, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;->resume()V

    .line 124
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/setting/flashfacade/feature/ringscreenlight/RingScreenLight;->brightenScreen(Ljava/lang/String;)V

    return-void
.end method

.method public setCameraCapabilities(Lcom/transsion/camera/adapter/ICameraCapabilities;)V
    .registers 3

    .line 256
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;->mSupportedValues:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 257
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;->mSupportedValues:Ljava/util/List;

    const-string v0, "off"

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 258
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;->facingFront()Z

    move-result p1

    if-eqz p1, :cond_37

    iget-object p1, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;->mFlashConfig:Lcom/transsion/camera/feature/setting/flashfacade/FlashConfig;

    iget-boolean p1, p1, Lcom/transsion/camera/feature/setting/flashfacade/FlashConfig;->mRingScreenLightSupport:Z

    if-eqz p1, :cond_37

    const-string p1, "com.transsion.camera.feature.mode.video.DVVideoModeEntry"

    .line 259
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;->getModeKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_37

    const-string p1, "com.transsion.camera.feature.mode.aiartmuseum.AIArtMuseumModeEntry"

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;->getModeKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_37

    .line 260
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;->mSupportedValues:Ljava/util/List;

    const-string v0, "on"

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 262
    :cond_37
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/flashfacade/feature/ringscreenlight/RingScreenLight;->initRingScreenLight()V

    return-void
.end method

.method public unInit()V
    .registers 4

    .line 104
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v1, "key_shutter_state_action"

    iget-object v2, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ringscreenlight/RingScreenLight;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 105
    invoke-super {p0}, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;->unInit()V

    .line 106
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ringscreenlight/RingScreenLight;->mBrightnessController:Lcom/transsion/camera/feature/setting/flashfacade/feature/ringscreenlight/ScreenBrightnessController;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/flashfacade/feature/ringscreenlight/ScreenBrightnessController;->unInit()V

    const/4 v0, 0x0

    .line 107
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ringscreenlight/RingScreenLight;->mSuperNightShutterProcessing:Z

    .line 108
    invoke-static {}, Lcom/transsion/camera/app/common/ModuleTransferManager;->getTransferManager()Lcom/transsion/camera/app/common/ModuleTransferManager;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ringscreenlight/RingScreenLight;->mOnRegisterCompleteListener:Lcom/transsion/camera/app/common/ModuleTransferManager$OnRegisterCompleteListener;

    invoke-virtual {v0, p0}, Lcom/transsion/camera/app/common/ModuleTransferManager;->unregisterCompleteListener(Lcom/transsion/camera/app/common/ModuleTransferManager$OnRegisterCompleteListener;)V

    return-void
.end method

.method public updateValueImmediately(Ljava/lang/String;)Z
    .registers 4

    .line 157
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;->mSupportedValues:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return v1

    .line 160
    :cond_a
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;->mValue:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_13

    return v1

    .line 164
    :cond_13
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;->mValue:Ljava/lang/String;

    .line 165
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ringscreenlight/RingScreenLight;->mMainHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 167
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ringscreenlight/RingScreenLight;->mIsUiRegisterCompleted:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 168
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ringscreenlight/RingScreenLight;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_2f

    .line 170
    :cond_2d
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ringscreenlight/RingScreenLight;->mDelayValue:Ljava/lang/String;

    :goto_2f
    return v1
.end method
