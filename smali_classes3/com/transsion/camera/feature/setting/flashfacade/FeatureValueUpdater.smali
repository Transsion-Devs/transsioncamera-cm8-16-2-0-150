.class Lcom/transsion/camera/feature/setting/flashfacade/FeatureValueUpdater;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final mFeatureManager:Lcom/transsion/camera/feature/setting/flashfacade/FlashFeatureManager;

.field private final mFlashManager:Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;Lcom/transsion/camera/feature/setting/flashfacade/FlashFeatureManager;)V
    .registers 3

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/flashfacade/FeatureValueUpdater;->mFlashManager:Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;

    .line 25
    iput-object p2, p0, Lcom/transsion/camera/feature/setting/flashfacade/FeatureValueUpdater;->mFeatureManager:Lcom/transsion/camera/feature/setting/flashfacade/FlashFeatureManager;

    return-void
.end method

.method private sendRequest(Lcom/transsion/camera/feature/setting/flashfacade/info/RequestType;)V
    .registers 3

    .line 71
    invoke-virtual {p1}, Lcom/transsion/camera/feature/setting/flashfacade/info/RequestType;->command()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 72
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FeatureValueUpdater;->mFlashManager:Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->sendCommandChangeRequest()V

    .line 74
    :cond_b
    invoke-virtual {p1}, Lcom/transsion/camera/feature/setting/flashfacade/info/RequestType;->sync()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 75
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FeatureValueUpdater;->mFlashManager:Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->sendSettingChangeRequestSync()V

    goto :goto_2e

    .line 77
    :cond_17
    invoke-virtual {p1}, Lcom/transsion/camera/feature/setting/flashfacade/info/RequestType;->configAll()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 78
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FeatureValueUpdater;->mFlashManager:Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->sendSettingChangeRequest()V

    goto :goto_2e

    .line 79
    :cond_23
    invoke-virtual {p1}, Lcom/transsion/camera/feature/setting/flashfacade/info/RequestType;->configSelf()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 80
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FeatureValueUpdater;->mFlashManager:Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->sendSettingChangeRequestSelf()V

    .line 83
    :cond_2e
    :goto_2e
    invoke-virtual {p1}, Lcom/transsion/camera/feature/setting/flashfacade/info/RequestType;->recycle()V

    return-void
.end method


# virtual methods
.method brightnessDetected(Z)V
    .registers 3

    .line 61
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FeatureValueUpdater;->mFeatureManager:Lcom/transsion/camera/feature/setting/flashfacade/FlashFeatureManager;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/feature/setting/flashfacade/FlashFeatureManager;->brightnessDetected(Z)Lcom/transsion/camera/feature/setting/flashfacade/info/RequestType;

    move-result-object p1

    .line 62
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/flashfacade/FeatureValueUpdater;->sendRequest(Lcom/transsion/camera/feature/setting/flashfacade/info/RequestType;)V

    return-void
.end method

.method captureStart()V
    .registers 2

    .line 41
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FeatureValueUpdater;->mFeatureManager:Lcom/transsion/camera/feature/setting/flashfacade/FlashFeatureManager;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/flashfacade/FlashFeatureManager;->captureStart()Lcom/transsion/camera/feature/setting/flashfacade/info/RequestType;

    move-result-object v0

    .line 42
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/setting/flashfacade/FeatureValueUpdater;->sendRequest(Lcom/transsion/camera/feature/setting/flashfacade/info/RequestType;)V

    return-void
.end method

.method nextCaptureReady()V
    .registers 2

    .line 46
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FeatureValueUpdater;->mFeatureManager:Lcom/transsion/camera/feature/setting/flashfacade/FlashFeatureManager;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/flashfacade/FlashFeatureManager;->nextCaptureReady()Lcom/transsion/camera/feature/setting/flashfacade/info/RequestType;

    move-result-object v0

    .line 47
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/setting/flashfacade/FeatureValueUpdater;->sendRequest(Lcom/transsion/camera/feature/setting/flashfacade/info/RequestType;)V

    return-void
.end method

.method public onShutterGuideHide()V
    .registers 2

    .line 97
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FeatureValueUpdater;->mFeatureManager:Lcom/transsion/camera/feature/setting/flashfacade/FlashFeatureManager;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/flashfacade/FlashFeatureManager;->onShutterGuideHide()Lcom/transsion/camera/feature/setting/flashfacade/info/RequestType;

    move-result-object v0

    .line 98
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/setting/flashfacade/FeatureValueUpdater;->sendRequest(Lcom/transsion/camera/feature/setting/flashfacade/info/RequestType;)V

    return-void
