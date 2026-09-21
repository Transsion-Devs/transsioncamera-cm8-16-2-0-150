.class public Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseConfigurator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/feature/setting/flashfacade/feature/IConfigurator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<F:",
        "Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/transsion/camera/feature/setting/flashfacade/feature/IConfigurator<",
        "TF;>;"
    }
.end annotation


# instance fields
.field protected final mFlashFeature:Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TF;"
        }
    .end annotation
.end field

.field private mValueSupportFeature:Z


# direct methods
.method public constructor <init>(Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;)V"
        }
    .end annotation

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseConfigurator;->mFlashFeature:Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;

    return-void
.end method


# virtual methods
.method protected capturing()Z
    .registers 1

    .line 92
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseConfigurator;->mFlashFeature:Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;->capturing()Z

    move-result p0

    return p0
.end method

.method public final entry(Lcom/transsion/camera/feature/setting/flashfacade/values/IFlashValue;)V
    .registers 4

    .line 33
    invoke-interface {p1}, Lcom/transsion/camera/feature/setting/flashfacade/values/IFlashValue;->supportedFeatures()Ljava/util/List;

    move-result-object v0

    .line 34
    iget-object v1, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseConfigurator;->mFlashFeature:Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;

    invoke-interface {v1}, Lcom/transsion/camera/feature/setting/flashfacade/feature/IFlashFeature;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseConfigurator;->mValueSupportFeature:Z

    .line 35
    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseConfigurator;->onEntry(Lcom/transsion/camera/feature/setting/flashfacade/values/IFlashValue;)V

    return-void
.end method

.method protected featureSupport()Z
    .registers 2

    .line 39
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseConfigurator;->mValueSupportFeature:Z

    if-eqz v0, :cond_e

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseConfigurator;->mFlashFeature:Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;->featureSupport()Z

    move-result p0

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    return p0

    :cond_e
    const/4 p0, 0x0

    return p0
.end method

.method protected forceLowLight()Z
    .registers 1

    .line 108
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseConfigurator;->mFlashFeature:Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;->forceLowLight()Z

    move-result p0

    return p0
.end method

.method protected forceLowLightState()Z
    .registers 1

    .line 112
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseConfigurator;->mFlashFeature:Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;->forceLowLightState()Z

    move-result p0

    return p0
.end method

.method protected lowLight()Z
    .registers 1

    .line 104
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseConfigurator;->mFlashFeature:Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;->lowLight()Z

    move-result p0

    return p0
.end method

.method public onBrightnessDetected(Z)Lcom/transsion/camera/feature/setting/flashfacade/info/RequestType;
    .registers 2

    const/4 p0, 0x0

    return-object p0
.end method

.method public onBrightnessReset()Lcom/transsion/camera/feature/setting/flashfacade/info/RequestType;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method public onCaptureStart()Lcom/transsion/camera/feature/setting/flashfacade/info/RequestType;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method protected onEntry(Lcom/transsion/camera/feature/setting/flashfacade/values/IFlashValue;)V
    .registers 2

    return-void
.end method

.method public onNextReady()Lcom/transsion/camera/feature/setting/flashfacade/info/RequestType;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method public onPreviewStarted()V
    .registers 1

    return-void
.end method

.method public onPreviewStopped()V
    .registers 1

    return-void
.end method

.method public onRecordEnd()Lcom/transsion/camera/feature/setting/flashfacade/info/RequestType;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method public onRecordStart()Lcom/transsion/camera/feature/setting/flashfacade/info/RequestType;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method public onShutterGuideHide()Lcom/transsion/camera/feature/setting/flashfacade/info/RequestType;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method public onShutterGuideShow()Lcom/transsion/camera/feature/setting/flashfacade/info/RequestType;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method protected pause()V
    .registers 1

    return-void
.end method

.method protected recording()Z
    .registers 1

    .line 96
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseConfigurator;->mFlashFeature:Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;->recording()Z

    move-result p0

    return p0
.end method

.method protected shutterGuideLayoutShow()Z
    .registers 1

    .line 100
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseConfigurator;->mFlashFeature:Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;->shutterGuideLayoutShow()Z

    move-result p0

    return p0
.end method
