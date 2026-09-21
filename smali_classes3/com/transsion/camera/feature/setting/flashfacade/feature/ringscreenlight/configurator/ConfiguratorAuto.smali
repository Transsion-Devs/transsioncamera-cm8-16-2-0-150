.class public Lcom/transsion/camera/feature/setting/flashfacade/feature/ringscreenlight/configurator/ConfiguratorAuto;
.super Lcom/transsion/camera/feature/setting/flashfacade/feature/ringscreenlight/BaseRingScreenFlashConfigurator;
.source "SourceFile"


# static fields
.field private static final PAUSE_OFF_DELAY_TIME:J = 0x12cL

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private final mMainHandler:Landroid/os/Handler;

.field private final mPauseOffTask:Ljava/lang/Runnable;


# direct methods
.method public static synthetic $r8$lambda$tHI3FcmJNyg3VlkJPf2zvk8GjcQ(Lcom/transsion/camera/feature/setting/flashfacade/feature/ringscreenlight/configurator/ConfiguratorAuto;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/flashfacade/feature/ringscreenlight/configurator/ConfiguratorAuto;->lambda$new$0()V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 30
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "ConfiguratorAuto"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ringscreenlight/configurator/ConfiguratorAuto;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/transsion/camera/feature/setting/flashfacade/feature/ringscreenlight/RingScreenLight;)V
    .registers 3

    .line 40
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/flashfacade/feature/ringscreenlight/BaseRingScreenFlashConfigurator;-><init>(Lcom/transsion/camera/feature/setting/flashfacade/feature/ringscreenlight/RingScreenLight;)V

    .line 36
    new-instance p1, Lcom/transsion/camera/feature/setting/flashfacade/feature/ringscreenlight/configurator/ConfiguratorAuto$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/transsion/camera/feature/setting/flashfacade/feature/ringscreenlight/configurator/ConfiguratorAuto$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/feature/setting/flashfacade/feature/ringscreenlight/configurator/ConfiguratorAuto;)V

    iput-object p1, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ringscreenlight/configurator/ConfiguratorAuto;->mPauseOffTask:Ljava/lang/Runnable;

    .line 41
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ringscreenlight/configurator/ConfiguratorAuto;->mMainHandler:Landroid/os/Handler;

    return-void
.end method

.method private synthetic lambda$new$0()V
    .registers 2

    .line 37
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseConfigurator;->mFlashFeature:Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;

    check-cast p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ringscreenlight/RingScreenLight;

    const-string v0, "off"

    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;->setValue(Ljava/lang/String;)V

    return-void
.end method

.method private lowLightDetected()Z
    .registers 2

    .line 68
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseConfigurator;->featureSupport()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 69
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseConfigurator;->forceLowLight()Z

    move-result v0

    if-nez v0, :cond_12

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseConfigurator;->lowLight()Z

    move-result v0

    if-nez v0, :cond_1e

    .line 70
    :cond_12
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseConfigurator;->forceLowLight()Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseConfigurator;->forceLowLightState()Z

    move-result p0

    if-eqz p0, :cond_20

    :cond_1e
    const/4 p0, 0x1

    return p0

    :cond_20
    const/4 p0, 0x0

    return p0
.end method

.method private updateValue()V
    .registers 2

    .line 60
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/flashfacade/feature/ringscreenlight/configurator/ConfiguratorAuto;->lowLightDetected()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 61
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseConfigurator;->mFlashFeature:Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;

    check-cast p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ringscreenlight/RingScreenLight;

    const-string v0, "on"

    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;->setValue(Ljava/lang/String;)V

    return-void

    .line 63
    :cond_10
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseConfigurator;->mFlashFeature:Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;

    check-cast p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ringscreenlight/RingScreenLight;

    const-string v0, "off"

    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;->setValue(Ljava/lang/String;)V

    return-void
.end method

