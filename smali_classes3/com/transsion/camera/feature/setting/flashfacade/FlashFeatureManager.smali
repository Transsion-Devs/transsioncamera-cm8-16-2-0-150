.class Lcom/transsion/camera/feature/setting/flashfacade/FlashFeatureManager;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final mFeatureRepository:Lcom/transsion/camera/feature/setting/flashfacade/feature/FlashFeatureRepository;

.field private mModeType:Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/setting/flashfacade/feature/FlashFeatureRepository;)V
    .registers 2

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashFeatureManager;->mFeatureRepository:Lcom/transsion/camera/feature/setting/flashfacade/feature/FlashFeatureRepository;

    return-void
.end method

.method private getFeaturesByModeType(Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;",
            ")",
            "Ljava/util/List<",
            "Lcom/transsion/camera/feature/setting/flashfacade/feature/IFlashFeature;",
            ">;"
        }
    .end annotation

    .line 141
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_28

    .line 143
    sget-object v1, Lcom/transsion/camera/feature/setting/flashfacade/FlashFeatureManager$1;->$SwitchMap$com$transsion$camera$app$common$mode$ICameraMode$ModeType:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v1, p1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1f

    const/4 v1, 0x2

    if-eq p1, v1, :cond_16

    goto :goto_28

    .line 150
    :cond_16
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashFeatureManager;->mFeatureRepository:Lcom/transsion/camera/feature/setting/flashfacade/feature/FlashFeatureRepository;

    sget-object p1, Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;->VIDEO:Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;

    .line 151
    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/setting/flashfacade/feature/FlashFeatureRepository;->featuresByType(Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;)Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 145
    :cond_1f
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashFeatureManager;->mFeatureRepository:Lcom/transsion/camera/feature/setting/flashfacade/feature/FlashFeatureRepository;

    sget-object p1, Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;->PHOTO:Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;

    .line 146
    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/setting/flashfacade/feature/FlashFeatureRepository;->featuresByType(Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_28
    :goto_28
    return-object v0
.end method


# virtual methods
.method brightnessDetected(Z)Lcom/transsion/camera/feature/setting/flashfacade/info/RequestType;
    .registers 3

    .line 119
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashFeatureManager;->mModeType:Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;

    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/setting/flashfacade/FlashFeatureManager;->getFeaturesByModeType(Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;)Ljava/util/List;

    move-result-object v0

    .line 120
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashFeatureManager;->mFeatureRepository:Lcom/transsion/camera/feature/setting/flashfacade/feature/FlashFeatureRepository;

    invoke-virtual {p0, v0, p1}, Lcom/transsion/camera/feature/setting/flashfacade/feature/FlashFeatureRepository;->brightnessDetected(Ljava/util/List;Z)Lcom/transsion/camera/feature/setting/flashfacade/info/RequestType;

    move-result-object p0

    return-object p0
.end method

.method captureStart()Lcom/transsion/camera/feature/setting/flashfacade/info/RequestType;
    .registers 2

    .line 99
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashFeatureManager;->mModeType:Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;

    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/setting/flashfacade/FlashFeatureManager;->getFeaturesByModeType(Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;)Ljava/util/List;

    move-result-object v0

    .line 100
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashFeatureManager;->mFeatureRepository:Lcom/transsion/camera/feature/setting/flashfacade/feature/FlashFeatureRepository;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/setting/flashfacade/feature/FlashFeatureRepository;->captureStart(Ljava/util/List;)Lcom/transsion/camera/feature/setting/flashfacade/info/RequestType;

    move-result-object p0

    return-object p0
.end method

.method configParameters(Lcom/transsion/camera/adapter/CameraParameters;)I
    .registers 3

    .line 75
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashFeatureManager;->mModeType:Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;

    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/setting/flashfacade/FlashFeatureManager;->getFeaturesByModeType(Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;)Ljava/util/List;

    move-result-object v0

    .line 76
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashFeatureManager;->mFeatureRepository:Lcom/transsion/camera/feature/setting/flashfacade/feature/FlashFeatureRepository;

    invoke-virtual {p0, v0, p1}, Lcom/transsion/camera/feature/setting/flashfacade/feature/FlashFeatureRepository;->configParameters(Ljava/util/List;Lcom/transsion/camera/adapter/CameraParameters;)I

    move-result p0

    return p0
.end method

.method featureSupport(Ljava/lang/String;)Z
    .registers 2

    .line 129
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashFeatureManager;->mFeatureRepository:Lcom/transsion/camera/feature/setting/flashfacade/feature/FlashFeatureRepository;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/setting/flashfacade/feature/FlashFeatureRepository;->featureSupport(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method featureValue(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 133
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashFeatureManager;->mFeatureRepository:Lcom/transsion/camera/feature/setting/flashfacade/feature/FlashFeatureRepository;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/setting/flashfacade/feature/FlashFeatureRepository;->featureValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method init(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)V
    .registers 3

    .line 39
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashFeatureManager;->mFeatureRepository:Lcom/transsion/camera/feature/setting/flashfacade/feature/FlashFeatureRepository;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/feature/setting/flashfacade/feature/FlashFeatureRepository;->init(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)V

    return-void
.end method

.method nextCaptureReady()Lcom/transsion/camera/feature/setting/flashfacade/info/RequestType;
    .registers 2

    .line 104
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashFeatureManager;->mModeType:Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;

    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/setting/flashfacade/FlashFeatureManager;->getFeaturesByModeType(Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;)Ljava/util/List;

    move-result-object v0

    .line 105
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashFeatureManager;->mFeatureRepository:Lcom/transsion/camera/feature/setting/flashfacade/feature/FlashFeatureRepository;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/setting/flashfacade/feature/FlashFeatureRepository;->nextCaptureReady(Ljava/util/List;)Lcom/transsion/camera/feature/setting/flashfacade/info/RequestType;

    move-result-object p0

    return-object p0
.end method

.method onModeClose(Ljava/lang/String;)V
    .registers 2

    .line 56
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashFeatureManager;->mFeatureRepository:Lcom/transsion/camera/feature/setting/flashfacade/feature/FlashFeatureRepository;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/setting/flashfacade/feature/FlashFeatureRepository;->onModeClose(Ljava/lang/String;)V

    return-void
.end method

.method onModeOpen(Ljava/lang/String;Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;[Ljava/lang/String;)V
    .registers 4

    .line 51
    iput-object p2, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashFeatureManager;->mModeType:Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;

    .line 52
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashFeatureManager;->mFeatureRepository:Lcom/transsion/camera/feature/setting/flashfacade/feature/FlashFeatureRepository;

    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/camera/feature/setting/flashfacade/feature/FlashFeatureRepository;->onModeOpen(Ljava/lang/String;Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;[Ljava/lang/String;)V

    return-void
.end method

.method public onShutterGuideHide()Lcom/transsion/camera/feature/setting/flashfacade/info/RequestType;
    .registers 2

    .line 172
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashFeatureManager;->mModeType:Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;

    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/setting/flashfacade/FlashFeatureManager;->getFeaturesByModeType(Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;)Ljava/util/List;

    move-result-object v0

    .line 173
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashFeatureManager;->mFeatureRepository:Lcom/transsion/camera/feature/setting/flashfacade/feature/FlashFeatureRepository;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/setting/flashfacade/feature/FlashFeatureRepository;->onShutterGuideHide(Ljava/util/List;)Lcom/transsion/camera/feature/setting/flashfacade/info/RequestType;

    move-result-object p0

    return-object p0
.end method

.method public onShutterGuideShow()Lcom/transsion/camera/feature/setting/flashfacade/info/RequestType;
    .registers 2

    .line 167
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashFeatureManager;->mModeType:Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;

    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/setting/flashfacade/FlashFeatureManager;->getFeaturesByModeType(Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;)Ljava/util/List;

    move-result-object v0

    .line 168
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashFeatureManager;->mFeatureRepository:Lcom/transsion/camera/feature/setting/flashfacade/feature/FlashFeatureRepository;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/setting/flashfacade/feature/FlashFeatureRepository;->onShutterGuideShow(Ljava/util/List;)Lcom/transsion/camera/feature/setting/flashfacade/info/RequestType;

    move-result-object p0

    return-object p0
.end method

.method pause()V
    .registers 2

    .line 65
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashFeatureManager;->mModeType:Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;

    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/setting/flashfacade/FlashFeatureManager;->getFeaturesByModeType(Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;)Ljava/util/List;

    move-result-object v0

    .line 66
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashFeatureManager;->mFeatureRepository:Lcom/transsion/camera/feature/setting/flashfacade/feature/FlashFeatureRepository;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/setting/flashfacade/feature/FlashFeatureRepository;->pause(Ljava/util/List;)V

    return-void
.end method

.method previewStarted()V
    .registers 2

    .line 80
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashFeatureManager;->mModeType:Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;

    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/setting/flashfacade/FlashFeatureManager;->getFeaturesByModeType(Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;)Ljava/util/List;

    move-result-object v0

    .line 81
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashFeatureManager;->mFeatureRepository:Lcom/transsion/camera/feature/setting/flashfacade/feature/FlashFeatureRepository;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/setting/flashfacade/feature/FlashFeatureRepository;->previewStarted(Ljava/util/List;)V

    return-void
.end method

.method previewStopped()V
    .registers 2

    .line 85
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashFeatureManager;->mModeType:Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;

    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/setting/flashfacade/FlashFeatureManager;->getFeaturesByModeType(Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;)Ljava/util/List;

    move-result-object v0

    .line 86
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashFeatureManager;->mFeatureRepository:Lcom/transsion/camera/feature/setting/flashfacade/feature/FlashFeatureRepository;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/setting/flashfacade/feature/FlashFeatureRepository;->previewStopped(Ljava/util/List;)V

    return-void
.end method

.method recordEnd()Lcom/transsion/camera/feature/setting/flashfacade/info/RequestType;
    .registers 2

    .line 114
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashFeatureManager;->mModeType:Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;

    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/setting/flashfacade/FlashFeatureManager;->getFeaturesByModeType(Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;)Ljava/util/List;

    move-result-object v0

    .line 115
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashFeatureManager;->mFeatureRepository:Lcom/transsion/camera/feature/setting/flashfacade/feature/FlashFeatureRepository;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/setting/flashfacade/feature/FlashFeatureRepository;->recordEnd(Ljava/util/List;)Lcom/transsion/camera/feature/setting/flashfacade/info/RequestType;

    move-result-object p0

    return-object p0
.end method

.method recordStart()Lcom/transsion/camera/feature/setting/flashfacade/info/RequestType;
    .registers 2

    .line 109
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashFeatureManager;->mModeType:Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;

    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/setting/flashfacade/FlashFeatureManager;->getFeaturesByModeType(Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;)Ljava/util/List;

    move-result-object v0

    .line 110
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashFeatureManager;->mFeatureRepository:Lcom/transsion/camera/feature/setting/flashfacade/feature/FlashFeatureRepository;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/setting/flashfacade/feature/FlashFeatureRepository;->recordStart(Ljava/util/List;)Lcom/transsion/camera/feature/setting/flashfacade/info/RequestType;

    move-result-object p0

    return-object p0
.end method

.method resetBrightness()Lcom/transsion/camera/feature/setting/flashfacade/info/RequestType;
    .registers 2

    .line 124
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashFeatureManager;->mModeType:Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;

    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/setting/flashfacade/FlashFeatureManager;->getFeaturesByModeType(Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;)Ljava/util/List;

    move-result-object v0

    .line 125
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashFeatureManager;->mFeatureRepository:Lcom/transsion/camera/feature/setting/flashfacade/feature/FlashFeatureRepository;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/setting/flashfacade/feature/FlashFeatureRepository;->resetBrightness(Ljava/util/List;)Lcom/transsion/camera/feature/setting/flashfacade/info/RequestType;

    move-result-object p0

    return-object p0
.end method

.method restoreToDefault()V
    .registers 1

    .line 47
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashFeatureManager;->mFeatureRepository:Lcom/transsion/camera/feature/setting/flashfacade/feature/FlashFeatureRepository;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/flashfacade/feature/FlashFeatureRepository;->restoreToDefault()V

    return-void
.end method

.method resume()V
    .registers 2

    .line 60
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashFeatureManager;->mModeType:Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;

    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/setting/flashfacade/FlashFeatureManager;->getFeaturesByModeType(Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;)Ljava/util/List;

    move-result-object v0

    .line 61
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashFeatureManager;->mFeatureRepository:Lcom/transsion/camera/feature/setting/flashfacade/feature/FlashFeatureRepository;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/setting/flashfacade/feature/FlashFeatureRepository;->resume(Ljava/util/List;)V

    return-void
.end method

.method setCameraCapabilities(Lcom/transsion/camera/adapter/ICameraCapabilities;)V
    .registers 3

    .line 70
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashFeatureManager;->mModeType:Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;

    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/setting/flashfacade/FlashFeatureManager;->getFeaturesByModeType(Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;)Ljava/util/List;

    move-result-object v0

    .line 71
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashFeatureManager;->mFeatureRepository:Lcom/transsion/camera/feature/setting/flashfacade/feature/FlashFeatureRepository;

    invoke-virtual {p0, v0, p1}, Lcom/transsion/camera/feature/setting/flashfacade/feature/FlashFeatureRepository;->setCameraCapabilities(Ljava/util/List;Lcom/transsion/camera/adapter/ICameraCapabilities;)V

    return-void
.end method

.method supportedFeatures()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/camera/feature/setting/flashfacade/feature/IFlashFeature;",
            ">;"
        }
    .end annotation

    .line 137
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashFeatureManager;->mModeType:Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;

    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/setting/flashfacade/FlashFeatureManager;->getFeaturesByModeType(Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method unInit()V
    .registers 1

    .line 43
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashFeatureManager;->mFeatureRepository:Lcom/transsion/camera/feature/setting/flashfacade/feature/FlashFeatureRepository;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/flashfacade/feature/FlashFeatureRepository;->unInit()V

    return-void
.end method

.method updateFacadeValue(Lcom/transsion/camera/feature/setting/flashfacade/values/IFlashValue;)Lcom/transsion/camera/feature/setting/flashfacade/info/RequestType;
    .registers 3

    .line 90
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashFeatureManager;->mModeType:Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;

    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/setting/flashfacade/FlashFeatureManager;->getFeaturesByModeType(Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;)Ljava/util/List;

    move-result-object v0

    .line 91
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashFeatureManager;->mFeatureRepository:Lcom/transsion/camera/feature/setting/flashfacade/feature/FlashFeatureRepository;

    invoke-virtual {p0, v0, p1}, Lcom/transsion/camera/feature/setting/flashfacade/feature/FlashFeatureRepository;->updateFacadeValue(Ljava/util/List;Lcom/transsion/camera/feature/setting/flashfacade/values/IFlashValue;)Lcom/transsion/camera/feature/setting/flashfacade/info/RequestType;

    move-result-object p0

    return-object p0
.end method

.method public updateFrontDualFlashValue(Ljava/lang/String;)Lcom/transsion/camera/feature/setting/flashfacade/info/RequestType;
    .registers 2

    .line 163
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashFeatureManager;->mFeatureRepository:Lcom/transsion/camera/feature/setting/flashfacade/feature/FlashFeatureRepository;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/setting/flashfacade/feature/FlashFeatureRepository;->updateFrontDualFlashValue(Ljava/lang/String;)Lcom/transsion/camera/feature/setting/flashfacade/info/RequestType;

    move-result-object p0

    return-object p0
.end method

.method updateLuminanceValue(I)Lcom/transsion/camera/feature/setting/flashfacade/info/RequestType;
    .registers 2

    .line 95
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashFeatureManager;->mFeatureRepository:Lcom/transsion/camera/feature/setting/flashfacade/feature/FlashFeatureRepository;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/setting/flashfacade/feature/FlashFeatureRepository;->updateLuminanceValue(I)Lcom/transsion/camera/feature/setting/flashfacade/info/RequestType;

    move-result-object p0

    return-object p0
.end method
