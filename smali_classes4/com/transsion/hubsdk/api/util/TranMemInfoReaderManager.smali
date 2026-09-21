.class public Lcom/transsion/hubsdk/api/util/TranMemInfoReaderManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "TranMemInfoReaderManager"


# instance fields
.field private mAospService:Lcom/transsion/hubsdk/aosp/util/TranAospMemInfoReaderManager;

.field private mThubService:Lcom/transsion/hubsdk/core/util/TranThubMemInfoReaderManager;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCachedSize()J
    .registers 3

    .line 44
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33111:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/util/TranMemInfoReaderManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/util/ITranMemInfoReaderAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/util/ITranMemInfoReaderAdapter;->getCachedSize()J

    move-result-wide v0

    return-wide v0
.end method

.method public getFreeSize()J
    .registers 3

    .line 35
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33111:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/util/TranMemInfoReaderManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/util/ITranMemInfoReaderAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/util/ITranMemInfoReaderAdapter;->getFreeSize()J

    move-result-wide v0

    return-wide v0
.end method

.method protected getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/util/ITranMemInfoReaderAdapter;
    .registers 3

    .line 16
    invoke-static {p1}, Lcom/transsion/hubsdk/common/version/TranVersion;->isIntegratedThubCore(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_19

    .line 17
    sget-object p1, Lcom/transsion/hubsdk/api/util/TranMemInfoReaderManager;->TAG:Ljava/lang/String;

    const-string v0, "TranThubMemInfoReaderManager"

    invoke-static {p1, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    iget-object p1, p0, Lcom/transsion/hubsdk/api/util/TranMemInfoReaderManager;->mThubService:Lcom/transsion/hubsdk/core/util/TranThubMemInfoReaderManager;

    if-nez p1, :cond_18

    new-instance p1, Lcom/transsion/hubsdk/core/util/TranThubMemInfoReaderManager;

    invoke-direct {p1}, Lcom/transsion/hubsdk/core/util/TranThubMemInfoReaderManager;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/api/util/TranMemInfoReaderManager;->mThubService:Lcom/transsion/hubsdk/core/util/TranThubMemInfoReaderManager;

    :cond_18
    return-object p1

    .line 20
    :cond_19
    sget-object p1, Lcom/transsion/hubsdk/api/util/TranMemInfoReaderManager;->TAG:Ljava/lang/String;

    const-string v0, "TranAospMemInfoReaderManager"

    invoke-static {p1, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    iget-object p1, p0, Lcom/transsion/hubsdk/api/util/TranMemInfoReaderManager;->mAospService:Lcom/transsion/hubsdk/aosp/util/TranAospMemInfoReaderManager;

    if-nez p1, :cond_2b

    new-instance p1, Lcom/transsion/hubsdk/aosp/util/TranAospMemInfoReaderManager;

    invoke-direct {p1}, Lcom/transsion/hubsdk/aosp/util/TranAospMemInfoReaderManager;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/api/util/TranMemInfoReaderManager;->mAospService:Lcom/transsion/hubsdk/aosp/util/TranAospMemInfoReaderManager;

    :cond_2b
    return-object p1
.end method

.method public readMemInfo()V
    .registers 2

    .line 51
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33111:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/util/TranMemInfoReaderManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/util/ITranMemInfoReaderAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/util/ITranMemInfoReaderAdapter;->readMemInfo()V

    return-void
.end method
