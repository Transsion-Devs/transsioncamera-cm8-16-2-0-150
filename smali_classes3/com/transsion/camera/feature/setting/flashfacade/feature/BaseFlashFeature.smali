.class public abstract Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/feature/setting/flashfacade/feature/IFlashFeature;


# static fields
.field private static final FEATURE_SUPPORT_VALUE_SIZE:I = 0x2

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mConfiguratorManager:Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseConfiguratorManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseConfiguratorManager<",
            "+",
            "Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;",
            "+",
            "Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseConfigurator<",
            "+",
            "Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;",
            ">;>;"
        }
    .end annotation
.end field

.field protected final mFlashConfig:Lcom/transsion/camera/feature/setting/flashfacade/FlashConfig;

.field protected final mFlashManager:Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;

.field protected mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

.field protected final mSupportedValues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mValue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 33
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "BaseFlashFeature"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;)V
    .registers 3

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;->mSupportedValues:Ljava/util/List;

    .line 50
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;->mFlashManager:Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;

    .line 51
    invoke-virtual {p1}, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->getFlashConfig()Lcom/transsion/camera/feature/setting/flashfacade/FlashConfig;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;->mFlashConfig:Lcom/transsion/camera/feature/setting/flashfacade/FlashConfig;

    return-void
.end method


# virtual methods
.method public capturing()Z
    .registers 1

    .line 220
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;->mFlashManager:Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->capturing()Z

    move-result p0

    return p0
.end method

.method protected abstract createConfiguratorManager()Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseConfiguratorManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseConfiguratorManager<",
            "+",
            "Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;",
            "+",
            "Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseConfigurator<",
            "+",
            "Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;",
            ">;>;"
        }
    .end annotation
.end method

.method protected currentCameraId()Ljava/lang/String;
    .registers 1

    .line 204
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;->mFlashManager:Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->currentCameraId()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public facingFront()Z
    .registers 1

    .line 196
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;->mFlashManager:Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->facingFront()Z

    move-result p0

    return p0
.end method

.method public featureSupport()Z
    .registers 2

    .line 157
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;->mSupportedValues:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    const/4 v0, 0x2

    if-lt p0, v0, :cond_b

    const/4 p0, 0x1

    return p0

    :cond_b
    const/4 p0, 0x0

    return p0
.end method

