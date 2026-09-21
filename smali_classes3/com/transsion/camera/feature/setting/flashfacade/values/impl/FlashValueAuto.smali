.class public Lcom/transsion/camera/feature/setting/flashfacade/values/impl/FlashValueAuto;
.super Lcom/transsion/camera/feature/setting/flashfacade/values/BaseFlashValue;
.source "SourceFile"


# instance fields
.field private final mFlashConfig:Lcom/transsion/camera/feature/setting/flashfacade/FlashConfig;

.field private final mSupportedFeatures:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/transsion/camera/feature/setting/flashfacade/FlashConfig;)V
    .registers 3

    .line 34
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/setting/flashfacade/values/BaseFlashValue;-><init>(Ljava/lang/String;Lcom/transsion/camera/feature/setting/flashfacade/FlashConfig;)V

    .line 31
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/feature/setting/flashfacade/values/impl/FlashValueAuto;->mSupportedFeatures:Ljava/util/List;

    .line 35
    iput-object p2, p0, Lcom/transsion/camera/feature/setting/flashfacade/values/impl/FlashValueAuto;->mFlashConfig:Lcom/transsion/camera/feature/setting/flashfacade/FlashConfig;

    .line 36
    iget-object p0, p2, Lcom/transsion/camera/feature/setting/flashfacade/FlashConfig;->mLowLightAutoSupportedFeatures:[Ljava/lang/String;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method private ledFlashSupport(Lcom/transsion/camera/feature/setting/flashfacade/info/SupportMap;)Z
    .registers 2

    .line 106
    const-string p0, "key_flash"

    invoke-virtual {p1, p0}, Lcom/transsion/camera/feature/setting/flashfacade/info/SupportMap;->get(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method protected initSupportedFeatures(Lcom/transsion/camera/feature/setting/flashfacade/FlashConfig;)Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/camera/feature/setting/flashfacade/FlashConfig;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public declared-synchronized supportedFeatures()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 48
    :try_start_1
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/values/impl/FlashValueAuto;->mSupportedFeatures:Ljava/util/List;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    :try_start_6
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_6 .. :try_end_7} :catchall_5

    throw v0
.end method

.method public valueSupport(Lcom/transsion/camera/feature/setting/flashfacade/info/SupportMap;Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;)Z
    .registers 7

    .line 53
    invoke-virtual {p2}, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->screenFlip()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_52

    invoke-virtual {p2}, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->videoMode()Z

    move-result p2

    if-nez p2, :cond_52

    .line 54
    new-instance p2, Ljava/util/ArrayList;

    const/4 v0, 0x2

    invoke-direct {p2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 55
    const-string v0, "key_screen_flash"

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 56
    const-string v0, "key_super_flash"

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 58
    monitor-enter p0

    .line 59
    :try_start_1f
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/values/impl/FlashValueAuto;->mSupportedFeatures:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 60
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/values/impl/FlashValueAuto;->mSupportedFeatures:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 62
    iget-object p2, p0, Lcom/transsion/camera/feature/setting/flashfacade/values/impl/FlashValueAuto;->mSupportedFeatures:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_2f
    :goto_2f
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4e

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 63
    const-string v3, "key_super_flash"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_44

    goto :goto_2f

    .line 66
    :cond_44
    invoke-virtual {p1, v0}, Lcom/transsion/camera/feature/setting/flashfacade/info/SupportMap;->get(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 67
    monitor-exit p0

    return v2

    :catchall_4c
    move-exception p1

    goto :goto_50

    .line 70
    :cond_4e
    monitor-exit p0

    return v1

    :goto_50
    monitor-exit p0
    :try_end_51
    .catchall {:try_start_1f .. :try_end_51} :catchall_4c

    throw p1

    .line 75
    :cond_52
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/flashfacade/values/impl/FlashValueAuto;->ledFlashSupport(Lcom/transsion/camera/feature/setting/flashfacade/info/SupportMap;)Z

    move-result p2

    if-eqz p2, :cond_6c

    .line 76
    iget-object p2, p0, Lcom/transsion/camera/feature/setting/flashfacade/values/impl/FlashValueAuto;->mFlashConfig:Lcom/transsion/camera/feature/setting/flashfacade/FlashConfig;

    iget-boolean v0, p2, Lcom/transsion/camera/feature/setting/flashfacade/FlashConfig;->mLedFlashLowLight:Z

    if-eqz v0, :cond_65

    .line 77
    iget-object p2, p2, Lcom/transsion/camera/feature/setting/flashfacade/FlashConfig;->mLowLightAutoSupportedFeatures:[Ljava/lang/String;

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    goto :goto_74

    .line 80
    :cond_65
    iget-object p2, p2, Lcom/transsion/camera/feature/setting/flashfacade/FlashConfig;->mAutoSupportedFeatures:[Ljava/lang/String;

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    goto :goto_74

    .line 84
    :cond_6c
    iget-object p2, p0, Lcom/transsion/camera/feature/setting/flashfacade/values/impl/FlashValueAuto;->mFlashConfig:Lcom/transsion/camera/feature/setting/flashfacade/FlashConfig;

    iget-object p2, p2, Lcom/transsion/camera/feature/setting/flashfacade/FlashConfig;->mLowLightAutoSupportedFeatures:[Ljava/lang/String;

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    .line 88
    :goto_74
    monitor-enter p0

    .line 89
    :try_start_75
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/values/impl/FlashValueAuto;->mSupportedFeatures:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 90
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/values/impl/FlashValueAuto;->mSupportedFeatures:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 92
    iget-object p2, p0, Lcom/transsion/camera/feature/setting/flashfacade/values/impl/FlashValueAuto;->mSupportedFeatures:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_85
    :goto_85
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 93
    const-string v3, "key_super_flash"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9a

    goto :goto_85

    .line 96
    :cond_9a
    invoke-virtual {p1, v0}, Lcom/transsion/camera/feature/setting/flashfacade/info/SupportMap;->get(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_85

    .line 97
    monitor-exit p0

    return v2

    :catchall_a2
    move-exception p1

    goto :goto_a6

    .line 100
    :cond_a4
    monitor-exit p0

    return v1

    :goto_a6
    monitor-exit p0
    :try_end_a7
    .catchall {:try_start_75 .. :try_end_a7} :catchall_a2

    throw p1
.end method
