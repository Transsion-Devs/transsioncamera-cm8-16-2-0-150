.class public Lcom/transsion/hubsdk/api/rms/TranRmsAppmManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "TranRmsAppmManager"


# instance fields
.field private mAospService:Lcom/transsion/hubsdk/aosp/rms/TranAospRmsAppmManager;

.field private mThubService:Lcom/transsion/hubsdk/core/rms/TranThubRmsAppmManager;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getETControl(Ljava/lang/String;)Z
    .registers 3

    .line 67
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33461:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/rms/TranRmsAppmManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/rms/ITranRmsAppmManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/rms/ITranRmsAppmManagerAdapter;->getETControl(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public getMEMCList(Ljava/lang/String;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 85
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33461:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/rms/TranRmsAppmManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/rms/ITranRmsAppmManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/rms/ITranRmsAppmManagerAdapter;->getMEMCList(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method protected getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/rms/ITranRmsAppmManagerAdapter;
    .registers 3

    .line 26
    invoke-static {p1}, Lcom/transsion/hubsdk/common/version/TranVersion;->isIntegratedThubCore(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_19

    .line 27
    sget-object p1, Lcom/transsion/hubsdk/api/rms/TranRmsAppmManager;->TAG:Ljava/lang/String;

    const-string v0, "TranThubRmsAppmManager"

    invoke-static {p1, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    iget-object p1, p0, Lcom/transsion/hubsdk/api/rms/TranRmsAppmManager;->mThubService:Lcom/transsion/hubsdk/core/rms/TranThubRmsAppmManager;

    if-nez p1, :cond_18

    new-instance p1, Lcom/transsion/hubsdk/core/rms/TranThubRmsAppmManager;

    invoke-direct {p1}, Lcom/transsion/hubsdk/core/rms/TranThubRmsAppmManager;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/api/rms/TranRmsAppmManager;->mThubService:Lcom/transsion/hubsdk/core/rms/TranThubRmsAppmManager;

    :cond_18
    return-object p1

    .line 30
    :cond_19
    sget-object p1, Lcom/transsion/hubsdk/api/rms/TranRmsAppmManager;->TAG:Ljava/lang/String;

    const-string v0, "TranAospRmsAppmManager"

    invoke-static {p1, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    iget-object p1, p0, Lcom/transsion/hubsdk/api/rms/TranRmsAppmManager;->mAospService:Lcom/transsion/hubsdk/aosp/rms/TranAospRmsAppmManager;

    if-nez p1, :cond_2b

    new-instance p1, Lcom/transsion/hubsdk/aosp/rms/TranAospRmsAppmManager;

    invoke-direct {p1}, Lcom/transsion/hubsdk/aosp/rms/TranAospRmsAppmManager;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/api/rms/TranRmsAppmManager;->mAospService:Lcom/transsion/hubsdk/aosp/rms/TranAospRmsAppmManager;

    :cond_2b
    return-object p1
.end method

.method public getTargetFps(Ljava/lang/String;Ljava/lang/String;)I
    .registers 4

    .line 76
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33461:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/rms/TranRmsAppmManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/rms/ITranRmsAppmManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/rms/ITranRmsAppmManagerAdapter;->getTargetFps(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public getTranAppmSystemInfo(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 58
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33461:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/rms/TranRmsAppmManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/rms/ITranRmsAppmManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/rms/ITranRmsAppmManagerAdapter;->getTranAppmSystemInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getTranGameList(I)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 49
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33461:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/rms/TranRmsAppmManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/rms/ITranRmsAppmManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/rms/ITranRmsAppmManagerAdapter;->getTranGameList(I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public sendEvent(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 40
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33461:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/rms/TranRmsAppmManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/rms/ITranRmsAppmManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/rms/ITranRmsAppmManagerAdapter;->sendEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setGameParam(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4

    .line 94
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33461:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/rms/TranRmsAppmManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/rms/ITranRmsAppmManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/rms/ITranRmsAppmManagerAdapter;->setGameParam(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method
