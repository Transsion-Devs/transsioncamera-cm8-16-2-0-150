.class public abstract Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseConfiguratorManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/feature/setting/flashfacade/feature/IConfiguratorManager;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<F:",
        "Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;",
        "C:",
        "Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseConfigurator<",
        "TF;>;>",
        "Ljava/lang/Object;",
        "Lcom/transsion/camera/feature/setting/flashfacade/feature/IConfiguratorManager<",
        "TF;",
        "Lcom/transsion/camera/feature/setting/flashfacade/feature/IConfigurator<",
        "TF;>;>;"
    }
.end annotation


# instance fields
.field protected mConfigurator:Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseConfigurator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TC;"
        }
    .end annotation
.end field

.field private final mConfiguratorMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "TC;>;"
        }
    .end annotation
.end field

.field protected final mFlashFeature:Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TF;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;)V"
        }
    .end annotation

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Landroid/util/ArrayMap;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Landroid/util/ArrayMap;-><init>(I)V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseConfiguratorManager;->mConfiguratorMap:Ljava/util/Map;

    .line 35
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseConfiguratorManager;->mFlashFeature:Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;

    return-void
.end method


# virtual methods
.method protected abstract createConfiguratorFactory()Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseConfiguratorFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseConfiguratorFactory<",
            "TF;TC;>;"
        }
    .end annotation
.end method