.method private updateValueImmediately()Z
    .registers 2

    .line 74
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseConfigurator;->mFlashFeature:Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;

    check-cast v0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ringscreenlight/RingScreenLight;

    .line 75
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/flashfacade/feature/ringscreenlight/configurator/ConfiguratorAuto;->lowLightDetected()Z

    move-result p0

    if-eqz p0, :cond_d

    .line 76
    const-string p0, "on"

    goto :goto_f

    .line 77
    :cond_d
    const-string p0, "off"

    .line 74
    :goto_f
    invoke-virtual {v0, p0}, Lcom/transsion/camera/feature/setting/flashfacade/feature/ringscreenlight/RingScreenLight;->updateValueImmediately(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public onBrightnessDetected(Z)Lcom/transsion/camera/feature/setting/flashfacade/info/RequestType;
    .registers 3

    .line 82
    invoke-super {p0, p1}, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseConfigurator;->onBrightnessDetected(Z)Lcom/transsion/camera/feature/setting/flashfacade/info/RequestType;

    .line 83
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseConfigurator;->capturing()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_b

    return-object v0

    .line 84
    :cond_b
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseConfigurator;->shutterGuideLayoutShow()Z

    move-result p1

    if-eqz p1, :cond_18

    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isVideoFlashlightSupportWhenRecording()Z

    move-result p1

    if-nez p1, :cond_18

    return-object v0

    .line 87
    :cond_18
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseConfigurator;->recording()Z

    move-result p1

    if-eqz p1, :cond_25

    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isVideoFlashlightSupportWhenRecording()Z

    move-result p1

    if-nez p1, :cond_25

    return-object v0

    .line 88
    :cond_25
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/flashfacade/feature/ringscreenlight/configurator/ConfiguratorAuto;->updateValue()V

    return-object v0
.end method

.method public onBrightnessReset()Lcom/transsion/camera/feature/setting/flashfacade/info/RequestType;
    .registers 2

    .line 94
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseConfigurator;->mFlashFeature:Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;

    check-cast v0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ringscreenlight/RingScreenLight;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/flashfacade/feature/ringscreenlight/RingScreenLight;->resetValue()V

    .line 95
    invoke-super {p0}, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseConfigurator;->onBrightnessReset()Lcom/transsion/camera/feature/setting/flashfacade/info/RequestType;

    move-result-object p0

    return-object p0
.end method

.method public onCaptureStart()Lcom/transsion/camera/feature/setting/flashfacade/info/RequestType;
    .registers 2

    .line 100
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/flashfacade/feature/ringscreenlight/configurator/ConfiguratorAuto;->updateValueImmediately()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 101
    invoke-static {}, Lcom/transsion/camera/feature/setting/flashfacade/info/RequestType;->obtain()Lcom/transsion/camera/feature/setting/flashfacade/info/RequestType;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/setting/flashfacade/info/RequestType;->configSelf(Z)Lcom/transsion/camera/feature/setting/flashfacade/info/RequestType;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/setting/flashfacade/info/RequestType;->sync(Z)Lcom/transsion/camera/feature/setting/flashfacade/info/RequestType;

    move-result-object p0

    return-object p0

    .line 103
    :cond_14
    invoke-super {p0}, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseConfigurator;->onCaptureStart()Lcom/transsion/camera/feature/setting/flashfacade/info/RequestType;

    move-result-object p0

    return-object p0
.end method

.method public onEntry(Lcom/transsion/camera/feature/setting/flashfacade/values/IFlashValue;)V
    .registers 3

    .line 46
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/flashfacade/feature/ringscreenlight/configurator/ConfiguratorAuto;->updateValue()V

    .line 47
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ringscreenlight/configurator/ConfiguratorAuto;->mMainHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ringscreenlight/configurator/ConfiguratorAuto;->mPauseOffTask:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result p1

    if-eqz p1, :cond_16

    .line 48
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseConfigurator;->mFlashFeature:Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;

    check-cast p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ringscreenlight/RingScreenLight;

    const-string p1, "off"

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;->setValue(Ljava/lang/String;)V

    :cond_16
    return-void
.end method

.method public onNextReady()Lcom/transsion/camera/feature/setting/flashfacade/info/RequestType;
    .registers 1

    .line 108
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/flashfacade/feature/ringscreenlight/configurator/ConfiguratorAuto;->updateValue()V

    .line 109
    invoke-super {p0}, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseConfigurator;->onNextReady()Lcom/transsion/camera/feature/setting/flashfacade/info/RequestType;

    move-result-object p0

    return-object p0
.end method

.method public onRecordEnd()Lcom/transsion/camera/feature/setting/flashfacade/info/RequestType;
    .registers 1

    .line 114
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/flashfacade/feature/ringscreenlight/configurator/ConfiguratorAuto;->updateValue()V

    .line 115
    invoke-super {p0}, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseConfigurator;->onRecordEnd()Lcom/transsion/camera/feature/setting/flashfacade/info/RequestType;

    move-result-object p0

    return-object p0
.end method

.method protected pause()V
    .registers 4

    .line 54
    invoke-super {p0}, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseConfigurator;->pause()V

    .line 55
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ringscreenlight/configurator/ConfiguratorAuto;->mMainHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ringscreenlight/configurator/ConfiguratorAuto;->mPauseOffTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 56
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ringscreenlight/configurator/ConfiguratorAuto;->mMainHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ringscreenlight/configurator/ConfiguratorAuto;->mPauseOffTask:Ljava/lang/Runnable;

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
