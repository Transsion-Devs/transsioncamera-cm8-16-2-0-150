.class public Lcom/transsion/hubsdk/api/rms/TranRmsMemfusionManager;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mAospService:Lcom/transsion/hubsdk/aosp/rms/TranAospRmsMemfusionManager;

.field private mThubService:Lcom/transsion/hubsdk/core/rms/TranThubRmsMemfusionManager;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public changeCompactionMem(Ljava/lang/String;)V
    .registers 3

    .line 72
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33461:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/rms/TranRmsMemfusionManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/rms/ITranRmsMemfusionManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/rms/ITranRmsMemfusionManagerAdapter;->changeCompactionMem(Ljava/lang/String;)V

    return-void
.end method

.method public getMemoryForMF(Ljava/lang/String;)I
    .registers 3

    .line 52
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33461:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/rms/TranRmsMemfusionManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/rms/ITranRmsMemfusionManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/rms/ITranRmsMemfusionManagerAdapter;->getMemoryForMF(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method protected getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/rms/ITranRmsMemfusionManagerAdapter;
    .registers 2

    .line 25
    invoke-static {p1}, Lcom/transsion/hubsdk/common/version/TranVersion;->isIntegratedThubCore(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_12

    .line 26
    iget-object p1, p0, Lcom/transsion/hubsdk/api/rms/TranRmsMemfusionManager;->mThubService:Lcom/transsion/hubsdk/core/rms/TranThubRmsMemfusionManager;

    if-nez p1, :cond_11

    new-instance p1, Lcom/transsion/hubsdk/core/rms/TranThubRmsMemfusionManager;

    invoke-direct {p1}, Lcom/transsion/hubsdk/core/rms/TranThubRmsMemfusionManager;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/api/rms/TranRmsMemfusionManager;->mThubService:Lcom/transsion/hubsdk/core/rms/TranThubRmsMemfusionManager;

    :cond_11
    return-object p1

    .line 28
    :cond_12
    iget-object p1, p0, Lcom/transsion/hubsdk/api/rms/TranRmsMemfusionManager;->mAospService:Lcom/transsion/hubsdk/aosp/rms/TranAospRmsMemfusionManager;

    if-nez p1, :cond_1d

    new-instance p1, Lcom/transsion/hubsdk/aosp/rms/TranAospRmsMemfusionManager;

    invoke-direct {p1}, Lcom/transsion/hubsdk/aosp/rms/TranAospRmsMemfusionManager;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/api/rms/TranRmsMemfusionManager;->mAospService:Lcom/transsion/hubsdk/aosp/rms/TranAospRmsMemfusionManager;

    :cond_1d
    return-object p1
.end method

.method public getSwapFileSizeList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 60
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33461:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/rms/TranRmsMemfusionManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/rms/ITranRmsMemfusionManagerAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/rms/ITranRmsMemfusionManagerAdapter;->getSwapFileSizeList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public isMatchCurMemSelection()Z
    .registers 2

    .line 44
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33461:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/rms/TranRmsMemfusionManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/rms/ITranRmsMemfusionManagerAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/rms/ITranRmsMemfusionManagerAdapter;->isMatchCurMemSelection()Z

    move-result p0

    return p0
.end method

.method public isMemFusionEnabled()Z
    .registers 2

    .line 32
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33461:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/rms/TranRmsMemfusionManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/rms/ITranRmsMemfusionManagerAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/rms/ITranRmsMemfusionManagerAdapter;->isMemFusionEnabled()Z

    move-result p0

    return p0
.end method

.method public isMemSettingEnterEnabled()Z
    .registers 2

    .line 40
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33461:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/rms/TranRmsMemfusionManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/rms/ITranRmsMemfusionManagerAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/rms/ITranRmsMemfusionManagerAdapter;->isMemSettingEnterEnabled()Z

    move-result p0

    return p0
.end method

.method public isMemoryEnoughToMF(Ljava/lang/String;)I
    .registers 3

    .line 48
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33461:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/rms/TranRmsMemfusionManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/rms/ITranRmsMemfusionManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/rms/ITranRmsMemfusionManagerAdapter;->isMemoryEnoughToMF(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public isUxCompactionSupport()Z
    .registers 2

    .line 36
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33461:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/rms/TranRmsMemfusionManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/rms/ITranRmsMemfusionManagerAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/rms/ITranRmsMemfusionManagerAdapter;->isUxCompactionSupport()Z

    move-result p0

    return p0
.end method

.method public setMemFusionEnable(Z)I
    .registers 3

    .line 56
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33461:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/rms/TranRmsMemfusionManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/rms/ITranRmsMemfusionManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/rms/ITranRmsMemfusionManagerAdapter;->setMemFusionEnable(Z)I

    move-result p0

    return p0
.end method

.method public switchMemFusion(Z)V
    .registers 3

    .line 68
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33461:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/rms/TranRmsMemfusionManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/rms/ITranRmsMemfusionManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/rms/ITranRmsMemfusionManagerAdapter;->switchMemFusion(Z)V

    return-void
.end method

.method public switchUXCompaction(Z)V
    .registers 3

    .line 64
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33461:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/rms/TranRmsMemfusionManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/rms/ITranRmsMemfusionManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/rms/ITranRmsMemfusionManagerAdapter;->switchUXCompaction(Z)V

    return-void
.end method