.method public featureSupport(Ljava/lang/String;)Z
    .registers 2

    .line 161
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;->mFlashManager:Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->featureSupport(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public featureValue(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 180
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;->mFlashManager:Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->featureValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public forceLowLight()Z
    .registers 1

    .line 212
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;->mFlashManager:Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->forceLowLight()Z

    move-result p0

    return p0
.end method

.method public forceLowLightState()Z
    .registers 1

    .line 216
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;->mFlashManager:Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->forceLowLightState()Z

    move-result p0

    return p0
.end method

.method public getBrightnessCallback()Lcom/transsion/camera/feature/setting/flashfacade/feature/IFlashFeature$BrightnessCallback;
    .registers 1

    .line 152
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;->mConfiguratorManager:Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseConfiguratorManager;

    return-object p0
.end method

.method public getCaptureStateCallback()Lcom/transsion/camera/feature/setting/flashfacade/feature/IFlashFeature$CaptureStateCallback;
    .registers 1

    .line 137
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;->mConfiguratorManager:Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseConfiguratorManager;

    return-object p0
.end method

.method public getModeKey()Ljava/lang/String;
    .registers 1

    .line 200
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;->mFlashManager:Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->getModeKey()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getPreviewStateCallback()Lcom/transsion/camera/feature/setting/flashfacade/feature/IFlashFeature$PreviewStateCallback;
    .registers 1

    .line 132
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;->mConfiguratorManager:Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseConfiguratorManager;

    return-object p0
.end method

.method public getRecordStateCallback()Lcom/transsion/camera/feature/setting/flashfacade/feature/IFlashFeature$RecordStateCallback;
    .registers 1

    .line 142
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;->mConfiguratorManager:Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseConfiguratorManager;

    return-object p0
.end method

.method public getShutterGuideLayoutCallback()Lcom/transsion/camera/feature/setting/flashfacade/feature/IFlashFeature$ShutterGuideLayoutCallback;
    .registers 1

    .line 147
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;->mConfiguratorManager:Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseConfiguratorManager;

    return-object p0
.end method

.method public getValue()Ljava/lang/String;
    .registers 1

    .line 122
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;->mValue:Ljava/lang/String;

    return-object p0
.end method

.method public init(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)V
    .registers 3

    .line 67
    invoke-interface {p2}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getStatusMonitor()Lcom/transsion/camera/app/common/setting/StatusMonitor;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    return-void
.end method

.method public isAeLockTriggered()Z
    .registers 1

    .line 232
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;->mFlashManager:Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->isAeLockTriggered()Z

    move-result p0

    return p0
.end method

.method public isBackMainUnSupport()Z
    .registers 1

    .line 236
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;->mFlashManager:Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->isMainCameraBackUnSupportSFL()Z

    move-result p0

    return p0
.end method

.method public isBackTeleUnSupport()Z
    .registers 1

    .line 248
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;->mFlashManager:Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->isBackTeleUnSupport()Z

    move-result p0

    return p0
.end method

.method public isBackWideUnSupport()Z
    .registers 1

    .line 244
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;->mFlashManager:Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->isBackWideUnSupport()Z

    move-result p0

    return p0
.end method

.method public isFrontCameraUnSupport()Z
    .registers 1

    .line 240
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;->mFlashManager:Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->isFrontCameraUnSupportSFL()Z

    move-result p0

    return p0
.end method

.method public lowLight()Z
    .registers 1

    .line 208
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;->mFlashManager:Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->lowLight()Z

    move-result p0

    return p0
.end method

.method public onFeatureLoad()V
    .registers 2

    .line 57
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;->createConfiguratorManager()Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseConfiguratorManager;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;->mConfiguratorManager:Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseConfiguratorManager;

    .line 58
    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseConfiguratorManager;->initConfigurators()V

    return-void
.end method

.method public onModeClose(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public onModeOpen(Ljava/lang/String;Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;[Ljava/lang/String;)V
    .registers 4

    return-void
.end method

.method protected onValueChanged(Ljava/lang/String;)V
    .registers 5

    .line 114
    sget-object v0, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onValueChanged key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Lcom/transsion/camera/feature/setting/flashfacade/feature/IFlashFeature;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 115
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz v0, :cond_35

    .line 116
    invoke-interface {p0}, Lcom/transsion/camera/feature/setting/flashfacade/feature/IFlashFeature;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object v0

    invoke-interface {p0}, Lcom/transsion/camera/feature/setting/flashfacade/feature/IFlashFeature;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0, p1}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_35
    return-void
.end method

.method public pause()V
    .registers 1

    .line 88
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;->mConfiguratorManager:Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseConfiguratorManager;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseConfiguratorManager;->pause()V

    return-void
.end method

.method public queryValue(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 192
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;->mFlashManager:Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public recording()Z
    .registers 1

    .line 224
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;->mFlashManager:Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->recording()Z

    move-result p0

    return p0
.end method

.method public restoreToDefault()V
    .registers 1

    return-void
.end method

.method public resume()V
    .registers 1

    return-void
.end method

.method public screenFlip()Z
    .registers 1

    .line 165
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;->mFlashManager:Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->screenFlip()Z

    move-result p0

    return p0
.end method

.method public setValue(Ljava/lang/String;)V
    .registers 3

    .line 103
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;->mSupportedValues:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_11

    .line 106
    :cond_9
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;->mValue:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_12

    :goto_11
    return-void

    .line 109
    :cond_12
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;->mValue:Ljava/lang/String;

    .line 110
    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;->onValueChanged(Ljava/lang/String;)V

    return-void
.end method

.method public shutterGuideLayoutShow()Z
    .registers 1

    .line 228
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;->mFlashManager:Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->shutterGuideLayoutShow()Z

    move-result p0

    return p0
.end method

.method public unInit()V
    .registers 2

    const/4 v0, 0x0

    .line 72
    iput-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    return-void
.end method

.method public updateFacadeValue(Lcom/transsion/camera/feature/setting/flashfacade/values/IFlashValue;)Lcom/transsion/camera/feature/setting/flashfacade/info/RequestType;
    .registers 2

    .line 127
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;->mConfiguratorManager:Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseConfiguratorManager;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseConfiguratorManager;->updateFlashValue(Lcom/transsion/camera/feature/setting/flashfacade/values/IFlashValue;)Lcom/transsion/camera/feature/setting/flashfacade/info/RequestType;

    move-result-object p0

    return-object p0
.end method