.method public final initConfigurators()V
    .registers 6

    .line 39
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseConfiguratorManager;->createConfiguratorFactory()Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseConfiguratorFactory;

    move-result-object v0

    .line 40
    sget-object v1, Lcom/transsion/camera/utils/SettingInfo;->mFlashFacadeValues:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_20

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 41
    iget-object v3, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseConfiguratorManager;->mConfiguratorMap:Ljava/util/Map;

    invoke-virtual {v0, v2}, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseConfiguratorFactory;->getConfigurator(Ljava/lang/String;)Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseConfigurator;

    move-result-object v4

    invoke-interface {v3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_a

    :cond_20
    return-void
.end method

.method public declared-synchronized onBrightnessDetected(Z)Lcom/transsion/camera/feature/setting/flashfacade/info/RequestType;
    .registers 3

    monitor-enter p0

    .line 125
    :try_start_1
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseConfiguratorManager;->mConfigurator:Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseConfigurator;

    if-eqz v0, :cond_d

    .line 126
    invoke-virtual {v0, p1}, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseConfigurator;->onBrightnessDetected(Z)Lcom/transsion/camera/feature/setting/flashfacade/info/RequestType;

    move-result-object p1
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    monitor-exit p0

    return-object p1

    :catchall_b
    move-exception p1

    goto :goto_10

    .line 128
    :cond_d
    monitor-exit p0

    const/4 p0, 0x0

    return-object p0

    :goto_10
    :try_start_10
    monitor-exit p0
    :try_end_11
    .catchall {:try_start_10 .. :try_end_11} :catchall_b

    throw p1
.end method

.method public declared-synchronized onBrightnessReset()Lcom/transsion/camera/feature/setting/flashfacade/info/RequestType;
    .registers 2

    monitor-enter p0

    .line 133
    :try_start_1
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseConfiguratorManager;->mConfigurator:Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseConfigurator;

    if-eqz v0, :cond_d

    .line 134
    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseConfigurator;->onBrightnessReset()Lcom/transsion/camera/feature/setting/flashfacade/info/RequestType;

    move-result-object v0
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    monitor-exit p0

    return-object v0

    :catchall_b
    move-exception v0

    goto :goto_10

    .line 136
    :cond_d
    monitor-exit p0

    const/4 p0, 0x0

    return-object p0

    :goto_10
    :try_start_10
    monitor-exit p0
    :try_end_11
    .catchall {:try_start_10 .. :try_end_11} :catchall_b

    throw v0
.end method

.method public onCaptureStart()Lcom/transsion/camera/feature/setting/flashfacade/info/RequestType;
    .registers 1

    .line 77
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseConfiguratorManager;->mConfigurator:Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseConfigurator;

    if-eqz p0, :cond_9

    .line 78
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseConfigurator;->onCaptureStart()Lcom/transsion/camera/feature/setting/flashfacade/info/RequestType;

    move-result-object p0

    return-object p0

    :cond_9
    const/4 p0, 0x0

    return-object p0
.end method

.method public onNextReady()Lcom/transsion/camera/feature/setting/flashfacade/info/RequestType;
    .registers 1

    .line 85
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseConfiguratorManager;->mConfigurator:Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseConfigurator;

    if-eqz p0, :cond_9

    .line 86
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseConfigurator;->onNextReady()Lcom/transsion/camera/feature/setting/flashfacade/info/RequestType;

    move-result-object p0

    return-object p0

    :cond_9
    const/4 p0, 0x0

    return-object p0
.end method

.method public onPreviewStarted()V
    .registers 1

    .line 63
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseConfiguratorManager;->mConfigurator:Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseConfigurator;

    if-eqz p0, :cond_7

    .line 64
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseConfigurator;->onPreviewStarted()V

    :cond_7
    return-void
.end method

.method public onPreviewStopped()V
    .registers 1

    .line 70
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseConfiguratorManager;->mConfigurator:Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseConfigurator;

    if-eqz p0, :cond_7

    .line 71
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseConfigurator;->onPreviewStopped()V

    :cond_7
    return-void
.end method

.method public onRecordEnd()Lcom/transsion/camera/feature/setting/flashfacade/info/RequestType;
    .registers 1

    .line 101
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseConfiguratorManager;->mConfigurator:Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseConfigurator;

    if-eqz p0, :cond_9

    .line 102
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseConfigurator;->onRecordEnd()Lcom/transsion/camera/feature/setting/flashfacade/info/RequestType;

    move-result-object p0

    return-object p0

    :cond_9
    const/4 p0, 0x0

    return-object p0
.end method

.method public onRecordStart()Lcom/transsion/camera/feature/setting/flashfacade/info/RequestType;
    .registers 1

    .line 93
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseConfiguratorManager;->mConfigurator:Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseConfigurator;

    if-eqz p0, :cond_9

    .line 94
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseConfigurator;->onRecordStart()Lcom/transsion/camera/feature/setting/flashfacade/info/RequestType;

    move-result-object p0

    return-object p0

    :cond_9
    const/4 p0, 0x0

    return-object p0
.end method

.method public onShutterGuideHide()Lcom/transsion/camera/feature/setting/flashfacade/info/RequestType;
    .registers 1

    .line 117
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseConfiguratorManager;->mConfigurator:Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseConfigurator;

    if-eqz p0, :cond_9

    .line 118
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseConfigurator;->onShutterGuideHide()Lcom/transsion/camera/feature/setting/flashfacade/info/RequestType;

    move-result-object p0

    return-object p0

    :cond_9
    const/4 p0, 0x0

    return-object p0
.end method

.method public onShutterGuideShow()Lcom/transsion/camera/feature/setting/flashfacade/info/RequestType;
    .registers 1

    .line 109
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseConfiguratorManager;->mConfigurator:Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseConfigurator;

    if-eqz p0, :cond_9

    .line 110
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseConfigurator;->onShutterGuideShow()Lcom/transsion/camera/feature/setting/flashfacade/info/RequestType;

    move-result-object p0

    return-object p0

    :cond_9
    const/4 p0, 0x0

    return-object p0
.end method

.method public pause()V
    .registers 1

    .line 56
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseConfiguratorManager;->mConfigurator:Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseConfigurator;

    if-eqz p0, :cond_7

    .line 57
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseConfigurator;->pause()V

    :cond_7
    return-void
.end method

.method public declared-synchronized updateFlashValue(Lcom/transsion/camera/feature/setting/flashfacade/values/IFlashValue;)Lcom/transsion/camera/feature/setting/flashfacade/info/RequestType;
    .registers 4

    monitor-enter p0

    .line 50
    :try_start_1
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseConfiguratorManager;->mConfiguratorMap:Ljava/util/Map;

    invoke-interface {p1}, Lcom/transsion/camera/feature/setting/flashfacade/values/IFlashValue;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseConfigurator;

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseConfiguratorManager;->mConfigurator:Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseConfigurator;

    .line 51
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseConfigurator;->entry(Lcom/transsion/camera/feature/setting/flashfacade/values/IFlashValue;)V

    .line 52
    invoke-static {}, Lcom/transsion/camera/feature/setting/flashfacade/info/RequestType;->obtain()Lcom/transsion/camera/feature/setting/flashfacade/info/RequestType;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/transsion/camera/feature/setting/flashfacade/info/RequestType;->configAll(Z)Lcom/transsion/camera/feature/setting/flashfacade/info/RequestType;

    move-result-object p1
    :try_end_1e
    .catchall {:try_start_1 .. :try_end_1e} :catchall_20

    monitor-exit p0

    return-object p1

    :catchall_20
    move-exception p1

    :try_start_21
    monitor-exit p0
    :try_end_22
    .catchall {:try_start_21 .. :try_end_22} :catchall_20

    throw p1
.end method
