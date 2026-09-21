.class public Lcom/transsion/hubsdk/api/oemunlockdata/TranOemUnlockDataManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "TranOemUnlockDataManager"


# instance fields
.field private mAospService:Lcom/transsion/hubsdk/aosp/oemunlockdata/TranAospOemUnlockDataManager;

.field private mThubService:Lcom/transsion/hubsdk/core/oemunlockdata/TranThubOemUnlockDataManager;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCpuId()Ljava/lang/String;
    .registers 2

    .line 44
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33281:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/oemunlockdata/TranOemUnlockDataManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/oemunlockdata/ITranOemUnlockDataManagerAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/oemunlockdata/ITranOemUnlockDataManagerAdapter;->getCpuId()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/oemunlockdata/ITranOemUnlockDataManagerAdapter;
    .registers 3

    .line 15
    invoke-static {p1}, Lcom/transsion/hubsdk/common/version/TranVersion;->isIntegratedThubCore(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_19

    .line 16
    sget-object p1, Lcom/transsion/hubsdk/api/oemunlockdata/TranOemUnlockDataManager;->TAG:Ljava/lang/String;

    const-string v0, "TranOemUnlockDataManager"

    invoke-static {p1, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    iget-object p1, p0, Lcom/transsion/hubsdk/api/oemunlockdata/TranOemUnlockDataManager;->mThubService:Lcom/transsion/hubsdk/core/oemunlockdata/TranThubOemUnlockDataManager;

    if-nez p1, :cond_18

    new-instance p1, Lcom/transsion/hubsdk/core/oemunlockdata/TranThubOemUnlockDataManager;

    invoke-direct {p1}, Lcom/transsion/hubsdk/core/oemunlockdata/TranThubOemUnlockDataManager;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/api/oemunlockdata/TranOemUnlockDataManager;->mThubService:Lcom/transsion/hubsdk/core/oemunlockdata/TranThubOemUnlockDataManager;

    :cond_18
    return-object p1

    .line 19
    :cond_19
    sget-object p1, Lcom/transsion/hubsdk/api/oemunlockdata/TranOemUnlockDataManager;->TAG:Ljava/lang/String;

    const-string v0, "TranAospOemUnlockDataManager"

    invoke-static {p1, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    iget-object p1, p0, Lcom/transsion/hubsdk/api/oemunlockdata/TranOemUnlockDataManager;->mAospService:Lcom/transsion/hubsdk/aosp/oemunlockdata/TranAospOemUnlockDataManager;

    if-nez p1, :cond_2b

    new-instance p1, Lcom/transsion/hubsdk/aosp/oemunlockdata/TranAospOemUnlockDataManager;

    invoke-direct {p1}, Lcom/transsion/hubsdk/aosp/oemunlockdata/TranAospOemUnlockDataManager;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/api/oemunlockdata/TranOemUnlockDataManager;->mAospService:Lcom/transsion/hubsdk/aosp/oemunlockdata/TranAospOemUnlockDataManager;

    :cond_2b
    return-object p1
.end method

.method public writeOemUnlockData(I[B)I
    .registers 4

    .line 33
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33281:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/oemunlockdata/TranOemUnlockDataManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/oemunlockdata/ITranOemUnlockDataManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/oemunlockdata/ITranOemUnlockDataManagerAdapter;->writeOemUnlockData(I[B)I

    move-result p0

    return p0
.end method
