.class public Lcom/transsion/hubsdk/core/oemunlockdata/TranThubOemUnlockDataManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/interfaces/oemunlockdata/ITranOemUnlockDataManagerAdapter;


# static fields
.field private static final TAG:Ljava/lang/String; = "TranThubOemUnlockDataManager"


# instance fields
.field private mTranOemUnlockDataManager:Lcom/transsion/hubsdk/oemunlockdata/TranOemUnlockDataManager;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Lcom/transsion/hubsdk/oemunlockdata/TranOemUnlockDataManager;

    invoke-direct {v0}, Lcom/transsion/hubsdk/oemunlockdata/TranOemUnlockDataManager;-><init>()V

    iput-object v0, p0, Lcom/transsion/hubsdk/core/oemunlockdata/TranThubOemUnlockDataManager;->mTranOemUnlockDataManager:Lcom/transsion/hubsdk/oemunlockdata/TranOemUnlockDataManager;

    return-void
.end method


# virtual methods
.method public getCpuId()Ljava/lang/String;
    .registers 4

    .line 30
    iget-object p0, p0, Lcom/transsion/hubsdk/core/oemunlockdata/TranThubOemUnlockDataManager;->mTranOemUnlockDataManager:Lcom/transsion/hubsdk/oemunlockdata/TranOemUnlockDataManager;

    if-eqz p0, :cond_20

    .line 32
    :try_start_4
    invoke-virtual {p0}, Lcom/transsion/hubsdk/oemunlockdata/TranOemUnlockDataManager;->getCpuId()Ljava/lang/String;

    move-result-object p0
    :try_end_8
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_8} :catch_9

    return-object p0

    :catch_9
    move-exception p0

    .line 34
    sget-object v0, Lcom/transsion/hubsdk/core/oemunlockdata/TranThubOemUnlockDataManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCpuId e="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_20
    const/4 p0, 0x0

    return-object p0
.end method

.method public writeOemUnlockData(I[B)I
    .registers 4

    .line 18
    iget-object p0, p0, Lcom/transsion/hubsdk/core/oemunlockdata/TranThubOemUnlockDataManager;->mTranOemUnlockDataManager:Lcom/transsion/hubsdk/oemunlockdata/TranOemUnlockDataManager;

    if-eqz p0, :cond_20

    .line 20
    :try_start_4
    invoke-virtual {p0, p1, p2}, Lcom/transsion/hubsdk/oemunlockdata/TranOemUnlockDataManager;->writeOemUnlockData(I[B)I

    move-result p0
    :try_end_8
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_8} :catch_9

    return p0

    :catch_9
    move-exception p0

    .line 22
    sget-object p1, Lcom/transsion/hubsdk/core/oemunlockdata/TranThubOemUnlockDataManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "writeOemUnlockData e="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_20
    const/4 p0, 0x0

    return p0
.end method
