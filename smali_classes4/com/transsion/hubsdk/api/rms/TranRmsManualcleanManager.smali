.class public Lcom/transsion/hubsdk/api/rms/TranRmsManualcleanManager;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mAospService:Lcom/transsion/hubsdk/aosp/rms/TranAospRmsManualcleanManager;

.field private mThubService:Lcom/transsion/hubsdk/core/rms/TranThubRmsManualcleanManager;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doClean(ILjava/lang/String;ILjava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 34
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33461:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/rms/TranRmsManualcleanManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/rms/ITranRmsManualcleanManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/transsion/hubsdk/interfaces/rms/ITranRmsManualcleanManagerAdapter;->doClean(ILjava/lang/String;ILjava/util/List;)V

    return-void
.end method

.method public getCleanProtectList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 31
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33461:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/rms/TranRmsManualcleanManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/rms/ITranRmsManualcleanManagerAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/rms/ITranRmsManualcleanManagerAdapter;->getCleanProtectList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method protected getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/rms/ITranRmsManualcleanManagerAdapter;
    .registers 2

    .line 16
    invoke-static {p1}, Lcom/transsion/hubsdk/common/version/TranVersion;->isIntegratedThubCore(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_12

    .line 17
    iget-object p1, p0, Lcom/transsion/hubsdk/api/rms/TranRmsManualcleanManager;->mThubService:Lcom/transsion/hubsdk/core/rms/TranThubRmsManualcleanManager;

    if-nez p1, :cond_11

    new-instance p1, Lcom/transsion/hubsdk/core/rms/TranThubRmsManualcleanManager;

    invoke-direct {p1}, Lcom/transsion/hubsdk/core/rms/TranThubRmsManualcleanManager;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/api/rms/TranRmsManualcleanManager;->mThubService:Lcom/transsion/hubsdk/core/rms/TranThubRmsManualcleanManager;

    :cond_11
    return-object p1

    .line 19
    :cond_12
    iget-object p1, p0, Lcom/transsion/hubsdk/api/rms/TranRmsManualcleanManager;->mAospService:Lcom/transsion/hubsdk/aosp/rms/TranAospRmsManualcleanManager;

    if-nez p1, :cond_1d

    new-instance p1, Lcom/transsion/hubsdk/aosp/rms/TranAospRmsManualcleanManager;

    invoke-direct {p1}, Lcom/transsion/hubsdk/aosp/rms/TranAospRmsManualcleanManager;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/api/rms/TranRmsManualcleanManager;->mAospService:Lcom/transsion/hubsdk/aosp/rms/TranAospRmsManualcleanManager;

    :cond_1d
    return-object p1
.end method

.method public isManualcleanEnabled()Z
    .registers 2

    .line 22
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33461:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/rms/TranRmsManualcleanManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/rms/ITranRmsManualcleanManagerAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/rms/ITranRmsManualcleanManagerAdapter;->isManualcleanEnabled()Z

    move-result p0

    return p0
.end method

.method public setCleanProtect(Ljava/lang/String;Z)Z
    .registers 4

    .line 25
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33461:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/rms/TranRmsManualcleanManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/rms/ITranRmsManualcleanManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/rms/ITranRmsManualcleanManagerAdapter;->setCleanProtect(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public swipeUpClean(Ljava/lang/String;ILjava/lang/String;I)Z
    .registers 6

    .line 37
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33461:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/rms/TranRmsManualcleanManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/rms/ITranRmsManualcleanManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/transsion/hubsdk/interfaces/rms/ITranRmsManualcleanManagerAdapter;->swipeUpClean(Ljava/lang/String;ILjava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public updateCleanProtectList(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 28
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33461:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/rms/TranRmsManualcleanManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/rms/ITranRmsManualcleanManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/rms/ITranRmsManualcleanManagerAdapter;->updateCleanProtectList(Ljava/util/List;)V

    return-void
.end method