.end method

.method public onShutterGuideShow()V
    .registers 2

    .line 92
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FeatureValueUpdater;->mFeatureManager:Lcom/transsion/camera/feature/setting/flashfacade/FlashFeatureManager;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/flashfacade/FlashFeatureManager;->onShutterGuideShow()Lcom/transsion/camera/feature/setting/flashfacade/info/RequestType;

    move-result-object v0

    .line 93
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/setting/flashfacade/FeatureValueUpdater;->sendRequest(Lcom/transsion/camera/feature/setting/flashfacade/info/RequestType;)V

    return-void
.end method

.method recordEnd()V
    .registers 2

    .line 56
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FeatureValueUpdater;->mFeatureManager:Lcom/transsion/camera/feature/setting/flashfacade/FlashFeatureManager;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/flashfacade/FlashFeatureManager;->recordEnd()Lcom/transsion/camera/feature/setting/flashfacade/info/RequestType;

    move-result-object v0

    .line 57
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/setting/flashfacade/FeatureValueUpdater;->sendRequest(Lcom/transsion/camera/feature/setting/flashfacade/info/RequestType;)V

    return-void
.end method

.method recordStart()V
    .registers 2

    .line 51
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FeatureValueUpdater;->mFeatureManager:Lcom/transsion/camera/feature/setting/flashfacade/FlashFeatureManager;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/flashfacade/FlashFeatureManager;->recordStart()Lcom/transsion/camera/feature/setting/flashfacade/info/RequestType;

    move-result-object v0

    .line 52
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/setting/flashfacade/FeatureValueUpdater;->sendRequest(Lcom/transsion/camera/feature/setting/flashfacade/info/RequestType;)V

    return-void
.end method

.method resetBrightness()V
    .registers 2

    .line 66
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FeatureValueUpdater;->mFeatureManager:Lcom/transsion/camera/feature/setting/flashfacade/FlashFeatureManager;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/flashfacade/FlashFeatureManager;->resetBrightness()Lcom/transsion/camera/feature/setting/flashfacade/info/RequestType;

    move-result-object v0

    .line 67
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/setting/flashfacade/FeatureValueUpdater;->sendRequest(Lcom/transsion/camera/feature/setting/flashfacade/info/RequestType;)V

    return-void
.end method

.method updateFacadeValue(Lcom/transsion/camera/feature/setting/flashfacade/values/IFlashValue;Z)V
    .registers 4

    .line 29
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FeatureValueUpdater;->mFeatureManager:Lcom/transsion/camera/feature/setting/flashfacade/FlashFeatureManager;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/feature/setting/flashfacade/FlashFeatureManager;->updateFacadeValue(Lcom/transsion/camera/feature/setting/flashfacade/values/IFlashValue;)Lcom/transsion/camera/feature/setting/flashfacade/info/RequestType;

    move-result-object p1

    if-eqz p2, :cond_b

    .line 31
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/flashfacade/FeatureValueUpdater;->sendRequest(Lcom/transsion/camera/feature/setting/flashfacade/info/RequestType;)V

    :cond_b
    return-void
.end method

.method public updateFrontDualFlashValue(Ljava/lang/String;)V
    .registers 3

    .line 87
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FeatureValueUpdater;->mFeatureManager:Lcom/transsion/camera/feature/setting/flashfacade/FlashFeatureManager;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/feature/setting/flashfacade/FlashFeatureManager;->updateFrontDualFlashValue(Ljava/lang/String;)Lcom/transsion/camera/feature/setting/flashfacade/info/RequestType;

    move-result-object p1

    .line 88
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/flashfacade/FeatureValueUpdater;->sendRequest(Lcom/transsion/camera/feature/setting/flashfacade/info/RequestType;)V

    return-void
.end method

.method updateLuminanceValue(I)V
    .registers 3

    .line 36
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FeatureValueUpdater;->mFeatureManager:Lcom/transsion/camera/feature/setting/flashfacade/FlashFeatureManager;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/feature/setting/flashfacade/FlashFeatureManager;->updateLuminanceValue(I)Lcom/transsion/camera/feature/setting/flashfacade/info/RequestType;

    move-result-object p1

    .line 37
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/flashfacade/FeatureValueUpdater;->sendRequest(Lcom/transsion/camera/feature/setting/flashfacade/info/RequestType;)V

    return-void
.end method
