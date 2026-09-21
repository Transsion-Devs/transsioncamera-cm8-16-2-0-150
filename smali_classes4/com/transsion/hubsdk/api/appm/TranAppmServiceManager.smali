.class public Lcom/transsion/hubsdk/api/appm/TranAppmServiceManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "TranAppmServiceManager"


# instance fields
.field private mAospService:Lcom/transsion/hubsdk/aosp/appm/TranAospAppmServiceManager;

.field private mThubService:Lcom/transsion/hubsdk/core/appm/TranThubAppmServiceManager;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPolicyVersion(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 67
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33101:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/appm/TranAppmServiceManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/appm/ITranAppmServiceManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/appm/ITranAppmServiceManagerAdapter;->getPolicyVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getRecentFpsAvg(I)F
    .registers 3

    .line 111
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33341:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/appm/TranAppmServiceManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/appm/ITranAppmServiceManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/appm/ITranAppmServiceManagerAdapter;->getRecentFpsAvg(I)F

    move-result p0

    return p0
.end method

.method protected getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/appm/ITranAppmServiceManagerAdapter;
    .registers 3

    .line 85
    invoke-static {p1}, Lcom/transsion/hubsdk/common/version/TranVersion;->isIntegratedThubCore(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_19

    .line 86
    sget-object p1, Lcom/transsion/hubsdk/api/appm/TranAppmServiceManager;->TAG:Ljava/lang/String;

    const-string v0, "TranThubAppmServiceManager"

    invoke-static {p1, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    iget-object p1, p0, Lcom/transsion/hubsdk/api/appm/TranAppmServiceManager;->mThubService:Lcom/transsion/hubsdk/core/appm/TranThubAppmServiceManager;

    if-nez p1, :cond_18

    new-instance p1, Lcom/transsion/hubsdk/core/appm/TranThubAppmServiceManager;

    invoke-direct {p1}, Lcom/transsion/hubsdk/core/appm/TranThubAppmServiceManager;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/api/appm/TranAppmServiceManager;->mThubService:Lcom/transsion/hubsdk/core/appm/TranThubAppmServiceManager;

    :cond_18
    return-object p1

    .line 89
    :cond_19
    sget-object p1, Lcom/transsion/hubsdk/api/appm/TranAppmServiceManager;->TAG:Ljava/lang/String;

    const-string v0, "TranAospAppmServiceManager"

    invoke-static {p1, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    iget-object p1, p0, Lcom/transsion/hubsdk/api/appm/TranAppmServiceManager;->mAospService:Lcom/transsion/hubsdk/aosp/appm/TranAospAppmServiceManager;

    if-nez p1, :cond_2b

    new-instance p1, Lcom/transsion/hubsdk/aosp/appm/TranAospAppmServiceManager;

    invoke-direct {p1}, Lcom/transsion/hubsdk/aosp/appm/TranAospAppmServiceManager;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/api/appm/TranAppmServiceManager;->mAospService:Lcom/transsion/hubsdk/aosp/appm/TranAospAppmServiceManager;

    :cond_2b
    return-object p1
.end method

.method public notifyClient(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 80
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33101:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/appm/TranAppmServiceManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/appm/ITranAppmServiceManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/appm/ITranAppmServiceManagerAdapter;->notifyClient(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public registerAppmCallback(Lcom/transsion/hubsdk/api/appm/ITranAppmCallbackWrapper;)V
    .registers 3

    .line 43
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33101:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/appm/TranAppmServiceManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/appm/ITranAppmServiceManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/appm/ITranAppmServiceManagerAdapter;->registerAppmCallback(Lcom/transsion/hubsdk/api/appm/ITranAppmCallbackWrapper;)V

    return-void
.end method

.method public sendEvent(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 32
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33101:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/appm/TranAppmServiceManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/appm/ITranAppmServiceManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/appm/ITranAppmServiceManagerAdapter;->sendEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setFpsMonitorSwitch(IZLjava/lang/String;)Z
    .registers 5

    .line 101
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33341:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/appm/TranAppmServiceManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/appm/ITranAppmServiceManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lcom/transsion/hubsdk/interfaces/appm/ITranAppmServiceManagerAdapter;->setFpsMonitorSwitch(IZLjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public unregisterAppmCallback(Lcom/transsion/hubsdk/api/appm/ITranAppmCallbackWrapper;)V
    .registers 3

    .line 55
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33101:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/appm/TranAppmServiceManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/appm/ITranAppmServiceManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/appm/ITranAppmServiceManagerAdapter;->unregisterAppmCallback(Lcom/transsion/hubsdk/api/appm/ITranAppmCallbackWrapper;)V

    return-void
.end method
