.class public Lcom/transsion/hubsdk/api/os/TranProcess;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "TranProcess"

.field protected static sAospService:Lcom/transsion/hubsdk/interfaces/os/ITranProcessAdapter;

.field protected static sThubService:Lcom/transsion/hubsdk/interfaces/os/ITranProcessAdapter;


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

.method public static getAllCpuLoading()Ljava/lang/String;
    .registers 1

    .line 31
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33281:Ljava/lang/String;

    invoke-static {v0}, Lcom/transsion/hubsdk/api/os/TranProcess;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/os/ITranProcessAdapter;

    move-result-object v0

    invoke-interface {v0}, Lcom/transsion/hubsdk/interfaces/os/ITranProcessAdapter;->getAllCpuLoading()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getCpuInfo()D
    .registers 2

    .line 42
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33281:Ljava/lang/String;

    invoke-static {v0}, Lcom/transsion/hubsdk/api/os/TranProcess;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/os/ITranProcessAdapter;

    move-result-object v0

    invoke-interface {v0}, Lcom/transsion/hubsdk/interfaces/os/ITranProcessAdapter;->getCpuInfo()D

    move-result-wide v0

    return-wide v0
.end method

.method protected static getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/os/ITranProcessAdapter;
    .registers 2

    .line 15
    invoke-static {p0}, Lcom/transsion/hubsdk/common/version/TranVersion;->isIntegratedThubCore(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_19

    .line 16
    sget-object p0, Lcom/transsion/hubsdk/api/os/TranProcess;->TAG:Ljava/lang/String;

    const-string v0, "TranThubProcess"

    invoke-static {p0, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    sget-object p0, Lcom/transsion/hubsdk/api/os/TranProcess;->sThubService:Lcom/transsion/hubsdk/interfaces/os/ITranProcessAdapter;

    if-nez p0, :cond_18

    new-instance p0, Lcom/transsion/hubsdk/core/os/TranThubProcess;

    invoke-direct {p0}, Lcom/transsion/hubsdk/core/os/TranThubProcess;-><init>()V

    sput-object p0, Lcom/transsion/hubsdk/api/os/TranProcess;->sThubService:Lcom/transsion/hubsdk/interfaces/os/ITranProcessAdapter;

    :cond_18
    return-object p0

    .line 19
    :cond_19
    sget-object p0, Lcom/transsion/hubsdk/api/os/TranProcess;->TAG:Ljava/lang/String;

    const-string v0, "TranAospProcess"

    invoke-static {p0, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    sget-object p0, Lcom/transsion/hubsdk/api/os/TranProcess;->sAospService:Lcom/transsion/hubsdk/interfaces/os/ITranProcessAdapter;

    if-nez p0, :cond_2b

    new-instance p0, Lcom/transsion/hubsdk/aosp/os/TranAospProcess;

    invoke-direct {p0}, Lcom/transsion/hubsdk/aosp/os/TranAospProcess;-><init>()V

    sput-object p0, Lcom/transsion/hubsdk/api/os/TranProcess;->sAospService:Lcom/transsion/hubsdk/interfaces/os/ITranProcessAdapter;

    :cond_2b
    return-object p0
.end method
